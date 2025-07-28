#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "compute_near.h"


int main() {
    // Allocate memory for searchSpace and distance arrays
    float inputQuery[NUM_FEATURE];
    float *searchSpace = (float *)malloc(sizeof(float) * NUM_PT_IN_SEARCHSPACE * NUM_FEATURE);
    float *distance = (float *)malloc(sizeof(float) * NUM_PT_IN_SEARCHSPACE);

    if (!searchSpace || !distance) {
        printf("Memory allocation failed\n");
        return 1;
    }

    // Initialize the input query to (0.0, 0.0)
    inputQuery[0] = 0.0f;
    inputQuery[1] = 0.0f;

    // Initialize searchSpace: every point is (3.0, 4.0)
    for (int i = 0; i < NUM_PT_IN_SEARCHSPACE; i++) {
        searchSpace[i*NUM_FEATURE + 0] = 3.0f;
        searchSpace[i*NUM_FEATURE + 1] = 4.0f;
    }

    // Call the knn function to compute squared Euclidean distances
    compute_near(inputQuery, searchSpace, distance);

    // Verify that each computed distance equals 25.0 (3^2 + 4^2)
    int errors = 0;
    for (int i = 0; i < NUM_PT_IN_SEARCHSPACE; i++) {
        float expected = 25.0f;
        if (fabs(distance[i] - expected) > 1e-6) {
            errors++;
        }
    }

    // Print the test result
    if (errors == 0) {
        printf("Test passed\n");
    } else {
        printf("Test failed, errors = %d\n", errors);
    }

    // Free allocated memory
    free(searchSpace);
    free(distance);
    return 0;
}
