// contents of ecc_flags_tb.cpp
#include <iostream>
#include <cassert>
#include <cstdlib>

// Include the DUT source to access ecc_flags, sfunc1, sfunc2, sfunc3, N, din_t
#define N 10

using din_t = int;
void ecc_flags(din_t in1[N], din_t in2[N], const din_t Iter, din_t output[N]);
void sfunc1(const din_t cIter, din_t a[N], din_t b[N], din_t res[N]) ;
void sfunc2(din_t vec1[N], const din_t sIter, din_t ovec[N]) ;
void sfunc3(din_t inrun[N], din_t oval[N]);
// Helper to print arrays
static void print_array(const char* name, const din_t arr[], int len) {
    std::cout << name << " = [";
    for (int i = 0; i < len; ++i) {
        std::cout << arr[i];
        if (i != len - 1) std::cout << ", ";
    }
    std::cout << "]\n";
}

// Helper to compare arrays and assert equality
static void assert_array_equal(const din_t got[], const din_t exp[], int len, const char* label) {
    bool ok = true;
    for (int i = 0; i < len; ++i) {
        if (got[i] != exp[i]) {
            std::cerr << label << " mismatch at index " << i << ": got " << got[i] << ", expected " << exp[i] << "\n";
            ok = false;
        }
    }
    assert(ok && "Array comparison failed");
}

// Test 1: Basic functionality test for ecc_flags with positive inputs and Iter=2
static void test_ecc_flags_basic() {
    din_t in1[N], in2[N], output[N], expected[N];
    const din_t Iter = 2;

    // Construct inputs: in1[i] = i+1, in2[i] = 2*(i+1)
    for (int i = 0; i < N; ++i) {
        in1[i] = i + 1;
        in2[i] = 2 * (i + 1);
    }

    ecc_flags(in1, in2, Iter, output);

    // Expected: output[i] = ((in1[i] + in2[i]) / Iter)^2 / (i+1) with integer truncation
    for (int i = 0; i < N; ++i) {
        din_t tmp = (in1[i] + in2[i]) / Iter;
        expected[i] = (tmp * tmp) / (i + 1);
    }

    print_array("Test1 in1", in1, N);
    print_array("Test1 in2", in2, N);
    print_array("Test1 output", output, N);
    print_array("Test1 expected", expected, N);
    assert_array_equal(output, expected, N, "test_ecc_flags_basic");
    std::cout << "Test 1 passed: ecc_flags basic positive case\n\n";
}

// Test 2: Negative inputs where sum is a multiple of Iter (to check sign handling and integer division)
static void test_ecc_flags_negative_multiples() {
    din_t in1[N], in2[N], output[N], expected[N];
    const din_t Iter = 3;

    // Construct inputs: in1[i] = -3*(i+1), in2[i] = 0
    for (int i = 0; i < N; ++i) {
        in1[i] = -3 * (i + 1);
        in2[i] = 0;
    }

    ecc_flags(in1, in2, Iter, output);

    // Expected: ((-3*(i+1))/3)^2 / (i+1) = (-(i+1))^2 / (i+1) = i+1
    for (int i = 0; i < N; ++i) {
        expected[i] = i + 1;
    }

    print_array("Test2 in1", in1, N);
    print_array("Test2 in2", in2, N);
    print_array("Test2 output", output, N);
    print_array("Test2 expected", expected, N);
    assert_array_equal(output, expected, N, "test_ecc_flags_negative_multiples");
    std::cout << "Test 2 passed: ecc_flags negative multiples case\n\n";
}

// Test 3: Iter=1 case (output[i] = (a[i] + b[i])^2 / (i+1))
static void test_ecc_flags_iter_one() {
    din_t in1[N], in2[N], output[N], expected[N];
    const din_t Iter = 1;

    // Construct inputs: in1[i] = i, in2[i] = 3*i + 2
    for (int i = 0; i < N; ++i) {
        in1[i] = i;
        in2[i] = 3 * i + 2;
    }

    ecc_flags(in1, in2, Iter, output);

    for (int i = 0; i < N; ++i) {
        din_t sum = in1[i] + in2[i];
        expected[i] = (sum * sum) / (i + 1);
    }

    print_array("Test3 in1", in1, N);
    print_array("Test3 in2", in2, N);
    print_array("Test3 output", output, N);
    print_array("Test3 expected", expected, N);
    assert_array_equal(output, expected, N, "test_ecc_flags_iter_one");
    std::cout << "Test 3 passed: ecc_flags with Iter=1\n\n";
}

// Test 4: Direct test of sfunc1: res[i] == (a[i] + b[i]) / cIter
static void test_sfunc1_behavior() {
    din_t a[N], b[N], res[N], expected[N];
    const din_t cIter = 4;

    // Construct inputs: a[i] = i, b[i] = 2*i + 1
    for (int i = 0; i < N; ++i) {
        a[i] = i;
        b[i] = 2 * i + 1;
    }

    sfunc1(cIter, a, b, res);

    for (int i = 0; i < N; ++i) {
        expected[i] = (a[i] + b[i]) / cIter;
    }

    print_array("Test4 a", a, N);
    print_array("Test4 b", b, N);
    print_array("Test4 res", res, N);
    print_array("Test4 expected", expected, N);
    assert_array_equal(res, expected, N, "test_sfunc1_behavior");
    std::cout << "Test 4 passed: sfunc1 behavior\n\n";
}

// Test 5: Direct test of sfunc2: ovec[i] == vec1[i] / sIter
static void test_sfunc2_behavior() {
    din_t vec1[N], ovec[N], expected[N];
    const din_t sIter = 3;

    // Construct inputs: vec1[i] = 10 * (i+1)
    for (int i = 0; i < N; ++i) {
        vec1[i] = 10 * (i + 1);
    }

    sfunc2(vec1, sIter, ovec);

    for (int i = 0; i < N; ++i) {
        expected[i] = vec1[i] / sIter;
    }

    print_array("Test5 vec1", vec1, N);
    print_array("Test5 ovec", ovec, N);
    print_array("Test5 expected", expected, N);
    assert_array_equal(ovec, expected, N, "test_sfunc2_behavior");
    std::cout << "Test 5 passed: sfunc2 behavior\n\n";
}

// Test 6: Direct test of sfunc3: oval[i] == (inrun[i]^2) / (i+1)
static void test_sfunc3_behavior() {
    din_t inrun[N], oval[N], expected[N];

    // Construct inputs: inrun[i] = i+1
    for (int i = 0; i < N; ++i) {
        inrun[i] = i + 1;
    }

    sfunc3(inrun, oval);

    for (int i = 0; i < N; ++i) {
        expected[i] = (inrun[i] * inrun[i]) / (i + 1);
    }

    print_array("Test6 inrun", inrun, N);
    print_array("Test6 oval", oval, N);
    print_array("Test6 expected", expected, N);
    assert_array_equal(oval, expected, N, "test_sfunc3_behavior");
    std::cout << "Test 6 passed: sfunc3 behavior\n\n";
}

// Test 7: Randomized deterministic test for ecc_flags with mixed signs
static void test_ecc_flags_random() {
    din_t in1[N], in2[N], output[N], expected[N];
    const din_t Iter = 5;

    // Deterministic random inputs in range [-20, 20]
    std::srand(123);
    for (int i = 0; i < N; ++i) {
        in1[i] = (std::rand() % 41) - 20;
        in2[i] = (std::rand() % 41) - 20;
    }

    ecc_flags(in1, in2, Iter, output);

    for (int i = 0; i < N; ++i) {
        din_t tmp = (in1[i] + in2[i]) / Iter;
        expected[i] = (tmp * tmp) / (i + 1);
    }

    print_array("Test7 in1", in1, N);
    print_array("Test7 in2", in2, N);
    print_array("Test7 output", output, N);
    print_array("Test7 expected", expected, N);
    assert_array_equal(output, expected, N, "test_ecc_flags_random");
    std::cout << "Test 7 passed: ecc_flags randomized deterministic test\n\n";
}

int main() {
    // Run all tests
    test_ecc_flags_basic();
    test_ecc_flags_negative_multiples();
    test_ecc_flags_iter_one();
    test_sfunc1_behavior();
    test_sfunc2_behavior();
    test_sfunc3_behavior();
    test_ecc_flags_random();

    std::cout << "All tests passed successfully.\n";
    return 0;
}