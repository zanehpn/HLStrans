set moduleName stencil_Pipeline_stencil_label1_stencil_label2
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
set C_modelName {stencil_Pipeline_stencil_label1_stencil_label2}
set C_modelType { void 0 }
set C_modelArgList {
	{ orig int 32 regular {array 8192 { 1 1 } 1 1 }  }
	{ filter_load int 32 regular  }
	{ filter_load_1 int 32 regular  }
	{ filter_load_2 int 32 regular  }
	{ filter_load_3 int 32 regular  }
	{ filter_load_4 int 32 regular  }
	{ filter_load_5 int 32 regular  }
	{ filter_load_6 int 32 regular  }
	{ filter_load_7 int 32 regular  }
	{ filter_load_8 int 32 regular  }
	{ sol int 32 regular {array 8192 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "orig", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "filter_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "filter_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "filter_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "filter_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "filter_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "filter_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "filter_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "filter_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "filter_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sol", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ orig_address0 sc_out sc_lv 13 signal 0 } 
	{ orig_ce0 sc_out sc_logic 1 signal 0 } 
	{ orig_q0 sc_in sc_lv 32 signal 0 } 
	{ orig_address1 sc_out sc_lv 13 signal 0 } 
	{ orig_ce1 sc_out sc_logic 1 signal 0 } 
	{ orig_q1 sc_in sc_lv 32 signal 0 } 
	{ filter_load sc_in sc_lv 32 signal 1 } 
	{ filter_load_1 sc_in sc_lv 32 signal 2 } 
	{ filter_load_2 sc_in sc_lv 32 signal 3 } 
	{ filter_load_3 sc_in sc_lv 32 signal 4 } 
	{ filter_load_4 sc_in sc_lv 32 signal 5 } 
	{ filter_load_5 sc_in sc_lv 32 signal 6 } 
	{ filter_load_6 sc_in sc_lv 32 signal 7 } 
	{ filter_load_7 sc_in sc_lv 32 signal 8 } 
	{ filter_load_8 sc_in sc_lv 32 signal 9 } 
	{ sol_address0 sc_out sc_lv 13 signal 10 } 
	{ sol_ce0 sc_out sc_logic 1 signal 10 } 
	{ sol_we0 sc_out sc_logic 1 signal 10 } 
	{ sol_d0 sc_out sc_lv 32 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "orig_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "orig", "role": "address0" }} , 
 	{ "name": "orig_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "orig", "role": "ce0" }} , 
 	{ "name": "orig_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "orig", "role": "q0" }} , 
 	{ "name": "orig_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "orig", "role": "address1" }} , 
 	{ "name": "orig_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "orig", "role": "ce1" }} , 
 	{ "name": "orig_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "orig", "role": "q1" }} , 
 	{ "name": "filter_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filter_load", "role": "default" }} , 
 	{ "name": "filter_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filter_load_1", "role": "default" }} , 
 	{ "name": "filter_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filter_load_2", "role": "default" }} , 
 	{ "name": "filter_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filter_load_3", "role": "default" }} , 
 	{ "name": "filter_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filter_load_4", "role": "default" }} , 
 	{ "name": "filter_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filter_load_5", "role": "default" }} , 
 	{ "name": "filter_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filter_load_6", "role": "default" }} , 
 	{ "name": "filter_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filter_load_7", "role": "default" }} , 
 	{ "name": "filter_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filter_load_8", "role": "default" }} , 
 	{ "name": "sol_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "sol", "role": "address0" }} , 
 	{ "name": "sol_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sol", "role": "ce0" }} , 
 	{ "name": "sol_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sol", "role": "we0" }} , 
 	{ "name": "sol_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sol", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "stencil_Pipeline_stencil_label1_stencil_label2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39064", "EstimateLatencyMax" : "39064",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "orig", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "filter_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "filter_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "filter_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "filter_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "filter_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "filter_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "filter_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "filter_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "filter_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "sol", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "stencil_label1_stencil_label2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	stencil_Pipeline_stencil_label1_stencil_label2 {
		orig {Type I LastRead 5 FirstWrite -1}
		filter_load {Type I LastRead 0 FirstWrite -1}
		filter_load_1 {Type I LastRead 0 FirstWrite -1}
		filter_load_2 {Type I LastRead 0 FirstWrite -1}
		filter_load_3 {Type I LastRead 0 FirstWrite -1}
		filter_load_4 {Type I LastRead 0 FirstWrite -1}
		filter_load_5 {Type I LastRead 0 FirstWrite -1}
		filter_load_6 {Type I LastRead 0 FirstWrite -1}
		filter_load_7 {Type I LastRead 0 FirstWrite -1}
		filter_load_8 {Type I LastRead 0 FirstWrite -1}
		sol {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "39064", "Max" : "39064"}
	, {"Name" : "Interval", "Min" : "39064", "Max" : "39064"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	orig { ap_memory {  { orig_address0 mem_address 1 13 }  { orig_ce0 mem_ce 1 1 }  { orig_q0 mem_dout 0 32 }  { orig_address1 MemPortADDR2 1 13 }  { orig_ce1 MemPortCE2 1 1 }  { orig_q1 MemPortDOUT2 0 32 } } }
	filter_load { ap_none {  { filter_load in_data 0 32 } } }
	filter_load_1 { ap_none {  { filter_load_1 in_data 0 32 } } }
	filter_load_2 { ap_none {  { filter_load_2 in_data 0 32 } } }
	filter_load_3 { ap_none {  { filter_load_3 in_data 0 32 } } }
	filter_load_4 { ap_none {  { filter_load_4 in_data 0 32 } } }
	filter_load_5 { ap_none {  { filter_load_5 in_data 0 32 } } }
	filter_load_6 { ap_none {  { filter_load_6 in_data 0 32 } } }
	filter_load_7 { ap_none {  { filter_load_7 in_data 0 32 } } }
	filter_load_8 { ap_none {  { filter_load_8 in_data 0 32 } } }
	sol { ap_memory {  { sol_address0 mem_address 1 13 }  { sol_ce0 mem_ce 1 1 }  { sol_we0 mem_we 1 1 }  { sol_d0 mem_din 1 32 } } }
}
