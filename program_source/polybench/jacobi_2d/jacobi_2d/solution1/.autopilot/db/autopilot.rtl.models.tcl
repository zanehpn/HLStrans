set SynModuleInfo {
  {SRCNAME jacobi_2d_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_12_3 MODELNAME jacobi_2d_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_12_3 RTLNAME jacobi_2d_jacobi_2d_Pipeline_VITIS_LOOP_10_2_VITIS_LOOP_12_3
    SUBMODULES {
      {MODELNAME jacobi_2d_mul_7ns_8ns_13_1_1 RTLNAME jacobi_2d_mul_7ns_8ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1 RTLNAME jacobi_2d_mac_muladd_7ns_7ns_7ns_13_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME jacobi_2d_flow_control_loop_pipe_sequential_init RTLNAME jacobi_2d_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME jacobi_2d_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME jacobi_2d_Pipeline_VITIS_LOOP_17_4_VITIS_LOOP_19_5 MODELNAME jacobi_2d_Pipeline_VITIS_LOOP_17_4_VITIS_LOOP_19_5 RTLNAME jacobi_2d_jacobi_2d_Pipeline_VITIS_LOOP_17_4_VITIS_LOOP_19_5}
  {SRCNAME jacobi_2d MODELNAME jacobi_2d RTLNAME jacobi_2d IS_TOP 1
    SUBMODULES {
      {MODELNAME jacobi_2d_dadd_64ns_64ns_64_5_full_dsp_1 RTLNAME jacobi_2d_dadd_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME jacobi_2d_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME jacobi_2d_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
}
