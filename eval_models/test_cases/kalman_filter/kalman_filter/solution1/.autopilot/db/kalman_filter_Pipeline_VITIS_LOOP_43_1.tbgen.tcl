set moduleName kalman_filter_Pipeline_VITIS_LOOP_43_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {kalman_filter_Pipeline_VITIS_LOOP_43_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 0}  }
	{ sext_ln43 int 59 regular  }
	{ in_local_V_3 int 19 regular {array 65536 { 0 0 } 0 1 }  }
	{ in_local_V_2 int 19 regular {array 65536 { 0 0 } 0 1 }  }
	{ in_local_V_1 int 19 regular {array 65536 { 0 0 } 0 1 }  }
	{ in_local_V int 19 regular {array 65536 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln43", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "in_local_V_3", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_2", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_1", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 85
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln43 sc_in sc_lv 59 signal 1 } 
	{ in_local_V_3_address0 sc_out sc_lv 16 signal 2 } 
	{ in_local_V_3_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_3_we0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_3_d0 sc_out sc_lv 19 signal 2 } 
	{ in_local_V_3_address1 sc_out sc_lv 16 signal 2 } 
	{ in_local_V_3_ce1 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_3_we1 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_3_d1 sc_out sc_lv 19 signal 2 } 
	{ in_local_V_2_address0 sc_out sc_lv 16 signal 3 } 
	{ in_local_V_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_2_we0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_2_d0 sc_out sc_lv 19 signal 3 } 
	{ in_local_V_2_address1 sc_out sc_lv 16 signal 3 } 
	{ in_local_V_2_ce1 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_2_we1 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_2_d1 sc_out sc_lv 19 signal 3 } 
	{ in_local_V_1_address0 sc_out sc_lv 16 signal 4 } 
	{ in_local_V_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_1_we0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_1_d0 sc_out sc_lv 19 signal 4 } 
	{ in_local_V_1_address1 sc_out sc_lv 16 signal 4 } 
	{ in_local_V_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_1_we1 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_1_d1 sc_out sc_lv 19 signal 4 } 
	{ in_local_V_address0 sc_out sc_lv 16 signal 5 } 
	{ in_local_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_we0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_d0 sc_out sc_lv 19 signal 5 } 
	{ in_local_V_address1 sc_out sc_lv 16 signal 5 } 
	{ in_local_V_ce1 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_we1 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_d1 sc_out sc_lv 19 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "sext_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln43", "role": "default" }} , 
 	{ "name": "in_local_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "address0" }} , 
 	{ "name": "in_local_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "ce0" }} , 
 	{ "name": "in_local_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "we0" }} , 
 	{ "name": "in_local_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "d0" }} , 
 	{ "name": "in_local_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "address1" }} , 
 	{ "name": "in_local_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "ce1" }} , 
 	{ "name": "in_local_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "we1" }} , 
 	{ "name": "in_local_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "d1" }} , 
 	{ "name": "in_local_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "address0" }} , 
 	{ "name": "in_local_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "ce0" }} , 
 	{ "name": "in_local_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "we0" }} , 
 	{ "name": "in_local_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "d0" }} , 
 	{ "name": "in_local_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "address1" }} , 
 	{ "name": "in_local_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "ce1" }} , 
 	{ "name": "in_local_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "we1" }} , 
 	{ "name": "in_local_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "d1" }} , 
 	{ "name": "in_local_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "address0" }} , 
 	{ "name": "in_local_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "ce0" }} , 
 	{ "name": "in_local_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "we0" }} , 
 	{ "name": "in_local_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "d0" }} , 
 	{ "name": "in_local_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "address1" }} , 
 	{ "name": "in_local_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "ce1" }} , 
 	{ "name": "in_local_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "we1" }} , 
 	{ "name": "in_local_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "d1" }} , 
 	{ "name": "in_local_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_local_V", "role": "address0" }} , 
 	{ "name": "in_local_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "ce0" }} , 
 	{ "name": "in_local_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "we0" }} , 
 	{ "name": "in_local_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V", "role": "d0" }} , 
 	{ "name": "in_local_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_local_V", "role": "address1" }} , 
 	{ "name": "in_local_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "ce1" }} , 
 	{ "name": "in_local_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "we1" }} , 
 	{ "name": "in_local_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "kalman_filter_Pipeline_VITIS_LOOP_43_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32774", "EstimateLatencyMax" : "32774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_local_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_Pipeline_VITIS_LOOP_43_1 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		in_local_V_3 {Type O LastRead -1 FirstWrite 5}
		in_local_V_2 {Type O LastRead -1 FirstWrite 5}
		in_local_V_1 {Type O LastRead -1 FirstWrite 5}
		in_local_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32774", "Max" : "32774"}
	, {"Name" : "Interval", "Min" : "32774", "Max" : "32774"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_WSTRB STRB 1 32 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	sext_ln43 { ap_none {  { sext_ln43 in_data 0 59 } } }
	in_local_V_3 { ap_memory {  { in_local_V_3_address0 mem_address 1 16 }  { in_local_V_3_ce0 mem_ce 1 1 }  { in_local_V_3_we0 mem_we 1 1 }  { in_local_V_3_d0 mem_din 1 19 }  { in_local_V_3_address1 MemPortADDR2 1 16 }  { in_local_V_3_ce1 MemPortCE2 1 1 }  { in_local_V_3_we1 MemPortWE2 1 1 }  { in_local_V_3_d1 MemPortDIN2 1 19 } } }
	in_local_V_2 { ap_memory {  { in_local_V_2_address0 mem_address 1 16 }  { in_local_V_2_ce0 mem_ce 1 1 }  { in_local_V_2_we0 mem_we 1 1 }  { in_local_V_2_d0 mem_din 1 19 }  { in_local_V_2_address1 MemPortADDR2 1 16 }  { in_local_V_2_ce1 MemPortCE2 1 1 }  { in_local_V_2_we1 MemPortWE2 1 1 }  { in_local_V_2_d1 MemPortDIN2 1 19 } } }
	in_local_V_1 { ap_memory {  { in_local_V_1_address0 mem_address 1 16 }  { in_local_V_1_ce0 mem_ce 1 1 }  { in_local_V_1_we0 mem_we 1 1 }  { in_local_V_1_d0 mem_din 1 19 }  { in_local_V_1_address1 MemPortADDR2 1 16 }  { in_local_V_1_ce1 MemPortCE2 1 1 }  { in_local_V_1_we1 MemPortWE2 1 1 }  { in_local_V_1_d1 MemPortDIN2 1 19 } } }
	in_local_V { ap_memory {  { in_local_V_address0 mem_address 1 16 }  { in_local_V_ce0 mem_ce 1 1 }  { in_local_V_we0 mem_we 1 1 }  { in_local_V_d0 mem_din 1 19 }  { in_local_V_address1 MemPortADDR2 1 16 }  { in_local_V_ce1 MemPortCE2 1 1 }  { in_local_V_we1 MemPortWE2 1 1 }  { in_local_V_d1 MemPortDIN2 1 19 } } }
}
set moduleName kalman_filter_Pipeline_VITIS_LOOP_43_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {kalman_filter_Pipeline_VITIS_LOOP_43_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 0}  }
	{ sext_ln43 int 59 regular  }
	{ in_local_V int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_1 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_2 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_3 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_4 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_5 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_6 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_7 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_8 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_9 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_10 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_11 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_12 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_13 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_14 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_15 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln43", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "in_local_V", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_1", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_2", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_3", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_4", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_5", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_6", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_7", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_8", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_9", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_10", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_11", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_12", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_13", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_14", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_15", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 117
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln43 sc_in sc_lv 59 signal 1 } 
	{ in_local_V_address0 sc_out sc_lv 14 signal 2 } 
	{ in_local_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_we0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_d0 sc_out sc_lv 19 signal 2 } 
	{ in_local_V_1_address0 sc_out sc_lv 14 signal 3 } 
	{ in_local_V_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_1_we0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_1_d0 sc_out sc_lv 19 signal 3 } 
	{ in_local_V_2_address0 sc_out sc_lv 14 signal 4 } 
	{ in_local_V_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_2_we0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_2_d0 sc_out sc_lv 19 signal 4 } 
	{ in_local_V_3_address0 sc_out sc_lv 14 signal 5 } 
	{ in_local_V_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_3_we0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_3_d0 sc_out sc_lv 19 signal 5 } 
	{ in_local_V_4_address0 sc_out sc_lv 14 signal 6 } 
	{ in_local_V_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_4_we0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_4_d0 sc_out sc_lv 19 signal 6 } 
	{ in_local_V_5_address0 sc_out sc_lv 14 signal 7 } 
	{ in_local_V_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_5_we0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_5_d0 sc_out sc_lv 19 signal 7 } 
	{ in_local_V_6_address0 sc_out sc_lv 14 signal 8 } 
	{ in_local_V_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_6_we0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_6_d0 sc_out sc_lv 19 signal 8 } 
	{ in_local_V_7_address0 sc_out sc_lv 14 signal 9 } 
	{ in_local_V_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_7_we0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_7_d0 sc_out sc_lv 19 signal 9 } 
	{ in_local_V_8_address0 sc_out sc_lv 14 signal 10 } 
	{ in_local_V_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_8_we0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_8_d0 sc_out sc_lv 19 signal 10 } 
	{ in_local_V_9_address0 sc_out sc_lv 14 signal 11 } 
	{ in_local_V_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_9_we0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_9_d0 sc_out sc_lv 19 signal 11 } 
	{ in_local_V_10_address0 sc_out sc_lv 14 signal 12 } 
	{ in_local_V_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_10_we0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_10_d0 sc_out sc_lv 19 signal 12 } 
	{ in_local_V_11_address0 sc_out sc_lv 14 signal 13 } 
	{ in_local_V_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_11_we0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_11_d0 sc_out sc_lv 19 signal 13 } 
	{ in_local_V_12_address0 sc_out sc_lv 14 signal 14 } 
	{ in_local_V_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_12_we0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_12_d0 sc_out sc_lv 19 signal 14 } 
	{ in_local_V_13_address0 sc_out sc_lv 14 signal 15 } 
	{ in_local_V_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_13_we0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_13_d0 sc_out sc_lv 19 signal 15 } 
	{ in_local_V_14_address0 sc_out sc_lv 14 signal 16 } 
	{ in_local_V_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_14_we0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_14_d0 sc_out sc_lv 19 signal 16 } 
	{ in_local_V_15_address0 sc_out sc_lv 14 signal 17 } 
	{ in_local_V_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_15_we0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_15_d0 sc_out sc_lv 19 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "sext_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln43", "role": "default" }} , 
 	{ "name": "in_local_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V", "role": "address0" }} , 
 	{ "name": "in_local_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "ce0" }} , 
 	{ "name": "in_local_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "we0" }} , 
 	{ "name": "in_local_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V", "role": "d0" }} , 
 	{ "name": "in_local_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "address0" }} , 
 	{ "name": "in_local_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "ce0" }} , 
 	{ "name": "in_local_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "we0" }} , 
 	{ "name": "in_local_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "d0" }} , 
 	{ "name": "in_local_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "address0" }} , 
 	{ "name": "in_local_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "ce0" }} , 
 	{ "name": "in_local_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "we0" }} , 
 	{ "name": "in_local_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "d0" }} , 
 	{ "name": "in_local_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "address0" }} , 
 	{ "name": "in_local_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "ce0" }} , 
 	{ "name": "in_local_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "we0" }} , 
 	{ "name": "in_local_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "d0" }} , 
 	{ "name": "in_local_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "address0" }} , 
 	{ "name": "in_local_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "ce0" }} , 
 	{ "name": "in_local_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "we0" }} , 
 	{ "name": "in_local_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "d0" }} , 
 	{ "name": "in_local_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "address0" }} , 
 	{ "name": "in_local_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "ce0" }} , 
 	{ "name": "in_local_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "we0" }} , 
 	{ "name": "in_local_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "d0" }} , 
 	{ "name": "in_local_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "address0" }} , 
 	{ "name": "in_local_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "ce0" }} , 
 	{ "name": "in_local_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "we0" }} , 
 	{ "name": "in_local_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "d0" }} , 
 	{ "name": "in_local_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "address0" }} , 
 	{ "name": "in_local_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "ce0" }} , 
 	{ "name": "in_local_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "we0" }} , 
 	{ "name": "in_local_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "d0" }} , 
 	{ "name": "in_local_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "address0" }} , 
 	{ "name": "in_local_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "ce0" }} , 
 	{ "name": "in_local_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "we0" }} , 
 	{ "name": "in_local_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "d0" }} , 
 	{ "name": "in_local_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "address0" }} , 
 	{ "name": "in_local_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "ce0" }} , 
 	{ "name": "in_local_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "we0" }} , 
 	{ "name": "in_local_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "d0" }} , 
 	{ "name": "in_local_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "address0" }} , 
 	{ "name": "in_local_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "ce0" }} , 
 	{ "name": "in_local_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "we0" }} , 
 	{ "name": "in_local_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "d0" }} , 
 	{ "name": "in_local_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "address0" }} , 
 	{ "name": "in_local_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "ce0" }} , 
 	{ "name": "in_local_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "we0" }} , 
 	{ "name": "in_local_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "d0" }} , 
 	{ "name": "in_local_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "address0" }} , 
 	{ "name": "in_local_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "ce0" }} , 
 	{ "name": "in_local_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "we0" }} , 
 	{ "name": "in_local_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "d0" }} , 
 	{ "name": "in_local_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "address0" }} , 
 	{ "name": "in_local_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "ce0" }} , 
 	{ "name": "in_local_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "we0" }} , 
 	{ "name": "in_local_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "d0" }} , 
 	{ "name": "in_local_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "address0" }} , 
 	{ "name": "in_local_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "ce0" }} , 
 	{ "name": "in_local_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "we0" }} , 
 	{ "name": "in_local_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "d0" }} , 
 	{ "name": "in_local_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "address0" }} , 
 	{ "name": "in_local_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "ce0" }} , 
 	{ "name": "in_local_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "we0" }} , 
 	{ "name": "in_local_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "kalman_filter_Pipeline_VITIS_LOOP_43_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32774", "EstimateLatencyMax" : "32774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_local_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_Pipeline_VITIS_LOOP_43_1 {
		gmem0 {Type I LastRead 2 FirstWrite -1}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		in_local_V {Type O LastRead -1 FirstWrite 5}
		in_local_V_1 {Type O LastRead -1 FirstWrite 5}
		in_local_V_2 {Type O LastRead -1 FirstWrite 5}
		in_local_V_3 {Type O LastRead -1 FirstWrite 5}
		in_local_V_4 {Type O LastRead -1 FirstWrite 5}
		in_local_V_5 {Type O LastRead -1 FirstWrite 5}
		in_local_V_6 {Type O LastRead -1 FirstWrite 5}
		in_local_V_7 {Type O LastRead -1 FirstWrite 5}
		in_local_V_8 {Type O LastRead -1 FirstWrite 6}
		in_local_V_9 {Type O LastRead -1 FirstWrite 6}
		in_local_V_10 {Type O LastRead -1 FirstWrite 6}
		in_local_V_11 {Type O LastRead -1 FirstWrite 6}
		in_local_V_12 {Type O LastRead -1 FirstWrite 6}
		in_local_V_13 {Type O LastRead -1 FirstWrite 6}
		in_local_V_14 {Type O LastRead -1 FirstWrite 6}
		in_local_V_15 {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32774", "Max" : "32774"}
	, {"Name" : "Interval", "Min" : "32774", "Max" : "32774"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_WSTRB STRB 1 32 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	sext_ln43 { ap_none {  { sext_ln43 in_data 0 59 } } }
	in_local_V { ap_memory {  { in_local_V_address0 mem_address 1 14 }  { in_local_V_ce0 mem_ce 1 1 }  { in_local_V_we0 mem_we 1 1 }  { in_local_V_d0 mem_din 1 19 } } }
	in_local_V_1 { ap_memory {  { in_local_V_1_address0 mem_address 1 14 }  { in_local_V_1_ce0 mem_ce 1 1 }  { in_local_V_1_we0 mem_we 1 1 }  { in_local_V_1_d0 mem_din 1 19 } } }
	in_local_V_2 { ap_memory {  { in_local_V_2_address0 mem_address 1 14 }  { in_local_V_2_ce0 mem_ce 1 1 }  { in_local_V_2_we0 mem_we 1 1 }  { in_local_V_2_d0 mem_din 1 19 } } }
	in_local_V_3 { ap_memory {  { in_local_V_3_address0 mem_address 1 14 }  { in_local_V_3_ce0 mem_ce 1 1 }  { in_local_V_3_we0 mem_we 1 1 }  { in_local_V_3_d0 mem_din 1 19 } } }
	in_local_V_4 { ap_memory {  { in_local_V_4_address0 mem_address 1 14 }  { in_local_V_4_ce0 mem_ce 1 1 }  { in_local_V_4_we0 mem_we 1 1 }  { in_local_V_4_d0 mem_din 1 19 } } }
	in_local_V_5 { ap_memory {  { in_local_V_5_address0 mem_address 1 14 }  { in_local_V_5_ce0 mem_ce 1 1 }  { in_local_V_5_we0 mem_we 1 1 }  { in_local_V_5_d0 mem_din 1 19 } } }
	in_local_V_6 { ap_memory {  { in_local_V_6_address0 mem_address 1 14 }  { in_local_V_6_ce0 mem_ce 1 1 }  { in_local_V_6_we0 mem_we 1 1 }  { in_local_V_6_d0 mem_din 1 19 } } }
	in_local_V_7 { ap_memory {  { in_local_V_7_address0 mem_address 1 14 }  { in_local_V_7_ce0 mem_ce 1 1 }  { in_local_V_7_we0 mem_we 1 1 }  { in_local_V_7_d0 mem_din 1 19 } } }
	in_local_V_8 { ap_memory {  { in_local_V_8_address0 mem_address 1 14 }  { in_local_V_8_ce0 mem_ce 1 1 }  { in_local_V_8_we0 mem_we 1 1 }  { in_local_V_8_d0 mem_din 1 19 } } }
	in_local_V_9 { ap_memory {  { in_local_V_9_address0 mem_address 1 14 }  { in_local_V_9_ce0 mem_ce 1 1 }  { in_local_V_9_we0 mem_we 1 1 }  { in_local_V_9_d0 mem_din 1 19 } } }
	in_local_V_10 { ap_memory {  { in_local_V_10_address0 mem_address 1 14 }  { in_local_V_10_ce0 mem_ce 1 1 }  { in_local_V_10_we0 mem_we 1 1 }  { in_local_V_10_d0 mem_din 1 19 } } }
	in_local_V_11 { ap_memory {  { in_local_V_11_address0 mem_address 1 14 }  { in_local_V_11_ce0 mem_ce 1 1 }  { in_local_V_11_we0 mem_we 1 1 }  { in_local_V_11_d0 mem_din 1 19 } } }
	in_local_V_12 { ap_memory {  { in_local_V_12_address0 mem_address 1 14 }  { in_local_V_12_ce0 mem_ce 1 1 }  { in_local_V_12_we0 mem_we 1 1 }  { in_local_V_12_d0 mem_din 1 19 } } }
	in_local_V_13 { ap_memory {  { in_local_V_13_address0 mem_address 1 14 }  { in_local_V_13_ce0 mem_ce 1 1 }  { in_local_V_13_we0 mem_we 1 1 }  { in_local_V_13_d0 mem_din 1 19 } } }
	in_local_V_14 { ap_memory {  { in_local_V_14_address0 mem_address 1 14 }  { in_local_V_14_ce0 mem_ce 1 1 }  { in_local_V_14_we0 mem_we 1 1 }  { in_local_V_14_d0 mem_din 1 19 } } }
	in_local_V_15 { ap_memory {  { in_local_V_15_address0 mem_address 1 14 }  { in_local_V_15_ce0 mem_ce 1 1 }  { in_local_V_15_we0 mem_we 1 1 }  { in_local_V_15_d0 mem_din 1 19 } } }
}
set moduleName kalman_filter_Pipeline_VITIS_LOOP_43_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {kalman_filter_Pipeline_VITIS_LOOP_43_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 0}  }
	{ sext_ln43 int 59 regular  }
	{ in_local_V_3 int 19 regular {array 65536 { 0 0 } 0 1 }  }
	{ in_local_V_2 int 19 regular {array 65536 { 0 0 } 0 1 }  }
	{ in_local_V_1 int 19 regular {array 65536 { 0 0 } 0 1 }  }
	{ in_local_V int 19 regular {array 65536 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln43", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "in_local_V_3", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_2", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_1", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 85
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln43 sc_in sc_lv 59 signal 1 } 
	{ in_local_V_3_address0 sc_out sc_lv 16 signal 2 } 
	{ in_local_V_3_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_3_we0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_3_d0 sc_out sc_lv 19 signal 2 } 
	{ in_local_V_3_address1 sc_out sc_lv 16 signal 2 } 
	{ in_local_V_3_ce1 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_3_we1 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_3_d1 sc_out sc_lv 19 signal 2 } 
	{ in_local_V_2_address0 sc_out sc_lv 16 signal 3 } 
	{ in_local_V_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_2_we0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_2_d0 sc_out sc_lv 19 signal 3 } 
	{ in_local_V_2_address1 sc_out sc_lv 16 signal 3 } 
	{ in_local_V_2_ce1 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_2_we1 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_2_d1 sc_out sc_lv 19 signal 3 } 
	{ in_local_V_1_address0 sc_out sc_lv 16 signal 4 } 
	{ in_local_V_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_1_we0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_1_d0 sc_out sc_lv 19 signal 4 } 
	{ in_local_V_1_address1 sc_out sc_lv 16 signal 4 } 
	{ in_local_V_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_1_we1 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_1_d1 sc_out sc_lv 19 signal 4 } 
	{ in_local_V_address0 sc_out sc_lv 16 signal 5 } 
	{ in_local_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_we0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_d0 sc_out sc_lv 19 signal 5 } 
	{ in_local_V_address1 sc_out sc_lv 16 signal 5 } 
	{ in_local_V_ce1 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_we1 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_d1 sc_out sc_lv 19 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "sext_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln43", "role": "default" }} , 
 	{ "name": "in_local_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "address0" }} , 
 	{ "name": "in_local_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "ce0" }} , 
 	{ "name": "in_local_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "we0" }} , 
 	{ "name": "in_local_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "d0" }} , 
 	{ "name": "in_local_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "address1" }} , 
 	{ "name": "in_local_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "ce1" }} , 
 	{ "name": "in_local_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "we1" }} , 
 	{ "name": "in_local_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "d1" }} , 
 	{ "name": "in_local_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "address0" }} , 
 	{ "name": "in_local_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "ce0" }} , 
 	{ "name": "in_local_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "we0" }} , 
 	{ "name": "in_local_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "d0" }} , 
 	{ "name": "in_local_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "address1" }} , 
 	{ "name": "in_local_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "ce1" }} , 
 	{ "name": "in_local_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "we1" }} , 
 	{ "name": "in_local_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "d1" }} , 
 	{ "name": "in_local_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "address0" }} , 
 	{ "name": "in_local_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "ce0" }} , 
 	{ "name": "in_local_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "we0" }} , 
 	{ "name": "in_local_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "d0" }} , 
 	{ "name": "in_local_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "address1" }} , 
 	{ "name": "in_local_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "ce1" }} , 
 	{ "name": "in_local_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "we1" }} , 
 	{ "name": "in_local_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "d1" }} , 
 	{ "name": "in_local_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_local_V", "role": "address0" }} , 
 	{ "name": "in_local_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "ce0" }} , 
 	{ "name": "in_local_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "we0" }} , 
 	{ "name": "in_local_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V", "role": "d0" }} , 
 	{ "name": "in_local_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_local_V", "role": "address1" }} , 
 	{ "name": "in_local_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "ce1" }} , 
 	{ "name": "in_local_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "we1" }} , 
 	{ "name": "in_local_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "kalman_filter_Pipeline_VITIS_LOOP_43_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32774", "EstimateLatencyMax" : "32774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_local_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_Pipeline_VITIS_LOOP_43_1 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		in_local_V_3 {Type O LastRead -1 FirstWrite 5}
		in_local_V_2 {Type O LastRead -1 FirstWrite 5}
		in_local_V_1 {Type O LastRead -1 FirstWrite 5}
		in_local_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32774", "Max" : "32774"}
	, {"Name" : "Interval", "Min" : "32774", "Max" : "32774"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_WSTRB STRB 1 32 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	sext_ln43 { ap_none {  { sext_ln43 in_data 0 59 } } }
	in_local_V_3 { ap_memory {  { in_local_V_3_address0 mem_address 1 16 }  { in_local_V_3_ce0 mem_ce 1 1 }  { in_local_V_3_we0 mem_we 1 1 }  { in_local_V_3_d0 mem_din 1 19 }  { in_local_V_3_address1 MemPortADDR2 1 16 }  { in_local_V_3_ce1 MemPortCE2 1 1 }  { in_local_V_3_we1 MemPortWE2 1 1 }  { in_local_V_3_d1 MemPortDIN2 1 19 } } }
	in_local_V_2 { ap_memory {  { in_local_V_2_address0 mem_address 1 16 }  { in_local_V_2_ce0 mem_ce 1 1 }  { in_local_V_2_we0 mem_we 1 1 }  { in_local_V_2_d0 mem_din 1 19 }  { in_local_V_2_address1 MemPortADDR2 1 16 }  { in_local_V_2_ce1 MemPortCE2 1 1 }  { in_local_V_2_we1 MemPortWE2 1 1 }  { in_local_V_2_d1 MemPortDIN2 1 19 } } }
	in_local_V_1 { ap_memory {  { in_local_V_1_address0 mem_address 1 16 }  { in_local_V_1_ce0 mem_ce 1 1 }  { in_local_V_1_we0 mem_we 1 1 }  { in_local_V_1_d0 mem_din 1 19 }  { in_local_V_1_address1 MemPortADDR2 1 16 }  { in_local_V_1_ce1 MemPortCE2 1 1 }  { in_local_V_1_we1 MemPortWE2 1 1 }  { in_local_V_1_d1 MemPortDIN2 1 19 } } }
	in_local_V { ap_memory {  { in_local_V_address0 mem_address 1 16 }  { in_local_V_ce0 mem_ce 1 1 }  { in_local_V_we0 mem_we 1 1 }  { in_local_V_d0 mem_din 1 19 }  { in_local_V_address1 MemPortADDR2 1 16 }  { in_local_V_ce1 MemPortCE2 1 1 }  { in_local_V_we1 MemPortWE2 1 1 }  { in_local_V_d1 MemPortDIN2 1 19 } } }
}
set moduleName kalman_filter_Pipeline_VITIS_LOOP_43_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {kalman_filter_Pipeline_VITIS_LOOP_43_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 0}  }
	{ sext_ln43 int 59 regular  }
	{ in_local_V int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_1 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_2 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_3 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_4 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_5 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_6 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_7 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_8 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_9 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_10 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_11 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_12 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_13 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_14 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_15 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln43", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "in_local_V", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_1", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_2", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_3", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_4", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_5", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_6", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_7", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_8", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_9", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_10", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_11", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_12", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_13", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_14", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_15", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 117
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln43 sc_in sc_lv 59 signal 1 } 
	{ in_local_V_address0 sc_out sc_lv 14 signal 2 } 
	{ in_local_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_we0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_d0 sc_out sc_lv 19 signal 2 } 
	{ in_local_V_1_address0 sc_out sc_lv 14 signal 3 } 
	{ in_local_V_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_1_we0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_1_d0 sc_out sc_lv 19 signal 3 } 
	{ in_local_V_2_address0 sc_out sc_lv 14 signal 4 } 
	{ in_local_V_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_2_we0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_2_d0 sc_out sc_lv 19 signal 4 } 
	{ in_local_V_3_address0 sc_out sc_lv 14 signal 5 } 
	{ in_local_V_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_3_we0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_3_d0 sc_out sc_lv 19 signal 5 } 
	{ in_local_V_4_address0 sc_out sc_lv 14 signal 6 } 
	{ in_local_V_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_4_we0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_4_d0 sc_out sc_lv 19 signal 6 } 
	{ in_local_V_5_address0 sc_out sc_lv 14 signal 7 } 
	{ in_local_V_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_5_we0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_5_d0 sc_out sc_lv 19 signal 7 } 
	{ in_local_V_6_address0 sc_out sc_lv 14 signal 8 } 
	{ in_local_V_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_6_we0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_6_d0 sc_out sc_lv 19 signal 8 } 
	{ in_local_V_7_address0 sc_out sc_lv 14 signal 9 } 
	{ in_local_V_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_7_we0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_7_d0 sc_out sc_lv 19 signal 9 } 
	{ in_local_V_8_address0 sc_out sc_lv 14 signal 10 } 
	{ in_local_V_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_8_we0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_8_d0 sc_out sc_lv 19 signal 10 } 
	{ in_local_V_9_address0 sc_out sc_lv 14 signal 11 } 
	{ in_local_V_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_9_we0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_9_d0 sc_out sc_lv 19 signal 11 } 
	{ in_local_V_10_address0 sc_out sc_lv 14 signal 12 } 
	{ in_local_V_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_10_we0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_10_d0 sc_out sc_lv 19 signal 12 } 
	{ in_local_V_11_address0 sc_out sc_lv 14 signal 13 } 
	{ in_local_V_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_11_we0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_11_d0 sc_out sc_lv 19 signal 13 } 
	{ in_local_V_12_address0 sc_out sc_lv 14 signal 14 } 
	{ in_local_V_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_12_we0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_12_d0 sc_out sc_lv 19 signal 14 } 
	{ in_local_V_13_address0 sc_out sc_lv 14 signal 15 } 
	{ in_local_V_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_13_we0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_13_d0 sc_out sc_lv 19 signal 15 } 
	{ in_local_V_14_address0 sc_out sc_lv 14 signal 16 } 
	{ in_local_V_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_14_we0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_14_d0 sc_out sc_lv 19 signal 16 } 
	{ in_local_V_15_address0 sc_out sc_lv 14 signal 17 } 
	{ in_local_V_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_15_we0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_15_d0 sc_out sc_lv 19 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "sext_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln43", "role": "default" }} , 
 	{ "name": "in_local_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V", "role": "address0" }} , 
 	{ "name": "in_local_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "ce0" }} , 
 	{ "name": "in_local_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "we0" }} , 
 	{ "name": "in_local_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V", "role": "d0" }} , 
 	{ "name": "in_local_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "address0" }} , 
 	{ "name": "in_local_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "ce0" }} , 
 	{ "name": "in_local_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "we0" }} , 
 	{ "name": "in_local_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "d0" }} , 
 	{ "name": "in_local_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "address0" }} , 
 	{ "name": "in_local_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "ce0" }} , 
 	{ "name": "in_local_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "we0" }} , 
 	{ "name": "in_local_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "d0" }} , 
 	{ "name": "in_local_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "address0" }} , 
 	{ "name": "in_local_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "ce0" }} , 
 	{ "name": "in_local_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "we0" }} , 
 	{ "name": "in_local_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "d0" }} , 
 	{ "name": "in_local_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "address0" }} , 
 	{ "name": "in_local_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "ce0" }} , 
 	{ "name": "in_local_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "we0" }} , 
 	{ "name": "in_local_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "d0" }} , 
 	{ "name": "in_local_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "address0" }} , 
 	{ "name": "in_local_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "ce0" }} , 
 	{ "name": "in_local_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "we0" }} , 
 	{ "name": "in_local_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "d0" }} , 
 	{ "name": "in_local_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "address0" }} , 
 	{ "name": "in_local_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "ce0" }} , 
 	{ "name": "in_local_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "we0" }} , 
 	{ "name": "in_local_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "d0" }} , 
 	{ "name": "in_local_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "address0" }} , 
 	{ "name": "in_local_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "ce0" }} , 
 	{ "name": "in_local_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "we0" }} , 
 	{ "name": "in_local_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "d0" }} , 
 	{ "name": "in_local_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "address0" }} , 
 	{ "name": "in_local_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "ce0" }} , 
 	{ "name": "in_local_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "we0" }} , 
 	{ "name": "in_local_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "d0" }} , 
 	{ "name": "in_local_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "address0" }} , 
 	{ "name": "in_local_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "ce0" }} , 
 	{ "name": "in_local_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "we0" }} , 
 	{ "name": "in_local_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "d0" }} , 
 	{ "name": "in_local_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "address0" }} , 
 	{ "name": "in_local_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "ce0" }} , 
 	{ "name": "in_local_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "we0" }} , 
 	{ "name": "in_local_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "d0" }} , 
 	{ "name": "in_local_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "address0" }} , 
 	{ "name": "in_local_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "ce0" }} , 
 	{ "name": "in_local_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "we0" }} , 
 	{ "name": "in_local_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "d0" }} , 
 	{ "name": "in_local_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "address0" }} , 
 	{ "name": "in_local_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "ce0" }} , 
 	{ "name": "in_local_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "we0" }} , 
 	{ "name": "in_local_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "d0" }} , 
 	{ "name": "in_local_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "address0" }} , 
 	{ "name": "in_local_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "ce0" }} , 
 	{ "name": "in_local_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "we0" }} , 
 	{ "name": "in_local_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "d0" }} , 
 	{ "name": "in_local_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "address0" }} , 
 	{ "name": "in_local_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "ce0" }} , 
 	{ "name": "in_local_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "we0" }} , 
 	{ "name": "in_local_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "d0" }} , 
 	{ "name": "in_local_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "address0" }} , 
 	{ "name": "in_local_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "ce0" }} , 
 	{ "name": "in_local_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "we0" }} , 
 	{ "name": "in_local_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "kalman_filter_Pipeline_VITIS_LOOP_43_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32774", "EstimateLatencyMax" : "32774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_local_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_Pipeline_VITIS_LOOP_43_1 {
		gmem0 {Type I LastRead 2 FirstWrite -1}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		in_local_V {Type O LastRead -1 FirstWrite 5}
		in_local_V_1 {Type O LastRead -1 FirstWrite 5}
		in_local_V_2 {Type O LastRead -1 FirstWrite 5}
		in_local_V_3 {Type O LastRead -1 FirstWrite 5}
		in_local_V_4 {Type O LastRead -1 FirstWrite 5}
		in_local_V_5 {Type O LastRead -1 FirstWrite 5}
		in_local_V_6 {Type O LastRead -1 FirstWrite 5}
		in_local_V_7 {Type O LastRead -1 FirstWrite 5}
		in_local_V_8 {Type O LastRead -1 FirstWrite 6}
		in_local_V_9 {Type O LastRead -1 FirstWrite 6}
		in_local_V_10 {Type O LastRead -1 FirstWrite 6}
		in_local_V_11 {Type O LastRead -1 FirstWrite 6}
		in_local_V_12 {Type O LastRead -1 FirstWrite 6}
		in_local_V_13 {Type O LastRead -1 FirstWrite 6}
		in_local_V_14 {Type O LastRead -1 FirstWrite 6}
		in_local_V_15 {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32774", "Max" : "32774"}
	, {"Name" : "Interval", "Min" : "32774", "Max" : "32774"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_WSTRB STRB 1 32 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	sext_ln43 { ap_none {  { sext_ln43 in_data 0 59 } } }
	in_local_V { ap_memory {  { in_local_V_address0 mem_address 1 14 }  { in_local_V_ce0 mem_ce 1 1 }  { in_local_V_we0 mem_we 1 1 }  { in_local_V_d0 mem_din 1 19 } } }
	in_local_V_1 { ap_memory {  { in_local_V_1_address0 mem_address 1 14 }  { in_local_V_1_ce0 mem_ce 1 1 }  { in_local_V_1_we0 mem_we 1 1 }  { in_local_V_1_d0 mem_din 1 19 } } }
	in_local_V_2 { ap_memory {  { in_local_V_2_address0 mem_address 1 14 }  { in_local_V_2_ce0 mem_ce 1 1 }  { in_local_V_2_we0 mem_we 1 1 }  { in_local_V_2_d0 mem_din 1 19 } } }
	in_local_V_3 { ap_memory {  { in_local_V_3_address0 mem_address 1 14 }  { in_local_V_3_ce0 mem_ce 1 1 }  { in_local_V_3_we0 mem_we 1 1 }  { in_local_V_3_d0 mem_din 1 19 } } }
	in_local_V_4 { ap_memory {  { in_local_V_4_address0 mem_address 1 14 }  { in_local_V_4_ce0 mem_ce 1 1 }  { in_local_V_4_we0 mem_we 1 1 }  { in_local_V_4_d0 mem_din 1 19 } } }
	in_local_V_5 { ap_memory {  { in_local_V_5_address0 mem_address 1 14 }  { in_local_V_5_ce0 mem_ce 1 1 }  { in_local_V_5_we0 mem_we 1 1 }  { in_local_V_5_d0 mem_din 1 19 } } }
	in_local_V_6 { ap_memory {  { in_local_V_6_address0 mem_address 1 14 }  { in_local_V_6_ce0 mem_ce 1 1 }  { in_local_V_6_we0 mem_we 1 1 }  { in_local_V_6_d0 mem_din 1 19 } } }
	in_local_V_7 { ap_memory {  { in_local_V_7_address0 mem_address 1 14 }  { in_local_V_7_ce0 mem_ce 1 1 }  { in_local_V_7_we0 mem_we 1 1 }  { in_local_V_7_d0 mem_din 1 19 } } }
	in_local_V_8 { ap_memory {  { in_local_V_8_address0 mem_address 1 14 }  { in_local_V_8_ce0 mem_ce 1 1 }  { in_local_V_8_we0 mem_we 1 1 }  { in_local_V_8_d0 mem_din 1 19 } } }
	in_local_V_9 { ap_memory {  { in_local_V_9_address0 mem_address 1 14 }  { in_local_V_9_ce0 mem_ce 1 1 }  { in_local_V_9_we0 mem_we 1 1 }  { in_local_V_9_d0 mem_din 1 19 } } }
	in_local_V_10 { ap_memory {  { in_local_V_10_address0 mem_address 1 14 }  { in_local_V_10_ce0 mem_ce 1 1 }  { in_local_V_10_we0 mem_we 1 1 }  { in_local_V_10_d0 mem_din 1 19 } } }
	in_local_V_11 { ap_memory {  { in_local_V_11_address0 mem_address 1 14 }  { in_local_V_11_ce0 mem_ce 1 1 }  { in_local_V_11_we0 mem_we 1 1 }  { in_local_V_11_d0 mem_din 1 19 } } }
	in_local_V_12 { ap_memory {  { in_local_V_12_address0 mem_address 1 14 }  { in_local_V_12_ce0 mem_ce 1 1 }  { in_local_V_12_we0 mem_we 1 1 }  { in_local_V_12_d0 mem_din 1 19 } } }
	in_local_V_13 { ap_memory {  { in_local_V_13_address0 mem_address 1 14 }  { in_local_V_13_ce0 mem_ce 1 1 }  { in_local_V_13_we0 mem_we 1 1 }  { in_local_V_13_d0 mem_din 1 19 } } }
	in_local_V_14 { ap_memory {  { in_local_V_14_address0 mem_address 1 14 }  { in_local_V_14_ce0 mem_ce 1 1 }  { in_local_V_14_we0 mem_we 1 1 }  { in_local_V_14_d0 mem_din 1 19 } } }
	in_local_V_15 { ap_memory {  { in_local_V_15_address0 mem_address 1 14 }  { in_local_V_15_ce0 mem_ce 1 1 }  { in_local_V_15_we0 mem_we 1 1 }  { in_local_V_15_d0 mem_din 1 19 } } }
}
set moduleName kalman_filter_Pipeline_VITIS_LOOP_43_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {kalman_filter_Pipeline_VITIS_LOOP_43_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 0}  }
	{ sext_ln43 int 59 regular  }
	{ in_local_V_7 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_15 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_6 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_14 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_5 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_13 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_4 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_12 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_3 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_11 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_2 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_10 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_1 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_9 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_8 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln43", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "in_local_V_7", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_15", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_6", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_14", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_5", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_13", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_4", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_12", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_3", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_11", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_2", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_10", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_1", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_9", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_8", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 117
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln43 sc_in sc_lv 59 signal 1 } 
	{ in_local_V_7_address0 sc_out sc_lv 14 signal 2 } 
	{ in_local_V_7_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_we0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_d0 sc_out sc_lv 19 signal 2 } 
	{ in_local_V_15_address0 sc_out sc_lv 14 signal 3 } 
	{ in_local_V_15_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_we0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_d0 sc_out sc_lv 19 signal 3 } 
	{ in_local_V_6_address0 sc_out sc_lv 14 signal 4 } 
	{ in_local_V_6_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_we0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_d0 sc_out sc_lv 19 signal 4 } 
	{ in_local_V_14_address0 sc_out sc_lv 14 signal 5 } 
	{ in_local_V_14_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_we0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_d0 sc_out sc_lv 19 signal 5 } 
	{ in_local_V_5_address0 sc_out sc_lv 14 signal 6 } 
	{ in_local_V_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_we0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_d0 sc_out sc_lv 19 signal 6 } 
	{ in_local_V_13_address0 sc_out sc_lv 14 signal 7 } 
	{ in_local_V_13_ce0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_we0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_d0 sc_out sc_lv 19 signal 7 } 
	{ in_local_V_4_address0 sc_out sc_lv 14 signal 8 } 
	{ in_local_V_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_we0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_d0 sc_out sc_lv 19 signal 8 } 
	{ in_local_V_12_address0 sc_out sc_lv 14 signal 9 } 
	{ in_local_V_12_ce0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_we0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_d0 sc_out sc_lv 19 signal 9 } 
	{ in_local_V_3_address0 sc_out sc_lv 14 signal 10 } 
	{ in_local_V_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_we0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_d0 sc_out sc_lv 19 signal 10 } 
	{ in_local_V_11_address0 sc_out sc_lv 14 signal 11 } 
	{ in_local_V_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_we0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_d0 sc_out sc_lv 19 signal 11 } 
	{ in_local_V_2_address0 sc_out sc_lv 14 signal 12 } 
	{ in_local_V_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_we0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_d0 sc_out sc_lv 19 signal 12 } 
	{ in_local_V_10_address0 sc_out sc_lv 14 signal 13 } 
	{ in_local_V_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_we0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_d0 sc_out sc_lv 19 signal 13 } 
	{ in_local_V_1_address0 sc_out sc_lv 14 signal 14 } 
	{ in_local_V_1_ce0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_we0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_d0 sc_out sc_lv 19 signal 14 } 
	{ in_local_V_9_address0 sc_out sc_lv 14 signal 15 } 
	{ in_local_V_9_ce0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_we0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_d0 sc_out sc_lv 19 signal 15 } 
	{ in_local_V_8_address0 sc_out sc_lv 14 signal 16 } 
	{ in_local_V_8_ce0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_we0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_d0 sc_out sc_lv 19 signal 16 } 
	{ in_local_V_address0 sc_out sc_lv 14 signal 17 } 
	{ in_local_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_we0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_d0 sc_out sc_lv 19 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "sext_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln43", "role": "default" }} , 
 	{ "name": "in_local_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "address0" }} , 
 	{ "name": "in_local_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "ce0" }} , 
 	{ "name": "in_local_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "we0" }} , 
 	{ "name": "in_local_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "d0" }} , 
 	{ "name": "in_local_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "address0" }} , 
 	{ "name": "in_local_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "ce0" }} , 
 	{ "name": "in_local_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "we0" }} , 
 	{ "name": "in_local_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "d0" }} , 
 	{ "name": "in_local_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "address0" }} , 
 	{ "name": "in_local_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "ce0" }} , 
 	{ "name": "in_local_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "we0" }} , 
 	{ "name": "in_local_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "d0" }} , 
 	{ "name": "in_local_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "address0" }} , 
 	{ "name": "in_local_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "ce0" }} , 
 	{ "name": "in_local_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "we0" }} , 
 	{ "name": "in_local_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "d0" }} , 
 	{ "name": "in_local_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "address0" }} , 
 	{ "name": "in_local_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "ce0" }} , 
 	{ "name": "in_local_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "we0" }} , 
 	{ "name": "in_local_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "d0" }} , 
 	{ "name": "in_local_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "address0" }} , 
 	{ "name": "in_local_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "ce0" }} , 
 	{ "name": "in_local_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "we0" }} , 
 	{ "name": "in_local_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "d0" }} , 
 	{ "name": "in_local_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "address0" }} , 
 	{ "name": "in_local_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "ce0" }} , 
 	{ "name": "in_local_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "we0" }} , 
 	{ "name": "in_local_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "d0" }} , 
 	{ "name": "in_local_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "address0" }} , 
 	{ "name": "in_local_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "ce0" }} , 
 	{ "name": "in_local_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "we0" }} , 
 	{ "name": "in_local_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "d0" }} , 
 	{ "name": "in_local_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "address0" }} , 
 	{ "name": "in_local_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "ce0" }} , 
 	{ "name": "in_local_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "we0" }} , 
 	{ "name": "in_local_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "d0" }} , 
 	{ "name": "in_local_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "address0" }} , 
 	{ "name": "in_local_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "ce0" }} , 
 	{ "name": "in_local_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "we0" }} , 
 	{ "name": "in_local_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "d0" }} , 
 	{ "name": "in_local_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "address0" }} , 
 	{ "name": "in_local_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "ce0" }} , 
 	{ "name": "in_local_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "we0" }} , 
 	{ "name": "in_local_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "d0" }} , 
 	{ "name": "in_local_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "address0" }} , 
 	{ "name": "in_local_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "ce0" }} , 
 	{ "name": "in_local_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "we0" }} , 
 	{ "name": "in_local_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "d0" }} , 
 	{ "name": "in_local_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "address0" }} , 
 	{ "name": "in_local_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "ce0" }} , 
 	{ "name": "in_local_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "we0" }} , 
 	{ "name": "in_local_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "d0" }} , 
 	{ "name": "in_local_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "address0" }} , 
 	{ "name": "in_local_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "ce0" }} , 
 	{ "name": "in_local_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "we0" }} , 
 	{ "name": "in_local_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "d0" }} , 
 	{ "name": "in_local_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "address0" }} , 
 	{ "name": "in_local_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "ce0" }} , 
 	{ "name": "in_local_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "we0" }} , 
 	{ "name": "in_local_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "d0" }} , 
 	{ "name": "in_local_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V", "role": "address0" }} , 
 	{ "name": "in_local_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "ce0" }} , 
 	{ "name": "in_local_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "we0" }} , 
 	{ "name": "in_local_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "kalman_filter_Pipeline_VITIS_LOOP_43_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32774", "EstimateLatencyMax" : "32774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_local_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_Pipeline_VITIS_LOOP_43_1 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		in_local_V_7 {Type O LastRead -1 FirstWrite 5}
		in_local_V_15 {Type O LastRead -1 FirstWrite 5}
		in_local_V_6 {Type O LastRead -1 FirstWrite 5}
		in_local_V_14 {Type O LastRead -1 FirstWrite 5}
		in_local_V_5 {Type O LastRead -1 FirstWrite 5}
		in_local_V_13 {Type O LastRead -1 FirstWrite 5}
		in_local_V_4 {Type O LastRead -1 FirstWrite 5}
		in_local_V_12 {Type O LastRead -1 FirstWrite 5}
		in_local_V_3 {Type O LastRead -1 FirstWrite 5}
		in_local_V_11 {Type O LastRead -1 FirstWrite 5}
		in_local_V_2 {Type O LastRead -1 FirstWrite 5}
		in_local_V_10 {Type O LastRead -1 FirstWrite 5}
		in_local_V_1 {Type O LastRead -1 FirstWrite 5}
		in_local_V_9 {Type O LastRead -1 FirstWrite 5}
		in_local_V_8 {Type O LastRead -1 FirstWrite 5}
		in_local_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32774", "Max" : "32774"}
	, {"Name" : "Interval", "Min" : "32774", "Max" : "32774"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_WSTRB STRB 1 32 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	sext_ln43 { ap_none {  { sext_ln43 in_data 0 59 } } }
	in_local_V_7 { ap_memory {  { in_local_V_7_address0 mem_address 1 14 }  { in_local_V_7_ce0 mem_ce 1 1 }  { in_local_V_7_we0 mem_we 1 1 }  { in_local_V_7_d0 mem_din 1 19 } } }
	in_local_V_15 { ap_memory {  { in_local_V_15_address0 mem_address 1 14 }  { in_local_V_15_ce0 mem_ce 1 1 }  { in_local_V_15_we0 mem_we 1 1 }  { in_local_V_15_d0 mem_din 1 19 } } }
	in_local_V_6 { ap_memory {  { in_local_V_6_address0 mem_address 1 14 }  { in_local_V_6_ce0 mem_ce 1 1 }  { in_local_V_6_we0 mem_we 1 1 }  { in_local_V_6_d0 mem_din 1 19 } } }
	in_local_V_14 { ap_memory {  { in_local_V_14_address0 mem_address 1 14 }  { in_local_V_14_ce0 mem_ce 1 1 }  { in_local_V_14_we0 mem_we 1 1 }  { in_local_V_14_d0 mem_din 1 19 } } }
	in_local_V_5 { ap_memory {  { in_local_V_5_address0 mem_address 1 14 }  { in_local_V_5_ce0 mem_ce 1 1 }  { in_local_V_5_we0 mem_we 1 1 }  { in_local_V_5_d0 mem_din 1 19 } } }
	in_local_V_13 { ap_memory {  { in_local_V_13_address0 mem_address 1 14 }  { in_local_V_13_ce0 mem_ce 1 1 }  { in_local_V_13_we0 mem_we 1 1 }  { in_local_V_13_d0 mem_din 1 19 } } }
	in_local_V_4 { ap_memory {  { in_local_V_4_address0 mem_address 1 14 }  { in_local_V_4_ce0 mem_ce 1 1 }  { in_local_V_4_we0 mem_we 1 1 }  { in_local_V_4_d0 mem_din 1 19 } } }
	in_local_V_12 { ap_memory {  { in_local_V_12_address0 mem_address 1 14 }  { in_local_V_12_ce0 mem_ce 1 1 }  { in_local_V_12_we0 mem_we 1 1 }  { in_local_V_12_d0 mem_din 1 19 } } }
	in_local_V_3 { ap_memory {  { in_local_V_3_address0 mem_address 1 14 }  { in_local_V_3_ce0 mem_ce 1 1 }  { in_local_V_3_we0 mem_we 1 1 }  { in_local_V_3_d0 mem_din 1 19 } } }
	in_local_V_11 { ap_memory {  { in_local_V_11_address0 mem_address 1 14 }  { in_local_V_11_ce0 mem_ce 1 1 }  { in_local_V_11_we0 mem_we 1 1 }  { in_local_V_11_d0 mem_din 1 19 } } }
	in_local_V_2 { ap_memory {  { in_local_V_2_address0 mem_address 1 14 }  { in_local_V_2_ce0 mem_ce 1 1 }  { in_local_V_2_we0 mem_we 1 1 }  { in_local_V_2_d0 mem_din 1 19 } } }
	in_local_V_10 { ap_memory {  { in_local_V_10_address0 mem_address 1 14 }  { in_local_V_10_ce0 mem_ce 1 1 }  { in_local_V_10_we0 mem_we 1 1 }  { in_local_V_10_d0 mem_din 1 19 } } }
	in_local_V_1 { ap_memory {  { in_local_V_1_address0 mem_address 1 14 }  { in_local_V_1_ce0 mem_ce 1 1 }  { in_local_V_1_we0 mem_we 1 1 }  { in_local_V_1_d0 mem_din 1 19 } } }
	in_local_V_9 { ap_memory {  { in_local_V_9_address0 mem_address 1 14 }  { in_local_V_9_ce0 mem_ce 1 1 }  { in_local_V_9_we0 mem_we 1 1 }  { in_local_V_9_d0 mem_din 1 19 } } }
	in_local_V_8 { ap_memory {  { in_local_V_8_address0 mem_address 1 14 }  { in_local_V_8_ce0 mem_ce 1 1 }  { in_local_V_8_we0 mem_we 1 1 }  { in_local_V_8_d0 mem_din 1 19 } } }
	in_local_V { ap_memory {  { in_local_V_address0 mem_address 1 14 }  { in_local_V_ce0 mem_ce 1 1 }  { in_local_V_we0 mem_we 1 1 }  { in_local_V_d0 mem_din 1 19 } } }
}
set moduleName kalman_filter_Pipeline_VITIS_LOOP_43_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {kalman_filter_Pipeline_VITIS_LOOP_43_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 0}  }
	{ sext_ln43 int 59 regular  }
	{ in_local_V_7 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_15 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_6 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_14 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_5 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_13 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_4 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_12 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_3 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_11 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_2 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_10 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_1 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_9 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_8 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln43", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "in_local_V_7", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_15", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_6", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_14", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_5", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_13", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_4", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_12", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_3", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_11", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_2", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_10", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_1", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_9", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_8", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 117
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln43 sc_in sc_lv 59 signal 1 } 
	{ in_local_V_7_address0 sc_out sc_lv 14 signal 2 } 
	{ in_local_V_7_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_we0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_d0 sc_out sc_lv 19 signal 2 } 
	{ in_local_V_15_address0 sc_out sc_lv 14 signal 3 } 
	{ in_local_V_15_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_we0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_d0 sc_out sc_lv 19 signal 3 } 
	{ in_local_V_6_address0 sc_out sc_lv 14 signal 4 } 
	{ in_local_V_6_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_we0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_d0 sc_out sc_lv 19 signal 4 } 
	{ in_local_V_14_address0 sc_out sc_lv 14 signal 5 } 
	{ in_local_V_14_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_we0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_d0 sc_out sc_lv 19 signal 5 } 
	{ in_local_V_5_address0 sc_out sc_lv 14 signal 6 } 
	{ in_local_V_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_we0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_d0 sc_out sc_lv 19 signal 6 } 
	{ in_local_V_13_address0 sc_out sc_lv 14 signal 7 } 
	{ in_local_V_13_ce0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_we0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_d0 sc_out sc_lv 19 signal 7 } 
	{ in_local_V_4_address0 sc_out sc_lv 14 signal 8 } 
	{ in_local_V_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_we0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_d0 sc_out sc_lv 19 signal 8 } 
	{ in_local_V_12_address0 sc_out sc_lv 14 signal 9 } 
	{ in_local_V_12_ce0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_we0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_d0 sc_out sc_lv 19 signal 9 } 
	{ in_local_V_3_address0 sc_out sc_lv 14 signal 10 } 
	{ in_local_V_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_we0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_d0 sc_out sc_lv 19 signal 10 } 
	{ in_local_V_11_address0 sc_out sc_lv 14 signal 11 } 
	{ in_local_V_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_we0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_d0 sc_out sc_lv 19 signal 11 } 
	{ in_local_V_2_address0 sc_out sc_lv 14 signal 12 } 
	{ in_local_V_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_we0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_d0 sc_out sc_lv 19 signal 12 } 
	{ in_local_V_10_address0 sc_out sc_lv 14 signal 13 } 
	{ in_local_V_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_we0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_d0 sc_out sc_lv 19 signal 13 } 
	{ in_local_V_1_address0 sc_out sc_lv 14 signal 14 } 
	{ in_local_V_1_ce0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_we0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_d0 sc_out sc_lv 19 signal 14 } 
	{ in_local_V_9_address0 sc_out sc_lv 14 signal 15 } 
	{ in_local_V_9_ce0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_we0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_d0 sc_out sc_lv 19 signal 15 } 
	{ in_local_V_8_address0 sc_out sc_lv 14 signal 16 } 
	{ in_local_V_8_ce0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_we0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_d0 sc_out sc_lv 19 signal 16 } 
	{ in_local_V_address0 sc_out sc_lv 14 signal 17 } 
	{ in_local_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_we0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_d0 sc_out sc_lv 19 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "sext_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln43", "role": "default" }} , 
 	{ "name": "in_local_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "address0" }} , 
 	{ "name": "in_local_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "ce0" }} , 
 	{ "name": "in_local_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "we0" }} , 
 	{ "name": "in_local_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "d0" }} , 
 	{ "name": "in_local_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "address0" }} , 
 	{ "name": "in_local_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "ce0" }} , 
 	{ "name": "in_local_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "we0" }} , 
 	{ "name": "in_local_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "d0" }} , 
 	{ "name": "in_local_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "address0" }} , 
 	{ "name": "in_local_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "ce0" }} , 
 	{ "name": "in_local_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "we0" }} , 
 	{ "name": "in_local_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "d0" }} , 
 	{ "name": "in_local_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "address0" }} , 
 	{ "name": "in_local_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "ce0" }} , 
 	{ "name": "in_local_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "we0" }} , 
 	{ "name": "in_local_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "d0" }} , 
 	{ "name": "in_local_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "address0" }} , 
 	{ "name": "in_local_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "ce0" }} , 
 	{ "name": "in_local_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "we0" }} , 
 	{ "name": "in_local_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "d0" }} , 
 	{ "name": "in_local_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "address0" }} , 
 	{ "name": "in_local_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "ce0" }} , 
 	{ "name": "in_local_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "we0" }} , 
 	{ "name": "in_local_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "d0" }} , 
 	{ "name": "in_local_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "address0" }} , 
 	{ "name": "in_local_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "ce0" }} , 
 	{ "name": "in_local_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "we0" }} , 
 	{ "name": "in_local_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "d0" }} , 
 	{ "name": "in_local_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "address0" }} , 
 	{ "name": "in_local_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "ce0" }} , 
 	{ "name": "in_local_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "we0" }} , 
 	{ "name": "in_local_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "d0" }} , 
 	{ "name": "in_local_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "address0" }} , 
 	{ "name": "in_local_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "ce0" }} , 
 	{ "name": "in_local_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "we0" }} , 
 	{ "name": "in_local_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "d0" }} , 
 	{ "name": "in_local_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "address0" }} , 
 	{ "name": "in_local_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "ce0" }} , 
 	{ "name": "in_local_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "we0" }} , 
 	{ "name": "in_local_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "d0" }} , 
 	{ "name": "in_local_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "address0" }} , 
 	{ "name": "in_local_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "ce0" }} , 
 	{ "name": "in_local_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "we0" }} , 
 	{ "name": "in_local_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "d0" }} , 
 	{ "name": "in_local_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "address0" }} , 
 	{ "name": "in_local_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "ce0" }} , 
 	{ "name": "in_local_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "we0" }} , 
 	{ "name": "in_local_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "d0" }} , 
 	{ "name": "in_local_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "address0" }} , 
 	{ "name": "in_local_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "ce0" }} , 
 	{ "name": "in_local_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "we0" }} , 
 	{ "name": "in_local_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "d0" }} , 
 	{ "name": "in_local_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "address0" }} , 
 	{ "name": "in_local_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "ce0" }} , 
 	{ "name": "in_local_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "we0" }} , 
 	{ "name": "in_local_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "d0" }} , 
 	{ "name": "in_local_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "address0" }} , 
 	{ "name": "in_local_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "ce0" }} , 
 	{ "name": "in_local_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "we0" }} , 
 	{ "name": "in_local_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "d0" }} , 
 	{ "name": "in_local_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V", "role": "address0" }} , 
 	{ "name": "in_local_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "ce0" }} , 
 	{ "name": "in_local_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "we0" }} , 
 	{ "name": "in_local_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "kalman_filter_Pipeline_VITIS_LOOP_43_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32774", "EstimateLatencyMax" : "32774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_local_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_Pipeline_VITIS_LOOP_43_1 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		in_local_V_7 {Type O LastRead -1 FirstWrite 5}
		in_local_V_15 {Type O LastRead -1 FirstWrite 5}
		in_local_V_6 {Type O LastRead -1 FirstWrite 5}
		in_local_V_14 {Type O LastRead -1 FirstWrite 5}
		in_local_V_5 {Type O LastRead -1 FirstWrite 5}
		in_local_V_13 {Type O LastRead -1 FirstWrite 5}
		in_local_V_4 {Type O LastRead -1 FirstWrite 5}
		in_local_V_12 {Type O LastRead -1 FirstWrite 5}
		in_local_V_3 {Type O LastRead -1 FirstWrite 5}
		in_local_V_11 {Type O LastRead -1 FirstWrite 5}
		in_local_V_2 {Type O LastRead -1 FirstWrite 5}
		in_local_V_10 {Type O LastRead -1 FirstWrite 5}
		in_local_V_1 {Type O LastRead -1 FirstWrite 5}
		in_local_V_9 {Type O LastRead -1 FirstWrite 5}
		in_local_V_8 {Type O LastRead -1 FirstWrite 5}
		in_local_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32774", "Max" : "32774"}
	, {"Name" : "Interval", "Min" : "32774", "Max" : "32774"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_WSTRB STRB 1 32 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	sext_ln43 { ap_none {  { sext_ln43 in_data 0 59 } } }
	in_local_V_7 { ap_memory {  { in_local_V_7_address0 mem_address 1 14 }  { in_local_V_7_ce0 mem_ce 1 1 }  { in_local_V_7_we0 mem_we 1 1 }  { in_local_V_7_d0 mem_din 1 19 } } }
	in_local_V_15 { ap_memory {  { in_local_V_15_address0 mem_address 1 14 }  { in_local_V_15_ce0 mem_ce 1 1 }  { in_local_V_15_we0 mem_we 1 1 }  { in_local_V_15_d0 mem_din 1 19 } } }
	in_local_V_6 { ap_memory {  { in_local_V_6_address0 mem_address 1 14 }  { in_local_V_6_ce0 mem_ce 1 1 }  { in_local_V_6_we0 mem_we 1 1 }  { in_local_V_6_d0 mem_din 1 19 } } }
	in_local_V_14 { ap_memory {  { in_local_V_14_address0 mem_address 1 14 }  { in_local_V_14_ce0 mem_ce 1 1 }  { in_local_V_14_we0 mem_we 1 1 }  { in_local_V_14_d0 mem_din 1 19 } } }
	in_local_V_5 { ap_memory {  { in_local_V_5_address0 mem_address 1 14 }  { in_local_V_5_ce0 mem_ce 1 1 }  { in_local_V_5_we0 mem_we 1 1 }  { in_local_V_5_d0 mem_din 1 19 } } }
	in_local_V_13 { ap_memory {  { in_local_V_13_address0 mem_address 1 14 }  { in_local_V_13_ce0 mem_ce 1 1 }  { in_local_V_13_we0 mem_we 1 1 }  { in_local_V_13_d0 mem_din 1 19 } } }
	in_local_V_4 { ap_memory {  { in_local_V_4_address0 mem_address 1 14 }  { in_local_V_4_ce0 mem_ce 1 1 }  { in_local_V_4_we0 mem_we 1 1 }  { in_local_V_4_d0 mem_din 1 19 } } }
	in_local_V_12 { ap_memory {  { in_local_V_12_address0 mem_address 1 14 }  { in_local_V_12_ce0 mem_ce 1 1 }  { in_local_V_12_we0 mem_we 1 1 }  { in_local_V_12_d0 mem_din 1 19 } } }
	in_local_V_3 { ap_memory {  { in_local_V_3_address0 mem_address 1 14 }  { in_local_V_3_ce0 mem_ce 1 1 }  { in_local_V_3_we0 mem_we 1 1 }  { in_local_V_3_d0 mem_din 1 19 } } }
	in_local_V_11 { ap_memory {  { in_local_V_11_address0 mem_address 1 14 }  { in_local_V_11_ce0 mem_ce 1 1 }  { in_local_V_11_we0 mem_we 1 1 }  { in_local_V_11_d0 mem_din 1 19 } } }
	in_local_V_2 { ap_memory {  { in_local_V_2_address0 mem_address 1 14 }  { in_local_V_2_ce0 mem_ce 1 1 }  { in_local_V_2_we0 mem_we 1 1 }  { in_local_V_2_d0 mem_din 1 19 } } }
	in_local_V_10 { ap_memory {  { in_local_V_10_address0 mem_address 1 14 }  { in_local_V_10_ce0 mem_ce 1 1 }  { in_local_V_10_we0 mem_we 1 1 }  { in_local_V_10_d0 mem_din 1 19 } } }
	in_local_V_1 { ap_memory {  { in_local_V_1_address0 mem_address 1 14 }  { in_local_V_1_ce0 mem_ce 1 1 }  { in_local_V_1_we0 mem_we 1 1 }  { in_local_V_1_d0 mem_din 1 19 } } }
	in_local_V_9 { ap_memory {  { in_local_V_9_address0 mem_address 1 14 }  { in_local_V_9_ce0 mem_ce 1 1 }  { in_local_V_9_we0 mem_we 1 1 }  { in_local_V_9_d0 mem_din 1 19 } } }
	in_local_V_8 { ap_memory {  { in_local_V_8_address0 mem_address 1 14 }  { in_local_V_8_ce0 mem_ce 1 1 }  { in_local_V_8_we0 mem_we 1 1 }  { in_local_V_8_d0 mem_din 1 19 } } }
	in_local_V { ap_memory {  { in_local_V_address0 mem_address 1 14 }  { in_local_V_ce0 mem_ce 1 1 }  { in_local_V_we0 mem_we 1 1 }  { in_local_V_d0 mem_din 1 19 } } }
}
set moduleName kalman_filter_Pipeline_VITIS_LOOP_43_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {kalman_filter_Pipeline_VITIS_LOOP_43_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 0}  }
	{ sext_ln43 int 59 regular  }
	{ in_local_V_7 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_15 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_6 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_14 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_5 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_13 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_4 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_12 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_3 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_11 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_2 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_10 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_1 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_9 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_8 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln43", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "in_local_V_7", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_15", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_6", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_14", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_5", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_13", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_4", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_12", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_3", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_11", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_2", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_10", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_1", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_9", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_8", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 117
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln43 sc_in sc_lv 59 signal 1 } 
	{ in_local_V_7_address0 sc_out sc_lv 14 signal 2 } 
	{ in_local_V_7_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_we0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_d0 sc_out sc_lv 19 signal 2 } 
	{ in_local_V_15_address0 sc_out sc_lv 14 signal 3 } 
	{ in_local_V_15_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_we0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_d0 sc_out sc_lv 19 signal 3 } 
	{ in_local_V_6_address0 sc_out sc_lv 14 signal 4 } 
	{ in_local_V_6_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_we0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_d0 sc_out sc_lv 19 signal 4 } 
	{ in_local_V_14_address0 sc_out sc_lv 14 signal 5 } 
	{ in_local_V_14_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_we0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_d0 sc_out sc_lv 19 signal 5 } 
	{ in_local_V_5_address0 sc_out sc_lv 14 signal 6 } 
	{ in_local_V_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_we0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_d0 sc_out sc_lv 19 signal 6 } 
	{ in_local_V_13_address0 sc_out sc_lv 14 signal 7 } 
	{ in_local_V_13_ce0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_we0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_d0 sc_out sc_lv 19 signal 7 } 
	{ in_local_V_4_address0 sc_out sc_lv 14 signal 8 } 
	{ in_local_V_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_we0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_d0 sc_out sc_lv 19 signal 8 } 
	{ in_local_V_12_address0 sc_out sc_lv 14 signal 9 } 
	{ in_local_V_12_ce0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_we0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_d0 sc_out sc_lv 19 signal 9 } 
	{ in_local_V_3_address0 sc_out sc_lv 14 signal 10 } 
	{ in_local_V_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_we0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_d0 sc_out sc_lv 19 signal 10 } 
	{ in_local_V_11_address0 sc_out sc_lv 14 signal 11 } 
	{ in_local_V_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_we0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_d0 sc_out sc_lv 19 signal 11 } 
	{ in_local_V_2_address0 sc_out sc_lv 14 signal 12 } 
	{ in_local_V_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_we0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_d0 sc_out sc_lv 19 signal 12 } 
	{ in_local_V_10_address0 sc_out sc_lv 14 signal 13 } 
	{ in_local_V_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_we0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_d0 sc_out sc_lv 19 signal 13 } 
	{ in_local_V_1_address0 sc_out sc_lv 14 signal 14 } 
	{ in_local_V_1_ce0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_we0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_d0 sc_out sc_lv 19 signal 14 } 
	{ in_local_V_9_address0 sc_out sc_lv 14 signal 15 } 
	{ in_local_V_9_ce0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_we0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_d0 sc_out sc_lv 19 signal 15 } 
	{ in_local_V_8_address0 sc_out sc_lv 14 signal 16 } 
	{ in_local_V_8_ce0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_we0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_d0 sc_out sc_lv 19 signal 16 } 
	{ in_local_V_address0 sc_out sc_lv 14 signal 17 } 
	{ in_local_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_we0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_d0 sc_out sc_lv 19 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "sext_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln43", "role": "default" }} , 
 	{ "name": "in_local_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "address0" }} , 
 	{ "name": "in_local_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "ce0" }} , 
 	{ "name": "in_local_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "we0" }} , 
 	{ "name": "in_local_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "d0" }} , 
 	{ "name": "in_local_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "address0" }} , 
 	{ "name": "in_local_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "ce0" }} , 
 	{ "name": "in_local_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "we0" }} , 
 	{ "name": "in_local_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "d0" }} , 
 	{ "name": "in_local_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "address0" }} , 
 	{ "name": "in_local_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "ce0" }} , 
 	{ "name": "in_local_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "we0" }} , 
 	{ "name": "in_local_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "d0" }} , 
 	{ "name": "in_local_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "address0" }} , 
 	{ "name": "in_local_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "ce0" }} , 
 	{ "name": "in_local_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "we0" }} , 
 	{ "name": "in_local_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "d0" }} , 
 	{ "name": "in_local_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "address0" }} , 
 	{ "name": "in_local_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "ce0" }} , 
 	{ "name": "in_local_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "we0" }} , 
 	{ "name": "in_local_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "d0" }} , 
 	{ "name": "in_local_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "address0" }} , 
 	{ "name": "in_local_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "ce0" }} , 
 	{ "name": "in_local_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "we0" }} , 
 	{ "name": "in_local_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "d0" }} , 
 	{ "name": "in_local_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "address0" }} , 
 	{ "name": "in_local_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "ce0" }} , 
 	{ "name": "in_local_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "we0" }} , 
 	{ "name": "in_local_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "d0" }} , 
 	{ "name": "in_local_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "address0" }} , 
 	{ "name": "in_local_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "ce0" }} , 
 	{ "name": "in_local_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "we0" }} , 
 	{ "name": "in_local_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "d0" }} , 
 	{ "name": "in_local_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "address0" }} , 
 	{ "name": "in_local_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "ce0" }} , 
 	{ "name": "in_local_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "we0" }} , 
 	{ "name": "in_local_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "d0" }} , 
 	{ "name": "in_local_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "address0" }} , 
 	{ "name": "in_local_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "ce0" }} , 
 	{ "name": "in_local_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "we0" }} , 
 	{ "name": "in_local_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "d0" }} , 
 	{ "name": "in_local_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "address0" }} , 
 	{ "name": "in_local_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "ce0" }} , 
 	{ "name": "in_local_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "we0" }} , 
 	{ "name": "in_local_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "d0" }} , 
 	{ "name": "in_local_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "address0" }} , 
 	{ "name": "in_local_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "ce0" }} , 
 	{ "name": "in_local_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "we0" }} , 
 	{ "name": "in_local_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "d0" }} , 
 	{ "name": "in_local_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "address0" }} , 
 	{ "name": "in_local_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "ce0" }} , 
 	{ "name": "in_local_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "we0" }} , 
 	{ "name": "in_local_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "d0" }} , 
 	{ "name": "in_local_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "address0" }} , 
 	{ "name": "in_local_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "ce0" }} , 
 	{ "name": "in_local_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "we0" }} , 
 	{ "name": "in_local_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "d0" }} , 
 	{ "name": "in_local_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "address0" }} , 
 	{ "name": "in_local_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "ce0" }} , 
 	{ "name": "in_local_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "we0" }} , 
 	{ "name": "in_local_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "d0" }} , 
 	{ "name": "in_local_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V", "role": "address0" }} , 
 	{ "name": "in_local_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "ce0" }} , 
 	{ "name": "in_local_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "we0" }} , 
 	{ "name": "in_local_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "kalman_filter_Pipeline_VITIS_LOOP_43_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32774", "EstimateLatencyMax" : "32774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_local_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_Pipeline_VITIS_LOOP_43_1 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		in_local_V_7 {Type O LastRead -1 FirstWrite 5}
		in_local_V_15 {Type O LastRead -1 FirstWrite 5}
		in_local_V_6 {Type O LastRead -1 FirstWrite 5}
		in_local_V_14 {Type O LastRead -1 FirstWrite 5}
		in_local_V_5 {Type O LastRead -1 FirstWrite 5}
		in_local_V_13 {Type O LastRead -1 FirstWrite 5}
		in_local_V_4 {Type O LastRead -1 FirstWrite 5}
		in_local_V_12 {Type O LastRead -1 FirstWrite 5}
		in_local_V_3 {Type O LastRead -1 FirstWrite 5}
		in_local_V_11 {Type O LastRead -1 FirstWrite 5}
		in_local_V_2 {Type O LastRead -1 FirstWrite 5}
		in_local_V_10 {Type O LastRead -1 FirstWrite 5}
		in_local_V_1 {Type O LastRead -1 FirstWrite 5}
		in_local_V_9 {Type O LastRead -1 FirstWrite 5}
		in_local_V_8 {Type O LastRead -1 FirstWrite 5}
		in_local_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32774", "Max" : "32774"}
	, {"Name" : "Interval", "Min" : "32774", "Max" : "32774"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_WSTRB STRB 1 32 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	sext_ln43 { ap_none {  { sext_ln43 in_data 0 59 } } }
	in_local_V_7 { ap_memory {  { in_local_V_7_address0 mem_address 1 14 }  { in_local_V_7_ce0 mem_ce 1 1 }  { in_local_V_7_we0 mem_we 1 1 }  { in_local_V_7_d0 mem_din 1 19 } } }
	in_local_V_15 { ap_memory {  { in_local_V_15_address0 mem_address 1 14 }  { in_local_V_15_ce0 mem_ce 1 1 }  { in_local_V_15_we0 mem_we 1 1 }  { in_local_V_15_d0 mem_din 1 19 } } }
	in_local_V_6 { ap_memory {  { in_local_V_6_address0 mem_address 1 14 }  { in_local_V_6_ce0 mem_ce 1 1 }  { in_local_V_6_we0 mem_we 1 1 }  { in_local_V_6_d0 mem_din 1 19 } } }
	in_local_V_14 { ap_memory {  { in_local_V_14_address0 mem_address 1 14 }  { in_local_V_14_ce0 mem_ce 1 1 }  { in_local_V_14_we0 mem_we 1 1 }  { in_local_V_14_d0 mem_din 1 19 } } }
	in_local_V_5 { ap_memory {  { in_local_V_5_address0 mem_address 1 14 }  { in_local_V_5_ce0 mem_ce 1 1 }  { in_local_V_5_we0 mem_we 1 1 }  { in_local_V_5_d0 mem_din 1 19 } } }
	in_local_V_13 { ap_memory {  { in_local_V_13_address0 mem_address 1 14 }  { in_local_V_13_ce0 mem_ce 1 1 }  { in_local_V_13_we0 mem_we 1 1 }  { in_local_V_13_d0 mem_din 1 19 } } }
	in_local_V_4 { ap_memory {  { in_local_V_4_address0 mem_address 1 14 }  { in_local_V_4_ce0 mem_ce 1 1 }  { in_local_V_4_we0 mem_we 1 1 }  { in_local_V_4_d0 mem_din 1 19 } } }
	in_local_V_12 { ap_memory {  { in_local_V_12_address0 mem_address 1 14 }  { in_local_V_12_ce0 mem_ce 1 1 }  { in_local_V_12_we0 mem_we 1 1 }  { in_local_V_12_d0 mem_din 1 19 } } }
	in_local_V_3 { ap_memory {  { in_local_V_3_address0 mem_address 1 14 }  { in_local_V_3_ce0 mem_ce 1 1 }  { in_local_V_3_we0 mem_we 1 1 }  { in_local_V_3_d0 mem_din 1 19 } } }
	in_local_V_11 { ap_memory {  { in_local_V_11_address0 mem_address 1 14 }  { in_local_V_11_ce0 mem_ce 1 1 }  { in_local_V_11_we0 mem_we 1 1 }  { in_local_V_11_d0 mem_din 1 19 } } }
	in_local_V_2 { ap_memory {  { in_local_V_2_address0 mem_address 1 14 }  { in_local_V_2_ce0 mem_ce 1 1 }  { in_local_V_2_we0 mem_we 1 1 }  { in_local_V_2_d0 mem_din 1 19 } } }
	in_local_V_10 { ap_memory {  { in_local_V_10_address0 mem_address 1 14 }  { in_local_V_10_ce0 mem_ce 1 1 }  { in_local_V_10_we0 mem_we 1 1 }  { in_local_V_10_d0 mem_din 1 19 } } }
	in_local_V_1 { ap_memory {  { in_local_V_1_address0 mem_address 1 14 }  { in_local_V_1_ce0 mem_ce 1 1 }  { in_local_V_1_we0 mem_we 1 1 }  { in_local_V_1_d0 mem_din 1 19 } } }
	in_local_V_9 { ap_memory {  { in_local_V_9_address0 mem_address 1 14 }  { in_local_V_9_ce0 mem_ce 1 1 }  { in_local_V_9_we0 mem_we 1 1 }  { in_local_V_9_d0 mem_din 1 19 } } }
	in_local_V_8 { ap_memory {  { in_local_V_8_address0 mem_address 1 14 }  { in_local_V_8_ce0 mem_ce 1 1 }  { in_local_V_8_we0 mem_we 1 1 }  { in_local_V_8_d0 mem_din 1 19 } } }
	in_local_V { ap_memory {  { in_local_V_address0 mem_address 1 14 }  { in_local_V_ce0 mem_ce 1 1 }  { in_local_V_we0 mem_we 1 1 }  { in_local_V_d0 mem_din 1 19 } } }
}
set moduleName kalman_filter_Pipeline_VITIS_LOOP_43_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {kalman_filter_Pipeline_VITIS_LOOP_43_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 0}  }
	{ sext_ln43 int 59 regular  }
	{ in_local_V_7 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_15 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_6 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_14 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_5 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_13 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_4 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_12 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_3 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_11 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_2 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_10 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_1 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_9 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_8 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln43", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "in_local_V_7", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_15", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_6", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_14", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_5", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_13", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_4", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_12", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_3", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_11", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_2", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_10", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_1", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_9", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_8", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 117
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln43 sc_in sc_lv 59 signal 1 } 
	{ in_local_V_7_address0 sc_out sc_lv 14 signal 2 } 
	{ in_local_V_7_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_we0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_d0 sc_out sc_lv 19 signal 2 } 
	{ in_local_V_15_address0 sc_out sc_lv 14 signal 3 } 
	{ in_local_V_15_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_we0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_d0 sc_out sc_lv 19 signal 3 } 
	{ in_local_V_6_address0 sc_out sc_lv 14 signal 4 } 
	{ in_local_V_6_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_we0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_d0 sc_out sc_lv 19 signal 4 } 
	{ in_local_V_14_address0 sc_out sc_lv 14 signal 5 } 
	{ in_local_V_14_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_we0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_d0 sc_out sc_lv 19 signal 5 } 
	{ in_local_V_5_address0 sc_out sc_lv 14 signal 6 } 
	{ in_local_V_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_we0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_d0 sc_out sc_lv 19 signal 6 } 
	{ in_local_V_13_address0 sc_out sc_lv 14 signal 7 } 
	{ in_local_V_13_ce0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_we0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_d0 sc_out sc_lv 19 signal 7 } 
	{ in_local_V_4_address0 sc_out sc_lv 14 signal 8 } 
	{ in_local_V_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_we0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_d0 sc_out sc_lv 19 signal 8 } 
	{ in_local_V_12_address0 sc_out sc_lv 14 signal 9 } 
	{ in_local_V_12_ce0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_we0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_d0 sc_out sc_lv 19 signal 9 } 
	{ in_local_V_3_address0 sc_out sc_lv 14 signal 10 } 
	{ in_local_V_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_we0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_d0 sc_out sc_lv 19 signal 10 } 
	{ in_local_V_11_address0 sc_out sc_lv 14 signal 11 } 
	{ in_local_V_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_we0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_d0 sc_out sc_lv 19 signal 11 } 
	{ in_local_V_2_address0 sc_out sc_lv 14 signal 12 } 
	{ in_local_V_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_we0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_d0 sc_out sc_lv 19 signal 12 } 
	{ in_local_V_10_address0 sc_out sc_lv 14 signal 13 } 
	{ in_local_V_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_we0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_d0 sc_out sc_lv 19 signal 13 } 
	{ in_local_V_1_address0 sc_out sc_lv 14 signal 14 } 
	{ in_local_V_1_ce0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_we0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_d0 sc_out sc_lv 19 signal 14 } 
	{ in_local_V_9_address0 sc_out sc_lv 14 signal 15 } 
	{ in_local_V_9_ce0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_we0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_d0 sc_out sc_lv 19 signal 15 } 
	{ in_local_V_8_address0 sc_out sc_lv 14 signal 16 } 
	{ in_local_V_8_ce0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_we0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_d0 sc_out sc_lv 19 signal 16 } 
	{ in_local_V_address0 sc_out sc_lv 14 signal 17 } 
	{ in_local_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_we0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_d0 sc_out sc_lv 19 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "sext_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln43", "role": "default" }} , 
 	{ "name": "in_local_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "address0" }} , 
 	{ "name": "in_local_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "ce0" }} , 
 	{ "name": "in_local_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "we0" }} , 
 	{ "name": "in_local_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "d0" }} , 
 	{ "name": "in_local_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "address0" }} , 
 	{ "name": "in_local_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "ce0" }} , 
 	{ "name": "in_local_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "we0" }} , 
 	{ "name": "in_local_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "d0" }} , 
 	{ "name": "in_local_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "address0" }} , 
 	{ "name": "in_local_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "ce0" }} , 
 	{ "name": "in_local_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "we0" }} , 
 	{ "name": "in_local_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "d0" }} , 
 	{ "name": "in_local_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "address0" }} , 
 	{ "name": "in_local_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "ce0" }} , 
 	{ "name": "in_local_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "we0" }} , 
 	{ "name": "in_local_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "d0" }} , 
 	{ "name": "in_local_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "address0" }} , 
 	{ "name": "in_local_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "ce0" }} , 
 	{ "name": "in_local_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "we0" }} , 
 	{ "name": "in_local_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "d0" }} , 
 	{ "name": "in_local_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "address0" }} , 
 	{ "name": "in_local_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "ce0" }} , 
 	{ "name": "in_local_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "we0" }} , 
 	{ "name": "in_local_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "d0" }} , 
 	{ "name": "in_local_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "address0" }} , 
 	{ "name": "in_local_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "ce0" }} , 
 	{ "name": "in_local_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "we0" }} , 
 	{ "name": "in_local_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "d0" }} , 
 	{ "name": "in_local_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "address0" }} , 
 	{ "name": "in_local_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "ce0" }} , 
 	{ "name": "in_local_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "we0" }} , 
 	{ "name": "in_local_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "d0" }} , 
 	{ "name": "in_local_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "address0" }} , 
 	{ "name": "in_local_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "ce0" }} , 
 	{ "name": "in_local_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "we0" }} , 
 	{ "name": "in_local_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "d0" }} , 
 	{ "name": "in_local_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "address0" }} , 
 	{ "name": "in_local_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "ce0" }} , 
 	{ "name": "in_local_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "we0" }} , 
 	{ "name": "in_local_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "d0" }} , 
 	{ "name": "in_local_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "address0" }} , 
 	{ "name": "in_local_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "ce0" }} , 
 	{ "name": "in_local_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "we0" }} , 
 	{ "name": "in_local_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "d0" }} , 
 	{ "name": "in_local_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "address0" }} , 
 	{ "name": "in_local_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "ce0" }} , 
 	{ "name": "in_local_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "we0" }} , 
 	{ "name": "in_local_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "d0" }} , 
 	{ "name": "in_local_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "address0" }} , 
 	{ "name": "in_local_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "ce0" }} , 
 	{ "name": "in_local_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "we0" }} , 
 	{ "name": "in_local_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "d0" }} , 
 	{ "name": "in_local_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "address0" }} , 
 	{ "name": "in_local_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "ce0" }} , 
 	{ "name": "in_local_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "we0" }} , 
 	{ "name": "in_local_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "d0" }} , 
 	{ "name": "in_local_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "address0" }} , 
 	{ "name": "in_local_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "ce0" }} , 
 	{ "name": "in_local_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "we0" }} , 
 	{ "name": "in_local_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "d0" }} , 
 	{ "name": "in_local_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V", "role": "address0" }} , 
 	{ "name": "in_local_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "ce0" }} , 
 	{ "name": "in_local_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "we0" }} , 
 	{ "name": "in_local_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "kalman_filter_Pipeline_VITIS_LOOP_43_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32774", "EstimateLatencyMax" : "32774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_local_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_Pipeline_VITIS_LOOP_43_1 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		in_local_V_7 {Type O LastRead -1 FirstWrite 5}
		in_local_V_15 {Type O LastRead -1 FirstWrite 5}
		in_local_V_6 {Type O LastRead -1 FirstWrite 5}
		in_local_V_14 {Type O LastRead -1 FirstWrite 5}
		in_local_V_5 {Type O LastRead -1 FirstWrite 5}
		in_local_V_13 {Type O LastRead -1 FirstWrite 5}
		in_local_V_4 {Type O LastRead -1 FirstWrite 5}
		in_local_V_12 {Type O LastRead -1 FirstWrite 5}
		in_local_V_3 {Type O LastRead -1 FirstWrite 5}
		in_local_V_11 {Type O LastRead -1 FirstWrite 5}
		in_local_V_2 {Type O LastRead -1 FirstWrite 5}
		in_local_V_10 {Type O LastRead -1 FirstWrite 5}
		in_local_V_1 {Type O LastRead -1 FirstWrite 5}
		in_local_V_9 {Type O LastRead -1 FirstWrite 5}
		in_local_V_8 {Type O LastRead -1 FirstWrite 5}
		in_local_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32774", "Max" : "32774"}
	, {"Name" : "Interval", "Min" : "32774", "Max" : "32774"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_WSTRB STRB 1 32 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	sext_ln43 { ap_none {  { sext_ln43 in_data 0 59 } } }
	in_local_V_7 { ap_memory {  { in_local_V_7_address0 mem_address 1 14 }  { in_local_V_7_ce0 mem_ce 1 1 }  { in_local_V_7_we0 mem_we 1 1 }  { in_local_V_7_d0 mem_din 1 19 } } }
	in_local_V_15 { ap_memory {  { in_local_V_15_address0 mem_address 1 14 }  { in_local_V_15_ce0 mem_ce 1 1 }  { in_local_V_15_we0 mem_we 1 1 }  { in_local_V_15_d0 mem_din 1 19 } } }
	in_local_V_6 { ap_memory {  { in_local_V_6_address0 mem_address 1 14 }  { in_local_V_6_ce0 mem_ce 1 1 }  { in_local_V_6_we0 mem_we 1 1 }  { in_local_V_6_d0 mem_din 1 19 } } }
	in_local_V_14 { ap_memory {  { in_local_V_14_address0 mem_address 1 14 }  { in_local_V_14_ce0 mem_ce 1 1 }  { in_local_V_14_we0 mem_we 1 1 }  { in_local_V_14_d0 mem_din 1 19 } } }
	in_local_V_5 { ap_memory {  { in_local_V_5_address0 mem_address 1 14 }  { in_local_V_5_ce0 mem_ce 1 1 }  { in_local_V_5_we0 mem_we 1 1 }  { in_local_V_5_d0 mem_din 1 19 } } }
	in_local_V_13 { ap_memory {  { in_local_V_13_address0 mem_address 1 14 }  { in_local_V_13_ce0 mem_ce 1 1 }  { in_local_V_13_we0 mem_we 1 1 }  { in_local_V_13_d0 mem_din 1 19 } } }
	in_local_V_4 { ap_memory {  { in_local_V_4_address0 mem_address 1 14 }  { in_local_V_4_ce0 mem_ce 1 1 }  { in_local_V_4_we0 mem_we 1 1 }  { in_local_V_4_d0 mem_din 1 19 } } }
	in_local_V_12 { ap_memory {  { in_local_V_12_address0 mem_address 1 14 }  { in_local_V_12_ce0 mem_ce 1 1 }  { in_local_V_12_we0 mem_we 1 1 }  { in_local_V_12_d0 mem_din 1 19 } } }
	in_local_V_3 { ap_memory {  { in_local_V_3_address0 mem_address 1 14 }  { in_local_V_3_ce0 mem_ce 1 1 }  { in_local_V_3_we0 mem_we 1 1 }  { in_local_V_3_d0 mem_din 1 19 } } }
	in_local_V_11 { ap_memory {  { in_local_V_11_address0 mem_address 1 14 }  { in_local_V_11_ce0 mem_ce 1 1 }  { in_local_V_11_we0 mem_we 1 1 }  { in_local_V_11_d0 mem_din 1 19 } } }
	in_local_V_2 { ap_memory {  { in_local_V_2_address0 mem_address 1 14 }  { in_local_V_2_ce0 mem_ce 1 1 }  { in_local_V_2_we0 mem_we 1 1 }  { in_local_V_2_d0 mem_din 1 19 } } }
	in_local_V_10 { ap_memory {  { in_local_V_10_address0 mem_address 1 14 }  { in_local_V_10_ce0 mem_ce 1 1 }  { in_local_V_10_we0 mem_we 1 1 }  { in_local_V_10_d0 mem_din 1 19 } } }
	in_local_V_1 { ap_memory {  { in_local_V_1_address0 mem_address 1 14 }  { in_local_V_1_ce0 mem_ce 1 1 }  { in_local_V_1_we0 mem_we 1 1 }  { in_local_V_1_d0 mem_din 1 19 } } }
	in_local_V_9 { ap_memory {  { in_local_V_9_address0 mem_address 1 14 }  { in_local_V_9_ce0 mem_ce 1 1 }  { in_local_V_9_we0 mem_we 1 1 }  { in_local_V_9_d0 mem_din 1 19 } } }
	in_local_V_8 { ap_memory {  { in_local_V_8_address0 mem_address 1 14 }  { in_local_V_8_ce0 mem_ce 1 1 }  { in_local_V_8_we0 mem_we 1 1 }  { in_local_V_8_d0 mem_din 1 19 } } }
	in_local_V { ap_memory {  { in_local_V_address0 mem_address 1 14 }  { in_local_V_ce0 mem_ce 1 1 }  { in_local_V_we0 mem_we 1 1 }  { in_local_V_d0 mem_din 1 19 } } }
}
set moduleName kalman_filter_Pipeline_VITIS_LOOP_43_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {kalman_filter_Pipeline_VITIS_LOOP_43_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 0}  }
	{ sext_ln43 int 59 regular  }
	{ in_local_V_7 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_15 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_6 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_14 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_5 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_13 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_4 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_12 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_3 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_11 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_2 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_10 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_1 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_9 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_8 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln43", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "in_local_V_7", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_15", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_6", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_14", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_5", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_13", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_4", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_12", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_3", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_11", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_2", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_10", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_1", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_9", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_8", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 117
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln43 sc_in sc_lv 59 signal 1 } 
	{ in_local_V_7_address0 sc_out sc_lv 14 signal 2 } 
	{ in_local_V_7_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_we0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_d0 sc_out sc_lv 19 signal 2 } 
	{ in_local_V_15_address0 sc_out sc_lv 14 signal 3 } 
	{ in_local_V_15_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_we0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_d0 sc_out sc_lv 19 signal 3 } 
	{ in_local_V_6_address0 sc_out sc_lv 14 signal 4 } 
	{ in_local_V_6_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_we0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_d0 sc_out sc_lv 19 signal 4 } 
	{ in_local_V_14_address0 sc_out sc_lv 14 signal 5 } 
	{ in_local_V_14_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_we0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_d0 sc_out sc_lv 19 signal 5 } 
	{ in_local_V_5_address0 sc_out sc_lv 14 signal 6 } 
	{ in_local_V_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_we0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_d0 sc_out sc_lv 19 signal 6 } 
	{ in_local_V_13_address0 sc_out sc_lv 14 signal 7 } 
	{ in_local_V_13_ce0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_we0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_d0 sc_out sc_lv 19 signal 7 } 
	{ in_local_V_4_address0 sc_out sc_lv 14 signal 8 } 
	{ in_local_V_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_we0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_d0 sc_out sc_lv 19 signal 8 } 
	{ in_local_V_12_address0 sc_out sc_lv 14 signal 9 } 
	{ in_local_V_12_ce0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_we0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_d0 sc_out sc_lv 19 signal 9 } 
	{ in_local_V_3_address0 sc_out sc_lv 14 signal 10 } 
	{ in_local_V_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_we0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_d0 sc_out sc_lv 19 signal 10 } 
	{ in_local_V_11_address0 sc_out sc_lv 14 signal 11 } 
	{ in_local_V_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_we0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_d0 sc_out sc_lv 19 signal 11 } 
	{ in_local_V_2_address0 sc_out sc_lv 14 signal 12 } 
	{ in_local_V_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_we0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_d0 sc_out sc_lv 19 signal 12 } 
	{ in_local_V_10_address0 sc_out sc_lv 14 signal 13 } 
	{ in_local_V_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_we0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_d0 sc_out sc_lv 19 signal 13 } 
	{ in_local_V_1_address0 sc_out sc_lv 14 signal 14 } 
	{ in_local_V_1_ce0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_we0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_d0 sc_out sc_lv 19 signal 14 } 
	{ in_local_V_9_address0 sc_out sc_lv 14 signal 15 } 
	{ in_local_V_9_ce0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_we0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_d0 sc_out sc_lv 19 signal 15 } 
	{ in_local_V_8_address0 sc_out sc_lv 14 signal 16 } 
	{ in_local_V_8_ce0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_we0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_d0 sc_out sc_lv 19 signal 16 } 
	{ in_local_V_address0 sc_out sc_lv 14 signal 17 } 
	{ in_local_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_we0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_d0 sc_out sc_lv 19 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "sext_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln43", "role": "default" }} , 
 	{ "name": "in_local_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "address0" }} , 
 	{ "name": "in_local_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "ce0" }} , 
 	{ "name": "in_local_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "we0" }} , 
 	{ "name": "in_local_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "d0" }} , 
 	{ "name": "in_local_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "address0" }} , 
 	{ "name": "in_local_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "ce0" }} , 
 	{ "name": "in_local_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "we0" }} , 
 	{ "name": "in_local_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "d0" }} , 
 	{ "name": "in_local_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "address0" }} , 
 	{ "name": "in_local_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "ce0" }} , 
 	{ "name": "in_local_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "we0" }} , 
 	{ "name": "in_local_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "d0" }} , 
 	{ "name": "in_local_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "address0" }} , 
 	{ "name": "in_local_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "ce0" }} , 
 	{ "name": "in_local_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "we0" }} , 
 	{ "name": "in_local_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "d0" }} , 
 	{ "name": "in_local_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "address0" }} , 
 	{ "name": "in_local_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "ce0" }} , 
 	{ "name": "in_local_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "we0" }} , 
 	{ "name": "in_local_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "d0" }} , 
 	{ "name": "in_local_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "address0" }} , 
 	{ "name": "in_local_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "ce0" }} , 
 	{ "name": "in_local_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "we0" }} , 
 	{ "name": "in_local_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "d0" }} , 
 	{ "name": "in_local_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "address0" }} , 
 	{ "name": "in_local_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "ce0" }} , 
 	{ "name": "in_local_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "we0" }} , 
 	{ "name": "in_local_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "d0" }} , 
 	{ "name": "in_local_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "address0" }} , 
 	{ "name": "in_local_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "ce0" }} , 
 	{ "name": "in_local_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "we0" }} , 
 	{ "name": "in_local_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "d0" }} , 
 	{ "name": "in_local_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "address0" }} , 
 	{ "name": "in_local_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "ce0" }} , 
 	{ "name": "in_local_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "we0" }} , 
 	{ "name": "in_local_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "d0" }} , 
 	{ "name": "in_local_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "address0" }} , 
 	{ "name": "in_local_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "ce0" }} , 
 	{ "name": "in_local_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "we0" }} , 
 	{ "name": "in_local_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "d0" }} , 
 	{ "name": "in_local_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "address0" }} , 
 	{ "name": "in_local_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "ce0" }} , 
 	{ "name": "in_local_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "we0" }} , 
 	{ "name": "in_local_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "d0" }} , 
 	{ "name": "in_local_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "address0" }} , 
 	{ "name": "in_local_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "ce0" }} , 
 	{ "name": "in_local_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "we0" }} , 
 	{ "name": "in_local_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "d0" }} , 
 	{ "name": "in_local_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "address0" }} , 
 	{ "name": "in_local_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "ce0" }} , 
 	{ "name": "in_local_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "we0" }} , 
 	{ "name": "in_local_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "d0" }} , 
 	{ "name": "in_local_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "address0" }} , 
 	{ "name": "in_local_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "ce0" }} , 
 	{ "name": "in_local_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "we0" }} , 
 	{ "name": "in_local_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "d0" }} , 
 	{ "name": "in_local_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "address0" }} , 
 	{ "name": "in_local_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "ce0" }} , 
 	{ "name": "in_local_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "we0" }} , 
 	{ "name": "in_local_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "d0" }} , 
 	{ "name": "in_local_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V", "role": "address0" }} , 
 	{ "name": "in_local_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "ce0" }} , 
 	{ "name": "in_local_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "we0" }} , 
 	{ "name": "in_local_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "kalman_filter_Pipeline_VITIS_LOOP_43_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32774", "EstimateLatencyMax" : "32774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_local_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_Pipeline_VITIS_LOOP_43_1 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		in_local_V_7 {Type O LastRead -1 FirstWrite 5}
		in_local_V_15 {Type O LastRead -1 FirstWrite 5}
		in_local_V_6 {Type O LastRead -1 FirstWrite 5}
		in_local_V_14 {Type O LastRead -1 FirstWrite 5}
		in_local_V_5 {Type O LastRead -1 FirstWrite 5}
		in_local_V_13 {Type O LastRead -1 FirstWrite 5}
		in_local_V_4 {Type O LastRead -1 FirstWrite 5}
		in_local_V_12 {Type O LastRead -1 FirstWrite 5}
		in_local_V_3 {Type O LastRead -1 FirstWrite 5}
		in_local_V_11 {Type O LastRead -1 FirstWrite 5}
		in_local_V_2 {Type O LastRead -1 FirstWrite 5}
		in_local_V_10 {Type O LastRead -1 FirstWrite 5}
		in_local_V_1 {Type O LastRead -1 FirstWrite 5}
		in_local_V_9 {Type O LastRead -1 FirstWrite 5}
		in_local_V_8 {Type O LastRead -1 FirstWrite 5}
		in_local_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32774", "Max" : "32774"}
	, {"Name" : "Interval", "Min" : "32774", "Max" : "32774"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_WSTRB STRB 1 32 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	sext_ln43 { ap_none {  { sext_ln43 in_data 0 59 } } }
	in_local_V_7 { ap_memory {  { in_local_V_7_address0 mem_address 1 14 }  { in_local_V_7_ce0 mem_ce 1 1 }  { in_local_V_7_we0 mem_we 1 1 }  { in_local_V_7_d0 mem_din 1 19 } } }
	in_local_V_15 { ap_memory {  { in_local_V_15_address0 mem_address 1 14 }  { in_local_V_15_ce0 mem_ce 1 1 }  { in_local_V_15_we0 mem_we 1 1 }  { in_local_V_15_d0 mem_din 1 19 } } }
	in_local_V_6 { ap_memory {  { in_local_V_6_address0 mem_address 1 14 }  { in_local_V_6_ce0 mem_ce 1 1 }  { in_local_V_6_we0 mem_we 1 1 }  { in_local_V_6_d0 mem_din 1 19 } } }
	in_local_V_14 { ap_memory {  { in_local_V_14_address0 mem_address 1 14 }  { in_local_V_14_ce0 mem_ce 1 1 }  { in_local_V_14_we0 mem_we 1 1 }  { in_local_V_14_d0 mem_din 1 19 } } }
	in_local_V_5 { ap_memory {  { in_local_V_5_address0 mem_address 1 14 }  { in_local_V_5_ce0 mem_ce 1 1 }  { in_local_V_5_we0 mem_we 1 1 }  { in_local_V_5_d0 mem_din 1 19 } } }
	in_local_V_13 { ap_memory {  { in_local_V_13_address0 mem_address 1 14 }  { in_local_V_13_ce0 mem_ce 1 1 }  { in_local_V_13_we0 mem_we 1 1 }  { in_local_V_13_d0 mem_din 1 19 } } }
	in_local_V_4 { ap_memory {  { in_local_V_4_address0 mem_address 1 14 }  { in_local_V_4_ce0 mem_ce 1 1 }  { in_local_V_4_we0 mem_we 1 1 }  { in_local_V_4_d0 mem_din 1 19 } } }
	in_local_V_12 { ap_memory {  { in_local_V_12_address0 mem_address 1 14 }  { in_local_V_12_ce0 mem_ce 1 1 }  { in_local_V_12_we0 mem_we 1 1 }  { in_local_V_12_d0 mem_din 1 19 } } }
	in_local_V_3 { ap_memory {  { in_local_V_3_address0 mem_address 1 14 }  { in_local_V_3_ce0 mem_ce 1 1 }  { in_local_V_3_we0 mem_we 1 1 }  { in_local_V_3_d0 mem_din 1 19 } } }
	in_local_V_11 { ap_memory {  { in_local_V_11_address0 mem_address 1 14 }  { in_local_V_11_ce0 mem_ce 1 1 }  { in_local_V_11_we0 mem_we 1 1 }  { in_local_V_11_d0 mem_din 1 19 } } }
	in_local_V_2 { ap_memory {  { in_local_V_2_address0 mem_address 1 14 }  { in_local_V_2_ce0 mem_ce 1 1 }  { in_local_V_2_we0 mem_we 1 1 }  { in_local_V_2_d0 mem_din 1 19 } } }
	in_local_V_10 { ap_memory {  { in_local_V_10_address0 mem_address 1 14 }  { in_local_V_10_ce0 mem_ce 1 1 }  { in_local_V_10_we0 mem_we 1 1 }  { in_local_V_10_d0 mem_din 1 19 } } }
	in_local_V_1 { ap_memory {  { in_local_V_1_address0 mem_address 1 14 }  { in_local_V_1_ce0 mem_ce 1 1 }  { in_local_V_1_we0 mem_we 1 1 }  { in_local_V_1_d0 mem_din 1 19 } } }
	in_local_V_9 { ap_memory {  { in_local_V_9_address0 mem_address 1 14 }  { in_local_V_9_ce0 mem_ce 1 1 }  { in_local_V_9_we0 mem_we 1 1 }  { in_local_V_9_d0 mem_din 1 19 } } }
	in_local_V_8 { ap_memory {  { in_local_V_8_address0 mem_address 1 14 }  { in_local_V_8_ce0 mem_ce 1 1 }  { in_local_V_8_we0 mem_we 1 1 }  { in_local_V_8_d0 mem_din 1 19 } } }
	in_local_V { ap_memory {  { in_local_V_address0 mem_address 1 14 }  { in_local_V_ce0 mem_ce 1 1 }  { in_local_V_we0 mem_we 1 1 }  { in_local_V_d0 mem_din 1 19 } } }
}
set moduleName kalman_filter_Pipeline_VITIS_LOOP_43_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {kalman_filter_Pipeline_VITIS_LOOP_43_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 0}  }
	{ sext_ln43 int 59 regular  }
	{ in_local_V_7 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_15 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_6 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_14 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_5 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_13 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_4 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_12 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_3 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_11 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_2 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_10 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_1 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_9 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_8 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln43", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "in_local_V_7", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_15", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_6", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_14", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_5", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_13", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_4", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_12", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_3", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_11", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_2", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_10", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_1", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_9", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_8", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 117
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln43 sc_in sc_lv 59 signal 1 } 
	{ in_local_V_7_address0 sc_out sc_lv 14 signal 2 } 
	{ in_local_V_7_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_we0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_d0 sc_out sc_lv 19 signal 2 } 
	{ in_local_V_15_address0 sc_out sc_lv 14 signal 3 } 
	{ in_local_V_15_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_we0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_d0 sc_out sc_lv 19 signal 3 } 
	{ in_local_V_6_address0 sc_out sc_lv 14 signal 4 } 
	{ in_local_V_6_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_we0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_d0 sc_out sc_lv 19 signal 4 } 
	{ in_local_V_14_address0 sc_out sc_lv 14 signal 5 } 
	{ in_local_V_14_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_we0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_d0 sc_out sc_lv 19 signal 5 } 
	{ in_local_V_5_address0 sc_out sc_lv 14 signal 6 } 
	{ in_local_V_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_we0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_d0 sc_out sc_lv 19 signal 6 } 
	{ in_local_V_13_address0 sc_out sc_lv 14 signal 7 } 
	{ in_local_V_13_ce0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_we0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_d0 sc_out sc_lv 19 signal 7 } 
	{ in_local_V_4_address0 sc_out sc_lv 14 signal 8 } 
	{ in_local_V_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_we0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_d0 sc_out sc_lv 19 signal 8 } 
	{ in_local_V_12_address0 sc_out sc_lv 14 signal 9 } 
	{ in_local_V_12_ce0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_we0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_d0 sc_out sc_lv 19 signal 9 } 
	{ in_local_V_3_address0 sc_out sc_lv 14 signal 10 } 
	{ in_local_V_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_we0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_d0 sc_out sc_lv 19 signal 10 } 
	{ in_local_V_11_address0 sc_out sc_lv 14 signal 11 } 
	{ in_local_V_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_we0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_d0 sc_out sc_lv 19 signal 11 } 
	{ in_local_V_2_address0 sc_out sc_lv 14 signal 12 } 
	{ in_local_V_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_we0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_d0 sc_out sc_lv 19 signal 12 } 
	{ in_local_V_10_address0 sc_out sc_lv 14 signal 13 } 
	{ in_local_V_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_we0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_d0 sc_out sc_lv 19 signal 13 } 
	{ in_local_V_1_address0 sc_out sc_lv 14 signal 14 } 
	{ in_local_V_1_ce0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_we0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_d0 sc_out sc_lv 19 signal 14 } 
	{ in_local_V_9_address0 sc_out sc_lv 14 signal 15 } 
	{ in_local_V_9_ce0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_we0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_d0 sc_out sc_lv 19 signal 15 } 
	{ in_local_V_8_address0 sc_out sc_lv 14 signal 16 } 
	{ in_local_V_8_ce0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_we0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_d0 sc_out sc_lv 19 signal 16 } 
	{ in_local_V_address0 sc_out sc_lv 14 signal 17 } 
	{ in_local_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_we0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_d0 sc_out sc_lv 19 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "sext_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln43", "role": "default" }} , 
 	{ "name": "in_local_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "address0" }} , 
 	{ "name": "in_local_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "ce0" }} , 
 	{ "name": "in_local_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "we0" }} , 
 	{ "name": "in_local_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "d0" }} , 
 	{ "name": "in_local_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "address0" }} , 
 	{ "name": "in_local_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "ce0" }} , 
 	{ "name": "in_local_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "we0" }} , 
 	{ "name": "in_local_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "d0" }} , 
 	{ "name": "in_local_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "address0" }} , 
 	{ "name": "in_local_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "ce0" }} , 
 	{ "name": "in_local_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "we0" }} , 
 	{ "name": "in_local_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "d0" }} , 
 	{ "name": "in_local_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "address0" }} , 
 	{ "name": "in_local_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "ce0" }} , 
 	{ "name": "in_local_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "we0" }} , 
 	{ "name": "in_local_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "d0" }} , 
 	{ "name": "in_local_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "address0" }} , 
 	{ "name": "in_local_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "ce0" }} , 
 	{ "name": "in_local_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "we0" }} , 
 	{ "name": "in_local_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "d0" }} , 
 	{ "name": "in_local_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "address0" }} , 
 	{ "name": "in_local_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "ce0" }} , 
 	{ "name": "in_local_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "we0" }} , 
 	{ "name": "in_local_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "d0" }} , 
 	{ "name": "in_local_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "address0" }} , 
 	{ "name": "in_local_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "ce0" }} , 
 	{ "name": "in_local_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "we0" }} , 
 	{ "name": "in_local_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "d0" }} , 
 	{ "name": "in_local_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "address0" }} , 
 	{ "name": "in_local_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "ce0" }} , 
 	{ "name": "in_local_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "we0" }} , 
 	{ "name": "in_local_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "d0" }} , 
 	{ "name": "in_local_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "address0" }} , 
 	{ "name": "in_local_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "ce0" }} , 
 	{ "name": "in_local_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "we0" }} , 
 	{ "name": "in_local_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "d0" }} , 
 	{ "name": "in_local_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "address0" }} , 
 	{ "name": "in_local_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "ce0" }} , 
 	{ "name": "in_local_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "we0" }} , 
 	{ "name": "in_local_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "d0" }} , 
 	{ "name": "in_local_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "address0" }} , 
 	{ "name": "in_local_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "ce0" }} , 
 	{ "name": "in_local_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "we0" }} , 
 	{ "name": "in_local_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "d0" }} , 
 	{ "name": "in_local_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "address0" }} , 
 	{ "name": "in_local_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "ce0" }} , 
 	{ "name": "in_local_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "we0" }} , 
 	{ "name": "in_local_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "d0" }} , 
 	{ "name": "in_local_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "address0" }} , 
 	{ "name": "in_local_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "ce0" }} , 
 	{ "name": "in_local_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "we0" }} , 
 	{ "name": "in_local_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "d0" }} , 
 	{ "name": "in_local_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "address0" }} , 
 	{ "name": "in_local_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "ce0" }} , 
 	{ "name": "in_local_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "we0" }} , 
 	{ "name": "in_local_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "d0" }} , 
 	{ "name": "in_local_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "address0" }} , 
 	{ "name": "in_local_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "ce0" }} , 
 	{ "name": "in_local_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "we0" }} , 
 	{ "name": "in_local_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "d0" }} , 
 	{ "name": "in_local_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V", "role": "address0" }} , 
 	{ "name": "in_local_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "ce0" }} , 
 	{ "name": "in_local_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "we0" }} , 
 	{ "name": "in_local_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "kalman_filter_Pipeline_VITIS_LOOP_43_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32774", "EstimateLatencyMax" : "32774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_local_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_Pipeline_VITIS_LOOP_43_1 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		in_local_V_7 {Type O LastRead -1 FirstWrite 5}
		in_local_V_15 {Type O LastRead -1 FirstWrite 5}
		in_local_V_6 {Type O LastRead -1 FirstWrite 5}
		in_local_V_14 {Type O LastRead -1 FirstWrite 5}
		in_local_V_5 {Type O LastRead -1 FirstWrite 5}
		in_local_V_13 {Type O LastRead -1 FirstWrite 5}
		in_local_V_4 {Type O LastRead -1 FirstWrite 5}
		in_local_V_12 {Type O LastRead -1 FirstWrite 5}
		in_local_V_3 {Type O LastRead -1 FirstWrite 5}
		in_local_V_11 {Type O LastRead -1 FirstWrite 5}
		in_local_V_2 {Type O LastRead -1 FirstWrite 5}
		in_local_V_10 {Type O LastRead -1 FirstWrite 5}
		in_local_V_1 {Type O LastRead -1 FirstWrite 5}
		in_local_V_9 {Type O LastRead -1 FirstWrite 5}
		in_local_V_8 {Type O LastRead -1 FirstWrite 5}
		in_local_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32774", "Max" : "32774"}
	, {"Name" : "Interval", "Min" : "32774", "Max" : "32774"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_WSTRB STRB 1 32 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	sext_ln43 { ap_none {  { sext_ln43 in_data 0 59 } } }
	in_local_V_7 { ap_memory {  { in_local_V_7_address0 mem_address 1 14 }  { in_local_V_7_ce0 mem_ce 1 1 }  { in_local_V_7_we0 mem_we 1 1 }  { in_local_V_7_d0 mem_din 1 19 } } }
	in_local_V_15 { ap_memory {  { in_local_V_15_address0 mem_address 1 14 }  { in_local_V_15_ce0 mem_ce 1 1 }  { in_local_V_15_we0 mem_we 1 1 }  { in_local_V_15_d0 mem_din 1 19 } } }
	in_local_V_6 { ap_memory {  { in_local_V_6_address0 mem_address 1 14 }  { in_local_V_6_ce0 mem_ce 1 1 }  { in_local_V_6_we0 mem_we 1 1 }  { in_local_V_6_d0 mem_din 1 19 } } }
	in_local_V_14 { ap_memory {  { in_local_V_14_address0 mem_address 1 14 }  { in_local_V_14_ce0 mem_ce 1 1 }  { in_local_V_14_we0 mem_we 1 1 }  { in_local_V_14_d0 mem_din 1 19 } } }
	in_local_V_5 { ap_memory {  { in_local_V_5_address0 mem_address 1 14 }  { in_local_V_5_ce0 mem_ce 1 1 }  { in_local_V_5_we0 mem_we 1 1 }  { in_local_V_5_d0 mem_din 1 19 } } }
	in_local_V_13 { ap_memory {  { in_local_V_13_address0 mem_address 1 14 }  { in_local_V_13_ce0 mem_ce 1 1 }  { in_local_V_13_we0 mem_we 1 1 }  { in_local_V_13_d0 mem_din 1 19 } } }
	in_local_V_4 { ap_memory {  { in_local_V_4_address0 mem_address 1 14 }  { in_local_V_4_ce0 mem_ce 1 1 }  { in_local_V_4_we0 mem_we 1 1 }  { in_local_V_4_d0 mem_din 1 19 } } }
	in_local_V_12 { ap_memory {  { in_local_V_12_address0 mem_address 1 14 }  { in_local_V_12_ce0 mem_ce 1 1 }  { in_local_V_12_we0 mem_we 1 1 }  { in_local_V_12_d0 mem_din 1 19 } } }
	in_local_V_3 { ap_memory {  { in_local_V_3_address0 mem_address 1 14 }  { in_local_V_3_ce0 mem_ce 1 1 }  { in_local_V_3_we0 mem_we 1 1 }  { in_local_V_3_d0 mem_din 1 19 } } }
	in_local_V_11 { ap_memory {  { in_local_V_11_address0 mem_address 1 14 }  { in_local_V_11_ce0 mem_ce 1 1 }  { in_local_V_11_we0 mem_we 1 1 }  { in_local_V_11_d0 mem_din 1 19 } } }
	in_local_V_2 { ap_memory {  { in_local_V_2_address0 mem_address 1 14 }  { in_local_V_2_ce0 mem_ce 1 1 }  { in_local_V_2_we0 mem_we 1 1 }  { in_local_V_2_d0 mem_din 1 19 } } }
	in_local_V_10 { ap_memory {  { in_local_V_10_address0 mem_address 1 14 }  { in_local_V_10_ce0 mem_ce 1 1 }  { in_local_V_10_we0 mem_we 1 1 }  { in_local_V_10_d0 mem_din 1 19 } } }
	in_local_V_1 { ap_memory {  { in_local_V_1_address0 mem_address 1 14 }  { in_local_V_1_ce0 mem_ce 1 1 }  { in_local_V_1_we0 mem_we 1 1 }  { in_local_V_1_d0 mem_din 1 19 } } }
	in_local_V_9 { ap_memory {  { in_local_V_9_address0 mem_address 1 14 }  { in_local_V_9_ce0 mem_ce 1 1 }  { in_local_V_9_we0 mem_we 1 1 }  { in_local_V_9_d0 mem_din 1 19 } } }
	in_local_V_8 { ap_memory {  { in_local_V_8_address0 mem_address 1 14 }  { in_local_V_8_ce0 mem_ce 1 1 }  { in_local_V_8_we0 mem_we 1 1 }  { in_local_V_8_d0 mem_din 1 19 } } }
	in_local_V { ap_memory {  { in_local_V_address0 mem_address 1 14 }  { in_local_V_ce0 mem_ce 1 1 }  { in_local_V_we0 mem_we 1 1 }  { in_local_V_d0 mem_din 1 19 } } }
}
set moduleName kalman_filter_Pipeline_VITIS_LOOP_43_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {kalman_filter_Pipeline_VITIS_LOOP_43_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 0}  }
	{ sext_ln43 int 59 regular  }
	{ in_local_V_7 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_15 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_6 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_14 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_5 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_13 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_4 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_12 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_3 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_11 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_2 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_10 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_1 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_9 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_8 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln43", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "in_local_V_7", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_15", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_6", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_14", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_5", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_13", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_4", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_12", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_3", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_11", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_2", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_10", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_1", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_9", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_8", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 117
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln43 sc_in sc_lv 59 signal 1 } 
	{ in_local_V_7_address0 sc_out sc_lv 14 signal 2 } 
	{ in_local_V_7_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_we0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_d0 sc_out sc_lv 19 signal 2 } 
	{ in_local_V_15_address0 sc_out sc_lv 14 signal 3 } 
	{ in_local_V_15_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_we0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_d0 sc_out sc_lv 19 signal 3 } 
	{ in_local_V_6_address0 sc_out sc_lv 14 signal 4 } 
	{ in_local_V_6_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_we0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_d0 sc_out sc_lv 19 signal 4 } 
	{ in_local_V_14_address0 sc_out sc_lv 14 signal 5 } 
	{ in_local_V_14_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_we0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_d0 sc_out sc_lv 19 signal 5 } 
	{ in_local_V_5_address0 sc_out sc_lv 14 signal 6 } 
	{ in_local_V_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_we0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_d0 sc_out sc_lv 19 signal 6 } 
	{ in_local_V_13_address0 sc_out sc_lv 14 signal 7 } 
	{ in_local_V_13_ce0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_we0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_d0 sc_out sc_lv 19 signal 7 } 
	{ in_local_V_4_address0 sc_out sc_lv 14 signal 8 } 
	{ in_local_V_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_we0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_d0 sc_out sc_lv 19 signal 8 } 
	{ in_local_V_12_address0 sc_out sc_lv 14 signal 9 } 
	{ in_local_V_12_ce0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_we0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_d0 sc_out sc_lv 19 signal 9 } 
	{ in_local_V_3_address0 sc_out sc_lv 14 signal 10 } 
	{ in_local_V_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_we0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_d0 sc_out sc_lv 19 signal 10 } 
	{ in_local_V_11_address0 sc_out sc_lv 14 signal 11 } 
	{ in_local_V_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_we0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_d0 sc_out sc_lv 19 signal 11 } 
	{ in_local_V_2_address0 sc_out sc_lv 14 signal 12 } 
	{ in_local_V_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_we0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_d0 sc_out sc_lv 19 signal 12 } 
	{ in_local_V_10_address0 sc_out sc_lv 14 signal 13 } 
	{ in_local_V_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_we0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_d0 sc_out sc_lv 19 signal 13 } 
	{ in_local_V_1_address0 sc_out sc_lv 14 signal 14 } 
	{ in_local_V_1_ce0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_we0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_d0 sc_out sc_lv 19 signal 14 } 
	{ in_local_V_9_address0 sc_out sc_lv 14 signal 15 } 
	{ in_local_V_9_ce0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_we0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_d0 sc_out sc_lv 19 signal 15 } 
	{ in_local_V_8_address0 sc_out sc_lv 14 signal 16 } 
	{ in_local_V_8_ce0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_we0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_d0 sc_out sc_lv 19 signal 16 } 
	{ in_local_V_address0 sc_out sc_lv 14 signal 17 } 
	{ in_local_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_we0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_d0 sc_out sc_lv 19 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "sext_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln43", "role": "default" }} , 
 	{ "name": "in_local_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "address0" }} , 
 	{ "name": "in_local_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "ce0" }} , 
 	{ "name": "in_local_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "we0" }} , 
 	{ "name": "in_local_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "d0" }} , 
 	{ "name": "in_local_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "address0" }} , 
 	{ "name": "in_local_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "ce0" }} , 
 	{ "name": "in_local_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "we0" }} , 
 	{ "name": "in_local_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "d0" }} , 
 	{ "name": "in_local_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "address0" }} , 
 	{ "name": "in_local_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "ce0" }} , 
 	{ "name": "in_local_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "we0" }} , 
 	{ "name": "in_local_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "d0" }} , 
 	{ "name": "in_local_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "address0" }} , 
 	{ "name": "in_local_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "ce0" }} , 
 	{ "name": "in_local_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "we0" }} , 
 	{ "name": "in_local_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "d0" }} , 
 	{ "name": "in_local_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "address0" }} , 
 	{ "name": "in_local_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "ce0" }} , 
 	{ "name": "in_local_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "we0" }} , 
 	{ "name": "in_local_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "d0" }} , 
 	{ "name": "in_local_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "address0" }} , 
 	{ "name": "in_local_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "ce0" }} , 
 	{ "name": "in_local_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "we0" }} , 
 	{ "name": "in_local_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "d0" }} , 
 	{ "name": "in_local_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "address0" }} , 
 	{ "name": "in_local_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "ce0" }} , 
 	{ "name": "in_local_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "we0" }} , 
 	{ "name": "in_local_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "d0" }} , 
 	{ "name": "in_local_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "address0" }} , 
 	{ "name": "in_local_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "ce0" }} , 
 	{ "name": "in_local_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "we0" }} , 
 	{ "name": "in_local_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "d0" }} , 
 	{ "name": "in_local_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "address0" }} , 
 	{ "name": "in_local_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "ce0" }} , 
 	{ "name": "in_local_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "we0" }} , 
 	{ "name": "in_local_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "d0" }} , 
 	{ "name": "in_local_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "address0" }} , 
 	{ "name": "in_local_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "ce0" }} , 
 	{ "name": "in_local_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "we0" }} , 
 	{ "name": "in_local_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "d0" }} , 
 	{ "name": "in_local_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "address0" }} , 
 	{ "name": "in_local_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "ce0" }} , 
 	{ "name": "in_local_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "we0" }} , 
 	{ "name": "in_local_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "d0" }} , 
 	{ "name": "in_local_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "address0" }} , 
 	{ "name": "in_local_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "ce0" }} , 
 	{ "name": "in_local_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "we0" }} , 
 	{ "name": "in_local_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "d0" }} , 
 	{ "name": "in_local_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "address0" }} , 
 	{ "name": "in_local_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "ce0" }} , 
 	{ "name": "in_local_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "we0" }} , 
 	{ "name": "in_local_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "d0" }} , 
 	{ "name": "in_local_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "address0" }} , 
 	{ "name": "in_local_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "ce0" }} , 
 	{ "name": "in_local_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "we0" }} , 
 	{ "name": "in_local_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "d0" }} , 
 	{ "name": "in_local_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "address0" }} , 
 	{ "name": "in_local_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "ce0" }} , 
 	{ "name": "in_local_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "we0" }} , 
 	{ "name": "in_local_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "d0" }} , 
 	{ "name": "in_local_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V", "role": "address0" }} , 
 	{ "name": "in_local_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "ce0" }} , 
 	{ "name": "in_local_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "we0" }} , 
 	{ "name": "in_local_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "kalman_filter_Pipeline_VITIS_LOOP_43_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32774", "EstimateLatencyMax" : "32774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_local_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_Pipeline_VITIS_LOOP_43_1 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		in_local_V_7 {Type O LastRead -1 FirstWrite 5}
		in_local_V_15 {Type O LastRead -1 FirstWrite 5}
		in_local_V_6 {Type O LastRead -1 FirstWrite 5}
		in_local_V_14 {Type O LastRead -1 FirstWrite 5}
		in_local_V_5 {Type O LastRead -1 FirstWrite 5}
		in_local_V_13 {Type O LastRead -1 FirstWrite 5}
		in_local_V_4 {Type O LastRead -1 FirstWrite 5}
		in_local_V_12 {Type O LastRead -1 FirstWrite 5}
		in_local_V_3 {Type O LastRead -1 FirstWrite 5}
		in_local_V_11 {Type O LastRead -1 FirstWrite 5}
		in_local_V_2 {Type O LastRead -1 FirstWrite 5}
		in_local_V_10 {Type O LastRead -1 FirstWrite 5}
		in_local_V_1 {Type O LastRead -1 FirstWrite 5}
		in_local_V_9 {Type O LastRead -1 FirstWrite 5}
		in_local_V_8 {Type O LastRead -1 FirstWrite 5}
		in_local_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32774", "Max" : "32774"}
	, {"Name" : "Interval", "Min" : "32774", "Max" : "32774"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_WSTRB STRB 1 32 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	sext_ln43 { ap_none {  { sext_ln43 in_data 0 59 } } }
	in_local_V_7 { ap_memory {  { in_local_V_7_address0 mem_address 1 14 }  { in_local_V_7_ce0 mem_ce 1 1 }  { in_local_V_7_we0 mem_we 1 1 }  { in_local_V_7_d0 mem_din 1 19 } } }
	in_local_V_15 { ap_memory {  { in_local_V_15_address0 mem_address 1 14 }  { in_local_V_15_ce0 mem_ce 1 1 }  { in_local_V_15_we0 mem_we 1 1 }  { in_local_V_15_d0 mem_din 1 19 } } }
	in_local_V_6 { ap_memory {  { in_local_V_6_address0 mem_address 1 14 }  { in_local_V_6_ce0 mem_ce 1 1 }  { in_local_V_6_we0 mem_we 1 1 }  { in_local_V_6_d0 mem_din 1 19 } } }
	in_local_V_14 { ap_memory {  { in_local_V_14_address0 mem_address 1 14 }  { in_local_V_14_ce0 mem_ce 1 1 }  { in_local_V_14_we0 mem_we 1 1 }  { in_local_V_14_d0 mem_din 1 19 } } }
	in_local_V_5 { ap_memory {  { in_local_V_5_address0 mem_address 1 14 }  { in_local_V_5_ce0 mem_ce 1 1 }  { in_local_V_5_we0 mem_we 1 1 }  { in_local_V_5_d0 mem_din 1 19 } } }
	in_local_V_13 { ap_memory {  { in_local_V_13_address0 mem_address 1 14 }  { in_local_V_13_ce0 mem_ce 1 1 }  { in_local_V_13_we0 mem_we 1 1 }  { in_local_V_13_d0 mem_din 1 19 } } }
	in_local_V_4 { ap_memory {  { in_local_V_4_address0 mem_address 1 14 }  { in_local_V_4_ce0 mem_ce 1 1 }  { in_local_V_4_we0 mem_we 1 1 }  { in_local_V_4_d0 mem_din 1 19 } } }
	in_local_V_12 { ap_memory {  { in_local_V_12_address0 mem_address 1 14 }  { in_local_V_12_ce0 mem_ce 1 1 }  { in_local_V_12_we0 mem_we 1 1 }  { in_local_V_12_d0 mem_din 1 19 } } }
	in_local_V_3 { ap_memory {  { in_local_V_3_address0 mem_address 1 14 }  { in_local_V_3_ce0 mem_ce 1 1 }  { in_local_V_3_we0 mem_we 1 1 }  { in_local_V_3_d0 mem_din 1 19 } } }
	in_local_V_11 { ap_memory {  { in_local_V_11_address0 mem_address 1 14 }  { in_local_V_11_ce0 mem_ce 1 1 }  { in_local_V_11_we0 mem_we 1 1 }  { in_local_V_11_d0 mem_din 1 19 } } }
	in_local_V_2 { ap_memory {  { in_local_V_2_address0 mem_address 1 14 }  { in_local_V_2_ce0 mem_ce 1 1 }  { in_local_V_2_we0 mem_we 1 1 }  { in_local_V_2_d0 mem_din 1 19 } } }
	in_local_V_10 { ap_memory {  { in_local_V_10_address0 mem_address 1 14 }  { in_local_V_10_ce0 mem_ce 1 1 }  { in_local_V_10_we0 mem_we 1 1 }  { in_local_V_10_d0 mem_din 1 19 } } }
	in_local_V_1 { ap_memory {  { in_local_V_1_address0 mem_address 1 14 }  { in_local_V_1_ce0 mem_ce 1 1 }  { in_local_V_1_we0 mem_we 1 1 }  { in_local_V_1_d0 mem_din 1 19 } } }
	in_local_V_9 { ap_memory {  { in_local_V_9_address0 mem_address 1 14 }  { in_local_V_9_ce0 mem_ce 1 1 }  { in_local_V_9_we0 mem_we 1 1 }  { in_local_V_9_d0 mem_din 1 19 } } }
	in_local_V_8 { ap_memory {  { in_local_V_8_address0 mem_address 1 14 }  { in_local_V_8_ce0 mem_ce 1 1 }  { in_local_V_8_we0 mem_we 1 1 }  { in_local_V_8_d0 mem_din 1 19 } } }
	in_local_V { ap_memory {  { in_local_V_address0 mem_address 1 14 }  { in_local_V_ce0 mem_ce 1 1 }  { in_local_V_we0 mem_we 1 1 }  { in_local_V_d0 mem_din 1 19 } } }
}
set moduleName kalman_filter_Pipeline_VITIS_LOOP_43_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {kalman_filter_Pipeline_VITIS_LOOP_43_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 0}  }
	{ sext_ln43 int 59 regular  }
	{ in_local_V_7 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_15 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_6 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_14 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_5 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_13 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_4 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_12 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_3 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_11 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_2 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_10 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_1 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_9 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_8 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln43", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "in_local_V_7", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_15", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_6", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_14", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_5", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_13", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_4", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_12", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_3", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_11", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_2", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_10", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_1", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_9", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_8", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 117
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln43 sc_in sc_lv 59 signal 1 } 
	{ in_local_V_7_address0 sc_out sc_lv 14 signal 2 } 
	{ in_local_V_7_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_we0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_d0 sc_out sc_lv 19 signal 2 } 
	{ in_local_V_15_address0 sc_out sc_lv 14 signal 3 } 
	{ in_local_V_15_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_we0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_d0 sc_out sc_lv 19 signal 3 } 
	{ in_local_V_6_address0 sc_out sc_lv 14 signal 4 } 
	{ in_local_V_6_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_we0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_d0 sc_out sc_lv 19 signal 4 } 
	{ in_local_V_14_address0 sc_out sc_lv 14 signal 5 } 
	{ in_local_V_14_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_we0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_d0 sc_out sc_lv 19 signal 5 } 
	{ in_local_V_5_address0 sc_out sc_lv 14 signal 6 } 
	{ in_local_V_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_we0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_d0 sc_out sc_lv 19 signal 6 } 
	{ in_local_V_13_address0 sc_out sc_lv 14 signal 7 } 
	{ in_local_V_13_ce0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_we0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_d0 sc_out sc_lv 19 signal 7 } 
	{ in_local_V_4_address0 sc_out sc_lv 14 signal 8 } 
	{ in_local_V_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_we0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_d0 sc_out sc_lv 19 signal 8 } 
	{ in_local_V_12_address0 sc_out sc_lv 14 signal 9 } 
	{ in_local_V_12_ce0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_we0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_d0 sc_out sc_lv 19 signal 9 } 
	{ in_local_V_3_address0 sc_out sc_lv 14 signal 10 } 
	{ in_local_V_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_we0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_d0 sc_out sc_lv 19 signal 10 } 
	{ in_local_V_11_address0 sc_out sc_lv 14 signal 11 } 
	{ in_local_V_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_we0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_d0 sc_out sc_lv 19 signal 11 } 
	{ in_local_V_2_address0 sc_out sc_lv 14 signal 12 } 
	{ in_local_V_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_we0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_d0 sc_out sc_lv 19 signal 12 } 
	{ in_local_V_10_address0 sc_out sc_lv 14 signal 13 } 
	{ in_local_V_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_we0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_d0 sc_out sc_lv 19 signal 13 } 
	{ in_local_V_1_address0 sc_out sc_lv 14 signal 14 } 
	{ in_local_V_1_ce0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_we0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_d0 sc_out sc_lv 19 signal 14 } 
	{ in_local_V_9_address0 sc_out sc_lv 14 signal 15 } 
	{ in_local_V_9_ce0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_we0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_d0 sc_out sc_lv 19 signal 15 } 
	{ in_local_V_8_address0 sc_out sc_lv 14 signal 16 } 
	{ in_local_V_8_ce0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_we0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_d0 sc_out sc_lv 19 signal 16 } 
	{ in_local_V_address0 sc_out sc_lv 14 signal 17 } 
	{ in_local_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_we0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_d0 sc_out sc_lv 19 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "sext_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln43", "role": "default" }} , 
 	{ "name": "in_local_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "address0" }} , 
 	{ "name": "in_local_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "ce0" }} , 
 	{ "name": "in_local_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "we0" }} , 
 	{ "name": "in_local_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "d0" }} , 
 	{ "name": "in_local_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "address0" }} , 
 	{ "name": "in_local_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "ce0" }} , 
 	{ "name": "in_local_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "we0" }} , 
 	{ "name": "in_local_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "d0" }} , 
 	{ "name": "in_local_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "address0" }} , 
 	{ "name": "in_local_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "ce0" }} , 
 	{ "name": "in_local_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "we0" }} , 
 	{ "name": "in_local_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "d0" }} , 
 	{ "name": "in_local_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "address0" }} , 
 	{ "name": "in_local_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "ce0" }} , 
 	{ "name": "in_local_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "we0" }} , 
 	{ "name": "in_local_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "d0" }} , 
 	{ "name": "in_local_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "address0" }} , 
 	{ "name": "in_local_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "ce0" }} , 
 	{ "name": "in_local_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "we0" }} , 
 	{ "name": "in_local_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "d0" }} , 
 	{ "name": "in_local_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "address0" }} , 
 	{ "name": "in_local_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "ce0" }} , 
 	{ "name": "in_local_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "we0" }} , 
 	{ "name": "in_local_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "d0" }} , 
 	{ "name": "in_local_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "address0" }} , 
 	{ "name": "in_local_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "ce0" }} , 
 	{ "name": "in_local_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "we0" }} , 
 	{ "name": "in_local_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "d0" }} , 
 	{ "name": "in_local_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "address0" }} , 
 	{ "name": "in_local_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "ce0" }} , 
 	{ "name": "in_local_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "we0" }} , 
 	{ "name": "in_local_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "d0" }} , 
 	{ "name": "in_local_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "address0" }} , 
 	{ "name": "in_local_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "ce0" }} , 
 	{ "name": "in_local_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "we0" }} , 
 	{ "name": "in_local_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "d0" }} , 
 	{ "name": "in_local_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "address0" }} , 
 	{ "name": "in_local_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "ce0" }} , 
 	{ "name": "in_local_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "we0" }} , 
 	{ "name": "in_local_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "d0" }} , 
 	{ "name": "in_local_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "address0" }} , 
 	{ "name": "in_local_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "ce0" }} , 
 	{ "name": "in_local_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "we0" }} , 
 	{ "name": "in_local_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "d0" }} , 
 	{ "name": "in_local_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "address0" }} , 
 	{ "name": "in_local_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "ce0" }} , 
 	{ "name": "in_local_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "we0" }} , 
 	{ "name": "in_local_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "d0" }} , 
 	{ "name": "in_local_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "address0" }} , 
 	{ "name": "in_local_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "ce0" }} , 
 	{ "name": "in_local_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "we0" }} , 
 	{ "name": "in_local_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "d0" }} , 
 	{ "name": "in_local_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "address0" }} , 
 	{ "name": "in_local_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "ce0" }} , 
 	{ "name": "in_local_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "we0" }} , 
 	{ "name": "in_local_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "d0" }} , 
 	{ "name": "in_local_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "address0" }} , 
 	{ "name": "in_local_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "ce0" }} , 
 	{ "name": "in_local_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "we0" }} , 
 	{ "name": "in_local_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "d0" }} , 
 	{ "name": "in_local_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V", "role": "address0" }} , 
 	{ "name": "in_local_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "ce0" }} , 
 	{ "name": "in_local_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "we0" }} , 
 	{ "name": "in_local_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "kalman_filter_Pipeline_VITIS_LOOP_43_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32774", "EstimateLatencyMax" : "32774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_local_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_Pipeline_VITIS_LOOP_43_1 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		in_local_V_7 {Type O LastRead -1 FirstWrite 5}
		in_local_V_15 {Type O LastRead -1 FirstWrite 5}
		in_local_V_6 {Type O LastRead -1 FirstWrite 5}
		in_local_V_14 {Type O LastRead -1 FirstWrite 5}
		in_local_V_5 {Type O LastRead -1 FirstWrite 5}
		in_local_V_13 {Type O LastRead -1 FirstWrite 5}
		in_local_V_4 {Type O LastRead -1 FirstWrite 5}
		in_local_V_12 {Type O LastRead -1 FirstWrite 5}
		in_local_V_3 {Type O LastRead -1 FirstWrite 5}
		in_local_V_11 {Type O LastRead -1 FirstWrite 5}
		in_local_V_2 {Type O LastRead -1 FirstWrite 5}
		in_local_V_10 {Type O LastRead -1 FirstWrite 5}
		in_local_V_1 {Type O LastRead -1 FirstWrite 5}
		in_local_V_9 {Type O LastRead -1 FirstWrite 5}
		in_local_V_8 {Type O LastRead -1 FirstWrite 5}
		in_local_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32774", "Max" : "32774"}
	, {"Name" : "Interval", "Min" : "32774", "Max" : "32774"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_WSTRB STRB 1 32 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	sext_ln43 { ap_none {  { sext_ln43 in_data 0 59 } } }
	in_local_V_7 { ap_memory {  { in_local_V_7_address0 mem_address 1 14 }  { in_local_V_7_ce0 mem_ce 1 1 }  { in_local_V_7_we0 mem_we 1 1 }  { in_local_V_7_d0 mem_din 1 19 } } }
	in_local_V_15 { ap_memory {  { in_local_V_15_address0 mem_address 1 14 }  { in_local_V_15_ce0 mem_ce 1 1 }  { in_local_V_15_we0 mem_we 1 1 }  { in_local_V_15_d0 mem_din 1 19 } } }
	in_local_V_6 { ap_memory {  { in_local_V_6_address0 mem_address 1 14 }  { in_local_V_6_ce0 mem_ce 1 1 }  { in_local_V_6_we0 mem_we 1 1 }  { in_local_V_6_d0 mem_din 1 19 } } }
	in_local_V_14 { ap_memory {  { in_local_V_14_address0 mem_address 1 14 }  { in_local_V_14_ce0 mem_ce 1 1 }  { in_local_V_14_we0 mem_we 1 1 }  { in_local_V_14_d0 mem_din 1 19 } } }
	in_local_V_5 { ap_memory {  { in_local_V_5_address0 mem_address 1 14 }  { in_local_V_5_ce0 mem_ce 1 1 }  { in_local_V_5_we0 mem_we 1 1 }  { in_local_V_5_d0 mem_din 1 19 } } }
	in_local_V_13 { ap_memory {  { in_local_V_13_address0 mem_address 1 14 }  { in_local_V_13_ce0 mem_ce 1 1 }  { in_local_V_13_we0 mem_we 1 1 }  { in_local_V_13_d0 mem_din 1 19 } } }
	in_local_V_4 { ap_memory {  { in_local_V_4_address0 mem_address 1 14 }  { in_local_V_4_ce0 mem_ce 1 1 }  { in_local_V_4_we0 mem_we 1 1 }  { in_local_V_4_d0 mem_din 1 19 } } }
	in_local_V_12 { ap_memory {  { in_local_V_12_address0 mem_address 1 14 }  { in_local_V_12_ce0 mem_ce 1 1 }  { in_local_V_12_we0 mem_we 1 1 }  { in_local_V_12_d0 mem_din 1 19 } } }
	in_local_V_3 { ap_memory {  { in_local_V_3_address0 mem_address 1 14 }  { in_local_V_3_ce0 mem_ce 1 1 }  { in_local_V_3_we0 mem_we 1 1 }  { in_local_V_3_d0 mem_din 1 19 } } }
	in_local_V_11 { ap_memory {  { in_local_V_11_address0 mem_address 1 14 }  { in_local_V_11_ce0 mem_ce 1 1 }  { in_local_V_11_we0 mem_we 1 1 }  { in_local_V_11_d0 mem_din 1 19 } } }
	in_local_V_2 { ap_memory {  { in_local_V_2_address0 mem_address 1 14 }  { in_local_V_2_ce0 mem_ce 1 1 }  { in_local_V_2_we0 mem_we 1 1 }  { in_local_V_2_d0 mem_din 1 19 } } }
	in_local_V_10 { ap_memory {  { in_local_V_10_address0 mem_address 1 14 }  { in_local_V_10_ce0 mem_ce 1 1 }  { in_local_V_10_we0 mem_we 1 1 }  { in_local_V_10_d0 mem_din 1 19 } } }
	in_local_V_1 { ap_memory {  { in_local_V_1_address0 mem_address 1 14 }  { in_local_V_1_ce0 mem_ce 1 1 }  { in_local_V_1_we0 mem_we 1 1 }  { in_local_V_1_d0 mem_din 1 19 } } }
	in_local_V_9 { ap_memory {  { in_local_V_9_address0 mem_address 1 14 }  { in_local_V_9_ce0 mem_ce 1 1 }  { in_local_V_9_we0 mem_we 1 1 }  { in_local_V_9_d0 mem_din 1 19 } } }
	in_local_V_8 { ap_memory {  { in_local_V_8_address0 mem_address 1 14 }  { in_local_V_8_ce0 mem_ce 1 1 }  { in_local_V_8_we0 mem_we 1 1 }  { in_local_V_8_d0 mem_din 1 19 } } }
	in_local_V { ap_memory {  { in_local_V_address0 mem_address 1 14 }  { in_local_V_ce0 mem_ce 1 1 }  { in_local_V_we0 mem_we 1 1 }  { in_local_V_d0 mem_din 1 19 } } }
}
set moduleName kalman_filter_Pipeline_VITIS_LOOP_43_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {kalman_filter_Pipeline_VITIS_LOOP_43_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 0}  }
	{ sext_ln43 int 59 regular  }
	{ in_local_V_7 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_15 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_6 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_14 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_5 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_13 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_4 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_12 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_3 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_11 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_2 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_10 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_1 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_9 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V_8 int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ in_local_V int 19 regular {array 16384 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln43", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "in_local_V_7", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_15", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_6", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_14", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_5", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_13", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_4", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_12", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_3", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_11", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_2", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_10", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_1", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_9", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V_8", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_local_V", "interface" : "memory", "bitwidth" : 19, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 117
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln43 sc_in sc_lv 59 signal 1 } 
	{ in_local_V_7_address0 sc_out sc_lv 14 signal 2 } 
	{ in_local_V_7_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_we0 sc_out sc_logic 1 signal 2 } 
	{ in_local_V_7_d0 sc_out sc_lv 19 signal 2 } 
	{ in_local_V_15_address0 sc_out sc_lv 14 signal 3 } 
	{ in_local_V_15_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_we0 sc_out sc_logic 1 signal 3 } 
	{ in_local_V_15_d0 sc_out sc_lv 19 signal 3 } 
	{ in_local_V_6_address0 sc_out sc_lv 14 signal 4 } 
	{ in_local_V_6_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_we0 sc_out sc_logic 1 signal 4 } 
	{ in_local_V_6_d0 sc_out sc_lv 19 signal 4 } 
	{ in_local_V_14_address0 sc_out sc_lv 14 signal 5 } 
	{ in_local_V_14_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_we0 sc_out sc_logic 1 signal 5 } 
	{ in_local_V_14_d0 sc_out sc_lv 19 signal 5 } 
	{ in_local_V_5_address0 sc_out sc_lv 14 signal 6 } 
	{ in_local_V_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_we0 sc_out sc_logic 1 signal 6 } 
	{ in_local_V_5_d0 sc_out sc_lv 19 signal 6 } 
	{ in_local_V_13_address0 sc_out sc_lv 14 signal 7 } 
	{ in_local_V_13_ce0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_we0 sc_out sc_logic 1 signal 7 } 
	{ in_local_V_13_d0 sc_out sc_lv 19 signal 7 } 
	{ in_local_V_4_address0 sc_out sc_lv 14 signal 8 } 
	{ in_local_V_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_we0 sc_out sc_logic 1 signal 8 } 
	{ in_local_V_4_d0 sc_out sc_lv 19 signal 8 } 
	{ in_local_V_12_address0 sc_out sc_lv 14 signal 9 } 
	{ in_local_V_12_ce0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_we0 sc_out sc_logic 1 signal 9 } 
	{ in_local_V_12_d0 sc_out sc_lv 19 signal 9 } 
	{ in_local_V_3_address0 sc_out sc_lv 14 signal 10 } 
	{ in_local_V_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_we0 sc_out sc_logic 1 signal 10 } 
	{ in_local_V_3_d0 sc_out sc_lv 19 signal 10 } 
	{ in_local_V_11_address0 sc_out sc_lv 14 signal 11 } 
	{ in_local_V_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_we0 sc_out sc_logic 1 signal 11 } 
	{ in_local_V_11_d0 sc_out sc_lv 19 signal 11 } 
	{ in_local_V_2_address0 sc_out sc_lv 14 signal 12 } 
	{ in_local_V_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_we0 sc_out sc_logic 1 signal 12 } 
	{ in_local_V_2_d0 sc_out sc_lv 19 signal 12 } 
	{ in_local_V_10_address0 sc_out sc_lv 14 signal 13 } 
	{ in_local_V_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_we0 sc_out sc_logic 1 signal 13 } 
	{ in_local_V_10_d0 sc_out sc_lv 19 signal 13 } 
	{ in_local_V_1_address0 sc_out sc_lv 14 signal 14 } 
	{ in_local_V_1_ce0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_we0 sc_out sc_logic 1 signal 14 } 
	{ in_local_V_1_d0 sc_out sc_lv 19 signal 14 } 
	{ in_local_V_9_address0 sc_out sc_lv 14 signal 15 } 
	{ in_local_V_9_ce0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_we0 sc_out sc_logic 1 signal 15 } 
	{ in_local_V_9_d0 sc_out sc_lv 19 signal 15 } 
	{ in_local_V_8_address0 sc_out sc_lv 14 signal 16 } 
	{ in_local_V_8_ce0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_we0 sc_out sc_logic 1 signal 16 } 
	{ in_local_V_8_d0 sc_out sc_lv 19 signal 16 } 
	{ in_local_V_address0 sc_out sc_lv 14 signal 17 } 
	{ in_local_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_we0 sc_out sc_logic 1 signal 17 } 
	{ in_local_V_d0 sc_out sc_lv 19 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "sext_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln43", "role": "default" }} , 
 	{ "name": "in_local_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "address0" }} , 
 	{ "name": "in_local_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "ce0" }} , 
 	{ "name": "in_local_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "we0" }} , 
 	{ "name": "in_local_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_7", "role": "d0" }} , 
 	{ "name": "in_local_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "address0" }} , 
 	{ "name": "in_local_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "ce0" }} , 
 	{ "name": "in_local_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "we0" }} , 
 	{ "name": "in_local_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_15", "role": "d0" }} , 
 	{ "name": "in_local_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "address0" }} , 
 	{ "name": "in_local_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "ce0" }} , 
 	{ "name": "in_local_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "we0" }} , 
 	{ "name": "in_local_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_6", "role": "d0" }} , 
 	{ "name": "in_local_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "address0" }} , 
 	{ "name": "in_local_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "ce0" }} , 
 	{ "name": "in_local_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "we0" }} , 
 	{ "name": "in_local_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_14", "role": "d0" }} , 
 	{ "name": "in_local_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "address0" }} , 
 	{ "name": "in_local_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "ce0" }} , 
 	{ "name": "in_local_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "we0" }} , 
 	{ "name": "in_local_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_5", "role": "d0" }} , 
 	{ "name": "in_local_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "address0" }} , 
 	{ "name": "in_local_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "ce0" }} , 
 	{ "name": "in_local_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "we0" }} , 
 	{ "name": "in_local_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_13", "role": "d0" }} , 
 	{ "name": "in_local_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "address0" }} , 
 	{ "name": "in_local_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "ce0" }} , 
 	{ "name": "in_local_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "we0" }} , 
 	{ "name": "in_local_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_4", "role": "d0" }} , 
 	{ "name": "in_local_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "address0" }} , 
 	{ "name": "in_local_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "ce0" }} , 
 	{ "name": "in_local_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "we0" }} , 
 	{ "name": "in_local_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_12", "role": "d0" }} , 
 	{ "name": "in_local_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "address0" }} , 
 	{ "name": "in_local_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "ce0" }} , 
 	{ "name": "in_local_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "we0" }} , 
 	{ "name": "in_local_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_3", "role": "d0" }} , 
 	{ "name": "in_local_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "address0" }} , 
 	{ "name": "in_local_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "ce0" }} , 
 	{ "name": "in_local_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "we0" }} , 
 	{ "name": "in_local_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_11", "role": "d0" }} , 
 	{ "name": "in_local_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "address0" }} , 
 	{ "name": "in_local_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "ce0" }} , 
 	{ "name": "in_local_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "we0" }} , 
 	{ "name": "in_local_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_2", "role": "d0" }} , 
 	{ "name": "in_local_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "address0" }} , 
 	{ "name": "in_local_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "ce0" }} , 
 	{ "name": "in_local_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "we0" }} , 
 	{ "name": "in_local_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_10", "role": "d0" }} , 
 	{ "name": "in_local_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "address0" }} , 
 	{ "name": "in_local_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "ce0" }} , 
 	{ "name": "in_local_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "we0" }} , 
 	{ "name": "in_local_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_1", "role": "d0" }} , 
 	{ "name": "in_local_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "address0" }} , 
 	{ "name": "in_local_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "ce0" }} , 
 	{ "name": "in_local_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "we0" }} , 
 	{ "name": "in_local_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_9", "role": "d0" }} , 
 	{ "name": "in_local_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "address0" }} , 
 	{ "name": "in_local_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "ce0" }} , 
 	{ "name": "in_local_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "we0" }} , 
 	{ "name": "in_local_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V_8", "role": "d0" }} , 
 	{ "name": "in_local_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "in_local_V", "role": "address0" }} , 
 	{ "name": "in_local_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "ce0" }} , 
 	{ "name": "in_local_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_local_V", "role": "we0" }} , 
 	{ "name": "in_local_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "in_local_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "kalman_filter_Pipeline_VITIS_LOOP_43_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32774", "EstimateLatencyMax" : "32774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_local_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_local_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	kalman_filter_Pipeline_VITIS_LOOP_43_1 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		in_local_V_7 {Type O LastRead -1 FirstWrite 5}
		in_local_V_15 {Type O LastRead -1 FirstWrite 5}
		in_local_V_6 {Type O LastRead -1 FirstWrite 5}
		in_local_V_14 {Type O LastRead -1 FirstWrite 5}
		in_local_V_5 {Type O LastRead -1 FirstWrite 5}
		in_local_V_13 {Type O LastRead -1 FirstWrite 5}
		in_local_V_4 {Type O LastRead -1 FirstWrite 5}
		in_local_V_12 {Type O LastRead -1 FirstWrite 5}
		in_local_V_3 {Type O LastRead -1 FirstWrite 5}
		in_local_V_11 {Type O LastRead -1 FirstWrite 5}
		in_local_V_2 {Type O LastRead -1 FirstWrite 5}
		in_local_V_10 {Type O LastRead -1 FirstWrite 5}
		in_local_V_1 {Type O LastRead -1 FirstWrite 5}
		in_local_V_9 {Type O LastRead -1 FirstWrite 5}
		in_local_V_8 {Type O LastRead -1 FirstWrite 5}
		in_local_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32774", "Max" : "32774"}
	, {"Name" : "Interval", "Min" : "32774", "Max" : "32774"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_WSTRB STRB 1 32 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	sext_ln43 { ap_none {  { sext_ln43 in_data 0 59 } } }
	in_local_V_7 { ap_memory {  { in_local_V_7_address0 mem_address 1 14 }  { in_local_V_7_ce0 mem_ce 1 1 }  { in_local_V_7_we0 mem_we 1 1 }  { in_local_V_7_d0 mem_din 1 19 } } }
	in_local_V_15 { ap_memory {  { in_local_V_15_address0 mem_address 1 14 }  { in_local_V_15_ce0 mem_ce 1 1 }  { in_local_V_15_we0 mem_we 1 1 }  { in_local_V_15_d0 mem_din 1 19 } } }
	in_local_V_6 { ap_memory {  { in_local_V_6_address0 mem_address 1 14 }  { in_local_V_6_ce0 mem_ce 1 1 }  { in_local_V_6_we0 mem_we 1 1 }  { in_local_V_6_d0 mem_din 1 19 } } }
	in_local_V_14 { ap_memory {  { in_local_V_14_address0 mem_address 1 14 }  { in_local_V_14_ce0 mem_ce 1 1 }  { in_local_V_14_we0 mem_we 1 1 }  { in_local_V_14_d0 mem_din 1 19 } } }
	in_local_V_5 { ap_memory {  { in_local_V_5_address0 mem_address 1 14 }  { in_local_V_5_ce0 mem_ce 1 1 }  { in_local_V_5_we0 mem_we 1 1 }  { in_local_V_5_d0 mem_din 1 19 } } }
	in_local_V_13 { ap_memory {  { in_local_V_13_address0 mem_address 1 14 }  { in_local_V_13_ce0 mem_ce 1 1 }  { in_local_V_13_we0 mem_we 1 1 }  { in_local_V_13_d0 mem_din 1 19 } } }
	in_local_V_4 { ap_memory {  { in_local_V_4_address0 mem_address 1 14 }  { in_local_V_4_ce0 mem_ce 1 1 }  { in_local_V_4_we0 mem_we 1 1 }  { in_local_V_4_d0 mem_din 1 19 } } }
	in_local_V_12 { ap_memory {  { in_local_V_12_address0 mem_address 1 14 }  { in_local_V_12_ce0 mem_ce 1 1 }  { in_local_V_12_we0 mem_we 1 1 }  { in_local_V_12_d0 mem_din 1 19 } } }
	in_local_V_3 { ap_memory {  { in_local_V_3_address0 mem_address 1 14 }  { in_local_V_3_ce0 mem_ce 1 1 }  { in_local_V_3_we0 mem_we 1 1 }  { in_local_V_3_d0 mem_din 1 19 } } }
	in_local_V_11 { ap_memory {  { in_local_V_11_address0 mem_address 1 14 }  { in_local_V_11_ce0 mem_ce 1 1 }  { in_local_V_11_we0 mem_we 1 1 }  { in_local_V_11_d0 mem_din 1 19 } } }
	in_local_V_2 { ap_memory {  { in_local_V_2_address0 mem_address 1 14 }  { in_local_V_2_ce0 mem_ce 1 1 }  { in_local_V_2_we0 mem_we 1 1 }  { in_local_V_2_d0 mem_din 1 19 } } }
	in_local_V_10 { ap_memory {  { in_local_V_10_address0 mem_address 1 14 }  { in_local_V_10_ce0 mem_ce 1 1 }  { in_local_V_10_we0 mem_we 1 1 }  { in_local_V_10_d0 mem_din 1 19 } } }
	in_local_V_1 { ap_memory {  { in_local_V_1_address0 mem_address 1 14 }  { in_local_V_1_ce0 mem_ce 1 1 }  { in_local_V_1_we0 mem_we 1 1 }  { in_local_V_1_d0 mem_din 1 19 } } }
	in_local_V_9 { ap_memory {  { in_local_V_9_address0 mem_address 1 14 }  { in_local_V_9_ce0 mem_ce 1 1 }  { in_local_V_9_we0 mem_we 1 1 }  { in_local_V_9_d0 mem_din 1 19 } } }
	in_local_V_8 { ap_memory {  { in_local_V_8_address0 mem_address 1 14 }  { in_local_V_8_ce0 mem_ce 1 1 }  { in_local_V_8_we0 mem_we 1 1 }  { in_local_V_8_d0 mem_din 1 19 } } }
	in_local_V { ap_memory {  { in_local_V_address0 mem_address 1 14 }  { in_local_V_ce0 mem_ce 1 1 }  { in_local_V_we0 mem_we 1 1 }  { in_local_V_d0 mem_din 1 19 } } }
}
