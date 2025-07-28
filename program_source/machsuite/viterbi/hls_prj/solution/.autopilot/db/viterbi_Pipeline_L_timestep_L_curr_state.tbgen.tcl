set moduleName viterbi_Pipeline_L_timestep_L_curr_state
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
set C_modelName {viterbi_Pipeline_L_timestep_L_curr_state}
set C_modelType { void 0 }
set C_modelArgList {
	{ llike double 64 regular {array 8960 { 2 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ obs int 8 regular {array 140 { 1 3 } 1 1 }  }
	{ transition int 64 regular {array 4096 { 1 1 } 1 1 }  }
	{ emission int 64 regular {array 4096 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "llike", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "obs", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "transition", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "emission", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 44
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ llike_address0 sc_out sc_lv 14 signal 0 } 
	{ llike_ce0 sc_out sc_logic 1 signal 0 } 
	{ llike_we0 sc_out sc_logic 1 signal 0 } 
	{ llike_d0 sc_out sc_lv 64 signal 0 } 
	{ llike_q0 sc_in sc_lv 64 signal 0 } 
	{ llike_address1 sc_out sc_lv 14 signal 0 } 
	{ llike_ce1 sc_out sc_logic 1 signal 0 } 
	{ llike_q1 sc_in sc_lv 64 signal 0 } 
	{ llike_address2 sc_out sc_lv 14 signal 0 } 
	{ llike_ce2 sc_out sc_logic 1 signal 0 } 
	{ llike_q2 sc_in sc_lv 64 signal 0 } 
	{ obs_address0 sc_out sc_lv 8 signal 1 } 
	{ obs_ce0 sc_out sc_logic 1 signal 1 } 
	{ obs_q0 sc_in sc_lv 8 signal 1 } 
	{ transition_address0 sc_out sc_lv 12 signal 2 } 
	{ transition_ce0 sc_out sc_logic 1 signal 2 } 
	{ transition_q0 sc_in sc_lv 64 signal 2 } 
	{ transition_address1 sc_out sc_lv 12 signal 2 } 
	{ transition_ce1 sc_out sc_logic 1 signal 2 } 
	{ transition_q1 sc_in sc_lv 64 signal 2 } 
	{ emission_address0 sc_out sc_lv 12 signal 3 } 
	{ emission_ce0 sc_out sc_logic 1 signal 3 } 
	{ emission_q0 sc_in sc_lv 64 signal 3 } 
	{ grp_fu_159_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_159_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_159_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_159_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_159_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_163_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_163_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_163_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_163_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_163_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_167_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_167_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_167_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_167_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_167_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "llike_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "llike", "role": "address0" }} , 
 	{ "name": "llike_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "llike", "role": "ce0" }} , 
 	{ "name": "llike_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "llike", "role": "we0" }} , 
 	{ "name": "llike_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "llike", "role": "d0" }} , 
 	{ "name": "llike_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "llike", "role": "q0" }} , 
 	{ "name": "llike_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "llike", "role": "address1" }} , 
 	{ "name": "llike_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "llike", "role": "ce1" }} , 
 	{ "name": "llike_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "llike", "role": "q1" }} , 
 	{ "name": "llike_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "llike", "role": "address2" }} , 
 	{ "name": "llike_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "llike", "role": "ce2" }} , 
 	{ "name": "llike_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "llike", "role": "q2" }} , 
 	{ "name": "obs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "obs", "role": "address0" }} , 
 	{ "name": "obs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "obs", "role": "ce0" }} , 
 	{ "name": "obs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "obs", "role": "q0" }} , 
 	{ "name": "transition_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "transition", "role": "address0" }} , 
 	{ "name": "transition_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "transition", "role": "ce0" }} , 
 	{ "name": "transition_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "transition", "role": "q0" }} , 
 	{ "name": "transition_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "transition", "role": "address1" }} , 
 	{ "name": "transition_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "transition", "role": "ce1" }} , 
 	{ "name": "transition_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "transition", "role": "q1" }} , 
 	{ "name": "emission_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "emission", "role": "address0" }} , 
 	{ "name": "emission_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emission", "role": "ce0" }} , 
 	{ "name": "emission_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "emission", "role": "q0" }} , 
 	{ "name": "grp_fu_159_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_159_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_159_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_159_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_159_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_159_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_159_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_159_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_159_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_159_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_163_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_163_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_163_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_163_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_163_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_163_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_163_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_163_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_163_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_163_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_167_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_167_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_167_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_167_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_167_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_167_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_167_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_167_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_167_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_167_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U8", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U9", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U10", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U12", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U13", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U14", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	viterbi_Pipeline_L_timestep_L_curr_state {
		llike {Type IO LastRead 86 FirstWrite 139}
		obs {Type I LastRead 0 FirstWrite -1}
		transition {Type I LastRead 95 FirstWrite -1}
		emission {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "284781", "Max" : "284781"}
	, {"Name" : "Interval", "Min" : "284781", "Max" : "284781"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	llike { ap_memory {  { llike_address0 mem_address 1 14 }  { llike_ce0 mem_ce 1 1 }  { llike_we0 mem_we 1 1 }  { llike_d0 mem_din 1 64 }  { llike_q0 mem_dout 0 64 }  { llike_address1 MemPortADDR2 1 14 }  { llike_ce1 MemPortCE2 1 1 }  { llike_q1 MemPortDOUT2 0 64 }  { llike_address2 MemPortADDR2 1 14 }  { llike_ce2 MemPortCE2 1 1 }  { llike_q2 MemPortDOUT2 0 64 } } }
	obs { ap_memory {  { obs_address0 mem_address 1 8 }  { obs_ce0 mem_ce 1 1 }  { obs_q0 in_data 0 8 } } }
	transition { ap_memory {  { transition_address0 mem_address 1 12 }  { transition_ce0 mem_ce 1 1 }  { transition_q0 mem_dout 0 64 }  { transition_address1 MemPortADDR2 1 12 }  { transition_ce1 MemPortCE2 1 1 }  { transition_q1 MemPortDOUT2 0 64 } } }
	emission { ap_memory {  { emission_address0 mem_address 1 12 }  { emission_ce0 mem_ce 1 1 }  { emission_q0 mem_dout 0 64 } } }
}
