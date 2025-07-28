set moduleName md
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
set C_modelName {md}
set C_modelType { void 0 }
set C_modelArgList {
	{ n_points int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ force_r int 192 regular {array 640 { 2 3 } 1 1 }  }
	{ position int 192 regular {array 640 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "n_points", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "force_r", "interface" : "memory", "bitwidth" : 192, "direction" : "READWRITE"} , 
 	{ "Name" : "position", "interface" : "memory", "bitwidth" : 192, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ n_points_address0 sc_out sc_lv 6 signal 0 } 
	{ n_points_ce0 sc_out sc_logic 1 signal 0 } 
	{ n_points_q0 sc_in sc_lv 32 signal 0 } 
	{ force_r_address0 sc_out sc_lv 10 signal 1 } 
	{ force_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ force_r_we0 sc_out sc_logic 1 signal 1 } 
	{ force_r_d0 sc_out sc_lv 192 signal 1 } 
	{ force_r_q0 sc_in sc_lv 192 signal 1 } 
	{ position_address0 sc_out sc_lv 10 signal 2 } 
	{ position_ce0 sc_out sc_logic 1 signal 2 } 
	{ position_q0 sc_in sc_lv 192 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "n_points_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "n_points", "role": "address0" }} , 
 	{ "name": "n_points_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_points", "role": "ce0" }} , 
 	{ "name": "n_points_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n_points", "role": "q0" }} , 
 	{ "name": "force_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "force_r", "role": "address0" }} , 
 	{ "name": "force_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "force_r", "role": "ce0" }} , 
 	{ "name": "force_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "force_r", "role": "we0" }} , 
 	{ "name": "force_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "force_r", "role": "d0" }} , 
 	{ "name": "force_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "force_r", "role": "q0" }} , 
 	{ "name": "position_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "position", "role": "address0" }} , 
 	{ "name": "position_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "position", "role": "ce0" }} , 
 	{ "name": "position_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "position", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "11", "12", "13"],
		"CDFG" : "md",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "641", "EstimateLatencyMax" : "2264321",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_points", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "force_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "position", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_md_Pipeline_loop_q_fu_302", "Port" : "position", "Inst_start_state" : "14", "Inst_end_state" : "15"}]}],
		"Loop" : [
			{"Name" : "loop_grid1_x_loop_grid1_z_loop_p", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state16"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "loop_grid0_x_loop_grid0_y_loop_grid0_z", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_md_Pipeline_loop_q_fu_302", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_md_Pipeline_loop_q_fu_302.dadddsub_64ns_64ns_64_5_full_dsp_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_md_Pipeline_loop_q_fu_302.dadddsub_64ns_64ns_64_5_full_dsp_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_md_Pipeline_loop_q_fu_302.dadddsub_64ns_64ns_64_5_full_dsp_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_md_Pipeline_loop_q_fu_302.dmul_64ns_64ns_64_5_max_dsp_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_md_Pipeline_loop_q_fu_302.dmul_64ns_64ns_64_5_max_dsp_1_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_md_Pipeline_loop_q_fu_302.dmul_64ns_64ns_64_5_max_dsp_1_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_md_Pipeline_loop_q_fu_302.ddiv_64ns_64ns_64_22_no_dsp_1_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_md_Pipeline_loop_q_fu_302.dcmp_64ns_64ns_1_2_no_dsp_1_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_md_Pipeline_loop_q_fu_302.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_32ns_96_2_1_U29", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_96ns_160_2_1_U30", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_160ns_224_2_1_U31", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	md {
		n_points {Type I LastRead 12 FirstWrite -1}
		force_r {Type IO LastRead 12 FirstWrite 15}
		position {Type I LastRead 11 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "641", "Max" : "2264321"}
	, {"Name" : "Interval", "Min" : "642", "Max" : "2264322"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	n_points { ap_memory {  { n_points_address0 mem_address 1 6 }  { n_points_ce0 mem_ce 1 1 }  { n_points_q0 mem_dout 0 32 } } }
	force_r { ap_memory {  { force_r_address0 mem_address 1 10 }  { force_r_ce0 mem_ce 1 1 }  { force_r_we0 mem_we 1 1 }  { force_r_d0 mem_din 1 192 }  { force_r_q0 in_data 0 192 } } }
	position { ap_memory {  { position_address0 mem_address 1 10 }  { position_ce0 mem_ce 1 1 }  { position_q0 in_data 0 192 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
