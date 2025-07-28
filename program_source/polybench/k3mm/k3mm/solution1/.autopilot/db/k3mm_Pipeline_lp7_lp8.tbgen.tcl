set moduleName k3mm_Pipeline_lp7_lp8
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
set C_modelName {k3mm_Pipeline_lp7_lp8}
set C_modelType { void 0 }
set C_modelArgList {
	{ tmp1 float 32 regular {array 4096 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 } 1 1 }  }
	{ buff_E_out float 32 regular {array 4096 { 2 3 } 1 1 }  }
	{ tmp2 float 32 regular {array 4096 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tmp1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buff_E_out", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "tmp2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 251
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tmp1_address0 sc_out sc_lv 12 signal 0 } 
	{ tmp1_ce0 sc_out sc_logic 1 signal 0 } 
	{ tmp1_q0 sc_in sc_lv 32 signal 0 } 
	{ tmp1_address1 sc_out sc_lv 12 signal 0 } 
	{ tmp1_ce1 sc_out sc_logic 1 signal 0 } 
	{ tmp1_q1 sc_in sc_lv 32 signal 0 } 
	{ tmp1_address2 sc_out sc_lv 12 signal 0 } 
	{ tmp1_ce2 sc_out sc_logic 1 signal 0 } 
	{ tmp1_q2 sc_in sc_lv 32 signal 0 } 
	{ tmp1_address3 sc_out sc_lv 12 signal 0 } 
	{ tmp1_ce3 sc_out sc_logic 1 signal 0 } 
	{ tmp1_q3 sc_in sc_lv 32 signal 0 } 
	{ tmp1_address4 sc_out sc_lv 12 signal 0 } 
	{ tmp1_ce4 sc_out sc_logic 1 signal 0 } 
	{ tmp1_q4 sc_in sc_lv 32 signal 0 } 
	{ tmp1_address5 sc_out sc_lv 12 signal 0 } 
	{ tmp1_ce5 sc_out sc_logic 1 signal 0 } 
	{ tmp1_q5 sc_in sc_lv 32 signal 0 } 
	{ tmp1_address6 sc_out sc_lv 12 signal 0 } 
	{ tmp1_ce6 sc_out sc_logic 1 signal 0 } 
	{ tmp1_q6 sc_in sc_lv 32 signal 0 } 
	{ tmp1_address7 sc_out sc_lv 12 signal 0 } 
	{ tmp1_ce7 sc_out sc_logic 1 signal 0 } 
	{ tmp1_q7 sc_in sc_lv 32 signal 0 } 
	{ tmp1_address8 sc_out sc_lv 12 signal 0 } 
	{ tmp1_ce8 sc_out sc_logic 1 signal 0 } 
	{ tmp1_q8 sc_in sc_lv 32 signal 0 } 
	{ tmp1_address9 sc_out sc_lv 12 signal 0 } 
	{ tmp1_ce9 sc_out sc_logic 1 signal 0 } 
	{ tmp1_q9 sc_in sc_lv 32 signal 0 } 
	{ tmp1_address10 sc_out sc_lv 12 signal 0 } 
	{ tmp1_ce10 sc_out sc_logic 1 signal 0 } 
	{ tmp1_q10 sc_in sc_lv 32 signal 0 } 
	{ tmp1_address11 sc_out sc_lv 12 signal 0 } 
	{ tmp1_ce11 sc_out sc_logic 1 signal 0 } 
	{ tmp1_q11 sc_in sc_lv 32 signal 0 } 
	{ tmp1_address12 sc_out sc_lv 12 signal 0 } 
	{ tmp1_ce12 sc_out sc_logic 1 signal 0 } 
	{ tmp1_q12 sc_in sc_lv 32 signal 0 } 
	{ tmp1_address13 sc_out sc_lv 12 signal 0 } 
	{ tmp1_ce13 sc_out sc_logic 1 signal 0 } 
	{ tmp1_q13 sc_in sc_lv 32 signal 0 } 
	{ tmp1_address14 sc_out sc_lv 12 signal 0 } 
	{ tmp1_ce14 sc_out sc_logic 1 signal 0 } 
	{ tmp1_q14 sc_in sc_lv 32 signal 0 } 
	{ tmp1_address15 sc_out sc_lv 12 signal 0 } 
	{ tmp1_ce15 sc_out sc_logic 1 signal 0 } 
	{ tmp1_q15 sc_in sc_lv 32 signal 0 } 
	{ buff_E_out_address0 sc_out sc_lv 12 signal 1 } 
	{ buff_E_out_ce0 sc_out sc_logic 1 signal 1 } 
	{ buff_E_out_we0 sc_out sc_logic 1 signal 1 } 
	{ buff_E_out_d0 sc_out sc_lv 32 signal 1 } 
	{ buff_E_out_q0 sc_in sc_lv 32 signal 1 } 
	{ tmp2_address0 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce0 sc_out sc_logic 1 signal 2 } 
	{ tmp2_q0 sc_in sc_lv 32 signal 2 } 
	{ tmp2_address1 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce1 sc_out sc_logic 1 signal 2 } 
	{ tmp2_q1 sc_in sc_lv 32 signal 2 } 
	{ tmp2_address2 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce2 sc_out sc_logic 1 signal 2 } 
	{ tmp2_q2 sc_in sc_lv 32 signal 2 } 
	{ tmp2_address3 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce3 sc_out sc_logic 1 signal 2 } 
	{ tmp2_q3 sc_in sc_lv 32 signal 2 } 
	{ tmp2_address4 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce4 sc_out sc_logic 1 signal 2 } 
	{ tmp2_q4 sc_in sc_lv 32 signal 2 } 
	{ tmp2_address5 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce5 sc_out sc_logic 1 signal 2 } 
	{ tmp2_q5 sc_in sc_lv 32 signal 2 } 
	{ tmp2_address6 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce6 sc_out sc_logic 1 signal 2 } 
	{ tmp2_q6 sc_in sc_lv 32 signal 2 } 
	{ tmp2_address7 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce7 sc_out sc_logic 1 signal 2 } 
	{ tmp2_q7 sc_in sc_lv 32 signal 2 } 
	{ tmp2_address8 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce8 sc_out sc_logic 1 signal 2 } 
	{ tmp2_q8 sc_in sc_lv 32 signal 2 } 
	{ tmp2_address9 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce9 sc_out sc_logic 1 signal 2 } 
	{ tmp2_q9 sc_in sc_lv 32 signal 2 } 
	{ tmp2_address10 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce10 sc_out sc_logic 1 signal 2 } 
	{ tmp2_q10 sc_in sc_lv 32 signal 2 } 
	{ tmp2_address11 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce11 sc_out sc_logic 1 signal 2 } 
	{ tmp2_q11 sc_in sc_lv 32 signal 2 } 
	{ tmp2_address12 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce12 sc_out sc_logic 1 signal 2 } 
	{ tmp2_q12 sc_in sc_lv 32 signal 2 } 
	{ tmp2_address13 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce13 sc_out sc_logic 1 signal 2 } 
	{ tmp2_q13 sc_in sc_lv 32 signal 2 } 
	{ tmp2_address14 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce14 sc_out sc_logic 1 signal 2 } 
	{ tmp2_q14 sc_in sc_lv 32 signal 2 } 
	{ tmp2_address15 sc_out sc_lv 12 signal 2 } 
	{ tmp2_ce15 sc_out sc_logic 1 signal 2 } 
	{ tmp2_q15 sc_in sc_lv 32 signal 2 } 
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
 	{ "name": "tmp1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address0" }} , 
 	{ "name": "tmp1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce0" }} , 
 	{ "name": "tmp1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q0" }} , 
 	{ "name": "tmp1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address1" }} , 
 	{ "name": "tmp1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce1" }} , 
 	{ "name": "tmp1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q1" }} , 
 	{ "name": "tmp1_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address2" }} , 
 	{ "name": "tmp1_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce2" }} , 
 	{ "name": "tmp1_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q2" }} , 
 	{ "name": "tmp1_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address3" }} , 
 	{ "name": "tmp1_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce3" }} , 
 	{ "name": "tmp1_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q3" }} , 
 	{ "name": "tmp1_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address4" }} , 
 	{ "name": "tmp1_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce4" }} , 
 	{ "name": "tmp1_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q4" }} , 
 	{ "name": "tmp1_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address5" }} , 
 	{ "name": "tmp1_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce5" }} , 
 	{ "name": "tmp1_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q5" }} , 
 	{ "name": "tmp1_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address6" }} , 
 	{ "name": "tmp1_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce6" }} , 
 	{ "name": "tmp1_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q6" }} , 
 	{ "name": "tmp1_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address7" }} , 
 	{ "name": "tmp1_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce7" }} , 
 	{ "name": "tmp1_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q7" }} , 
 	{ "name": "tmp1_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address8" }} , 
 	{ "name": "tmp1_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce8" }} , 
 	{ "name": "tmp1_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q8" }} , 
 	{ "name": "tmp1_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address9" }} , 
 	{ "name": "tmp1_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce9" }} , 
 	{ "name": "tmp1_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q9" }} , 
 	{ "name": "tmp1_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address10" }} , 
 	{ "name": "tmp1_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce10" }} , 
 	{ "name": "tmp1_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q10" }} , 
 	{ "name": "tmp1_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address11" }} , 
 	{ "name": "tmp1_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce11" }} , 
 	{ "name": "tmp1_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q11" }} , 
 	{ "name": "tmp1_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address12" }} , 
 	{ "name": "tmp1_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce12" }} , 
 	{ "name": "tmp1_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q12" }} , 
 	{ "name": "tmp1_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address13" }} , 
 	{ "name": "tmp1_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce13" }} , 
 	{ "name": "tmp1_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q13" }} , 
 	{ "name": "tmp1_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address14" }} , 
 	{ "name": "tmp1_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce14" }} , 
 	{ "name": "tmp1_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q14" }} , 
 	{ "name": "tmp1_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address15" }} , 
 	{ "name": "tmp1_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce15" }} , 
 	{ "name": "tmp1_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q15" }} , 
 	{ "name": "buff_E_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_E_out", "role": "address0" }} , 
 	{ "name": "buff_E_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_E_out", "role": "ce0" }} , 
 	{ "name": "buff_E_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_E_out", "role": "we0" }} , 
 	{ "name": "buff_E_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_E_out", "role": "d0" }} , 
 	{ "name": "buff_E_out_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_E_out", "role": "q0" }} , 
 	{ "name": "tmp2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address0" }} , 
 	{ "name": "tmp2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce0" }} , 
 	{ "name": "tmp2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q0" }} , 
 	{ "name": "tmp2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address1" }} , 
 	{ "name": "tmp2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce1" }} , 
 	{ "name": "tmp2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q1" }} , 
 	{ "name": "tmp2_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address2" }} , 
 	{ "name": "tmp2_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce2" }} , 
 	{ "name": "tmp2_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q2" }} , 
 	{ "name": "tmp2_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address3" }} , 
 	{ "name": "tmp2_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce3" }} , 
 	{ "name": "tmp2_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q3" }} , 
 	{ "name": "tmp2_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address4" }} , 
 	{ "name": "tmp2_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce4" }} , 
 	{ "name": "tmp2_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q4" }} , 
 	{ "name": "tmp2_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address5" }} , 
 	{ "name": "tmp2_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce5" }} , 
 	{ "name": "tmp2_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q5" }} , 
 	{ "name": "tmp2_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address6" }} , 
 	{ "name": "tmp2_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce6" }} , 
 	{ "name": "tmp2_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q6" }} , 
 	{ "name": "tmp2_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address7" }} , 
 	{ "name": "tmp2_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce7" }} , 
 	{ "name": "tmp2_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q7" }} , 
 	{ "name": "tmp2_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address8" }} , 
 	{ "name": "tmp2_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce8" }} , 
 	{ "name": "tmp2_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q8" }} , 
 	{ "name": "tmp2_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address9" }} , 
 	{ "name": "tmp2_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce9" }} , 
 	{ "name": "tmp2_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q9" }} , 
 	{ "name": "tmp2_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address10" }} , 
 	{ "name": "tmp2_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce10" }} , 
 	{ "name": "tmp2_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q10" }} , 
 	{ "name": "tmp2_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address11" }} , 
 	{ "name": "tmp2_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce11" }} , 
 	{ "name": "tmp2_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q11" }} , 
 	{ "name": "tmp2_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address12" }} , 
 	{ "name": "tmp2_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce12" }} , 
 	{ "name": "tmp2_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q12" }} , 
 	{ "name": "tmp2_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address13" }} , 
 	{ "name": "tmp2_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce13" }} , 
 	{ "name": "tmp2_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q13" }} , 
 	{ "name": "tmp2_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address14" }} , 
 	{ "name": "tmp2_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce14" }} , 
 	{ "name": "tmp2_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q14" }} , 
 	{ "name": "tmp2_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2", "role": "address15" }} , 
 	{ "name": "tmp2_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce15" }} , 
 	{ "name": "tmp2_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "q15" }} , 
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
		"CDFG" : "k3mm_Pipeline_lp7_lp8",
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
			{"Name" : "tmp1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_E_out", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "lp7_lp8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter81", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter81", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	k3mm_Pipeline_lp7_lp8 {
		tmp1 {Type I LastRead 4 FirstWrite -1}
		buff_E_out {Type IO LastRead 4 FirstWrite 326}
		tmp2 {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16708", "Max" : "16708"}
	, {"Name" : "Interval", "Min" : "16708", "Max" : "16708"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tmp1 { ap_memory {  { tmp1_address0 mem_address 1 12 }  { tmp1_ce0 mem_ce 1 1 }  { tmp1_q0 mem_dout 0 32 }  { tmp1_address1 MemPortADDR2 1 12 }  { tmp1_ce1 MemPortCE2 1 1 }  { tmp1_q1 MemPortDOUT2 0 32 }  { tmp1_address2 MemPortADDR2 1 12 }  { tmp1_ce2 MemPortCE2 1 1 }  { tmp1_q2 MemPortDOUT2 0 32 }  { tmp1_address3 MemPortADDR2 1 12 }  { tmp1_ce3 MemPortCE2 1 1 }  { tmp1_q3 MemPortDOUT2 0 32 }  { tmp1_address4 MemPortADDR2 1 12 }  { tmp1_ce4 MemPortCE2 1 1 }  { tmp1_q4 MemPortDOUT2 0 32 }  { tmp1_address5 MemPortADDR2 1 12 }  { tmp1_ce5 MemPortCE2 1 1 }  { tmp1_q5 MemPortDOUT2 0 32 }  { tmp1_address6 MemPortADDR2 1 12 }  { tmp1_ce6 MemPortCE2 1 1 }  { tmp1_q6 MemPortDOUT2 0 32 }  { tmp1_address7 MemPortADDR2 1 12 }  { tmp1_ce7 MemPortCE2 1 1 }  { tmp1_q7 MemPortDOUT2 0 32 }  { tmp1_address8 MemPortADDR2 1 12 }  { tmp1_ce8 MemPortCE2 1 1 }  { tmp1_q8 MemPortDOUT2 0 32 }  { tmp1_address9 MemPortADDR2 1 12 }  { tmp1_ce9 MemPortCE2 1 1 }  { tmp1_q9 MemPortDOUT2 0 32 }  { tmp1_address10 MemPortADDR2 1 12 }  { tmp1_ce10 MemPortCE2 1 1 }  { tmp1_q10 MemPortDOUT2 0 32 }  { tmp1_address11 MemPortADDR2 1 12 }  { tmp1_ce11 MemPortCE2 1 1 }  { tmp1_q11 MemPortDOUT2 0 32 }  { tmp1_address12 MemPortADDR2 1 12 }  { tmp1_ce12 MemPortCE2 1 1 }  { tmp1_q12 MemPortDOUT2 0 32 }  { tmp1_address13 MemPortADDR2 1 12 }  { tmp1_ce13 MemPortCE2 1 1 }  { tmp1_q13 MemPortDOUT2 0 32 }  { tmp1_address14 MemPortADDR2 1 12 }  { tmp1_ce14 MemPortCE2 1 1 }  { tmp1_q14 MemPortDOUT2 0 32 }  { tmp1_address15 MemPortADDR2 1 12 }  { tmp1_ce15 MemPortCE2 1 1 }  { tmp1_q15 MemPortDOUT2 0 32 } } }
	buff_E_out { ap_memory {  { buff_E_out_address0 mem_address 1 12 }  { buff_E_out_ce0 mem_ce 1 1 }  { buff_E_out_we0 mem_we 1 1 }  { buff_E_out_d0 mem_din 1 32 }  { buff_E_out_q0 mem_dout 0 32 } } }
	tmp2 { ap_memory {  { tmp2_address0 mem_address 1 12 }  { tmp2_ce0 mem_ce 1 1 }  { tmp2_q0 mem_dout 0 32 }  { tmp2_address1 MemPortADDR2 1 12 }  { tmp2_ce1 MemPortCE2 1 1 }  { tmp2_q1 MemPortDOUT2 0 32 }  { tmp2_address2 MemPortADDR2 1 12 }  { tmp2_ce2 MemPortCE2 1 1 }  { tmp2_q2 MemPortDOUT2 0 32 }  { tmp2_address3 MemPortADDR2 1 12 }  { tmp2_ce3 MemPortCE2 1 1 }  { tmp2_q3 MemPortDOUT2 0 32 }  { tmp2_address4 MemPortADDR2 1 12 }  { tmp2_ce4 MemPortCE2 1 1 }  { tmp2_q4 MemPortDOUT2 0 32 }  { tmp2_address5 MemPortADDR2 1 12 }  { tmp2_ce5 MemPortCE2 1 1 }  { tmp2_q5 MemPortDOUT2 0 32 }  { tmp2_address6 MemPortADDR2 1 12 }  { tmp2_ce6 MemPortCE2 1 1 }  { tmp2_q6 MemPortDOUT2 0 32 }  { tmp2_address7 MemPortADDR2 1 12 }  { tmp2_ce7 MemPortCE2 1 1 }  { tmp2_q7 MemPortDOUT2 0 32 }  { tmp2_address8 MemPortADDR2 1 12 }  { tmp2_ce8 MemPortCE2 1 1 }  { tmp2_q8 MemPortDOUT2 0 32 }  { tmp2_address9 MemPortADDR2 1 12 }  { tmp2_ce9 MemPortCE2 1 1 }  { tmp2_q9 MemPortDOUT2 0 32 }  { tmp2_address10 MemPortADDR2 1 12 }  { tmp2_ce10 MemPortCE2 1 1 }  { tmp2_q10 MemPortDOUT2 0 32 }  { tmp2_address11 MemPortADDR2 1 12 }  { tmp2_ce11 MemPortCE2 1 1 }  { tmp2_q11 MemPortDOUT2 0 32 }  { tmp2_address12 MemPortADDR2 1 12 }  { tmp2_ce12 MemPortCE2 1 1 }  { tmp2_q12 MemPortDOUT2 0 32 }  { tmp2_address13 MemPortADDR2 1 12 }  { tmp2_ce13 MemPortCE2 1 1 }  { tmp2_q13 MemPortDOUT2 0 32 }  { tmp2_address14 MemPortADDR2 1 12 }  { tmp2_ce14 MemPortCE2 1 1 }  { tmp2_q14 MemPortDOUT2 0 32 }  { tmp2_address15 MemPortADDR2 1 12 }  { tmp2_ce15 MemPortCE2 1 1 }  { tmp2_q15 MemPortDOUT2 0 32 } } }
}
