set SynModuleInfo {
  {SRCNAME atax_Pipeline_lprd_1 MODELNAME atax_Pipeline_lprd_1 RTLNAME atax_atax_Pipeline_lprd_1
    SUBMODULES {
      {MODELNAME atax_flow_control_loop_pipe_sequential_init RTLNAME atax_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME atax_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME atax_Pipeline_lp1 MODELNAME atax_Pipeline_lp1 RTLNAME atax_atax_Pipeline_lp1
    SUBMODULES {
      {MODELNAME atax_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME atax_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME atax_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME atax_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME atax_Pipeline_lp3 MODELNAME atax_Pipeline_lp3 RTLNAME atax_atax_Pipeline_lp3}
  {SRCNAME atax_Pipeline_lpwr_1 MODELNAME atax_Pipeline_lpwr_1 RTLNAME atax_atax_Pipeline_lpwr_1}
  {SRCNAME atax MODELNAME atax RTLNAME atax IS_TOP 1
    SUBMODULES {
      {MODELNAME atax_buff_A_0_RAM_AUTO_1R1W RTLNAME atax_buff_A_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME atax_buff_x_RAM_AUTO_1R1W RTLNAME atax_buff_x_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME atax_buff_y_out_RAM_AUTO_1R1W RTLNAME atax_buff_y_out_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
