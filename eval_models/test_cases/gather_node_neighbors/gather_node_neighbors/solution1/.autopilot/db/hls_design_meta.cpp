#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("node", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("node_in_degree", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("node_neighbors_address0", 11, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("node_neighbors_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("node_neighbors_we0", 1, hls_out, 2, "ap_memory", "mem_we", 1),
	Port_Property("node_neighbors_d0", 32, hls_out, 2, "ap_memory", "mem_din", 1),
	Port_Property("neighbor_table_offsets_address0", 11, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("neighbor_table_offsets_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("neighbor_table_offsets_q0", 32, hls_in, 3, "ap_memory", "in_data", 1),
	Port_Property("neighbor_table_address0", 10, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("neighbor_table_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("neighbor_table_q0", 32, hls_in, 4, "ap_memory", "mem_dout", 1),
};
const char* HLS_Design_Meta::dut_name = "gather_node_neighbors";
