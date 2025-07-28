open_project -reset sobel
set_top sobel
add_files sobel_fast.cpp
open_solution -reset solution
set_part xcu55c-fsvh2892-2L-e
create_clock -period 5 -name default
csynth_design

