set moduleName aes256_encrypt_ecb_Pipeline_ecb2
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
set C_modelName {aes256_encrypt_ecb_Pipeline_ecb2}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_partset613_reload int 768 regular  }
	{ ctx7_out int 768 regular {pointer 1}  }
	{ sbox int 8 regular {array 256 { 1 1 1 1 1 1 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_partset613_reload", "interface" : "wire", "bitwidth" : 768, "direction" : "READONLY"} , 
 	{ "Name" : "ctx7_out", "interface" : "wire", "bitwidth" : 768, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sbox", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_partset613_reload sc_in sc_lv 768 signal 0 } 
	{ ctx7_out sc_out sc_lv 768 signal 1 } 
	{ ctx7_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ sbox_address0 sc_out sc_lv 8 signal 2 } 
	{ sbox_ce0 sc_out sc_logic 1 signal 2 } 
	{ sbox_q0 sc_in sc_lv 8 signal 2 } 
	{ sbox_address1 sc_out sc_lv 8 signal 2 } 
	{ sbox_ce1 sc_out sc_logic 1 signal 2 } 
	{ sbox_q1 sc_in sc_lv 8 signal 2 } 
	{ sbox_address2 sc_out sc_lv 8 signal 2 } 
	{ sbox_ce2 sc_out sc_logic 1 signal 2 } 
	{ sbox_q2 sc_in sc_lv 8 signal 2 } 
	{ sbox_address3 sc_out sc_lv 8 signal 2 } 
	{ sbox_ce3 sc_out sc_logic 1 signal 2 } 
	{ sbox_q3 sc_in sc_lv 8 signal 2 } 
	{ sbox_address4 sc_out sc_lv 8 signal 2 } 
	{ sbox_ce4 sc_out sc_logic 1 signal 2 } 
	{ sbox_q4 sc_in sc_lv 8 signal 2 } 
	{ sbox_address5 sc_out sc_lv 8 signal 2 } 
	{ sbox_ce5 sc_out sc_logic 1 signal 2 } 
	{ sbox_q5 sc_in sc_lv 8 signal 2 } 
	{ sbox_address6 sc_out sc_lv 8 signal 2 } 
	{ sbox_ce6 sc_out sc_logic 1 signal 2 } 
	{ sbox_q6 sc_in sc_lv 8 signal 2 } 
	{ sbox_address7 sc_out sc_lv 8 signal 2 } 
	{ sbox_ce7 sc_out sc_logic 1 signal 2 } 
	{ sbox_q7 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_partset613_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":768, "type": "signal", "bundle":{"name": "p_partset613_reload", "role": "default" }} , 
 	{ "name": "ctx7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":768, "type": "signal", "bundle":{"name": "ctx7_out", "role": "default" }} , 
 	{ "name": "ctx7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ctx7_out", "role": "ap_vld" }} , 
 	{ "name": "sbox_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address0" }} , 
 	{ "name": "sbox_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce0" }} , 
 	{ "name": "sbox_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q0" }} , 
 	{ "name": "sbox_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address1" }} , 
 	{ "name": "sbox_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce1" }} , 
 	{ "name": "sbox_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q1" }} , 
 	{ "name": "sbox_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address2" }} , 
 	{ "name": "sbox_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce2" }} , 
 	{ "name": "sbox_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q2" }} , 
 	{ "name": "sbox_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address3" }} , 
 	{ "name": "sbox_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce3" }} , 
 	{ "name": "sbox_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q3" }} , 
 	{ "name": "sbox_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address4" }} , 
 	{ "name": "sbox_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce4" }} , 
 	{ "name": "sbox_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q4" }} , 
 	{ "name": "sbox_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address5" }} , 
 	{ "name": "sbox_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce5" }} , 
 	{ "name": "sbox_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q5" }} , 
 	{ "name": "sbox_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address6" }} , 
 	{ "name": "sbox_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce6" }} , 
 	{ "name": "sbox_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q6" }} , 
 	{ "name": "sbox_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address7" }} , 
 	{ "name": "sbox_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce7" }} , 
 	{ "name": "sbox_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q7" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "aes256_encrypt_ecb_Pipeline_ecb2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "192", "EstimateLatencyMax" : "192",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_partset613_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_aes_expandEncKey_fu_63", "Port" : "sbox", "Inst_start_state" : "2", "Inst_end_state" : "29"}]}],
		"Loop" : [
			{"Name" : "ecb2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "27", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_fu_63", "Parent" : "0",
		"CDFG" : "aes_expandEncKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "27", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "k_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "rc_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	aes256_encrypt_ecb_Pipeline_ecb2 {
		p_partset613_reload {Type I LastRead 0 FirstWrite -1}
		ctx7_out {Type O LastRead -1 FirstWrite 1}
		sbox {Type I LastRead 20 FirstWrite -1}}
	aes_expandEncKey {
		p_read {Type I LastRead 0 FirstWrite -1}
		k_idx {Type I LastRead 0 FirstWrite -1}
		rc_read {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead 20 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "192", "Max" : "192"}
	, {"Name" : "Interval", "Min" : "192", "Max" : "192"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_partset613_reload { ap_none {  { p_partset613_reload in_data 0 768 } } }
	ctx7_out { ap_vld {  { ctx7_out out_data 1 768 }  { ctx7_out_ap_vld out_vld 1 1 } } }
	sbox { ap_memory {  { sbox_address0 mem_address 1 8 }  { sbox_ce0 mem_ce 1 1 }  { sbox_q0 mem_dout 0 8 }  { sbox_address1 MemPortADDR2 1 8 }  { sbox_ce1 MemPortCE2 1 1 }  { sbox_q1 MemPortDOUT2 0 8 }  { sbox_address2 MemPortADDR2 1 8 }  { sbox_ce2 MemPortCE2 1 1 }  { sbox_q2 MemPortDOUT2 0 8 }  { sbox_address3 MemPortADDR2 1 8 }  { sbox_ce3 MemPortCE2 1 1 }  { sbox_q3 MemPortDOUT2 0 8 }  { sbox_address4 MemPortADDR2 1 8 }  { sbox_ce4 MemPortCE2 1 1 }  { sbox_q4 MemPortDOUT2 0 8 }  { sbox_address5 MemPortADDR2 1 8 }  { sbox_ce5 MemPortCE2 1 1 }  { sbox_q5 MemPortDOUT2 0 8 }  { sbox_address6 MemPortADDR2 1 8 }  { sbox_ce6 MemPortCE2 1 1 }  { sbox_q6 MemPortDOUT2 0 8 }  { sbox_address7 MemPortADDR2 1 8 }  { sbox_ce7 MemPortCE2 1 1 }  { sbox_q7 MemPortDOUT2 0 8 } } }
}
