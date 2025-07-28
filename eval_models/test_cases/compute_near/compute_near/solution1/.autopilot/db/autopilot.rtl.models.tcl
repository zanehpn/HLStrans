set SynModuleInfo {
  {SRCNAME compute_near_Pipeline_VITIS_LOOP_34_1 MODELNAME compute_near_Pipeline_VITIS_LOOP_34_1 RTLNAME compute_near_compute_near_Pipeline_VITIS_LOOP_34_1
    SUBMODULES {
      {MODELNAME compute_near_flow_control_loop_pipe_sequential_init RTLNAME compute_near_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME compute_near_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME compute_near_Pipeline_VITIS_LOOP_39_2 MODELNAME compute_near_Pipeline_VITIS_LOOP_39_2 RTLNAME compute_near_compute_near_Pipeline_VITIS_LOOP_39_2}
  {SRCNAME compute_near_Pipeline_VITIS_LOOP_46_3_VITIS_LOOP_47_4 MODELNAME compute_near_Pipeline_VITIS_LOOP_46_3_VITIS_LOOP_47_4 RTLNAME compute_near_compute_near_Pipeline_VITIS_LOOP_46_3_VITIS_LOOP_47_4
    SUBMODULES {
      {MODELNAME compute_near_fsub_32ns_32ns_32_5_full_dsp_1 RTLNAME compute_near_fsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME compute_near_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME compute_near_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME compute_near_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME compute_near_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_near MODELNAME compute_near RTLNAME compute_near IS_TOP 1
    SUBMODULES {
      {MODELNAME compute_near_fifo_w32_d512_A RTLNAME compute_near_fifo_w32_d512_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME searchStream_U}
      {MODELNAME compute_near_fifo_w32_d512_A RTLNAME compute_near_fifo_w32_d512_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME queryStream_U}
      {MODELNAME compute_near_gmem_m_axi RTLNAME compute_near_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME compute_near_control_s_axi RTLNAME compute_near_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
