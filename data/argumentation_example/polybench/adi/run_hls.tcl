open_project adi
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/SYN_dataset/adi/generate/adi.cpp
set_top adi
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit
