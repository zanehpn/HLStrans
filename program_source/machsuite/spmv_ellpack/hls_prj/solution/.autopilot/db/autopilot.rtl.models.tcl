set SynModuleInfo {
  {SRCNAME spmv_ellpack_Pipeline_ellpack_2 MODELNAME spmv_ellpack_Pipeline_ellpack_2 RTLNAME spmv_ellpack_spmv_ellpack_Pipeline_ellpack_2
    SUBMODULES {
      {MODELNAME spmv_ellpack_dadd_64ns_64ns_64_5_full_dsp_1 RTLNAME spmv_ellpack_dadd_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME spmv_ellpack_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME spmv_ellpack_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME spmv_ellpack_flow_control_loop_pipe_sequential_init RTLNAME spmv_ellpack_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME spmv_ellpack_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME spmv_ellpack MODELNAME spmv_ellpack RTLNAME spmv_ellpack IS_TOP 1}
}
