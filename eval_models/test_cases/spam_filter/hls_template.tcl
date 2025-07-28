open_project -reset spam_filter
set_top spam_filter
add_files spam_filter_slow.cpp
open_solution -reset solution
set_part xcu55c-fsvh2892-2L-e
create_clock -period 5 -name default
csynth_design
close_project
exit
