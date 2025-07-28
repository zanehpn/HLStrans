set SynModuleInfo {
  {SRCNAME aes_table_Pipeline_1 MODELNAME aes_table_Pipeline_1 RTLNAME aes_table_aes_table_Pipeline_1
    SUBMODULES {
      {MODELNAME aes_table_flow_control_loop_pipe_sequential_init RTLNAME aes_table_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME aes_table_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME aes_table_Pipeline_2 MODELNAME aes_table_Pipeline_2 RTLNAME aes_table_aes_table_Pipeline_2}
  {SRCNAME aes_table_Pipeline_3 MODELNAME aes_table_Pipeline_3 RTLNAME aes_table_aes_table_Pipeline_3}
  {SRCNAME aes_table_Pipeline_4 MODELNAME aes_table_Pipeline_4 RTLNAME aes_table_aes_table_Pipeline_4}
  {SRCNAME aes_table MODELNAME aes_table RTLNAME aes_table IS_TOP 1
    SUBMODULES {
      {MODELNAME aes_table_S_ROM_AUTO_1R RTLNAME aes_table_S_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
