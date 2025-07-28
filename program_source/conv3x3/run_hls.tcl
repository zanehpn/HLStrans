open_project conv5x5
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/New/conv5x5/conv5x5_fast.cpp
set_top conv5x5
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit