set SynModuleInfo {
  {SRCNAME jacobi_1d_Pipeline_VITIS_LOOP_11_2 MODELNAME jacobi_1d_Pipeline_VITIS_LOOP_11_2 RTLNAME jacobi_1d_jacobi_1d_Pipeline_VITIS_LOOP_11_2
    SUBMODULES {
      {MODELNAME jacobi_1d_flow_control_loop_pipe_sequential_init RTLNAME jacobi_1d_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME jacobi_1d_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME jacobi_1d_Pipeline_VITIS_LOOP_15_3 MODELNAME jacobi_1d_Pipeline_VITIS_LOOP_15_3 RTLNAME jacobi_1d_jacobi_1d_Pipeline_VITIS_LOOP_15_3}
  {SRCNAME jacobi_1d MODELNAME jacobi_1d RTLNAME jacobi_1d IS_TOP 1
    SUBMODULES {
      {MODELNAME jacobi_1d_dadd_64ns_64ns_64_5_full_dsp_1 RTLNAME jacobi_1d_dadd_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME jacobi_1d_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME jacobi_1d_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
}
