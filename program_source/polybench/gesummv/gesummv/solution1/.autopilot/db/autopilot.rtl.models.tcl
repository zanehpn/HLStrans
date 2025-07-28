set SynModuleInfo {
  {SRCNAME gesummv_Pipeline_lprd_1 MODELNAME gesummv_Pipeline_lprd_1 RTLNAME gesummv_gesummv_Pipeline_lprd_1
    SUBMODULES {
      {MODELNAME gesummv_flow_control_loop_pipe_sequential_init RTLNAME gesummv_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gesummv_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME gesummv_Pipeline_lp1 MODELNAME gesummv_Pipeline_lp1 RTLNAME gesummv_gesummv_Pipeline_lp1
    SUBMODULES {
      {MODELNAME gesummv_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME gesummv_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME gesummv_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME gesummv_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME gesummv_Pipeline_lp3 MODELNAME gesummv_Pipeline_lp3 RTLNAME gesummv_gesummv_Pipeline_lp3}
  {SRCNAME gesummv_Pipeline_lp5 MODELNAME gesummv_Pipeline_lp5 RTLNAME gesummv_gesummv_Pipeline_lp5}
  {SRCNAME gesummv_Pipeline_lpwr MODELNAME gesummv_Pipeline_lpwr RTLNAME gesummv_gesummv_Pipeline_lpwr}
  {SRCNAME gesummv MODELNAME gesummv RTLNAME gesummv IS_TOP 1
    SUBMODULES {
      {MODELNAME gesummv_buff_A_0_RAM_AUTO_1R1W RTLNAME gesummv_buff_A_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gesummv_buff_x_RAM_AUTO_1R1W RTLNAME gesummv_buff_x_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
