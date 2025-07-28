open_project kalman_filter
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/New/kalman_filter/kalman_filter_slow.cpp
set_top krnl_KALMAN
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit