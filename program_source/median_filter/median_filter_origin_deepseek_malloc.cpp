// ---- MALLOC_VARIANT: median_filter.cpp ----
#include <algorithm>

#define SIZE 1024

void median_filter(int input[SIZE], int output[SIZE]) {
    int* window = new int[3];

    for (int i = 1; i < SIZE - 1; i++) {

        window[0] = input[i - 1];
        window[1] = input[i];
        window[2] = input[i + 1];

        // Sort the window to find the median
        for (int j = 0; j < 2; j++) {
            for (int k = j + 1; k < 3; k++) {
                if (window[j] > window[k]) {
                    int temp = window[j];
                    window[j] = window[k];
                    window[k] = temp;
                }
            }
        }

        output[i] = window[1];
    }
    // Handle boundary conditions
    output[0] = input[0];
    output[SIZE - 1] = input[SIZE - 1];

    delete[] window;
}
