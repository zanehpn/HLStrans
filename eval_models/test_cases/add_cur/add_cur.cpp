#include <ap_int.h>

unsigned long add_rur(unsigned n) {
    unsigned long result = 1;
#pragma HLS PIPELINE II=1
    // Iterative loop replaces recursion
    for (unsigned i = 1; i <= n; ++i) {
#pragma HLS UNROLL factor=2
        result *= i;
    }
    return result;
}
