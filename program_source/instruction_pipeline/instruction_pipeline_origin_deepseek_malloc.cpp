#include <iostream>

#define ARRAY_SIZE 1024

void instruction_pipeline(int input[ARRAY_SIZE], int output[ARRAY_SIZE]) {

    int* stage1 = new int[ARRAY_SIZE];
    int* stage2 = new int[ARRAY_SIZE];
    int* stage3 = new int[ARRAY_SIZE];

    // Stage 1: Simple transformation
    for (int i = 0; i < ARRAY_SIZE; i++) {
        stage1[i] = input[i] + 1;
    }

    // Stage 2: Another transformation
    for (int i = 0; i < ARRAY_SIZE; i++) {
        stage2[i] = stage1[i] * 2;
    }

    // Stage 3: Final transformation
    for (int i = 0; i < ARRAY_SIZE; i++) {
        stage3[i] = stage2[i] - 3;
    }

    // Output the result
    for (int i = 0; i < ARRAY_SIZE; i++) {
        output[i] = stage3[i];
    }

    delete[] stage1;
    delete[] stage2;
    delete[] stage3;
}
