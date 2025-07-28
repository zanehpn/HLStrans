set moduleName needwun_Pipeline_fill_in
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
set C_modelName {needwun_Pipeline_fill_in}
set C_modelType { void 0 }
set C_modelArgList {
	{ M_load int 32 regular  }
	{ SEQA int 8 regular {array 128 { 1 3 } 1 1 }  }
	{ SEQB_load int 8 regular  }
	{ add_ln39_3 int 15 regular  }
	{ M int 32 regular {array 16641 { 2 1 } 1 1 }  }
	{ zext_ln29 int 14 regular  }
	{ zext_ln28 int 8 regular  }
	{ p_shl2 int 15 regular  }
	{ ptr int 8 regular {array 16641 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "M_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SEQA", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "SEQB_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln39_3", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "M", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "zext_ln29", "interface" : "wire", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln28", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_shl2", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "ptr", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ M_load sc_in sc_lv 32 signal 0 } 
	{ SEQA_address0 sc_out sc_lv 7 signal 1 } 
	{ SEQA_ce0 sc_out sc_logic 1 signal 1 } 
	{ SEQA_q0 sc_in sc_lv 8 signal 1 } 
	{ SEQB_load sc_in sc_lv 8 signal 2 } 
	{ add_ln39_3 sc_in sc_lv 15 signal 3 } 
	{ M_address0 sc_out sc_lv 15 signal 4 } 
	{ M_ce0 sc_out sc_logic 1 signal 4 } 
	{ M_we0 sc_out sc_logic 1 signal 4 } 
	{ M_d0 sc_out sc_lv 32 signal 4 } 
	{ M_q0 sc_in sc_lv 32 signal 4 } 
	{ M_address1 sc_out sc_lv 15 signal 4 } 
	{ M_ce1 sc_out sc_logic 1 signal 4 } 
	{ M_q1 sc_in sc_lv 32 signal 4 } 
	{ zext_ln29 sc_in sc_lv 14 signal 5 } 
	{ zext_ln28 sc_in sc_lv 8 signal 6 } 
	{ p_shl2 sc_in sc_lv 15 signal 7 } 
	{ ptr_address0 sc_out sc_lv 15 signal 8 } 
	{ ptr_ce0 sc_out sc_logic 1 signal 8 } 
	{ ptr_we0 sc_out sc_logic 1 signal 8 } 
	{ ptr_d0 sc_out sc_lv 8 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "M_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M_load", "role": "default" }} , 
 	{ "name": "SEQA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "SEQA", "role": "address0" }} , 
 	{ "name": "SEQA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SEQA", "role": "ce0" }} , 
 	{ "name": "SEQA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "SEQA", "role": "q0" }} , 
 	{ "name": "SEQB_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "SEQB_load", "role": "default" }} , 
 	{ "name": "add_ln39_3", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "add_ln39_3", "role": "default" }} , 
 	{ "name": "M_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "M", "role": "address0" }} , 
 	{ "name": "M_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M", "role": "ce0" }} , 
 	{ "name": "M_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M", "role": "we0" }} , 
 	{ "name": "M_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M", "role": "d0" }} , 
 	{ "name": "M_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M", "role": "q0" }} , 
 	{ "name": "M_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "M", "role": "address1" }} , 
 	{ "name": "M_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M", "role": "ce1" }} , 
 	{ "name": "M_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "M", "role": "q1" }} , 
 	{ "name": "zext_ln29", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "zext_ln29", "role": "default" }} , 
 	{ "name": "zext_ln28", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln28", "role": "default" }} , 
 	{ "name": "p_shl2", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "p_shl2", "role": "default" }} , 
 	{ "name": "ptr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "ptr", "role": "address0" }} , 
 	{ "name": "ptr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ptr", "role": "ce0" }} , 
 	{ "name": "ptr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ptr", "role": "we0" }} , 
 	{ "name": "ptr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ptr", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "needwun_Pipeline_fill_in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "M_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "SEQA", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SEQB_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln39_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "M", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln29", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_shl2", "Type" : "None", "Direction" : "I"},
			{"Name" : "ptr", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "fill_in", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	needwun_Pipeline_fill_in {
		M_load {Type I LastRead 0 FirstWrite -1}
		SEQA {Type I LastRead 0 FirstWrite -1}
		SEQB_load {Type I LastRead 0 FirstWrite -1}
		add_ln39_3 {Type I LastRead 0 FirstWrite -1}
		M {Type IO LastRead 1 FirstWrite 3}
		zext_ln29 {Type I LastRead 0 FirstWrite -1}
		zext_ln28 {Type I LastRead 0 FirstWrite -1}
		p_shl2 {Type I LastRead 0 FirstWrite -1}
		ptr {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "259", "Max" : "259"}
	, {"Name" : "Interval", "Min" : "259", "Max" : "259"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	M_load { ap_none {  { M_load in_data 0 32 } } }
	SEQA { ap_memory {  { SEQA_address0 mem_address 1 7 }  { SEQA_ce0 mem_ce 1 1 }  { SEQA_q0 in_data 0 8 } } }
	SEQB_load { ap_none {  { SEQB_load in_data 0 8 } } }
	add_ln39_3 { ap_none {  { add_ln39_3 in_data 0 15 } } }
	M { ap_memory {  { M_address0 mem_address 1 15 }  { M_ce0 mem_ce 1 1 }  { M_we0 mem_we 1 1 }  { M_d0 mem_din 1 32 }  { M_q0 in_data 0 32 }  { M_address1 MemPortADDR2 1 15 }  { M_ce1 MemPortCE2 1 1 }  { M_q1 in_data 0 32 } } }
	zext_ln29 { ap_none {  { zext_ln29 in_data 0 14 } } }
	zext_ln28 { ap_none {  { zext_ln28 in_data 0 8 } } }
	p_shl2 { ap_none {  { p_shl2 in_data 0 15 } } }
	ptr { ap_memory {  { ptr_address0 mem_address 1 15 }  { ptr_ce0 mem_ce 1 1 }  { ptr_we0 mem_we 1 1 }  { ptr_d0 mem_din 1 8 } } }
}
