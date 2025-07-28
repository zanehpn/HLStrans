set SynModuleInfo {
  {SRCNAME gramschmidt_Pipeline_VITIS_LOOP_15_2 MODELNAME gramschmidt_Pipeline_VITIS_LOOP_15_2 RTLNAME gramschmidt_gramschmidt_Pipeline_VITIS_LOOP_15_2
    SUBMODULES {
      {MODELNAME gramschmidt_flow_control_loop_pipe_sequential_init RTLNAME gramschmidt_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gramschmidt_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME gramschmidt_Pipeline_VITIS_LOOP_18_3 MODELNAME gramschmidt_Pipeline_VITIS_LOOP_18_3 RTLNAME gramschmidt_gramschmidt_Pipeline_VITIS_LOOP_18_3
    SUBMODULES {
      {MODELNAME gramschmidt_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME gramschmidt_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME gramschmidt_Pipeline_VITIS_LOOP_20_4 MODELNAME gramschmidt_Pipeline_VITIS_LOOP_20_4 RTLNAME gramschmidt_gramschmidt_Pipeline_VITIS_LOOP_20_4
    SUBMODULES {
      {MODELNAME gramschmidt_dsub_64ns_64ns_64_5_full_dsp_1 RTLNAME gramschmidt_dsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME gramschmidt MODELNAME gramschmidt RTLNAME gramschmidt IS_TOP 1
    SUBMODULES {
      {MODELNAME gramschmidt_dsqrt_64ns_64ns_64_17_no_dsp_1 RTLNAME gramschmidt_dsqrt_64ns_64ns_64_17_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 16 ALLOW_PRAGMA 1}
      {MODELNAME gramschmidt_dadddsub_64ns_64ns_64_5_full_dsp_1 RTLNAME gramschmidt_dadddsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME gramschmidt_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME gramschmidt_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
}
