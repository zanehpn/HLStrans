set moduleName needwun
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
set C_modelName {needwun}
set C_modelType { void 0 }
set C_modelArgList {
	{ SEQA int 8 regular {array 128 { 1 3 } 1 1 }  }
	{ SEQB int 8 regular {array 128 { 1 3 } 1 1 }  }
	{ alignedA int 8 regular {array 256 { 0 0 } 0 1 }  }
	{ alignedB int 8 regular {array 256 { 0 0 } 0 1 }  }
	{ M int 32 regular {array 16641 { 2 1 } 1 1 }  }
	{ ptr int 8 regular {array 16641 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "SEQA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "SEQB", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "alignedA", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "alignedB", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "M", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "ptr", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ SEQA_address0 sc_out sc_lv 7 signal 0 } 
	{ SEQA_ce0 sc_out sc_logic 1 signal 0 } 
	{ SEQA_q0 sc_in sc_lv 8 signal 0 } 
	{ SEQB_address0 sc_out sc_lv 7 signal 1 } 
	{ SEQB_ce0 sc_out sc_logic 1 signal 1 } 
	{ SEQB_q0 sc_in sc_lv 8 signal 1 } 
	{ alignedA_address0 sc_out sc_lv 8 signal 2 } 
	{ alignedA_ce0 sc_out sc_logic 1 signal 2 } 
	{ alignedA_we0 sc_out sc_logic 1 signal 2 } 
	{ alignedA_d0 sc_out sc_lv 8 signal 2 } 
	{ alignedA_address1 sc_out sc_lv 8 signal 2 } 
	{ alignedA_ce1 sc_out sc_logic 1 signal 2 } 
	{ alignedA_we1 sc_out sc_logic 1 signal 2 } 
	{ alignedA_d1 sc_out sc_lv 8 signal 2 } 
	{ alignedB_address0 sc_out sc_lv 8 signal 3 } 
	{ alignedB_ce0 sc_out sc_logic 1 signal 3 } 
	{ alignedB_we0 sc_out sc_logic 1 signal 3 } 
	{ alignedB_d0 sc_out sc_lv 8 signal 3 } 
	{ alignedB_address1 sc_out sc_lv 8 signal 3 } 
	{ alignedB_ce1 sc_out sc_logic 1 signal 3 } 
	{ alignedB_we1 sc_out sc_logic 1 signal 3 } 
	{ alignedB_d1 sc_out sc_lv 8 signal 3 } 
	{ M_address0 sc_out sc_lv 15 signal 4 } 
	{ M_ce0 sc_out sc_logic 1 signal 4 } 
	{ M_we0 sc_out sc_logic 1 signal 4 } 
	{ M_d0 sc_out sc_lv 32 signal 4 } 
	{ M_q0 sc_in sc_lv 32 signal 4 } 
	{ M_address1 sc_out sc_lv 15 signal 4 } 
	{ M_ce1 sc_out sc_logic 1 signal 4 } 
	{ M_q1 sc_in sc_lv 32 signal 4 } 
	{ ptr_address0 sc_out sc_lv 15 signal 5 } 
	{ ptr_ce0 sc_out sc_logic 1 signal 5 } 
	{ ptr_we0 sc_out sc_logic 1 signal 5 } 
	{ ptr_d0 sc_out sc_lv 8 signal 5 } 
	{ ptr_q0 sc_in sc_lv 8 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "SEQA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "SEQA", "role": "address0" }} , 
 	{ "name": "SEQA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SEQA", "role": "ce0" }} , 
 	{ "name": "SEQA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "SEQA", "role": "q0" }} , 
 	{ "name": "SEQB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "SEQB", "role": "address0" }} , 
 	{ "name": "SEQB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SEQB", "role": "ce0" }} , 
 	{ "name": "SEQB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "SEQB", "role": "q0" }} , 
 	{ "name": "alignedA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "alignedA", "role": "address0" }} , 
 	{ "name": "alignedA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "alignedA", "role": "ce0" }} , 
 	{ "name": "alignedA_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "alignedA", "role": "we0" }} , 
 	{ "name": "alignedA_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "alignedA", "role": "d0" }} , 
 	{ "name": "alignedA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "alignedA", "role": "address1" }} , 
 	{ "name": "alignedA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "alignedA", "role": "ce1" }} , 
 	{ "name": "alignedA_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "alignedA", "role": "we1" }} , 
 	{ "name": "alignedA_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "alignedA", "role": "d1" }} , 
 	{ "name": "alignedB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "alignedB", "role": "address0" }} , 
 	{ "name": "alignedB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "alignedB", "role": "ce0" }} , 
 	{ "name": "alignedB_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "alignedB", "role": "we0" }} , 
 	{ "name": "alignedB_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "alignedB", "role": "d0" }} , 
 	{ "name": "alignedB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "alignedB", "role": "address1" }} , 
 	{ "name": "alignedB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "alignedB", "role": "ce1" }} , 
 	{ "name": "alignedB_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "alignedB", "role": "we1" }} , 
 	{ "name": "alignedB_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "alignedB", "role": "d1" }} , 
 	{ "name": "M_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "M", "role": "address0" }} , 
 	{ "name": "M_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M", "role": "ce0" }} , 
 	{ "name": "M_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M", "role": "we0" }} , 
 	{ "name": "M_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M", "role": "d0" }} , 
 	{ "name": "M_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M", "role": "q0" }} , 
 	{ "name": "M_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "M", "role": "address1" }} , 
 	{ "name": "M_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M", "role": "ce1" }} , 
 	{ "name": "M_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M", "role": "q1" }} , 
 	{ "name": "ptr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ptr", "role": "address0" }} , 
 	{ "name": "ptr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ptr", "role": "ce0" }} , 
 	{ "name": "ptr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ptr", "role": "we0" }} , 
 	{ "name": "ptr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ptr", "role": "d0" }} , 
 	{ "name": "ptr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ptr", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "9", "11"],
		"CDFG" : "needwun",
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
			{"Name" : "SEQA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_needwun_Pipeline_trace_fu_146", "Port" : "SEQA", "Inst_start_state" : "5", "Inst_end_state" : "9"},
					{"ID" : "7", "SubInstance" : "grp_needwun_Pipeline_fill_in_fu_161", "Port" : "SEQA", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "SEQB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_needwun_Pipeline_trace_fu_146", "Port" : "SEQB", "Inst_start_state" : "5", "Inst_end_state" : "9"}]},
			{"Name" : "alignedA", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_needwun_Pipeline_trace_fu_146", "Port" : "alignedA", "Inst_start_state" : "5", "Inst_end_state" : "9"},
					{"ID" : "9", "SubInstance" : "grp_needwun_Pipeline_pad_a_fu_178", "Port" : "alignedA", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "alignedB", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_needwun_Pipeline_trace_fu_146", "Port" : "alignedB", "Inst_start_state" : "5", "Inst_end_state" : "9"},
					{"ID" : "11", "SubInstance" : "grp_needwun_Pipeline_pad_b_fu_185", "Port" : "alignedB", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "M", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_needwun_Pipeline_init_row_fu_134", "Port" : "M", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_needwun_Pipeline_init_col_fu_140", "Port" : "M", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "7", "SubInstance" : "grp_needwun_Pipeline_fill_in_fu_161", "Port" : "M", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "ptr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_needwun_Pipeline_trace_fu_146", "Port" : "ptr", "Inst_start_state" : "5", "Inst_end_state" : "9"},
					{"ID" : "7", "SubInstance" : "grp_needwun_Pipeline_fill_in_fu_161", "Port" : "ptr", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "fill_out", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_needwun_Pipeline_init_row_fu_134", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "needwun_Pipeline_init_row",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131", "EstimateLatencyMax" : "131",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "M", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "init_row", "PipelineType" : "NotSupport"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_needwun_Pipeline_init_row_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_needwun_Pipeline_init_col_fu_140", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "needwun_Pipeline_init_col",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131", "EstimateLatencyMax" : "131",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "M", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "init_col", "PipelineType" : "NotSupport"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_needwun_Pipeline_init_col_fu_140.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_needwun_Pipeline_trace_fu_146", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "needwun_Pipeline_trace",
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
			{"Name" : "SEQA", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SEQB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ptr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alignedA", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "alignedB", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b_str_idx_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "trace", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_needwun_Pipeline_trace_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_needwun_Pipeline_fill_in_fu_161", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "needwun_Pipeline_fill_in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "M_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "SEQA", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SEQB_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln39_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "M", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln29", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_shl2", "Type" : "None", "Direction" : "I"},
			{"Name" : "ptr", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "fill_in", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_needwun_Pipeline_fill_in_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_needwun_Pipeline_pad_a_fu_178", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "needwun_Pipeline_pad_a",
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
			{"Name" : "trunc_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "alignedA", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "pad_a", "PipelineType" : "NotSupport"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_needwun_Pipeline_pad_a_fu_178.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_needwun_Pipeline_pad_b_fu_185", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "needwun_Pipeline_pad_b",
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
			{"Name" : "trunc_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "alignedB", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "pad_b", "PipelineType" : "NotSupport"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_needwun_Pipeline_pad_b_fu_185.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"}]}


set ArgLastReadFirstWriteLatency {
	needwun {
		SEQA {Type I LastRead 3 FirstWrite -1}
		SEQB {Type I LastRead 5 FirstWrite -1}
		alignedA {Type O LastRead -1 FirstWrite 0}
		alignedB {Type O LastRead -1 FirstWrite 0}
		M {Type IO LastRead 4 FirstWrite 0}
		ptr {Type IO LastRead 1 FirstWrite -1}}
	needwun_Pipeline_init_row {
		M {Type O LastRead -1 FirstWrite 0}}
	needwun_Pipeline_init_col {
		M {Type O LastRead -1 FirstWrite 0}}
	needwun_Pipeline_trace {
		SEQA {Type I LastRead 3 FirstWrite -1}
		SEQB {Type I LastRead 3 FirstWrite -1}
		ptr {Type I LastRead 1 FirstWrite -1}
		alignedA {Type O LastRead -1 FirstWrite 2}
		alignedB {Type O LastRead -1 FirstWrite 2}
		b_str_idx_2_out {Type O LastRead -1 FirstWrite 2}}
	needwun_Pipeline_fill_in {
		M_load {Type I LastRead 0 FirstWrite -1}
		SEQA {Type I LastRead 0 FirstWrite -1}
		SEQB_load {Type I LastRead 0 FirstWrite -1}
		add_ln39_3 {Type I LastRead 0 FirstWrite -1}
		M {Type IO LastRead 1 FirstWrite 3}
		zext_ln29 {Type I LastRead 0 FirstWrite -1}
		zext_ln28 {Type I LastRead 0 FirstWrite -1}
		p_shl2 {Type I LastRead 0 FirstWrite -1}
		ptr {Type O LastRead -1 FirstWrite 2}}
	needwun_Pipeline_pad_a {
		trunc_ln1 {Type I LastRead 0 FirstWrite -1}
		alignedA {Type O LastRead -1 FirstWrite 0}}
	needwun_Pipeline_pad_b {
		trunc_ln1 {Type I LastRead 0 FirstWrite -1}
		alignedB {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	SEQA { ap_memory {  { SEQA_address0 mem_address 1 7 }  { SEQA_ce0 mem_ce 1 1 }  { SEQA_q0 mem_dout 0 8 } } }
	SEQB { ap_memory {  { SEQB_address0 mem_address 1 7 }  { SEQB_ce0 mem_ce 1 1 }  { SEQB_q0 mem_dout 0 8 } } }
	alignedA { ap_memory {  { alignedA_address0 mem_address 1 8 }  { alignedA_ce0 mem_ce 1 1 }  { alignedA_we0 mem_we 1 1 }  { alignedA_d0 mem_din 1 8 }  { alignedA_address1 MemPortADDR2 1 8 }  { alignedA_ce1 MemPortCE2 1 1 }  { alignedA_we1 MemPortWE2 1 1 }  { alignedA_d1 MemPortDIN2 1 8 } } }
	alignedB { ap_memory {  { alignedB_address0 mem_address 1 8 }  { alignedB_ce0 mem_ce 1 1 }  { alignedB_we0 mem_we 1 1 }  { alignedB_d0 mem_din 1 8 }  { alignedB_address1 MemPortADDR2 1 8 }  { alignedB_ce1 MemPortCE2 1 1 }  { alignedB_we1 MemPortWE2 1 1 }  { alignedB_d1 MemPortDIN2 1 8 } } }
	M { ap_memory {  { M_address0 mem_address 1 15 }  { M_ce0 mem_ce 1 1 }  { M_we0 mem_we 1 1 }  { M_d0 mem_din 1 32 }  { M_q0 mem_dout 0 32 }  { M_address1 MemPortADDR2 1 15 }  { M_ce1 MemPortCE2 1 1 }  { M_q1 MemPortDOUT2 0 32 } } }
	ptr { ap_memory {  { ptr_address0 mem_address 1 15 }  { ptr_ce0 mem_ce 1 1 }  { ptr_we0 mem_we 1 1 }  { ptr_d0 mem_din 1 8 }  { ptr_q0 mem_dout 0 8 } } }
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
