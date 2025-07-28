open_project -reset hls_prj
set_top ms_mergesort
add_files sort.c
add_files sort.h
open_solution -reset solution
set_part xcu55c-fsvh2892-2L-e
create_clock -period 5 -name default
csynth_design
close_project
