#include <cstdint>

unsigned long factorial_iterative(unsigned n) {
    unsigned long result = 1;
    for (unsigned i = 1; i <= n; ++i) {
        result *= i;
    }
    return result;
}