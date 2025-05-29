set moduleName bfs
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {bfs}
set C_modelType { void 0 }
set C_modelArgList {
	{ nodes int 128 regular {array 256 { 1 3 } 1 1 }  }
	{ edges int 64 regular {array 4096 { 1 3 } 1 1 }  }
	{ starting_node int 64 regular  }
	{ level int 8 regular {array 256 { 2 3 } 1 1 }  }
	{ level_counts int 64 regular {array 10 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nodes", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "edges", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "starting_node", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "level", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "level_counts", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nodes_address0 sc_out sc_lv 8 signal 0 } 
	{ nodes_ce0 sc_out sc_logic 1 signal 0 } 
	{ nodes_q0 sc_in sc_lv 128 signal 0 } 
	{ edges_address0 sc_out sc_lv 12 signal 1 } 
	{ edges_ce0 sc_out sc_logic 1 signal 1 } 
	{ edges_q0 sc_in sc_lv 64 signal 1 } 
	{ starting_node sc_in sc_lv 64 signal 2 } 
	{ level_address0 sc_out sc_lv 8 signal 3 } 
	{ level_ce0 sc_out sc_logic 1 signal 3 } 
	{ level_we0 sc_out sc_logic 1 signal 3 } 
	{ level_d0 sc_out sc_lv 8 signal 3 } 
	{ level_q0 sc_in sc_lv 8 signal 3 } 
	{ level_counts_address0 sc_out sc_lv 4 signal 4 } 
	{ level_counts_ce0 sc_out sc_logic 1 signal 4 } 
	{ level_counts_we0 sc_out sc_logic 1 signal 4 } 
	{ level_counts_d0 sc_out sc_lv 64 signal 4 } 
	{ level_counts_q0 sc_in sc_lv 64 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nodes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "nodes", "role": "address0" }} , 
 	{ "name": "nodes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes", "role": "ce0" }} , 
 	{ "name": "nodes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "nodes", "role": "q0" }} , 
 	{ "name": "edges_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "edges", "role": "address0" }} , 
 	{ "name": "edges_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edges", "role": "ce0" }} , 
 	{ "name": "edges_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "edges", "role": "q0" }} , 
 	{ "name": "starting_node", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "starting_node", "role": "default" }} , 
 	{ "name": "level_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "level", "role": "address0" }} , 
 	{ "name": "level_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "level", "role": "ce0" }} , 
 	{ "name": "level_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "level", "role": "we0" }} , 
 	{ "name": "level_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "level", "role": "d0" }} , 
 	{ "name": "level_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "level", "role": "q0" }} , 
 	{ "name": "level_counts_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "level_counts", "role": "address0" }} , 
 	{ "name": "level_counts_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "level_counts", "role": "ce0" }} , 
 	{ "name": "level_counts_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "level_counts", "role": "we0" }} , 
 	{ "name": "level_counts_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "level_counts", "role": "d0" }} , 
 	{ "name": "level_counts_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "level_counts", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "bfs",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "482", "EstimateLatencyMax" : "123137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nodes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edges", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_bfs_Pipeline_loop_neighbors_fu_154", "Port" : "edges", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "starting_node", "Type" : "None", "Direction" : "I"},
			{"Name" : "level", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_bfs_Pipeline_loop_neighbors_fu_154", "Port" : "level", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "level_counts", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_bfs_Pipeline_loop_neighbors_fu_154", "Port" : "level_counts", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "loop_queue", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.queue_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bfs_Pipeline_loop_neighbors_fu_154", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "bfs_Pipeline_loop_neighbors",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "477", "EstimateLatencyMax" : "477",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "e", "Type" : "None", "Direction" : "I"},
			{"Name" : "level", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln18", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_end", "Type" : "None", "Direction" : "I"},
			{"Name" : "edges", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "level_counts", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "queue", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "q_in_2_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "loop_neighbors", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bfs_Pipeline_loop_neighbors_fu_154.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	bfs {
		nodes {Type I LastRead 2 FirstWrite -1}
		edges {Type I LastRead 1 FirstWrite -1}
		starting_node {Type I LastRead 0 FirstWrite -1}
		level {Type IO LastRead 3 FirstWrite 0}
		level_counts {Type IO LastRead 4 FirstWrite 0}}
	bfs_Pipeline_loop_neighbors {
		e {Type I LastRead 0 FirstWrite -1}
		level {Type IO LastRead 3 FirstWrite 4}
		zext_ln18 {Type I LastRead 0 FirstWrite -1}
		tmp_end {Type I LastRead 0 FirstWrite -1}
		edges {Type I LastRead 1 FirstWrite -1}
		level_counts {Type IO LastRead 4 FirstWrite 5}
		queue {Type O LastRead -1 FirstWrite 3}
		q_in_2_out {Type IO LastRead 3 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "482", "Max" : "123137"}
	, {"Name" : "Interval", "Min" : "483", "Max" : "123138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	nodes { ap_memory {  { nodes_address0 mem_address 1 8 }  { nodes_ce0 mem_ce 1 1 }  { nodes_q0 in_data 0 128 } } }
	edges { ap_memory {  { edges_address0 mem_address 1 12 }  { edges_ce0 mem_ce 1 1 }  { edges_q0 mem_dout 0 64 } } }
	starting_node { ap_none {  { starting_node in_data 0 64 } } }
	level { ap_memory {  { level_address0 mem_address 1 8 }  { level_ce0 mem_ce 1 1 }  { level_we0 mem_we 1 1 }  { level_d0 mem_din 1 8 }  { level_q0 mem_dout 0 8 } } }
	level_counts { ap_memory {  { level_counts_address0 mem_address 1 4 }  { level_counts_ce0 mem_ce 1 1 }  { level_counts_we0 mem_we 1 1 }  { level_counts_d0 mem_din 1 64 }  { level_counts_q0 mem_dout 0 64 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
