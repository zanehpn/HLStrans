open_project max_pool
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/New/max_pool/max_pool_fast.cpp
set_top max_pool
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit