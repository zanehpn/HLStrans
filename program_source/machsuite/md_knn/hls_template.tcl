open_project -reset hls_prj
set_top md_knn
add_files md_knn.c
add_files md_knn.h
open_solution -reset solution
set_part xcu55c-fsvh2892-2L-e
create_clock -period 5 -name default
csynth_design
close_project

