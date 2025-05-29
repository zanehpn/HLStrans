open_project merge_sort
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/SYN_dataset/polybench/merge_sort/merge_sort_slow.c
set_top merge_sort
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit