set SynModuleInfo {
  {SRCNAME edge_detect MODELNAME edge_detect RTLNAME edge_detect IS_TOP 1
    SUBMODULES {
      {MODELNAME edge_detect_lineBuffer1_RAM_2P_BRAM_1R1W RTLNAME edge_detect_lineBuffer1_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME edge_detect_lineBuffer2_RAM_2P_BRAM_1R1W RTLNAME edge_detect_lineBuffer2_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME edge_detect_in_r_m_axi RTLNAME edge_detect_in_r_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME edge_detect_out_r_m_axi RTLNAME edge_detect_out_r_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME edge_detect_control_s_axi RTLNAME edge_detect_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
