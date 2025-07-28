set moduleName block_mm_Pipeline_writeoutput
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
set C_modelName {block_mm_Pipeline_writeoutput}
set C_modelType { void 0 }
set C_modelArgList {
	{ ABpartial_load int 512 regular  }
	{ p_reload int 32 regular  }
	{ add_164_reload int 32 regular  }
	{ add_268_reload int 32 regular  }
	{ add_372_reload int 32 regular  }
	{ add_12961_reload int 32 regular  }
	{ add_1_165_reload int 32 regular  }
	{ add_2_169_reload int 32 regular  }
	{ add_3_173_reload int 32 regular  }
	{ add_23462_reload int 32 regular  }
	{ add_1_266_reload int 32 regular  }
	{ add_2_270_reload int 32 regular  }
	{ add_3_274_reload int 32 regular  }
	{ add_33963_reload int 32 regular  }
	{ add_1_367_reload int 32 regular  }
	{ add_2_371_reload int 32 regular  }
	{ add_3_375_reload int 32 regular  }
	{ p_partset4_out int 512 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ABpartial_load", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_164_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_268_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_372_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_12961_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_1_165_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_2_169_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_3_173_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_23462_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_1_266_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_2_270_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_3_274_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_33963_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_1_367_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_2_371_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_3_375_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_partset4_out", "interface" : "wire", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ABpartial_load sc_in sc_lv 512 signal 0 } 
	{ p_reload sc_in sc_lv 32 signal 1 } 
	{ add_164_reload sc_in sc_lv 32 signal 2 } 
	{ add_268_reload sc_in sc_lv 32 signal 3 } 
	{ add_372_reload sc_in sc_lv 32 signal 4 } 
	{ add_12961_reload sc_in sc_lv 32 signal 5 } 
	{ add_1_165_reload sc_in sc_lv 32 signal 6 } 
	{ add_2_169_reload sc_in sc_lv 32 signal 7 } 
	{ add_3_173_reload sc_in sc_lv 32 signal 8 } 
	{ add_23462_reload sc_in sc_lv 32 signal 9 } 
	{ add_1_266_reload sc_in sc_lv 32 signal 10 } 
	{ add_2_270_reload sc_in sc_lv 32 signal 11 } 
	{ add_3_274_reload sc_in sc_lv 32 signal 12 } 
	{ add_33963_reload sc_in sc_lv 32 signal 13 } 
	{ add_1_367_reload sc_in sc_lv 32 signal 14 } 
	{ add_2_371_reload sc_in sc_lv 32 signal 15 } 
	{ add_3_375_reload sc_in sc_lv 32 signal 16 } 
	{ p_partset4_out sc_out sc_lv 512 signal 17 } 
	{ p_partset4_out_ap_vld sc_out sc_logic 1 outvld 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ABpartial_load", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "ABpartial_load", "role": "default" }} , 
 	{ "name": "p_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload", "role": "default" }} , 
 	{ "name": "add_164_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_164_reload", "role": "default" }} , 
 	{ "name": "add_268_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_268_reload", "role": "default" }} , 
 	{ "name": "add_372_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_372_reload", "role": "default" }} , 
 	{ "name": "add_12961_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_12961_reload", "role": "default" }} , 
 	{ "name": "add_1_165_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_1_165_reload", "role": "default" }} , 
 	{ "name": "add_2_169_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_2_169_reload", "role": "default" }} , 
 	{ "name": "add_3_173_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_3_173_reload", "role": "default" }} , 
 	{ "name": "add_23462_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_23462_reload", "role": "default" }} , 
 	{ "name": "add_1_266_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_1_266_reload", "role": "default" }} , 
 	{ "name": "add_2_270_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_2_270_reload", "role": "default" }} , 
 	{ "name": "add_3_274_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_3_274_reload", "role": "default" }} , 
 	{ "name": "add_33963_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_33963_reload", "role": "default" }} , 
 	{ "name": "add_1_367_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_1_367_reload", "role": "default" }} , 
 	{ "name": "add_2_371_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_2_371_reload", "role": "default" }} , 
 	{ "name": "add_3_375_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_3_375_reload", "role": "default" }} , 
 	{ "name": "p_partset4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p_partset4_out", "role": "default" }} , 
 	{ "name": "p_partset4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_partset4_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "block_mm_Pipeline_writeoutput",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ABpartial_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_164_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_268_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_372_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_12961_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_1_165_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_2_169_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_3_173_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_23462_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_1_266_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_2_270_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_3_274_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_33963_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_1_367_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_2_371_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_3_375_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_partset4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "writeoutput", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U76", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U77", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U78", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U79", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	block_mm_Pipeline_writeoutput {
		ABpartial_load {Type I LastRead 0 FirstWrite -1}
		p_reload {Type I LastRead 0 FirstWrite -1}
		add_164_reload {Type I LastRead 0 FirstWrite -1}
		add_268_reload {Type I LastRead 0 FirstWrite -1}
		add_372_reload {Type I LastRead 0 FirstWrite -1}
		add_12961_reload {Type I LastRead 0 FirstWrite -1}
		add_1_165_reload {Type I LastRead 0 FirstWrite -1}
		add_2_169_reload {Type I LastRead 0 FirstWrite -1}
		add_3_173_reload {Type I LastRead 0 FirstWrite -1}
		add_23462_reload {Type I LastRead 0 FirstWrite -1}
		add_1_266_reload {Type I LastRead 0 FirstWrite -1}
		add_2_270_reload {Type I LastRead 0 FirstWrite -1}
		add_3_274_reload {Type I LastRead 0 FirstWrite -1}
		add_33963_reload {Type I LastRead 0 FirstWrite -1}
		add_1_367_reload {Type I LastRead 0 FirstWrite -1}
		add_2_371_reload {Type I LastRead 0 FirstWrite -1}
		add_3_375_reload {Type I LastRead 0 FirstWrite -1}
		p_partset4_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ABpartial_load { ap_none {  { ABpartial_load in_data 0 512 } } }
	p_reload { ap_none {  { p_reload in_data 0 32 } } }
	add_164_reload { ap_none {  { add_164_reload in_data 0 32 } } }
	add_268_reload { ap_none {  { add_268_reload in_data 0 32 } } }
	add_372_reload { ap_none {  { add_372_reload in_data 0 32 } } }
	add_12961_reload { ap_none {  { add_12961_reload in_data 0 32 } } }
	add_1_165_reload { ap_none {  { add_1_165_reload in_data 0 32 } } }
	add_2_169_reload { ap_none {  { add_2_169_reload in_data 0 32 } } }
	add_3_173_reload { ap_none {  { add_3_173_reload in_data 0 32 } } }
	add_23462_reload { ap_none {  { add_23462_reload in_data 0 32 } } }
	add_1_266_reload { ap_none {  { add_1_266_reload in_data 0 32 } } }
	add_2_270_reload { ap_none {  { add_2_270_reload in_data 0 32 } } }
	add_3_274_reload { ap_none {  { add_3_274_reload in_data 0 32 } } }
	add_33963_reload { ap_none {  { add_33963_reload in_data 0 32 } } }
	add_1_367_reload { ap_none {  { add_1_367_reload in_data 0 32 } } }
	add_2_371_reload { ap_none {  { add_2_371_reload in_data 0 32 } } }
	add_3_375_reload { ap_none {  { add_3_375_reload in_data 0 32 } } }
	p_partset4_out { ap_vld {  { p_partset4_out out_data 1 512 }  { p_partset4_out_ap_vld out_vld 1 1 } } }
}
