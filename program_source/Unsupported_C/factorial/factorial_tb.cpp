// factorial_tb.cpp
#include <cassert>
#include <iostream>

// DUT prototype
unsigned long factorial(unsigned n);

int main() {
    // Test vectors: pairs of (input, expected_output)
    const std::pair<unsigned, unsigned long> tests[] = {
        {0, 1},  {1, 1},   {2, 2},    {3, 6},    {4, 24},
        {5, 120},{6, 720}, {7, 5040}, {8, 40320}, {10, 3628800}
    };

    for (auto &t : tests) {
        unsigned in = t.first;
        unsigned long exp = t.second;
        unsigned long out = factorial(in);
        if (out != exp) {
            std::cerr << "Test failed: factorial(" << in << ") = "
                      << out << ", expected " << exp << std::endl;
            return 1;
        }
    }

    std::cout << "All factorial tests passed." << std::endl;
    return 0;
}
