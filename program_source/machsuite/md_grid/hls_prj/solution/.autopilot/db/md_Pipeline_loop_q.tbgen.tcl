set moduleName md_Pipeline_loop_q
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
set C_modelName {md_Pipeline_loop_q}
set C_modelType { void 0 }
set C_modelArgList {
	{ sum_z double 64 regular  }
	{ sum_y double 64 regular  }
	{ sum_x double 64 regular  }
	{ n_points_load_1 int 32 regular  }
	{ add_ln39_1 int 10 regular  }
	{ position int 192 regular {array 640 { 1 3 } 1 1 }  }
	{ position_load int 191 regular  }
	{ icmp_ln42_3 int 1 regular  }
	{ p_x double 64 regular  }
	{ icmp_ln42_7 int 1 regular  }
	{ p_y double 64 regular  }
	{ icmp_ln42_11 int 1 regular  }
	{ p_z double 64 regular  }
	{ sum_z_2_out double 64 regular {pointer 1}  }
	{ sum_y_2_out double 64 regular {pointer 1}  }
	{ sum_x_2_out double 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sum_z", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sum_y", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sum_x", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "n_points_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln39_1", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "position", "interface" : "memory", "bitwidth" : 192, "direction" : "READONLY"} , 
 	{ "Name" : "position_load", "interface" : "wire", "bitwidth" : 191, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln42_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_x", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln42_7", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_y", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln42_11", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_z", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sum_z_2_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_y_2_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_x_2_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sum_z sc_in sc_lv 64 signal 0 } 
	{ sum_y sc_in sc_lv 64 signal 1 } 
	{ sum_x sc_in sc_lv 64 signal 2 } 
	{ n_points_load_1 sc_in sc_lv 32 signal 3 } 
	{ add_ln39_1 sc_in sc_lv 10 signal 4 } 
	{ position_address0 sc_out sc_lv 10 signal 5 } 
	{ position_ce0 sc_out sc_logic 1 signal 5 } 
	{ position_q0 sc_in sc_lv 192 signal 5 } 
	{ position_load sc_in sc_lv 191 signal 6 } 
	{ icmp_ln42_3 sc_in sc_lv 1 signal 7 } 
	{ p_x sc_in sc_lv 64 signal 8 } 
	{ icmp_ln42_7 sc_in sc_lv 1 signal 9 } 
	{ p_y sc_in sc_lv 64 signal 10 } 
	{ icmp_ln42_11 sc_in sc_lv 1 signal 11 } 
	{ p_z sc_in sc_lv 64 signal 12 } 
	{ sum_z_2_out sc_out sc_lv 64 signal 13 } 
	{ sum_z_2_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ sum_y_2_out sc_out sc_lv 64 signal 14 } 
	{ sum_y_2_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ sum_x_2_out sc_out sc_lv 64 signal 15 } 
	{ sum_x_2_out_ap_vld sc_out sc_logic 1 outvld 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sum_z", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sum_z", "role": "default" }} , 
 	{ "name": "sum_y", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sum_y", "role": "default" }} , 
 	{ "name": "sum_x", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sum_x", "role": "default" }} , 
 	{ "name": "n_points_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n_points_load_1", "role": "default" }} , 
 	{ "name": "add_ln39_1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "add_ln39_1", "role": "default" }} , 
 	{ "name": "position_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "position", "role": "address0" }} , 
 	{ "name": "position_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "position", "role": "ce0" }} , 
 	{ "name": "position_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "position", "role": "q0" }} , 
 	{ "name": "position_load", "direction": "in", "datatype": "sc_lv", "bitwidth":191, "type": "signal", "bundle":{"name": "position_load", "role": "default" }} , 
 	{ "name": "icmp_ln42_3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln42_3", "role": "default" }} , 
 	{ "name": "p_x", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_x", "role": "default" }} , 
 	{ "name": "icmp_ln42_7", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln42_7", "role": "default" }} , 
 	{ "name": "p_y", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_y", "role": "default" }} , 
 	{ "name": "icmp_ln42_11", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln42_11", "role": "default" }} , 
 	{ "name": "p_z", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_z", "role": "default" }} , 
 	{ "name": "sum_z_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sum_z_2_out", "role": "default" }} , 
 	{ "name": "sum_z_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_z_2_out", "role": "ap_vld" }} , 
 	{ "name": "sum_y_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sum_y_2_out", "role": "default" }} , 
 	{ "name": "sum_y_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_y_2_out", "role": "ap_vld" }} , 
 	{ "name": "sum_x_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sum_x_2_out", "role": "default" }} , 
 	{ "name": "sum_x_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_x_2_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "md_Pipeline_loop_q",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "125",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sum_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_points_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln39_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "position", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "position_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln42_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln42_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln42_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_z_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_y_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_x_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_q", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter21", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter21", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_5_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_5_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_5_full_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_22_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	md_Pipeline_loop_q {
		sum_z {Type I LastRead 0 FirstWrite -1}
		sum_y {Type I LastRead 0 FirstWrite -1}
		sum_x {Type I LastRead 0 FirstWrite -1}
		n_points_load_1 {Type I LastRead 0 FirstWrite -1}
		add_ln39_1 {Type I LastRead 0 FirstWrite -1}
		position {Type I LastRead 0 FirstWrite -1}
		position_load {Type I LastRead 0 FirstWrite -1}
		icmp_ln42_3 {Type I LastRead 0 FirstWrite -1}
		p_x {Type I LastRead 0 FirstWrite -1}
		icmp_ln42_7 {Type I LastRead 0 FirstWrite -1}
		p_y {Type I LastRead 0 FirstWrite -1}
		icmp_ln42_11 {Type I LastRead 0 FirstWrite -1}
		p_z {Type I LastRead 0 FirstWrite -1}
		sum_z_2_out {Type O LastRead -1 FirstWrite 83}
		sum_y_2_out {Type O LastRead -1 FirstWrite 83}
		sum_x_2_out {Type O LastRead -1 FirstWrite 83}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "125"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "125"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sum_z { ap_none {  { sum_z in_data 0 64 } } }
	sum_y { ap_none {  { sum_y in_data 0 64 } } }
	sum_x { ap_none {  { sum_x in_data 0 64 } } }
	n_points_load_1 { ap_none {  { n_points_load_1 in_data 0 32 } } }
	add_ln39_1 { ap_none {  { add_ln39_1 in_data 0 10 } } }
	position { ap_memory {  { position_address0 mem_address 1 10 }  { position_ce0 mem_ce 1 1 }  { position_q0 in_data 0 192 } } }
	position_load { ap_none {  { position_load in_data 0 191 } } }
	icmp_ln42_3 { ap_none {  { icmp_ln42_3 in_data 0 1 } } }
	p_x { ap_none {  { p_x in_data 0 64 } } }
	icmp_ln42_7 { ap_none {  { icmp_ln42_7 in_data 0 1 } } }
	p_y { ap_none {  { p_y in_data 0 64 } } }
	icmp_ln42_11 { ap_none {  { icmp_ln42_11 in_data 0 1 } } }
	p_z { ap_none {  { p_z in_data 0 64 } } }
	sum_z_2_out { ap_vld {  { sum_z_2_out out_data 1 64 }  { sum_z_2_out_ap_vld out_vld 1 1 } } }
	sum_y_2_out { ap_vld {  { sum_y_2_out out_data 1 64 }  { sum_y_2_out_ap_vld out_vld 1 1 } } }
	sum_x_2_out { ap_vld {  { sum_x_2_out out_data 1 64 }  { sum_x_2_out_ap_vld out_vld 1 1 } } }
}
