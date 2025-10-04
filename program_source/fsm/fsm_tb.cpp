// contents of fsm_tb.cpp

#include <iostream>
#include <cassert>
#include <random>
#include <string>

// Include the DUT source to avoid duplicate symbols and use its definitions.
#include "fsm.cpp"

// Helper: simulate the expected behavior of the FSM for verification
void simulate_fsm(const ap_uint<1> input[LARGE_SCALE], ap_uint<1> expected[LARGE_SCALE]) {
    State current_state = STATE_0;
    for (int i = 0; i < LARGE_SCALE; ++i) {
        switch (current_state) {
            case STATE_0:
                if (input[i] == 1) {
                    current_state = STATE_1;
                }
                expected[i] = 0;
                break;
            case STATE_1:
                if (input[i] == 0) {
                    current_state = STATE_2;
                }
                expected[i] = 1;
                break;
            case STATE_2:
                if (input[i] == 1) {
                    current_state = STATE_3;
                }
                expected[i] = 0;
                break;
            case STATE_3:
                if (input[i] == 0) {
                    current_state = STATE_0;
                }
                expected[i] = 1;
                break;
        }
    }
}

// Helper: print first N elements of an array for quick inspection
void print_sample(const ap_uint<1> arr[LARGE_SCALE], int N, const std::string& label) {
    std::cout << label << ": [";
    for (int i = 0; i < N; ++i) {
        std::cout << (unsigned)arr[i];
        if (i != N - 1) std::cout << ", ";
    }
    std::cout << "]" << std::endl;
}

// Helper: verify output matches expected and assert on mismatch
void verify_output(const ap_uint<1> output[LARGE_SCALE], const ap_uint<1> expected[LARGE_SCALE], const std::string& test_name) {
    for (int i = 0; i < LARGE_SCALE; ++i) {
        if ((unsigned)output[i] != (unsigned)expected[i]) {
            std::cerr << "Mismatch in " << test_name << " at index " << i
                      << ": got " << (unsigned)output[i]
                      << ", expected " << (unsigned)expected[i] << std::endl;
            assert(false && "Output does not match expected.");
        }
    }
    std::cout << test_name << " passed (all outputs match expected)." << std::endl;
}

int main() {
    ap_uint<1> input[LARGE_SCALE];
    ap_uint<1> output[LARGE_SCALE];
    ap_uint<1> expected[LARGE_SCALE];

    // Test 1: All zeros input
    // Expectation: FSM stays in STATE_0, output is all zeros.
    for (int i = 0; i < LARGE_SCALE; ++i) input[i] = 0;
    fsm(input, output);
    simulate_fsm(input, expected);
    print_sample(output, 8, "Test 1 Output (sample)");
    print_sample(expected, 8, "Test 1 Expected (sample)");
    verify_output(output, expected, "Test 1 (All zeros)");

    // Test 2: All ones input
    // Expectation: First output is 0 (STATE_0), then FSM goes to STATE_1 and stays there, output becomes all ones from index 1 onward.
    for (int i = 0; i < LARGE_SCALE; ++i) input[i] = 1;
    fsm(input, output);
    simulate_fsm(input, expected);
    print_sample(output, 8, "Test 2 Output (sample)");
    print_sample(expected, 8, "Test 2 Expected (sample)");
    verify_output(output, expected, "Test 2 (All ones)");

    // Test 3: Alternating 0,1,0,1,...
    // Expectation: FSM transitions through states and outputs pattern reflecting current_state (0 in STATE_0/2, 1 in STATE_1/3).
    for (int i = 0; i < LARGE_SCALE; ++i) input[i] = (i % 2 == 0) ? ap_uint<1>(0) : ap_uint<1>(1);
    fsm(input, output);
    simulate_fsm(input, expected);
    print_sample(output, 16, "Test 3 Output (sample)");
    print_sample(expected, 16, "Test 3 Expected (sample)");
    verify_output(output, expected, "Test 3 (Alternating 0/1)");

    // Test 4: Sequence to traverse all states and return to STATE_0: [1, 0, 1, 0], then zeros
    // Expectation: First 4 outputs should be [0,1,0,1], then zeros as FSM stays in STATE_0 afterwards.
    for (int i = 0; i < LARGE_SCALE; ++i) {
        if (i == 0) input[i] = 1;        // STATE_0 -> STATE_1
        else if (i == 1) input[i] = 0;   // STATE_1 -> STATE_2
        else if (i == 2) input[i] = 1;   // STATE_2 -> STATE_3
        else if (i == 3) input[i] = 0;   // STATE_3 -> STATE_0
        else input[i] = 0;               // Stay in STATE_0
    }
    fsm(input, output);
    simulate_fsm(input, expected);
    print_sample(output, 8, "Test 4 Output (sample)");
    print_sample(expected, 8, "Test 4 Expected (sample)");
    verify_output(output, expected, "Test 4 (Traverse all states)");

    // Test 5: Random input pattern (reproducible seed)
    // Expectation: Outputs match simulated model for random inputs.
    std::mt19937 rng(42);
    std::uniform_int_distribution<int> dist(0, 1);
    for (int i = 0; i < LARGE_SCALE; ++i) input[i] = dist(rng);
    fsm(input, output);
    simulate_fsm(input, expected);
    print_sample(output, 16, "Test 5 Output (sample)");
    print_sample(expected, 16, "Test 5 Expected (sample)");
    verify_output(output, expected, "Test 5 (Random inputs)");

    std::cout << "All tests completed successfully." << std::endl;
    return 0;
}