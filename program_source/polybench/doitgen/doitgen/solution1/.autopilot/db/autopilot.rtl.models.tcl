set SynModuleInfo {
  {SRCNAME doitgen_Pipeline_VITIS_LOOP_16_3 MODELNAME doitgen_Pipeline_VITIS_LOOP_16_3 RTLNAME doitgen_doitgen_Pipeline_VITIS_LOOP_16_3
    SUBMODULES {
      {MODELNAME doitgen_dadd_64ns_64ns_64_5_full_dsp_1 RTLNAME doitgen_dadd_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME doitgen_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME doitgen_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME doitgen_flow_control_loop_pipe_sequential_init RTLNAME doitgen_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME doitgen_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME doitgen_Pipeline_VITIS_LOOP_22_5 MODELNAME doitgen_Pipeline_VITIS_LOOP_22_5 RTLNAME doitgen_doitgen_Pipeline_VITIS_LOOP_22_5}
  {SRCNAME doitgen MODELNAME doitgen RTLNAME doitgen IS_TOP 1}
}
