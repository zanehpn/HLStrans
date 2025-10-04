// Converted from product_of_array_except_self_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: product_of_array_except_self.cpp ----
#include <iostream>

#define ARRAY_SIZE 1024

void product_of_array_except_self(int input[ARRAY_SIZE], int output[ARRAY_SIZE]) {

    int left_products[ARRAY_SIZE];
    int right_products[ARRAY_SIZE];

    left_products[0] = 1;
    for (int i = 1; i < ARRAY_SIZE; i++) {

        left_products[i] = left_products[i - 1] * input[i - 1];
    }

    right_products[ARRAY_SIZE - 1] = 1;
    for (int i = ARRAY_SIZE - 2; i >= 0; i--) {

        right_products[i] = right_products[i + 1] * input[i + 1];
    }

    for (int i = 0; i < ARRAY_SIZE; i++) {

        output[i] = left_products[i] * right_products[i];
    }
}

// Top function name: product_of_array_except_self
