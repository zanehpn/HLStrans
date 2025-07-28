set moduleName correlation_Pipeline_VITIS_LOOP_10_1_VITIS_LOOP_13_2
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
set C_modelName {correlation_Pipeline_VITIS_LOOP_10_1_VITIS_LOOP_13_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ data int 64 regular {array 8000 { 1 3 } 1 1 }  }
	{ float_n double 64 regular  }
	{ mean int 64 regular {array 80 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "float_n", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mean", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_address0 sc_out sc_lv 13 signal 0 } 
	{ data_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_q0 sc_in sc_lv 64 signal 0 } 
	{ float_n sc_in sc_lv 64 signal 1 } 
	{ mean_address0 sc_out sc_lv 7 signal 2 } 
	{ mean_ce0 sc_out sc_logic 1 signal 2 } 
	{ mean_we0 sc_out sc_logic 1 signal 2 } 
	{ mean_d0 sc_out sc_lv 64 signal 2 } 
	{ grp_fu_674_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_674_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_674_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_674_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_674_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_292_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_292_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_292_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_292_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "float_n", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "float_n", "role": "default" }} , 
 	{ "name": "mean_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "mean", "role": "address0" }} , 
 	{ "name": "mean_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mean", "role": "ce0" }} , 
 	{ "name": "mean_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mean", "role": "we0" }} , 
 	{ "name": "mean_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mean", "role": "d0" }} , 
 	{ "name": "grp_fu_674_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_674_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_674_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_674_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_674_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_674_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_674_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_674_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_674_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_674_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_292_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_292_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_292_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_292_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_292_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_292_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_292_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_292_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "correlation_Pipeline_VITIS_LOOP_10_1_VITIS_LOOP_13_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40027", "EstimateLatencyMax" : "40027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "float_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "mean", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_10_1_VITIS_LOOP_13_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	correlation_Pipeline_VITIS_LOOP_10_1_VITIS_LOOP_13_2 {
		data {Type I LastRead 1 FirstWrite -1}
		float_n {Type I LastRead 0 FirstWrite -1}
		mean {Type O LastRead -1 FirstWrite 30}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "40027", "Max" : "40027"}
	, {"Name" : "Interval", "Min" : "40027", "Max" : "40027"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data { ap_memory {  { data_address0 mem_address 1 13 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 64 } } }
	float_n { ap_none {  { float_n in_data 0 64 } } }
	mean { ap_memory {  { mean_address0 mem_address 1 7 }  { mean_ce0 mem_ce 1 1 }  { mean_we0 mem_we 1 1 }  { mean_d0 mem_din 1 64 } } }
}
