#include <stdio.h>
#include <string.h>

#include "histogram.h"

extern void histogram(int in[INPUT_SIZE], int hist[VALUE_SIZE]);

int main() {
    // Updated input array with 70 elements.
    // The sequence is based on a 20-element pattern repeated 3 times plus an extra 10 elements.
    int in[INPUT_SIZE] = {
        // First 20 elements:
        1, 3, 1, 0, 2, 3, 1, 2, 0, 1,
        2, 3, 1, 1, 2, 0, 3, 2, 1, 0,
        // Second 20 elements:
        1, 3, 1, 0, 2, 3, 1, 2, 0, 1,
        2, 3, 1, 1, 2, 0, 3, 2, 1, 0,
        // Third 20 elements:
        1, 3, 1, 0, 2, 3, 1, 2, 0, 1,
        2, 3, 1, 1, 2, 0, 3, 2, 1, 0,
        // Additional 10 elements:
        1, 3, 1, 0, 2, 3, 1, 2, 0, 1
    };
    
    int hist[VALUE_SIZE] = {0};
    int expected[VALUE_SIZE] = {0};

    // Compute expected histogram values based on the input array.
    for (int i = 0; i < INPUT_SIZE; i++) {
        expected[in[i]]++;
    }
    
    // Call the histogram function.
    histogram(in, hist);
    
    // Compare the computed histogram to the expected values.
    int pass = 1;
    for (int i = 0; i < VALUE_SIZE; i++) {
        if (hist[i] != expected[i]) {
            pass = 0;
            break;
        }
    }
    
    if (pass) {
        printf("test pass\n");
    } else {
        printf("test fail\n");
    }
    
    return 0;
}
