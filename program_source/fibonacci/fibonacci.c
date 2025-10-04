// ---- file: fibonacci.cpp ----
#include <ap_int.h>

#define N 1024

void fibonacci(ap_uint<32> fib[N]) {
#pragma HLS ARRAY_PARTITION variable=fib type=cyclic dim=1 factor=1
    fib[0] = 0;
    fib[1] = 1;
    for (int i = 2; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        fib[i] = fib[i-1] + fib[i-2];
    }
}

// Top function name: fibonacci
