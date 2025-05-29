set moduleName spmv_ellpack
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
set C_modelName {spmv_ellpack}
set C_modelType { void 0 }
set C_modelArgList {
	{ nzval int 64 regular {array 1048576 { 1 3 } 1 1 }  }
	{ cols int 32 regular {array 1048576 { 1 3 } 1 1 }  }
	{ vec int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ out_r int 64 regular {array 1024 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nzval", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vec", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nzval_address0 sc_out sc_lv 20 signal 0 } 
	{ nzval_ce0 sc_out sc_logic 1 signal 0 } 
	{ nzval_q0 sc_in sc_lv 64 signal 0 } 
	{ cols_address0 sc_out sc_lv 20 signal 1 } 
	{ cols_ce0 sc_out sc_logic 1 signal 1 } 
	{ cols_q0 sc_in sc_lv 32 signal 1 } 
	{ vec_address0 sc_out sc_lv 10 signal 2 } 
	{ vec_ce0 sc_out sc_logic 1 signal 2 } 
	{ vec_q0 sc_in sc_lv 64 signal 2 } 
	{ out_r_address0 sc_out sc_lv 10 signal 3 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 3 } 
	{ out_r_we0 sc_out sc_logic 1 signal 3 } 
	{ out_r_d0 sc_out sc_lv 64 signal 3 } 
	{ out_r_q0 sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nzval_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "nzval", "role": "address0" }} , 
 	{ "name": "nzval_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nzval", "role": "ce0" }} , 
 	{ "name": "nzval_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "nzval", "role": "q0" }} , 
 	{ "name": "cols_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "cols", "role": "address0" }} , 
 	{ "name": "cols_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols", "role": "ce0" }} , 
 	{ "name": "cols_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "q0" }} , 
 	{ "name": "vec_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "vec", "role": "address0" }} , 
 	{ "name": "vec_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vec", "role": "ce0" }} , 
 	{ "name": "vec_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "vec", "role": "q0" }} , 
 	{ "name": "out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "out_r", "role": "address0" }} , 
 	{ "name": "out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce0" }} , 
 	{ "name": "out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we0" }} , 
 	{ "name": "out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "d0" }} , 
 	{ "name": "out_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_r", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "spmv_ellpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4209665", "EstimateLatencyMax" : "4209665",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nzval", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_spmv_ellpack_Pipeline_ellpack_2_fu_65", "Port" : "nzval", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "cols", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_spmv_ellpack_Pipeline_ellpack_2_fu_65", "Port" : "cols", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "vec", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_spmv_ellpack_Pipeline_ellpack_2_fu_65", "Port" : "vec", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_spmv_ellpack_Pipeline_ellpack_2_fu_65", "Port" : "out_r", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "ellpack_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_spmv_ellpack_Pipeline_ellpack_2_fu_65", "Parent" : "0", "Child" : ["2", "3", "4"],
		"CDFG" : "spmv_ellpack_Pipeline_ellpack_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4107", "EstimateLatencyMax" : "4107",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sum", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln13", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "nzval", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cols", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "vec", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ellpack_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_spmv_ellpack_Pipeline_ellpack_2_fu_65.dadd_64ns_64ns_64_5_full_dsp_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_spmv_ellpack_Pipeline_ellpack_2_fu_65.dmul_64ns_64ns_64_5_max_dsp_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_spmv_ellpack_Pipeline_ellpack_2_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	spmv_ellpack {
		nzval {Type I LastRead 1 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		vec {Type I LastRead 1 FirstWrite -1}
		out_r {Type IO LastRead 1 FirstWrite 13}}
	spmv_ellpack_Pipeline_ellpack_2 {
		sum {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 13}
		zext_ln13 {Type I LastRead 0 FirstWrite -1}
		tmp_1 {Type I LastRead 0 FirstWrite -1}
		nzval {Type I LastRead 1 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		vec {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4209665", "Max" : "4209665"}
	, {"Name" : "Interval", "Min" : "4209666", "Max" : "4209666"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	nzval { ap_memory {  { nzval_address0 mem_address 1 20 }  { nzval_ce0 mem_ce 1 1 }  { nzval_q0 mem_dout 0 64 } } }
	cols { ap_memory {  { cols_address0 mem_address 1 20 }  { cols_ce0 mem_ce 1 1 }  { cols_q0 mem_dout 0 32 } } }
	vec { ap_memory {  { vec_address0 mem_address 1 10 }  { vec_ce0 mem_ce 1 1 }  { vec_q0 mem_dout 0 64 } } }
	out_r { ap_memory {  { out_r_address0 mem_address 1 10 }  { out_r_ce0 mem_ce 1 1 }  { out_r_we0 mem_we 1 1 }  { out_r_d0 mem_din 1 64 }  { out_r_q0 mem_dout 0 64 } } }
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
