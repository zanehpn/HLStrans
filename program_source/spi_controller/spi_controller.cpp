// Converted from spi_controller.c to .cpp by convert_and_transform_with_deepseek_auto.py

// ---- file: spi_controller.cpp ----
#include <stdint.h>

#define DATA_SIZE 1024

void spi_controller(uint8_t data_in[DATA_SIZE], uint8_t data_out[DATA_SIZE], uint8_t control[DATA_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=control type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=data_out type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=data_in type=cyclic dim=1 factor=2
    uint8_t shift_register = 0;
    for (int i = 0; i < DATA_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        // Load data into shift register
        shift_register = data_in[i];
        
        // Simulate SPI transfer
        for (int bit = 0; bit < 8; bit++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=16
            // Shift out the MSB
            uint8_t mosi = (shift_register & 0x80) >> 7;
            shift_register <<= 1;
            
            // Simulate receiving data on MISO
            uint8_t miso = control[i] & (1 << bit) ? 1 : 0;
            shift_register |= miso;
        }
        
        // Store the received data
        data_out[i] = shift_register;
    }
}

// Top function name: spi_controller
