set SynModuleInfo {
  {SRCNAME trisolv_Pipeline_VITIS_LOOP_12_2 MODELNAME trisolv_Pipeline_VITIS_LOOP_12_2 RTLNAME trisolv_trisolv_Pipeline_VITIS_LOOP_12_2
    SUBMODULES {
      {MODELNAME trisolv_dsub_64ns_64ns_64_5_full_dsp_1 RTLNAME trisolv_dsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME trisolv_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME trisolv_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME trisolv_flow_control_loop_pipe_sequential_init RTLNAME trisolv_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME trisolv_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME trisolv MODELNAME trisolv RTLNAME trisolv IS_TOP 1
    SUBMODULES {
      {MODELNAME trisolv_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME trisolv_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
    }
  }
}
