set moduleName sparse_matrix_multiply_HLS
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
set C_modelName {sparse_matrix_multiply_HLS}
set C_modelType { void 0 }
set C_modelArgList {
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_ptr_A int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ values_B int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_indices_B int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ col_ptr_B int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ C int 16 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_ptr_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "values_B", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 0 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ values_A_q0 sc_in sc_lv 16 signal 0 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 1 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 1 } 
	{ row_ptr_A_address0 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q0 sc_in sc_lv 32 signal 2 } 
	{ values_B_address0 sc_out sc_lv 12 signal 3 } 
	{ values_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ values_B_q0 sc_in sc_lv 16 signal 3 } 
	{ row_indices_B_address0 sc_out sc_lv 12 signal 4 } 
	{ row_indices_B_ce0 sc_out sc_logic 1 signal 4 } 
	{ row_indices_B_q0 sc_in sc_lv 32 signal 4 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 5 } 
	{ C_address0 sc_out sc_lv 12 signal 6 } 
	{ C_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_we0 sc_out sc_logic 1 signal 6 } 
	{ C_d0 sc_out sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address0" }} , 
 	{ "name": "row_ptr_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce0" }} , 
 	{ "name": "row_ptr_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q0" }} , 
 	{ "name": "values_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_B", "role": "address0" }} , 
 	{ "name": "values_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_B", "role": "ce0" }} , 
 	{ "name": "values_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_B", "role": "q0" }} , 
 	{ "name": "row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "row_indices_B", "role": "address0" }} , 
 	{ "name": "row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_indices_B", "role": "ce0" }} , 
 	{ "name": "row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_indices_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "12", "14", "16", "18", "20"],
		"CDFG" : "sparse_matrix_multiply_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9037", "EstimateLatencyMax" : "8528332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "values_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "column_indices_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Port" : "row_ptr_A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "values_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "row_indices_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Port" : "col_ptr_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Port" : "C", "Inst_start_state" : "6", "Inst_end_state" : "12"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_57_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_ptr_A_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_col_ptr_B_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1",
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
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_ptr_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3",
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
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_50_5_VITIS_LOOP_51_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Parent" : "0", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4",
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
			{"Name" : "nnzB", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_10_VITIS_LOOP_77_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268", "Parent" : "0", "Child" : ["21", "22"],
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS {
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		row_ptr_A {Type I LastRead 2 FirstWrite -1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		col_ptr_B {Type I LastRead 2 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1 {
		row_ptr_A {Type I LastRead 0 FirstWrite -1}
		local_row_ptr_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3 {
		col_ptr_B {Type I LastRead 0 FirstWrite -1}
		local_col_ptr_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6 {
		accum_V {Type O LastRead -1 FirstWrite 0}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4 {
		nnzB {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type O LastRead -1 FirstWrite 1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		local_row_indices_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11 {
		C {Type O LastRead -1 FirstWrite 1}
		accum_V {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "9037", "Max" : "8528332"}
	, {"Name" : "Interval", "Min" : "9038", "Max" : "8528333"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 mem_dout 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 mem_dout 0 32 } } }
	row_ptr_A { ap_memory {  { row_ptr_A_address0 mem_address 1 7 }  { row_ptr_A_ce0 mem_ce 1 1 }  { row_ptr_A_q0 mem_dout 0 32 } } }
	values_B { ap_memory {  { values_B_address0 mem_address 1 12 }  { values_B_ce0 mem_ce 1 1 }  { values_B_q0 mem_dout 0 16 } } }
	row_indices_B { ap_memory {  { row_indices_B_address0 mem_address 1 12 }  { row_indices_B_ce0 mem_ce 1 1 }  { row_indices_B_q0 mem_dout 0 32 } } }
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 mem_dout 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 16 } } }
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
set moduleName sparse_matrix_multiply_HLS
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
set C_modelName {sparse_matrix_multiply_HLS}
set C_modelType { void 0 }
set C_modelArgList {
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_ptr_A int 32 regular {array 65 { 1 1 } 1 1 }  }
	{ values_B int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_indices_B int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ col_ptr_B int 32 regular {array 65 { 1 1 } 1 1 }  }
	{ C int 16 regular {array 4096 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_ptr_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "values_B", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 0 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ values_A_q0 sc_in sc_lv 16 signal 0 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 1 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 1 } 
	{ row_ptr_A_address0 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q0 sc_in sc_lv 32 signal 2 } 
	{ row_ptr_A_address1 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce1 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q1 sc_in sc_lv 32 signal 2 } 
	{ values_B_address0 sc_out sc_lv 12 signal 3 } 
	{ values_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ values_B_q0 sc_in sc_lv 16 signal 3 } 
	{ row_indices_B_address0 sc_out sc_lv 12 signal 4 } 
	{ row_indices_B_ce0 sc_out sc_logic 1 signal 4 } 
	{ row_indices_B_q0 sc_in sc_lv 32 signal 4 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 5 } 
	{ col_ptr_B_address1 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce1 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q1 sc_in sc_lv 32 signal 5 } 
	{ C_address0 sc_out sc_lv 12 signal 6 } 
	{ C_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_we0 sc_out sc_logic 1 signal 6 } 
	{ C_d0 sc_out sc_lv 16 signal 6 } 
	{ C_address1 sc_out sc_lv 12 signal 6 } 
	{ C_ce1 sc_out sc_logic 1 signal 6 } 
	{ C_we1 sc_out sc_logic 1 signal 6 } 
	{ C_d1 sc_out sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address0" }} , 
 	{ "name": "row_ptr_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce0" }} , 
 	{ "name": "row_ptr_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address1" }} , 
 	{ "name": "row_ptr_A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce1" }} , 
 	{ "name": "row_ptr_A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q1" }} , 
 	{ "name": "values_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_B", "role": "address0" }} , 
 	{ "name": "values_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_B", "role": "ce0" }} , 
 	{ "name": "values_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_B", "role": "q0" }} , 
 	{ "name": "row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "row_indices_B", "role": "address0" }} , 
 	{ "name": "row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_indices_B", "role": "ce0" }} , 
 	{ "name": "row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_indices_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address1" }} , 
 	{ "name": "col_ptr_B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce1" }} , 
 	{ "name": "col_ptr_B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q1" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d0" }} , 
 	{ "name": "C_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address1" }} , 
 	{ "name": "C_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce1" }} , 
 	{ "name": "C_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we1" }} , 
 	{ "name": "C_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "25", "27", "29", "35", "37", "39", "41", "43", "44", "45", "46", "47", "48"],
		"CDFG" : "sparse_matrix_multiply_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3595", "EstimateLatencyMax" : "16878730",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2_fu_1191", "Port" : "values_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2_fu_1191", "Port" : "column_indices_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_38_1_fu_1003", "Port" : "row_ptr_A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4_fu_1209", "Port" : "values_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4_fu_1209", "Port" : "row_indices_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3_fu_1091", "Port" : "col_ptr_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_111_fu_1258", "Port" : "C", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "39", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112_fu_1272", "Port" : "C", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "41", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_113_fu_1287", "Port" : "C", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "35", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_11_fu_1247", "Port" : "C", "Inst_start_state" : "10", "Inst_end_state" : "11"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_80_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_76_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_99_10", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_2_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_3_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_38_1_fu_1003", "Parent" : "0",
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "38",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_ptr_A_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_66_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state6"]}}]},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3_fu_1091", "Parent" : "0",
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "38",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_66_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_52_3", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state6"]}}]},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5_fu_1179", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "514", "EstimateLatencyMax" : "514",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5_fu_1179.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2_fu_1191", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2",
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
			{"Name" : "local_column_indices_A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_column_indices_A_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_column_indices_A_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_column_indices_A_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2_fu_1191.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4_fu_1209", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4",
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
			{"Name" : "nnzB", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_57_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4_fu_1209.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1227", "Parent" : "0", "Child" : ["30", "31", "32", "33", "34"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln87", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln87_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1227.mux_42_16_1_1_U193", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1227.mux_42_32_1_1_U194", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1227.mux_42_16_1_1_U195", "Parent" : "29"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1227.mac_muladd_16s_16s_27s_32_4_1_U196", "Parent" : "29"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1227.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_11_fu_1247", "Parent" : "0", "Child" : ["36"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_11_fu_1247.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_111_fu_1258", "Parent" : "0", "Child" : ["38"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_111",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln103_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "or_ln99", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln103", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_111_fu_1258.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112_fu_1272", "Parent" : "0", "Child" : ["40"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln103_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln99_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trunc_ln103_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112_fu_1272.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_113_fu_1287", "Parent" : "0", "Child" : ["42"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_113",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln103_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "or_ln99_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_113_fu_1287.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_646_32_1_1_U245", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_646_32_1_1_U246", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U247", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U248", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_657_32_1_1_U249", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1287_32_1_1_U250", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS {
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		row_ptr_A {Type I LastRead 3 FirstWrite -1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		col_ptr_B {Type I LastRead 3 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_38_1 {
		row_ptr_A {Type I LastRead 3 FirstWrite -1}
		local_row_ptr_A_64_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_63_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_62_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_61_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_60_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_59_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_58_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_57_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_56_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_55_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_54_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_53_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_52_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_51_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_50_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_49_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_48_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_47_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_46_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_45_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_44_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_43_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_42_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_41_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_40_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_39_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_38_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_37_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_36_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_35_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_34_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_33_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_32_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_31_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_30_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_29_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_28_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_27_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_26_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_25_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_24_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_23_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_22_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_21_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_20_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_19_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_18_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_17_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_16_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_15_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_14_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_13_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_12_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_11_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_10_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_9_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_8_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_7_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_6_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_5_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_4_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_3_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_2_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_1_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_82_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_81_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_80_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_79_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_78_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_77_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_76_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_75_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_74_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_73_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_72_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_71_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_70_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_69_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_68_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_67_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_66_out {Type O LastRead -1 FirstWrite 2}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3 {
		col_ptr_B {Type I LastRead 3 FirstWrite -1}
		local_col_ptr_B_64_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_63_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_62_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_61_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_60_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_59_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_58_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_57_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_56_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_55_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_54_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_53_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_52_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_51_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_50_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_49_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_48_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_47_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_46_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_45_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_44_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_43_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_42_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_41_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_40_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_39_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_38_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_37_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_36_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_35_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_34_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_33_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_32_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_31_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_30_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_29_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_28_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_27_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_26_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_25_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_24_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_23_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_22_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_21_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_20_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_19_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_18_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_17_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_16_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_15_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_14_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_13_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_12_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_11_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_10_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_9_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_8_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_7_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_6_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_5_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_4_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_3_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_2_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_1_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_82_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_81_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_80_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_79_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_78_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_77_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_76_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_75_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_74_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_73_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_72_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_71_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_70_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_69_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_68_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_67_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_66_out {Type O LastRead -1 FirstWrite 2}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5 {
		accum_V {Type O LastRead -1 FirstWrite 0}
		accum_V_1 {Type O LastRead -1 FirstWrite 0}
		accum_V_2 {Type O LastRead -1 FirstWrite 0}
		accum_V_3 {Type O LastRead -1 FirstWrite 0}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}
		local_column_indices_A_3 {Type O LastRead -1 FirstWrite 1}
		local_column_indices_A_2 {Type O LastRead -1 FirstWrite 1}
		local_column_indices_A_1 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_3 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_2 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_1 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4 {
		nnzB {Type I LastRead 0 FirstWrite -1}
		local_row_indices_B {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_3 {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_2 {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_1 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_3 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_2 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_1 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V {Type O LastRead -1 FirstWrite 1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9 {
		sext_ln87 {Type I LastRead 0 FirstWrite -1}
		sext_ln87_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_1 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_2 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_3 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_1 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_2 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_3 {Type I LastRead 1 FirstWrite -1}
		r_V {Type I LastRead 0 FirstWrite -1}
		zext_ln837_1 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 3 FirstWrite 5}
		accum_V_1 {Type IO LastRead 3 FirstWrite 5}
		accum_V_2 {Type IO LastRead 3 FirstWrite 5}
		accum_V_3 {Type IO LastRead 3 FirstWrite 5}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_11 {
		i_6 {Type I LastRead 0 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}
		accum_V {Type I LastRead 0 FirstWrite -1}
		accum_V_1 {Type I LastRead 0 FirstWrite -1}
		accum_V_2 {Type I LastRead 0 FirstWrite -1}
		accum_V_3 {Type I LastRead 0 FirstWrite -1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_111 {
		zext_ln103_5 {Type I LastRead 0 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}
		or_ln99 {Type I LastRead 0 FirstWrite -1}
		trunc_ln103 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type I LastRead 0 FirstWrite -1}
		accum_V_1 {Type I LastRead 0 FirstWrite -1}
		accum_V_2 {Type I LastRead 0 FirstWrite -1}
		accum_V_3 {Type I LastRead 0 FirstWrite -1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112 {
		trunc_ln103_1 {Type I LastRead 0 FirstWrite -1}
		or_ln99_1 {Type I LastRead 0 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}
		trunc_ln103_2 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type I LastRead 0 FirstWrite -1}
		accum_V_1 {Type I LastRead 0 FirstWrite -1}
		accum_V_2 {Type I LastRead 0 FirstWrite -1}
		accum_V_3 {Type I LastRead 0 FirstWrite -1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_113 {
		zext_ln103_15 {Type I LastRead 0 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}
		or_ln99_2 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type I LastRead 0 FirstWrite -1}
		accum_V_1 {Type I LastRead 0 FirstWrite -1}
		accum_V_2 {Type I LastRead 0 FirstWrite -1}
		accum_V_3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3595", "Max" : "16878730"}
	, {"Name" : "Interval", "Min" : "3596", "Max" : "16878731"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 mem_dout 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 mem_dout 0 32 } } }
	row_ptr_A { ap_memory {  { row_ptr_A_address0 mem_address 1 7 }  { row_ptr_A_ce0 mem_ce 1 1 }  { row_ptr_A_q0 mem_dout 0 32 }  { row_ptr_A_address1 MemPortADDR2 1 7 }  { row_ptr_A_ce1 MemPortCE2 1 1 }  { row_ptr_A_q1 MemPortDOUT2 0 32 } } }
	values_B { ap_memory {  { values_B_address0 mem_address 1 12 }  { values_B_ce0 mem_ce 1 1 }  { values_B_q0 mem_dout 0 16 } } }
	row_indices_B { ap_memory {  { row_indices_B_address0 mem_address 1 12 }  { row_indices_B_ce0 mem_ce 1 1 }  { row_indices_B_q0 mem_dout 0 32 } } }
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 mem_dout 0 32 }  { col_ptr_B_address1 MemPortADDR2 1 7 }  { col_ptr_B_ce1 MemPortCE2 1 1 }  { col_ptr_B_q1 MemPortDOUT2 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 16 }  { C_address1 MemPortADDR2 1 12 }  { C_ce1 MemPortCE2 1 1 }  { C_we1 MemPortWE2 1 1 }  { C_d1 MemPortDIN2 1 16 } } }
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
set moduleName sparse_matrix_multiply_HLS
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
set C_modelName {sparse_matrix_multiply_HLS}
set C_modelType { void 0 }
set C_modelArgList {
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_ptr_A int 32 regular {array 65 { 1 1 } 1 1 }  }
	{ values_B int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_indices_B int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ col_ptr_B int 32 regular {array 65 { 1 1 } 1 1 }  }
	{ C int 16 regular {array 4096 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_ptr_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "values_B", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 0 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ values_A_q0 sc_in sc_lv 16 signal 0 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 1 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 1 } 
	{ row_ptr_A_address0 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q0 sc_in sc_lv 32 signal 2 } 
	{ row_ptr_A_address1 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce1 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q1 sc_in sc_lv 32 signal 2 } 
	{ values_B_address0 sc_out sc_lv 12 signal 3 } 
	{ values_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ values_B_q0 sc_in sc_lv 16 signal 3 } 
	{ row_indices_B_address0 sc_out sc_lv 12 signal 4 } 
	{ row_indices_B_ce0 sc_out sc_logic 1 signal 4 } 
	{ row_indices_B_q0 sc_in sc_lv 32 signal 4 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 5 } 
	{ col_ptr_B_address1 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce1 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q1 sc_in sc_lv 32 signal 5 } 
	{ C_address0 sc_out sc_lv 12 signal 6 } 
	{ C_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_we0 sc_out sc_logic 1 signal 6 } 
	{ C_d0 sc_out sc_lv 16 signal 6 } 
	{ C_address1 sc_out sc_lv 12 signal 6 } 
	{ C_ce1 sc_out sc_logic 1 signal 6 } 
	{ C_we1 sc_out sc_logic 1 signal 6 } 
	{ C_d1 sc_out sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address0" }} , 
 	{ "name": "row_ptr_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce0" }} , 
 	{ "name": "row_ptr_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address1" }} , 
 	{ "name": "row_ptr_A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce1" }} , 
 	{ "name": "row_ptr_A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q1" }} , 
 	{ "name": "values_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_B", "role": "address0" }} , 
 	{ "name": "values_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_B", "role": "ce0" }} , 
 	{ "name": "values_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_B", "role": "q0" }} , 
 	{ "name": "row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "row_indices_B", "role": "address0" }} , 
 	{ "name": "row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_indices_B", "role": "ce0" }} , 
 	{ "name": "row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_indices_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address1" }} , 
 	{ "name": "col_ptr_B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce1" }} , 
 	{ "name": "col_ptr_B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q1" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d0" }} , 
 	{ "name": "C_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address1" }} , 
 	{ "name": "C_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce1" }} , 
 	{ "name": "C_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we1" }} , 
 	{ "name": "C_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "74", "76", "78", "80", "82", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97"],
		"CDFG" : "sparse_matrix_multiply_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5389", "EstimateLatencyMax" : "17468044",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2_fu_1391", "Port" : "values_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2_fu_1391", "Port" : "column_indices_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_38_1_fu_1257", "Port" : "row_ptr_A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4_fu_1435", "Port" : "values_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4_fu_1435", "Port" : "row_indices_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3_fu_1361", "Port" : "col_ptr_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_99_10_fu_1469", "Port" : "C", "Inst_start_state" : "6", "Inst_end_state" : "46"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_80_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "46", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state45"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_76_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "46", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state46"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_22_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_23_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_24_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_25_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_26_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_27_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_28_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_29_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_30_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_31_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_1_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_2_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_3_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_4_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_5_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_6_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_7_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_8_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_9_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_10_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_11_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_12_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_13_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_14_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_15_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_1_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_2_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_3_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_4_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_5_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_6_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_7_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_col_ptr_B_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_col_ptr_B_1_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_1_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_2_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_3_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_4_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_5_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_6_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_7_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_38_1_fu_1257", "Parent" : "0",
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_ptr_A_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_98_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_97_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_96_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_66_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state4", "ap_ST_fsm_state5"]}}]},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3_fu_1361", "Parent" : "0", "Child" : ["71", "72", "73"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_52_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3_fu_1361.mul_7ns_9ns_15_1_1_U137", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3_fu_1361.mul_7ns_9ns_15_1_1_U138", "Parent" : "70"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3_fu_1361.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5_fu_1371", "Parent" : "0", "Child" : ["75"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5_fu_1371.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2_fu_1391", "Parent" : "0", "Child" : ["77"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2",
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
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_column_indices_A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_column_indices_A_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2_fu_1391.flow_control_loop_pipe_sequential_init_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4_fu_1435", "Parent" : "0", "Child" : ["79"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4",
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
			{"Name" : "nnzB", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_57_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4_fu_1435.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_99_10_fu_1469", "Parent" : "0", "Child" : ["81"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_99_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2050", "EstimateLatencyMax" : "2050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_99_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_99_10_fu_1469.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1483", "Parent" : "0", "Child" : ["83", "84", "85", "86", "87"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln87", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln87_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_7", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1483.mux_164_16_1_1_U178", "Parent" : "82"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1483.mux_83_32_1_1_U179", "Parent" : "82"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1483.mux_83_16_1_1_U180", "Parent" : "82"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1483.mac_muladd_16s_16s_27s_32_4_1_U181", "Parent" : "82"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1483.flow_control_loop_pipe_sequential_init_U", "Parent" : "82"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_646_32_1_1_U231", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_646_32_1_1_U232", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U233", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32ns_7ns_32_36_1_U234", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32ns_7ns_32_36_1_U235", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_34ns_39_1_1_U236", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_34ns_39_1_1_U237", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_16_1_1_U238", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U239", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U240", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS {
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		row_ptr_A {Type I LastRead 3 FirstWrite -1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		col_ptr_B {Type I LastRead 2 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_38_1 {
		row_ptr_A {Type I LastRead 2 FirstWrite -1}
		local_row_ptr_A_64_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_63_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_62_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_61_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_60_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_59_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_58_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_57_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_56_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_55_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_54_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_53_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_52_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_51_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_50_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_49_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_48_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_47_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_46_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_45_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_44_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_43_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_42_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_41_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_40_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_39_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_38_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_37_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_36_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_35_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_34_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_33_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_32_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_31_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_30_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_29_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_28_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_27_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_26_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_25_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_24_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_23_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_22_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_21_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_20_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_19_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_18_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_17_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_16_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_15_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_14_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_13_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_12_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_11_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_10_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_9_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_8_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_7_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_6_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_5_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_4_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_3_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_2_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_1_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_98_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_97_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_96_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_95_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_94_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_93_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_92_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_91_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_90_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_89_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_88_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_87_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_86_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_85_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_84_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_83_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_82_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_81_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_80_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_79_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_78_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_77_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_76_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_75_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_74_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_73_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_72_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_71_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_70_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_69_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_68_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_67_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_66_out {Type O LastRead -1 FirstWrite 2}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3 {
		col_ptr_B {Type I LastRead 1 FirstWrite -1}
		local_col_ptr_B {Type O LastRead -1 FirstWrite 1}
		local_col_ptr_B_1 {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5 {
		accum_V {Type O LastRead -1 FirstWrite 0}
		accum_V_1 {Type O LastRead -1 FirstWrite 0}
		accum_V_2 {Type O LastRead -1 FirstWrite 0}
		accum_V_3 {Type O LastRead -1 FirstWrite 0}
		accum_V_4 {Type O LastRead -1 FirstWrite 0}
		accum_V_5 {Type O LastRead -1 FirstWrite 0}
		accum_V_6 {Type O LastRead -1 FirstWrite 0}
		accum_V_7 {Type O LastRead -1 FirstWrite 0}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}
		local_column_indices_A_1 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_31 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_30 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_29 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_28 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_27 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_26 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_25 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_24 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_23 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_22 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_21 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_20 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_19 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_18 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_17 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_16 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_15 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_14 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_13 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_12 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_11 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_10 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_9 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_8 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_7 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_6 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_5 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_4 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_3 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_2 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_1 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4 {
		nnzB {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		local_row_indices_B {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_1 {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_2 {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_3 {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_4 {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_5 {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_6 {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_7 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_15 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_14 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_13 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_12 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_11 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_10 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_9 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_8 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_7 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_6 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_5 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_4 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_3 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_2 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_1 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V {Type O LastRead -1 FirstWrite 1}
		values_B {Type I LastRead 0 FirstWrite -1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_99_10 {
		C {Type O LastRead -1 FirstWrite 1}
		accum_V {Type I LastRead 4 FirstWrite -1}
		accum_V_1 {Type I LastRead 4 FirstWrite -1}
		accum_V_2 {Type I LastRead 4 FirstWrite -1}
		accum_V_3 {Type I LastRead 4 FirstWrite -1}
		accum_V_4 {Type I LastRead 4 FirstWrite -1}
		accum_V_5 {Type I LastRead 4 FirstWrite -1}
		accum_V_6 {Type I LastRead 4 FirstWrite -1}
		accum_V_7 {Type I LastRead 4 FirstWrite -1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9 {
		sext_ln87 {Type I LastRead 0 FirstWrite -1}
		sext_ln87_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_1 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_2 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_3 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_4 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_5 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_6 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_7 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_8 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_9 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_10 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_11 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_12 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_13 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_14 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_15 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_1 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_2 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_3 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_4 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_5 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_6 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_7 {Type I LastRead 1 FirstWrite -1}
		r_V {Type I LastRead 0 FirstWrite -1}
		zext_ln837_1 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 3 FirstWrite 5}
		accum_V_1 {Type IO LastRead 3 FirstWrite 5}
		accum_V_2 {Type IO LastRead 3 FirstWrite 5}
		accum_V_3 {Type IO LastRead 3 FirstWrite 5}
		accum_V_4 {Type IO LastRead 3 FirstWrite 5}
		accum_V_5 {Type IO LastRead 3 FirstWrite 5}
		accum_V_6 {Type IO LastRead 3 FirstWrite 5}
		accum_V_7 {Type IO LastRead 3 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5389", "Max" : "17468044"}
	, {"Name" : "Interval", "Min" : "5390", "Max" : "17468045"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 mem_dout 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 mem_dout 0 32 } } }
	row_ptr_A { ap_memory {  { row_ptr_A_address0 mem_address 1 7 }  { row_ptr_A_ce0 mem_ce 1 1 }  { row_ptr_A_q0 mem_dout 0 32 }  { row_ptr_A_address1 MemPortADDR2 1 7 }  { row_ptr_A_ce1 MemPortCE2 1 1 }  { row_ptr_A_q1 MemPortDOUT2 0 32 } } }
	values_B { ap_memory {  { values_B_address0 mem_address 1 12 }  { values_B_ce0 mem_ce 1 1 }  { values_B_q0 mem_dout 0 16 } } }
	row_indices_B { ap_memory {  { row_indices_B_address0 mem_address 1 12 }  { row_indices_B_ce0 mem_ce 1 1 }  { row_indices_B_q0 mem_dout 0 32 } } }
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 mem_dout 0 32 }  { col_ptr_B_address1 MemPortADDR2 1 7 }  { col_ptr_B_ce1 MemPortCE2 1 1 }  { col_ptr_B_q1 MemPortDOUT2 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 16 }  { C_address1 MemPortADDR2 1 12 }  { C_ce1 MemPortCE2 1 1 }  { C_we1 MemPortWE2 1 1 }  { C_d1 MemPortDIN2 1 16 } } }
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
set moduleName sparse_matrix_multiply_HLS
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
set C_modelName {sparse_matrix_multiply_HLS}
set C_modelType { void 0 }
set C_modelArgList {
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_ptr_A int 32 regular {array 65 { 1 1 } 1 1 }  }
	{ values_B int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_indices_B int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ col_ptr_B int 32 regular {array 65 { 1 1 } 1 1 }  }
	{ C int 16 regular {array 4096 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_ptr_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "values_B", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 0 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ values_A_q0 sc_in sc_lv 16 signal 0 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 1 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 1 } 
	{ row_ptr_A_address0 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q0 sc_in sc_lv 32 signal 2 } 
	{ row_ptr_A_address1 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce1 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q1 sc_in sc_lv 32 signal 2 } 
	{ values_B_address0 sc_out sc_lv 12 signal 3 } 
	{ values_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ values_B_q0 sc_in sc_lv 16 signal 3 } 
	{ row_indices_B_address0 sc_out sc_lv 12 signal 4 } 
	{ row_indices_B_ce0 sc_out sc_logic 1 signal 4 } 
	{ row_indices_B_q0 sc_in sc_lv 32 signal 4 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 5 } 
	{ col_ptr_B_address1 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce1 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q1 sc_in sc_lv 32 signal 5 } 
	{ C_address0 sc_out sc_lv 12 signal 6 } 
	{ C_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_we0 sc_out sc_logic 1 signal 6 } 
	{ C_d0 sc_out sc_lv 16 signal 6 } 
	{ C_address1 sc_out sc_lv 12 signal 6 } 
	{ C_ce1 sc_out sc_logic 1 signal 6 } 
	{ C_we1 sc_out sc_logic 1 signal 6 } 
	{ C_d1 sc_out sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address0" }} , 
 	{ "name": "row_ptr_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce0" }} , 
 	{ "name": "row_ptr_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address1" }} , 
 	{ "name": "row_ptr_A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce1" }} , 
 	{ "name": "row_ptr_A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q1" }} , 
 	{ "name": "values_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_B", "role": "address0" }} , 
 	{ "name": "values_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_B", "role": "ce0" }} , 
 	{ "name": "values_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_B", "role": "q0" }} , 
 	{ "name": "row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "row_indices_B", "role": "address0" }} , 
 	{ "name": "row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_indices_B", "role": "ce0" }} , 
 	{ "name": "row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_indices_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address1" }} , 
 	{ "name": "col_ptr_B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce1" }} , 
 	{ "name": "col_ptr_B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q1" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d0" }} , 
 	{ "name": "C_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address1" }} , 
 	{ "name": "C_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce1" }} , 
 	{ "name": "C_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we1" }} , 
 	{ "name": "C_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "25", "27", "29", "35", "37", "39", "41", "43", "44", "45", "46", "47", "48"],
		"CDFG" : "sparse_matrix_multiply_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3595", "EstimateLatencyMax" : "16878730",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2_fu_1191", "Port" : "values_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2_fu_1191", "Port" : "column_indices_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_38_1_fu_1003", "Port" : "row_ptr_A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4_fu_1209", "Port" : "values_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4_fu_1209", "Port" : "row_indices_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3_fu_1091", "Port" : "col_ptr_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112_fu_1272", "Port" : "C", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "41", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_113_fu_1287", "Port" : "C", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "35", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_11_fu_1247", "Port" : "C", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "37", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_111_fu_1258", "Port" : "C", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_80_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_76_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_99_10", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_2_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_3_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_38_1_fu_1003", "Parent" : "0",
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "38",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_ptr_A_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_66_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state6"]}}]},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3_fu_1091", "Parent" : "0",
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "38",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_66_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_52_3", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state6"]}}]},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5_fu_1179", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "514", "EstimateLatencyMax" : "514",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5_fu_1179.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2_fu_1191", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2",
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
			{"Name" : "local_column_indices_A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_column_indices_A_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_column_indices_A_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_column_indices_A_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2_fu_1191.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4_fu_1209", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4",
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
			{"Name" : "nnzB", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_57_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4_fu_1209.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1227", "Parent" : "0", "Child" : ["30", "31", "32", "33", "34"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln87", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln87_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1227.mux_42_16_1_1_U193", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1227.mux_42_32_1_1_U194", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1227.mux_42_16_1_1_U195", "Parent" : "29"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1227.mac_muladd_16s_16s_27s_32_4_1_U196", "Parent" : "29"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1227.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_11_fu_1247", "Parent" : "0", "Child" : ["36"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_11_fu_1247.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_111_fu_1258", "Parent" : "0", "Child" : ["38"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_111",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln103_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "or_ln99", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln103", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_111_fu_1258.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112_fu_1272", "Parent" : "0", "Child" : ["40"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln103_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln99_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trunc_ln103_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112_fu_1272.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_113_fu_1287", "Parent" : "0", "Child" : ["42"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_113",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln103_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "or_ln99_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_113_fu_1287.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_646_32_1_1_U245", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_646_32_1_1_U246", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U247", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U248", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_657_32_1_1_U249", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1287_32_1_1_U250", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS {
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		row_ptr_A {Type I LastRead 3 FirstWrite -1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		col_ptr_B {Type I LastRead 3 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_38_1 {
		row_ptr_A {Type I LastRead 3 FirstWrite -1}
		local_row_ptr_A_64_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_63_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_62_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_61_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_60_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_59_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_58_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_57_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_56_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_55_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_54_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_53_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_52_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_51_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_50_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_49_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_48_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_47_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_46_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_45_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_44_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_43_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_42_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_41_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_40_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_39_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_38_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_37_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_36_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_35_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_34_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_33_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_32_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_31_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_30_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_29_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_28_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_27_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_26_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_25_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_24_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_23_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_22_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_21_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_20_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_19_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_18_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_17_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_16_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_15_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_14_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_13_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_12_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_11_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_10_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_9_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_8_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_7_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_6_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_5_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_4_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_3_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_2_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_1_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_82_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_81_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_80_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_79_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_78_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_77_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_76_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_75_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_74_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_73_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_72_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_71_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_70_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_69_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_68_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_67_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_66_out {Type O LastRead -1 FirstWrite 2}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3 {
		col_ptr_B {Type I LastRead 3 FirstWrite -1}
		local_col_ptr_B_64_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_63_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_62_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_61_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_60_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_59_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_58_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_57_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_56_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_55_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_54_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_53_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_52_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_51_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_50_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_49_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_48_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_47_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_46_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_45_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_44_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_43_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_42_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_41_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_40_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_39_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_38_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_37_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_36_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_35_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_34_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_33_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_32_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_31_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_30_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_29_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_28_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_27_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_26_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_25_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_24_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_23_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_22_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_21_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_20_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_19_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_18_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_17_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_16_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_15_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_14_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_13_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_12_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_11_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_10_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_9_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_8_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_7_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_6_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_5_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_4_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_3_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_2_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_1_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_82_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_81_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_80_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_79_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_78_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_77_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_76_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_75_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_74_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_73_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_72_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_71_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_70_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_69_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_68_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_67_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_66_out {Type O LastRead -1 FirstWrite 2}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5 {
		accum_V {Type O LastRead -1 FirstWrite 0}
		accum_V_1 {Type O LastRead -1 FirstWrite 0}
		accum_V_2 {Type O LastRead -1 FirstWrite 0}
		accum_V_3 {Type O LastRead -1 FirstWrite 0}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}
		local_column_indices_A_3 {Type O LastRead -1 FirstWrite 1}
		local_column_indices_A_2 {Type O LastRead -1 FirstWrite 1}
		local_column_indices_A_1 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_3 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_2 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_1 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4 {
		nnzB {Type I LastRead 0 FirstWrite -1}
		local_row_indices_B {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_3 {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_2 {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_1 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_3 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_2 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_1 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V {Type O LastRead -1 FirstWrite 1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9 {
		sext_ln87 {Type I LastRead 0 FirstWrite -1}
		sext_ln87_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_1 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_2 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_3 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_1 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_2 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_3 {Type I LastRead 1 FirstWrite -1}
		r_V {Type I LastRead 0 FirstWrite -1}
		zext_ln837_1 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 3 FirstWrite 5}
		accum_V_1 {Type IO LastRead 3 FirstWrite 5}
		accum_V_2 {Type IO LastRead 3 FirstWrite 5}
		accum_V_3 {Type IO LastRead 3 FirstWrite 5}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_11 {
		i_6 {Type I LastRead 0 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}
		accum_V {Type I LastRead 0 FirstWrite -1}
		accum_V_1 {Type I LastRead 0 FirstWrite -1}
		accum_V_2 {Type I LastRead 0 FirstWrite -1}
		accum_V_3 {Type I LastRead 0 FirstWrite -1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_111 {
		zext_ln103_5 {Type I LastRead 0 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}
		or_ln99 {Type I LastRead 0 FirstWrite -1}
		trunc_ln103 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type I LastRead 0 FirstWrite -1}
		accum_V_1 {Type I LastRead 0 FirstWrite -1}
		accum_V_2 {Type I LastRead 0 FirstWrite -1}
		accum_V_3 {Type I LastRead 0 FirstWrite -1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_112 {
		trunc_ln103_1 {Type I LastRead 0 FirstWrite -1}
		or_ln99_1 {Type I LastRead 0 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}
		trunc_ln103_2 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type I LastRead 0 FirstWrite -1}
		accum_V_1 {Type I LastRead 0 FirstWrite -1}
		accum_V_2 {Type I LastRead 0 FirstWrite -1}
		accum_V_3 {Type I LastRead 0 FirstWrite -1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_101_113 {
		zext_ln103_15 {Type I LastRead 0 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}
		or_ln99_2 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type I LastRead 0 FirstWrite -1}
		accum_V_1 {Type I LastRead 0 FirstWrite -1}
		accum_V_2 {Type I LastRead 0 FirstWrite -1}
		accum_V_3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3595", "Max" : "16878730"}
	, {"Name" : "Interval", "Min" : "3596", "Max" : "16878731"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 mem_dout 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 mem_dout 0 32 } } }
	row_ptr_A { ap_memory {  { row_ptr_A_address0 mem_address 1 7 }  { row_ptr_A_ce0 mem_ce 1 1 }  { row_ptr_A_q0 mem_dout 0 32 }  { row_ptr_A_address1 MemPortADDR2 1 7 }  { row_ptr_A_ce1 MemPortCE2 1 1 }  { row_ptr_A_q1 MemPortDOUT2 0 32 } } }
	values_B { ap_memory {  { values_B_address0 mem_address 1 12 }  { values_B_ce0 mem_ce 1 1 }  { values_B_q0 mem_dout 0 16 } } }
	row_indices_B { ap_memory {  { row_indices_B_address0 mem_address 1 12 }  { row_indices_B_ce0 mem_ce 1 1 }  { row_indices_B_q0 mem_dout 0 32 } } }
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 mem_dout 0 32 }  { col_ptr_B_address1 MemPortADDR2 1 7 }  { col_ptr_B_ce1 MemPortCE2 1 1 }  { col_ptr_B_q1 MemPortDOUT2 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 16 }  { C_address1 MemPortADDR2 1 12 }  { C_ce1 MemPortCE2 1 1 }  { C_we1 MemPortWE2 1 1 }  { C_d1 MemPortDIN2 1 16 } } }
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
set moduleName sparse_matrix_multiply_HLS
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
set C_modelName {sparse_matrix_multiply_HLS}
set C_modelType { void 0 }
set C_modelArgList {
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_ptr_A int 32 regular {array 65 { 1 1 } 1 1 }  }
	{ values_B int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_indices_B int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ col_ptr_B int 32 regular {array 65 { 1 1 } 1 1 }  }
	{ C int 16 regular {array 4096 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_ptr_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "values_B", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 0 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ values_A_q0 sc_in sc_lv 16 signal 0 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 1 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 1 } 
	{ row_ptr_A_address0 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q0 sc_in sc_lv 32 signal 2 } 
	{ row_ptr_A_address1 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce1 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q1 sc_in sc_lv 32 signal 2 } 
	{ values_B_address0 sc_out sc_lv 12 signal 3 } 
	{ values_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ values_B_q0 sc_in sc_lv 16 signal 3 } 
	{ row_indices_B_address0 sc_out sc_lv 12 signal 4 } 
	{ row_indices_B_ce0 sc_out sc_logic 1 signal 4 } 
	{ row_indices_B_q0 sc_in sc_lv 32 signal 4 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 5 } 
	{ col_ptr_B_address1 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce1 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q1 sc_in sc_lv 32 signal 5 } 
	{ C_address0 sc_out sc_lv 12 signal 6 } 
	{ C_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_we0 sc_out sc_logic 1 signal 6 } 
	{ C_d0 sc_out sc_lv 16 signal 6 } 
	{ C_address1 sc_out sc_lv 12 signal 6 } 
	{ C_ce1 sc_out sc_logic 1 signal 6 } 
	{ C_we1 sc_out sc_logic 1 signal 6 } 
	{ C_d1 sc_out sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address0" }} , 
 	{ "name": "row_ptr_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce0" }} , 
 	{ "name": "row_ptr_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address1" }} , 
 	{ "name": "row_ptr_A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce1" }} , 
 	{ "name": "row_ptr_A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q1" }} , 
 	{ "name": "values_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_B", "role": "address0" }} , 
 	{ "name": "values_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_B", "role": "ce0" }} , 
 	{ "name": "values_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_B", "role": "q0" }} , 
 	{ "name": "row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "row_indices_B", "role": "address0" }} , 
 	{ "name": "row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_indices_B", "role": "ce0" }} , 
 	{ "name": "row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_indices_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address1" }} , 
 	{ "name": "col_ptr_B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce1" }} , 
 	{ "name": "col_ptr_B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q1" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d0" }} , 
 	{ "name": "C_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address1" }} , 
 	{ "name": "C_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce1" }} , 
 	{ "name": "C_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we1" }} , 
 	{ "name": "C_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "74", "76", "78", "80", "82", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97"],
		"CDFG" : "sparse_matrix_multiply_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5389", "EstimateLatencyMax" : "17468044",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2_fu_1391", "Port" : "values_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2_fu_1391", "Port" : "column_indices_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_38_1_fu_1257", "Port" : "row_ptr_A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4_fu_1435", "Port" : "values_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4_fu_1435", "Port" : "row_indices_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3_fu_1361", "Port" : "col_ptr_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_99_10_fu_1469", "Port" : "C", "Inst_start_state" : "6", "Inst_end_state" : "46"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_80_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "46", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state45"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_76_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "46", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state46"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_22_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_23_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_24_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_25_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_26_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_27_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_28_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_29_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_30_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_31_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_1_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_2_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_3_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_4_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_5_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_6_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_7_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_8_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_9_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_10_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_11_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_12_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_13_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_14_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_15_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_1_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_2_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_3_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_4_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_5_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_6_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_7_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_col_ptr_B_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_col_ptr_B_1_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_1_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_2_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_3_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_4_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_5_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_6_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_7_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_38_1_fu_1257", "Parent" : "0",
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_ptr_A_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_98_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_97_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_96_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_row_ptr_A_66_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state4", "ap_ST_fsm_state5"]}}]},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3_fu_1361", "Parent" : "0", "Child" : ["71", "72", "73"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_52_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3_fu_1361.mul_7ns_9ns_15_1_1_U137", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3_fu_1361.mul_7ns_9ns_15_1_1_U138", "Parent" : "70"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3_fu_1361.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5_fu_1371", "Parent" : "0", "Child" : ["75"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5_fu_1371.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2_fu_1391", "Parent" : "0", "Child" : ["77"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2",
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
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_column_indices_A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_column_indices_A_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_A_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2_fu_1391.flow_control_loop_pipe_sequential_init_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4_fu_1435", "Parent" : "0", "Child" : ["79"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4",
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
			{"Name" : "nnzB", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_row_indices_B_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_57_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4_fu_1435.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_99_10_fu_1469", "Parent" : "0", "Child" : ["81"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_99_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2050", "EstimateLatencyMax" : "2050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "accum_V_7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_99_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_99_10_fu_1469.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1483", "Parent" : "0", "Child" : ["83", "84", "85", "86", "87"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln87", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln87_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_values_B_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "accum_V_7", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1483.mux_164_16_1_1_U178", "Parent" : "82"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1483.mux_83_32_1_1_U179", "Parent" : "82"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1483.mux_83_16_1_1_U180", "Parent" : "82"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1483.mac_muladd_16s_16s_27s_32_4_1_U181", "Parent" : "82"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9_fu_1483.flow_control_loop_pipe_sequential_init_U", "Parent" : "82"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_646_32_1_1_U231", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_646_32_1_1_U232", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U233", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32ns_7ns_32_36_1_U234", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32ns_7ns_32_36_1_U235", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_34ns_39_1_1_U236", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_34ns_39_1_1_U237", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_16_1_1_U238", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U239", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U240", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS {
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		row_ptr_A {Type I LastRead 3 FirstWrite -1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		col_ptr_B {Type I LastRead 2 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_38_1 {
		row_ptr_A {Type I LastRead 2 FirstWrite -1}
		local_row_ptr_A_64_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_63_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_62_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_61_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_60_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_59_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_58_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_57_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_56_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_55_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_54_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_53_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_52_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_51_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_50_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_49_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_48_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_47_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_46_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_45_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_44_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_43_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_42_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_41_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_40_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_39_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_38_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_37_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_36_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_35_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_34_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_33_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_32_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_31_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_30_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_29_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_28_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_27_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_26_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_25_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_24_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_23_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_22_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_21_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_20_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_19_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_18_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_17_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_16_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_15_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_14_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_13_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_12_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_11_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_10_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_9_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_8_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_7_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_6_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_5_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_4_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_3_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_2_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_1_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_98_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_97_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_96_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_95_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_94_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_93_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_92_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_91_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_90_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_89_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_88_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_87_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_86_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_85_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_84_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_83_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_82_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_81_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_80_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_79_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_78_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_77_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_76_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_75_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_74_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_73_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_72_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_71_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_70_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_69_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_68_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_67_out {Type O LastRead -1 FirstWrite 2}
		local_row_ptr_A_66_out {Type O LastRead -1 FirstWrite 2}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3 {
		col_ptr_B {Type I LastRead 1 FirstWrite -1}
		local_col_ptr_B {Type O LastRead -1 FirstWrite 1}
		local_col_ptr_B_1 {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5 {
		accum_V {Type O LastRead -1 FirstWrite 0}
		accum_V_1 {Type O LastRead -1 FirstWrite 0}
		accum_V_2 {Type O LastRead -1 FirstWrite 0}
		accum_V_3 {Type O LastRead -1 FirstWrite 0}
		accum_V_4 {Type O LastRead -1 FirstWrite 0}
		accum_V_5 {Type O LastRead -1 FirstWrite 0}
		accum_V_6 {Type O LastRead -1 FirstWrite 0}
		accum_V_7 {Type O LastRead -1 FirstWrite 0}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}
		local_column_indices_A_1 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_31 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_30 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_29 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_28 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_27 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_26 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_25 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_24 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_23 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_22 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_21 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_20 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_19 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_18 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_17 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_16 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_15 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_14 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_13 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_12 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_11 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_10 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_9 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_8 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_7 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_6 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_5 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_4 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_3 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_2 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V_1 {Type O LastRead -1 FirstWrite 1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_57_4 {
		nnzB {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		local_row_indices_B {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_1 {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_2 {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_3 {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_4 {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_5 {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_6 {Type O LastRead -1 FirstWrite 1}
		local_row_indices_B_7 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_15 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_14 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_13 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_12 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_11 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_10 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_9 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_8 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_7 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_6 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_5 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_4 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_3 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_2 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V_1 {Type O LastRead -1 FirstWrite 1}
		local_values_B_V {Type O LastRead -1 FirstWrite 1}
		values_B {Type I LastRead 0 FirstWrite -1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_99_10 {
		C {Type O LastRead -1 FirstWrite 1}
		accum_V {Type I LastRead 4 FirstWrite -1}
		accum_V_1 {Type I LastRead 4 FirstWrite -1}
		accum_V_2 {Type I LastRead 4 FirstWrite -1}
		accum_V_3 {Type I LastRead 4 FirstWrite -1}
		accum_V_4 {Type I LastRead 4 FirstWrite -1}
		accum_V_5 {Type I LastRead 4 FirstWrite -1}
		accum_V_6 {Type I LastRead 4 FirstWrite -1}
		accum_V_7 {Type I LastRead 4 FirstWrite -1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_87_9 {
		sext_ln87 {Type I LastRead 0 FirstWrite -1}
		sext_ln87_1 {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_1 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_2 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_3 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_4 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_5 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_6 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_7 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_8 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_9 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_10 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_11 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_12 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_13 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_14 {Type I LastRead 1 FirstWrite -1}
		local_values_B_V_15 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_1 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_2 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_3 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_4 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_5 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_6 {Type I LastRead 1 FirstWrite -1}
		local_row_indices_B_7 {Type I LastRead 1 FirstWrite -1}
		r_V {Type I LastRead 0 FirstWrite -1}
		zext_ln837_1 {Type I LastRead 0 FirstWrite -1}
		accum_V {Type IO LastRead 3 FirstWrite 5}
		accum_V_1 {Type IO LastRead 3 FirstWrite 5}
		accum_V_2 {Type IO LastRead 3 FirstWrite 5}
		accum_V_3 {Type IO LastRead 3 FirstWrite 5}
		accum_V_4 {Type IO LastRead 3 FirstWrite 5}
		accum_V_5 {Type IO LastRead 3 FirstWrite 5}
		accum_V_6 {Type IO LastRead 3 FirstWrite 5}
		accum_V_7 {Type IO LastRead 3 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5389", "Max" : "17468044"}
	, {"Name" : "Interval", "Min" : "5390", "Max" : "17468045"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 mem_dout 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 mem_dout 0 32 } } }
	row_ptr_A { ap_memory {  { row_ptr_A_address0 mem_address 1 7 }  { row_ptr_A_ce0 mem_ce 1 1 }  { row_ptr_A_q0 mem_dout 0 32 }  { row_ptr_A_address1 MemPortADDR2 1 7 }  { row_ptr_A_ce1 MemPortCE2 1 1 }  { row_ptr_A_q1 MemPortDOUT2 0 32 } } }
	values_B { ap_memory {  { values_B_address0 mem_address 1 12 }  { values_B_ce0 mem_ce 1 1 }  { values_B_q0 mem_dout 0 16 } } }
	row_indices_B { ap_memory {  { row_indices_B_address0 mem_address 1 12 }  { row_indices_B_ce0 mem_ce 1 1 }  { row_indices_B_q0 mem_dout 0 32 } } }
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 mem_dout 0 32 }  { col_ptr_B_address1 MemPortADDR2 1 7 }  { col_ptr_B_ce1 MemPortCE2 1 1 }  { col_ptr_B_q1 MemPortDOUT2 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 16 }  { C_address1 MemPortADDR2 1 12 }  { C_ce1 MemPortCE2 1 1 }  { C_we1 MemPortWE2 1 1 }  { C_d1 MemPortDIN2 1 16 } } }
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
set moduleName sparse_matrix_multiply_HLS
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
set C_modelName {sparse_matrix_multiply_HLS}
set C_modelType { void 0 }
set C_modelArgList {
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_ptr_A int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ values_B int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_indices_B int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ col_ptr_B int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ C int 16 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_ptr_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "values_B", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 0 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ values_A_q0 sc_in sc_lv 16 signal 0 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 1 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 1 } 
	{ row_ptr_A_address0 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q0 sc_in sc_lv 32 signal 2 } 
	{ values_B_address0 sc_out sc_lv 12 signal 3 } 
	{ values_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ values_B_q0 sc_in sc_lv 16 signal 3 } 
	{ row_indices_B_address0 sc_out sc_lv 12 signal 4 } 
	{ row_indices_B_ce0 sc_out sc_logic 1 signal 4 } 
	{ row_indices_B_q0 sc_in sc_lv 32 signal 4 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 5 } 
	{ C_address0 sc_out sc_lv 12 signal 6 } 
	{ C_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_we0 sc_out sc_logic 1 signal 6 } 
	{ C_d0 sc_out sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address0" }} , 
 	{ "name": "row_ptr_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce0" }} , 
 	{ "name": "row_ptr_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q0" }} , 
 	{ "name": "values_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_B", "role": "address0" }} , 
 	{ "name": "values_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_B", "role": "ce0" }} , 
 	{ "name": "values_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_B", "role": "q0" }} , 
 	{ "name": "row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "row_indices_B", "role": "address0" }} , 
 	{ "name": "row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_indices_B", "role": "ce0" }} , 
 	{ "name": "row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_indices_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "12", "14", "16", "18", "20"],
		"CDFG" : "sparse_matrix_multiply_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9037", "EstimateLatencyMax" : "8528332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "values_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "column_indices_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Port" : "row_ptr_A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "values_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "row_indices_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Port" : "col_ptr_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Port" : "C", "Inst_start_state" : "6", "Inst_end_state" : "12"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_57_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_ptr_A_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_col_ptr_B_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1",
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
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_ptr_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3",
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
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_50_5_VITIS_LOOP_51_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Parent" : "0", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4",
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
			{"Name" : "nnzB", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_10_VITIS_LOOP_77_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268", "Parent" : "0", "Child" : ["21", "22"],
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS {
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		row_ptr_A {Type I LastRead 2 FirstWrite -1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		col_ptr_B {Type I LastRead 2 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1 {
		row_ptr_A {Type I LastRead 0 FirstWrite -1}
		local_row_ptr_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3 {
		col_ptr_B {Type I LastRead 0 FirstWrite -1}
		local_col_ptr_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6 {
		accum_V {Type O LastRead -1 FirstWrite 0}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4 {
		nnzB {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type O LastRead -1 FirstWrite 1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		local_row_indices_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11 {
		C {Type O LastRead -1 FirstWrite 1}
		accum_V {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "9037", "Max" : "8528332"}
	, {"Name" : "Interval", "Min" : "9038", "Max" : "8528333"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 mem_dout 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 mem_dout 0 32 } } }
	row_ptr_A { ap_memory {  { row_ptr_A_address0 mem_address 1 7 }  { row_ptr_A_ce0 mem_ce 1 1 }  { row_ptr_A_q0 mem_dout 0 32 } } }
	values_B { ap_memory {  { values_B_address0 mem_address 1 12 }  { values_B_ce0 mem_ce 1 1 }  { values_B_q0 mem_dout 0 16 } } }
	row_indices_B { ap_memory {  { row_indices_B_address0 mem_address 1 12 }  { row_indices_B_ce0 mem_ce 1 1 }  { row_indices_B_q0 mem_dout 0 32 } } }
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 mem_dout 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 16 } } }
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
set moduleName sparse_matrix_multiply_HLS
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
set C_modelName {sparse_matrix_multiply_HLS}
set C_modelType { void 0 }
set C_modelArgList {
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_ptr_A int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ values_B int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_indices_B int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ col_ptr_B int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ C int 16 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_ptr_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "values_B", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 0 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ values_A_q0 sc_in sc_lv 16 signal 0 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 1 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 1 } 
	{ row_ptr_A_address0 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q0 sc_in sc_lv 32 signal 2 } 
	{ values_B_address0 sc_out sc_lv 12 signal 3 } 
	{ values_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ values_B_q0 sc_in sc_lv 16 signal 3 } 
	{ row_indices_B_address0 sc_out sc_lv 12 signal 4 } 
	{ row_indices_B_ce0 sc_out sc_logic 1 signal 4 } 
	{ row_indices_B_q0 sc_in sc_lv 32 signal 4 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 5 } 
	{ C_address0 sc_out sc_lv 12 signal 6 } 
	{ C_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_we0 sc_out sc_logic 1 signal 6 } 
	{ C_d0 sc_out sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address0" }} , 
 	{ "name": "row_ptr_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce0" }} , 
 	{ "name": "row_ptr_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q0" }} , 
 	{ "name": "values_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_B", "role": "address0" }} , 
 	{ "name": "values_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_B", "role": "ce0" }} , 
 	{ "name": "values_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_B", "role": "q0" }} , 
 	{ "name": "row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "row_indices_B", "role": "address0" }} , 
 	{ "name": "row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_indices_B", "role": "ce0" }} , 
 	{ "name": "row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_indices_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "12", "14", "16", "18", "20"],
		"CDFG" : "sparse_matrix_multiply_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9037", "EstimateLatencyMax" : "8528332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "values_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "column_indices_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Port" : "row_ptr_A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "values_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "row_indices_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Port" : "col_ptr_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Port" : "C", "Inst_start_state" : "6", "Inst_end_state" : "12"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_57_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_ptr_A_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_col_ptr_B_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1",
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
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_ptr_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3",
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
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_50_5_VITIS_LOOP_51_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Parent" : "0", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4",
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
			{"Name" : "nnzB", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_10_VITIS_LOOP_77_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268", "Parent" : "0", "Child" : ["21", "22"],
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS {
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		row_ptr_A {Type I LastRead 2 FirstWrite -1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		col_ptr_B {Type I LastRead 2 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1 {
		row_ptr_A {Type I LastRead 0 FirstWrite -1}
		local_row_ptr_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3 {
		col_ptr_B {Type I LastRead 0 FirstWrite -1}
		local_col_ptr_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6 {
		accum_V {Type O LastRead -1 FirstWrite 0}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4 {
		nnzB {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type O LastRead -1 FirstWrite 1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		local_row_indices_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11 {
		C {Type O LastRead -1 FirstWrite 1}
		accum_V {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "9037", "Max" : "8528332"}
	, {"Name" : "Interval", "Min" : "9038", "Max" : "8528333"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 mem_dout 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 mem_dout 0 32 } } }
	row_ptr_A { ap_memory {  { row_ptr_A_address0 mem_address 1 7 }  { row_ptr_A_ce0 mem_ce 1 1 }  { row_ptr_A_q0 mem_dout 0 32 } } }
	values_B { ap_memory {  { values_B_address0 mem_address 1 12 }  { values_B_ce0 mem_ce 1 1 }  { values_B_q0 mem_dout 0 16 } } }
	row_indices_B { ap_memory {  { row_indices_B_address0 mem_address 1 12 }  { row_indices_B_ce0 mem_ce 1 1 }  { row_indices_B_q0 mem_dout 0 32 } } }
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 mem_dout 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 16 } } }
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
set moduleName sparse_matrix_multiply_HLS
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
set C_modelName {sparse_matrix_multiply_HLS}
set C_modelType { void 0 }
set C_modelArgList {
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_ptr_A int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ values_B int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_indices_B int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ col_ptr_B int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ C int 16 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_ptr_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "values_B", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 0 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ values_A_q0 sc_in sc_lv 16 signal 0 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 1 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 1 } 
	{ row_ptr_A_address0 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q0 sc_in sc_lv 32 signal 2 } 
	{ values_B_address0 sc_out sc_lv 12 signal 3 } 
	{ values_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ values_B_q0 sc_in sc_lv 16 signal 3 } 
	{ row_indices_B_address0 sc_out sc_lv 12 signal 4 } 
	{ row_indices_B_ce0 sc_out sc_logic 1 signal 4 } 
	{ row_indices_B_q0 sc_in sc_lv 32 signal 4 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 5 } 
	{ C_address0 sc_out sc_lv 12 signal 6 } 
	{ C_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_we0 sc_out sc_logic 1 signal 6 } 
	{ C_d0 sc_out sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address0" }} , 
 	{ "name": "row_ptr_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce0" }} , 
 	{ "name": "row_ptr_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q0" }} , 
 	{ "name": "values_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_B", "role": "address0" }} , 
 	{ "name": "values_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_B", "role": "ce0" }} , 
 	{ "name": "values_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_B", "role": "q0" }} , 
 	{ "name": "row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "row_indices_B", "role": "address0" }} , 
 	{ "name": "row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_indices_B", "role": "ce0" }} , 
 	{ "name": "row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_indices_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "12", "14", "16", "18", "20"],
		"CDFG" : "sparse_matrix_multiply_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9037", "EstimateLatencyMax" : "8528332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "values_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "column_indices_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Port" : "row_ptr_A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "values_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "row_indices_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Port" : "col_ptr_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Port" : "C", "Inst_start_state" : "6", "Inst_end_state" : "12"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_57_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_ptr_A_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_col_ptr_B_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1",
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
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_ptr_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3",
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
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_50_5_VITIS_LOOP_51_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Parent" : "0", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4",
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
			{"Name" : "nnzB", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_10_VITIS_LOOP_77_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268", "Parent" : "0", "Child" : ["21", "22"],
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS {
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		row_ptr_A {Type I LastRead 2 FirstWrite -1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		col_ptr_B {Type I LastRead 2 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1 {
		row_ptr_A {Type I LastRead 0 FirstWrite -1}
		local_row_ptr_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3 {
		col_ptr_B {Type I LastRead 0 FirstWrite -1}
		local_col_ptr_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6 {
		accum_V {Type O LastRead -1 FirstWrite 0}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4 {
		nnzB {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type O LastRead -1 FirstWrite 1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		local_row_indices_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11 {
		C {Type O LastRead -1 FirstWrite 1}
		accum_V {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "9037", "Max" : "8528332"}
	, {"Name" : "Interval", "Min" : "9038", "Max" : "8528333"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 mem_dout 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 mem_dout 0 32 } } }
	row_ptr_A { ap_memory {  { row_ptr_A_address0 mem_address 1 7 }  { row_ptr_A_ce0 mem_ce 1 1 }  { row_ptr_A_q0 mem_dout 0 32 } } }
	values_B { ap_memory {  { values_B_address0 mem_address 1 12 }  { values_B_ce0 mem_ce 1 1 }  { values_B_q0 mem_dout 0 16 } } }
	row_indices_B { ap_memory {  { row_indices_B_address0 mem_address 1 12 }  { row_indices_B_ce0 mem_ce 1 1 }  { row_indices_B_q0 mem_dout 0 32 } } }
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 mem_dout 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 16 } } }
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
set moduleName sparse_matrix_multiply_HLS
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
set C_modelName {sparse_matrix_multiply_HLS}
set C_modelType { void 0 }
set C_modelArgList {
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_ptr_A int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ values_B int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_indices_B int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ col_ptr_B int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ C int 16 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_ptr_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "values_B", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 0 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ values_A_q0 sc_in sc_lv 16 signal 0 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 1 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 1 } 
	{ row_ptr_A_address0 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q0 sc_in sc_lv 32 signal 2 } 
	{ values_B_address0 sc_out sc_lv 12 signal 3 } 
	{ values_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ values_B_q0 sc_in sc_lv 16 signal 3 } 
	{ row_indices_B_address0 sc_out sc_lv 12 signal 4 } 
	{ row_indices_B_ce0 sc_out sc_logic 1 signal 4 } 
	{ row_indices_B_q0 sc_in sc_lv 32 signal 4 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 5 } 
	{ C_address0 sc_out sc_lv 12 signal 6 } 
	{ C_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_we0 sc_out sc_logic 1 signal 6 } 
	{ C_d0 sc_out sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address0" }} , 
 	{ "name": "row_ptr_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce0" }} , 
 	{ "name": "row_ptr_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q0" }} , 
 	{ "name": "values_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_B", "role": "address0" }} , 
 	{ "name": "values_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_B", "role": "ce0" }} , 
 	{ "name": "values_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_B", "role": "q0" }} , 
 	{ "name": "row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "row_indices_B", "role": "address0" }} , 
 	{ "name": "row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_indices_B", "role": "ce0" }} , 
 	{ "name": "row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_indices_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "12", "14", "16", "18", "20"],
		"CDFG" : "sparse_matrix_multiply_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9037", "EstimateLatencyMax" : "8528332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "values_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "column_indices_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Port" : "row_ptr_A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "values_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "row_indices_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Port" : "col_ptr_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Port" : "C", "Inst_start_state" : "6", "Inst_end_state" : "12"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_57_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_ptr_A_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_col_ptr_B_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1",
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
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_ptr_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3",
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
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_50_5_VITIS_LOOP_51_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Parent" : "0", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4",
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
			{"Name" : "nnzB", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_10_VITIS_LOOP_77_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268", "Parent" : "0", "Child" : ["21", "22"],
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS {
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		row_ptr_A {Type I LastRead 2 FirstWrite -1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		col_ptr_B {Type I LastRead 2 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1 {
		row_ptr_A {Type I LastRead 0 FirstWrite -1}
		local_row_ptr_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3 {
		col_ptr_B {Type I LastRead 0 FirstWrite -1}
		local_col_ptr_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6 {
		accum_V {Type O LastRead -1 FirstWrite 0}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4 {
		nnzB {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type O LastRead -1 FirstWrite 1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		local_row_indices_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11 {
		C {Type O LastRead -1 FirstWrite 1}
		accum_V {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "9037", "Max" : "8528332"}
	, {"Name" : "Interval", "Min" : "9038", "Max" : "8528333"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 mem_dout 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 mem_dout 0 32 } } }
	row_ptr_A { ap_memory {  { row_ptr_A_address0 mem_address 1 7 }  { row_ptr_A_ce0 mem_ce 1 1 }  { row_ptr_A_q0 mem_dout 0 32 } } }
	values_B { ap_memory {  { values_B_address0 mem_address 1 12 }  { values_B_ce0 mem_ce 1 1 }  { values_B_q0 mem_dout 0 16 } } }
	row_indices_B { ap_memory {  { row_indices_B_address0 mem_address 1 12 }  { row_indices_B_ce0 mem_ce 1 1 }  { row_indices_B_q0 mem_dout 0 32 } } }
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 mem_dout 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 16 } } }
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
set moduleName sparse_matrix_multiply_HLS
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
set C_modelName {sparse_matrix_multiply_HLS}
set C_modelType { void 0 }
set C_modelArgList {
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_ptr_A int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ values_B int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_indices_B int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ col_ptr_B int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ C int 16 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_ptr_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "values_B", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 0 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ values_A_q0 sc_in sc_lv 16 signal 0 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 1 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 1 } 
	{ row_ptr_A_address0 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q0 sc_in sc_lv 32 signal 2 } 
	{ values_B_address0 sc_out sc_lv 12 signal 3 } 
	{ values_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ values_B_q0 sc_in sc_lv 16 signal 3 } 
	{ row_indices_B_address0 sc_out sc_lv 12 signal 4 } 
	{ row_indices_B_ce0 sc_out sc_logic 1 signal 4 } 
	{ row_indices_B_q0 sc_in sc_lv 32 signal 4 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 5 } 
	{ C_address0 sc_out sc_lv 12 signal 6 } 
	{ C_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_we0 sc_out sc_logic 1 signal 6 } 
	{ C_d0 sc_out sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address0" }} , 
 	{ "name": "row_ptr_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce0" }} , 
 	{ "name": "row_ptr_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q0" }} , 
 	{ "name": "values_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_B", "role": "address0" }} , 
 	{ "name": "values_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_B", "role": "ce0" }} , 
 	{ "name": "values_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_B", "role": "q0" }} , 
 	{ "name": "row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "row_indices_B", "role": "address0" }} , 
 	{ "name": "row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_indices_B", "role": "ce0" }} , 
 	{ "name": "row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_indices_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "12", "14", "16", "18", "20"],
		"CDFG" : "sparse_matrix_multiply_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9037", "EstimateLatencyMax" : "8528332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "values_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "column_indices_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Port" : "row_ptr_A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "values_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "row_indices_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Port" : "col_ptr_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Port" : "C", "Inst_start_state" : "6", "Inst_end_state" : "12"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_57_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_ptr_A_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_col_ptr_B_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1",
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
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_ptr_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3",
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
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_50_5_VITIS_LOOP_51_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Parent" : "0", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4",
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
			{"Name" : "nnzB", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_10_VITIS_LOOP_77_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268", "Parent" : "0", "Child" : ["21", "22"],
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS {
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		row_ptr_A {Type I LastRead 2 FirstWrite -1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		col_ptr_B {Type I LastRead 2 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1 {
		row_ptr_A {Type I LastRead 0 FirstWrite -1}
		local_row_ptr_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3 {
		col_ptr_B {Type I LastRead 0 FirstWrite -1}
		local_col_ptr_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6 {
		accum_V {Type O LastRead -1 FirstWrite 0}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4 {
		nnzB {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type O LastRead -1 FirstWrite 1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		local_row_indices_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11 {
		C {Type O LastRead -1 FirstWrite 1}
		accum_V {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "9037", "Max" : "8528332"}
	, {"Name" : "Interval", "Min" : "9038", "Max" : "8528333"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 mem_dout 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 mem_dout 0 32 } } }
	row_ptr_A { ap_memory {  { row_ptr_A_address0 mem_address 1 7 }  { row_ptr_A_ce0 mem_ce 1 1 }  { row_ptr_A_q0 mem_dout 0 32 } } }
	values_B { ap_memory {  { values_B_address0 mem_address 1 12 }  { values_B_ce0 mem_ce 1 1 }  { values_B_q0 mem_dout 0 16 } } }
	row_indices_B { ap_memory {  { row_indices_B_address0 mem_address 1 12 }  { row_indices_B_ce0 mem_ce 1 1 }  { row_indices_B_q0 mem_dout 0 32 } } }
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 mem_dout 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 16 } } }
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
set moduleName sparse_matrix_multiply_HLS
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
set C_modelName {sparse_matrix_multiply_HLS}
set C_modelType { void 0 }
set C_modelArgList {
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_ptr_A int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ values_B int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_indices_B int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ col_ptr_B int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ C int 16 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_ptr_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "values_B", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 0 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ values_A_q0 sc_in sc_lv 16 signal 0 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 1 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 1 } 
	{ row_ptr_A_address0 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q0 sc_in sc_lv 32 signal 2 } 
	{ values_B_address0 sc_out sc_lv 12 signal 3 } 
	{ values_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ values_B_q0 sc_in sc_lv 16 signal 3 } 
	{ row_indices_B_address0 sc_out sc_lv 12 signal 4 } 
	{ row_indices_B_ce0 sc_out sc_logic 1 signal 4 } 
	{ row_indices_B_q0 sc_in sc_lv 32 signal 4 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 5 } 
	{ C_address0 sc_out sc_lv 12 signal 6 } 
	{ C_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_we0 sc_out sc_logic 1 signal 6 } 
	{ C_d0 sc_out sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address0" }} , 
 	{ "name": "row_ptr_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce0" }} , 
 	{ "name": "row_ptr_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q0" }} , 
 	{ "name": "values_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_B", "role": "address0" }} , 
 	{ "name": "values_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_B", "role": "ce0" }} , 
 	{ "name": "values_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_B", "role": "q0" }} , 
 	{ "name": "row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "row_indices_B", "role": "address0" }} , 
 	{ "name": "row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_indices_B", "role": "ce0" }} , 
 	{ "name": "row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_indices_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "12", "14", "16", "18", "20"],
		"CDFG" : "sparse_matrix_multiply_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9037", "EstimateLatencyMax" : "8528332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "values_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "column_indices_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Port" : "row_ptr_A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "values_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "row_indices_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Port" : "col_ptr_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Port" : "C", "Inst_start_state" : "6", "Inst_end_state" : "12"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_57_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_ptr_A_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_col_ptr_B_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1",
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
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_ptr_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3",
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
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_50_5_VITIS_LOOP_51_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Parent" : "0", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4",
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
			{"Name" : "nnzB", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_10_VITIS_LOOP_77_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268", "Parent" : "0", "Child" : ["21", "22"],
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS {
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		row_ptr_A {Type I LastRead 2 FirstWrite -1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		col_ptr_B {Type I LastRead 2 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1 {
		row_ptr_A {Type I LastRead 0 FirstWrite -1}
		local_row_ptr_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3 {
		col_ptr_B {Type I LastRead 0 FirstWrite -1}
		local_col_ptr_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6 {
		accum_V {Type O LastRead -1 FirstWrite 0}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4 {
		nnzB {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type O LastRead -1 FirstWrite 1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		local_row_indices_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11 {
		C {Type O LastRead -1 FirstWrite 1}
		accum_V {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "9037", "Max" : "8528332"}
	, {"Name" : "Interval", "Min" : "9038", "Max" : "8528333"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 mem_dout 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 mem_dout 0 32 } } }
	row_ptr_A { ap_memory {  { row_ptr_A_address0 mem_address 1 7 }  { row_ptr_A_ce0 mem_ce 1 1 }  { row_ptr_A_q0 mem_dout 0 32 } } }
	values_B { ap_memory {  { values_B_address0 mem_address 1 12 }  { values_B_ce0 mem_ce 1 1 }  { values_B_q0 mem_dout 0 16 } } }
	row_indices_B { ap_memory {  { row_indices_B_address0 mem_address 1 12 }  { row_indices_B_ce0 mem_ce 1 1 }  { row_indices_B_q0 mem_dout 0 32 } } }
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 mem_dout 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 16 } } }
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
set moduleName sparse_matrix_multiply_HLS
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
set C_modelName {sparse_matrix_multiply_HLS}
set C_modelType { void 0 }
set C_modelArgList {
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_ptr_A int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ values_B int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_indices_B int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ col_ptr_B int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ C int 16 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_ptr_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "values_B", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 0 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ values_A_q0 sc_in sc_lv 16 signal 0 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 1 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 1 } 
	{ row_ptr_A_address0 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q0 sc_in sc_lv 32 signal 2 } 
	{ values_B_address0 sc_out sc_lv 12 signal 3 } 
	{ values_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ values_B_q0 sc_in sc_lv 16 signal 3 } 
	{ row_indices_B_address0 sc_out sc_lv 12 signal 4 } 
	{ row_indices_B_ce0 sc_out sc_logic 1 signal 4 } 
	{ row_indices_B_q0 sc_in sc_lv 32 signal 4 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 5 } 
	{ C_address0 sc_out sc_lv 12 signal 6 } 
	{ C_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_we0 sc_out sc_logic 1 signal 6 } 
	{ C_d0 sc_out sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address0" }} , 
 	{ "name": "row_ptr_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce0" }} , 
 	{ "name": "row_ptr_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q0" }} , 
 	{ "name": "values_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_B", "role": "address0" }} , 
 	{ "name": "values_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_B", "role": "ce0" }} , 
 	{ "name": "values_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_B", "role": "q0" }} , 
 	{ "name": "row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "row_indices_B", "role": "address0" }} , 
 	{ "name": "row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_indices_B", "role": "ce0" }} , 
 	{ "name": "row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_indices_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "12", "14", "16", "18", "20"],
		"CDFG" : "sparse_matrix_multiply_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9037", "EstimateLatencyMax" : "8528332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "values_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "column_indices_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Port" : "row_ptr_A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "values_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "row_indices_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Port" : "col_ptr_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Port" : "C", "Inst_start_state" : "6", "Inst_end_state" : "12"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_57_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_ptr_A_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_col_ptr_B_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1",
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
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_ptr_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3",
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
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_50_5_VITIS_LOOP_51_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Parent" : "0", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4",
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
			{"Name" : "nnzB", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_10_VITIS_LOOP_77_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268", "Parent" : "0", "Child" : ["21", "22"],
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS {
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		row_ptr_A {Type I LastRead 2 FirstWrite -1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		col_ptr_B {Type I LastRead 2 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1 {
		row_ptr_A {Type I LastRead 0 FirstWrite -1}
		local_row_ptr_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3 {
		col_ptr_B {Type I LastRead 0 FirstWrite -1}
		local_col_ptr_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6 {
		accum_V {Type O LastRead -1 FirstWrite 0}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4 {
		nnzB {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type O LastRead -1 FirstWrite 1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		local_row_indices_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11 {
		C {Type O LastRead -1 FirstWrite 1}
		accum_V {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "9037", "Max" : "8528332"}
	, {"Name" : "Interval", "Min" : "9038", "Max" : "8528333"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 mem_dout 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 mem_dout 0 32 } } }
	row_ptr_A { ap_memory {  { row_ptr_A_address0 mem_address 1 7 }  { row_ptr_A_ce0 mem_ce 1 1 }  { row_ptr_A_q0 mem_dout 0 32 } } }
	values_B { ap_memory {  { values_B_address0 mem_address 1 12 }  { values_B_ce0 mem_ce 1 1 }  { values_B_q0 mem_dout 0 16 } } }
	row_indices_B { ap_memory {  { row_indices_B_address0 mem_address 1 12 }  { row_indices_B_ce0 mem_ce 1 1 }  { row_indices_B_q0 mem_dout 0 32 } } }
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 mem_dout 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 16 } } }
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
set moduleName sparse_matrix_multiply_HLS
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
set C_modelName {sparse_matrix_multiply_HLS}
set C_modelType { void 0 }
set C_modelArgList {
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_ptr_A int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ values_B int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_indices_B int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ col_ptr_B int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ C int 16 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_ptr_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "values_B", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 0 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ values_A_q0 sc_in sc_lv 16 signal 0 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 1 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 1 } 
	{ row_ptr_A_address0 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q0 sc_in sc_lv 32 signal 2 } 
	{ values_B_address0 sc_out sc_lv 12 signal 3 } 
	{ values_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ values_B_q0 sc_in sc_lv 16 signal 3 } 
	{ row_indices_B_address0 sc_out sc_lv 12 signal 4 } 
	{ row_indices_B_ce0 sc_out sc_logic 1 signal 4 } 
	{ row_indices_B_q0 sc_in sc_lv 32 signal 4 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 5 } 
	{ C_address0 sc_out sc_lv 12 signal 6 } 
	{ C_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_we0 sc_out sc_logic 1 signal 6 } 
	{ C_d0 sc_out sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address0" }} , 
 	{ "name": "row_ptr_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce0" }} , 
 	{ "name": "row_ptr_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q0" }} , 
 	{ "name": "values_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_B", "role": "address0" }} , 
 	{ "name": "values_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_B", "role": "ce0" }} , 
 	{ "name": "values_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_B", "role": "q0" }} , 
 	{ "name": "row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "row_indices_B", "role": "address0" }} , 
 	{ "name": "row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_indices_B", "role": "ce0" }} , 
 	{ "name": "row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_indices_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "12", "14", "16", "18", "20"],
		"CDFG" : "sparse_matrix_multiply_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9037", "EstimateLatencyMax" : "8528332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "values_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "column_indices_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Port" : "row_ptr_A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "values_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "row_indices_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Port" : "col_ptr_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Port" : "C", "Inst_start_state" : "6", "Inst_end_state" : "12"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_57_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_ptr_A_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_col_ptr_B_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1",
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
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_ptr_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3",
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
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_50_5_VITIS_LOOP_51_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Parent" : "0", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4",
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
			{"Name" : "nnzB", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_10_VITIS_LOOP_77_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268", "Parent" : "0", "Child" : ["21", "22"],
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS {
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		row_ptr_A {Type I LastRead 2 FirstWrite -1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		col_ptr_B {Type I LastRead 2 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1 {
		row_ptr_A {Type I LastRead 0 FirstWrite -1}
		local_row_ptr_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3 {
		col_ptr_B {Type I LastRead 0 FirstWrite -1}
		local_col_ptr_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6 {
		accum_V {Type O LastRead -1 FirstWrite 0}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4 {
		nnzB {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type O LastRead -1 FirstWrite 1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		local_row_indices_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11 {
		C {Type O LastRead -1 FirstWrite 1}
		accum_V {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "9037", "Max" : "8528332"}
	, {"Name" : "Interval", "Min" : "9038", "Max" : "8528333"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 mem_dout 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 mem_dout 0 32 } } }
	row_ptr_A { ap_memory {  { row_ptr_A_address0 mem_address 1 7 }  { row_ptr_A_ce0 mem_ce 1 1 }  { row_ptr_A_q0 mem_dout 0 32 } } }
	values_B { ap_memory {  { values_B_address0 mem_address 1 12 }  { values_B_ce0 mem_ce 1 1 }  { values_B_q0 mem_dout 0 16 } } }
	row_indices_B { ap_memory {  { row_indices_B_address0 mem_address 1 12 }  { row_indices_B_ce0 mem_ce 1 1 }  { row_indices_B_q0 mem_dout 0 32 } } }
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 mem_dout 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 16 } } }
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
set moduleName sparse_matrix_multiply_HLS
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
set C_modelName {sparse_matrix_multiply_HLS}
set C_modelType { void 0 }
set C_modelArgList {
	{ values_A int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ column_indices_A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_ptr_A int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ values_B int 16 regular {array 4096 { 1 3 } 1 1 }  }
	{ row_indices_B int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ col_ptr_B int 32 regular {array 65 { 1 3 } 1 1 }  }
	{ C int 16 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "values_A", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "column_indices_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_ptr_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "values_B", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_indices_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ values_A_address0 sc_out sc_lv 12 signal 0 } 
	{ values_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ values_A_q0 sc_in sc_lv 16 signal 0 } 
	{ column_indices_A_address0 sc_out sc_lv 12 signal 1 } 
	{ column_indices_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ column_indices_A_q0 sc_in sc_lv 32 signal 1 } 
	{ row_ptr_A_address0 sc_out sc_lv 7 signal 2 } 
	{ row_ptr_A_ce0 sc_out sc_logic 1 signal 2 } 
	{ row_ptr_A_q0 sc_in sc_lv 32 signal 2 } 
	{ values_B_address0 sc_out sc_lv 12 signal 3 } 
	{ values_B_ce0 sc_out sc_logic 1 signal 3 } 
	{ values_B_q0 sc_in sc_lv 16 signal 3 } 
	{ row_indices_B_address0 sc_out sc_lv 12 signal 4 } 
	{ row_indices_B_ce0 sc_out sc_logic 1 signal 4 } 
	{ row_indices_B_q0 sc_in sc_lv 32 signal 4 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 5 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 5 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 5 } 
	{ C_address0 sc_out sc_lv 12 signal 6 } 
	{ C_ce0 sc_out sc_logic 1 signal 6 } 
	{ C_we0 sc_out sc_logic 1 signal 6 } 
	{ C_d0 sc_out sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "values_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_A", "role": "address0" }} , 
 	{ "name": "values_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_A", "role": "ce0" }} , 
 	{ "name": "values_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_A", "role": "q0" }} , 
 	{ "name": "column_indices_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "column_indices_A", "role": "address0" }} , 
 	{ "name": "column_indices_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "column_indices_A", "role": "ce0" }} , 
 	{ "name": "column_indices_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "column_indices_A", "role": "q0" }} , 
 	{ "name": "row_ptr_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "address0" }} , 
 	{ "name": "row_ptr_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "ce0" }} , 
 	{ "name": "row_ptr_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_ptr_A", "role": "q0" }} , 
 	{ "name": "values_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "values_B", "role": "address0" }} , 
 	{ "name": "values_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "values_B", "role": "ce0" }} , 
 	{ "name": "values_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "values_B", "role": "q0" }} , 
 	{ "name": "row_indices_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "row_indices_B", "role": "address0" }} , 
 	{ "name": "row_indices_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_indices_B", "role": "ce0" }} , 
 	{ "name": "row_indices_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_indices_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "C", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "12", "14", "16", "18", "20"],
		"CDFG" : "sparse_matrix_multiply_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9037", "EstimateLatencyMax" : "8528332",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "values_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "values_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "column_indices_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Port" : "column_indices_A", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Port" : "row_ptr_A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "values_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Port" : "row_indices_B", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Port" : "col_ptr_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Port" : "C", "Inst_start_state" : "6", "Inst_end_state" : "12"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_57_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_A_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_column_indices_A_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_ptr_A_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_values_B_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_row_indices_B_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_col_ptr_B_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accum_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1",
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
			{"Name" : "row_ptr_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_ptr_A", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1_fu_215.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3",
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
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3_fu_223.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_50_5_VITIS_LOOP_51_6", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6_fu_231.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237", "Parent" : "0", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2_fu_237.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4",
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
			{"Name" : "nnzB", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_values_B_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "values_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_indices_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_row_indices_B", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_10_VITIS_LOOP_77_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11_fu_261.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268", "Parent" : "0", "Child" : ["21", "22"],
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.mac_muladd_16s_16s_27ns_27_4_1_U16", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_9_fu_268.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS {
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		row_ptr_A {Type I LastRead 2 FirstWrite -1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		col_ptr_B {Type I LastRead 2 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_28_1 {
		row_ptr_A {Type I LastRead 0 FirstWrite -1}
		local_row_ptr_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_39_3 {
		col_ptr_B {Type I LastRead 0 FirstWrite -1}
		local_col_ptr_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_50_5_VITIS_LOOP_51_6 {
		accum_V {Type O LastRead -1 FirstWrite 0}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_32_2 {
		nnzA {Type I LastRead 0 FirstWrite -1}
		local_values_A_V {Type O LastRead -1 FirstWrite 1}
		values_A {Type I LastRead 0 FirstWrite -1}
		column_indices_A {Type I LastRead 0 FirstWrite -1}
		local_column_indices_A {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_43_4 {
		nnzB {Type I LastRead 0 FirstWrite -1}
		local_values_B_V {Type O LastRead -1 FirstWrite 1}
		values_B {Type I LastRead 0 FirstWrite -1}
		row_indices_B {Type I LastRead 0 FirstWrite -1}
		local_row_indices_B {Type O LastRead -1 FirstWrite 1}}
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_76_10_VITIS_LOOP_77_11 {
		C {Type O LastRead -1 FirstWrite 1}
		accum_V {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "9037", "Max" : "8528332"}
	, {"Name" : "Interval", "Min" : "9038", "Max" : "8528333"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	values_A { ap_memory {  { values_A_address0 mem_address 1 12 }  { values_A_ce0 mem_ce 1 1 }  { values_A_q0 mem_dout 0 16 } } }
	column_indices_A { ap_memory {  { column_indices_A_address0 mem_address 1 12 }  { column_indices_A_ce0 mem_ce 1 1 }  { column_indices_A_q0 mem_dout 0 32 } } }
	row_ptr_A { ap_memory {  { row_ptr_A_address0 mem_address 1 7 }  { row_ptr_A_ce0 mem_ce 1 1 }  { row_ptr_A_q0 mem_dout 0 32 } } }
	values_B { ap_memory {  { values_B_address0 mem_address 1 12 }  { values_B_ce0 mem_ce 1 1 }  { values_B_q0 mem_dout 0 16 } } }
	row_indices_B { ap_memory {  { row_indices_B_address0 mem_address 1 12 }  { row_indices_B_ce0 mem_ce 1 1 }  { row_indices_B_q0 mem_dout 0 32 } } }
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 mem_dout 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 16 } } }
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
