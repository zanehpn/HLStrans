#include <stdio.h>
#include <string.h>
#include <cstdlib>

// Cannot synthesize: pointer-to-pointer and dynamic row allocation
int **matrix(int rows, int cols) {
    int **mat = malloc(rows * sizeof(int*));
    for (int i = 0; i < rows; i++) {
        mat[i] = malloc(cols * sizeof(int));
    }
    return mat;
}
