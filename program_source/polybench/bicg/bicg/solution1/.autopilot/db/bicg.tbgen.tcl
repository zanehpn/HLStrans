set moduleName bicg
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
set C_modelName {bicg}
set C_modelType { void 0 }
set C_modelArgList {
	{ A int 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ p int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ r int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ s_out int 32 regular {array 64 { 0 3 } 0 1 }  }
	{ q_out int 32 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s_out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "q_out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_address0 sc_out sc_lv 12 signal 0 } 
	{ A_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_q0 sc_in sc_lv 32 signal 0 } 
	{ A_address1 sc_out sc_lv 12 signal 0 } 
	{ A_ce1 sc_out sc_logic 1 signal 0 } 
	{ A_q1 sc_in sc_lv 32 signal 0 } 
	{ p_address0 sc_out sc_lv 6 signal 1 } 
	{ p_ce0 sc_out sc_logic 1 signal 1 } 
	{ p_q0 sc_in sc_lv 32 signal 1 } 
	{ r_address0 sc_out sc_lv 6 signal 2 } 
	{ r_ce0 sc_out sc_logic 1 signal 2 } 
	{ r_q0 sc_in sc_lv 32 signal 2 } 
	{ s_out_address0 sc_out sc_lv 6 signal 3 } 
	{ s_out_ce0 sc_out sc_logic 1 signal 3 } 
	{ s_out_we0 sc_out sc_logic 1 signal 3 } 
	{ s_out_d0 sc_out sc_lv 32 signal 3 } 
	{ q_out_address0 sc_out sc_lv 6 signal 4 } 
	{ q_out_ce0 sc_out sc_logic 1 signal 4 } 
	{ q_out_we0 sc_out sc_logic 1 signal 4 } 
	{ q_out_d0 sc_out sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "r", "role": "address0" }} , 
 	{ "name": "r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "ce0" }} , 
 	{ "name": "r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r", "role": "q0" }} , 
 	{ "name": "s_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "s_out", "role": "address0" }} , 
 	{ "name": "s_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_out", "role": "ce0" }} , 
 	{ "name": "s_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_out", "role": "we0" }} , 
 	{ "name": "s_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_out", "role": "d0" }} , 
 	{ "name": "q_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "q_out", "role": "address0" }} , 
 	{ "name": "q_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q_out", "role": "ce0" }} , 
 	{ "name": "q_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q_out", "role": "we0" }} , 
 	{ "name": "q_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q_out", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "71", "73", "146", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204"],
		"CDFG" : "bicg",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6641", "EstimateLatencyMax" : "6641",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_bicg_Pipeline_lprd_1_fu_955", "Port" : "A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_bicg_Pipeline_lprd_1_fu_955", "Port" : "p", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_bicg_Pipeline_lprd_1_fu_955", "Port" : "r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "s_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_bicg_Pipeline_lpwr_fu_1306", "Port" : "s_out", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "q_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_bicg_Pipeline_lpwr_fu_1306", "Port" : "q_out", "Inst_start_state" : "37", "Inst_end_state" : "38"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_22_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_23_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_24_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_25_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_26_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_27_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_28_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_29_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_30_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_31_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_32_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_33_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_34_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_35_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_36_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_37_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_38_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_39_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_40_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_41_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_42_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_43_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_44_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_45_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_46_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_47_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_48_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_49_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_50_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_51_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_52_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_53_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_54_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_55_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_56_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_57_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_58_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_59_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_60_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_61_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_62_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_63_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_p_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_r_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_s_out_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_q_out_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lprd_1_fu_955", "Parent" : "0", "Child" : ["70"],
		"CDFG" : "bicg_Pipeline_lprd_1",
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
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_s_out", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_q_out", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_47", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_48", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_49", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_50", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_51", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_52", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_53", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_54", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_55", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_56", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_57", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_58", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_59", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_60", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_61", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_62", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_63", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lprd_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lprd_1_fu_955.flow_control_loop_pipe_sequential_init_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp1_fu_1101", "Parent" : "0", "Child" : ["72"],
		"CDFG" : "bicg_Pipeline_lp1",
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
			{"Name" : "buff_s_out", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A_63", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "lp1", "PipelineType" : "NotSupport"}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp1_fu_1101.flow_control_loop_pipe_sequential_init_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171", "Parent" : "0", "Child" : ["74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145"],
		"CDFG" : "bicg_Pipeline_lp3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "390", "EstimateLatencyMax" : "390",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_q_out", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_A_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_A_63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_p_load_63", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "lp3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter325", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter325", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U197", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U198", "Parent" : "73"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U199", "Parent" : "73"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U200", "Parent" : "73"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U201", "Parent" : "73"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U202", "Parent" : "73"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U203", "Parent" : "73"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U204", "Parent" : "73"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U205", "Parent" : "73"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U206", "Parent" : "73"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U207", "Parent" : "73"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U208", "Parent" : "73"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U209", "Parent" : "73"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U210", "Parent" : "73"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U211", "Parent" : "73"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U212", "Parent" : "73"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U213", "Parent" : "73"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U214", "Parent" : "73"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U215", "Parent" : "73"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U216", "Parent" : "73"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U217", "Parent" : "73"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U218", "Parent" : "73"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U219", "Parent" : "73"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U220", "Parent" : "73"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U221", "Parent" : "73"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U222", "Parent" : "73"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U223", "Parent" : "73"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U224", "Parent" : "73"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U225", "Parent" : "73"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U226", "Parent" : "73"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U227", "Parent" : "73"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U228", "Parent" : "73"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U229", "Parent" : "73"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U230", "Parent" : "73"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U231", "Parent" : "73"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U232", "Parent" : "73"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U233", "Parent" : "73"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U234", "Parent" : "73"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U235", "Parent" : "73"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U236", "Parent" : "73"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U237", "Parent" : "73"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U238", "Parent" : "73"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U239", "Parent" : "73"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U240", "Parent" : "73"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U241", "Parent" : "73"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U242", "Parent" : "73"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U243", "Parent" : "73"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U244", "Parent" : "73"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U245", "Parent" : "73"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U246", "Parent" : "73"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U247", "Parent" : "73"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U248", "Parent" : "73"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U249", "Parent" : "73"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U250", "Parent" : "73"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U251", "Parent" : "73"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U252", "Parent" : "73"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U253", "Parent" : "73"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U254", "Parent" : "73"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U255", "Parent" : "73"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U256", "Parent" : "73"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U257", "Parent" : "73"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fadd_32ns_32ns_32_5_full_dsp_1_U258", "Parent" : "73"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fmul_32ns_32ns_32_4_max_dsp_1_U314", "Parent" : "73"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fmul_32ns_32ns_32_4_max_dsp_1_U315", "Parent" : "73"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fmul_32ns_32ns_32_4_max_dsp_1_U316", "Parent" : "73"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fmul_32ns_32ns_32_4_max_dsp_1_U317", "Parent" : "73"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fmul_32ns_32ns_32_4_max_dsp_1_U318", "Parent" : "73"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fmul_32ns_32ns_32_4_max_dsp_1_U319", "Parent" : "73"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fmul_32ns_32ns_32_4_max_dsp_1_U320", "Parent" : "73"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fmul_32ns_32ns_32_4_max_dsp_1_U321", "Parent" : "73"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.fmul_32ns_32ns_32_4_max_dsp_1_U322", "Parent" : "73"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lp3_fu_1171.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lpwr_fu_1306", "Parent" : "0", "Child" : ["147"],
		"CDFG" : "bicg_Pipeline_lpwr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_s_out", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s_out", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_q_out", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "q_out", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lpwr", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bicg_Pipeline_lpwr_fu_1306.flow_control_loop_pipe_sequential_init_U", "Parent" : "146"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U456", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U457", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U458", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U459", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U460", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U461", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U462", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U463", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U464", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U465", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U466", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U467", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U468", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U469", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U470", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U471", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U472", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U473", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U474", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U475", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U476", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U477", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U478", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U479", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U480", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U481", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U482", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U483", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U484", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U485", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U486", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U487", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U488", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U489", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U490", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U491", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U492", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U493", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U494", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U495", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U496", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U497", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U498", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U499", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U500", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U501", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U502", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U503", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U504", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U505", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U506", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U507", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U508", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U509", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U510", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U511", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U512", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bicg {
		A {Type I LastRead 32 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		r {Type I LastRead 0 FirstWrite -1}
		s_out {Type O LastRead -1 FirstWrite 1}
		q_out {Type O LastRead -1 FirstWrite 1}}
	bicg_Pipeline_lprd_1 {
		A {Type I LastRead 32 FirstWrite -1}
		p {Type I LastRead 0 FirstWrite -1}
		buff_p {Type O LastRead -1 FirstWrite 1}
		r {Type I LastRead 0 FirstWrite -1}
		buff_r {Type O LastRead -1 FirstWrite 1}
		buff_s_out {Type O LastRead -1 FirstWrite 0}
		buff_q_out {Type O LastRead -1 FirstWrite 0}
		buff_A_0 {Type O LastRead -1 FirstWrite 1}
		buff_A_1 {Type O LastRead -1 FirstWrite 1}
		buff_A_2 {Type O LastRead -1 FirstWrite 2}
		buff_A_3 {Type O LastRead -1 FirstWrite 2}
		buff_A_4 {Type O LastRead -1 FirstWrite 3}
		buff_A_5 {Type O LastRead -1 FirstWrite 3}
		buff_A_6 {Type O LastRead -1 FirstWrite 4}
		buff_A_7 {Type O LastRead -1 FirstWrite 4}
		buff_A_8 {Type O LastRead -1 FirstWrite 5}
		buff_A_9 {Type O LastRead -1 FirstWrite 5}
		buff_A_10 {Type O LastRead -1 FirstWrite 6}
		buff_A_11 {Type O LastRead -1 FirstWrite 6}
		buff_A_12 {Type O LastRead -1 FirstWrite 7}
		buff_A_13 {Type O LastRead -1 FirstWrite 7}
		buff_A_14 {Type O LastRead -1 FirstWrite 8}
		buff_A_15 {Type O LastRead -1 FirstWrite 8}
		buff_A_16 {Type O LastRead -1 FirstWrite 9}
		buff_A_17 {Type O LastRead -1 FirstWrite 9}
		buff_A_18 {Type O LastRead -1 FirstWrite 10}
		buff_A_19 {Type O LastRead -1 FirstWrite 10}
		buff_A_20 {Type O LastRead -1 FirstWrite 11}
		buff_A_21 {Type O LastRead -1 FirstWrite 11}
		buff_A_22 {Type O LastRead -1 FirstWrite 12}
		buff_A_23 {Type O LastRead -1 FirstWrite 12}
		buff_A_24 {Type O LastRead -1 FirstWrite 13}
		buff_A_25 {Type O LastRead -1 FirstWrite 13}
		buff_A_26 {Type O LastRead -1 FirstWrite 14}
		buff_A_27 {Type O LastRead -1 FirstWrite 14}
		buff_A_28 {Type O LastRead -1 FirstWrite 15}
		buff_A_29 {Type O LastRead -1 FirstWrite 15}
		buff_A_30 {Type O LastRead -1 FirstWrite 16}
		buff_A_31 {Type O LastRead -1 FirstWrite 16}
		buff_A_32 {Type O LastRead -1 FirstWrite 17}
		buff_A_33 {Type O LastRead -1 FirstWrite 17}
		buff_A_34 {Type O LastRead -1 FirstWrite 18}
		buff_A_35 {Type O LastRead -1 FirstWrite 18}
		buff_A_36 {Type O LastRead -1 FirstWrite 19}
		buff_A_37 {Type O LastRead -1 FirstWrite 19}
		buff_A_38 {Type O LastRead -1 FirstWrite 20}
		buff_A_39 {Type O LastRead -1 FirstWrite 20}
		buff_A_40 {Type O LastRead -1 FirstWrite 21}
		buff_A_41 {Type O LastRead -1 FirstWrite 21}
		buff_A_42 {Type O LastRead -1 FirstWrite 22}
		buff_A_43 {Type O LastRead -1 FirstWrite 22}
		buff_A_44 {Type O LastRead -1 FirstWrite 23}
		buff_A_45 {Type O LastRead -1 FirstWrite 23}
		buff_A_46 {Type O LastRead -1 FirstWrite 24}
		buff_A_47 {Type O LastRead -1 FirstWrite 24}
		buff_A_48 {Type O LastRead -1 FirstWrite 25}
		buff_A_49 {Type O LastRead -1 FirstWrite 25}
		buff_A_50 {Type O LastRead -1 FirstWrite 26}
		buff_A_51 {Type O LastRead -1 FirstWrite 26}
		buff_A_52 {Type O LastRead -1 FirstWrite 27}
		buff_A_53 {Type O LastRead -1 FirstWrite 27}
		buff_A_54 {Type O LastRead -1 FirstWrite 28}
		buff_A_55 {Type O LastRead -1 FirstWrite 28}
		buff_A_56 {Type O LastRead -1 FirstWrite 29}
		buff_A_57 {Type O LastRead -1 FirstWrite 29}
		buff_A_58 {Type O LastRead -1 FirstWrite 30}
		buff_A_59 {Type O LastRead -1 FirstWrite 30}
		buff_A_60 {Type O LastRead -1 FirstWrite 31}
		buff_A_61 {Type O LastRead -1 FirstWrite 31}
		buff_A_62 {Type O LastRead -1 FirstWrite 32}
		buff_A_63 {Type O LastRead -1 FirstWrite 32}}
	bicg_Pipeline_lp1 {
		buff_s_out {Type IO LastRead 32 FirstWrite 32}
		buff_r {Type I LastRead 0 FirstWrite -1}
		buff_A_0 {Type I LastRead 0 FirstWrite -1}
		buff_A_1 {Type I LastRead 0 FirstWrite -1}
		buff_A_2 {Type I LastRead 0 FirstWrite -1}
		buff_A_3 {Type I LastRead 0 FirstWrite -1}
		buff_A_4 {Type I LastRead 0 FirstWrite -1}
		buff_A_5 {Type I LastRead 0 FirstWrite -1}
		buff_A_6 {Type I LastRead 0 FirstWrite -1}
		buff_A_7 {Type I LastRead 0 FirstWrite -1}
		buff_A_8 {Type I LastRead 0 FirstWrite -1}
		buff_A_9 {Type I LastRead 0 FirstWrite -1}
		buff_A_10 {Type I LastRead 0 FirstWrite -1}
		buff_A_11 {Type I LastRead 0 FirstWrite -1}
		buff_A_12 {Type I LastRead 0 FirstWrite -1}
		buff_A_13 {Type I LastRead 0 FirstWrite -1}
		buff_A_14 {Type I LastRead 0 FirstWrite -1}
		buff_A_15 {Type I LastRead 0 FirstWrite -1}
		buff_A_16 {Type I LastRead 0 FirstWrite -1}
		buff_A_17 {Type I LastRead 0 FirstWrite -1}
		buff_A_18 {Type I LastRead 0 FirstWrite -1}
		buff_A_19 {Type I LastRead 0 FirstWrite -1}
		buff_A_20 {Type I LastRead 0 FirstWrite -1}
		buff_A_21 {Type I LastRead 0 FirstWrite -1}
		buff_A_22 {Type I LastRead 0 FirstWrite -1}
		buff_A_23 {Type I LastRead 0 FirstWrite -1}
		buff_A_24 {Type I LastRead 0 FirstWrite -1}
		buff_A_25 {Type I LastRead 0 FirstWrite -1}
		buff_A_26 {Type I LastRead 0 FirstWrite -1}
		buff_A_27 {Type I LastRead 0 FirstWrite -1}
		buff_A_28 {Type I LastRead 0 FirstWrite -1}
		buff_A_29 {Type I LastRead 0 FirstWrite -1}
		buff_A_30 {Type I LastRead 0 FirstWrite -1}
		buff_A_31 {Type I LastRead 0 FirstWrite -1}
		buff_A_32 {Type I LastRead 0 FirstWrite -1}
		buff_A_33 {Type I LastRead 0 FirstWrite -1}
		buff_A_34 {Type I LastRead 0 FirstWrite -1}
		buff_A_35 {Type I LastRead 0 FirstWrite -1}
		buff_A_36 {Type I LastRead 0 FirstWrite -1}
		buff_A_37 {Type I LastRead 0 FirstWrite -1}
		buff_A_38 {Type I LastRead 0 FirstWrite -1}
		buff_A_39 {Type I LastRead 0 FirstWrite -1}
		buff_A_40 {Type I LastRead 0 FirstWrite -1}
		buff_A_41 {Type I LastRead 0 FirstWrite -1}
		buff_A_42 {Type I LastRead 0 FirstWrite -1}
		buff_A_43 {Type I LastRead 0 FirstWrite -1}
		buff_A_44 {Type I LastRead 0 FirstWrite -1}
		buff_A_45 {Type I LastRead 0 FirstWrite -1}
		buff_A_46 {Type I LastRead 0 FirstWrite -1}
		buff_A_47 {Type I LastRead 0 FirstWrite -1}
		buff_A_48 {Type I LastRead 0 FirstWrite -1}
		buff_A_49 {Type I LastRead 0 FirstWrite -1}
		buff_A_50 {Type I LastRead 0 FirstWrite -1}
		buff_A_51 {Type I LastRead 0 FirstWrite -1}
		buff_A_52 {Type I LastRead 0 FirstWrite -1}
		buff_A_53 {Type I LastRead 0 FirstWrite -1}
		buff_A_54 {Type I LastRead 0 FirstWrite -1}
		buff_A_55 {Type I LastRead 0 FirstWrite -1}
		buff_A_56 {Type I LastRead 0 FirstWrite -1}
		buff_A_57 {Type I LastRead 0 FirstWrite -1}
		buff_A_58 {Type I LastRead 0 FirstWrite -1}
		buff_A_59 {Type I LastRead 0 FirstWrite -1}
		buff_A_60 {Type I LastRead 0 FirstWrite -1}
		buff_A_61 {Type I LastRead 0 FirstWrite -1}
		buff_A_62 {Type I LastRead 0 FirstWrite -1}
		buff_A_63 {Type I LastRead 0 FirstWrite -1}}
	bicg_Pipeline_lp3 {
		buff_q_out {Type IO LastRead 3 FirstWrite 325}
		buff_A_0 {Type I LastRead 0 FirstWrite -1}
		buff_p_load {Type I LastRead 0 FirstWrite -1}
		buff_A_1 {Type I LastRead 5 FirstWrite -1}
		buff_p_load_1 {Type I LastRead 0 FirstWrite -1}
		buff_A_2 {Type I LastRead 10 FirstWrite -1}
		buff_p_load_2 {Type I LastRead 0 FirstWrite -1}
		buff_A_3 {Type I LastRead 15 FirstWrite -1}
		buff_p_load_3 {Type I LastRead 0 FirstWrite -1}
		buff_A_4 {Type I LastRead 20 FirstWrite -1}
		buff_p_load_4 {Type I LastRead 0 FirstWrite -1}
		buff_A_5 {Type I LastRead 25 FirstWrite -1}
		buff_p_load_5 {Type I LastRead 0 FirstWrite -1}
		buff_A_6 {Type I LastRead 30 FirstWrite -1}
		buff_p_load_6 {Type I LastRead 0 FirstWrite -1}
		buff_A_7 {Type I LastRead 35 FirstWrite -1}
		buff_p_load_7 {Type I LastRead 0 FirstWrite -1}
		buff_A_8 {Type I LastRead 40 FirstWrite -1}
		buff_p_load_8 {Type I LastRead 0 FirstWrite -1}
		buff_A_9 {Type I LastRead 45 FirstWrite -1}
		buff_p_load_9 {Type I LastRead 0 FirstWrite -1}
		buff_A_10 {Type I LastRead 50 FirstWrite -1}
		buff_p_load_10 {Type I LastRead 0 FirstWrite -1}
		buff_A_11 {Type I LastRead 55 FirstWrite -1}
		buff_p_load_11 {Type I LastRead 0 FirstWrite -1}
		buff_A_12 {Type I LastRead 60 FirstWrite -1}
		buff_p_load_12 {Type I LastRead 0 FirstWrite -1}
		buff_A_13 {Type I LastRead 65 FirstWrite -1}
		buff_p_load_13 {Type I LastRead 0 FirstWrite -1}
		buff_A_14 {Type I LastRead 70 FirstWrite -1}
		buff_p_load_14 {Type I LastRead 0 FirstWrite -1}
		buff_A_15 {Type I LastRead 75 FirstWrite -1}
		buff_p_load_15 {Type I LastRead 0 FirstWrite -1}
		buff_A_16 {Type I LastRead 80 FirstWrite -1}
		buff_p_load_16 {Type I LastRead 0 FirstWrite -1}
		buff_A_17 {Type I LastRead 85 FirstWrite -1}
		buff_p_load_17 {Type I LastRead 0 FirstWrite -1}
		buff_A_18 {Type I LastRead 90 FirstWrite -1}
		buff_p_load_18 {Type I LastRead 0 FirstWrite -1}
		buff_A_19 {Type I LastRead 95 FirstWrite -1}
		buff_p_load_19 {Type I LastRead 0 FirstWrite -1}
		buff_A_20 {Type I LastRead 100 FirstWrite -1}
		buff_p_load_20 {Type I LastRead 0 FirstWrite -1}
		buff_A_21 {Type I LastRead 105 FirstWrite -1}
		buff_p_load_21 {Type I LastRead 0 FirstWrite -1}
		buff_A_22 {Type I LastRead 110 FirstWrite -1}
		buff_p_load_22 {Type I LastRead 0 FirstWrite -1}
		buff_A_23 {Type I LastRead 115 FirstWrite -1}
		buff_p_load_23 {Type I LastRead 0 FirstWrite -1}
		buff_A_24 {Type I LastRead 120 FirstWrite -1}
		buff_p_load_24 {Type I LastRead 0 FirstWrite -1}
		buff_A_25 {Type I LastRead 125 FirstWrite -1}
		buff_p_load_25 {Type I LastRead 0 FirstWrite -1}
		buff_A_26 {Type I LastRead 130 FirstWrite -1}
		buff_p_load_26 {Type I LastRead 0 FirstWrite -1}
		buff_A_27 {Type I LastRead 135 FirstWrite -1}
		buff_p_load_27 {Type I LastRead 0 FirstWrite -1}
		buff_A_28 {Type I LastRead 140 FirstWrite -1}
		buff_p_load_28 {Type I LastRead 0 FirstWrite -1}
		buff_A_29 {Type I LastRead 145 FirstWrite -1}
		buff_p_load_29 {Type I LastRead 0 FirstWrite -1}
		buff_A_30 {Type I LastRead 150 FirstWrite -1}
		buff_p_load_30 {Type I LastRead 0 FirstWrite -1}
		buff_A_31 {Type I LastRead 155 FirstWrite -1}
		buff_p_load_31 {Type I LastRead 0 FirstWrite -1}
		buff_A_32 {Type I LastRead 160 FirstWrite -1}
		buff_p_load_32 {Type I LastRead 0 FirstWrite -1}
		buff_A_33 {Type I LastRead 165 FirstWrite -1}
		buff_p_load_33 {Type I LastRead 0 FirstWrite -1}
		buff_A_34 {Type I LastRead 170 FirstWrite -1}
		buff_p_load_34 {Type I LastRead 0 FirstWrite -1}
		buff_A_35 {Type I LastRead 175 FirstWrite -1}
		buff_p_load_35 {Type I LastRead 0 FirstWrite -1}
		buff_A_36 {Type I LastRead 180 FirstWrite -1}
		buff_p_load_36 {Type I LastRead 0 FirstWrite -1}
		buff_A_37 {Type I LastRead 185 FirstWrite -1}
		buff_p_load_37 {Type I LastRead 0 FirstWrite -1}
		buff_A_38 {Type I LastRead 190 FirstWrite -1}
		buff_p_load_38 {Type I LastRead 0 FirstWrite -1}
		buff_A_39 {Type I LastRead 195 FirstWrite -1}
		buff_p_load_39 {Type I LastRead 0 FirstWrite -1}
		buff_A_40 {Type I LastRead 200 FirstWrite -1}
		buff_p_load_40 {Type I LastRead 0 FirstWrite -1}
		buff_A_41 {Type I LastRead 205 FirstWrite -1}
		buff_p_load_41 {Type I LastRead 0 FirstWrite -1}
		buff_A_42 {Type I LastRead 210 FirstWrite -1}
		buff_p_load_42 {Type I LastRead 0 FirstWrite -1}
		buff_A_43 {Type I LastRead 215 FirstWrite -1}
		buff_p_load_43 {Type I LastRead 0 FirstWrite -1}
		buff_A_44 {Type I LastRead 220 FirstWrite -1}
		buff_p_load_44 {Type I LastRead 0 FirstWrite -1}
		buff_A_45 {Type I LastRead 225 FirstWrite -1}
		buff_p_load_45 {Type I LastRead 0 FirstWrite -1}
		buff_A_46 {Type I LastRead 230 FirstWrite -1}
		buff_p_load_46 {Type I LastRead 0 FirstWrite -1}
		buff_A_47 {Type I LastRead 235 FirstWrite -1}
		buff_p_load_47 {Type I LastRead 0 FirstWrite -1}
		buff_A_48 {Type I LastRead 240 FirstWrite -1}
		buff_p_load_48 {Type I LastRead 0 FirstWrite -1}
		buff_A_49 {Type I LastRead 245 FirstWrite -1}
		buff_p_load_49 {Type I LastRead 0 FirstWrite -1}
		buff_A_50 {Type I LastRead 250 FirstWrite -1}
		buff_p_load_50 {Type I LastRead 0 FirstWrite -1}
		buff_A_51 {Type I LastRead 255 FirstWrite -1}
		buff_p_load_51 {Type I LastRead 0 FirstWrite -1}
		buff_A_52 {Type I LastRead 260 FirstWrite -1}
		buff_p_load_52 {Type I LastRead 0 FirstWrite -1}
		buff_A_53 {Type I LastRead 265 FirstWrite -1}
		buff_p_load_53 {Type I LastRead 0 FirstWrite -1}
		buff_A_54 {Type I LastRead 270 FirstWrite -1}
		buff_p_load_54 {Type I LastRead 0 FirstWrite -1}
		buff_A_55 {Type I LastRead 275 FirstWrite -1}
		buff_p_load_55 {Type I LastRead 0 FirstWrite -1}
		buff_A_56 {Type I LastRead 280 FirstWrite -1}
		buff_p_load_56 {Type I LastRead 0 FirstWrite -1}
		buff_A_57 {Type I LastRead 285 FirstWrite -1}
		buff_p_load_57 {Type I LastRead 0 FirstWrite -1}
		buff_A_58 {Type I LastRead 290 FirstWrite -1}
		buff_p_load_58 {Type I LastRead 0 FirstWrite -1}
		buff_A_59 {Type I LastRead 295 FirstWrite -1}
		buff_p_load_59 {Type I LastRead 0 FirstWrite -1}
		buff_A_60 {Type I LastRead 300 FirstWrite -1}
		buff_p_load_60 {Type I LastRead 0 FirstWrite -1}
		buff_A_61 {Type I LastRead 305 FirstWrite -1}
		buff_p_load_61 {Type I LastRead 0 FirstWrite -1}
		buff_A_62 {Type I LastRead 310 FirstWrite -1}
		buff_p_load_62 {Type I LastRead 0 FirstWrite -1}
		buff_A_63 {Type I LastRead 315 FirstWrite -1}
		buff_p_load_63 {Type I LastRead 0 FirstWrite -1}}
	bicg_Pipeline_lpwr {
		buff_s_out {Type I LastRead 0 FirstWrite -1}
		s_out {Type O LastRead -1 FirstWrite 1}
		buff_q_out {Type I LastRead 0 FirstWrite -1}
		q_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6641", "Max" : "6641"}
	, {"Name" : "Interval", "Min" : "6642", "Max" : "6642"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A { ap_memory {  { A_address0 mem_address 1 12 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 32 }  { A_address1 MemPortADDR2 1 12 }  { A_ce1 MemPortCE2 1 1 }  { A_q1 MemPortDOUT2 0 32 } } }
	p { ap_memory {  { p_address0 mem_address 1 6 }  { p_ce0 mem_ce 1 1 }  { p_q0 mem_dout 0 32 } } }
	r { ap_memory {  { r_address0 mem_address 1 6 }  { r_ce0 mem_ce 1 1 }  { r_q0 mem_dout 0 32 } } }
	s_out { ap_memory {  { s_out_address0 mem_address 1 6 }  { s_out_ce0 mem_ce 1 1 }  { s_out_we0 mem_we 1 1 }  { s_out_d0 mem_din 1 32 } } }
	q_out { ap_memory {  { q_out_address0 mem_address 1 6 }  { q_out_ce0 mem_ce 1 1 }  { q_out_we0 mem_we 1 1 }  { q_out_d0 mem_din 1 32 } } }
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
