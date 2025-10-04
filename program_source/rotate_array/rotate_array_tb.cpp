// contents of rotate_array_tb.cpp
#include <iostream>
#include <vector>
#include <random>
#include <cassert>

// Match the macro used in rotate_array.cpp
#ifndef ARRAY_SIZE
#define ARRAY_SIZE 1024
#endif

// Forward declaration of the function under test from rotate_array.cpp
void rotate_array(int input_array[ARRAY_SIZE], int output_array[ARRAY_SIZE], int rotate_by);

// Helper to check expected output for a given rotation and input pattern
static int verify_rotation(const int input[ARRAY_SIZE], const int output[ARRAY_SIZE], int rotate_by) {
    int mismatches = 0;
    const int N = ARRAY_SIZE;
    int rb_mod = rotate_by % N;
    for (int j = 0; j < N; ++j) {
        int expected = input[(j - rb_mod + N) % N];
        if (output[j] != expected) {
            if (mismatches < 10) {
                std::cout << "Mismatch at index " << j
                          << ": got " << output[j]
                          << ", expected " << expected << "\n";
            }
            ++mismatches;
        }
    }
    return mismatches;
}

static void fill_sequential(int a[ARRAY_SIZE]) {
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        a[i] = i * 3 + 7; // deterministic, unique pattern
    }
}

static void fill_constant(int a[ARRAY_SIZE], int value) {
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        a[i] = value;
    }
}

static void fill_random(int a[ARRAY_SIZE], uint32_t seed) {
    std::mt19937 rng(seed);
    std::uniform_int_distribution<int> dist(-100000, 100000);
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        a[i] = dist(rng);
    }
}

static void run_one_test(const char* description, int rotate_by, void (*fill_fn)(int[ARRAY_SIZE])) {
    int input[ARRAY_SIZE];
    int output[ARRAY_SIZE];

    fill_fn(input);

    // Call the function under test
    rotate_array(input, output, rotate_by);

    // Verify and report
    int mismatches = verify_rotation(input, output, rotate_by);
    std::cout << "[TEST] " << description << " | rotate_by=" << rotate_by
              << " -> mismatches: " << mismatches << "\n";
    assert(mismatches == 0);
}

int main() {
    std::cout << "Starting rotate_array tests (ARRAY_SIZE=" << ARRAY_SIZE << ")...\n";

    // Test 1: No rotation, output should equal input
    run_one_test("Sequential pattern, no rotation", 0, fill_sequential);

    // Test 2: Rotate by 1 position
    run_one_test("Sequential pattern, rotate by 1", 1, fill_sequential);

    // Test 3: Rotate by ARRAY_SIZE-1 (equivalent to rotate left by 1)
    run_one_test("Sequential pattern, rotate by N-1", ARRAY_SIZE - 1, fill_sequential);

    // Test 4: Rotate by ARRAY_SIZE (wrap-around, should be identical to input)
    run_one_test("Sequential pattern, rotate by N", ARRAY_SIZE, fill_sequential);

    // Test 5: Rotate by a small arbitrary value
    run_one_test("Sequential pattern, rotate by 57", 57, fill_sequential);

    // Test 6: Rotate by a large value (exceeds ARRAY_SIZE, tests modulo behavior)
    run_one_test("Sequential pattern, rotate by 10000", 10000, fill_sequential);

    // Test 7: Random pattern with moderate rotation
    auto fill_random_1 = [](int a[ARRAY_SIZE]) { fill_random(a, 12345); };
    run_one_test("Random pattern, rotate by 57", 57, fill_random_1);

    // Test 8: Constant pattern (all equal values) with arbitrary rotation; should remain constant
    auto fill_const_42 = [](int a[ARRAY_SIZE]) { fill_constant(a, 42); };
    run_one_test("Constant pattern (42), rotate by 513", 513, fill_const_42);

    std::cout << "All rotate_array tests passed successfully.\n";
    return 0;
}