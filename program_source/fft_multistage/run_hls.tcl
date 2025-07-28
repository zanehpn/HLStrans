open_project fft_multistage
add_files /home/zqy/LLM4CHIP/dataset/pair_slow_fast/New/fft_multistage/fft_multistage_fast.cpp
set_top fft_multistage
open_solution solution1
create_clock -period 5 -name default
set_part {xcu55c-fsvh2892-2L-e}
csynth_design
exit