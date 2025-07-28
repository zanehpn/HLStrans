set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln87 int 32 regular  }
	{ sext_ln87_1 int 32 regular  }
	{ local_values_B_V int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ local_values_B_V_1 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ local_values_B_V_2 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ local_values_B_V_3 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ local_row_indices_B int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ local_row_indices_B_1 int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ local_row_indices_B_2 int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ local_row_indices_B_3 int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ r_V int 16 regular  }
	{ zext_ln837_1 int 10 regular  }
	{ accum_V int 16 regular {array 1024 { 2 3 } 1 1 }  }
	{ accum_V_1 int 16 regular {array 1024 { 2 3 } 1 1 }  }
	{ accum_V_2 int 16 regular {array 1024 { 2 3 } 1 1 }  }
	{ accum_V_3 int 16 regular {array 1024 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln87", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln87_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "r_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837_1", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln87 sc_in sc_lv 32 signal 0 } 
	{ sext_ln87_1 sc_in sc_lv 32 signal 1 } 
	{ local_values_B_V_address0 sc_out sc_lv 10 signal 2 } 
	{ local_values_B_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_values_B_V_q0 sc_in sc_lv 16 signal 2 } 
	{ local_values_B_V_1_address0 sc_out sc_lv 10 signal 3 } 
	{ local_values_B_V_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_values_B_V_1_q0 sc_in sc_lv 16 signal 3 } 
	{ local_values_B_V_2_address0 sc_out sc_lv 10 signal 4 } 
	{ local_values_B_V_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_values_B_V_2_q0 sc_in sc_lv 16 signal 4 } 
	{ local_values_B_V_3_address0 sc_out sc_lv 10 signal 5 } 
	{ local_values_B_V_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ local_values_B_V_3_q0 sc_in sc_lv 16 signal 5 } 
	{ local_row_indices_B_address0 sc_out sc_lv 10 signal 6 } 
	{ local_row_indices_B_ce0 sc_out sc_logic 1 signal 6 } 
	{ local_row_indices_B_q0 sc_in sc_lv 32 signal 6 } 
	{ local_row_indices_B_1_address0 sc_out sc_lv 10 signal 7 } 
	{ local_row_indices_B_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ local_row_indices_B_1_q0 sc_in sc_lv 32 signal 7 } 
	{ local_row_indices_B_2_address0 sc_out sc_lv 10 signal 8 } 
	{ local_row_indices_B_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ local_row_indices_B_2_q0 sc_in sc_lv 32 signal 8 } 
	{ local_row_indices_B_3_address0 sc_out sc_lv 10 signal 9 } 
	{ local_row_indices_B_3_ce0 sc_out sc_logic 1 signal 9 } 
	{ local_row_indices_B_3_q0 sc_in sc_lv 32 signal 9 } 
	{ r_V sc_in sc_lv 16 signal 10 } 
	{ zext_ln837_1 sc_in sc_lv 10 signal 11 } 
	{ accum_V_address0 sc_out sc_lv 10 signal 12 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 12 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 12 } 
	{ accum_V_q0 sc_in sc_lv 16 signal 12 } 
	{ accum_V_1_address0 sc_out sc_lv 10 signal 13 } 
	{ accum_V_1_ce0 sc_out sc_logic 1 signal 13 } 
	{ accum_V_1_we0 sc_out sc_logic 1 signal 13 } 
	{ accum_V_1_d0 sc_out sc_lv 16 signal 13 } 
	{ accum_V_1_q0 sc_in sc_lv 16 signal 13 } 
	{ accum_V_2_address0 sc_out sc_lv 10 signal 14 } 
	{ accum_V_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ accum_V_2_we0 sc_out sc_logic 1 signal 14 } 
	{ accum_V_2_d0 sc_out sc_lv 16 signal 14 } 
	{ accum_V_2_q0 sc_in sc_lv 16 signal 14 } 
	{ accum_V_3_address0 sc_out sc_lv 10 signal 15 } 
	{ accum_V_3_ce0 sc_out sc_logic 1 signal 15 } 
	{ accum_V_3_we0 sc_out sc_logic 1 signal 15 } 
	{ accum_V_3_d0 sc_out sc_lv 16 signal 15 } 
	{ accum_V_3_q0 sc_in sc_lv 16 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln87", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln87", "role": "default" }} , 
 	{ "name": "sext_ln87_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln87_1", "role": "default" }} , 
 	{ "name": "local_values_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "address0" }} , 
 	{ "name": "local_values_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "q0" }} , 
 	{ "name": "local_values_B_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_values_B_V_1", "role": "address0" }} , 
 	{ "name": "local_values_B_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_1", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_1", "role": "q0" }} , 
 	{ "name": "local_values_B_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_values_B_V_2", "role": "address0" }} , 
 	{ "name": "local_values_B_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_2", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_2", "role": "q0" }} , 
 	{ "name": "local_values_B_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_values_B_V_3", "role": "address0" }} , 
 	{ "name": "local_values_B_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_3", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_3", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_row_indices_B_1", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_1", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_1", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_row_indices_B_2", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_2", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_2", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_row_indices_B_3", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_3", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_3", "role": "q0" }} , 
 	{ "name": "r_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "r_V", "role": "default" }} , 
 	{ "name": "zext_ln837_1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln837_1", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "q0" }} , 
 	{ "name": "accum_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_1", "role": "address0" }} , 
 	{ "name": "accum_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "ce0" }} , 
 	{ "name": "accum_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "we0" }} , 
 	{ "name": "accum_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "d0" }} , 
 	{ "name": "accum_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "q0" }} , 
 	{ "name": "accum_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_2", "role": "address0" }} , 
 	{ "name": "accum_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "ce0" }} , 
 	{ "name": "accum_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "we0" }} , 
 	{ "name": "accum_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "d0" }} , 
 	{ "name": "accum_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "q0" }} , 
 	{ "name": "accum_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_3", "role": "address0" }} , 
 	{ "name": "accum_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "ce0" }} , 
 	{ "name": "accum_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "we0" }} , 
 	{ "name": "accum_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "d0" }} , 
 	{ "name": "accum_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln87", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln87_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U193", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U194", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U195", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_27s_32_4_1_U196", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9 {
		sext_ln87 {Type I LastRead 0 FirstWrite -1}
		sext_ln87_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_1 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_2 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_3 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_1 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_2 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_3 {Type I LastRead 1 FirstWrite -1}
		r_V {Type I LastRead 0 FirstWrite -1}
		zext_ln837_1 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 3 FirstWrite 5}
		accum_V_1 {Type IO LastRead 3 FirstWrite 5}
		accum_V_2 {Type IO LastRead 3 FirstWrite 5}
		accum_V_3 {Type IO LastRead 3 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "1027"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "1027"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln87 { ap_none {  { sext_ln87 in_data 0 32 } } }
	sext_ln87_1 { ap_none {  { sext_ln87_1 in_data 0 32 } } }
	local_values_B_V { ap_memory {  { local_values_B_V_address0 mem_address 1 10 }  { local_values_B_V_ce0 mem_ce 1 1 }  { local_values_B_V_q0 in_data 0 16 } } }
	local_values_B_V_1 { ap_memory {  { local_values_B_V_1_address0 mem_address 1 10 }  { local_values_B_V_1_ce0 mem_ce 1 1 }  { local_values_B_V_1_q0 in_data 0 16 } } }
	local_values_B_V_2 { ap_memory {  { local_values_B_V_2_address0 mem_address 1 10 }  { local_values_B_V_2_ce0 mem_ce 1 1 }  { local_values_B_V_2_q0 in_data 0 16 } } }
	local_values_B_V_3 { ap_memory {  { local_values_B_V_3_address0 mem_address 1 10 }  { local_values_B_V_3_ce0 mem_ce 1 1 }  { local_values_B_V_3_q0 in_data 0 16 } } }
	local_row_indices_B { ap_memory {  { local_row_indices_B_address0 mem_address 1 10 }  { local_row_indices_B_ce0 mem_ce 1 1 }  { local_row_indices_B_q0 in_data 0 32 } } }
	local_row_indices_B_1 { ap_memory {  { local_row_indices_B_1_address0 mem_address 1 10 }  { local_row_indices_B_1_ce0 mem_ce 1 1 }  { local_row_indices_B_1_q0 in_data 0 32 } } }
	local_row_indices_B_2 { ap_memory {  { local_row_indices_B_2_address0 mem_address 1 10 }  { local_row_indices_B_2_ce0 mem_ce 1 1 }  { local_row_indices_B_2_q0 in_data 0 32 } } }
	local_row_indices_B_3 { ap_memory {  { local_row_indices_B_3_address0 mem_address 1 10 }  { local_row_indices_B_3_ce0 mem_ce 1 1 }  { local_row_indices_B_3_q0 in_data 0 32 } } }
	r_V { ap_none {  { r_V in_data 0 16 } } }
	zext_ln837_1 { ap_none {  { zext_ln837_1 in_data 0 10 } } }
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 10 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_q0 in_data 0 16 } } }
	accum_V_1 { ap_memory {  { accum_V_1_address0 mem_address 1 10 }  { accum_V_1_ce0 mem_ce 1 1 }  { accum_V_1_we0 mem_we 1 1 }  { accum_V_1_d0 mem_din 1 16 }  { accum_V_1_q0 in_data 0 16 } } }
	accum_V_2 { ap_memory {  { accum_V_2_address0 mem_address 1 10 }  { accum_V_2_ce0 mem_ce 1 1 }  { accum_V_2_we0 mem_we 1 1 }  { accum_V_2_d0 mem_din 1 16 }  { accum_V_2_q0 in_data 0 16 } } }
	accum_V_3 { ap_memory {  { accum_V_3_address0 mem_address 1 10 }  { accum_V_3_ce0 mem_ce 1 1 }  { accum_V_3_we0 mem_we 1 1 }  { accum_V_3_d0 mem_din 1 16 }  { accum_V_3_q0 in_data 0 16 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln87 int 32 regular  }
	{ sext_ln87_1 int 32 regular  }
	{ local_values_B_V int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_1 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_2 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_3 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_4 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_5 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_6 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_7 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_8 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_9 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_10 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_11 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_12 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_13 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_14 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_15 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_row_indices_B int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ local_row_indices_B_1 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ local_row_indices_B_2 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ local_row_indices_B_3 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ local_row_indices_B_4 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ local_row_indices_B_5 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ local_row_indices_B_6 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ local_row_indices_B_7 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ r_V int 16 regular  }
	{ zext_ln837_1 int 9 regular  }
	{ accum_V int 16 regular {array 512 { 2 3 } 1 1 }  }
	{ accum_V_1 int 16 regular {array 512 { 2 3 } 1 1 }  }
	{ accum_V_2 int 16 regular {array 512 { 2 3 } 1 1 }  }
	{ accum_V_3 int 16 regular {array 512 { 2 3 } 1 1 }  }
	{ accum_V_4 int 16 regular {array 512 { 2 3 } 1 1 }  }
	{ accum_V_5 int 16 regular {array 512 { 2 3 } 1 1 }  }
	{ accum_V_6 int 16 regular {array 512 { 2 3 } 1 1 }  }
	{ accum_V_7 int 16 regular {array 512 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln87", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln87_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "r_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837_1", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 122
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln87 sc_in sc_lv 32 signal 0 } 
	{ sext_ln87_1 sc_in sc_lv 32 signal 1 } 
	{ local_values_B_V_address0 sc_out sc_lv 8 signal 2 } 
	{ local_values_B_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_values_B_V_q0 sc_in sc_lv 16 signal 2 } 
	{ local_values_B_V_1_address0 sc_out sc_lv 8 signal 3 } 
	{ local_values_B_V_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_values_B_V_1_q0 sc_in sc_lv 16 signal 3 } 
	{ local_values_B_V_2_address0 sc_out sc_lv 8 signal 4 } 
	{ local_values_B_V_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_values_B_V_2_q0 sc_in sc_lv 16 signal 4 } 
	{ local_values_B_V_3_address0 sc_out sc_lv 8 signal 5 } 
	{ local_values_B_V_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ local_values_B_V_3_q0 sc_in sc_lv 16 signal 5 } 
	{ local_values_B_V_4_address0 sc_out sc_lv 8 signal 6 } 
	{ local_values_B_V_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ local_values_B_V_4_q0 sc_in sc_lv 16 signal 6 } 
	{ local_values_B_V_5_address0 sc_out sc_lv 8 signal 7 } 
	{ local_values_B_V_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ local_values_B_V_5_q0 sc_in sc_lv 16 signal 7 } 
	{ local_values_B_V_6_address0 sc_out sc_lv 8 signal 8 } 
	{ local_values_B_V_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ local_values_B_V_6_q0 sc_in sc_lv 16 signal 8 } 
	{ local_values_B_V_7_address0 sc_out sc_lv 8 signal 9 } 
	{ local_values_B_V_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ local_values_B_V_7_q0 sc_in sc_lv 16 signal 9 } 
	{ local_values_B_V_8_address0 sc_out sc_lv 8 signal 10 } 
	{ local_values_B_V_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ local_values_B_V_8_q0 sc_in sc_lv 16 signal 10 } 
	{ local_values_B_V_9_address0 sc_out sc_lv 8 signal 11 } 
	{ local_values_B_V_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ local_values_B_V_9_q0 sc_in sc_lv 16 signal 11 } 
	{ local_values_B_V_10_address0 sc_out sc_lv 8 signal 12 } 
	{ local_values_B_V_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ local_values_B_V_10_q0 sc_in sc_lv 16 signal 12 } 
	{ local_values_B_V_11_address0 sc_out sc_lv 8 signal 13 } 
	{ local_values_B_V_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ local_values_B_V_11_q0 sc_in sc_lv 16 signal 13 } 
	{ local_values_B_V_12_address0 sc_out sc_lv 8 signal 14 } 
	{ local_values_B_V_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ local_values_B_V_12_q0 sc_in sc_lv 16 signal 14 } 
	{ local_values_B_V_13_address0 sc_out sc_lv 8 signal 15 } 
	{ local_values_B_V_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ local_values_B_V_13_q0 sc_in sc_lv 16 signal 15 } 
	{ local_values_B_V_14_address0 sc_out sc_lv 8 signal 16 } 
	{ local_values_B_V_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ local_values_B_V_14_q0 sc_in sc_lv 16 signal 16 } 
	{ local_values_B_V_15_address0 sc_out sc_lv 8 signal 17 } 
	{ local_values_B_V_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ local_values_B_V_15_q0 sc_in sc_lv 16 signal 17 } 
	{ local_row_indices_B_address0 sc_out sc_lv 9 signal 18 } 
	{ local_row_indices_B_ce0 sc_out sc_logic 1 signal 18 } 
	{ local_row_indices_B_q0 sc_in sc_lv 32 signal 18 } 
	{ local_row_indices_B_1_address0 sc_out sc_lv 9 signal 19 } 
	{ local_row_indices_B_1_ce0 sc_out sc_logic 1 signal 19 } 
	{ local_row_indices_B_1_q0 sc_in sc_lv 32 signal 19 } 
	{ local_row_indices_B_2_address0 sc_out sc_lv 9 signal 20 } 
	{ local_row_indices_B_2_ce0 sc_out sc_logic 1 signal 20 } 
	{ local_row_indices_B_2_q0 sc_in sc_lv 32 signal 20 } 
	{ local_row_indices_B_3_address0 sc_out sc_lv 9 signal 21 } 
	{ local_row_indices_B_3_ce0 sc_out sc_logic 1 signal 21 } 
	{ local_row_indices_B_3_q0 sc_in sc_lv 32 signal 21 } 
	{ local_row_indices_B_4_address0 sc_out sc_lv 9 signal 22 } 
	{ local_row_indices_B_4_ce0 sc_out sc_logic 1 signal 22 } 
	{ local_row_indices_B_4_q0 sc_in sc_lv 32 signal 22 } 
	{ local_row_indices_B_5_address0 sc_out sc_lv 9 signal 23 } 
	{ local_row_indices_B_5_ce0 sc_out sc_logic 1 signal 23 } 
	{ local_row_indices_B_5_q0 sc_in sc_lv 32 signal 23 } 
	{ local_row_indices_B_6_address0 sc_out sc_lv 9 signal 24 } 
	{ local_row_indices_B_6_ce0 sc_out sc_logic 1 signal 24 } 
	{ local_row_indices_B_6_q0 sc_in sc_lv 32 signal 24 } 
	{ local_row_indices_B_7_address0 sc_out sc_lv 9 signal 25 } 
	{ local_row_indices_B_7_ce0 sc_out sc_logic 1 signal 25 } 
	{ local_row_indices_B_7_q0 sc_in sc_lv 32 signal 25 } 
	{ r_V sc_in sc_lv 16 signal 26 } 
	{ zext_ln837_1 sc_in sc_lv 9 signal 27 } 
	{ accum_V_address0 sc_out sc_lv 9 signal 28 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 28 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 28 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 28 } 
	{ accum_V_q0 sc_in sc_lv 16 signal 28 } 
	{ accum_V_1_address0 sc_out sc_lv 9 signal 29 } 
	{ accum_V_1_ce0 sc_out sc_logic 1 signal 29 } 
	{ accum_V_1_we0 sc_out sc_logic 1 signal 29 } 
	{ accum_V_1_d0 sc_out sc_lv 16 signal 29 } 
	{ accum_V_1_q0 sc_in sc_lv 16 signal 29 } 
	{ accum_V_2_address0 sc_out sc_lv 9 signal 30 } 
	{ accum_V_2_ce0 sc_out sc_logic 1 signal 30 } 
	{ accum_V_2_we0 sc_out sc_logic 1 signal 30 } 
	{ accum_V_2_d0 sc_out sc_lv 16 signal 30 } 
	{ accum_V_2_q0 sc_in sc_lv 16 signal 30 } 
	{ accum_V_3_address0 sc_out sc_lv 9 signal 31 } 
	{ accum_V_3_ce0 sc_out sc_logic 1 signal 31 } 
	{ accum_V_3_we0 sc_out sc_logic 1 signal 31 } 
	{ accum_V_3_d0 sc_out sc_lv 16 signal 31 } 
	{ accum_V_3_q0 sc_in sc_lv 16 signal 31 } 
	{ accum_V_4_address0 sc_out sc_lv 9 signal 32 } 
	{ accum_V_4_ce0 sc_out sc_logic 1 signal 32 } 
	{ accum_V_4_we0 sc_out sc_logic 1 signal 32 } 
	{ accum_V_4_d0 sc_out sc_lv 16 signal 32 } 
	{ accum_V_4_q0 sc_in sc_lv 16 signal 32 } 
	{ accum_V_5_address0 sc_out sc_lv 9 signal 33 } 
	{ accum_V_5_ce0 sc_out sc_logic 1 signal 33 } 
	{ accum_V_5_we0 sc_out sc_logic 1 signal 33 } 
	{ accum_V_5_d0 sc_out sc_lv 16 signal 33 } 
	{ accum_V_5_q0 sc_in sc_lv 16 signal 33 } 
	{ accum_V_6_address0 sc_out sc_lv 9 signal 34 } 
	{ accum_V_6_ce0 sc_out sc_logic 1 signal 34 } 
	{ accum_V_6_we0 sc_out sc_logic 1 signal 34 } 
	{ accum_V_6_d0 sc_out sc_lv 16 signal 34 } 
	{ accum_V_6_q0 sc_in sc_lv 16 signal 34 } 
	{ accum_V_7_address0 sc_out sc_lv 9 signal 35 } 
	{ accum_V_7_ce0 sc_out sc_logic 1 signal 35 } 
	{ accum_V_7_we0 sc_out sc_logic 1 signal 35 } 
	{ accum_V_7_d0 sc_out sc_lv 16 signal 35 } 
	{ accum_V_7_q0 sc_in sc_lv 16 signal 35 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln87", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln87", "role": "default" }} , 
 	{ "name": "sext_ln87_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln87_1", "role": "default" }} , 
 	{ "name": "local_values_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "address0" }} , 
 	{ "name": "local_values_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "q0" }} , 
 	{ "name": "local_values_B_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_1", "role": "address0" }} , 
 	{ "name": "local_values_B_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_1", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_1", "role": "q0" }} , 
 	{ "name": "local_values_B_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_2", "role": "address0" }} , 
 	{ "name": "local_values_B_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_2", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_2", "role": "q0" }} , 
 	{ "name": "local_values_B_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_3", "role": "address0" }} , 
 	{ "name": "local_values_B_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_3", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_3", "role": "q0" }} , 
 	{ "name": "local_values_B_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_4", "role": "address0" }} , 
 	{ "name": "local_values_B_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_4", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_4", "role": "q0" }} , 
 	{ "name": "local_values_B_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_5", "role": "address0" }} , 
 	{ "name": "local_values_B_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_5", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_5", "role": "q0" }} , 
 	{ "name": "local_values_B_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_6", "role": "address0" }} , 
 	{ "name": "local_values_B_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_6", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_6", "role": "q0" }} , 
 	{ "name": "local_values_B_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_7", "role": "address0" }} , 
 	{ "name": "local_values_B_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_7", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_7", "role": "q0" }} , 
 	{ "name": "local_values_B_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_8", "role": "address0" }} , 
 	{ "name": "local_values_B_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_8", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_8", "role": "q0" }} , 
 	{ "name": "local_values_B_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_9", "role": "address0" }} , 
 	{ "name": "local_values_B_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_9", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_9", "role": "q0" }} , 
 	{ "name": "local_values_B_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_10", "role": "address0" }} , 
 	{ "name": "local_values_B_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_10", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_10", "role": "q0" }} , 
 	{ "name": "local_values_B_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_11", "role": "address0" }} , 
 	{ "name": "local_values_B_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_11", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_11", "role": "q0" }} , 
 	{ "name": "local_values_B_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_12", "role": "address0" }} , 
 	{ "name": "local_values_B_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_12", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_12", "role": "q0" }} , 
 	{ "name": "local_values_B_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_13", "role": "address0" }} , 
 	{ "name": "local_values_B_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_13", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_13", "role": "q0" }} , 
 	{ "name": "local_values_B_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_14", "role": "address0" }} , 
 	{ "name": "local_values_B_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_14", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_14", "role": "q0" }} , 
 	{ "name": "local_values_B_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_15", "role": "address0" }} , 
 	{ "name": "local_values_B_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_15", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_15", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_row_indices_B_1", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_1", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_1", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_row_indices_B_2", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_2", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_2", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_row_indices_B_3", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_3", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_3", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_row_indices_B_4", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_4", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_4", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_row_indices_B_5", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_5", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_5", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_row_indices_B_6", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_6", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_6", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_row_indices_B_7", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_7", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_7", "role": "q0" }} , 
 	{ "name": "r_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "r_V", "role": "default" }} , 
 	{ "name": "zext_ln837_1", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "zext_ln837_1", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "q0" }} , 
 	{ "name": "accum_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_1", "role": "address0" }} , 
 	{ "name": "accum_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "ce0" }} , 
 	{ "name": "accum_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "we0" }} , 
 	{ "name": "accum_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "d0" }} , 
 	{ "name": "accum_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "q0" }} , 
 	{ "name": "accum_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_2", "role": "address0" }} , 
 	{ "name": "accum_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "ce0" }} , 
 	{ "name": "accum_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "we0" }} , 
 	{ "name": "accum_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "d0" }} , 
 	{ "name": "accum_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "q0" }} , 
 	{ "name": "accum_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_3", "role": "address0" }} , 
 	{ "name": "accum_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "ce0" }} , 
 	{ "name": "accum_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "we0" }} , 
 	{ "name": "accum_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "d0" }} , 
 	{ "name": "accum_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "q0" }} , 
 	{ "name": "accum_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_4", "role": "address0" }} , 
 	{ "name": "accum_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_4", "role": "ce0" }} , 
 	{ "name": "accum_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_4", "role": "we0" }} , 
 	{ "name": "accum_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_4", "role": "d0" }} , 
 	{ "name": "accum_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_4", "role": "q0" }} , 
 	{ "name": "accum_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_5", "role": "address0" }} , 
 	{ "name": "accum_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_5", "role": "ce0" }} , 
 	{ "name": "accum_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_5", "role": "we0" }} , 
 	{ "name": "accum_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_5", "role": "d0" }} , 
 	{ "name": "accum_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_5", "role": "q0" }} , 
 	{ "name": "accum_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_6", "role": "address0" }} , 
 	{ "name": "accum_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_6", "role": "ce0" }} , 
 	{ "name": "accum_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_6", "role": "we0" }} , 
 	{ "name": "accum_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_6", "role": "d0" }} , 
 	{ "name": "accum_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_6", "role": "q0" }} , 
 	{ "name": "accum_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_7", "role": "address0" }} , 
 	{ "name": "accum_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_7", "role": "ce0" }} , 
 	{ "name": "accum_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_7", "role": "we0" }} , 
 	{ "name": "accum_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_7", "role": "d0" }} , 
 	{ "name": "accum_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_7", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln87", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln87_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_7", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_16_1_1_U178", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U179", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_16_1_1_U180", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_27s_32_4_1_U181", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9 {
		sext_ln87 {Type I LastRead 0 FirstWrite -1}
		sext_ln87_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_1 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_2 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_3 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_4 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_5 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_6 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_7 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_8 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_9 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_10 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_11 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_12 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_13 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_14 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_15 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_1 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_2 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_3 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_4 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_5 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_6 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_7 {Type I LastRead 1 FirstWrite -1}
		r_V {Type I LastRead 0 FirstWrite -1}
		zext_ln837_1 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 3 FirstWrite 5}
		accum_V_1 {Type IO LastRead 3 FirstWrite 5}
		accum_V_2 {Type IO LastRead 3 FirstWrite 5}
		accum_V_3 {Type IO LastRead 3 FirstWrite 5}
		accum_V_4 {Type IO LastRead 3 FirstWrite 5}
		accum_V_5 {Type IO LastRead 3 FirstWrite 5}
		accum_V_6 {Type IO LastRead 3 FirstWrite 5}
		accum_V_7 {Type IO LastRead 3 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "1027"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "1027"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln87 { ap_none {  { sext_ln87 in_data 0 32 } } }
	sext_ln87_1 { ap_none {  { sext_ln87_1 in_data 0 32 } } }
	local_values_B_V { ap_memory {  { local_values_B_V_address0 mem_address 1 8 }  { local_values_B_V_ce0 mem_ce 1 1 }  { local_values_B_V_q0 in_data 0 16 } } }
	local_values_B_V_1 { ap_memory {  { local_values_B_V_1_address0 mem_address 1 8 }  { local_values_B_V_1_ce0 mem_ce 1 1 }  { local_values_B_V_1_q0 in_data 0 16 } } }
	local_values_B_V_2 { ap_memory {  { local_values_B_V_2_address0 mem_address 1 8 }  { local_values_B_V_2_ce0 mem_ce 1 1 }  { local_values_B_V_2_q0 in_data 0 16 } } }
	local_values_B_V_3 { ap_memory {  { local_values_B_V_3_address0 mem_address 1 8 }  { local_values_B_V_3_ce0 mem_ce 1 1 }  { local_values_B_V_3_q0 in_data 0 16 } } }
	local_values_B_V_4 { ap_memory {  { local_values_B_V_4_address0 mem_address 1 8 }  { local_values_B_V_4_ce0 mem_ce 1 1 }  { local_values_B_V_4_q0 in_data 0 16 } } }
	local_values_B_V_5 { ap_memory {  { local_values_B_V_5_address0 mem_address 1 8 }  { local_values_B_V_5_ce0 mem_ce 1 1 }  { local_values_B_V_5_q0 in_data 0 16 } } }
	local_values_B_V_6 { ap_memory {  { local_values_B_V_6_address0 mem_address 1 8 }  { local_values_B_V_6_ce0 mem_ce 1 1 }  { local_values_B_V_6_q0 in_data 0 16 } } }
	local_values_B_V_7 { ap_memory {  { local_values_B_V_7_address0 mem_address 1 8 }  { local_values_B_V_7_ce0 mem_ce 1 1 }  { local_values_B_V_7_q0 in_data 0 16 } } }
	local_values_B_V_8 { ap_memory {  { local_values_B_V_8_address0 mem_address 1 8 }  { local_values_B_V_8_ce0 mem_ce 1 1 }  { local_values_B_V_8_q0 in_data 0 16 } } }
	local_values_B_V_9 { ap_memory {  { local_values_B_V_9_address0 mem_address 1 8 }  { local_values_B_V_9_ce0 mem_ce 1 1 }  { local_values_B_V_9_q0 in_data 0 16 } } }
	local_values_B_V_10 { ap_memory {  { local_values_B_V_10_address0 mem_address 1 8 }  { local_values_B_V_10_ce0 mem_ce 1 1 }  { local_values_B_V_10_q0 in_data 0 16 } } }
	local_values_B_V_11 { ap_memory {  { local_values_B_V_11_address0 mem_address 1 8 }  { local_values_B_V_11_ce0 mem_ce 1 1 }  { local_values_B_V_11_q0 in_data 0 16 } } }
	local_values_B_V_12 { ap_memory {  { local_values_B_V_12_address0 mem_address 1 8 }  { local_values_B_V_12_ce0 mem_ce 1 1 }  { local_values_B_V_12_q0 in_data 0 16 } } }
	local_values_B_V_13 { ap_memory {  { local_values_B_V_13_address0 mem_address 1 8 }  { local_values_B_V_13_ce0 mem_ce 1 1 }  { local_values_B_V_13_q0 in_data 0 16 } } }
	local_values_B_V_14 { ap_memory {  { local_values_B_V_14_address0 mem_address 1 8 }  { local_values_B_V_14_ce0 mem_ce 1 1 }  { local_values_B_V_14_q0 in_data 0 16 } } }
	local_values_B_V_15 { ap_memory {  { local_values_B_V_15_address0 mem_address 1 8 }  { local_values_B_V_15_ce0 mem_ce 1 1 }  { local_values_B_V_15_q0 in_data 0 16 } } }
	local_row_indices_B { ap_memory {  { local_row_indices_B_address0 mem_address 1 9 }  { local_row_indices_B_ce0 mem_ce 1 1 }  { local_row_indices_B_q0 in_data 0 32 } } }
	local_row_indices_B_1 { ap_memory {  { local_row_indices_B_1_address0 mem_address 1 9 }  { local_row_indices_B_1_ce0 mem_ce 1 1 }  { local_row_indices_B_1_q0 in_data 0 32 } } }
	local_row_indices_B_2 { ap_memory {  { local_row_indices_B_2_address0 mem_address 1 9 }  { local_row_indices_B_2_ce0 mem_ce 1 1 }  { local_row_indices_B_2_q0 in_data 0 32 } } }
	local_row_indices_B_3 { ap_memory {  { local_row_indices_B_3_address0 mem_address 1 9 }  { local_row_indices_B_3_ce0 mem_ce 1 1 }  { local_row_indices_B_3_q0 in_data 0 32 } } }
	local_row_indices_B_4 { ap_memory {  { local_row_indices_B_4_address0 mem_address 1 9 }  { local_row_indices_B_4_ce0 mem_ce 1 1 }  { local_row_indices_B_4_q0 in_data 0 32 } } }
	local_row_indices_B_5 { ap_memory {  { local_row_indices_B_5_address0 mem_address 1 9 }  { local_row_indices_B_5_ce0 mem_ce 1 1 }  { local_row_indices_B_5_q0 in_data 0 32 } } }
	local_row_indices_B_6 { ap_memory {  { local_row_indices_B_6_address0 mem_address 1 9 }  { local_row_indices_B_6_ce0 mem_ce 1 1 }  { local_row_indices_B_6_q0 in_data 0 32 } } }
	local_row_indices_B_7 { ap_memory {  { local_row_indices_B_7_address0 mem_address 1 9 }  { local_row_indices_B_7_ce0 mem_ce 1 1 }  { local_row_indices_B_7_q0 in_data 0 32 } } }
	r_V { ap_none {  { r_V in_data 0 16 } } }
	zext_ln837_1 { ap_none {  { zext_ln837_1 in_data 0 9 } } }
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 9 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_q0 in_data 0 16 } } }
	accum_V_1 { ap_memory {  { accum_V_1_address0 mem_address 1 9 }  { accum_V_1_ce0 mem_ce 1 1 }  { accum_V_1_we0 mem_we 1 1 }  { accum_V_1_d0 mem_din 1 16 }  { accum_V_1_q0 in_data 0 16 } } }
	accum_V_2 { ap_memory {  { accum_V_2_address0 mem_address 1 9 }  { accum_V_2_ce0 mem_ce 1 1 }  { accum_V_2_we0 mem_we 1 1 }  { accum_V_2_d0 mem_din 1 16 }  { accum_V_2_q0 in_data 0 16 } } }
	accum_V_3 { ap_memory {  { accum_V_3_address0 mem_address 1 9 }  { accum_V_3_ce0 mem_ce 1 1 }  { accum_V_3_we0 mem_we 1 1 }  { accum_V_3_d0 mem_din 1 16 }  { accum_V_3_q0 in_data 0 16 } } }
	accum_V_4 { ap_memory {  { accum_V_4_address0 mem_address 1 9 }  { accum_V_4_ce0 mem_ce 1 1 }  { accum_V_4_we0 mem_we 1 1 }  { accum_V_4_d0 mem_din 1 16 }  { accum_V_4_q0 in_data 0 16 } } }
	accum_V_5 { ap_memory {  { accum_V_5_address0 mem_address 1 9 }  { accum_V_5_ce0 mem_ce 1 1 }  { accum_V_5_we0 mem_we 1 1 }  { accum_V_5_d0 mem_din 1 16 }  { accum_V_5_q0 in_data 0 16 } } }
	accum_V_6 { ap_memory {  { accum_V_6_address0 mem_address 1 9 }  { accum_V_6_ce0 mem_ce 1 1 }  { accum_V_6_we0 mem_we 1 1 }  { accum_V_6_d0 mem_din 1 16 }  { accum_V_6_q0 in_data 0 16 } } }
	accum_V_7 { ap_memory {  { accum_V_7_address0 mem_address 1 9 }  { accum_V_7_ce0 mem_ce 1 1 }  { accum_V_7_we0 mem_we 1 1 }  { accum_V_7_d0 mem_din 1 16 }  { accum_V_7_q0 in_data 0 16 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln87 int 32 regular  }
	{ sext_ln87_1 int 32 regular  }
	{ local_values_B_V int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ local_values_B_V_1 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ local_values_B_V_2 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ local_values_B_V_3 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ local_row_indices_B int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ local_row_indices_B_1 int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ local_row_indices_B_2 int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ local_row_indices_B_3 int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ r_V int 16 regular  }
	{ zext_ln837_1 int 10 regular  }
	{ accum_V int 16 regular {array 1024 { 2 3 } 1 1 }  }
	{ accum_V_1 int 16 regular {array 1024 { 2 3 } 1 1 }  }
	{ accum_V_2 int 16 regular {array 1024 { 2 3 } 1 1 }  }
	{ accum_V_3 int 16 regular {array 1024 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln87", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln87_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "r_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837_1", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln87 sc_in sc_lv 32 signal 0 } 
	{ sext_ln87_1 sc_in sc_lv 32 signal 1 } 
	{ local_values_B_V_address0 sc_out sc_lv 10 signal 2 } 
	{ local_values_B_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_values_B_V_q0 sc_in sc_lv 16 signal 2 } 
	{ local_values_B_V_1_address0 sc_out sc_lv 10 signal 3 } 
	{ local_values_B_V_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_values_B_V_1_q0 sc_in sc_lv 16 signal 3 } 
	{ local_values_B_V_2_address0 sc_out sc_lv 10 signal 4 } 
	{ local_values_B_V_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_values_B_V_2_q0 sc_in sc_lv 16 signal 4 } 
	{ local_values_B_V_3_address0 sc_out sc_lv 10 signal 5 } 
	{ local_values_B_V_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ local_values_B_V_3_q0 sc_in sc_lv 16 signal 5 } 
	{ local_row_indices_B_address0 sc_out sc_lv 10 signal 6 } 
	{ local_row_indices_B_ce0 sc_out sc_logic 1 signal 6 } 
	{ local_row_indices_B_q0 sc_in sc_lv 32 signal 6 } 
	{ local_row_indices_B_1_address0 sc_out sc_lv 10 signal 7 } 
	{ local_row_indices_B_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ local_row_indices_B_1_q0 sc_in sc_lv 32 signal 7 } 
	{ local_row_indices_B_2_address0 sc_out sc_lv 10 signal 8 } 
	{ local_row_indices_B_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ local_row_indices_B_2_q0 sc_in sc_lv 32 signal 8 } 
	{ local_row_indices_B_3_address0 sc_out sc_lv 10 signal 9 } 
	{ local_row_indices_B_3_ce0 sc_out sc_logic 1 signal 9 } 
	{ local_row_indices_B_3_q0 sc_in sc_lv 32 signal 9 } 
	{ r_V sc_in sc_lv 16 signal 10 } 
	{ zext_ln837_1 sc_in sc_lv 10 signal 11 } 
	{ accum_V_address0 sc_out sc_lv 10 signal 12 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 12 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 12 } 
	{ accum_V_q0 sc_in sc_lv 16 signal 12 } 
	{ accum_V_1_address0 sc_out sc_lv 10 signal 13 } 
	{ accum_V_1_ce0 sc_out sc_logic 1 signal 13 } 
	{ accum_V_1_we0 sc_out sc_logic 1 signal 13 } 
	{ accum_V_1_d0 sc_out sc_lv 16 signal 13 } 
	{ accum_V_1_q0 sc_in sc_lv 16 signal 13 } 
	{ accum_V_2_address0 sc_out sc_lv 10 signal 14 } 
	{ accum_V_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ accum_V_2_we0 sc_out sc_logic 1 signal 14 } 
	{ accum_V_2_d0 sc_out sc_lv 16 signal 14 } 
	{ accum_V_2_q0 sc_in sc_lv 16 signal 14 } 
	{ accum_V_3_address0 sc_out sc_lv 10 signal 15 } 
	{ accum_V_3_ce0 sc_out sc_logic 1 signal 15 } 
	{ accum_V_3_we0 sc_out sc_logic 1 signal 15 } 
	{ accum_V_3_d0 sc_out sc_lv 16 signal 15 } 
	{ accum_V_3_q0 sc_in sc_lv 16 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln87", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln87", "role": "default" }} , 
 	{ "name": "sext_ln87_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln87_1", "role": "default" }} , 
 	{ "name": "local_values_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "address0" }} , 
 	{ "name": "local_values_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "q0" }} , 
 	{ "name": "local_values_B_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_values_B_V_1", "role": "address0" }} , 
 	{ "name": "local_values_B_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_1", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_1", "role": "q0" }} , 
 	{ "name": "local_values_B_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_values_B_V_2", "role": "address0" }} , 
 	{ "name": "local_values_B_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_2", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_2", "role": "q0" }} , 
 	{ "name": "local_values_B_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_values_B_V_3", "role": "address0" }} , 
 	{ "name": "local_values_B_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_3", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_3", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_row_indices_B_1", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_1", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_1", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_row_indices_B_2", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_2", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_2", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "local_row_indices_B_3", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_3", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_3", "role": "q0" }} , 
 	{ "name": "r_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "r_V", "role": "default" }} , 
 	{ "name": "zext_ln837_1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln837_1", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "q0" }} , 
 	{ "name": "accum_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_1", "role": "address0" }} , 
 	{ "name": "accum_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "ce0" }} , 
 	{ "name": "accum_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "we0" }} , 
 	{ "name": "accum_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "d0" }} , 
 	{ "name": "accum_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "q0" }} , 
 	{ "name": "accum_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_2", "role": "address0" }} , 
 	{ "name": "accum_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "ce0" }} , 
 	{ "name": "accum_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "we0" }} , 
 	{ "name": "accum_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "d0" }} , 
 	{ "name": "accum_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "q0" }} , 
 	{ "name": "accum_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_3", "role": "address0" }} , 
 	{ "name": "accum_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "ce0" }} , 
 	{ "name": "accum_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "we0" }} , 
 	{ "name": "accum_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "d0" }} , 
 	{ "name": "accum_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln87", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln87_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U193", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U194", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U195", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_27s_32_4_1_U196", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9 {
		sext_ln87 {Type I LastRead 0 FirstWrite -1}
		sext_ln87_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_1 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_2 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_3 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_1 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_2 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_3 {Type I LastRead 1 FirstWrite -1}
		r_V {Type I LastRead 0 FirstWrite -1}
		zext_ln837_1 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 3 FirstWrite 5}
		accum_V_1 {Type IO LastRead 3 FirstWrite 5}
		accum_V_2 {Type IO LastRead 3 FirstWrite 5}
		accum_V_3 {Type IO LastRead 3 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "1027"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "1027"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln87 { ap_none {  { sext_ln87 in_data 0 32 } } }
	sext_ln87_1 { ap_none {  { sext_ln87_1 in_data 0 32 } } }
	local_values_B_V { ap_memory {  { local_values_B_V_address0 mem_address 1 10 }  { local_values_B_V_ce0 mem_ce 1 1 }  { local_values_B_V_q0 in_data 0 16 } } }
	local_values_B_V_1 { ap_memory {  { local_values_B_V_1_address0 mem_address 1 10 }  { local_values_B_V_1_ce0 mem_ce 1 1 }  { local_values_B_V_1_q0 in_data 0 16 } } }
	local_values_B_V_2 { ap_memory {  { local_values_B_V_2_address0 mem_address 1 10 }  { local_values_B_V_2_ce0 mem_ce 1 1 }  { local_values_B_V_2_q0 in_data 0 16 } } }
	local_values_B_V_3 { ap_memory {  { local_values_B_V_3_address0 mem_address 1 10 }  { local_values_B_V_3_ce0 mem_ce 1 1 }  { local_values_B_V_3_q0 in_data 0 16 } } }
	local_row_indices_B { ap_memory {  { local_row_indices_B_address0 mem_address 1 10 }  { local_row_indices_B_ce0 mem_ce 1 1 }  { local_row_indices_B_q0 in_data 0 32 } } }
	local_row_indices_B_1 { ap_memory {  { local_row_indices_B_1_address0 mem_address 1 10 }  { local_row_indices_B_1_ce0 mem_ce 1 1 }  { local_row_indices_B_1_q0 in_data 0 32 } } }
	local_row_indices_B_2 { ap_memory {  { local_row_indices_B_2_address0 mem_address 1 10 }  { local_row_indices_B_2_ce0 mem_ce 1 1 }  { local_row_indices_B_2_q0 in_data 0 32 } } }
	local_row_indices_B_3 { ap_memory {  { local_row_indices_B_3_address0 mem_address 1 10 }  { local_row_indices_B_3_ce0 mem_ce 1 1 }  { local_row_indices_B_3_q0 in_data 0 32 } } }
	r_V { ap_none {  { r_V in_data 0 16 } } }
	zext_ln837_1 { ap_none {  { zext_ln837_1 in_data 0 10 } } }
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 10 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_q0 in_data 0 16 } } }
	accum_V_1 { ap_memory {  { accum_V_1_address0 mem_address 1 10 }  { accum_V_1_ce0 mem_ce 1 1 }  { accum_V_1_we0 mem_we 1 1 }  { accum_V_1_d0 mem_din 1 16 }  { accum_V_1_q0 in_data 0 16 } } }
	accum_V_2 { ap_memory {  { accum_V_2_address0 mem_address 1 10 }  { accum_V_2_ce0 mem_ce 1 1 }  { accum_V_2_we0 mem_we 1 1 }  { accum_V_2_d0 mem_din 1 16 }  { accum_V_2_q0 in_data 0 16 } } }
	accum_V_3 { ap_memory {  { accum_V_3_address0 mem_address 1 10 }  { accum_V_3_ce0 mem_ce 1 1 }  { accum_V_3_we0 mem_we 1 1 }  { accum_V_3_d0 mem_din 1 16 }  { accum_V_3_q0 in_data 0 16 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln87 int 32 regular  }
	{ sext_ln87_1 int 32 regular  }
	{ local_values_B_V int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_1 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_2 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_3 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_4 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_5 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_6 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_7 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_8 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_9 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_10 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_11 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_12 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_13 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_14 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_values_B_V_15 int 16 regular {array 256 { 1 3 } 1 1 }  }
	{ local_row_indices_B int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ local_row_indices_B_1 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ local_row_indices_B_2 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ local_row_indices_B_3 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ local_row_indices_B_4 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ local_row_indices_B_5 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ local_row_indices_B_6 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ local_row_indices_B_7 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ r_V int 16 regular  }
	{ zext_ln837_1 int 9 regular  }
	{ accum_V int 16 regular {array 512 { 2 3 } 1 1 }  }
	{ accum_V_1 int 16 regular {array 512 { 2 3 } 1 1 }  }
	{ accum_V_2 int 16 regular {array 512 { 2 3 } 1 1 }  }
	{ accum_V_3 int 16 regular {array 512 { 2 3 } 1 1 }  }
	{ accum_V_4 int 16 regular {array 512 { 2 3 } 1 1 }  }
	{ accum_V_5 int 16 regular {array 512 { 2 3 } 1 1 }  }
	{ accum_V_6 int 16 regular {array 512 { 2 3 } 1 1 }  }
	{ accum_V_7 int 16 regular {array 512 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln87", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln87_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_10", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_11", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_12", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_13", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_14", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V_15", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "r_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837_1", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "accum_V_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 122
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln87 sc_in sc_lv 32 signal 0 } 
	{ sext_ln87_1 sc_in sc_lv 32 signal 1 } 
	{ local_values_B_V_address0 sc_out sc_lv 8 signal 2 } 
	{ local_values_B_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_values_B_V_q0 sc_in sc_lv 16 signal 2 } 
	{ local_values_B_V_1_address0 sc_out sc_lv 8 signal 3 } 
	{ local_values_B_V_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_values_B_V_1_q0 sc_in sc_lv 16 signal 3 } 
	{ local_values_B_V_2_address0 sc_out sc_lv 8 signal 4 } 
	{ local_values_B_V_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_values_B_V_2_q0 sc_in sc_lv 16 signal 4 } 
	{ local_values_B_V_3_address0 sc_out sc_lv 8 signal 5 } 
	{ local_values_B_V_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ local_values_B_V_3_q0 sc_in sc_lv 16 signal 5 } 
	{ local_values_B_V_4_address0 sc_out sc_lv 8 signal 6 } 
	{ local_values_B_V_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ local_values_B_V_4_q0 sc_in sc_lv 16 signal 6 } 
	{ local_values_B_V_5_address0 sc_out sc_lv 8 signal 7 } 
	{ local_values_B_V_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ local_values_B_V_5_q0 sc_in sc_lv 16 signal 7 } 
	{ local_values_B_V_6_address0 sc_out sc_lv 8 signal 8 } 
	{ local_values_B_V_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ local_values_B_V_6_q0 sc_in sc_lv 16 signal 8 } 
	{ local_values_B_V_7_address0 sc_out sc_lv 8 signal 9 } 
	{ local_values_B_V_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ local_values_B_V_7_q0 sc_in sc_lv 16 signal 9 } 
	{ local_values_B_V_8_address0 sc_out sc_lv 8 signal 10 } 
	{ local_values_B_V_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ local_values_B_V_8_q0 sc_in sc_lv 16 signal 10 } 
	{ local_values_B_V_9_address0 sc_out sc_lv 8 signal 11 } 
	{ local_values_B_V_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ local_values_B_V_9_q0 sc_in sc_lv 16 signal 11 } 
	{ local_values_B_V_10_address0 sc_out sc_lv 8 signal 12 } 
	{ local_values_B_V_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ local_values_B_V_10_q0 sc_in sc_lv 16 signal 12 } 
	{ local_values_B_V_11_address0 sc_out sc_lv 8 signal 13 } 
	{ local_values_B_V_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ local_values_B_V_11_q0 sc_in sc_lv 16 signal 13 } 
	{ local_values_B_V_12_address0 sc_out sc_lv 8 signal 14 } 
	{ local_values_B_V_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ local_values_B_V_12_q0 sc_in sc_lv 16 signal 14 } 
	{ local_values_B_V_13_address0 sc_out sc_lv 8 signal 15 } 
	{ local_values_B_V_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ local_values_B_V_13_q0 sc_in sc_lv 16 signal 15 } 
	{ local_values_B_V_14_address0 sc_out sc_lv 8 signal 16 } 
	{ local_values_B_V_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ local_values_B_V_14_q0 sc_in sc_lv 16 signal 16 } 
	{ local_values_B_V_15_address0 sc_out sc_lv 8 signal 17 } 
	{ local_values_B_V_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ local_values_B_V_15_q0 sc_in sc_lv 16 signal 17 } 
	{ local_row_indices_B_address0 sc_out sc_lv 9 signal 18 } 
	{ local_row_indices_B_ce0 sc_out sc_logic 1 signal 18 } 
	{ local_row_indices_B_q0 sc_in sc_lv 32 signal 18 } 
	{ local_row_indices_B_1_address0 sc_out sc_lv 9 signal 19 } 
	{ local_row_indices_B_1_ce0 sc_out sc_logic 1 signal 19 } 
	{ local_row_indices_B_1_q0 sc_in sc_lv 32 signal 19 } 
	{ local_row_indices_B_2_address0 sc_out sc_lv 9 signal 20 } 
	{ local_row_indices_B_2_ce0 sc_out sc_logic 1 signal 20 } 
	{ local_row_indices_B_2_q0 sc_in sc_lv 32 signal 20 } 
	{ local_row_indices_B_3_address0 sc_out sc_lv 9 signal 21 } 
	{ local_row_indices_B_3_ce0 sc_out sc_logic 1 signal 21 } 
	{ local_row_indices_B_3_q0 sc_in sc_lv 32 signal 21 } 
	{ local_row_indices_B_4_address0 sc_out sc_lv 9 signal 22 } 
	{ local_row_indices_B_4_ce0 sc_out sc_logic 1 signal 22 } 
	{ local_row_indices_B_4_q0 sc_in sc_lv 32 signal 22 } 
	{ local_row_indices_B_5_address0 sc_out sc_lv 9 signal 23 } 
	{ local_row_indices_B_5_ce0 sc_out sc_logic 1 signal 23 } 
	{ local_row_indices_B_5_q0 sc_in sc_lv 32 signal 23 } 
	{ local_row_indices_B_6_address0 sc_out sc_lv 9 signal 24 } 
	{ local_row_indices_B_6_ce0 sc_out sc_logic 1 signal 24 } 
	{ local_row_indices_B_6_q0 sc_in sc_lv 32 signal 24 } 
	{ local_row_indices_B_7_address0 sc_out sc_lv 9 signal 25 } 
	{ local_row_indices_B_7_ce0 sc_out sc_logic 1 signal 25 } 
	{ local_row_indices_B_7_q0 sc_in sc_lv 32 signal 25 } 
	{ r_V sc_in sc_lv 16 signal 26 } 
	{ zext_ln837_1 sc_in sc_lv 9 signal 27 } 
	{ accum_V_address0 sc_out sc_lv 9 signal 28 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 28 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 28 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 28 } 
	{ accum_V_q0 sc_in sc_lv 16 signal 28 } 
	{ accum_V_1_address0 sc_out sc_lv 9 signal 29 } 
	{ accum_V_1_ce0 sc_out sc_logic 1 signal 29 } 
	{ accum_V_1_we0 sc_out sc_logic 1 signal 29 } 
	{ accum_V_1_d0 sc_out sc_lv 16 signal 29 } 
	{ accum_V_1_q0 sc_in sc_lv 16 signal 29 } 
	{ accum_V_2_address0 sc_out sc_lv 9 signal 30 } 
	{ accum_V_2_ce0 sc_out sc_logic 1 signal 30 } 
	{ accum_V_2_we0 sc_out sc_logic 1 signal 30 } 
	{ accum_V_2_d0 sc_out sc_lv 16 signal 30 } 
	{ accum_V_2_q0 sc_in sc_lv 16 signal 30 } 
	{ accum_V_3_address0 sc_out sc_lv 9 signal 31 } 
	{ accum_V_3_ce0 sc_out sc_logic 1 signal 31 } 
	{ accum_V_3_we0 sc_out sc_logic 1 signal 31 } 
	{ accum_V_3_d0 sc_out sc_lv 16 signal 31 } 
	{ accum_V_3_q0 sc_in sc_lv 16 signal 31 } 
	{ accum_V_4_address0 sc_out sc_lv 9 signal 32 } 
	{ accum_V_4_ce0 sc_out sc_logic 1 signal 32 } 
	{ accum_V_4_we0 sc_out sc_logic 1 signal 32 } 
	{ accum_V_4_d0 sc_out sc_lv 16 signal 32 } 
	{ accum_V_4_q0 sc_in sc_lv 16 signal 32 } 
	{ accum_V_5_address0 sc_out sc_lv 9 signal 33 } 
	{ accum_V_5_ce0 sc_out sc_logic 1 signal 33 } 
	{ accum_V_5_we0 sc_out sc_logic 1 signal 33 } 
	{ accum_V_5_d0 sc_out sc_lv 16 signal 33 } 
	{ accum_V_5_q0 sc_in sc_lv 16 signal 33 } 
	{ accum_V_6_address0 sc_out sc_lv 9 signal 34 } 
	{ accum_V_6_ce0 sc_out sc_logic 1 signal 34 } 
	{ accum_V_6_we0 sc_out sc_logic 1 signal 34 } 
	{ accum_V_6_d0 sc_out sc_lv 16 signal 34 } 
	{ accum_V_6_q0 sc_in sc_lv 16 signal 34 } 
	{ accum_V_7_address0 sc_out sc_lv 9 signal 35 } 
	{ accum_V_7_ce0 sc_out sc_logic 1 signal 35 } 
	{ accum_V_7_we0 sc_out sc_logic 1 signal 35 } 
	{ accum_V_7_d0 sc_out sc_lv 16 signal 35 } 
	{ accum_V_7_q0 sc_in sc_lv 16 signal 35 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln87", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln87", "role": "default" }} , 
 	{ "name": "sext_ln87_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln87_1", "role": "default" }} , 
 	{ "name": "local_values_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "address0" }} , 
 	{ "name": "local_values_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "q0" }} , 
 	{ "name": "local_values_B_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_1", "role": "address0" }} , 
 	{ "name": "local_values_B_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_1", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_1", "role": "q0" }} , 
 	{ "name": "local_values_B_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_2", "role": "address0" }} , 
 	{ "name": "local_values_B_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_2", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_2", "role": "q0" }} , 
 	{ "name": "local_values_B_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_3", "role": "address0" }} , 
 	{ "name": "local_values_B_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_3", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_3", "role": "q0" }} , 
 	{ "name": "local_values_B_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_4", "role": "address0" }} , 
 	{ "name": "local_values_B_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_4", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_4", "role": "q0" }} , 
 	{ "name": "local_values_B_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_5", "role": "address0" }} , 
 	{ "name": "local_values_B_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_5", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_5", "role": "q0" }} , 
 	{ "name": "local_values_B_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_6", "role": "address0" }} , 
 	{ "name": "local_values_B_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_6", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_6", "role": "q0" }} , 
 	{ "name": "local_values_B_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_7", "role": "address0" }} , 
 	{ "name": "local_values_B_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_7", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_7", "role": "q0" }} , 
 	{ "name": "local_values_B_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_8", "role": "address0" }} , 
 	{ "name": "local_values_B_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_8", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_8", "role": "q0" }} , 
 	{ "name": "local_values_B_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_9", "role": "address0" }} , 
 	{ "name": "local_values_B_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_9", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_9", "role": "q0" }} , 
 	{ "name": "local_values_B_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_10", "role": "address0" }} , 
 	{ "name": "local_values_B_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_10", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_10", "role": "q0" }} , 
 	{ "name": "local_values_B_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_11", "role": "address0" }} , 
 	{ "name": "local_values_B_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_11", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_11", "role": "q0" }} , 
 	{ "name": "local_values_B_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_12", "role": "address0" }} , 
 	{ "name": "local_values_B_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_12", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_12", "role": "q0" }} , 
 	{ "name": "local_values_B_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_13", "role": "address0" }} , 
 	{ "name": "local_values_B_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_13", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_13", "role": "q0" }} , 
 	{ "name": "local_values_B_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_14", "role": "address0" }} , 
 	{ "name": "local_values_B_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_14", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_14", "role": "q0" }} , 
 	{ "name": "local_values_B_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_values_B_V_15", "role": "address0" }} , 
 	{ "name": "local_values_B_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V_15", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V_15", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_row_indices_B_1", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_1", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_1", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_row_indices_B_2", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_2", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_2", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_row_indices_B_3", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_3", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_3", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_row_indices_B_4", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_4", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_4", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_row_indices_B_5", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_5", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_5", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_row_indices_B_6", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_6", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_6", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "local_row_indices_B_7", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B_7", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_row_indices_B_7", "role": "q0" }} , 
 	{ "name": "r_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "r_V", "role": "default" }} , 
 	{ "name": "zext_ln837_1", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "zext_ln837_1", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "q0" }} , 
 	{ "name": "accum_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_1", "role": "address0" }} , 
 	{ "name": "accum_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "ce0" }} , 
 	{ "name": "accum_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "we0" }} , 
 	{ "name": "accum_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "d0" }} , 
 	{ "name": "accum_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "q0" }} , 
 	{ "name": "accum_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_2", "role": "address0" }} , 
 	{ "name": "accum_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "ce0" }} , 
 	{ "name": "accum_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "we0" }} , 
 	{ "name": "accum_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "d0" }} , 
 	{ "name": "accum_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "q0" }} , 
 	{ "name": "accum_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_3", "role": "address0" }} , 
 	{ "name": "accum_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "ce0" }} , 
 	{ "name": "accum_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "we0" }} , 
 	{ "name": "accum_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "d0" }} , 
 	{ "name": "accum_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "q0" }} , 
 	{ "name": "accum_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_4", "role": "address0" }} , 
 	{ "name": "accum_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_4", "role": "ce0" }} , 
 	{ "name": "accum_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_4", "role": "we0" }} , 
 	{ "name": "accum_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_4", "role": "d0" }} , 
 	{ "name": "accum_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_4", "role": "q0" }} , 
 	{ "name": "accum_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_5", "role": "address0" }} , 
 	{ "name": "accum_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_5", "role": "ce0" }} , 
 	{ "name": "accum_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_5", "role": "we0" }} , 
 	{ "name": "accum_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_5", "role": "d0" }} , 
 	{ "name": "accum_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_5", "role": "q0" }} , 
 	{ "name": "accum_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_6", "role": "address0" }} , 
 	{ "name": "accum_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_6", "role": "ce0" }} , 
 	{ "name": "accum_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_6", "role": "we0" }} , 
 	{ "name": "accum_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_6", "role": "d0" }} , 
 	{ "name": "accum_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_6", "role": "q0" }} , 
 	{ "name": "accum_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_7", "role": "address0" }} , 
 	{ "name": "accum_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_7", "role": "ce0" }} , 
 	{ "name": "accum_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_7", "role": "we0" }} , 
 	{ "name": "accum_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_7", "role": "d0" }} , 
 	{ "name": "accum_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_7", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln87", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln87_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_7", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_16_1_1_U178", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U179", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_16_1_1_U180", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_27s_32_4_1_U181", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9 {
		sext_ln87 {Type I LastRead 0 FirstWrite -1}
		sext_ln87_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_1 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_2 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_3 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_4 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_5 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_6 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_7 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_8 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_9 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_10 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_11 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_12 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_13 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_14 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_15 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_1 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_2 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_3 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_4 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_5 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_6 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_7 {Type I LastRead 1 FirstWrite -1}
		r_V {Type I LastRead 0 FirstWrite -1}
		zext_ln837_1 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 3 FirstWrite 5}
		accum_V_1 {Type IO LastRead 3 FirstWrite 5}
		accum_V_2 {Type IO LastRead 3 FirstWrite 5}
		accum_V_3 {Type IO LastRead 3 FirstWrite 5}
		accum_V_4 {Type IO LastRead 3 FirstWrite 5}
		accum_V_5 {Type IO LastRead 3 FirstWrite 5}
		accum_V_6 {Type IO LastRead 3 FirstWrite 5}
		accum_V_7 {Type IO LastRead 3 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "1027"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "1027"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln87 { ap_none {  { sext_ln87 in_data 0 32 } } }
	sext_ln87_1 { ap_none {  { sext_ln87_1 in_data 0 32 } } }
	local_values_B_V { ap_memory {  { local_values_B_V_address0 mem_address 1 8 }  { local_values_B_V_ce0 mem_ce 1 1 }  { local_values_B_V_q0 in_data 0 16 } } }
	local_values_B_V_1 { ap_memory {  { local_values_B_V_1_address0 mem_address 1 8 }  { local_values_B_V_1_ce0 mem_ce 1 1 }  { local_values_B_V_1_q0 in_data 0 16 } } }
	local_values_B_V_2 { ap_memory {  { local_values_B_V_2_address0 mem_address 1 8 }  { local_values_B_V_2_ce0 mem_ce 1 1 }  { local_values_B_V_2_q0 in_data 0 16 } } }
	local_values_B_V_3 { ap_memory {  { local_values_B_V_3_address0 mem_address 1 8 }  { local_values_B_V_3_ce0 mem_ce 1 1 }  { local_values_B_V_3_q0 in_data 0 16 } } }
	local_values_B_V_4 { ap_memory {  { local_values_B_V_4_address0 mem_address 1 8 }  { local_values_B_V_4_ce0 mem_ce 1 1 }  { local_values_B_V_4_q0 in_data 0 16 } } }
	local_values_B_V_5 { ap_memory {  { local_values_B_V_5_address0 mem_address 1 8 }  { local_values_B_V_5_ce0 mem_ce 1 1 }  { local_values_B_V_5_q0 in_data 0 16 } } }
	local_values_B_V_6 { ap_memory {  { local_values_B_V_6_address0 mem_address 1 8 }  { local_values_B_V_6_ce0 mem_ce 1 1 }  { local_values_B_V_6_q0 in_data 0 16 } } }
	local_values_B_V_7 { ap_memory {  { local_values_B_V_7_address0 mem_address 1 8 }  { local_values_B_V_7_ce0 mem_ce 1 1 }  { local_values_B_V_7_q0 in_data 0 16 } } }
	local_values_B_V_8 { ap_memory {  { local_values_B_V_8_address0 mem_address 1 8 }  { local_values_B_V_8_ce0 mem_ce 1 1 }  { local_values_B_V_8_q0 in_data 0 16 } } }
	local_values_B_V_9 { ap_memory {  { local_values_B_V_9_address0 mem_address 1 8 }  { local_values_B_V_9_ce0 mem_ce 1 1 }  { local_values_B_V_9_q0 in_data 0 16 } } }
	local_values_B_V_10 { ap_memory {  { local_values_B_V_10_address0 mem_address 1 8 }  { local_values_B_V_10_ce0 mem_ce 1 1 }  { local_values_B_V_10_q0 in_data 0 16 } } }
	local_values_B_V_11 { ap_memory {  { local_values_B_V_11_address0 mem_address 1 8 }  { local_values_B_V_11_ce0 mem_ce 1 1 }  { local_values_B_V_11_q0 in_data 0 16 } } }
	local_values_B_V_12 { ap_memory {  { local_values_B_V_12_address0 mem_address 1 8 }  { local_values_B_V_12_ce0 mem_ce 1 1 }  { local_values_B_V_12_q0 in_data 0 16 } } }
	local_values_B_V_13 { ap_memory {  { local_values_B_V_13_address0 mem_address 1 8 }  { local_values_B_V_13_ce0 mem_ce 1 1 }  { local_values_B_V_13_q0 in_data 0 16 } } }
	local_values_B_V_14 { ap_memory {  { local_values_B_V_14_address0 mem_address 1 8 }  { local_values_B_V_14_ce0 mem_ce 1 1 }  { local_values_B_V_14_q0 in_data 0 16 } } }
	local_values_B_V_15 { ap_memory {  { local_values_B_V_15_address0 mem_address 1 8 }  { local_values_B_V_15_ce0 mem_ce 1 1 }  { local_values_B_V_15_q0 in_data 0 16 } } }
	local_row_indices_B { ap_memory {  { local_row_indices_B_address0 mem_address 1 9 }  { local_row_indices_B_ce0 mem_ce 1 1 }  { local_row_indices_B_q0 in_data 0 32 } } }
	local_row_indices_B_1 { ap_memory {  { local_row_indices_B_1_address0 mem_address 1 9 }  { local_row_indices_B_1_ce0 mem_ce 1 1 }  { local_row_indices_B_1_q0 in_data 0 32 } } }
	local_row_indices_B_2 { ap_memory {  { local_row_indices_B_2_address0 mem_address 1 9 }  { local_row_indices_B_2_ce0 mem_ce 1 1 }  { local_row_indices_B_2_q0 in_data 0 32 } } }
	local_row_indices_B_3 { ap_memory {  { local_row_indices_B_3_address0 mem_address 1 9 }  { local_row_indices_B_3_ce0 mem_ce 1 1 }  { local_row_indices_B_3_q0 in_data 0 32 } } }
	local_row_indices_B_4 { ap_memory {  { local_row_indices_B_4_address0 mem_address 1 9 }  { local_row_indices_B_4_ce0 mem_ce 1 1 }  { local_row_indices_B_4_q0 in_data 0 32 } } }
	local_row_indices_B_5 { ap_memory {  { local_row_indices_B_5_address0 mem_address 1 9 }  { local_row_indices_B_5_ce0 mem_ce 1 1 }  { local_row_indices_B_5_q0 in_data 0 32 } } }
	local_row_indices_B_6 { ap_memory {  { local_row_indices_B_6_address0 mem_address 1 9 }  { local_row_indices_B_6_ce0 mem_ce 1 1 }  { local_row_indices_B_6_q0 in_data 0 32 } } }
	local_row_indices_B_7 { ap_memory {  { local_row_indices_B_7_address0 mem_address 1 9 }  { local_row_indices_B_7_ce0 mem_ce 1 1 }  { local_row_indices_B_7_q0 in_data 0 32 } } }
	r_V { ap_none {  { r_V in_data 0 16 } } }
	zext_ln837_1 { ap_none {  { zext_ln837_1 in_data 0 9 } } }
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 9 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_q0 in_data 0 16 } } }
	accum_V_1 { ap_memory {  { accum_V_1_address0 mem_address 1 9 }  { accum_V_1_ce0 mem_ce 1 1 }  { accum_V_1_we0 mem_we 1 1 }  { accum_V_1_d0 mem_din 1 16 }  { accum_V_1_q0 in_data 0 16 } } }
	accum_V_2 { ap_memory {  { accum_V_2_address0 mem_address 1 9 }  { accum_V_2_ce0 mem_ce 1 1 }  { accum_V_2_we0 mem_we 1 1 }  { accum_V_2_d0 mem_din 1 16 }  { accum_V_2_q0 in_data 0 16 } } }
	accum_V_3 { ap_memory {  { accum_V_3_address0 mem_address 1 9 }  { accum_V_3_ce0 mem_ce 1 1 }  { accum_V_3_we0 mem_we 1 1 }  { accum_V_3_d0 mem_din 1 16 }  { accum_V_3_q0 in_data 0 16 } } }
	accum_V_4 { ap_memory {  { accum_V_4_address0 mem_address 1 9 }  { accum_V_4_ce0 mem_ce 1 1 }  { accum_V_4_we0 mem_we 1 1 }  { accum_V_4_d0 mem_din 1 16 }  { accum_V_4_q0 in_data 0 16 } } }
	accum_V_5 { ap_memory {  { accum_V_5_address0 mem_address 1 9 }  { accum_V_5_ce0 mem_ce 1 1 }  { accum_V_5_we0 mem_we 1 1 }  { accum_V_5_d0 mem_din 1 16 }  { accum_V_5_q0 in_data 0 16 } } }
	accum_V_6 { ap_memory {  { accum_V_6_address0 mem_address 1 9 }  { accum_V_6_ce0 mem_ce 1 1 }  { accum_V_6_we0 mem_we 1 1 }  { accum_V_6_d0 mem_din 1 16 }  { accum_V_6_q0 in_data 0 16 } } }
	accum_V_7 { ap_memory {  { accum_V_7_address0 mem_address 1 9 }  { accum_V_7_ce0 mem_ce 1 1 }  { accum_V_7_we0 mem_we 1 1 }  { accum_V_7_d0 mem_din 1 16 }  { accum_V_7_q0 in_data 0 16 } } }
}
