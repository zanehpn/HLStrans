set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ accum_V int 16 regular {array 1024 { 0 0 } 0 1 }  }
	{ accum_V_1 int 16 regular {array 1024 { 0 0 } 0 1 }  }
	{ accum_V_2 int 16 regular {array 1024 { 0 0 } 0 1 }  }
	{ accum_V_3 int 16 regular {array 1024 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ accum_V_address0 sc_out sc_lv 10 signal 0 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 0 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 0 } 
	{ accum_V_address1 sc_out sc_lv 10 signal 0 } 
	{ accum_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ accum_V_we1 sc_out sc_logic 1 signal 0 } 
	{ accum_V_d1 sc_out sc_lv 16 signal 0 } 
	{ accum_V_1_address0 sc_out sc_lv 10 signal 1 } 
	{ accum_V_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ accum_V_1_we0 sc_out sc_logic 1 signal 1 } 
	{ accum_V_1_d0 sc_out sc_lv 16 signal 1 } 
	{ accum_V_1_address1 sc_out sc_lv 10 signal 1 } 
	{ accum_V_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ accum_V_1_we1 sc_out sc_logic 1 signal 1 } 
	{ accum_V_1_d1 sc_out sc_lv 16 signal 1 } 
	{ accum_V_2_address0 sc_out sc_lv 10 signal 2 } 
	{ accum_V_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ accum_V_2_we0 sc_out sc_logic 1 signal 2 } 
	{ accum_V_2_d0 sc_out sc_lv 16 signal 2 } 
	{ accum_V_2_address1 sc_out sc_lv 10 signal 2 } 
	{ accum_V_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ accum_V_2_we1 sc_out sc_logic 1 signal 2 } 
	{ accum_V_2_d1 sc_out sc_lv 16 signal 2 } 
	{ accum_V_3_address0 sc_out sc_lv 10 signal 3 } 
	{ accum_V_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ accum_V_3_we0 sc_out sc_logic 1 signal 3 } 
	{ accum_V_3_d0 sc_out sc_lv 16 signal 3 } 
	{ accum_V_3_address1 sc_out sc_lv 10 signal 3 } 
	{ accum_V_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ accum_V_3_we1 sc_out sc_logic 1 signal 3 } 
	{ accum_V_3_d1 sc_out sc_lv 16 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V", "role": "address1" }} , 
 	{ "name": "accum_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce1" }} , 
 	{ "name": "accum_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we1" }} , 
 	{ "name": "accum_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d1" }} , 
 	{ "name": "accum_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_1", "role": "address0" }} , 
 	{ "name": "accum_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "ce0" }} , 
 	{ "name": "accum_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "we0" }} , 
 	{ "name": "accum_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "d0" }} , 
 	{ "name": "accum_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_1", "role": "address1" }} , 
 	{ "name": "accum_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "ce1" }} , 
 	{ "name": "accum_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "we1" }} , 
 	{ "name": "accum_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "d1" }} , 
 	{ "name": "accum_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_2", "role": "address0" }} , 
 	{ "name": "accum_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "ce0" }} , 
 	{ "name": "accum_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "we0" }} , 
 	{ "name": "accum_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "d0" }} , 
 	{ "name": "accum_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_2", "role": "address1" }} , 
 	{ "name": "accum_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "ce1" }} , 
 	{ "name": "accum_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "we1" }} , 
 	{ "name": "accum_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "d1" }} , 
 	{ "name": "accum_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_3", "role": "address0" }} , 
 	{ "name": "accum_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "ce0" }} , 
 	{ "name": "accum_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "we0" }} , 
 	{ "name": "accum_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "d0" }} , 
 	{ "name": "accum_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_3", "role": "address1" }} , 
 	{ "name": "accum_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "ce1" }} , 
 	{ "name": "accum_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "we1" }} , 
 	{ "name": "accum_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "514", "EstimateLatencyMax" : "514",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5 {
		accum_V {Type O LastRead -1 FirstWrite 0}
		accum_V_1 {Type O LastRead -1 FirstWrite 0}
		accum_V_2 {Type O LastRead -1 FirstWrite 0}
		accum_V_3 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "514", "Max" : "514"}
	, {"Name" : "Interval", "Min" : "514", "Max" : "514"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 10 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_address1 MemPortADDR2 1 10 }  { accum_V_ce1 MemPortCE2 1 1 }  { accum_V_we1 MemPortWE2 1 1 }  { accum_V_d1 MemPortDIN2 1 16 } } }
	accum_V_1 { ap_memory {  { accum_V_1_address0 mem_address 1 10 }  { accum_V_1_ce0 mem_ce 1 1 }  { accum_V_1_we0 mem_we 1 1 }  { accum_V_1_d0 mem_din 1 16 }  { accum_V_1_address1 MemPortADDR2 1 10 }  { accum_V_1_ce1 MemPortCE2 1 1 }  { accum_V_1_we1 MemPortWE2 1 1 }  { accum_V_1_d1 MemPortDIN2 1 16 } } }
	accum_V_2 { ap_memory {  { accum_V_2_address0 mem_address 1 10 }  { accum_V_2_ce0 mem_ce 1 1 }  { accum_V_2_we0 mem_we 1 1 }  { accum_V_2_d0 mem_din 1 16 }  { accum_V_2_address1 MemPortADDR2 1 10 }  { accum_V_2_ce1 MemPortCE2 1 1 }  { accum_V_2_we1 MemPortWE2 1 1 }  { accum_V_2_d1 MemPortDIN2 1 16 } } }
	accum_V_3 { ap_memory {  { accum_V_3_address0 mem_address 1 10 }  { accum_V_3_ce0 mem_ce 1 1 }  { accum_V_3_we0 mem_we 1 1 }  { accum_V_3_d0 mem_din 1 16 }  { accum_V_3_address1 MemPortADDR2 1 10 }  { accum_V_3_ce1 MemPortCE2 1 1 }  { accum_V_3_we1 MemPortWE2 1 1 }  { accum_V_3_d1 MemPortDIN2 1 16 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ accum_V int 16 regular {array 512 { 0 0 } 0 1 }  }
	{ accum_V_1 int 16 regular {array 512 { 0 0 } 0 1 }  }
	{ accum_V_2 int 16 regular {array 512 { 0 0 } 0 1 }  }
	{ accum_V_3 int 16 regular {array 512 { 0 0 } 0 1 }  }
	{ accum_V_4 int 16 regular {array 512 { 0 0 } 0 1 }  }
	{ accum_V_5 int 16 regular {array 512 { 0 0 } 0 1 }  }
	{ accum_V_6 int 16 regular {array 512 { 0 0 } 0 1 }  }
	{ accum_V_7 int 16 regular {array 512 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ accum_V_address0 sc_out sc_lv 9 signal 0 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 0 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 0 } 
	{ accum_V_address1 sc_out sc_lv 9 signal 0 } 
	{ accum_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ accum_V_we1 sc_out sc_logic 1 signal 0 } 
	{ accum_V_d1 sc_out sc_lv 16 signal 0 } 
	{ accum_V_1_address0 sc_out sc_lv 9 signal 1 } 
	{ accum_V_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ accum_V_1_we0 sc_out sc_logic 1 signal 1 } 
	{ accum_V_1_d0 sc_out sc_lv 16 signal 1 } 
	{ accum_V_1_address1 sc_out sc_lv 9 signal 1 } 
	{ accum_V_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ accum_V_1_we1 sc_out sc_logic 1 signal 1 } 
	{ accum_V_1_d1 sc_out sc_lv 16 signal 1 } 
	{ accum_V_2_address0 sc_out sc_lv 9 signal 2 } 
	{ accum_V_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ accum_V_2_we0 sc_out sc_logic 1 signal 2 } 
	{ accum_V_2_d0 sc_out sc_lv 16 signal 2 } 
	{ accum_V_2_address1 sc_out sc_lv 9 signal 2 } 
	{ accum_V_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ accum_V_2_we1 sc_out sc_logic 1 signal 2 } 
	{ accum_V_2_d1 sc_out sc_lv 16 signal 2 } 
	{ accum_V_3_address0 sc_out sc_lv 9 signal 3 } 
	{ accum_V_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ accum_V_3_we0 sc_out sc_logic 1 signal 3 } 
	{ accum_V_3_d0 sc_out sc_lv 16 signal 3 } 
	{ accum_V_3_address1 sc_out sc_lv 9 signal 3 } 
	{ accum_V_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ accum_V_3_we1 sc_out sc_logic 1 signal 3 } 
	{ accum_V_3_d1 sc_out sc_lv 16 signal 3 } 
	{ accum_V_4_address0 sc_out sc_lv 9 signal 4 } 
	{ accum_V_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ accum_V_4_we0 sc_out sc_logic 1 signal 4 } 
	{ accum_V_4_d0 sc_out sc_lv 16 signal 4 } 
	{ accum_V_4_address1 sc_out sc_lv 9 signal 4 } 
	{ accum_V_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ accum_V_4_we1 sc_out sc_logic 1 signal 4 } 
	{ accum_V_4_d1 sc_out sc_lv 16 signal 4 } 
	{ accum_V_5_address0 sc_out sc_lv 9 signal 5 } 
	{ accum_V_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ accum_V_5_we0 sc_out sc_logic 1 signal 5 } 
	{ accum_V_5_d0 sc_out sc_lv 16 signal 5 } 
	{ accum_V_5_address1 sc_out sc_lv 9 signal 5 } 
	{ accum_V_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ accum_V_5_we1 sc_out sc_logic 1 signal 5 } 
	{ accum_V_5_d1 sc_out sc_lv 16 signal 5 } 
	{ accum_V_6_address0 sc_out sc_lv 9 signal 6 } 
	{ accum_V_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_6_we0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_6_d0 sc_out sc_lv 16 signal 6 } 
	{ accum_V_6_address1 sc_out sc_lv 9 signal 6 } 
	{ accum_V_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ accum_V_6_we1 sc_out sc_logic 1 signal 6 } 
	{ accum_V_6_d1 sc_out sc_lv 16 signal 6 } 
	{ accum_V_7_address0 sc_out sc_lv 9 signal 7 } 
	{ accum_V_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ accum_V_7_we0 sc_out sc_logic 1 signal 7 } 
	{ accum_V_7_d0 sc_out sc_lv 16 signal 7 } 
	{ accum_V_7_address1 sc_out sc_lv 9 signal 7 } 
	{ accum_V_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ accum_V_7_we1 sc_out sc_logic 1 signal 7 } 
	{ accum_V_7_d1 sc_out sc_lv 16 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V", "role": "address1" }} , 
 	{ "name": "accum_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce1" }} , 
 	{ "name": "accum_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we1" }} , 
 	{ "name": "accum_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d1" }} , 
 	{ "name": "accum_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_1", "role": "address0" }} , 
 	{ "name": "accum_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "ce0" }} , 
 	{ "name": "accum_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "we0" }} , 
 	{ "name": "accum_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "d0" }} , 
 	{ "name": "accum_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_1", "role": "address1" }} , 
 	{ "name": "accum_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "ce1" }} , 
 	{ "name": "accum_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "we1" }} , 
 	{ "name": "accum_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "d1" }} , 
 	{ "name": "accum_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_2", "role": "address0" }} , 
 	{ "name": "accum_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "ce0" }} , 
 	{ "name": "accum_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "we0" }} , 
 	{ "name": "accum_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "d0" }} , 
 	{ "name": "accum_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_2", "role": "address1" }} , 
 	{ "name": "accum_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "ce1" }} , 
 	{ "name": "accum_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "we1" }} , 
 	{ "name": "accum_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "d1" }} , 
 	{ "name": "accum_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_3", "role": "address0" }} , 
 	{ "name": "accum_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "ce0" }} , 
 	{ "name": "accum_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "we0" }} , 
 	{ "name": "accum_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "d0" }} , 
 	{ "name": "accum_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_3", "role": "address1" }} , 
 	{ "name": "accum_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "ce1" }} , 
 	{ "name": "accum_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "we1" }} , 
 	{ "name": "accum_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "d1" }} , 
 	{ "name": "accum_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_4", "role": "address0" }} , 
 	{ "name": "accum_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_4", "role": "ce0" }} , 
 	{ "name": "accum_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_4", "role": "we0" }} , 
 	{ "name": "accum_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_4", "role": "d0" }} , 
 	{ "name": "accum_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_4", "role": "address1" }} , 
 	{ "name": "accum_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_4", "role": "ce1" }} , 
 	{ "name": "accum_V_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_4", "role": "we1" }} , 
 	{ "name": "accum_V_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_4", "role": "d1" }} , 
 	{ "name": "accum_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_5", "role": "address0" }} , 
 	{ "name": "accum_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_5", "role": "ce0" }} , 
 	{ "name": "accum_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_5", "role": "we0" }} , 
 	{ "name": "accum_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_5", "role": "d0" }} , 
 	{ "name": "accum_V_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_5", "role": "address1" }} , 
 	{ "name": "accum_V_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_5", "role": "ce1" }} , 
 	{ "name": "accum_V_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_5", "role": "we1" }} , 
 	{ "name": "accum_V_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_5", "role": "d1" }} , 
 	{ "name": "accum_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_6", "role": "address0" }} , 
 	{ "name": "accum_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_6", "role": "ce0" }} , 
 	{ "name": "accum_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_6", "role": "we0" }} , 
 	{ "name": "accum_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_6", "role": "d0" }} , 
 	{ "name": "accum_V_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_6", "role": "address1" }} , 
 	{ "name": "accum_V_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_6", "role": "ce1" }} , 
 	{ "name": "accum_V_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_6", "role": "we1" }} , 
 	{ "name": "accum_V_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_6", "role": "d1" }} , 
 	{ "name": "accum_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_7", "role": "address0" }} , 
 	{ "name": "accum_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_7", "role": "ce0" }} , 
 	{ "name": "accum_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_7", "role": "we0" }} , 
 	{ "name": "accum_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_7", "role": "d0" }} , 
 	{ "name": "accum_V_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_7", "role": "address1" }} , 
 	{ "name": "accum_V_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_7", "role": "ce1" }} , 
 	{ "name": "accum_V_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_7", "role": "we1" }} , 
 	{ "name": "accum_V_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_7", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5 {
		accum_V {Type O LastRead -1 FirstWrite 0}
		accum_V_1 {Type O LastRead -1 FirstWrite 0}
		accum_V_2 {Type O LastRead -1 FirstWrite 0}
		accum_V_3 {Type O LastRead -1 FirstWrite 0}
		accum_V_4 {Type O LastRead -1 FirstWrite 0}
		accum_V_5 {Type O LastRead -1 FirstWrite 0}
		accum_V_6 {Type O LastRead -1 FirstWrite 0}
		accum_V_7 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "258", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "258", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 9 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_address1 MemPortADDR2 1 9 }  { accum_V_ce1 MemPortCE2 1 1 }  { accum_V_we1 MemPortWE2 1 1 }  { accum_V_d1 MemPortDIN2 1 16 } } }
	accum_V_1 { ap_memory {  { accum_V_1_address0 mem_address 1 9 }  { accum_V_1_ce0 mem_ce 1 1 }  { accum_V_1_we0 mem_we 1 1 }  { accum_V_1_d0 mem_din 1 16 }  { accum_V_1_address1 MemPortADDR2 1 9 }  { accum_V_1_ce1 MemPortCE2 1 1 }  { accum_V_1_we1 MemPortWE2 1 1 }  { accum_V_1_d1 MemPortDIN2 1 16 } } }
	accum_V_2 { ap_memory {  { accum_V_2_address0 mem_address 1 9 }  { accum_V_2_ce0 mem_ce 1 1 }  { accum_V_2_we0 mem_we 1 1 }  { accum_V_2_d0 mem_din 1 16 }  { accum_V_2_address1 MemPortADDR2 1 9 }  { accum_V_2_ce1 MemPortCE2 1 1 }  { accum_V_2_we1 MemPortWE2 1 1 }  { accum_V_2_d1 MemPortDIN2 1 16 } } }
	accum_V_3 { ap_memory {  { accum_V_3_address0 mem_address 1 9 }  { accum_V_3_ce0 mem_ce 1 1 }  { accum_V_3_we0 mem_we 1 1 }  { accum_V_3_d0 mem_din 1 16 }  { accum_V_3_address1 MemPortADDR2 1 9 }  { accum_V_3_ce1 MemPortCE2 1 1 }  { accum_V_3_we1 MemPortWE2 1 1 }  { accum_V_3_d1 MemPortDIN2 1 16 } } }
	accum_V_4 { ap_memory {  { accum_V_4_address0 mem_address 1 9 }  { accum_V_4_ce0 mem_ce 1 1 }  { accum_V_4_we0 mem_we 1 1 }  { accum_V_4_d0 mem_din 1 16 }  { accum_V_4_address1 MemPortADDR2 1 9 }  { accum_V_4_ce1 MemPortCE2 1 1 }  { accum_V_4_we1 MemPortWE2 1 1 }  { accum_V_4_d1 MemPortDIN2 1 16 } } }
	accum_V_5 { ap_memory {  { accum_V_5_address0 mem_address 1 9 }  { accum_V_5_ce0 mem_ce 1 1 }  { accum_V_5_we0 mem_we 1 1 }  { accum_V_5_d0 mem_din 1 16 }  { accum_V_5_address1 MemPortADDR2 1 9 }  { accum_V_5_ce1 MemPortCE2 1 1 }  { accum_V_5_we1 MemPortWE2 1 1 }  { accum_V_5_d1 MemPortDIN2 1 16 } } }
	accum_V_6 { ap_memory {  { accum_V_6_address0 mem_address 1 9 }  { accum_V_6_ce0 mem_ce 1 1 }  { accum_V_6_we0 mem_we 1 1 }  { accum_V_6_d0 mem_din 1 16 }  { accum_V_6_address1 MemPortADDR2 1 9 }  { accum_V_6_ce1 MemPortCE2 1 1 }  { accum_V_6_we1 MemPortWE2 1 1 }  { accum_V_6_d1 MemPortDIN2 1 16 } } }
	accum_V_7 { ap_memory {  { accum_V_7_address0 mem_address 1 9 }  { accum_V_7_ce0 mem_ce 1 1 }  { accum_V_7_we0 mem_we 1 1 }  { accum_V_7_d0 mem_din 1 16 }  { accum_V_7_address1 MemPortADDR2 1 9 }  { accum_V_7_ce1 MemPortCE2 1 1 }  { accum_V_7_we1 MemPortWE2 1 1 }  { accum_V_7_d1 MemPortDIN2 1 16 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ accum_V int 16 regular {array 1024 { 0 0 } 0 1 }  }
	{ accum_V_1 int 16 regular {array 1024 { 0 0 } 0 1 }  }
	{ accum_V_2 int 16 regular {array 1024 { 0 0 } 0 1 }  }
	{ accum_V_3 int 16 regular {array 1024 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ accum_V_address0 sc_out sc_lv 10 signal 0 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 0 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 0 } 
	{ accum_V_address1 sc_out sc_lv 10 signal 0 } 
	{ accum_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ accum_V_we1 sc_out sc_logic 1 signal 0 } 
	{ accum_V_d1 sc_out sc_lv 16 signal 0 } 
	{ accum_V_1_address0 sc_out sc_lv 10 signal 1 } 
	{ accum_V_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ accum_V_1_we0 sc_out sc_logic 1 signal 1 } 
	{ accum_V_1_d0 sc_out sc_lv 16 signal 1 } 
	{ accum_V_1_address1 sc_out sc_lv 10 signal 1 } 
	{ accum_V_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ accum_V_1_we1 sc_out sc_logic 1 signal 1 } 
	{ accum_V_1_d1 sc_out sc_lv 16 signal 1 } 
	{ accum_V_2_address0 sc_out sc_lv 10 signal 2 } 
	{ accum_V_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ accum_V_2_we0 sc_out sc_logic 1 signal 2 } 
	{ accum_V_2_d0 sc_out sc_lv 16 signal 2 } 
	{ accum_V_2_address1 sc_out sc_lv 10 signal 2 } 
	{ accum_V_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ accum_V_2_we1 sc_out sc_logic 1 signal 2 } 
	{ accum_V_2_d1 sc_out sc_lv 16 signal 2 } 
	{ accum_V_3_address0 sc_out sc_lv 10 signal 3 } 
	{ accum_V_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ accum_V_3_we0 sc_out sc_logic 1 signal 3 } 
	{ accum_V_3_d0 sc_out sc_lv 16 signal 3 } 
	{ accum_V_3_address1 sc_out sc_lv 10 signal 3 } 
	{ accum_V_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ accum_V_3_we1 sc_out sc_logic 1 signal 3 } 
	{ accum_V_3_d1 sc_out sc_lv 16 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V", "role": "address1" }} , 
 	{ "name": "accum_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce1" }} , 
 	{ "name": "accum_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we1" }} , 
 	{ "name": "accum_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d1" }} , 
 	{ "name": "accum_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_1", "role": "address0" }} , 
 	{ "name": "accum_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "ce0" }} , 
 	{ "name": "accum_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "we0" }} , 
 	{ "name": "accum_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "d0" }} , 
 	{ "name": "accum_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_1", "role": "address1" }} , 
 	{ "name": "accum_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "ce1" }} , 
 	{ "name": "accum_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "we1" }} , 
 	{ "name": "accum_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "d1" }} , 
 	{ "name": "accum_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_2", "role": "address0" }} , 
 	{ "name": "accum_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "ce0" }} , 
 	{ "name": "accum_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "we0" }} , 
 	{ "name": "accum_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "d0" }} , 
 	{ "name": "accum_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_2", "role": "address1" }} , 
 	{ "name": "accum_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "ce1" }} , 
 	{ "name": "accum_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "we1" }} , 
 	{ "name": "accum_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "d1" }} , 
 	{ "name": "accum_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_3", "role": "address0" }} , 
 	{ "name": "accum_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "ce0" }} , 
 	{ "name": "accum_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "we0" }} , 
 	{ "name": "accum_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "d0" }} , 
 	{ "name": "accum_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "accum_V_3", "role": "address1" }} , 
 	{ "name": "accum_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "ce1" }} , 
 	{ "name": "accum_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "we1" }} , 
 	{ "name": "accum_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "514", "EstimateLatencyMax" : "514",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5 {
		accum_V {Type O LastRead -1 FirstWrite 0}
		accum_V_1 {Type O LastRead -1 FirstWrite 0}
		accum_V_2 {Type O LastRead -1 FirstWrite 0}
		accum_V_3 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "514", "Max" : "514"}
	, {"Name" : "Interval", "Min" : "514", "Max" : "514"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 10 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_address1 MemPortADDR2 1 10 }  { accum_V_ce1 MemPortCE2 1 1 }  { accum_V_we1 MemPortWE2 1 1 }  { accum_V_d1 MemPortDIN2 1 16 } } }
	accum_V_1 { ap_memory {  { accum_V_1_address0 mem_address 1 10 }  { accum_V_1_ce0 mem_ce 1 1 }  { accum_V_1_we0 mem_we 1 1 }  { accum_V_1_d0 mem_din 1 16 }  { accum_V_1_address1 MemPortADDR2 1 10 }  { accum_V_1_ce1 MemPortCE2 1 1 }  { accum_V_1_we1 MemPortWE2 1 1 }  { accum_V_1_d1 MemPortDIN2 1 16 } } }
	accum_V_2 { ap_memory {  { accum_V_2_address0 mem_address 1 10 }  { accum_V_2_ce0 mem_ce 1 1 }  { accum_V_2_we0 mem_we 1 1 }  { accum_V_2_d0 mem_din 1 16 }  { accum_V_2_address1 MemPortADDR2 1 10 }  { accum_V_2_ce1 MemPortCE2 1 1 }  { accum_V_2_we1 MemPortWE2 1 1 }  { accum_V_2_d1 MemPortDIN2 1 16 } } }
	accum_V_3 { ap_memory {  { accum_V_3_address0 mem_address 1 10 }  { accum_V_3_ce0 mem_ce 1 1 }  { accum_V_3_we0 mem_we 1 1 }  { accum_V_3_d0 mem_din 1 16 }  { accum_V_3_address1 MemPortADDR2 1 10 }  { accum_V_3_ce1 MemPortCE2 1 1 }  { accum_V_3_we1 MemPortWE2 1 1 }  { accum_V_3_d1 MemPortDIN2 1 16 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ accum_V int 16 regular {array 512 { 0 0 } 0 1 }  }
	{ accum_V_1 int 16 regular {array 512 { 0 0 } 0 1 }  }
	{ accum_V_2 int 16 regular {array 512 { 0 0 } 0 1 }  }
	{ accum_V_3 int 16 regular {array 512 { 0 0 } 0 1 }  }
	{ accum_V_4 int 16 regular {array 512 { 0 0 } 0 1 }  }
	{ accum_V_5 int 16 regular {array 512 { 0 0 } 0 1 }  }
	{ accum_V_6 int 16 regular {array 512 { 0 0 } 0 1 }  }
	{ accum_V_7 int 16 regular {array 512 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "accum_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "accum_V_7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ accum_V_address0 sc_out sc_lv 9 signal 0 } 
	{ accum_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ accum_V_we0 sc_out sc_logic 1 signal 0 } 
	{ accum_V_d0 sc_out sc_lv 16 signal 0 } 
	{ accum_V_address1 sc_out sc_lv 9 signal 0 } 
	{ accum_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ accum_V_we1 sc_out sc_logic 1 signal 0 } 
	{ accum_V_d1 sc_out sc_lv 16 signal 0 } 
	{ accum_V_1_address0 sc_out sc_lv 9 signal 1 } 
	{ accum_V_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ accum_V_1_we0 sc_out sc_logic 1 signal 1 } 
	{ accum_V_1_d0 sc_out sc_lv 16 signal 1 } 
	{ accum_V_1_address1 sc_out sc_lv 9 signal 1 } 
	{ accum_V_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ accum_V_1_we1 sc_out sc_logic 1 signal 1 } 
	{ accum_V_1_d1 sc_out sc_lv 16 signal 1 } 
	{ accum_V_2_address0 sc_out sc_lv 9 signal 2 } 
	{ accum_V_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ accum_V_2_we0 sc_out sc_logic 1 signal 2 } 
	{ accum_V_2_d0 sc_out sc_lv 16 signal 2 } 
	{ accum_V_2_address1 sc_out sc_lv 9 signal 2 } 
	{ accum_V_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ accum_V_2_we1 sc_out sc_logic 1 signal 2 } 
	{ accum_V_2_d1 sc_out sc_lv 16 signal 2 } 
	{ accum_V_3_address0 sc_out sc_lv 9 signal 3 } 
	{ accum_V_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ accum_V_3_we0 sc_out sc_logic 1 signal 3 } 
	{ accum_V_3_d0 sc_out sc_lv 16 signal 3 } 
	{ accum_V_3_address1 sc_out sc_lv 9 signal 3 } 
	{ accum_V_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ accum_V_3_we1 sc_out sc_logic 1 signal 3 } 
	{ accum_V_3_d1 sc_out sc_lv 16 signal 3 } 
	{ accum_V_4_address0 sc_out sc_lv 9 signal 4 } 
	{ accum_V_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ accum_V_4_we0 sc_out sc_logic 1 signal 4 } 
	{ accum_V_4_d0 sc_out sc_lv 16 signal 4 } 
	{ accum_V_4_address1 sc_out sc_lv 9 signal 4 } 
	{ accum_V_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ accum_V_4_we1 sc_out sc_logic 1 signal 4 } 
	{ accum_V_4_d1 sc_out sc_lv 16 signal 4 } 
	{ accum_V_5_address0 sc_out sc_lv 9 signal 5 } 
	{ accum_V_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ accum_V_5_we0 sc_out sc_logic 1 signal 5 } 
	{ accum_V_5_d0 sc_out sc_lv 16 signal 5 } 
	{ accum_V_5_address1 sc_out sc_lv 9 signal 5 } 
	{ accum_V_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ accum_V_5_we1 sc_out sc_logic 1 signal 5 } 
	{ accum_V_5_d1 sc_out sc_lv 16 signal 5 } 
	{ accum_V_6_address0 sc_out sc_lv 9 signal 6 } 
	{ accum_V_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_6_we0 sc_out sc_logic 1 signal 6 } 
	{ accum_V_6_d0 sc_out sc_lv 16 signal 6 } 
	{ accum_V_6_address1 sc_out sc_lv 9 signal 6 } 
	{ accum_V_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ accum_V_6_we1 sc_out sc_logic 1 signal 6 } 
	{ accum_V_6_d1 sc_out sc_lv 16 signal 6 } 
	{ accum_V_7_address0 sc_out sc_lv 9 signal 7 } 
	{ accum_V_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ accum_V_7_we0 sc_out sc_logic 1 signal 7 } 
	{ accum_V_7_d0 sc_out sc_lv 16 signal 7 } 
	{ accum_V_7_address1 sc_out sc_lv 9 signal 7 } 
	{ accum_V_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ accum_V_7_we1 sc_out sc_logic 1 signal 7 } 
	{ accum_V_7_d1 sc_out sc_lv 16 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "accum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V", "role": "address0" }} , 
 	{ "name": "accum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce0" }} , 
 	{ "name": "accum_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we0" }} , 
 	{ "name": "accum_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d0" }} , 
 	{ "name": "accum_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V", "role": "address1" }} , 
 	{ "name": "accum_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "ce1" }} , 
 	{ "name": "accum_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V", "role": "we1" }} , 
 	{ "name": "accum_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V", "role": "d1" }} , 
 	{ "name": "accum_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_1", "role": "address0" }} , 
 	{ "name": "accum_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "ce0" }} , 
 	{ "name": "accum_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "we0" }} , 
 	{ "name": "accum_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "d0" }} , 
 	{ "name": "accum_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_1", "role": "address1" }} , 
 	{ "name": "accum_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "ce1" }} , 
 	{ "name": "accum_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_1", "role": "we1" }} , 
 	{ "name": "accum_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_1", "role": "d1" }} , 
 	{ "name": "accum_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_2", "role": "address0" }} , 
 	{ "name": "accum_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "ce0" }} , 
 	{ "name": "accum_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "we0" }} , 
 	{ "name": "accum_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "d0" }} , 
 	{ "name": "accum_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_2", "role": "address1" }} , 
 	{ "name": "accum_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "ce1" }} , 
 	{ "name": "accum_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_2", "role": "we1" }} , 
 	{ "name": "accum_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_2", "role": "d1" }} , 
 	{ "name": "accum_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_3", "role": "address0" }} , 
 	{ "name": "accum_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "ce0" }} , 
 	{ "name": "accum_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "we0" }} , 
 	{ "name": "accum_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "d0" }} , 
 	{ "name": "accum_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_3", "role": "address1" }} , 
 	{ "name": "accum_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "ce1" }} , 
 	{ "name": "accum_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_3", "role": "we1" }} , 
 	{ "name": "accum_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_3", "role": "d1" }} , 
 	{ "name": "accum_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_4", "role": "address0" }} , 
 	{ "name": "accum_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_4", "role": "ce0" }} , 
 	{ "name": "accum_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_4", "role": "we0" }} , 
 	{ "name": "accum_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_4", "role": "d0" }} , 
 	{ "name": "accum_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_4", "role": "address1" }} , 
 	{ "name": "accum_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_4", "role": "ce1" }} , 
 	{ "name": "accum_V_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_4", "role": "we1" }} , 
 	{ "name": "accum_V_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_4", "role": "d1" }} , 
 	{ "name": "accum_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_5", "role": "address0" }} , 
 	{ "name": "accum_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_5", "role": "ce0" }} , 
 	{ "name": "accum_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_5", "role": "we0" }} , 
 	{ "name": "accum_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_5", "role": "d0" }} , 
 	{ "name": "accum_V_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_5", "role": "address1" }} , 
 	{ "name": "accum_V_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_5", "role": "ce1" }} , 
 	{ "name": "accum_V_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_5", "role": "we1" }} , 
 	{ "name": "accum_V_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_5", "role": "d1" }} , 
 	{ "name": "accum_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_6", "role": "address0" }} , 
 	{ "name": "accum_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_6", "role": "ce0" }} , 
 	{ "name": "accum_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_6", "role": "we0" }} , 
 	{ "name": "accum_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_6", "role": "d0" }} , 
 	{ "name": "accum_V_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_6", "role": "address1" }} , 
 	{ "name": "accum_V_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_6", "role": "ce1" }} , 
 	{ "name": "accum_V_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_6", "role": "we1" }} , 
 	{ "name": "accum_V_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_6", "role": "d1" }} , 
 	{ "name": "accum_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_7", "role": "address0" }} , 
 	{ "name": "accum_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_7", "role": "ce0" }} , 
 	{ "name": "accum_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_7", "role": "we0" }} , 
 	{ "name": "accum_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_7", "role": "d0" }} , 
 	{ "name": "accum_V_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "accum_V_7", "role": "address1" }} , 
 	{ "name": "accum_V_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_7", "role": "ce1" }} , 
 	{ "name": "accum_V_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accum_V_7", "role": "we1" }} , 
 	{ "name": "accum_V_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "accum_V_7", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "accum_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "accum_V_7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_66_5 {
		accum_V {Type O LastRead -1 FirstWrite 0}
		accum_V_1 {Type O LastRead -1 FirstWrite 0}
		accum_V_2 {Type O LastRead -1 FirstWrite 0}
		accum_V_3 {Type O LastRead -1 FirstWrite 0}
		accum_V_4 {Type O LastRead -1 FirstWrite 0}
		accum_V_5 {Type O LastRead -1 FirstWrite 0}
		accum_V_6 {Type O LastRead -1 FirstWrite 0}
		accum_V_7 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "258", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "258", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	accum_V { ap_memory {  { accum_V_address0 mem_address 1 9 }  { accum_V_ce0 mem_ce 1 1 }  { accum_V_we0 mem_we 1 1 }  { accum_V_d0 mem_din 1 16 }  { accum_V_address1 MemPortADDR2 1 9 }  { accum_V_ce1 MemPortCE2 1 1 }  { accum_V_we1 MemPortWE2 1 1 }  { accum_V_d1 MemPortDIN2 1 16 } } }
	accum_V_1 { ap_memory {  { accum_V_1_address0 mem_address 1 9 }  { accum_V_1_ce0 mem_ce 1 1 }  { accum_V_1_we0 mem_we 1 1 }  { accum_V_1_d0 mem_din 1 16 }  { accum_V_1_address1 MemPortADDR2 1 9 }  { accum_V_1_ce1 MemPortCE2 1 1 }  { accum_V_1_we1 MemPortWE2 1 1 }  { accum_V_1_d1 MemPortDIN2 1 16 } } }
	accum_V_2 { ap_memory {  { accum_V_2_address0 mem_address 1 9 }  { accum_V_2_ce0 mem_ce 1 1 }  { accum_V_2_we0 mem_we 1 1 }  { accum_V_2_d0 mem_din 1 16 }  { accum_V_2_address1 MemPortADDR2 1 9 }  { accum_V_2_ce1 MemPortCE2 1 1 }  { accum_V_2_we1 MemPortWE2 1 1 }  { accum_V_2_d1 MemPortDIN2 1 16 } } }
	accum_V_3 { ap_memory {  { accum_V_3_address0 mem_address 1 9 }  { accum_V_3_ce0 mem_ce 1 1 }  { accum_V_3_we0 mem_we 1 1 }  { accum_V_3_d0 mem_din 1 16 }  { accum_V_3_address1 MemPortADDR2 1 9 }  { accum_V_3_ce1 MemPortCE2 1 1 }  { accum_V_3_we1 MemPortWE2 1 1 }  { accum_V_3_d1 MemPortDIN2 1 16 } } }
	accum_V_4 { ap_memory {  { accum_V_4_address0 mem_address 1 9 }  { accum_V_4_ce0 mem_ce 1 1 }  { accum_V_4_we0 mem_we 1 1 }  { accum_V_4_d0 mem_din 1 16 }  { accum_V_4_address1 MemPortADDR2 1 9 }  { accum_V_4_ce1 MemPortCE2 1 1 }  { accum_V_4_we1 MemPortWE2 1 1 }  { accum_V_4_d1 MemPortDIN2 1 16 } } }
	accum_V_5 { ap_memory {  { accum_V_5_address0 mem_address 1 9 }  { accum_V_5_ce0 mem_ce 1 1 }  { accum_V_5_we0 mem_we 1 1 }  { accum_V_5_d0 mem_din 1 16 }  { accum_V_5_address1 MemPortADDR2 1 9 }  { accum_V_5_ce1 MemPortCE2 1 1 }  { accum_V_5_we1 MemPortWE2 1 1 }  { accum_V_5_d1 MemPortDIN2 1 16 } } }
	accum_V_6 { ap_memory {  { accum_V_6_address0 mem_address 1 9 }  { accum_V_6_ce0 mem_ce 1 1 }  { accum_V_6_we0 mem_we 1 1 }  { accum_V_6_d0 mem_din 1 16 }  { accum_V_6_address1 MemPortADDR2 1 9 }  { accum_V_6_ce1 MemPortCE2 1 1 }  { accum_V_6_we1 MemPortWE2 1 1 }  { accum_V_6_d1 MemPortDIN2 1 16 } } }
	accum_V_7 { ap_memory {  { accum_V_7_address0 mem_address 1 9 }  { accum_V_7_ce0 mem_ce 1 1 }  { accum_V_7_we0 mem_we 1 1 }  { accum_V_7_d0 mem_din 1 16 }  { accum_V_7_address1 MemPortADDR2 1 9 }  { accum_V_7_ce1 MemPortCE2 1 1 }  { accum_V_7_we1 MemPortWE2 1 1 }  { accum_V_7_d1 MemPortDIN2 1 16 } } }
}
