set SynModuleInfo {
  {SRCNAME gemm_Pipeline_lprd_1_lprd_2 MODELNAME gemm_Pipeline_lprd_1_lprd_2 RTLNAME gemm_gemm_Pipeline_lprd_1_lprd_2
    SUBMODULES {
      {MODELNAME gemm_flow_control_loop_pipe_sequential_init RTLNAME gemm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gemm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME gemm_Pipeline_lp1_lp2 MODELNAME gemm_Pipeline_lp1_lp2 RTLNAME gemm_gemm_Pipeline_lp1_lp2
    SUBMODULES {
      {MODELNAME gemm_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME gemm_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME gemm_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME gemm_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME gemm_Pipeline_lp4_lp5 MODELNAME gemm_Pipeline_lp4_lp5 RTLNAME gemm_gemm_Pipeline_lp4_lp5}
  {SRCNAME gemm_Pipeline_lpwr_1_lpwr_2 MODELNAME gemm_Pipeline_lpwr_1_lpwr_2 RTLNAME gemm_gemm_Pipeline_lpwr_1_lpwr_2}
  {SRCNAME gemm MODELNAME gemm RTLNAME gemm IS_TOP 1
    SUBMODULES {
      {MODELNAME gemm_buff_A_RAM_1WNR_AUTO_1R1W RTLNAME gemm_buff_A_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gemm_buff_C_RAM_AUTO_1R1W RTLNAME gemm_buff_C_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gemm_tmp1_RAM_AUTO_1R1W RTLNAME gemm_tmp1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
