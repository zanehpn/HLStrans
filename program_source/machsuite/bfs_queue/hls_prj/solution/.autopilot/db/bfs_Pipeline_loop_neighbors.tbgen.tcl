set moduleName bfs_Pipeline_loop_neighbors
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
set C_modelName {bfs_Pipeline_loop_neighbors}
set C_modelType { void 0 }
set C_modelArgList {
	{ e int 64 regular  }
	{ level int 8 regular {array 256 { 2 3 } 1 1 }  }
	{ zext_ln18 int 8 regular  }
	{ tmp_end int 64 regular  }
	{ edges int 64 regular {array 4096 { 1 3 } 1 1 }  }
	{ level_counts int 64 regular {array 10 { 2 3 } 1 1 }  }
	{ queue int 8 regular {array 256 { 0 3 } 0 1 }  }
	{ q_in_2_out int 64 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "e", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "level", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "zext_ln18", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_end", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "edges", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "level_counts", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "queue", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "q_in_2_out", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ e sc_in sc_lv 64 signal 0 } 
	{ level_address0 sc_out sc_lv 8 signal 1 } 
	{ level_ce0 sc_out sc_logic 1 signal 1 } 
	{ level_we0 sc_out sc_logic 1 signal 1 } 
	{ level_d0 sc_out sc_lv 8 signal 1 } 
	{ level_q0 sc_in sc_lv 8 signal 1 } 
	{ zext_ln18 sc_in sc_lv 8 signal 2 } 
	{ tmp_end sc_in sc_lv 64 signal 3 } 
	{ edges_address0 sc_out sc_lv 12 signal 4 } 
	{ edges_ce0 sc_out sc_logic 1 signal 4 } 
	{ edges_q0 sc_in sc_lv 64 signal 4 } 
	{ level_counts_address0 sc_out sc_lv 4 signal 5 } 
	{ level_counts_ce0 sc_out sc_logic 1 signal 5 } 
	{ level_counts_we0 sc_out sc_logic 1 signal 5 } 
	{ level_counts_d0 sc_out sc_lv 64 signal 5 } 
	{ level_counts_q0 sc_in sc_lv 64 signal 5 } 
	{ queue_address0 sc_out sc_lv 8 signal 6 } 
	{ queue_ce0 sc_out sc_logic 1 signal 6 } 
	{ queue_we0 sc_out sc_logic 1 signal 6 } 
	{ queue_d0 sc_out sc_lv 8 signal 6 } 
	{ q_in_2_out_i sc_in sc_lv 64 signal 7 } 
	{ q_in_2_out_o sc_out sc_lv 64 signal 7 } 
	{ q_in_2_out_o_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "e", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "e", "role": "default" }} , 
 	{ "name": "level_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "level", "role": "address0" }} , 
 	{ "name": "level_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "level", "role": "ce0" }} , 
 	{ "name": "level_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "level", "role": "we0" }} , 
 	{ "name": "level_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "level", "role": "d0" }} , 
 	{ "name": "level_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "level", "role": "q0" }} , 
 	{ "name": "zext_ln18", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln18", "role": "default" }} , 
 	{ "name": "tmp_end", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_end", "role": "default" }} , 
 	{ "name": "edges_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "edges", "role": "address0" }} , 
 	{ "name": "edges_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edges", "role": "ce0" }} , 
 	{ "name": "edges_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "edges", "role": "q0" }} , 
 	{ "name": "level_counts_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "level_counts", "role": "address0" }} , 
 	{ "name": "level_counts_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "level_counts", "role": "ce0" }} , 
 	{ "name": "level_counts_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "level_counts", "role": "we0" }} , 
 	{ "name": "level_counts_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "level_counts", "role": "d0" }} , 
 	{ "name": "level_counts_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "level_counts", "role": "q0" }} , 
 	{ "name": "queue_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "queue", "role": "address0" }} , 
 	{ "name": "queue_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "queue", "role": "ce0" }} , 
 	{ "name": "queue_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "queue", "role": "we0" }} , 
 	{ "name": "queue_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "queue", "role": "d0" }} , 
 	{ "name": "q_in_2_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "q_in_2_out", "role": "i" }} , 
 	{ "name": "q_in_2_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "q_in_2_out", "role": "o" }} , 
 	{ "name": "q_in_2_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "q_in_2_out", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "477", "Max" : "477"}
	, {"Name" : "Interval", "Min" : "477", "Max" : "477"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	e { ap_none {  { e in_data 0 64 } } }
	level { ap_memory {  { level_address0 mem_address 1 8 }  { level_ce0 mem_ce 1 1 }  { level_we0 mem_we 1 1 }  { level_d0 mem_din 1 8 }  { level_q0 in_data 0 8 } } }
	zext_ln18 { ap_none {  { zext_ln18 in_data 0 8 } } }
	tmp_end { ap_none {  { tmp_end in_data 0 64 } } }
	edges { ap_memory {  { edges_address0 mem_address 1 12 }  { edges_ce0 mem_ce 1 1 }  { edges_q0 in_data 0 64 } } }
	level_counts { ap_memory {  { level_counts_address0 mem_address 1 4 }  { level_counts_ce0 mem_ce 1 1 }  { level_counts_we0 mem_we 1 1 }  { level_counts_d0 mem_din 1 64 }  { level_counts_q0 in_data 0 64 } } }
	queue { ap_memory {  { queue_address0 mem_address 1 8 }  { queue_ce0 mem_ce 1 1 }  { queue_we0 mem_we 1 1 }  { queue_d0 mem_din 1 8 } } }
	q_in_2_out { ap_ovld {  { q_in_2_out_i in_data 0 64 }  { q_in_2_out_o out_data 1 64 }  { q_in_2_out_o_ap_vld out_vld 1 1 } } }
}
