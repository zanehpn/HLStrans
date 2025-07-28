open_project -reset convolution
set_top convolution
add_files convolution_fast.cpp
open_solution -reset solution
set_part xcu55c-fsvh2892-2L-e
create_clock -period 5 -name default
csynth_design
close_project
