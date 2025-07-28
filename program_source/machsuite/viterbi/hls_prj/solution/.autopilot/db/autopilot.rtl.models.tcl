set SynModuleInfo {
  {SRCNAME viterbi_Pipeline_L_init MODELNAME viterbi_Pipeline_L_init RTLNAME viterbi_viterbi_Pipeline_L_init
    SUBMODULES {
      {MODELNAME viterbi_flow_control_loop_pipe_sequential_init RTLNAME viterbi_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME viterbi_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME viterbi_Pipeline_L_timestep_L_curr_state MODELNAME viterbi_Pipeline_L_timestep_L_curr_state RTLNAME viterbi_viterbi_Pipeline_L_timestep_L_curr_state
    SUBMODULES {
      {MODELNAME viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME viterbi_Pipeline_L_end MODELNAME viterbi_Pipeline_L_end RTLNAME viterbi_viterbi_Pipeline_L_end}
  {SRCNAME viterbi_Pipeline_L_backtrack MODELNAME viterbi_Pipeline_L_backtrack RTLNAME viterbi_viterbi_Pipeline_L_backtrack}
  {SRCNAME viterbi MODELNAME viterbi RTLNAME viterbi IS_TOP 1
    SUBMODULES {
      {MODELNAME viterbi_dadd_64ns_64ns_64_5_full_dsp_1 RTLNAME viterbi_dadd_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME viterbi_llike_RAM_1WNR_AUTO_1R1W RTLNAME viterbi_llike_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
