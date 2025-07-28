set SynModuleInfo {
  {SRCNAME bicg_Pipeline_lprd_1 MODELNAME bicg_Pipeline_lprd_1 RTLNAME bicg_bicg_Pipeline_lprd_1
    SUBMODULES {
      {MODELNAME bicg_flow_control_loop_pipe_sequential_init RTLNAME bicg_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME bicg_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME bicg_Pipeline_lp1 MODELNAME bicg_Pipeline_lp1 RTLNAME bicg_bicg_Pipeline_lp1}
  {SRCNAME bicg_Pipeline_lp3 MODELNAME bicg_Pipeline_lp3 RTLNAME bicg_bicg_Pipeline_lp3}
  {SRCNAME bicg_Pipeline_lpwr MODELNAME bicg_Pipeline_lpwr RTLNAME bicg_bicg_Pipeline_lpwr}
  {SRCNAME bicg MODELNAME bicg RTLNAME bicg IS_TOP 1
    SUBMODULES {
      {MODELNAME bicg_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME bicg_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME bicg_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME bicg_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME bicg_buff_A_0_RAM_AUTO_1R1W RTLNAME bicg_buff_A_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME bicg_buff_p_RAM_AUTO_1R1W RTLNAME bicg_buff_p_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME bicg_buff_s_out_RAM_AUTO_1R1W RTLNAME bicg_buff_s_out_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
