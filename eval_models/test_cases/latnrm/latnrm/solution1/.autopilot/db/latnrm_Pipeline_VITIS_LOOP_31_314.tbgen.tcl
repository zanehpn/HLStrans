set moduleName latnrm_Pipeline_VITIS_LOOP_31_314
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
set C_modelName {latnrm_Pipeline_VITIS_LOOP_31_314}
set C_modelType { void 0 }
set C_modelArgList {
	{ internal_state int 32 regular {array 33 { 1 1 } 1 1 }  }
	{ coefficient int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ sum_35_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "internal_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coefficient", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ internal_state_address0 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q0 sc_in sc_lv 32 signal 0 } 
	{ internal_state_address1 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q1 sc_in sc_lv 32 signal 0 } 
	{ coefficient_address0 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce0 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q0 sc_in sc_lv 32 signal 1 } 
	{ coefficient_address1 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce1 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q1 sc_in sc_lv 32 signal 1 } 
	{ sum_35_out sc_out sc_lv 32 signal 2 } 
	{ sum_35_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ grp_fu_1215_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1215_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1219_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "internal_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address0" }} , 
 	{ "name": "internal_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce0" }} , 
 	{ "name": "internal_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q0" }} , 
 	{ "name": "internal_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address1" }} , 
 	{ "name": "internal_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce1" }} , 
 	{ "name": "internal_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q1" }} , 
 	{ "name": "coefficient_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address0" }} , 
 	{ "name": "coefficient_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce0" }} , 
 	{ "name": "coefficient_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q0" }} , 
 	{ "name": "coefficient_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address1" }} , 
 	{ "name": "coefficient_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce1" }} , 
 	{ "name": "coefficient_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q1" }} , 
 	{ "name": "sum_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_35_out", "role": "default" }} , 
 	{ "name": "sum_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_35_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1215_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1215_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1215_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1219_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "latnrm_Pipeline_VITIS_LOOP_31_314",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "166", "EstimateLatencyMax" : "166",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "internal_state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coefficient", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_35_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	latnrm_Pipeline_VITIS_LOOP_31_314 {
		internal_state {Type I LastRead 2 FirstWrite -1}
		coefficient {Type I LastRead 2 FirstWrite -1}
		sum_35_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "166", "Max" : "166"}
	, {"Name" : "Interval", "Min" : "166", "Max" : "166"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	internal_state { ap_memory {  { internal_state_address0 mem_address 1 6 }  { internal_state_ce0 mem_ce 1 1 }  { internal_state_q0 mem_dout 0 32 }  { internal_state_address1 MemPortADDR2 1 6 }  { internal_state_ce1 MemPortCE2 1 1 }  { internal_state_q1 in_data 0 32 } } }
	coefficient { ap_memory {  { coefficient_address0 mem_address 1 6 }  { coefficient_ce0 mem_ce 1 1 }  { coefficient_q0 mem_dout 0 32 }  { coefficient_address1 MemPortADDR2 1 6 }  { coefficient_ce1 MemPortCE2 1 1 }  { coefficient_q1 in_data 0 32 } } }
	sum_35_out { ap_vld {  { sum_35_out out_data 1 32 }  { sum_35_out_ap_vld out_vld 1 1 } } }
}
set moduleName latnrm_Pipeline_VITIS_LOOP_31_314
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
set C_modelName {latnrm_Pipeline_VITIS_LOOP_31_314}
set C_modelType { void 0 }
set C_modelArgList {
	{ internal_state int 32 regular {array 33 { 1 1 } 1 1 }  }
	{ coefficient int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ sum_35_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "internal_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coefficient", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ internal_state_address0 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q0 sc_in sc_lv 32 signal 0 } 
	{ internal_state_address1 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q1 sc_in sc_lv 32 signal 0 } 
	{ coefficient_address0 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce0 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q0 sc_in sc_lv 32 signal 1 } 
	{ coefficient_address1 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce1 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q1 sc_in sc_lv 32 signal 1 } 
	{ sum_35_out sc_out sc_lv 32 signal 2 } 
	{ sum_35_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ grp_fu_1215_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1215_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1219_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "internal_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address0" }} , 
 	{ "name": "internal_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce0" }} , 
 	{ "name": "internal_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q0" }} , 
 	{ "name": "internal_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address1" }} , 
 	{ "name": "internal_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce1" }} , 
 	{ "name": "internal_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q1" }} , 
 	{ "name": "coefficient_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address0" }} , 
 	{ "name": "coefficient_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce0" }} , 
 	{ "name": "coefficient_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q0" }} , 
 	{ "name": "coefficient_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address1" }} , 
 	{ "name": "coefficient_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce1" }} , 
 	{ "name": "coefficient_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q1" }} , 
 	{ "name": "sum_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_35_out", "role": "default" }} , 
 	{ "name": "sum_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_35_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1215_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1215_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1215_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1219_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "latnrm_Pipeline_VITIS_LOOP_31_314",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "166", "EstimateLatencyMax" : "166",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "internal_state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coefficient", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_35_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	latnrm_Pipeline_VITIS_LOOP_31_314 {
		internal_state {Type I LastRead 2 FirstWrite -1}
		coefficient {Type I LastRead 2 FirstWrite -1}
		sum_35_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "166", "Max" : "166"}
	, {"Name" : "Interval", "Min" : "166", "Max" : "166"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	internal_state { ap_memory {  { internal_state_address0 mem_address 1 6 }  { internal_state_ce0 mem_ce 1 1 }  { internal_state_q0 mem_dout 0 32 }  { internal_state_address1 MemPortADDR2 1 6 }  { internal_state_ce1 MemPortCE2 1 1 }  { internal_state_q1 in_data 0 32 } } }
	coefficient { ap_memory {  { coefficient_address0 mem_address 1 6 }  { coefficient_ce0 mem_ce 1 1 }  { coefficient_q0 mem_dout 0 32 }  { coefficient_address1 MemPortADDR2 1 6 }  { coefficient_ce1 MemPortCE2 1 1 }  { coefficient_q1 in_data 0 32 } } }
	sum_35_out { ap_vld {  { sum_35_out out_data 1 32 }  { sum_35_out_ap_vld out_vld 1 1 } } }
}
set moduleName latnrm_Pipeline_VITIS_LOOP_31_314
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
set C_modelName {latnrm_Pipeline_VITIS_LOOP_31_314}
set C_modelType { void 0 }
set C_modelArgList {
	{ internal_state int 32 regular {array 33 { 1 1 } 1 1 }  }
	{ coefficient int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ sum_35_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "internal_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coefficient", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ internal_state_address0 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q0 sc_in sc_lv 32 signal 0 } 
	{ internal_state_address1 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q1 sc_in sc_lv 32 signal 0 } 
	{ coefficient_address0 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce0 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q0 sc_in sc_lv 32 signal 1 } 
	{ coefficient_address1 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce1 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q1 sc_in sc_lv 32 signal 1 } 
	{ sum_35_out sc_out sc_lv 32 signal 2 } 
	{ sum_35_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ grp_fu_1215_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1215_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1219_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "internal_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address0" }} , 
 	{ "name": "internal_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce0" }} , 
 	{ "name": "internal_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q0" }} , 
 	{ "name": "internal_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address1" }} , 
 	{ "name": "internal_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce1" }} , 
 	{ "name": "internal_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q1" }} , 
 	{ "name": "coefficient_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address0" }} , 
 	{ "name": "coefficient_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce0" }} , 
 	{ "name": "coefficient_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q0" }} , 
 	{ "name": "coefficient_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address1" }} , 
 	{ "name": "coefficient_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce1" }} , 
 	{ "name": "coefficient_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q1" }} , 
 	{ "name": "sum_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_35_out", "role": "default" }} , 
 	{ "name": "sum_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_35_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1215_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1215_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1215_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1219_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "latnrm_Pipeline_VITIS_LOOP_31_314",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "166", "EstimateLatencyMax" : "166",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "internal_state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coefficient", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_35_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	latnrm_Pipeline_VITIS_LOOP_31_314 {
		internal_state {Type I LastRead 2 FirstWrite -1}
		coefficient {Type I LastRead 2 FirstWrite -1}
		sum_35_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "166", "Max" : "166"}
	, {"Name" : "Interval", "Min" : "166", "Max" : "166"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	internal_state { ap_memory {  { internal_state_address0 mem_address 1 6 }  { internal_state_ce0 mem_ce 1 1 }  { internal_state_q0 mem_dout 0 32 }  { internal_state_address1 MemPortADDR2 1 6 }  { internal_state_ce1 MemPortCE2 1 1 }  { internal_state_q1 in_data 0 32 } } }
	coefficient { ap_memory {  { coefficient_address0 mem_address 1 6 }  { coefficient_ce0 mem_ce 1 1 }  { coefficient_q0 mem_dout 0 32 }  { coefficient_address1 MemPortADDR2 1 6 }  { coefficient_ce1 MemPortCE2 1 1 }  { coefficient_q1 in_data 0 32 } } }
	sum_35_out { ap_vld {  { sum_35_out out_data 1 32 }  { sum_35_out_ap_vld out_vld 1 1 } } }
}
set moduleName latnrm_Pipeline_VITIS_LOOP_31_314
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
set C_modelName {latnrm_Pipeline_VITIS_LOOP_31_314}
set C_modelType { void 0 }
set C_modelArgList {
	{ internal_state int 32 regular {array 33 { 1 1 } 1 1 }  }
	{ coefficient int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ sum_35_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "internal_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coefficient", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ internal_state_address0 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q0 sc_in sc_lv 32 signal 0 } 
	{ internal_state_address1 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q1 sc_in sc_lv 32 signal 0 } 
	{ coefficient_address0 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce0 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q0 sc_in sc_lv 32 signal 1 } 
	{ coefficient_address1 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce1 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q1 sc_in sc_lv 32 signal 1 } 
	{ sum_35_out sc_out sc_lv 32 signal 2 } 
	{ sum_35_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ grp_fu_1215_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1215_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1219_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "internal_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address0" }} , 
 	{ "name": "internal_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce0" }} , 
 	{ "name": "internal_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q0" }} , 
 	{ "name": "internal_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address1" }} , 
 	{ "name": "internal_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce1" }} , 
 	{ "name": "internal_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q1" }} , 
 	{ "name": "coefficient_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address0" }} , 
 	{ "name": "coefficient_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce0" }} , 
 	{ "name": "coefficient_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q0" }} , 
 	{ "name": "coefficient_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address1" }} , 
 	{ "name": "coefficient_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce1" }} , 
 	{ "name": "coefficient_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q1" }} , 
 	{ "name": "sum_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_35_out", "role": "default" }} , 
 	{ "name": "sum_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_35_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1215_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1215_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1215_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1219_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "latnrm_Pipeline_VITIS_LOOP_31_314",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "166", "EstimateLatencyMax" : "166",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "internal_state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coefficient", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_35_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	latnrm_Pipeline_VITIS_LOOP_31_314 {
		internal_state {Type I LastRead 2 FirstWrite -1}
		coefficient {Type I LastRead 2 FirstWrite -1}
		sum_35_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "166", "Max" : "166"}
	, {"Name" : "Interval", "Min" : "166", "Max" : "166"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	internal_state { ap_memory {  { internal_state_address0 mem_address 1 6 }  { internal_state_ce0 mem_ce 1 1 }  { internal_state_q0 mem_dout 0 32 }  { internal_state_address1 MemPortADDR2 1 6 }  { internal_state_ce1 MemPortCE2 1 1 }  { internal_state_q1 in_data 0 32 } } }
	coefficient { ap_memory {  { coefficient_address0 mem_address 1 6 }  { coefficient_ce0 mem_ce 1 1 }  { coefficient_q0 mem_dout 0 32 }  { coefficient_address1 MemPortADDR2 1 6 }  { coefficient_ce1 MemPortCE2 1 1 }  { coefficient_q1 in_data 0 32 } } }
	sum_35_out { ap_vld {  { sum_35_out out_data 1 32 }  { sum_35_out_ap_vld out_vld 1 1 } } }
}
set moduleName latnrm_Pipeline_VITIS_LOOP_31_314
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
set C_modelName {latnrm_Pipeline_VITIS_LOOP_31_314}
set C_modelType { void 0 }
set C_modelArgList {
	{ internal_state int 32 regular {array 33 { 1 1 } 1 1 }  }
	{ coefficient int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ sum_35_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "internal_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coefficient", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ internal_state_address0 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q0 sc_in sc_lv 32 signal 0 } 
	{ internal_state_address1 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q1 sc_in sc_lv 32 signal 0 } 
	{ coefficient_address0 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce0 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q0 sc_in sc_lv 32 signal 1 } 
	{ coefficient_address1 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce1 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q1 sc_in sc_lv 32 signal 1 } 
	{ sum_35_out sc_out sc_lv 32 signal 2 } 
	{ sum_35_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ grp_fu_1215_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1215_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1219_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "internal_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address0" }} , 
 	{ "name": "internal_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce0" }} , 
 	{ "name": "internal_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q0" }} , 
 	{ "name": "internal_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address1" }} , 
 	{ "name": "internal_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce1" }} , 
 	{ "name": "internal_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q1" }} , 
 	{ "name": "coefficient_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address0" }} , 
 	{ "name": "coefficient_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce0" }} , 
 	{ "name": "coefficient_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q0" }} , 
 	{ "name": "coefficient_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address1" }} , 
 	{ "name": "coefficient_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce1" }} , 
 	{ "name": "coefficient_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q1" }} , 
 	{ "name": "sum_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_35_out", "role": "default" }} , 
 	{ "name": "sum_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_35_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1215_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1215_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1215_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1219_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "latnrm_Pipeline_VITIS_LOOP_31_314",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "166", "EstimateLatencyMax" : "166",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "internal_state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coefficient", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_35_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	latnrm_Pipeline_VITIS_LOOP_31_314 {
		internal_state {Type I LastRead 2 FirstWrite -1}
		coefficient {Type I LastRead 2 FirstWrite -1}
		sum_35_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "166", "Max" : "166"}
	, {"Name" : "Interval", "Min" : "166", "Max" : "166"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	internal_state { ap_memory {  { internal_state_address0 mem_address 1 6 }  { internal_state_ce0 mem_ce 1 1 }  { internal_state_q0 mem_dout 0 32 }  { internal_state_address1 MemPortADDR2 1 6 }  { internal_state_ce1 MemPortCE2 1 1 }  { internal_state_q1 in_data 0 32 } } }
	coefficient { ap_memory {  { coefficient_address0 mem_address 1 6 }  { coefficient_ce0 mem_ce 1 1 }  { coefficient_q0 mem_dout 0 32 }  { coefficient_address1 MemPortADDR2 1 6 }  { coefficient_ce1 MemPortCE2 1 1 }  { coefficient_q1 in_data 0 32 } } }
	sum_35_out { ap_vld {  { sum_35_out out_data 1 32 }  { sum_35_out_ap_vld out_vld 1 1 } } }
}
set moduleName latnrm_Pipeline_VITIS_LOOP_31_314
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
set C_modelName {latnrm_Pipeline_VITIS_LOOP_31_314}
set C_modelType { void 0 }
set C_modelArgList {
	{ internal_state int 32 regular {array 33 { 1 1 } 1 1 }  }
	{ coefficient int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ sum_35_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "internal_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coefficient", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ internal_state_address0 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q0 sc_in sc_lv 32 signal 0 } 
	{ internal_state_address1 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q1 sc_in sc_lv 32 signal 0 } 
	{ coefficient_address0 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce0 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q0 sc_in sc_lv 32 signal 1 } 
	{ coefficient_address1 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce1 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q1 sc_in sc_lv 32 signal 1 } 
	{ sum_35_out sc_out sc_lv 32 signal 2 } 
	{ sum_35_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ grp_fu_1215_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1215_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1219_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "internal_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address0" }} , 
 	{ "name": "internal_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce0" }} , 
 	{ "name": "internal_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q0" }} , 
 	{ "name": "internal_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address1" }} , 
 	{ "name": "internal_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce1" }} , 
 	{ "name": "internal_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q1" }} , 
 	{ "name": "coefficient_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address0" }} , 
 	{ "name": "coefficient_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce0" }} , 
 	{ "name": "coefficient_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q0" }} , 
 	{ "name": "coefficient_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address1" }} , 
 	{ "name": "coefficient_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce1" }} , 
 	{ "name": "coefficient_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q1" }} , 
 	{ "name": "sum_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_35_out", "role": "default" }} , 
 	{ "name": "sum_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_35_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1215_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1215_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1215_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1219_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "latnrm_Pipeline_VITIS_LOOP_31_314",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "166", "EstimateLatencyMax" : "166",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "internal_state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coefficient", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_35_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	latnrm_Pipeline_VITIS_LOOP_31_314 {
		internal_state {Type I LastRead 2 FirstWrite -1}
		coefficient {Type I LastRead 2 FirstWrite -1}
		sum_35_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "166", "Max" : "166"}
	, {"Name" : "Interval", "Min" : "166", "Max" : "166"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	internal_state { ap_memory {  { internal_state_address0 mem_address 1 6 }  { internal_state_ce0 mem_ce 1 1 }  { internal_state_q0 mem_dout 0 32 }  { internal_state_address1 MemPortADDR2 1 6 }  { internal_state_ce1 MemPortCE2 1 1 }  { internal_state_q1 in_data 0 32 } } }
	coefficient { ap_memory {  { coefficient_address0 mem_address 1 6 }  { coefficient_ce0 mem_ce 1 1 }  { coefficient_q0 mem_dout 0 32 }  { coefficient_address1 MemPortADDR2 1 6 }  { coefficient_ce1 MemPortCE2 1 1 }  { coefficient_q1 in_data 0 32 } } }
	sum_35_out { ap_vld {  { sum_35_out out_data 1 32 }  { sum_35_out_ap_vld out_vld 1 1 } } }
}
set moduleName latnrm_Pipeline_VITIS_LOOP_31_314
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
set C_modelName {latnrm_Pipeline_VITIS_LOOP_31_314}
set C_modelType { void 0 }
set C_modelArgList {
	{ internal_state int 32 regular {array 33 { 1 1 } 1 1 }  }
	{ coefficient int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ sum_35_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "internal_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coefficient", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ internal_state_address0 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q0 sc_in sc_lv 32 signal 0 } 
	{ internal_state_address1 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q1 sc_in sc_lv 32 signal 0 } 
	{ coefficient_address0 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce0 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q0 sc_in sc_lv 32 signal 1 } 
	{ coefficient_address1 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce1 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q1 sc_in sc_lv 32 signal 1 } 
	{ sum_35_out sc_out sc_lv 32 signal 2 } 
	{ sum_35_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ grp_fu_1215_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1215_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1219_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "internal_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address0" }} , 
 	{ "name": "internal_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce0" }} , 
 	{ "name": "internal_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q0" }} , 
 	{ "name": "internal_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address1" }} , 
 	{ "name": "internal_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce1" }} , 
 	{ "name": "internal_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q1" }} , 
 	{ "name": "coefficient_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address0" }} , 
 	{ "name": "coefficient_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce0" }} , 
 	{ "name": "coefficient_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q0" }} , 
 	{ "name": "coefficient_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address1" }} , 
 	{ "name": "coefficient_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce1" }} , 
 	{ "name": "coefficient_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q1" }} , 
 	{ "name": "sum_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_35_out", "role": "default" }} , 
 	{ "name": "sum_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_35_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1215_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1215_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1215_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1219_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "latnrm_Pipeline_VITIS_LOOP_31_314",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "166", "EstimateLatencyMax" : "166",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "internal_state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coefficient", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_35_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	latnrm_Pipeline_VITIS_LOOP_31_314 {
		internal_state {Type I LastRead 2 FirstWrite -1}
		coefficient {Type I LastRead 2 FirstWrite -1}
		sum_35_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "166", "Max" : "166"}
	, {"Name" : "Interval", "Min" : "166", "Max" : "166"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	internal_state { ap_memory {  { internal_state_address0 mem_address 1 6 }  { internal_state_ce0 mem_ce 1 1 }  { internal_state_q0 mem_dout 0 32 }  { internal_state_address1 MemPortADDR2 1 6 }  { internal_state_ce1 MemPortCE2 1 1 }  { internal_state_q1 in_data 0 32 } } }
	coefficient { ap_memory {  { coefficient_address0 mem_address 1 6 }  { coefficient_ce0 mem_ce 1 1 }  { coefficient_q0 mem_dout 0 32 }  { coefficient_address1 MemPortADDR2 1 6 }  { coefficient_ce1 MemPortCE2 1 1 }  { coefficient_q1 in_data 0 32 } } }
	sum_35_out { ap_vld {  { sum_35_out out_data 1 32 }  { sum_35_out_ap_vld out_vld 1 1 } } }
}
set moduleName latnrm_Pipeline_VITIS_LOOP_31_314
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
set C_modelName {latnrm_Pipeline_VITIS_LOOP_31_314}
set C_modelType { void 0 }
set C_modelArgList {
	{ internal_state int 32 regular {array 33 { 1 1 } 1 1 }  }
	{ coefficient int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ sum_35_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "internal_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coefficient", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ internal_state_address0 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q0 sc_in sc_lv 32 signal 0 } 
	{ internal_state_address1 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q1 sc_in sc_lv 32 signal 0 } 
	{ coefficient_address0 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce0 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q0 sc_in sc_lv 32 signal 1 } 
	{ coefficient_address1 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce1 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q1 sc_in sc_lv 32 signal 1 } 
	{ sum_35_out sc_out sc_lv 32 signal 2 } 
	{ sum_35_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ grp_fu_1215_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1215_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1219_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "internal_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address0" }} , 
 	{ "name": "internal_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce0" }} , 
 	{ "name": "internal_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q0" }} , 
 	{ "name": "internal_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address1" }} , 
 	{ "name": "internal_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce1" }} , 
 	{ "name": "internal_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q1" }} , 
 	{ "name": "coefficient_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address0" }} , 
 	{ "name": "coefficient_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce0" }} , 
 	{ "name": "coefficient_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q0" }} , 
 	{ "name": "coefficient_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address1" }} , 
 	{ "name": "coefficient_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce1" }} , 
 	{ "name": "coefficient_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q1" }} , 
 	{ "name": "sum_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_35_out", "role": "default" }} , 
 	{ "name": "sum_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_35_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1215_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1215_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1215_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1219_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "latnrm_Pipeline_VITIS_LOOP_31_314",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "166", "EstimateLatencyMax" : "166",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "internal_state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coefficient", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_35_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	latnrm_Pipeline_VITIS_LOOP_31_314 {
		internal_state {Type I LastRead 2 FirstWrite -1}
		coefficient {Type I LastRead 2 FirstWrite -1}
		sum_35_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "166", "Max" : "166"}
	, {"Name" : "Interval", "Min" : "166", "Max" : "166"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	internal_state { ap_memory {  { internal_state_address0 mem_address 1 6 }  { internal_state_ce0 mem_ce 1 1 }  { internal_state_q0 mem_dout 0 32 }  { internal_state_address1 MemPortADDR2 1 6 }  { internal_state_ce1 MemPortCE2 1 1 }  { internal_state_q1 in_data 0 32 } } }
	coefficient { ap_memory {  { coefficient_address0 mem_address 1 6 }  { coefficient_ce0 mem_ce 1 1 }  { coefficient_q0 mem_dout 0 32 }  { coefficient_address1 MemPortADDR2 1 6 }  { coefficient_ce1 MemPortCE2 1 1 }  { coefficient_q1 in_data 0 32 } } }
	sum_35_out { ap_vld {  { sum_35_out out_data 1 32 }  { sum_35_out_ap_vld out_vld 1 1 } } }
}
set moduleName latnrm_Pipeline_VITIS_LOOP_31_314
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
set C_modelName {latnrm_Pipeline_VITIS_LOOP_31_314}
set C_modelType { void 0 }
set C_modelArgList {
	{ internal_state int 32 regular {array 33 { 1 1 } 1 1 }  }
	{ coefficient int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ sum_35_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "internal_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coefficient", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ internal_state_address0 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q0 sc_in sc_lv 32 signal 0 } 
	{ internal_state_address1 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q1 sc_in sc_lv 32 signal 0 } 
	{ coefficient_address0 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce0 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q0 sc_in sc_lv 32 signal 1 } 
	{ coefficient_address1 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce1 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q1 sc_in sc_lv 32 signal 1 } 
	{ sum_35_out sc_out sc_lv 32 signal 2 } 
	{ sum_35_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ grp_fu_1215_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1215_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1219_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "internal_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address0" }} , 
 	{ "name": "internal_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce0" }} , 
 	{ "name": "internal_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q0" }} , 
 	{ "name": "internal_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address1" }} , 
 	{ "name": "internal_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce1" }} , 
 	{ "name": "internal_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q1" }} , 
 	{ "name": "coefficient_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address0" }} , 
 	{ "name": "coefficient_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce0" }} , 
 	{ "name": "coefficient_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q0" }} , 
 	{ "name": "coefficient_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address1" }} , 
 	{ "name": "coefficient_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce1" }} , 
 	{ "name": "coefficient_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q1" }} , 
 	{ "name": "sum_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_35_out", "role": "default" }} , 
 	{ "name": "sum_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_35_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1215_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1215_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1215_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1219_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "latnrm_Pipeline_VITIS_LOOP_31_314",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "166", "EstimateLatencyMax" : "166",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "internal_state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coefficient", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_35_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	latnrm_Pipeline_VITIS_LOOP_31_314 {
		internal_state {Type I LastRead 2 FirstWrite -1}
		coefficient {Type I LastRead 2 FirstWrite -1}
		sum_35_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "166", "Max" : "166"}
	, {"Name" : "Interval", "Min" : "166", "Max" : "166"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	internal_state { ap_memory {  { internal_state_address0 mem_address 1 6 }  { internal_state_ce0 mem_ce 1 1 }  { internal_state_q0 mem_dout 0 32 }  { internal_state_address1 MemPortADDR2 1 6 }  { internal_state_ce1 MemPortCE2 1 1 }  { internal_state_q1 in_data 0 32 } } }
	coefficient { ap_memory {  { coefficient_address0 mem_address 1 6 }  { coefficient_ce0 mem_ce 1 1 }  { coefficient_q0 mem_dout 0 32 }  { coefficient_address1 MemPortADDR2 1 6 }  { coefficient_ce1 MemPortCE2 1 1 }  { coefficient_q1 in_data 0 32 } } }
	sum_35_out { ap_vld {  { sum_35_out out_data 1 32 }  { sum_35_out_ap_vld out_vld 1 1 } } }
}
set moduleName latnrm_Pipeline_VITIS_LOOP_31_314
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
set C_modelName {latnrm_Pipeline_VITIS_LOOP_31_314}
set C_modelType { void 0 }
set C_modelArgList {
	{ internal_state int 32 regular {array 33 { 1 1 } 1 1 }  }
	{ coefficient int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ sum_35_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "internal_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coefficient", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ internal_state_address0 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q0 sc_in sc_lv 32 signal 0 } 
	{ internal_state_address1 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q1 sc_in sc_lv 32 signal 0 } 
	{ coefficient_address0 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce0 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q0 sc_in sc_lv 32 signal 1 } 
	{ coefficient_address1 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce1 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q1 sc_in sc_lv 32 signal 1 } 
	{ sum_35_out sc_out sc_lv 32 signal 2 } 
	{ sum_35_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ grp_fu_1215_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1215_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1219_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "internal_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address0" }} , 
 	{ "name": "internal_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce0" }} , 
 	{ "name": "internal_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q0" }} , 
 	{ "name": "internal_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address1" }} , 
 	{ "name": "internal_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce1" }} , 
 	{ "name": "internal_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q1" }} , 
 	{ "name": "coefficient_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address0" }} , 
 	{ "name": "coefficient_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce0" }} , 
 	{ "name": "coefficient_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q0" }} , 
 	{ "name": "coefficient_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address1" }} , 
 	{ "name": "coefficient_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce1" }} , 
 	{ "name": "coefficient_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q1" }} , 
 	{ "name": "sum_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_35_out", "role": "default" }} , 
 	{ "name": "sum_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_35_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1215_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1215_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1215_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1219_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "latnrm_Pipeline_VITIS_LOOP_31_314",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "166", "EstimateLatencyMax" : "166",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "internal_state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coefficient", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_35_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	latnrm_Pipeline_VITIS_LOOP_31_314 {
		internal_state {Type I LastRead 2 FirstWrite -1}
		coefficient {Type I LastRead 2 FirstWrite -1}
		sum_35_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "166", "Max" : "166"}
	, {"Name" : "Interval", "Min" : "166", "Max" : "166"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	internal_state { ap_memory {  { internal_state_address0 mem_address 1 6 }  { internal_state_ce0 mem_ce 1 1 }  { internal_state_q0 mem_dout 0 32 }  { internal_state_address1 MemPortADDR2 1 6 }  { internal_state_ce1 MemPortCE2 1 1 }  { internal_state_q1 in_data 0 32 } } }
	coefficient { ap_memory {  { coefficient_address0 mem_address 1 6 }  { coefficient_ce0 mem_ce 1 1 }  { coefficient_q0 mem_dout 0 32 }  { coefficient_address1 MemPortADDR2 1 6 }  { coefficient_ce1 MemPortCE2 1 1 }  { coefficient_q1 in_data 0 32 } } }
	sum_35_out { ap_vld {  { sum_35_out out_data 1 32 }  { sum_35_out_ap_vld out_vld 1 1 } } }
}
set moduleName latnrm_Pipeline_VITIS_LOOP_31_314
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
set C_modelName {latnrm_Pipeline_VITIS_LOOP_31_314}
set C_modelType { void 0 }
set C_modelArgList {
	{ internal_state int 32 regular {array 33 { 1 1 } 1 1 }  }
	{ coefficient int 32 regular {array 64 { 1 1 } 1 1 }  }
	{ sum_35_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "internal_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coefficient", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ internal_state_address0 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce0 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q0 sc_in sc_lv 32 signal 0 } 
	{ internal_state_address1 sc_out sc_lv 6 signal 0 } 
	{ internal_state_ce1 sc_out sc_logic 1 signal 0 } 
	{ internal_state_q1 sc_in sc_lv 32 signal 0 } 
	{ coefficient_address0 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce0 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q0 sc_in sc_lv 32 signal 1 } 
	{ coefficient_address1 sc_out sc_lv 6 signal 1 } 
	{ coefficient_ce1 sc_out sc_logic 1 signal 1 } 
	{ coefficient_q1 sc_in sc_lv 32 signal 1 } 
	{ sum_35_out sc_out sc_lv 32 signal 2 } 
	{ sum_35_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ grp_fu_1215_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1215_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1215_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1219_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1219_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "internal_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address0" }} , 
 	{ "name": "internal_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce0" }} , 
 	{ "name": "internal_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q0" }} , 
 	{ "name": "internal_state_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "internal_state", "role": "address1" }} , 
 	{ "name": "internal_state_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "internal_state", "role": "ce1" }} , 
 	{ "name": "internal_state_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state", "role": "q1" }} , 
 	{ "name": "coefficient_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address0" }} , 
 	{ "name": "coefficient_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce0" }} , 
 	{ "name": "coefficient_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q0" }} , 
 	{ "name": "coefficient_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coefficient", "role": "address1" }} , 
 	{ "name": "coefficient_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coefficient", "role": "ce1" }} , 
 	{ "name": "coefficient_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coefficient", "role": "q1" }} , 
 	{ "name": "sum_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_35_out", "role": "default" }} , 
 	{ "name": "sum_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_35_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1215_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1215_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1215_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1215_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1215_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1219_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1219_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1219_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "latnrm_Pipeline_VITIS_LOOP_31_314",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "166", "EstimateLatencyMax" : "166",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "internal_state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coefficient", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_35_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	latnrm_Pipeline_VITIS_LOOP_31_314 {
		internal_state {Type I LastRead 2 FirstWrite -1}
		coefficient {Type I LastRead 2 FirstWrite -1}
		sum_35_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "166", "Max" : "166"}
	, {"Name" : "Interval", "Min" : "166", "Max" : "166"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	internal_state { ap_memory {  { internal_state_address0 mem_address 1 6 }  { internal_state_ce0 mem_ce 1 1 }  { internal_state_q0 mem_dout 0 32 }  { internal_state_address1 MemPortADDR2 1 6 }  { internal_state_ce1 MemPortCE2 1 1 }  { internal_state_q1 in_data 0 32 } } }
	coefficient { ap_memory {  { coefficient_address0 mem_address 1 6 }  { coefficient_ce0 mem_ce 1 1 }  { coefficient_q0 mem_dout 0 32 }  { coefficient_address1 MemPortADDR2 1 6 }  { coefficient_ce1 MemPortCE2 1 1 }  { coefficient_q1 in_data 0 32 } } }
	sum_35_out { ap_vld {  { sum_35_out out_data 1 32 }  { sum_35_out_ap_vld out_vld 1 1 } } }
}
