set moduleName doitgen_Pipeline_VITIS_LOOP_16_3
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
set C_modelName {doitgen_Pipeline_VITIS_LOOP_16_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ C4 int 64 regular {array 900 { 1 1 } 1 1 }  }
	{ sum int 64 regular {array 30 { 0 3 } 0 1 }  }
	{ bitcast_ln19_1 double 64 regular  }
	{ bitcast_ln19_3 double 64 regular  }
	{ bitcast_ln19_5 double 64 regular  }
	{ bitcast_ln19_7 double 64 regular  }
	{ bitcast_ln19_9 double 64 regular  }
	{ bitcast_ln19_11 double 64 regular  }
	{ bitcast_ln19_13 double 64 regular  }
	{ bitcast_ln19_15 double 64 regular  }
	{ bitcast_ln19_17 double 64 regular  }
	{ bitcast_ln19_19 double 64 regular  }
	{ bitcast_ln19_21 double 64 regular  }
	{ bitcast_ln19_23 double 64 regular  }
	{ bitcast_ln19_25 double 64 regular  }
	{ bitcast_ln19_27 double 64 regular  }
	{ bitcast_ln19_29 double 64 regular  }
	{ bitcast_ln19_31 double 64 regular  }
	{ bitcast_ln19_33 double 64 regular  }
	{ bitcast_ln19_35 double 64 regular  }
	{ bitcast_ln19_37 double 64 regular  }
	{ bitcast_ln19_39 double 64 regular  }
	{ bitcast_ln19_41 double 64 regular  }
	{ bitcast_ln19_43 double 64 regular  }
	{ bitcast_ln19_45 double 64 regular  }
	{ bitcast_ln19_47 double 64 regular  }
	{ bitcast_ln19_49 double 64 regular  }
	{ bitcast_ln19_51 double 64 regular  }
	{ bitcast_ln19_53 double 64 regular  }
	{ bitcast_ln19_55 double 64 regular  }
	{ bitcast_ln19_57 double 64 regular  }
	{ bitcast_ln19_59 double 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "C4", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sum", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bitcast_ln19_1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_3", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_5", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_7", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_9", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_11", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_13", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_15", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_17", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_19", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_21", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_23", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_25", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_27", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_29", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_31", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_33", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_35", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_37", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_39", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_41", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_43", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_45", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_47", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_49", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_51", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_53", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_55", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_57", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln19_59", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ C4_address0 sc_out sc_lv 10 signal 0 } 
	{ C4_ce0 sc_out sc_logic 1 signal 0 } 
	{ C4_q0 sc_in sc_lv 64 signal 0 } 
	{ C4_address1 sc_out sc_lv 10 signal 0 } 
	{ C4_ce1 sc_out sc_logic 1 signal 0 } 
	{ C4_q1 sc_in sc_lv 64 signal 0 } 
	{ sum_address0 sc_out sc_lv 5 signal 1 } 
	{ sum_ce0 sc_out sc_logic 1 signal 1 } 
	{ sum_we0 sc_out sc_logic 1 signal 1 } 
	{ sum_d0 sc_out sc_lv 64 signal 1 } 
	{ bitcast_ln19_1 sc_in sc_lv 64 signal 2 } 
	{ bitcast_ln19_3 sc_in sc_lv 64 signal 3 } 
	{ bitcast_ln19_5 sc_in sc_lv 64 signal 4 } 
	{ bitcast_ln19_7 sc_in sc_lv 64 signal 5 } 
	{ bitcast_ln19_9 sc_in sc_lv 64 signal 6 } 
	{ bitcast_ln19_11 sc_in sc_lv 64 signal 7 } 
	{ bitcast_ln19_13 sc_in sc_lv 64 signal 8 } 
	{ bitcast_ln19_15 sc_in sc_lv 64 signal 9 } 
	{ bitcast_ln19_17 sc_in sc_lv 64 signal 10 } 
	{ bitcast_ln19_19 sc_in sc_lv 64 signal 11 } 
	{ bitcast_ln19_21 sc_in sc_lv 64 signal 12 } 
	{ bitcast_ln19_23 sc_in sc_lv 64 signal 13 } 
	{ bitcast_ln19_25 sc_in sc_lv 64 signal 14 } 
	{ bitcast_ln19_27 sc_in sc_lv 64 signal 15 } 
	{ bitcast_ln19_29 sc_in sc_lv 64 signal 16 } 
	{ bitcast_ln19_31 sc_in sc_lv 64 signal 17 } 
	{ bitcast_ln19_33 sc_in sc_lv 64 signal 18 } 
	{ bitcast_ln19_35 sc_in sc_lv 64 signal 19 } 
	{ bitcast_ln19_37 sc_in sc_lv 64 signal 20 } 
	{ bitcast_ln19_39 sc_in sc_lv 64 signal 21 } 
	{ bitcast_ln19_41 sc_in sc_lv 64 signal 22 } 
	{ bitcast_ln19_43 sc_in sc_lv 64 signal 23 } 
	{ bitcast_ln19_45 sc_in sc_lv 64 signal 24 } 
	{ bitcast_ln19_47 sc_in sc_lv 64 signal 25 } 
	{ bitcast_ln19_49 sc_in sc_lv 64 signal 26 } 
	{ bitcast_ln19_51 sc_in sc_lv 64 signal 27 } 
	{ bitcast_ln19_53 sc_in sc_lv 64 signal 28 } 
	{ bitcast_ln19_55 sc_in sc_lv 64 signal 29 } 
	{ bitcast_ln19_57 sc_in sc_lv 64 signal 30 } 
	{ bitcast_ln19_59 sc_in sc_lv 64 signal 31 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "C4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "C4", "role": "address0" }} , 
 	{ "name": "C4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C4", "role": "ce0" }} , 
 	{ "name": "C4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C4", "role": "q0" }} , 
 	{ "name": "C4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "C4", "role": "address1" }} , 
 	{ "name": "C4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C4", "role": "ce1" }} , 
 	{ "name": "C4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C4", "role": "q1" }} , 
 	{ "name": "sum_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sum", "role": "address0" }} , 
 	{ "name": "sum_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum", "role": "ce0" }} , 
 	{ "name": "sum_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum", "role": "we0" }} , 
 	{ "name": "sum_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sum", "role": "d0" }} , 
 	{ "name": "bitcast_ln19_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_1", "role": "default" }} , 
 	{ "name": "bitcast_ln19_3", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_3", "role": "default" }} , 
 	{ "name": "bitcast_ln19_5", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_5", "role": "default" }} , 
 	{ "name": "bitcast_ln19_7", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_7", "role": "default" }} , 
 	{ "name": "bitcast_ln19_9", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_9", "role": "default" }} , 
 	{ "name": "bitcast_ln19_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_11", "role": "default" }} , 
 	{ "name": "bitcast_ln19_13", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_13", "role": "default" }} , 
 	{ "name": "bitcast_ln19_15", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_15", "role": "default" }} , 
 	{ "name": "bitcast_ln19_17", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_17", "role": "default" }} , 
 	{ "name": "bitcast_ln19_19", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_19", "role": "default" }} , 
 	{ "name": "bitcast_ln19_21", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_21", "role": "default" }} , 
 	{ "name": "bitcast_ln19_23", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_23", "role": "default" }} , 
 	{ "name": "bitcast_ln19_25", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_25", "role": "default" }} , 
 	{ "name": "bitcast_ln19_27", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_27", "role": "default" }} , 
 	{ "name": "bitcast_ln19_29", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_29", "role": "default" }} , 
 	{ "name": "bitcast_ln19_31", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_31", "role": "default" }} , 
 	{ "name": "bitcast_ln19_33", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_33", "role": "default" }} , 
 	{ "name": "bitcast_ln19_35", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_35", "role": "default" }} , 
 	{ "name": "bitcast_ln19_37", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_37", "role": "default" }} , 
 	{ "name": "bitcast_ln19_39", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_39", "role": "default" }} , 
 	{ "name": "bitcast_ln19_41", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_41", "role": "default" }} , 
 	{ "name": "bitcast_ln19_43", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_43", "role": "default" }} , 
 	{ "name": "bitcast_ln19_45", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_45", "role": "default" }} , 
 	{ "name": "bitcast_ln19_47", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_47", "role": "default" }} , 
 	{ "name": "bitcast_ln19_49", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_49", "role": "default" }} , 
 	{ "name": "bitcast_ln19_51", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_51", "role": "default" }} , 
 	{ "name": "bitcast_ln19_53", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_53", "role": "default" }} , 
 	{ "name": "bitcast_ln19_55", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_55", "role": "default" }} , 
 	{ "name": "bitcast_ln19_57", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_57", "role": "default" }} , 
 	{ "name": "bitcast_ln19_59", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln19_59", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "doitgen_Pipeline_VITIS_LOOP_16_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "597", "EstimateLatencyMax" : "597",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bitcast_ln19_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln19_59", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_16_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage10", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage10_subdone", "QuitState" : "ap_ST_fsm_pp0_stage10", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage10_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	doitgen_Pipeline_VITIS_LOOP_16_3 {
		C4 {Type I LastRead 15 FirstWrite -1}
		sum {Type O LastRead -1 FirstWrite 160}
		bitcast_ln19_1 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_3 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_5 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_7 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_9 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_11 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_13 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_15 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_17 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_19 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_21 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_23 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_25 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_27 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_29 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_31 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_33 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_35 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_37 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_39 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_41 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_43 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_45 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_47 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_49 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_51 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_53 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_55 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_57 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln19_59 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "597", "Max" : "597"}
	, {"Name" : "Interval", "Min" : "597", "Max" : "597"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	C4 { ap_memory {  { C4_address0 mem_address 1 10 }  { C4_ce0 mem_ce 1 1 }  { C4_q0 mem_dout 0 64 }  { C4_address1 MemPortADDR2 1 10 }  { C4_ce1 MemPortCE2 1 1 }  { C4_q1 MemPortDOUT2 0 64 } } }
	sum { ap_memory {  { sum_address0 mem_address 1 5 }  { sum_ce0 mem_ce 1 1 }  { sum_we0 mem_we 1 1 }  { sum_d0 mem_din 1 64 } } }
	bitcast_ln19_1 { ap_none {  { bitcast_ln19_1 in_data 0 64 } } }
	bitcast_ln19_3 { ap_none {  { bitcast_ln19_3 in_data 0 64 } } }
	bitcast_ln19_5 { ap_none {  { bitcast_ln19_5 in_data 0 64 } } }
	bitcast_ln19_7 { ap_none {  { bitcast_ln19_7 in_data 0 64 } } }
	bitcast_ln19_9 { ap_none {  { bitcast_ln19_9 in_data 0 64 } } }
	bitcast_ln19_11 { ap_none {  { bitcast_ln19_11 in_data 0 64 } } }
	bitcast_ln19_13 { ap_none {  { bitcast_ln19_13 in_data 0 64 } } }
	bitcast_ln19_15 { ap_none {  { bitcast_ln19_15 in_data 0 64 } } }
	bitcast_ln19_17 { ap_none {  { bitcast_ln19_17 in_data 0 64 } } }
	bitcast_ln19_19 { ap_none {  { bitcast_ln19_19 in_data 0 64 } } }
	bitcast_ln19_21 { ap_none {  { bitcast_ln19_21 in_data 0 64 } } }
	bitcast_ln19_23 { ap_none {  { bitcast_ln19_23 in_data 0 64 } } }
	bitcast_ln19_25 { ap_none {  { bitcast_ln19_25 in_data 0 64 } } }
	bitcast_ln19_27 { ap_none {  { bitcast_ln19_27 in_data 0 64 } } }
	bitcast_ln19_29 { ap_none {  { bitcast_ln19_29 in_data 0 64 } } }
	bitcast_ln19_31 { ap_none {  { bitcast_ln19_31 in_data 0 64 } } }
	bitcast_ln19_33 { ap_none {  { bitcast_ln19_33 in_data 0 64 } } }
	bitcast_ln19_35 { ap_none {  { bitcast_ln19_35 in_data 0 64 } } }
	bitcast_ln19_37 { ap_none {  { bitcast_ln19_37 in_data 0 64 } } }
	bitcast_ln19_39 { ap_none {  { bitcast_ln19_39 in_data 0 64 } } }
	bitcast_ln19_41 { ap_none {  { bitcast_ln19_41 in_data 0 64 } } }
	bitcast_ln19_43 { ap_none {  { bitcast_ln19_43 in_data 0 64 } } }
	bitcast_ln19_45 { ap_none {  { bitcast_ln19_45 in_data 0 64 } } }
	bitcast_ln19_47 { ap_none {  { bitcast_ln19_47 in_data 0 64 } } }
	bitcast_ln19_49 { ap_none {  { bitcast_ln19_49 in_data 0 64 } } }
	bitcast_ln19_51 { ap_none {  { bitcast_ln19_51 in_data 0 64 } } }
	bitcast_ln19_53 { ap_none {  { bitcast_ln19_53 in_data 0 64 } } }
	bitcast_ln19_55 { ap_none {  { bitcast_ln19_55 in_data 0 64 } } }
	bitcast_ln19_57 { ap_none {  { bitcast_ln19_57 in_data 0 64 } } }
	bitcast_ln19_59 { ap_none {  { bitcast_ln19_59 in_data 0 64 } } }
}
