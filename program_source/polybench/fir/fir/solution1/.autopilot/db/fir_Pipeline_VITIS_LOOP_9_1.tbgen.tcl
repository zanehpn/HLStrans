set moduleName fir_Pipeline_VITIS_LOOP_9_1
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
set C_modelName {fir_Pipeline_VITIS_LOOP_9_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ delay_lane_0_load int 32 regular  }
	{ delay_lane_1 int 32 regular {pointer 2} {global 2}  }
	{ delay_lane_2 int 32 regular {pointer 2} {global 2}  }
	{ delay_lane_3 int 32 regular {pointer 1} {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "delay_lane_0_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "delay_lane_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "delay_lane_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "delay_lane_3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ delay_lane_0_load sc_in sc_lv 32 signal 0 } 
	{ delay_lane_1_i sc_in sc_lv 32 signal 1 } 
	{ delay_lane_1_o sc_out sc_lv 32 signal 1 } 
	{ delay_lane_1_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ delay_lane_2_i sc_in sc_lv 32 signal 2 } 
	{ delay_lane_2_o sc_out sc_lv 32 signal 2 } 
	{ delay_lane_2_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ delay_lane_3 sc_out sc_lv 32 signal 3 } 
	{ delay_lane_3_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "delay_lane_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "delay_lane_0_load", "role": "default" }} , 
 	{ "name": "delay_lane_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "delay_lane_1", "role": "i" }} , 
 	{ "name": "delay_lane_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "delay_lane_1", "role": "o" }} , 
 	{ "name": "delay_lane_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "delay_lane_1", "role": "o_ap_vld" }} , 
 	{ "name": "delay_lane_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "delay_lane_2", "role": "i" }} , 
 	{ "name": "delay_lane_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "delay_lane_2", "role": "o" }} , 
 	{ "name": "delay_lane_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "delay_lane_2", "role": "o_ap_vld" }} , 
 	{ "name": "delay_lane_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "delay_lane_3", "role": "default" }} , 
 	{ "name": "delay_lane_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "delay_lane_3", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fir_Pipeline_VITIS_LOOP_9_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "delay_lane_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "delay_lane_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delay_lane_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "delay_lane_3", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_9_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fir_Pipeline_VITIS_LOOP_9_1 {
		delay_lane_0_load {Type I LastRead 0 FirstWrite -1}
		delay_lane_1 {Type IO LastRead 0 FirstWrite 0}
		delay_lane_2 {Type IO LastRead 0 FirstWrite 0}
		delay_lane_3 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	delay_lane_0_load { ap_none {  { delay_lane_0_load in_data 0 32 } } }
	delay_lane_1 { ap_ovld {  { delay_lane_1_i in_data 0 32 }  { delay_lane_1_o out_data 1 32 }  { delay_lane_1_o_ap_vld out_vld 1 1 } } }
	delay_lane_2 { ap_ovld {  { delay_lane_2_i in_data 0 32 }  { delay_lane_2_o out_data 1 32 }  { delay_lane_2_o_ap_vld out_vld 1 1 } } }
	delay_lane_3 { ap_vld {  { delay_lane_3 out_data 1 32 }  { delay_lane_3_ap_vld out_vld 1 1 } } }
}
set moduleName fir_Pipeline_VITIS_LOOP_9_1
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
set C_modelName {fir_Pipeline_VITIS_LOOP_9_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ delay_lane int 32 regular {array 20 { 0 1 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "delay_lane", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ delay_lane_address0 sc_out sc_lv 5 signal 0 } 
	{ delay_lane_ce0 sc_out sc_logic 1 signal 0 } 
	{ delay_lane_we0 sc_out sc_logic 1 signal 0 } 
	{ delay_lane_d0 sc_out sc_lv 32 signal 0 } 
	{ delay_lane_address1 sc_out sc_lv 5 signal 0 } 
	{ delay_lane_ce1 sc_out sc_logic 1 signal 0 } 
	{ delay_lane_q1 sc_in sc_lv 32 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "delay_lane_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "delay_lane", "role": "address0" }} , 
 	{ "name": "delay_lane_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "delay_lane", "role": "ce0" }} , 
 	{ "name": "delay_lane_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "delay_lane", "role": "we0" }} , 
 	{ "name": "delay_lane_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "delay_lane", "role": "d0" }} , 
 	{ "name": "delay_lane_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "delay_lane", "role": "address1" }} , 
 	{ "name": "delay_lane_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "delay_lane", "role": "ce1" }} , 
 	{ "name": "delay_lane_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "delay_lane", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fir_Pipeline_VITIS_LOOP_9_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "delay_lane", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_9_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fir_Pipeline_VITIS_LOOP_9_1 {
		delay_lane {Type IO LastRead 0 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "21", "Max" : "21"}
	, {"Name" : "Interval", "Min" : "21", "Max" : "21"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	delay_lane { ap_memory {  { delay_lane_address0 mem_address 1 5 }  { delay_lane_ce0 mem_ce 1 1 }  { delay_lane_we0 mem_we 1 1 }  { delay_lane_d0 mem_din 1 32 }  { delay_lane_address1 MemPortADDR2 1 5 }  { delay_lane_ce1 MemPortCE2 1 1 }  { delay_lane_q1 in_data 0 32 } } }
}
