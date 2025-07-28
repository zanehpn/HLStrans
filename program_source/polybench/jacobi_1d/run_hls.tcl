open_project jacobi_1d
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/SYN_dataset/polybench/jacobi_1d/jacobi_1d_slow.c
set_top jacobi_1d
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit