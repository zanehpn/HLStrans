open_project -reset tsp
set_top tsp
add_files tsp_fast.cpp
open_solution -reset solution
set_part xcu55c-fsvh2892-2L-e
create_clock -period 5 -name default
csynth_design
close_project
