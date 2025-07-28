open_project spam_filter
add_files /home/zqy/LLM4CHIP/C2HLS/eval_models/test_cases/spam_filter/spam_filter_fast.cpp
set_top spam_filter
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit
