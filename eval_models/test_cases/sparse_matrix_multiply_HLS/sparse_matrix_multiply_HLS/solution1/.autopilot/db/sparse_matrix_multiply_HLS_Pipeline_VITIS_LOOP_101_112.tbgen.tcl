set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112}
set C_modelType { void 0 }
set C_modelArgList {
	{ trunc_ln103_1 int 1 regular  }
	{ or_ln99_1 int 6 regular  }
	{ C int 16 regular {array 4096 { 0 0 } 0 1 }  }
	{ trunc_ln103_2 int 2 regular  }
	{ accum_V int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ accum_V_1 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ accum_V_2 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ accum_V_3 int 16 regular {array 1024 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "trunc_ln103_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln99_1", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trunc_ln103_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ trunc_ln103_1 sc_in sc_lv 1 signal 0 } 
	{ or_ln99_1 sc_in sc_lv 6 signal 1 } 
	{ C_address0 sc_out sc_lv 12 signal 2 } 
	{ C_ce0 sc_out sc_logic 1 signal 2 } 
	{ C_we0 sc_out sc_logic 1 signal 2 } 
	{ C_d0 sc_out sc_lv 16 signal 2 } 
	{ C_address1 sc_out sc_lv 12 signal 2 } 
	{ C_ce1 sc_out sc_logic 1 signal 2 } 
	{ C_we1 sc_out sc_logic 1 signal 2 } 
	{ C_d1 sc_out sc_lv 16 signal 2 } 
	{ trunc_ln103_2 sc_in sc_lv 2 signal 3 } 
	{ accum_V_address0 sc_out sc_lv 10 signal 4 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ accum_V_q0 sc_in sc_lv 16 signal 4 } 
	{ accum_V_1_address0 sc_out sc_lv 10 signal 5 } 
	{ accum_V_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ accum_V_1_q0 sc_in sc_lv 16 signal 5 } 
	{ accum_V_2_address0 sc_out sc_lv 10 signal 6 } 
	{ accum_V_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_2_q0 sc_in sc_lv 16 signal 6 } 
	{ accum_V_3_address0 sc_out sc_lv 10 signal 7 } 
	{ accum_V_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ accum_V_3_q0 sc_in sc_lv 16 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "trunc_ln103_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "trunc_ln103_1", "role": "default" }} , 
 	{ "name": "or_ln99_1", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "or_ln99_1", "role": "default" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d0" }} , 
 	{ "name": "C_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address1" }} , 
 	{ "name": "C_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce1" }} , 
 	{ "name": "C_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we1" }} , 
 	{ "name": "C_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d1" }} , 
 	{ "name": "trunc_ln103_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "trunc_ln103_2", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "q0" }} , 
 	{ "name": "accum_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_1", "role": "address0" }} , 
 	{ "name": "accum_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "ce0" }} , 
 	{ "name": "accum_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "q0" }} , 
 	{ "name": "accum_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_2", "role": "address0" }} , 
 	{ "name": "accum_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "ce0" }} , 
 	{ "name": "accum_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "q0" }} , 
 	{ "name": "accum_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_3", "role": "address0" }} , 
 	{ "name": "accum_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "ce0" }} , 
 	{ "name": "accum_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln103_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln99_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trunc_ln103_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112 {
		trunc_ln103_1 {Type I LastRead 0 FirstWrite -1}
		or_ln99_1 {Type I LastRead 0 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}
		trunc_ln103_2 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type I LastRead 0 FirstWrite -1}
		accum_V_1 {Type I LastRead 0 FirstWrite -1}
		accum_V_2 {Type I LastRead 0 FirstWrite -1}
		accum_V_3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	trunc_ln103_1 { ap_none {  { trunc_ln103_1 in_data 0 1 } } }
	or_ln99_1 { ap_none {  { or_ln99_1 in_data 0 6 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 16 }  { C_address1 MemPortADDR2 1 12 }  { C_ce1 MemPortCE2 1 1 }  { C_we1 MemPortWE2 1 1 }  { C_d1 MemPortDIN2 1 16 } } }
	trunc_ln103_2 { ap_none {  { trunc_ln103_2 in_data 0 2 } } }
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 10 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_q0 in_data 0 16 } } }
	accum_V_1 { ap_memory {  { accum_V_1_address0 mem_address 1 10 }  { accum_V_1_ce0 mem_ce 1 1 }  { accum_V_1_q0 in_data 0 16 } } }
	accum_V_2 { ap_memory {  { accum_V_2_address0 mem_address 1 10 }  { accum_V_2_ce0 mem_ce 1 1 }  { accum_V_2_q0 mem_dout 0 16 } } }
	accum_V_3 { ap_memory {  { accum_V_3_address0 mem_address 1 10 }  { accum_V_3_ce0 mem_ce 1 1 }  { accum_V_3_q0 mem_dout 0 16 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112}
set C_modelType { void 0 }
set C_modelArgList {
	{ trunc_ln103_1 int 1 regular  }
	{ or_ln99_1 int 6 regular  }
	{ C int 16 regular {array 4096 { 0 0 } 0 1 }  }
	{ trunc_ln103_2 int 2 regular  }
	{ accum_V int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ accum_V_1 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ accum_V_2 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ accum_V_3 int 16 regular {array 1024 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "trunc_ln103_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln99_1", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trunc_ln103_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ trunc_ln103_1 sc_in sc_lv 1 signal 0 } 
	{ or_ln99_1 sc_in sc_lv 6 signal 1 } 
	{ C_address0 sc_out sc_lv 12 signal 2 } 
	{ C_ce0 sc_out sc_logic 1 signal 2 } 
	{ C_we0 sc_out sc_logic 1 signal 2 } 
	{ C_d0 sc_out sc_lv 16 signal 2 } 
	{ C_address1 sc_out sc_lv 12 signal 2 } 
	{ C_ce1 sc_out sc_logic 1 signal 2 } 
	{ C_we1 sc_out sc_logic 1 signal 2 } 
	{ C_d1 sc_out sc_lv 16 signal 2 } 
	{ trunc_ln103_2 sc_in sc_lv 2 signal 3 } 
	{ accum_V_address0 sc_out sc_lv 10 signal 4 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ accum_V_q0 sc_in sc_lv 16 signal 4 } 
	{ accum_V_1_address0 sc_out sc_lv 10 signal 5 } 
	{ accum_V_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ accum_V_1_q0 sc_in sc_lv 16 signal 5 } 
	{ accum_V_2_address0 sc_out sc_lv 10 signal 6 } 
	{ accum_V_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_2_q0 sc_in sc_lv 16 signal 6 } 
	{ accum_V_3_address0 sc_out sc_lv 10 signal 7 } 
	{ accum_V_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ accum_V_3_q0 sc_in sc_lv 16 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "trunc_ln103_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "trunc_ln103_1", "role": "default" }} , 
 	{ "name": "or_ln99_1", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "or_ln99_1", "role": "default" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d0" }} , 
 	{ "name": "C_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address1" }} , 
 	{ "name": "C_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce1" }} , 
 	{ "name": "C_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we1" }} , 
 	{ "name": "C_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d1" }} , 
 	{ "name": "trunc_ln103_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "trunc_ln103_2", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "q0" }} , 
 	{ "name": "accum_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_1", "role": "address0" }} , 
 	{ "name": "accum_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "ce0" }} , 
 	{ "name": "accum_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "q0" }} , 
 	{ "name": "accum_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_2", "role": "address0" }} , 
 	{ "name": "accum_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "ce0" }} , 
 	{ "name": "accum_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "q0" }} , 
 	{ "name": "accum_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_3", "role": "address0" }} , 
 	{ "name": "accum_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "ce0" }} , 
 	{ "name": "accum_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln103_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln99_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trunc_ln103_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112 {
		trunc_ln103_1 {Type I LastRead 0 FirstWrite -1}
		or_ln99_1 {Type I LastRead 0 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}
		trunc_ln103_2 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type I LastRead 0 FirstWrite -1}
		accum_V_1 {Type I LastRead 0 FirstWrite -1}
		accum_V_2 {Type I LastRead 0 FirstWrite -1}
		accum_V_3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	trunc_ln103_1 { ap_none {  { trunc_ln103_1 in_data 0 1 } } }
	or_ln99_1 { ap_none {  { or_ln99_1 in_data 0 6 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 16 }  { C_address1 MemPortADDR2 1 12 }  { C_ce1 MemPortCE2 1 1 }  { C_we1 MemPortWE2 1 1 }  { C_d1 MemPortDIN2 1 16 } } }
	trunc_ln103_2 { ap_none {  { trunc_ln103_2 in_data 0 2 } } }
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 10 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_q0 in_data 0 16 } } }
	accum_V_1 { ap_memory {  { accum_V_1_address0 mem_address 1 10 }  { accum_V_1_ce0 mem_ce 1 1 }  { accum_V_1_q0 in_data 0 16 } } }
	accum_V_2 { ap_memory {  { accum_V_2_address0 mem_address 1 10 }  { accum_V_2_ce0 mem_ce 1 1 }  { accum_V_2_q0 mem_dout 0 16 } } }
	accum_V_3 { ap_memory {  { accum_V_3_address0 mem_address 1 10 }  { accum_V_3_ce0 mem_ce 1 1 }  { accum_V_3_q0 mem_dout 0 16 } } }
}
