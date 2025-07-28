set SynModuleInfo {
  {SRCNAME correlation_Pipeline_VITIS_LOOP_10_1_VITIS_LOOP_13_2 MODELNAME correlation_Pipeline_VITIS_LOOP_10_1_VITIS_LOOP_13_2 RTLNAME correlation_correlation_Pipeline_VITIS_LOOP_10_1_VITIS_LOOP_13_2
    SUBMODULES {
      {MODELNAME correlation_flow_control_loop_pipe_sequential_init RTLNAME correlation_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME correlation_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME pow_generic<double> MODELNAME pow_generic_double_s RTLNAME correlation_pow_generic_double_s
    SUBMODULES {
      {MODELNAME correlation_mul_54s_6ns_54_2_1 RTLNAME correlation_mul_54s_6ns_54_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME correlation_mul_71ns_4ns_75_2_1 RTLNAME correlation_mul_71ns_4ns_75_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME correlation_mul_73ns_6ns_79_2_1 RTLNAME correlation_mul_73ns_6ns_79_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME correlation_mul_83ns_6ns_89_2_1 RTLNAME correlation_mul_83ns_6ns_89_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME correlation_mul_92ns_6ns_98_2_1 RTLNAME correlation_mul_92ns_6ns_98_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME correlation_mul_87ns_6ns_93_2_1 RTLNAME correlation_mul_87ns_6ns_93_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME correlation_mul_82ns_6ns_88_2_1 RTLNAME correlation_mul_82ns_6ns_88_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME correlation_mul_77ns_6ns_83_2_1 RTLNAME correlation_mul_77ns_6ns_83_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME correlation_mul_12s_80ns_90_2_1 RTLNAME correlation_mul_12s_80ns_90_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME correlation_mul_40ns_40ns_80_1_1 RTLNAME correlation_mul_40ns_40ns_80_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME correlation_mul_13s_71s_71_2_1 RTLNAME correlation_mul_13s_71s_71_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME correlation_mul_43ns_36ns_79_1_1 RTLNAME correlation_mul_43ns_36ns_79_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME correlation_mul_49ns_44ns_93_2_1 RTLNAME correlation_mul_49ns_44ns_93_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME correlation_mul_50ns_50ns_100_2_1 RTLNAME correlation_mul_50ns_50ns_100_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME correlation_mac_muladd_16s_15ns_19s_31_4_1 RTLNAME correlation_mac_muladd_16s_15ns_19s_31_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_inverse_lut_table_powbkb RTLNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_inverse_lut_table_powbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log0_lut_table_array_V_ROcud RTLNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log0_lut_table_array_V_ROcud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_dEe RTLNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_dEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_eOg RTLNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_eOg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12fYi RTLNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12fYi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17g8j RTLNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17g8j BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22hbi RTLNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22hbi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27ibs RTLNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27ibs BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32jbC RTLNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32jbC BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_arkbM RTLNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_arkbM BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_arralbW RTLNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_arralbW BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_arramb6 RTLNAME correlation_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_arramb6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME correlation_Pipeline_VITIS_LOOP_23_4 MODELNAME correlation_Pipeline_VITIS_LOOP_23_4 RTLNAME correlation_correlation_Pipeline_VITIS_LOOP_23_4}
  {SRCNAME correlation_Pipeline_VITIS_LOOP_37_5_VITIS_LOOP_39_6 MODELNAME correlation_Pipeline_VITIS_LOOP_37_5_VITIS_LOOP_39_6 RTLNAME correlation_correlation_Pipeline_VITIS_LOOP_37_5_VITIS_LOOP_39_6}
  {SRCNAME correlation_Pipeline_VITIS_LOOP_54_9 MODELNAME correlation_Pipeline_VITIS_LOOP_54_9 RTLNAME correlation_correlation_Pipeline_VITIS_LOOP_54_9}
  {SRCNAME correlation MODELNAME correlation RTLNAME correlation IS_TOP 1
    SUBMODULES {
      {MODELNAME correlation_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME correlation_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME correlation_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME correlation_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME correlation_dsqrt_64ns_64ns_64_17_no_dsp_1 RTLNAME correlation_dsqrt_64ns_64ns_64_17_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 16 ALLOW_PRAGMA 1}
      {MODELNAME correlation_dadddsub_64ns_64ns_64_5_full_dsp_1 RTLNAME correlation_dadddsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME correlation_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME correlation_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
}
