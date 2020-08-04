//--------------------------------------------------------------------------
// Copyright (C) 2015-2020 Cisco and/or its affiliates. All rights reserved.
//
// This program is free software; you can redistribute it and/or modify it
// under the terms of the GNU General Public License Version 2 as published
// by the Free Software Foundation.  You may not use, modify or distribute
// this program under any other version of the GNU General Public License.
//
// This program is distributed in the hope that it will be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// General Public License for more details.
//
// You should have received a copy of the GNU General Public License along
// with this program; if not, write to the Free Software Foundation, Inc.,
// 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
//--------------------------------------------------------------------------

// hyperscan.cc author Russ Combs <rucombs@cisco.com>

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <hs_compile.h>
#include <hs_runtime.h>

#include <cassert>
#include <cstring>

#include "framework/module.h"
#include "framework/mpse.h"
#include "helpers/scratch_allocator.h"
#include "log/messages.h"
#include "main/snort_config.h"
#include "main/thread.h"
#include "utils/stats.h"

/////////// NEWBROAD_BEGIN /////////

#define MAX_UNICODE 0x10FFFF
#define INVALID_UNICODE 0xffffffff /* unicode could never go above 2^31 */

#define UTF_2CHAR_MIN (1U << 7)
#define UTF_3CHAR_MIN (1U << 11)
#define UTF_4CHAR_MIN (1U << 16)
#define UTF_CONT_SHIFT 6
#define UTF_CONT_BYTE_RANGE (1U << UTF_CONT_SHIFT)
#define UTF_CONT_BYTE_HEADER  ((unsigned char)0x80) /* 10xx xxxx */
#define UTF_TWO_BYTE_HEADER   ((unsigned char)0xc0) /* 110x xxxx */
#define UTF_THREE_BYTE_HEADER ((unsigned char)0xe0) /* 1110 xxxx */
#define UTF_FOUR_BYTE_HEADER  ((unsigned char)0xf0) /* 1111 0xxx */

#define UTF_CONT_BYTE_VALUE_MASK 0x3f

#define UTF_CONT_MIN UTF_CONT_BYTE_HEADER
#define UTF_CONT_MAX (UTF_TWO_BYTE_HEADER - 1)

#define UTF_TWO_BYTE_MIN UTF_TWO_BYTE_HEADER
#define UTF_TWO_BYTE_MAX (UTF_THREE_BYTE_HEADER - 1)

#define UTF_THREE_BYTE_MIN UTF_THREE_BYTE_HEADER
#define UTF_THREE_BYTE_MAX (UTF_FOUR_BYTE_HEADER - 1)

#define UTF_FOUR_BYTE_MIN UTF_FOUR_BYTE_HEADER
#define UTF_FOUR_BYTE_MAX ((unsigned char)0xf4)

#define UTF_CONT_CR CharReach(UTF_CONT_MIN, UTF_CONT_MAX)
#define UTF_ASCII_CR CharReach(0, 127)
#define UTF_START_CR CharReach(UTF_TWO_BYTE_MIN, UTF_FOUR_BYTE_MAX)
#define UTF_TWO_START_CR CharReach(UTF_TWO_BYTE_MIN, UTF_TWO_BYTE_MAX)
#define UTF_THREE_START_CR CharReach(UTF_THREE_BYTE_MIN, UTF_THREE_BYTE_MAX)
#define UTF_FOUR_START_CR CharReach(UTF_FOUR_BYTE_MIN, UTF_FOUR_BYTE_MAX)

#define UNICODE_SURROGATE_MIN 0xd800
#define UNICODE_SURROGATE_MAX 0xdfff

static
bool hasValidContBytes(const unsigned char *s, size_t num) {
    /* continuer bytes must all be of the form 10xx xxxx */
    for (size_t i = 0; i < num; i++) {
        if ((s[i] & 0xc0) != UTF_CONT_BYTE_HEADER) {
            return false;
        }
    }
    return true;
}

static
bool isAllowedCodepoint(unsigned int val) {
    if (val >= 0xd800 && val <= 0xdfff) {
        return false; // High and low surrogate halves
    }
    if (val > 0x10ffff) {
        return false; // As per limit in RFC 3629
    }

    return true;
}

bool isValidUtf8(const char *expression, const size_t len) {
    if (!expression) {
        return true;
    }

    const unsigned char *s = (const unsigned char *)expression;
    unsigned int val;

    size_t i = 0;
    while (i < len) {
        // One octet.
        if (s[i] < 0x7f) {
            i++;
            continue;
        }

        // Two octets.
        if ((s[i] & 0xe0) == UTF_TWO_BYTE_HEADER) {
            if (i + 2 > len) {
                break;
            }
            if (!hasValidContBytes(&s[i] + 1, 1)) {
                break;
            }
            val = ((s[i] & 0x1f) << 6) | (s[i + 1] & UTF_CONT_BYTE_VALUE_MASK);
            if (val < 1U << 7) {
                break;
            }
            if (!isAllowedCodepoint(val)) {
                break;
            }
            i += 2;
            continue;
        }

        // Three octets.
        if ((s[i] & 0xf0) == UTF_THREE_BYTE_HEADER) {
            if (i + 3 > len) {
                break;
            }
            if (!hasValidContBytes(&s[i] + 1, 2)) {
                break;
            }
            val = ((s[i] & 0xf) << 12) |
                  ((s[i + 1] & UTF_CONT_BYTE_VALUE_MASK) << 6) |
                  (s[i + 2] & UTF_CONT_BYTE_VALUE_MASK);
            if (val < 1U << 11) {
                break;
            }
            if (!isAllowedCodepoint(val)) {
                break;
            }
            i += 3;
            continue;
        }

        // Four octets.
        if ((s[i] & 0xf8) == UTF_FOUR_BYTE_HEADER) {
            if (i + 4 > len) {
                break;
            }
            if (!hasValidContBytes(&s[i] + 1, 3)) {
                break;
            }
            val = ((s[i] & 0xf) << 18) |
                  ((s[i + 1] & UTF_CONT_BYTE_VALUE_MASK) << 12) |
                  ((s[i + 2] & UTF_CONT_BYTE_VALUE_MASK) << 6) |
                  (s[i + 3] & UTF_CONT_BYTE_VALUE_MASK);
            if (val < 1U << 16) {
                break;
            }
            if (!isAllowedCodepoint(val)) {
                break;
            }
            i += 4;
            continue;
        }

        // Something else?
        break;
    }

    return i == len;
}

///// NEWBROAD_END /////
using namespace snort;

static const char* s_name = "hyperscan";
static const char* s_help = "intel hyperscan-based mpse with regex support";

struct Pattern
{
    std::string pat;
    unsigned len;
    unsigned flags;
    bool no_case;
    bool negate;

    //// NEWBROAD_BEGIN ////
    unsigned pid;
    unsigned threshold;
    unsigned matchs;
    bool matched;
    //// NEWBROAD_END ////

    void* user;
    void* user_tree;
    void* user_list;

    Pattern(const uint8_t*, unsigned, const Mpse::PatternDescriptor&, void*);
    void escape(const uint8_t*, unsigned, bool);
};

Pattern::Pattern(
    const uint8_t* s, unsigned n, const Mpse::PatternDescriptor& d, void* u)
{
    escape(s, n, d.literal);

    len = n;
    no_case = d.no_case;
    negate = d.negated;
    flags = d.flags;
    user = u;
    user_tree = user_list = nullptr;

    if ( no_case )
        flags |= HS_FLAG_CASELESS;

    flags |= HS_FLAG_SINGLEMATCH;

     //// NEWBROAD_BEGIN ////

    pid=d.pid;
    threshold=d.threshold;
    //flags |= HS_FLAG_DOTALL;

    if(flags&HS_FLAG_QUIET){
            flags&=~HS_FLAG_SINGLEMATCH;
    }
    if(flags&HS_FLAG_COMBINATION){
            flags=HS_FLAG_COMBINATION;
    }
    //// NEWBROAD_END ////

}

void Pattern::escape(const uint8_t* s, unsigned n, bool literal)
{
    for ( unsigned i = 0; i < n; ++i )
    {
	 //// NEWBROAD_BEGIN ////////////
	 /**************************
        if ( !isprint(s[i]) )
        {
            char hex[5];
            snprintf(hex, sizeof(hex), "\\x%02X", s[i]);
            pat += hex;
        }
	******************/
        if ( !isprint(s[i]) )
        {
                if((unsigned char)s[i]>127) { //中文
                        int l=0;
                        while(s[i]&0x80>>l){
                                pat += s[i+l];
                                l++;
                        }
                        i+=l-1;
                }
                else{

                        char hex[5];
                        snprintf(hex, sizeof(hex), "\\x%02X", s[i]);
                        pat += hex;
                }
        }
            //// NEWBROAD_END ////////////

        else
        {
            const char* special = ".^$*+?()[]{}\\|";

            if ( literal and strchr(special, s[i]) )
                pat += '\\';

            pat += s[i];
        }
    }
}

typedef std::vector<Pattern> PatternVector;

// we need to update scratch in each compiler thread as each pattern is processed
// and then select the largest to clone to packet thread specific after all rules
// are loaded.  s_scratch is a prototype that is large enough for all uses.

static std::vector<hs_scratch_t*> s_scratch;
static unsigned int scratch_index;
static ScratchAllocator* scratcher = nullptr;

struct ScanContext
{
    class HyperscanMpse* mpse;
    MpseMatch match_cb;
    void* match_ctx;
    int nfound = 0;

    ScanContext(HyperscanMpse* m, MpseMatch cb, void* ctx)
    { mpse = m; match_cb = cb; match_ctx = ctx; }

};

//-------------------------------------------------------------------------
// mpse
//-------------------------------------------------------------------------

class HyperscanMpse : public Mpse
{
public:
    HyperscanMpse(const MpseAgent* a)
        : Mpse("hyperscan")
    {
        agent = a;
        ++instances;
    }

    ~HyperscanMpse() override
    {
        if ( hs_db )
            hs_free_database(hs_db);

        if ( agent )
            user_dtor();
    }

    int add_pattern(
        const uint8_t* pat, unsigned len, const PatternDescriptor& desc, void* user) override
    {
        Pattern p(pat, len, desc, user);
        pvector.emplace_back(p);
        ++patterns;
        return 0;
    }

    int prep_patterns(SnortConfig*) override;

    int _search(const uint8_t*, int, MpseMatch, void*, int*) override;

    int get_pattern_count() const override
    { return pvector.size(); }

    int match(unsigned id, unsigned long long to, MpseMatch match_cb, void* match_ctx);

    static int match(
        unsigned id, unsigned long long from, unsigned long long to,
        unsigned flags, void*);

private:
    void user_ctor(SnortConfig*);
    void user_dtor();
    /////////// NEWBROAD_BEGIN /////
    void replace_pid();
	/////////// NEWBROAD_EDN /////


    const MpseAgent* agent;
    PatternVector pvector;

    hs_database_t* hs_db = nullptr;

public:
    static uint64_t instances;
    static uint64_t patterns;
};

uint64_t HyperscanMpse::instances = 0;
uint64_t HyperscanMpse::patterns = 0;

// other mpse have direct access to their fsm match states and populate
// user list and tree with each pattern that leads to the same match state.
// with hyperscan we don't have internal fsm knowledge and each fast
// pattern is considered to be in a distinct match state.  the resulting
// detection option trees for hyperscan are thus just single option chains.

void HyperscanMpse::user_ctor(SnortConfig* sc)
{
    for ( auto& p : pvector )
    {
        if ( p.user )
        {
            if ( p.negate )
                agent->negate_list(p.user, &p.user_list);
            else
                agent->build_tree(sc, p.user, &p.user_tree);
        }
        agent->build_tree(sc, nullptr, &p.user_tree);
    }
}

void HyperscanMpse::user_dtor()
{
    for ( auto& p : pvector )
    {
        if ( p.user )
            agent->user_free(p.user);

        if ( p.user_list )
            agent->list_free(&p.user_list);

        if ( p.user_tree )
            agent->tree_free(&p.user_tree);
    }
}

//// NEWBROAD_BEGIN ////
void HyperscanMpse::replace_pid(){
    for ( auto& p : pvector ){

        std::string sBuf="";
        if(!(p.flags&HS_FLAG_COMBINATION)){
                continue;
        }

        for(int i=0;i<p.pat.size();i++){
                if(p.pat[i]>='0' && p.pat[i]<='9'){
                        std::string sPid="";
                        do{
                                sPid+=p.pat[i];
                                i++;
                        }while(p.pat[i]>='0'&&p.pat[i]<='9');

                        int iPid=atoi(sPid.c_str());
                        for ( int j=0;j<pvector.size();j++ ){
                                if(pvector[j].pid==iPid){
                                        sBuf+=std::to_string(j);
                                        break;
                                }
                        }
                }
                sBuf+=p.pat[i];
        }
        p.pat=sBuf;
        p.len=p.pat.size();

    }
}
//// NEWBROAD_END ////


int HyperscanMpse::prep_patterns(SnortConfig* sc)
{
    if ( pvector.empty() )
        return -1;

    if ( hs_valid_platform() != HS_SUCCESS )
    {
        ParseError("This host does not support Hyperscan.");
        return -1;
    }

    ///// NEWBROAD_BEGIN /////
        //替换逻辑表达式pid
        replace_pid();
        ///// NEWBROAD_EDN /////

    hs_compile_error_t* errptr = nullptr;
    std::vector<const char*> pats;
    std::vector<unsigned> flags;
    std::vector<unsigned> ids;

    unsigned id = 0;

    for ( auto& p : pvector )
    {
        pats.emplace_back(p.pat.c_str());
	//// NEWBROAD_BEGIN ////
	if(!(p.flags&HS_FLAG_COMBINATION) && isValidUtf8(p.pat.c_str(),p.pat.size())){
			p.flags|=HS_FLAG_UTF8;
	}

	//// NEWBROAD_END ////
        flags.emplace_back(p.flags);
        ids.emplace_back(id++);

    }

    if ( hs_compile_multi(&pats[0], &flags[0], &ids[0], pvector.size(), HS_MODE_BLOCK,
            nullptr, &hs_db, &errptr) or !hs_db )
    {
        ParseError("can't compile hyperscan pattern database: %s (%d) - '%s'",
            errptr->message, errptr->expression,
            errptr->expression >= 0 ? pats[errptr->expression] : "");
        hs_free_compile_error(errptr);
        return -2;
    }

    if ( hs_error_t err = hs_alloc_scratch(hs_db, &s_scratch[get_instance_id()]) )
    {
        ParseError("can't allocate search scratch space (%d)", err);
        return -3;
    }

    if ( agent )
        user_ctor(sc);

    return 0;
}

int HyperscanMpse::match(unsigned id, unsigned long long to, MpseMatch match_cb, void* match_ctx)
{
    assert(id < pvector.size());

    Pattern& p = pvector[id];
    //// NEWBROAD_BEGIN ////
	if(p.flags & HS_FLAG_COMBINATION){
		p.matchs++;
		if(p.matchs>= p.threshold && !p.matched){
			p.matched=true;
		}
		else{
			return 0;
		}
	}
    //// NEWBROAD_END ////
    return match_cb(p.user, p.user_tree, (int)to, match_ctx, p.user_list);
}

int HyperscanMpse::match(
    unsigned id, unsigned long long /*from*/, unsigned long long to,
    unsigned /*flags*/, void* pv)
{
    ScanContext* scan = (ScanContext*)pv;
    scan->nfound++;
    return  scan->mpse->match(id, to, scan->match_cb, scan->match_ctx);
}

int HyperscanMpse::_search(
    const uint8_t* buf, int n, MpseMatch mf, void* pv, int* current_state)
{
    *current_state = 0;
    ScanContext scan(this, mf, pv);

    //// NEWBROAD_BEGIN ////
    for(auto &p: pvector){
        p.matchs=0;
	p.matched=false;
    }
    //// NEWBROAD_END ////
    hs_scratch_t* ss =
        (hs_scratch_t*)SnortConfig::get_conf()->state[get_instance_id()][scratch_index];

    // scratch is null for the degenerate case w/o patterns
    assert(!hs_db or ss);

    hs_scan(hs_db, (const char*)buf, n, 0, ss, HyperscanMpse::match, &scan);

    //// NEWBROAD_BEGIN ////
    for(auto &p : pvector){
	    if(p.flags & HS_FLAG_COMBINATION){
		    scan.nfound-=p.matchs;
		    if(p.matched){
		    	scan.nfound++;
		    }
		p.matchs=0;
		p.matched=false;
	    }
    }
    //// NEWBROAD_END ////

    return scan.nfound;
}

static bool scratch_setup(SnortConfig* sc)
{
    // find the largest scratch and clone for all slots
    hs_scratch_t* max = nullptr;

    if ( !s_scratch.size() )
        return false;

    for ( unsigned i = 0; i < sc->num_slots; ++i )
    {
        if ( !s_scratch[i] )
            continue;

        if ( !max )
        {
            max = s_scratch[i];
            s_scratch[i] = nullptr;
            continue;
        }
        size_t max_sz, idx_sz;
        hs_scratch_size(max, &max_sz);
        hs_scratch_size(s_scratch[i], &idx_sz);

        if ( idx_sz > max_sz )
        {
            hs_free_scratch(max);
            max = s_scratch[i];
        }
        else
        {
            hs_free_scratch(s_scratch[i]);
        }
        s_scratch[i] = nullptr;
    }
    if ( !max )
        return false;

    for ( unsigned i = 0; i < sc->num_slots; ++i )
    {
        hs_scratch_t** ss = (hs_scratch_t**) &sc->state[i][scratch_index];
        hs_clone_scratch(max, ss);
    }
    hs_free_scratch(max);
    return true;
}

static void scratch_cleanup(SnortConfig* sc)
{
    for ( unsigned i = 0; i < sc->num_slots; ++i )
    {
        hs_scratch_t* ss = (hs_scratch_t*)sc->state[i][scratch_index];
        hs_free_scratch(ss);
        sc->state[i][scratch_index] = nullptr;
    }
}

class HyperscanModule : public Module
{
public:
    HyperscanModule() : Module(s_name, s_help)
    {
        scratcher = new SimpleScratchAllocator(scratch_setup, scratch_cleanup);
        scratch_index = scratcher->get_id();
    }

    ~HyperscanModule() override
    { delete scratcher; }
};

//-------------------------------------------------------------------------
// api
//-------------------------------------------------------------------------

static Module* mod_ctor()
{ return new HyperscanModule; }

static void mod_dtor(Module* p)
{ delete p; }

static Mpse* hs_ctor(
    const SnortConfig* sc, class Module*, const MpseAgent* a)
{
    if ( s_scratch.empty() )
        s_scratch.resize(sc->num_slots, nullptr);

    return new HyperscanMpse(a);
}

static void hs_dtor(Mpse* p)
{
    delete p;
}

static void hs_init()
{
    HyperscanMpse::instances = 0;
    HyperscanMpse::patterns = 0;
}

static void hs_print()
{
    LogCount("instances", HyperscanMpse::instances);
    LogCount("patterns", HyperscanMpse::patterns);
}

static const MpseApi hs_api =
{
    {
        PT_SEARCH_ENGINE,
        sizeof(MpseApi),
        SEAPI_VERSION,
        0,
        API_RESERVED,
        API_OPTIONS,
        s_name,
        s_help,
        mod_ctor,
        mod_dtor
    },
    MPSE_REGEX | MPSE_MTBLD,
    nullptr,  // activate
    nullptr,  // setup
    nullptr,  // start
    nullptr,  // stop
    hs_ctor,
    hs_dtor,
    hs_init,
    hs_print,
    nullptr,
};

#ifdef BUILDING_SO
SO_PUBLIC const BaseApi* snort_plugins[] =
#else
const BaseApi* se_hyperscan[] =
#endif
{
    &hs_api.base,
    nullptr
};


