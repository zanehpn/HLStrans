set moduleName fdtd_2d_Pipeline_VITIS_LOOP_18_3_VITIS_LOOP_20_4
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
set C_modelName {fdtd_2d_Pipeline_VITIS_LOOP_18_3_VITIS_LOOP_20_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ ey int 64 regular {array 4800 { 0 1 } 1 1 }  }
	{ hz int 64 regular {array 4800 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ey", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "hz", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ey_address0 sc_out sc_lv 13 signal 0 } 
	{ ey_ce0 sc_out sc_logic 1 signal 0 } 
	{ ey_we0 sc_out sc_logic 1 signal 0 } 
	{ ey_d0 sc_out sc_lv 64 signal 0 } 
	{ ey_address1 sc_out sc_lv 13 signal 0 } 
	{ ey_ce1 sc_out sc_logic 1 signal 0 } 
	{ ey_q1 sc_in sc_lv 64 signal 0 } 
	{ hz_address0 sc_out sc_lv 13 signal 1 } 
	{ hz_ce0 sc_out sc_logic 1 signal 1 } 
	{ hz_q0 sc_in sc_lv 64 signal 1 } 
	{ hz_address1 sc_out sc_lv 13 signal 1 } 
	{ hz_ce1 sc_out sc_logic 1 signal 1 } 
	{ hz_q1 sc_in sc_lv 64 signal 1 } 
	{ grp_fu_158_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_158_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_158_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_158_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_158_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_162_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_162_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_162_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_162_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_162_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_166_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_166_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_166_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_166_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ey", "role": "address0" }} , 
 	{ "name": "ey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ey", "role": "ce0" }} , 
 	{ "name": "ey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ey", "role": "we0" }} , 
 	{ "name": "ey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ey", "role": "d0" }} , 
 	{ "name": "ey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ey", "role": "address1" }} , 
 	{ "name": "ey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ey", "role": "ce1" }} , 
 	{ "name": "ey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ey", "role": "q1" }} , 
 	{ "name": "hz_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "hz", "role": "address0" }} , 
 	{ "name": "hz_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hz", "role": "ce0" }} , 
 	{ "name": "hz_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hz", "role": "q0" }} , 
 	{ "name": "hz_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "hz", "role": "address1" }} , 
 	{ "name": "hz_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hz", "role": "ce1" }} , 
 	{ "name": "hz_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hz", "role": "q1" }} , 
 	{ "name": "grp_fu_158_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_158_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_158_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_158_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_158_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_158_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_158_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_158_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_158_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_158_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_162_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_162_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_162_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_162_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_162_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_166_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_166_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_166_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_166_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fdtd_2d_Pipeline_VITIS_LOOP_18_3_VITIS_LOOP_20_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4739", "EstimateLatencyMax" : "4739",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "hz", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_18_3_VITIS_LOOP_20_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fdtd_2d_Pipeline_VITIS_LOOP_18_3_VITIS_LOOP_20_4 {
		ey {Type IO LastRead 11 FirstWrite 18}
		hz {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4739", "Max" : "4739"}
	, {"Name" : "Interval", "Min" : "4739", "Max" : "4739"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ey { ap_memory {  { ey_address0 mem_address 1 13 }  { ey_ce0 mem_ce 1 1 }  { ey_we0 mem_we 1 1 }  { ey_d0 mem_din 1 64 }  { ey_address1 MemPortADDR2 1 13 }  { ey_ce1 MemPortCE2 1 1 }  { ey_q1 MemPortDOUT2 0 64 } } }
	hz { ap_memory {  { hz_address0 mem_address 1 13 }  { hz_ce0 mem_ce 1 1 }  { hz_q0 mem_dout 0 64 }  { hz_address1 MemPortADDR2 1 13 }  { hz_ce1 MemPortCE2 1 1 }  { hz_q1 MemPortDOUT2 0 64 } } }
}
