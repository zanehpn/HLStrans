// contents of accumulate_tb.cpp
#include <iostream>
#include <vector>
#include <cassert>
typedef double data_t;
#define SZ 8
// Include the DUT source to access functions and types directly.
// Note: This relies on accumulate.cpp being available in the include path.

// Helper to print arrays
static void print_array(const char* name, const data_t* arr, int n) {
    std::cout << name << " = [";
    for (int i = 0; i < n; ++i) {
        std::cout << arr[i];
        if (i != n - 1) std::cout << ", ";
    }
    std::cout << "]" << std::endl;
}

int main() {
    std::cout << "Running accumulate_tb..." << std::endl;

    // Test 1: accumulate with integer values
    // Expect sum of 1..8 = 36
    {
        data_t A[SZ];
        for (int i = 0; i < SZ; ++i) A[i] = i + 1;
        print_array("Test1 A", A, SZ);
        int result = accumulate(A);
        std::cout << "Test1 accumulate result: " << result << " (expected 36)" << std::endl;
        assert(result == 36);
    }

    // Test 2: accumulate with fractional values
    // Using 0.3 for all elements -> sum = 8 * 0.3 = 2.4 -> truncates to 2
    {
        data_t A[SZ];
        for (int i = 0; i < SZ; ++i) A[i] = 0.3;
        print_array("Test2 A", A, SZ);
        int result = accumulate(A);
        std::cout << "Test2 accumulate result: " << result << " (expected 2 due to truncation)" << std::endl;
        assert(result == 2);
    }

    // Test 3: process stream copy
    // Push 8 values into input stream and ensure identical values are read from output stream
    {
        hls::stream<data_t> in, out;
        data_t input_vals[SZ] = {42.0, -1.5, 0.0, 3.14, 7.0, -8.25, 100.0, 0.001};
        print_array("Test3 input_vals", input_vals, SZ);

        for (int i = 0; i < SZ; ++i) in.write(input_vals[i]);
        process(in, out);

        for (int i = 0; i < SZ; ++i) {
            data_t val = out.read();
            std::cout << "Test3 read[" << i << "]: " << val << " (expected " << input_vals[i] << ")" << std::endl;
            assert(val == input_vals[i]);
        }
    }

    // Test 4: inner function - combine array and stream then accumulate
    // A = [0..7], stream = all 10 -> regA = [10,11,12,13,14,15,16,17], sum = 108 -> out = 108.0
    {
        data_t A[SZ];
        for (int i = 0; i < SZ; ++i) A[i] = i;
        hls::stream<data_t> in;
        for (int i = 0; i < SZ; ++i) in.write(10.0);

        data_t out_val = 0.0;
        inner(A, in, &out_val);
        std::cout << "Test4 inner out: " << out_val << " (expected 108)" << std::endl;
        assert(out_val == 108.0);
    }

    // Test 5: free_pipe_mult with zero stream input
    // B[i] = A[i] + i; inner adds stream (all zeros), so out = sum(A[i] + i)
    // Using A = [1..8] -> sum( (i+1) + i ) for i=0..7 = 2*sum(i) + 8 = 2*28 + 8 = 64
    {
        data_t A[SZ];
        for (int i = 0; i < SZ; ++i) A[i] = i + 1;
        hls::stream<data_t> strm;
        for (int i = 0; i < SZ; ++i) strm.write(0.0);

        data_t out_val = 0.0;
        free_pipe_mult(A, strm, out_val);
        std::cout << "Test5 free_pipe_mult out: " << out_val << " (expected 64)" << std::endl;
        assert(out_val == 64.0);
    }

    // Test 6: free_pipe_mult with increasing stream input
    // A = [1..8], stream = [0..7]
    // B[i] = A[i] + i = (i+1) + i = 2i + 1
    // inner adds stream[i] = i -> total per i: (2i + 1 + i) = 3i + 1
    // Sum = 3*sum(i) + 8 = 3*28 + 8 = 92
    {
        data_t A[SZ];
        for (int i = 0; i < SZ; ++i) A[i] = i + 1;
        hls::stream<data_t> strm;
        for (int i = 0; i < SZ; ++i) strm.write(static_cast<data_t>(i));

        data_t out_val = 0.0;
        free_pipe_mult(A, strm, out_val);
        std::cout << "Test6 free_pipe_mult out: " << out_val << " (expected 92)" << std::endl;
        assert(out_val == 92.0);
    }

    std::cout << "All tests passed." << std::endl;
    return 0;
}