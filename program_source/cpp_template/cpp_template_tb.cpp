// contents of cpp_template_tb.cpp

#include <cstdio>
#include <cassert>

// Include the source to make this testbench standalone
#include "cpp_template.cpp"

// Helper to print results
void print_result(const char* test_name, int expected, int actual) {
    std::printf("%s: expected=%d, actual=%d\n", test_name, expected, actual);
}

int main() {
    // Track the cumulative sum of inputs seen by func_with_static<1..5>.
    // Each template instantiation maintains its own static accumulator.
    // Since K is unused, all instances accumulate the same total sum of inputs.
    int global_sum = 0;

    // Test 1: Single call with inp=7, out starts at 0
    // Expected increment = 5 * (global_sum + inp) = 5 * 7 = 35
    {
        int out = 0;
        int inp = 7;
        int expected_increment = 5 * (global_sum + inp);
        cpp_template(inp, &out);
        int expected_out = 0 + expected_increment;
        print_result("Test 1 (single call, inp=7)", expected_out, out);
        assert(out == expected_out);
        global_sum += inp; // update accumulator sum across all template instances (1..5)
    }

    // Test 2: Two sequential calls with inputs {1, 2}, out starts at 0
    // Since static accumulators persist across the entire program, expected increments:
    // Call 1: 5 * (global_sum + 1)
    // Call 2: 5 * (global_sum + 1 + 2)
    {
        int out = 0;
        int inp1 = 1;
        int expected_inc1 = 5 * (global_sum + inp1);
        cpp_template(inp1, &out);
        assert(out == expected_inc1);
        global_sum += inp1;

        int inp2 = 2;
        int expected_inc2 = 5 * (global_sum + inp2);
        cpp_template(inp2, &out);
        int expected_out = expected_inc1 + expected_inc2;
        print_result("Test 2 (two calls, inp={1,2})", expected_out, out);
        assert(out == expected_out);
        global_sum += inp2;
    }

    // Test 3: Mixed values including negative and zero: inputs {5, -3, 0, 10}
    // Verifies handling of negative and zero inputs, and persistent static accumulation
    {
        int out = 0;
        int inputs[] = {5, -3, 0, 10};
        int expected_out = 0;
        for (int x : inputs) {
            int expected_inc = 5 * (global_sum + x);
            cpp_template(x, &out);
            expected_out += expected_inc;
            assert(out == expected_out);
            global_sum += x;
        }
        print_result("Test 3 (mixed inputs {5, -3, 0, 10})", expected_out, out);
    }

    // Test 4: Non-zero initial out value, single call
    // Ensures that cpp_template adds to *out rather than overwriting it.
    {
        int out = 100;
        int inp = 3;
        int expected_inc = 5 * (global_sum + inp);
        cpp_template(inp, &out);
        int expected_out = 100 + expected_inc;
        print_result("Test 4 (non-zero initial out=100, inp=3)", expected_out, out);
        assert(out == expected_out);
        global_sum += inp;
    }

    // Test 5: Directly call func_with_static<3> with inp=0
    // Since inp=0, accumulator should remain the same; dout should equal current global_sum.
    {
        int dout = -1;
        func_with_static<3>(0, &dout);
        print_result("Test 5 (func_with_static<3> with inp=0)", global_sum, dout);
        assert(dout == global_sum);
    }

    // Test 6: Instantiate a new template instance func_with_static<9>
    // This instance hasn't been used before; its static accumulator starts at 0.
    // Call with inp=5 should yield dout=5, showing independence across template instances.
    {
        int dout = -1;
        func_with_static<9>(5, &dout);
        print_result("Test 6 (func_with_static<9> first use, inp=5)", 5, dout);
        assert(dout == 5);
    }

    std::puts("All tests passed.");
    return 0;
}