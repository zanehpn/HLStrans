set SynModuleInfo {
  {SRCNAME mvt_Pipeline_lprd_1 MODELNAME mvt_Pipeline_lprd_1 RTLNAME mvt_mvt_Pipeline_lprd_1
    SUBMODULES {
      {MODELNAME mvt_flow_control_loop_pipe_sequential_init RTLNAME mvt_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mvt_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mvt_Pipeline_lp1 MODELNAME mvt_Pipeline_lp1 RTLNAME mvt_mvt_Pipeline_lp1}
  {SRCNAME mvt_Pipeline_lp3 MODELNAME mvt_Pipeline_lp3 RTLNAME mvt_mvt_Pipeline_lp3}
  {SRCNAME mvt_Pipeline_lpwr MODELNAME mvt_Pipeline_lpwr RTLNAME mvt_mvt_Pipeline_lpwr}
  {SRCNAME mvt MODELNAME mvt RTLNAME mvt IS_TOP 1
    SUBMODULES {
      {MODELNAME mvt_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME mvt_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME mvt_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME mvt_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mvt_buff_A_RAM_AUTO_1R1W RTLNAME mvt_buff_A_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mvt_buff_x1_RAM_AUTO_1R1W RTLNAME mvt_buff_x1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mvt_buff_y1_RAM_AUTO_1R1W RTLNAME mvt_buff_y1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
