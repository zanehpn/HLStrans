set moduleName k3mm_Pipeline_lp4_lp5
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
set C_modelName {k3mm_Pipeline_lp4_lp5}
set C_modelType { void 0 }
set C_modelArgList {
	{ buff_C float 32 regular {array 4096 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 } 1 1 }  }
	{ buff_D float 32 regular {array 4096 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 } 1 1 }  }
	{ tmp2 float 32 regular {array 4096 { 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buff_C", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buff_D", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 107
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buff_C_address0 sc_out sc_lv 12 signal 0 } 
	{ buff_C_ce0 sc_out sc_logic 1 signal 0 } 
	{ buff_C_q0 sc_in sc_lv 32 signal 0 } 
	{ buff_C_address1 sc_out sc_lv 12 signal 0 } 
	{ buff_C_ce1 sc_out sc_logic 1 signal 0 } 
	{ buff_C_q1 sc_in sc_lv 32 signal 0 } 
	{ buff_C_address2 sc_out sc_lv 12 signal 0 } 
	{ buff_C_ce2 sc_out sc_logic 1 signal 0 } 
	{ buff_C_q2 sc_in sc_lv 32 signal 0 } 
	{ buff_C_address3 sc_out sc_lv 12 signal 0 } 
	{ buff_C_ce3 sc_out sc_logic 1 signal 0 } 
	{ buff_C_q3 sc_in sc_lv 32 signal 0 } 
	{ buff_C_address4 sc_out sc_lv 12 signal 0 } 
	{ buff_C_ce4 sc_out sc_logic 1 signal 0 } 
	{ buff_C_q4 sc_in sc_lv 32 signal 0 } 
	{ buff_C_address5 sc_out sc_lv 12 signal 0 } 
	{ buff_C_ce5 sc_out sc_logic 1 signal 0 } 
	{ buff_C_q5 sc_in sc_lv 32 signal 0 } 
	{ buff_C_address6 sc_out sc_lv 12 signal 0 } 
	{ buff_C_ce6 sc_out sc_logic 1 signal 0 } 
	{ buff_C_q6 sc_in sc_lv 32 signal 0 } 
	{ buff_C_address7 sc_out sc_lv 12 signal 0 } 
	{ buff_C_ce7 sc_out sc_logic 1 signal 0 } 
	{ buff_C_q7 sc_in sc_lv 32 signal 0 } 
	{ buff_C_address8 sc_out sc_lv 12 signal 0 } 
	{ buff_C_ce8 sc_out sc_logic 1 signal 0 } 
	{ buff_C_q8 sc_in sc_lv 32 signal 0 } 
	{ buff_C_address9 sc_out sc_lv 12 signal 0 } 
	{ buff_C_ce9 sc_out sc_logic 1 signal 0 } 
	{ buff_C_q9 sc_in sc_lv 32 signal 0 } 
	{ buff_C_address10 sc_out sc_lv 12 signal 0 } 
	{ buff_C_ce10 sc_out sc_logic 1 signal 0 } 
	{ buff_C_q10 sc_in sc_lv 32 signal 0 } 
	{ buff_C_address11 sc_out sc_lv 12 signal 0 } 
	{ buff_C_ce11 sc_out sc_logic 1 signal 0 } 
	{ buff_C_q11 sc_in sc_lv 32 signal 0 } 
	{ buff_C_address12 sc_out sc_lv 12 signal 0 } 
	{ buff_C_ce12 sc_out sc_logic 1 signal 0 } 
	{ buff_C_q12 sc_in sc_lv 32 signal 0 } 
	{ buff_C_address13 sc_out sc_lv 12 signal 0 } 
	{ buff_C_ce13 sc_out sc_logic 1 signal 0 } 
	{ buff_C_q13 sc_in sc_lv 32 signal 0 } 
	{ buff_C_address14 sc_out sc_lv 12 signal 0 } 
	{ buff_C_ce14 sc_out sc_logic 1 signal 0 } 
	{ buff_C_q14 sc_in sc_lv 32 signal 0 } 
	{ buff_C_address15 sc_out sc_lv 12 signal 0 } 
	{ buff_C_ce15 sc_out sc_logic 1 signal 0 } 
	{ buff_C_q15 sc_in sc_lv 32 signal 0 } 
	{ buff_D_address0 sc_out sc_lv 12 signal 1 } 
	{ buff_D_ce0 sc_out sc_logic 1 signal 1 } 
	{ buff_D_q0 sc_in sc_lv 32 signal 1 } 
	{ buff_D_address1 sc_out sc_lv 12 signal 1 } 
	{ buff_D_ce1 sc_out sc_logic 1 signal 1 } 
	{ buff_D_q1 sc_in sc_lv 32 signal 1 } 
	{ buff_D_address2 sc_out sc_lv 12 signal 1 } 
	{ buff_D_ce2 sc_out sc_logic 1 signal 1 } 
	{ buff_D_q2 sc_in sc_lv 32 signal 1 } 
	{ buff_D_address3 sc_out sc_lv 12 signal 1 } 
	{ buff_D_ce3 sc_out sc_logic 1 signal 1 } 
	{ buff_D_q3 sc_in sc_lv 32 signal 1 } 
	{ buff_D_address4 sc_out sc_lv 12 signal 1 } 
	{ buff_D_ce4 sc_out sc_logic 1 signal 1 } 
	{ buff_D_q4 sc_in sc_lv 32 signal 1 } 
	{ buff_D_address5 sc_out sc_lv 12 signal 1 } 
	{ buff_D_ce5 sc_out sc_logic 1 signal 1 } 
	{ buff_D_q5 sc_in sc_lv 32 signal 1 } 
	{ buff_D_address6 sc_out sc_lv 12 signal 1 } 
	{ buff_D_ce6 sc_out sc_logic 1 signal 1 } 
	{ buff_D_q6 sc_in sc_lv 32 signal 1 } 
	{ buff_D_address7 sc_out sc_lv 12 signal 1 } 
	{ buff_D_ce7 sc_out sc_logic 1 signal 1 } 
	{ buff_D_q7 sc_in sc_lv 32 signal 1 } 
	{ buff_D_address8 sc_out sc_lv 12 signal 1 } 
	{ buff_D_ce8 sc_out sc_logic 1 signal 1 } 
	{ buff_D_q8 sc_in sc_lv 32 signal 1 } 
	{ buff_D_address9 sc_out sc_lv 12 signal 1 } 
	{ buff_D_ce9 sc_out sc_logic 1 signal 1 } 
	{ buff_D_q9 sc_in sc_lv 32 signal 1 } 
	{ buff_D_address10 sc_out sc_lv 12 signal 1 } 
	{ buff_D_ce10 sc_out sc_logic 1 signal 1 } 
	{ buff_D_q10 sc_in sc_lv 32 signal 1 } 
	{ buff_D_address11 sc_out sc_lv 12 signal 1 } 
	{ buff_D_ce11 sc_out sc_logic 1 signal 1 } 
	{ buff_D_q11 sc_in sc_lv 32 signal 1 } 
	{ buff_D_address12 sc_out sc_lv 12 signal 1 } 
	{ buff_D_ce12 sc_out sc_logic 1 signal 1 } 
	{ buff_D_q12 sc_in sc_lv 32 signal 1 } 
	{ buff_D_address13 sc_out sc_lv 12 signal 1 } 
	{ buff_D_ce13 sc_out sc_logic 1 signal 1 } 
	{ buff_D_q13 sc_in sc_lv 32 signal 1 } 
	{ buff_D_address14 sc_out sc_lv 12 signal 1 } 
	{ buff_D_ce14 sc_out sc_logic 1 signal 1 } 
	{ buff_D_q14 sc_in sc_lv 32 signal 1 } 
	{ buff_D_address15 sc_out sc_lv 12 signal 1 } 
	{ buff_D_ce15 sc_out sc_logic 1 signal 1 } 
	{ buff_D_q15 sc_in sc_lv 32 signal 1 } 
	{ tmp2_address0 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce0 sc_out sc_logic 1 signal 2 } 
	{ tmp2_we0 sc_out sc_logic 1 signal 2 } 
	{ tmp2_d0 sc_out sc_lv 32 signal 2 } 
	{ tmp2_q0 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buff_C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address0" }} , 
 	{ "name": "buff_C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce0" }} , 
 	{ "name": "buff_C_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "q0" }} , 
 	{ "name": "buff_C_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address1" }} , 
 	{ "name": "buff_C_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce1" }} , 
 	{ "name": "buff_C_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "q1" }} , 
 	{ "name": "buff_C_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address2" }} , 
 	{ "name": "buff_C_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce2" }} , 
 	{ "name": "buff_C_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "q2" }} , 
 	{ "name": "buff_C_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address3" }} , 
 	{ "name": "buff_C_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce3" }} , 
 	{ "name": "buff_C_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "q3" }} , 
 	{ "name": "buff_C_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address4" }} , 
 	{ "name": "buff_C_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce4" }} , 
 	{ "name": "buff_C_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "q4" }} , 
 	{ "name": "buff_C_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address5" }} , 
 	{ "name": "buff_C_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce5" }} , 
 	{ "name": "buff_C_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "q5" }} , 
 	{ "name": "buff_C_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address6" }} , 
 	{ "name": "buff_C_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce6" }} , 
 	{ "name": "buff_C_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "q6" }} , 
 	{ "name": "buff_C_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address7" }} , 
 	{ "name": "buff_C_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce7" }} , 
 	{ "name": "buff_C_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "q7" }} , 
 	{ "name": "buff_C_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address8" }} , 
 	{ "name": "buff_C_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce8" }} , 
 	{ "name": "buff_C_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "q8" }} , 
 	{ "name": "buff_C_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address9" }} , 
 	{ "name": "buff_C_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce9" }} , 
 	{ "name": "buff_C_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "q9" }} , 
 	{ "name": "buff_C_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address10" }} , 
 	{ "name": "buff_C_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce10" }} , 
 	{ "name": "buff_C_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "q10" }} , 
 	{ "name": "buff_C_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address11" }} , 
 	{ "name": "buff_C_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce11" }} , 
 	{ "name": "buff_C_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "q11" }} , 
 	{ "name": "buff_C_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address12" }} , 
 	{ "name": "buff_C_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce12" }} , 
 	{ "name": "buff_C_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "q12" }} , 
 	{ "name": "buff_C_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address13" }} , 
 	{ "name": "buff_C_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce13" }} , 
 	{ "name": "buff_C_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "q13" }} , 
 	{ "name": "buff_C_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address14" }} , 
 	{ "name": "buff_C_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce14" }} , 
 	{ "name": "buff_C_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "q14" }} , 
 	{ "name": "buff_C_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_C", "role": "address15" }} , 
 	{ "name": "buff_C_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_C", "role": "ce15" }} , 
 	{ "name": "buff_C_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_C", "role": "q15" }} , 
 	{ "name": "buff_D_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address0" }} , 
 	{ "name": "buff_D_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce0" }} , 
 	{ "name": "buff_D_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "q0" }} , 
 	{ "name": "buff_D_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address1" }} , 
 	{ "name": "buff_D_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce1" }} , 
 	{ "name": "buff_D_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "q1" }} , 
 	{ "name": "buff_D_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address2" }} , 
 	{ "name": "buff_D_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce2" }} , 
 	{ "name": "buff_D_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "q2" }} , 
 	{ "name": "buff_D_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address3" }} , 
 	{ "name": "buff_D_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce3" }} , 
 	{ "name": "buff_D_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "q3" }} , 
 	{ "name": "buff_D_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address4" }} , 
 	{ "name": "buff_D_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce4" }} , 
 	{ "name": "buff_D_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "q4" }} , 
 	{ "name": "buff_D_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address5" }} , 
 	{ "name": "buff_D_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce5" }} , 
 	{ "name": "buff_D_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "q5" }} , 
 	{ "name": "buff_D_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address6" }} , 
 	{ "name": "buff_D_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce6" }} , 
 	{ "name": "buff_D_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "q6" }} , 
 	{ "name": "buff_D_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address7" }} , 
 	{ "name": "buff_D_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce7" }} , 
 	{ "name": "buff_D_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "q7" }} , 
 	{ "name": "buff_D_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address8" }} , 
 	{ "name": "buff_D_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce8" }} , 
 	{ "name": "buff_D_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "q8" }} , 
 	{ "name": "buff_D_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address9" }} , 
 	{ "name": "buff_D_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce9" }} , 
 	{ "name": "buff_D_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "q9" }} , 
 	{ "name": "buff_D_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address10" }} , 
 	{ "name": "buff_D_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce10" }} , 
 	{ "name": "buff_D_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "q10" }} , 
 	{ "name": "buff_D_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address11" }} , 
 	{ "name": "buff_D_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce11" }} , 
 	{ "name": "buff_D_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "q11" }} , 
 	{ "name": "buff_D_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address12" }} , 
 	{ "name": "buff_D_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce12" }} , 
 	{ "name": "buff_D_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "q12" }} , 
 	{ "name": "buff_D_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address13" }} , 
 	{ "name": "buff_D_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce13" }} , 
 	{ "name": "buff_D_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "q13" }} , 
 	{ "name": "buff_D_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address14" }} , 
 	{ "name": "buff_D_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce14" }} , 
 	{ "name": "buff_D_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "q14" }} , 
 	{ "name": "buff_D_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_D", "role": "address15" }} , 
 	{ "name": "buff_D_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_D", "role": "ce15" }} , 
 	{ "name": "buff_D_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_D", "role": "q15" }} , 
 	{ "name": "tmp2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address0" }} , 
 	{ "name": "tmp2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce0" }} , 
 	{ "name": "tmp2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "we0" }} , 
 	{ "name": "tmp2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "d0" }} , 
 	{ "name": "tmp2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "k3mm_Pipeline_lp4_lp5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16708", "EstimateLatencyMax" : "16708",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_C", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_D", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp2", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "lp4_lp5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter81", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter81", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U47", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U48", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U49", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U50", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U51", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U52", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U53", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U54", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U55", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U56", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U57", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U58", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U59", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U60", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U61", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U62", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U63", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U64", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U65", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U66", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U67", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U68", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U69", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U70", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U71", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U72", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U73", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U74", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U75", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U76", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U77", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U78", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	k3mm_Pipeline_lp4_lp5 {
		buff_C {Type I LastRead 4 FirstWrite -1}
		buff_D {Type I LastRead 4 FirstWrite -1}
		tmp2 {Type IO LastRead 0 FirstWrite 326}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16708", "Max" : "16708"}
	, {"Name" : "Interval", "Min" : "16708", "Max" : "16708"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	buff_C { ap_memory {  { buff_C_address0 mem_address 1 12 }  { buff_C_ce0 mem_ce 1 1 }  { buff_C_q0 mem_dout 0 32 }  { buff_C_address1 MemPortADDR2 1 12 }  { buff_C_ce1 MemPortCE2 1 1 }  { buff_C_q1 MemPortDOUT2 0 32 }  { buff_C_address2 MemPortADDR2 1 12 }  { buff_C_ce2 MemPortCE2 1 1 }  { buff_C_q2 MemPortDOUT2 0 32 }  { buff_C_address3 MemPortADDR2 1 12 }  { buff_C_ce3 MemPortCE2 1 1 }  { buff_C_q3 MemPortDOUT2 0 32 }  { buff_C_address4 MemPortADDR2 1 12 }  { buff_C_ce4 MemPortCE2 1 1 }  { buff_C_q4 MemPortDOUT2 0 32 }  { buff_C_address5 MemPortADDR2 1 12 }  { buff_C_ce5 MemPortCE2 1 1 }  { buff_C_q5 MemPortDOUT2 0 32 }  { buff_C_address6 MemPortADDR2 1 12 }  { buff_C_ce6 MemPortCE2 1 1 }  { buff_C_q6 MemPortDOUT2 0 32 }  { buff_C_address7 MemPortADDR2 1 12 }  { buff_C_ce7 MemPortCE2 1 1 }  { buff_C_q7 MemPortDOUT2 0 32 }  { buff_C_address8 MemPortADDR2 1 12 }  { buff_C_ce8 MemPortCE2 1 1 }  { buff_C_q8 MemPortDOUT2 0 32 }  { buff_C_address9 MemPortADDR2 1 12 }  { buff_C_ce9 MemPortCE2 1 1 }  { buff_C_q9 MemPortDOUT2 0 32 }  { buff_C_address10 MemPortADDR2 1 12 }  { buff_C_ce10 MemPortCE2 1 1 }  { buff_C_q10 MemPortDOUT2 0 32 }  { buff_C_address11 MemPortADDR2 1 12 }  { buff_C_ce11 MemPortCE2 1 1 }  { buff_C_q11 MemPortDOUT2 0 32 }  { buff_C_address12 MemPortADDR2 1 12 }  { buff_C_ce12 MemPortCE2 1 1 }  { buff_C_q12 MemPortDOUT2 0 32 }  { buff_C_address13 MemPortADDR2 1 12 }  { buff_C_ce13 MemPortCE2 1 1 }  { buff_C_q13 MemPortDOUT2 0 32 }  { buff_C_address14 MemPortADDR2 1 12 }  { buff_C_ce14 MemPortCE2 1 1 }  { buff_C_q14 MemPortDOUT2 0 32 }  { buff_C_address15 MemPortADDR2 1 12 }  { buff_C_ce15 MemPortCE2 1 1 }  { buff_C_q15 MemPortDOUT2 0 32 } } }
	buff_D { ap_memory {  { buff_D_address0 mem_address 1 12 }  { buff_D_ce0 mem_ce 1 1 }  { buff_D_q0 mem_dout 0 32 }  { buff_D_address1 MemPortADDR2 1 12 }  { buff_D_ce1 MemPortCE2 1 1 }  { buff_D_q1 MemPortDOUT2 0 32 }  { buff_D_address2 MemPortADDR2 1 12 }  { buff_D_ce2 MemPortCE2 1 1 }  { buff_D_q2 MemPortDOUT2 0 32 }  { buff_D_address3 MemPortADDR2 1 12 }  { buff_D_ce3 MemPortCE2 1 1 }  { buff_D_q3 MemPortDOUT2 0 32 }  { buff_D_address4 MemPortADDR2 1 12 }  { buff_D_ce4 MemPortCE2 1 1 }  { buff_D_q4 MemPortDOUT2 0 32 }  { buff_D_address5 MemPortADDR2 1 12 }  { buff_D_ce5 MemPortCE2 1 1 }  { buff_D_q5 MemPortDOUT2 0 32 }  { buff_D_address6 MemPortADDR2 1 12 }  { buff_D_ce6 MemPortCE2 1 1 }  { buff_D_q6 MemPortDOUT2 0 32 }  { buff_D_address7 MemPortADDR2 1 12 }  { buff_D_ce7 MemPortCE2 1 1 }  { buff_D_q7 MemPortDOUT2 0 32 }  { buff_D_address8 MemPortADDR2 1 12 }  { buff_D_ce8 MemPortCE2 1 1 }  { buff_D_q8 MemPortDOUT2 0 32 }  { buff_D_address9 MemPortADDR2 1 12 }  { buff_D_ce9 MemPortCE2 1 1 }  { buff_D_q9 MemPortDOUT2 0 32 }  { buff_D_address10 MemPortADDR2 1 12 }  { buff_D_ce10 MemPortCE2 1 1 }  { buff_D_q10 MemPortDOUT2 0 32 }  { buff_D_address11 MemPortADDR2 1 12 }  { buff_D_ce11 MemPortCE2 1 1 }  { buff_D_q11 MemPortDOUT2 0 32 }  { buff_D_address12 MemPortADDR2 1 12 }  { buff_D_ce12 MemPortCE2 1 1 }  { buff_D_q12 MemPortDOUT2 0 32 }  { buff_D_address13 MemPortADDR2 1 12 }  { buff_D_ce13 MemPortCE2 1 1 }  { buff_D_q13 MemPortDOUT2 0 32 }  { buff_D_address14 MemPortADDR2 1 12 }  { buff_D_ce14 MemPortCE2 1 1 }  { buff_D_q14 MemPortDOUT2 0 32 }  { buff_D_address15 MemPortADDR2 1 12 }  { buff_D_ce15 MemPortCE2 1 1 }  { buff_D_q15 MemPortDOUT2 0 32 } } }
	tmp2 { ap_memory {  { tmp2_address0 mem_address 1 12 }  { tmp2_ce0 mem_ce 1 1 }  { tmp2_we0 mem_we 1 1 }  { tmp2_d0 mem_din 1 32 }  { tmp2_q0 mem_dout 0 32 } } }
}
