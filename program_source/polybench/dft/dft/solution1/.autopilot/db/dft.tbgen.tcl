set moduleName dft
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
set C_modelName {dft}
set C_modelType { void 0 }
set C_modelArgList {
	{ sample_real int 64 regular {array 256 { 2 3 } 1 1 }  }
	{ sample_imag int 64 regular {array 256 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sample_real", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "sample_imag", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sample_real_address0 sc_out sc_lv 8 signal 0 } 
	{ sample_real_ce0 sc_out sc_logic 1 signal 0 } 
	{ sample_real_we0 sc_out sc_logic 1 signal 0 } 
	{ sample_real_d0 sc_out sc_lv 64 signal 0 } 
	{ sample_real_q0 sc_in sc_lv 64 signal 0 } 
	{ sample_imag_address0 sc_out sc_lv 8 signal 1 } 
	{ sample_imag_ce0 sc_out sc_logic 1 signal 1 } 
	{ sample_imag_we0 sc_out sc_logic 1 signal 1 } 
	{ sample_imag_d0 sc_out sc_lv 64 signal 1 } 
	{ sample_imag_q0 sc_in sc_lv 64 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sample_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sample_real", "role": "address0" }} , 
 	{ "name": "sample_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sample_real", "role": "ce0" }} , 
 	{ "name": "sample_real_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sample_real", "role": "we0" }} , 
 	{ "name": "sample_real_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sample_real", "role": "d0" }} , 
 	{ "name": "sample_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sample_real", "role": "q0" }} , 
 	{ "name": "sample_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sample_imag", "role": "address0" }} , 
 	{ "name": "sample_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sample_imag", "role": "ce0" }} , 
 	{ "name": "sample_imag_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sample_imag", "role": "we0" }} , 
 	{ "name": "sample_imag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sample_imag", "role": "d0" }} , 
 	{ "name": "sample_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sample_imag", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "28"],
		"CDFG" : "dft",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "327987", "EstimateLatencyMax" : "327987",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sample_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_31_3_fu_70", "Port" : "sample_real", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "3", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46", "Port" : "sample_real", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "sample_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_31_3_fu_70", "Port" : "sample_imag", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "3", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46", "Port" : "sample_imag", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46", "Port" : "ref_4oPi_table_256_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fourth_order_double_sin_cos_K0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46", "Port" : "fourth_order_double_sin_cos_K0_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fourth_order_double_sin_cos_K1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46", "Port" : "fourth_order_double_sin_cos_K1_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fourth_order_double_sin_cos_K2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46", "Port" : "fourth_order_double_sin_cos_K2_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fourth_order_double_sin_cos_K3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46", "Port" : "fourth_order_double_sin_cos_K3_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fourth_order_double_sin_cos_K4_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46", "Port" : "fourth_order_double_sin_cos_K4_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_real_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_imag_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46", "Parent" : "0", "Child" : ["4", "23", "24", "25", "26", "27"],
		"CDFG" : "dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "327726", "EstimateLatencyMax" : "327726",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sample_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sample_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "temp_real", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "temp_imag", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_sin_or_cos_double_s_fu_142", "Port" : "ref_4oPi_table_256_V", "Inst_start_state" : "17", "Inst_end_state" : "32"}]},
			{"Name" : "fourth_order_double_sin_cos_K0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_sin_or_cos_double_s_fu_142", "Port" : "fourth_order_double_sin_cos_K0_V", "Inst_start_state" : "17", "Inst_end_state" : "32"}]},
			{"Name" : "fourth_order_double_sin_cos_K1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_sin_or_cos_double_s_fu_142", "Port" : "fourth_order_double_sin_cos_K1_V", "Inst_start_state" : "17", "Inst_end_state" : "32"}]},
			{"Name" : "fourth_order_double_sin_cos_K2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_sin_or_cos_double_s_fu_142", "Port" : "fourth_order_double_sin_cos_K2_V", "Inst_start_state" : "17", "Inst_end_state" : "32"}]},
			{"Name" : "fourth_order_double_sin_cos_K3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_sin_or_cos_double_s_fu_142", "Port" : "fourth_order_double_sin_cos_K3_V", "Inst_start_state" : "17", "Inst_end_state" : "32"}]},
			{"Name" : "fourth_order_double_sin_cos_K4_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_sin_or_cos_double_s_fu_142", "Port" : "fourth_order_double_sin_cos_K4_V", "Inst_start_state" : "17", "Inst_end_state" : "32"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_16_1_VITIS_LOOP_22_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142", "Parent" : "3", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "sin_or_cos_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "15", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fourth_order_double_sin_cos_K4_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.ref_4oPi_table_256_V_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.fourth_order_double_sin_cos_K0_V_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.fourth_order_double_sin_cos_K1_V_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.fourth_order_double_sin_cos_K2_V_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.fourth_order_double_sin_cos_K3_V_U", "Parent" : "4"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.fourth_order_double_sin_cos_K4_V_U", "Parent" : "4"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.mul_170s_53ns_170_2_1_U1", "Parent" : "4"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.mul_49ns_49ns_98_2_1_U2", "Parent" : "4"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.mux_83_1_1_1_U3", "Parent" : "4"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.mux_164_1_1_1_U4", "Parent" : "4"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.mux_164_1_1_1_U5", "Parent" : "4"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.mul_49ns_49ns_98_2_1_U6", "Parent" : "4"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.mul_49ns_49ns_98_2_1_U7", "Parent" : "4"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.mul_56ns_52s_108_2_1_U8", "Parent" : "4"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.mul_49ns_44s_93_2_1_U9", "Parent" : "4"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.mul_42ns_33ns_75_1_1_U10", "Parent" : "4"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.mul_35ns_25ns_60_1_1_U11", "Parent" : "4"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.grp_sin_or_cos_double_s_fu_142.mul_64s_63ns_126_2_1_U12", "Parent" : "4"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.dadddsub_64ns_64ns_64_5_full_dsp_1_U31", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.dmul_64ns_64ns_64_5_max_dsp_1_U32", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.dmul_64ns_64ns_64_5_max_dsp_1_U33", "Parent" : "3"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.sitodp_32ns_64_4_no_dsp_1_U34", "Parent" : "3"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_31_3_fu_70", "Parent" : "0", "Child" : ["29"],
		"CDFG" : "dft_Pipeline_VITIS_LOOP_31_3",
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
			{"Name" : "temp_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sample_real", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "temp_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sample_imag", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dft_Pipeline_VITIS_LOOP_31_3_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"}]}


set ArgLastReadFirstWriteLatency {
	dft {
		sample_real {Type IO LastRead 26 FirstWrite -1}
		sample_imag {Type IO LastRead 26 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K0_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K1_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K2_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K3_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K4_V {Type I LastRead -1 FirstWrite -1}}
	dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2 {
		sample_real {Type I LastRead 26 FirstWrite -1}
		sample_imag {Type I LastRead 26 FirstWrite -1}
		temp_real {Type O LastRead -1 FirstWrite 49}
		temp_imag {Type O LastRead -1 FirstWrite 50}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K0_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K1_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K2_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K3_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K4_V {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_256_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K0_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K1_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K2_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K3_V {Type I LastRead -1 FirstWrite -1}
		fourth_order_double_sin_cos_K4_V {Type I LastRead -1 FirstWrite -1}}
	dft_Pipeline_VITIS_LOOP_31_3 {
		temp_real {Type I LastRead 0 FirstWrite -1}
		sample_real {Type O LastRead -1 FirstWrite 1}
		temp_imag {Type I LastRead 0 FirstWrite -1}
		sample_imag {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "327987", "Max" : "327987"}
	, {"Name" : "Interval", "Min" : "327988", "Max" : "327988"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sample_real { ap_memory {  { sample_real_address0 mem_address 1 8 }  { sample_real_ce0 mem_ce 1 1 }  { sample_real_we0 mem_we 1 1 }  { sample_real_d0 mem_din 1 64 }  { sample_real_q0 mem_dout 0 64 } } }
	sample_imag { ap_memory {  { sample_imag_address0 mem_address 1 8 }  { sample_imag_ce0 mem_ce 1 1 }  { sample_imag_we0 mem_we 1 1 }  { sample_imag_d0 mem_din 1 64 }  { sample_imag_q0 mem_dout 0 64 } } }
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
