#include <cstdint>

#define ARRAY_SIZE 1024

void single_number_problem(int32_t input_array[ARRAY_SIZE], int32_t &result) {
    result = 0;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        result ^= input_array[i];
    }
}
