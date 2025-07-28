set moduleName mvt
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
set C_modelName {mvt}
set C_modelType { void 0 }
set C_modelArgList {
	{ A int 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ x1 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ x2 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ y1 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ y2 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ x1_out int 32 regular {array 64 { 0 3 } 0 1 }  }
	{ x2_out int 32 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x1_out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x2_out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
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
	{ x1_address0 sc_out sc_lv 6 signal 1 } 
	{ x1_ce0 sc_out sc_logic 1 signal 1 } 
	{ x1_q0 sc_in sc_lv 32 signal 1 } 
	{ x2_address0 sc_out sc_lv 6 signal 2 } 
	{ x2_ce0 sc_out sc_logic 1 signal 2 } 
	{ x2_q0 sc_in sc_lv 32 signal 2 } 
	{ y1_address0 sc_out sc_lv 6 signal 3 } 
	{ y1_ce0 sc_out sc_logic 1 signal 3 } 
	{ y1_q0 sc_in sc_lv 32 signal 3 } 
	{ y2_address0 sc_out sc_lv 6 signal 4 } 
	{ y2_ce0 sc_out sc_logic 1 signal 4 } 
	{ y2_q0 sc_in sc_lv 32 signal 4 } 
	{ x1_out_address0 sc_out sc_lv 6 signal 5 } 
	{ x1_out_ce0 sc_out sc_logic 1 signal 5 } 
	{ x1_out_we0 sc_out sc_logic 1 signal 5 } 
	{ x1_out_d0 sc_out sc_lv 32 signal 5 } 
	{ x2_out_address0 sc_out sc_lv 6 signal 6 } 
	{ x2_out_ce0 sc_out sc_logic 1 signal 6 } 
	{ x2_out_we0 sc_out sc_logic 1 signal 6 } 
	{ x2_out_d0 sc_out sc_lv 32 signal 6 } 
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
 	{ "name": "x1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x1", "role": "address0" }} , 
 	{ "name": "x1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x1", "role": "ce0" }} , 
 	{ "name": "x1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x1", "role": "q0" }} , 
 	{ "name": "x2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x2", "role": "address0" }} , 
 	{ "name": "x2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x2", "role": "ce0" }} , 
 	{ "name": "x2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x2", "role": "q0" }} , 
 	{ "name": "y1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "y1", "role": "address0" }} , 
 	{ "name": "y1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y1", "role": "ce0" }} , 
 	{ "name": "y1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y1", "role": "q0" }} , 
 	{ "name": "y2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "y2", "role": "address0" }} , 
 	{ "name": "y2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y2", "role": "ce0" }} , 
 	{ "name": "y2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y2", "role": "q0" }} , 
 	{ "name": "x1_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x1_out", "role": "address0" }} , 
 	{ "name": "x1_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x1_out", "role": "ce0" }} , 
 	{ "name": "x1_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x1_out", "role": "we0" }} , 
 	{ "name": "x1_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x1_out", "role": "d0" }} , 
 	{ "name": "x2_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x2_out", "role": "address0" }} , 
 	{ "name": "x2_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x2_out", "role": "ce0" }} , 
 	{ "name": "x2_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x2_out", "role": "we0" }} , 
 	{ "name": "x2_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x2_out", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "8", "10", "12", "14", "15", "16", "17"],
		"CDFG" : "mvt",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6843", "EstimateLatencyMax" : "6843",
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
					{"ID" : "6", "SubInstance" : "grp_mvt_Pipeline_lprd_1_fu_1228", "Port" : "A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "x1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mvt_Pipeline_lprd_1_fu_1228", "Port" : "x1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "x2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mvt_Pipeline_lprd_1_fu_1228", "Port" : "x2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "y1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mvt_Pipeline_lprd_1_fu_1228", "Port" : "y1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "y2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mvt_Pipeline_lprd_1_fu_1228", "Port" : "y2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "x1_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_mvt_Pipeline_lpwr_fu_1396", "Port" : "x1_out", "Inst_start_state" : "39", "Inst_end_state" : "40"}]},
			{"Name" : "x2_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_mvt_Pipeline_lpwr_fu_1396", "Port" : "x2_out", "Inst_start_state" : "39", "Inst_end_state" : "40"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_A_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_x1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_x2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_y1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_y2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mvt_Pipeline_lprd_1_fu_1228", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "mvt_Pipeline_lprd_1",
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
			{"Name" : "buff_A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_x1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_x2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "y1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_y1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "y2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_y2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lprd_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mvt_Pipeline_lprd_1_fu_1228.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mvt_Pipeline_lp1_fu_1252", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "mvt_Pipeline_lp1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2344", "EstimateLatencyMax" : "2344",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_x1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_y1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y1_load_63", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "lp1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage6", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage6_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mvt_Pipeline_lp1_fu_1252.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mvt_Pipeline_lp3_fu_1324", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "mvt_Pipeline_lp3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2344", "EstimateLatencyMax" : "2344",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_x2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buff_y2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_y2_load_63", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "lp3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage6", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage6_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mvt_Pipeline_lp3_fu_1324.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mvt_Pipeline_lpwr_fu_1396", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "mvt_Pipeline_lpwr",
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
			{"Name" : "buff_x1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x1_out", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_x2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x2_out", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lpwr", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mvt_Pipeline_lpwr_fu_1396.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U155", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U156", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U157", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U158", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mvt {
		A {Type I LastRead 32 FirstWrite -1}
		x1 {Type I LastRead 0 FirstWrite -1}
		x2 {Type I LastRead 0 FirstWrite -1}
		y1 {Type I LastRead 0 FirstWrite -1}
		y2 {Type I LastRead 0 FirstWrite -1}
		x1_out {Type O LastRead -1 FirstWrite 1}
		x2_out {Type O LastRead -1 FirstWrite 1}}
	mvt_Pipeline_lprd_1 {
		A {Type I LastRead 32 FirstWrite -1}
		buff_A {Type O LastRead -1 FirstWrite 1}
		x1 {Type I LastRead 0 FirstWrite -1}
		buff_x1 {Type O LastRead -1 FirstWrite 1}
		x2 {Type I LastRead 0 FirstWrite -1}
		buff_x2 {Type O LastRead -1 FirstWrite 1}
		y1 {Type I LastRead 0 FirstWrite -1}
		buff_y1 {Type O LastRead -1 FirstWrite 1}
		y2 {Type I LastRead 0 FirstWrite -1}
		buff_y2 {Type O LastRead -1 FirstWrite 1}}
	mvt_Pipeline_lp1 {
		buff_A {Type I LastRead 32 FirstWrite -1}
		buff_x1 {Type IO LastRead 0 FirstWrite 326}
		buff_y1_load {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_1 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_2 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_3 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_4 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_5 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_6 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_7 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_8 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_9 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_10 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_11 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_12 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_13 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_14 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_15 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_16 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_17 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_18 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_19 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_20 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_21 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_22 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_23 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_24 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_25 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_26 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_27 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_28 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_29 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_30 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_31 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_32 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_33 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_34 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_35 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_36 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_37 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_38 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_39 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_40 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_41 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_42 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_43 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_44 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_45 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_46 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_47 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_48 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_49 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_50 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_51 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_52 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_53 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_54 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_55 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_56 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_57 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_58 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_59 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_60 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_61 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_62 {Type I LastRead 0 FirstWrite -1}
		buff_y1_load_63 {Type I LastRead 0 FirstWrite -1}}
	mvt_Pipeline_lp3 {
		buff_A {Type I LastRead 32 FirstWrite -1}
		buff_x2 {Type IO LastRead 0 FirstWrite 326}
		buff_y2_load {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_1 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_2 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_3 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_4 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_5 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_6 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_7 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_8 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_9 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_10 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_11 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_12 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_13 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_14 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_15 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_16 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_17 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_18 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_19 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_20 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_21 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_22 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_23 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_24 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_25 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_26 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_27 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_28 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_29 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_30 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_31 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_32 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_33 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_34 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_35 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_36 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_37 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_38 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_39 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_40 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_41 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_42 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_43 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_44 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_45 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_46 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_47 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_48 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_49 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_50 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_51 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_52 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_53 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_54 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_55 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_56 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_57 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_58 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_59 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_60 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_61 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_62 {Type I LastRead 0 FirstWrite -1}
		buff_y2_load_63 {Type I LastRead 0 FirstWrite -1}}
	mvt_Pipeline_lpwr {
		buff_x1 {Type I LastRead 0 FirstWrite -1}
		x1_out {Type O LastRead -1 FirstWrite 1}
		buff_x2 {Type I LastRead 0 FirstWrite -1}
		x2_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6843", "Max" : "6843"}
	, {"Name" : "Interval", "Min" : "6844", "Max" : "6844"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A { ap_memory {  { A_address0 mem_address 1 12 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 32 }  { A_address1 MemPortADDR2 1 12 }  { A_ce1 MemPortCE2 1 1 }  { A_q1 MemPortDOUT2 0 32 } } }
	x1 { ap_memory {  { x1_address0 mem_address 1 6 }  { x1_ce0 mem_ce 1 1 }  { x1_q0 mem_dout 0 32 } } }
	x2 { ap_memory {  { x2_address0 mem_address 1 6 }  { x2_ce0 mem_ce 1 1 }  { x2_q0 mem_dout 0 32 } } }
	y1 { ap_memory {  { y1_address0 mem_address 1 6 }  { y1_ce0 mem_ce 1 1 }  { y1_q0 mem_dout 0 32 } } }
	y2 { ap_memory {  { y2_address0 mem_address 1 6 }  { y2_ce0 mem_ce 1 1 }  { y2_q0 mem_dout 0 32 } } }
	x1_out { ap_memory {  { x1_out_address0 mem_address 1 6 }  { x1_out_ce0 mem_ce 1 1 }  { x1_out_we0 mem_we 1 1 }  { x1_out_d0 mem_din 1 32 } } }
	x2_out { ap_memory {  { x2_out_address0 mem_address 1 6 }  { x2_out_ce0 mem_ce 1 1 }  { x2_out_we0 mem_we 1 1 }  { x2_out_d0 mem_din 1 32 } } }
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
