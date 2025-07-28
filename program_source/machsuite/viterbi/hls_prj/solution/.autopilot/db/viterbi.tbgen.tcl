set moduleName viterbi
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
set C_modelName {viterbi}
set C_modelType { int 32 }
set C_modelArgList {
	{ obs int 8 regular {array 140 { 1 3 } 1 1 }  }
	{ init int 64 regular {array 64 { 1 3 } 1 1 }  }
	{ transition int 64 regular {array 4096 { 1 1 } 1 1 }  }
	{ emission int 64 regular {array 4096 { 1 3 } 1 1 }  }
	{ path int 8 regular {array 140 { 0 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "obs", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "init", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "transition", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "emission", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "path", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ obs_address0 sc_out sc_lv 8 signal 0 } 
	{ obs_ce0 sc_out sc_logic 1 signal 0 } 
	{ obs_q0 sc_in sc_lv 8 signal 0 } 
	{ init_address0 sc_out sc_lv 6 signal 1 } 
	{ init_ce0 sc_out sc_logic 1 signal 1 } 
	{ init_q0 sc_in sc_lv 64 signal 1 } 
	{ transition_address0 sc_out sc_lv 12 signal 2 } 
	{ transition_ce0 sc_out sc_logic 1 signal 2 } 
	{ transition_q0 sc_in sc_lv 64 signal 2 } 
	{ transition_address1 sc_out sc_lv 12 signal 2 } 
	{ transition_ce1 sc_out sc_logic 1 signal 2 } 
	{ transition_q1 sc_in sc_lv 64 signal 2 } 
	{ emission_address0 sc_out sc_lv 12 signal 3 } 
	{ emission_ce0 sc_out sc_logic 1 signal 3 } 
	{ emission_q0 sc_in sc_lv 64 signal 3 } 
	{ path_address0 sc_out sc_lv 8 signal 4 } 
	{ path_ce0 sc_out sc_logic 1 signal 4 } 
	{ path_we0 sc_out sc_logic 1 signal 4 } 
	{ path_d0 sc_out sc_lv 8 signal 4 } 
	{ path_address1 sc_out sc_lv 8 signal 4 } 
	{ path_ce1 sc_out sc_logic 1 signal 4 } 
	{ path_q1 sc_in sc_lv 8 signal 4 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "obs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "obs", "role": "address0" }} , 
 	{ "name": "obs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "obs", "role": "ce0" }} , 
 	{ "name": "obs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "obs", "role": "q0" }} , 
 	{ "name": "init_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "init", "role": "address0" }} , 
 	{ "name": "init_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init", "role": "ce0" }} , 
 	{ "name": "init_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "init", "role": "q0" }} , 
 	{ "name": "transition_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "transition", "role": "address0" }} , 
 	{ "name": "transition_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "transition", "role": "ce0" }} , 
 	{ "name": "transition_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "transition", "role": "q0" }} , 
 	{ "name": "transition_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "transition", "role": "address1" }} , 
 	{ "name": "transition_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "transition", "role": "ce1" }} , 
 	{ "name": "transition_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "transition", "role": "q1" }} , 
 	{ "name": "emission_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "emission", "role": "address0" }} , 
 	{ "name": "emission_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emission", "role": "ce0" }} , 
 	{ "name": "emission_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "emission", "role": "q0" }} , 
 	{ "name": "path_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "path", "role": "address0" }} , 
 	{ "name": "path_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "path", "role": "ce0" }} , 
 	{ "name": "path_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "path", "role": "we0" }} , 
 	{ "name": "path_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "path", "role": "d0" }} , 
 	{ "name": "path_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "path", "role": "address1" }} , 
 	{ "name": "path_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "path", "role": "ce1" }} , 
 	{ "name": "path_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "path", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "12", "14", "16", "17", "18"],
		"CDFG" : "viterbi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303421", "EstimateLatencyMax" : "303421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "obs", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_102", "Port" : "obs", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "init", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_viterbi_Pipeline_L_init_fu_91", "Port" : "init", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "transition", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_viterbi_Pipeline_L_backtrack_fu_120", "Port" : "transition", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "4", "SubInstance" : "grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_102", "Port" : "transition", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "emission", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_102", "Port" : "emission", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "2", "SubInstance" : "grp_viterbi_Pipeline_L_init_fu_91", "Port" : "emission", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "path", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_viterbi_Pipeline_L_backtrack_fu_120", "Port" : "path", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.llike_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_viterbi_Pipeline_L_init_fu_91", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "viterbi_Pipeline_L_init",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "72",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "llike", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "init", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln13", "Type" : "None", "Direction" : "I"},
			{"Name" : "emission", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L_init", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_viterbi_Pipeline_L_init_fu_91.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_102", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "viterbi_Pipeline_L_timestep_L_curr_state",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "284781", "EstimateLatencyMax" : "284781",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "llike", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "obs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "transition", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "emission", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L_timestep_L_curr_state", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage11", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage11_subdone", "QuitState" : "ap_ST_fsm_pp0_stage11", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage11_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_102.dadd_64ns_64ns_64_5_full_dsp_1_U8", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_102.dadd_64ns_64ns_64_5_full_dsp_1_U9", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_102.dadd_64ns_64ns_64_5_full_dsp_1_U10", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_102.dcmp_64ns_64ns_1_2_no_dsp_1_U12", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_102.dcmp_64ns_64ns_1_2_no_dsp_1_U13", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_102.dcmp_64ns_64ns_1_2_no_dsp_1_U14", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_viterbi_Pipeline_L_timestep_L_curr_state_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_viterbi_Pipeline_L_end_fu_113", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "viterbi_Pipeline_L_end",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "min_p", "Type" : "None", "Direction" : "I"},
			{"Name" : "llike", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "min_s_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "L_end", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_viterbi_Pipeline_L_end_fu_113.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_viterbi_Pipeline_L_backtrack_fu_120", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "viterbi_Pipeline_L_backtrack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18489", "EstimateLatencyMax" : "18489",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "llike", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "path", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "transition", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L_backtrack", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "133", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_viterbi_Pipeline_L_backtrack_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U30", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U31", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U32", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	viterbi {
		obs {Type I LastRead 0 FirstWrite -1}
		init {Type I LastRead 1 FirstWrite -1}
		transition {Type I LastRead 95 FirstWrite -1}
		emission {Type I LastRead 1 FirstWrite -1}
		path {Type IO LastRead 1 FirstWrite 9}}
	viterbi_Pipeline_L_init {
		llike {Type O LastRead -1 FirstWrite 7}
		init {Type I LastRead 1 FirstWrite -1}
		zext_ln13 {Type I LastRead 0 FirstWrite -1}
		emission {Type I LastRead 0 FirstWrite -1}}
	viterbi_Pipeline_L_timestep_L_curr_state {
		llike {Type IO LastRead 86 FirstWrite 139}
		obs {Type I LastRead 0 FirstWrite -1}
		transition {Type I LastRead 95 FirstWrite -1}
		emission {Type I LastRead 1 FirstWrite -1}}
	viterbi_Pipeline_L_end {
		min_p {Type I LastRead 0 FirstWrite -1}
		llike {Type I LastRead 1 FirstWrite -1}
		min_s_out {Type O LastRead -1 FirstWrite 3}}
	viterbi_Pipeline_L_backtrack {
		llike {Type I LastRead 33 FirstWrite -1}
		path {Type IO LastRead 1 FirstWrite 134}
		transition {Type I LastRead 34 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "303421", "Max" : "303421"}
	, {"Name" : "Interval", "Min" : "303422", "Max" : "303422"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	obs { ap_memory {  { obs_address0 mem_address 1 8 }  { obs_ce0 mem_ce 1 1 }  { obs_q0 mem_dout 0 8 } } }
	init { ap_memory {  { init_address0 mem_address 1 6 }  { init_ce0 mem_ce 1 1 }  { init_q0 mem_dout 0 64 } } }
	transition { ap_memory {  { transition_address0 mem_address 1 12 }  { transition_ce0 mem_ce 1 1 }  { transition_q0 mem_dout 0 64 }  { transition_address1 MemPortADDR2 1 12 }  { transition_ce1 MemPortCE2 1 1 }  { transition_q1 MemPortDOUT2 0 64 } } }
	emission { ap_memory {  { emission_address0 mem_address 1 12 }  { emission_ce0 mem_ce 1 1 }  { emission_q0 mem_dout 0 64 } } }
	path { ap_memory {  { path_address0 mem_address 1 8 }  { path_ce0 mem_ce 1 1 }  { path_we0 mem_we 1 1 }  { path_d0 mem_din 1 8 }  { path_address1 MemPortADDR2 1 8 }  { path_ce1 MemPortCE2 1 1 }  { path_q1 MemPortDOUT2 0 8 } } }
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
