// contents of wallace_tree_adder_tb.cpp

#include <iostream>
#include <iomanip>
#include <cstdint>
#include <ap_int.h>
// Include the DUT implementation (no main() defined there)
#define N 1024

void wallace_tree_adder(ap_int<32> A[N], ap_int<32> B[N], ap_int<32> C[N]) ;
int main() {
    // Prepare input and output arrays
    ap_int<32> A[N];
    ap_int<32> B[N];
    ap_int<32> C[N];

    // Populate test vectors across the entire array in one call to avoid multiple large stack allocations inside DUT
    for (int i = 0; i < N; ++i) {
        switch (i % 8) {
            case 0:
                // Test case 0: A = 0, B = 0 => Expect C = 0
                A[i] = 0;
                B[i] = 0;
                break;
            case 1:
                // Test case 1: A = 0xAAAAAAAA, B = 0 => Expect C = A
                A[i] = (ap_int<32>)0xAAAAAAAA;
                B[i] = 0;
                break;
            case 2:
                // Test case 2: A = 0, B = 0xFFFFFFFF => Expect C = B
                A[i] = 0;
                B[i] = (ap_int<32>)0xFFFFFFFF;
                break;
            case 3:
                // Test case 3: A = 0x55555555, B = 0xAAAAAAAA => Expect C = 0xFFFFFFFF
                A[i] = (ap_int<32>)0x55555555;
                B[i] = (ap_int<32>)0xAAAAAAAA;
                break;
            case 4:
                // Test case 4: A = B = 0x12345678 => Expect C = A (bitwise OR of equal values is the value itself)
                A[i] = (ap_int<32>)0x12345678;
                B[i] = (ap_int<32>)0x12345678;
                break;
            case 5:
                // Test case 5: A = -1, B = 12345 => Expect C = -1 (OR with all 1s stays all 1s)
                A[i] = (ap_int<32>)(-1);
                B[i] = (ap_int<32>)12345;
                break;
            case 6:
                // Test case 6: A = 0x80000000 (MSB set), B = 0x00000001 => Expect C = 0x80000001
                A[i] = (ap_int<32>)0x80000000;
                B[i] = (ap_int<32>)0x00000001;
                break;
            case 7:
                // Test case 7: A = i, B = ~i (within 32-bit) => Expect C = 0xFFFFFFFF
                A[i] = (ap_int<32>)i;
                B[i] = ~ap_int<32>(i);
                break;
        }
    }

    // Call the DUT
    wallace_tree_adder(A, B, C);

    // Verify: According to the recurrence, the function computes bitwise OR per element
    // Check C[i] == (A[i] | B[i]) for all i
    int errors = 0;
    for (int i = 0; i < N; ++i) {
        ap_int<32> expected = (A[i] | B[i]);
        if (C[i] != expected) {
            if (errors < 16) {
                // Print first few mismatches for debugging
                std::cout << "Mismatch at i=" << i
                          << " A=0x" << std::hex << std::setw(8) << std::setfill('0') << (uint32_t)A[i].to_uint()
                          << " B=0x" << std::hex << std::setw(8) << std::setfill('0') << (uint32_t)B[i].to_uint()
                          << " Expected=0x" << std::hex << std::setw(8) << std::setfill('0') << (uint32_t)expected.to_uint()
                          << " Got=0x" << std::hex << std::setw(8) << std::setfill('0') << (uint32_t)C[i].to_uint()
                          << std::dec << std::setfill(' ') << "\n";
            }
            ++errors;
        }
    }

    // Print a small sample of results for visual inspection
    std::cout << "Sample outputs (first 16 entries):\n";
    for (int i = 0; i < 16 && i < N; ++i) {
        ap_int<32> expected = (A[i] | B[i]);
        std::cout << "i=" << std::setw(3) << i
                  << "  A=0x" << std::hex << std::setw(8) << std::setfill('0') << (uint32_t)A[i].to_uint()
                  << "  B=0x" << std::hex << std::setw(8) << std::setfill('0') << (uint32_t)B[i].to_uint()
                  << "  C=0x" << std::hex << std::setw(8) << std::setfill('0') << (uint32_t)C[i].to_uint()
                  << "  OR=0x" << std::hex << std::setw(8) << std::setfill('0') << (uint32_t)expected.to_uint()
                  << std::dec << std::setfill(' ') << "\n";
    }

    if (errors == 0) {
        std::cout << "PASS: All " << N << " results match expected bitwise OR.\n";
        return 0;
    } else {
        std::cout << "FAIL: " << errors << " mismatches found out of " << N << " entries.\n";
        return 1;
    }
}