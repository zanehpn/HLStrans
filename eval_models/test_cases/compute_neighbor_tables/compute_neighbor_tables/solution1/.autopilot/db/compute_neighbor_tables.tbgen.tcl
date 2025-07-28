set moduleName compute_neighbor_tables
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
set C_modelName {compute_neighbor_tables}
set C_modelType { void 0 }
set C_modelArgList {
	{ edge_list int 32 regular {array 2000 { 1 1 } 1 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ out_degree_table int 32 unused {array 100 { } 0 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ neighbor_table int 32 regular {array 1000 { 0 3 } 0 1 }  }
	{ num_nodes int 32 regular  }
	{ num_edges int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neighbor_table", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_edges", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ edge_list_address0 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 0 } 
	{ edge_list_address1 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 0 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 1 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 1 } 
	{ out_degree_table_address0 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d0 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q0 sc_in sc_lv 32 signal 2 } 
	{ out_degree_table_address1 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d1 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q1 sc_in sc_lv 32 signal 2 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 3 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 3 } 
	{ neighbor_table_address0 sc_out sc_lv 10 signal 4 } 
	{ neighbor_table_ce0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_we0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_d0 sc_out sc_lv 32 signal 4 } 
	{ num_nodes sc_in sc_lv 32 signal 5 } 
	{ num_edges sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address0" }} , 
 	{ "name": "out_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce0" }} , 
 	{ "name": "out_degree_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we0" }} , 
 	{ "name": "out_degree_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d0" }} , 
 	{ "name": "out_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address1" }} , 
 	{ "name": "out_degree_table_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce1" }} , 
 	{ "name": "out_degree_table_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we1" }} , 
 	{ "name": "out_degree_table_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d1" }} , 
 	{ "name": "out_degree_table_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q1" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }} , 
 	{ "name": "neighbor_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "neighbor_table", "role": "address0" }} , 
 	{ "name": "neighbor_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "ce0" }} , 
 	{ "name": "neighbor_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "we0" }} , 
 	{ "name": "neighbor_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table", "role": "d0" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "num_edges", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_edges", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "9"],
		"CDFG" : "compute_neighbor_tables",
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
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2_fu_114", "Port" : "edge_list", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_17_1_fu_100", "Port" : "in_degree_table", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_degree_table", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_17_1_fu_100", "Port" : "neighbor_table_offsets", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2_fu_114", "Port" : "neighbor_table", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_17_1_fu_100", "Parent" : "0", "Child" : ["6", "7", "8"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_17_1",
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
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter34", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter34", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_17_1_fu_100.mul_31ns_33ns_38_1_1_U1", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_17_1_fu_100.urem_31ns_6ns_31_35_1_U2", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_17_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2_fu_114", "Parent" : "0", "Child" : ["10", "11", "12", "13"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2",
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
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_25_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2_fu_114.urem_32ns_6ns_32_36_1_U12", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2_fu_114.mul_32ns_34ns_39_1_1_U13", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2_fu_114.mux_42_32_1_1_U14", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables {
		edge_list {Type I LastRead 36 FirstWrite -1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		out_degree_table {Type X LastRead -1 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 0}
		neighbor_table {Type O LastRead -1 FirstWrite 37}
		num_nodes {Type I LastRead 1 FirstWrite -1}
		num_edges {Type I LastRead 3 FirstWrite -1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_17_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		neightbor_table_offsets_temp_3 {Type O LastRead -1 FirstWrite 34}
		neightbor_table_offsets_temp_2 {Type O LastRead -1 FirstWrite 34}
		neightbor_table_offsets_temp_1 {Type O LastRead -1 FirstWrite 34}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 34}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2 {
		num_edges {Type I LastRead 0 FirstWrite -1}
		edge_list {Type I LastRead 36 FirstWrite -1}
		neightbor_table_offsets_temp {Type IO LastRead 36 FirstWrite 37}
		neightbor_table_offsets_temp_1 {Type IO LastRead 36 FirstWrite 37}
		neightbor_table_offsets_temp_2 {Type IO LastRead 36 FirstWrite 37}
		neightbor_table_offsets_temp_3 {Type IO LastRead 36 FirstWrite 37}
		neighbor_table {Type O LastRead -1 FirstWrite 37}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 11 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 11 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 mem_dout 0 32 } } }
	out_degree_table { ap_memory {  { out_degree_table_address0 mem_address 1 7 }  { out_degree_table_ce0 mem_ce 1 1 }  { out_degree_table_we0 mem_we 1 1 }  { out_degree_table_d0 mem_din 1 32 }  { out_degree_table_q0 mem_dout 0 32 }  { out_degree_table_address1 MemPortADDR2 1 7 }  { out_degree_table_ce1 MemPortCE2 1 1 }  { out_degree_table_we1 MemPortWE2 1 1 }  { out_degree_table_d1 MemPortDIN2 1 32 }  { out_degree_table_q1 MemPortDOUT2 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
	neighbor_table { ap_memory {  { neighbor_table_address0 mem_address 1 10 }  { neighbor_table_ce0 mem_ce 1 1 }  { neighbor_table_we0 mem_we 1 1 }  { neighbor_table_d0 mem_din 1 32 } } }
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	num_edges { ap_none {  { num_edges in_data 0 32 } } }
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
set moduleName compute_neighbor_tables
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
set C_modelName {compute_neighbor_tables}
set C_modelType { void 0 }
set C_modelArgList {
	{ edge_list int 32 regular {array 2000 { 1 1 } 1 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ out_degree_table int 32 unused {array 100 { } 0 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ neighbor_table int 32 regular {array 1000 { 0 3 } 0 1 }  }
	{ num_nodes int 32 regular  }
	{ num_edges int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neighbor_table", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_edges", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ edge_list_address0 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 0 } 
	{ edge_list_address1 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 0 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 1 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 1 } 
	{ out_degree_table_address0 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d0 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q0 sc_in sc_lv 32 signal 2 } 
	{ out_degree_table_address1 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d1 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q1 sc_in sc_lv 32 signal 2 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 3 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 3 } 
	{ neighbor_table_address0 sc_out sc_lv 10 signal 4 } 
	{ neighbor_table_ce0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_we0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_d0 sc_out sc_lv 32 signal 4 } 
	{ num_nodes sc_in sc_lv 32 signal 5 } 
	{ num_edges sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address0" }} , 
 	{ "name": "out_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce0" }} , 
 	{ "name": "out_degree_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we0" }} , 
 	{ "name": "out_degree_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d0" }} , 
 	{ "name": "out_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address1" }} , 
 	{ "name": "out_degree_table_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce1" }} , 
 	{ "name": "out_degree_table_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we1" }} , 
 	{ "name": "out_degree_table_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d1" }} , 
 	{ "name": "out_degree_table_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q1" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }} , 
 	{ "name": "neighbor_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "neighbor_table", "role": "address0" }} , 
 	{ "name": "neighbor_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "ce0" }} , 
 	{ "name": "neighbor_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "we0" }} , 
 	{ "name": "neighbor_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table", "role": "d0" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "num_edges", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_edges", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "9"],
		"CDFG" : "compute_neighbor_tables",
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
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2_fu_114", "Port" : "edge_list", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_17_1_fu_100", "Port" : "in_degree_table", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_degree_table", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_17_1_fu_100", "Port" : "neighbor_table_offsets", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2_fu_114", "Port" : "neighbor_table", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_17_1_fu_100", "Parent" : "0", "Child" : ["6", "7", "8"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_17_1",
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
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter34", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter34", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_17_1_fu_100.mul_31ns_33ns_38_1_1_U1", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_17_1_fu_100.urem_31ns_6ns_31_35_1_U2", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_17_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2_fu_114", "Parent" : "0", "Child" : ["10", "11", "12", "13"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2",
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
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_25_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2_fu_114.urem_32ns_6ns_32_36_1_U12", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2_fu_114.mul_32ns_34ns_39_1_1_U13", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2_fu_114.mux_42_32_1_1_U14", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables {
		edge_list {Type I LastRead 36 FirstWrite -1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		out_degree_table {Type X LastRead -1 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 0}
		neighbor_table {Type O LastRead -1 FirstWrite 37}
		num_nodes {Type I LastRead 1 FirstWrite -1}
		num_edges {Type I LastRead 3 FirstWrite -1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_17_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		neightbor_table_offsets_temp_3 {Type O LastRead -1 FirstWrite 34}
		neightbor_table_offsets_temp_2 {Type O LastRead -1 FirstWrite 34}
		neightbor_table_offsets_temp_1 {Type O LastRead -1 FirstWrite 34}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 34}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_25_2 {
		num_edges {Type I LastRead 0 FirstWrite -1}
		edge_list {Type I LastRead 36 FirstWrite -1}
		neightbor_table_offsets_temp {Type IO LastRead 36 FirstWrite 37}
		neightbor_table_offsets_temp_1 {Type IO LastRead 36 FirstWrite 37}
		neightbor_table_offsets_temp_2 {Type IO LastRead 36 FirstWrite 37}
		neightbor_table_offsets_temp_3 {Type IO LastRead 36 FirstWrite 37}
		neighbor_table {Type O LastRead -1 FirstWrite 37}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 11 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 11 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 mem_dout 0 32 } } }
	out_degree_table { ap_memory {  { out_degree_table_address0 mem_address 1 7 }  { out_degree_table_ce0 mem_ce 1 1 }  { out_degree_table_we0 mem_we 1 1 }  { out_degree_table_d0 mem_din 1 32 }  { out_degree_table_q0 mem_dout 0 32 }  { out_degree_table_address1 MemPortADDR2 1 7 }  { out_degree_table_ce1 MemPortCE2 1 1 }  { out_degree_table_we1 MemPortWE2 1 1 }  { out_degree_table_d1 MemPortDIN2 1 32 }  { out_degree_table_q1 MemPortDOUT2 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
	neighbor_table { ap_memory {  { neighbor_table_address0 mem_address 1 10 }  { neighbor_table_ce0 mem_ce 1 1 }  { neighbor_table_we0 mem_we 1 1 }  { neighbor_table_d0 mem_din 1 32 } } }
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	num_edges { ap_none {  { num_edges in_data 0 32 } } }
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
set moduleName compute_neighbor_tables
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
set C_modelName {compute_neighbor_tables}
set C_modelType { void 0 }
set C_modelArgList {
	{ edge_list int 32 regular {array 2000 { 1 1 } 1 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ out_degree_table int 32 unused {array 100 { } 0 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ neighbor_table int 32 regular {array 1000 { 0 3 } 0 1 }  }
	{ num_nodes int 32 regular  }
	{ num_edges int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neighbor_table", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_edges", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ edge_list_address0 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 0 } 
	{ edge_list_address1 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 0 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 1 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 1 } 
	{ out_degree_table_address0 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d0 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q0 sc_in sc_lv 32 signal 2 } 
	{ out_degree_table_address1 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d1 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q1 sc_in sc_lv 32 signal 2 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 3 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 3 } 
	{ neighbor_table_address0 sc_out sc_lv 10 signal 4 } 
	{ neighbor_table_ce0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_we0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_d0 sc_out sc_lv 32 signal 4 } 
	{ num_nodes sc_in sc_lv 32 signal 5 } 
	{ num_edges sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address0" }} , 
 	{ "name": "out_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce0" }} , 
 	{ "name": "out_degree_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we0" }} , 
 	{ "name": "out_degree_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d0" }} , 
 	{ "name": "out_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address1" }} , 
 	{ "name": "out_degree_table_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce1" }} , 
 	{ "name": "out_degree_table_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we1" }} , 
 	{ "name": "out_degree_table_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d1" }} , 
 	{ "name": "out_degree_table_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q1" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }} , 
 	{ "name": "neighbor_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "neighbor_table", "role": "address0" }} , 
 	{ "name": "neighbor_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "ce0" }} , 
 	{ "name": "neighbor_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "we0" }} , 
 	{ "name": "neighbor_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table", "role": "d0" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "num_edges", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_edges", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7"],
		"CDFG" : "compute_neighbor_tables",
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
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Port" : "edge_list", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Port" : "in_degree_table", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_degree_table", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Port" : "neighbor_table_offsets", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Port" : "neighbor_table", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2",
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
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114.mux_42_32_1_1_U8", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables {
		edge_list {Type I LastRead 1 FirstWrite -1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		out_degree_table {Type X LastRead -1 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 0}
		neighbor_table {Type O LastRead -1 FirstWrite 2}
		num_nodes {Type I LastRead 1 FirstWrite -1}
		num_edges {Type I LastRead 3 FirstWrite -1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		neightbor_table_offsets_temp_3 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_2 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_1 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2 {
		num_edges {Type I LastRead 0 FirstWrite -1}
		edge_list {Type I LastRead 1 FirstWrite -1}
		neightbor_table_offsets_temp {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_1 {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_2 {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_3 {Type IO LastRead 1 FirstWrite 2}
		neighbor_table {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 11 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 11 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 mem_dout 0 32 } } }
	out_degree_table { ap_memory {  { out_degree_table_address0 mem_address 1 7 }  { out_degree_table_ce0 mem_ce 1 1 }  { out_degree_table_we0 mem_we 1 1 }  { out_degree_table_d0 mem_din 1 32 }  { out_degree_table_q0 mem_dout 0 32 }  { out_degree_table_address1 MemPortADDR2 1 7 }  { out_degree_table_ce1 MemPortCE2 1 1 }  { out_degree_table_we1 MemPortWE2 1 1 }  { out_degree_table_d1 MemPortDIN2 1 32 }  { out_degree_table_q1 MemPortDOUT2 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
	neighbor_table { ap_memory {  { neighbor_table_address0 mem_address 1 10 }  { neighbor_table_ce0 mem_ce 1 1 }  { neighbor_table_we0 mem_we 1 1 }  { neighbor_table_d0 mem_din 1 32 } } }
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	num_edges { ap_none {  { num_edges in_data 0 32 } } }
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
set moduleName compute_neighbor_tables
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
set C_modelName {compute_neighbor_tables}
set C_modelType { void 0 }
set C_modelArgList {
	{ edge_list int 32 regular {array 2000 { 1 1 } 1 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ out_degree_table int 32 unused {array 100 { } 0 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ neighbor_table int 32 regular {array 1000 { 0 3 } 0 1 }  }
	{ num_nodes int 32 regular  }
	{ num_edges int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neighbor_table", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_edges", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ edge_list_address0 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 0 } 
	{ edge_list_address1 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 0 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 1 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 1 } 
	{ out_degree_table_address0 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d0 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q0 sc_in sc_lv 32 signal 2 } 
	{ out_degree_table_address1 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d1 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q1 sc_in sc_lv 32 signal 2 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 3 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 3 } 
	{ neighbor_table_address0 sc_out sc_lv 10 signal 4 } 
	{ neighbor_table_ce0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_we0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_d0 sc_out sc_lv 32 signal 4 } 
	{ num_nodes sc_in sc_lv 32 signal 5 } 
	{ num_edges sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address0" }} , 
 	{ "name": "out_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce0" }} , 
 	{ "name": "out_degree_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we0" }} , 
 	{ "name": "out_degree_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d0" }} , 
 	{ "name": "out_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address1" }} , 
 	{ "name": "out_degree_table_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce1" }} , 
 	{ "name": "out_degree_table_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we1" }} , 
 	{ "name": "out_degree_table_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d1" }} , 
 	{ "name": "out_degree_table_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q1" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }} , 
 	{ "name": "neighbor_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "neighbor_table", "role": "address0" }} , 
 	{ "name": "neighbor_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "ce0" }} , 
 	{ "name": "neighbor_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "we0" }} , 
 	{ "name": "neighbor_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table", "role": "d0" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "num_edges", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_edges", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7"],
		"CDFG" : "compute_neighbor_tables",
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
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Port" : "edge_list", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Port" : "in_degree_table", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_degree_table", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Port" : "neighbor_table_offsets", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Port" : "neighbor_table", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2",
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
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114.mux_42_32_1_1_U8", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables {
		edge_list {Type I LastRead 1 FirstWrite -1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		out_degree_table {Type X LastRead -1 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 0}
		neighbor_table {Type O LastRead -1 FirstWrite 2}
		num_nodes {Type I LastRead 1 FirstWrite -1}
		num_edges {Type I LastRead 3 FirstWrite -1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		neightbor_table_offsets_temp_3 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_2 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_1 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2 {
		num_edges {Type I LastRead 0 FirstWrite -1}
		edge_list {Type I LastRead 1 FirstWrite -1}
		neightbor_table_offsets_temp {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_1 {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_2 {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_3 {Type IO LastRead 1 FirstWrite 2}
		neighbor_table {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 11 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 11 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 mem_dout 0 32 } } }
	out_degree_table { ap_memory {  { out_degree_table_address0 mem_address 1 7 }  { out_degree_table_ce0 mem_ce 1 1 }  { out_degree_table_we0 mem_we 1 1 }  { out_degree_table_d0 mem_din 1 32 }  { out_degree_table_q0 mem_dout 0 32 }  { out_degree_table_address1 MemPortADDR2 1 7 }  { out_degree_table_ce1 MemPortCE2 1 1 }  { out_degree_table_we1 MemPortWE2 1 1 }  { out_degree_table_d1 MemPortDIN2 1 32 }  { out_degree_table_q1 MemPortDOUT2 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
	neighbor_table { ap_memory {  { neighbor_table_address0 mem_address 1 10 }  { neighbor_table_ce0 mem_ce 1 1 }  { neighbor_table_we0 mem_we 1 1 }  { neighbor_table_d0 mem_din 1 32 } } }
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	num_edges { ap_none {  { num_edges in_data 0 32 } } }
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
set moduleName compute_neighbor_tables
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
set C_modelName {compute_neighbor_tables}
set C_modelType { void 0 }
set C_modelArgList {
	{ edge_list int 32 regular {array 2000 { 1 1 } 1 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ out_degree_table int 32 unused {array 100 { } 0 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ neighbor_table int 32 regular {array 1000 { 0 3 } 0 1 }  }
	{ num_nodes int 32 regular  }
	{ num_edges int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neighbor_table", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_edges", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ edge_list_address0 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 0 } 
	{ edge_list_address1 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 0 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 1 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 1 } 
	{ out_degree_table_address0 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d0 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q0 sc_in sc_lv 32 signal 2 } 
	{ out_degree_table_address1 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d1 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q1 sc_in sc_lv 32 signal 2 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 3 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 3 } 
	{ neighbor_table_address0 sc_out sc_lv 10 signal 4 } 
	{ neighbor_table_ce0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_we0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_d0 sc_out sc_lv 32 signal 4 } 
	{ num_nodes sc_in sc_lv 32 signal 5 } 
	{ num_edges sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address0" }} , 
 	{ "name": "out_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce0" }} , 
 	{ "name": "out_degree_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we0" }} , 
 	{ "name": "out_degree_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d0" }} , 
 	{ "name": "out_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address1" }} , 
 	{ "name": "out_degree_table_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce1" }} , 
 	{ "name": "out_degree_table_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we1" }} , 
 	{ "name": "out_degree_table_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d1" }} , 
 	{ "name": "out_degree_table_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q1" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }} , 
 	{ "name": "neighbor_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "neighbor_table", "role": "address0" }} , 
 	{ "name": "neighbor_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "ce0" }} , 
 	{ "name": "neighbor_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "we0" }} , 
 	{ "name": "neighbor_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table", "role": "d0" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "num_edges", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_edges", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7"],
		"CDFG" : "compute_neighbor_tables",
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
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Port" : "edge_list", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Port" : "in_degree_table", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_degree_table", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Port" : "neighbor_table_offsets", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Port" : "neighbor_table", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2",
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
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114.mux_42_32_1_1_U8", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables {
		edge_list {Type I LastRead 1 FirstWrite -1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		out_degree_table {Type X LastRead -1 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 0}
		neighbor_table {Type O LastRead -1 FirstWrite 2}
		num_nodes {Type I LastRead 1 FirstWrite -1}
		num_edges {Type I LastRead 3 FirstWrite -1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		neightbor_table_offsets_temp_3 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_2 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_1 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2 {
		num_edges {Type I LastRead 0 FirstWrite -1}
		edge_list {Type I LastRead 1 FirstWrite -1}
		neightbor_table_offsets_temp {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_1 {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_2 {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_3 {Type IO LastRead 1 FirstWrite 2}
		neighbor_table {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 11 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 11 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 mem_dout 0 32 } } }
	out_degree_table { ap_memory {  { out_degree_table_address0 mem_address 1 7 }  { out_degree_table_ce0 mem_ce 1 1 }  { out_degree_table_we0 mem_we 1 1 }  { out_degree_table_d0 mem_din 1 32 }  { out_degree_table_q0 mem_dout 0 32 }  { out_degree_table_address1 MemPortADDR2 1 7 }  { out_degree_table_ce1 MemPortCE2 1 1 }  { out_degree_table_we1 MemPortWE2 1 1 }  { out_degree_table_d1 MemPortDIN2 1 32 }  { out_degree_table_q1 MemPortDOUT2 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
	neighbor_table { ap_memory {  { neighbor_table_address0 mem_address 1 10 }  { neighbor_table_ce0 mem_ce 1 1 }  { neighbor_table_we0 mem_we 1 1 }  { neighbor_table_d0 mem_din 1 32 } } }
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	num_edges { ap_none {  { num_edges in_data 0 32 } } }
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
set moduleName compute_neighbor_tables
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
set C_modelName {compute_neighbor_tables}
set C_modelType { void 0 }
set C_modelArgList {
	{ edge_list int 32 regular {array 2000 { 1 1 } 1 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ out_degree_table int 32 unused {array 100 { } 0 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ neighbor_table int 32 regular {array 1000 { 0 3 } 0 1 }  }
	{ num_nodes int 32 regular  }
	{ num_edges int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neighbor_table", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_edges", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ edge_list_address0 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 0 } 
	{ edge_list_address1 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 0 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 1 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 1 } 
	{ out_degree_table_address0 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d0 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q0 sc_in sc_lv 32 signal 2 } 
	{ out_degree_table_address1 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d1 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q1 sc_in sc_lv 32 signal 2 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 3 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 3 } 
	{ neighbor_table_address0 sc_out sc_lv 10 signal 4 } 
	{ neighbor_table_ce0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_we0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_d0 sc_out sc_lv 32 signal 4 } 
	{ num_nodes sc_in sc_lv 32 signal 5 } 
	{ num_edges sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address0" }} , 
 	{ "name": "out_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce0" }} , 
 	{ "name": "out_degree_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we0" }} , 
 	{ "name": "out_degree_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d0" }} , 
 	{ "name": "out_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address1" }} , 
 	{ "name": "out_degree_table_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce1" }} , 
 	{ "name": "out_degree_table_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we1" }} , 
 	{ "name": "out_degree_table_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d1" }} , 
 	{ "name": "out_degree_table_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q1" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }} , 
 	{ "name": "neighbor_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "neighbor_table", "role": "address0" }} , 
 	{ "name": "neighbor_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "ce0" }} , 
 	{ "name": "neighbor_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "we0" }} , 
 	{ "name": "neighbor_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table", "role": "d0" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "num_edges", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_edges", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4"],
		"CDFG" : "compute_neighbor_tables",
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
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_27_2_fu_99", "Port" : "edge_list", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_19_1_fu_88", "Port" : "in_degree_table", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_degree_table", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_19_1_fu_88", "Port" : "neighbor_table_offsets", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_27_2_fu_99", "Port" : "neighbor_table", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_19_1_fu_88", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_19_1",
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
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_19_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_19_1_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_27_2_fu_99", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_27_2",
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
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_27_2_fu_99.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables {
		edge_list {Type I LastRead 1 FirstWrite -1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		out_degree_table {Type X LastRead -1 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 0}
		neighbor_table {Type O LastRead -1 FirstWrite 2}
		num_nodes {Type I LastRead 1 FirstWrite -1}
		num_edges {Type I LastRead 3 FirstWrite -1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_19_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_27_2 {
		num_edges {Type I LastRead 0 FirstWrite -1}
		edge_list {Type I LastRead 1 FirstWrite -1}
		neightbor_table_offsets_temp {Type IO LastRead 1 FirstWrite 2}
		neighbor_table {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 11 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 11 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 mem_dout 0 32 } } }
	out_degree_table { ap_memory {  { out_degree_table_address0 mem_address 1 7 }  { out_degree_table_ce0 mem_ce 1 1 }  { out_degree_table_we0 mem_we 1 1 }  { out_degree_table_d0 mem_din 1 32 }  { out_degree_table_q0 mem_dout 0 32 }  { out_degree_table_address1 MemPortADDR2 1 7 }  { out_degree_table_ce1 MemPortCE2 1 1 }  { out_degree_table_we1 MemPortWE2 1 1 }  { out_degree_table_d1 MemPortDIN2 1 32 }  { out_degree_table_q1 MemPortDOUT2 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
	neighbor_table { ap_memory {  { neighbor_table_address0 mem_address 1 10 }  { neighbor_table_ce0 mem_ce 1 1 }  { neighbor_table_we0 mem_we 1 1 }  { neighbor_table_d0 mem_din 1 32 } } }
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	num_edges { ap_none {  { num_edges in_data 0 32 } } }
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
set moduleName compute_neighbor_tables
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
set C_modelName {compute_neighbor_tables}
set C_modelType { void 0 }
set C_modelArgList {
	{ edge_list int 32 regular {array 2000 { 1 1 } 1 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ out_degree_table int 32 unused {array 100 { } 0 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ neighbor_table int 32 regular {array 1000 { 0 3 } 0 1 }  }
	{ num_nodes int 32 regular  }
	{ num_edges int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neighbor_table", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_edges", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ edge_list_address0 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 0 } 
	{ edge_list_address1 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 0 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 1 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 1 } 
	{ out_degree_table_address0 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d0 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q0 sc_in sc_lv 32 signal 2 } 
	{ out_degree_table_address1 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d1 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q1 sc_in sc_lv 32 signal 2 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 3 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 3 } 
	{ neighbor_table_address0 sc_out sc_lv 10 signal 4 } 
	{ neighbor_table_ce0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_we0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_d0 sc_out sc_lv 32 signal 4 } 
	{ num_nodes sc_in sc_lv 32 signal 5 } 
	{ num_edges sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address0" }} , 
 	{ "name": "out_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce0" }} , 
 	{ "name": "out_degree_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we0" }} , 
 	{ "name": "out_degree_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d0" }} , 
 	{ "name": "out_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address1" }} , 
 	{ "name": "out_degree_table_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce1" }} , 
 	{ "name": "out_degree_table_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we1" }} , 
 	{ "name": "out_degree_table_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d1" }} , 
 	{ "name": "out_degree_table_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q1" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }} , 
 	{ "name": "neighbor_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "neighbor_table", "role": "address0" }} , 
 	{ "name": "neighbor_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "ce0" }} , 
 	{ "name": "neighbor_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "we0" }} , 
 	{ "name": "neighbor_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table", "role": "d0" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "num_edges", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_edges", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7"],
		"CDFG" : "compute_neighbor_tables",
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
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Port" : "edge_list", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Port" : "in_degree_table", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_degree_table", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Port" : "neighbor_table_offsets", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Port" : "neighbor_table", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2",
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
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114.mux_42_32_1_1_U8", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables {
		edge_list {Type I LastRead 1 FirstWrite -1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		out_degree_table {Type X LastRead -1 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 0}
		neighbor_table {Type O LastRead -1 FirstWrite 2}
		num_nodes {Type I LastRead 1 FirstWrite -1}
		num_edges {Type I LastRead 3 FirstWrite -1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		neightbor_table_offsets_temp_3 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_2 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_1 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2 {
		num_edges {Type I LastRead 0 FirstWrite -1}
		edge_list {Type I LastRead 1 FirstWrite -1}
		neightbor_table_offsets_temp {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_1 {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_2 {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_3 {Type IO LastRead 1 FirstWrite 2}
		neighbor_table {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 11 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 11 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 mem_dout 0 32 } } }
	out_degree_table { ap_memory {  { out_degree_table_address0 mem_address 1 7 }  { out_degree_table_ce0 mem_ce 1 1 }  { out_degree_table_we0 mem_we 1 1 }  { out_degree_table_d0 mem_din 1 32 }  { out_degree_table_q0 mem_dout 0 32 }  { out_degree_table_address1 MemPortADDR2 1 7 }  { out_degree_table_ce1 MemPortCE2 1 1 }  { out_degree_table_we1 MemPortWE2 1 1 }  { out_degree_table_d1 MemPortDIN2 1 32 }  { out_degree_table_q1 MemPortDOUT2 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
	neighbor_table { ap_memory {  { neighbor_table_address0 mem_address 1 10 }  { neighbor_table_ce0 mem_ce 1 1 }  { neighbor_table_we0 mem_we 1 1 }  { neighbor_table_d0 mem_din 1 32 } } }
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	num_edges { ap_none {  { num_edges in_data 0 32 } } }
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
set moduleName compute_neighbor_tables
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
set C_modelName {compute_neighbor_tables}
set C_modelType { void 0 }
set C_modelArgList {
	{ edge_list int 32 regular {array 2000 { 1 1 } 1 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ out_degree_table int 32 unused {array 100 { } 0 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ neighbor_table int 32 regular {array 1000 { 0 3 } 0 1 }  }
	{ num_nodes int 32 regular  }
	{ num_edges int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neighbor_table", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_edges", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ edge_list_address0 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 0 } 
	{ edge_list_address1 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 0 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 1 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 1 } 
	{ out_degree_table_address0 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d0 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q0 sc_in sc_lv 32 signal 2 } 
	{ out_degree_table_address1 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d1 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q1 sc_in sc_lv 32 signal 2 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 3 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 3 } 
	{ neighbor_table_address0 sc_out sc_lv 10 signal 4 } 
	{ neighbor_table_ce0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_we0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_d0 sc_out sc_lv 32 signal 4 } 
	{ num_nodes sc_in sc_lv 32 signal 5 } 
	{ num_edges sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address0" }} , 
 	{ "name": "out_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce0" }} , 
 	{ "name": "out_degree_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we0" }} , 
 	{ "name": "out_degree_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d0" }} , 
 	{ "name": "out_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address1" }} , 
 	{ "name": "out_degree_table_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce1" }} , 
 	{ "name": "out_degree_table_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we1" }} , 
 	{ "name": "out_degree_table_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d1" }} , 
 	{ "name": "out_degree_table_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q1" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }} , 
 	{ "name": "neighbor_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "neighbor_table", "role": "address0" }} , 
 	{ "name": "neighbor_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "ce0" }} , 
 	{ "name": "neighbor_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "we0" }} , 
 	{ "name": "neighbor_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table", "role": "d0" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "num_edges", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_edges", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7"],
		"CDFG" : "compute_neighbor_tables",
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
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Port" : "edge_list", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Port" : "in_degree_table", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_degree_table", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Port" : "neighbor_table_offsets", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Port" : "neighbor_table", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2",
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
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114.mux_42_32_1_1_U8", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables {
		edge_list {Type I LastRead 1 FirstWrite -1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		out_degree_table {Type X LastRead -1 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 0}
		neighbor_table {Type O LastRead -1 FirstWrite 2}
		num_nodes {Type I LastRead 1 FirstWrite -1}
		num_edges {Type I LastRead 3 FirstWrite -1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		neightbor_table_offsets_temp_3 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_2 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_1 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2 {
		num_edges {Type I LastRead 0 FirstWrite -1}
		edge_list {Type I LastRead 1 FirstWrite -1}
		neightbor_table_offsets_temp {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_1 {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_2 {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_3 {Type IO LastRead 1 FirstWrite 2}
		neighbor_table {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 11 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 11 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 mem_dout 0 32 } } }
	out_degree_table { ap_memory {  { out_degree_table_address0 mem_address 1 7 }  { out_degree_table_ce0 mem_ce 1 1 }  { out_degree_table_we0 mem_we 1 1 }  { out_degree_table_d0 mem_din 1 32 }  { out_degree_table_q0 mem_dout 0 32 }  { out_degree_table_address1 MemPortADDR2 1 7 }  { out_degree_table_ce1 MemPortCE2 1 1 }  { out_degree_table_we1 MemPortWE2 1 1 }  { out_degree_table_d1 MemPortDIN2 1 32 }  { out_degree_table_q1 MemPortDOUT2 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
	neighbor_table { ap_memory {  { neighbor_table_address0 mem_address 1 10 }  { neighbor_table_ce0 mem_ce 1 1 }  { neighbor_table_we0 mem_we 1 1 }  { neighbor_table_d0 mem_din 1 32 } } }
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	num_edges { ap_none {  { num_edges in_data 0 32 } } }
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
set moduleName compute_neighbor_tables
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
set C_modelName {compute_neighbor_tables}
set C_modelType { void 0 }
set C_modelArgList {
	{ edge_list int 32 regular {array 2000 { 1 1 } 1 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ out_degree_table int 32 unused {array 100 { } 0 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ neighbor_table int 32 regular {array 1000 { 0 3 } 0 1 }  }
	{ num_nodes int 32 regular  }
	{ num_edges int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neighbor_table", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_edges", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ edge_list_address0 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 0 } 
	{ edge_list_address1 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 0 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 1 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 1 } 
	{ out_degree_table_address0 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d0 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q0 sc_in sc_lv 32 signal 2 } 
	{ out_degree_table_address1 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d1 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q1 sc_in sc_lv 32 signal 2 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 3 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 3 } 
	{ neighbor_table_address0 sc_out sc_lv 10 signal 4 } 
	{ neighbor_table_ce0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_we0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_d0 sc_out sc_lv 32 signal 4 } 
	{ num_nodes sc_in sc_lv 32 signal 5 } 
	{ num_edges sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address0" }} , 
 	{ "name": "out_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce0" }} , 
 	{ "name": "out_degree_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we0" }} , 
 	{ "name": "out_degree_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d0" }} , 
 	{ "name": "out_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address1" }} , 
 	{ "name": "out_degree_table_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce1" }} , 
 	{ "name": "out_degree_table_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we1" }} , 
 	{ "name": "out_degree_table_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d1" }} , 
 	{ "name": "out_degree_table_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q1" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }} , 
 	{ "name": "neighbor_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "neighbor_table", "role": "address0" }} , 
 	{ "name": "neighbor_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "ce0" }} , 
 	{ "name": "neighbor_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "we0" }} , 
 	{ "name": "neighbor_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table", "role": "d0" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "num_edges", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_edges", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7"],
		"CDFG" : "compute_neighbor_tables",
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
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Port" : "edge_list", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Port" : "in_degree_table", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_degree_table", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Port" : "neighbor_table_offsets", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Port" : "neighbor_table", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2",
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
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114.mux_42_32_1_1_U8", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables {
		edge_list {Type I LastRead 1 FirstWrite -1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		out_degree_table {Type X LastRead -1 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 0}
		neighbor_table {Type O LastRead -1 FirstWrite 2}
		num_nodes {Type I LastRead 1 FirstWrite -1}
		num_edges {Type I LastRead 3 FirstWrite -1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		neightbor_table_offsets_temp_3 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_2 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_1 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2 {
		num_edges {Type I LastRead 0 FirstWrite -1}
		edge_list {Type I LastRead 1 FirstWrite -1}
		neightbor_table_offsets_temp {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_1 {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_2 {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_3 {Type IO LastRead 1 FirstWrite 2}
		neighbor_table {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 11 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 11 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 mem_dout 0 32 } } }
	out_degree_table { ap_memory {  { out_degree_table_address0 mem_address 1 7 }  { out_degree_table_ce0 mem_ce 1 1 }  { out_degree_table_we0 mem_we 1 1 }  { out_degree_table_d0 mem_din 1 32 }  { out_degree_table_q0 mem_dout 0 32 }  { out_degree_table_address1 MemPortADDR2 1 7 }  { out_degree_table_ce1 MemPortCE2 1 1 }  { out_degree_table_we1 MemPortWE2 1 1 }  { out_degree_table_d1 MemPortDIN2 1 32 }  { out_degree_table_q1 MemPortDOUT2 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
	neighbor_table { ap_memory {  { neighbor_table_address0 mem_address 1 10 }  { neighbor_table_ce0 mem_ce 1 1 }  { neighbor_table_we0 mem_we 1 1 }  { neighbor_table_d0 mem_din 1 32 } } }
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	num_edges { ap_none {  { num_edges in_data 0 32 } } }
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
set moduleName compute_neighbor_tables
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
set C_modelName {compute_neighbor_tables}
set C_modelType { void 0 }
set C_modelArgList {
	{ edge_list int 32 regular {array 2000 { 1 1 } 1 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ out_degree_table int 32 unused {array 100 { } 0 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ neighbor_table int 32 regular {array 1000 { 0 3 } 0 1 }  }
	{ num_nodes int 32 regular  }
	{ num_edges int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neighbor_table", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_edges", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ edge_list_address0 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 0 } 
	{ edge_list_address1 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 0 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 1 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 1 } 
	{ out_degree_table_address0 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d0 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q0 sc_in sc_lv 32 signal 2 } 
	{ out_degree_table_address1 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d1 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q1 sc_in sc_lv 32 signal 2 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 3 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 3 } 
	{ neighbor_table_address0 sc_out sc_lv 10 signal 4 } 
	{ neighbor_table_ce0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_we0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_d0 sc_out sc_lv 32 signal 4 } 
	{ num_nodes sc_in sc_lv 32 signal 5 } 
	{ num_edges sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address0" }} , 
 	{ "name": "out_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce0" }} , 
 	{ "name": "out_degree_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we0" }} , 
 	{ "name": "out_degree_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d0" }} , 
 	{ "name": "out_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address1" }} , 
 	{ "name": "out_degree_table_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce1" }} , 
 	{ "name": "out_degree_table_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we1" }} , 
 	{ "name": "out_degree_table_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d1" }} , 
 	{ "name": "out_degree_table_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q1" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }} , 
 	{ "name": "neighbor_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "neighbor_table", "role": "address0" }} , 
 	{ "name": "neighbor_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "ce0" }} , 
 	{ "name": "neighbor_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "we0" }} , 
 	{ "name": "neighbor_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table", "role": "d0" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "num_edges", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_edges", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4"],
		"CDFG" : "compute_neighbor_tables",
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
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_27_2_fu_99", "Port" : "edge_list", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_19_1_fu_88", "Port" : "in_degree_table", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_degree_table", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_19_1_fu_88", "Port" : "neighbor_table_offsets", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_27_2_fu_99", "Port" : "neighbor_table", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_19_1_fu_88", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_19_1",
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
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_19_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_19_1_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_27_2_fu_99", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_27_2",
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
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_27_2_fu_99.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables {
		edge_list {Type I LastRead 1 FirstWrite -1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		out_degree_table {Type X LastRead -1 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 0}
		neighbor_table {Type O LastRead -1 FirstWrite 2}
		num_nodes {Type I LastRead 1 FirstWrite -1}
		num_edges {Type I LastRead 3 FirstWrite -1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_19_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_27_2 {
		num_edges {Type I LastRead 0 FirstWrite -1}
		edge_list {Type I LastRead 1 FirstWrite -1}
		neightbor_table_offsets_temp {Type IO LastRead 1 FirstWrite 2}
		neighbor_table {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 11 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 11 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 mem_dout 0 32 } } }
	out_degree_table { ap_memory {  { out_degree_table_address0 mem_address 1 7 }  { out_degree_table_ce0 mem_ce 1 1 }  { out_degree_table_we0 mem_we 1 1 }  { out_degree_table_d0 mem_din 1 32 }  { out_degree_table_q0 mem_dout 0 32 }  { out_degree_table_address1 MemPortADDR2 1 7 }  { out_degree_table_ce1 MemPortCE2 1 1 }  { out_degree_table_we1 MemPortWE2 1 1 }  { out_degree_table_d1 MemPortDIN2 1 32 }  { out_degree_table_q1 MemPortDOUT2 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
	neighbor_table { ap_memory {  { neighbor_table_address0 mem_address 1 10 }  { neighbor_table_ce0 mem_ce 1 1 }  { neighbor_table_we0 mem_we 1 1 }  { neighbor_table_d0 mem_din 1 32 } } }
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	num_edges { ap_none {  { num_edges in_data 0 32 } } }
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
set moduleName compute_neighbor_tables
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
set C_modelName {compute_neighbor_tables}
set C_modelType { void 0 }
set C_modelArgList {
	{ edge_list int 32 regular {array 2000 { 1 1 } 1 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ out_degree_table int 32 unused {array 100 { } 0 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ neighbor_table int 32 regular {array 1000 { 0 3 } 0 1 }  }
	{ num_nodes int 32 regular  }
	{ num_edges int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neighbor_table", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_edges", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ edge_list_address0 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 0 } 
	{ edge_list_address1 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 0 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 1 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 1 } 
	{ out_degree_table_address0 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d0 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q0 sc_in sc_lv 32 signal 2 } 
	{ out_degree_table_address1 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d1 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q1 sc_in sc_lv 32 signal 2 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 3 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 3 } 
	{ neighbor_table_address0 sc_out sc_lv 10 signal 4 } 
	{ neighbor_table_ce0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_we0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_d0 sc_out sc_lv 32 signal 4 } 
	{ num_nodes sc_in sc_lv 32 signal 5 } 
	{ num_edges sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address0" }} , 
 	{ "name": "out_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce0" }} , 
 	{ "name": "out_degree_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we0" }} , 
 	{ "name": "out_degree_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d0" }} , 
 	{ "name": "out_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address1" }} , 
 	{ "name": "out_degree_table_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce1" }} , 
 	{ "name": "out_degree_table_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we1" }} , 
 	{ "name": "out_degree_table_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d1" }} , 
 	{ "name": "out_degree_table_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q1" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }} , 
 	{ "name": "neighbor_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "neighbor_table", "role": "address0" }} , 
 	{ "name": "neighbor_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "ce0" }} , 
 	{ "name": "neighbor_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "we0" }} , 
 	{ "name": "neighbor_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table", "role": "d0" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "num_edges", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_edges", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7"],
		"CDFG" : "compute_neighbor_tables",
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
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Port" : "edge_list", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Port" : "in_degree_table", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_degree_table", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Port" : "neighbor_table_offsets", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Port" : "neighbor_table", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114", "Parent" : "0", "Child" : ["8", "9"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2",
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
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neightbor_table_offsets_temp_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114.mux_42_32_1_1_U8", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables {
		edge_list {Type I LastRead 1 FirstWrite -1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		out_degree_table {Type X LastRead -1 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 0}
		neighbor_table {Type O LastRead -1 FirstWrite 2}
		num_nodes {Type I LastRead 1 FirstWrite -1}
		num_edges {Type I LastRead 3 FirstWrite -1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_20_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		neightbor_table_offsets_temp_3 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_2 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp_1 {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_28_2 {
		num_edges {Type I LastRead 0 FirstWrite -1}
		edge_list {Type I LastRead 1 FirstWrite -1}
		neightbor_table_offsets_temp {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_1 {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_2 {Type IO LastRead 1 FirstWrite 2}
		neightbor_table_offsets_temp_3 {Type IO LastRead 1 FirstWrite 2}
		neighbor_table {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 11 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 11 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 mem_dout 0 32 } } }
	out_degree_table { ap_memory {  { out_degree_table_address0 mem_address 1 7 }  { out_degree_table_ce0 mem_ce 1 1 }  { out_degree_table_we0 mem_we 1 1 }  { out_degree_table_d0 mem_din 1 32 }  { out_degree_table_q0 mem_dout 0 32 }  { out_degree_table_address1 MemPortADDR2 1 7 }  { out_degree_table_ce1 MemPortCE2 1 1 }  { out_degree_table_we1 MemPortWE2 1 1 }  { out_degree_table_d1 MemPortDIN2 1 32 }  { out_degree_table_q1 MemPortDOUT2 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
	neighbor_table { ap_memory {  { neighbor_table_address0 mem_address 1 10 }  { neighbor_table_ce0 mem_ce 1 1 }  { neighbor_table_we0 mem_we 1 1 }  { neighbor_table_d0 mem_din 1 32 } } }
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	num_edges { ap_none {  { num_edges in_data 0 32 } } }
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
set moduleName compute_neighbor_tables
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
set C_modelName {compute_neighbor_tables}
set C_modelType { void 0 }
set C_modelArgList {
	{ edge_list int 32 regular {array 2000 { 1 1 } 1 1 }  }
	{ in_degree_table int 32 regular {array 100 { 1 3 } 1 1 }  }
	{ out_degree_table int 32 unused {array 100 { } 0 1 }  }
	{ neighbor_table_offsets int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ neighbor_table int 32 regular {array 1000 { 0 3 } 0 1 }  }
	{ num_nodes int 32 regular  }
	{ num_edges int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "neighbor_table_offsets", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "neighbor_table", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_edges", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ edge_list_address0 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 0 } 
	{ edge_list_address1 sc_out sc_lv 11 signal 0 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 0 } 
	{ in_degree_table_address0 sc_out sc_lv 7 signal 1 } 
	{ in_degree_table_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_degree_table_q0 sc_in sc_lv 32 signal 1 } 
	{ out_degree_table_address0 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we0 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d0 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q0 sc_in sc_lv 32 signal 2 } 
	{ out_degree_table_address1 sc_out sc_lv 7 signal 2 } 
	{ out_degree_table_ce1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_we1 sc_out sc_logic 1 signal 2 } 
	{ out_degree_table_d1 sc_out sc_lv 32 signal 2 } 
	{ out_degree_table_q1 sc_in sc_lv 32 signal 2 } 
	{ neighbor_table_offsets_address0 sc_out sc_lv 7 signal 3 } 
	{ neighbor_table_offsets_ce0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_we0 sc_out sc_logic 1 signal 3 } 
	{ neighbor_table_offsets_d0 sc_out sc_lv 32 signal 3 } 
	{ neighbor_table_address0 sc_out sc_lv 10 signal 4 } 
	{ neighbor_table_ce0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_we0 sc_out sc_logic 1 signal 4 } 
	{ neighbor_table_d0 sc_out sc_lv 32 signal 4 } 
	{ num_nodes sc_in sc_lv 32 signal 5 } 
	{ num_edges sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "in_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_degree_table", "role": "address0" }} , 
 	{ "name": "in_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_degree_table", "role": "ce0" }} , 
 	{ "name": "in_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address0" }} , 
 	{ "name": "out_degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce0" }} , 
 	{ "name": "out_degree_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we0" }} , 
 	{ "name": "out_degree_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d0" }} , 
 	{ "name": "out_degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q0" }} , 
 	{ "name": "out_degree_table_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "out_degree_table", "role": "address1" }} , 
 	{ "name": "out_degree_table_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "ce1" }} , 
 	{ "name": "out_degree_table_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_degree_table", "role": "we1" }} , 
 	{ "name": "out_degree_table_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "d1" }} , 
 	{ "name": "out_degree_table_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_degree_table", "role": "q1" }} , 
 	{ "name": "neighbor_table_offsets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "address0" }} , 
 	{ "name": "neighbor_table_offsets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "ce0" }} , 
 	{ "name": "neighbor_table_offsets_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "we0" }} , 
 	{ "name": "neighbor_table_offsets_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table_offsets", "role": "d0" }} , 
 	{ "name": "neighbor_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "neighbor_table", "role": "address0" }} , 
 	{ "name": "neighbor_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "ce0" }} , 
 	{ "name": "neighbor_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "we0" }} , 
 	{ "name": "neighbor_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "neighbor_table", "role": "d0" }} , 
 	{ "name": "num_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_nodes", "role": "default" }} , 
 	{ "name": "num_edges", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_edges", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4"],
		"CDFG" : "compute_neighbor_tables",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "559",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_31_2_fu_111", "Port" : "edge_list", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_23_1_fu_100", "Port" : "in_degree_table", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_degree_table", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_23_1_fu_100", "Port" : "neighbor_table_offsets", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_31_2_fu_111", "Port" : "neighbor_table", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neightbor_table_offsets_temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_23_1_fu_100", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_23_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "52",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "num_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_degree_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table_offsets", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_23_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_23_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_31_2_fu_111", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "compute_neighbor_tables_Pipeline_VITIS_LOOP_31_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "503",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "num_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neightbor_table_offsets_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_neighbor_tables_Pipeline_VITIS_LOOP_31_2_fu_111.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
	compute_neighbor_tables {
		edge_list {Type I LastRead 1 FirstWrite -1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		out_degree_table {Type X LastRead -1 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 0}
		neighbor_table {Type O LastRead -1 FirstWrite 2}
		num_nodes {Type I LastRead 1 FirstWrite -1}
		num_edges {Type I LastRead 3 FirstWrite -1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_23_1 {
		num_nodes {Type I LastRead 0 FirstWrite -1}
		in_degree_table {Type I LastRead 0 FirstWrite -1}
		neighbor_table_offsets {Type O LastRead -1 FirstWrite 1}
		neightbor_table_offsets_temp {Type O LastRead -1 FirstWrite 1}}
	compute_neighbor_tables_Pipeline_VITIS_LOOP_31_2 {
		num_edges {Type I LastRead 0 FirstWrite -1}
		edge_list {Type I LastRead 1 FirstWrite -1}
		neightbor_table_offsets_temp {Type IO LastRead 1 FirstWrite 2}
		neighbor_table {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "559"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "560"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 11 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 11 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	in_degree_table { ap_memory {  { in_degree_table_address0 mem_address 1 7 }  { in_degree_table_ce0 mem_ce 1 1 }  { in_degree_table_q0 mem_dout 0 32 } } }
	out_degree_table { ap_memory {  { out_degree_table_address0 mem_address 1 7 }  { out_degree_table_ce0 mem_ce 1 1 }  { out_degree_table_we0 mem_we 1 1 }  { out_degree_table_d0 mem_din 1 32 }  { out_degree_table_q0 mem_dout 0 32 }  { out_degree_table_address1 MemPortADDR2 1 7 }  { out_degree_table_ce1 MemPortCE2 1 1 }  { out_degree_table_we1 MemPortWE2 1 1 }  { out_degree_table_d1 MemPortDIN2 1 32 }  { out_degree_table_q1 MemPortDOUT2 0 32 } } }
	neighbor_table_offsets { ap_memory {  { neighbor_table_offsets_address0 mem_address 1 7 }  { neighbor_table_offsets_ce0 mem_ce 1 1 }  { neighbor_table_offsets_we0 mem_we 1 1 }  { neighbor_table_offsets_d0 mem_din 1 32 } } }
	neighbor_table { ap_memory {  { neighbor_table_address0 mem_address 1 10 }  { neighbor_table_ce0 mem_ce 1 1 }  { neighbor_table_we0 mem_we 1 1 }  { neighbor_table_d0 mem_din 1 32 } } }
	num_nodes { ap_none {  { num_nodes in_data 0 32 } } }
	num_edges { ap_none {  { num_edges in_data 0 32 } } }
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
