set SynModuleInfo {
  {SRCNAME syrk_Pipeline_lprd_1_lprd_2 MODELNAME syrk_Pipeline_lprd_1_lprd_2 RTLNAME syrk_syrk_Pipeline_lprd_1_lprd_2
    SUBMODULES {
      {MODELNAME syrk_flow_control_loop_pipe_sequential_init RTLNAME syrk_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME syrk_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME syrk_Pipeline_lp1_lp2 MODELNAME syrk_Pipeline_lp1_lp2 RTLNAME syrk_syrk_Pipeline_lp1_lp2
    SUBMODULES {
      {MODELNAME syrk_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME syrk_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME syrk_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME syrk_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME syrk_Pipeline_lp4_lp5 MODELNAME syrk_Pipeline_lp4_lp5 RTLNAME syrk_syrk_Pipeline_lp4_lp5}
  {SRCNAME syrk_Pipeline_lpwr_1_lpwr_2 MODELNAME syrk_Pipeline_lpwr_1_lpwr_2 RTLNAME syrk_syrk_Pipeline_lpwr_1_lpwr_2}
  {SRCNAME syrk MODELNAME syrk RTLNAME syrk IS_TOP 1
    SUBMODULES {
      {MODELNAME syrk_buff_A0_RAM_1WNR_AUTO_1R1W RTLNAME syrk_buff_A0_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME syrk_buff_B_RAM_AUTO_1R1W RTLNAME syrk_buff_B_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME syrk_buff_C_out_RAM_AUTO_1R1W RTLNAME syrk_buff_C_out_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
