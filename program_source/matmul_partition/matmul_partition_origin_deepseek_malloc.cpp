// MALLOC_VARIANT

#define MAX_DIM 16

void matmul_partition(int* in1, int* in2, int* out_r, int dim, int rep_count);

const unsigned int c_dim = MAX_DIM;

void matmul_partition(int* in1, int* in2, int* out_r, int dim, int rep_count) {
    int* A = new int[MAX_DIM * MAX_DIM];
    int* B = new int[MAX_DIM * MAX_DIM];
    int* C = new int[MAX_DIM * MAX_DIM];

    // Read matrix A
    for (int itr = 0, i = 0, j = 0; itr < dim * dim; itr++, j++) {
        if (j == dim) {
            j = 0;
            i++;
        }
        A[i * MAX_DIM + j] = in1[itr];
    }

    // Read matrix B
    for (int itr = 0, i = 0, j = 0; itr < dim * dim; itr++, j++) {
        if (j == dim) {
            j = 0;
            i++;
        }
        B[i * MAX_DIM + j] = in2[itr];
    }

    // Core computation
    for (int x = 0; x < rep_count; x++) {
        for (int i = 0; i < dim; i++) {
            for (int j = 0; j < dim; j++) {
                int result = 0;
                for (int k = 0; k < MAX_DIM; k++) {
                    result += A[i * MAX_DIM + k] * B[k * MAX_DIM + j];
                }
                C[i * MAX_DIM + j] = result;
            }
        }
    }

    // Write matrix C
    for (int itr = 0, i = 0, j = 0; itr < dim * dim; itr++, j++) {
        if (j == dim) {
            j = 0;
            i++;
        }
        out_r[itr] = C[i * MAX_DIM + j];
    }

    delete[] A;
    delete[] B;
    delete[] C;
}
