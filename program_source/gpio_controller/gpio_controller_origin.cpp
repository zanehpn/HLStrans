// Converted from gpio_controller_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: gpio_controller.cpp ----
#include <stdint.h>

#define GPIO_SIZE 1024

void gpio_controller(uint8_t input_pins[GPIO_SIZE], uint8_t output_pins[GPIO_SIZE], uint8_t control_signal) {

    for (int i = 0; i < GPIO_SIZE; i++) {

        if (control_signal & 0x01) {
            output_pins[i] = input_pins[i];
        } else {
            output_pins[i] = 0;
        }
    }
}

// Top function name: gpio_controller
