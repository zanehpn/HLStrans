// MALLOC_VARIANT

#include <stdint.h>

#define ARRAY_SIZE 1024

void stop_and_wait(uint32_t input[ARRAY_SIZE], uint32_t output[ARRAY_SIZE]) {
    // Dynamically allocate working buffers
    uint32_t* dynInput = new uint32_t[ARRAY_SIZE];
    uint32_t* dynOutput = new uint32_t[ARRAY_SIZE];

    // Copy input into dynamic buffer
    for (int i = 0; i < ARRAY_SIZE; i++) {
        dynInput[i] = input[i];
    }

    // Core processing using dynamic buffers
    for (int i = 0; i < ARRAY_SIZE; i++) {
        // Simulate sending data
        uint32_t sent_data = dynInput[i];

        // Simulate waiting for acknowledgment
        bool ack_received = false;
        while (!ack_received) {
            // In a real scenario, this would involve checking some condition
            // Here we simulate immediate acknowledgment for simplicity
            ack_received = true;
        }

        // Simulate receiving data
        dynOutput[i] = sent_data;
    }

    // Copy result back to output
    for (int i = 0; i < ARRAY_SIZE; i++) {
        output[i] = dynOutput[i];
    }

    // Free dynamic memory
    delete[] dynInput;
    delete[] dynOutput;
}
