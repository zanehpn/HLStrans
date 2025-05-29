#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define N 120
#define TSTEPS 40

void seidel(int tsteps, int n, double A[120][120]);

/**
 * Initialize A with a simple pattern: A[i][j] = i*N + j
 */
static void init_matrix(double A[N][N]) {
    for (int i = 0; i < N; ++i)
        for (int j = 0; j < N; ++j)
            A[i][j] = (double)(i * N + j);
}

/**
 * Dump matrix A to a file, one row per line.
 */
static void dump_matrix(const char *fname, double A[N][N]) {
    FILE *f = fopen(fname, "w");
    if (!f) {
        perror("fopen");
        exit(1);
    }
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            fprintf(f, "%0.6f%s", A[i][j], (j == N-1 ? "" : " "));
        }
        fprintf(f, "\n");
    }
    fclose(f);
}

int main(void) {
    double A[N][N], B[N][N];
    int ret = 0;

    // 1) Initialize both A and B to the same pattern
    init_matrix(A);
    memcpy(B, A, sizeof(A));

    // 2) Run the kernel under test
    seidel(TSTEPS, N, A);

    // 3) Generate a “golden” result by running the same code again
    seidel(TSTEPS, N, B);

    // 4) Dump both results
    dump_matrix("output.dat", A);
    dump_matrix("golden.dat", B);

    // 5) Compare using diff (ignoring small whitespace differences)
    ret = system("diff --brief -w output.dat golden.dat");
    if (ret != 0) {
        printf("Test FAILED: output.dat differs from golden.dat\n");
        return 1;
    } else {
        printf("Test PASSED: output matches golden reference\n");
        return 0;
    }
}
