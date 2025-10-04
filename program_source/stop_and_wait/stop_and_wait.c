// ---- file: stop_and_wait.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024

void stop_and_wait(uint32_t input[ARRAY_SIZE], uint32_t output[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=4
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
        // Simulate sending data
        uint32_t sent_data = input[i];

        // Simulate waiting for acknowledgment
        bool ack_received = false;
        while (!ack_received) {
            // In a real scenario, this would involve checking some condition
            // Here we simulate immediate acknowledgment for simplicity
            ack_received = true;
        }

        // Simulate receiving data
        output[i] = sent_data;
    }
}

// Top function name: stop_and_wait
