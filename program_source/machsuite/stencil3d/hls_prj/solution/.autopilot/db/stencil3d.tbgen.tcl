set moduleName stencil3d
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
set C_modelName {stencil3d}
set C_modelType { void 0 }
set C_modelArgList {
	{ C int 32 regular {array 2 { 1 1 } 1 1 }  }
	{ orig int 32 regular {array 16384 { 1 1 } 1 1 }  }
	{ sol int 32 regular {array 16384 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "C", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "orig", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sol", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ C_address0 sc_out sc_lv 1 signal 0 } 
	{ C_ce0 sc_out sc_logic 1 signal 0 } 
	{ C_q0 sc_in sc_lv 32 signal 0 } 
	{ C_address1 sc_out sc_lv 1 signal 0 } 
	{ C_ce1 sc_out sc_logic 1 signal 0 } 
	{ C_q1 sc_in sc_lv 32 signal 0 } 
	{ orig_address0 sc_out sc_lv 14 signal 1 } 
	{ orig_ce0 sc_out sc_logic 1 signal 1 } 
	{ orig_q0 sc_in sc_lv 32 signal 1 } 
	{ orig_address1 sc_out sc_lv 14 signal 1 } 
	{ orig_ce1 sc_out sc_logic 1 signal 1 } 
	{ orig_q1 sc_in sc_lv 32 signal 1 } 
	{ sol_address0 sc_out sc_lv 14 signal 2 } 
	{ sol_ce0 sc_out sc_logic 1 signal 2 } 
	{ sol_we0 sc_out sc_logic 1 signal 2 } 
	{ sol_d0 sc_out sc_lv 32 signal 2 } 
	{ sol_address1 sc_out sc_lv 14 signal 2 } 
	{ sol_ce1 sc_out sc_logic 1 signal 2 } 
	{ sol_we1 sc_out sc_logic 1 signal 2 } 
	{ sol_d1 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "q0" }} , 
 	{ "name": "C_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "address1" }} , 
 	{ "name": "C_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce1" }} , 
 	{ "name": "C_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "q1" }} , 
 	{ "name": "orig_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "orig", "role": "address0" }} , 
 	{ "name": "orig_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "orig", "role": "ce0" }} , 
 	{ "name": "orig_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "orig", "role": "q0" }} , 
 	{ "name": "orig_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "orig", "role": "address1" }} , 
 	{ "name": "orig_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "orig", "role": "ce1" }} , 
 	{ "name": "orig_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "orig", "role": "q1" }} , 
 	{ "name": "sol_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "sol", "role": "address0" }} , 
 	{ "name": "sol_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sol", "role": "ce0" }} , 
 	{ "name": "sol_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sol", "role": "we0" }} , 
 	{ "name": "sol_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sol", "role": "d0" }} , 
 	{ "name": "sol_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "sol", "role": "address1" }} , 
 	{ "name": "sol_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sol", "role": "ce1" }} , 
 	{ "name": "sol_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sol", "role": "we1" }} , 
 	{ "name": "sol_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sol", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7"],
		"CDFG" : "stencil3d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "52821", "EstimateLatencyMax" : "52821",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "orig", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_61", "Port" : "orig", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_69", "Port" : "orig", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "7", "SubInstance" : "grp_stencil3d_Pipeline_loop_height_loop_col_loop_row_fu_85", "Port" : "orig", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "5", "SubInstance" : "grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_77", "Port" : "orig", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "sol", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_61", "Port" : "sol", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_69", "Port" : "sol", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "7", "SubInstance" : "grp_stencil3d_Pipeline_loop_height_loop_col_loop_row_fu_85", "Port" : "sol", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "5", "SubInstance" : "grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_77", "Port" : "sol", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_61", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "stencil3d_Pipeline_height_bound_col_height_bound_row",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "orig", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sol", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "height_bound_col_height_bound_row", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stencil3d_Pipeline_height_bound_col_height_bound_row_fu_61.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_69", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "stencil3d_Pipeline_col_bound_height_col_bound_row",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "482", "EstimateLatencyMax" : "482",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "orig", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sol", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "col_bound_height_col_bound_row", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stencil3d_Pipeline_col_bound_height_col_bound_row_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_77", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "stencil3d_Pipeline_row_bound_height_row_bound_col",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "902", "EstimateLatencyMax" : "902",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "orig", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sol", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "row_bound_height_row_bound_col", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stencil3d_Pipeline_row_bound_height_row_bound_col_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_stencil3d_Pipeline_loop_height_loop_col_loop_row_fu_85", "Parent" : "0", "Child" : ["8", "9", "10"],
		"CDFG" : "stencil3d_Pipeline_loop_height_loop_col_loop_row",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50404", "EstimateLatencyMax" : "50404",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "orig", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sol", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_height_loop_col_loop_row", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stencil3d_Pipeline_loop_height_loop_col_loop_row_fu_85.mul_32s_32s_32_1_1_U7", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stencil3d_Pipeline_loop_height_loop_col_loop_row_fu_85.mul_32s_32s_32_1_1_U8", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stencil3d_Pipeline_loop_height_loop_col_loop_row_fu_85.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	stencil3d {
		C {Type I LastRead 6 FirstWrite -1}
		orig {Type I LastRead 5 FirstWrite -1}
		sol {Type O LastRead -1 FirstWrite 1}}
	stencil3d_Pipeline_height_bound_col_height_bound_row {
		orig {Type I LastRead 1 FirstWrite -1}
		sol {Type O LastRead -1 FirstWrite 1}}
	stencil3d_Pipeline_col_bound_height_col_bound_row {
		orig {Type I LastRead 1 FirstWrite -1}
		sol {Type O LastRead -1 FirstWrite 1}}
	stencil3d_Pipeline_row_bound_height_row_bound_col {
		orig {Type I LastRead 1 FirstWrite -1}
		sol {Type O LastRead -1 FirstWrite 1}}
	stencil3d_Pipeline_loop_height_loop_col_loop_row {
		orig {Type I LastRead 5 FirstWrite -1}
		C_load {Type I LastRead 0 FirstWrite -1}
		C_load_1 {Type I LastRead 0 FirstWrite -1}
		sol {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "52821", "Max" : "52821"}
	, {"Name" : "Interval", "Min" : "52822", "Max" : "52822"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	C { ap_memory {  { C_address0 mem_address 1 1 }  { C_ce0 mem_ce 1 1 }  { C_q0 mem_dout 0 32 }  { C_address1 MemPortADDR2 1 1 }  { C_ce1 MemPortCE2 1 1 }  { C_q1 MemPortDOUT2 0 32 } } }
	orig { ap_memory {  { orig_address0 mem_address 1 14 }  { orig_ce0 mem_ce 1 1 }  { orig_q0 mem_dout 0 32 }  { orig_address1 MemPortADDR2 1 14 }  { orig_ce1 MemPortCE2 1 1 }  { orig_q1 MemPortDOUT2 0 32 } } }
	sol { ap_memory {  { sol_address0 mem_address 1 14 }  { sol_ce0 mem_ce 1 1 }  { sol_we0 mem_we 1 1 }  { sol_d0 mem_din 1 32 }  { sol_address1 MemPortADDR2 1 14 }  { sol_ce1 MemPortCE2 1 1 }  { sol_we1 MemPortWE2 1 1 }  { sol_d1 MemPortDIN2 1 32 } } }
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
