set moduleName ludcmp_Pipeline_VITIS_LOOP_31_7
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
set C_modelName {ludcmp_Pipeline_VITIS_LOOP_31_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ w double 64 regular  }
	{ i_1 int 6 regular  }
	{ add_ln32 int 11 regular  }
	{ A int 64 regular {array 1600 { 1 3 } 1 1 }  }
	{ y int 64 regular {array 40 { 1 3 } 1 1 }  }
	{ w_3_out double 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "i_1", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln32", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "w_3_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w sc_in sc_lv 64 signal 0 } 
	{ i_1 sc_in sc_lv 6 signal 1 } 
	{ add_ln32 sc_in sc_lv 11 signal 2 } 
	{ A_address0 sc_out sc_lv 11 signal 3 } 
	{ A_ce0 sc_out sc_logic 1 signal 3 } 
	{ A_q0 sc_in sc_lv 64 signal 3 } 
	{ y_address0 sc_out sc_lv 6 signal 4 } 
	{ y_ce0 sc_out sc_logic 1 signal 4 } 
	{ y_q0 sc_in sc_lv 64 signal 4 } 
	{ w_3_out sc_out sc_lv 64 signal 5 } 
	{ w_3_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ grp_fu_848_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_848_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_848_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_848_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_848_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_852_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_852_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_852_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_852_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w", "role": "default" }} , 
 	{ "name": "i_1", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "i_1", "role": "default" }} , 
 	{ "name": "add_ln32", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "add_ln32", "role": "default" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "w_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "w_3_out", "role": "default" }} , 
 	{ "name": "w_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w_3_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_848_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_848_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_848_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_848_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_848_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_848_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_848_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_848_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_848_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_848_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_852_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_852_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_852_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_852_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_852_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_852_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_852_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_852_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ludcmp_Pipeline_VITIS_LOOP_31_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "165",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln32", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ludcmp_Pipeline_VITIS_LOOP_31_7 {
		w {Type I LastRead 0 FirstWrite -1}
		i_1 {Type I LastRead 0 FirstWrite -1}
		add_ln32 {Type I LastRead 0 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}
		w_3_out {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "165"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "165"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	w { ap_none {  { w in_data 0 64 } } }
	i_1 { ap_none {  { i_1 in_data 0 6 } } }
	add_ln32 { ap_none {  { add_ln32 in_data 0 11 } } }
	A { ap_memory {  { A_address0 mem_address 1 11 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 64 } } }
	y { ap_memory {  { y_address0 mem_address 1 6 }  { y_ce0 mem_ce 1 1 }  { y_q0 mem_dout 0 64 } } }
	w_3_out { ap_vld {  { w_3_out out_data 1 64 }  { w_3_out_ap_vld out_vld 1 1 } } }
}
