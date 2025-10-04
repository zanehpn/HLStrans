// MALLOC_VARIANT

#include <stdint.h>
#include <cstdlib>

#define GPIO_SIZE 1024

void gpio_controller(uint8_t input_pins[GPIO_SIZE], uint8_t output_pins[GPIO_SIZE], uint8_t control_signal) {
    uint8_t* in_buf = static_cast<uint8_t*>(std::malloc(GPIO_SIZE * sizeof(uint8_t)));
    uint8_t* out_buf = static_cast<uint8_t*>(std::malloc(GPIO_SIZE * sizeof(uint8_t)));
    if (!in_buf || !out_buf) {
        if (in_buf) std::free(in_buf);
        if (out_buf) std::free(out_buf);
        return;
    }

    for (int i = 0; i < GPIO_SIZE; ++i) {
        in_buf[i] = input_pins[i];
    }

    if (control_signal & 0x01) {
        for (int i = 0; i < GPIO_SIZE; ++i) {
            out_buf[i] = in_buf[i];
        }
    } else {
        for (int i = 0; i < GPIO_SIZE; ++i) {
            out_buf[i] = 0;
        }
    }

    for (int i = 0; i < GPIO_SIZE; ++i) {
        output_pins[i] = out_buf[i];
    }

    std::free(in_buf);
    std::free(out_buf);
}
