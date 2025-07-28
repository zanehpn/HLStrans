set moduleName syr2k_Pipeline_lp1_lp2
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
set C_modelName {syr2k_Pipeline_lp1_lp2}
set C_modelType { void 0 }
set C_modelArgList {
	{ buff_A0 float 32 regular {array 4096 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 } 1 1 }  }
	{ alpha float 32 regular  }
	{ buff_B0 float 32 regular {array 4096 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 } 1 1 }  }
	{ tmp1 float 32 regular {array 4096 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buff_A0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "alpha", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buff_B0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 316
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buff_A0_address0 sc_out sc_lv 12 signal 0 } 
	{ buff_A0_ce0 sc_out sc_logic 1 signal 0 } 
	{ buff_A0_q0 sc_in sc_lv 32 signal 0 } 
	{ buff_A0_address1 sc_out sc_lv 12 signal 0 } 
	{ buff_A0_ce1 sc_out sc_logic 1 signal 0 } 
	{ buff_A0_q1 sc_in sc_lv 32 signal 0 } 
	{ buff_A0_address2 sc_out sc_lv 12 signal 0 } 
	{ buff_A0_ce2 sc_out sc_logic 1 signal 0 } 
	{ buff_A0_q2 sc_in sc_lv 32 signal 0 } 
	{ buff_A0_address3 sc_out sc_lv 12 signal 0 } 
	{ buff_A0_ce3 sc_out sc_logic 1 signal 0 } 
	{ buff_A0_q3 sc_in sc_lv 32 signal 0 } 
	{ buff_A0_address4 sc_out sc_lv 12 signal 0 } 
	{ buff_A0_ce4 sc_out sc_logic 1 signal 0 } 
	{ buff_A0_q4 sc_in sc_lv 32 signal 0 } 
	{ buff_A0_address5 sc_out sc_lv 12 signal 0 } 
	{ buff_A0_ce5 sc_out sc_logic 1 signal 0 } 
	{ buff_A0_q5 sc_in sc_lv 32 signal 0 } 
	{ buff_A0_address6 sc_out sc_lv 12 signal 0 } 
	{ buff_A0_ce6 sc_out sc_logic 1 signal 0 } 
	{ buff_A0_q6 sc_in sc_lv 32 signal 0 } 
	{ buff_A0_address7 sc_out sc_lv 12 signal 0 } 
	{ buff_A0_ce7 sc_out sc_logic 1 signal 0 } 
	{ buff_A0_q7 sc_in sc_lv 32 signal 0 } 
	{ buff_A0_address8 sc_out sc_lv 12 signal 0 } 
	{ buff_A0_ce8 sc_out sc_logic 1 signal 0 } 
	{ buff_A0_q8 sc_in sc_lv 32 signal 0 } 
	{ buff_A0_address9 sc_out sc_lv 12 signal 0 } 
	{ buff_A0_ce9 sc_out sc_logic 1 signal 0 } 
	{ buff_A0_q9 sc_in sc_lv 32 signal 0 } 
	{ buff_A0_address10 sc_out sc_lv 12 signal 0 } 
	{ buff_A0_ce10 sc_out sc_logic 1 signal 0 } 
	{ buff_A0_q10 sc_in sc_lv 32 signal 0 } 
	{ buff_A0_address11 sc_out sc_lv 12 signal 0 } 
	{ buff_A0_ce11 sc_out sc_logic 1 signal 0 } 
	{ buff_A0_q11 sc_in sc_lv 32 signal 0 } 
	{ buff_A0_address12 sc_out sc_lv 12 signal 0 } 
	{ buff_A0_ce12 sc_out sc_logic 1 signal 0 } 
	{ buff_A0_q12 sc_in sc_lv 32 signal 0 } 
	{ buff_A0_address13 sc_out sc_lv 12 signal 0 } 
	{ buff_A0_ce13 sc_out sc_logic 1 signal 0 } 
	{ buff_A0_q13 sc_in sc_lv 32 signal 0 } 
	{ buff_A0_address14 sc_out sc_lv 12 signal 0 } 
	{ buff_A0_ce14 sc_out sc_logic 1 signal 0 } 
	{ buff_A0_q14 sc_in sc_lv 32 signal 0 } 
	{ buff_A0_address15 sc_out sc_lv 12 signal 0 } 
	{ buff_A0_ce15 sc_out sc_logic 1 signal 0 } 
	{ buff_A0_q15 sc_in sc_lv 32 signal 0 } 
	{ alpha sc_in sc_lv 32 signal 1 } 
	{ buff_B0_address0 sc_out sc_lv 12 signal 2 } 
	{ buff_B0_ce0 sc_out sc_logic 1 signal 2 } 
	{ buff_B0_q0 sc_in sc_lv 32 signal 2 } 
	{ buff_B0_address1 sc_out sc_lv 12 signal 2 } 
	{ buff_B0_ce1 sc_out sc_logic 1 signal 2 } 
	{ buff_B0_q1 sc_in sc_lv 32 signal 2 } 
	{ buff_B0_address2 sc_out sc_lv 12 signal 2 } 
	{ buff_B0_ce2 sc_out sc_logic 1 signal 2 } 
	{ buff_B0_q2 sc_in sc_lv 32 signal 2 } 
	{ buff_B0_address3 sc_out sc_lv 12 signal 2 } 
	{ buff_B0_ce3 sc_out sc_logic 1 signal 2 } 
	{ buff_B0_q3 sc_in sc_lv 32 signal 2 } 
	{ buff_B0_address4 sc_out sc_lv 12 signal 2 } 
	{ buff_B0_ce4 sc_out sc_logic 1 signal 2 } 
	{ buff_B0_q4 sc_in sc_lv 32 signal 2 } 
	{ buff_B0_address5 sc_out sc_lv 12 signal 2 } 
	{ buff_B0_ce5 sc_out sc_logic 1 signal 2 } 
	{ buff_B0_q5 sc_in sc_lv 32 signal 2 } 
	{ buff_B0_address6 sc_out sc_lv 12 signal 2 } 
	{ buff_B0_ce6 sc_out sc_logic 1 signal 2 } 
	{ buff_B0_q6 sc_in sc_lv 32 signal 2 } 
	{ buff_B0_address7 sc_out sc_lv 12 signal 2 } 
	{ buff_B0_ce7 sc_out sc_logic 1 signal 2 } 
	{ buff_B0_q7 sc_in sc_lv 32 signal 2 } 
	{ buff_B0_address8 sc_out sc_lv 12 signal 2 } 
	{ buff_B0_ce8 sc_out sc_logic 1 signal 2 } 
	{ buff_B0_q8 sc_in sc_lv 32 signal 2 } 
	{ buff_B0_address9 sc_out sc_lv 12 signal 2 } 
	{ buff_B0_ce9 sc_out sc_logic 1 signal 2 } 
	{ buff_B0_q9 sc_in sc_lv 32 signal 2 } 
	{ buff_B0_address10 sc_out sc_lv 12 signal 2 } 
	{ buff_B0_ce10 sc_out sc_logic 1 signal 2 } 
	{ buff_B0_q10 sc_in sc_lv 32 signal 2 } 
	{ buff_B0_address11 sc_out sc_lv 12 signal 2 } 
	{ buff_B0_ce11 sc_out sc_logic 1 signal 2 } 
	{ buff_B0_q11 sc_in sc_lv 32 signal 2 } 
	{ buff_B0_address12 sc_out sc_lv 12 signal 2 } 
	{ buff_B0_ce12 sc_out sc_logic 1 signal 2 } 
	{ buff_B0_q12 sc_in sc_lv 32 signal 2 } 
	{ buff_B0_address13 sc_out sc_lv 12 signal 2 } 
	{ buff_B0_ce13 sc_out sc_logic 1 signal 2 } 
	{ buff_B0_q13 sc_in sc_lv 32 signal 2 } 
	{ buff_B0_address14 sc_out sc_lv 12 signal 2 } 
	{ buff_B0_ce14 sc_out sc_logic 1 signal 2 } 
	{ buff_B0_q14 sc_in sc_lv 32 signal 2 } 
	{ buff_B0_address15 sc_out sc_lv 12 signal 2 } 
	{ buff_B0_ce15 sc_out sc_logic 1 signal 2 } 
	{ buff_B0_q15 sc_in sc_lv 32 signal 2 } 
	{ tmp1_address0 sc_out sc_lv 12 signal 3 } 
	{ tmp1_ce0 sc_out sc_logic 1 signal 3 } 
	{ tmp1_we0 sc_out sc_logic 1 signal 3 } 
	{ tmp1_d0 sc_out sc_lv 32 signal 3 } 
	{ tmp1_q0 sc_in sc_lv 32 signal 3 } 
	{ grp_fu_153_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_153_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_153_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_153_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_153_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_157_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_157_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_157_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_157_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_157_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_161_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_161_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_161_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_161_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_161_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_165_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_165_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_165_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_165_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_165_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_169_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_169_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_169_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_169_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_169_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_173_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_173_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_173_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_173_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_173_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_177_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_177_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_177_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_177_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_177_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_181_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_181_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_181_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_181_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_181_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_185_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_185_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_185_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_185_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_185_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_189_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_189_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_189_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_189_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_189_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_193_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_193_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_193_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_193_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_193_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_197_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_197_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_197_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_197_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_197_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_201_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_201_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_201_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_201_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_201_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_205_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_205_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_205_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_205_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_205_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_209_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_209_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_209_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_209_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_209_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_213_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_213_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_213_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_213_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_213_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_217_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_217_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_217_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_217_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_221_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_221_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_221_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_221_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_225_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_225_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_225_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_225_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_229_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_229_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_229_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_229_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_233_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_233_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_233_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_233_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_237_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_237_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_237_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_237_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_241_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_241_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_241_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_241_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_245_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_245_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_245_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_245_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_249_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_249_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_249_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_249_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_253_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_253_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_253_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_253_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_257_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_257_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_257_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_257_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_261_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_261_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_261_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_261_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_265_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_265_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_265_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_265_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_269_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_269_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_269_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_269_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_273_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_273_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_273_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_273_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_277_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_277_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_277_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_277_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_281_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_281_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_281_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_281_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_285_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_285_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_285_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_285_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_289_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_289_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_289_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_289_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_293_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_293_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_293_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_293_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_297_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_297_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_297_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_297_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_301_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_301_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_301_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_301_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_305_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_305_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_305_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_305_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_309_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_309_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_309_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_309_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_313_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_313_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_313_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_313_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_317_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_317_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_317_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_317_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_321_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_321_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_321_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_321_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_325_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_325_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_325_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_325_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_329_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_329_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_329_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_329_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_333_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_333_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_333_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_333_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_337_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_337_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_337_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_337_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_341_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_341_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_341_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_341_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buff_A0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A0", "role": "address0" }} , 
 	{ "name": "buff_A0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A0", "role": "ce0" }} , 
 	{ "name": "buff_A0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A0", "role": "q0" }} , 
 	{ "name": "buff_A0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A0", "role": "address1" }} , 
 	{ "name": "buff_A0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A0", "role": "ce1" }} , 
 	{ "name": "buff_A0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A0", "role": "q1" }} , 
 	{ "name": "buff_A0_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A0", "role": "address2" }} , 
 	{ "name": "buff_A0_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A0", "role": "ce2" }} , 
 	{ "name": "buff_A0_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A0", "role": "q2" }} , 
 	{ "name": "buff_A0_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A0", "role": "address3" }} , 
 	{ "name": "buff_A0_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A0", "role": "ce3" }} , 
 	{ "name": "buff_A0_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A0", "role": "q3" }} , 
 	{ "name": "buff_A0_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A0", "role": "address4" }} , 
 	{ "name": "buff_A0_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A0", "role": "ce4" }} , 
 	{ "name": "buff_A0_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A0", "role": "q4" }} , 
 	{ "name": "buff_A0_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A0", "role": "address5" }} , 
 	{ "name": "buff_A0_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A0", "role": "ce5" }} , 
 	{ "name": "buff_A0_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A0", "role": "q5" }} , 
 	{ "name": "buff_A0_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A0", "role": "address6" }} , 
 	{ "name": "buff_A0_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A0", "role": "ce6" }} , 
 	{ "name": "buff_A0_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A0", "role": "q6" }} , 
 	{ "name": "buff_A0_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A0", "role": "address7" }} , 
 	{ "name": "buff_A0_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A0", "role": "ce7" }} , 
 	{ "name": "buff_A0_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A0", "role": "q7" }} , 
 	{ "name": "buff_A0_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A0", "role": "address8" }} , 
 	{ "name": "buff_A0_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A0", "role": "ce8" }} , 
 	{ "name": "buff_A0_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A0", "role": "q8" }} , 
 	{ "name": "buff_A0_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A0", "role": "address9" }} , 
 	{ "name": "buff_A0_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A0", "role": "ce9" }} , 
 	{ "name": "buff_A0_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A0", "role": "q9" }} , 
 	{ "name": "buff_A0_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A0", "role": "address10" }} , 
 	{ "name": "buff_A0_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A0", "role": "ce10" }} , 
 	{ "name": "buff_A0_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A0", "role": "q10" }} , 
 	{ "name": "buff_A0_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A0", "role": "address11" }} , 
 	{ "name": "buff_A0_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A0", "role": "ce11" }} , 
 	{ "name": "buff_A0_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A0", "role": "q11" }} , 
 	{ "name": "buff_A0_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A0", "role": "address12" }} , 
 	{ "name": "buff_A0_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A0", "role": "ce12" }} , 
 	{ "name": "buff_A0_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A0", "role": "q12" }} , 
 	{ "name": "buff_A0_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A0", "role": "address13" }} , 
 	{ "name": "buff_A0_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A0", "role": "ce13" }} , 
 	{ "name": "buff_A0_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A0", "role": "q13" }} , 
 	{ "name": "buff_A0_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A0", "role": "address14" }} , 
 	{ "name": "buff_A0_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A0", "role": "ce14" }} , 
 	{ "name": "buff_A0_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A0", "role": "q14" }} , 
 	{ "name": "buff_A0_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_A0", "role": "address15" }} , 
 	{ "name": "buff_A0_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A0", "role": "ce15" }} , 
 	{ "name": "buff_A0_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A0", "role": "q15" }} , 
 	{ "name": "alpha", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "alpha", "role": "default" }} , 
 	{ "name": "buff_B0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B0", "role": "address0" }} , 
 	{ "name": "buff_B0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B0", "role": "ce0" }} , 
 	{ "name": "buff_B0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B0", "role": "q0" }} , 
 	{ "name": "buff_B0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B0", "role": "address1" }} , 
 	{ "name": "buff_B0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B0", "role": "ce1" }} , 
 	{ "name": "buff_B0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B0", "role": "q1" }} , 
 	{ "name": "buff_B0_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B0", "role": "address2" }} , 
 	{ "name": "buff_B0_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B0", "role": "ce2" }} , 
 	{ "name": "buff_B0_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B0", "role": "q2" }} , 
 	{ "name": "buff_B0_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B0", "role": "address3" }} , 
 	{ "name": "buff_B0_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B0", "role": "ce3" }} , 
 	{ "name": "buff_B0_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B0", "role": "q3" }} , 
 	{ "name": "buff_B0_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B0", "role": "address4" }} , 
 	{ "name": "buff_B0_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B0", "role": "ce4" }} , 
 	{ "name": "buff_B0_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B0", "role": "q4" }} , 
 	{ "name": "buff_B0_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B0", "role": "address5" }} , 
 	{ "name": "buff_B0_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B0", "role": "ce5" }} , 
 	{ "name": "buff_B0_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B0", "role": "q5" }} , 
 	{ "name": "buff_B0_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B0", "role": "address6" }} , 
 	{ "name": "buff_B0_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B0", "role": "ce6" }} , 
 	{ "name": "buff_B0_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B0", "role": "q6" }} , 
 	{ "name": "buff_B0_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B0", "role": "address7" }} , 
 	{ "name": "buff_B0_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B0", "role": "ce7" }} , 
 	{ "name": "buff_B0_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B0", "role": "q7" }} , 
 	{ "name": "buff_B0_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B0", "role": "address8" }} , 
 	{ "name": "buff_B0_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B0", "role": "ce8" }} , 
 	{ "name": "buff_B0_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B0", "role": "q8" }} , 
 	{ "name": "buff_B0_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B0", "role": "address9" }} , 
 	{ "name": "buff_B0_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B0", "role": "ce9" }} , 
 	{ "name": "buff_B0_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B0", "role": "q9" }} , 
 	{ "name": "buff_B0_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B0", "role": "address10" }} , 
 	{ "name": "buff_B0_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B0", "role": "ce10" }} , 
 	{ "name": "buff_B0_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B0", "role": "q10" }} , 
 	{ "name": "buff_B0_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B0", "role": "address11" }} , 
 	{ "name": "buff_B0_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B0", "role": "ce11" }} , 
 	{ "name": "buff_B0_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B0", "role": "q11" }} , 
 	{ "name": "buff_B0_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B0", "role": "address12" }} , 
 	{ "name": "buff_B0_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B0", "role": "ce12" }} , 
 	{ "name": "buff_B0_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B0", "role": "q12" }} , 
 	{ "name": "buff_B0_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B0", "role": "address13" }} , 
 	{ "name": "buff_B0_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B0", "role": "ce13" }} , 
 	{ "name": "buff_B0_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B0", "role": "q13" }} , 
 	{ "name": "buff_B0_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B0", "role": "address14" }} , 
 	{ "name": "buff_B0_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B0", "role": "ce14" }} , 
 	{ "name": "buff_B0_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B0", "role": "q14" }} , 
 	{ "name": "buff_B0_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buff_B0", "role": "address15" }} , 
 	{ "name": "buff_B0_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B0", "role": "ce15" }} , 
 	{ "name": "buff_B0_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B0", "role": "q15" }} , 
 	{ "name": "tmp1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1", "role": "address0" }} , 
 	{ "name": "tmp1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce0" }} , 
 	{ "name": "tmp1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "we0" }} , 
 	{ "name": "tmp1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "d0" }} , 
 	{ "name": "tmp1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q0" }} , 
 	{ "name": "grp_fu_153_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_153_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_153_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_153_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_153_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_153_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_153_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_153_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_153_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_153_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_157_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_157_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_157_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_157_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_157_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_157_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_157_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_157_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_157_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_157_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_161_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_161_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_161_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_161_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_161_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_161_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_161_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_161_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_161_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_161_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_165_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_165_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_165_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_165_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_165_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_165_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_165_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_165_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_165_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_165_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_169_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_169_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_169_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_169_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_169_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_169_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_169_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_169_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_169_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_169_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_173_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_173_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_173_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_173_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_173_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_173_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_173_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_173_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_173_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_173_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_177_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_177_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_177_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_177_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_177_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_177_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_177_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_177_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_177_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_177_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_181_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_181_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_181_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_181_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_181_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_181_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_181_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_181_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_181_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_181_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_185_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_185_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_185_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_185_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_185_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_185_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_185_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_185_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_185_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_185_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_189_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_189_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_189_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_189_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_189_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_189_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_189_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_189_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_189_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_189_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_193_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_193_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_193_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_193_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_193_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_193_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_193_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_193_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_193_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_193_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_197_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_197_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_197_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_197_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_197_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_197_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_197_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_197_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_197_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_197_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_201_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_201_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_201_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_201_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_201_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_201_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_201_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_201_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_201_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_201_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_205_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_205_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_205_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_205_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_205_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_205_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_205_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_205_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_205_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_205_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_209_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_209_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_209_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_209_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_209_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_209_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_209_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_209_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_209_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_209_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_213_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_213_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_213_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_213_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_213_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_213_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_213_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_213_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_213_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_213_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_217_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_217_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_217_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_217_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_217_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_217_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_217_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_217_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_221_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_221_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_221_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_221_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_221_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_221_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_221_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_221_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_225_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_225_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_225_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_225_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_225_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_225_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_225_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_225_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_229_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_229_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_229_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_229_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_229_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_229_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_229_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_229_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_233_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_233_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_233_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_233_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_233_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_233_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_233_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_233_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_237_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_237_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_237_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_237_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_237_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_237_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_237_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_237_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_241_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_241_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_241_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_241_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_241_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_241_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_241_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_241_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_245_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_245_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_245_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_245_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_245_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_245_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_245_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_245_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_249_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_249_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_249_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_249_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_249_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_249_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_249_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_249_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_253_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_253_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_253_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_253_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_253_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_253_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_253_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_253_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_257_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_257_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_257_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_257_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_257_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_257_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_257_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_257_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_261_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_261_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_261_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_261_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_261_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_261_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_261_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_261_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_265_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_265_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_265_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_265_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_265_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_265_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_265_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_265_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_269_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_269_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_269_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_269_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_269_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_269_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_269_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_269_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_273_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_273_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_273_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_273_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_273_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_273_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_273_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_273_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_277_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_277_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_277_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_277_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_277_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_277_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_277_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_277_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_281_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_281_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_281_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_281_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_281_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_281_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_281_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_281_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_285_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_285_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_285_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_285_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_285_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_285_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_285_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_285_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_289_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_289_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_289_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_289_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_289_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_289_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_289_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_289_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_293_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_293_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_293_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_293_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_293_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_293_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_293_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_293_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_297_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_297_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_297_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_297_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_297_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_297_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_297_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_297_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_301_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_301_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_301_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_301_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_301_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_301_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_301_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_301_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_305_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_305_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_305_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_305_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_305_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_305_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_305_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_305_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_309_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_309_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_309_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_309_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_309_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_309_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_309_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_309_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_313_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_313_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_313_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_313_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_313_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_313_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_313_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_313_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_317_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_317_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_317_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_317_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_317_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_317_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_317_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_317_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_321_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_321_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_321_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_321_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_321_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_321_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_321_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_321_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_325_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_325_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_325_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_325_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_325_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_325_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_325_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_325_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_329_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_329_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_329_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_329_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_329_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_329_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_329_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_329_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_333_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_333_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_333_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_333_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_333_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_333_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_333_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_333_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_337_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_337_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_337_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_337_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_337_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_337_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_337_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_337_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_341_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_341_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_341_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_341_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_341_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_341_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_341_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_341_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "syr2k_Pipeline_lp1_lp2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16712", "EstimateLatencyMax" : "16712",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_A0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alpha", "Type" : "None", "Direction" : "I"},
			{"Name" : "buff_B0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "lp1_lp2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter82", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter82", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	syr2k_Pipeline_lp1_lp2 {
		buff_A0 {Type I LastRead 4 FirstWrite -1}
		alpha {Type I LastRead 0 FirstWrite -1}
		buff_B0 {Type I LastRead 4 FirstWrite -1}
		tmp1 {Type IO LastRead 8 FirstWrite 330}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16712", "Max" : "16712"}
	, {"Name" : "Interval", "Min" : "16712", "Max" : "16712"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	buff_A0 { ap_memory {  { buff_A0_address0 mem_address 1 12 }  { buff_A0_ce0 mem_ce 1 1 }  { buff_A0_q0 mem_dout 0 32 }  { buff_A0_address1 MemPortADDR2 1 12 }  { buff_A0_ce1 MemPortCE2 1 1 }  { buff_A0_q1 MemPortDOUT2 0 32 }  { buff_A0_address2 MemPortADDR2 1 12 }  { buff_A0_ce2 MemPortCE2 1 1 }  { buff_A0_q2 MemPortDOUT2 0 32 }  { buff_A0_address3 MemPortADDR2 1 12 }  { buff_A0_ce3 MemPortCE2 1 1 }  { buff_A0_q3 MemPortDOUT2 0 32 }  { buff_A0_address4 MemPortADDR2 1 12 }  { buff_A0_ce4 MemPortCE2 1 1 }  { buff_A0_q4 MemPortDOUT2 0 32 }  { buff_A0_address5 MemPortADDR2 1 12 }  { buff_A0_ce5 MemPortCE2 1 1 }  { buff_A0_q5 MemPortDOUT2 0 32 }  { buff_A0_address6 MemPortADDR2 1 12 }  { buff_A0_ce6 MemPortCE2 1 1 }  { buff_A0_q6 MemPortDOUT2 0 32 }  { buff_A0_address7 MemPortADDR2 1 12 }  { buff_A0_ce7 MemPortCE2 1 1 }  { buff_A0_q7 MemPortDOUT2 0 32 }  { buff_A0_address8 MemPortADDR2 1 12 }  { buff_A0_ce8 MemPortCE2 1 1 }  { buff_A0_q8 MemPortDOUT2 0 32 }  { buff_A0_address9 MemPortADDR2 1 12 }  { buff_A0_ce9 MemPortCE2 1 1 }  { buff_A0_q9 MemPortDOUT2 0 32 }  { buff_A0_address10 MemPortADDR2 1 12 }  { buff_A0_ce10 MemPortCE2 1 1 }  { buff_A0_q10 MemPortDOUT2 0 32 }  { buff_A0_address11 MemPortADDR2 1 12 }  { buff_A0_ce11 MemPortCE2 1 1 }  { buff_A0_q11 MemPortDOUT2 0 32 }  { buff_A0_address12 MemPortADDR2 1 12 }  { buff_A0_ce12 MemPortCE2 1 1 }  { buff_A0_q12 MemPortDOUT2 0 32 }  { buff_A0_address13 MemPortADDR2 1 12 }  { buff_A0_ce13 MemPortCE2 1 1 }  { buff_A0_q13 MemPortDOUT2 0 32 }  { buff_A0_address14 MemPortADDR2 1 12 }  { buff_A0_ce14 MemPortCE2 1 1 }  { buff_A0_q14 MemPortDOUT2 0 32 }  { buff_A0_address15 MemPortADDR2 1 12 }  { buff_A0_ce15 MemPortCE2 1 1 }  { buff_A0_q15 MemPortDOUT2 0 32 } } }
	alpha { ap_none {  { alpha in_data 0 32 } } }
	buff_B0 { ap_memory {  { buff_B0_address0 mem_address 1 12 }  { buff_B0_ce0 mem_ce 1 1 }  { buff_B0_q0 mem_dout 0 32 }  { buff_B0_address1 MemPortADDR2 1 12 }  { buff_B0_ce1 MemPortCE2 1 1 }  { buff_B0_q1 MemPortDOUT2 0 32 }  { buff_B0_address2 MemPortADDR2 1 12 }  { buff_B0_ce2 MemPortCE2 1 1 }  { buff_B0_q2 MemPortDOUT2 0 32 }  { buff_B0_address3 MemPortADDR2 1 12 }  { buff_B0_ce3 MemPortCE2 1 1 }  { buff_B0_q3 MemPortDOUT2 0 32 }  { buff_B0_address4 MemPortADDR2 1 12 }  { buff_B0_ce4 MemPortCE2 1 1 }  { buff_B0_q4 MemPortDOUT2 0 32 }  { buff_B0_address5 MemPortADDR2 1 12 }  { buff_B0_ce5 MemPortCE2 1 1 }  { buff_B0_q5 MemPortDOUT2 0 32 }  { buff_B0_address6 MemPortADDR2 1 12 }  { buff_B0_ce6 MemPortCE2 1 1 }  { buff_B0_q6 MemPortDOUT2 0 32 }  { buff_B0_address7 MemPortADDR2 1 12 }  { buff_B0_ce7 MemPortCE2 1 1 }  { buff_B0_q7 MemPortDOUT2 0 32 }  { buff_B0_address8 MemPortADDR2 1 12 }  { buff_B0_ce8 MemPortCE2 1 1 }  { buff_B0_q8 MemPortDOUT2 0 32 }  { buff_B0_address9 MemPortADDR2 1 12 }  { buff_B0_ce9 MemPortCE2 1 1 }  { buff_B0_q9 MemPortDOUT2 0 32 }  { buff_B0_address10 MemPortADDR2 1 12 }  { buff_B0_ce10 MemPortCE2 1 1 }  { buff_B0_q10 MemPortDOUT2 0 32 }  { buff_B0_address11 MemPortADDR2 1 12 }  { buff_B0_ce11 MemPortCE2 1 1 }  { buff_B0_q11 MemPortDOUT2 0 32 }  { buff_B0_address12 MemPortADDR2 1 12 }  { buff_B0_ce12 MemPortCE2 1 1 }  { buff_B0_q12 MemPortDOUT2 0 32 }  { buff_B0_address13 MemPortADDR2 1 12 }  { buff_B0_ce13 MemPortCE2 1 1 }  { buff_B0_q13 MemPortDOUT2 0 32 }  { buff_B0_address14 MemPortADDR2 1 12 }  { buff_B0_ce14 MemPortCE2 1 1 }  { buff_B0_q14 MemPortDOUT2 0 32 }  { buff_B0_address15 MemPortADDR2 1 12 }  { buff_B0_ce15 MemPortCE2 1 1 }  { buff_B0_q15 MemPortDOUT2 0 32 } } }
	tmp1 { ap_memory {  { tmp1_address0 mem_address 1 12 }  { tmp1_ce0 mem_ce 1 1 }  { tmp1_we0 mem_we 1 1 }  { tmp1_d0 mem_din 1 32 }  { tmp1_q0 mem_dout 0 32 } } }
}
