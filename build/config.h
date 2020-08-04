#ifndef __CONFIG_H__
#define __CONFIG_H__


/*****************************************************************************/
/**                                                                         **/
/** If you want to change any of these options, go to your build directory, **/
/** and type `ccmake `".  Change your options in the GUI.  **/
/** Make sure to compile and regenerate the Makefiles when you are done by  **/
/** either exiting the GUI by typing `c` following by `g`, or by typing     **/
/** `cmake ` from your build directory.                    **/  
/**                                                                         **/
/*****************************************************************************/

/* General Snort++ Information */

/* Name of package */
#define PACKAGE snort

/* Version number of package */
#define VERSION "3.0.2"

/* see configure.ac for the purpose of API_OPTIONS */
/* there is no cmake magic yet to configure this */
/* but luckily it is not yet needed */
#define API_OPTIONS ""


/*  User-configured options */

/* enable debug messages */
/* #undef DEBUG_MSGS */

/* enable profiling */
/* #undef PROFILE */

/* do not generate a core file on segfault etc */
/* #undef NOCOREFILE */

/* enable piglet */
/* #undef PIGLET */

/* enable command shell */
/* #undef SHELL */

/* include internal decoders in binary */
#define STATIC_CODECS 1

/* include internal inspectors in binary */
#define STATIC_INSPECTORS 1

/* include internal ips actions in binary */
#define STATIC_IPS_ACTIONS 1

/* include internal ips options in binary */
#define STATIC_IPS_OPTIONS 1

/* include internal loggers in binary */
#define STATIC_LOGGERS 1

/* include internal inspectors in binary */
#define STATIC_SEARCH_ENGINES 1

/* enable unit tests */
/* #undef UNIT_TEST */

/* enable stdlog */
/* #undef USE_STDLOG */

/* enable tsc clock */
/* #undef USE_TSC_CLOCK */

/* disable snort profiler */
/* #undef NO_PROFILER */

/* disable snort memory manager */
/* #undef NO_MEM_MGR */

/* signal to dump stats  */
#define SIGNAL_SNORT_DUMP_STATS SIGUSR1

/* signal to reload attribute table */
#define SIGNAL_SNORT_READ_ATTR_TBL SIGURG

/* signal to reload configuration */
#define SIGNAL_SNORT_RELOAD SIGHUP

/* signal to reload stats */
#define SIGNAL_SNORT_ROTATE_STATS SIGUSR2

/* large pcap options */
/* #undef _LARGEFILE_SOURCE */
/* #undef _FILE_OFFSET_BITS */


/*  System types and their sizes */

/* The size of `long int', as computed by sizeof. */
#define SIZEOF_LONG_INT 8

/* The size of `unsigned long int', as computed by sizeof. */
#define SIZEOF_UNSIGNED_LONG_INT 8

/* Define if words are big endian */
/* #undef WORDS_BIGENDIAN */


/*  Header file definitions */

/* Define to 1 if you have the <dumbnet.h> header file. */
#define HAVE_DUMBNET_H 1


/*  Available libraries */

/* flatbuffers available */
/* #undef HAVE_FLATBUFFERS */

/* hyperscan available */
#define HAVE_HYPERSCAN 1
/* #undef HAVE_HS_COMPILE_LIT */

/* iconv available */
#define HAVE_ICONV 1

/* libunwind available */
/* #undef HAVE_LIBUNWIND */

/* lzma available */
#define HAVE_LZMA 1

/* safec available */
/* #undef HAVE_SAFEC */

/* uuid available */
/* #undef HAVE_UUID */

/* tirpc should be used for RPC database lookups */
/* #undef USE_TIRPC */


/*  Availability of specific library functions */

/* Define to 1 if you have the `malloc_trim' function. */
#define HAVE_MALLOC_TRIM 1

/* Define to 1 if you have the `memrchr' function. */
#define HAVE_MEMRCHR 1

/* Define to 1 if you have the `sigaction' function. */
#define HAVE_SIGACTION 1

/* Define to 1 if you have the GNU form of the `strerror_r' function. */
#define HAVE_GNU_STRERROR_R 1

/* Define 1 if you have basename_r function for freebsd < 12.0.0 */
/* #undef HAVE_BASENAME_R */

/*  Available compiler options */

/* Define if the compiler supports visibility declarations. */
#define HAVE_VISIBILITY 1

/* Define if `thread_local` keyword should be used */
/* #undef USE_THREAD_LOCAL */

#endif

