#include <stdio.h>
#include <stdlib.h>
#include "fir.h"  // Assumes NUM_TAPS is defined in fir.h as 20 now

int main() {
    // Define taps array with 20 coefficients. Only the first four are active.
    int taps[NUM_TAPS] = {1, 2, 3, 4, 
                          0, 0, 0, 0, 0, 
                          0, 0, 0, 0, 0, 
                          0, 0, 0, 0, 0, 0};

    // Define the input sequence.
    int inputs[] = {1, 2, 3, 4, 5};
    int num_inputs = sizeof(inputs) / sizeof(inputs[0]);

    // Expected outputs calculated with the active taps.
    // Call 1: delay_lane = [1, 0, ..., 0]        => 1*1 = 1
    // Call 2: delay_lane = [2, 1, 0, ..., 0]       => 2*1 + 1*2 = 4
    // Call 3: delay_lane = [3, 2, 1, 0, ..., 0]      => 3*1 + 2*2 + 1*3 = 10
    // Call 4: delay_lane = [4, 3, 2, 1, 0, ..., 0]   => 4*1 + 3*2 + 2*3 + 1*4 = 20
    // Call 5: delay_lane = [5, 4, 3, 2, 1, 0, ..., 0]  => 5*1 + 4*2 + 3*3 + 2*4 = 30
    int expected[] = {1, 4, 10, 20, 30};

    int pass = 1;  // Flag: 1 means pass, 0 means fail

    for (int i = 0; i < num_inputs; i++) {
        int output;
        fir(inputs[i], &output, taps);
        if (output != expected[i]) {
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
