#include <stdio.h>
#include <math.h>
#include <stdlib.h>

typedef double data_t;
#define SZ 8

data_t accumulate_vals(const data_t A[SZ]) {
    data_t acc = 0.0;
    for (int i = 0; i < SZ; ++i) {
        printf("A: %f\n", A[i]);
        acc += A[i];
    }
    return acc;
}

void process_array(const data_t in[SZ], data_t out[SZ]) {
    for (int i = 0; i < SZ; ++i) {
        out[i] = in[i];
    }
}

void inner(const data_t A[SZ], const data_t stream_in[SZ], data_t *out) {
    data_t* regA = (data_t*)malloc(SZ * sizeof(data_t));
    for (int i = 0; i < SZ; ++i) {
        regA[i] = A[i] + stream_in[i];
    }
    *out = accumulate_vals(regA);
    free(regA);
}

void free_pipe_mult(const data_t A[SZ], const data_t strm_in[SZ], data_t *out) {
    data_t* B = (data_t*)malloc(SZ * sizeof(data_t));
    data_t* strm_buf = (data_t*)malloc(SZ * sizeof(data_t));

    for (int i = 0; i < SZ; ++i) {
        B[i] = A[i] + (data_t)i;
    }

    process_array(strm_in, strm_buf);
    inner(B, strm_buf, out);

    free(B);
    free(strm_buf);
}
