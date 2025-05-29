open_project -reset hls_prj
set_top aes256_encrypt_ecb
add_files aes_tableless.c
add_files aes.h
open_solution -reset solution
set_part xcu55c-fsvh2892-2L-e
create_clock -period 5 -name default
csynth_design
close_project
exit

