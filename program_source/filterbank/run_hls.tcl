open_project filterbank
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/New/filterbank/filterbank_fast.cpp
set_top filterbank
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit