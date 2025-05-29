AUTOPILOT_ROOT := /tools/Xilinx/new/Vitis_HLS/2022.2/

ASSEMBLE_SRC_ROOT := .

IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -D__SIM_FPO__ -D__SIM_OPENCV__ -D__SIM_FFT__ -D__SIM_FIR__ -D__SIM_DDS__ -D__DSP48E1__
IFLAG += -g

CFLAG += -fPIC -O3       #-fsanitize=address
CFLAG += -lm
CFLAG += -std=c++17 -Wno-unused-result

# -------------------------------------------------------------------
# Allow user to select any source variant via a wildcard pattern.
# Default to all *_slow.cpp files if no override is provided.
SRC_PATTERN ?= *_slow.c
SRC := $(wildcard $(SRC_PATTERN))

# Automatically include any testbench source matching *_tb.cpp
TB_SRC := $(wildcard *_tb.c)

# Build target: compile selected variant(s) plus testbench(s)
all:
	g++ $(SRC) $(TB_SRC) -o result $(CFLAG) $(IFLAG)

# Synthesis target remains unchanged
synth:
	vitis_hls synth.tcl

# Cleanup
clean:
	rm -f *.o result *.log
