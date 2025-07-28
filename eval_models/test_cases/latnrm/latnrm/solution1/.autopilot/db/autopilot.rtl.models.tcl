set SynModuleInfo {
  {SRCNAME latnrm_Pipeline_VITIS_LOOP_20_1 MODELNAME latnrm_Pipeline_VITIS_LOOP_20_1 RTLNAME latnrm_latnrm_Pipeline_VITIS_LOOP_20_1
    SUBMODULES {
      {MODELNAME latnrm_fpext_32ns_64_2_no_dsp_1 RTLNAME latnrm_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME latnrm_mux_616_32_1_1 RTLNAME latnrm_mux_616_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME latnrm_flow_control_loop_pipe_sequential_init RTLNAME latnrm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME latnrm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME latnrm_Pipeline_VITIS_LOOP_24_2 MODELNAME latnrm_Pipeline_VITIS_LOOP_24_2 RTLNAME latnrm_latnrm_Pipeline_VITIS_LOOP_24_2
    SUBMODULES {
      {MODELNAME latnrm_mux_336_32_1_1 RTLNAME latnrm_mux_336_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME latnrm_mux_296_32_1_1 RTLNAME latnrm_mux_296_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME latnrm_Pipeline_VITIS_LOOP_33_3 MODELNAME latnrm_Pipeline_VITIS_LOOP_33_3 RTLNAME latnrm_latnrm_Pipeline_VITIS_LOOP_33_3
    SUBMODULES {
      {MODELNAME latnrm_mul_32s_32s_64_1_1 RTLNAME latnrm_mul_32s_32s_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME latnrm_Pipeline_VITIS_LOOP_57_6 MODELNAME latnrm_Pipeline_VITIS_LOOP_57_6 RTLNAME latnrm_latnrm_Pipeline_VITIS_LOOP_57_6}
  {SRCNAME latnrm MODELNAME latnrm RTLNAME latnrm IS_TOP 1
    SUBMODULES {
      {MODELNAME latnrm_coeff_V_RAM_AUTO_1R1W RTLNAME latnrm_coeff_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME latnrm_int_state_V_RAM_AUTO_1R1W RTLNAME latnrm_int_state_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
