set moduleName edge_detect
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {edge_detect}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_r int 32 regular {axi_master 0}  }
	{ out_r int 32 regular {axi_master 1}  }
	{ inputImage int 64 regular {axi_slave 0}  }
	{ outputImage int 64 regular {axi_slave 0}  }
	{ EDGE_THRESHOLD int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_r", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "inputImage","offset": { "type": "dynamic","port_name": "inputImage","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "out_r", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "outputImage","offset": { "type": "dynamic","port_name": "outputImage","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "inputImage", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "outputImage", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "EDGE_THRESHOLD", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 114
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_in_r_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_in_r_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_in_r_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_in_r_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_in_r_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_in_r_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_in_r_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_in_r_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_in_r_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_in_r_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_in_r_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_in_r_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_in_r_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_in_r_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_in_r_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_in_r_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_in_r_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_in_r_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_in_r_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_in_r_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_in_r_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_in_r_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_in_r_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_in_r_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_in_r_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_in_r_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_in_r_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_in_r_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_in_r_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_in_r_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_in_r_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_in_r_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_in_r_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_in_r_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_in_r_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_in_r_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_in_r_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_in_r_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_in_r_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_in_r_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_in_r_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_in_r_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_in_r_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_in_r_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_in_r_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_out_r_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_out_r_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_out_r_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_out_r_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_out_r_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_out_r_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_out_r_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_out_r_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_out_r_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_out_r_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_out_r_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_out_r_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_out_r_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_out_r_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_out_r_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_out_r_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_out_r_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_out_r_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_out_r_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_out_r_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_out_r_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_out_r_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_out_r_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_out_r_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_out_r_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_out_r_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_out_r_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_out_r_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_out_r_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_out_r_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_out_r_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_out_r_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_out_r_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_out_r_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_out_r_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_out_r_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_out_r_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_out_r_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_out_r_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_out_r_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_out_r_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_out_r_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_out_r_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_out_r_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_out_r_BUSER sc_in sc_lv 1 signal 1 } 
	{ EDGE_THRESHOLD sc_in sc_lv 32 signal 4 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"inputImage","role":"data","value":"16"},{"name":"outputImage","role":"data","value":"28"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_in_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_in_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_in_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_in_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "AWID" }} , 
 	{ "name": "m_axi_in_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_in_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_in_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_in_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_in_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_in_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_in_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_in_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_in_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_in_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_in_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_in_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_in_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_in_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_in_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "WID" }} , 
 	{ "name": "m_axi_in_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_in_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_in_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_in_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_in_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ARID" }} , 
 	{ "name": "m_axi_in_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_in_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_in_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_in_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_in_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_in_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_in_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_in_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_in_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_in_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_in_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_in_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_in_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_in_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "RID" }} , 
 	{ "name": "m_axi_in_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_in_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_in_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_in_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_in_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_in_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "BID" }} , 
 	{ "name": "m_axi_in_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "BUSER" }} , 
 	{ "name": "m_axi_out_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_out_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_out_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_out_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "AWID" }} , 
 	{ "name": "m_axi_out_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_out_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_out_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_out_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_out_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_out_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_out_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_out_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_out_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_out_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_out_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_out_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_out_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_out_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_out_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "WID" }} , 
 	{ "name": "m_axi_out_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_out_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_out_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_out_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_out_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ARID" }} , 
 	{ "name": "m_axi_out_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_out_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_out_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_out_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_out_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_out_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_out_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_out_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_out_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_out_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_out_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_out_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_out_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_out_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "RID" }} , 
 	{ "name": "m_axi_out_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_out_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_out_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_out_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_out_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_out_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "BID" }} , 
 	{ "name": "m_axi_out_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "BUSER" }} , 
 	{ "name": "EDGE_THRESHOLD", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "EDGE_THRESHOLD", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "edge_detect",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4241", "EstimateLatencyMax" : "4241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_r", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "in_r_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "out_r", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "out_r_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "out_r_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "inputImage", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputImage", "Type" : "None", "Direction" : "I"},
			{"Name" : "EDGE_THRESHOLD", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_24_1_VITIS_LOOP_25_2", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state19"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lineBuffer1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lineBuffer2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_r_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_r_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	edge_detect {
		in_r {Type I LastRead 9 FirstWrite -1}
		out_r {Type O LastRead 13 FirstWrite 12}
		inputImage {Type I LastRead 0 FirstWrite -1}
		outputImage {Type I LastRead 0 FirstWrite -1}
		EDGE_THRESHOLD {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4241", "Max" : "4241"}
	, {"Name" : "Interval", "Min" : "4242", "Max" : "4242"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_r { m_axi {  { m_axi_in_r_AWVALID VALID 1 1 }  { m_axi_in_r_AWREADY READY 0 1 }  { m_axi_in_r_AWADDR ADDR 1 64 }  { m_axi_in_r_AWID ID 1 1 }  { m_axi_in_r_AWLEN SIZE 1 8 }  { m_axi_in_r_AWSIZE BURST 1 3 }  { m_axi_in_r_AWBURST LOCK 1 2 }  { m_axi_in_r_AWLOCK CACHE 1 2 }  { m_axi_in_r_AWCACHE PROT 1 4 }  { m_axi_in_r_AWPROT QOS 1 3 }  { m_axi_in_r_AWQOS REGION 1 4 }  { m_axi_in_r_AWREGION USER 1 4 }  { m_axi_in_r_AWUSER DATA 1 1 }  { m_axi_in_r_WVALID VALID 1 1 }  { m_axi_in_r_WREADY READY 0 1 }  { m_axi_in_r_WDATA FIFONUM 1 32 }  { m_axi_in_r_WSTRB STRB 1 4 }  { m_axi_in_r_WLAST LAST 1 1 }  { m_axi_in_r_WID ID 1 1 }  { m_axi_in_r_WUSER DATA 1 1 }  { m_axi_in_r_ARVALID VALID 1 1 }  { m_axi_in_r_ARREADY READY 0 1 }  { m_axi_in_r_ARADDR ADDR 1 64 }  { m_axi_in_r_ARID ID 1 1 }  { m_axi_in_r_ARLEN SIZE 1 8 }  { m_axi_in_r_ARSIZE BURST 1 3 }  { m_axi_in_r_ARBURST LOCK 1 2 }  { m_axi_in_r_ARLOCK CACHE 1 2 }  { m_axi_in_r_ARCACHE PROT 1 4 }  { m_axi_in_r_ARPROT QOS 1 3 }  { m_axi_in_r_ARQOS REGION 1 4 }  { m_axi_in_r_ARREGION USER 1 4 }  { m_axi_in_r_ARUSER DATA 1 1 }  { m_axi_in_r_RVALID VALID 0 1 }  { m_axi_in_r_RREADY READY 1 1 }  { m_axi_in_r_RDATA FIFONUM 0 32 }  { m_axi_in_r_RLAST LAST 0 1 }  { m_axi_in_r_RID ID 0 1 }  { m_axi_in_r_RUSER DATA 0 1 }  { m_axi_in_r_RRESP RESP 0 2 }  { m_axi_in_r_BVALID VALID 0 1 }  { m_axi_in_r_BREADY READY 1 1 }  { m_axi_in_r_BRESP RESP 0 2 }  { m_axi_in_r_BID ID 0 1 }  { m_axi_in_r_BUSER DATA 0 1 } } }
	out_r { m_axi {  { m_axi_out_r_AWVALID VALID 1 1 }  { m_axi_out_r_AWREADY READY 0 1 }  { m_axi_out_r_AWADDR ADDR 1 64 }  { m_axi_out_r_AWID ID 1 1 }  { m_axi_out_r_AWLEN SIZE 1 8 }  { m_axi_out_r_AWSIZE BURST 1 3 }  { m_axi_out_r_AWBURST LOCK 1 2 }  { m_axi_out_r_AWLOCK CACHE 1 2 }  { m_axi_out_r_AWCACHE PROT 1 4 }  { m_axi_out_r_AWPROT QOS 1 3 }  { m_axi_out_r_AWQOS REGION 1 4 }  { m_axi_out_r_AWREGION USER 1 4 }  { m_axi_out_r_AWUSER DATA 1 1 }  { m_axi_out_r_WVALID VALID 1 1 }  { m_axi_out_r_WREADY READY 0 1 }  { m_axi_out_r_WDATA FIFONUM 1 32 }  { m_axi_out_r_WSTRB STRB 1 4 }  { m_axi_out_r_WLAST LAST 1 1 }  { m_axi_out_r_WID ID 1 1 }  { m_axi_out_r_WUSER DATA 1 1 }  { m_axi_out_r_ARVALID VALID 1 1 }  { m_axi_out_r_ARREADY READY 0 1 }  { m_axi_out_r_ARADDR ADDR 1 64 }  { m_axi_out_r_ARID ID 1 1 }  { m_axi_out_r_ARLEN SIZE 1 8 }  { m_axi_out_r_ARSIZE BURST 1 3 }  { m_axi_out_r_ARBURST LOCK 1 2 }  { m_axi_out_r_ARLOCK CACHE 1 2 }  { m_axi_out_r_ARCACHE PROT 1 4 }  { m_axi_out_r_ARPROT QOS 1 3 }  { m_axi_out_r_ARQOS REGION 1 4 }  { m_axi_out_r_ARREGION USER 1 4 }  { m_axi_out_r_ARUSER DATA 1 1 }  { m_axi_out_r_RVALID VALID 0 1 }  { m_axi_out_r_RREADY READY 1 1 }  { m_axi_out_r_RDATA FIFONUM 0 32 }  { m_axi_out_r_RLAST LAST 0 1 }  { m_axi_out_r_RID ID 0 1 }  { m_axi_out_r_RUSER DATA 0 1 }  { m_axi_out_r_RRESP RESP 0 2 }  { m_axi_out_r_BVALID VALID 0 1 }  { m_axi_out_r_BREADY READY 1 1 }  { m_axi_out_r_BRESP RESP 0 2 }  { m_axi_out_r_BID ID 0 1 }  { m_axi_out_r_BUSER DATA 0 1 } } }
	EDGE_THRESHOLD { ap_none {  { EDGE_THRESHOLD in_data 0 32 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict in_r {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict out_r {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ in_r 1 }
	{ out_r 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ in_r 1 }
	{ out_r 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
