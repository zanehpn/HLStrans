set SynModuleInfo {
  {SRCNAME lu_Pipeline_VITIS_LOOP_12_3 MODELNAME lu_Pipeline_VITIS_LOOP_12_3 RTLNAME lu_lu_Pipeline_VITIS_LOOP_12_3
    SUBMODULES {
      {MODELNAME lu_dsub_64ns_64ns_64_5_full_dsp_1 RTLNAME lu_dsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME lu_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME lu_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME lu_flow_control_loop_pipe_sequential_init RTLNAME lu_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME lu_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME lu_Pipeline_VITIS_LOOP_17_4_VITIS_LOOP_18_5 MODELNAME lu_Pipeline_VITIS_LOOP_17_4_VITIS_LOOP_18_5 RTLNAME lu_lu_Pipeline_VITIS_LOOP_17_4_VITIS_LOOP_18_5}
  {SRCNAME lu MODELNAME lu RTLNAME lu IS_TOP 1
    SUBMODULES {
      {MODELNAME lu_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME lu_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME lu_mul_6ns_6ns_11_1_1 RTLNAME lu_mul_6ns_6ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
}
