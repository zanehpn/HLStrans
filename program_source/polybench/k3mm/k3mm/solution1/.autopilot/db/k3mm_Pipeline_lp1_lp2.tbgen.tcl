set moduleName k3mm_Pipeline_lp1_lp2
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
set C_modelName {k3mm_Pipeline_lp1_lp2}
set C_modelType { void 0 }
set C_modelArgList {
	{ buff_A float 32 regular {array 4096 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 } 1 1 }  }
	{ buff_B float 32 regular {array 4096 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 } 1 1 }  }
	{ tmp1 float 32 regular {array 4096 { 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buff_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buff_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 251
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buff_A_address0 sc_out sc_lv 12 signal 0 } 
	{ buff_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ buff_A_q0 sc_in sc_lv 32 signal 0 } 
	{ buff_A_address1 sc_out sc_lv 12 signal 0 } 
	{ buff_A_ce1 sc_out sc_logic 1 signal 0 } 
	{ buff_A_q1 sc_in sc_lv 32 signal 0 } 
	{ buff_A_address2 sc_out sc_lv 12 signal 0 } 
	{ buff_A_ce2 sc_out sc_logic 1 signal 0 } 
	{ buff_A_q2 sc_in sc_lv 32 signal 0 } 
	{ buff_A_address3 sc_out sc_lv 12 signal 0 } 
	{ buff_A_ce3 sc_out sc_logic 1 signal 0 } 
	{ buff_A_q3 sc_in sc_lv 32 signal 0 } 
	{ buff_A_address4 sc_out sc_lv 12 signal 0 } 
	{ buff_A_ce4 sc_out sc_logic 1 signal 0 } 
	{ buff_A_q4 sc_in sc_lv 32 signal 0 } 
	{ buff_A_address5 sc_out sc_lv 12 signal 0 } 
	{ buff_A_ce5 sc_out sc_logic 1 signal 0 } 
	{ buff_A_q5 sc_in sc_lv 32 signal 0 } 
	{ buff_A_address6 sc_out sc_lv 12 signal 0 } 
	{ buff_A_ce6 sc_out sc_logic 1 signal 0 } 
	{ buff_A_q6 sc_in sc_lv 32 signal 0 } 
	{ buff_A_address7 sc_out sc_lv 12 signal 0 } 
	{ buff_A_ce7 sc_out sc_logic 1 signal 0 } 
	{ buff_A_q7 sc_in sc_lv 32 signal 0 } 
	{ buff_A_address8 sc_out sc_lv 12 signal 0 } 
	{ buff_A_ce8 sc_out sc_logic 1 signal 0 } 
	{ buff_A_q8 sc_in sc_lv 32 signal 0 } 
	{ buff_A_address9 sc_out sc_lv 12 signal 0 } 
	{ buff_A_ce9 sc_out sc_logic 1 signal 0 } 
	{ buff_A_q9 sc_in sc_lv 32 signal 0 } 
	{ buff_A_address10 sc_out sc_lv 12 signal 0 } 
	{ buff_A_ce10 sc_out sc_logic 1 signal 0 } 
	{ buff_A_q10 sc_in sc_lv 32 signal 0 } 
	{ buff_A_address11 sc_out sc_lv 12 signal 0 } 
	{ buff_A_ce11 sc_out sc_logic 1 signal 0 } 
	{ buff_A_q11 sc_in sc_lv 32 signal 0 } 
	{ buff_A_address12 sc_out sc_lv 12 signal 0 } 
	{ buff_A_ce12 sc_out sc_logic 1 signal 0 } 
	{ buff_A_q12 sc_in sc_lv 32 signal 0 } 
	{ buff_A_address13 sc_out sc_lv 12 signal 0 } 
	{ buff_A_ce13 sc_out sc_logic 1 signal 0 } 
	{ buff_A_q13 sc_in sc_lv 32 signal 0 } 
	{ buff_A_address14 sc_out sc_lv 12 signal 0 } 
	{ buff_A_ce14 sc_out sc_logic 1 signal 0 } 
	{ buff_A_q14 sc_in sc_lv 32 signal 0 } 
	{ buff_A_address15 sc_out sc_lv 12 signal 0 } 
	{ buff_A_ce15 sc_out sc_logic 1 signal 0 } 
	{ buff_A_q15 sc_in sc_lv 32 signal 0 } 
	{ buff_B_address0 sc_out sc_lv 12 signal 1 } 
	{ buff_B_ce0 sc_out sc_logic 1 signal 1 } 
	{ buff_B_q0 sc_in sc_lv 32 signal 1 } 
	{ buff_B_address1 sc_out sc_lv 12 signal 1 } 
	{ buff_B_ce1 sc_out sc_logic 1 signal 1 } 
	{ buff_B_q1 sc_in sc_lv 32 signal 1 } 
	{ buff_B_address2 sc_out sc_lv 12 signal 1 } 
	{ buff_B_ce2 sc_out sc_logic 1 signal 1 } 
	{ buff_B_q2 sc_in sc_lv 32 signal 1 } 
	{ buff_B_address3 sc_out sc_lv 12 signal 1 } 
	{ buff_B_ce3 sc_out sc_logic 1 signal 1 } 
	{ buff_B_q3 sc_in sc_lv 32 signal 1 } 
	{ buff_B_address4 sc_out sc_lv 12 signal 1 } 
	{ buff_B_ce4 sc_out sc_logic 1 signal 1 } 
	{ buff_B_q4 sc_in sc_lv 32 signal 1 } 
	{ buff_B_address5 sc_out sc_lv 12 signal 1 } 
	{ buff_B_ce5 sc_out sc_logic 1 signal 1 } 
	{ buff_B_q5 sc_in sc_lv 32 signal 1 } 
	{ buff_B_address6 sc_out sc_lv 12 signal 1 } 
	{ buff_B_ce6 sc_out sc_logic 1 signal 1 } 
	{ buff_B_q6 sc_in sc_lv 32 signal 1 } 
	{ buff_B_address7 sc_out sc_lv 12 signal 1 } 
	{ buff_B_ce7 sc_out sc_logic 1 signal 1 } 
	{ buff_B_q7 sc_in sc_lv 32 signal 1 } 
	{ buff_B_address8 sc_out sc_lv 12 signal 1 } 
	{ buff_B_ce8 sc_out sc_logic 1 signal 1 } 
	{ buff_B_q8 sc_in sc_lv 32 signal 1 } 
	{ buff_B_address9 sc_out sc_lv 12 signal 1 } 
	{ buff_B_ce9 sc_out sc_logic 1 signal 1 } 
	{ buff_B_q9 sc_in sc_lv 32 signal 1 } 
	{ buff_B_address10 sc_out sc_lv 12 signal 1 } 
	{ buff_B_ce10 sc_out sc_logic 1 signal 1 } 
	{ buff_B_q10 sc_in sc_lv 32 signal 1 } 
	{ buff_B_address11 sc_out sc_lv 12 signal 1 } 
	{ buff_B_ce11 sc_out sc_logic 1 signal 1 } 
	{ buff_B_q11 sc_in sc_lv 32 signal 1 } 
	{ buff_B_address12 sc_out sc_lv 12 signal 1 } 
	{ buff_B_ce12 sc_out sc_logic 1 signal 1 } 
	{ buff_B_q12 sc_in sc_lv 32 signal 1 } 
	{ buff_B_address13 sc_out sc_lv 12 signal 1 } 
	{ buff_B_ce13 sc_out sc_logic 1 signal 1 } 
	{ buff_B_q13 sc_in sc_lv 32 signal 1 } 
	{ buff_B_address14 sc_out sc_lv 12 signal 1 } 
	{ buff_B_ce14 sc_out sc_logic 1 signal 1 } 
	{ buff_B_q14 sc_in sc_lv 32 signal 1 } 
	{ buff_B_address15 sc_out sc_lv 12 signal 1 } 
	{ buff_B_ce15 sc_out sc_logic 1 signal 1 } 
	{ buff_B_q15 sc_in sc_lv 32 signal 1 } 
	{ tmp1_address0 sc_out sc_lv 12 signal 2 } 
	{ tmp1_ce0 sc_out sc_logic 1 signal 2 } 
	{ tmp1_we0 sc_out sc_logic 1 signal 2 } 
	{ tmp1_d0 sc_out sc_lv 32 signal 2 } 
	{ tmp1_q0 sc_in sc_lv 32 signal 2 } 
	{ grp_fu_120_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_120_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_120_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_120_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_120_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_124_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_124_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_124_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_124_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_124_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_128_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_128_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_128_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_128_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_128_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_132_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_132_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_132_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_132_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_132_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_136_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_136_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_136_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_136_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_136_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_140_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_140_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_140_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_140_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_140_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_144_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_144_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_144_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_144_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_144_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_148_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_148_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_148_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_148_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_148_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_152_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_152_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_152_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_152_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_152_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_156_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_156_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_156_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_156_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_156_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_160_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_160_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_160_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_160_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_160_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_164_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_164_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_164_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_164_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_164_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_168_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_168_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_168_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_168_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_168_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_172_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_172_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_172_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_172_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_172_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_176_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_176_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_176_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_176_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_176_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_180_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_180_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_180_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_180_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_180_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_184_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_184_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_184_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_184_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_188_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_188_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_188_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_188_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_192_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_192_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_192_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_192_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_196_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_196_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_196_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_196_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_200_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_200_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_200_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_200_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_204_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_204_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_204_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_204_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_208_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_208_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_208_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_208_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_212_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_212_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_212_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_212_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_216_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_216_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_216_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_216_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_220_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_220_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_220_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_220_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_224_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_224_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_224_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_224_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_228_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_228_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_228_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_228_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_232_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_232_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_232_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_232_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_236_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_236_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_236_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_236_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_240_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_240_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_240_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_240_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_244_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_244_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_244_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_244_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buff_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address0" }} , 
 	{ "name": "buff_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce0" }} , 
 	{ "name": "buff_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "q0" }} , 
 	{ "name": "buff_A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address1" }} , 
 	{ "name": "buff_A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce1" }} , 
 	{ "name": "buff_A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "q1" }} , 
 	{ "name": "buff_A_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address2" }} , 
 	{ "name": "buff_A_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce2" }} , 
 	{ "name": "buff_A_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "q2" }} , 
 	{ "name": "buff_A_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address3" }} , 
 	{ "name": "buff_A_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce3" }} , 
 	{ "name": "buff_A_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "q3" }} , 
 	{ "name": "buff_A_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address4" }} , 
 	{ "name": "buff_A_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce4" }} , 
 	{ "name": "buff_A_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "q4" }} , 
 	{ "name": "buff_A_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address5" }} , 
 	{ "name": "buff_A_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce5" }} , 
 	{ "name": "buff_A_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "q5" }} , 
 	{ "name": "buff_A_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address6" }} , 
 	{ "name": "buff_A_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce6" }} , 
 	{ "name": "buff_A_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "q6" }} , 
 	{ "name": "buff_A_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address7" }} , 
 	{ "name": "buff_A_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce7" }} , 
 	{ "name": "buff_A_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "q7" }} , 
 	{ "name": "buff_A_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address8" }} , 
 	{ "name": "buff_A_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce8" }} , 
 	{ "name": "buff_A_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "q8" }} , 
 	{ "name": "buff_A_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address9" }} , 
 	{ "name": "buff_A_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce9" }} , 
 	{ "name": "buff_A_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "q9" }} , 
 	{ "name": "buff_A_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address10" }} , 
 	{ "name": "buff_A_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce10" }} , 
 	{ "name": "buff_A_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "q10" }} , 
 	{ "name": "buff_A_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address11" }} , 
 	{ "name": "buff_A_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce11" }} , 
 	{ "name": "buff_A_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "q11" }} , 
 	{ "name": "buff_A_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address12" }} , 
 	{ "name": "buff_A_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce12" }} , 
 	{ "name": "buff_A_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "q12" }} , 
 	{ "name": "buff_A_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address13" }} , 
 	{ "name": "buff_A_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce13" }} , 
 	{ "name": "buff_A_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "q13" }} , 
 	{ "name": "buff_A_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address14" }} , 
 	{ "name": "buff_A_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce14" }} , 
 	{ "name": "buff_A_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "q14" }} , 
 	{ "name": "buff_A_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A", "role": "address15" }} , 
 	{ "name": "buff_A_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A", "role": "ce15" }} , 
 	{ "name": "buff_A_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A", "role": "q15" }} , 
 	{ "name": "buff_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address0" }} , 
 	{ "name": "buff_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce0" }} , 
 	{ "name": "buff_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q0" }} , 
 	{ "name": "buff_B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address1" }} , 
 	{ "name": "buff_B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce1" }} , 
 	{ "name": "buff_B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q1" }} , 
 	{ "name": "buff_B_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address2" }} , 
 	{ "name": "buff_B_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce2" }} , 
 	{ "name": "buff_B_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q2" }} , 
 	{ "name": "buff_B_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address3" }} , 
 	{ "name": "buff_B_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce3" }} , 
 	{ "name": "buff_B_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q3" }} , 
 	{ "name": "buff_B_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address4" }} , 
 	{ "name": "buff_B_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce4" }} , 
 	{ "name": "buff_B_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q4" }} , 
 	{ "name": "buff_B_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address5" }} , 
 	{ "name": "buff_B_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce5" }} , 
 	{ "name": "buff_B_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q5" }} , 
 	{ "name": "buff_B_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address6" }} , 
 	{ "name": "buff_B_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce6" }} , 
 	{ "name": "buff_B_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q6" }} , 
 	{ "name": "buff_B_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address7" }} , 
 	{ "name": "buff_B_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce7" }} , 
 	{ "name": "buff_B_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q7" }} , 
 	{ "name": "buff_B_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address8" }} , 
 	{ "name": "buff_B_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce8" }} , 
 	{ "name": "buff_B_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q8" }} , 
 	{ "name": "buff_B_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address9" }} , 
 	{ "name": "buff_B_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce9" }} , 
 	{ "name": "buff_B_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q9" }} , 
 	{ "name": "buff_B_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address10" }} , 
 	{ "name": "buff_B_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce10" }} , 
 	{ "name": "buff_B_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q10" }} , 
 	{ "name": "buff_B_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address11" }} , 
 	{ "name": "buff_B_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce11" }} , 
 	{ "name": "buff_B_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q11" }} , 
 	{ "name": "buff_B_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address12" }} , 
 	{ "name": "buff_B_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce12" }} , 
 	{ "name": "buff_B_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q12" }} , 
 	{ "name": "buff_B_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address13" }} , 
 	{ "name": "buff_B_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce13" }} , 
 	{ "name": "buff_B_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q13" }} , 
 	{ "name": "buff_B_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address14" }} , 
 	{ "name": "buff_B_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce14" }} , 
 	{ "name": "buff_B_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q14" }} , 
 	{ "name": "buff_B_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B", "role": "address15" }} , 
 	{ "name": "buff_B_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B", "role": "ce15" }} , 
 	{ "name": "buff_B_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B", "role": "q15" }} , 
 	{ "name": "tmp1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address0" }} , 
 	{ "name": "tmp1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce0" }} , 
 	{ "name": "tmp1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "we0" }} , 
 	{ "name": "tmp1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "d0" }} , 
 	{ "name": "tmp1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q0" }} , 
 	{ "name": "grp_fu_120_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_120_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_120_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_120_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_120_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_120_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_120_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_120_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_120_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_120_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_124_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_124_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_124_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_124_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_124_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_124_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_124_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_124_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_124_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_124_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_128_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_128_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_128_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_128_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_128_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_128_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_128_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_128_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_128_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_128_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_132_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_132_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_132_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_132_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_132_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_132_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_132_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_132_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_132_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_132_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_136_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_136_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_136_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_136_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_136_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_136_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_136_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_136_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_136_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_136_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_140_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_140_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_140_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_140_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_140_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_140_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_140_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_140_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_140_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_140_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_144_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_144_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_144_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_144_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_144_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_144_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_144_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_144_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_144_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_144_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_148_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_148_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_148_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_148_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_148_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_148_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_148_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_148_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_148_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_148_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_152_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_152_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_152_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_152_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_152_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_152_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_152_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_152_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_152_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_152_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_156_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_156_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_156_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_156_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_156_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_156_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_156_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_156_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_156_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_156_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_160_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_160_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_160_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_160_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_160_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_160_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_160_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_160_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_160_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_160_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_164_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_164_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_164_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_164_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_164_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_164_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_164_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_164_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_164_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_164_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_168_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_168_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_168_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_168_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_168_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_168_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_168_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_168_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_168_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_168_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_172_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_172_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_172_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_172_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_172_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_172_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_172_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_172_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_172_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_172_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_176_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_176_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_176_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_176_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_176_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_176_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_176_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_176_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_176_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_176_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_180_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_180_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_180_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_180_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_180_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_180_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_180_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_180_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_180_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_180_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_184_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_184_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_184_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_184_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_184_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_184_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_184_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_184_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_188_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_188_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_188_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_188_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_188_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_188_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_188_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_188_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_192_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_192_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_192_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_192_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_192_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_192_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_192_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_192_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_196_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_196_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_196_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_196_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_196_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_196_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_196_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_196_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_200_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_200_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_200_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_200_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_200_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_200_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_200_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_200_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_204_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_204_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_204_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_204_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_204_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_204_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_204_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_204_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_208_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_208_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_208_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_208_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_208_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_208_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_208_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_208_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_212_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_212_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_212_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_212_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_212_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_212_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_212_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_212_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_216_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_216_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_216_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_216_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_216_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_216_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_216_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_216_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_220_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_220_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_220_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_220_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_220_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_220_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_220_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_220_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_224_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_224_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_224_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_224_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_224_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_224_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_224_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_224_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_228_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_228_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_228_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_228_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_228_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_228_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_228_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_228_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_232_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_232_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_232_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_232_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_232_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_232_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_232_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_232_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_236_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_236_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_236_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_236_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_236_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_236_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_236_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_236_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_240_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_240_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_240_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_240_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_240_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_240_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_240_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_240_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_244_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_244_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_244_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_244_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_244_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_244_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_244_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_244_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "k3mm_Pipeline_lp1_lp2",
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
			{"Name" : "buff_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "lp1_lp2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter81", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter81", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	k3mm_Pipeline_lp1_lp2 {
		buff_A {Type I LastRead 4 FirstWrite -1}
		buff_B {Type I LastRead 4 FirstWrite -1}
		tmp1 {Type IO LastRead 0 FirstWrite 326}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16708", "Max" : "16708"}
	, {"Name" : "Interval", "Min" : "16708", "Max" : "16708"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	buff_A { ap_memory {  { buff_A_address0 mem_address 1 12 }  { buff_A_ce0 mem_ce 1 1 }  { buff_A_q0 mem_dout 0 32 }  { buff_A_address1 MemPortADDR2 1 12 }  { buff_A_ce1 MemPortCE2 1 1 }  { buff_A_q1 MemPortDOUT2 0 32 }  { buff_A_address2 MemPortADDR2 1 12 }  { buff_A_ce2 MemPortCE2 1 1 }  { buff_A_q2 MemPortDOUT2 0 32 }  { buff_A_address3 MemPortADDR2 1 12 }  { buff_A_ce3 MemPortCE2 1 1 }  { buff_A_q3 MemPortDOUT2 0 32 }  { buff_A_address4 MemPortADDR2 1 12 }  { buff_A_ce4 MemPortCE2 1 1 }  { buff_A_q4 MemPortDOUT2 0 32 }  { buff_A_address5 MemPortADDR2 1 12 }  { buff_A_ce5 MemPortCE2 1 1 }  { buff_A_q5 MemPortDOUT2 0 32 }  { buff_A_address6 MemPortADDR2 1 12 }  { buff_A_ce6 MemPortCE2 1 1 }  { buff_A_q6 MemPortDOUT2 0 32 }  { buff_A_address7 MemPortADDR2 1 12 }  { buff_A_ce7 MemPortCE2 1 1 }  { buff_A_q7 MemPortDOUT2 0 32 }  { buff_A_address8 MemPortADDR2 1 12 }  { buff_A_ce8 MemPortCE2 1 1 }  { buff_A_q8 MemPortDOUT2 0 32 }  { buff_A_address9 MemPortADDR2 1 12 }  { buff_A_ce9 MemPortCE2 1 1 }  { buff_A_q9 MemPortDOUT2 0 32 }  { buff_A_address10 MemPortADDR2 1 12 }  { buff_A_ce10 MemPortCE2 1 1 }  { buff_A_q10 MemPortDOUT2 0 32 }  { buff_A_address11 MemPortADDR2 1 12 }  { buff_A_ce11 MemPortCE2 1 1 }  { buff_A_q11 MemPortDOUT2 0 32 }  { buff_A_address12 MemPortADDR2 1 12 }  { buff_A_ce12 MemPortCE2 1 1 }  { buff_A_q12 MemPortDOUT2 0 32 }  { buff_A_address13 MemPortADDR2 1 12 }  { buff_A_ce13 MemPortCE2 1 1 }  { buff_A_q13 MemPortDOUT2 0 32 }  { buff_A_address14 MemPortADDR2 1 12 }  { buff_A_ce14 MemPortCE2 1 1 }  { buff_A_q14 MemPortDOUT2 0 32 }  { buff_A_address15 MemPortADDR2 1 12 }  { buff_A_ce15 MemPortCE2 1 1 }  { buff_A_q15 MemPortDOUT2 0 32 } } }
	buff_B { ap_memory {  { buff_B_address0 mem_address 1 12 }  { buff_B_ce0 mem_ce 1 1 }  { buff_B_q0 mem_dout 0 32 }  { buff_B_address1 MemPortADDR2 1 12 }  { buff_B_ce1 MemPortCE2 1 1 }  { buff_B_q1 MemPortDOUT2 0 32 }  { buff_B_address2 MemPortADDR2 1 12 }  { buff_B_ce2 MemPortCE2 1 1 }  { buff_B_q2 MemPortDOUT2 0 32 }  { buff_B_address3 MemPortADDR2 1 12 }  { buff_B_ce3 MemPortCE2 1 1 }  { buff_B_q3 MemPortDOUT2 0 32 }  { buff_B_address4 MemPortADDR2 1 12 }  { buff_B_ce4 MemPortCE2 1 1 }  { buff_B_q4 MemPortDOUT2 0 32 }  { buff_B_address5 MemPortADDR2 1 12 }  { buff_B_ce5 MemPortCE2 1 1 }  { buff_B_q5 MemPortDOUT2 0 32 }  { buff_B_address6 MemPortADDR2 1 12 }  { buff_B_ce6 MemPortCE2 1 1 }  { buff_B_q6 MemPortDOUT2 0 32 }  { buff_B_address7 MemPortADDR2 1 12 }  { buff_B_ce7 MemPortCE2 1 1 }  { buff_B_q7 MemPortDOUT2 0 32 }  { buff_B_address8 MemPortADDR2 1 12 }  { buff_B_ce8 MemPortCE2 1 1 }  { buff_B_q8 MemPortDOUT2 0 32 }  { buff_B_address9 MemPortADDR2 1 12 }  { buff_B_ce9 MemPortCE2 1 1 }  { buff_B_q9 MemPortDOUT2 0 32 }  { buff_B_address10 MemPortADDR2 1 12 }  { buff_B_ce10 MemPortCE2 1 1 }  { buff_B_q10 MemPortDOUT2 0 32 }  { buff_B_address11 MemPortADDR2 1 12 }  { buff_B_ce11 MemPortCE2 1 1 }  { buff_B_q11 MemPortDOUT2 0 32 }  { buff_B_address12 MemPortADDR2 1 12 }  { buff_B_ce12 MemPortCE2 1 1 }  { buff_B_q12 MemPortDOUT2 0 32 }  { buff_B_address13 MemPortADDR2 1 12 }  { buff_B_ce13 MemPortCE2 1 1 }  { buff_B_q13 MemPortDOUT2 0 32 }  { buff_B_address14 MemPortADDR2 1 12 }  { buff_B_ce14 MemPortCE2 1 1 }  { buff_B_q14 MemPortDOUT2 0 32 }  { buff_B_address15 MemPortADDR2 1 12 }  { buff_B_ce15 MemPortCE2 1 1 }  { buff_B_q15 MemPortDOUT2 0 32 } } }
	tmp1 { ap_memory {  { tmp1_address0 mem_address 1 12 }  { tmp1_ce0 mem_ce 1 1 }  { tmp1_we0 mem_we 1 1 }  { tmp1_d0 mem_din 1 32 }  { tmp1_q0 mem_dout 0 32 } } }
}
