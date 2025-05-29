open_project histogram
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/New/polybench/histogram/histogram_slow.c
set_top histogram
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit