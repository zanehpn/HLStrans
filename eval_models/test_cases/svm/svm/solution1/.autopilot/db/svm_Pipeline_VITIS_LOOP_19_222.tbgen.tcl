set moduleName svm_Pipeline_VITIS_LOOP_19_222
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
set C_modelName {svm_Pipeline_VITIS_LOOP_19_222}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln15_21 int 11 regular  }
	{ test_vector int 32 regular {array 18 { 1 3 } 1 1 }  }
	{ norma_44_out float 32 regular {pointer 1}  }
	{ sup_vectors float 32 regular {array 22464 { 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln15_21", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "test_vector", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "norma_44_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sup_vectors", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln15_21 sc_in sc_lv 11 signal 0 } 
	{ test_vector_address0 sc_out sc_lv 5 signal 1 } 
	{ test_vector_ce0 sc_out sc_logic 1 signal 1 } 
	{ test_vector_q0 sc_in sc_lv 32 signal 1 } 
	{ norma_44_out sc_out sc_lv 32 signal 2 } 
	{ norma_44_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ sup_vectors_address0 sc_out sc_lv 15 signal 3 } 
	{ sup_vectors_ce0 sc_out sc_logic 1 signal 3 } 
	{ sup_vectors_q0 sc_in sc_lv 32 signal 3 } 
	{ grp_fu_2125_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2125_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2125_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2125_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2125_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_900_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_900_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_900_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_900_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2129_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2129_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2129_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2129_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2129_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln15_21", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "zext_ln15_21", "role": "default" }} , 
 	{ "name": "test_vector_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "test_vector", "role": "address0" }} , 
 	{ "name": "test_vector_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "test_vector", "role": "ce0" }} , 
 	{ "name": "test_vector_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "test_vector", "role": "q0" }} , 
 	{ "name": "norma_44_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "norma_44_out", "role": "default" }} , 
 	{ "name": "norma_44_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "norma_44_out", "role": "ap_vld" }} , 
 	{ "name": "sup_vectors_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "sup_vectors", "role": "address0" }} , 
 	{ "name": "sup_vectors_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sup_vectors", "role": "ce0" }} , 
 	{ "name": "sup_vectors_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sup_vectors", "role": "q0" }} , 
 	{ "name": "grp_fu_2125_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2125_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2125_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2125_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2125_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2125_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2125_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2125_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2125_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2125_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_900_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_900_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_900_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_900_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_900_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_900_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_900_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_900_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2129_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2129_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2129_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2129_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2129_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2129_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2129_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2129_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2129_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2129_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "svm_Pipeline_VITIS_LOOP_19_222",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln15_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "test_vector", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "norma_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sup_vectors", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_19_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	svm_Pipeline_VITIS_LOOP_19_222 {
		zext_ln15_21 {Type I LastRead 0 FirstWrite -1}
		test_vector {Type I LastRead 0 FirstWrite -1}
		norma_44_out {Type O LastRead -1 FirstWrite 11}
		sup_vectors {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "67", "Max" : "67"}
	, {"Name" : "Interval", "Min" : "67", "Max" : "67"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln15_21 { ap_none {  { zext_ln15_21 in_data 0 11 } } }
	test_vector { ap_memory {  { test_vector_address0 mem_address 1 5 }  { test_vector_ce0 mem_ce 1 1 }  { test_vector_q0 mem_dout 0 32 } } }
	norma_44_out { ap_vld {  { norma_44_out out_data 1 32 }  { norma_44_out_ap_vld out_vld 1 1 } } }
	sup_vectors { ap_memory {  { sup_vectors_address0 mem_address 1 15 }  { sup_vectors_ce0 mem_ce 1 1 }  { sup_vectors_q0 mem_dout 0 32 } } }
}
set moduleName svm_Pipeline_VITIS_LOOP_19_222
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
set C_modelName {svm_Pipeline_VITIS_LOOP_19_222}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln15_21 int 11 regular  }
	{ test_vector int 32 regular {array 18 { 1 3 } 1 1 }  }
	{ norma_44_out float 32 regular {pointer 1}  }
	{ sup_vectors float 32 regular {array 22464 { 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln15_21", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "test_vector", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "norma_44_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sup_vectors", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln15_21 sc_in sc_lv 11 signal 0 } 
	{ test_vector_address0 sc_out sc_lv 5 signal 1 } 
	{ test_vector_ce0 sc_out sc_logic 1 signal 1 } 
	{ test_vector_q0 sc_in sc_lv 32 signal 1 } 
	{ norma_44_out sc_out sc_lv 32 signal 2 } 
	{ norma_44_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ sup_vectors_address0 sc_out sc_lv 15 signal 3 } 
	{ sup_vectors_ce0 sc_out sc_logic 1 signal 3 } 
	{ sup_vectors_q0 sc_in sc_lv 32 signal 3 } 
	{ grp_fu_2125_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2125_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2125_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2125_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2125_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_900_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_900_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_900_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_900_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2129_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2129_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2129_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_2129_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2129_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln15_21", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "zext_ln15_21", "role": "default" }} , 
 	{ "name": "test_vector_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "test_vector", "role": "address0" }} , 
 	{ "name": "test_vector_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "test_vector", "role": "ce0" }} , 
 	{ "name": "test_vector_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "test_vector", "role": "q0" }} , 
 	{ "name": "norma_44_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "norma_44_out", "role": "default" }} , 
 	{ "name": "norma_44_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "norma_44_out", "role": "ap_vld" }} , 
 	{ "name": "sup_vectors_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "sup_vectors", "role": "address0" }} , 
 	{ "name": "sup_vectors_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sup_vectors", "role": "ce0" }} , 
 	{ "name": "sup_vectors_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sup_vectors", "role": "q0" }} , 
 	{ "name": "grp_fu_2125_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2125_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2125_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2125_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2125_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2125_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2125_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2125_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2125_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2125_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_900_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_900_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_900_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_900_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_900_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_900_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_900_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_900_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2129_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2129_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2129_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2129_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2129_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_2129_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2129_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2129_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2129_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2129_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "svm_Pipeline_VITIS_LOOP_19_222",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln15_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "test_vector", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "norma_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sup_vectors", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_19_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	svm_Pipeline_VITIS_LOOP_19_222 {
		zext_ln15_21 {Type I LastRead 0 FirstWrite -1}
		test_vector {Type I LastRead 0 FirstWrite -1}
		norma_44_out {Type O LastRead -1 FirstWrite 11}
		sup_vectors {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "67", "Max" : "67"}
	, {"Name" : "Interval", "Min" : "67", "Max" : "67"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln15_21 { ap_none {  { zext_ln15_21 in_data 0 11 } } }
	test_vector { ap_memory {  { test_vector_address0 mem_address 1 5 }  { test_vector_ce0 mem_ce 1 1 }  { test_vector_q0 mem_dout 0 32 } } }
	norma_44_out { ap_vld {  { norma_44_out out_data 1 32 }  { norma_44_out_ap_vld out_vld 1 1 } } }
	sup_vectors { ap_memory {  { sup_vectors_address0 mem_address 1 15 }  { sup_vectors_ce0 mem_ce 1 1 }  { sup_vectors_q0 mem_dout 0 32 } } }
}
