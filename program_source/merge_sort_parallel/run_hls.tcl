open_project merge_sort_parallel
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/New/merge_sort_parallel/merge_sort_parallel_fast.cpp
set_top merge_sort_parallel
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit