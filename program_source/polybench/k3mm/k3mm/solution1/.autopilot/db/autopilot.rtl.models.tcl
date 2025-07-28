set SynModuleInfo {
  {SRCNAME k3mm_Pipeline_lprd_1_lprd_2 MODELNAME k3mm_Pipeline_lprd_1_lprd_2 RTLNAME k3mm_k3mm_Pipeline_lprd_1_lprd_2
    SUBMODULES {
      {MODELNAME k3mm_flow_control_loop_pipe_sequential_init RTLNAME k3mm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME k3mm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME k3mm_Pipeline_lp1_lp2 MODELNAME k3mm_Pipeline_lp1_lp2 RTLNAME k3mm_k3mm_Pipeline_lp1_lp2}
  {SRCNAME k3mm_Pipeline_lp4_lp5 MODELNAME k3mm_Pipeline_lp4_lp5 RTLNAME k3mm_k3mm_Pipeline_lp4_lp5}
  {SRCNAME k3mm_Pipeline_lp7_lp8 MODELNAME k3mm_Pipeline_lp7_lp8 RTLNAME k3mm_k3mm_Pipeline_lp7_lp8}
  {SRCNAME k3mm_Pipeline_lpwr_1_lpwr_2 MODELNAME k3mm_Pipeline_lpwr_1_lpwr_2 RTLNAME k3mm_k3mm_Pipeline_lpwr_1_lpwr_2}
  {SRCNAME k3mm MODELNAME k3mm RTLNAME k3mm IS_TOP 1
    SUBMODULES {
      {MODELNAME k3mm_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME k3mm_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME k3mm_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME k3mm_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME k3mm_buff_A_RAM_1WNR_AUTO_1R1W RTLNAME k3mm_buff_A_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME k3mm_buff_E_out_RAM_AUTO_1R1W RTLNAME k3mm_buff_E_out_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
