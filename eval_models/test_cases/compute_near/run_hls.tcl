open_project compute_near
add_files /home/zqy/LLM4CHIP/C2HLS/eval_models/test_cases/compute_near/compute_near_slow.cpp
set_top compute_near
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit
