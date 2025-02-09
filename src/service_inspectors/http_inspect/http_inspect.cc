//--------------------------------------------------------------------------
// Copyright (C) 2014-2020 Cisco and/or its affiliates. All rights reserved.
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
// http_inspect.cc author Tom Peters <thopeter@cisco.com>

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include "http_inspect.h"

#include <cassert>
#include <iomanip>
#include <sstream>

#include "detection/detection_engine.h"
#include "detection/detection_util.h"
#include "service_inspectors/http2_inspect/http2_dummy_packet.h"
#include "service_inspectors/http2_inspect/http2_flow_data.h"
#include "log/unified2.h"
#include "protocols/packet.h"
#include "stream/stream.h"

#include "http_common.h"
#include "http_context_data.h"
#include "http_enum.h"
#include "http_js_norm.h"
#include "http_msg_body.h"
#include "http_msg_body_chunk.h"
#include "http_msg_body_cl.h"
#include "http_msg_body_h2.h"
#include "http_msg_body_old.h"
#include "http_msg_header.h"
#include "http_msg_request.h"
#include "http_msg_status.h"
#include "http_msg_trailer.h"
#include "http_test_manager.h"

///// NEWBROAD_BEGIN /////
#include "packet_io/active.h"

#include <modsecurity/modsecurity.h>
#include <modsecurity/transaction.h>

#include <modsecurity/wac.h>
//// NEWBROAD_END ////

using namespace snort;
using namespace HttpCommon;
using namespace HttpEnums;

static std::string GetUnreservedChars(const ByteBitSet& bitset)
{
    const ByteBitSet& def_bitset(HttpParaList::UriParam::UriParam::default_unreserved_char);
    std::string chars;

    for (unsigned char c = 1; c; ++c)
        if (def_bitset[c] && !bitset[c])
            chars += c;

    return chars;
}

static std::string GetBadChars(const ByteBitSet& bitset)
{
    std::stringstream ss;
    ss << std::hex;

    for (unsigned i = 0; i < bitset.size(); ++i)
        if (bitset[i])
            ss << " 0x" << std::setw(2) << std::setfill('0') << i;

    auto str = ss.str();
    if ( !str.empty() )
        str.erase(0, 1);

    return str;
}

HttpInspect::HttpInspect(const HttpParaList* params_) :
    params(params_),
    xtra_trueip_id(Stream::reg_xtra_data_cb(get_xtra_trueip)),
    xtra_uri_id(Stream::reg_xtra_data_cb(get_xtra_uri)),
    xtra_host_id(Stream::reg_xtra_data_cb(get_xtra_host)),
    xtra_jsnorm_id(Stream::reg_xtra_data_cb(get_xtra_jsnorm))
{
#ifdef REG_TEST
    if (params->test_input)
    {
        HttpTestManager::activate_test_input(HttpTestManager::IN_HTTP);
    }
    if (params->test_output)
    {
        HttpTestManager::activate_test_output(HttpTestManager::IN_HTTP);
    }
    if ((params->test_input) || (params->test_output))
    {
        HttpTestManager::set_print_amount(params->print_amount);
        HttpTestManager::set_print_hex(params->print_hex);
        HttpTestManager::set_show_pegs(params->show_pegs);
        HttpTestManager::set_show_scan(params->show_scan);
    }
#endif
}

bool HttpInspect::configure(SnortConfig* )
{
    if (params->js_norm_param.normalize_javascript)
        params->js_norm_param.js_norm->configure();

    return true;
}

void HttpInspect::show(const SnortConfig*) const
{
    assert(params);

    auto unreserved_chars = GetUnreservedChars(params->uri_param.unreserved_char);
    auto bad_chars = GetBadChars(params->uri_param.bad_characters);

    ConfigLogger::log_limit("request_depth", params->request_depth, -1LL);
    ConfigLogger::log_limit("response_depth", params->response_depth, -1LL);
    ConfigLogger::log_flag("unzip", params->unzip);
    ConfigLogger::log_flag("normalize_utf", params->normalize_utf);
    ConfigLogger::log_flag("decompress_pdf", params->decompress_pdf);
    ConfigLogger::log_flag("decompress_swf", params->decompress_swf);
    ConfigLogger::log_flag("decompress_zip", params->decompress_zip);
    ConfigLogger::log_flag("detained_inspection", params->detained_inspection);
    ConfigLogger::log_flag("normalize_javascript", params->js_norm_param.normalize_javascript);
    ConfigLogger::log_value("max_javascript_whitespaces",
        params->js_norm_param.max_javascript_whitespaces);
    ConfigLogger::log_value("bad_characters", bad_chars.c_str());
    ConfigLogger::log_value("ignore_unreserved", unreserved_chars.c_str());
    ConfigLogger::log_flag("percent_u", params->uri_param.percent_u);
    ConfigLogger::log_flag("utf8", params->uri_param.utf8);
    ConfigLogger::log_flag("utf8_bare_byte", params->uri_param.utf8_bare_byte);
    ConfigLogger::log_flag("iis_unicode", params->uri_param.iis_unicode);
    ConfigLogger::log_value("iis_unicode_map_file", params->uri_param.iis_unicode_map_file.c_str());
    ConfigLogger::log_value("iis_unicode_code_page", params->uri_param.iis_unicode_code_page);
    ConfigLogger::log_flag("iis_double_decode", params->uri_param.iis_double_decode);
    ConfigLogger::log_value("oversize_dir_length", params->uri_param.oversize_dir_length);
    ConfigLogger::log_flag("backslash_to_slash", params->uri_param.backslash_to_slash);
    ConfigLogger::log_flag("plus_to_space", params->uri_param.plus_to_space);
    ConfigLogger::log_flag("simplify_path", params->uri_param.simplify_path);
}

InspectSection HttpInspect::get_latest_is(const Packet* p)
{
    HttpMsgSection* current_section = HttpContextData::get_snapshot(p);

    if (current_section == nullptr)
        return IS_NONE;

    // FIXIT-L revisit why we need this check. We should not be getting a current section back
    // for a raw packet but one of the test cases did exactly that.
    if (!(p->packet_flags & PKT_PSEUDO))
        return IS_NONE;

    return current_section->get_inspection_section();
}

SourceId HttpInspect::get_latest_src(const Packet* p)
{
    HttpMsgSection* current_section = HttpContextData::get_snapshot(p);

    if (current_section == nullptr)
        return SRC__NOT_COMPUTE;

    return current_section->get_source_id();
}

bool HttpInspect::get_buf(InspectionBuffer::Type ibt, Packet* p, InspectionBuffer& b)
{
    switch (ibt)
    {
    case InspectionBuffer::IBT_KEY:
        return get_buf(HTTP_BUFFER_URI, p, b);

    case InspectionBuffer::IBT_HEADER:
        if (get_latest_is(p) == IS_TRAILER)
            return get_buf(HTTP_BUFFER_TRAILER, p, b);
        else
            return get_buf(HTTP_BUFFER_HEADER, p , b);

    case InspectionBuffer::IBT_BODY:
        return get_buf(HTTP_BUFFER_CLIENT_BODY, p, b);

    case InspectionBuffer::IBT_RAW_KEY:
        return get_buf(HTTP_BUFFER_RAW_URI, p , b);

    case InspectionBuffer::IBT_RAW_HEADER:
        if (get_latest_is(p) == IS_TRAILER)
            return get_buf(HTTP_BUFFER_RAW_TRAILER, p, b);
        else
            return get_buf(HTTP_BUFFER_RAW_HEADER, p , b);

    case InspectionBuffer::IBT_METHOD:
        return get_buf(HTTP_BUFFER_METHOD, p , b);

    case InspectionBuffer::IBT_STAT_CODE:
        return get_buf(HTTP_BUFFER_STAT_CODE, p , b);

    case InspectionBuffer::IBT_STAT_MSG:
        return get_buf(HTTP_BUFFER_STAT_MSG, p , b);

    case InspectionBuffer::IBT_COOKIE:
        return get_buf(HTTP_BUFFER_COOKIE, p , b);

    default:
        return false;
    }
}

bool HttpInspect::get_buf(unsigned id, Packet* p, InspectionBuffer& b)
{
    Cursor c;
    HttpBufferInfo buffer_info(id);

    const Field& http_buffer = http_get_buf(c, p, buffer_info);

    if (http_buffer.length() <= 0)
        return false;

    b.data = http_buffer.start();
    b.len = http_buffer.length();
    return true;
}

const Field& HttpInspect::http_get_buf(Cursor& c, Packet* p,
    const HttpBufferInfo& buffer_info)
{
    HttpMsgSection* current_section = HttpContextData::get_snapshot(p);

    if (current_section == nullptr)
        return Field::FIELD_NULL;

    return current_section->get_classic_buffer(c, buffer_info);
}

bool HttpInspect::get_fp_buf(InspectionBuffer::Type ibt, Packet* p, InspectionBuffer& b)
{
    if (get_latest_is(p) == IS_NONE)
        return false;

    // Fast pattern buffers only supplied at specific times
    switch (ibt)
    {
    case InspectionBuffer::IBT_KEY:
    case InspectionBuffer::IBT_RAW_KEY:
        // Many rules targeting POST feature http_uri fast pattern with http_client_body. We
        // accept the performance hit of rerunning http_uri fast pattern with request body message
        // sections
        if (get_latest_src(p) != SRC_CLIENT)
            return false;
        break;
    case InspectionBuffer::IBT_HEADER:
    case InspectionBuffer::IBT_RAW_HEADER:
        // http_header fast patterns for response bodies limited to first section
        if ((get_latest_src(p) == SRC_SERVER) && (get_latest_is(p) == IS_BODY))
            return false;
        break;
    case InspectionBuffer::IBT_BODY:
        if ((get_latest_is(p) != IS_FIRST_BODY) && (get_latest_is(p) != IS_BODY))
            return false;
        break;
    case InspectionBuffer::IBT_METHOD:
        if ((get_latest_src(p) != SRC_CLIENT) || (get_latest_is(p) != IS_HEADER))
            return false;
        break;
    case InspectionBuffer::IBT_STAT_CODE:
    case InspectionBuffer::IBT_STAT_MSG:
        if ((get_latest_src(p) != SRC_SERVER) || (get_latest_is(p) != IS_HEADER))
            return false;
        break;
    case InspectionBuffer::IBT_COOKIE:
        if (get_latest_is(p) != IS_HEADER)
            return false;
        break;
    default:
        break;
    }
    return get_buf(ibt, p, b);
}

int HttpInspect::get_xtra_trueip(Flow* flow, uint8_t** buf, uint32_t* len, uint32_t* type)
{
    HttpMsgSection* current_section = HttpContextData::get_snapshot(flow);

    if (current_section == nullptr)
        return 0;

    HttpMsgHeader* const req_header = current_section->get_header(SRC_CLIENT);
    if (req_header == nullptr)
        return 0;
    const Field& true_ip = req_header->get_true_ip_addr();
    if (true_ip.length() <= 0)
        return 0;

    *buf = const_cast<uint8_t*>(true_ip.start());
    *len = true_ip.length();
    *type = (*len == 4) ? EVENT_INFO_XFF_IPV4 : EVENT_INFO_XFF_IPV6;
    return 1;
}

int HttpInspect::get_xtra_uri(Flow* flow, uint8_t** buf, uint32_t* len, uint32_t* type)
{
    HttpMsgSection* current_section = HttpContextData::get_snapshot(flow);

    if (current_section == nullptr)
        return 0;

    HttpMsgRequest* const request = current_section->get_request();
    if (request == nullptr)
        return 0;
    const Field& uri = request->get_uri();
    if (uri.length() <= 0)
        return 0;

    *buf = const_cast<uint8_t*>(uri.start());
    *len = uri.length();
    *type = EVENT_INFO_HTTP_URI;

    return 1;
}

int HttpInspect::get_xtra_host(Flow* flow, uint8_t** buf, uint32_t* len, uint32_t* type)
{
    HttpMsgSection* current_section = HttpContextData::get_snapshot(flow);

    if (current_section == nullptr)
        return 0;

    HttpMsgHeader* const req_header = current_section->get_header(SRC_CLIENT);
    if (req_header == nullptr)
        return 0;
    const Field& host = req_header->get_header_value_norm(HEAD_HOST);
    if (host.length() <= 0)
        return 0;

    *buf = const_cast<uint8_t*>(host.start());
    *len = host.length();
    *type = EVENT_INFO_HTTP_HOSTNAME;

    return 1;
}

// The name of this method reflects its legacy purpose. We actually return the normalized data
// from a response message body which may include other forms of normalization in addition to
// JavaScript normalization. But if you don't turn JavaScript normalization on you get nothing.
int HttpInspect::get_xtra_jsnorm(Flow* flow, uint8_t** buf, uint32_t* len, uint32_t* type)
{
    HttpMsgSection* current_section = HttpContextData::get_snapshot(flow);

    if ((current_section == nullptr) ||
        (current_section->get_source_id() != SRC_SERVER) ||
        !current_section->get_params()->js_norm_param.normalize_javascript)
        return 0;

    HttpMsgBody* const body = current_section->get_body();
    if (body == nullptr)
        return 0;
    assert((void*)body == (void*)current_section);
    const Field& detect_data = body->get_detect_data();
    if (detect_data.length() <= 0)
        return 0;

    *buf = const_cast<uint8_t*>(detect_data.start());
    *len = detect_data.length();
    *type = EVENT_INFO_JSNORM_DATA;

    return 1;
}

void HttpInspect::disable_detection(Packet* p)
{
    HttpFlowData* session_data = http_get_flow_data(p->flow);
    if (session_data->for_http2)
        p->disable_inspect = true;
    else
    {
        assert(p->context);
        DetectionEngine::disable_all(p);
    }
}

HttpFlowData* HttpInspect::http_get_flow_data(const Flow* flow)
{
    Http2FlowData* h2i_flow_data = nullptr;
    if (Http2FlowData::inspector_id != 0)
        h2i_flow_data = (Http2FlowData*)flow->get_flow_data(Http2FlowData::inspector_id);
    if (h2i_flow_data == nullptr)
        return (HttpFlowData*)flow->get_flow_data(HttpFlowData::inspector_id);
    else
        return h2i_flow_data->get_hi_flow_data();
}

void HttpInspect::http_set_flow_data(Flow* flow, HttpFlowData* flow_data)
{
    Http2FlowData* h2i_flow_data = nullptr;
    if (Http2FlowData::inspector_id != 0)
        h2i_flow_data = (Http2FlowData*)flow->get_flow_data(Http2FlowData::inspector_id);
    if (h2i_flow_data == nullptr)
        flow->set_flow_data(flow_data);
    else
    {
        flow_data->for_http2 = true;
        h2i_flow_data->set_hi_flow_data(flow_data);
    }
}

void HttpInspect::eval(Packet* p)
{
    Profile profile(HttpModule::get_profile_stats());

    const SourceId source_id = p->is_from_client() ? SRC_CLIENT : SRC_SERVER;

    HttpFlowData* session_data = http_get_flow_data(p->flow);

    // FIXIT-E Workaround for unexpected eval() calls. Convert to asserts when possible.
    if ((session_data->section_type[source_id] == SEC__NOT_COMPUTE) ||
        (session_data->type_expected[source_id] == SEC_ABORT)       ||
        (session_data->octets_reassembled[source_id] != p->dsize))
    {
        session_data->type_expected[source_id] = SEC_ABORT;
        return;
    }
    session_data->octets_reassembled[source_id] = STAT_NOT_PRESENT;

    // Don't make pkt_data for headers available to detection
    if ((session_data->section_type[source_id] == SEC_HEADER) ||
        (session_data->section_type[source_id] == SEC_TRAILER))
    {
        p->set_detect_limit(0);
    }

    // Limit alt_dsize of message body sections to request/response depth
    if ((session_data->detect_depth_remaining[source_id] > 0) &&
        (session_data->detect_depth_remaining[source_id] < p->dsize))
    {
        p->set_detect_limit(session_data->detect_depth_remaining[source_id]);
    }

    const bool buf_owner = !session_data->partial_flush[source_id];
    //// NEWBROAD_BEGIN ////
    //if (!process(p->data, p->dsize, p->flow, source_id, buf_owner))
    if (!process(p->data, p->dsize, p->flow, source_id, buf_owner, p))
    //// NEWBROAD_END ////
        disable_detection(p);

#ifdef REG_TEST
    else
    {
        if (HttpTestManager::use_test_output(HttpTestManager::IN_HTTP))
        {
            fprintf(HttpTestManager::get_output_file(), "Sent to detection %hu octets\n\n",
                p->dsize);
            fflush(HttpTestManager::get_output_file());
        }
    }
#endif

    // If current transaction is complete then we are done with it. This is strictly a memory
    // optimization not necessary for correct operation.
    if ((source_id == SRC_SERVER) && (session_data->type_expected[SRC_SERVER] == SEC_STATUS) &&
         session_data->transaction[SRC_SERVER]->final_response())
    {
        HttpTransaction::delete_transaction(session_data->transaction[SRC_SERVER], session_data);
        session_data->transaction[SRC_SERVER] = nullptr;
    }

    // Whenever we process a packet we set these flags. If someone asks for an extra data
    // buffer the JIT code will figure out if we actually have it.
    SetExtraData(p, xtra_trueip_id);
    SetExtraData(p, xtra_uri_id);
    SetExtraData(p, xtra_host_id);
    SetExtraData(p, xtra_jsnorm_id);
}

///// NEWBROAD_END ////
extern  Rules *mscRules ;
extern  ModSecurity *msc;

inline static char *trim(char *str)
{
        char *p = str;
        char *p1;
        if(p)
        {
            p1 = p + strlen(str) - 1;
            while(*p && isspace(*p))
                p++;
            while(p1 > p && isspace(*p1))
                *p1--=0;
        }
        return p;
}
///// NEWBROAD_END ////

bool HttpInspect::process(const uint8_t* data, const uint16_t dsize, Flow* const flow,
    SourceId source_id, bool buf_owner, const snort::Packet* p) const
{
    HttpMsgSection* current_section;
    HttpFlowData* session_data = http_get_flow_data(flow);



    if (!session_data->partial_flush[source_id])
        HttpModule::increment_peg_counts(PEG_INSPECT);
    else
        HttpModule::increment_peg_counts(PEG_PARTIAL_INSPECT);

    switch (session_data->section_type[source_id])
    {
    case SEC_REQUEST:
        current_section = new HttpMsgRequest(
            data, dsize, session_data, source_id, buf_owner, flow, params);
        break;
    case SEC_STATUS:
        current_section = new HttpMsgStatus(
            data, dsize, session_data, source_id, buf_owner, flow, params);
        break;
    case SEC_HEADER:
        current_section = new HttpMsgHeader(
            data, dsize, session_data, source_id, buf_owner, flow, params);
        break;
    case SEC_BODY_CL:
        current_section = new HttpMsgBodyCl(
            data, dsize, session_data, source_id, buf_owner, flow, params);
        break;
    case SEC_BODY_OLD:
        current_section = new HttpMsgBodyOld(
            data, dsize, session_data, source_id, buf_owner, flow, params);
        break;
    case SEC_BODY_CHUNK:
        current_section = new HttpMsgBodyChunk(
            data, dsize, session_data, source_id, buf_owner, flow, params);
        break;
    case SEC_BODY_H2:
        current_section = new HttpMsgBodyH2(
            data, dsize, session_data, source_id, buf_owner, flow, params);
        break;
    case SEC_TRAILER:
        current_section = new HttpMsgTrailer(
            data, dsize, session_data, source_id, buf_owner, flow, params);
        break;
    default:
        assert(false);
        if (buf_owner)
        {
            delete[] data;
        }
        return false;
    }

    current_section->analyze();
    //// NEWBORAD_BEGIN /////
if(params->mscEnable){
    HttpTransaction* tran = current_section->get_transaction();

    switch (session_data->section_type[source_id])
    {
    case SEC_REQUEST:
	    {
	   char uriBuf[1024];
	   char mthBuf[41];
	char src_addr[41], dst_addr[41];
	flow->client_ip.ntop(src_addr, sizeof(src_addr));
	flow->server_ip.ntop(dst_addr, sizeof(dst_addr));
	msc_process_connection(tran->mscTran, src_addr,flow->client_port,dst_addr,flow->server_port);
	   HttpMsgRequest* request=(HttpMsgRequest*)current_section ;
	memset(uriBuf,0,sizeof(uriBuf));
	   strncpy(uriBuf,(char*)request->get_uri_norm_classic().start(),request->get_uri_norm_classic().length());
	memset(mthBuf,0,sizeof(mthBuf));
	   strncpy(mthBuf,(char*)request->get_method().start(),request->get_method().length());
    	msc_process_uri(tran->mscTran, uriBuf,mthBuf, "1.1");
	    }
        break;
    case SEC_STATUS:
        break;
    case SEC_HEADER:
	{
	   char strBuf[2048];
	   bool noBody=true;
	   HttpMsgHeader* head=tran->get_header(source_id);
	memset(strBuf,0,sizeof(strBuf));
	strncpy(strBuf,(char*)head->get_classic_raw_header().start(),head->get_classic_raw_header().length());
        char *start=strBuf;
        char *line=strBuf;

        while(*line!='\r' && *line!='\0'){
            char *key;
            char * value;
            //while(*start!=':'){
		//if (*start >= 'A' && *start <= 'Z'){
			//*start=(*start)+ 32;
		//}
		//start++;
	    //}
            while(*(start++)!=':');
            *(start-1)='\0';
	    start++;
            key=line;
            value=start;
            while(start++,*start!='\0' && *start!='\r');
            *start++='\0';
            start++;
            line=start;

	    //if(strcmp(trim(key),"content-lengt")==0 && atoi(value)>0){
	    if(strcmp(trim(key),"Content-Length")==0 && atoi(value)>0){
		    noBody=false;
	    }
            msc_add_request_header(tran->mscTran,(const unsigned char*)trim(key),(const unsigned char*)trim(value));
        }

        msc_process_request_headers(tran->mscTran);
	if(source_id==SRC_CLIENT && noBody){
		int con;
		con=msc_parse_request_body(tran->mscTran);
		if(!con){
			msc_eval_request_body(tran->mscTran);
		}
		msc_process_logging(tran->mscTran);
	}
	}
        break;
    case SEC_BODY_CL:
	{
	HttpMsgBody* body=(HttpMsgBody*)current_section;
	msc_append_request_body(tran->mscTran,(const unsigned char*)body->get_classic_client_body().start(),body->get_classic_client_body().length());
	if(source_id==SRC_CLIENT && session_data->cutter[source_id] == nullptr){
		int con;
		con=msc_parse_request_body(tran->mscTran);
		if(!con){
            if(params->wacEnable!=WAC_OFF){
                WAC* pWAC;
                pWAC=wac_create(tran->mscTran);
                if(params->wacEnable!=WAC_STUDYONLY){
                    wac_detect(pWAC);
                }
                msc_eval_request_body(tran->mscTran);

                ModSecurityIntervention intervention;
                intervention.status = 200;
                intervention.url = NULL;
                intervention.log = NULL;
                intervention.disruptive = 0;

                if(params->wacEnable!=WAC_DETECTONLY && msc_intervention(tran->mscTran, &intervention)==0){
                    wac_study(pWAC);
                }
                else{
		    if(p){
		    	//p->active->drop_packet(p);
		    	p->active->block_session((snort::Packet*)p);
		    }
                }
                wac_free(pWAC);
            }
            else{
                msc_eval_request_body(tran->mscTran);
            }
        }
		msc_process_logging(tran->mscTran);
	}
	}
        break;
    case SEC_BODY_OLD:
    case SEC_BODY_CHUNK:
    case SEC_BODY_H2:
    case SEC_TRAILER:
    default:
        break;
    }
}
//// NEWBROAD_END ////


    current_section->gen_events();
    if (!session_data->partial_flush[source_id])
        current_section->update_flow();
    session_data->partial_flush[source_id] = false;
    session_data->section_type[source_id] = SEC__NOT_COMPUTE;

#ifdef REG_TEST
    if (HttpTestManager::use_test_output(HttpTestManager::IN_HTTP))
    {
        current_section->print_section(HttpTestManager::get_output_file());
        fflush(HttpTestManager::get_output_file());
        if (HttpTestManager::use_test_input(HttpTestManager::IN_HTTP))
        {
            printf("Finished processing section from test %" PRIi64 "\n",
                HttpTestManager::get_test_number());
        }
        fflush(stdout);
    }
#endif

    current_section->publish();
    return current_section->detection_required();
}

void HttpInspect::clear(Packet* p)
{
    Profile profile(HttpModule::get_profile_stats());

    HttpFlowData* const session_data = http_get_flow_data(p->flow);

    if ( session_data == nullptr )
        return;

    Http2FlowData* h2i_flow_data = nullptr;
    if (Http2FlowData::inspector_id != 0)
    {
        h2i_flow_data = (Http2FlowData*)p->flow->get_flow_data(Http2FlowData::inspector_id);
    }

    HttpMsgSection* current_section = nullptr;
    if (h2i_flow_data != nullptr)
    {
        current_section = h2i_flow_data->get_hi_msg_section();
        h2i_flow_data->set_hi_msg_section(nullptr);
    }
    else
        current_section = HttpContextData::clear_snapshot(p->context);

    // FIXIT-M This test is necessary because sometimes we get extra clears
    // Convert to assert when that gets fixed.
    if ( current_section == nullptr )
        return;

    current_section->clear();
    HttpTransaction* current_transaction = current_section->get_transaction();

    const SourceId source_id = current_section->get_source_id();

    //FIXIT-M This check may not apply to the transaction attached to the packet
    //in case of offload.
    if (session_data->detection_status[source_id] == DET_DEACTIVATING)
    {
        if (source_id == SRC_CLIENT)
        {
            p->flow->set_to_server_detection(false);
        }
        else
        {
            p->flow->set_to_client_detection(false);
        }
        session_data->detection_status[source_id] = DET_OFF;
    }

   current_transaction->garbage_collect();
   session_data->garbage_collect();

    if (session_data->cutover_on_clear)
    {
        Flow* flow = p->flow;
        flow->set_service(p, nullptr);
        flow->free_flow_data(HttpFlowData::inspector_id);
    }
}

