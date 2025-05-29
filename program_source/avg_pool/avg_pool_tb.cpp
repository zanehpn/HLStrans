#include <stdio.h>
#include <stdlib.h>

typedef float fm_t;

const int IN_FM_DEPTH  = 512;
const int IN_FM_HEIGHT = 7;
const int IN_FM_WIDTH  = 7;

// Declare the function under test
void avg_pool(
    fm_t in[IN_FM_DEPTH][IN_FM_HEIGHT][IN_FM_WIDTH],
    fm_t out[IN_FM_DEPTH]
);

// Simple testbench
int main() {
    static fm_t in[IN_FM_DEPTH][IN_FM_HEIGHT][IN_FM_WIDTH];
    static fm_t out[IN_FM_DEPTH];
    int errors = 0;

    // --- Initialize all inputs to 1.0f ---
    for (int d = 0; d < IN_FM_DEPTH; ++d) {
        for (int i = 0; i < IN_FM_HEIGHT; ++i) {
            for (int j = 0; j < IN_FM_WIDTH; ++j) {
                in[d][i][j] = 1.0f;
            }
        }
    }

    // --- Call the DUT ---
    avg_pool(in, out);

    // --- Verify outputs ---
    for (int d = 0; d < IN_FM_DEPTH; ++d) {
        if (out[d] != 1.0f) {
            printf("ERROR @ channel %3d: expected 1.0, got %f\n", d, out[d]);
            errors++;
            // break; // uncomment to stop on first error
        }
    }

    if (errors == 0) {
        printf("TEST PASSED: all %d channels averaged correctly.\n", IN_FM_DEPTH);
    } else {
        printf("TEST FAILED: %d errors detected.\n", errors);
    }

    return (errors == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}
