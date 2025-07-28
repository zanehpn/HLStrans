set SynModuleInfo {
  {SRCNAME durbin_Pipeline_VITIS_LOOP_21_2 MODELNAME durbin_Pipeline_VITIS_LOOP_21_2 RTLNAME durbin_durbin_Pipeline_VITIS_LOOP_21_2
    SUBMODULES {
      {MODELNAME durbin_flow_control_loop_pipe_sequential_init RTLNAME durbin_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME durbin_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME durbin_Pipeline_VITIS_LOOP_26_3 MODELNAME durbin_Pipeline_VITIS_LOOP_26_3 RTLNAME durbin_durbin_Pipeline_VITIS_LOOP_26_3}
  {SRCNAME durbin_Pipeline_VITIS_LOOP_29_4 MODELNAME durbin_Pipeline_VITIS_LOOP_29_4 RTLNAME durbin_durbin_Pipeline_VITIS_LOOP_29_4}
  {SRCNAME durbin MODELNAME durbin RTLNAME durbin IS_TOP 1
    SUBMODULES {
      {MODELNAME durbin_dadddsub_64ns_64ns_64_5_full_dsp_1 RTLNAME durbin_dadddsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME durbin_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME durbin_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME durbin_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME durbin_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME durbin_z_RAM_AUTO_1R1W RTLNAME durbin_z_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
