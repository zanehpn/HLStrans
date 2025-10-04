// Converted from bubble_sort_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: bubble_sort.cpp ----
#include <cstdint>

#define ARRAY_SIZE 1024

void bubble_sort(int32_t array[ARRAY_SIZE]) {

    for (int i = 0; i < ARRAY_SIZE - 1; i++) {

        for (int j = 0; j < ARRAY_SIZE - i - 1; j++) {

            if (array[j] > array[j + 1]) {
                int32_t temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }
}

// Top function name: bubble_sort
