set moduleName latnrm_Pipeline_VITIS_LOOP_57_6
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
set C_modelName {latnrm_Pipeline_VITIS_LOOP_57_6}
set C_modelType { void 0 }
set C_modelArgList {
	{ internal_state_1 int 32 regular {pointer 1}  }
	{ internal_state_2 int 32 regular {pointer 1}  }
	{ internal_state_3 int 32 regular {pointer 1}  }
	{ int_state_V int 32 regular {array 33 { 1 1 } 1 1 }  }
	{ internal_state_0 int 32 regular {pointer 1}  }
	{ internal_state_4 int 32 regular {pointer 1}  }
	{ internal_state_8 int 32 regular {pointer 1}  }
	{ internal_state_12 int 32 regular {pointer 1}  }
	{ internal_state_16 int 32 regular {pointer 1}  }
	{ internal_state_20 int 32 regular {pointer 1}  }
	{ internal_state_24 int 32 regular {pointer 1}  }
	{ internal_state_28 int 32 regular {pointer 1}  }
	{ internal_state_32 int 32 regular {pointer 1}  }
	{ internal_state_5 int 32 regular {pointer 1}  }
	{ internal_state_6 int 32 regular {pointer 1}  }
	{ internal_state_7 int 32 regular {pointer 1}  }
	{ internal_state_9 int 32 regular {pointer 1}  }
	{ internal_state_10 int 32 regular {pointer 1}  }
	{ internal_state_11 int 32 regular {pointer 1}  }
	{ internal_state_13 int 32 regular {pointer 1}  }
	{ internal_state_14 int 32 regular {pointer 1}  }
	{ internal_state_15 int 32 regular {pointer 1}  }
	{ internal_state_17 int 32 regular {pointer 1}  }
	{ internal_state_18 int 32 regular {pointer 1}  }
	{ internal_state_19 int 32 regular {pointer 1}  }
	{ internal_state_21 int 32 regular {pointer 1}  }
	{ internal_state_22 int 32 regular {pointer 1}  }
	{ internal_state_23 int 32 regular {pointer 1}  }
	{ internal_state_25 int 32 regular {pointer 1}  }
	{ internal_state_26 int 32 regular {pointer 1}  }
	{ internal_state_27 int 32 regular {pointer 1}  }
	{ internal_state_29 int 32 regular {pointer 1}  }
	{ internal_state_30 int 32 regular {pointer 1}  }
	{ internal_state_31 int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "internal_state_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "int_state_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "internal_state_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_4", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_8", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_12", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_16", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_20", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_24", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_28", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_32", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_5", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_6", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_7", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_9", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_10", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_11", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_13", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_14", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_15", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_17", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_18", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_19", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_21", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_22", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_23", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_25", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_26", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_27", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_29", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_30", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "internal_state_31", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 78
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ internal_state_1 sc_out sc_lv 32 signal 0 } 
	{ internal_state_1_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ internal_state_2 sc_out sc_lv 32 signal 1 } 
	{ internal_state_2_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ internal_state_3 sc_out sc_lv 32 signal 2 } 
	{ internal_state_3_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ int_state_V_address0 sc_out sc_lv 6 signal 3 } 
	{ int_state_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ int_state_V_q0 sc_in sc_lv 32 signal 3 } 
	{ int_state_V_address1 sc_out sc_lv 6 signal 3 } 
	{ int_state_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ int_state_V_q1 sc_in sc_lv 32 signal 3 } 
	{ internal_state_0 sc_out sc_lv 32 signal 4 } 
	{ internal_state_0_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ internal_state_4 sc_out sc_lv 32 signal 5 } 
	{ internal_state_4_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ internal_state_8 sc_out sc_lv 32 signal 6 } 
	{ internal_state_8_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ internal_state_12 sc_out sc_lv 32 signal 7 } 
	{ internal_state_12_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ internal_state_16 sc_out sc_lv 32 signal 8 } 
	{ internal_state_16_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ internal_state_20 sc_out sc_lv 32 signal 9 } 
	{ internal_state_20_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ internal_state_24 sc_out sc_lv 32 signal 10 } 
	{ internal_state_24_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ internal_state_28 sc_out sc_lv 32 signal 11 } 
	{ internal_state_28_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ internal_state_32 sc_out sc_lv 32 signal 12 } 
	{ internal_state_32_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ internal_state_5 sc_out sc_lv 32 signal 13 } 
	{ internal_state_5_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ internal_state_6 sc_out sc_lv 32 signal 14 } 
	{ internal_state_6_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ internal_state_7 sc_out sc_lv 32 signal 15 } 
	{ internal_state_7_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ internal_state_9 sc_out sc_lv 32 signal 16 } 
	{ internal_state_9_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ internal_state_10 sc_out sc_lv 32 signal 17 } 
	{ internal_state_10_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ internal_state_11 sc_out sc_lv 32 signal 18 } 
	{ internal_state_11_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ internal_state_13 sc_out sc_lv 32 signal 19 } 
	{ internal_state_13_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ internal_state_14 sc_out sc_lv 32 signal 20 } 
	{ internal_state_14_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ internal_state_15 sc_out sc_lv 32 signal 21 } 
	{ internal_state_15_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ internal_state_17 sc_out sc_lv 32 signal 22 } 
	{ internal_state_17_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ internal_state_18 sc_out sc_lv 32 signal 23 } 
	{ internal_state_18_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ internal_state_19 sc_out sc_lv 32 signal 24 } 
	{ internal_state_19_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ internal_state_21 sc_out sc_lv 32 signal 25 } 
	{ internal_state_21_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ internal_state_22 sc_out sc_lv 32 signal 26 } 
	{ internal_state_22_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ internal_state_23 sc_out sc_lv 32 signal 27 } 
	{ internal_state_23_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ internal_state_25 sc_out sc_lv 32 signal 28 } 
	{ internal_state_25_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ internal_state_26 sc_out sc_lv 32 signal 29 } 
	{ internal_state_26_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ internal_state_27 sc_out sc_lv 32 signal 30 } 
	{ internal_state_27_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ internal_state_29 sc_out sc_lv 32 signal 31 } 
	{ internal_state_29_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ internal_state_30 sc_out sc_lv 32 signal 32 } 
	{ internal_state_30_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ internal_state_31 sc_out sc_lv 32 signal 33 } 
	{ internal_state_31_ap_vld sc_out sc_logic 1 outvld 33 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "internal_state_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_1", "role": "default" }} , 
 	{ "name": "internal_state_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_1", "role": "ap_vld" }} , 
 	{ "name": "internal_state_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_2", "role": "default" }} , 
 	{ "name": "internal_state_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_2", "role": "ap_vld" }} , 
 	{ "name": "internal_state_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_3", "role": "default" }} , 
 	{ "name": "internal_state_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_3", "role": "ap_vld" }} , 
 	{ "name": "int_state_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "int_state_V", "role": "address0" }} , 
 	{ "name": "int_state_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "int_state_V", "role": "ce0" }} , 
 	{ "name": "int_state_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "int_state_V", "role": "q0" }} , 
 	{ "name": "int_state_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "int_state_V", "role": "address1" }} , 
 	{ "name": "int_state_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "int_state_V", "role": "ce1" }} , 
 	{ "name": "int_state_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "int_state_V", "role": "q1" }} , 
 	{ "name": "internal_state_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_0", "role": "default" }} , 
 	{ "name": "internal_state_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_0", "role": "ap_vld" }} , 
 	{ "name": "internal_state_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_4", "role": "default" }} , 
 	{ "name": "internal_state_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_4", "role": "ap_vld" }} , 
 	{ "name": "internal_state_8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_8", "role": "default" }} , 
 	{ "name": "internal_state_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_8", "role": "ap_vld" }} , 
 	{ "name": "internal_state_12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_12", "role": "default" }} , 
 	{ "name": "internal_state_12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_12", "role": "ap_vld" }} , 
 	{ "name": "internal_state_16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_16", "role": "default" }} , 
 	{ "name": "internal_state_16_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_16", "role": "ap_vld" }} , 
 	{ "name": "internal_state_20", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_20", "role": "default" }} , 
 	{ "name": "internal_state_20_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_20", "role": "ap_vld" }} , 
 	{ "name": "internal_state_24", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_24", "role": "default" }} , 
 	{ "name": "internal_state_24_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_24", "role": "ap_vld" }} , 
 	{ "name": "internal_state_28", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_28", "role": "default" }} , 
 	{ "name": "internal_state_28_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_28", "role": "ap_vld" }} , 
 	{ "name": "internal_state_32", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_32", "role": "default" }} , 
 	{ "name": "internal_state_32_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_32", "role": "ap_vld" }} , 
 	{ "name": "internal_state_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_5", "role": "default" }} , 
 	{ "name": "internal_state_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_5", "role": "ap_vld" }} , 
 	{ "name": "internal_state_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_6", "role": "default" }} , 
 	{ "name": "internal_state_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_6", "role": "ap_vld" }} , 
 	{ "name": "internal_state_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_7", "role": "default" }} , 
 	{ "name": "internal_state_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_7", "role": "ap_vld" }} , 
 	{ "name": "internal_state_9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_9", "role": "default" }} , 
 	{ "name": "internal_state_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_9", "role": "ap_vld" }} , 
 	{ "name": "internal_state_10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_10", "role": "default" }} , 
 	{ "name": "internal_state_10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_10", "role": "ap_vld" }} , 
 	{ "name": "internal_state_11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_11", "role": "default" }} , 
 	{ "name": "internal_state_11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_11", "role": "ap_vld" }} , 
 	{ "name": "internal_state_13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_13", "role": "default" }} , 
 	{ "name": "internal_state_13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_13", "role": "ap_vld" }} , 
 	{ "name": "internal_state_14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_14", "role": "default" }} , 
 	{ "name": "internal_state_14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_14", "role": "ap_vld" }} , 
 	{ "name": "internal_state_15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_15", "role": "default" }} , 
 	{ "name": "internal_state_15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_15", "role": "ap_vld" }} , 
 	{ "name": "internal_state_17", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_17", "role": "default" }} , 
 	{ "name": "internal_state_17_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_17", "role": "ap_vld" }} , 
 	{ "name": "internal_state_18", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_18", "role": "default" }} , 
 	{ "name": "internal_state_18_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_18", "role": "ap_vld" }} , 
 	{ "name": "internal_state_19", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_19", "role": "default" }} , 
 	{ "name": "internal_state_19_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_19", "role": "ap_vld" }} , 
 	{ "name": "internal_state_21", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_21", "role": "default" }} , 
 	{ "name": "internal_state_21_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_21", "role": "ap_vld" }} , 
 	{ "name": "internal_state_22", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_22", "role": "default" }} , 
 	{ "name": "internal_state_22_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_22", "role": "ap_vld" }} , 
 	{ "name": "internal_state_23", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_23", "role": "default" }} , 
 	{ "name": "internal_state_23_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_23", "role": "ap_vld" }} , 
 	{ "name": "internal_state_25", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_25", "role": "default" }} , 
 	{ "name": "internal_state_25_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_25", "role": "ap_vld" }} , 
 	{ "name": "internal_state_26", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_26", "role": "default" }} , 
 	{ "name": "internal_state_26_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_26", "role": "ap_vld" }} , 
 	{ "name": "internal_state_27", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_27", "role": "default" }} , 
 	{ "name": "internal_state_27_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_27", "role": "ap_vld" }} , 
 	{ "name": "internal_state_29", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_29", "role": "default" }} , 
 	{ "name": "internal_state_29_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_29", "role": "ap_vld" }} , 
 	{ "name": "internal_state_30", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_30", "role": "default" }} , 
 	{ "name": "internal_state_30_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_30", "role": "ap_vld" }} , 
 	{ "name": "internal_state_31", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "internal_state_31", "role": "default" }} , 
 	{ "name": "internal_state_31_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "internal_state_31", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "latnrm_Pipeline_VITIS_LOOP_57_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "internal_state_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "int_state_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "internal_state_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_20", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_24", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_28", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_32", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_21", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_22", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_23", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_25", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_26", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_27", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_29", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_30", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "internal_state_31", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_57_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	latnrm_Pipeline_VITIS_LOOP_57_6 {
		internal_state_1 {Type O LastRead -1 FirstWrite 3}
		internal_state_2 {Type O LastRead -1 FirstWrite 3}
		internal_state_3 {Type O LastRead -1 FirstWrite 3}
		int_state_V {Type I LastRead 2 FirstWrite -1}
		internal_state_0 {Type O LastRead -1 FirstWrite 3}
		internal_state_4 {Type O LastRead -1 FirstWrite 3}
		internal_state_8 {Type O LastRead -1 FirstWrite 3}
		internal_state_12 {Type O LastRead -1 FirstWrite 3}
		internal_state_16 {Type O LastRead -1 FirstWrite 3}
		internal_state_20 {Type O LastRead -1 FirstWrite 3}
		internal_state_24 {Type O LastRead -1 FirstWrite 3}
		internal_state_28 {Type O LastRead -1 FirstWrite 3}
		internal_state_32 {Type O LastRead -1 FirstWrite 3}
		internal_state_5 {Type O LastRead -1 FirstWrite 3}
		internal_state_6 {Type O LastRead -1 FirstWrite 3}
		internal_state_7 {Type O LastRead -1 FirstWrite 3}
		internal_state_9 {Type O LastRead -1 FirstWrite 3}
		internal_state_10 {Type O LastRead -1 FirstWrite 3}
		internal_state_11 {Type O LastRead -1 FirstWrite 3}
		internal_state_13 {Type O LastRead -1 FirstWrite 3}
		internal_state_14 {Type O LastRead -1 FirstWrite 3}
		internal_state_15 {Type O LastRead -1 FirstWrite 3}
		internal_state_17 {Type O LastRead -1 FirstWrite 3}
		internal_state_18 {Type O LastRead -1 FirstWrite 3}
		internal_state_19 {Type O LastRead -1 FirstWrite 3}
		internal_state_21 {Type O LastRead -1 FirstWrite 3}
		internal_state_22 {Type O LastRead -1 FirstWrite 3}
		internal_state_23 {Type O LastRead -1 FirstWrite 3}
		internal_state_25 {Type O LastRead -1 FirstWrite 3}
		internal_state_26 {Type O LastRead -1 FirstWrite 3}
		internal_state_27 {Type O LastRead -1 FirstWrite 3}
		internal_state_29 {Type O LastRead -1 FirstWrite 3}
		internal_state_30 {Type O LastRead -1 FirstWrite 3}
		internal_state_31 {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "23"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "23"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	internal_state_1 { ap_vld {  { internal_state_1 out_data 1 32 }  { internal_state_1_ap_vld out_vld 1 1 } } }
	internal_state_2 { ap_vld {  { internal_state_2 out_data 1 32 }  { internal_state_2_ap_vld out_vld 1 1 } } }
	internal_state_3 { ap_vld {  { internal_state_3 out_data 1 32 }  { internal_state_3_ap_vld out_vld 1 1 } } }
	int_state_V { ap_memory {  { int_state_V_address0 mem_address 1 6 }  { int_state_V_ce0 mem_ce 1 1 }  { int_state_V_q0 in_data 0 32 }  { int_state_V_address1 MemPortADDR2 1 6 }  { int_state_V_ce1 MemPortCE2 1 1 }  { int_state_V_q1 in_data 0 32 } } }
	internal_state_0 { ap_vld {  { internal_state_0 out_data 1 32 }  { internal_state_0_ap_vld out_vld 1 1 } } }
	internal_state_4 { ap_vld {  { internal_state_4 out_data 1 32 }  { internal_state_4_ap_vld out_vld 1 1 } } }
	internal_state_8 { ap_vld {  { internal_state_8 out_data 1 32 }  { internal_state_8_ap_vld out_vld 1 1 } } }
	internal_state_12 { ap_vld {  { internal_state_12 out_data 1 32 }  { internal_state_12_ap_vld out_vld 1 1 } } }
	internal_state_16 { ap_vld {  { internal_state_16 out_data 1 32 }  { internal_state_16_ap_vld out_vld 1 1 } } }
	internal_state_20 { ap_vld {  { internal_state_20 out_data 1 32 }  { internal_state_20_ap_vld out_vld 1 1 } } }
	internal_state_24 { ap_vld {  { internal_state_24 out_data 1 32 }  { internal_state_24_ap_vld out_vld 1 1 } } }
	internal_state_28 { ap_vld {  { internal_state_28 out_data 1 32 }  { internal_state_28_ap_vld out_vld 1 1 } } }
	internal_state_32 { ap_vld {  { internal_state_32 out_data 1 32 }  { internal_state_32_ap_vld out_vld 1 1 } } }
	internal_state_5 { ap_vld {  { internal_state_5 out_data 1 32 }  { internal_state_5_ap_vld out_vld 1 1 } } }
	internal_state_6 { ap_vld {  { internal_state_6 out_data 1 32 }  { internal_state_6_ap_vld out_vld 1 1 } } }
	internal_state_7 { ap_vld {  { internal_state_7 out_data 1 32 }  { internal_state_7_ap_vld out_vld 1 1 } } }
	internal_state_9 { ap_vld {  { internal_state_9 out_data 1 32 }  { internal_state_9_ap_vld out_vld 1 1 } } }
	internal_state_10 { ap_vld {  { internal_state_10 out_data 1 32 }  { internal_state_10_ap_vld out_vld 1 1 } } }
	internal_state_11 { ap_vld {  { internal_state_11 out_data 1 32 }  { internal_state_11_ap_vld out_vld 1 1 } } }
	internal_state_13 { ap_vld {  { internal_state_13 out_data 1 32 }  { internal_state_13_ap_vld out_vld 1 1 } } }
	internal_state_14 { ap_vld {  { internal_state_14 out_data 1 32 }  { internal_state_14_ap_vld out_vld 1 1 } } }
	internal_state_15 { ap_vld {  { internal_state_15 out_data 1 32 }  { internal_state_15_ap_vld out_vld 1 1 } } }
	internal_state_17 { ap_vld {  { internal_state_17 out_data 1 32 }  { internal_state_17_ap_vld out_vld 1 1 } } }
	internal_state_18 { ap_vld {  { internal_state_18 out_data 1 32 }  { internal_state_18_ap_vld out_vld 1 1 } } }
	internal_state_19 { ap_vld {  { internal_state_19 out_data 1 32 }  { internal_state_19_ap_vld out_vld 1 1 } } }
	internal_state_21 { ap_vld {  { internal_state_21 out_data 1 32 }  { internal_state_21_ap_vld out_vld 1 1 } } }
	internal_state_22 { ap_vld {  { internal_state_22 out_data 1 32 }  { internal_state_22_ap_vld out_vld 1 1 } } }
	internal_state_23 { ap_vld {  { internal_state_23 out_data 1 32 }  { internal_state_23_ap_vld out_vld 1 1 } } }
	internal_state_25 { ap_vld {  { internal_state_25 out_data 1 32 }  { internal_state_25_ap_vld out_vld 1 1 } } }
	internal_state_26 { ap_vld {  { internal_state_26 out_data 1 32 }  { internal_state_26_ap_vld out_vld 1 1 } } }
	internal_state_27 { ap_vld {  { internal_state_27 out_data 1 32 }  { internal_state_27_ap_vld out_vld 1 1 } } }
	internal_state_29 { ap_vld {  { internal_state_29 out_data 1 32 }  { internal_state_29_ap_vld out_vld 1 1 } } }
	internal_state_30 { ap_vld {  { internal_state_30 out_data 1 32 }  { internal_state_30_ap_vld out_vld 1 1 } } }
	internal_state_31 { ap_vld {  { internal_state_31 out_data 1 32 }  { internal_state_31_ap_vld out_vld 1 1 } } }
}
