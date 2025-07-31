open_project compute_neighbor_tables
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/test_cases/compute_neighbor_tables/compute_neighbor_tables_fast.cpp
set_top compute_neighbor_tables
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit
