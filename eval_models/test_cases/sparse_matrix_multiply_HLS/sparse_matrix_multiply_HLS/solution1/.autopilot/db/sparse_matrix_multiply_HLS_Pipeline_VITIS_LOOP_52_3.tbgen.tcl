set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3}
set C_modelType { int 1 }
set C_modelArgList {
	{ col_ptr_B int 32 regular {array 65 { 1 1 } 1 1 }  }
	{ local_col_ptr_B_64_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_63_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_62_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_61_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_60_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_59_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_58_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_57_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_56_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_55_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_54_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_53_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_52_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_51_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_50_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_49_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_48_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_47_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_46_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_45_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_44_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_43_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_42_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_41_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_40_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_39_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_38_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_37_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_36_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_35_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_34_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_33_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_32_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_31_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_30_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_29_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_28_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_27_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_26_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_25_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_24_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_23_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_22_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_21_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_20_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_19_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_18_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_17_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_16_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_15_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_14_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_13_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_12_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_11_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_10_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_9_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_8_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_7_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_6_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_5_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_4_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_3_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_2_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_1_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_82_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_81_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_80_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_79_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_78_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_77_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_76_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_75_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_74_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_73_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_72_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_71_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_70_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_69_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_68_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_67_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_66_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_col_ptr_B_64_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_63_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_62_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_61_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_60_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_59_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_58_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_57_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_56_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_55_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_54_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_53_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_52_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_51_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_50_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_49_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_48_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_47_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_46_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_45_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_44_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_43_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_42_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_41_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_40_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_39_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_38_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_37_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_36_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_34_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_33_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_32_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_31_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_30_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_29_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_28_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_27_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_26_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_25_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_24_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_23_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_22_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_21_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_20_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_19_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_18_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_17_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_16_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_15_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_14_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_13_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_12_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_11_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_10_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_9_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_8_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_7_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_82_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_81_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_80_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_79_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_78_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_77_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_76_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_75_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_74_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_73_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_72_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_71_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_70_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_69_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_68_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_67_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_66_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 177
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 0 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 0 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 0 } 
	{ col_ptr_B_address1 sc_out sc_lv 7 signal 0 } 
	{ col_ptr_B_ce1 sc_out sc_logic 1 signal 0 } 
	{ col_ptr_B_q1 sc_in sc_lv 32 signal 0 } 
	{ local_col_ptr_B_64_out sc_out sc_lv 32 signal 1 } 
	{ local_col_ptr_B_64_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ local_col_ptr_B_63_out sc_out sc_lv 32 signal 2 } 
	{ local_col_ptr_B_63_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ local_col_ptr_B_62_out sc_out sc_lv 32 signal 3 } 
	{ local_col_ptr_B_62_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ local_col_ptr_B_61_out sc_out sc_lv 32 signal 4 } 
	{ local_col_ptr_B_61_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ local_col_ptr_B_60_out sc_out sc_lv 32 signal 5 } 
	{ local_col_ptr_B_60_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ local_col_ptr_B_59_out sc_out sc_lv 32 signal 6 } 
	{ local_col_ptr_B_59_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ local_col_ptr_B_58_out sc_out sc_lv 32 signal 7 } 
	{ local_col_ptr_B_58_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ local_col_ptr_B_57_out sc_out sc_lv 32 signal 8 } 
	{ local_col_ptr_B_57_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ local_col_ptr_B_56_out sc_out sc_lv 32 signal 9 } 
	{ local_col_ptr_B_56_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ local_col_ptr_B_55_out sc_out sc_lv 32 signal 10 } 
	{ local_col_ptr_B_55_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ local_col_ptr_B_54_out sc_out sc_lv 32 signal 11 } 
	{ local_col_ptr_B_54_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ local_col_ptr_B_53_out sc_out sc_lv 32 signal 12 } 
	{ local_col_ptr_B_53_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ local_col_ptr_B_52_out sc_out sc_lv 32 signal 13 } 
	{ local_col_ptr_B_52_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ local_col_ptr_B_51_out sc_out sc_lv 32 signal 14 } 
	{ local_col_ptr_B_51_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ local_col_ptr_B_50_out sc_out sc_lv 32 signal 15 } 
	{ local_col_ptr_B_50_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ local_col_ptr_B_49_out sc_out sc_lv 32 signal 16 } 
	{ local_col_ptr_B_49_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ local_col_ptr_B_48_out sc_out sc_lv 32 signal 17 } 
	{ local_col_ptr_B_48_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ local_col_ptr_B_47_out sc_out sc_lv 32 signal 18 } 
	{ local_col_ptr_B_47_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ local_col_ptr_B_46_out sc_out sc_lv 32 signal 19 } 
	{ local_col_ptr_B_46_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ local_col_ptr_B_45_out sc_out sc_lv 32 signal 20 } 
	{ local_col_ptr_B_45_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ local_col_ptr_B_44_out sc_out sc_lv 32 signal 21 } 
	{ local_col_ptr_B_44_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ local_col_ptr_B_43_out sc_out sc_lv 32 signal 22 } 
	{ local_col_ptr_B_43_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ local_col_ptr_B_42_out sc_out sc_lv 32 signal 23 } 
	{ local_col_ptr_B_42_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ local_col_ptr_B_41_out sc_out sc_lv 32 signal 24 } 
	{ local_col_ptr_B_41_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ local_col_ptr_B_40_out sc_out sc_lv 32 signal 25 } 
	{ local_col_ptr_B_40_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ local_col_ptr_B_39_out sc_out sc_lv 32 signal 26 } 
	{ local_col_ptr_B_39_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ local_col_ptr_B_38_out sc_out sc_lv 32 signal 27 } 
	{ local_col_ptr_B_38_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ local_col_ptr_B_37_out sc_out sc_lv 32 signal 28 } 
	{ local_col_ptr_B_37_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ local_col_ptr_B_36_out sc_out sc_lv 32 signal 29 } 
	{ local_col_ptr_B_36_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ local_col_ptr_B_35_out sc_out sc_lv 32 signal 30 } 
	{ local_col_ptr_B_35_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ local_col_ptr_B_34_out sc_out sc_lv 32 signal 31 } 
	{ local_col_ptr_B_34_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ local_col_ptr_B_33_out sc_out sc_lv 32 signal 32 } 
	{ local_col_ptr_B_33_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ local_col_ptr_B_32_out sc_out sc_lv 32 signal 33 } 
	{ local_col_ptr_B_32_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ local_col_ptr_B_31_out sc_out sc_lv 32 signal 34 } 
	{ local_col_ptr_B_31_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ local_col_ptr_B_30_out sc_out sc_lv 32 signal 35 } 
	{ local_col_ptr_B_30_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ local_col_ptr_B_29_out sc_out sc_lv 32 signal 36 } 
	{ local_col_ptr_B_29_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ local_col_ptr_B_28_out sc_out sc_lv 32 signal 37 } 
	{ local_col_ptr_B_28_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ local_col_ptr_B_27_out sc_out sc_lv 32 signal 38 } 
	{ local_col_ptr_B_27_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ local_col_ptr_B_26_out sc_out sc_lv 32 signal 39 } 
	{ local_col_ptr_B_26_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ local_col_ptr_B_25_out sc_out sc_lv 32 signal 40 } 
	{ local_col_ptr_B_25_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ local_col_ptr_B_24_out sc_out sc_lv 32 signal 41 } 
	{ local_col_ptr_B_24_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ local_col_ptr_B_23_out sc_out sc_lv 32 signal 42 } 
	{ local_col_ptr_B_23_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ local_col_ptr_B_22_out sc_out sc_lv 32 signal 43 } 
	{ local_col_ptr_B_22_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ local_col_ptr_B_21_out sc_out sc_lv 32 signal 44 } 
	{ local_col_ptr_B_21_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ local_col_ptr_B_20_out sc_out sc_lv 32 signal 45 } 
	{ local_col_ptr_B_20_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ local_col_ptr_B_19_out sc_out sc_lv 32 signal 46 } 
	{ local_col_ptr_B_19_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ local_col_ptr_B_18_out sc_out sc_lv 32 signal 47 } 
	{ local_col_ptr_B_18_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ local_col_ptr_B_17_out sc_out sc_lv 32 signal 48 } 
	{ local_col_ptr_B_17_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ local_col_ptr_B_16_out sc_out sc_lv 32 signal 49 } 
	{ local_col_ptr_B_16_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ local_col_ptr_B_15_out sc_out sc_lv 32 signal 50 } 
	{ local_col_ptr_B_15_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ local_col_ptr_B_14_out sc_out sc_lv 32 signal 51 } 
	{ local_col_ptr_B_14_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ local_col_ptr_B_13_out sc_out sc_lv 32 signal 52 } 
	{ local_col_ptr_B_13_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ local_col_ptr_B_12_out sc_out sc_lv 32 signal 53 } 
	{ local_col_ptr_B_12_out_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ local_col_ptr_B_11_out sc_out sc_lv 32 signal 54 } 
	{ local_col_ptr_B_11_out_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ local_col_ptr_B_10_out sc_out sc_lv 32 signal 55 } 
	{ local_col_ptr_B_10_out_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ local_col_ptr_B_9_out sc_out sc_lv 32 signal 56 } 
	{ local_col_ptr_B_9_out_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ local_col_ptr_B_8_out sc_out sc_lv 32 signal 57 } 
	{ local_col_ptr_B_8_out_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ local_col_ptr_B_7_out sc_out sc_lv 32 signal 58 } 
	{ local_col_ptr_B_7_out_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ local_col_ptr_B_6_out sc_out sc_lv 32 signal 59 } 
	{ local_col_ptr_B_6_out_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ local_col_ptr_B_5_out sc_out sc_lv 32 signal 60 } 
	{ local_col_ptr_B_5_out_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ local_col_ptr_B_4_out sc_out sc_lv 32 signal 61 } 
	{ local_col_ptr_B_4_out_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ local_col_ptr_B_3_out sc_out sc_lv 32 signal 62 } 
	{ local_col_ptr_B_3_out_ap_vld sc_out sc_logic 1 outvld 62 } 
	{ local_col_ptr_B_2_out sc_out sc_lv 32 signal 63 } 
	{ local_col_ptr_B_2_out_ap_vld sc_out sc_logic 1 outvld 63 } 
	{ local_col_ptr_B_1_out sc_out sc_lv 32 signal 64 } 
	{ local_col_ptr_B_1_out_ap_vld sc_out sc_logic 1 outvld 64 } 
	{ local_col_ptr_B_out sc_out sc_lv 32 signal 65 } 
	{ local_col_ptr_B_out_ap_vld sc_out sc_logic 1 outvld 65 } 
	{ local_col_ptr_B_82_out sc_out sc_lv 32 signal 66 } 
	{ local_col_ptr_B_82_out_ap_vld sc_out sc_logic 1 outvld 66 } 
	{ local_col_ptr_B_81_out sc_out sc_lv 32 signal 67 } 
	{ local_col_ptr_B_81_out_ap_vld sc_out sc_logic 1 outvld 67 } 
	{ local_col_ptr_B_80_out sc_out sc_lv 32 signal 68 } 
	{ local_col_ptr_B_80_out_ap_vld sc_out sc_logic 1 outvld 68 } 
	{ local_col_ptr_B_79_out sc_out sc_lv 32 signal 69 } 
	{ local_col_ptr_B_79_out_ap_vld sc_out sc_logic 1 outvld 69 } 
	{ local_col_ptr_B_78_out sc_out sc_lv 32 signal 70 } 
	{ local_col_ptr_B_78_out_ap_vld sc_out sc_logic 1 outvld 70 } 
	{ local_col_ptr_B_77_out sc_out sc_lv 32 signal 71 } 
	{ local_col_ptr_B_77_out_ap_vld sc_out sc_logic 1 outvld 71 } 
	{ local_col_ptr_B_76_out sc_out sc_lv 32 signal 72 } 
	{ local_col_ptr_B_76_out_ap_vld sc_out sc_logic 1 outvld 72 } 
	{ local_col_ptr_B_75_out sc_out sc_lv 32 signal 73 } 
	{ local_col_ptr_B_75_out_ap_vld sc_out sc_logic 1 outvld 73 } 
	{ local_col_ptr_B_74_out sc_out sc_lv 32 signal 74 } 
	{ local_col_ptr_B_74_out_ap_vld sc_out sc_logic 1 outvld 74 } 
	{ local_col_ptr_B_73_out sc_out sc_lv 32 signal 75 } 
	{ local_col_ptr_B_73_out_ap_vld sc_out sc_logic 1 outvld 75 } 
	{ local_col_ptr_B_72_out sc_out sc_lv 32 signal 76 } 
	{ local_col_ptr_B_72_out_ap_vld sc_out sc_logic 1 outvld 76 } 
	{ local_col_ptr_B_71_out sc_out sc_lv 32 signal 77 } 
	{ local_col_ptr_B_71_out_ap_vld sc_out sc_logic 1 outvld 77 } 
	{ local_col_ptr_B_70_out sc_out sc_lv 32 signal 78 } 
	{ local_col_ptr_B_70_out_ap_vld sc_out sc_logic 1 outvld 78 } 
	{ local_col_ptr_B_69_out sc_out sc_lv 32 signal 79 } 
	{ local_col_ptr_B_69_out_ap_vld sc_out sc_logic 1 outvld 79 } 
	{ local_col_ptr_B_68_out sc_out sc_lv 32 signal 80 } 
	{ local_col_ptr_B_68_out_ap_vld sc_out sc_logic 1 outvld 80 } 
	{ local_col_ptr_B_67_out sc_out sc_lv 32 signal 81 } 
	{ local_col_ptr_B_67_out_ap_vld sc_out sc_logic 1 outvld 81 } 
	{ local_col_ptr_B_66_out sc_out sc_lv 32 signal 82 } 
	{ local_col_ptr_B_66_out_ap_vld sc_out sc_logic 1 outvld 82 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address1" }} , 
 	{ "name": "col_ptr_B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce1" }} , 
 	{ "name": "col_ptr_B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q1" }} , 
 	{ "name": "local_col_ptr_B_64_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_64_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_64_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_64_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_63_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_63_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_63_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_63_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_62_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_62_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_62_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_62_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_61_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_61_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_61_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_61_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_60_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_60_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_60_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_60_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_59_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_59_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_59_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_59_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_58_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_58_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_58_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_58_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_57_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_57_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_57_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_57_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_56_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_56_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_56_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_56_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_55_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_55_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_55_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_55_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_54_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_54_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_54_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_54_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_53_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_53_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_53_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_53_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_52_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_52_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_52_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_52_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_51_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_51_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_51_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_51_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_50_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_50_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_50_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_50_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_49_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_49_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_49_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_49_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_48_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_48_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_48_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_48_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_47_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_47_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_47_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_47_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_46_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_46_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_46_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_46_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_45_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_45_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_45_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_45_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_44_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_44_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_44_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_44_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_43_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_43_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_43_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_43_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_42_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_42_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_42_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_42_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_41_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_41_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_41_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_41_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_40_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_40_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_40_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_40_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_39_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_39_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_39_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_39_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_38_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_38_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_38_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_38_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_37_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_37_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_37_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_37_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_36_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_36_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_36_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_36_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_35_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_35_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_34_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_34_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_34_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_34_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_33_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_33_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_33_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_33_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_32_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_32_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_32_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_32_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_31_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_31_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_31_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_31_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_30_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_30_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_30_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_30_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_29_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_29_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_28_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_28_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_27_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_27_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_26_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_26_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_25_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_25_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_24_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_24_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_23_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_23_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_22_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_22_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_21_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_21_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_20_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_20_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_19_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_19_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_18_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_18_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_17_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_17_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_16_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_16_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_15_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_15_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_14_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_14_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_13_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_13_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_12_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_12_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_11_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_11_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_10_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_10_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_9_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_9_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_8_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_8_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_7_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_7_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_6_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_6_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_5_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_5_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_4_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_4_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_3_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_3_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_2_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_2_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_1_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_1_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_82_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_82_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_82_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_82_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_81_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_81_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_81_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_81_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_80_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_80_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_80_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_80_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_79_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_79_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_79_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_79_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_78_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_78_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_78_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_78_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_77_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_77_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_77_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_77_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_76_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_76_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_76_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_76_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_75_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_75_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_75_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_75_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_74_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_74_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_74_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_74_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_73_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_73_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_73_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_73_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_72_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_72_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_72_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_72_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_71_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_71_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_71_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_71_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_70_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_70_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_70_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_70_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_69_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_69_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_69_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_69_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_68_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_68_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_68_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_68_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_67_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_67_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_67_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_67_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_66_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_66_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_66_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_66_out", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "38",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_66_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_52_3", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state6"]}}]}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3 {
		col_ptr_B {Type I LastRead 3 FirstWrite -1}
		local_col_ptr_B_64_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_63_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_62_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_61_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_60_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_59_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_58_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_57_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_56_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_55_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_54_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_53_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_52_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_51_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_50_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_49_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_48_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_47_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_46_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_45_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_44_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_43_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_42_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_41_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_40_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_39_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_38_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_37_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_36_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_35_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_34_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_33_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_32_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_31_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_30_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_29_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_28_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_27_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_26_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_25_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_24_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_23_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_22_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_21_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_20_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_19_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_18_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_17_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_16_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_15_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_14_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_13_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_12_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_11_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_10_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_9_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_8_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_7_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_6_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_5_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_4_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_3_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_2_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_1_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_82_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_81_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_80_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_79_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_78_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_77_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_76_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_75_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_74_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_73_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_72_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_71_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_70_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_69_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_68_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_67_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_66_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "38"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "38"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 in_data 0 32 }  { col_ptr_B_address1 MemPortADDR2 1 7 }  { col_ptr_B_ce1 MemPortCE2 1 1 }  { col_ptr_B_q1 in_data 0 32 } } }
	local_col_ptr_B_64_out { ap_vld {  { local_col_ptr_B_64_out out_data 1 32 }  { local_col_ptr_B_64_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_63_out { ap_vld {  { local_col_ptr_B_63_out out_data 1 32 }  { local_col_ptr_B_63_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_62_out { ap_vld {  { local_col_ptr_B_62_out out_data 1 32 }  { local_col_ptr_B_62_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_61_out { ap_vld {  { local_col_ptr_B_61_out out_data 1 32 }  { local_col_ptr_B_61_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_60_out { ap_vld {  { local_col_ptr_B_60_out out_data 1 32 }  { local_col_ptr_B_60_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_59_out { ap_vld {  { local_col_ptr_B_59_out out_data 1 32 }  { local_col_ptr_B_59_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_58_out { ap_vld {  { local_col_ptr_B_58_out out_data 1 32 }  { local_col_ptr_B_58_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_57_out { ap_vld {  { local_col_ptr_B_57_out out_data 1 32 }  { local_col_ptr_B_57_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_56_out { ap_vld {  { local_col_ptr_B_56_out out_data 1 32 }  { local_col_ptr_B_56_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_55_out { ap_vld {  { local_col_ptr_B_55_out out_data 1 32 }  { local_col_ptr_B_55_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_54_out { ap_vld {  { local_col_ptr_B_54_out out_data 1 32 }  { local_col_ptr_B_54_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_53_out { ap_vld {  { local_col_ptr_B_53_out out_data 1 32 }  { local_col_ptr_B_53_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_52_out { ap_vld {  { local_col_ptr_B_52_out out_data 1 32 }  { local_col_ptr_B_52_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_51_out { ap_vld {  { local_col_ptr_B_51_out out_data 1 32 }  { local_col_ptr_B_51_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_50_out { ap_vld {  { local_col_ptr_B_50_out out_data 1 32 }  { local_col_ptr_B_50_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_49_out { ap_vld {  { local_col_ptr_B_49_out out_data 1 32 }  { local_col_ptr_B_49_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_48_out { ap_vld {  { local_col_ptr_B_48_out out_data 1 32 }  { local_col_ptr_B_48_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_47_out { ap_vld {  { local_col_ptr_B_47_out out_data 1 32 }  { local_col_ptr_B_47_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_46_out { ap_vld {  { local_col_ptr_B_46_out out_data 1 32 }  { local_col_ptr_B_46_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_45_out { ap_vld {  { local_col_ptr_B_45_out out_data 1 32 }  { local_col_ptr_B_45_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_44_out { ap_vld {  { local_col_ptr_B_44_out out_data 1 32 }  { local_col_ptr_B_44_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_43_out { ap_vld {  { local_col_ptr_B_43_out out_data 1 32 }  { local_col_ptr_B_43_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_42_out { ap_vld {  { local_col_ptr_B_42_out out_data 1 32 }  { local_col_ptr_B_42_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_41_out { ap_vld {  { local_col_ptr_B_41_out out_data 1 32 }  { local_col_ptr_B_41_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_40_out { ap_vld {  { local_col_ptr_B_40_out out_data 1 32 }  { local_col_ptr_B_40_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_39_out { ap_vld {  { local_col_ptr_B_39_out out_data 1 32 }  { local_col_ptr_B_39_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_38_out { ap_vld {  { local_col_ptr_B_38_out out_data 1 32 }  { local_col_ptr_B_38_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_37_out { ap_vld {  { local_col_ptr_B_37_out out_data 1 32 }  { local_col_ptr_B_37_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_36_out { ap_vld {  { local_col_ptr_B_36_out out_data 1 32 }  { local_col_ptr_B_36_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_35_out { ap_vld {  { local_col_ptr_B_35_out out_data 1 32 }  { local_col_ptr_B_35_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_34_out { ap_vld {  { local_col_ptr_B_34_out out_data 1 32 }  { local_col_ptr_B_34_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_33_out { ap_vld {  { local_col_ptr_B_33_out out_data 1 32 }  { local_col_ptr_B_33_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_32_out { ap_vld {  { local_col_ptr_B_32_out out_data 1 32 }  { local_col_ptr_B_32_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_31_out { ap_vld {  { local_col_ptr_B_31_out out_data 1 32 }  { local_col_ptr_B_31_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_30_out { ap_vld {  { local_col_ptr_B_30_out out_data 1 32 }  { local_col_ptr_B_30_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_29_out { ap_vld {  { local_col_ptr_B_29_out out_data 1 32 }  { local_col_ptr_B_29_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_28_out { ap_vld {  { local_col_ptr_B_28_out out_data 1 32 }  { local_col_ptr_B_28_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_27_out { ap_vld {  { local_col_ptr_B_27_out out_data 1 32 }  { local_col_ptr_B_27_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_26_out { ap_vld {  { local_col_ptr_B_26_out out_data 1 32 }  { local_col_ptr_B_26_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_25_out { ap_vld {  { local_col_ptr_B_25_out out_data 1 32 }  { local_col_ptr_B_25_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_24_out { ap_vld {  { local_col_ptr_B_24_out out_data 1 32 }  { local_col_ptr_B_24_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_23_out { ap_vld {  { local_col_ptr_B_23_out out_data 1 32 }  { local_col_ptr_B_23_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_22_out { ap_vld {  { local_col_ptr_B_22_out out_data 1 32 }  { local_col_ptr_B_22_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_21_out { ap_vld {  { local_col_ptr_B_21_out out_data 1 32 }  { local_col_ptr_B_21_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_20_out { ap_vld {  { local_col_ptr_B_20_out out_data 1 32 }  { local_col_ptr_B_20_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_19_out { ap_vld {  { local_col_ptr_B_19_out out_data 1 32 }  { local_col_ptr_B_19_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_18_out { ap_vld {  { local_col_ptr_B_18_out out_data 1 32 }  { local_col_ptr_B_18_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_17_out { ap_vld {  { local_col_ptr_B_17_out out_data 1 32 }  { local_col_ptr_B_17_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_16_out { ap_vld {  { local_col_ptr_B_16_out out_data 1 32 }  { local_col_ptr_B_16_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_15_out { ap_vld {  { local_col_ptr_B_15_out out_data 1 32 }  { local_col_ptr_B_15_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_14_out { ap_vld {  { local_col_ptr_B_14_out out_data 1 32 }  { local_col_ptr_B_14_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_13_out { ap_vld {  { local_col_ptr_B_13_out out_data 1 32 }  { local_col_ptr_B_13_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_12_out { ap_vld {  { local_col_ptr_B_12_out out_data 1 32 }  { local_col_ptr_B_12_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_11_out { ap_vld {  { local_col_ptr_B_11_out out_data 1 32 }  { local_col_ptr_B_11_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_10_out { ap_vld {  { local_col_ptr_B_10_out out_data 1 32 }  { local_col_ptr_B_10_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_9_out { ap_vld {  { local_col_ptr_B_9_out out_data 1 32 }  { local_col_ptr_B_9_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_8_out { ap_vld {  { local_col_ptr_B_8_out out_data 1 32 }  { local_col_ptr_B_8_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_7_out { ap_vld {  { local_col_ptr_B_7_out out_data 1 32 }  { local_col_ptr_B_7_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_6_out { ap_vld {  { local_col_ptr_B_6_out out_data 1 32 }  { local_col_ptr_B_6_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_5_out { ap_vld {  { local_col_ptr_B_5_out out_data 1 32 }  { local_col_ptr_B_5_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_4_out { ap_vld {  { local_col_ptr_B_4_out out_data 1 32 }  { local_col_ptr_B_4_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_3_out { ap_vld {  { local_col_ptr_B_3_out out_data 1 32 }  { local_col_ptr_B_3_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_2_out { ap_vld {  { local_col_ptr_B_2_out out_data 1 32 }  { local_col_ptr_B_2_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_1_out { ap_vld {  { local_col_ptr_B_1_out out_data 1 32 }  { local_col_ptr_B_1_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_out { ap_vld {  { local_col_ptr_B_out out_data 1 32 }  { local_col_ptr_B_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_82_out { ap_vld {  { local_col_ptr_B_82_out out_data 1 32 }  { local_col_ptr_B_82_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_81_out { ap_vld {  { local_col_ptr_B_81_out out_data 1 32 }  { local_col_ptr_B_81_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_80_out { ap_vld {  { local_col_ptr_B_80_out out_data 1 32 }  { local_col_ptr_B_80_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_79_out { ap_vld {  { local_col_ptr_B_79_out out_data 1 32 }  { local_col_ptr_B_79_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_78_out { ap_vld {  { local_col_ptr_B_78_out out_data 1 32 }  { local_col_ptr_B_78_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_77_out { ap_vld {  { local_col_ptr_B_77_out out_data 1 32 }  { local_col_ptr_B_77_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_76_out { ap_vld {  { local_col_ptr_B_76_out out_data 1 32 }  { local_col_ptr_B_76_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_75_out { ap_vld {  { local_col_ptr_B_75_out out_data 1 32 }  { local_col_ptr_B_75_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_74_out { ap_vld {  { local_col_ptr_B_74_out out_data 1 32 }  { local_col_ptr_B_74_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_73_out { ap_vld {  { local_col_ptr_B_73_out out_data 1 32 }  { local_col_ptr_B_73_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_72_out { ap_vld {  { local_col_ptr_B_72_out out_data 1 32 }  { local_col_ptr_B_72_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_71_out { ap_vld {  { local_col_ptr_B_71_out out_data 1 32 }  { local_col_ptr_B_71_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_70_out { ap_vld {  { local_col_ptr_B_70_out out_data 1 32 }  { local_col_ptr_B_70_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_69_out { ap_vld {  { local_col_ptr_B_69_out out_data 1 32 }  { local_col_ptr_B_69_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_68_out { ap_vld {  { local_col_ptr_B_68_out out_data 1 32 }  { local_col_ptr_B_68_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_67_out { ap_vld {  { local_col_ptr_B_67_out out_data 1 32 }  { local_col_ptr_B_67_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_66_out { ap_vld {  { local_col_ptr_B_66_out out_data 1 32 }  { local_col_ptr_B_66_out_ap_vld out_vld 1 1 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ col_ptr_B int 32 regular {array 65 { 1 1 } 1 1 }  }
	{ local_col_ptr_B int 32 regular {array 33 { 0 3 } 0 1 }  }
	{ local_col_ptr_B_1 int 32 regular {array 33 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 0 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 0 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 0 } 
	{ col_ptr_B_address1 sc_out sc_lv 7 signal 0 } 
	{ col_ptr_B_ce1 sc_out sc_logic 1 signal 0 } 
	{ col_ptr_B_q1 sc_in sc_lv 32 signal 0 } 
	{ local_col_ptr_B_address0 sc_out sc_lv 6 signal 1 } 
	{ local_col_ptr_B_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_col_ptr_B_we0 sc_out sc_logic 1 signal 1 } 
	{ local_col_ptr_B_d0 sc_out sc_lv 32 signal 1 } 
	{ local_col_ptr_B_1_address0 sc_out sc_lv 6 signal 2 } 
	{ local_col_ptr_B_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_col_ptr_B_1_we0 sc_out sc_logic 1 signal 2 } 
	{ local_col_ptr_B_1_d0 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address1" }} , 
 	{ "name": "col_ptr_B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce1" }} , 
 	{ "name": "col_ptr_B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q1" }} , 
 	{ "name": "local_col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_col_ptr_B", "role": "address0" }} , 
 	{ "name": "local_col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_col_ptr_B", "role": "ce0" }} , 
 	{ "name": "local_col_ptr_B_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_col_ptr_B", "role": "we0" }} , 
 	{ "name": "local_col_ptr_B_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B", "role": "d0" }} , 
 	{ "name": "local_col_ptr_B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_col_ptr_B_1", "role": "address0" }} , 
 	{ "name": "local_col_ptr_B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_col_ptr_B_1", "role": "ce0" }} , 
 	{ "name": "local_col_ptr_B_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_col_ptr_B_1", "role": "we0" }} , 
 	{ "name": "local_col_ptr_B_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_1", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_52_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_9ns_15_1_1_U137", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_9ns_15_1_1_U138", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3 {
		col_ptr_B {Type I LastRead 1 FirstWrite -1}
		local_col_ptr_B {Type O LastRead -1 FirstWrite 1}
		local_col_ptr_B_1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "69"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "69"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 mem_dout 0 32 }  { col_ptr_B_address1 MemPortADDR2 1 7 }  { col_ptr_B_ce1 MemPortCE2 1 1 }  { col_ptr_B_q1 in_data 0 32 } } }
	local_col_ptr_B { ap_memory {  { local_col_ptr_B_address0 mem_address 1 6 }  { local_col_ptr_B_ce0 mem_ce 1 1 }  { local_col_ptr_B_we0 mem_we 1 1 }  { local_col_ptr_B_d0 mem_din 1 32 } } }
	local_col_ptr_B_1 { ap_memory {  { local_col_ptr_B_1_address0 mem_address 1 6 }  { local_col_ptr_B_1_ce0 mem_ce 1 1 }  { local_col_ptr_B_1_we0 mem_we 1 1 }  { local_col_ptr_B_1_d0 mem_din 1 32 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3}
set C_modelType { int 1 }
set C_modelArgList {
	{ col_ptr_B int 32 regular {array 65 { 1 1 } 1 1 }  }
	{ local_col_ptr_B_64_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_63_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_62_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_61_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_60_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_59_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_58_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_57_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_56_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_55_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_54_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_53_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_52_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_51_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_50_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_49_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_48_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_47_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_46_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_45_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_44_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_43_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_42_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_41_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_40_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_39_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_38_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_37_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_36_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_35_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_34_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_33_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_32_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_31_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_30_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_29_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_28_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_27_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_26_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_25_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_24_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_23_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_22_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_21_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_20_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_19_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_18_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_17_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_16_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_15_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_14_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_13_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_12_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_11_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_10_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_9_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_8_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_7_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_6_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_5_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_4_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_3_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_2_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_1_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_82_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_81_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_80_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_79_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_78_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_77_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_76_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_75_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_74_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_73_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_72_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_71_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_70_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_69_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_68_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_67_out int 32 regular {pointer 1}  }
	{ local_col_ptr_B_66_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_col_ptr_B_64_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_63_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_62_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_61_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_60_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_59_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_58_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_57_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_56_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_55_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_54_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_53_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_52_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_51_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_50_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_49_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_48_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_47_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_46_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_45_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_44_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_43_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_42_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_41_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_40_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_39_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_38_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_37_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_36_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_34_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_33_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_32_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_31_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_30_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_29_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_28_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_27_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_26_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_25_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_24_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_23_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_22_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_21_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_20_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_19_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_18_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_17_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_16_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_15_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_14_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_13_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_12_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_11_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_10_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_9_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_8_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_7_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_82_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_81_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_80_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_79_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_78_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_77_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_76_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_75_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_74_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_73_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_72_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_71_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_70_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_69_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_68_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_67_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_66_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 177
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 0 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 0 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 0 } 
	{ col_ptr_B_address1 sc_out sc_lv 7 signal 0 } 
	{ col_ptr_B_ce1 sc_out sc_logic 1 signal 0 } 
	{ col_ptr_B_q1 sc_in sc_lv 32 signal 0 } 
	{ local_col_ptr_B_64_out sc_out sc_lv 32 signal 1 } 
	{ local_col_ptr_B_64_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ local_col_ptr_B_63_out sc_out sc_lv 32 signal 2 } 
	{ local_col_ptr_B_63_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ local_col_ptr_B_62_out sc_out sc_lv 32 signal 3 } 
	{ local_col_ptr_B_62_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ local_col_ptr_B_61_out sc_out sc_lv 32 signal 4 } 
	{ local_col_ptr_B_61_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ local_col_ptr_B_60_out sc_out sc_lv 32 signal 5 } 
	{ local_col_ptr_B_60_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ local_col_ptr_B_59_out sc_out sc_lv 32 signal 6 } 
	{ local_col_ptr_B_59_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ local_col_ptr_B_58_out sc_out sc_lv 32 signal 7 } 
	{ local_col_ptr_B_58_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ local_col_ptr_B_57_out sc_out sc_lv 32 signal 8 } 
	{ local_col_ptr_B_57_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ local_col_ptr_B_56_out sc_out sc_lv 32 signal 9 } 
	{ local_col_ptr_B_56_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ local_col_ptr_B_55_out sc_out sc_lv 32 signal 10 } 
	{ local_col_ptr_B_55_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ local_col_ptr_B_54_out sc_out sc_lv 32 signal 11 } 
	{ local_col_ptr_B_54_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ local_col_ptr_B_53_out sc_out sc_lv 32 signal 12 } 
	{ local_col_ptr_B_53_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ local_col_ptr_B_52_out sc_out sc_lv 32 signal 13 } 
	{ local_col_ptr_B_52_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ local_col_ptr_B_51_out sc_out sc_lv 32 signal 14 } 
	{ local_col_ptr_B_51_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ local_col_ptr_B_50_out sc_out sc_lv 32 signal 15 } 
	{ local_col_ptr_B_50_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ local_col_ptr_B_49_out sc_out sc_lv 32 signal 16 } 
	{ local_col_ptr_B_49_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ local_col_ptr_B_48_out sc_out sc_lv 32 signal 17 } 
	{ local_col_ptr_B_48_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ local_col_ptr_B_47_out sc_out sc_lv 32 signal 18 } 
	{ local_col_ptr_B_47_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ local_col_ptr_B_46_out sc_out sc_lv 32 signal 19 } 
	{ local_col_ptr_B_46_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ local_col_ptr_B_45_out sc_out sc_lv 32 signal 20 } 
	{ local_col_ptr_B_45_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ local_col_ptr_B_44_out sc_out sc_lv 32 signal 21 } 
	{ local_col_ptr_B_44_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ local_col_ptr_B_43_out sc_out sc_lv 32 signal 22 } 
	{ local_col_ptr_B_43_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ local_col_ptr_B_42_out sc_out sc_lv 32 signal 23 } 
	{ local_col_ptr_B_42_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ local_col_ptr_B_41_out sc_out sc_lv 32 signal 24 } 
	{ local_col_ptr_B_41_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ local_col_ptr_B_40_out sc_out sc_lv 32 signal 25 } 
	{ local_col_ptr_B_40_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ local_col_ptr_B_39_out sc_out sc_lv 32 signal 26 } 
	{ local_col_ptr_B_39_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ local_col_ptr_B_38_out sc_out sc_lv 32 signal 27 } 
	{ local_col_ptr_B_38_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ local_col_ptr_B_37_out sc_out sc_lv 32 signal 28 } 
	{ local_col_ptr_B_37_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ local_col_ptr_B_36_out sc_out sc_lv 32 signal 29 } 
	{ local_col_ptr_B_36_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ local_col_ptr_B_35_out sc_out sc_lv 32 signal 30 } 
	{ local_col_ptr_B_35_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ local_col_ptr_B_34_out sc_out sc_lv 32 signal 31 } 
	{ local_col_ptr_B_34_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ local_col_ptr_B_33_out sc_out sc_lv 32 signal 32 } 
	{ local_col_ptr_B_33_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ local_col_ptr_B_32_out sc_out sc_lv 32 signal 33 } 
	{ local_col_ptr_B_32_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ local_col_ptr_B_31_out sc_out sc_lv 32 signal 34 } 
	{ local_col_ptr_B_31_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ local_col_ptr_B_30_out sc_out sc_lv 32 signal 35 } 
	{ local_col_ptr_B_30_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ local_col_ptr_B_29_out sc_out sc_lv 32 signal 36 } 
	{ local_col_ptr_B_29_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ local_col_ptr_B_28_out sc_out sc_lv 32 signal 37 } 
	{ local_col_ptr_B_28_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ local_col_ptr_B_27_out sc_out sc_lv 32 signal 38 } 
	{ local_col_ptr_B_27_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ local_col_ptr_B_26_out sc_out sc_lv 32 signal 39 } 
	{ local_col_ptr_B_26_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ local_col_ptr_B_25_out sc_out sc_lv 32 signal 40 } 
	{ local_col_ptr_B_25_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ local_col_ptr_B_24_out sc_out sc_lv 32 signal 41 } 
	{ local_col_ptr_B_24_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ local_col_ptr_B_23_out sc_out sc_lv 32 signal 42 } 
	{ local_col_ptr_B_23_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ local_col_ptr_B_22_out sc_out sc_lv 32 signal 43 } 
	{ local_col_ptr_B_22_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ local_col_ptr_B_21_out sc_out sc_lv 32 signal 44 } 
	{ local_col_ptr_B_21_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ local_col_ptr_B_20_out sc_out sc_lv 32 signal 45 } 
	{ local_col_ptr_B_20_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ local_col_ptr_B_19_out sc_out sc_lv 32 signal 46 } 
	{ local_col_ptr_B_19_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ local_col_ptr_B_18_out sc_out sc_lv 32 signal 47 } 
	{ local_col_ptr_B_18_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ local_col_ptr_B_17_out sc_out sc_lv 32 signal 48 } 
	{ local_col_ptr_B_17_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ local_col_ptr_B_16_out sc_out sc_lv 32 signal 49 } 
	{ local_col_ptr_B_16_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ local_col_ptr_B_15_out sc_out sc_lv 32 signal 50 } 
	{ local_col_ptr_B_15_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ local_col_ptr_B_14_out sc_out sc_lv 32 signal 51 } 
	{ local_col_ptr_B_14_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ local_col_ptr_B_13_out sc_out sc_lv 32 signal 52 } 
	{ local_col_ptr_B_13_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ local_col_ptr_B_12_out sc_out sc_lv 32 signal 53 } 
	{ local_col_ptr_B_12_out_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ local_col_ptr_B_11_out sc_out sc_lv 32 signal 54 } 
	{ local_col_ptr_B_11_out_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ local_col_ptr_B_10_out sc_out sc_lv 32 signal 55 } 
	{ local_col_ptr_B_10_out_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ local_col_ptr_B_9_out sc_out sc_lv 32 signal 56 } 
	{ local_col_ptr_B_9_out_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ local_col_ptr_B_8_out sc_out sc_lv 32 signal 57 } 
	{ local_col_ptr_B_8_out_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ local_col_ptr_B_7_out sc_out sc_lv 32 signal 58 } 
	{ local_col_ptr_B_7_out_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ local_col_ptr_B_6_out sc_out sc_lv 32 signal 59 } 
	{ local_col_ptr_B_6_out_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ local_col_ptr_B_5_out sc_out sc_lv 32 signal 60 } 
	{ local_col_ptr_B_5_out_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ local_col_ptr_B_4_out sc_out sc_lv 32 signal 61 } 
	{ local_col_ptr_B_4_out_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ local_col_ptr_B_3_out sc_out sc_lv 32 signal 62 } 
	{ local_col_ptr_B_3_out_ap_vld sc_out sc_logic 1 outvld 62 } 
	{ local_col_ptr_B_2_out sc_out sc_lv 32 signal 63 } 
	{ local_col_ptr_B_2_out_ap_vld sc_out sc_logic 1 outvld 63 } 
	{ local_col_ptr_B_1_out sc_out sc_lv 32 signal 64 } 
	{ local_col_ptr_B_1_out_ap_vld sc_out sc_logic 1 outvld 64 } 
	{ local_col_ptr_B_out sc_out sc_lv 32 signal 65 } 
	{ local_col_ptr_B_out_ap_vld sc_out sc_logic 1 outvld 65 } 
	{ local_col_ptr_B_82_out sc_out sc_lv 32 signal 66 } 
	{ local_col_ptr_B_82_out_ap_vld sc_out sc_logic 1 outvld 66 } 
	{ local_col_ptr_B_81_out sc_out sc_lv 32 signal 67 } 
	{ local_col_ptr_B_81_out_ap_vld sc_out sc_logic 1 outvld 67 } 
	{ local_col_ptr_B_80_out sc_out sc_lv 32 signal 68 } 
	{ local_col_ptr_B_80_out_ap_vld sc_out sc_logic 1 outvld 68 } 
	{ local_col_ptr_B_79_out sc_out sc_lv 32 signal 69 } 
	{ local_col_ptr_B_79_out_ap_vld sc_out sc_logic 1 outvld 69 } 
	{ local_col_ptr_B_78_out sc_out sc_lv 32 signal 70 } 
	{ local_col_ptr_B_78_out_ap_vld sc_out sc_logic 1 outvld 70 } 
	{ local_col_ptr_B_77_out sc_out sc_lv 32 signal 71 } 
	{ local_col_ptr_B_77_out_ap_vld sc_out sc_logic 1 outvld 71 } 
	{ local_col_ptr_B_76_out sc_out sc_lv 32 signal 72 } 
	{ local_col_ptr_B_76_out_ap_vld sc_out sc_logic 1 outvld 72 } 
	{ local_col_ptr_B_75_out sc_out sc_lv 32 signal 73 } 
	{ local_col_ptr_B_75_out_ap_vld sc_out sc_logic 1 outvld 73 } 
	{ local_col_ptr_B_74_out sc_out sc_lv 32 signal 74 } 
	{ local_col_ptr_B_74_out_ap_vld sc_out sc_logic 1 outvld 74 } 
	{ local_col_ptr_B_73_out sc_out sc_lv 32 signal 75 } 
	{ local_col_ptr_B_73_out_ap_vld sc_out sc_logic 1 outvld 75 } 
	{ local_col_ptr_B_72_out sc_out sc_lv 32 signal 76 } 
	{ local_col_ptr_B_72_out_ap_vld sc_out sc_logic 1 outvld 76 } 
	{ local_col_ptr_B_71_out sc_out sc_lv 32 signal 77 } 
	{ local_col_ptr_B_71_out_ap_vld sc_out sc_logic 1 outvld 77 } 
	{ local_col_ptr_B_70_out sc_out sc_lv 32 signal 78 } 
	{ local_col_ptr_B_70_out_ap_vld sc_out sc_logic 1 outvld 78 } 
	{ local_col_ptr_B_69_out sc_out sc_lv 32 signal 79 } 
	{ local_col_ptr_B_69_out_ap_vld sc_out sc_logic 1 outvld 79 } 
	{ local_col_ptr_B_68_out sc_out sc_lv 32 signal 80 } 
	{ local_col_ptr_B_68_out_ap_vld sc_out sc_logic 1 outvld 80 } 
	{ local_col_ptr_B_67_out sc_out sc_lv 32 signal 81 } 
	{ local_col_ptr_B_67_out_ap_vld sc_out sc_logic 1 outvld 81 } 
	{ local_col_ptr_B_66_out sc_out sc_lv 32 signal 82 } 
	{ local_col_ptr_B_66_out_ap_vld sc_out sc_logic 1 outvld 82 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address1" }} , 
 	{ "name": "col_ptr_B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce1" }} , 
 	{ "name": "col_ptr_B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q1" }} , 
 	{ "name": "local_col_ptr_B_64_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_64_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_64_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_64_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_63_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_63_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_63_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_63_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_62_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_62_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_62_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_62_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_61_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_61_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_61_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_61_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_60_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_60_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_60_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_60_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_59_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_59_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_59_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_59_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_58_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_58_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_58_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_58_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_57_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_57_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_57_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_57_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_56_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_56_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_56_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_56_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_55_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_55_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_55_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_55_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_54_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_54_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_54_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_54_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_53_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_53_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_53_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_53_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_52_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_52_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_52_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_52_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_51_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_51_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_51_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_51_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_50_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_50_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_50_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_50_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_49_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_49_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_49_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_49_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_48_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_48_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_48_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_48_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_47_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_47_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_47_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_47_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_46_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_46_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_46_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_46_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_45_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_45_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_45_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_45_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_44_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_44_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_44_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_44_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_43_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_43_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_43_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_43_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_42_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_42_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_42_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_42_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_41_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_41_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_41_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_41_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_40_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_40_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_40_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_40_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_39_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_39_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_39_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_39_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_38_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_38_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_38_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_38_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_37_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_37_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_37_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_37_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_36_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_36_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_36_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_36_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_35_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_35_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_34_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_34_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_34_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_34_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_33_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_33_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_33_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_33_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_32_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_32_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_32_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_32_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_31_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_31_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_31_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_31_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_30_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_30_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_30_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_30_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_29_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_29_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_28_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_28_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_27_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_27_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_26_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_26_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_25_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_25_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_24_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_24_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_23_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_23_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_22_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_22_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_21_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_21_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_20_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_20_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_19_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_19_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_18_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_18_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_17_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_17_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_16_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_16_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_15_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_15_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_14_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_14_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_13_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_13_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_12_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_12_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_11_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_11_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_10_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_10_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_9_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_9_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_8_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_8_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_7_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_7_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_6_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_6_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_5_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_5_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_4_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_4_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_3_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_3_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_2_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_2_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_1_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_1_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_82_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_82_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_82_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_82_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_81_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_81_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_81_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_81_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_80_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_80_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_80_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_80_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_79_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_79_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_79_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_79_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_78_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_78_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_78_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_78_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_77_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_77_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_77_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_77_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_76_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_76_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_76_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_76_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_75_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_75_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_75_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_75_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_74_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_74_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_74_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_74_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_73_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_73_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_73_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_73_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_72_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_72_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_72_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_72_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_71_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_71_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_71_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_71_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_70_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_70_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_70_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_70_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_69_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_69_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_69_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_69_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_68_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_68_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_68_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_68_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_67_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_67_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_67_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_67_out", "role": "ap_vld" }} , 
 	{ "name": "local_col_ptr_B_66_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_66_out", "role": "default" }} , 
 	{ "name": "local_col_ptr_B_66_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_col_ptr_B_66_out", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "38",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_66_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_52_3", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state6"]}}]}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3 {
		col_ptr_B {Type I LastRead 3 FirstWrite -1}
		local_col_ptr_B_64_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_63_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_62_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_61_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_60_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_59_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_58_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_57_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_56_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_55_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_54_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_53_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_52_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_51_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_50_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_49_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_48_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_47_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_46_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_45_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_44_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_43_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_42_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_41_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_40_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_39_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_38_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_37_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_36_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_35_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_34_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_33_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_32_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_31_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_30_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_29_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_28_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_27_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_26_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_25_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_24_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_23_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_22_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_21_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_20_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_19_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_18_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_17_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_16_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_15_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_14_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_13_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_12_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_11_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_10_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_9_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_8_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_7_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_6_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_5_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_4_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_3_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_2_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_1_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_82_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_81_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_80_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_79_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_78_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_77_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_76_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_75_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_74_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_73_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_72_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_71_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_70_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_69_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_68_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_67_out {Type O LastRead -1 FirstWrite 2}
		local_col_ptr_B_66_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "38"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "38"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 in_data 0 32 }  { col_ptr_B_address1 MemPortADDR2 1 7 }  { col_ptr_B_ce1 MemPortCE2 1 1 }  { col_ptr_B_q1 in_data 0 32 } } }
	local_col_ptr_B_64_out { ap_vld {  { local_col_ptr_B_64_out out_data 1 32 }  { local_col_ptr_B_64_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_63_out { ap_vld {  { local_col_ptr_B_63_out out_data 1 32 }  { local_col_ptr_B_63_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_62_out { ap_vld {  { local_col_ptr_B_62_out out_data 1 32 }  { local_col_ptr_B_62_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_61_out { ap_vld {  { local_col_ptr_B_61_out out_data 1 32 }  { local_col_ptr_B_61_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_60_out { ap_vld {  { local_col_ptr_B_60_out out_data 1 32 }  { local_col_ptr_B_60_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_59_out { ap_vld {  { local_col_ptr_B_59_out out_data 1 32 }  { local_col_ptr_B_59_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_58_out { ap_vld {  { local_col_ptr_B_58_out out_data 1 32 }  { local_col_ptr_B_58_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_57_out { ap_vld {  { local_col_ptr_B_57_out out_data 1 32 }  { local_col_ptr_B_57_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_56_out { ap_vld {  { local_col_ptr_B_56_out out_data 1 32 }  { local_col_ptr_B_56_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_55_out { ap_vld {  { local_col_ptr_B_55_out out_data 1 32 }  { local_col_ptr_B_55_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_54_out { ap_vld {  { local_col_ptr_B_54_out out_data 1 32 }  { local_col_ptr_B_54_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_53_out { ap_vld {  { local_col_ptr_B_53_out out_data 1 32 }  { local_col_ptr_B_53_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_52_out { ap_vld {  { local_col_ptr_B_52_out out_data 1 32 }  { local_col_ptr_B_52_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_51_out { ap_vld {  { local_col_ptr_B_51_out out_data 1 32 }  { local_col_ptr_B_51_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_50_out { ap_vld {  { local_col_ptr_B_50_out out_data 1 32 }  { local_col_ptr_B_50_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_49_out { ap_vld {  { local_col_ptr_B_49_out out_data 1 32 }  { local_col_ptr_B_49_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_48_out { ap_vld {  { local_col_ptr_B_48_out out_data 1 32 }  { local_col_ptr_B_48_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_47_out { ap_vld {  { local_col_ptr_B_47_out out_data 1 32 }  { local_col_ptr_B_47_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_46_out { ap_vld {  { local_col_ptr_B_46_out out_data 1 32 }  { local_col_ptr_B_46_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_45_out { ap_vld {  { local_col_ptr_B_45_out out_data 1 32 }  { local_col_ptr_B_45_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_44_out { ap_vld {  { local_col_ptr_B_44_out out_data 1 32 }  { local_col_ptr_B_44_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_43_out { ap_vld {  { local_col_ptr_B_43_out out_data 1 32 }  { local_col_ptr_B_43_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_42_out { ap_vld {  { local_col_ptr_B_42_out out_data 1 32 }  { local_col_ptr_B_42_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_41_out { ap_vld {  { local_col_ptr_B_41_out out_data 1 32 }  { local_col_ptr_B_41_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_40_out { ap_vld {  { local_col_ptr_B_40_out out_data 1 32 }  { local_col_ptr_B_40_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_39_out { ap_vld {  { local_col_ptr_B_39_out out_data 1 32 }  { local_col_ptr_B_39_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_38_out { ap_vld {  { local_col_ptr_B_38_out out_data 1 32 }  { local_col_ptr_B_38_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_37_out { ap_vld {  { local_col_ptr_B_37_out out_data 1 32 }  { local_col_ptr_B_37_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_36_out { ap_vld {  { local_col_ptr_B_36_out out_data 1 32 }  { local_col_ptr_B_36_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_35_out { ap_vld {  { local_col_ptr_B_35_out out_data 1 32 }  { local_col_ptr_B_35_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_34_out { ap_vld {  { local_col_ptr_B_34_out out_data 1 32 }  { local_col_ptr_B_34_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_33_out { ap_vld {  { local_col_ptr_B_33_out out_data 1 32 }  { local_col_ptr_B_33_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_32_out { ap_vld {  { local_col_ptr_B_32_out out_data 1 32 }  { local_col_ptr_B_32_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_31_out { ap_vld {  { local_col_ptr_B_31_out out_data 1 32 }  { local_col_ptr_B_31_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_30_out { ap_vld {  { local_col_ptr_B_30_out out_data 1 32 }  { local_col_ptr_B_30_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_29_out { ap_vld {  { local_col_ptr_B_29_out out_data 1 32 }  { local_col_ptr_B_29_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_28_out { ap_vld {  { local_col_ptr_B_28_out out_data 1 32 }  { local_col_ptr_B_28_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_27_out { ap_vld {  { local_col_ptr_B_27_out out_data 1 32 }  { local_col_ptr_B_27_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_26_out { ap_vld {  { local_col_ptr_B_26_out out_data 1 32 }  { local_col_ptr_B_26_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_25_out { ap_vld {  { local_col_ptr_B_25_out out_data 1 32 }  { local_col_ptr_B_25_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_24_out { ap_vld {  { local_col_ptr_B_24_out out_data 1 32 }  { local_col_ptr_B_24_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_23_out { ap_vld {  { local_col_ptr_B_23_out out_data 1 32 }  { local_col_ptr_B_23_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_22_out { ap_vld {  { local_col_ptr_B_22_out out_data 1 32 }  { local_col_ptr_B_22_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_21_out { ap_vld {  { local_col_ptr_B_21_out out_data 1 32 }  { local_col_ptr_B_21_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_20_out { ap_vld {  { local_col_ptr_B_20_out out_data 1 32 }  { local_col_ptr_B_20_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_19_out { ap_vld {  { local_col_ptr_B_19_out out_data 1 32 }  { local_col_ptr_B_19_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_18_out { ap_vld {  { local_col_ptr_B_18_out out_data 1 32 }  { local_col_ptr_B_18_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_17_out { ap_vld {  { local_col_ptr_B_17_out out_data 1 32 }  { local_col_ptr_B_17_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_16_out { ap_vld {  { local_col_ptr_B_16_out out_data 1 32 }  { local_col_ptr_B_16_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_15_out { ap_vld {  { local_col_ptr_B_15_out out_data 1 32 }  { local_col_ptr_B_15_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_14_out { ap_vld {  { local_col_ptr_B_14_out out_data 1 32 }  { local_col_ptr_B_14_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_13_out { ap_vld {  { local_col_ptr_B_13_out out_data 1 32 }  { local_col_ptr_B_13_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_12_out { ap_vld {  { local_col_ptr_B_12_out out_data 1 32 }  { local_col_ptr_B_12_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_11_out { ap_vld {  { local_col_ptr_B_11_out out_data 1 32 }  { local_col_ptr_B_11_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_10_out { ap_vld {  { local_col_ptr_B_10_out out_data 1 32 }  { local_col_ptr_B_10_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_9_out { ap_vld {  { local_col_ptr_B_9_out out_data 1 32 }  { local_col_ptr_B_9_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_8_out { ap_vld {  { local_col_ptr_B_8_out out_data 1 32 }  { local_col_ptr_B_8_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_7_out { ap_vld {  { local_col_ptr_B_7_out out_data 1 32 }  { local_col_ptr_B_7_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_6_out { ap_vld {  { local_col_ptr_B_6_out out_data 1 32 }  { local_col_ptr_B_6_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_5_out { ap_vld {  { local_col_ptr_B_5_out out_data 1 32 }  { local_col_ptr_B_5_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_4_out { ap_vld {  { local_col_ptr_B_4_out out_data 1 32 }  { local_col_ptr_B_4_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_3_out { ap_vld {  { local_col_ptr_B_3_out out_data 1 32 }  { local_col_ptr_B_3_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_2_out { ap_vld {  { local_col_ptr_B_2_out out_data 1 32 }  { local_col_ptr_B_2_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_1_out { ap_vld {  { local_col_ptr_B_1_out out_data 1 32 }  { local_col_ptr_B_1_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_out { ap_vld {  { local_col_ptr_B_out out_data 1 32 }  { local_col_ptr_B_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_82_out { ap_vld {  { local_col_ptr_B_82_out out_data 1 32 }  { local_col_ptr_B_82_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_81_out { ap_vld {  { local_col_ptr_B_81_out out_data 1 32 }  { local_col_ptr_B_81_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_80_out { ap_vld {  { local_col_ptr_B_80_out out_data 1 32 }  { local_col_ptr_B_80_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_79_out { ap_vld {  { local_col_ptr_B_79_out out_data 1 32 }  { local_col_ptr_B_79_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_78_out { ap_vld {  { local_col_ptr_B_78_out out_data 1 32 }  { local_col_ptr_B_78_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_77_out { ap_vld {  { local_col_ptr_B_77_out out_data 1 32 }  { local_col_ptr_B_77_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_76_out { ap_vld {  { local_col_ptr_B_76_out out_data 1 32 }  { local_col_ptr_B_76_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_75_out { ap_vld {  { local_col_ptr_B_75_out out_data 1 32 }  { local_col_ptr_B_75_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_74_out { ap_vld {  { local_col_ptr_B_74_out out_data 1 32 }  { local_col_ptr_B_74_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_73_out { ap_vld {  { local_col_ptr_B_73_out out_data 1 32 }  { local_col_ptr_B_73_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_72_out { ap_vld {  { local_col_ptr_B_72_out out_data 1 32 }  { local_col_ptr_B_72_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_71_out { ap_vld {  { local_col_ptr_B_71_out out_data 1 32 }  { local_col_ptr_B_71_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_70_out { ap_vld {  { local_col_ptr_B_70_out out_data 1 32 }  { local_col_ptr_B_70_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_69_out { ap_vld {  { local_col_ptr_B_69_out out_data 1 32 }  { local_col_ptr_B_69_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_68_out { ap_vld {  { local_col_ptr_B_68_out out_data 1 32 }  { local_col_ptr_B_68_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_67_out { ap_vld {  { local_col_ptr_B_67_out out_data 1 32 }  { local_col_ptr_B_67_out_ap_vld out_vld 1 1 } } }
	local_col_ptr_B_66_out { ap_vld {  { local_col_ptr_B_66_out out_data 1 32 }  { local_col_ptr_B_66_out_ap_vld out_vld 1 1 } } }
}
set moduleName sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3
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
set C_modelName {sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ col_ptr_B int 32 regular {array 65 { 1 1 } 1 1 }  }
	{ local_col_ptr_B int 32 regular {array 33 { 0 3 } 0 1 }  }
	{ local_col_ptr_B_1 int 32 regular {array 33 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_col_ptr_B", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_col_ptr_B_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ col_ptr_B_address0 sc_out sc_lv 7 signal 0 } 
	{ col_ptr_B_ce0 sc_out sc_logic 1 signal 0 } 
	{ col_ptr_B_q0 sc_in sc_lv 32 signal 0 } 
	{ col_ptr_B_address1 sc_out sc_lv 7 signal 0 } 
	{ col_ptr_B_ce1 sc_out sc_logic 1 signal 0 } 
	{ col_ptr_B_q1 sc_in sc_lv 32 signal 0 } 
	{ local_col_ptr_B_address0 sc_out sc_lv 6 signal 1 } 
	{ local_col_ptr_B_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_col_ptr_B_we0 sc_out sc_logic 1 signal 1 } 
	{ local_col_ptr_B_d0 sc_out sc_lv 32 signal 1 } 
	{ local_col_ptr_B_1_address0 sc_out sc_lv 6 signal 2 } 
	{ local_col_ptr_B_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_col_ptr_B_1_we0 sc_out sc_logic 1 signal 2 } 
	{ local_col_ptr_B_1_d0 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address0" }} , 
 	{ "name": "col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce0" }} , 
 	{ "name": "col_ptr_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q0" }} , 
 	{ "name": "col_ptr_B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "address1" }} , 
 	{ "name": "col_ptr_B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "ce1" }} , 
 	{ "name": "col_ptr_B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_ptr_B", "role": "q1" }} , 
 	{ "name": "local_col_ptr_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_col_ptr_B", "role": "address0" }} , 
 	{ "name": "local_col_ptr_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_col_ptr_B", "role": "ce0" }} , 
 	{ "name": "local_col_ptr_B_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_col_ptr_B", "role": "we0" }} , 
 	{ "name": "local_col_ptr_B_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B", "role": "d0" }} , 
 	{ "name": "local_col_ptr_B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "local_col_ptr_B_1", "role": "address0" }} , 
 	{ "name": "local_col_ptr_B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_col_ptr_B_1", "role": "ce0" }} , 
 	{ "name": "local_col_ptr_B_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_col_ptr_B_1", "role": "we0" }} , 
 	{ "name": "local_col_ptr_B_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_col_ptr_B_1", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "col_ptr_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_col_ptr_B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_col_ptr_B_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_52_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_9ns_15_1_1_U137", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_9ns_15_1_1_U138", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_matrix_multiply_HLS_Pipeline_VITIS_LOOP_52_3 {
		col_ptr_B {Type I LastRead 1 FirstWrite -1}
		local_col_ptr_B {Type O LastRead -1 FirstWrite 1}
		local_col_ptr_B_1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "69"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "69"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	col_ptr_B { ap_memory {  { col_ptr_B_address0 mem_address 1 7 }  { col_ptr_B_ce0 mem_ce 1 1 }  { col_ptr_B_q0 mem_dout 0 32 }  { col_ptr_B_address1 MemPortADDR2 1 7 }  { col_ptr_B_ce1 MemPortCE2 1 1 }  { col_ptr_B_q1 in_data 0 32 } } }
	local_col_ptr_B { ap_memory {  { local_col_ptr_B_address0 mem_address 1 6 }  { local_col_ptr_B_ce0 mem_ce 1 1 }  { local_col_ptr_B_we0 mem_we 1 1 }  { local_col_ptr_B_d0 mem_din 1 32 } } }
	local_col_ptr_B_1 { ap_memory {  { local_col_ptr_B_1_address0 mem_address 1 6 }  { local_col_ptr_B_1_ce0 mem_ce 1 1 }  { local_col_ptr_B_1_we0 mem_we 1 1 }  { local_col_ptr_B_1_d0 mem_din 1 32 } } }
}
