set moduleName syrk_Pipeline_lp4_lp5
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
set C_modelName {syrk_Pipeline_lp4_lp5}
set C_modelType { void 0 }
set C_modelArgList {
	{ buff_B float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ buff_C_out float 32 regular {array 4096 { 0 1 } 1 1 }  }
	{ beta float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buff_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buff_C_out", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "beta", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buff_B_address0 sc_out sc_lv 12 signal 0 } 
	{ buff_B_ce0 sc_out sc_logic 1 signal 0 } 
	{ buff_B_q0 sc_in sc_lv 32 signal 0 } 
	{ buff_C_out_address0 sc_out sc_lv 12 signal 1 } 
	{ buff_C_out_ce0 sc_out sc_logic 1 signal 1 } 
	{ buff_C_out_we0 sc_out sc_logic 1 signal 1 } 
	{ buff_C_out_d0 sc_out sc_lv 32 signal 1 } 
	{ buff_C_out_address1 sc_out sc_lv 12 signal 1 } 
	{ buff_C_out_ce1 sc_out sc_logic 1 signal 1 } 
	{ buff_C_out_q1 sc_in sc_lv 32 signal 1 } 
	{ beta sc_in sc_lv 32 signal 2 } 
	{ grp_fu_118_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_118_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_118_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_118_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_118_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_122_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_122_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_122_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_122_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buff_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address0" }} , 
 	{ "name": "buff_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce0" }} , 
 	{ "name": "buff_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q0" }} , 
 	{ "name": "buff_C_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C_out", "role": "address0" }} , 
 	{ "name": "buff_C_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C_out", "role": "ce0" }} , 
 	{ "name": "buff_C_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C_out", "role": "we0" }} , 
 	{ "name": "buff_C_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C_out", "role": "d0" }} , 
 	{ "name": "buff_C_out_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C_out", "role": "address1" }} , 
 	{ "name": "buff_C_out_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C_out", "role": "ce1" }} , 
 	{ "name": "buff_C_out_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C_out", "role": "q1" }} , 
 	{ "name": "beta", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "beta", "role": "default" }} , 
 	{ "name": "grp_fu_118_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_118_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_118_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_118_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_118_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_118_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_118_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_118_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_118_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_118_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_122_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_122_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_122_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_122_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_122_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_122_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_122_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_122_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "syrk_Pipeline_lp4_lp5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4108", "EstimateLatencyMax" : "4108",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_C_out", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "beta", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "lp4_lp5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	syrk_Pipeline_lp4_lp5 {
		buff_B {Type I LastRead 0 FirstWrite -1}
		buff_C_out {Type IO LastRead 4 FirstWrite 11}
		beta {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4108", "Max" : "4108"}
	, {"Name" : "Interval", "Min" : "4108", "Max" : "4108"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	buff_B { ap_memory {  { buff_B_address0 mem_address 1 12 }  { buff_B_ce0 mem_ce 1 1 }  { buff_B_q0 mem_dout 0 32 } } }
	buff_C_out { ap_memory {  { buff_C_out_address0 mem_address 1 12 }  { buff_C_out_ce0 mem_ce 1 1 }  { buff_C_out_we0 mem_we 1 1 }  { buff_C_out_d0 mem_din 1 32 }  { buff_C_out_address1 MemPortADDR2 1 12 }  { buff_C_out_ce1 MemPortCE2 1 1 }  { buff_C_out_q1 MemPortDOUT2 0 32 } } }
	beta { ap_none {  { beta in_data 0 32 } } }
}
