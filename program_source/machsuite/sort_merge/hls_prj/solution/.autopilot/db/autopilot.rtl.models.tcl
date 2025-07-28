set SynModuleInfo {
  {SRCNAME merge.1_Pipeline_merge_label1 MODELNAME merge_1_Pipeline_merge_label1 RTLNAME ms_mergesort_merge_1_Pipeline_merge_label1
    SUBMODULES {
      {MODELNAME ms_mergesort_flow_control_loop_pipe_sequential_init RTLNAME ms_mergesort_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ms_mergesort_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME merge.1_Pipeline_merge_label2 MODELNAME merge_1_Pipeline_merge_label2 RTLNAME ms_mergesort_merge_1_Pipeline_merge_label2}
  {SRCNAME merge.1_Pipeline_merge_label3 MODELNAME merge_1_Pipeline_merge_label3 RTLNAME ms_mergesort_merge_1_Pipeline_merge_label3}
  {SRCNAME merge.1 MODELNAME merge_1 RTLNAME ms_mergesort_merge_1
    SUBMODULES {
      {MODELNAME ms_mergesort_merge_1_temp_RAM_AUTO_1R1W RTLNAME ms_mergesort_merge_1_temp_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ms_mergesort MODELNAME ms_mergesort RTLNAME ms_mergesort IS_TOP 1}
}
