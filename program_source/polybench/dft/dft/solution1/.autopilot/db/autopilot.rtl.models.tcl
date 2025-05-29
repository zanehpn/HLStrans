set SynModuleInfo {
  {SRCNAME sin_or_cos<double> MODELNAME sin_or_cos_double_s RTLNAME dft_sin_or_cos_double_s
    SUBMODULES {
      {MODELNAME dft_mul_170s_53ns_170_2_1 RTLNAME dft_mul_170s_53ns_170_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME dft_mul_49ns_49ns_98_2_1 RTLNAME dft_mul_49ns_49ns_98_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME dft_mux_83_1_1_1 RTLNAME dft_mux_83_1_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dft_mux_164_1_1_1 RTLNAME dft_mux_164_1_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dft_mul_56ns_52s_108_2_1 RTLNAME dft_mul_56ns_52s_108_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME dft_mul_49ns_44s_93_2_1 RTLNAME dft_mul_49ns_44s_93_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME dft_mul_42ns_33ns_75_1_1 RTLNAME dft_mul_42ns_33ns_75_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dft_mul_35ns_25ns_60_1_1 RTLNAME dft_mul_35ns_25ns_60_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dft_mul_64s_63ns_126_2_1 RTLNAME dft_mul_64s_63ns_126_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME dft_sin_or_cos_double_s_ref_4oPi_table_256_V_ROM_AUTO_1R RTLNAME dft_sin_or_cos_double_s_ref_4oPi_table_256_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dft_sin_or_cos_double_s_fourth_order_double_sin_cos_K0_V_ROM_1P_LUTRAM_1R RTLNAME dft_sin_or_cos_double_s_fourth_order_double_sin_cos_K0_V_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dft_sin_or_cos_double_s_fourth_order_double_sin_cos_K1_V_ROM_1P_LUTRAM_1R RTLNAME dft_sin_or_cos_double_s_fourth_order_double_sin_cos_K1_V_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dft_sin_or_cos_double_s_fourth_order_double_sin_cos_K2_V_ROM_1P_LUTRAM_1R RTLNAME dft_sin_or_cos_double_s_fourth_order_double_sin_cos_K2_V_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dft_sin_or_cos_double_s_fourth_order_double_sin_cos_K3_V_ROM_1P_LUTRAM_1R RTLNAME dft_sin_or_cos_double_s_fourth_order_double_sin_cos_K3_V_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dft_sin_or_cos_double_s_fourth_order_double_sin_cos_K4_V_ROM_1P_LUTRAM_1R RTLNAME dft_sin_or_cos_double_s_fourth_order_double_sin_cos_K4_V_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2 MODELNAME dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2 RTLNAME dft_dft_Pipeline_VITIS_LOOP_16_1_VITIS_LOOP_22_2
    SUBMODULES {
      {MODELNAME dft_dadddsub_64ns_64ns_64_5_full_dsp_1 RTLNAME dft_dadddsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME dft_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME dft_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME dft_sitodp_32ns_64_4_no_dsp_1 RTLNAME dft_sitodp_32ns_64_4_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dft_flow_control_loop_pipe_sequential_init RTLNAME dft_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dft_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dft_Pipeline_VITIS_LOOP_31_3 MODELNAME dft_Pipeline_VITIS_LOOP_31_3 RTLNAME dft_dft_Pipeline_VITIS_LOOP_31_3}
  {SRCNAME dft MODELNAME dft RTLNAME dft IS_TOP 1
    SUBMODULES {
      {MODELNAME dft_temp_real_RAM_AUTO_1R1W RTLNAME dft_temp_real_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
