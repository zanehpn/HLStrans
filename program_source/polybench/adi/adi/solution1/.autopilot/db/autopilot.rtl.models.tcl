set SynModuleInfo {
  {SRCNAME adi_Pipeline_VITIS_LOOP_41_2 MODELNAME adi_Pipeline_VITIS_LOOP_41_2 RTLNAME adi_adi_Pipeline_VITIS_LOOP_41_2
    SUBMODULES {
      {MODELNAME adi_flow_control_loop_pipe_sequential_init RTLNAME adi_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME adi_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME adi_Pipeline_VITIS_LOOP_59_5 MODELNAME adi_Pipeline_VITIS_LOOP_59_5 RTLNAME adi_adi_Pipeline_VITIS_LOOP_59_5}
  {SRCNAME adi MODELNAME adi RTLNAME adi IS_TOP 1
    SUBMODULES {
      {MODELNAME adi_dadddsub_64ns_64ns_64_5_full_dsp_1 RTLNAME adi_dadddsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME adi_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME adi_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME adi_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME adi_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
    }
  }
}
