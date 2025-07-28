set moduleName compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1
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
set C_modelName {compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_nodes int 32 regular  }
	{ neightbor_table_offsets_temp_3 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp_2 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp_1 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_nodes sc_in sc_lv 32 signal 0 } 
	{ neightbor_table_offsets_temp_3_address0 sc_out sc_lv 5 signal 1 } 
	{ neightbor_table_offsets_temp_3_ce0 sc_out sc_logic 1 signal 1 } 
	{ neightbor_table_offsets_temp_3_we0 sc_out sc_logic 1 signal 1 } 
	{ neightbor_table_offsets_temp_3_d0 sc_out sc_lv 32 signal 1 } 
	{ neightbor_table_offsets_temp_2_address0 sc_out sc_lv 5 signal 2 } 
	{ neightbor_table_offsets_temp_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ neightbor_table_offsets_temp_2_we0 sc_out sc_logic 1 signal 2 } 
	{ neightbor_table_offsets_temp_2_d0 sc_out sc_lv 32 signal 2 } 
	{ neightbor_table_offsets_temp_1_address0 sc_out sc_lv 5 signal 3 } 
	{ neightbor_table_offsets_temp_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ neightbor_table_offsets_temp_1_we0 sc_out sc_logic 1 signal 3 } 
	{ neightbor_table_offsets_temp_1_d0 sc_out sc_lv 32 signal 3 } 
	{ neightbor_table_offsets_temp_address0 sc_out sc_lv 5 signal 4 } 
	{ neightbor_table_offsets_temp_ce0 sc_out sc_logic 1 signal 4 } 
	{ neightbor_table_offsets_temp_we0 sc_out sc_logic 1 signal 4 } 
	{ neightbor_table_offsets_temp_d0 sc_out sc_lv 32 signal 4 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 5 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 5 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 6 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 6 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 6 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "d0" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		neightbor_table_offsets_temp_3 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_2 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_1 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	neightbor_table_offsets_temp_3 { ap_memory {  { neightbor_table_offsets_temp_3_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_3_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_3_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_3_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp_2 { ap_memory {  { neightbor_table_offsets_temp_2_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_2_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_2_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_2_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp_1 { ap_memory {  { neightbor_table_offsets_temp_1_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_1_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_1_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_1_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp { ap_memory {  { neightbor_table_offsets_temp_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_d0 mem_din 1 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 in_data 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
}
set moduleName compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1
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
set C_modelName {compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_nodes int 32 regular  }
	{ neightbor_table_offsets_temp_3 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp_2 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp_1 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_nodes sc_in sc_lv 32 signal 0 } 
	{ neightbor_table_offsets_temp_3_address0 sc_out sc_lv 5 signal 1 } 
	{ neightbor_table_offsets_temp_3_ce0 sc_out sc_logic 1 signal 1 } 
	{ neightbor_table_offsets_temp_3_we0 sc_out sc_logic 1 signal 1 } 
	{ neightbor_table_offsets_temp_3_d0 sc_out sc_lv 32 signal 1 } 
	{ neightbor_table_offsets_temp_2_address0 sc_out sc_lv 5 signal 2 } 
	{ neightbor_table_offsets_temp_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ neightbor_table_offsets_temp_2_we0 sc_out sc_logic 1 signal 2 } 
	{ neightbor_table_offsets_temp_2_d0 sc_out sc_lv 32 signal 2 } 
	{ neightbor_table_offsets_temp_1_address0 sc_out sc_lv 5 signal 3 } 
	{ neightbor_table_offsets_temp_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ neightbor_table_offsets_temp_1_we0 sc_out sc_logic 1 signal 3 } 
	{ neightbor_table_offsets_temp_1_d0 sc_out sc_lv 32 signal 3 } 
	{ neightbor_table_offsets_temp_address0 sc_out sc_lv 5 signal 4 } 
	{ neightbor_table_offsets_temp_ce0 sc_out sc_logic 1 signal 4 } 
	{ neightbor_table_offsets_temp_we0 sc_out sc_logic 1 signal 4 } 
	{ neightbor_table_offsets_temp_d0 sc_out sc_lv 32 signal 4 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 5 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 5 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 6 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 6 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 6 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "d0" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		neightbor_table_offsets_temp_3 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_2 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_1 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	neightbor_table_offsets_temp_3 { ap_memory {  { neightbor_table_offsets_temp_3_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_3_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_3_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_3_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp_2 { ap_memory {  { neightbor_table_offsets_temp_2_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_2_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_2_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_2_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp_1 { ap_memory {  { neightbor_table_offsets_temp_1_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_1_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_1_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_1_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp { ap_memory {  { neightbor_table_offsets_temp_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_d0 mem_din 1 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 in_data 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
}
set moduleName compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1
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
set C_modelName {compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_nodes int 32 regular  }
	{ neightbor_table_offsets_temp_3 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp_2 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp_1 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_nodes sc_in sc_lv 32 signal 0 } 
	{ neightbor_table_offsets_temp_3_address0 sc_out sc_lv 5 signal 1 } 
	{ neightbor_table_offsets_temp_3_ce0 sc_out sc_logic 1 signal 1 } 
	{ neightbor_table_offsets_temp_3_we0 sc_out sc_logic 1 signal 1 } 
	{ neightbor_table_offsets_temp_3_d0 sc_out sc_lv 32 signal 1 } 
	{ neightbor_table_offsets_temp_2_address0 sc_out sc_lv 5 signal 2 } 
	{ neightbor_table_offsets_temp_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ neightbor_table_offsets_temp_2_we0 sc_out sc_logic 1 signal 2 } 
	{ neightbor_table_offsets_temp_2_d0 sc_out sc_lv 32 signal 2 } 
	{ neightbor_table_offsets_temp_1_address0 sc_out sc_lv 5 signal 3 } 
	{ neightbor_table_offsets_temp_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ neightbor_table_offsets_temp_1_we0 sc_out sc_logic 1 signal 3 } 
	{ neightbor_table_offsets_temp_1_d0 sc_out sc_lv 32 signal 3 } 
	{ neightbor_table_offsets_temp_address0 sc_out sc_lv 5 signal 4 } 
	{ neightbor_table_offsets_temp_ce0 sc_out sc_logic 1 signal 4 } 
	{ neightbor_table_offsets_temp_we0 sc_out sc_logic 1 signal 4 } 
	{ neightbor_table_offsets_temp_d0 sc_out sc_lv 32 signal 4 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 5 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 5 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 6 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 6 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 6 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "d0" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		neightbor_table_offsets_temp_3 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_2 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_1 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	neightbor_table_offsets_temp_3 { ap_memory {  { neightbor_table_offsets_temp_3_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_3_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_3_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_3_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp_2 { ap_memory {  { neightbor_table_offsets_temp_2_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_2_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_2_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_2_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp_1 { ap_memory {  { neightbor_table_offsets_temp_1_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_1_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_1_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_1_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp { ap_memory {  { neightbor_table_offsets_temp_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_d0 mem_din 1 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 in_data 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
}
set moduleName compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1
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
set C_modelName {compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_nodes int 32 regular  }
	{ neightbor_table_offsets_temp_3 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp_2 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp_1 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_nodes sc_in sc_lv 32 signal 0 } 
	{ neightbor_table_offsets_temp_3_address0 sc_out sc_lv 5 signal 1 } 
	{ neightbor_table_offsets_temp_3_ce0 sc_out sc_logic 1 signal 1 } 
	{ neightbor_table_offsets_temp_3_we0 sc_out sc_logic 1 signal 1 } 
	{ neightbor_table_offsets_temp_3_d0 sc_out sc_lv 32 signal 1 } 
	{ neightbor_table_offsets_temp_2_address0 sc_out sc_lv 5 signal 2 } 
	{ neightbor_table_offsets_temp_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ neightbor_table_offsets_temp_2_we0 sc_out sc_logic 1 signal 2 } 
	{ neightbor_table_offsets_temp_2_d0 sc_out sc_lv 32 signal 2 } 
	{ neightbor_table_offsets_temp_1_address0 sc_out sc_lv 5 signal 3 } 
	{ neightbor_table_offsets_temp_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ neightbor_table_offsets_temp_1_we0 sc_out sc_logic 1 signal 3 } 
	{ neightbor_table_offsets_temp_1_d0 sc_out sc_lv 32 signal 3 } 
	{ neightbor_table_offsets_temp_address0 sc_out sc_lv 5 signal 4 } 
	{ neightbor_table_offsets_temp_ce0 sc_out sc_logic 1 signal 4 } 
	{ neightbor_table_offsets_temp_we0 sc_out sc_logic 1 signal 4 } 
	{ neightbor_table_offsets_temp_d0 sc_out sc_lv 32 signal 4 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 5 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 5 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 6 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 6 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 6 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "d0" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		neightbor_table_offsets_temp_3 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_2 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_1 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	neightbor_table_offsets_temp_3 { ap_memory {  { neightbor_table_offsets_temp_3_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_3_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_3_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_3_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp_2 { ap_memory {  { neightbor_table_offsets_temp_2_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_2_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_2_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_2_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp_1 { ap_memory {  { neightbor_table_offsets_temp_1_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_1_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_1_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_1_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp { ap_memory {  { neightbor_table_offsets_temp_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_d0 mem_din 1 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 in_data 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
}
set moduleName compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1
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
set C_modelName {compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_nodes int 32 regular  }
	{ neightbor_table_offsets_temp_3 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp_2 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp_1 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_nodes sc_in sc_lv 32 signal 0 } 
	{ neightbor_table_offsets_temp_3_address0 sc_out sc_lv 5 signal 1 } 
	{ neightbor_table_offsets_temp_3_ce0 sc_out sc_logic 1 signal 1 } 
	{ neightbor_table_offsets_temp_3_we0 sc_out sc_logic 1 signal 1 } 
	{ neightbor_table_offsets_temp_3_d0 sc_out sc_lv 32 signal 1 } 
	{ neightbor_table_offsets_temp_2_address0 sc_out sc_lv 5 signal 2 } 
	{ neightbor_table_offsets_temp_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ neightbor_table_offsets_temp_2_we0 sc_out sc_logic 1 signal 2 } 
	{ neightbor_table_offsets_temp_2_d0 sc_out sc_lv 32 signal 2 } 
	{ neightbor_table_offsets_temp_1_address0 sc_out sc_lv 5 signal 3 } 
	{ neightbor_table_offsets_temp_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ neightbor_table_offsets_temp_1_we0 sc_out sc_logic 1 signal 3 } 
	{ neightbor_table_offsets_temp_1_d0 sc_out sc_lv 32 signal 3 } 
	{ neightbor_table_offsets_temp_address0 sc_out sc_lv 5 signal 4 } 
	{ neightbor_table_offsets_temp_ce0 sc_out sc_logic 1 signal 4 } 
	{ neightbor_table_offsets_temp_we0 sc_out sc_logic 1 signal 4 } 
	{ neightbor_table_offsets_temp_d0 sc_out sc_lv 32 signal 4 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 5 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 5 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 6 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 6 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 6 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "d0" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		neightbor_table_offsets_temp_3 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_2 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_1 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	neightbor_table_offsets_temp_3 { ap_memory {  { neightbor_table_offsets_temp_3_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_3_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_3_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_3_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp_2 { ap_memory {  { neightbor_table_offsets_temp_2_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_2_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_2_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_2_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp_1 { ap_memory {  { neightbor_table_offsets_temp_1_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_1_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_1_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_1_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp { ap_memory {  { neightbor_table_offsets_temp_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_d0 mem_din 1 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 in_data 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
}
set moduleName compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1
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
set C_modelName {compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_nodes int 32 regular  }
	{ neightbor_table_offsets_temp_3 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp_2 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp_1 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_nodes sc_in sc_lv 32 signal 0 } 
	{ neightbor_table_offsets_temp_3_address0 sc_out sc_lv 5 signal 1 } 
	{ neightbor_table_offsets_temp_3_ce0 sc_out sc_logic 1 signal 1 } 
	{ neightbor_table_offsets_temp_3_we0 sc_out sc_logic 1 signal 1 } 
	{ neightbor_table_offsets_temp_3_d0 sc_out sc_lv 32 signal 1 } 
	{ neightbor_table_offsets_temp_2_address0 sc_out sc_lv 5 signal 2 } 
	{ neightbor_table_offsets_temp_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ neightbor_table_offsets_temp_2_we0 sc_out sc_logic 1 signal 2 } 
	{ neightbor_table_offsets_temp_2_d0 sc_out sc_lv 32 signal 2 } 
	{ neightbor_table_offsets_temp_1_address0 sc_out sc_lv 5 signal 3 } 
	{ neightbor_table_offsets_temp_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ neightbor_table_offsets_temp_1_we0 sc_out sc_logic 1 signal 3 } 
	{ neightbor_table_offsets_temp_1_d0 sc_out sc_lv 32 signal 3 } 
	{ neightbor_table_offsets_temp_address0 sc_out sc_lv 5 signal 4 } 
	{ neightbor_table_offsets_temp_ce0 sc_out sc_logic 1 signal 4 } 
	{ neightbor_table_offsets_temp_we0 sc_out sc_logic 1 signal 4 } 
	{ neightbor_table_offsets_temp_d0 sc_out sc_lv 32 signal 4 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 5 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 5 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 6 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 6 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 6 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "d0" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		neightbor_table_offsets_temp_3 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_2 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_1 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	neightbor_table_offsets_temp_3 { ap_memory {  { neightbor_table_offsets_temp_3_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_3_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_3_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_3_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp_2 { ap_memory {  { neightbor_table_offsets_temp_2_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_2_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_2_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_2_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp_1 { ap_memory {  { neightbor_table_offsets_temp_1_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_1_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_1_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_1_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp { ap_memory {  { neightbor_table_offsets_temp_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_d0 mem_din 1 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 in_data 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
}
set moduleName compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1
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
set C_modelName {compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_nodes int 32 regular  }
	{ neightbor_table_offsets_temp_3 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp_2 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp_1 int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ neightbor_table_offsets_temp int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neightbor_table_offsets_temp", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_nodes sc_in sc_lv 32 signal 0 } 
	{ neightbor_table_offsets_temp_3_address0 sc_out sc_lv 5 signal 1 } 
	{ neightbor_table_offsets_temp_3_ce0 sc_out sc_logic 1 signal 1 } 
	{ neightbor_table_offsets_temp_3_we0 sc_out sc_logic 1 signal 1 } 
	{ neightbor_table_offsets_temp_3_d0 sc_out sc_lv 32 signal 1 } 
	{ neightbor_table_offsets_temp_2_address0 sc_out sc_lv 5 signal 2 } 
	{ neightbor_table_offsets_temp_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ neightbor_table_offsets_temp_2_we0 sc_out sc_logic 1 signal 2 } 
	{ neightbor_table_offsets_temp_2_d0 sc_out sc_lv 32 signal 2 } 
	{ neightbor_table_offsets_temp_1_address0 sc_out sc_lv 5 signal 3 } 
	{ neightbor_table_offsets_temp_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ neightbor_table_offsets_temp_1_we0 sc_out sc_logic 1 signal 3 } 
	{ neightbor_table_offsets_temp_1_d0 sc_out sc_lv 32 signal 3 } 
	{ neightbor_table_offsets_temp_address0 sc_out sc_lv 5 signal 4 } 
	{ neightbor_table_offsets_temp_ce0 sc_out sc_logic 1 signal 4 } 
	{ neightbor_table_offsets_temp_we0 sc_out sc_logic 1 signal 4 } 
	{ neightbor_table_offsets_temp_d0 sc_out sc_lv 32 signal 4 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 5 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 5 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 6 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 6 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 6 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_3", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_2", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp_1", "role": "d0" }} , 
 	{ "name": "neightbor_table_offsets_temp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "address0" }} , 
 	{ "name": "neightbor_table_offsets_temp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "ce0" }} , 
 	{ "name": "neightbor_table_offsets_temp_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "we0" }} , 
 	{ "name": "neightbor_table_offsets_temp_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neightbor_table_offsets_temp", "role": "d0" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		neightbor_table_offsets_temp_3 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_2 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_1 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	neightbor_table_offsets_temp_3 { ap_memory {  { neightbor_table_offsets_temp_3_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_3_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_3_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_3_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp_2 { ap_memory {  { neightbor_table_offsets_temp_2_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_2_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_2_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_2_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp_1 { ap_memory {  { neightbor_table_offsets_temp_1_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_1_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_1_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_1_d0 mem_din 1 32 } } }
	neightbor_table_offsets_temp { ap_memory {  { neightbor_table_offsets_temp_address0 mem_address 1 5 }  { neightbor_table_offsets_temp_ce0 mem_ce 1 1 }  { neightbor_table_offsets_temp_we0 mem_we 1 1 }  { neightbor_table_offsets_temp_d0 mem_din 1 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 in_data 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
}
