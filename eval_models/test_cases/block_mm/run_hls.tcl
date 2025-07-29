open_project block_mm
add_files /home/zqy/LLM4CHIP/C2HLS/eval_models/test_cases/block_mm/block_mm_slow.cpp
set_top block_mm
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit
