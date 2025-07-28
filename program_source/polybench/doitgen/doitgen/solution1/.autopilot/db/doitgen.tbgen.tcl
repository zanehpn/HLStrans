set moduleName doitgen
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
set C_modelName {doitgen}
set C_modelType { void 0 }
set C_modelArgList {
	{ nr int 32 unused  }
	{ nq int 32 unused  }
	{ np int 32 unused  }
	{ A int 64 regular {array 15000 { 2 1 } 1 1 }  }
	{ C4 int 64 regular {array 900 { 1 1 } 1 1 }  }
	{ sum int 64 regular {array 30 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nr", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "nq", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "np", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "C4", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sum", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nr sc_in sc_lv 32 signal 0 } 
	{ nq sc_in sc_lv 32 signal 1 } 
	{ np sc_in sc_lv 32 signal 2 } 
	{ A_address0 sc_out sc_lv 14 signal 3 } 
	{ A_ce0 sc_out sc_logic 1 signal 3 } 
	{ A_we0 sc_out sc_logic 1 signal 3 } 
	{ A_d0 sc_out sc_lv 64 signal 3 } 
	{ A_q0 sc_in sc_lv 64 signal 3 } 
	{ A_address1 sc_out sc_lv 14 signal 3 } 
	{ A_ce1 sc_out sc_logic 1 signal 3 } 
	{ A_q1 sc_in sc_lv 64 signal 3 } 
	{ C4_address0 sc_out sc_lv 10 signal 4 } 
	{ C4_ce0 sc_out sc_logic 1 signal 4 } 
	{ C4_q0 sc_in sc_lv 64 signal 4 } 
	{ C4_address1 sc_out sc_lv 10 signal 4 } 
	{ C4_ce1 sc_out sc_logic 1 signal 4 } 
	{ C4_q1 sc_in sc_lv 64 signal 4 } 
	{ sum_address0 sc_out sc_lv 5 signal 5 } 
	{ sum_ce0 sc_out sc_logic 1 signal 5 } 
	{ sum_we0 sc_out sc_logic 1 signal 5 } 
	{ sum_d0 sc_out sc_lv 64 signal 5 } 
	{ sum_q0 sc_in sc_lv 64 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nr", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nr", "role": "default" }} , 
 	{ "name": "nq", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nq", "role": "default" }} , 
 	{ "name": "np", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "np", "role": "default" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we0" }} , 
 	{ "name": "A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "d0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
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
 	{ "name": "sum_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sum", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "7"],
		"CDFG" : "doitgen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "325001", "EstimateLatencyMax" : "325001",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nr", "Type" : "None", "Direction" : "I"},
			{"Name" : "nq", "Type" : "None", "Direction" : "I"},
			{"Name" : "np", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_doitgen_Pipeline_VITIS_LOOP_22_5_fu_431", "Port" : "A", "Inst_start_state" : "20", "Inst_end_state" : "21"}]},
			{"Name" : "C4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_doitgen_Pipeline_VITIS_LOOP_16_3_fu_393", "Port" : "C4", "Inst_start_state" : "18", "Inst_end_state" : "19"}]},
			{"Name" : "sum", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_doitgen_Pipeline_VITIS_LOOP_22_5_fu_431", "Port" : "sum", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "1", "SubInstance" : "grp_doitgen_Pipeline_VITIS_LOOP_16_3_fu_393", "Port" : "sum", "Inst_start_state" : "18", "Inst_end_state" : "19"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_10_1_VITIS_LOOP_13_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_16_3_fu_393", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_16_3_fu_393.dadd_64ns_64ns_64_5_full_dsp_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_16_3_fu_393.dadd_64ns_64ns_64_5_full_dsp_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_16_3_fu_393.dmul_64ns_64ns_64_5_max_dsp_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_16_3_fu_393.dmul_64ns_64ns_64_5_max_dsp_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_16_3_fu_393.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_22_5_fu_431", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "doitgen_Pipeline_VITIS_LOOP_22_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sub_ln19", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sum", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_22_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_doitgen_Pipeline_VITIS_LOOP_22_5_fu_431.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	doitgen {
		nr {Type I LastRead -1 FirstWrite -1}
		nq {Type I LastRead -1 FirstWrite -1}
		np {Type I LastRead -1 FirstWrite -1}
		A {Type IO LastRead 17 FirstWrite 2}
		C4 {Type I LastRead 15 FirstWrite -1}
		sum {Type IO LastRead 0 FirstWrite -1}}
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
		bitcast_ln19_59 {Type I LastRead 0 FirstWrite -1}}
	doitgen_Pipeline_VITIS_LOOP_22_5 {
		sub_ln19 {Type I LastRead 0 FirstWrite -1}
		A {Type O LastRead -1 FirstWrite 2}
		sum {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "325001", "Max" : "325001"}
	, {"Name" : "Interval", "Min" : "325002", "Max" : "325002"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	nr { ap_none {  { nr in_data 0 32 } } }
	nq { ap_none {  { nq in_data 0 32 } } }
	np { ap_none {  { np in_data 0 32 } } }
	A { ap_memory {  { A_address0 mem_address 1 14 }  { A_ce0 mem_ce 1 1 }  { A_we0 mem_we 1 1 }  { A_d0 mem_din 1 64 }  { A_q0 in_data 0 64 }  { A_address1 MemPortADDR2 1 14 }  { A_ce1 MemPortCE2 1 1 }  { A_q1 in_data 0 64 } } }
	C4 { ap_memory {  { C4_address0 mem_address 1 10 }  { C4_ce0 mem_ce 1 1 }  { C4_q0 mem_dout 0 64 }  { C4_address1 MemPortADDR2 1 10 }  { C4_ce1 MemPortCE2 1 1 }  { C4_q1 MemPortDOUT2 0 64 } } }
	sum { ap_memory {  { sum_address0 mem_address 1 5 }  { sum_ce0 mem_ce 1 1 }  { sum_we0 mem_we 1 1 }  { sum_d0 mem_din 1 64 }  { sum_q0 mem_dout 0 64 } } }
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
