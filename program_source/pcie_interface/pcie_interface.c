// ---- file: pcie_interface.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024

void pcie_interface(uint32_t input_data[ARRAY_SIZE], uint32_t output_data[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output_data type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=input_data type=cyclic dim=1 factor=4
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
        output_data[i] = input_data[i] * 2;
    }
}

// Top function name: pcie_interface
