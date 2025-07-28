set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln66 int 32 regular  }
	{ sext_ln66_1 int 32 regular  }
	{ local_values_B_V int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_row_indices_B int 12 regular {array 4096 { 1 3 } 1 1 }  }
	{ sext_ln1347 int 16 regular  }
	{ zext_ln837 int 12 regular  }
	{ accum_V int 16 regular {array 4096 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln66_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln66 sc_in sc_lv 32 signal 0 } 
	{ sext_ln66_1 sc_in sc_lv 32 signal 1 } 
	{ local_values_B_V_address0 sc_out sc_lv 12 signal 2 } 
	{ local_values_B_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_values_B_V_q0 sc_in sc_lv 16 signal 2 } 
	{ local_row_indices_B_address0 sc_out sc_lv 12 signal 3 } 
	{ local_row_indices_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_row_indices_B_q0 sc_in sc_lv 12 signal 3 } 
	{ sext_ln1347 sc_in sc_lv 16 signal 4 } 
	{ zext_ln837 sc_in sc_lv 12 signal 5 } 
	{ accum_V_address0 sc_out sc_lv 12 signal 6 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 6 } 
	{ accum_V_q0 sc_in sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66", "role": "default" }} , 
 	{ "name": "sext_ln66_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66_1", "role": "default" }} , 
 	{ "name": "local_values_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "address0" }} , 
 	{ "name": "local_values_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "q0" }} , 
 	{ "name": "sext_ln1347", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347", "role": "default" }} , 
 	{ "name": "zext_ln837", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln837", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln66", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln66_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln1347", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9 {
		sext_ln66 {Type I LastRead 0 FirstWrite -1}
		sext_ln66_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		sext_ln1347 {Type I LastRead 0 FirstWrite -1}
		zext_ln837 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 2 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "516"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "516"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln66 { ap_none {  { sext_ln66 in_data 0 32 } } }
	sext_ln66_1 { ap_none {  { sext_ln66_1 in_data 0 32 } } }
	local_values_B_V { ap_memory {  { local_values_B_V_address0 mem_address 1 12 }  { local_values_B_V_ce0 mem_ce 1 1 }  { local_values_B_V_q0 in_data 0 16 } } }
	local_row_indices_B { ap_memory {  { local_row_indices_B_address0 mem_address 1 12 }  { local_row_indices_B_ce0 mem_ce 1 1 }  { local_row_indices_B_q0 in_data 0 12 } } }
	sext_ln1347 { ap_none {  { sext_ln1347 in_data 0 16 } } }
	zext_ln837 { ap_none {  { zext_ln837 in_data 0 12 } } }
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 12 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_q0 mem_dout 0 16 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln66 int 32 regular  }
	{ sext_ln66_1 int 32 regular  }
	{ local_values_B_V int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_row_indices_B int 12 regular {array 4096 { 1 3 } 1 1 }  }
	{ sext_ln1347 int 16 regular  }
	{ zext_ln837 int 12 regular  }
	{ accum_V int 16 regular {array 4096 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln66_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln66 sc_in sc_lv 32 signal 0 } 
	{ sext_ln66_1 sc_in sc_lv 32 signal 1 } 
	{ local_values_B_V_address0 sc_out sc_lv 12 signal 2 } 
	{ local_values_B_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_values_B_V_q0 sc_in sc_lv 16 signal 2 } 
	{ local_row_indices_B_address0 sc_out sc_lv 12 signal 3 } 
	{ local_row_indices_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_row_indices_B_q0 sc_in sc_lv 12 signal 3 } 
	{ sext_ln1347 sc_in sc_lv 16 signal 4 } 
	{ zext_ln837 sc_in sc_lv 12 signal 5 } 
	{ accum_V_address0 sc_out sc_lv 12 signal 6 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 6 } 
	{ accum_V_q0 sc_in sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66", "role": "default" }} , 
 	{ "name": "sext_ln66_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66_1", "role": "default" }} , 
 	{ "name": "local_values_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "address0" }} , 
 	{ "name": "local_values_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "q0" }} , 
 	{ "name": "sext_ln1347", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347", "role": "default" }} , 
 	{ "name": "zext_ln837", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln837", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln66", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln66_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln1347", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9 {
		sext_ln66 {Type I LastRead 0 FirstWrite -1}
		sext_ln66_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		sext_ln1347 {Type I LastRead 0 FirstWrite -1}
		zext_ln837 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 2 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "516"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "516"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln66 { ap_none {  { sext_ln66 in_data 0 32 } } }
	sext_ln66_1 { ap_none {  { sext_ln66_1 in_data 0 32 } } }
	local_values_B_V { ap_memory {  { local_values_B_V_address0 mem_address 1 12 }  { local_values_B_V_ce0 mem_ce 1 1 }  { local_values_B_V_q0 in_data 0 16 } } }
	local_row_indices_B { ap_memory {  { local_row_indices_B_address0 mem_address 1 12 }  { local_row_indices_B_ce0 mem_ce 1 1 }  { local_row_indices_B_q0 in_data 0 12 } } }
	sext_ln1347 { ap_none {  { sext_ln1347 in_data 0 16 } } }
	zext_ln837 { ap_none {  { zext_ln837 in_data 0 12 } } }
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 12 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_q0 mem_dout 0 16 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln66 int 32 regular  }
	{ sext_ln66_1 int 32 regular  }
	{ local_values_B_V int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_row_indices_B int 12 regular {array 4096 { 1 3 } 1 1 }  }
	{ sext_ln1347 int 16 regular  }
	{ zext_ln837 int 12 regular  }
	{ accum_V int 16 regular {array 4096 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln66_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln66 sc_in sc_lv 32 signal 0 } 
	{ sext_ln66_1 sc_in sc_lv 32 signal 1 } 
	{ local_values_B_V_address0 sc_out sc_lv 12 signal 2 } 
	{ local_values_B_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_values_B_V_q0 sc_in sc_lv 16 signal 2 } 
	{ local_row_indices_B_address0 sc_out sc_lv 12 signal 3 } 
	{ local_row_indices_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_row_indices_B_q0 sc_in sc_lv 12 signal 3 } 
	{ sext_ln1347 sc_in sc_lv 16 signal 4 } 
	{ zext_ln837 sc_in sc_lv 12 signal 5 } 
	{ accum_V_address0 sc_out sc_lv 12 signal 6 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 6 } 
	{ accum_V_q0 sc_in sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66", "role": "default" }} , 
 	{ "name": "sext_ln66_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66_1", "role": "default" }} , 
 	{ "name": "local_values_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "address0" }} , 
 	{ "name": "local_values_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "q0" }} , 
 	{ "name": "sext_ln1347", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347", "role": "default" }} , 
 	{ "name": "zext_ln837", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln837", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln66", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln66_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln1347", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9 {
		sext_ln66 {Type I LastRead 0 FirstWrite -1}
		sext_ln66_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		sext_ln1347 {Type I LastRead 0 FirstWrite -1}
		zext_ln837 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 2 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "516"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "516"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln66 { ap_none {  { sext_ln66 in_data 0 32 } } }
	sext_ln66_1 { ap_none {  { sext_ln66_1 in_data 0 32 } } }
	local_values_B_V { ap_memory {  { local_values_B_V_address0 mem_address 1 12 }  { local_values_B_V_ce0 mem_ce 1 1 }  { local_values_B_V_q0 in_data 0 16 } } }
	local_row_indices_B { ap_memory {  { local_row_indices_B_address0 mem_address 1 12 }  { local_row_indices_B_ce0 mem_ce 1 1 }  { local_row_indices_B_q0 in_data 0 12 } } }
	sext_ln1347 { ap_none {  { sext_ln1347 in_data 0 16 } } }
	zext_ln837 { ap_none {  { zext_ln837 in_data 0 12 } } }
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 12 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_q0 mem_dout 0 16 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln66 int 32 regular  }
	{ sext_ln66_1 int 32 regular  }
	{ local_values_B_V int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_row_indices_B int 12 regular {array 4096 { 1 3 } 1 1 }  }
	{ sext_ln1347 int 16 regular  }
	{ zext_ln837 int 12 regular  }
	{ accum_V int 16 regular {array 4096 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln66_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln66 sc_in sc_lv 32 signal 0 } 
	{ sext_ln66_1 sc_in sc_lv 32 signal 1 } 
	{ local_values_B_V_address0 sc_out sc_lv 12 signal 2 } 
	{ local_values_B_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_values_B_V_q0 sc_in sc_lv 16 signal 2 } 
	{ local_row_indices_B_address0 sc_out sc_lv 12 signal 3 } 
	{ local_row_indices_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_row_indices_B_q0 sc_in sc_lv 12 signal 3 } 
	{ sext_ln1347 sc_in sc_lv 16 signal 4 } 
	{ zext_ln837 sc_in sc_lv 12 signal 5 } 
	{ accum_V_address0 sc_out sc_lv 12 signal 6 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 6 } 
	{ accum_V_q0 sc_in sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66", "role": "default" }} , 
 	{ "name": "sext_ln66_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66_1", "role": "default" }} , 
 	{ "name": "local_values_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "address0" }} , 
 	{ "name": "local_values_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "q0" }} , 
 	{ "name": "sext_ln1347", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347", "role": "default" }} , 
 	{ "name": "zext_ln837", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln837", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln66", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln66_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln1347", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9 {
		sext_ln66 {Type I LastRead 0 FirstWrite -1}
		sext_ln66_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		sext_ln1347 {Type I LastRead 0 FirstWrite -1}
		zext_ln837 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 2 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "516"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "516"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln66 { ap_none {  { sext_ln66 in_data 0 32 } } }
	sext_ln66_1 { ap_none {  { sext_ln66_1 in_data 0 32 } } }
	local_values_B_V { ap_memory {  { local_values_B_V_address0 mem_address 1 12 }  { local_values_B_V_ce0 mem_ce 1 1 }  { local_values_B_V_q0 in_data 0 16 } } }
	local_row_indices_B { ap_memory {  { local_row_indices_B_address0 mem_address 1 12 }  { local_row_indices_B_ce0 mem_ce 1 1 }  { local_row_indices_B_q0 in_data 0 12 } } }
	sext_ln1347 { ap_none {  { sext_ln1347 in_data 0 16 } } }
	zext_ln837 { ap_none {  { zext_ln837 in_data 0 12 } } }
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 12 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_q0 mem_dout 0 16 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln66 int 32 regular  }
	{ sext_ln66_1 int 32 regular  }
	{ local_values_B_V int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_row_indices_B int 12 regular {array 4096 { 1 3 } 1 1 }  }
	{ sext_ln1347 int 16 regular  }
	{ zext_ln837 int 12 regular  }
	{ accum_V int 16 regular {array 4096 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln66_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln66 sc_in sc_lv 32 signal 0 } 
	{ sext_ln66_1 sc_in sc_lv 32 signal 1 } 
	{ local_values_B_V_address0 sc_out sc_lv 12 signal 2 } 
	{ local_values_B_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_values_B_V_q0 sc_in sc_lv 16 signal 2 } 
	{ local_row_indices_B_address0 sc_out sc_lv 12 signal 3 } 
	{ local_row_indices_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_row_indices_B_q0 sc_in sc_lv 12 signal 3 } 
	{ sext_ln1347 sc_in sc_lv 16 signal 4 } 
	{ zext_ln837 sc_in sc_lv 12 signal 5 } 
	{ accum_V_address0 sc_out sc_lv 12 signal 6 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 6 } 
	{ accum_V_q0 sc_in sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66", "role": "default" }} , 
 	{ "name": "sext_ln66_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66_1", "role": "default" }} , 
 	{ "name": "local_values_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "address0" }} , 
 	{ "name": "local_values_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "q0" }} , 
 	{ "name": "sext_ln1347", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347", "role": "default" }} , 
 	{ "name": "zext_ln837", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln837", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln66", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln66_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln1347", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9 {
		sext_ln66 {Type I LastRead 0 FirstWrite -1}
		sext_ln66_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		sext_ln1347 {Type I LastRead 0 FirstWrite -1}
		zext_ln837 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 2 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "516"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "516"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln66 { ap_none {  { sext_ln66 in_data 0 32 } } }
	sext_ln66_1 { ap_none {  { sext_ln66_1 in_data 0 32 } } }
	local_values_B_V { ap_memory {  { local_values_B_V_address0 mem_address 1 12 }  { local_values_B_V_ce0 mem_ce 1 1 }  { local_values_B_V_q0 in_data 0 16 } } }
	local_row_indices_B { ap_memory {  { local_row_indices_B_address0 mem_address 1 12 }  { local_row_indices_B_ce0 mem_ce 1 1 }  { local_row_indices_B_q0 in_data 0 12 } } }
	sext_ln1347 { ap_none {  { sext_ln1347 in_data 0 16 } } }
	zext_ln837 { ap_none {  { zext_ln837 in_data 0 12 } } }
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 12 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_q0 mem_dout 0 16 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln66 int 32 regular  }
	{ sext_ln66_1 int 32 regular  }
	{ local_values_B_V int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_row_indices_B int 12 regular {array 4096 { 1 3 } 1 1 }  }
	{ sext_ln1347 int 16 regular  }
	{ zext_ln837 int 12 regular  }
	{ accum_V int 16 regular {array 4096 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln66_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln66 sc_in sc_lv 32 signal 0 } 
	{ sext_ln66_1 sc_in sc_lv 32 signal 1 } 
	{ local_values_B_V_address0 sc_out sc_lv 12 signal 2 } 
	{ local_values_B_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_values_B_V_q0 sc_in sc_lv 16 signal 2 } 
	{ local_row_indices_B_address0 sc_out sc_lv 12 signal 3 } 
	{ local_row_indices_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_row_indices_B_q0 sc_in sc_lv 12 signal 3 } 
	{ sext_ln1347 sc_in sc_lv 16 signal 4 } 
	{ zext_ln837 sc_in sc_lv 12 signal 5 } 
	{ accum_V_address0 sc_out sc_lv 12 signal 6 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 6 } 
	{ accum_V_q0 sc_in sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66", "role": "default" }} , 
 	{ "name": "sext_ln66_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66_1", "role": "default" }} , 
 	{ "name": "local_values_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "address0" }} , 
 	{ "name": "local_values_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "q0" }} , 
 	{ "name": "sext_ln1347", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347", "role": "default" }} , 
 	{ "name": "zext_ln837", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln837", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln66", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln66_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln1347", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9 {
		sext_ln66 {Type I LastRead 0 FirstWrite -1}
		sext_ln66_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		sext_ln1347 {Type I LastRead 0 FirstWrite -1}
		zext_ln837 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 2 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "516"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "516"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln66 { ap_none {  { sext_ln66 in_data 0 32 } } }
	sext_ln66_1 { ap_none {  { sext_ln66_1 in_data 0 32 } } }
	local_values_B_V { ap_memory {  { local_values_B_V_address0 mem_address 1 12 }  { local_values_B_V_ce0 mem_ce 1 1 }  { local_values_B_V_q0 in_data 0 16 } } }
	local_row_indices_B { ap_memory {  { local_row_indices_B_address0 mem_address 1 12 }  { local_row_indices_B_ce0 mem_ce 1 1 }  { local_row_indices_B_q0 in_data 0 12 } } }
	sext_ln1347 { ap_none {  { sext_ln1347 in_data 0 16 } } }
	zext_ln837 { ap_none {  { zext_ln837 in_data 0 12 } } }
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 12 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_q0 mem_dout 0 16 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln66 int 32 regular  }
	{ sext_ln66_1 int 32 regular  }
	{ local_values_B_V int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_row_indices_B int 12 regular {array 4096 { 1 3 } 1 1 }  }
	{ sext_ln1347 int 16 regular  }
	{ zext_ln837 int 12 regular  }
	{ accum_V int 16 regular {array 4096 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln66_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln66 sc_in sc_lv 32 signal 0 } 
	{ sext_ln66_1 sc_in sc_lv 32 signal 1 } 
	{ local_values_B_V_address0 sc_out sc_lv 12 signal 2 } 
	{ local_values_B_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_values_B_V_q0 sc_in sc_lv 16 signal 2 } 
	{ local_row_indices_B_address0 sc_out sc_lv 12 signal 3 } 
	{ local_row_indices_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_row_indices_B_q0 sc_in sc_lv 12 signal 3 } 
	{ sext_ln1347 sc_in sc_lv 16 signal 4 } 
	{ zext_ln837 sc_in sc_lv 12 signal 5 } 
	{ accum_V_address0 sc_out sc_lv 12 signal 6 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 6 } 
	{ accum_V_q0 sc_in sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66", "role": "default" }} , 
 	{ "name": "sext_ln66_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66_1", "role": "default" }} , 
 	{ "name": "local_values_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "address0" }} , 
 	{ "name": "local_values_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "q0" }} , 
 	{ "name": "sext_ln1347", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347", "role": "default" }} , 
 	{ "name": "zext_ln837", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln837", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln66", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln66_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln1347", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9 {
		sext_ln66 {Type I LastRead 0 FirstWrite -1}
		sext_ln66_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		sext_ln1347 {Type I LastRead 0 FirstWrite -1}
		zext_ln837 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 2 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "516"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "516"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln66 { ap_none {  { sext_ln66 in_data 0 32 } } }
	sext_ln66_1 { ap_none {  { sext_ln66_1 in_data 0 32 } } }
	local_values_B_V { ap_memory {  { local_values_B_V_address0 mem_address 1 12 }  { local_values_B_V_ce0 mem_ce 1 1 }  { local_values_B_V_q0 in_data 0 16 } } }
	local_row_indices_B { ap_memory {  { local_row_indices_B_address0 mem_address 1 12 }  { local_row_indices_B_ce0 mem_ce 1 1 }  { local_row_indices_B_q0 in_data 0 12 } } }
	sext_ln1347 { ap_none {  { sext_ln1347 in_data 0 16 } } }
	zext_ln837 { ap_none {  { zext_ln837 in_data 0 12 } } }
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 12 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_q0 mem_dout 0 16 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln66 int 32 regular  }
	{ sext_ln66_1 int 32 regular  }
	{ local_values_B_V int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_row_indices_B int 12 regular {array 4096 { 1 3 } 1 1 }  }
	{ sext_ln1347 int 16 regular  }
	{ zext_ln837 int 12 regular  }
	{ accum_V int 16 regular {array 4096 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln66_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln66 sc_in sc_lv 32 signal 0 } 
	{ sext_ln66_1 sc_in sc_lv 32 signal 1 } 
	{ local_values_B_V_address0 sc_out sc_lv 12 signal 2 } 
	{ local_values_B_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_values_B_V_q0 sc_in sc_lv 16 signal 2 } 
	{ local_row_indices_B_address0 sc_out sc_lv 12 signal 3 } 
	{ local_row_indices_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_row_indices_B_q0 sc_in sc_lv 12 signal 3 } 
	{ sext_ln1347 sc_in sc_lv 16 signal 4 } 
	{ zext_ln837 sc_in sc_lv 12 signal 5 } 
	{ accum_V_address0 sc_out sc_lv 12 signal 6 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 6 } 
	{ accum_V_q0 sc_in sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66", "role": "default" }} , 
 	{ "name": "sext_ln66_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66_1", "role": "default" }} , 
 	{ "name": "local_values_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "address0" }} , 
 	{ "name": "local_values_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "q0" }} , 
 	{ "name": "sext_ln1347", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347", "role": "default" }} , 
 	{ "name": "zext_ln837", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln837", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln66", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln66_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln1347", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9 {
		sext_ln66 {Type I LastRead 0 FirstWrite -1}
		sext_ln66_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		sext_ln1347 {Type I LastRead 0 FirstWrite -1}
		zext_ln837 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 2 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "516"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "516"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln66 { ap_none {  { sext_ln66 in_data 0 32 } } }
	sext_ln66_1 { ap_none {  { sext_ln66_1 in_data 0 32 } } }
	local_values_B_V { ap_memory {  { local_values_B_V_address0 mem_address 1 12 }  { local_values_B_V_ce0 mem_ce 1 1 }  { local_values_B_V_q0 in_data 0 16 } } }
	local_row_indices_B { ap_memory {  { local_row_indices_B_address0 mem_address 1 12 }  { local_row_indices_B_ce0 mem_ce 1 1 }  { local_row_indices_B_q0 in_data 0 12 } } }
	sext_ln1347 { ap_none {  { sext_ln1347 in_data 0 16 } } }
	zext_ln837 { ap_none {  { zext_ln837 in_data 0 12 } } }
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 12 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_q0 mem_dout 0 16 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln66 int 32 regular  }
	{ sext_ln66_1 int 32 regular  }
	{ local_values_B_V int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_row_indices_B int 12 regular {array 4096 { 1 3 } 1 1 }  }
	{ sext_ln1347 int 16 regular  }
	{ zext_ln837 int 12 regular  }
	{ accum_V int 16 regular {array 4096 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln66_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln66 sc_in sc_lv 32 signal 0 } 
	{ sext_ln66_1 sc_in sc_lv 32 signal 1 } 
	{ local_values_B_V_address0 sc_out sc_lv 12 signal 2 } 
	{ local_values_B_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_values_B_V_q0 sc_in sc_lv 16 signal 2 } 
	{ local_row_indices_B_address0 sc_out sc_lv 12 signal 3 } 
	{ local_row_indices_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_row_indices_B_q0 sc_in sc_lv 12 signal 3 } 
	{ sext_ln1347 sc_in sc_lv 16 signal 4 } 
	{ zext_ln837 sc_in sc_lv 12 signal 5 } 
	{ accum_V_address0 sc_out sc_lv 12 signal 6 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 6 } 
	{ accum_V_q0 sc_in sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66", "role": "default" }} , 
 	{ "name": "sext_ln66_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66_1", "role": "default" }} , 
 	{ "name": "local_values_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "address0" }} , 
 	{ "name": "local_values_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "q0" }} , 
 	{ "name": "sext_ln1347", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347", "role": "default" }} , 
 	{ "name": "zext_ln837", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln837", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln66", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln66_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln1347", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9 {
		sext_ln66 {Type I LastRead 0 FirstWrite -1}
		sext_ln66_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		sext_ln1347 {Type I LastRead 0 FirstWrite -1}
		zext_ln837 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 2 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "516"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "516"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln66 { ap_none {  { sext_ln66 in_data 0 32 } } }
	sext_ln66_1 { ap_none {  { sext_ln66_1 in_data 0 32 } } }
	local_values_B_V { ap_memory {  { local_values_B_V_address0 mem_address 1 12 }  { local_values_B_V_ce0 mem_ce 1 1 }  { local_values_B_V_q0 in_data 0 16 } } }
	local_row_indices_B { ap_memory {  { local_row_indices_B_address0 mem_address 1 12 }  { local_row_indices_B_ce0 mem_ce 1 1 }  { local_row_indices_B_q0 in_data 0 12 } } }
	sext_ln1347 { ap_none {  { sext_ln1347 in_data 0 16 } } }
	zext_ln837 { ap_none {  { zext_ln837 in_data 0 12 } } }
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 12 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_q0 mem_dout 0 16 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln66 int 32 regular  }
	{ sext_ln66_1 int 32 regular  }
	{ local_values_B_V int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_row_indices_B int 12 regular {array 4096 { 1 3 } 1 1 }  }
	{ sext_ln1347 int 16 regular  }
	{ zext_ln837 int 12 regular  }
	{ accum_V int 16 regular {array 4096 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln66_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_B_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "local_row_indices_B", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1347", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln66 sc_in sc_lv 32 signal 0 } 
	{ sext_ln66_1 sc_in sc_lv 32 signal 1 } 
	{ local_values_B_V_address0 sc_out sc_lv 12 signal 2 } 
	{ local_values_B_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_values_B_V_q0 sc_in sc_lv 16 signal 2 } 
	{ local_row_indices_B_address0 sc_out sc_lv 12 signal 3 } 
	{ local_row_indices_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_row_indices_B_q0 sc_in sc_lv 12 signal 3 } 
	{ sext_ln1347 sc_in sc_lv 16 signal 4 } 
	{ zext_ln837 sc_in sc_lv 12 signal 5 } 
	{ accum_V_address0 sc_out sc_lv 12 signal 6 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 6 } 
	{ accum_V_q0 sc_in sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66", "role": "default" }} , 
 	{ "name": "sext_ln66_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln66_1", "role": "default" }} , 
 	{ "name": "local_values_B_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "address0" }} , 
 	{ "name": "local_values_B_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "ce0" }} , 
 	{ "name": "local_values_B_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_B_V", "role": "q0" }} , 
 	{ "name": "local_row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "address0" }} , 
 	{ "name": "local_row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "ce0" }} , 
 	{ "name": "local_row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_row_indices_B", "role": "q0" }} , 
 	{ "name": "sext_ln1347", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1347", "role": "default" }} , 
 	{ "name": "zext_ln837", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "zext_ln837", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln66", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln66_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln1347", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9 {
		sext_ln66 {Type I LastRead 0 FirstWrite -1}
		sext_ln66_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		sext_ln1347 {Type I LastRead 0 FirstWrite -1}
		zext_ln837 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 2 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "516"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "516"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln66 { ap_none {  { sext_ln66 in_data 0 32 } } }
	sext_ln66_1 { ap_none {  { sext_ln66_1 in_data 0 32 } } }
	local_values_B_V { ap_memory {  { local_values_B_V_address0 mem_address 1 12 }  { local_values_B_V_ce0 mem_ce 1 1 }  { local_values_B_V_q0 in_data 0 16 } } }
	local_row_indices_B { ap_memory {  { local_row_indices_B_address0 mem_address 1 12 }  { local_row_indices_B_ce0 mem_ce 1 1 }  { local_row_indices_B_q0 in_data 0 12 } } }
	sext_ln1347 { ap_none {  { sext_ln1347 in_data 0 16 } } }
	zext_ln837 { ap_none {  { zext_ln837 in_data 0 12 } } }
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 12 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_q0 mem_dout 0 16 } } }
}
