set moduleName k3mm_Pipeline_lprd_1_lprd_2
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
set C_modelName {k3mm_Pipeline_lprd_1_lprd_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ A int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ B int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ C int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ D int 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ buff_A float 32 regular {array 4096 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ buff_B float 32 regular {array 4096 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ buff_C float 32 regular {array 4096 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ buff_D float 32 regular {array 4096 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ buff_E_out float 32 regular {array 4096 { 0 3 } 0 1 }  }
	{ tmp1 float 32 regular {array 4096 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ tmp2 float 32 regular {array 4096 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "D", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buff_A", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_C", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_D", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_E_out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 46
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
	{ B_address0 sc_out sc_lv 12 signal 1 } 
	{ B_ce0 sc_out sc_logic 1 signal 1 } 
	{ B_q0 sc_in sc_lv 32 signal 1 } 
	{ C_address0 sc_out sc_lv 12 signal 2 } 
	{ C_ce0 sc_out sc_logic 1 signal 2 } 
	{ C_q0 sc_in sc_lv 32 signal 2 } 
	{ D_address0 sc_out sc_lv 12 signal 3 } 
	{ D_ce0 sc_out sc_logic 1 signal 3 } 
	{ D_q0 sc_in sc_lv 32 signal 3 } 
	{ buff_A_address0 sc_out sc_lv 12 signal 4 } 
	{ buff_A_ce0 sc_out sc_logic 1 signal 4 } 
	{ buff_A_we0 sc_out sc_logic 1 signal 4 } 
	{ buff_A_d0 sc_out sc_lv 32 signal 4 } 
	{ buff_B_address0 sc_out sc_lv 12 signal 5 } 
	{ buff_B_ce0 sc_out sc_logic 1 signal 5 } 
	{ buff_B_we0 sc_out sc_logic 1 signal 5 } 
	{ buff_B_d0 sc_out sc_lv 32 signal 5 } 
	{ buff_C_address0 sc_out sc_lv 12 signal 6 } 
	{ buff_C_ce0 sc_out sc_logic 1 signal 6 } 
	{ buff_C_we0 sc_out sc_logic 1 signal 6 } 
	{ buff_C_d0 sc_out sc_lv 32 signal 6 } 
	{ buff_D_address0 sc_out sc_lv 12 signal 7 } 
	{ buff_D_ce0 sc_out sc_logic 1 signal 7 } 
	{ buff_D_we0 sc_out sc_logic 1 signal 7 } 
	{ buff_D_d0 sc_out sc_lv 32 signal 7 } 
	{ buff_E_out_address0 sc_out sc_lv 12 signal 8 } 
	{ buff_E_out_ce0 sc_out sc_logic 1 signal 8 } 
	{ buff_E_out_we0 sc_out sc_logic 1 signal 8 } 
	{ buff_E_out_d0 sc_out sc_lv 32 signal 8 } 
	{ tmp1_address0 sc_out sc_lv 12 signal 9 } 
	{ tmp1_ce0 sc_out sc_logic 1 signal 9 } 
	{ tmp1_we0 sc_out sc_logic 1 signal 9 } 
	{ tmp1_d0 sc_out sc_lv 32 signal 9 } 
	{ tmp2_address0 sc_out sc_lv 12 signal 10 } 
	{ tmp2_ce0 sc_out sc_logic 1 signal 10 } 
	{ tmp2_we0 sc_out sc_logic 1 signal 10 } 
	{ tmp2_d0 sc_out sc_lv 32 signal 10 } 
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
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "q0" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "q0" }} , 
 	{ "name": "D_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "D", "role": "address0" }} , 
 	{ "name": "D_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D", "role": "ce0" }} , 
 	{ "name": "D_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D", "role": "q0" }} , 
 	{ "name": "buff_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address0" }} , 
 	{ "name": "buff_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce0" }} , 
 	{ "name": "buff_A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "we0" }} , 
 	{ "name": "buff_A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "d0" }} , 
 	{ "name": "buff_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address0" }} , 
 	{ "name": "buff_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce0" }} , 
 	{ "name": "buff_B_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "we0" }} , 
 	{ "name": "buff_B_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "d0" }} , 
 	{ "name": "buff_C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address0" }} , 
 	{ "name": "buff_C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce0" }} , 
 	{ "name": "buff_C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "we0" }} , 
 	{ "name": "buff_C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "d0" }} , 
 	{ "name": "buff_D_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address0" }} , 
 	{ "name": "buff_D_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce0" }} , 
 	{ "name": "buff_D_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "we0" }} , 
 	{ "name": "buff_D_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "d0" }} , 
 	{ "name": "buff_E_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_E_out", "role": "address0" }} , 
 	{ "name": "buff_E_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_E_out", "role": "ce0" }} , 
 	{ "name": "buff_E_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_E_out", "role": "we0" }} , 
 	{ "name": "buff_E_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_E_out", "role": "d0" }} , 
 	{ "name": "tmp1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address0" }} , 
 	{ "name": "tmp1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce0" }} , 
 	{ "name": "tmp1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "we0" }} , 
 	{ "name": "tmp1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "d0" }} , 
 	{ "name": "tmp2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address0" }} , 
 	{ "name": "tmp2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce0" }} , 
 	{ "name": "tmp2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "we0" }} , 
 	{ "name": "tmp2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "k3mm_Pipeline_lprd_1_lprd_2",
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
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "D", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_D", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_E_out", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lprd_1_lprd_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	k3mm_Pipeline_lprd_1_lprd_2 {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		C {Type I LastRead 0 FirstWrite -1}
		D {Type I LastRead 0 FirstWrite -1}
		buff_A {Type O LastRead -1 FirstWrite 1}
		buff_B {Type O LastRead -1 FirstWrite 1}
		buff_C {Type O LastRead -1 FirstWrite 1}
		buff_D {Type O LastRead -1 FirstWrite 1}
		buff_E_out {Type O LastRead -1 FirstWrite 0}
		tmp1 {Type O LastRead -1 FirstWrite 0}
		tmp2 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4098", "Max" : "4098"}
	, {"Name" : "Interval", "Min" : "4098", "Max" : "4098"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	A { ap_memory {  { A_address0 mem_address 1 12 }  { A_ce0 mem_ce 1 1 }  { A_q0 in_data 0 32 } } }
	B { ap_memory {  { B_address0 mem_address 1 12 }  { B_ce0 mem_ce 1 1 }  { B_q0 in_data 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 12 }  { C_ce0 mem_ce 1 1 }  { C_q0 in_data 0 32 } } }
	D { ap_memory {  { D_address0 mem_address 1 12 }  { D_ce0 mem_ce 1 1 }  { D_q0 in_data 0 32 } } }
	buff_A { ap_memory {  { buff_A_address0 mem_address 1 12 }  { buff_A_ce0 mem_ce 1 1 }  { buff_A_we0 mem_we 1 1 }  { buff_A_d0 mem_din 1 32 } } }
	buff_B { ap_memory {  { buff_B_address0 mem_address 1 12 }  { buff_B_ce0 mem_ce 1 1 }  { buff_B_we0 mem_we 1 1 }  { buff_B_d0 mem_din 1 32 } } }
	buff_C { ap_memory {  { buff_C_address0 mem_address 1 12 }  { buff_C_ce0 mem_ce 1 1 }  { buff_C_we0 mem_we 1 1 }  { buff_C_d0 mem_din 1 32 } } }
	buff_D { ap_memory {  { buff_D_address0 mem_address 1 12 }  { buff_D_ce0 mem_ce 1 1 }  { buff_D_we0 mem_we 1 1 }  { buff_D_d0 mem_din 1 32 } } }
	buff_E_out { ap_memory {  { buff_E_out_address0 mem_address 1 12 }  { buff_E_out_ce0 mem_ce 1 1 }  { buff_E_out_we0 mem_we 1 1 }  { buff_E_out_d0 mem_din 1 32 } } }
	tmp1 { ap_memory {  { tmp1_address0 mem_address 1 12 }  { tmp1_ce0 mem_ce 1 1 }  { tmp1_we0 mem_we 1 1 }  { tmp1_d0 mem_din 1 32 } } }
	tmp2 { ap_memory {  { tmp2_address0 mem_address 1 12 }  { tmp2_ce0 mem_ce 1 1 }  { tmp2_we0 mem_we 1 1 }  { tmp2_d0 mem_din 1 32 } } }
}
