open_project -reset aes_table
set_top aes_table
add_files aes_table_fast.c
add_files aes.h
open_solution -reset solution
set_part xcu55c-fsvh2892-2L-e
create_clock -period 5 -name default
csynth_design
close_project
exit

