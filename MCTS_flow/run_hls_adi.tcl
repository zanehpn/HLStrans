open_project adi
add_files ../generate/adi/adi.cpp
set_top adi
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit
