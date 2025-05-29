#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("sample_real_address0", 8, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("sample_real_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("sample_real_we0", 1, hls_out, 0, "ap_memory", "mem_we", 1),
	Port_Property("sample_real_d0", 64, hls_out, 0, "ap_memory", "mem_din", 1),
	Port_Property("sample_real_q0", 64, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("sample_imag_address0", 8, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("sample_imag_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("sample_imag_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("sample_imag_d0", 64, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("sample_imag_q0", 64, hls_in, 1, "ap_memory", "mem_dout", 1),
};
const char* HLS_Design_Meta::dut_name = "dft";
