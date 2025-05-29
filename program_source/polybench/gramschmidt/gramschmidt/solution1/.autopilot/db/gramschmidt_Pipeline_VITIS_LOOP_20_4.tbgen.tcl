set moduleName gramschmidt_Pipeline_VITIS_LOOP_20_4
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
set C_modelName {gramschmidt_Pipeline_VITIS_LOOP_20_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln20_1 int 5 regular  }
	{ A int 64 regular {array 600 { 2 2 } 1 1 }  }
	{ sub_ln17 int 10 regular  }
	{ R int 64 regular {array 900 { 0 3 } 0 1 }  }
	{ bitcast_ln23_1 double 64 regular  }
	{ bitcast_ln23_3 double 64 regular  }
	{ bitcast_ln23_5 double 64 regular  }
	{ bitcast_ln23_7 double 64 regular  }
	{ bitcast_ln23_9 double 64 regular  }
	{ bitcast_ln23_11 double 64 regular  }
	{ bitcast_ln23_13 double 64 regular  }
	{ bitcast_ln23_15 double 64 regular  }
	{ bitcast_ln23_17 double 64 regular  }
	{ bitcast_ln23_19 double 64 regular  }
	{ bitcast_ln23_21 double 64 regular  }
	{ bitcast_ln23_23 double 64 regular  }
	{ bitcast_ln23_25 double 64 regular  }
	{ bitcast_ln23_27 double 64 regular  }
	{ bitcast_ln23_29 double 64 regular  }
	{ bitcast_ln23_31 double 64 regular  }
	{ bitcast_ln23_33 double 64 regular  }
	{ bitcast_ln23_35 double 64 regular  }
	{ bitcast_ln23_37 double 64 regular  }
	{ bitcast_ln23_39 double 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln20_1", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "sub_ln17", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "R", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bitcast_ln23_1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_3", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_5", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_7", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_9", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_11", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_13", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_15", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_17", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_19", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_21", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_23", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_25", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_27", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_29", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_31", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_33", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_35", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_37", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln23_39", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 51
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln20_1 sc_in sc_lv 5 signal 0 } 
	{ A_address0 sc_out sc_lv 10 signal 1 } 
	{ A_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_we0 sc_out sc_logic 1 signal 1 } 
	{ A_d0 sc_out sc_lv 64 signal 1 } 
	{ A_q0 sc_in sc_lv 64 signal 1 } 
	{ A_address1 sc_out sc_lv 10 signal 1 } 
	{ A_ce1 sc_out sc_logic 1 signal 1 } 
	{ A_we1 sc_out sc_logic 1 signal 1 } 
	{ A_d1 sc_out sc_lv 64 signal 1 } 
	{ A_q1 sc_in sc_lv 64 signal 1 } 
	{ sub_ln17 sc_in sc_lv 10 signal 2 } 
	{ R_address0 sc_out sc_lv 10 signal 3 } 
	{ R_ce0 sc_out sc_logic 1 signal 3 } 
	{ R_we0 sc_out sc_logic 1 signal 3 } 
	{ R_d0 sc_out sc_lv 64 signal 3 } 
	{ bitcast_ln23_1 sc_in sc_lv 64 signal 4 } 
	{ bitcast_ln23_3 sc_in sc_lv 64 signal 5 } 
	{ bitcast_ln23_5 sc_in sc_lv 64 signal 6 } 
	{ bitcast_ln23_7 sc_in sc_lv 64 signal 7 } 
	{ bitcast_ln23_9 sc_in sc_lv 64 signal 8 } 
	{ bitcast_ln23_11 sc_in sc_lv 64 signal 9 } 
	{ bitcast_ln23_13 sc_in sc_lv 64 signal 10 } 
	{ bitcast_ln23_15 sc_in sc_lv 64 signal 11 } 
	{ bitcast_ln23_17 sc_in sc_lv 64 signal 12 } 
	{ bitcast_ln23_19 sc_in sc_lv 64 signal 13 } 
	{ bitcast_ln23_21 sc_in sc_lv 64 signal 14 } 
	{ bitcast_ln23_23 sc_in sc_lv 64 signal 15 } 
	{ bitcast_ln23_25 sc_in sc_lv 64 signal 16 } 
	{ bitcast_ln23_27 sc_in sc_lv 64 signal 17 } 
	{ bitcast_ln23_29 sc_in sc_lv 64 signal 18 } 
	{ bitcast_ln23_31 sc_in sc_lv 64 signal 19 } 
	{ bitcast_ln23_33 sc_in sc_lv 64 signal 20 } 
	{ bitcast_ln23_35 sc_in sc_lv 64 signal 21 } 
	{ bitcast_ln23_37 sc_in sc_lv 64 signal 22 } 
	{ bitcast_ln23_39 sc_in sc_lv 64 signal 23 } 
	{ grp_fu_1126_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_1126_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_1126_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1126_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_1126_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1130_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_1130_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_1130_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_1130_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln20_1", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "zext_ln20_1", "role": "default" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we0" }} , 
 	{ "name": "A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "d0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we1" }} , 
 	{ "name": "A_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "d1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
 	{ "name": "sub_ln17", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sub_ln17", "role": "default" }} , 
 	{ "name": "R_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "R", "role": "address0" }} , 
 	{ "name": "R_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R", "role": "ce0" }} , 
 	{ "name": "R_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R", "role": "we0" }} , 
 	{ "name": "R_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R", "role": "d0" }} , 
 	{ "name": "bitcast_ln23_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_1", "role": "default" }} , 
 	{ "name": "bitcast_ln23_3", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_3", "role": "default" }} , 
 	{ "name": "bitcast_ln23_5", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_5", "role": "default" }} , 
 	{ "name": "bitcast_ln23_7", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_7", "role": "default" }} , 
 	{ "name": "bitcast_ln23_9", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_9", "role": "default" }} , 
 	{ "name": "bitcast_ln23_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_11", "role": "default" }} , 
 	{ "name": "bitcast_ln23_13", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_13", "role": "default" }} , 
 	{ "name": "bitcast_ln23_15", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_15", "role": "default" }} , 
 	{ "name": "bitcast_ln23_17", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_17", "role": "default" }} , 
 	{ "name": "bitcast_ln23_19", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_19", "role": "default" }} , 
 	{ "name": "bitcast_ln23_21", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_21", "role": "default" }} , 
 	{ "name": "bitcast_ln23_23", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_23", "role": "default" }} , 
 	{ "name": "bitcast_ln23_25", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_25", "role": "default" }} , 
 	{ "name": "bitcast_ln23_27", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_27", "role": "default" }} , 
 	{ "name": "bitcast_ln23_29", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_29", "role": "default" }} , 
 	{ "name": "bitcast_ln23_31", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_31", "role": "default" }} , 
 	{ "name": "bitcast_ln23_33", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_33", "role": "default" }} , 
 	{ "name": "bitcast_ln23_35", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_35", "role": "default" }} , 
 	{ "name": "bitcast_ln23_37", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_37", "role": "default" }} , 
 	{ "name": "bitcast_ln23_39", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln23_39", "role": "default" }} , 
 	{ "name": "grp_fu_1126_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1126_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1126_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1126_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1126_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1126_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1126_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1126_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1126_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1126_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1130_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1130_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1130_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1130_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1130_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1130_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1130_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1130_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39"],
		"CDFG" : "gramschmidt_Pipeline_VITIS_LOOP_20_4",
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
			{"Name" : "zext_ln20_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sub_ln17", "Type" : "None", "Direction" : "I"},
			{"Name" : "R", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bitcast_ln23_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln23_39", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "118", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U13", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U14", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U15", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U16", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U17", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U18", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U19", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U20", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U21", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U22", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U23", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U24", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U25", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U26", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U27", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U28", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U29", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U30", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U31", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U33", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U34", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U35", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U36", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U37", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U38", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U39", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U40", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U41", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U42", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U43", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U44", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U45", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U46", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U47", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U48", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U49", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U50", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U51", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gramschmidt_Pipeline_VITIS_LOOP_20_4 {
		zext_ln20_1 {Type I LastRead 0 FirstWrite -1}
		A {Type IO LastRead 19 FirstWrite 117}
		sub_ln17 {Type I LastRead 0 FirstWrite -1}
		R {Type O LastRead -1 FirstWrite 107}
		bitcast_ln23_1 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_3 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_5 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_7 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_9 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_11 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_13 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_15 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_17 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_19 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_21 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_23 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_25 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_27 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_29 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_31 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_33 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_35 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_37 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln23_39 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln20_1 { ap_none {  { zext_ln20_1 in_data 0 5 } } }
	A { ap_memory {  { A_address0 mem_address 1 10 }  { A_ce0 mem_ce 1 1 }  { A_we0 mem_we 1 1 }  { A_d0 mem_din 1 64 }  { A_q0 mem_dout 0 64 }  { A_address1 MemPortADDR2 1 10 }  { A_ce1 MemPortCE2 1 1 }  { A_we1 MemPortWE2 1 1 }  { A_d1 MemPortDIN2 1 64 }  { A_q1 MemPortDOUT2 0 64 } } }
	sub_ln17 { ap_none {  { sub_ln17 in_data 0 10 } } }
	R { ap_memory {  { R_address0 mem_address 1 10 }  { R_ce0 mem_ce 1 1 }  { R_we0 mem_we 1 1 }  { R_d0 mem_din 1 64 } } }
	bitcast_ln23_1 { ap_none {  { bitcast_ln23_1 in_data 0 64 } } }
	bitcast_ln23_3 { ap_none {  { bitcast_ln23_3 in_data 0 64 } } }
	bitcast_ln23_5 { ap_none {  { bitcast_ln23_5 in_data 0 64 } } }
	bitcast_ln23_7 { ap_none {  { bitcast_ln23_7 in_data 0 64 } } }
	bitcast_ln23_9 { ap_none {  { bitcast_ln23_9 in_data 0 64 } } }
	bitcast_ln23_11 { ap_none {  { bitcast_ln23_11 in_data 0 64 } } }
	bitcast_ln23_13 { ap_none {  { bitcast_ln23_13 in_data 0 64 } } }
	bitcast_ln23_15 { ap_none {  { bitcast_ln23_15 in_data 0 64 } } }
	bitcast_ln23_17 { ap_none {  { bitcast_ln23_17 in_data 0 64 } } }
	bitcast_ln23_19 { ap_none {  { bitcast_ln23_19 in_data 0 64 } } }
	bitcast_ln23_21 { ap_none {  { bitcast_ln23_21 in_data 0 64 } } }
	bitcast_ln23_23 { ap_none {  { bitcast_ln23_23 in_data 0 64 } } }
	bitcast_ln23_25 { ap_none {  { bitcast_ln23_25 in_data 0 64 } } }
	bitcast_ln23_27 { ap_none {  { bitcast_ln23_27 in_data 0 64 } } }
	bitcast_ln23_29 { ap_none {  { bitcast_ln23_29 in_data 0 64 } } }
	bitcast_ln23_31 { ap_none {  { bitcast_ln23_31 in_data 0 64 } } }
	bitcast_ln23_33 { ap_none {  { bitcast_ln23_33 in_data 0 64 } } }
	bitcast_ln23_35 { ap_none {  { bitcast_ln23_35 in_data 0 64 } } }
	bitcast_ln23_37 { ap_none {  { bitcast_ln23_37 in_data 0 64 } } }
	bitcast_ln23_39 { ap_none {  { bitcast_ln23_39 in_data 0 64 } } }
}
