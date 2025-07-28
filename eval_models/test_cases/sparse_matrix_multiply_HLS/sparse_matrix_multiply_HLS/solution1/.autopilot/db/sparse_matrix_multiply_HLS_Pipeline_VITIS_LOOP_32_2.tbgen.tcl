set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ nnzA int 32 regular  }
	{ local_values_A_V int 16 regular {array 4096 { 0 3 } 0 1 }  }
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_column_indices_A int 7 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nnzA", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_A_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_column_indices_A", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nnzA sc_in sc_lv 32 signal 0 } 
	{ local_values_A_V_address0 sc_out sc_lv 12 signal 1 } 
	{ local_values_A_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_we0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_d0 sc_out sc_lv 16 signal 1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 2 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ values_A_q0 sc_in sc_lv 16 signal 2 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 3 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 3 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 3 } 
	{ local_column_indices_A_address0 sc_out sc_lv 12 signal 4 } 
	{ local_column_indices_A_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_we0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_d0 sc_out sc_lv 7 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nnzA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nnzA", "role": "default" }} , 
 	{ "name": "local_values_A_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "address0" }} , 
 	{ "name": "local_values_A_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "ce0" }} , 
 	{ "name": "local_values_A_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "we0" }} , 
 	{ "name": "local_values_A_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "d0" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "local_column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "address0" }} , 
 	{ "name": "local_column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "ce0" }} , 
 	{ "name": "local_column_indices_A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "we0" }} , 
 	{ "name": "local_column_indices_A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nnzA", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_A_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_column_indices_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	nnzA { ap_none {  { nnzA in_data 0 32 } } }
	local_values_A_V { ap_memory {  { local_values_A_V_address0 mem_address 1 12 }  { local_values_A_V_ce0 mem_ce 1 1 }  { local_values_A_V_we0 mem_we 1 1 }  { local_values_A_V_d0 mem_din 1 16 } } }
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 in_data 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 in_data 0 32 } } }
	local_column_indices_A { ap_memory {  { local_column_indices_A_address0 mem_address 1 12 }  { local_column_indices_A_ce0 mem_ce 1 1 }  { local_column_indices_A_we0 mem_we 1 1 }  { local_column_indices_A_d0 mem_din 1 7 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ nnzA int 32 regular  }
	{ local_values_A_V int 16 regular {array 4096 { 0 3 } 0 1 }  }
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_column_indices_A int 7 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nnzA", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_A_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_column_indices_A", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nnzA sc_in sc_lv 32 signal 0 } 
	{ local_values_A_V_address0 sc_out sc_lv 12 signal 1 } 
	{ local_values_A_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_we0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_d0 sc_out sc_lv 16 signal 1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 2 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ values_A_q0 sc_in sc_lv 16 signal 2 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 3 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 3 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 3 } 
	{ local_column_indices_A_address0 sc_out sc_lv 12 signal 4 } 
	{ local_column_indices_A_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_we0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_d0 sc_out sc_lv 7 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nnzA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nnzA", "role": "default" }} , 
 	{ "name": "local_values_A_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "address0" }} , 
 	{ "name": "local_values_A_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "ce0" }} , 
 	{ "name": "local_values_A_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "we0" }} , 
 	{ "name": "local_values_A_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "d0" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "local_column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "address0" }} , 
 	{ "name": "local_column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "ce0" }} , 
 	{ "name": "local_column_indices_A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "we0" }} , 
 	{ "name": "local_column_indices_A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nnzA", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_A_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_column_indices_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	nnzA { ap_none {  { nnzA in_data 0 32 } } }
	local_values_A_V { ap_memory {  { local_values_A_V_address0 mem_address 1 12 }  { local_values_A_V_ce0 mem_ce 1 1 }  { local_values_A_V_we0 mem_we 1 1 }  { local_values_A_V_d0 mem_din 1 16 } } }
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 in_data 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 in_data 0 32 } } }
	local_column_indices_A { ap_memory {  { local_column_indices_A_address0 mem_address 1 12 }  { local_column_indices_A_ce0 mem_ce 1 1 }  { local_column_indices_A_we0 mem_we 1 1 }  { local_column_indices_A_d0 mem_din 1 7 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ nnzA int 32 regular  }
	{ local_values_A_V int 16 regular {array 4096 { 0 3 } 0 1 }  }
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_column_indices_A int 7 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nnzA", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_A_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_column_indices_A", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nnzA sc_in sc_lv 32 signal 0 } 
	{ local_values_A_V_address0 sc_out sc_lv 12 signal 1 } 
	{ local_values_A_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_we0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_d0 sc_out sc_lv 16 signal 1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 2 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ values_A_q0 sc_in sc_lv 16 signal 2 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 3 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 3 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 3 } 
	{ local_column_indices_A_address0 sc_out sc_lv 12 signal 4 } 
	{ local_column_indices_A_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_we0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_d0 sc_out sc_lv 7 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nnzA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nnzA", "role": "default" }} , 
 	{ "name": "local_values_A_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "address0" }} , 
 	{ "name": "local_values_A_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "ce0" }} , 
 	{ "name": "local_values_A_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "we0" }} , 
 	{ "name": "local_values_A_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "d0" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "local_column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "address0" }} , 
 	{ "name": "local_column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "ce0" }} , 
 	{ "name": "local_column_indices_A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "we0" }} , 
 	{ "name": "local_column_indices_A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nnzA", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_A_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_column_indices_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	nnzA { ap_none {  { nnzA in_data 0 32 } } }
	local_values_A_V { ap_memory {  { local_values_A_V_address0 mem_address 1 12 }  { local_values_A_V_ce0 mem_ce 1 1 }  { local_values_A_V_we0 mem_we 1 1 }  { local_values_A_V_d0 mem_din 1 16 } } }
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 in_data 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 in_data 0 32 } } }
	local_column_indices_A { ap_memory {  { local_column_indices_A_address0 mem_address 1 12 }  { local_column_indices_A_ce0 mem_ce 1 1 }  { local_column_indices_A_we0 mem_we 1 1 }  { local_column_indices_A_d0 mem_din 1 7 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ nnzA int 32 regular  }
	{ local_values_A_V int 16 regular {array 4096 { 0 3 } 0 1 }  }
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_column_indices_A int 7 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nnzA", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_A_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_column_indices_A", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nnzA sc_in sc_lv 32 signal 0 } 
	{ local_values_A_V_address0 sc_out sc_lv 12 signal 1 } 
	{ local_values_A_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_we0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_d0 sc_out sc_lv 16 signal 1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 2 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ values_A_q0 sc_in sc_lv 16 signal 2 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 3 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 3 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 3 } 
	{ local_column_indices_A_address0 sc_out sc_lv 12 signal 4 } 
	{ local_column_indices_A_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_we0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_d0 sc_out sc_lv 7 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nnzA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nnzA", "role": "default" }} , 
 	{ "name": "local_values_A_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "address0" }} , 
 	{ "name": "local_values_A_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "ce0" }} , 
 	{ "name": "local_values_A_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "we0" }} , 
 	{ "name": "local_values_A_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "d0" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "local_column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "address0" }} , 
 	{ "name": "local_column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "ce0" }} , 
 	{ "name": "local_column_indices_A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "we0" }} , 
 	{ "name": "local_column_indices_A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nnzA", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_A_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_column_indices_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	nnzA { ap_none {  { nnzA in_data 0 32 } } }
	local_values_A_V { ap_memory {  { local_values_A_V_address0 mem_address 1 12 }  { local_values_A_V_ce0 mem_ce 1 1 }  { local_values_A_V_we0 mem_we 1 1 }  { local_values_A_V_d0 mem_din 1 16 } } }
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 in_data 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 in_data 0 32 } } }
	local_column_indices_A { ap_memory {  { local_column_indices_A_address0 mem_address 1 12 }  { local_column_indices_A_ce0 mem_ce 1 1 }  { local_column_indices_A_we0 mem_we 1 1 }  { local_column_indices_A_d0 mem_din 1 7 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ nnzA int 32 regular  }
	{ local_values_A_V int 16 regular {array 4096 { 0 3 } 0 1 }  }
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_column_indices_A int 7 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nnzA", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_A_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_column_indices_A", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nnzA sc_in sc_lv 32 signal 0 } 
	{ local_values_A_V_address0 sc_out sc_lv 12 signal 1 } 
	{ local_values_A_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_we0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_d0 sc_out sc_lv 16 signal 1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 2 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ values_A_q0 sc_in sc_lv 16 signal 2 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 3 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 3 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 3 } 
	{ local_column_indices_A_address0 sc_out sc_lv 12 signal 4 } 
	{ local_column_indices_A_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_we0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_d0 sc_out sc_lv 7 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nnzA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nnzA", "role": "default" }} , 
 	{ "name": "local_values_A_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "address0" }} , 
 	{ "name": "local_values_A_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "ce0" }} , 
 	{ "name": "local_values_A_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "we0" }} , 
 	{ "name": "local_values_A_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "d0" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "local_column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "address0" }} , 
 	{ "name": "local_column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "ce0" }} , 
 	{ "name": "local_column_indices_A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "we0" }} , 
 	{ "name": "local_column_indices_A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nnzA", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_A_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_column_indices_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	nnzA { ap_none {  { nnzA in_data 0 32 } } }
	local_values_A_V { ap_memory {  { local_values_A_V_address0 mem_address 1 12 }  { local_values_A_V_ce0 mem_ce 1 1 }  { local_values_A_V_we0 mem_we 1 1 }  { local_values_A_V_d0 mem_din 1 16 } } }
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 in_data 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 in_data 0 32 } } }
	local_column_indices_A { ap_memory {  { local_column_indices_A_address0 mem_address 1 12 }  { local_column_indices_A_ce0 mem_ce 1 1 }  { local_column_indices_A_we0 mem_we 1 1 }  { local_column_indices_A_d0 mem_din 1 7 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ nnzA int 32 regular  }
	{ local_values_A_V int 16 regular {array 4096 { 0 3 } 0 1 }  }
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_column_indices_A int 7 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nnzA", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_A_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_column_indices_A", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nnzA sc_in sc_lv 32 signal 0 } 
	{ local_values_A_V_address0 sc_out sc_lv 12 signal 1 } 
	{ local_values_A_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_we0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_d0 sc_out sc_lv 16 signal 1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 2 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ values_A_q0 sc_in sc_lv 16 signal 2 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 3 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 3 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 3 } 
	{ local_column_indices_A_address0 sc_out sc_lv 12 signal 4 } 
	{ local_column_indices_A_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_we0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_d0 sc_out sc_lv 7 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nnzA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nnzA", "role": "default" }} , 
 	{ "name": "local_values_A_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "address0" }} , 
 	{ "name": "local_values_A_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "ce0" }} , 
 	{ "name": "local_values_A_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "we0" }} , 
 	{ "name": "local_values_A_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "d0" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "local_column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "address0" }} , 
 	{ "name": "local_column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "ce0" }} , 
 	{ "name": "local_column_indices_A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "we0" }} , 
 	{ "name": "local_column_indices_A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nnzA", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_A_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_column_indices_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	nnzA { ap_none {  { nnzA in_data 0 32 } } }
	local_values_A_V { ap_memory {  { local_values_A_V_address0 mem_address 1 12 }  { local_values_A_V_ce0 mem_ce 1 1 }  { local_values_A_V_we0 mem_we 1 1 }  { local_values_A_V_d0 mem_din 1 16 } } }
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 in_data 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 in_data 0 32 } } }
	local_column_indices_A { ap_memory {  { local_column_indices_A_address0 mem_address 1 12 }  { local_column_indices_A_ce0 mem_ce 1 1 }  { local_column_indices_A_we0 mem_we 1 1 }  { local_column_indices_A_d0 mem_din 1 7 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ nnzA int 32 regular  }
	{ local_values_A_V int 16 regular {array 4096 { 0 3 } 0 1 }  }
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_column_indices_A int 7 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nnzA", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_A_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_column_indices_A", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nnzA sc_in sc_lv 32 signal 0 } 
	{ local_values_A_V_address0 sc_out sc_lv 12 signal 1 } 
	{ local_values_A_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_we0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_d0 sc_out sc_lv 16 signal 1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 2 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ values_A_q0 sc_in sc_lv 16 signal 2 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 3 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 3 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 3 } 
	{ local_column_indices_A_address0 sc_out sc_lv 12 signal 4 } 
	{ local_column_indices_A_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_we0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_d0 sc_out sc_lv 7 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nnzA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nnzA", "role": "default" }} , 
 	{ "name": "local_values_A_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "address0" }} , 
 	{ "name": "local_values_A_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "ce0" }} , 
 	{ "name": "local_values_A_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "we0" }} , 
 	{ "name": "local_values_A_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "d0" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "local_column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "address0" }} , 
 	{ "name": "local_column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "ce0" }} , 
 	{ "name": "local_column_indices_A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "we0" }} , 
 	{ "name": "local_column_indices_A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nnzA", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_A_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_column_indices_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	nnzA { ap_none {  { nnzA in_data 0 32 } } }
	local_values_A_V { ap_memory {  { local_values_A_V_address0 mem_address 1 12 }  { local_values_A_V_ce0 mem_ce 1 1 }  { local_values_A_V_we0 mem_we 1 1 }  { local_values_A_V_d0 mem_din 1 16 } } }
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 in_data 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 in_data 0 32 } } }
	local_column_indices_A { ap_memory {  { local_column_indices_A_address0 mem_address 1 12 }  { local_column_indices_A_ce0 mem_ce 1 1 }  { local_column_indices_A_we0 mem_we 1 1 }  { local_column_indices_A_d0 mem_din 1 7 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ nnzA int 32 regular  }
	{ local_values_A_V int 16 regular {array 4096 { 0 3 } 0 1 }  }
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_column_indices_A int 7 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nnzA", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_A_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_column_indices_A", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nnzA sc_in sc_lv 32 signal 0 } 
	{ local_values_A_V_address0 sc_out sc_lv 12 signal 1 } 
	{ local_values_A_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_we0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_d0 sc_out sc_lv 16 signal 1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 2 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ values_A_q0 sc_in sc_lv 16 signal 2 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 3 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 3 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 3 } 
	{ local_column_indices_A_address0 sc_out sc_lv 12 signal 4 } 
	{ local_column_indices_A_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_we0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_d0 sc_out sc_lv 7 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nnzA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nnzA", "role": "default" }} , 
 	{ "name": "local_values_A_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "address0" }} , 
 	{ "name": "local_values_A_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "ce0" }} , 
 	{ "name": "local_values_A_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "we0" }} , 
 	{ "name": "local_values_A_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "d0" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "local_column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "address0" }} , 
 	{ "name": "local_column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "ce0" }} , 
 	{ "name": "local_column_indices_A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "we0" }} , 
 	{ "name": "local_column_indices_A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nnzA", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_A_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_column_indices_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	nnzA { ap_none {  { nnzA in_data 0 32 } } }
	local_values_A_V { ap_memory {  { local_values_A_V_address0 mem_address 1 12 }  { local_values_A_V_ce0 mem_ce 1 1 }  { local_values_A_V_we0 mem_we 1 1 }  { local_values_A_V_d0 mem_din 1 16 } } }
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 in_data 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 in_data 0 32 } } }
	local_column_indices_A { ap_memory {  { local_column_indices_A_address0 mem_address 1 12 }  { local_column_indices_A_ce0 mem_ce 1 1 }  { local_column_indices_A_we0 mem_we 1 1 }  { local_column_indices_A_d0 mem_din 1 7 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ nnzA int 32 regular  }
	{ local_values_A_V int 16 regular {array 4096 { 0 3 } 0 1 }  }
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_column_indices_A int 7 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nnzA", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_A_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_column_indices_A", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nnzA sc_in sc_lv 32 signal 0 } 
	{ local_values_A_V_address0 sc_out sc_lv 12 signal 1 } 
	{ local_values_A_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_we0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_d0 sc_out sc_lv 16 signal 1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 2 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ values_A_q0 sc_in sc_lv 16 signal 2 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 3 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 3 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 3 } 
	{ local_column_indices_A_address0 sc_out sc_lv 12 signal 4 } 
	{ local_column_indices_A_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_we0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_d0 sc_out sc_lv 7 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nnzA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nnzA", "role": "default" }} , 
 	{ "name": "local_values_A_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "address0" }} , 
 	{ "name": "local_values_A_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "ce0" }} , 
 	{ "name": "local_values_A_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "we0" }} , 
 	{ "name": "local_values_A_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "d0" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "local_column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "address0" }} , 
 	{ "name": "local_column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "ce0" }} , 
 	{ "name": "local_column_indices_A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "we0" }} , 
 	{ "name": "local_column_indices_A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nnzA", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_A_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_column_indices_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	nnzA { ap_none {  { nnzA in_data 0 32 } } }
	local_values_A_V { ap_memory {  { local_values_A_V_address0 mem_address 1 12 }  { local_values_A_V_ce0 mem_ce 1 1 }  { local_values_A_V_we0 mem_we 1 1 }  { local_values_A_V_d0 mem_din 1 16 } } }
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 in_data 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 in_data 0 32 } } }
	local_column_indices_A { ap_memory {  { local_column_indices_A_address0 mem_address 1 12 }  { local_column_indices_A_ce0 mem_ce 1 1 }  { local_column_indices_A_we0 mem_we 1 1 }  { local_column_indices_A_d0 mem_din 1 7 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ nnzA int 32 regular  }
	{ local_values_A_V int 16 regular {array 4096 { 0 3 } 0 1 }  }
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ local_column_indices_A int 7 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nnzA", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_values_A_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_column_indices_A", "interface" : "memory", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nnzA sc_in sc_lv 32 signal 0 } 
	{ local_values_A_V_address0 sc_out sc_lv 12 signal 1 } 
	{ local_values_A_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_we0 sc_out sc_logic 1 signal 1 } 
	{ local_values_A_V_d0 sc_out sc_lv 16 signal 1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 2 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ values_A_q0 sc_in sc_lv 16 signal 2 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 3 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 3 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 3 } 
	{ local_column_indices_A_address0 sc_out sc_lv 12 signal 4 } 
	{ local_column_indices_A_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_we0 sc_out sc_logic 1 signal 4 } 
	{ local_column_indices_A_d0 sc_out sc_lv 7 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nnzA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nnzA", "role": "default" }} , 
 	{ "name": "local_values_A_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "address0" }} , 
 	{ "name": "local_values_A_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "ce0" }} , 
 	{ "name": "local_values_A_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "we0" }} , 
 	{ "name": "local_values_A_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "local_values_A_V", "role": "d0" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "local_column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "address0" }} , 
 	{ "name": "local_column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "ce0" }} , 
 	{ "name": "local_column_indices_A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "we0" }} , 
 	{ "name": "local_column_indices_A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "local_column_indices_A", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nnzA", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_A_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_column_indices_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	nnzA { ap_none {  { nnzA in_data 0 32 } } }
	local_values_A_V { ap_memory {  { local_values_A_V_address0 mem_address 1 12 }  { local_values_A_V_ce0 mem_ce 1 1 }  { local_values_A_V_we0 mem_we 1 1 }  { local_values_A_V_d0 mem_din 1 16 } } }
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 in_data 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 in_data 0 32 } } }
	local_column_indices_A { ap_memory {  { local_column_indices_A_address0 mem_address 1 12 }  { local_column_indices_A_ce0 mem_ce 1 1 }  { local_column_indices_A_we0 mem_we 1 1 }  { local_column_indices_A_d0 mem_din 1 7 } } }
}
