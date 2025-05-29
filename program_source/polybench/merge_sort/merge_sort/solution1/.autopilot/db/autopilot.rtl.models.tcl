set SynModuleInfo {
  {SRCNAME merge_sort_Pipeline_VITIS_LOOP_6_1 MODELNAME merge_sort_Pipeline_VITIS_LOOP_6_1 RTLNAME merge_sort_merge_sort_Pipeline_VITIS_LOOP_6_1
    SUBMODULES {
      {MODELNAME merge_sort_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME merge_sort_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME merge_sort_flow_control_loop_pipe_sequential_init RTLNAME merge_sort_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME merge_sort_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME merge_sort_Pipeline_VITIS_LOOP_25_3 MODELNAME merge_sort_Pipeline_VITIS_LOOP_25_3 RTLNAME merge_sort_merge_sort_Pipeline_VITIS_LOOP_25_3}
  {SRCNAME merge_sort MODELNAME merge_sort RTLNAME merge_sort IS_TOP 1
    SUBMODULES {
      {MODELNAME merge_sort_temp_RAM_AUTO_1R1W RTLNAME merge_sort_temp_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
