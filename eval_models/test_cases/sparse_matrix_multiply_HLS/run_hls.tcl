open_project sparse_matrix_multiply_HLS
add_files /home/zqy/LLM4CHIP/C2HLS/eval_models/test_cases/sparse_matrix_multiply_HLS/sparse_matrix_multiply_HLS_fast.cpp
set_top sparse_matrix_multiply_HLS
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit
