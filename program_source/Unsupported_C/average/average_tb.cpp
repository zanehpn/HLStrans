// average_tb.cpp
#include <cstdio>
#include <cmath>

// Declaration of the HLS-friendly average function
float average(const float data[128], int len);

int main() {
    bool pass = true;
    const float EPS = 1e-6f;

    // Test 1: simple case
    {
        float data[128] = {1.0f, 2.0f, 3.0f, 4.0f};
        int len = 4;
        float out = average(data, len);
        float expect = (1+2+3+4)/4.0f;
        if (std::fabs(out - expect) > EPS) {
            std::printf("Test1 FAIL: out=%.6f, expect=%.6f\n", out, expect);
            pass = false;
        }
    }

    // Test 2: all zeros
    {
        float data[128] = {0};
        int len = 10;
        float out = average(data, len);
        if (std::fabs(out - 0.0f) > EPS) {
            std::printf("Test2 FAIL: out=%.6f, expect=0.0\n", out);
            pass = false;
        }
    }

    // Test 3: full-length, increasing
    {
        float data[128];
        for (int i = 0; i < 128; ++i) data[i] = float(i);
        int len = 128;
        float out = average(data, len);
        // average of 0..127 is (0+127)/2 = 63.5
        float expect = 63.5f;
        if (std::fabs(out - expect) > EPS) {
            std::printf("Test3 FAIL: out=%.6f, expect=63.500000\n", out);
            pass = false;
        }
    }

    // Test 4: len = 1
    {
        float data[128] = {42.42f};
        int len = 1;
        float out = average(data, len);
        if (std::fabs(out - 42.42f) > EPS) {
            std::printf("Test4 FAIL: out=%.6f, expect=42.420000\n", out);
            pass = false;
        }
    }

    // Test 5: len = 0 (should avoid division by zero—behavior defined as return 0.0)
    {
        float data[128] = {1.0f, 2.0f};
        int len = 0;
        float out = average(data, len);
        if (std::fabs(out - 0.0f) > EPS) {
            std::printf("Test5 FAIL: out=%.6f, expect=0.0 (len=0 case)\n", out);
            pass = false;
        }
    }

    if (pass) {
        std::printf("PASS\n");
        return 0;
    } else {
        std::printf("TEST FAIL\n");
        return 1;
    }
}
