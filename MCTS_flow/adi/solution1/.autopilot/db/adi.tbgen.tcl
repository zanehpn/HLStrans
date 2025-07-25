set moduleName adi
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
set C_modelName {adi}
set C_modelType { void 0 }
set C_modelArgList {
	{ tsteps int 32 regular  }
	{ n int 32 unused  }
	{ u int 64 regular {array 3600 { 2 2 } 1 1 }  }
	{ v int 64 regular {array 3600 { 2 2 } 1 1 }  }
	{ p int 64 regular {array 3600 { 2 2 } 1 1 }  }
	{ q int 64 regular {array 3600 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tsteps", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "n", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "u", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "v", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "p", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "q", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tsteps sc_in sc_lv 32 signal 0 } 
	{ n sc_in sc_lv 32 signal 1 } 
	{ u_address0 sc_out sc_lv 12 signal 2 } 
	{ u_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_we0 sc_out sc_logic 1 signal 2 } 
	{ u_d0 sc_out sc_lv 64 signal 2 } 
	{ u_q0 sc_in sc_lv 64 signal 2 } 
	{ u_address1 sc_out sc_lv 12 signal 2 } 
	{ u_ce1 sc_out sc_logic 1 signal 2 } 
	{ u_we1 sc_out sc_logic 1 signal 2 } 
	{ u_d1 sc_out sc_lv 64 signal 2 } 
	{ u_q1 sc_in sc_lv 64 signal 2 } 
	{ v_address0 sc_out sc_lv 12 signal 3 } 
	{ v_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_we0 sc_out sc_logic 1 signal 3 } 
	{ v_d0 sc_out sc_lv 64 signal 3 } 
	{ v_q0 sc_in sc_lv 64 signal 3 } 
	{ v_address1 sc_out sc_lv 12 signal 3 } 
	{ v_ce1 sc_out sc_logic 1 signal 3 } 
	{ v_we1 sc_out sc_logic 1 signal 3 } 
	{ v_d1 sc_out sc_lv 64 signal 3 } 
	{ v_q1 sc_in sc_lv 64 signal 3 } 
	{ p_address0 sc_out sc_lv 12 signal 4 } 
	{ p_ce0 sc_out sc_logic 1 signal 4 } 
	{ p_we0 sc_out sc_logic 1 signal 4 } 
	{ p_d0 sc_out sc_lv 64 signal 4 } 
	{ p_q0 sc_in sc_lv 64 signal 4 } 
	{ p_address1 sc_out sc_lv 12 signal 4 } 
	{ p_ce1 sc_out sc_logic 1 signal 4 } 
	{ p_we1 sc_out sc_logic 1 signal 4 } 
	{ p_d1 sc_out sc_lv 64 signal 4 } 
	{ p_q1 sc_in sc_lv 64 signal 4 } 
	{ q_address0 sc_out sc_lv 12 signal 5 } 
	{ q_ce0 sc_out sc_logic 1 signal 5 } 
	{ q_we0 sc_out sc_logic 1 signal 5 } 
	{ q_d0 sc_out sc_lv 64 signal 5 } 
	{ q_q0 sc_in sc_lv 64 signal 5 } 
	{ q_address1 sc_out sc_lv 12 signal 5 } 
	{ q_ce1 sc_out sc_logic 1 signal 5 } 
	{ q_we1 sc_out sc_logic 1 signal 5 } 
	{ q_d1 sc_out sc_lv 64 signal 5 } 
	{ q_q1 sc_in sc_lv 64 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tsteps", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tsteps", "role": "default" }} , 
 	{ "name": "n", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n", "role": "default" }} , 
 	{ "name": "u_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "u", "role": "address0" }} , 
 	{ "name": "u_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "ce0" }} , 
 	{ "name": "u_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "we0" }} , 
 	{ "name": "u_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u", "role": "d0" }} , 
 	{ "name": "u_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u", "role": "q0" }} , 
 	{ "name": "u_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "u", "role": "address1" }} , 
 	{ "name": "u_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "ce1" }} , 
 	{ "name": "u_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "we1" }} , 
 	{ "name": "u_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u", "role": "d1" }} , 
 	{ "name": "u_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u", "role": "q1" }} , 
 	{ "name": "v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v", "role": "address0" }} , 
 	{ "name": "v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "ce0" }} , 
 	{ "name": "v_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "we0" }} , 
 	{ "name": "v_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v", "role": "d0" }} , 
 	{ "name": "v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v", "role": "q0" }} , 
 	{ "name": "v_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "v", "role": "address1" }} , 
 	{ "name": "v_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "ce1" }} , 
 	{ "name": "v_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v", "role": "we1" }} , 
 	{ "name": "v_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v", "role": "d1" }} , 
 	{ "name": "v_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v", "role": "q1" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "q_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "q", "role": "address0" }} , 
 	{ "name": "q_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q", "role": "ce0" }} , 
 	{ "name": "q_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q", "role": "we0" }} , 
 	{ "name": "q_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "q", "role": "d0" }} , 
 	{ "name": "q_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "q", "role": "q0" }} , 
 	{ "name": "q_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "q", "role": "address1" }} , 
 	{ "name": "q_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q", "role": "ce1" }} , 
 	{ "name": "q_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q", "role": "we1" }} , 
 	{ "name": "q_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "q", "role": "d1" }} , 
 	{ "name": "q_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "q", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "adi",
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
			{"Name" : "tsteps", "Type" : "None", "Direction" : "I"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_adi_Pipeline_VITIS_LOOP_41_2_fu_52", "Port" : "u", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_adi_Pipeline_VITIS_LOOP_60_5_fu_64", "Port" : "u", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_adi_Pipeline_VITIS_LOOP_41_2_fu_52", "Port" : "v", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_adi_Pipeline_VITIS_LOOP_60_5_fu_64", "Port" : "v", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_adi_Pipeline_VITIS_LOOP_41_2_fu_52", "Port" : "p", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_adi_Pipeline_VITIS_LOOP_60_5_fu_64", "Port" : "p", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "q", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_adi_Pipeline_VITIS_LOOP_41_2_fu_52", "Port" : "q", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "3", "SubInstance" : "grp_adi_Pipeline_VITIS_LOOP_60_5_fu_64", "Port" : "q", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_adi_Pipeline_VITIS_LOOP_41_2_fu_52", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "adi_Pipeline_VITIS_LOOP_41_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7421", "EstimateLatencyMax" : "7421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "u", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "q", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_41_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "87", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage24", "LastStateIter" : "ap_enable_reg_pp0_iter28", "LastStateBlock" : "ap_block_pp0_stage24_subdone", "QuitState" : "ap_ST_fsm_pp0_stage24", "QuitStateIter" : "ap_enable_reg_pp0_iter28", "QuitStateBlock" : "ap_block_pp0_stage24_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_adi_Pipeline_VITIS_LOOP_41_2_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_adi_Pipeline_VITIS_LOOP_60_5_fu_64", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "adi_Pipeline_VITIS_LOOP_60_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7421", "EstimateLatencyMax" : "7421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "u", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "q", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "87", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage24", "LastStateIter" : "ap_enable_reg_pp0_iter28", "LastStateBlock" : "ap_block_pp0_stage24_subdone", "QuitState" : "ap_ST_fsm_pp0_stage24", "QuitStateIter" : "ap_enable_reg_pp0_iter28", "QuitStateBlock" : "ap_block_pp0_stage24_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_adi_Pipeline_VITIS_LOOP_60_5_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_5_full_dsp_1_U25", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_5_full_dsp_1_U26", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_5_full_dsp_1_U27", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U28", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U29", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U30", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U31", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_22_no_dsp_1_U32", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	adi {
		tsteps {Type I LastRead 0 FirstWrite -1}
		n {Type I LastRead -1 FirstWrite -1}
		u {Type IO LastRead 87 FirstWrite -1}
		v {Type IO LastRead 87 FirstWrite -1}
		p {Type IO LastRead 2447 FirstWrite 0}
		q {Type IO LastRead 2426 FirstWrite 0}}
	adi_Pipeline_VITIS_LOOP_41_2 {
		u {Type I LastRead 87 FirstWrite -1}
		v {Type O LastRead -1 FirstWrite 0}
		p {Type IO LastRead 11 FirstWrite 0}
		q {Type IO LastRead 333 FirstWrite 0}}
	adi_Pipeline_VITIS_LOOP_60_5 {
		u {Type O LastRead -1 FirstWrite 0}
		v {Type I LastRead 87 FirstWrite -1}
		p {Type IO LastRead 2447 FirstWrite 0}
		q {Type IO LastRead 2426 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	tsteps { ap_none {  { tsteps in_data 0 32 } } }
	n { ap_none {  { n in_data 0 32 } } }
	u { ap_memory {  { u_address0 mem_address 1 12 }  { u_ce0 mem_ce 1 1 }  { u_we0 mem_we 1 1 }  { u_d0 mem_din 1 64 }  { u_q0 mem_dout 0 64 }  { u_address1 MemPortADDR2 1 12 }  { u_ce1 MemPortCE2 1 1 }  { u_we1 MemPortWE2 1 1 }  { u_d1 MemPortDIN2 1 64 }  { u_q1 MemPortDOUT2 0 64 } } }
	v { ap_memory {  { v_address0 mem_address 1 12 }  { v_ce0 mem_ce 1 1 }  { v_we0 mem_we 1 1 }  { v_d0 mem_din 1 64 }  { v_q0 mem_dout 0 64 }  { v_address1 MemPortADDR2 1 12 }  { v_ce1 MemPortCE2 1 1 }  { v_we1 MemPortWE2 1 1 }  { v_d1 MemPortDIN2 1 64 }  { v_q1 MemPortDOUT2 0 64 } } }
	p { ap_memory {  { p_address0 mem_address 1 12 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 64 }  { p_q0 mem_dout 0 64 }  { p_address1 MemPortADDR2 1 12 }  { p_ce1 MemPortCE2 1 1 }  { p_we1 MemPortWE2 1 1 }  { p_d1 MemPortDIN2 1 64 }  { p_q1 MemPortDOUT2 0 64 } } }
	q { ap_memory {  { q_address0 mem_address 1 12 }  { q_ce0 mem_ce 1 1 }  { q_we0 mem_we 1 1 }  { q_d0 mem_din 1 64 }  { q_q0 mem_dout 0 64 }  { q_address1 MemPortADDR2 1 12 }  { q_ce1 MemPortCE2 1 1 }  { q_we1 MemPortWE2 1 1 }  { q_d1 MemPortDIN2 1 64 }  { q_q1 MemPortDOUT2 0 64 } } }
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
