// Converted from single_number_problem_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: single_number_problem.cpp ----
#include <ap_int.h>

#define ARRAY_SIZE 1024

void single_number_problem(ap_int<32> input_array[ARRAY_SIZE], ap_int<32> &result) {

    result = 0;
    for (int i = 0; i < ARRAY_SIZE; i++) {

        result ^= input_array[i];
    }
}

// Top function name: single_number_problem
