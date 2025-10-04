// Converted from priority_arbiter_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: priority_arbiter.cpp ----
#include <stdint.h>

#define NUM_REQUESTS 1024

void priority_arbiter(uint8_t requests[NUM_REQUESTS], uint8_t grants[NUM_REQUESTS]) {

    for (int i = 0; i < NUM_REQUESTS; i++) {

        grants[i] = 0;
    }

    for (int i = 0; i < NUM_REQUESTS; i++) {

        if (requests[i] == 1) {
            grants[i] = 1;
            break;
        }
    }
}

// Top function name: priority_arbiter
