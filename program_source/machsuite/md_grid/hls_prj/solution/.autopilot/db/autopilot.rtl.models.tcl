set SynModuleInfo {
  {SRCNAME md_Pipeline_loop_q MODELNAME md_Pipeline_loop_q RTLNAME md_md_Pipeline_loop_q
    SUBMODULES {
      {MODELNAME md_dadddsub_64ns_64ns_64_5_full_dsp_1 RTLNAME md_dadddsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME md_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME md_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME md_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME md_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME md_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME md_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME md_flow_control_loop_pipe_sequential_init RTLNAME md_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME md_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME md MODELNAME md RTLNAME md IS_TOP 1
    SUBMODULES {
      {MODELNAME md_mul_64ns_32ns_96_2_1 RTLNAME md_mul_64ns_32ns_96_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME md_mul_64ns_96ns_160_2_1 RTLNAME md_mul_64ns_96ns_160_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME md_mul_64ns_160ns_224_2_1 RTLNAME md_mul_64ns_160ns_224_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
}
