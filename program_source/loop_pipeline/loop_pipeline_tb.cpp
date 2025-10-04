// contents of loop_pipeline_tb.cpp
#include <iostream>
#include <vector>
#include <cassert>

// Include the source to access loop_pipeline() and type definitions
#include "loop_pipeline.cpp"

// Helper to load a vector of ints into the din_t array (ap_int<5>)
void set_array(din_t A[N], const std::vector<int>& v) {
    assert(v.size() == N);
    for (int i = 0; i < N; ++i) {
        A[i] = v[i];
    }
}

// Compute the expected increment: 190 * sum(A)
// Because the function computes acc += sum_j(A[j]) * sum_i(i), and sum_i(i) for i=0..19 is 190.
int expected_increment(const std::vector<int>& v) {
    int s = 0;
    for (int x : v) s += x;
    return 190 * s;
}

int main() {
    din_t A[N];
    int expected_acc = 0;

    // Test 1: All zeros; expected output should remain 0
    {
        std::vector<int> v(N, 0);
        set_array(A, v);
        int exp = expected_acc + expected_increment(v);
        int out = loop_pipeline(A).to_int();
        std::cout << "Test 1 (all zeros): expected " << exp << ", got " << out << std::endl;
        assert(out == exp);
        expected_acc = out;
    }

    // Test 2: All ones; sum(A)=20, increment=190*20=3800
    {
        std::vector<int> v(N, 1);
        set_array(A, v);
        int exp = expected_acc + expected_increment(v);
        int out = loop_pipeline(A).to_int();
        std::cout << "Test 2 (all ones): expected " << exp << ", got " << out << std::endl;
        assert(out == exp);
        expected_acc = out;
    }

    // Test 3: Alternating -1 and 2; sum(A)=10*(-1)+10*(2)=10, increment=1900
    {
        std::vector<int> v;
        v.reserve(N);
        for (int i = 0; i < N; ++i) v.push_back((i % 2 == 0) ? -1 : 2);
        set_array(A, v);
        int exp = expected_acc + expected_increment(v);
        int out = loop_pipeline(A).to_int();
        std::cout << "Test 3 (alternating -1,2): expected " << exp << ", got " << out << std::endl;
        assert(out == exp);
        expected_acc = out;
    }

    // Test 4: Boundary values for ap_int<5> (min -16, max 15); half 15, half -16 => sum(A)=150-160=-10
    {
        std::vector<int> v;
        v.reserve(N);
        for (int i = 0; i < N/2; ++i) v.push_back(15);
        for (int i = N/2; i < N; ++i) v.push_back(-16);
        set_array(A, v);
        int exp = expected_acc + expected_increment(v);
        int out = loop_pipeline(A).to_int();
        std::cout << "Test 4 (half 15, half -16): expected " << exp << ", got " << out << std::endl;
        assert(out == exp);
        expected_acc = out;
    }

    // Test 5: Mixed values within range [-16, 15]
    // Sequence repeated twice; first ten sum to 10, so total sum(A)=20 -> increment=3800
    {
        std::vector<int> base = {5, -3, 8, -7, 0, 1, -2, 4, -5, 9};
        std::vector<int> v;
        v.reserve(N);
        for (int i = 0; i < 2; ++i) {
            v.insert(v.end(), base.begin(), base.end());
        }
        set_array(A, v);
        int exp = expected_acc + expected_increment(v);
        int out = loop_pipeline(A).to_int();
        std::cout << "Test 5 (mixed values): expected " << exp << ", got " << out << std::endl;
        assert(out == exp);
        expected_acc = out;
    }

    // Test 6: All max value 15; sum(A)=20*15=300 -> increment=190*300=57000
    {
        std::vector<int> v(N, 15);
        set_array(A, v);
        int exp = expected_acc + expected_increment(v);
        int out = loop_pipeline(A).to_int();
        std::cout << "Test 6 (all 15): expected " << exp << ", got " << out << std::endl;
        assert(out == exp);
        expected_acc = out;
    }

    // Test 7: All zeros again; ensure accumulation remains unchanged when sum(A)=0
    {
        std::vector<int> v(N, 0);
        set_array(A, v);
        int exp = expected_acc + expected_increment(v);
        int out = loop_pipeline(A).to_int();
        std::cout << "Test 7 (zeros again): expected " << exp << ", got " << out << std::endl;
        assert(out == exp);
        expected_acc = out;
    }

    std::cout << "All tests passed. Final accumulated value: " << expected_acc << std::endl;
    return 0;
}