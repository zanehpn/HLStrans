// Converted from uart_transmitter_receiver_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: uart_transmitter_receiver.cpp ----
#include <stdint.h>

#define BUFFER_SIZE 1024

void uart_transmitter_receiver(uint8_t tx_data[BUFFER_SIZE], uint8_t rx_data[BUFFER_SIZE], uint8_t tx_enable, uint8_t rx_enable, uint8_t *tx_done, uint8_t *rx_done) {

    uint8_t tx_buffer[BUFFER_SIZE];
    uint8_t rx_buffer[BUFFER_SIZE];

    // Transmitter
    if (tx_enable) {
        for (int i = 0; i < BUFFER_SIZE; i++) {

            tx_buffer[i] = tx_data[i];
        }
        *tx_done = 1;
    } else {
        *tx_done = 0;
    }

    // Receiver
    if (rx_enable) {
        for (int i = 0; i < BUFFER_SIZE; i++) {

            rx_data[i] = rx_buffer[i];
        }
        *rx_done = 1;
    } else {
        *rx_done = 0;
    }
}

// Top function name: uart_transmitter_receiver
