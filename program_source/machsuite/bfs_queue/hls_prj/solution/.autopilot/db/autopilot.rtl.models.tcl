set SynModuleInfo {
  {SRCNAME bfs_Pipeline_loop_neighbors MODELNAME bfs_Pipeline_loop_neighbors RTLNAME bfs_bfs_Pipeline_loop_neighbors
    SUBMODULES {
      {MODELNAME bfs_flow_control_loop_pipe_sequential_init RTLNAME bfs_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME bfs_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME bfs MODELNAME bfs RTLNAME bfs IS_TOP 1
    SUBMODULES {
      {MODELNAME bfs_queue_RAM_AUTO_1R1W RTLNAME bfs_queue_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
