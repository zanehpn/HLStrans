// Converted from rotate_array_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: rotate_array.cpp ----

#define ARRAY_SIZE 1024

void rotate_array(int input_array[ARRAY_SIZE], int output_array[ARRAY_SIZE], int rotate_by) {

    int i;
    for (i = 0; i < ARRAY_SIZE; i++) {

        int new_index = (i + rotate_by) % ARRAY_SIZE;
        output_array[new_index] = input_array[i];
    }
}

// Top function name: rotate_array
