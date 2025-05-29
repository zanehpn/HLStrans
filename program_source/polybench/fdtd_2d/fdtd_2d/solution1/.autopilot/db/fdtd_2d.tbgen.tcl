set moduleName fdtd_2d
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
set C_modelName {fdtd_2d}
set C_modelType { void 0 }
set C_modelArgList {
	{ tmax int 32 unused  }
	{ nx int 32 unused  }
	{ ny int 32 unused  }
	{ ex int 64 regular {array 4800 { 2 1 } 1 1 }  }
	{ ey int 64 regular {array 4800 { 2 1 } 1 1 }  }
	{ hz int 64 regular {array 4800 { 2 1 } 1 1 }  }
	{ p_fict_s int 64 regular {array 40 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tmax", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "nx", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ny", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ex", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "ey", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "hz", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "p_fict_s", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tmax sc_in sc_lv 32 signal 0 } 
	{ nx sc_in sc_lv 32 signal 1 } 
	{ ny sc_in sc_lv 32 signal 2 } 
	{ ex_address0 sc_out sc_lv 13 signal 3 } 
	{ ex_ce0 sc_out sc_logic 1 signal 3 } 
	{ ex_we0 sc_out sc_logic 1 signal 3 } 
	{ ex_d0 sc_out sc_lv 64 signal 3 } 
	{ ex_q0 sc_in sc_lv 64 signal 3 } 
	{ ex_address1 sc_out sc_lv 13 signal 3 } 
	{ ex_ce1 sc_out sc_logic 1 signal 3 } 
	{ ex_q1 sc_in sc_lv 64 signal 3 } 
	{ ey_address0 sc_out sc_lv 13 signal 4 } 
	{ ey_ce0 sc_out sc_logic 1 signal 4 } 
	{ ey_we0 sc_out sc_logic 1 signal 4 } 
	{ ey_d0 sc_out sc_lv 64 signal 4 } 
	{ ey_q0 sc_in sc_lv 64 signal 4 } 
	{ ey_address1 sc_out sc_lv 13 signal 4 } 
	{ ey_ce1 sc_out sc_logic 1 signal 4 } 
	{ ey_q1 sc_in sc_lv 64 signal 4 } 
	{ hz_address0 sc_out sc_lv 13 signal 5 } 
	{ hz_ce0 sc_out sc_logic 1 signal 5 } 
	{ hz_we0 sc_out sc_logic 1 signal 5 } 
	{ hz_d0 sc_out sc_lv 64 signal 5 } 
	{ hz_q0 sc_in sc_lv 64 signal 5 } 
	{ hz_address1 sc_out sc_lv 13 signal 5 } 
	{ hz_ce1 sc_out sc_logic 1 signal 5 } 
	{ hz_q1 sc_in sc_lv 64 signal 5 } 
	{ p_fict_s_address0 sc_out sc_lv 6 signal 6 } 
	{ p_fict_s_ce0 sc_out sc_logic 1 signal 6 } 
	{ p_fict_s_q0 sc_in sc_lv 64 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tmax", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmax", "role": "default" }} , 
 	{ "name": "nx", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nx", "role": "default" }} , 
 	{ "name": "ny", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ny", "role": "default" }} , 
 	{ "name": "ex_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ex", "role": "address0" }} , 
 	{ "name": "ex_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ex", "role": "ce0" }} , 
 	{ "name": "ex_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ex", "role": "we0" }} , 
 	{ "name": "ex_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ex", "role": "d0" }} , 
 	{ "name": "ex_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ex", "role": "q0" }} , 
 	{ "name": "ex_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ex", "role": "address1" }} , 
 	{ "name": "ex_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ex", "role": "ce1" }} , 
 	{ "name": "ex_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ex", "role": "q1" }} , 
 	{ "name": "ey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ey", "role": "address0" }} , 
 	{ "name": "ey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ey", "role": "ce0" }} , 
 	{ "name": "ey_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ey", "role": "we0" }} , 
 	{ "name": "ey_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ey", "role": "d0" }} , 
 	{ "name": "ey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ey", "role": "q0" }} , 
 	{ "name": "ey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ey", "role": "address1" }} , 
 	{ "name": "ey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ey", "role": "ce1" }} , 
 	{ "name": "ey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ey", "role": "q1" }} , 
 	{ "name": "hz_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "hz", "role": "address0" }} , 
 	{ "name": "hz_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hz", "role": "ce0" }} , 
 	{ "name": "hz_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hz", "role": "we0" }} , 
 	{ "name": "hz_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hz", "role": "d0" }} , 
 	{ "name": "hz_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hz", "role": "q0" }} , 
 	{ "name": "hz_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "hz", "role": "address1" }} , 
 	{ "name": "hz_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hz", "role": "ce1" }} , 
 	{ "name": "hz_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hz", "role": "q1" }} , 
 	{ "name": "p_fict_s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_fict_s", "role": "address0" }} , 
 	{ "name": "p_fict_s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_fict_s", "role": "ce0" }} , 
 	{ "name": "p_fict_s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_fict_s", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "11", "12", "13"],
		"CDFG" : "fdtd_2d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "571201", "EstimateLatencyMax" : "571201",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tmax", "Type" : "None", "Direction" : "I"},
			{"Name" : "nx", "Type" : "None", "Direction" : "I"},
			{"Name" : "ny", "Type" : "None", "Direction" : "I"},
			{"Name" : "ex", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_fdtd_2d_Pipeline_VITIS_LOOP_27_5_VITIS_LOOP_29_6_fu_90", "Port" : "ex", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "7", "SubInstance" : "grp_fdtd_2d_Pipeline_VITIS_LOOP_36_7_VITIS_LOOP_38_8_fu_98", "Port" : "ex", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "ey", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_fdtd_2d_Pipeline_VITIS_LOOP_18_3_VITIS_LOOP_20_4_fu_82", "Port" : "ey", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "1", "SubInstance" : "grp_fdtd_2d_Pipeline_VITIS_LOOP_12_2_fu_75", "Port" : "ey", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "7", "SubInstance" : "grp_fdtd_2d_Pipeline_VITIS_LOOP_36_7_VITIS_LOOP_38_8_fu_98", "Port" : "ey", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "hz", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_fdtd_2d_Pipeline_VITIS_LOOP_18_3_VITIS_LOOP_20_4_fu_82", "Port" : "hz", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "5", "SubInstance" : "grp_fdtd_2d_Pipeline_VITIS_LOOP_27_5_VITIS_LOOP_29_6_fu_90", "Port" : "hz", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "7", "SubInstance" : "grp_fdtd_2d_Pipeline_VITIS_LOOP_36_7_VITIS_LOOP_38_8_fu_98", "Port" : "hz", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "p_fict_s", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_10_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fdtd_2d_Pipeline_VITIS_LOOP_12_2_fu_75", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "fdtd_2d_Pipeline_VITIS_LOOP_12_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "82", "EstimateLatencyMax" : "82",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ey", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_fict_s_load", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_12_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fdtd_2d_Pipeline_VITIS_LOOP_12_2_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fdtd_2d_Pipeline_VITIS_LOOP_18_3_VITIS_LOOP_20_4_fu_82", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "fdtd_2d_Pipeline_VITIS_LOOP_18_3_VITIS_LOOP_20_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4739", "EstimateLatencyMax" : "4739",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "hz", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_18_3_VITIS_LOOP_20_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fdtd_2d_Pipeline_VITIS_LOOP_18_3_VITIS_LOOP_20_4_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fdtd_2d_Pipeline_VITIS_LOOP_27_5_VITIS_LOOP_29_6_fu_90", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "fdtd_2d_Pipeline_VITIS_LOOP_27_5_VITIS_LOOP_29_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4759", "EstimateLatencyMax" : "4759",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ex", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "hz", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_5_VITIS_LOOP_29_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fdtd_2d_Pipeline_VITIS_LOOP_27_5_VITIS_LOOP_29_6_fu_90.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fdtd_2d_Pipeline_VITIS_LOOP_36_7_VITIS_LOOP_38_8_fu_98", "Parent" : "0", "Child" : ["8", "9", "10"],
		"CDFG" : "fdtd_2d_Pipeline_VITIS_LOOP_36_7_VITIS_LOOP_38_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4690", "EstimateLatencyMax" : "4690",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ex", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hz", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_36_7_VITIS_LOOP_38_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter28", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter28", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fdtd_2d_Pipeline_VITIS_LOOP_36_7_VITIS_LOOP_38_8_fu_98.dsub_64ns_64ns_64_5_full_dsp_1_U15", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fdtd_2d_Pipeline_VITIS_LOOP_36_7_VITIS_LOOP_38_8_fu_98.dsub_64ns_64ns_64_5_full_dsp_1_U16", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fdtd_2d_Pipeline_VITIS_LOOP_36_7_VITIS_LOOP_38_8_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_5_full_dsp_1_U21", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_5_full_dsp_1_U22", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U23", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fdtd_2d {
		tmax {Type I LastRead -1 FirstWrite -1}
		nx {Type I LastRead -1 FirstWrite -1}
		ny {Type I LastRead -1 FirstWrite -1}
		ex {Type IO LastRead 11 FirstWrite -1}
		ey {Type IO LastRead 11 FirstWrite -1}
		hz {Type IO LastRead 21 FirstWrite -1}
		p_fict_s {Type I LastRead 1 FirstWrite -1}}
	fdtd_2d_Pipeline_VITIS_LOOP_12_2 {
		ey {Type O LastRead -1 FirstWrite 0}
		p_fict_s_load {Type I LastRead 0 FirstWrite -1}}
	fdtd_2d_Pipeline_VITIS_LOOP_18_3_VITIS_LOOP_20_4 {
		ey {Type IO LastRead 11 FirstWrite 18}
		hz {Type I LastRead 2 FirstWrite -1}}
	fdtd_2d_Pipeline_VITIS_LOOP_27_5_VITIS_LOOP_29_6 {
		ex {Type IO LastRead 11 FirstWrite 18}
		hz {Type I LastRead 2 FirstWrite -1}}
	fdtd_2d_Pipeline_VITIS_LOOP_36_7_VITIS_LOOP_38_8 {
		ex {Type I LastRead 2 FirstWrite -1}
		ey {Type I LastRead 11 FirstWrite -1}
		hz {Type IO LastRead 21 FirstWrite 28}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "571201", "Max" : "571201"}
	, {"Name" : "Interval", "Min" : "571202", "Max" : "571202"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	tmax { ap_none {  { tmax in_data 0 32 } } }
	nx { ap_none {  { nx in_data 0 32 } } }
	ny { ap_none {  { ny in_data 0 32 } } }
	ex { ap_memory {  { ex_address0 mem_address 1 13 }  { ex_ce0 mem_ce 1 1 }  { ex_we0 mem_we 1 1 }  { ex_d0 mem_din 1 64 }  { ex_q0 mem_dout 0 64 }  { ex_address1 MemPortADDR2 1 13 }  { ex_ce1 MemPortCE2 1 1 }  { ex_q1 MemPortDOUT2 0 64 } } }
	ey { ap_memory {  { ey_address0 mem_address 1 13 }  { ey_ce0 mem_ce 1 1 }  { ey_we0 mem_we 1 1 }  { ey_d0 mem_din 1 64 }  { ey_q0 mem_dout 0 64 }  { ey_address1 MemPortADDR2 1 13 }  { ey_ce1 MemPortCE2 1 1 }  { ey_q1 MemPortDOUT2 0 64 } } }
	hz { ap_memory {  { hz_address0 mem_address 1 13 }  { hz_ce0 mem_ce 1 1 }  { hz_we0 mem_we 1 1 }  { hz_d0 mem_din 1 64 }  { hz_q0 mem_dout 0 64 }  { hz_address1 MemPortADDR2 1 13 }  { hz_ce1 MemPortCE2 1 1 }  { hz_q1 MemPortDOUT2 0 64 } } }
	p_fict_s { ap_memory {  { p_fict_s_address0 mem_address 1 6 }  { p_fict_s_ce0 mem_ce 1 1 }  { p_fict_s_q0 mem_dout 0 64 } } }
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
