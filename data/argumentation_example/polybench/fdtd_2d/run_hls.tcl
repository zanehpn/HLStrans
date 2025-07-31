open_project fdtd_2d
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/SYN_dataset/fdtd_2d/generate/fdtd_2d.cpp
set_top fdtd_2d
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit
