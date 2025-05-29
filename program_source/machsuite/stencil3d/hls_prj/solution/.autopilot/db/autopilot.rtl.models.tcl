set SynModuleInfo {
  {SRCNAME stencil3d_Pipeline_height_bound_col_height_bound_row MODELNAME stencil3d_Pipeline_height_bound_col_height_bound_row RTLNAME stencil3d_stencil3d_Pipeline_height_bound_col_height_bound_row
    SUBMODULES {
      {MODELNAME stencil3d_flow_control_loop_pipe_sequential_init RTLNAME stencil3d_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME stencil3d_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME stencil3d_Pipeline_col_bound_height_col_bound_row MODELNAME stencil3d_Pipeline_col_bound_height_col_bound_row RTLNAME stencil3d_stencil3d_Pipeline_col_bound_height_col_bound_row}
  {SRCNAME stencil3d_Pipeline_row_bound_height_row_bound_col MODELNAME stencil3d_Pipeline_row_bound_height_row_bound_col RTLNAME stencil3d_stencil3d_Pipeline_row_bound_height_row_bound_col}
  {SRCNAME stencil3d_Pipeline_loop_height_loop_col_loop_row MODELNAME stencil3d_Pipeline_loop_height_loop_col_loop_row RTLNAME stencil3d_stencil3d_Pipeline_loop_height_loop_col_loop_row
    SUBMODULES {
      {MODELNAME stencil3d_mul_32s_32s_32_1_1 RTLNAME stencil3d_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME stencil3d MODELNAME stencil3d RTLNAME stencil3d IS_TOP 1}
}
