set moduleName syrk
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
set C_modelName {syrk}
set C_modelType { void 0 }
set C_modelArgList {
	{ alpha float 32 regular  }
	{ beta float 32 regular  }
	{ A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ B int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ C_out int 32 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "alpha", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "beta", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C_out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ alpha sc_in sc_lv 32 signal 0 } 
	{ beta sc_in sc_lv 32 signal 1 } 
	{ A_address0 sc_out sc_lv 12 signal 2 } 
	{ A_ce0 sc_out sc_logic 1 signal 2 } 
	{ A_q0 sc_in sc_lv 32 signal 2 } 
	{ B_address0 sc_out sc_lv 12 signal 3 } 
	{ B_ce0 sc_out sc_logic 1 signal 3 } 
	{ B_q0 sc_in sc_lv 32 signal 3 } 
	{ C_out_address0 sc_out sc_lv 12 signal 4 } 
	{ C_out_ce0 sc_out sc_logic 1 signal 4 } 
	{ C_out_we0 sc_out sc_logic 1 signal 4 } 
	{ C_out_d0 sc_out sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "alpha", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "alpha", "role": "default" }} , 
 	{ "name": "beta", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "beta", "role": "default" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "q0" }} , 
 	{ "name": "C_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C_out", "role": "address0" }} , 
 	{ "name": "C_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_out", "role": "ce0" }} , 
 	{ "name": "C_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_out", "role": "we0" }} , 
 	{ "name": "C_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_out", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7", "55", "57", "59", "60"],
		"CDFG" : "syrk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29023", "EstimateLatencyMax" : "29023",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "alpha", "Type" : "None", "Direction" : "I"},
			{"Name" : "beta", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_syrk_Pipeline_lprd_1_lprd_2_fu_68", "Port" : "A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_syrk_Pipeline_lprd_1_lprd_2_fu_68", "Port" : "B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "C_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_101", "Port" : "C_out", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_B_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_C_out_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lprd_1_lprd_2_fu_68", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "syrk_Pipeline_lprd_1_lprd_2",
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
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_C_out", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lprd_1_lprd_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lprd_1_lprd_2_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54"],
		"CDFG" : "syrk_Pipeline_lp1_lp2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16712", "EstimateLatencyMax" : "16712",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_A0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alpha", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_C_out", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "lp1_lp2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter82", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter82", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fadd_32ns_32ns_32_5_full_dsp_1_U8", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fadd_32ns_32ns_32_5_full_dsp_1_U9", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fadd_32ns_32ns_32_5_full_dsp_1_U10", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fadd_32ns_32ns_32_5_full_dsp_1_U11", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fadd_32ns_32ns_32_5_full_dsp_1_U12", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fadd_32ns_32ns_32_5_full_dsp_1_U13", "Parent" : "7"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fadd_32ns_32ns_32_5_full_dsp_1_U14", "Parent" : "7"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fadd_32ns_32ns_32_5_full_dsp_1_U15", "Parent" : "7"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fadd_32ns_32ns_32_5_full_dsp_1_U16", "Parent" : "7"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fadd_32ns_32ns_32_5_full_dsp_1_U17", "Parent" : "7"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fadd_32ns_32ns_32_5_full_dsp_1_U18", "Parent" : "7"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fadd_32ns_32ns_32_5_full_dsp_1_U19", "Parent" : "7"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fadd_32ns_32ns_32_5_full_dsp_1_U20", "Parent" : "7"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fadd_32ns_32ns_32_5_full_dsp_1_U21", "Parent" : "7"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fadd_32ns_32ns_32_5_full_dsp_1_U22", "Parent" : "7"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U24", "Parent" : "7"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U25", "Parent" : "7"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U26", "Parent" : "7"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U27", "Parent" : "7"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U28", "Parent" : "7"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U29", "Parent" : "7"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U30", "Parent" : "7"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U31", "Parent" : "7"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U32", "Parent" : "7"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U33", "Parent" : "7"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U34", "Parent" : "7"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U35", "Parent" : "7"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U36", "Parent" : "7"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U37", "Parent" : "7"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U38", "Parent" : "7"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U39", "Parent" : "7"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U40", "Parent" : "7"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U41", "Parent" : "7"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U42", "Parent" : "7"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U43", "Parent" : "7"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U44", "Parent" : "7"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U45", "Parent" : "7"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U46", "Parent" : "7"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U47", "Parent" : "7"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U48", "Parent" : "7"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U49", "Parent" : "7"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U50", "Parent" : "7"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U51", "Parent" : "7"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U52", "Parent" : "7"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U53", "Parent" : "7"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.fmul_32ns_32ns_32_4_max_dsp_1_U54", "Parent" : "7"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp1_lp2_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp4_lp5_fu_93", "Parent" : "0", "Child" : ["56"],
		"CDFG" : "syrk_Pipeline_lp4_lp5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4108", "EstimateLatencyMax" : "4108",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_C_out", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "beta", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "lp4_lp5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lp4_lp5_fu_93.flow_control_loop_pipe_sequential_init_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_101", "Parent" : "0", "Child" : ["58"],
		"CDFG" : "syrk_Pipeline_lpwr_1_lpwr_2",
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
			{"Name" : "C_out", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_C_out", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "lpwr_1_lpwr_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_101.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U68", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U69", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	syrk {
		alpha {Type I LastRead 2 FirstWrite -1}
		beta {Type I LastRead 4 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		C_out {Type O LastRead -1 FirstWrite 1}}
	syrk_Pipeline_lprd_1_lprd_2 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		buff_A0 {Type O LastRead -1 FirstWrite 1}
		buff_A1 {Type O LastRead -1 FirstWrite 1}
		buff_B {Type O LastRead -1 FirstWrite 1}
		buff_C_out {Type O LastRead -1 FirstWrite 0}}
	syrk_Pipeline_lp1_lp2 {
		buff_A0 {Type I LastRead 4 FirstWrite -1}
		alpha {Type I LastRead 0 FirstWrite -1}
		buff_A1 {Type I LastRead 4 FirstWrite -1}
		buff_C_out {Type IO LastRead 8 FirstWrite 330}}
	syrk_Pipeline_lp4_lp5 {
		buff_B {Type I LastRead 0 FirstWrite -1}
		buff_C_out {Type IO LastRead 4 FirstWrite 11}
		beta {Type I LastRead 0 FirstWrite -1}}
	syrk_Pipeline_lpwr_1_lpwr_2 {
		C_out {Type O LastRead -1 FirstWrite 1}
		buff_C_out {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "29023", "Max" : "29023"}
	, {"Name" : "Interval", "Min" : "29024", "Max" : "29024"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	alpha { ap_none {  { alpha in_data 0 32 } } }
	beta { ap_none {  { beta in_data 0 32 } } }
	A { ap_memory {  { A_address0 mem_address 1 12 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 32 } } }
	B { ap_memory {  { B_address0 mem_address 1 12 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 32 } } }
	C_out { ap_memory {  { C_out_address0 mem_address 1 12 }  { C_out_ce0 mem_ce 1 1 }  { C_out_we0 mem_we 1 1 }  { C_out_d0 mem_din 1 32 } } }
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
