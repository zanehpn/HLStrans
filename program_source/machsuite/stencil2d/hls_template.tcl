open_project -reset hls_prj
set_top stencil
add_files stencil.c
add_files stencil.h
open_solution -reset solution
set_part xcu55c-fsvh2892-2L-e
create_clock -period 5 -name default
csynth_design
close_project

