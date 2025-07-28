#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("Arows_dout", 128, hls_in, 0, "ap_fifo", "fifo_port_we", 1),
	Port_Property("Arows_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 1),
	Port_Property("Arows_read", 1, hls_out, 0, "ap_fifo", "fifo_data", 1),
	Port_Property("Bcols_dout", 128, hls_in, 1, "ap_fifo", "fifo_port_we", 1),
	Port_Property("Bcols_empty_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 1),
	Port_Property("Bcols_read", 1, hls_out, 1, "ap_fifo", "fifo_data", 1),
	Port_Property("ABpartial_i", 512, hls_in, 2, "ap_ovld", "in_data", 1),
	Port_Property("ABpartial_o", 512, hls_out, 2, "ap_ovld", "out_data", 1),
	Port_Property("ABpartial_o_ap_vld", 1, hls_out, 2, "ap_ovld", "out_vld", 1),
	Port_Property("it", 32, hls_in, 3, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "block_mm";
