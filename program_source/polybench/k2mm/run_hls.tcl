open_project k2mm
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/syn_dataset/polybench/k2mm/k2mm.c
set_top k2mm
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit