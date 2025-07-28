set SynModuleInfo {
  {SRCNAME covariance_Pipeline_VITIS_LOOP_11_1_VITIS_LOOP_14_2 MODELNAME covariance_Pipeline_VITIS_LOOP_11_1_VITIS_LOOP_14_2 RTLNAME covariance_covariance_Pipeline_VITIS_LOOP_11_1_VITIS_LOOP_14_2
    SUBMODULES {
      {MODELNAME covariance_flow_control_loop_pipe_sequential_init RTLNAME covariance_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME covariance_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME covariance_Pipeline_VITIS_LOOP_20_3_VITIS_LOOP_22_4 MODELNAME covariance_Pipeline_VITIS_LOOP_20_3_VITIS_LOOP_22_4 RTLNAME covariance_covariance_Pipeline_VITIS_LOOP_20_3_VITIS_LOOP_22_4}
  {SRCNAME covariance_Pipeline_VITIS_LOOP_32_7 MODELNAME covariance_Pipeline_VITIS_LOOP_32_7 RTLNAME covariance_covariance_Pipeline_VITIS_LOOP_32_7
    SUBMODULES {
      {MODELNAME covariance_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME covariance_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME covariance MODELNAME covariance RTLNAME covariance IS_TOP 1
    SUBMODULES {
      {MODELNAME covariance_dadd_64ns_64ns_64_5_full_dsp_1 RTLNAME covariance_dadd_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME covariance_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME covariance_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME covariance_dadddsub_64ns_64ns_64_5_full_dsp_1 RTLNAME covariance_dadddsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
}
