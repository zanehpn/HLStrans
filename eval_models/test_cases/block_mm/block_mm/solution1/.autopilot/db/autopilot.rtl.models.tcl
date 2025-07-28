set SynModuleInfo {
  {SRCNAME block_mm_Pipeline_loadA MODELNAME block_mm_Pipeline_loadA RTLNAME block_mm_block_mm_Pipeline_loadA
    SUBMODULES {
      {MODELNAME block_mm_flow_control_loop_pipe_sequential_init RTLNAME block_mm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME block_mm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME block_mm_Pipeline_2 MODELNAME block_mm_Pipeline_2 RTLNAME block_mm_block_mm_Pipeline_2}
  {SRCNAME block_mm_Pipeline_partialsum MODELNAME block_mm_Pipeline_partialsum RTLNAME block_mm_block_mm_Pipeline_partialsum
    SUBMODULES {
      {MODELNAME block_mm_mul_32s_32s_32_1_1 RTLNAME block_mm_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME block_mm_Pipeline_writeoutput MODELNAME block_mm_Pipeline_writeoutput RTLNAME block_mm_block_mm_Pipeline_writeoutput
    SUBMODULES {
      {MODELNAME block_mm_mux_42_32_1_1 RTLNAME block_mm_mux_42_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME block_mm MODELNAME block_mm RTLNAME block_mm IS_TOP 1
    SUBMODULES {
      {MODELNAME block_mm_block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_RAM_AUTO_1R1W RTLNAME block_mm_block_mm_stream_blockvec_0_stream_blockvec_0_blockmat_int_A_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
