set SynModuleInfo {
  {SRCNAME compute_neighbor_tables_Pipeline_VITIS_LOOP_23_1 MODELNAME compute_neighbor_tables_Pipeline_VITIS_LOOP_23_1 RTLNAME compute_neighbor_tables_compute_neighbor_tables_Pipeline_VITIS_LOOP_23_1
    SUBMODULES {
      {MODELNAME compute_neighbor_tables_flow_control_loop_pipe_sequential_init RTLNAME compute_neighbor_tables_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME compute_neighbor_tables_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME compute_neighbor_tables_Pipeline_VITIS_LOOP_31_2 MODELNAME compute_neighbor_tables_Pipeline_VITIS_LOOP_31_2 RTLNAME compute_neighbor_tables_compute_neighbor_tables_Pipeline_VITIS_LOOP_31_2}
  {SRCNAME compute_neighbor_tables MODELNAME compute_neighbor_tables RTLNAME compute_neighbor_tables IS_TOP 1
    SUBMODULES {
      {MODELNAME compute_neighbor_tables_neightbor_table_offsets_temp_RAM_2P_BRAM_1R1W RTLNAME compute_neighbor_tables_neightbor_table_offsets_temp_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
