#include <ap_int.h>

unsigned long factorial(unsigned n) {
    unsigned long result = 1;
    // Iterative loop replaces recursion
    for (unsigned i = 1; i <= n; ++i) {
#pragma HLS UNROLL factor=8
        result *= i;
    }
    return result;
}
