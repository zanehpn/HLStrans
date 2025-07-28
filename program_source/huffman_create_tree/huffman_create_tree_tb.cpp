#include <iostream>
#include <cstring>
#include <cassert>
#include "ap_int.h"
#include "huffman_create_tree.h"
// ----------------------------------------------------------------

bool test_custom_frequencies() {
    // We'll test with 4 symbols of known frequencies
    const int n = 4;
    Symbol in[INPUT_SYMBOL_SIZE];
    // Fill only the first n entries
    in[0] = {0, 5};   // symbol 0, freq 5
    in[1] = {1, 9};   // symbol 1, freq 9
    in[2] = {2, 12};  // symbol 2, freq 12
    in[3] = {3, 13};  // symbol 3, freq 13
    // Zero out the rest
    for(int i = n; i < INPUT_SYMBOL_SIZE; i++) {
        in[i] = {0, 0};
    }

    // Allocate outputs
    ap_uint<SYMBOL_BITS> parent[INPUT_SYMBOL_SIZE-1];
    ap_uint<SYMBOL_BITS> left[INPUT_SYMBOL_SIZE-1];
    ap_uint<SYMBOL_BITS> right[INPUT_SYMBOL_SIZE-1];

    // Initialize to a bad value
    for(int i = 0; i < INPUT_SYMBOL_SIZE-1; i++) {
        parent[i] = (ap_uint<SYMBOL_BITS>)-2;
        left[i]   = (ap_uint<SYMBOL_BITS>)-2;
        right[i]  = (ap_uint<SYMBOL_BITS>)-2;
    }

    // Call the DUT
    huffman_create_tree(in, n, parent, left, right);

    // 1) Check that the last internal node's parent is set to 0
    //    (tree_count == n-1 at the end, so parent[n-2] == 0)
    if(parent[n-2] != 0) {
        std::cerr << "FAIL: parent[" << (n-2) << "] = "
                  << parent[n-2] << ", expected 0\n";
        return false;
    }

    // 2) For each internal node k=0..n-2:
    //    left[k] or right[k] must be either a valid symbol < n or the INTERNAL_NODE marker.
    for(int k = 0; k < n-1; k++) {
        auto chk = [&](ap_uint<SYMBOL_BITS> x){
            return (x < (ap_uint<SYMBOL_BITS>)n) || (x == INTERNAL_NODE);
        };
        if(!chk(left[k]) || !chk(right[k])) {
            std::cerr << "FAIL: invalid child at node " << k
                      << ": left=" << left[k]
                      << ", right=" << right[k] << "\n";
            return false;
        }
    }

    // 3) Parent pointers should only point to a higher-indexed node (or 0).
    for(int k = 0; k < n-1; k++) {
        auto p = parent[k];
        if(p != 0 && p <= (ap_uint<SYMBOL_BITS>)k) {
            std::cerr << "FAIL: parent[" << k << "] = "
                      << p << " (not > " << k << ")\n";
            return false;
        }
    }

    return true;
}

int main() {
    bool ok = test_custom_frequencies();

    if(ok) {
        std::cout << "PASS\n";
        return 0;
    } else {
        std::cout << "FAIL\n";
        return 1;
    }
}
