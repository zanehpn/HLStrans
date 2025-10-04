// Converted from fibonacci_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: fibonacci.cpp ----
#include <ap_int.h>

#define N 1024

void fibonacci(ap_uint<32> fib[N]) {

    fib[0] = 0;
    fib[1] = 1;
    for (int i = 2; i < N; i++) {

        fib[i] = fib[i-1] + fib[i-2];
    }
}

// Top function name: fibonacci
