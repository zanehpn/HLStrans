set moduleName gesummv_Pipeline_lprd_1
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
set C_modelName {gesummv_Pipeline_lprd_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ A int 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ B int 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ x int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ buff_x float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ tmp1 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ tmp2 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_y_out float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_0 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_0 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_1 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_1 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_2 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_2 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_3 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_3 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_4 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_4 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_5 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_5 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_6 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_6 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_7 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_7 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_8 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_8 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_9 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_9 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_10 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_10 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_11 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_11 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_12 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_12 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_13 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_13 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_14 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_14 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_15 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_15 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_16 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_16 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_17 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_17 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_18 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_18 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_19 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_19 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_20 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_20 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_21 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_21 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_22 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_22 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_23 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_23 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_24 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_24 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_25 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_25 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_26 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_26 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_27 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_27 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_28 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_28 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_29 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_29 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_30 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_30 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_31 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_31 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_32 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_32 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_33 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_33 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_34 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_34 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_35 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_35 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_36 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_36 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_37 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_37 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_38 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_38 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_39 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_39 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_40 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_40 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_41 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_41 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_42 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_42 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_43 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_43 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_44 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_44 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_45 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_45 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_46 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_46 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_47 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_47 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_48 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_48 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_49 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_49 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_50 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_50 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_51 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_51 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_52 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_52 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_53 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_53 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_54 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_54 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_55 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_55 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_56 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_56 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_57 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_57 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_58 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_58 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_59 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_59 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_60 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_60 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_61 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_61 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_62 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_62 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_A_63 float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ buff_B_63 float 32 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buff_x", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_y_out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_16", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_16", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_17", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_17", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_18", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_18", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_19", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_19", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_20", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_20", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_21", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_21", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_22", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_22", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_23", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_23", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_24", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_24", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_25", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_25", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_26", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_26", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_27", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_27", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_28", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_28", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_29", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_29", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_30", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_30", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_31", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_31", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_32", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_32", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_33", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_33", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_34", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_34", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_35", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_35", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_36", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_36", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_37", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_37", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_38", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_38", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_39", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_39", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_40", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_40", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_41", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_41", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_42", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_42", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_43", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_43", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_44", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_44", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_45", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_45", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_46", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_46", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_47", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_47", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_48", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_48", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_49", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_49", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_50", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_50", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_51", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_51", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_52", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_52", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_53", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_53", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_54", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_54", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_55", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_55", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_56", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_56", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_57", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_57", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_58", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_58", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_59", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_59", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_60", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_60", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_61", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_61", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_62", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_62", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_A_63", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_B_63", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 549
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_address0 sc_out sc_lv 12 signal 0 } 
	{ A_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_q0 sc_in sc_lv 32 signal 0 } 
	{ A_address1 sc_out sc_lv 12 signal 0 } 
	{ A_ce1 sc_out sc_logic 1 signal 0 } 
	{ A_q1 sc_in sc_lv 32 signal 0 } 
	{ B_address0 sc_out sc_lv 12 signal 1 } 
	{ B_ce0 sc_out sc_logic 1 signal 1 } 
	{ B_q0 sc_in sc_lv 32 signal 1 } 
	{ B_address1 sc_out sc_lv 12 signal 1 } 
	{ B_ce1 sc_out sc_logic 1 signal 1 } 
	{ B_q1 sc_in sc_lv 32 signal 1 } 
	{ x_address0 sc_out sc_lv 6 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_q0 sc_in sc_lv 32 signal 2 } 
	{ buff_x_address0 sc_out sc_lv 6 signal 3 } 
	{ buff_x_ce0 sc_out sc_logic 1 signal 3 } 
	{ buff_x_we0 sc_out sc_logic 1 signal 3 } 
	{ buff_x_d0 sc_out sc_lv 32 signal 3 } 
	{ tmp1_address0 sc_out sc_lv 6 signal 4 } 
	{ tmp1_ce0 sc_out sc_logic 1 signal 4 } 
	{ tmp1_we0 sc_out sc_logic 1 signal 4 } 
	{ tmp1_d0 sc_out sc_lv 32 signal 4 } 
	{ tmp2_address0 sc_out sc_lv 6 signal 5 } 
	{ tmp2_ce0 sc_out sc_logic 1 signal 5 } 
	{ tmp2_we0 sc_out sc_logic 1 signal 5 } 
	{ tmp2_d0 sc_out sc_lv 32 signal 5 } 
	{ buff_y_out_address0 sc_out sc_lv 6 signal 6 } 
	{ buff_y_out_ce0 sc_out sc_logic 1 signal 6 } 
	{ buff_y_out_we0 sc_out sc_logic 1 signal 6 } 
	{ buff_y_out_d0 sc_out sc_lv 32 signal 6 } 
	{ buff_A_0_address0 sc_out sc_lv 6 signal 7 } 
	{ buff_A_0_ce0 sc_out sc_logic 1 signal 7 } 
	{ buff_A_0_we0 sc_out sc_logic 1 signal 7 } 
	{ buff_A_0_d0 sc_out sc_lv 32 signal 7 } 
	{ buff_B_0_address0 sc_out sc_lv 6 signal 8 } 
	{ buff_B_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ buff_B_0_we0 sc_out sc_logic 1 signal 8 } 
	{ buff_B_0_d0 sc_out sc_lv 32 signal 8 } 
	{ buff_A_1_address0 sc_out sc_lv 6 signal 9 } 
	{ buff_A_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ buff_A_1_we0 sc_out sc_logic 1 signal 9 } 
	{ buff_A_1_d0 sc_out sc_lv 32 signal 9 } 
	{ buff_B_1_address0 sc_out sc_lv 6 signal 10 } 
	{ buff_B_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ buff_B_1_we0 sc_out sc_logic 1 signal 10 } 
	{ buff_B_1_d0 sc_out sc_lv 32 signal 10 } 
	{ buff_A_2_address0 sc_out sc_lv 6 signal 11 } 
	{ buff_A_2_ce0 sc_out sc_logic 1 signal 11 } 
	{ buff_A_2_we0 sc_out sc_logic 1 signal 11 } 
	{ buff_A_2_d0 sc_out sc_lv 32 signal 11 } 
	{ buff_B_2_address0 sc_out sc_lv 6 signal 12 } 
	{ buff_B_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ buff_B_2_we0 sc_out sc_logic 1 signal 12 } 
	{ buff_B_2_d0 sc_out sc_lv 32 signal 12 } 
	{ buff_A_3_address0 sc_out sc_lv 6 signal 13 } 
	{ buff_A_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ buff_A_3_we0 sc_out sc_logic 1 signal 13 } 
	{ buff_A_3_d0 sc_out sc_lv 32 signal 13 } 
	{ buff_B_3_address0 sc_out sc_lv 6 signal 14 } 
	{ buff_B_3_ce0 sc_out sc_logic 1 signal 14 } 
	{ buff_B_3_we0 sc_out sc_logic 1 signal 14 } 
	{ buff_B_3_d0 sc_out sc_lv 32 signal 14 } 
	{ buff_A_4_address0 sc_out sc_lv 6 signal 15 } 
	{ buff_A_4_ce0 sc_out sc_logic 1 signal 15 } 
	{ buff_A_4_we0 sc_out sc_logic 1 signal 15 } 
	{ buff_A_4_d0 sc_out sc_lv 32 signal 15 } 
	{ buff_B_4_address0 sc_out sc_lv 6 signal 16 } 
	{ buff_B_4_ce0 sc_out sc_logic 1 signal 16 } 
	{ buff_B_4_we0 sc_out sc_logic 1 signal 16 } 
	{ buff_B_4_d0 sc_out sc_lv 32 signal 16 } 
	{ buff_A_5_address0 sc_out sc_lv 6 signal 17 } 
	{ buff_A_5_ce0 sc_out sc_logic 1 signal 17 } 
	{ buff_A_5_we0 sc_out sc_logic 1 signal 17 } 
	{ buff_A_5_d0 sc_out sc_lv 32 signal 17 } 
	{ buff_B_5_address0 sc_out sc_lv 6 signal 18 } 
	{ buff_B_5_ce0 sc_out sc_logic 1 signal 18 } 
	{ buff_B_5_we0 sc_out sc_logic 1 signal 18 } 
	{ buff_B_5_d0 sc_out sc_lv 32 signal 18 } 
	{ buff_A_6_address0 sc_out sc_lv 6 signal 19 } 
	{ buff_A_6_ce0 sc_out sc_logic 1 signal 19 } 
	{ buff_A_6_we0 sc_out sc_logic 1 signal 19 } 
	{ buff_A_6_d0 sc_out sc_lv 32 signal 19 } 
	{ buff_B_6_address0 sc_out sc_lv 6 signal 20 } 
	{ buff_B_6_ce0 sc_out sc_logic 1 signal 20 } 
	{ buff_B_6_we0 sc_out sc_logic 1 signal 20 } 
	{ buff_B_6_d0 sc_out sc_lv 32 signal 20 } 
	{ buff_A_7_address0 sc_out sc_lv 6 signal 21 } 
	{ buff_A_7_ce0 sc_out sc_logic 1 signal 21 } 
	{ buff_A_7_we0 sc_out sc_logic 1 signal 21 } 
	{ buff_A_7_d0 sc_out sc_lv 32 signal 21 } 
	{ buff_B_7_address0 sc_out sc_lv 6 signal 22 } 
	{ buff_B_7_ce0 sc_out sc_logic 1 signal 22 } 
	{ buff_B_7_we0 sc_out sc_logic 1 signal 22 } 
	{ buff_B_7_d0 sc_out sc_lv 32 signal 22 } 
	{ buff_A_8_address0 sc_out sc_lv 6 signal 23 } 
	{ buff_A_8_ce0 sc_out sc_logic 1 signal 23 } 
	{ buff_A_8_we0 sc_out sc_logic 1 signal 23 } 
	{ buff_A_8_d0 sc_out sc_lv 32 signal 23 } 
	{ buff_B_8_address0 sc_out sc_lv 6 signal 24 } 
	{ buff_B_8_ce0 sc_out sc_logic 1 signal 24 } 
	{ buff_B_8_we0 sc_out sc_logic 1 signal 24 } 
	{ buff_B_8_d0 sc_out sc_lv 32 signal 24 } 
	{ buff_A_9_address0 sc_out sc_lv 6 signal 25 } 
	{ buff_A_9_ce0 sc_out sc_logic 1 signal 25 } 
	{ buff_A_9_we0 sc_out sc_logic 1 signal 25 } 
	{ buff_A_9_d0 sc_out sc_lv 32 signal 25 } 
	{ buff_B_9_address0 sc_out sc_lv 6 signal 26 } 
	{ buff_B_9_ce0 sc_out sc_logic 1 signal 26 } 
	{ buff_B_9_we0 sc_out sc_logic 1 signal 26 } 
	{ buff_B_9_d0 sc_out sc_lv 32 signal 26 } 
	{ buff_A_10_address0 sc_out sc_lv 6 signal 27 } 
	{ buff_A_10_ce0 sc_out sc_logic 1 signal 27 } 
	{ buff_A_10_we0 sc_out sc_logic 1 signal 27 } 
	{ buff_A_10_d0 sc_out sc_lv 32 signal 27 } 
	{ buff_B_10_address0 sc_out sc_lv 6 signal 28 } 
	{ buff_B_10_ce0 sc_out sc_logic 1 signal 28 } 
	{ buff_B_10_we0 sc_out sc_logic 1 signal 28 } 
	{ buff_B_10_d0 sc_out sc_lv 32 signal 28 } 
	{ buff_A_11_address0 sc_out sc_lv 6 signal 29 } 
	{ buff_A_11_ce0 sc_out sc_logic 1 signal 29 } 
	{ buff_A_11_we0 sc_out sc_logic 1 signal 29 } 
	{ buff_A_11_d0 sc_out sc_lv 32 signal 29 } 
	{ buff_B_11_address0 sc_out sc_lv 6 signal 30 } 
	{ buff_B_11_ce0 sc_out sc_logic 1 signal 30 } 
	{ buff_B_11_we0 sc_out sc_logic 1 signal 30 } 
	{ buff_B_11_d0 sc_out sc_lv 32 signal 30 } 
	{ buff_A_12_address0 sc_out sc_lv 6 signal 31 } 
	{ buff_A_12_ce0 sc_out sc_logic 1 signal 31 } 
	{ buff_A_12_we0 sc_out sc_logic 1 signal 31 } 
	{ buff_A_12_d0 sc_out sc_lv 32 signal 31 } 
	{ buff_B_12_address0 sc_out sc_lv 6 signal 32 } 
	{ buff_B_12_ce0 sc_out sc_logic 1 signal 32 } 
	{ buff_B_12_we0 sc_out sc_logic 1 signal 32 } 
	{ buff_B_12_d0 sc_out sc_lv 32 signal 32 } 
	{ buff_A_13_address0 sc_out sc_lv 6 signal 33 } 
	{ buff_A_13_ce0 sc_out sc_logic 1 signal 33 } 
	{ buff_A_13_we0 sc_out sc_logic 1 signal 33 } 
	{ buff_A_13_d0 sc_out sc_lv 32 signal 33 } 
	{ buff_B_13_address0 sc_out sc_lv 6 signal 34 } 
	{ buff_B_13_ce0 sc_out sc_logic 1 signal 34 } 
	{ buff_B_13_we0 sc_out sc_logic 1 signal 34 } 
	{ buff_B_13_d0 sc_out sc_lv 32 signal 34 } 
	{ buff_A_14_address0 sc_out sc_lv 6 signal 35 } 
	{ buff_A_14_ce0 sc_out sc_logic 1 signal 35 } 
	{ buff_A_14_we0 sc_out sc_logic 1 signal 35 } 
	{ buff_A_14_d0 sc_out sc_lv 32 signal 35 } 
	{ buff_B_14_address0 sc_out sc_lv 6 signal 36 } 
	{ buff_B_14_ce0 sc_out sc_logic 1 signal 36 } 
	{ buff_B_14_we0 sc_out sc_logic 1 signal 36 } 
	{ buff_B_14_d0 sc_out sc_lv 32 signal 36 } 
	{ buff_A_15_address0 sc_out sc_lv 6 signal 37 } 
	{ buff_A_15_ce0 sc_out sc_logic 1 signal 37 } 
	{ buff_A_15_we0 sc_out sc_logic 1 signal 37 } 
	{ buff_A_15_d0 sc_out sc_lv 32 signal 37 } 
	{ buff_B_15_address0 sc_out sc_lv 6 signal 38 } 
	{ buff_B_15_ce0 sc_out sc_logic 1 signal 38 } 
	{ buff_B_15_we0 sc_out sc_logic 1 signal 38 } 
	{ buff_B_15_d0 sc_out sc_lv 32 signal 38 } 
	{ buff_A_16_address0 sc_out sc_lv 6 signal 39 } 
	{ buff_A_16_ce0 sc_out sc_logic 1 signal 39 } 
	{ buff_A_16_we0 sc_out sc_logic 1 signal 39 } 
	{ buff_A_16_d0 sc_out sc_lv 32 signal 39 } 
	{ buff_B_16_address0 sc_out sc_lv 6 signal 40 } 
	{ buff_B_16_ce0 sc_out sc_logic 1 signal 40 } 
	{ buff_B_16_we0 sc_out sc_logic 1 signal 40 } 
	{ buff_B_16_d0 sc_out sc_lv 32 signal 40 } 
	{ buff_A_17_address0 sc_out sc_lv 6 signal 41 } 
	{ buff_A_17_ce0 sc_out sc_logic 1 signal 41 } 
	{ buff_A_17_we0 sc_out sc_logic 1 signal 41 } 
	{ buff_A_17_d0 sc_out sc_lv 32 signal 41 } 
	{ buff_B_17_address0 sc_out sc_lv 6 signal 42 } 
	{ buff_B_17_ce0 sc_out sc_logic 1 signal 42 } 
	{ buff_B_17_we0 sc_out sc_logic 1 signal 42 } 
	{ buff_B_17_d0 sc_out sc_lv 32 signal 42 } 
	{ buff_A_18_address0 sc_out sc_lv 6 signal 43 } 
	{ buff_A_18_ce0 sc_out sc_logic 1 signal 43 } 
	{ buff_A_18_we0 sc_out sc_logic 1 signal 43 } 
	{ buff_A_18_d0 sc_out sc_lv 32 signal 43 } 
	{ buff_B_18_address0 sc_out sc_lv 6 signal 44 } 
	{ buff_B_18_ce0 sc_out sc_logic 1 signal 44 } 
	{ buff_B_18_we0 sc_out sc_logic 1 signal 44 } 
	{ buff_B_18_d0 sc_out sc_lv 32 signal 44 } 
	{ buff_A_19_address0 sc_out sc_lv 6 signal 45 } 
	{ buff_A_19_ce0 sc_out sc_logic 1 signal 45 } 
	{ buff_A_19_we0 sc_out sc_logic 1 signal 45 } 
	{ buff_A_19_d0 sc_out sc_lv 32 signal 45 } 
	{ buff_B_19_address0 sc_out sc_lv 6 signal 46 } 
	{ buff_B_19_ce0 sc_out sc_logic 1 signal 46 } 
	{ buff_B_19_we0 sc_out sc_logic 1 signal 46 } 
	{ buff_B_19_d0 sc_out sc_lv 32 signal 46 } 
	{ buff_A_20_address0 sc_out sc_lv 6 signal 47 } 
	{ buff_A_20_ce0 sc_out sc_logic 1 signal 47 } 
	{ buff_A_20_we0 sc_out sc_logic 1 signal 47 } 
	{ buff_A_20_d0 sc_out sc_lv 32 signal 47 } 
	{ buff_B_20_address0 sc_out sc_lv 6 signal 48 } 
	{ buff_B_20_ce0 sc_out sc_logic 1 signal 48 } 
	{ buff_B_20_we0 sc_out sc_logic 1 signal 48 } 
	{ buff_B_20_d0 sc_out sc_lv 32 signal 48 } 
	{ buff_A_21_address0 sc_out sc_lv 6 signal 49 } 
	{ buff_A_21_ce0 sc_out sc_logic 1 signal 49 } 
	{ buff_A_21_we0 sc_out sc_logic 1 signal 49 } 
	{ buff_A_21_d0 sc_out sc_lv 32 signal 49 } 
	{ buff_B_21_address0 sc_out sc_lv 6 signal 50 } 
	{ buff_B_21_ce0 sc_out sc_logic 1 signal 50 } 
	{ buff_B_21_we0 sc_out sc_logic 1 signal 50 } 
	{ buff_B_21_d0 sc_out sc_lv 32 signal 50 } 
	{ buff_A_22_address0 sc_out sc_lv 6 signal 51 } 
	{ buff_A_22_ce0 sc_out sc_logic 1 signal 51 } 
	{ buff_A_22_we0 sc_out sc_logic 1 signal 51 } 
	{ buff_A_22_d0 sc_out sc_lv 32 signal 51 } 
	{ buff_B_22_address0 sc_out sc_lv 6 signal 52 } 
	{ buff_B_22_ce0 sc_out sc_logic 1 signal 52 } 
	{ buff_B_22_we0 sc_out sc_logic 1 signal 52 } 
	{ buff_B_22_d0 sc_out sc_lv 32 signal 52 } 
	{ buff_A_23_address0 sc_out sc_lv 6 signal 53 } 
	{ buff_A_23_ce0 sc_out sc_logic 1 signal 53 } 
	{ buff_A_23_we0 sc_out sc_logic 1 signal 53 } 
	{ buff_A_23_d0 sc_out sc_lv 32 signal 53 } 
	{ buff_B_23_address0 sc_out sc_lv 6 signal 54 } 
	{ buff_B_23_ce0 sc_out sc_logic 1 signal 54 } 
	{ buff_B_23_we0 sc_out sc_logic 1 signal 54 } 
	{ buff_B_23_d0 sc_out sc_lv 32 signal 54 } 
	{ buff_A_24_address0 sc_out sc_lv 6 signal 55 } 
	{ buff_A_24_ce0 sc_out sc_logic 1 signal 55 } 
	{ buff_A_24_we0 sc_out sc_logic 1 signal 55 } 
	{ buff_A_24_d0 sc_out sc_lv 32 signal 55 } 
	{ buff_B_24_address0 sc_out sc_lv 6 signal 56 } 
	{ buff_B_24_ce0 sc_out sc_logic 1 signal 56 } 
	{ buff_B_24_we0 sc_out sc_logic 1 signal 56 } 
	{ buff_B_24_d0 sc_out sc_lv 32 signal 56 } 
	{ buff_A_25_address0 sc_out sc_lv 6 signal 57 } 
	{ buff_A_25_ce0 sc_out sc_logic 1 signal 57 } 
	{ buff_A_25_we0 sc_out sc_logic 1 signal 57 } 
	{ buff_A_25_d0 sc_out sc_lv 32 signal 57 } 
	{ buff_B_25_address0 sc_out sc_lv 6 signal 58 } 
	{ buff_B_25_ce0 sc_out sc_logic 1 signal 58 } 
	{ buff_B_25_we0 sc_out sc_logic 1 signal 58 } 
	{ buff_B_25_d0 sc_out sc_lv 32 signal 58 } 
	{ buff_A_26_address0 sc_out sc_lv 6 signal 59 } 
	{ buff_A_26_ce0 sc_out sc_logic 1 signal 59 } 
	{ buff_A_26_we0 sc_out sc_logic 1 signal 59 } 
	{ buff_A_26_d0 sc_out sc_lv 32 signal 59 } 
	{ buff_B_26_address0 sc_out sc_lv 6 signal 60 } 
	{ buff_B_26_ce0 sc_out sc_logic 1 signal 60 } 
	{ buff_B_26_we0 sc_out sc_logic 1 signal 60 } 
	{ buff_B_26_d0 sc_out sc_lv 32 signal 60 } 
	{ buff_A_27_address0 sc_out sc_lv 6 signal 61 } 
	{ buff_A_27_ce0 sc_out sc_logic 1 signal 61 } 
	{ buff_A_27_we0 sc_out sc_logic 1 signal 61 } 
	{ buff_A_27_d0 sc_out sc_lv 32 signal 61 } 
	{ buff_B_27_address0 sc_out sc_lv 6 signal 62 } 
	{ buff_B_27_ce0 sc_out sc_logic 1 signal 62 } 
	{ buff_B_27_we0 sc_out sc_logic 1 signal 62 } 
	{ buff_B_27_d0 sc_out sc_lv 32 signal 62 } 
	{ buff_A_28_address0 sc_out sc_lv 6 signal 63 } 
	{ buff_A_28_ce0 sc_out sc_logic 1 signal 63 } 
	{ buff_A_28_we0 sc_out sc_logic 1 signal 63 } 
	{ buff_A_28_d0 sc_out sc_lv 32 signal 63 } 
	{ buff_B_28_address0 sc_out sc_lv 6 signal 64 } 
	{ buff_B_28_ce0 sc_out sc_logic 1 signal 64 } 
	{ buff_B_28_we0 sc_out sc_logic 1 signal 64 } 
	{ buff_B_28_d0 sc_out sc_lv 32 signal 64 } 
	{ buff_A_29_address0 sc_out sc_lv 6 signal 65 } 
	{ buff_A_29_ce0 sc_out sc_logic 1 signal 65 } 
	{ buff_A_29_we0 sc_out sc_logic 1 signal 65 } 
	{ buff_A_29_d0 sc_out sc_lv 32 signal 65 } 
	{ buff_B_29_address0 sc_out sc_lv 6 signal 66 } 
	{ buff_B_29_ce0 sc_out sc_logic 1 signal 66 } 
	{ buff_B_29_we0 sc_out sc_logic 1 signal 66 } 
	{ buff_B_29_d0 sc_out sc_lv 32 signal 66 } 
	{ buff_A_30_address0 sc_out sc_lv 6 signal 67 } 
	{ buff_A_30_ce0 sc_out sc_logic 1 signal 67 } 
	{ buff_A_30_we0 sc_out sc_logic 1 signal 67 } 
	{ buff_A_30_d0 sc_out sc_lv 32 signal 67 } 
	{ buff_B_30_address0 sc_out sc_lv 6 signal 68 } 
	{ buff_B_30_ce0 sc_out sc_logic 1 signal 68 } 
	{ buff_B_30_we0 sc_out sc_logic 1 signal 68 } 
	{ buff_B_30_d0 sc_out sc_lv 32 signal 68 } 
	{ buff_A_31_address0 sc_out sc_lv 6 signal 69 } 
	{ buff_A_31_ce0 sc_out sc_logic 1 signal 69 } 
	{ buff_A_31_we0 sc_out sc_logic 1 signal 69 } 
	{ buff_A_31_d0 sc_out sc_lv 32 signal 69 } 
	{ buff_B_31_address0 sc_out sc_lv 6 signal 70 } 
	{ buff_B_31_ce0 sc_out sc_logic 1 signal 70 } 
	{ buff_B_31_we0 sc_out sc_logic 1 signal 70 } 
	{ buff_B_31_d0 sc_out sc_lv 32 signal 70 } 
	{ buff_A_32_address0 sc_out sc_lv 6 signal 71 } 
	{ buff_A_32_ce0 sc_out sc_logic 1 signal 71 } 
	{ buff_A_32_we0 sc_out sc_logic 1 signal 71 } 
	{ buff_A_32_d0 sc_out sc_lv 32 signal 71 } 
	{ buff_B_32_address0 sc_out sc_lv 6 signal 72 } 
	{ buff_B_32_ce0 sc_out sc_logic 1 signal 72 } 
	{ buff_B_32_we0 sc_out sc_logic 1 signal 72 } 
	{ buff_B_32_d0 sc_out sc_lv 32 signal 72 } 
	{ buff_A_33_address0 sc_out sc_lv 6 signal 73 } 
	{ buff_A_33_ce0 sc_out sc_logic 1 signal 73 } 
	{ buff_A_33_we0 sc_out sc_logic 1 signal 73 } 
	{ buff_A_33_d0 sc_out sc_lv 32 signal 73 } 
	{ buff_B_33_address0 sc_out sc_lv 6 signal 74 } 
	{ buff_B_33_ce0 sc_out sc_logic 1 signal 74 } 
	{ buff_B_33_we0 sc_out sc_logic 1 signal 74 } 
	{ buff_B_33_d0 sc_out sc_lv 32 signal 74 } 
	{ buff_A_34_address0 sc_out sc_lv 6 signal 75 } 
	{ buff_A_34_ce0 sc_out sc_logic 1 signal 75 } 
	{ buff_A_34_we0 sc_out sc_logic 1 signal 75 } 
	{ buff_A_34_d0 sc_out sc_lv 32 signal 75 } 
	{ buff_B_34_address0 sc_out sc_lv 6 signal 76 } 
	{ buff_B_34_ce0 sc_out sc_logic 1 signal 76 } 
	{ buff_B_34_we0 sc_out sc_logic 1 signal 76 } 
	{ buff_B_34_d0 sc_out sc_lv 32 signal 76 } 
	{ buff_A_35_address0 sc_out sc_lv 6 signal 77 } 
	{ buff_A_35_ce0 sc_out sc_logic 1 signal 77 } 
	{ buff_A_35_we0 sc_out sc_logic 1 signal 77 } 
	{ buff_A_35_d0 sc_out sc_lv 32 signal 77 } 
	{ buff_B_35_address0 sc_out sc_lv 6 signal 78 } 
	{ buff_B_35_ce0 sc_out sc_logic 1 signal 78 } 
	{ buff_B_35_we0 sc_out sc_logic 1 signal 78 } 
	{ buff_B_35_d0 sc_out sc_lv 32 signal 78 } 
	{ buff_A_36_address0 sc_out sc_lv 6 signal 79 } 
	{ buff_A_36_ce0 sc_out sc_logic 1 signal 79 } 
	{ buff_A_36_we0 sc_out sc_logic 1 signal 79 } 
	{ buff_A_36_d0 sc_out sc_lv 32 signal 79 } 
	{ buff_B_36_address0 sc_out sc_lv 6 signal 80 } 
	{ buff_B_36_ce0 sc_out sc_logic 1 signal 80 } 
	{ buff_B_36_we0 sc_out sc_logic 1 signal 80 } 
	{ buff_B_36_d0 sc_out sc_lv 32 signal 80 } 
	{ buff_A_37_address0 sc_out sc_lv 6 signal 81 } 
	{ buff_A_37_ce0 sc_out sc_logic 1 signal 81 } 
	{ buff_A_37_we0 sc_out sc_logic 1 signal 81 } 
	{ buff_A_37_d0 sc_out sc_lv 32 signal 81 } 
	{ buff_B_37_address0 sc_out sc_lv 6 signal 82 } 
	{ buff_B_37_ce0 sc_out sc_logic 1 signal 82 } 
	{ buff_B_37_we0 sc_out sc_logic 1 signal 82 } 
	{ buff_B_37_d0 sc_out sc_lv 32 signal 82 } 
	{ buff_A_38_address0 sc_out sc_lv 6 signal 83 } 
	{ buff_A_38_ce0 sc_out sc_logic 1 signal 83 } 
	{ buff_A_38_we0 sc_out sc_logic 1 signal 83 } 
	{ buff_A_38_d0 sc_out sc_lv 32 signal 83 } 
	{ buff_B_38_address0 sc_out sc_lv 6 signal 84 } 
	{ buff_B_38_ce0 sc_out sc_logic 1 signal 84 } 
	{ buff_B_38_we0 sc_out sc_logic 1 signal 84 } 
	{ buff_B_38_d0 sc_out sc_lv 32 signal 84 } 
	{ buff_A_39_address0 sc_out sc_lv 6 signal 85 } 
	{ buff_A_39_ce0 sc_out sc_logic 1 signal 85 } 
	{ buff_A_39_we0 sc_out sc_logic 1 signal 85 } 
	{ buff_A_39_d0 sc_out sc_lv 32 signal 85 } 
	{ buff_B_39_address0 sc_out sc_lv 6 signal 86 } 
	{ buff_B_39_ce0 sc_out sc_logic 1 signal 86 } 
	{ buff_B_39_we0 sc_out sc_logic 1 signal 86 } 
	{ buff_B_39_d0 sc_out sc_lv 32 signal 86 } 
	{ buff_A_40_address0 sc_out sc_lv 6 signal 87 } 
	{ buff_A_40_ce0 sc_out sc_logic 1 signal 87 } 
	{ buff_A_40_we0 sc_out sc_logic 1 signal 87 } 
	{ buff_A_40_d0 sc_out sc_lv 32 signal 87 } 
	{ buff_B_40_address0 sc_out sc_lv 6 signal 88 } 
	{ buff_B_40_ce0 sc_out sc_logic 1 signal 88 } 
	{ buff_B_40_we0 sc_out sc_logic 1 signal 88 } 
	{ buff_B_40_d0 sc_out sc_lv 32 signal 88 } 
	{ buff_A_41_address0 sc_out sc_lv 6 signal 89 } 
	{ buff_A_41_ce0 sc_out sc_logic 1 signal 89 } 
	{ buff_A_41_we0 sc_out sc_logic 1 signal 89 } 
	{ buff_A_41_d0 sc_out sc_lv 32 signal 89 } 
	{ buff_B_41_address0 sc_out sc_lv 6 signal 90 } 
	{ buff_B_41_ce0 sc_out sc_logic 1 signal 90 } 
	{ buff_B_41_we0 sc_out sc_logic 1 signal 90 } 
	{ buff_B_41_d0 sc_out sc_lv 32 signal 90 } 
	{ buff_A_42_address0 sc_out sc_lv 6 signal 91 } 
	{ buff_A_42_ce0 sc_out sc_logic 1 signal 91 } 
	{ buff_A_42_we0 sc_out sc_logic 1 signal 91 } 
	{ buff_A_42_d0 sc_out sc_lv 32 signal 91 } 
	{ buff_B_42_address0 sc_out sc_lv 6 signal 92 } 
	{ buff_B_42_ce0 sc_out sc_logic 1 signal 92 } 
	{ buff_B_42_we0 sc_out sc_logic 1 signal 92 } 
	{ buff_B_42_d0 sc_out sc_lv 32 signal 92 } 
	{ buff_A_43_address0 sc_out sc_lv 6 signal 93 } 
	{ buff_A_43_ce0 sc_out sc_logic 1 signal 93 } 
	{ buff_A_43_we0 sc_out sc_logic 1 signal 93 } 
	{ buff_A_43_d0 sc_out sc_lv 32 signal 93 } 
	{ buff_B_43_address0 sc_out sc_lv 6 signal 94 } 
	{ buff_B_43_ce0 sc_out sc_logic 1 signal 94 } 
	{ buff_B_43_we0 sc_out sc_logic 1 signal 94 } 
	{ buff_B_43_d0 sc_out sc_lv 32 signal 94 } 
	{ buff_A_44_address0 sc_out sc_lv 6 signal 95 } 
	{ buff_A_44_ce0 sc_out sc_logic 1 signal 95 } 
	{ buff_A_44_we0 sc_out sc_logic 1 signal 95 } 
	{ buff_A_44_d0 sc_out sc_lv 32 signal 95 } 
	{ buff_B_44_address0 sc_out sc_lv 6 signal 96 } 
	{ buff_B_44_ce0 sc_out sc_logic 1 signal 96 } 
	{ buff_B_44_we0 sc_out sc_logic 1 signal 96 } 
	{ buff_B_44_d0 sc_out sc_lv 32 signal 96 } 
	{ buff_A_45_address0 sc_out sc_lv 6 signal 97 } 
	{ buff_A_45_ce0 sc_out sc_logic 1 signal 97 } 
	{ buff_A_45_we0 sc_out sc_logic 1 signal 97 } 
	{ buff_A_45_d0 sc_out sc_lv 32 signal 97 } 
	{ buff_B_45_address0 sc_out sc_lv 6 signal 98 } 
	{ buff_B_45_ce0 sc_out sc_logic 1 signal 98 } 
	{ buff_B_45_we0 sc_out sc_logic 1 signal 98 } 
	{ buff_B_45_d0 sc_out sc_lv 32 signal 98 } 
	{ buff_A_46_address0 sc_out sc_lv 6 signal 99 } 
	{ buff_A_46_ce0 sc_out sc_logic 1 signal 99 } 
	{ buff_A_46_we0 sc_out sc_logic 1 signal 99 } 
	{ buff_A_46_d0 sc_out sc_lv 32 signal 99 } 
	{ buff_B_46_address0 sc_out sc_lv 6 signal 100 } 
	{ buff_B_46_ce0 sc_out sc_logic 1 signal 100 } 
	{ buff_B_46_we0 sc_out sc_logic 1 signal 100 } 
	{ buff_B_46_d0 sc_out sc_lv 32 signal 100 } 
	{ buff_A_47_address0 sc_out sc_lv 6 signal 101 } 
	{ buff_A_47_ce0 sc_out sc_logic 1 signal 101 } 
	{ buff_A_47_we0 sc_out sc_logic 1 signal 101 } 
	{ buff_A_47_d0 sc_out sc_lv 32 signal 101 } 
	{ buff_B_47_address0 sc_out sc_lv 6 signal 102 } 
	{ buff_B_47_ce0 sc_out sc_logic 1 signal 102 } 
	{ buff_B_47_we0 sc_out sc_logic 1 signal 102 } 
	{ buff_B_47_d0 sc_out sc_lv 32 signal 102 } 
	{ buff_A_48_address0 sc_out sc_lv 6 signal 103 } 
	{ buff_A_48_ce0 sc_out sc_logic 1 signal 103 } 
	{ buff_A_48_we0 sc_out sc_logic 1 signal 103 } 
	{ buff_A_48_d0 sc_out sc_lv 32 signal 103 } 
	{ buff_B_48_address0 sc_out sc_lv 6 signal 104 } 
	{ buff_B_48_ce0 sc_out sc_logic 1 signal 104 } 
	{ buff_B_48_we0 sc_out sc_logic 1 signal 104 } 
	{ buff_B_48_d0 sc_out sc_lv 32 signal 104 } 
	{ buff_A_49_address0 sc_out sc_lv 6 signal 105 } 
	{ buff_A_49_ce0 sc_out sc_logic 1 signal 105 } 
	{ buff_A_49_we0 sc_out sc_logic 1 signal 105 } 
	{ buff_A_49_d0 sc_out sc_lv 32 signal 105 } 
	{ buff_B_49_address0 sc_out sc_lv 6 signal 106 } 
	{ buff_B_49_ce0 sc_out sc_logic 1 signal 106 } 
	{ buff_B_49_we0 sc_out sc_logic 1 signal 106 } 
	{ buff_B_49_d0 sc_out sc_lv 32 signal 106 } 
	{ buff_A_50_address0 sc_out sc_lv 6 signal 107 } 
	{ buff_A_50_ce0 sc_out sc_logic 1 signal 107 } 
	{ buff_A_50_we0 sc_out sc_logic 1 signal 107 } 
	{ buff_A_50_d0 sc_out sc_lv 32 signal 107 } 
	{ buff_B_50_address0 sc_out sc_lv 6 signal 108 } 
	{ buff_B_50_ce0 sc_out sc_logic 1 signal 108 } 
	{ buff_B_50_we0 sc_out sc_logic 1 signal 108 } 
	{ buff_B_50_d0 sc_out sc_lv 32 signal 108 } 
	{ buff_A_51_address0 sc_out sc_lv 6 signal 109 } 
	{ buff_A_51_ce0 sc_out sc_logic 1 signal 109 } 
	{ buff_A_51_we0 sc_out sc_logic 1 signal 109 } 
	{ buff_A_51_d0 sc_out sc_lv 32 signal 109 } 
	{ buff_B_51_address0 sc_out sc_lv 6 signal 110 } 
	{ buff_B_51_ce0 sc_out sc_logic 1 signal 110 } 
	{ buff_B_51_we0 sc_out sc_logic 1 signal 110 } 
	{ buff_B_51_d0 sc_out sc_lv 32 signal 110 } 
	{ buff_A_52_address0 sc_out sc_lv 6 signal 111 } 
	{ buff_A_52_ce0 sc_out sc_logic 1 signal 111 } 
	{ buff_A_52_we0 sc_out sc_logic 1 signal 111 } 
	{ buff_A_52_d0 sc_out sc_lv 32 signal 111 } 
	{ buff_B_52_address0 sc_out sc_lv 6 signal 112 } 
	{ buff_B_52_ce0 sc_out sc_logic 1 signal 112 } 
	{ buff_B_52_we0 sc_out sc_logic 1 signal 112 } 
	{ buff_B_52_d0 sc_out sc_lv 32 signal 112 } 
	{ buff_A_53_address0 sc_out sc_lv 6 signal 113 } 
	{ buff_A_53_ce0 sc_out sc_logic 1 signal 113 } 
	{ buff_A_53_we0 sc_out sc_logic 1 signal 113 } 
	{ buff_A_53_d0 sc_out sc_lv 32 signal 113 } 
	{ buff_B_53_address0 sc_out sc_lv 6 signal 114 } 
	{ buff_B_53_ce0 sc_out sc_logic 1 signal 114 } 
	{ buff_B_53_we0 sc_out sc_logic 1 signal 114 } 
	{ buff_B_53_d0 sc_out sc_lv 32 signal 114 } 
	{ buff_A_54_address0 sc_out sc_lv 6 signal 115 } 
	{ buff_A_54_ce0 sc_out sc_logic 1 signal 115 } 
	{ buff_A_54_we0 sc_out sc_logic 1 signal 115 } 
	{ buff_A_54_d0 sc_out sc_lv 32 signal 115 } 
	{ buff_B_54_address0 sc_out sc_lv 6 signal 116 } 
	{ buff_B_54_ce0 sc_out sc_logic 1 signal 116 } 
	{ buff_B_54_we0 sc_out sc_logic 1 signal 116 } 
	{ buff_B_54_d0 sc_out sc_lv 32 signal 116 } 
	{ buff_A_55_address0 sc_out sc_lv 6 signal 117 } 
	{ buff_A_55_ce0 sc_out sc_logic 1 signal 117 } 
	{ buff_A_55_we0 sc_out sc_logic 1 signal 117 } 
	{ buff_A_55_d0 sc_out sc_lv 32 signal 117 } 
	{ buff_B_55_address0 sc_out sc_lv 6 signal 118 } 
	{ buff_B_55_ce0 sc_out sc_logic 1 signal 118 } 
	{ buff_B_55_we0 sc_out sc_logic 1 signal 118 } 
	{ buff_B_55_d0 sc_out sc_lv 32 signal 118 } 
	{ buff_A_56_address0 sc_out sc_lv 6 signal 119 } 
	{ buff_A_56_ce0 sc_out sc_logic 1 signal 119 } 
	{ buff_A_56_we0 sc_out sc_logic 1 signal 119 } 
	{ buff_A_56_d0 sc_out sc_lv 32 signal 119 } 
	{ buff_B_56_address0 sc_out sc_lv 6 signal 120 } 
	{ buff_B_56_ce0 sc_out sc_logic 1 signal 120 } 
	{ buff_B_56_we0 sc_out sc_logic 1 signal 120 } 
	{ buff_B_56_d0 sc_out sc_lv 32 signal 120 } 
	{ buff_A_57_address0 sc_out sc_lv 6 signal 121 } 
	{ buff_A_57_ce0 sc_out sc_logic 1 signal 121 } 
	{ buff_A_57_we0 sc_out sc_logic 1 signal 121 } 
	{ buff_A_57_d0 sc_out sc_lv 32 signal 121 } 
	{ buff_B_57_address0 sc_out sc_lv 6 signal 122 } 
	{ buff_B_57_ce0 sc_out sc_logic 1 signal 122 } 
	{ buff_B_57_we0 sc_out sc_logic 1 signal 122 } 
	{ buff_B_57_d0 sc_out sc_lv 32 signal 122 } 
	{ buff_A_58_address0 sc_out sc_lv 6 signal 123 } 
	{ buff_A_58_ce0 sc_out sc_logic 1 signal 123 } 
	{ buff_A_58_we0 sc_out sc_logic 1 signal 123 } 
	{ buff_A_58_d0 sc_out sc_lv 32 signal 123 } 
	{ buff_B_58_address0 sc_out sc_lv 6 signal 124 } 
	{ buff_B_58_ce0 sc_out sc_logic 1 signal 124 } 
	{ buff_B_58_we0 sc_out sc_logic 1 signal 124 } 
	{ buff_B_58_d0 sc_out sc_lv 32 signal 124 } 
	{ buff_A_59_address0 sc_out sc_lv 6 signal 125 } 
	{ buff_A_59_ce0 sc_out sc_logic 1 signal 125 } 
	{ buff_A_59_we0 sc_out sc_logic 1 signal 125 } 
	{ buff_A_59_d0 sc_out sc_lv 32 signal 125 } 
	{ buff_B_59_address0 sc_out sc_lv 6 signal 126 } 
	{ buff_B_59_ce0 sc_out sc_logic 1 signal 126 } 
	{ buff_B_59_we0 sc_out sc_logic 1 signal 126 } 
	{ buff_B_59_d0 sc_out sc_lv 32 signal 126 } 
	{ buff_A_60_address0 sc_out sc_lv 6 signal 127 } 
	{ buff_A_60_ce0 sc_out sc_logic 1 signal 127 } 
	{ buff_A_60_we0 sc_out sc_logic 1 signal 127 } 
	{ buff_A_60_d0 sc_out sc_lv 32 signal 127 } 
	{ buff_B_60_address0 sc_out sc_lv 6 signal 128 } 
	{ buff_B_60_ce0 sc_out sc_logic 1 signal 128 } 
	{ buff_B_60_we0 sc_out sc_logic 1 signal 128 } 
	{ buff_B_60_d0 sc_out sc_lv 32 signal 128 } 
	{ buff_A_61_address0 sc_out sc_lv 6 signal 129 } 
	{ buff_A_61_ce0 sc_out sc_logic 1 signal 129 } 
	{ buff_A_61_we0 sc_out sc_logic 1 signal 129 } 
	{ buff_A_61_d0 sc_out sc_lv 32 signal 129 } 
	{ buff_B_61_address0 sc_out sc_lv 6 signal 130 } 
	{ buff_B_61_ce0 sc_out sc_logic 1 signal 130 } 
	{ buff_B_61_we0 sc_out sc_logic 1 signal 130 } 
	{ buff_B_61_d0 sc_out sc_lv 32 signal 130 } 
	{ buff_A_62_address0 sc_out sc_lv 6 signal 131 } 
	{ buff_A_62_ce0 sc_out sc_logic 1 signal 131 } 
	{ buff_A_62_we0 sc_out sc_logic 1 signal 131 } 
	{ buff_A_62_d0 sc_out sc_lv 32 signal 131 } 
	{ buff_B_62_address0 sc_out sc_lv 6 signal 132 } 
	{ buff_B_62_ce0 sc_out sc_logic 1 signal 132 } 
	{ buff_B_62_we0 sc_out sc_logic 1 signal 132 } 
	{ buff_B_62_d0 sc_out sc_lv 32 signal 132 } 
	{ buff_A_63_address0 sc_out sc_lv 6 signal 133 } 
	{ buff_A_63_ce0 sc_out sc_logic 1 signal 133 } 
	{ buff_A_63_we0 sc_out sc_logic 1 signal 133 } 
	{ buff_A_63_d0 sc_out sc_lv 32 signal 133 } 
	{ buff_B_63_address0 sc_out sc_lv 6 signal 134 } 
	{ buff_B_63_ce0 sc_out sc_logic 1 signal 134 } 
	{ buff_B_63_we0 sc_out sc_logic 1 signal 134 } 
	{ buff_B_63_d0 sc_out sc_lv 32 signal 134 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "q0" }} , 
 	{ "name": "B_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "B", "role": "address1" }} , 
 	{ "name": "B_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce1" }} , 
 	{ "name": "B_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "q1" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "buff_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_x", "role": "address0" }} , 
 	{ "name": "buff_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_x", "role": "ce0" }} , 
 	{ "name": "buff_x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_x", "role": "we0" }} , 
 	{ "name": "buff_x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_x", "role": "d0" }} , 
 	{ "name": "tmp1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tmp1", "role": "address0" }} , 
 	{ "name": "tmp1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce0" }} , 
 	{ "name": "tmp1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "we0" }} , 
 	{ "name": "tmp1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "d0" }} , 
 	{ "name": "tmp2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tmp2", "role": "address0" }} , 
 	{ "name": "tmp2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "ce0" }} , 
 	{ "name": "tmp2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp2", "role": "we0" }} , 
 	{ "name": "tmp2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp2", "role": "d0" }} , 
 	{ "name": "buff_y_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_y_out", "role": "address0" }} , 
 	{ "name": "buff_y_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_y_out", "role": "ce0" }} , 
 	{ "name": "buff_y_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_y_out", "role": "we0" }} , 
 	{ "name": "buff_y_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_y_out", "role": "d0" }} , 
 	{ "name": "buff_A_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_0", "role": "address0" }} , 
 	{ "name": "buff_A_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_0", "role": "ce0" }} , 
 	{ "name": "buff_A_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_0", "role": "we0" }} , 
 	{ "name": "buff_A_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_0", "role": "d0" }} , 
 	{ "name": "buff_B_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_0", "role": "address0" }} , 
 	{ "name": "buff_B_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_0", "role": "ce0" }} , 
 	{ "name": "buff_B_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_0", "role": "we0" }} , 
 	{ "name": "buff_B_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_0", "role": "d0" }} , 
 	{ "name": "buff_A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_1", "role": "address0" }} , 
 	{ "name": "buff_A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_1", "role": "ce0" }} , 
 	{ "name": "buff_A_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_1", "role": "we0" }} , 
 	{ "name": "buff_A_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_1", "role": "d0" }} , 
 	{ "name": "buff_B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_1", "role": "address0" }} , 
 	{ "name": "buff_B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_1", "role": "ce0" }} , 
 	{ "name": "buff_B_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_1", "role": "we0" }} , 
 	{ "name": "buff_B_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_1", "role": "d0" }} , 
 	{ "name": "buff_A_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_2", "role": "address0" }} , 
 	{ "name": "buff_A_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_2", "role": "ce0" }} , 
 	{ "name": "buff_A_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_2", "role": "we0" }} , 
 	{ "name": "buff_A_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_2", "role": "d0" }} , 
 	{ "name": "buff_B_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_2", "role": "address0" }} , 
 	{ "name": "buff_B_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_2", "role": "ce0" }} , 
 	{ "name": "buff_B_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_2", "role": "we0" }} , 
 	{ "name": "buff_B_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_2", "role": "d0" }} , 
 	{ "name": "buff_A_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_3", "role": "address0" }} , 
 	{ "name": "buff_A_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_3", "role": "ce0" }} , 
 	{ "name": "buff_A_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_3", "role": "we0" }} , 
 	{ "name": "buff_A_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_3", "role": "d0" }} , 
 	{ "name": "buff_B_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_3", "role": "address0" }} , 
 	{ "name": "buff_B_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_3", "role": "ce0" }} , 
 	{ "name": "buff_B_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_3", "role": "we0" }} , 
 	{ "name": "buff_B_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_3", "role": "d0" }} , 
 	{ "name": "buff_A_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_4", "role": "address0" }} , 
 	{ "name": "buff_A_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_4", "role": "ce0" }} , 
 	{ "name": "buff_A_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_4", "role": "we0" }} , 
 	{ "name": "buff_A_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_4", "role": "d0" }} , 
 	{ "name": "buff_B_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_4", "role": "address0" }} , 
 	{ "name": "buff_B_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_4", "role": "ce0" }} , 
 	{ "name": "buff_B_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_4", "role": "we0" }} , 
 	{ "name": "buff_B_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_4", "role": "d0" }} , 
 	{ "name": "buff_A_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_5", "role": "address0" }} , 
 	{ "name": "buff_A_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_5", "role": "ce0" }} , 
 	{ "name": "buff_A_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_5", "role": "we0" }} , 
 	{ "name": "buff_A_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_5", "role": "d0" }} , 
 	{ "name": "buff_B_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_5", "role": "address0" }} , 
 	{ "name": "buff_B_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_5", "role": "ce0" }} , 
 	{ "name": "buff_B_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_5", "role": "we0" }} , 
 	{ "name": "buff_B_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_5", "role": "d0" }} , 
 	{ "name": "buff_A_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_6", "role": "address0" }} , 
 	{ "name": "buff_A_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_6", "role": "ce0" }} , 
 	{ "name": "buff_A_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_6", "role": "we0" }} , 
 	{ "name": "buff_A_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_6", "role": "d0" }} , 
 	{ "name": "buff_B_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_6", "role": "address0" }} , 
 	{ "name": "buff_B_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_6", "role": "ce0" }} , 
 	{ "name": "buff_B_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_6", "role": "we0" }} , 
 	{ "name": "buff_B_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_6", "role": "d0" }} , 
 	{ "name": "buff_A_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_7", "role": "address0" }} , 
 	{ "name": "buff_A_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_7", "role": "ce0" }} , 
 	{ "name": "buff_A_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_7", "role": "we0" }} , 
 	{ "name": "buff_A_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_7", "role": "d0" }} , 
 	{ "name": "buff_B_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_7", "role": "address0" }} , 
 	{ "name": "buff_B_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_7", "role": "ce0" }} , 
 	{ "name": "buff_B_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_7", "role": "we0" }} , 
 	{ "name": "buff_B_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_7", "role": "d0" }} , 
 	{ "name": "buff_A_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_8", "role": "address0" }} , 
 	{ "name": "buff_A_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_8", "role": "ce0" }} , 
 	{ "name": "buff_A_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_8", "role": "we0" }} , 
 	{ "name": "buff_A_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_8", "role": "d0" }} , 
 	{ "name": "buff_B_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_8", "role": "address0" }} , 
 	{ "name": "buff_B_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_8", "role": "ce0" }} , 
 	{ "name": "buff_B_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_8", "role": "we0" }} , 
 	{ "name": "buff_B_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_8", "role": "d0" }} , 
 	{ "name": "buff_A_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_9", "role": "address0" }} , 
 	{ "name": "buff_A_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_9", "role": "ce0" }} , 
 	{ "name": "buff_A_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_9", "role": "we0" }} , 
 	{ "name": "buff_A_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_9", "role": "d0" }} , 
 	{ "name": "buff_B_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_9", "role": "address0" }} , 
 	{ "name": "buff_B_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_9", "role": "ce0" }} , 
 	{ "name": "buff_B_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_9", "role": "we0" }} , 
 	{ "name": "buff_B_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_9", "role": "d0" }} , 
 	{ "name": "buff_A_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_10", "role": "address0" }} , 
 	{ "name": "buff_A_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_10", "role": "ce0" }} , 
 	{ "name": "buff_A_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_10", "role": "we0" }} , 
 	{ "name": "buff_A_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_10", "role": "d0" }} , 
 	{ "name": "buff_B_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_10", "role": "address0" }} , 
 	{ "name": "buff_B_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_10", "role": "ce0" }} , 
 	{ "name": "buff_B_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_10", "role": "we0" }} , 
 	{ "name": "buff_B_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_10", "role": "d0" }} , 
 	{ "name": "buff_A_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_11", "role": "address0" }} , 
 	{ "name": "buff_A_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_11", "role": "ce0" }} , 
 	{ "name": "buff_A_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_11", "role": "we0" }} , 
 	{ "name": "buff_A_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_11", "role": "d0" }} , 
 	{ "name": "buff_B_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_11", "role": "address0" }} , 
 	{ "name": "buff_B_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_11", "role": "ce0" }} , 
 	{ "name": "buff_B_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_11", "role": "we0" }} , 
 	{ "name": "buff_B_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_11", "role": "d0" }} , 
 	{ "name": "buff_A_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_12", "role": "address0" }} , 
 	{ "name": "buff_A_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_12", "role": "ce0" }} , 
 	{ "name": "buff_A_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_12", "role": "we0" }} , 
 	{ "name": "buff_A_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_12", "role": "d0" }} , 
 	{ "name": "buff_B_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_12", "role": "address0" }} , 
 	{ "name": "buff_B_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_12", "role": "ce0" }} , 
 	{ "name": "buff_B_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_12", "role": "we0" }} , 
 	{ "name": "buff_B_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_12", "role": "d0" }} , 
 	{ "name": "buff_A_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_13", "role": "address0" }} , 
 	{ "name": "buff_A_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_13", "role": "ce0" }} , 
 	{ "name": "buff_A_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_13", "role": "we0" }} , 
 	{ "name": "buff_A_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_13", "role": "d0" }} , 
 	{ "name": "buff_B_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_13", "role": "address0" }} , 
 	{ "name": "buff_B_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_13", "role": "ce0" }} , 
 	{ "name": "buff_B_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_13", "role": "we0" }} , 
 	{ "name": "buff_B_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_13", "role": "d0" }} , 
 	{ "name": "buff_A_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_14", "role": "address0" }} , 
 	{ "name": "buff_A_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_14", "role": "ce0" }} , 
 	{ "name": "buff_A_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_14", "role": "we0" }} , 
 	{ "name": "buff_A_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_14", "role": "d0" }} , 
 	{ "name": "buff_B_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_14", "role": "address0" }} , 
 	{ "name": "buff_B_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_14", "role": "ce0" }} , 
 	{ "name": "buff_B_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_14", "role": "we0" }} , 
 	{ "name": "buff_B_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_14", "role": "d0" }} , 
 	{ "name": "buff_A_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_15", "role": "address0" }} , 
 	{ "name": "buff_A_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_15", "role": "ce0" }} , 
 	{ "name": "buff_A_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_15", "role": "we0" }} , 
 	{ "name": "buff_A_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_15", "role": "d0" }} , 
 	{ "name": "buff_B_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_15", "role": "address0" }} , 
 	{ "name": "buff_B_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_15", "role": "ce0" }} , 
 	{ "name": "buff_B_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_15", "role": "we0" }} , 
 	{ "name": "buff_B_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_15", "role": "d0" }} , 
 	{ "name": "buff_A_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_16", "role": "address0" }} , 
 	{ "name": "buff_A_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_16", "role": "ce0" }} , 
 	{ "name": "buff_A_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_16", "role": "we0" }} , 
 	{ "name": "buff_A_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_16", "role": "d0" }} , 
 	{ "name": "buff_B_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_16", "role": "address0" }} , 
 	{ "name": "buff_B_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_16", "role": "ce0" }} , 
 	{ "name": "buff_B_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_16", "role": "we0" }} , 
 	{ "name": "buff_B_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_16", "role": "d0" }} , 
 	{ "name": "buff_A_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_17", "role": "address0" }} , 
 	{ "name": "buff_A_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_17", "role": "ce0" }} , 
 	{ "name": "buff_A_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_17", "role": "we0" }} , 
 	{ "name": "buff_A_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_17", "role": "d0" }} , 
 	{ "name": "buff_B_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_17", "role": "address0" }} , 
 	{ "name": "buff_B_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_17", "role": "ce0" }} , 
 	{ "name": "buff_B_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_17", "role": "we0" }} , 
 	{ "name": "buff_B_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_17", "role": "d0" }} , 
 	{ "name": "buff_A_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_18", "role": "address0" }} , 
 	{ "name": "buff_A_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_18", "role": "ce0" }} , 
 	{ "name": "buff_A_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_18", "role": "we0" }} , 
 	{ "name": "buff_A_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_18", "role": "d0" }} , 
 	{ "name": "buff_B_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_18", "role": "address0" }} , 
 	{ "name": "buff_B_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_18", "role": "ce0" }} , 
 	{ "name": "buff_B_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_18", "role": "we0" }} , 
 	{ "name": "buff_B_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_18", "role": "d0" }} , 
 	{ "name": "buff_A_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_19", "role": "address0" }} , 
 	{ "name": "buff_A_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_19", "role": "ce0" }} , 
 	{ "name": "buff_A_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_19", "role": "we0" }} , 
 	{ "name": "buff_A_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_19", "role": "d0" }} , 
 	{ "name": "buff_B_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_19", "role": "address0" }} , 
 	{ "name": "buff_B_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_19", "role": "ce0" }} , 
 	{ "name": "buff_B_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_19", "role": "we0" }} , 
 	{ "name": "buff_B_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_19", "role": "d0" }} , 
 	{ "name": "buff_A_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_20", "role": "address0" }} , 
 	{ "name": "buff_A_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_20", "role": "ce0" }} , 
 	{ "name": "buff_A_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_20", "role": "we0" }} , 
 	{ "name": "buff_A_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_20", "role": "d0" }} , 
 	{ "name": "buff_B_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_20", "role": "address0" }} , 
 	{ "name": "buff_B_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_20", "role": "ce0" }} , 
 	{ "name": "buff_B_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_20", "role": "we0" }} , 
 	{ "name": "buff_B_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_20", "role": "d0" }} , 
 	{ "name": "buff_A_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_21", "role": "address0" }} , 
 	{ "name": "buff_A_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_21", "role": "ce0" }} , 
 	{ "name": "buff_A_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_21", "role": "we0" }} , 
 	{ "name": "buff_A_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_21", "role": "d0" }} , 
 	{ "name": "buff_B_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_21", "role": "address0" }} , 
 	{ "name": "buff_B_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_21", "role": "ce0" }} , 
 	{ "name": "buff_B_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_21", "role": "we0" }} , 
 	{ "name": "buff_B_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_21", "role": "d0" }} , 
 	{ "name": "buff_A_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_22", "role": "address0" }} , 
 	{ "name": "buff_A_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_22", "role": "ce0" }} , 
 	{ "name": "buff_A_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_22", "role": "we0" }} , 
 	{ "name": "buff_A_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_22", "role": "d0" }} , 
 	{ "name": "buff_B_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_22", "role": "address0" }} , 
 	{ "name": "buff_B_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_22", "role": "ce0" }} , 
 	{ "name": "buff_B_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_22", "role": "we0" }} , 
 	{ "name": "buff_B_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_22", "role": "d0" }} , 
 	{ "name": "buff_A_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_23", "role": "address0" }} , 
 	{ "name": "buff_A_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_23", "role": "ce0" }} , 
 	{ "name": "buff_A_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_23", "role": "we0" }} , 
 	{ "name": "buff_A_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_23", "role": "d0" }} , 
 	{ "name": "buff_B_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_23", "role": "address0" }} , 
 	{ "name": "buff_B_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_23", "role": "ce0" }} , 
 	{ "name": "buff_B_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_23", "role": "we0" }} , 
 	{ "name": "buff_B_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_23", "role": "d0" }} , 
 	{ "name": "buff_A_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_24", "role": "address0" }} , 
 	{ "name": "buff_A_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_24", "role": "ce0" }} , 
 	{ "name": "buff_A_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_24", "role": "we0" }} , 
 	{ "name": "buff_A_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_24", "role": "d0" }} , 
 	{ "name": "buff_B_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_24", "role": "address0" }} , 
 	{ "name": "buff_B_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_24", "role": "ce0" }} , 
 	{ "name": "buff_B_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_24", "role": "we0" }} , 
 	{ "name": "buff_B_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_24", "role": "d0" }} , 
 	{ "name": "buff_A_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_25", "role": "address0" }} , 
 	{ "name": "buff_A_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_25", "role": "ce0" }} , 
 	{ "name": "buff_A_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_25", "role": "we0" }} , 
 	{ "name": "buff_A_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_25", "role": "d0" }} , 
 	{ "name": "buff_B_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_25", "role": "address0" }} , 
 	{ "name": "buff_B_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_25", "role": "ce0" }} , 
 	{ "name": "buff_B_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_25", "role": "we0" }} , 
 	{ "name": "buff_B_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_25", "role": "d0" }} , 
 	{ "name": "buff_A_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_26", "role": "address0" }} , 
 	{ "name": "buff_A_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_26", "role": "ce0" }} , 
 	{ "name": "buff_A_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_26", "role": "we0" }} , 
 	{ "name": "buff_A_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_26", "role": "d0" }} , 
 	{ "name": "buff_B_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_26", "role": "address0" }} , 
 	{ "name": "buff_B_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_26", "role": "ce0" }} , 
 	{ "name": "buff_B_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_26", "role": "we0" }} , 
 	{ "name": "buff_B_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_26", "role": "d0" }} , 
 	{ "name": "buff_A_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_27", "role": "address0" }} , 
 	{ "name": "buff_A_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_27", "role": "ce0" }} , 
 	{ "name": "buff_A_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_27", "role": "we0" }} , 
 	{ "name": "buff_A_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_27", "role": "d0" }} , 
 	{ "name": "buff_B_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_27", "role": "address0" }} , 
 	{ "name": "buff_B_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_27", "role": "ce0" }} , 
 	{ "name": "buff_B_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_27", "role": "we0" }} , 
 	{ "name": "buff_B_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_27", "role": "d0" }} , 
 	{ "name": "buff_A_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_28", "role": "address0" }} , 
 	{ "name": "buff_A_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_28", "role": "ce0" }} , 
 	{ "name": "buff_A_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_28", "role": "we0" }} , 
 	{ "name": "buff_A_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_28", "role": "d0" }} , 
 	{ "name": "buff_B_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_28", "role": "address0" }} , 
 	{ "name": "buff_B_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_28", "role": "ce0" }} , 
 	{ "name": "buff_B_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_28", "role": "we0" }} , 
 	{ "name": "buff_B_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_28", "role": "d0" }} , 
 	{ "name": "buff_A_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_29", "role": "address0" }} , 
 	{ "name": "buff_A_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_29", "role": "ce0" }} , 
 	{ "name": "buff_A_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_29", "role": "we0" }} , 
 	{ "name": "buff_A_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_29", "role": "d0" }} , 
 	{ "name": "buff_B_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_29", "role": "address0" }} , 
 	{ "name": "buff_B_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_29", "role": "ce0" }} , 
 	{ "name": "buff_B_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_29", "role": "we0" }} , 
 	{ "name": "buff_B_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_29", "role": "d0" }} , 
 	{ "name": "buff_A_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_30", "role": "address0" }} , 
 	{ "name": "buff_A_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_30", "role": "ce0" }} , 
 	{ "name": "buff_A_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_30", "role": "we0" }} , 
 	{ "name": "buff_A_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_30", "role": "d0" }} , 
 	{ "name": "buff_B_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_30", "role": "address0" }} , 
 	{ "name": "buff_B_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_30", "role": "ce0" }} , 
 	{ "name": "buff_B_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_30", "role": "we0" }} , 
 	{ "name": "buff_B_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_30", "role": "d0" }} , 
 	{ "name": "buff_A_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_31", "role": "address0" }} , 
 	{ "name": "buff_A_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_31", "role": "ce0" }} , 
 	{ "name": "buff_A_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_31", "role": "we0" }} , 
 	{ "name": "buff_A_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_31", "role": "d0" }} , 
 	{ "name": "buff_B_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_31", "role": "address0" }} , 
 	{ "name": "buff_B_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_31", "role": "ce0" }} , 
 	{ "name": "buff_B_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_31", "role": "we0" }} , 
 	{ "name": "buff_B_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_31", "role": "d0" }} , 
 	{ "name": "buff_A_32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_32", "role": "address0" }} , 
 	{ "name": "buff_A_32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_32", "role": "ce0" }} , 
 	{ "name": "buff_A_32_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_32", "role": "we0" }} , 
 	{ "name": "buff_A_32_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_32", "role": "d0" }} , 
 	{ "name": "buff_B_32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_32", "role": "address0" }} , 
 	{ "name": "buff_B_32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_32", "role": "ce0" }} , 
 	{ "name": "buff_B_32_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_32", "role": "we0" }} , 
 	{ "name": "buff_B_32_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_32", "role": "d0" }} , 
 	{ "name": "buff_A_33_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_33", "role": "address0" }} , 
 	{ "name": "buff_A_33_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_33", "role": "ce0" }} , 
 	{ "name": "buff_A_33_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_33", "role": "we0" }} , 
 	{ "name": "buff_A_33_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_33", "role": "d0" }} , 
 	{ "name": "buff_B_33_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_33", "role": "address0" }} , 
 	{ "name": "buff_B_33_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_33", "role": "ce0" }} , 
 	{ "name": "buff_B_33_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_33", "role": "we0" }} , 
 	{ "name": "buff_B_33_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_33", "role": "d0" }} , 
 	{ "name": "buff_A_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_34", "role": "address0" }} , 
 	{ "name": "buff_A_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_34", "role": "ce0" }} , 
 	{ "name": "buff_A_34_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_34", "role": "we0" }} , 
 	{ "name": "buff_A_34_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_34", "role": "d0" }} , 
 	{ "name": "buff_B_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_34", "role": "address0" }} , 
 	{ "name": "buff_B_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_34", "role": "ce0" }} , 
 	{ "name": "buff_B_34_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_34", "role": "we0" }} , 
 	{ "name": "buff_B_34_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_34", "role": "d0" }} , 
 	{ "name": "buff_A_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_35", "role": "address0" }} , 
 	{ "name": "buff_A_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_35", "role": "ce0" }} , 
 	{ "name": "buff_A_35_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_35", "role": "we0" }} , 
 	{ "name": "buff_A_35_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_35", "role": "d0" }} , 
 	{ "name": "buff_B_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_35", "role": "address0" }} , 
 	{ "name": "buff_B_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_35", "role": "ce0" }} , 
 	{ "name": "buff_B_35_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_35", "role": "we0" }} , 
 	{ "name": "buff_B_35_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_35", "role": "d0" }} , 
 	{ "name": "buff_A_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_36", "role": "address0" }} , 
 	{ "name": "buff_A_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_36", "role": "ce0" }} , 
 	{ "name": "buff_A_36_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_36", "role": "we0" }} , 
 	{ "name": "buff_A_36_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_36", "role": "d0" }} , 
 	{ "name": "buff_B_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_36", "role": "address0" }} , 
 	{ "name": "buff_B_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_36", "role": "ce0" }} , 
 	{ "name": "buff_B_36_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_36", "role": "we0" }} , 
 	{ "name": "buff_B_36_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_36", "role": "d0" }} , 
 	{ "name": "buff_A_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_37", "role": "address0" }} , 
 	{ "name": "buff_A_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_37", "role": "ce0" }} , 
 	{ "name": "buff_A_37_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_37", "role": "we0" }} , 
 	{ "name": "buff_A_37_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_37", "role": "d0" }} , 
 	{ "name": "buff_B_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_37", "role": "address0" }} , 
 	{ "name": "buff_B_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_37", "role": "ce0" }} , 
 	{ "name": "buff_B_37_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_37", "role": "we0" }} , 
 	{ "name": "buff_B_37_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_37", "role": "d0" }} , 
 	{ "name": "buff_A_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_38", "role": "address0" }} , 
 	{ "name": "buff_A_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_38", "role": "ce0" }} , 
 	{ "name": "buff_A_38_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_38", "role": "we0" }} , 
 	{ "name": "buff_A_38_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_38", "role": "d0" }} , 
 	{ "name": "buff_B_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_38", "role": "address0" }} , 
 	{ "name": "buff_B_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_38", "role": "ce0" }} , 
 	{ "name": "buff_B_38_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_38", "role": "we0" }} , 
 	{ "name": "buff_B_38_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_38", "role": "d0" }} , 
 	{ "name": "buff_A_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_39", "role": "address0" }} , 
 	{ "name": "buff_A_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_39", "role": "ce0" }} , 
 	{ "name": "buff_A_39_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_39", "role": "we0" }} , 
 	{ "name": "buff_A_39_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_39", "role": "d0" }} , 
 	{ "name": "buff_B_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_39", "role": "address0" }} , 
 	{ "name": "buff_B_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_39", "role": "ce0" }} , 
 	{ "name": "buff_B_39_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_39", "role": "we0" }} , 
 	{ "name": "buff_B_39_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_39", "role": "d0" }} , 
 	{ "name": "buff_A_40_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_40", "role": "address0" }} , 
 	{ "name": "buff_A_40_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_40", "role": "ce0" }} , 
 	{ "name": "buff_A_40_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_40", "role": "we0" }} , 
 	{ "name": "buff_A_40_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_40", "role": "d0" }} , 
 	{ "name": "buff_B_40_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_40", "role": "address0" }} , 
 	{ "name": "buff_B_40_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_40", "role": "ce0" }} , 
 	{ "name": "buff_B_40_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_40", "role": "we0" }} , 
 	{ "name": "buff_B_40_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_40", "role": "d0" }} , 
 	{ "name": "buff_A_41_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_41", "role": "address0" }} , 
 	{ "name": "buff_A_41_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_41", "role": "ce0" }} , 
 	{ "name": "buff_A_41_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_41", "role": "we0" }} , 
 	{ "name": "buff_A_41_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_41", "role": "d0" }} , 
 	{ "name": "buff_B_41_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_41", "role": "address0" }} , 
 	{ "name": "buff_B_41_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_41", "role": "ce0" }} , 
 	{ "name": "buff_B_41_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_41", "role": "we0" }} , 
 	{ "name": "buff_B_41_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_41", "role": "d0" }} , 
 	{ "name": "buff_A_42_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_42", "role": "address0" }} , 
 	{ "name": "buff_A_42_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_42", "role": "ce0" }} , 
 	{ "name": "buff_A_42_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_42", "role": "we0" }} , 
 	{ "name": "buff_A_42_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_42", "role": "d0" }} , 
 	{ "name": "buff_B_42_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_42", "role": "address0" }} , 
 	{ "name": "buff_B_42_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_42", "role": "ce0" }} , 
 	{ "name": "buff_B_42_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_42", "role": "we0" }} , 
 	{ "name": "buff_B_42_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_42", "role": "d0" }} , 
 	{ "name": "buff_A_43_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_43", "role": "address0" }} , 
 	{ "name": "buff_A_43_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_43", "role": "ce0" }} , 
 	{ "name": "buff_A_43_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_43", "role": "we0" }} , 
 	{ "name": "buff_A_43_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_43", "role": "d0" }} , 
 	{ "name": "buff_B_43_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_43", "role": "address0" }} , 
 	{ "name": "buff_B_43_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_43", "role": "ce0" }} , 
 	{ "name": "buff_B_43_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_43", "role": "we0" }} , 
 	{ "name": "buff_B_43_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_43", "role": "d0" }} , 
 	{ "name": "buff_A_44_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_44", "role": "address0" }} , 
 	{ "name": "buff_A_44_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_44", "role": "ce0" }} , 
 	{ "name": "buff_A_44_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_44", "role": "we0" }} , 
 	{ "name": "buff_A_44_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_44", "role": "d0" }} , 
 	{ "name": "buff_B_44_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_44", "role": "address0" }} , 
 	{ "name": "buff_B_44_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_44", "role": "ce0" }} , 
 	{ "name": "buff_B_44_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_44", "role": "we0" }} , 
 	{ "name": "buff_B_44_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_44", "role": "d0" }} , 
 	{ "name": "buff_A_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_45", "role": "address0" }} , 
 	{ "name": "buff_A_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_45", "role": "ce0" }} , 
 	{ "name": "buff_A_45_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_45", "role": "we0" }} , 
 	{ "name": "buff_A_45_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_45", "role": "d0" }} , 
 	{ "name": "buff_B_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_45", "role": "address0" }} , 
 	{ "name": "buff_B_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_45", "role": "ce0" }} , 
 	{ "name": "buff_B_45_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_45", "role": "we0" }} , 
 	{ "name": "buff_B_45_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_45", "role": "d0" }} , 
 	{ "name": "buff_A_46_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_46", "role": "address0" }} , 
 	{ "name": "buff_A_46_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_46", "role": "ce0" }} , 
 	{ "name": "buff_A_46_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_46", "role": "we0" }} , 
 	{ "name": "buff_A_46_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_46", "role": "d0" }} , 
 	{ "name": "buff_B_46_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_46", "role": "address0" }} , 
 	{ "name": "buff_B_46_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_46", "role": "ce0" }} , 
 	{ "name": "buff_B_46_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_46", "role": "we0" }} , 
 	{ "name": "buff_B_46_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_46", "role": "d0" }} , 
 	{ "name": "buff_A_47_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_47", "role": "address0" }} , 
 	{ "name": "buff_A_47_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_47", "role": "ce0" }} , 
 	{ "name": "buff_A_47_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_47", "role": "we0" }} , 
 	{ "name": "buff_A_47_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_47", "role": "d0" }} , 
 	{ "name": "buff_B_47_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_47", "role": "address0" }} , 
 	{ "name": "buff_B_47_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_47", "role": "ce0" }} , 
 	{ "name": "buff_B_47_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_47", "role": "we0" }} , 
 	{ "name": "buff_B_47_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_47", "role": "d0" }} , 
 	{ "name": "buff_A_48_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_48", "role": "address0" }} , 
 	{ "name": "buff_A_48_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_48", "role": "ce0" }} , 
 	{ "name": "buff_A_48_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_48", "role": "we0" }} , 
 	{ "name": "buff_A_48_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_48", "role": "d0" }} , 
 	{ "name": "buff_B_48_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_48", "role": "address0" }} , 
 	{ "name": "buff_B_48_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_48", "role": "ce0" }} , 
 	{ "name": "buff_B_48_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_48", "role": "we0" }} , 
 	{ "name": "buff_B_48_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_48", "role": "d0" }} , 
 	{ "name": "buff_A_49_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_49", "role": "address0" }} , 
 	{ "name": "buff_A_49_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_49", "role": "ce0" }} , 
 	{ "name": "buff_A_49_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_49", "role": "we0" }} , 
 	{ "name": "buff_A_49_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_49", "role": "d0" }} , 
 	{ "name": "buff_B_49_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_49", "role": "address0" }} , 
 	{ "name": "buff_B_49_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_49", "role": "ce0" }} , 
 	{ "name": "buff_B_49_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_49", "role": "we0" }} , 
 	{ "name": "buff_B_49_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_49", "role": "d0" }} , 
 	{ "name": "buff_A_50_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_50", "role": "address0" }} , 
 	{ "name": "buff_A_50_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_50", "role": "ce0" }} , 
 	{ "name": "buff_A_50_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_50", "role": "we0" }} , 
 	{ "name": "buff_A_50_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_50", "role": "d0" }} , 
 	{ "name": "buff_B_50_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_50", "role": "address0" }} , 
 	{ "name": "buff_B_50_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_50", "role": "ce0" }} , 
 	{ "name": "buff_B_50_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_50", "role": "we0" }} , 
 	{ "name": "buff_B_50_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_50", "role": "d0" }} , 
 	{ "name": "buff_A_51_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_51", "role": "address0" }} , 
 	{ "name": "buff_A_51_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_51", "role": "ce0" }} , 
 	{ "name": "buff_A_51_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_51", "role": "we0" }} , 
 	{ "name": "buff_A_51_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_51", "role": "d0" }} , 
 	{ "name": "buff_B_51_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_51", "role": "address0" }} , 
 	{ "name": "buff_B_51_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_51", "role": "ce0" }} , 
 	{ "name": "buff_B_51_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_51", "role": "we0" }} , 
 	{ "name": "buff_B_51_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_51", "role": "d0" }} , 
 	{ "name": "buff_A_52_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_52", "role": "address0" }} , 
 	{ "name": "buff_A_52_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_52", "role": "ce0" }} , 
 	{ "name": "buff_A_52_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_52", "role": "we0" }} , 
 	{ "name": "buff_A_52_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_52", "role": "d0" }} , 
 	{ "name": "buff_B_52_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_52", "role": "address0" }} , 
 	{ "name": "buff_B_52_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_52", "role": "ce0" }} , 
 	{ "name": "buff_B_52_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_52", "role": "we0" }} , 
 	{ "name": "buff_B_52_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_52", "role": "d0" }} , 
 	{ "name": "buff_A_53_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_53", "role": "address0" }} , 
 	{ "name": "buff_A_53_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_53", "role": "ce0" }} , 
 	{ "name": "buff_A_53_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_53", "role": "we0" }} , 
 	{ "name": "buff_A_53_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_53", "role": "d0" }} , 
 	{ "name": "buff_B_53_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_53", "role": "address0" }} , 
 	{ "name": "buff_B_53_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_53", "role": "ce0" }} , 
 	{ "name": "buff_B_53_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_53", "role": "we0" }} , 
 	{ "name": "buff_B_53_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_53", "role": "d0" }} , 
 	{ "name": "buff_A_54_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_54", "role": "address0" }} , 
 	{ "name": "buff_A_54_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_54", "role": "ce0" }} , 
 	{ "name": "buff_A_54_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_54", "role": "we0" }} , 
 	{ "name": "buff_A_54_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_54", "role": "d0" }} , 
 	{ "name": "buff_B_54_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_54", "role": "address0" }} , 
 	{ "name": "buff_B_54_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_54", "role": "ce0" }} , 
 	{ "name": "buff_B_54_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_54", "role": "we0" }} , 
 	{ "name": "buff_B_54_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_54", "role": "d0" }} , 
 	{ "name": "buff_A_55_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_55", "role": "address0" }} , 
 	{ "name": "buff_A_55_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_55", "role": "ce0" }} , 
 	{ "name": "buff_A_55_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_55", "role": "we0" }} , 
 	{ "name": "buff_A_55_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_55", "role": "d0" }} , 
 	{ "name": "buff_B_55_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_55", "role": "address0" }} , 
 	{ "name": "buff_B_55_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_55", "role": "ce0" }} , 
 	{ "name": "buff_B_55_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_55", "role": "we0" }} , 
 	{ "name": "buff_B_55_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_55", "role": "d0" }} , 
 	{ "name": "buff_A_56_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_56", "role": "address0" }} , 
 	{ "name": "buff_A_56_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_56", "role": "ce0" }} , 
 	{ "name": "buff_A_56_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_56", "role": "we0" }} , 
 	{ "name": "buff_A_56_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_56", "role": "d0" }} , 
 	{ "name": "buff_B_56_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_56", "role": "address0" }} , 
 	{ "name": "buff_B_56_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_56", "role": "ce0" }} , 
 	{ "name": "buff_B_56_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_56", "role": "we0" }} , 
 	{ "name": "buff_B_56_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_56", "role": "d0" }} , 
 	{ "name": "buff_A_57_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_57", "role": "address0" }} , 
 	{ "name": "buff_A_57_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_57", "role": "ce0" }} , 
 	{ "name": "buff_A_57_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_57", "role": "we0" }} , 
 	{ "name": "buff_A_57_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_57", "role": "d0" }} , 
 	{ "name": "buff_B_57_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_57", "role": "address0" }} , 
 	{ "name": "buff_B_57_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_57", "role": "ce0" }} , 
 	{ "name": "buff_B_57_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_57", "role": "we0" }} , 
 	{ "name": "buff_B_57_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_57", "role": "d0" }} , 
 	{ "name": "buff_A_58_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_58", "role": "address0" }} , 
 	{ "name": "buff_A_58_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_58", "role": "ce0" }} , 
 	{ "name": "buff_A_58_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_58", "role": "we0" }} , 
 	{ "name": "buff_A_58_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_58", "role": "d0" }} , 
 	{ "name": "buff_B_58_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_58", "role": "address0" }} , 
 	{ "name": "buff_B_58_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_58", "role": "ce0" }} , 
 	{ "name": "buff_B_58_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_58", "role": "we0" }} , 
 	{ "name": "buff_B_58_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_58", "role": "d0" }} , 
 	{ "name": "buff_A_59_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_59", "role": "address0" }} , 
 	{ "name": "buff_A_59_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_59", "role": "ce0" }} , 
 	{ "name": "buff_A_59_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_59", "role": "we0" }} , 
 	{ "name": "buff_A_59_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_59", "role": "d0" }} , 
 	{ "name": "buff_B_59_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_59", "role": "address0" }} , 
 	{ "name": "buff_B_59_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_59", "role": "ce0" }} , 
 	{ "name": "buff_B_59_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_59", "role": "we0" }} , 
 	{ "name": "buff_B_59_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_59", "role": "d0" }} , 
 	{ "name": "buff_A_60_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_60", "role": "address0" }} , 
 	{ "name": "buff_A_60_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_60", "role": "ce0" }} , 
 	{ "name": "buff_A_60_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_60", "role": "we0" }} , 
 	{ "name": "buff_A_60_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_60", "role": "d0" }} , 
 	{ "name": "buff_B_60_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_60", "role": "address0" }} , 
 	{ "name": "buff_B_60_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_60", "role": "ce0" }} , 
 	{ "name": "buff_B_60_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_60", "role": "we0" }} , 
 	{ "name": "buff_B_60_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_60", "role": "d0" }} , 
 	{ "name": "buff_A_61_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_61", "role": "address0" }} , 
 	{ "name": "buff_A_61_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_61", "role": "ce0" }} , 
 	{ "name": "buff_A_61_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_61", "role": "we0" }} , 
 	{ "name": "buff_A_61_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_61", "role": "d0" }} , 
 	{ "name": "buff_B_61_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_61", "role": "address0" }} , 
 	{ "name": "buff_B_61_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_61", "role": "ce0" }} , 
 	{ "name": "buff_B_61_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_61", "role": "we0" }} , 
 	{ "name": "buff_B_61_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_61", "role": "d0" }} , 
 	{ "name": "buff_A_62_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_62", "role": "address0" }} , 
 	{ "name": "buff_A_62_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_62", "role": "ce0" }} , 
 	{ "name": "buff_A_62_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_62", "role": "we0" }} , 
 	{ "name": "buff_A_62_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_62", "role": "d0" }} , 
 	{ "name": "buff_B_62_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_62", "role": "address0" }} , 
 	{ "name": "buff_B_62_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_62", "role": "ce0" }} , 
 	{ "name": "buff_B_62_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_62", "role": "we0" }} , 
 	{ "name": "buff_B_62_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_62", "role": "d0" }} , 
 	{ "name": "buff_A_63_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_A_63", "role": "address0" }} , 
 	{ "name": "buff_A_63_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_63", "role": "ce0" }} , 
 	{ "name": "buff_A_63_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_A_63", "role": "we0" }} , 
 	{ "name": "buff_A_63_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_A_63", "role": "d0" }} , 
 	{ "name": "buff_B_63_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buff_B_63", "role": "address0" }} , 
 	{ "name": "buff_B_63_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_63", "role": "ce0" }} , 
 	{ "name": "buff_B_63_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_B_63", "role": "we0" }} , 
 	{ "name": "buff_B_63_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_B_63", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "gesummv_Pipeline_lprd_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2050", "EstimateLatencyMax" : "2050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buff_x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_y_out", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_47", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_47", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_48", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_48", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_49", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_49", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_50", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_50", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_51", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_51", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_52", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_52", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_53", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_53", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_54", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_54", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_55", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_55", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_56", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_56", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_57", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_57", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_58", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_58", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_59", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_59", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_60", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_60", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_61", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_61", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_62", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_62", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_A_63", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_B_63", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "lprd_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gesummv_Pipeline_lprd_1 {
		A {Type I LastRead 32 FirstWrite -1}
		B {Type I LastRead 32 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
		buff_x {Type O LastRead -1 FirstWrite 1}
		tmp1 {Type O LastRead -1 FirstWrite 0}
		tmp2 {Type O LastRead -1 FirstWrite 0}
		buff_y_out {Type O LastRead -1 FirstWrite 0}
		buff_A_0 {Type O LastRead -1 FirstWrite 1}
		buff_B_0 {Type O LastRead -1 FirstWrite 1}
		buff_A_1 {Type O LastRead -1 FirstWrite 1}
		buff_B_1 {Type O LastRead -1 FirstWrite 1}
		buff_A_2 {Type O LastRead -1 FirstWrite 2}
		buff_B_2 {Type O LastRead -1 FirstWrite 2}
		buff_A_3 {Type O LastRead -1 FirstWrite 2}
		buff_B_3 {Type O LastRead -1 FirstWrite 2}
		buff_A_4 {Type O LastRead -1 FirstWrite 3}
		buff_B_4 {Type O LastRead -1 FirstWrite 3}
		buff_A_5 {Type O LastRead -1 FirstWrite 3}
		buff_B_5 {Type O LastRead -1 FirstWrite 3}
		buff_A_6 {Type O LastRead -1 FirstWrite 4}
		buff_B_6 {Type O LastRead -1 FirstWrite 4}
		buff_A_7 {Type O LastRead -1 FirstWrite 4}
		buff_B_7 {Type O LastRead -1 FirstWrite 4}
		buff_A_8 {Type O LastRead -1 FirstWrite 5}
		buff_B_8 {Type O LastRead -1 FirstWrite 5}
		buff_A_9 {Type O LastRead -1 FirstWrite 5}
		buff_B_9 {Type O LastRead -1 FirstWrite 5}
		buff_A_10 {Type O LastRead -1 FirstWrite 6}
		buff_B_10 {Type O LastRead -1 FirstWrite 6}
		buff_A_11 {Type O LastRead -1 FirstWrite 6}
		buff_B_11 {Type O LastRead -1 FirstWrite 6}
		buff_A_12 {Type O LastRead -1 FirstWrite 7}
		buff_B_12 {Type O LastRead -1 FirstWrite 7}
		buff_A_13 {Type O LastRead -1 FirstWrite 7}
		buff_B_13 {Type O LastRead -1 FirstWrite 7}
		buff_A_14 {Type O LastRead -1 FirstWrite 8}
		buff_B_14 {Type O LastRead -1 FirstWrite 8}
		buff_A_15 {Type O LastRead -1 FirstWrite 8}
		buff_B_15 {Type O LastRead -1 FirstWrite 8}
		buff_A_16 {Type O LastRead -1 FirstWrite 9}
		buff_B_16 {Type O LastRead -1 FirstWrite 9}
		buff_A_17 {Type O LastRead -1 FirstWrite 9}
		buff_B_17 {Type O LastRead -1 FirstWrite 9}
		buff_A_18 {Type O LastRead -1 FirstWrite 10}
		buff_B_18 {Type O LastRead -1 FirstWrite 10}
		buff_A_19 {Type O LastRead -1 FirstWrite 10}
		buff_B_19 {Type O LastRead -1 FirstWrite 10}
		buff_A_20 {Type O LastRead -1 FirstWrite 11}
		buff_B_20 {Type O LastRead -1 FirstWrite 11}
		buff_A_21 {Type O LastRead -1 FirstWrite 11}
		buff_B_21 {Type O LastRead -1 FirstWrite 11}
		buff_A_22 {Type O LastRead -1 FirstWrite 12}
		buff_B_22 {Type O LastRead -1 FirstWrite 12}
		buff_A_23 {Type O LastRead -1 FirstWrite 12}
		buff_B_23 {Type O LastRead -1 FirstWrite 12}
		buff_A_24 {Type O LastRead -1 FirstWrite 13}
		buff_B_24 {Type O LastRead -1 FirstWrite 13}
		buff_A_25 {Type O LastRead -1 FirstWrite 13}
		buff_B_25 {Type O LastRead -1 FirstWrite 13}
		buff_A_26 {Type O LastRead -1 FirstWrite 14}
		buff_B_26 {Type O LastRead -1 FirstWrite 14}
		buff_A_27 {Type O LastRead -1 FirstWrite 14}
		buff_B_27 {Type O LastRead -1 FirstWrite 14}
		buff_A_28 {Type O LastRead -1 FirstWrite 15}
		buff_B_28 {Type O LastRead -1 FirstWrite 15}
		buff_A_29 {Type O LastRead -1 FirstWrite 15}
		buff_B_29 {Type O LastRead -1 FirstWrite 15}
		buff_A_30 {Type O LastRead -1 FirstWrite 16}
		buff_B_30 {Type O LastRead -1 FirstWrite 16}
		buff_A_31 {Type O LastRead -1 FirstWrite 16}
		buff_B_31 {Type O LastRead -1 FirstWrite 16}
		buff_A_32 {Type O LastRead -1 FirstWrite 17}
		buff_B_32 {Type O LastRead -1 FirstWrite 17}
		buff_A_33 {Type O LastRead -1 FirstWrite 17}
		buff_B_33 {Type O LastRead -1 FirstWrite 17}
		buff_A_34 {Type O LastRead -1 FirstWrite 18}
		buff_B_34 {Type O LastRead -1 FirstWrite 18}
		buff_A_35 {Type O LastRead -1 FirstWrite 18}
		buff_B_35 {Type O LastRead -1 FirstWrite 18}
		buff_A_36 {Type O LastRead -1 FirstWrite 19}
		buff_B_36 {Type O LastRead -1 FirstWrite 19}
		buff_A_37 {Type O LastRead -1 FirstWrite 19}
		buff_B_37 {Type O LastRead -1 FirstWrite 19}
		buff_A_38 {Type O LastRead -1 FirstWrite 20}
		buff_B_38 {Type O LastRead -1 FirstWrite 20}
		buff_A_39 {Type O LastRead -1 FirstWrite 20}
		buff_B_39 {Type O LastRead -1 FirstWrite 20}
		buff_A_40 {Type O LastRead -1 FirstWrite 21}
		buff_B_40 {Type O LastRead -1 FirstWrite 21}
		buff_A_41 {Type O LastRead -1 FirstWrite 21}
		buff_B_41 {Type O LastRead -1 FirstWrite 21}
		buff_A_42 {Type O LastRead -1 FirstWrite 22}
		buff_B_42 {Type O LastRead -1 FirstWrite 22}
		buff_A_43 {Type O LastRead -1 FirstWrite 22}
		buff_B_43 {Type O LastRead -1 FirstWrite 22}
		buff_A_44 {Type O LastRead -1 FirstWrite 23}
		buff_B_44 {Type O LastRead -1 FirstWrite 23}
		buff_A_45 {Type O LastRead -1 FirstWrite 23}
		buff_B_45 {Type O LastRead -1 FirstWrite 23}
		buff_A_46 {Type O LastRead -1 FirstWrite 24}
		buff_B_46 {Type O LastRead -1 FirstWrite 24}
		buff_A_47 {Type O LastRead -1 FirstWrite 24}
		buff_B_47 {Type O LastRead -1 FirstWrite 24}
		buff_A_48 {Type O LastRead -1 FirstWrite 25}
		buff_B_48 {Type O LastRead -1 FirstWrite 25}
		buff_A_49 {Type O LastRead -1 FirstWrite 25}
		buff_B_49 {Type O LastRead -1 FirstWrite 25}
		buff_A_50 {Type O LastRead -1 FirstWrite 26}
		buff_B_50 {Type O LastRead -1 FirstWrite 26}
		buff_A_51 {Type O LastRead -1 FirstWrite 26}
		buff_B_51 {Type O LastRead -1 FirstWrite 26}
		buff_A_52 {Type O LastRead -1 FirstWrite 27}
		buff_B_52 {Type O LastRead -1 FirstWrite 27}
		buff_A_53 {Type O LastRead -1 FirstWrite 27}
		buff_B_53 {Type O LastRead -1 FirstWrite 27}
		buff_A_54 {Type O LastRead -1 FirstWrite 28}
		buff_B_54 {Type O LastRead -1 FirstWrite 28}
		buff_A_55 {Type O LastRead -1 FirstWrite 28}
		buff_B_55 {Type O LastRead -1 FirstWrite 28}
		buff_A_56 {Type O LastRead -1 FirstWrite 29}
		buff_B_56 {Type O LastRead -1 FirstWrite 29}
		buff_A_57 {Type O LastRead -1 FirstWrite 29}
		buff_B_57 {Type O LastRead -1 FirstWrite 29}
		buff_A_58 {Type O LastRead -1 FirstWrite 30}
		buff_B_58 {Type O LastRead -1 FirstWrite 30}
		buff_A_59 {Type O LastRead -1 FirstWrite 30}
		buff_B_59 {Type O LastRead -1 FirstWrite 30}
		buff_A_60 {Type O LastRead -1 FirstWrite 31}
		buff_B_60 {Type O LastRead -1 FirstWrite 31}
		buff_A_61 {Type O LastRead -1 FirstWrite 31}
		buff_B_61 {Type O LastRead -1 FirstWrite 31}
		buff_A_62 {Type O LastRead -1 FirstWrite 32}
		buff_B_62 {Type O LastRead -1 FirstWrite 32}
		buff_A_63 {Type O LastRead -1 FirstWrite 32}
		buff_B_63 {Type O LastRead -1 FirstWrite 32}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2050", "Max" : "2050"}
	, {"Name" : "Interval", "Min" : "2050", "Max" : "2050"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	A { ap_memory {  { A_address0 mem_address 1 12 }  { A_ce0 mem_ce 1 1 }  { A_q0 in_data 0 32 }  { A_address1 MemPortADDR2 1 12 }  { A_ce1 MemPortCE2 1 1 }  { A_q1 in_data 0 32 } } }
	B { ap_memory {  { B_address0 mem_address 1 12 }  { B_ce0 mem_ce 1 1 }  { B_q0 in_data 0 32 }  { B_address1 MemPortADDR2 1 12 }  { B_ce1 MemPortCE2 1 1 }  { B_q1 in_data 0 32 } } }
	x { ap_memory {  { x_address0 mem_address 1 6 }  { x_ce0 mem_ce 1 1 }  { x_q0 in_data 0 32 } } }
	buff_x { ap_memory {  { buff_x_address0 mem_address 1 6 }  { buff_x_ce0 mem_ce 1 1 }  { buff_x_we0 mem_we 1 1 }  { buff_x_d0 mem_din 1 32 } } }
	tmp1 { ap_memory {  { tmp1_address0 mem_address 1 6 }  { tmp1_ce0 mem_ce 1 1 }  { tmp1_we0 mem_we 1 1 }  { tmp1_d0 mem_din 1 32 } } }
	tmp2 { ap_memory {  { tmp2_address0 mem_address 1 6 }  { tmp2_ce0 mem_ce 1 1 }  { tmp2_we0 mem_we 1 1 }  { tmp2_d0 mem_din 1 32 } } }
	buff_y_out { ap_memory {  { buff_y_out_address0 mem_address 1 6 }  { buff_y_out_ce0 mem_ce 1 1 }  { buff_y_out_we0 mem_we 1 1 }  { buff_y_out_d0 mem_din 1 32 } } }
	buff_A_0 { ap_memory {  { buff_A_0_address0 mem_address 1 6 }  { buff_A_0_ce0 mem_ce 1 1 }  { buff_A_0_we0 mem_we 1 1 }  { buff_A_0_d0 mem_din 1 32 } } }
	buff_B_0 { ap_memory {  { buff_B_0_address0 mem_address 1 6 }  { buff_B_0_ce0 mem_ce 1 1 }  { buff_B_0_we0 mem_we 1 1 }  { buff_B_0_d0 mem_din 1 32 } } }
	buff_A_1 { ap_memory {  { buff_A_1_address0 mem_address 1 6 }  { buff_A_1_ce0 mem_ce 1 1 }  { buff_A_1_we0 mem_we 1 1 }  { buff_A_1_d0 mem_din 1 32 } } }
	buff_B_1 { ap_memory {  { buff_B_1_address0 mem_address 1 6 }  { buff_B_1_ce0 mem_ce 1 1 }  { buff_B_1_we0 mem_we 1 1 }  { buff_B_1_d0 mem_din 1 32 } } }
	buff_A_2 { ap_memory {  { buff_A_2_address0 mem_address 1 6 }  { buff_A_2_ce0 mem_ce 1 1 }  { buff_A_2_we0 mem_we 1 1 }  { buff_A_2_d0 mem_din 1 32 } } }
	buff_B_2 { ap_memory {  { buff_B_2_address0 mem_address 1 6 }  { buff_B_2_ce0 mem_ce 1 1 }  { buff_B_2_we0 mem_we 1 1 }  { buff_B_2_d0 mem_din 1 32 } } }
	buff_A_3 { ap_memory {  { buff_A_3_address0 mem_address 1 6 }  { buff_A_3_ce0 mem_ce 1 1 }  { buff_A_3_we0 mem_we 1 1 }  { buff_A_3_d0 mem_din 1 32 } } }
	buff_B_3 { ap_memory {  { buff_B_3_address0 mem_address 1 6 }  { buff_B_3_ce0 mem_ce 1 1 }  { buff_B_3_we0 mem_we 1 1 }  { buff_B_3_d0 mem_din 1 32 } } }
	buff_A_4 { ap_memory {  { buff_A_4_address0 mem_address 1 6 }  { buff_A_4_ce0 mem_ce 1 1 }  { buff_A_4_we0 mem_we 1 1 }  { buff_A_4_d0 mem_din 1 32 } } }
	buff_B_4 { ap_memory {  { buff_B_4_address0 mem_address 1 6 }  { buff_B_4_ce0 mem_ce 1 1 }  { buff_B_4_we0 mem_we 1 1 }  { buff_B_4_d0 mem_din 1 32 } } }
	buff_A_5 { ap_memory {  { buff_A_5_address0 mem_address 1 6 }  { buff_A_5_ce0 mem_ce 1 1 }  { buff_A_5_we0 mem_we 1 1 }  { buff_A_5_d0 mem_din 1 32 } } }
	buff_B_5 { ap_memory {  { buff_B_5_address0 mem_address 1 6 }  { buff_B_5_ce0 mem_ce 1 1 }  { buff_B_5_we0 mem_we 1 1 }  { buff_B_5_d0 mem_din 1 32 } } }
	buff_A_6 { ap_memory {  { buff_A_6_address0 mem_address 1 6 }  { buff_A_6_ce0 mem_ce 1 1 }  { buff_A_6_we0 mem_we 1 1 }  { buff_A_6_d0 mem_din 1 32 } } }
	buff_B_6 { ap_memory {  { buff_B_6_address0 mem_address 1 6 }  { buff_B_6_ce0 mem_ce 1 1 }  { buff_B_6_we0 mem_we 1 1 }  { buff_B_6_d0 mem_din 1 32 } } }
	buff_A_7 { ap_memory {  { buff_A_7_address0 mem_address 1 6 }  { buff_A_7_ce0 mem_ce 1 1 }  { buff_A_7_we0 mem_we 1 1 }  { buff_A_7_d0 mem_din 1 32 } } }
	buff_B_7 { ap_memory {  { buff_B_7_address0 mem_address 1 6 }  { buff_B_7_ce0 mem_ce 1 1 }  { buff_B_7_we0 mem_we 1 1 }  { buff_B_7_d0 mem_din 1 32 } } }
	buff_A_8 { ap_memory {  { buff_A_8_address0 mem_address 1 6 }  { buff_A_8_ce0 mem_ce 1 1 }  { buff_A_8_we0 mem_we 1 1 }  { buff_A_8_d0 mem_din 1 32 } } }
	buff_B_8 { ap_memory {  { buff_B_8_address0 mem_address 1 6 }  { buff_B_8_ce0 mem_ce 1 1 }  { buff_B_8_we0 mem_we 1 1 }  { buff_B_8_d0 mem_din 1 32 } } }
	buff_A_9 { ap_memory {  { buff_A_9_address0 mem_address 1 6 }  { buff_A_9_ce0 mem_ce 1 1 }  { buff_A_9_we0 mem_we 1 1 }  { buff_A_9_d0 mem_din 1 32 } } }
	buff_B_9 { ap_memory {  { buff_B_9_address0 mem_address 1 6 }  { buff_B_9_ce0 mem_ce 1 1 }  { buff_B_9_we0 mem_we 1 1 }  { buff_B_9_d0 mem_din 1 32 } } }
	buff_A_10 { ap_memory {  { buff_A_10_address0 mem_address 1 6 }  { buff_A_10_ce0 mem_ce 1 1 }  { buff_A_10_we0 mem_we 1 1 }  { buff_A_10_d0 mem_din 1 32 } } }
	buff_B_10 { ap_memory {  { buff_B_10_address0 mem_address 1 6 }  { buff_B_10_ce0 mem_ce 1 1 }  { buff_B_10_we0 mem_we 1 1 }  { buff_B_10_d0 mem_din 1 32 } } }
	buff_A_11 { ap_memory {  { buff_A_11_address0 mem_address 1 6 }  { buff_A_11_ce0 mem_ce 1 1 }  { buff_A_11_we0 mem_we 1 1 }  { buff_A_11_d0 mem_din 1 32 } } }
	buff_B_11 { ap_memory {  { buff_B_11_address0 mem_address 1 6 }  { buff_B_11_ce0 mem_ce 1 1 }  { buff_B_11_we0 mem_we 1 1 }  { buff_B_11_d0 mem_din 1 32 } } }
	buff_A_12 { ap_memory {  { buff_A_12_address0 mem_address 1 6 }  { buff_A_12_ce0 mem_ce 1 1 }  { buff_A_12_we0 mem_we 1 1 }  { buff_A_12_d0 mem_din 1 32 } } }
	buff_B_12 { ap_memory {  { buff_B_12_address0 mem_address 1 6 }  { buff_B_12_ce0 mem_ce 1 1 }  { buff_B_12_we0 mem_we 1 1 }  { buff_B_12_d0 mem_din 1 32 } } }
	buff_A_13 { ap_memory {  { buff_A_13_address0 mem_address 1 6 }  { buff_A_13_ce0 mem_ce 1 1 }  { buff_A_13_we0 mem_we 1 1 }  { buff_A_13_d0 mem_din 1 32 } } }
	buff_B_13 { ap_memory {  { buff_B_13_address0 mem_address 1 6 }  { buff_B_13_ce0 mem_ce 1 1 }  { buff_B_13_we0 mem_we 1 1 }  { buff_B_13_d0 mem_din 1 32 } } }
	buff_A_14 { ap_memory {  { buff_A_14_address0 mem_address 1 6 }  { buff_A_14_ce0 mem_ce 1 1 }  { buff_A_14_we0 mem_we 1 1 }  { buff_A_14_d0 mem_din 1 32 } } }
	buff_B_14 { ap_memory {  { buff_B_14_address0 mem_address 1 6 }  { buff_B_14_ce0 mem_ce 1 1 }  { buff_B_14_we0 mem_we 1 1 }  { buff_B_14_d0 mem_din 1 32 } } }
	buff_A_15 { ap_memory {  { buff_A_15_address0 mem_address 1 6 }  { buff_A_15_ce0 mem_ce 1 1 }  { buff_A_15_we0 mem_we 1 1 }  { buff_A_15_d0 mem_din 1 32 } } }
	buff_B_15 { ap_memory {  { buff_B_15_address0 mem_address 1 6 }  { buff_B_15_ce0 mem_ce 1 1 }  { buff_B_15_we0 mem_we 1 1 }  { buff_B_15_d0 mem_din 1 32 } } }
	buff_A_16 { ap_memory {  { buff_A_16_address0 mem_address 1 6 }  { buff_A_16_ce0 mem_ce 1 1 }  { buff_A_16_we0 mem_we 1 1 }  { buff_A_16_d0 mem_din 1 32 } } }
	buff_B_16 { ap_memory {  { buff_B_16_address0 mem_address 1 6 }  { buff_B_16_ce0 mem_ce 1 1 }  { buff_B_16_we0 mem_we 1 1 }  { buff_B_16_d0 mem_din 1 32 } } }
	buff_A_17 { ap_memory {  { buff_A_17_address0 mem_address 1 6 }  { buff_A_17_ce0 mem_ce 1 1 }  { buff_A_17_we0 mem_we 1 1 }  { buff_A_17_d0 mem_din 1 32 } } }
	buff_B_17 { ap_memory {  { buff_B_17_address0 mem_address 1 6 }  { buff_B_17_ce0 mem_ce 1 1 }  { buff_B_17_we0 mem_we 1 1 }  { buff_B_17_d0 mem_din 1 32 } } }
	buff_A_18 { ap_memory {  { buff_A_18_address0 mem_address 1 6 }  { buff_A_18_ce0 mem_ce 1 1 }  { buff_A_18_we0 mem_we 1 1 }  { buff_A_18_d0 mem_din 1 32 } } }
	buff_B_18 { ap_memory {  { buff_B_18_address0 mem_address 1 6 }  { buff_B_18_ce0 mem_ce 1 1 }  { buff_B_18_we0 mem_we 1 1 }  { buff_B_18_d0 mem_din 1 32 } } }
	buff_A_19 { ap_memory {  { buff_A_19_address0 mem_address 1 6 }  { buff_A_19_ce0 mem_ce 1 1 }  { buff_A_19_we0 mem_we 1 1 }  { buff_A_19_d0 mem_din 1 32 } } }
	buff_B_19 { ap_memory {  { buff_B_19_address0 mem_address 1 6 }  { buff_B_19_ce0 mem_ce 1 1 }  { buff_B_19_we0 mem_we 1 1 }  { buff_B_19_d0 mem_din 1 32 } } }
	buff_A_20 { ap_memory {  { buff_A_20_address0 mem_address 1 6 }  { buff_A_20_ce0 mem_ce 1 1 }  { buff_A_20_we0 mem_we 1 1 }  { buff_A_20_d0 mem_din 1 32 } } }
	buff_B_20 { ap_memory {  { buff_B_20_address0 mem_address 1 6 }  { buff_B_20_ce0 mem_ce 1 1 }  { buff_B_20_we0 mem_we 1 1 }  { buff_B_20_d0 mem_din 1 32 } } }
	buff_A_21 { ap_memory {  { buff_A_21_address0 mem_address 1 6 }  { buff_A_21_ce0 mem_ce 1 1 }  { buff_A_21_we0 mem_we 1 1 }  { buff_A_21_d0 mem_din 1 32 } } }
	buff_B_21 { ap_memory {  { buff_B_21_address0 mem_address 1 6 }  { buff_B_21_ce0 mem_ce 1 1 }  { buff_B_21_we0 mem_we 1 1 }  { buff_B_21_d0 mem_din 1 32 } } }
	buff_A_22 { ap_memory {  { buff_A_22_address0 mem_address 1 6 }  { buff_A_22_ce0 mem_ce 1 1 }  { buff_A_22_we0 mem_we 1 1 }  { buff_A_22_d0 mem_din 1 32 } } }
	buff_B_22 { ap_memory {  { buff_B_22_address0 mem_address 1 6 }  { buff_B_22_ce0 mem_ce 1 1 }  { buff_B_22_we0 mem_we 1 1 }  { buff_B_22_d0 mem_din 1 32 } } }
	buff_A_23 { ap_memory {  { buff_A_23_address0 mem_address 1 6 }  { buff_A_23_ce0 mem_ce 1 1 }  { buff_A_23_we0 mem_we 1 1 }  { buff_A_23_d0 mem_din 1 32 } } }
	buff_B_23 { ap_memory {  { buff_B_23_address0 mem_address 1 6 }  { buff_B_23_ce0 mem_ce 1 1 }  { buff_B_23_we0 mem_we 1 1 }  { buff_B_23_d0 mem_din 1 32 } } }
	buff_A_24 { ap_memory {  { buff_A_24_address0 mem_address 1 6 }  { buff_A_24_ce0 mem_ce 1 1 }  { buff_A_24_we0 mem_we 1 1 }  { buff_A_24_d0 mem_din 1 32 } } }
	buff_B_24 { ap_memory {  { buff_B_24_address0 mem_address 1 6 }  { buff_B_24_ce0 mem_ce 1 1 }  { buff_B_24_we0 mem_we 1 1 }  { buff_B_24_d0 mem_din 1 32 } } }
	buff_A_25 { ap_memory {  { buff_A_25_address0 mem_address 1 6 }  { buff_A_25_ce0 mem_ce 1 1 }  { buff_A_25_we0 mem_we 1 1 }  { buff_A_25_d0 mem_din 1 32 } } }
	buff_B_25 { ap_memory {  { buff_B_25_address0 mem_address 1 6 }  { buff_B_25_ce0 mem_ce 1 1 }  { buff_B_25_we0 mem_we 1 1 }  { buff_B_25_d0 mem_din 1 32 } } }
	buff_A_26 { ap_memory {  { buff_A_26_address0 mem_address 1 6 }  { buff_A_26_ce0 mem_ce 1 1 }  { buff_A_26_we0 mem_we 1 1 }  { buff_A_26_d0 mem_din 1 32 } } }
	buff_B_26 { ap_memory {  { buff_B_26_address0 mem_address 1 6 }  { buff_B_26_ce0 mem_ce 1 1 }  { buff_B_26_we0 mem_we 1 1 }  { buff_B_26_d0 mem_din 1 32 } } }
	buff_A_27 { ap_memory {  { buff_A_27_address0 mem_address 1 6 }  { buff_A_27_ce0 mem_ce 1 1 }  { buff_A_27_we0 mem_we 1 1 }  { buff_A_27_d0 mem_din 1 32 } } }
	buff_B_27 { ap_memory {  { buff_B_27_address0 mem_address 1 6 }  { buff_B_27_ce0 mem_ce 1 1 }  { buff_B_27_we0 mem_we 1 1 }  { buff_B_27_d0 mem_din 1 32 } } }
	buff_A_28 { ap_memory {  { buff_A_28_address0 mem_address 1 6 }  { buff_A_28_ce0 mem_ce 1 1 }  { buff_A_28_we0 mem_we 1 1 }  { buff_A_28_d0 mem_din 1 32 } } }
	buff_B_28 { ap_memory {  { buff_B_28_address0 mem_address 1 6 }  { buff_B_28_ce0 mem_ce 1 1 }  { buff_B_28_we0 mem_we 1 1 }  { buff_B_28_d0 mem_din 1 32 } } }
	buff_A_29 { ap_memory {  { buff_A_29_address0 mem_address 1 6 }  { buff_A_29_ce0 mem_ce 1 1 }  { buff_A_29_we0 mem_we 1 1 }  { buff_A_29_d0 mem_din 1 32 } } }
	buff_B_29 { ap_memory {  { buff_B_29_address0 mem_address 1 6 }  { buff_B_29_ce0 mem_ce 1 1 }  { buff_B_29_we0 mem_we 1 1 }  { buff_B_29_d0 mem_din 1 32 } } }
	buff_A_30 { ap_memory {  { buff_A_30_address0 mem_address 1 6 }  { buff_A_30_ce0 mem_ce 1 1 }  { buff_A_30_we0 mem_we 1 1 }  { buff_A_30_d0 mem_din 1 32 } } }
	buff_B_30 { ap_memory {  { buff_B_30_address0 mem_address 1 6 }  { buff_B_30_ce0 mem_ce 1 1 }  { buff_B_30_we0 mem_we 1 1 }  { buff_B_30_d0 mem_din 1 32 } } }
	buff_A_31 { ap_memory {  { buff_A_31_address0 mem_address 1 6 }  { buff_A_31_ce0 mem_ce 1 1 }  { buff_A_31_we0 mem_we 1 1 }  { buff_A_31_d0 mem_din 1 32 } } }
	buff_B_31 { ap_memory {  { buff_B_31_address0 mem_address 1 6 }  { buff_B_31_ce0 mem_ce 1 1 }  { buff_B_31_we0 mem_we 1 1 }  { buff_B_31_d0 mem_din 1 32 } } }
	buff_A_32 { ap_memory {  { buff_A_32_address0 mem_address 1 6 }  { buff_A_32_ce0 mem_ce 1 1 }  { buff_A_32_we0 mem_we 1 1 }  { buff_A_32_d0 mem_din 1 32 } } }
	buff_B_32 { ap_memory {  { buff_B_32_address0 mem_address 1 6 }  { buff_B_32_ce0 mem_ce 1 1 }  { buff_B_32_we0 mem_we 1 1 }  { buff_B_32_d0 mem_din 1 32 } } }
	buff_A_33 { ap_memory {  { buff_A_33_address0 mem_address 1 6 }  { buff_A_33_ce0 mem_ce 1 1 }  { buff_A_33_we0 mem_we 1 1 }  { buff_A_33_d0 mem_din 1 32 } } }
	buff_B_33 { ap_memory {  { buff_B_33_address0 mem_address 1 6 }  { buff_B_33_ce0 mem_ce 1 1 }  { buff_B_33_we0 mem_we 1 1 }  { buff_B_33_d0 mem_din 1 32 } } }
	buff_A_34 { ap_memory {  { buff_A_34_address0 mem_address 1 6 }  { buff_A_34_ce0 mem_ce 1 1 }  { buff_A_34_we0 mem_we 1 1 }  { buff_A_34_d0 mem_din 1 32 } } }
	buff_B_34 { ap_memory {  { buff_B_34_address0 mem_address 1 6 }  { buff_B_34_ce0 mem_ce 1 1 }  { buff_B_34_we0 mem_we 1 1 }  { buff_B_34_d0 mem_din 1 32 } } }
	buff_A_35 { ap_memory {  { buff_A_35_address0 mem_address 1 6 }  { buff_A_35_ce0 mem_ce 1 1 }  { buff_A_35_we0 mem_we 1 1 }  { buff_A_35_d0 mem_din 1 32 } } }
	buff_B_35 { ap_memory {  { buff_B_35_address0 mem_address 1 6 }  { buff_B_35_ce0 mem_ce 1 1 }  { buff_B_35_we0 mem_we 1 1 }  { buff_B_35_d0 mem_din 1 32 } } }
	buff_A_36 { ap_memory {  { buff_A_36_address0 mem_address 1 6 }  { buff_A_36_ce0 mem_ce 1 1 }  { buff_A_36_we0 mem_we 1 1 }  { buff_A_36_d0 mem_din 1 32 } } }
	buff_B_36 { ap_memory {  { buff_B_36_address0 mem_address 1 6 }  { buff_B_36_ce0 mem_ce 1 1 }  { buff_B_36_we0 mem_we 1 1 }  { buff_B_36_d0 mem_din 1 32 } } }
	buff_A_37 { ap_memory {  { buff_A_37_address0 mem_address 1 6 }  { buff_A_37_ce0 mem_ce 1 1 }  { buff_A_37_we0 mem_we 1 1 }  { buff_A_37_d0 mem_din 1 32 } } }
	buff_B_37 { ap_memory {  { buff_B_37_address0 mem_address 1 6 }  { buff_B_37_ce0 mem_ce 1 1 }  { buff_B_37_we0 mem_we 1 1 }  { buff_B_37_d0 mem_din 1 32 } } }
	buff_A_38 { ap_memory {  { buff_A_38_address0 mem_address 1 6 }  { buff_A_38_ce0 mem_ce 1 1 }  { buff_A_38_we0 mem_we 1 1 }  { buff_A_38_d0 mem_din 1 32 } } }
	buff_B_38 { ap_memory {  { buff_B_38_address0 mem_address 1 6 }  { buff_B_38_ce0 mem_ce 1 1 }  { buff_B_38_we0 mem_we 1 1 }  { buff_B_38_d0 mem_din 1 32 } } }
	buff_A_39 { ap_memory {  { buff_A_39_address0 mem_address 1 6 }  { buff_A_39_ce0 mem_ce 1 1 }  { buff_A_39_we0 mem_we 1 1 }  { buff_A_39_d0 mem_din 1 32 } } }
	buff_B_39 { ap_memory {  { buff_B_39_address0 mem_address 1 6 }  { buff_B_39_ce0 mem_ce 1 1 }  { buff_B_39_we0 mem_we 1 1 }  { buff_B_39_d0 mem_din 1 32 } } }
	buff_A_40 { ap_memory {  { buff_A_40_address0 mem_address 1 6 }  { buff_A_40_ce0 mem_ce 1 1 }  { buff_A_40_we0 mem_we 1 1 }  { buff_A_40_d0 mem_din 1 32 } } }
	buff_B_40 { ap_memory {  { buff_B_40_address0 mem_address 1 6 }  { buff_B_40_ce0 mem_ce 1 1 }  { buff_B_40_we0 mem_we 1 1 }  { buff_B_40_d0 mem_din 1 32 } } }
	buff_A_41 { ap_memory {  { buff_A_41_address0 mem_address 1 6 }  { buff_A_41_ce0 mem_ce 1 1 }  { buff_A_41_we0 mem_we 1 1 }  { buff_A_41_d0 mem_din 1 32 } } }
	buff_B_41 { ap_memory {  { buff_B_41_address0 mem_address 1 6 }  { buff_B_41_ce0 mem_ce 1 1 }  { buff_B_41_we0 mem_we 1 1 }  { buff_B_41_d0 mem_din 1 32 } } }
	buff_A_42 { ap_memory {  { buff_A_42_address0 mem_address 1 6 }  { buff_A_42_ce0 mem_ce 1 1 }  { buff_A_42_we0 mem_we 1 1 }  { buff_A_42_d0 mem_din 1 32 } } }
	buff_B_42 { ap_memory {  { buff_B_42_address0 mem_address 1 6 }  { buff_B_42_ce0 mem_ce 1 1 }  { buff_B_42_we0 mem_we 1 1 }  { buff_B_42_d0 mem_din 1 32 } } }
	buff_A_43 { ap_memory {  { buff_A_43_address0 mem_address 1 6 }  { buff_A_43_ce0 mem_ce 1 1 }  { buff_A_43_we0 mem_we 1 1 }  { buff_A_43_d0 mem_din 1 32 } } }
	buff_B_43 { ap_memory {  { buff_B_43_address0 mem_address 1 6 }  { buff_B_43_ce0 mem_ce 1 1 }  { buff_B_43_we0 mem_we 1 1 }  { buff_B_43_d0 mem_din 1 32 } } }
	buff_A_44 { ap_memory {  { buff_A_44_address0 mem_address 1 6 }  { buff_A_44_ce0 mem_ce 1 1 }  { buff_A_44_we0 mem_we 1 1 }  { buff_A_44_d0 mem_din 1 32 } } }
	buff_B_44 { ap_memory {  { buff_B_44_address0 mem_address 1 6 }  { buff_B_44_ce0 mem_ce 1 1 }  { buff_B_44_we0 mem_we 1 1 }  { buff_B_44_d0 mem_din 1 32 } } }
	buff_A_45 { ap_memory {  { buff_A_45_address0 mem_address 1 6 }  { buff_A_45_ce0 mem_ce 1 1 }  { buff_A_45_we0 mem_we 1 1 }  { buff_A_45_d0 mem_din 1 32 } } }
	buff_B_45 { ap_memory {  { buff_B_45_address0 mem_address 1 6 }  { buff_B_45_ce0 mem_ce 1 1 }  { buff_B_45_we0 mem_we 1 1 }  { buff_B_45_d0 mem_din 1 32 } } }
	buff_A_46 { ap_memory {  { buff_A_46_address0 mem_address 1 6 }  { buff_A_46_ce0 mem_ce 1 1 }  { buff_A_46_we0 mem_we 1 1 }  { buff_A_46_d0 mem_din 1 32 } } }
	buff_B_46 { ap_memory {  { buff_B_46_address0 mem_address 1 6 }  { buff_B_46_ce0 mem_ce 1 1 }  { buff_B_46_we0 mem_we 1 1 }  { buff_B_46_d0 mem_din 1 32 } } }
	buff_A_47 { ap_memory {  { buff_A_47_address0 mem_address 1 6 }  { buff_A_47_ce0 mem_ce 1 1 }  { buff_A_47_we0 mem_we 1 1 }  { buff_A_47_d0 mem_din 1 32 } } }
	buff_B_47 { ap_memory {  { buff_B_47_address0 mem_address 1 6 }  { buff_B_47_ce0 mem_ce 1 1 }  { buff_B_47_we0 mem_we 1 1 }  { buff_B_47_d0 mem_din 1 32 } } }
	buff_A_48 { ap_memory {  { buff_A_48_address0 mem_address 1 6 }  { buff_A_48_ce0 mem_ce 1 1 }  { buff_A_48_we0 mem_we 1 1 }  { buff_A_48_d0 mem_din 1 32 } } }
	buff_B_48 { ap_memory {  { buff_B_48_address0 mem_address 1 6 }  { buff_B_48_ce0 mem_ce 1 1 }  { buff_B_48_we0 mem_we 1 1 }  { buff_B_48_d0 mem_din 1 32 } } }
	buff_A_49 { ap_memory {  { buff_A_49_address0 mem_address 1 6 }  { buff_A_49_ce0 mem_ce 1 1 }  { buff_A_49_we0 mem_we 1 1 }  { buff_A_49_d0 mem_din 1 32 } } }
	buff_B_49 { ap_memory {  { buff_B_49_address0 mem_address 1 6 }  { buff_B_49_ce0 mem_ce 1 1 }  { buff_B_49_we0 mem_we 1 1 }  { buff_B_49_d0 mem_din 1 32 } } }
	buff_A_50 { ap_memory {  { buff_A_50_address0 mem_address 1 6 }  { buff_A_50_ce0 mem_ce 1 1 }  { buff_A_50_we0 mem_we 1 1 }  { buff_A_50_d0 mem_din 1 32 } } }
	buff_B_50 { ap_memory {  { buff_B_50_address0 mem_address 1 6 }  { buff_B_50_ce0 mem_ce 1 1 }  { buff_B_50_we0 mem_we 1 1 }  { buff_B_50_d0 mem_din 1 32 } } }
	buff_A_51 { ap_memory {  { buff_A_51_address0 mem_address 1 6 }  { buff_A_51_ce0 mem_ce 1 1 }  { buff_A_51_we0 mem_we 1 1 }  { buff_A_51_d0 mem_din 1 32 } } }
	buff_B_51 { ap_memory {  { buff_B_51_address0 mem_address 1 6 }  { buff_B_51_ce0 mem_ce 1 1 }  { buff_B_51_we0 mem_we 1 1 }  { buff_B_51_d0 mem_din 1 32 } } }
	buff_A_52 { ap_memory {  { buff_A_52_address0 mem_address 1 6 }  { buff_A_52_ce0 mem_ce 1 1 }  { buff_A_52_we0 mem_we 1 1 }  { buff_A_52_d0 mem_din 1 32 } } }
	buff_B_52 { ap_memory {  { buff_B_52_address0 mem_address 1 6 }  { buff_B_52_ce0 mem_ce 1 1 }  { buff_B_52_we0 mem_we 1 1 }  { buff_B_52_d0 mem_din 1 32 } } }
	buff_A_53 { ap_memory {  { buff_A_53_address0 mem_address 1 6 }  { buff_A_53_ce0 mem_ce 1 1 }  { buff_A_53_we0 mem_we 1 1 }  { buff_A_53_d0 mem_din 1 32 } } }
	buff_B_53 { ap_memory {  { buff_B_53_address0 mem_address 1 6 }  { buff_B_53_ce0 mem_ce 1 1 }  { buff_B_53_we0 mem_we 1 1 }  { buff_B_53_d0 mem_din 1 32 } } }
	buff_A_54 { ap_memory {  { buff_A_54_address0 mem_address 1 6 }  { buff_A_54_ce0 mem_ce 1 1 }  { buff_A_54_we0 mem_we 1 1 }  { buff_A_54_d0 mem_din 1 32 } } }
	buff_B_54 { ap_memory {  { buff_B_54_address0 mem_address 1 6 }  { buff_B_54_ce0 mem_ce 1 1 }  { buff_B_54_we0 mem_we 1 1 }  { buff_B_54_d0 mem_din 1 32 } } }
	buff_A_55 { ap_memory {  { buff_A_55_address0 mem_address 1 6 }  { buff_A_55_ce0 mem_ce 1 1 }  { buff_A_55_we0 mem_we 1 1 }  { buff_A_55_d0 mem_din 1 32 } } }
	buff_B_55 { ap_memory {  { buff_B_55_address0 mem_address 1 6 }  { buff_B_55_ce0 mem_ce 1 1 }  { buff_B_55_we0 mem_we 1 1 }  { buff_B_55_d0 mem_din 1 32 } } }
	buff_A_56 { ap_memory {  { buff_A_56_address0 mem_address 1 6 }  { buff_A_56_ce0 mem_ce 1 1 }  { buff_A_56_we0 mem_we 1 1 }  { buff_A_56_d0 mem_din 1 32 } } }
	buff_B_56 { ap_memory {  { buff_B_56_address0 mem_address 1 6 }  { buff_B_56_ce0 mem_ce 1 1 }  { buff_B_56_we0 mem_we 1 1 }  { buff_B_56_d0 mem_din 1 32 } } }
	buff_A_57 { ap_memory {  { buff_A_57_address0 mem_address 1 6 }  { buff_A_57_ce0 mem_ce 1 1 }  { buff_A_57_we0 mem_we 1 1 }  { buff_A_57_d0 mem_din 1 32 } } }
	buff_B_57 { ap_memory {  { buff_B_57_address0 mem_address 1 6 }  { buff_B_57_ce0 mem_ce 1 1 }  { buff_B_57_we0 mem_we 1 1 }  { buff_B_57_d0 mem_din 1 32 } } }
	buff_A_58 { ap_memory {  { buff_A_58_address0 mem_address 1 6 }  { buff_A_58_ce0 mem_ce 1 1 }  { buff_A_58_we0 mem_we 1 1 }  { buff_A_58_d0 mem_din 1 32 } } }
	buff_B_58 { ap_memory {  { buff_B_58_address0 mem_address 1 6 }  { buff_B_58_ce0 mem_ce 1 1 }  { buff_B_58_we0 mem_we 1 1 }  { buff_B_58_d0 mem_din 1 32 } } }
	buff_A_59 { ap_memory {  { buff_A_59_address0 mem_address 1 6 }  { buff_A_59_ce0 mem_ce 1 1 }  { buff_A_59_we0 mem_we 1 1 }  { buff_A_59_d0 mem_din 1 32 } } }
	buff_B_59 { ap_memory {  { buff_B_59_address0 mem_address 1 6 }  { buff_B_59_ce0 mem_ce 1 1 }  { buff_B_59_we0 mem_we 1 1 }  { buff_B_59_d0 mem_din 1 32 } } }
	buff_A_60 { ap_memory {  { buff_A_60_address0 mem_address 1 6 }  { buff_A_60_ce0 mem_ce 1 1 }  { buff_A_60_we0 mem_we 1 1 }  { buff_A_60_d0 mem_din 1 32 } } }
	buff_B_60 { ap_memory {  { buff_B_60_address0 mem_address 1 6 }  { buff_B_60_ce0 mem_ce 1 1 }  { buff_B_60_we0 mem_we 1 1 }  { buff_B_60_d0 mem_din 1 32 } } }
	buff_A_61 { ap_memory {  { buff_A_61_address0 mem_address 1 6 }  { buff_A_61_ce0 mem_ce 1 1 }  { buff_A_61_we0 mem_we 1 1 }  { buff_A_61_d0 mem_din 1 32 } } }
	buff_B_61 { ap_memory {  { buff_B_61_address0 mem_address 1 6 }  { buff_B_61_ce0 mem_ce 1 1 }  { buff_B_61_we0 mem_we 1 1 }  { buff_B_61_d0 mem_din 1 32 } } }
	buff_A_62 { ap_memory {  { buff_A_62_address0 mem_address 1 6 }  { buff_A_62_ce0 mem_ce 1 1 }  { buff_A_62_we0 mem_we 1 1 }  { buff_A_62_d0 mem_din 1 32 } } }
	buff_B_62 { ap_memory {  { buff_B_62_address0 mem_address 1 6 }  { buff_B_62_ce0 mem_ce 1 1 }  { buff_B_62_we0 mem_we 1 1 }  { buff_B_62_d0 mem_din 1 32 } } }
	buff_A_63 { ap_memory {  { buff_A_63_address0 mem_address 1 6 }  { buff_A_63_ce0 mem_ce 1 1 }  { buff_A_63_we0 mem_we 1 1 }  { buff_A_63_d0 mem_din 1 32 } } }
	buff_B_63 { ap_memory {  { buff_B_63_address0 mem_address 1 6 }  { buff_B_63_ce0 mem_ce 1 1 }  { buff_B_63_we0 mem_we 1 1 }  { buff_B_63_d0 mem_din 1 32 } } }
}
