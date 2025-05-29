set SynModuleInfo {
  {SRCNAME md_knn MODELNAME md_knn RTLNAME md_knn IS_TOP 1
    SUBMODULES {
      {MODELNAME md_knn_dadddsub_64ns_64ns_64_5_full_dsp_1 RTLNAME md_knn_dadddsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME md_knn_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME md_knn_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME md_knn_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME md_knn_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME md_knn_flow_control_loop_pipe RTLNAME md_knn_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME md_knn_flow_control_loop_pipe_U}
    }
  }
}
