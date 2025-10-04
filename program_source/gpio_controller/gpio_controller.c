// ---- file: gpio_controller.cpp ----
#include <stdint.h>

#define GPIO_SIZE 1024

void gpio_controller(uint8_t input_pins[GPIO_SIZE], uint8_t output_pins[GPIO_SIZE], uint8_t control_signal) {
#pragma HLS ARRAY_PARTITION variable=output_pins type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=input_pins type=cyclic dim=1 factor=4
    for (int i = 0; i < GPIO_SIZE; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=4
        if (control_signal & 0x01) {
            output_pins[i] = input_pins[i];
        } else {
            output_pins[i] = 0;
        }
    }
}

// Top function name: gpio_controller
