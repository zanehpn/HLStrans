// MALLOC_VARIANT
#include <cstdint>

#define ARRAY_SIZE 1024

void data_integrity_with_checksum(uint32_t input_data[ARRAY_SIZE], uint32_t *checksum) {
    uint32_t* dyn_input = new uint32_t[ARRAY_SIZE];

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        dyn_input[i] = input_data[i];
    }

    uint32_t sum = 0;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        sum += dyn_input[i];
    }

    delete[] dyn_input;
    *checksum = sum;
}
