set SynModuleInfo {
  {SRCNAME queries_search_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_33_2 MODELNAME queries_search_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_33_2 RTLNAME queries_search_queries_search_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_33_2
    SUBMODULES {
      {MODELNAME queries_search_mul_32s_32s_48_1_1 RTLNAME queries_search_mul_32s_32s_48_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME queries_search_flow_control_loop_pipe_sequential_init RTLNAME queries_search_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME queries_search_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME queries_search MODELNAME queries_search RTLNAME queries_search IS_TOP 1
    SUBMODULES {
      {MODELNAME queries_search_gmem0_m_axi RTLNAME queries_search_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME queries_search_gmem1_m_axi RTLNAME queries_search_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME queries_search_gmem2_m_axi RTLNAME queries_search_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME queries_search_control_s_axi RTLNAME queries_search_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
