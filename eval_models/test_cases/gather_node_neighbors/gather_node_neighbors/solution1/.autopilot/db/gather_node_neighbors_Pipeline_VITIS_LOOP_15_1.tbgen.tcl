set moduleName gather_node_neighbors_Pipeline_VITIS_LOOP_15_1
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
set C_modelName {gather_node_neighbors_Pipeline_VITIS_LOOP_15_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ node_in_degree int 32 regular  }
	{ node_neighbors_0 int 32 regular {array 500 { 0 3 } 0 1 }  }
	{ trunc_ln int 10 regular  }
	{ trunc_ln1 int 2 regular  }
	{ neighbor_table_0 int 32 regular {array 250 { 1 3 } 1 1 }  }
	{ neighbor_table_1 int 32 regular {array 250 { 1 3 } 1 1 }  }
	{ neighbor_table_2 int 32 regular {array 250 { 1 3 } 1 1 }  }
	{ neighbor_table_3 int 32 regular {array 250 { 1 3 } 1 1 }  }
	{ node_neighbors_1 int 32 regular {array 500 { 0 3 } 0 1 }  }
	{ node_neighbors_2 int 32 regular {array 500 { 0 3 } 0 1 }  }
	{ node_neighbors_3 int 32 regular {array 500 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "node_in_degree", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "node_neighbors_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "neighbor_table_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neighbor_table_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neighbor_table_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neighbor_table_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "node_neighbors_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "node_neighbors_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "node_neighbors_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ node_in_degree sc_in sc_lv 32 signal 0 } 
	{ node_neighbors_0_address0 sc_out sc_lv 9 signal 1 } 
	{ node_neighbors_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ node_neighbors_0_we0 sc_out sc_logic 1 signal 1 } 
	{ node_neighbors_0_d0 sc_out sc_lv 32 signal 1 } 
	{ trunc_ln sc_in sc_lv 10 signal 2 } 
	{ trunc_ln1 sc_in sc_lv 2 signal 3 } 
	{ neighbor_table_0_address0 sc_out sc_lv 8 signal 4 } 
	{ neighbor_table_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_0_q0 sc_in sc_lv 32 signal 4 } 
	{ neighbor_table_1_address0 sc_out sc_lv 8 signal 5 } 
	{ neighbor_table_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ neighbor_table_1_q0 sc_in sc_lv 32 signal 5 } 
	{ neighbor_table_2_address0 sc_out sc_lv 8 signal 6 } 
	{ neighbor_table_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ neighbor_table_2_q0 sc_in sc_lv 32 signal 6 } 
	{ neighbor_table_3_address0 sc_out sc_lv 8 signal 7 } 
	{ neighbor_table_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ neighbor_table_3_q0 sc_in sc_lv 32 signal 7 } 
	{ node_neighbors_1_address0 sc_out sc_lv 9 signal 8 } 
	{ node_neighbors_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ node_neighbors_1_we0 sc_out sc_logic 1 signal 8 } 
	{ node_neighbors_1_d0 sc_out sc_lv 32 signal 8 } 
	{ node_neighbors_2_address0 sc_out sc_lv 9 signal 9 } 
	{ node_neighbors_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ node_neighbors_2_we0 sc_out sc_logic 1 signal 9 } 
	{ node_neighbors_2_d0 sc_out sc_lv 32 signal 9 } 
	{ node_neighbors_3_address0 sc_out sc_lv 9 signal 10 } 
	{ node_neighbors_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ node_neighbors_3_we0 sc_out sc_logic 1 signal 10 } 
	{ node_neighbors_3_d0 sc_out sc_lv 32 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "node_in_degree", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_in_degree", "role": "default" }} , 
 	{ "name": "node_neighbors_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "node_neighbors_0", "role": "address0" }} , 
 	{ "name": "node_neighbors_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_neighbors_0", "role": "ce0" }} , 
 	{ "name": "node_neighbors_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_neighbors_0", "role": "we0" }} , 
 	{ "name": "node_neighbors_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_neighbors_0", "role": "d0" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "trunc_ln1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "trunc_ln1", "role": "default" }} , 
 	{ "name": "neighbor_table_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "neighbor_table_0", "role": "address0" }} , 
 	{ "name": "neighbor_table_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_0", "role": "ce0" }} , 
 	{ "name": "neighbor_table_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_0", "role": "q0" }} , 
 	{ "name": "neighbor_table_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "neighbor_table_1", "role": "address0" }} , 
 	{ "name": "neighbor_table_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_1", "role": "ce0" }} , 
 	{ "name": "neighbor_table_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_1", "role": "q0" }} , 
 	{ "name": "neighbor_table_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "neighbor_table_2", "role": "address0" }} , 
 	{ "name": "neighbor_table_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_2", "role": "ce0" }} , 
 	{ "name": "neighbor_table_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_2", "role": "q0" }} , 
 	{ "name": "neighbor_table_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "neighbor_table_3", "role": "address0" }} , 
 	{ "name": "neighbor_table_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_3", "role": "ce0" }} , 
 	{ "name": "neighbor_table_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_3", "role": "q0" }} , 
 	{ "name": "node_neighbors_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "node_neighbors_1", "role": "address0" }} , 
 	{ "name": "node_neighbors_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_neighbors_1", "role": "ce0" }} , 
 	{ "name": "node_neighbors_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_neighbors_1", "role": "we0" }} , 
 	{ "name": "node_neighbors_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_neighbors_1", "role": "d0" }} , 
 	{ "name": "node_neighbors_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "node_neighbors_2", "role": "address0" }} , 
 	{ "name": "node_neighbors_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_neighbors_2", "role": "ce0" }} , 
 	{ "name": "node_neighbors_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_neighbors_2", "role": "we0" }} , 
 	{ "name": "node_neighbors_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_neighbors_2", "role": "d0" }} , 
 	{ "name": "node_neighbors_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "node_neighbors_3", "role": "address0" }} , 
 	{ "name": "node_neighbors_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_neighbors_3", "role": "ce0" }} , 
 	{ "name": "node_neighbors_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_neighbors_3", "role": "we0" }} , 
 	{ "name": "node_neighbors_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_neighbors_3", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "gather_node_neighbors_Pipeline_VITIS_LOOP_15_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "202",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "node_in_degree", "Type" : "None", "Direction" : "I"},
			{"Name" : "node_neighbors_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "neighbor_table_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_neighbors_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_neighbors_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_neighbors_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_15_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gather_node_neighbors_Pipeline_VITIS_LOOP_15_1 {
		node_in_degree {Type I LastRead 0 FirstWrite -1}
		node_neighbors_0 {Type O LastRead -1 FirstWrite 1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		trunc_ln1 {Type I LastRead 0 FirstWrite -1}
		neighbor_table_0 {Type I LastRead 0 FirstWrite -1}
		neighbor_table_1 {Type I LastRead 0 FirstWrite -1}
		neighbor_table_2 {Type I LastRead 0 FirstWrite -1}
		neighbor_table_3 {Type I LastRead 0 FirstWrite -1}
		node_neighbors_1 {Type O LastRead -1 FirstWrite 1}
		node_neighbors_2 {Type O LastRead -1 FirstWrite 1}
		node_neighbors_3 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "202"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "202"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	node_in_degree { ap_none {  { node_in_degree in_data 0 32 } } }
	node_neighbors_0 { ap_memory {  { node_neighbors_0_address0 mem_address 1 9 }  { node_neighbors_0_ce0 mem_ce 1 1 }  { node_neighbors_0_we0 mem_we 1 1 }  { node_neighbors_0_d0 mem_din 1 32 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 10 } } }
	trunc_ln1 { ap_none {  { trunc_ln1 in_data 0 2 } } }
	neighbor_table_0 { ap_memory {  { neighbor_table_0_address0 mem_address 1 8 }  { neighbor_table_0_ce0 mem_ce 1 1 }  { neighbor_table_0_q0 in_data 0 32 } } }
	neighbor_table_1 { ap_memory {  { neighbor_table_1_address0 mem_address 1 8 }  { neighbor_table_1_ce0 mem_ce 1 1 }  { neighbor_table_1_q0 in_data 0 32 } } }
	neighbor_table_2 { ap_memory {  { neighbor_table_2_address0 mem_address 1 8 }  { neighbor_table_2_ce0 mem_ce 1 1 }  { neighbor_table_2_q0 in_data 0 32 } } }
	neighbor_table_3 { ap_memory {  { neighbor_table_3_address0 mem_address 1 8 }  { neighbor_table_3_ce0 mem_ce 1 1 }  { neighbor_table_3_q0 in_data 0 32 } } }
	node_neighbors_1 { ap_memory {  { node_neighbors_1_address0 mem_address 1 9 }  { node_neighbors_1_ce0 mem_ce 1 1 }  { node_neighbors_1_we0 mem_we 1 1 }  { node_neighbors_1_d0 mem_din 1 32 } } }
	node_neighbors_2 { ap_memory {  { node_neighbors_2_address0 mem_address 1 9 }  { node_neighbors_2_ce0 mem_ce 1 1 }  { node_neighbors_2_we0 mem_we 1 1 }  { node_neighbors_2_d0 mem_din 1 32 } } }
	node_neighbors_3 { ap_memory {  { node_neighbors_3_address0 mem_address 1 9 }  { node_neighbors_3_ce0 mem_ce 1 1 }  { node_neighbors_3_we0 mem_we 1 1 }  { node_neighbors_3_d0 mem_din 1 32 } } }
}
