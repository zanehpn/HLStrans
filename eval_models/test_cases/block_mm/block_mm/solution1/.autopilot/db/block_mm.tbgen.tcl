set moduleName block_mm
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
set C_modelName {block_mm}
set C_modelType { void 0 }
set C_modelArgList {
	{ Arows int 128 regular {fifo 0 volatile }  }
	{ Bcols int 128 regular {fifo 0 volatile }  }
	{ ABpartial int 512 regular {pointer 2}  }
	{ it int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Arows", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "Bcols", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "ABpartial", "interface" : "wire", "bitwidth" : 512, "direction" : "READWRITE"} , 
 	{ "Name" : "it", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Arows_dout sc_in sc_lv 128 signal 0 } 
	{ Arows_empty_n sc_in sc_logic 1 signal 0 } 
	{ Arows_read sc_out sc_logic 1 signal 0 } 
	{ Bcols_dout sc_in sc_lv 128 signal 1 } 
	{ Bcols_empty_n sc_in sc_logic 1 signal 1 } 
	{ Bcols_read sc_out sc_logic 1 signal 1 } 
	{ ABpartial_i sc_in sc_lv 512 signal 2 } 
	{ ABpartial_o sc_out sc_lv 512 signal 2 } 
	{ ABpartial_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ it sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Arows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "Arows", "role": "dout" }} , 
 	{ "name": "Arows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Arows", "role": "empty_n" }} , 
 	{ "name": "Arows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Arows", "role": "read" }} , 
 	{ "name": "Bcols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "Bcols", "role": "dout" }} , 
 	{ "name": "Bcols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols", "role": "empty_n" }} , 
 	{ "name": "Bcols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Bcols", "role": "read" }} , 
 	{ "name": "ABpartial_i", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "ABpartial", "role": "i" }} , 
 	{ "name": "ABpartial_o", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "ABpartial", "role": "o" }} , 
 	{ "name": "ABpartial_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ABpartial", "role": "o_ap_vld" }} , 
 	{ "name": "it", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "it", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7", "9", "27"],
		"CDFG" : "block_mm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43", "EstimateLatencyMax" : "54",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Arows", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_block_mm_Pipeline_loadA_fu_203", "Port" : "Arows", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "Bcols", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_block_mm_Pipeline_partialsum_fu_237", "Port" : "Bcols", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "ABpartial", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "it", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_block_mm_Pipeline_loadA_fu_203", "Port" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_block_mm_Pipeline_partialsum_fu_237", "Port" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_block_mm_Pipeline_loadA_fu_203", "Port" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_block_mm_Pipeline_partialsum_fu_237", "Port" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_block_mm_Pipeline_loadA_fu_203", "Port" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_block_mm_Pipeline_partialsum_fu_237", "Port" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_block_mm_Pipeline_loadA_fu_203", "Port" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_block_mm_Pipeline_partialsum_fu_237", "Port" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_loadA_fu_203", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "block_mm_Pipeline_loadA",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Arows", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Arows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loadA", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_loadA_fu_203.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_2_fu_217", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "block_mm_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "AB_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "AB_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "AB_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "AB_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "AB_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "AB_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "AB_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "AB_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "AB_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "AB_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "AB_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "AB_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "AB_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "AB_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "AB_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "AB_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_2_fu_217.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "block_mm_Pipeline_partialsum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "AB_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bcols", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Bcols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_3_375_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_3_274_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_3_173_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_372_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_2_371_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_2_270_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_2_169_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_268_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_1_367_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_1_266_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_1_165_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_164_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_33963_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_23462_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_12961_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "partialsum", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.mul_32s_32s_32_1_1_U22", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.mul_32s_32s_32_1_1_U23", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.mul_32s_32s_32_1_1_U24", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.mul_32s_32s_32_1_1_U25", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.mul_32s_32s_32_1_1_U26", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.mul_32s_32s_32_1_1_U27", "Parent" : "9"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.mul_32s_32s_32_1_1_U28", "Parent" : "9"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.mul_32s_32s_32_1_1_U29", "Parent" : "9"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.mul_32s_32s_32_1_1_U30", "Parent" : "9"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.mul_32s_32s_32_1_1_U31", "Parent" : "9"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.mul_32s_32s_32_1_1_U32", "Parent" : "9"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.mul_32s_32s_32_1_1_U33", "Parent" : "9"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.mul_32s_32s_32_1_1_U34", "Parent" : "9"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.mul_32s_32s_32_1_1_U35", "Parent" : "9"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.mul_32s_32s_32_1_1_U36", "Parent" : "9"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.mul_32s_32s_32_1_1_U37", "Parent" : "9"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_partialsum_fu_237.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_writeoutput_fu_283", "Parent" : "0", "Child" : ["28", "29", "30", "31", "32"],
		"CDFG" : "block_mm_Pipeline_writeoutput",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ABpartial_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_164_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_268_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_372_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_12961_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_1_165_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_2_169_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_3_173_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_23462_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_1_266_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_2_270_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_3_274_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_33963_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_1_367_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_2_371_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_3_375_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_partset4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "writeoutput", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_writeoutput_fu_283.mux_42_32_1_1_U76", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_writeoutput_fu_283.mux_42_32_1_1_U77", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_writeoutput_fu_283.mux_42_32_1_1_U78", "Parent" : "27"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_writeoutput_fu_283.mux_42_32_1_1_U79", "Parent" : "27"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_block_mm_Pipeline_writeoutput_fu_283.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"}]}


set ArgLastReadFirstWriteLatency {
	block_mm {
		Arows {Type I LastRead 1 FirstWrite -1}
		Bcols {Type I LastRead 1 FirstWrite -1}
		ABpartial {Type IO LastRead 6 FirstWrite 8}
		it {Type I LastRead 0 FirstWrite -1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A {Type IO LastRead -1 FirstWrite -1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 {Type IO LastRead -1 FirstWrite -1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 {Type IO LastRead -1 FirstWrite -1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 {Type IO LastRead -1 FirstWrite -1}}
	block_mm_Pipeline_loadA {
		Arows {Type I LastRead 1 FirstWrite -1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A {Type O LastRead -1 FirstWrite 1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 {Type O LastRead -1 FirstWrite 1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 {Type O LastRead -1 FirstWrite 1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 {Type O LastRead -1 FirstWrite 1}}
	block_mm_Pipeline_2 {
		AB_15_out {Type O LastRead -1 FirstWrite 0}
		AB_14_out {Type O LastRead -1 FirstWrite 0}
		AB_13_out {Type O LastRead -1 FirstWrite 0}
		AB_12_out {Type O LastRead -1 FirstWrite 0}
		AB_11_out {Type O LastRead -1 FirstWrite 0}
		AB_10_out {Type O LastRead -1 FirstWrite 0}
		AB_9_out {Type O LastRead -1 FirstWrite 0}
		AB_8_out {Type O LastRead -1 FirstWrite 0}
		AB_7_out {Type O LastRead -1 FirstWrite 0}
		AB_6_out {Type O LastRead -1 FirstWrite 0}
		AB_5_out {Type O LastRead -1 FirstWrite 0}
		AB_4_out {Type O LastRead -1 FirstWrite 0}
		AB_3_out {Type O LastRead -1 FirstWrite 0}
		AB_2_out {Type O LastRead -1 FirstWrite 0}
		AB_1_out {Type O LastRead -1 FirstWrite 0}
		AB_out {Type O LastRead -1 FirstWrite 0}}
	block_mm_Pipeline_partialsum {
		AB_15_reload {Type I LastRead 0 FirstWrite -1}
		AB_14_reload {Type I LastRead 0 FirstWrite -1}
		AB_13_reload {Type I LastRead 0 FirstWrite -1}
		AB_12_reload {Type I LastRead 0 FirstWrite -1}
		AB_11_reload {Type I LastRead 0 FirstWrite -1}
		AB_10_reload {Type I LastRead 0 FirstWrite -1}
		AB_9_reload {Type I LastRead 0 FirstWrite -1}
		AB_8_reload {Type I LastRead 0 FirstWrite -1}
		AB_7_reload {Type I LastRead 0 FirstWrite -1}
		AB_6_reload {Type I LastRead 0 FirstWrite -1}
		AB_5_reload {Type I LastRead 0 FirstWrite -1}
		AB_4_reload {Type I LastRead 0 FirstWrite -1}
		AB_3_reload {Type I LastRead 0 FirstWrite -1}
		AB_2_reload {Type I LastRead 0 FirstWrite -1}
		AB_1_reload {Type I LastRead 0 FirstWrite -1}
		AB_reload {Type I LastRead 0 FirstWrite -1}
		Bcols {Type I LastRead 1 FirstWrite -1}
		add_3_375_out {Type O LastRead -1 FirstWrite 2}
		add_3_274_out {Type O LastRead -1 FirstWrite 2}
		add_3_173_out {Type O LastRead -1 FirstWrite 2}
		add_372_out {Type O LastRead -1 FirstWrite 2}
		add_2_371_out {Type O LastRead -1 FirstWrite 2}
		add_2_270_out {Type O LastRead -1 FirstWrite 2}
		add_2_169_out {Type O LastRead -1 FirstWrite 2}
		add_268_out {Type O LastRead -1 FirstWrite 2}
		add_1_367_out {Type O LastRead -1 FirstWrite 2}
		add_1_266_out {Type O LastRead -1 FirstWrite 2}
		add_1_165_out {Type O LastRead -1 FirstWrite 2}
		add_164_out {Type O LastRead -1 FirstWrite 2}
		add_33963_out {Type O LastRead -1 FirstWrite 2}
		add_23462_out {Type O LastRead -1 FirstWrite 2}
		add_12961_out {Type O LastRead -1 FirstWrite 2}
		p_out {Type O LastRead -1 FirstWrite 2}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A {Type I LastRead 0 FirstWrite -1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 {Type I LastRead 0 FirstWrite -1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 {Type I LastRead 0 FirstWrite -1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 {Type I LastRead 0 FirstWrite -1}}
	block_mm_Pipeline_writeoutput {
		ABpartial_load {Type I LastRead 0 FirstWrite -1}
		p_reload {Type I LastRead 0 FirstWrite -1}
		add_164_reload {Type I LastRead 0 FirstWrite -1}
		add_268_reload {Type I LastRead 0 FirstWrite -1}
		add_372_reload {Type I LastRead 0 FirstWrite -1}
		add_12961_reload {Type I LastRead 0 FirstWrite -1}
		add_1_165_reload {Type I LastRead 0 FirstWrite -1}
		add_2_169_reload {Type I LastRead 0 FirstWrite -1}
		add_3_173_reload {Type I LastRead 0 FirstWrite -1}
		add_23462_reload {Type I LastRead 0 FirstWrite -1}
		add_1_266_reload {Type I LastRead 0 FirstWrite -1}
		add_2_270_reload {Type I LastRead 0 FirstWrite -1}
		add_3_274_reload {Type I LastRead 0 FirstWrite -1}
		add_33963_reload {Type I LastRead 0 FirstWrite -1}
		add_1_367_reload {Type I LastRead 0 FirstWrite -1}
		add_2_371_reload {Type I LastRead 0 FirstWrite -1}
		add_3_375_reload {Type I LastRead 0 FirstWrite -1}
		p_partset4_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "43", "Max" : "54"}
	, {"Name" : "Interval", "Min" : "44", "Max" : "55"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Arows { ap_fifo {  { Arows_dout fifo_port_we 0 128 }  { Arows_empty_n fifo_status 0 1 }  { Arows_read fifo_data 1 1 } } }
	Bcols { ap_fifo {  { Bcols_dout fifo_port_we 0 128 }  { Bcols_empty_n fifo_status 0 1 }  { Bcols_read fifo_data 1 1 } } }
	ABpartial { ap_ovld {  { ABpartial_i in_data 0 512 }  { ABpartial_o out_data 1 512 }  { ABpartial_o_ap_vld out_vld 1 1 } } }
	it { ap_none {  { it in_data 0 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	Arows { fifo_read 1 has_conditional }
	Bcols { fifo_read 1 no_conditional }
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
