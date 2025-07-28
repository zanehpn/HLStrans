set moduleName block_mm_Pipeline_loadA
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
set C_modelName {block_mm_Pipeline_loadA}
set C_modelType { void 0 }
set C_modelArgList {
	{ Arows int 128 regular {fifo 0 volatile }  }
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A int 32 regular {array 8 { 0 3 } 0 1 } {global 1}  }
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 int 32 regular {array 8 { 0 3 } 0 1 } {global 1}  }
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 int 32 regular {array 8 { 0 3 } 0 1 } {global 1}  }
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 int 32 regular {array 8 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Arows", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Arows_dout sc_in sc_lv 128 signal 0 } 
	{ Arows_empty_n sc_in sc_logic 1 signal 0 } 
	{ Arows_read sc_out sc_logic 1 signal 0 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0 sc_out sc_lv 3 signal 1 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0 sc_out sc_logic 1 signal 1 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_we0 sc_out sc_logic 1 signal 1 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_d0 sc_out sc_lv 32 signal 1 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0 sc_out sc_lv 3 signal 2 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_we0 sc_out sc_logic 1 signal 2 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_d0 sc_out sc_lv 32 signal 2 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0 sc_out sc_lv 3 signal 3 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_we0 sc_out sc_logic 1 signal 3 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_d0 sc_out sc_lv 32 signal 3 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0 sc_out sc_lv 3 signal 4 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_we0 sc_out sc_logic 1 signal 4 } 
	{ block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_d0 sc_out sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Arows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "Arows", "role": "dout" }} , 
 	{ "name": "Arows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Arows", "role": "empty_n" }} , 
 	{ "name": "Arows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Arows", "role": "read" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "role": "address0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "role": "ce0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "role": "we0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "role": "d0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "role": "address0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "role": "ce0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "role": "we0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "role": "d0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "role": "address0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "role": "ce0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "role": "we0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "role": "d0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "role": "address0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "role": "ce0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "role": "we0" }} , 
 	{ "name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "block_mm_Pipeline_loadA",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Arows", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Arows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loadA", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	block_mm_Pipeline_loadA {
		Arows {Type I LastRead 1 FirstWrite -1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A {Type O LastRead -1 FirstWrite 1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 {Type O LastRead -1 FirstWrite 1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 {Type O LastRead -1 FirstWrite 1}
		block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Arows { ap_fifo {  { Arows_dout fifo_port_we 0 128 }  { Arows_empty_n fifo_status 0 1 }  { Arows_read fifo_data 1 1 } } }
	block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A { ap_memory {  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_address0 mem_address 1 3 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_ce0 mem_ce 1 1 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_we0 mem_we 1 1 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_d0 mem_din 1 32 } } }
	block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1 { ap_memory {  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_address0 mem_address 1 3 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_ce0 mem_ce 1 1 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_we0 mem_we 1 1 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_1_d0 mem_din 1 32 } } }
	block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2 { ap_memory {  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_address0 mem_address 1 3 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_ce0 mem_ce 1 1 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_we0 mem_we 1 1 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_2_d0 mem_din 1 32 } } }
	block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3 { ap_memory {  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_address0 mem_address 1 3 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_ce0 mem_ce 1 1 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_we0 mem_we 1 1 }  { block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_3_d0 mem_din 1 32 } } }
}
