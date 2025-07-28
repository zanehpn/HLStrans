set moduleName gramschmidt
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
set C_modelName {gramschmidt}
set C_modelType { void 0 }
set C_modelArgList {
	{ A int 64 regular {array 600 { 2 2 } 1 1 }  }
	{ R int 64 regular {array 900 { 0 3 } 0 1 }  }
	{ Q int 64 regular {array 600 { 2 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "R", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Q", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_address0 sc_out sc_lv 10 signal 0 } 
	{ A_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_we0 sc_out sc_logic 1 signal 0 } 
	{ A_d0 sc_out sc_lv 64 signal 0 } 
	{ A_q0 sc_in sc_lv 64 signal 0 } 
	{ A_address1 sc_out sc_lv 10 signal 0 } 
	{ A_ce1 sc_out sc_logic 1 signal 0 } 
	{ A_we1 sc_out sc_logic 1 signal 0 } 
	{ A_d1 sc_out sc_lv 64 signal 0 } 
	{ A_q1 sc_in sc_lv 64 signal 0 } 
	{ R_address0 sc_out sc_lv 10 signal 1 } 
	{ R_ce0 sc_out sc_logic 1 signal 1 } 
	{ R_we0 sc_out sc_logic 1 signal 1 } 
	{ R_d0 sc_out sc_lv 64 signal 1 } 
	{ Q_address0 sc_out sc_lv 10 signal 2 } 
	{ Q_ce0 sc_out sc_logic 1 signal 2 } 
	{ Q_we0 sc_out sc_logic 1 signal 2 } 
	{ Q_d0 sc_out sc_lv 64 signal 2 } 
	{ Q_q0 sc_in sc_lv 64 signal 2 } 
	{ Q_address1 sc_out sc_lv 10 signal 2 } 
	{ Q_ce1 sc_out sc_logic 1 signal 2 } 
	{ Q_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we0" }} , 
 	{ "name": "A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "d0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we1" }} , 
 	{ "name": "A_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "d1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
 	{ "name": "R_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "R", "role": "address0" }} , 
 	{ "name": "R_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R", "role": "ce0" }} , 
 	{ "name": "R_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R", "role": "we0" }} , 
 	{ "name": "R_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R", "role": "d0" }} , 
 	{ "name": "Q_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Q", "role": "address0" }} , 
 	{ "name": "Q_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "ce0" }} , 
 	{ "name": "Q_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "we0" }} , 
 	{ "name": "Q_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q", "role": "d0" }} , 
 	{ "name": "Q_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q", "role": "q0" }} , 
 	{ "name": "Q_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Q", "role": "address1" }} , 
 	{ "name": "Q_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q", "role": "ce1" }} , 
 	{ "name": "Q_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "6", "46", "47", "48"],
		"CDFG" : "gramschmidt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308", "Port" : "A", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "1", "SubInstance" : "grp_gramschmidt_Pipeline_VITIS_LOOP_15_2_fu_290", "Port" : "A", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_gramschmidt_Pipeline_VITIS_LOOP_18_3_fu_298", "Port" : "A", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "R", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308", "Port" : "R", "Inst_start_state" : "33", "Inst_end_state" : "34"}]},
			{"Name" : "Q", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_gramschmidt_Pipeline_VITIS_LOOP_18_3_fu_298", "Port" : "Q", "Inst_start_state" : "21", "Inst_end_state" : "22"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "34", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state34"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_15_2_fu_290", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "gramschmidt_Pipeline_VITIS_LOOP_15_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "89", "EstimateLatencyMax" : "89",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln20", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nrm_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_15_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_15_2_fu_290.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_18_3_fu_298", "Parent" : "0", "Child" : ["4", "5"],
		"CDFG" : "gramschmidt_Pipeline_VITIS_LOOP_18_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "45", "EstimateLatencyMax" : "45",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln20", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Q", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_18_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter24", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter24", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_18_3_fu_298.ddiv_64ns_64ns_64_22_no_dsp_1_U6", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_18_3_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45"],
		"CDFG" : "gramschmidt_Pipeline_VITIS_LOOP_20_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln20_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sub_ln17", "Type" : "None", "Direction" : "I"},
			{"Name" : "R", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bitcast_ln23_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_39", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U13", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U14", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U15", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U16", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U17", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U18", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U19", "Parent" : "6"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U20", "Parent" : "6"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U21", "Parent" : "6"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U22", "Parent" : "6"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U23", "Parent" : "6"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U24", "Parent" : "6"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U25", "Parent" : "6"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U26", "Parent" : "6"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U27", "Parent" : "6"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U28", "Parent" : "6"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U29", "Parent" : "6"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U30", "Parent" : "6"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dsub_64ns_64ns_64_5_full_dsp_1_U31", "Parent" : "6"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U33", "Parent" : "6"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U34", "Parent" : "6"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U35", "Parent" : "6"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U36", "Parent" : "6"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U37", "Parent" : "6"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U38", "Parent" : "6"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U39", "Parent" : "6"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U40", "Parent" : "6"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U41", "Parent" : "6"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U42", "Parent" : "6"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U43", "Parent" : "6"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U44", "Parent" : "6"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U45", "Parent" : "6"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U46", "Parent" : "6"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U47", "Parent" : "6"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U48", "Parent" : "6"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U49", "Parent" : "6"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U50", "Parent" : "6"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.dmul_64ns_64ns_64_5_max_dsp_1_U51", "Parent" : "6"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gramschmidt_Pipeline_VITIS_LOOP_20_4_fu_308.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_17_no_dsp_1_U77", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_5_full_dsp_1_U78", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U79", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gramschmidt {
		A {Type IO LastRead 19 FirstWrite -1}
		R {Type O LastRead -1 FirstWrite 20}
		Q {Type IO LastRead 32 FirstWrite 24}}
	gramschmidt_Pipeline_VITIS_LOOP_15_2 {
		zext_ln20 {Type I LastRead 0 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		nrm_out {Type O LastRead -1 FirstWrite 7}}
	gramschmidt_Pipeline_VITIS_LOOP_18_3 {
		zext_ln20 {Type I LastRead 0 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		Q {Type O LastRead -1 FirstWrite 24}
		tmp {Type I LastRead 0 FirstWrite -1}}
	gramschmidt_Pipeline_VITIS_LOOP_20_4 {
		zext_ln20_1 {Type I LastRead 0 FirstWrite -1}
		A {Type IO LastRead 19 FirstWrite 117}
		sub_ln17 {Type I LastRead 0 FirstWrite -1}
		R {Type O LastRead -1 FirstWrite 107}
		bitcast_ln23_1 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_3 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_5 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_7 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_9 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_11 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_13 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_15 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_17 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_19 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_21 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_23 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_25 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_27 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_29 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_31 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_33 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_35 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_37 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_39 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A { ap_memory {  { A_address0 mem_address 1 10 }  { A_ce0 mem_ce 1 1 }  { A_we0 mem_we 1 1 }  { A_d0 mem_din 1 64 }  { A_q0 mem_dout 0 64 }  { A_address1 MemPortADDR2 1 10 }  { A_ce1 MemPortCE2 1 1 }  { A_we1 MemPortWE2 1 1 }  { A_d1 MemPortDIN2 1 64 }  { A_q1 MemPortDOUT2 0 64 } } }
	R { ap_memory {  { R_address0 mem_address 1 10 }  { R_ce0 mem_ce 1 1 }  { R_we0 mem_we 1 1 }  { R_d0 mem_din 1 64 } } }
	Q { ap_memory {  { Q_address0 mem_address 1 10 }  { Q_ce0 mem_ce 1 1 }  { Q_we0 mem_we 1 1 }  { Q_d0 mem_din 1 64 }  { Q_q0 in_data 0 64 }  { Q_address1 MemPortADDR2 1 10 }  { Q_ce1 MemPortCE2 1 1 }  { Q_q1 in_data 0 64 } } }
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
