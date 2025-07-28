set moduleName latnrm_Pipeline_VITIS_LOOP_24_2
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
set C_modelName {latnrm_Pipeline_VITIS_LOOP_24_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ empty_24 float 32 regular  }
	{ empty_25 float 32 regular  }
	{ empty_26 float 32 regular  }
	{ empty_27 float 32 regular  }
	{ empty_28 float 32 regular  }
	{ empty_29 float 32 regular  }
	{ empty_30 float 32 regular  }
	{ empty_31 float 32 regular  }
	{ int_state_V int 32 regular {array 33 { 0 0 } 0 1 }  }
	{ empty_32 float 32 regular  }
	{ empty_33 float 32 regular  }
	{ empty_34 float 32 regular  }
	{ empty_35 float 32 regular  }
	{ empty_36 float 32 regular  }
	{ empty_37 float 32 regular  }
	{ empty_38 float 32 regular  }
	{ empty_39 float 32 regular  }
	{ empty_40 float 32 regular  }
	{ empty_41 float 32 regular  }
	{ empty_42 float 32 regular  }
	{ empty_43 float 32 regular  }
	{ empty_44 float 32 regular  }
	{ empty_45 float 32 regular  }
	{ empty_46 float 32 regular  }
	{ empty_47 float 32 regular  }
	{ empty_48 float 32 regular  }
	{ empty_49 float 32 regular  }
	{ empty_50 float 32 regular  }
	{ empty_51 float 32 regular  }
	{ empty_52 float 32 regular  }
	{ empty_53 float 32 regular  }
	{ empty_54 float 32 regular  }
	{ empty_55 float 32 regular  }
	{ empty float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "empty_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "int_state_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty_32", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_33", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_34", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_35", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_36", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_37", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_38", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_39", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_40", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_41", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_42", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_43", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_44", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_45", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_46", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_47", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_48", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_49", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_50", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_51", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_52", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_53", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_54", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_55", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ empty_24 sc_in sc_lv 32 signal 0 } 
	{ empty_25 sc_in sc_lv 32 signal 1 } 
	{ empty_26 sc_in sc_lv 32 signal 2 } 
	{ empty_27 sc_in sc_lv 32 signal 3 } 
	{ empty_28 sc_in sc_lv 32 signal 4 } 
	{ empty_29 sc_in sc_lv 32 signal 5 } 
	{ empty_30 sc_in sc_lv 32 signal 6 } 
	{ empty_31 sc_in sc_lv 32 signal 7 } 
	{ int_state_V_address0 sc_out sc_lv 6 signal 8 } 
	{ int_state_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ int_state_V_we0 sc_out sc_logic 1 signal 8 } 
	{ int_state_V_d0 sc_out sc_lv 32 signal 8 } 
	{ int_state_V_address1 sc_out sc_lv 6 signal 8 } 
	{ int_state_V_ce1 sc_out sc_logic 1 signal 8 } 
	{ int_state_V_we1 sc_out sc_logic 1 signal 8 } 
	{ int_state_V_d1 sc_out sc_lv 32 signal 8 } 
	{ empty_32 sc_in sc_lv 32 signal 9 } 
	{ empty_33 sc_in sc_lv 32 signal 10 } 
	{ empty_34 sc_in sc_lv 32 signal 11 } 
	{ empty_35 sc_in sc_lv 32 signal 12 } 
	{ empty_36 sc_in sc_lv 32 signal 13 } 
	{ empty_37 sc_in sc_lv 32 signal 14 } 
	{ empty_38 sc_in sc_lv 32 signal 15 } 
	{ empty_39 sc_in sc_lv 32 signal 16 } 
	{ empty_40 sc_in sc_lv 32 signal 17 } 
	{ empty_41 sc_in sc_lv 32 signal 18 } 
	{ empty_42 sc_in sc_lv 32 signal 19 } 
	{ empty_43 sc_in sc_lv 32 signal 20 } 
	{ empty_44 sc_in sc_lv 32 signal 21 } 
	{ empty_45 sc_in sc_lv 32 signal 22 } 
	{ empty_46 sc_in sc_lv 32 signal 23 } 
	{ empty_47 sc_in sc_lv 32 signal 24 } 
	{ empty_48 sc_in sc_lv 32 signal 25 } 
	{ empty_49 sc_in sc_lv 32 signal 26 } 
	{ empty_50 sc_in sc_lv 32 signal 27 } 
	{ empty_51 sc_in sc_lv 32 signal 28 } 
	{ empty_52 sc_in sc_lv 32 signal 29 } 
	{ empty_53 sc_in sc_lv 32 signal 30 } 
	{ empty_54 sc_in sc_lv 32 signal 31 } 
	{ empty_55 sc_in sc_lv 32 signal 32 } 
	{ empty sc_in sc_lv 32 signal 33 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "empty_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_24", "role": "default" }} , 
 	{ "name": "empty_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_25", "role": "default" }} , 
 	{ "name": "empty_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_26", "role": "default" }} , 
 	{ "name": "empty_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_27", "role": "default" }} , 
 	{ "name": "empty_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_28", "role": "default" }} , 
 	{ "name": "empty_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_29", "role": "default" }} , 
 	{ "name": "empty_30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_30", "role": "default" }} , 
 	{ "name": "empty_31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_31", "role": "default" }} , 
 	{ "name": "int_state_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "int_state_V", "role": "address0" }} , 
 	{ "name": "int_state_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "int_state_V", "role": "ce0" }} , 
 	{ "name": "int_state_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "int_state_V", "role": "we0" }} , 
 	{ "name": "int_state_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "int_state_V", "role": "d0" }} , 
 	{ "name": "int_state_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "int_state_V", "role": "address1" }} , 
 	{ "name": "int_state_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "int_state_V", "role": "ce1" }} , 
 	{ "name": "int_state_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "int_state_V", "role": "we1" }} , 
 	{ "name": "int_state_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "int_state_V", "role": "d1" }} , 
 	{ "name": "empty_32", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_32", "role": "default" }} , 
 	{ "name": "empty_33", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_33", "role": "default" }} , 
 	{ "name": "empty_34", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_34", "role": "default" }} , 
 	{ "name": "empty_35", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_35", "role": "default" }} , 
 	{ "name": "empty_36", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_36", "role": "default" }} , 
 	{ "name": "empty_37", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_37", "role": "default" }} , 
 	{ "name": "empty_38", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_38", "role": "default" }} , 
 	{ "name": "empty_39", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_39", "role": "default" }} , 
 	{ "name": "empty_40", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_40", "role": "default" }} , 
 	{ "name": "empty_41", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_41", "role": "default" }} , 
 	{ "name": "empty_42", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_42", "role": "default" }} , 
 	{ "name": "empty_43", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_43", "role": "default" }} , 
 	{ "name": "empty_44", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_44", "role": "default" }} , 
 	{ "name": "empty_45", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_45", "role": "default" }} , 
 	{ "name": "empty_46", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_46", "role": "default" }} , 
 	{ "name": "empty_47", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_47", "role": "default" }} , 
 	{ "name": "empty_48", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_48", "role": "default" }} , 
 	{ "name": "empty_49", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_49", "role": "default" }} , 
 	{ "name": "empty_50", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_50", "role": "default" }} , 
 	{ "name": "empty_51", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_51", "role": "default" }} , 
 	{ "name": "empty_52", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_52", "role": "default" }} , 
 	{ "name": "empty_53", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_53", "role": "default" }} , 
 	{ "name": "empty_54", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_54", "role": "default" }} , 
 	{ "name": "empty_55", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_55", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "latnrm_Pipeline_VITIS_LOOP_24_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "int_state_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "empty_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_24_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U74", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U75", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_336_32_1_1_U76", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_296_32_1_1_U77", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_296_32_1_1_U78", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_296_32_1_1_U79", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	latnrm_Pipeline_VITIS_LOOP_24_2 {
		empty_24 {Type I LastRead 0 FirstWrite -1}
		empty_25 {Type I LastRead 0 FirstWrite -1}
		empty_26 {Type I LastRead 0 FirstWrite -1}
		empty_27 {Type I LastRead 0 FirstWrite -1}
		empty_28 {Type I LastRead 0 FirstWrite -1}
		empty_29 {Type I LastRead 0 FirstWrite -1}
		empty_30 {Type I LastRead 0 FirstWrite -1}
		empty_31 {Type I LastRead 0 FirstWrite -1}
		int_state_V {Type O LastRead -1 FirstWrite 3}
		empty_32 {Type I LastRead 0 FirstWrite -1}
		empty_33 {Type I LastRead 0 FirstWrite -1}
		empty_34 {Type I LastRead 0 FirstWrite -1}
		empty_35 {Type I LastRead 0 FirstWrite -1}
		empty_36 {Type I LastRead 0 FirstWrite -1}
		empty_37 {Type I LastRead 0 FirstWrite -1}
		empty_38 {Type I LastRead 0 FirstWrite -1}
		empty_39 {Type I LastRead 0 FirstWrite -1}
		empty_40 {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		empty_42 {Type I LastRead 0 FirstWrite -1}
		empty_43 {Type I LastRead 0 FirstWrite -1}
		empty_44 {Type I LastRead 0 FirstWrite -1}
		empty_45 {Type I LastRead 0 FirstWrite -1}
		empty_46 {Type I LastRead 0 FirstWrite -1}
		empty_47 {Type I LastRead 0 FirstWrite -1}
		empty_48 {Type I LastRead 0 FirstWrite -1}
		empty_49 {Type I LastRead 0 FirstWrite -1}
		empty_50 {Type I LastRead 0 FirstWrite -1}
		empty_51 {Type I LastRead 0 FirstWrite -1}
		empty_52 {Type I LastRead 0 FirstWrite -1}
		empty_53 {Type I LastRead 0 FirstWrite -1}
		empty_54 {Type I LastRead 0 FirstWrite -1}
		empty_55 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "23"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "23"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	empty_24 { ap_none {  { empty_24 in_data 0 32 } } }
	empty_25 { ap_none {  { empty_25 in_data 0 32 } } }
	empty_26 { ap_none {  { empty_26 in_data 0 32 } } }
	empty_27 { ap_none {  { empty_27 in_data 0 32 } } }
	empty_28 { ap_none {  { empty_28 in_data 0 32 } } }
	empty_29 { ap_none {  { empty_29 in_data 0 32 } } }
	empty_30 { ap_none {  { empty_30 in_data 0 32 } } }
	empty_31 { ap_none {  { empty_31 in_data 0 32 } } }
	int_state_V { ap_memory {  { int_state_V_address0 mem_address 1 6 }  { int_state_V_ce0 mem_ce 1 1 }  { int_state_V_we0 mem_we 1 1 }  { int_state_V_d0 mem_din 1 32 }  { int_state_V_address1 MemPortADDR2 1 6 }  { int_state_V_ce1 MemPortCE2 1 1 }  { int_state_V_we1 MemPortWE2 1 1 }  { int_state_V_d1 MemPortDIN2 1 32 } } }
	empty_32 { ap_none {  { empty_32 in_data 0 32 } } }
	empty_33 { ap_none {  { empty_33 in_data 0 32 } } }
	empty_34 { ap_none {  { empty_34 in_data 0 32 } } }
	empty_35 { ap_none {  { empty_35 in_data 0 32 } } }
	empty_36 { ap_none {  { empty_36 in_data 0 32 } } }
	empty_37 { ap_none {  { empty_37 in_data 0 32 } } }
	empty_38 { ap_none {  { empty_38 in_data 0 32 } } }
	empty_39 { ap_none {  { empty_39 in_data 0 32 } } }
	empty_40 { ap_none {  { empty_40 in_data 0 32 } } }
	empty_41 { ap_none {  { empty_41 in_data 0 32 } } }
	empty_42 { ap_none {  { empty_42 in_data 0 32 } } }
	empty_43 { ap_none {  { empty_43 in_data 0 32 } } }
	empty_44 { ap_none {  { empty_44 in_data 0 32 } } }
	empty_45 { ap_none {  { empty_45 in_data 0 32 } } }
	empty_46 { ap_none {  { empty_46 in_data 0 32 } } }
	empty_47 { ap_none {  { empty_47 in_data 0 32 } } }
	empty_48 { ap_none {  { empty_48 in_data 0 32 } } }
	empty_49 { ap_none {  { empty_49 in_data 0 32 } } }
	empty_50 { ap_none {  { empty_50 in_data 0 32 } } }
	empty_51 { ap_none {  { empty_51 in_data 0 32 } } }
	empty_52 { ap_none {  { empty_52 in_data 0 32 } } }
	empty_53 { ap_none {  { empty_53 in_data 0 32 } } }
	empty_54 { ap_none {  { empty_54 in_data 0 32 } } }
	empty_55 { ap_none {  { empty_55 in_data 0 32 } } }
	empty { ap_none {  { empty in_data 0 32 } } }
}
