set moduleName block_mm_Pipeline_partialsum
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
set C_modelName {block_mm_Pipeline_partialsum}
set C_modelType { void 0 }
set C_modelArgList {
	{ AB_15_reload int 32 regular  }
	{ AB_14_reload int 32 regular  }
	{ AB_13_reload int 32 regular  }
	{ AB_12_reload int 32 regular  }
	{ AB_11_reload int 32 regular  }
	{ AB_10_reload int 32 regular  }
	{ AB_9_reload int 32 regular  }
	{ AB_8_reload int 32 regular  }
	{ AB_7_reload int 32 regular  }
	{ AB_6_reload int 32 regular  }
	{ AB_5_reload int 32 regular  }
	{ AB_4_reload int 32 regular  }
	{ AB_3_reload int 32 regular  }
	{ AB_2_reload int 32 regular  }
	{ AB_1_reload int 32 regular  }
	{ AB_reload int 32 regular  }
	{ Bcols int 128 regular {fifo 0 volatile }  }
	{ add_3_375_out int 32 regular {pointer 1}  }
	{ add_3_274_out int 32 regular {pointer 1}  }
	{ add_3_173_out int 32 regular {pointer 1}  }
	{ add_372_out int 32 regular {pointer 1}  }
	{ add_2_371_out int 32 regular {pointer 1}  }
	{ add_2_270_out int 32 regular {pointer 1}  }
	{ add_2_169_out int 32 regular {pointer 1}  }
	{ add_268_out int 32 regular {pointer 1}  }
	{ add_1_367_out int 32 regular {pointer 1}  }
	{ add_1_266_out int 32 regular {pointer 1}  }
	{ add_1_165_out int 32 regular {pointer 1}  }
	{ add_164_out int 32 regular {pointer 1}  }
	{ add_33963_out int 32 regular {pointer 1}  }
	{ add_23462_out int 32 regular {pointer 1}  }
	{ add_12961_out int 32 regular {pointer 1}  }
	{ p_out int 32 regular {pointer 1}  }
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A int 32 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 int 32 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 int 32 regular {array 8 { 1 3 } 1 1 } {global 0}  }
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 int 32 regular {array 8 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "AB_15_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_14_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_13_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_12_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_11_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_10_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_9_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_8_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_7_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_6_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Bcols", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "add_3_375_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_3_274_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_3_173_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_372_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_2_371_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_2_270_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_2_169_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_268_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_1_367_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_1_266_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_1_165_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_164_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_33963_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_23462_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_12961_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 69
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Bcols_dout sc_in sc_lv 128 signal 16 } 
	{ Bcols_empty_n sc_in sc_logic 1 signal 16 } 
	{ Bcols_read sc_out sc_logic 1 signal 16 } 
	{ AB_15_reload sc_in sc_lv 32 signal 0 } 
	{ AB_14_reload sc_in sc_lv 32 signal 1 } 
	{ AB_13_reload sc_in sc_lv 32 signal 2 } 
	{ AB_12_reload sc_in sc_lv 32 signal 3 } 
	{ AB_11_reload sc_in sc_lv 32 signal 4 } 
	{ AB_10_reload sc_in sc_lv 32 signal 5 } 
	{ AB_9_reload sc_in sc_lv 32 signal 6 } 
	{ AB_8_reload sc_in sc_lv 32 signal 7 } 
	{ AB_7_reload sc_in sc_lv 32 signal 8 } 
	{ AB_6_reload sc_in sc_lv 32 signal 9 } 
	{ AB_5_reload sc_in sc_lv 32 signal 10 } 
	{ AB_4_reload sc_in sc_lv 32 signal 11 } 
	{ AB_3_reload sc_in sc_lv 32 signal 12 } 
	{ AB_2_reload sc_in sc_lv 32 signal 13 } 
	{ AB_1_reload sc_in sc_lv 32 signal 14 } 
	{ AB_reload sc_in sc_lv 32 signal 15 } 
	{ add_3_375_out sc_out sc_lv 32 signal 17 } 
	{ add_3_375_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ add_3_274_out sc_out sc_lv 32 signal 18 } 
	{ add_3_274_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ add_3_173_out sc_out sc_lv 32 signal 19 } 
	{ add_3_173_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ add_372_out sc_out sc_lv 32 signal 20 } 
	{ add_372_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ add_2_371_out sc_out sc_lv 32 signal 21 } 
	{ add_2_371_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ add_2_270_out sc_out sc_lv 32 signal 22 } 
	{ add_2_270_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ add_2_169_out sc_out sc_lv 32 signal 23 } 
	{ add_2_169_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ add_268_out sc_out sc_lv 32 signal 24 } 
	{ add_268_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ add_1_367_out sc_out sc_lv 32 signal 25 } 
	{ add_1_367_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ add_1_266_out sc_out sc_lv 32 signal 26 } 
	{ add_1_266_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ add_1_165_out sc_out sc_lv 32 signal 27 } 
	{ add_1_165_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ add_164_out sc_out sc_lv 32 signal 28 } 
	{ add_164_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ add_33963_out sc_out sc_lv 32 signal 29 } 
	{ add_33963_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ add_23462_out sc_out sc_lv 32 signal 30 } 
	{ add_23462_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ add_12961_out sc_out sc_lv 32 signal 31 } 
	{ add_12961_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ p_out sc_out sc_lv 32 signal 32 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0 sc_out sc_lv 3 signal 33 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0 sc_out sc_logic 1 signal 33 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_q0 sc_in sc_lv 32 signal 33 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0 sc_out sc_lv 3 signal 34 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0 sc_out sc_logic 1 signal 34 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_q0 sc_in sc_lv 32 signal 34 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0 sc_out sc_lv 3 signal 35 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0 sc_out sc_logic 1 signal 35 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_q0 sc_in sc_lv 32 signal 35 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0 sc_out sc_lv 3 signal 36 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0 sc_out sc_logic 1 signal 36 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_q0 sc_in sc_lv 32 signal 36 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Bcols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "Bcols", "role": "dout" }} , 
 	{ "name": "Bcols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols", "role": "empty_n" }} , 
 	{ "name": "Bcols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols", "role": "read" }} , 
 	{ "name": "AB_15_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_15_reload", "role": "default" }} , 
 	{ "name": "AB_14_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_14_reload", "role": "default" }} , 
 	{ "name": "AB_13_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_13_reload", "role": "default" }} , 
 	{ "name": "AB_12_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_12_reload", "role": "default" }} , 
 	{ "name": "AB_11_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_11_reload", "role": "default" }} , 
 	{ "name": "AB_10_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_10_reload", "role": "default" }} , 
 	{ "name": "AB_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_9_reload", "role": "default" }} , 
 	{ "name": "AB_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_8_reload", "role": "default" }} , 
 	{ "name": "AB_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_7_reload", "role": "default" }} , 
 	{ "name": "AB_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_6_reload", "role": "default" }} , 
 	{ "name": "AB_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_5_reload", "role": "default" }} , 
 	{ "name": "AB_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_4_reload", "role": "default" }} , 
 	{ "name": "AB_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_3_reload", "role": "default" }} , 
 	{ "name": "AB_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_2_reload", "role": "default" }} , 
 	{ "name": "AB_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_1_reload", "role": "default" }} , 
 	{ "name": "AB_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_reload", "role": "default" }} , 
 	{ "name": "add_3_375_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_3_375_out", "role": "default" }} , 
 	{ "name": "add_3_375_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_3_375_out", "role": "ap_vld" }} , 
 	{ "name": "add_3_274_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_3_274_out", "role": "default" }} , 
 	{ "name": "add_3_274_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_3_274_out", "role": "ap_vld" }} , 
 	{ "name": "add_3_173_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_3_173_out", "role": "default" }} , 
 	{ "name": "add_3_173_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_3_173_out", "role": "ap_vld" }} , 
 	{ "name": "add_372_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_372_out", "role": "default" }} , 
 	{ "name": "add_372_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_372_out", "role": "ap_vld" }} , 
 	{ "name": "add_2_371_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_2_371_out", "role": "default" }} , 
 	{ "name": "add_2_371_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_2_371_out", "role": "ap_vld" }} , 
 	{ "name": "add_2_270_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_2_270_out", "role": "default" }} , 
 	{ "name": "add_2_270_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_2_270_out", "role": "ap_vld" }} , 
 	{ "name": "add_2_169_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_2_169_out", "role": "default" }} , 
 	{ "name": "add_2_169_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_2_169_out", "role": "ap_vld" }} , 
 	{ "name": "add_268_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_268_out", "role": "default" }} , 
 	{ "name": "add_268_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_268_out", "role": "ap_vld" }} , 
 	{ "name": "add_1_367_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_1_367_out", "role": "default" }} , 
 	{ "name": "add_1_367_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_1_367_out", "role": "ap_vld" }} , 
 	{ "name": "add_1_266_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_1_266_out", "role": "default" }} , 
 	{ "name": "add_1_266_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_1_266_out", "role": "ap_vld" }} , 
 	{ "name": "add_1_165_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_1_165_out", "role": "default" }} , 
 	{ "name": "add_1_165_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_1_165_out", "role": "ap_vld" }} , 
 	{ "name": "add_164_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_164_out", "role": "default" }} , 
 	{ "name": "add_164_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_164_out", "role": "ap_vld" }} , 
 	{ "name": "add_33963_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_33963_out", "role": "default" }} , 
 	{ "name": "add_33963_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_33963_out", "role": "ap_vld" }} , 
 	{ "name": "add_23462_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_23462_out", "role": "default" }} , 
 	{ "name": "add_23462_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_23462_out", "role": "ap_vld" }} , 
 	{ "name": "add_12961_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_12961_out", "role": "default" }} , 
 	{ "name": "add_12961_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_12961_out", "role": "ap_vld" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "role": "address0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "role": "ce0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "role": "q0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "role": "address0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "role": "ce0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "role": "q0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "role": "address0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "role": "ce0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "role": "q0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "role": "address0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "role": "ce0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "block_mm_Pipeline_partialsum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "AB_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bcols", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Bcols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_3_375_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_3_274_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_3_173_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_372_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_2_371_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_2_270_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_2_169_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_268_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_1_367_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_1_266_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_1_165_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_164_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_33963_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_23462_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_12961_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "partialsum", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U22", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U23", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U24", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U25", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U26", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U27", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U28", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U29", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U30", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U31", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U32", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U33", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U34", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U35", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U36", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U37", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	block_mm_Pipeline_partialsum {
		AB_15_reload {Type I LastRead 0 FirstWrite -1}
		AB_14_reload {Type I LastRead 0 FirstWrite -1}
		AB_13_reload {Type I LastRead 0 FirstWrite -1}
		AB_12_reload {Type I LastRead 0 FirstWrite -1}
		AB_11_reload {Type I LastRead 0 FirstWrite -1}
		AB_10_reload {Type I LastRead 0 FirstWrite -1}
		AB_9_reload {Type I LastRead 0 FirstWrite -1}
		AB_8_reload {Type I LastRead 0 FirstWrite -1}
		AB_7_reload {Type I LastRead 0 FirstWrite -1}
		AB_6_reload {Type I LastRead 0 FirstWrite -1}
		AB_5_reload {Type I LastRead 0 FirstWrite -1}
		AB_4_reload {Type I LastRead 0 FirstWrite -1}
		AB_3_reload {Type I LastRead 0 FirstWrite -1}
		AB_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_1_reload {Type I LastRead 0 FirstWrite -1}
		AB_reload {Type I LastRead 0 FirstWrite -1}
		Bcols {Type I LastRead 1 FirstWrite -1}
		add_3_375_out {Type O LastRead -1 FirstWrite 2}
		add_3_274_out {Type O LastRead -1 FirstWrite 2}
		add_3_173_out {Type O LastRead -1 FirstWrite 2}
		add_372_out {Type O LastRead -1 FirstWrite 2}
		add_2_371_out {Type O LastRead -1 FirstWrite 2}
		add_2_270_out {Type O LastRead -1 FirstWrite 2}
		add_2_169_out {Type O LastRead -1 FirstWrite 2}
		add_268_out {Type O LastRead -1 FirstWrite 2}
		add_1_367_out {Type O LastRead -1 FirstWrite 2}
		add_1_266_out {Type O LastRead -1 FirstWrite 2}
		add_1_165_out {Type O LastRead -1 FirstWrite 2}
		add_164_out {Type O LastRead -1 FirstWrite 2}
		add_33963_out {Type O LastRead -1 FirstWrite 2}
		add_23462_out {Type O LastRead -1 FirstWrite 2}
		add_12961_out {Type O LastRead -1 FirstWrite 2}
		p_out {Type O LastRead -1 FirstWrite 2}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A {Type I LastRead 0 FirstWrite -1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 {Type I LastRead 0 FirstWrite -1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 {Type I LastRead 0 FirstWrite -1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "12"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "12"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	AB_15_reload { ap_none {  { AB_15_reload in_data 0 32 } } }
	AB_14_reload { ap_none {  { AB_14_reload in_data 0 32 } } }
	AB_13_reload { ap_none {  { AB_13_reload in_data 0 32 } } }
	AB_12_reload { ap_none {  { AB_12_reload in_data 0 32 } } }
	AB_11_reload { ap_none {  { AB_11_reload in_data 0 32 } } }
	AB_10_reload { ap_none {  { AB_10_reload in_data 0 32 } } }
	AB_9_reload { ap_none {  { AB_9_reload in_data 0 32 } } }
	AB_8_reload { ap_none {  { AB_8_reload in_data 0 32 } } }
	AB_7_reload { ap_none {  { AB_7_reload in_data 0 32 } } }
	AB_6_reload { ap_none {  { AB_6_reload in_data 0 32 } } }
	AB_5_reload { ap_none {  { AB_5_reload in_data 0 32 } } }
	AB_4_reload { ap_none {  { AB_4_reload in_data 0 32 } } }
	AB_3_reload { ap_none {  { AB_3_reload in_data 0 32 } } }
	AB_2_reload { ap_none {  { AB_2_reload in_data 0 32 } } }
	AB_1_reload { ap_none {  { AB_1_reload in_data 0 32 } } }
	AB_reload { ap_none {  { AB_reload in_data 0 32 } } }
	Bcols { ap_fifo {  { Bcols_dout fifo_port_we 0 128 }  { Bcols_empty_n fifo_status 0 1 }  { Bcols_read fifo_data 1 1 } } }
	add_3_375_out { ap_vld {  { add_3_375_out out_data 1 32 }  { add_3_375_out_ap_vld out_vld 1 1 } } }
	add_3_274_out { ap_vld {  { add_3_274_out out_data 1 32 }  { add_3_274_out_ap_vld out_vld 1 1 } } }
	add_3_173_out { ap_vld {  { add_3_173_out out_data 1 32 }  { add_3_173_out_ap_vld out_vld 1 1 } } }
	add_372_out { ap_vld {  { add_372_out out_data 1 32 }  { add_372_out_ap_vld out_vld 1 1 } } }
	add_2_371_out { ap_vld {  { add_2_371_out out_data 1 32 }  { add_2_371_out_ap_vld out_vld 1 1 } } }
	add_2_270_out { ap_vld {  { add_2_270_out out_data 1 32 }  { add_2_270_out_ap_vld out_vld 1 1 } } }
	add_2_169_out { ap_vld {  { add_2_169_out out_data 1 32 }  { add_2_169_out_ap_vld out_vld 1 1 } } }
	add_268_out { ap_vld {  { add_268_out out_data 1 32 }  { add_268_out_ap_vld out_vld 1 1 } } }
	add_1_367_out { ap_vld {  { add_1_367_out out_data 1 32 }  { add_1_367_out_ap_vld out_vld 1 1 } } }
	add_1_266_out { ap_vld {  { add_1_266_out out_data 1 32 }  { add_1_266_out_ap_vld out_vld 1 1 } } }
	add_1_165_out { ap_vld {  { add_1_165_out out_data 1 32 }  { add_1_165_out_ap_vld out_vld 1 1 } } }
	add_164_out { ap_vld {  { add_164_out out_data 1 32 }  { add_164_out_ap_vld out_vld 1 1 } } }
	add_33963_out { ap_vld {  { add_33963_out out_data 1 32 }  { add_33963_out_ap_vld out_vld 1 1 } } }
	add_23462_out { ap_vld {  { add_23462_out out_data 1 32 }  { add_23462_out_ap_vld out_vld 1 1 } } }
	add_12961_out { ap_vld {  { add_12961_out out_data 1 32 }  { add_12961_out_ap_vld out_vld 1 1 } } }
	p_out { ap_vld {  { p_out out_data 1 32 }  { p_out_ap_vld out_vld 1 1 } } }
	block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A { ap_memory {  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0 mem_address 1 3 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0 mem_ce 1 1 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_q0 mem_dout 0 32 } } }
	block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 { ap_memory {  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0 mem_address 1 3 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0 mem_ce 1 1 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_q0 mem_dout 0 32 } } }
	block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 { ap_memory {  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0 mem_address 1 3 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0 mem_ce 1 1 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_q0 mem_dout 0 32 } } }
	block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 { ap_memory {  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0 mem_address 1 3 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0 mem_ce 1 1 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_q0 mem_dout 0 32 } } }
}
