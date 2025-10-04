// ---- file: pulse_generator_malloc_variant.cpp ----
#include <iostream>
#include <cstdlib>

#define SIZE 1024

void pulse_generator(int threshold, int pulse_width, int output[SIZE]) {
    int* buf = static_cast<int*>(std::malloc(SIZE * sizeof(int)));
    if (!buf) {
        // Allocation failed; leave output unchanged or set default values
        return;
    }

    for (int i = 0; i < SIZE; i++) {
        buf[i] = (i % pulse_width < threshold) ? 1 : 0;
    }

    for (int i = 0; i < SIZE; i++) {
        output[i] = buf[i];
    }

    std::free(buf);
}
