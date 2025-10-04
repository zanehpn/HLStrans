// contents of DES_encrypt_tb.cpp

#include <iostream>
#include <iomanip>
#include <cassert>
#include <string>

// Include the source under test (no main defined there)
#include <ap_int.h>

#define DATA_SIZE 1024

void DES_encrypt(ap_uint<64> plaintext[DATA_SIZE], ap_uint<64> key, ap_uint<64> ciphertext[DATA_SIZE]);
// Reference model replicating the simplified DES behavior in DES_encrypt.cpp
static ap_uint<64> DES_encrypt_ref_word(ap_uint<64> pt, ap_uint<64> key) {
    ap_uint<48> subkeys[16];
    ap_uint<64> permuted_text;
    ap_uint<32> left, right, temp;

    // Simplified key schedule
    for (int i = 0; i < 16; i++) {
        subkeys[i] = key.range(47, 0);
    }

    // Simplified initial permutation
    permuted_text = pt;
    left = permuted_text.range(63, 32);
    right = permuted_text.range(31, 0);

    // 16 rounds
    for (int round = 0; round < 16; round++) {
        temp = right;
        right = left ^ (right ^ subkeys[round]);
        left = temp;
    }

    // Simplified final permutation (match exact code semantics)
    ap_uint<64> out = (ap_uint<64>(right), ap_uint<64>(left));
    return out;
}

static void run_test_case(const std::string& name, ap_uint<64> key, const ap_uint<64> plaintext[DATA_SIZE]) {
    ap_uint<64> ciphertext[DATA_SIZE];
    ap_uint<64> expected[DATA_SIZE];

    // Compute expected output using the reference model
    for (int i = 0; i < DATA_SIZE; ++i) {
        expected[i] = DES_encrypt_ref_word(plaintext[i], key);
    }

    // Call the DUT
    DES_encrypt(const_cast<ap_uint<64>*>(plaintext), key, ciphertext);

    // Check results
    int mismatches = 0;
    int first_mismatch_idx = -1;
    ap_uint<64> first_mismatch_pt = 0;
    ap_uint<64> first_mismatch_exp = 0;
    ap_uint<64> first_mismatch_got = 0;

    for (int i = 0; i < DATA_SIZE; ++i) {
        if (ciphertext[i] != expected[i]) {
            mismatches++;
            if (first_mismatch_idx < 0) {
                first_mismatch_idx = i;
                first_mismatch_pt = plaintext[i];
                first_mismatch_exp = expected[i];
                first_mismatch_got = ciphertext[i];
            }
        }
    }

    std::cout << "==== " << name << " ====\n";
    std::cout << "Key: 0x" << std::hex << std::uppercase << (unsigned long long)key << std::dec << "\n";
    std::cout << "Sample outputs (first 8 entries):\n";
    for (int i = 0; i < 8 && i < DATA_SIZE; ++i) {
        std::cout << "  i=" << i
                  << " PT=0x" << std::hex << std::uppercase << (unsigned long long)plaintext[i]
                  << " CT=0x" << std::hex << std::uppercase << (unsigned long long)ciphertext[i]
                  << " EXP=0x" << std::hex << std::uppercase << (unsigned long long)expected[i]
                  << std::dec << "\n";
    }

    if (mismatches == 0) {
        std::cout << "Result: PASS (all " << DATA_SIZE << " outputs match)\n\n";
    } else {
        std::cout << "Result: FAIL (" << mismatches << " mismatches)\n";
        std::cout << "First mismatch at index " << first_mismatch_idx
                  << " PT=0x" << std::hex << std::uppercase << (unsigned long long)first_mismatch_pt
                  << " GOT=0x" << std::hex << std::uppercase << (unsigned long long)first_mismatch_got
                  << " EXP=0x" << std::hex << std::uppercase << (unsigned long long)first_mismatch_exp
                  << std::dec << "\n\n";
        assert(false && "DES_encrypt test failed");
    }
}

int main() {
    // Test Case 1: All-zero plaintext with zero key
    // Expect trivial behavior: since subkeys are zero, the round function simplifies.
    {
        ap_uint<64> key = 0;
        ap_uint<64> plaintext[DATA_SIZE];
        for (int i = 0; i < DATA_SIZE; ++i) {
            plaintext[i] = 0;
        }
        run_test_case("Test 1: Zero key, zero plaintext", key, plaintext);
    }

    // Test Case 2: Constant plaintext pattern with zero key
    // Verifies round permutation behavior with non-trivial input and zero key.
    {
        ap_uint<64> key = 0;
        ap_uint<64> plaintext[DATA_SIZE];
        for (int i = 0; i < DATA_SIZE; ++i) {
            plaintext[i] = ap_uint<64>(0x0123456789ABCDEFULL);
        }
        run_test_case("Test 2: Zero key, constant plaintext", key, plaintext);
    }

    // Test Case 3: Incremental plaintext with a non-zero key
    // Verifies that subkeys influence the output; plaintext varies across entries.
    {
        ap_uint<64> key = ap_uint<64>(0xFEDCBA9876543210ULL);
        ap_uint<64> plaintext[DATA_SIZE];
        for (int i = 0; i < DATA_SIZE; ++i) {
            // Mix index into high and low halves to vary data
            ap_uint<64> hi = (ap_uint<64>)(i & 0xFFFFFFFF);
            ap_uint<64> lo = (ap_uint<64>)(~(unsigned int)i);
            plaintext[i] = (hi << 32) | (lo & 0xFFFFFFFFULL);
        }
        run_test_case("Test 3: Non-zero key, incremental plaintext", key, plaintext);
    }

    // Test Case 4: All-one plaintext with all-one key
    // Stresses bitwise behavior under saturated conditions.
    {
        ap_uint<64> key = ap_uint<64>(0xFFFFFFFFFFFFFFFFULL);
        ap_uint<64> plaintext[DATA_SIZE];
        for (int i = 0; i < DATA_SIZE; ++i) {
            plaintext[i] = ap_uint<64>(0xFFFFFFFFFFFFFFFFULL);
        }
        run_test_case("Test 4: All-one key, all-one plaintext", key, plaintext);
    }

    std::cout << "All test cases completed successfully.\n";
    return 0;
}