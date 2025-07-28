set SynModuleInfo {
  {SRCNAME seidel_Pipeline_VITIS_LOOP_12_3 MODELNAME seidel_Pipeline_VITIS_LOOP_12_3 RTLNAME seidel_seidel_Pipeline_VITIS_LOOP_12_3
    SUBMODULES {
      {MODELNAME seidel_dadd_64ns_64ns_64_5_full_dsp_1 RTLNAME seidel_dadd_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME seidel_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME seidel_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME seidel_flow_control_loop_pipe_sequential_init RTLNAME seidel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME seidel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME seidel MODELNAME seidel RTLNAME seidel IS_TOP 1}
}
