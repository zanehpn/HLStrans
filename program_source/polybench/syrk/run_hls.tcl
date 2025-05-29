open_project syrk
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/syn_dataset/polybench/syrk/syrk.c
set_top syrk
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit