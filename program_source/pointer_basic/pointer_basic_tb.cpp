// contents of pointer_basic_tb.cpp
#include <iostream>
#include <vector>
#include <cassert>

// Include the source-under-test to access dio_t and pointer_basic()
// Avoids duplicate symbol errors since the source does not define main().
#include "pointer_basic.cpp"

// Helper to call pointer_basic and return the updated value
static int run_one(int in) {
    dio_t x = in;
    pointer_basic(&x);
    return x;
}

int main() {
    std::cout << "Starting pointer_basic tests...\n";

    // Test 1: First call sets acc = 0 + 5 = 5, and writes it back via pointer
    {
        int out = run_one(5);
        std::cout << "Test 1 (input=5): output=" << out << " (expected 5)\n";
        assert(out == 5);
    }

    // Test 2: Next call accumulates: acc = 5 + 3 = 8
    {
        int out = run_one(3);
        std::cout << "Test 2 (input=3): output=" << out << " (expected 8)\n";
        assert(out == 8);
    }

    // Test 3: Negative input decreases the accumulator: acc = 8 + (-2) = 6
    {
        int out = run_one(-2);
        std::cout << "Test 3 (input=-2): output=" << out << " (expected 6)\n";
        assert(out == 6);
    }

    // Test 4: Sequence of inputs; verify cumulative behavior continues
    // Starting acc is 6 from previous tests. Apply inputs [1,2,3,4]
    {
        std::vector<int> inputs  = {1, 2, 3, 4};
        std::vector<int> expecteds = {7, 9, 12, 16}; // 6+1=7, +2=9, +3=12, +4=16
        for (size_t i = 0; i < inputs.size(); ++i) {
            int out = run_one(inputs[i]);
            std::cout << "Test 4." << (i+1) << " (input=" << inputs[i]
                      << "): output=" << out << " (expected " << expecteds[i] << ")\n";
            assert(out == expecteds[i]);
        }
    }

    // Test 5: Zero input leaves accumulator unchanged: acc = 16 + 0 = 16
    {
        int out = run_one(0);
        std::cout << "Test 5 (input=0): output=" << out << " (expected 16)\n";
        assert(out == 16);
    }

    // Test 6: Larger magnitude inputs to ensure stability (no overflow expected for typical int)
    // Current acc = 16; add 1000 -> 1016; then add -500 -> 516
    {
        int out1 = run_one(1000);
        std::cout << "Test 6.1 (input=1000): output=" << out1 << " (expected 1016)\n";
        assert(out1 == 1016);

        int out2 = run_one(-500);
        std::cout << "Test 6.2 (input=-500): output=" << out2 << " (expected 516)\n";
        assert(out2 == 516);
    }

    std::cout << "All tests passed.\n";
    return 0;
}