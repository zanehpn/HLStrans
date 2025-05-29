open_project heat_3d
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/SYN_dataset/polybench/heat_3d/heat_3d_slow.c
set_top heat_3d
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit