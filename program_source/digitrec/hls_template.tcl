open_project -reset digitrec
set_top digitrec
add_files digitrec_slow.cpp
open_solution -reset solution
set_part xcu55c-fsvh2892-2L-e
create_clock -period 5 -name default
csynth_design
close_project
exit
