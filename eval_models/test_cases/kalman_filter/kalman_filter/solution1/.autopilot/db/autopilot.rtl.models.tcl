set SynModuleInfo {
  {SRCNAME kalman_filter_Pipeline_VITIS_LOOP_41_1 MODELNAME kalman_filter_Pipeline_VITIS_LOOP_41_1 RTLNAME kalman_filter_kalman_filter_Pipeline_VITIS_LOOP_41_1
    SUBMODULES {
      {MODELNAME kalman_filter_fpext_32ns_64_2_no_dsp_1 RTLNAME kalman_filter_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME kalman_filter_flow_control_loop_pipe_sequential_init RTLNAME kalman_filter_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME kalman_filter_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME kalman_filter_Pipeline_VITIS_LOOP_63_3 MODELNAME kalman_filter_Pipeline_VITIS_LOOP_63_3 RTLNAME kalman_filter_kalman_filter_Pipeline_VITIS_LOOP_63_3}
  {SRCNAME kalman_filter_Pipeline_VITIS_LOOP_69_4_VITIS_LOOP_70_5 MODELNAME kalman_filter_Pipeline_VITIS_LOOP_69_4_VITIS_LOOP_70_5 RTLNAME kalman_filter_kalman_filter_Pipeline_VITIS_LOOP_69_4_VITIS_LOOP_70_5
    SUBMODULES {
      {MODELNAME kalman_filter_mux_646_19_1_1 RTLNAME kalman_filter_mux_646_19_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME kalman_filter_sdiv_25ns_20s_19_29_1 RTLNAME kalman_filter_sdiv_25ns_20s_19_29_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 28 ALLOW_PRAGMA 1}
      {MODELNAME kalman_filter_mul_mul_20s_19s_39_4_1 RTLNAME kalman_filter_mul_mul_20s_19s_39_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME kalman_filter_Pipeline_VITIS_LOOP_84_6 MODELNAME kalman_filter_Pipeline_VITIS_LOOP_84_6 RTLNAME kalman_filter_kalman_filter_Pipeline_VITIS_LOOP_84_6}
  {SRCNAME kalman_filter MODELNAME kalman_filter RTLNAME kalman_filter IS_TOP 1
    SUBMODULES {
      {MODELNAME kalman_filter_in_local_V_RAM_AUTO_1R1W RTLNAME kalman_filter_in_local_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kalman_filter_out_local_V_RAM_1WNR_AUTO_1R1W RTLNAME kalman_filter_out_local_V_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kalman_filter_gmem0_m_axi RTLNAME kalman_filter_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME kalman_filter_gmem1_m_axi RTLNAME kalman_filter_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME kalman_filter_control_s_axi RTLNAME kalman_filter_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
