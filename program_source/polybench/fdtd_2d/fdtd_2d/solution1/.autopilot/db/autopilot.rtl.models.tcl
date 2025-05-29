set SynModuleInfo {
  {SRCNAME fdtd_2d_Pipeline_VITIS_LOOP_12_2 MODELNAME fdtd_2d_Pipeline_VITIS_LOOP_12_2 RTLNAME fdtd_2d_fdtd_2d_Pipeline_VITIS_LOOP_12_2
    SUBMODULES {
      {MODELNAME fdtd_2d_flow_control_loop_pipe_sequential_init RTLNAME fdtd_2d_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fdtd_2d_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME fdtd_2d_Pipeline_VITIS_LOOP_18_3_VITIS_LOOP_20_4 MODELNAME fdtd_2d_Pipeline_VITIS_LOOP_18_3_VITIS_LOOP_20_4 RTLNAME fdtd_2d_fdtd_2d_Pipeline_VITIS_LOOP_18_3_VITIS_LOOP_20_4}
  {SRCNAME fdtd_2d_Pipeline_VITIS_LOOP_27_5_VITIS_LOOP_29_6 MODELNAME fdtd_2d_Pipeline_VITIS_LOOP_27_5_VITIS_LOOP_29_6 RTLNAME fdtd_2d_fdtd_2d_Pipeline_VITIS_LOOP_27_5_VITIS_LOOP_29_6}
  {SRCNAME fdtd_2d_Pipeline_VITIS_LOOP_36_7_VITIS_LOOP_38_8 MODELNAME fdtd_2d_Pipeline_VITIS_LOOP_36_7_VITIS_LOOP_38_8 RTLNAME fdtd_2d_fdtd_2d_Pipeline_VITIS_LOOP_36_7_VITIS_LOOP_38_8}
  {SRCNAME fdtd_2d MODELNAME fdtd_2d RTLNAME fdtd_2d IS_TOP 1
    SUBMODULES {
      {MODELNAME fdtd_2d_dsub_64ns_64ns_64_5_full_dsp_1 RTLNAME fdtd_2d_dsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fdtd_2d_dadddsub_64ns_64ns_64_5_full_dsp_1 RTLNAME fdtd_2d_dadddsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fdtd_2d_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME fdtd_2d_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
}
