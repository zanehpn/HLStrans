set SynModuleInfo {
  {SRCNAME syr2k_Pipeline_lprd_1_lprd_2 MODELNAME syr2k_Pipeline_lprd_1_lprd_2 RTLNAME syr2k_syr2k_Pipeline_lprd_1_lprd_2
    SUBMODULES {
      {MODELNAME syr2k_flow_control_loop_pipe_sequential_init RTLNAME syr2k_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME syr2k_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME syr2k_Pipeline_lp1_lp2 MODELNAME syr2k_Pipeline_lp1_lp2 RTLNAME syr2k_syr2k_Pipeline_lp1_lp2}
  {SRCNAME syr2k_Pipeline_lp4_lp5 MODELNAME syr2k_Pipeline_lp4_lp5 RTLNAME syr2k_syr2k_Pipeline_lp4_lp5}
  {SRCNAME syr2k_Pipeline_lp7_lp8 MODELNAME syr2k_Pipeline_lp7_lp8 RTLNAME syr2k_syr2k_Pipeline_lp7_lp8}
  {SRCNAME syr2k_Pipeline_lpwr_1_lpwr_2 MODELNAME syr2k_Pipeline_lpwr_1_lpwr_2 RTLNAME syr2k_syr2k_Pipeline_lpwr_1_lpwr_2}
  {SRCNAME syr2k MODELNAME syr2k RTLNAME syr2k IS_TOP 1
    SUBMODULES {
      {MODELNAME syr2k_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME syr2k_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME syr2k_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME syr2k_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME syr2k_buff_A0_RAM_1WNR_AUTO_1R1W RTLNAME syr2k_buff_A0_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME syr2k_buff_C_RAM_AUTO_1R1W RTLNAME syr2k_buff_C_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
