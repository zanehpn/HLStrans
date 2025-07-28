open_project cordic
add_files /home/zqy/LLM4CHIP/C2HLS/eval_models/test_cases/cordic/cordic_fast.cpp
set_top cordic
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit
