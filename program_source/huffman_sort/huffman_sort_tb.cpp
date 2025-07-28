#include <iostream>
#include <cassert>
#include <cstring>
#include "ap_int.h"
#include "huffman_sort.h"


bool test_simple_case() {
    // Test with 5 symbols of known frequencies
    const int n = 5;
    Symbol in[INPUT_SYMBOL_SIZE];
    Symbol out[INPUT_SYMBOL_SIZE];

    // Frequencies: 50, 10, 30, 20, 40
    int freqs[n] = {50, 10, 30, 20, 40};
    for(int i = 0; i < n; i++) {
        in[i].value     = i;
        in[i].frequency = freqs[i];
    }
    // Zero‐initialize rest
    std::memset(in + n, 0, sizeof(Symbol)*(INPUT_SYMBOL_SIZE - n));
    std::memset(out, 0, sizeof(out));

    // Call DUT
    huffman_sort(in, n, out);

    // Verify sorted order by frequency
    for(int i = 1; i < n; i++) {
        if (out[i-1].frequency > out[i].frequency) {
            std::cerr << "FAIL: out[" << (i-1) << "]="
                      << out[i-1].frequency << " > out[" << i
                      << "]=" << out[i].frequency << "\n";
            return false;
        }
    }

    // Also verify values followed the sorted order
    int sorted[n] = {10,20,30,40,50};
    for(int i = 0; i < n; i++) {
        if ((int)out[i].frequency != sorted[i]) {
            std::cerr << "FAIL: expected frequency " << sorted[i]
                      << " at position " << i
                      << ", got " << out[i].frequency << "\n";
            return false;
        }
    }

    return true;
}

int main() {
    bool ok = test_simple_case();

    if (ok) {
        std::cout << "PASS\n";
        return 0;
    } else {
        std::cout << "FAIL\n";
        return 1;
    }
}
