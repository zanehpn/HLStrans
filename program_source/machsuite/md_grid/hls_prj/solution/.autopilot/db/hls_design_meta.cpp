#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("n_points_address0", 6, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("n_points_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("n_points_q0", 32, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("force_r_address0", 10, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("force_r_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("force_r_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("force_r_d0", 192, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("force_r_q0", 192, hls_in, 1, "ap_memory", "in_data", 1),
	Port_Property("position_address0", 10, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("position_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("position_q0", 192, hls_in, 2, "ap_memory", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "md";
