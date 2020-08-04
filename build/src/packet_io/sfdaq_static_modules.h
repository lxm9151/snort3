
#include <daq_module_api.h>

extern const DAQ_ModuleAPI_t afpacket_daq_module_data;
extern const DAQ_ModuleAPI_t bpf_daq_module_data;
extern const DAQ_ModuleAPI_t dump_daq_module_data;
extern const DAQ_ModuleAPI_t fst_daq_module_data;
extern const DAQ_ModuleAPI_t pcap_daq_module_data;
extern const DAQ_ModuleAPI_t trace_daq_module_data;


static DAQ_Module_h static_daq_modules[] =
{
    &afpacket_daq_module_data,
    &bpf_daq_module_data,
    &dump_daq_module_data,
    &fst_daq_module_data,
    &pcap_daq_module_data,
    &trace_daq_module_data,

    nullptr
};

