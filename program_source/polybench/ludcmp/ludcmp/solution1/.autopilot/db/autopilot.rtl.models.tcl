set SynModuleInfo {
  {SRCNAME ludcmp_Pipeline_VITIS_LOOP_15_3 MODELNAME ludcmp_Pipeline_VITIS_LOOP_15_3 RTLNAME ludcmp_ludcmp_Pipeline_VITIS_LOOP_15_3
    SUBMODULES {
      {MODELNAME ludcmp_flow_control_loop_pipe_sequential_init RTLNAME ludcmp_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ludcmp_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME ludcmp_Pipeline_VITIS_LOOP_22_5 MODELNAME ludcmp_Pipeline_VITIS_LOOP_22_5 RTLNAME ludcmp_ludcmp_Pipeline_VITIS_LOOP_22_5}
  {SRCNAME ludcmp_Pipeline_VITIS_LOOP_31_7 MODELNAME ludcmp_Pipeline_VITIS_LOOP_31_7 RTLNAME ludcmp_ludcmp_Pipeline_VITIS_LOOP_31_7}
  {SRCNAME ludcmp_Pipeline_VITIS_LOOP_38_9 MODELNAME ludcmp_Pipeline_VITIS_LOOP_38_9 RTLNAME ludcmp_ludcmp_Pipeline_VITIS_LOOP_38_9}
  {SRCNAME ludcmp MODELNAME ludcmp RTLNAME ludcmp IS_TOP 1
    SUBMODULES {
      {MODELNAME ludcmp_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME ludcmp_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME ludcmp_dsub_64ns_64ns_64_5_full_dsp_1 RTLNAME ludcmp_dsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME ludcmp_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME ludcmp_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
}
