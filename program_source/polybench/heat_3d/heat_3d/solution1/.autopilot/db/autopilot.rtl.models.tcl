set SynModuleInfo {
  {SRCNAME heat_3d_Pipeline_VITIS_LOOP_14_2_VITIS_LOOP_17_3_VITIS_LOOP_18_4 MODELNAME heat_3d_Pipeline_VITIS_LOOP_14_2_VITIS_LOOP_17_3_VITIS_LOOP_18_4 RTLNAME heat_3d_heat_3d_Pipeline_VITIS_LOOP_14_2_VITIS_LOOP_17_3_VITIS_LOOP_18_4
    SUBMODULES {
      {MODELNAME heat_3d_flow_control_loop_pipe_sequential_init RTLNAME heat_3d_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME heat_3d_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME heat_3d_Pipeline_VITIS_LOOP_25_5_VITIS_LOOP_28_6_VITIS_LOOP_29_7 MODELNAME heat_3d_Pipeline_VITIS_LOOP_25_5_VITIS_LOOP_28_6_VITIS_LOOP_29_7 RTLNAME heat_3d_heat_3d_Pipeline_VITIS_LOOP_25_5_VITIS_LOOP_28_6_VITIS_LOOP_29_7}
  {SRCNAME heat_3d MODELNAME heat_3d RTLNAME heat_3d IS_TOP 1
    SUBMODULES {
      {MODELNAME heat_3d_dadddsub_64ns_64ns_64_5_full_dsp_1 RTLNAME heat_3d_dadddsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME heat_3d_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME heat_3d_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
}
