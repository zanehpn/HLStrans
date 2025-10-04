// contents of rsa_encrypt_tb.cpp
#include <iostream>
#include <string>
#include <cassert>

// Include the DUT source directly to avoid duplicate symbol errors and reuse definitions (e.g., N)
#include "rsa_encrypt.cpp"

// Reference modular multiplication using wider type to avoid overflow
static ap_uint<1024> mul_mod_ref(const ap_uint<1024>& a, const ap_uint<1024>& b, const ap_uint<1024>& mod) {
    ap_uint<2048> aa = a;
    ap_uint<2048> bb = b;
    ap_uint<2048> mm = mod;
    ap_uint<2048> prod = aa * bb;
    ap_uint<2048> rem = prod % mm;
    ap_uint<1024> res = rem; // Narrow back to 1024 bits; value < mod so safe
    return res;
}

// Reference modular exponentiation using binary exponentiation
static ap_uint<1024> modexp_ref(ap_uint<1024> base, ap_uint<1024> exp, const ap_uint<1024>& mod) {
    if (mod == 0) {
        // Undefined modulus; for safety, return 0 in reference
        return 0;
    }
    ap_uint<1024> result = 1 % mod;
    base = base % mod;
    while (exp != 0) {
        if (exp[0] == 1) {
            result = mul_mod_ref(result, base, mod);
        }
        base = mul_mod_ref(base, base, mod);
        exp = exp >> 1;
    }
    return result;
}

static void run_test_case(const char* name, ap_uint<1024> e, ap_uint<1024> n) {
    std::cout << "Running test case: " << name << "\n";

    // Prepare message and output arrays
    ap_uint<1024> message[N];
    ap_uint<1024> encrypted[N];

    // Initialize messages with a deterministic small pattern (keeps values small to avoid any surprises)
    for (int i = 0; i < N; ++i) {
        message[i] = (ap_uint<1024>)(((i * 7) + 13) % 1000); // small values
    }

    // Override a few specific positions for targeted checks
    // - Zero message
    message[0] = 0;
    // - One message
    message[1] = 1;
    // - n-1 message (tests behavior for -1 mod n)
    if (n != 0) message[2] = n - 1;
    // - n message (equivalent to 0 mod n)
    message[3] = n;
    // - Classic RSA example: 65 with small RSA modulus (if applicable)
    message[4] = 65;
    // - Random small values
    message[5] = 42;
    message[6] = 123;
    message[7] = 999;

    // Compute expected results using the reference modexp
    ap_uint<1024> expected[N];
    for (int i = 0; i < N; ++i) {
        expected[i] = modexp_ref(message[i], e, n);
    }

    // Run DUT
    rsa_encrypt(message, encrypted, e, n);

    // Compare outputs
    int mismatches = 0;
    for (int i = 0; i < N; ++i) {
        if (encrypted[i] != expected[i]) {
            // Print only first few mismatches to keep output readable
            if (mismatches < 10) {
                std::cout << "Mismatch at i=" << i
                          << " msg=" << (unsigned long long)(message[i].to_uint64())
                          << " got=" << (unsigned long long)(encrypted[i].to_uint64())
                          << " exp=" << (unsigned long long)(expected[i].to_uint64()) << "\n";
            }
            ++mismatches;
        }
    }

    // Print sample outputs for inspection
    for (int k = 0; k < 5; ++k) {
        std::cout << "Sample i=" << k
                  << " msg=" << (unsigned long long)(message[k].to_uint64())
                  << " enc=" << (unsigned long long)(encrypted[k].to_uint64())
                  << " exp=" << (unsigned long long)(expected[k].to_uint64()) << "\n";
    }

    if (mismatches == 0) {
        std::cout << "Test case '" << name << "' PASSED.\n";
    } else {
        std::cout << "Test case '" << name << "' FAILED with " << mismatches << " mismatches.\n";
    }
    std::cout << "--------------------------------------------------\n";
}

int main() {
    // Test 1: Classic small RSA example (n=3233=61*53, e=17)
    // - Includes known: 65^17 mod 3233 = 2790
    {
        ap_uint<1024> e = 17;
        ap_uint<1024> n = 3233;
        run_test_case("Small RSA (n=3233, e=17)", e, n);

        // Spot-check the classic example explicitly
        ap_uint<1024> msg = 65, enc_arr[1], msg_arr[1];
        msg_arr[0] = msg;
        rsa_encrypt(msg_arr, enc_arr, e, n);
        unsigned long long got = enc_arr[0].to_uint64();
        unsigned long long exp = modexp_ref(msg, e, n).to_uint64();
        std::cout << "Check: 65^17 mod 3233 -> got=" << got << ", expected=" << exp << "\n";
        assert(got == 2790ULL && "Classic RSA example failed");
    }

    // Test 2: Larger public exponent (common e=65537) with a small modulus (prime)
    {
        ap_uint<1024> e = 65537; // common RSA public exponent
        ap_uint<1024> n = 4099;  // small prime modulus
        run_test_case("Common e=65537, n=4099", e, n);
    }

    // Test 3: Zero exponent edge case (e=0) -> result should be 1 mod n for all messages
    {
        ap_uint<1024> e = 0;
        ap_uint<1024> n = 7919; // prime modulus
        run_test_case("Zero exponent e=0, n=7919", e, n);
    }

    std::cout << "All tests completed.\n";
    return 0;
}