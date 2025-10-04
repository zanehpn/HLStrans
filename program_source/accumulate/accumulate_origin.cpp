#include <stdio.h>
#include <math.h>
#include <stdlib.h>

typedef double data_t;
#define SZ 8

/* Sum elements of A and print each element.
   Returns a double (sum). */
data_t accumulate_vals(const data_t A[SZ]) {
    data_t acc = 0.0;
    for (int i = 0; i < SZ; ++i) {
        printf("A: %f\n", A[i]);
        acc += A[i];
    }
    return acc;
}

/* Copy SZ elements from in[] to out[]. If in is shorter, treat missing elements as 0. */
void process_array(const data_t in[SZ], data_t out[SZ]) {
    for (int i = 0; i < SZ; ++i) {
        out[i] = in[i];
    }
}

/* Combine A and stream_in element-wise into regA, then compute sum into *out. */
void inner(const data_t A[SZ], const data_t stream_in[SZ], data_t *out) {
    data_t regA[SZ];
    for (int i = 0; i < SZ; ++i) {
        regA[i] = A[i] + stream_in[i];
    }
    *out = accumulate_vals(regA);
}

/* Top-level: build B from A, process input stream into local buffer, then compute inner result. */
void free_pipe_mult(const data_t A[SZ], const data_t strm_in[SZ], data_t *out) {
    data_t B[SZ];
    data_t strm_buf[SZ];

    for (int i = 0; i < SZ; ++i) {
        B[i] = A[i] + (data_t)i;
    }

    process_array(strm_in, strm_buf);
    inner(B, strm_buf, out);
}