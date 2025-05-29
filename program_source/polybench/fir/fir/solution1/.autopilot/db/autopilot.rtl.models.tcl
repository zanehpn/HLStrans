set SynModuleInfo {
  {SRCNAME fir_Pipeline_VITIS_LOOP_9_1 MODELNAME fir_Pipeline_VITIS_LOOP_9_1 RTLNAME fir_fir_Pipeline_VITIS_LOOP_9_1
    SUBMODULES {
      {MODELNAME fir_flow_control_loop_pipe_sequential_init RTLNAME fir_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fir_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME fir_Pipeline_VITIS_LOOP_14_2 MODELNAME fir_Pipeline_VITIS_LOOP_14_2 RTLNAME fir_fir_Pipeline_VITIS_LOOP_14_2
    SUBMODULES {
      {MODELNAME fir_mul_32s_32s_32_1_1 RTLNAME fir_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fir MODELNAME fir RTLNAME fir IS_TOP 1
    SUBMODULES {
      {MODELNAME fir_delay_lane_RAM_AUTO_1R1W RTLNAME fir_delay_lane_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
