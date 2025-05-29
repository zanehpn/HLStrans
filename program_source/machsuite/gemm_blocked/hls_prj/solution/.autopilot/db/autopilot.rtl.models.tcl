set SynModuleInfo {
  {SRCNAME bbgemm MODELNAME bbgemm RTLNAME bbgemm IS_TOP 1
    SUBMODULES {
      {MODELNAME bbgemm_dadd_64ns_64ns_64_5_full_dsp_1 RTLNAME bbgemm_dadd_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME bbgemm_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME bbgemm_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME bbgemm_flow_control_loop_pipe RTLNAME bbgemm_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME bbgemm_flow_control_loop_pipe_U}
    }
  }
}
