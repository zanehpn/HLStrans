// file: karatsuba_tb.cpp

#include <iostream>
#include <cstdlib>
#include <ctime>
#include <ap_int.h>
#include <cassert>

// Kernel prototype
void karatsuba(
    ap_uint<32>  A[8],
    ap_uint<32>  B[8],
    ap_uint<64>  C[16]
);

// Reference 256‑bit multiply (schoolbook, for verification)
void ref_mul(
    const uint32_t A[8],
    const uint32_t B[8],
    uint64_t C_ref[16]
) {
    // Initialize
    for (int i = 0; i < 16; ++i) C_ref[i] = 0;
    // Schoolbook multiply
    for (int i = 0; i < 8; ++i) {
        for (int j = 0; j < 8; ++j) {
            uint64_t prod = uint64_t(A[i]) * uint64_t(B[j]);
            C_ref[i+j]   += (prod & 0xFFFFFFFFULL);
            C_ref[i+j+1] += (prod >> 32);
        }
    }
}

int main() {
    constexpr int NLIMBS = 8;
    // Host buffers
    ap_uint<32> A[NLIMBS], B[NLIMBS];
    ap_uint<64> C_hls[2*NLIMBS];
    uint32_t    A_sw[NLIMBS], B_sw[NLIMBS];
    uint64_t    C_ref[2*NLIMBS];

    // Seed PRNG
    std::srand(static_cast<unsigned>(std::time(nullptr)));                     
    // Number of random tests
    const int TESTS = 1000;

    bool pass = true;

    for (int t = 0; t < TESTS; ++t) {
        // 1) Generate random 32‑bit limbs
        for (int i = 0; i < NLIMBS; ++i) {
            uint32_t valA = (uint32_t(std::rand()) << 16) ^ uint32_t(std::rand());
            uint32_t valB = (uint32_t(std::rand()) << 16) ^ uint32_t(std::rand());
            A[i]    = valA;
            B[i]    = valB;
            A_sw[i] = valA;
            B_sw[i] = valB;
        }

        // 2) Invoke HLS kernel
        karatsuba(A, B, C_hls);                                                  

        // 3) Compute software reference
        ref_mul(A_sw, B_sw, C_ref);

        // 4) Compare results limb‑by‑limb
        for (int i = 0; i < 2*NLIMBS; ++i) {
            uint64_t hls_val = C_hls[i].to_uint64();
            uint64_t ref_val = C_ref[i];
            if (hls_val != ref_val) {
                std::cout << "Mismatch at test " << t << ", limb " << i
                          << ": HLS=0x" << std::hex << hls_val
                          << " REF=0x" << ref_val << std::dec << "\n";        
                pass = false;
                break;
            }
        }
        if (!pass) break;
    }

    // 5) Final PASS/FAIL report
    if (pass) {
        std::cout << "TEST PASSED\n";                                           
    } else {
        std::cout << "TEST FAILED\n";                                           
        return 1;
    }
}
