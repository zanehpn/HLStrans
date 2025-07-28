open_project present
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/New/c2hlsc/c2hlsc_present/present_slow.cpp
set_top present
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit