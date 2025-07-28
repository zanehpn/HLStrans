#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "mvt.h"

#define TOLERANCE 1e-5

int main() {
    int i, j;
    DATA_TYPE A[N][N];
    DATA_TYPE x1[N], x2[N], y1[N], y2[N];
    DATA_TYPE x1_out[N], x2_out[N];
    DATA_TYPE expected_x1[N], expected_x2[N];

    for (i = 0; i < N; i++) {
        x1[i] = (DATA_TYPE)1;
        x2[i] = (DATA_TYPE)2;
        y1[i] = (DATA_TYPE)3;
        y2[i] = (DATA_TYPE)4;
        for (j = 0; j < N; j++) {
            A[i][j] = (DATA_TYPE)(i + j);
        }
    }

    // Compute the expected results.
    // For each i:
    // expected_x1[i] = x1[i] + sum_{j=0}^{N-1} (A[i][j] * y1[j])
    // expected_x2[i] = x2[i] + sum_{j=0}^{N-1} (A[j][i] * y2[j])
    for (i = 0; i < N; i++) {
        DATA_TYPE sum1 = 0;
        DATA_TYPE sum2 = 0;
        for (j = 0; j < N; j++) {
            sum1 += A[i][j] * y1[j];
            sum2 += A[j][i] * y2[j];
        }
        expected_x1[i] = x1[i] + sum1;
        expected_x2[i] = x2[i] + sum2;
    }

    // Call the mvt accelerator function.
    mvt(A, x1, x2, y1, y2, x1_out, x2_out);

    // Verify the results.
    int pass = 1;
    for (i = 0; i < N; i++) {
        if (fabs((double)x1_out[i] - (double)expected_x1[i]) > TOLERANCE) {
            pass = 0;
            break;
        }
        if (fabs((double)x2_out[i] - (double)expected_x2[i]) > TOLERANCE) {
            pass = 0;
            break;
        }
    }

    // Print the test result.
    if (pass) {
        printf("Test Passed!\n");
    } else {
        printf("Test Failed!\n");
        printf("Expected x1: ");
        for (i = 0; i < N; i++) {
            printf("%f ", (double)expected_x1[i]);
        }
        printf("\nObtained x1: ");
        for (i = 0; i < N; i++) {
            printf("%f ", (double)x1_out[i]);
        }
        printf("\nExpected x2: ");
        for (i = 0; i < N; i++) {
            printf("%f ", (double)expected_x2[i]);
        }
        printf("\nObtained x2: ");
        for (i = 0; i < N; i++) {
            printf("%f ", (double)x2_out[i]);
        }
        printf("\n");
    }

    return 0;
}
