set SynModuleInfo {
  {SRCNAME stencil_Pipeline_stencil_label1_stencil_label2 MODELNAME stencil_Pipeline_stencil_label1_stencil_label2 RTLNAME stencil_stencil_Pipeline_stencil_label1_stencil_label2
    SUBMODULES {
      {MODELNAME stencil_mul_32s_32s_32_1_1 RTLNAME stencil_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME stencil_flow_control_loop_pipe_sequential_init RTLNAME stencil_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME stencil_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME stencil MODELNAME stencil RTLNAME stencil IS_TOP 1}
}
