open_project eyeriss
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/New/eyeriss/eyeriss_slow.cpp
set_top eyeriss
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit