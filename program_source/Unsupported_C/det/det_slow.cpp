#include <stdlib.h>

// Compute determinant via Laplace expansion (recursive)
float det(float **A, int n) {
    if (n == 1) return A[0][0];
    float detA = 0;
    for (int j = 0; j < n; j++) {
        // Build submatrix by malloc
        float **sub = malloc((n-1) * sizeof(float*));
        for (int i = 0; i < n-1; i++) {
            sub[i] = malloc((n-1) * sizeof(float));
            // copy excluding row 0, col j...
        }
        float sign = (j % 2 == 0) ? 1 : -1;
        detA += sign * A[0][j] * det(sub, n-1);
        // free sub
    }
    return detA;
}
