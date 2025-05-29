#include <iostream>
#include <cstring>
#include "ap_int.h"

#define MAXL 128

// Declaration of the LCS function
void lcs(const char a[MAXL], const char b[MAXL],
         ap_uint<8> la, ap_uint<8> lb,
         ap_uint<8> &res);

// Reference implementation in software for verification
unsigned reference_lcs(const char *a, const char *b) {
    size_t la = strlen(a);
    size_t lb = strlen(b);
    unsigned dp[MAXL+1][MAXL+1] = {0};
    for (size_t i = 1; i <= la; ++i) {
        for (size_t j = 1; j <= lb; ++j) {
            if (a[i-1] == b[j-1])
                dp[i][j] = dp[i-1][j-1] + 1;
            else
                dp[i][j] = std::max(dp[i-1][j], dp[i][j-1]);
        }
    }
    return dp[la][lb];
}

int main() {
    struct TestCase {
        const char *a;
        const char *b;
    } tests[] = {
        {"ABCBDAB", "BDCABA"},        // common example
        {"", ""},                    // empty strings
        {"ABCDEFG", "ABCDEFG"},      // identical
        {"HELLO", "WORLD"},          // no common subsequence except maybe single letters
        {"XMJYAUZ", "MZJAWXU"},      // classic example
        {"12345", "54321"},          // reversed
        {"ABCDEFGH", "ACEG"},        // subsequence at stride
        {"ABCDEFGH", "HGFEDCBA"},    // reverse no long common
    };

    bool all_passed = true;
    for (size_t i = 0; i < sizeof(tests)/sizeof(tests[0]); ++i) {
        const char *sa = tests[i].a;
        const char *sb = tests[i].b;
        ap_uint<8> la = strlen(sa);
        ap_uint<8> lb = strlen(sb);

        char a_padded[MAXL] = {0};
        char b_padded[MAXL] = {0};
        // Copy and pad
        memcpy(a_padded, sa, la);
        memcpy(b_padded, sb, lb);

        ap_uint<8> hls_res;
        lcs(a_padded, b_padded, la, lb, hls_res);

        unsigned sw_res = reference_lcs(sa, sb);

        std::cout << "Test " << i << ": \"" << sa << "\", \"" << sb
                  << "\" => HLS LCS = " << (int)hls_res
                  << ", SW LCS = " << sw_res;
        if ((unsigned)hls_res != sw_res) {
            std::cout << " [FAIL]";
            all_passed = false;
        } else {
            std::cout << " [PASS]";
        }
        std::cout << std::endl;
    }

    if (all_passed) {
        std::cout << "\nAll test cases passed!" << std::endl;
    } else {
        std::cout << "\nSome test cases failed." << std::endl;
        return 1;
    }

    return 0;
}
