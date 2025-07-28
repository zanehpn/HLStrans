set SynModuleInfo {
  {SRCNAME gemm MODELNAME gemm RTLNAME gemm IS_TOP 1
    SUBMODULES {
      {MODELNAME gemm_dadd_64ns_64ns_64_5_full_dsp_1 RTLNAME gemm_dadd_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME gemm_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME gemm_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME gemm_flow_control_loop_pipe RTLNAME gemm_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gemm_flow_control_loop_pipe_U}
    }
  }
}
