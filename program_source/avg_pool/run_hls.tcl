open_project avg_pool
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/New/avg_pool/avg_pool_slow.cpp
set_top avg_pool
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit