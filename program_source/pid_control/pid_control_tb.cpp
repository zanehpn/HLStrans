// contents of pid_control_tb.cpp
#include <iostream>
#include <cassert>

// Include the DUT implementation (brings in ap_fixed, N, fixed_point_t, and pid_control)
#include "pid_control.cpp"

// Helper to print a few samples of an array for debugging
static void print_samples(const char* label, fixed_point_t arr[], int count = 8) {
    std::cout << label << ": ";
    for (int i = 0; i < count; ++i) {
        std::cout << (double)arr[i] << (i + 1 < count ? ", " : "");
    }
    std::cout << std::endl;
}

int main() {
    // Arrays for inputs and outputs
    static fixed_point_t setpoint[N];
    static fixed_point_t measured[N];
    static fixed_point_t output[N];

    // Test 1: Zero error across the sequence (setpoint == measured == 0)
    // Expectation: output is zero for all samples for any Kp, Ki, Kd
    {
        for (int i = 0; i < N; ++i) {
            setpoint[i] = fixed_point_t(0);
            measured[i] = fixed_point_t(0);
            output[i]   = fixed_point_t(-999); // initialize to non-zero to ensure it gets written
        }
        fixed_point_t Kp = fixed_point_t(1.25);
        fixed_point_t Ki = fixed_point_t(0.5);
        fixed_point_t Kd = fixed_point_t(0.75);

        pid_control(setpoint, measured, Kp, Ki, Kd, output);

        for (int i = 0; i < N; ++i) {
            assert(output[i] == fixed_point_t(0));
        }
        print_samples("Test 1 (zero error) output samples", output);
        std::cout << "Test 1 passed: Zero error produces zero output." << std::endl;
    }

    // Test 2: Pure proportional control (Kp > 0, Ki = 0, Kd = 0) with constant error = 1
    // Setup: setpoint = 1, measured = 0 for all samples
    // Expectation: output[i] = Kp * 1 = constant for all i
    {
        for (int i = 0; i < N; ++i) {
            setpoint[i] = fixed_point_t(1);
            measured[i] = fixed_point_t(0);
            output[i]   = fixed_point_t(-999);
        }
        fixed_point_t Kp = fixed_point_t(2.0);
        fixed_point_t Ki = fixed_point_t(0.0);
        fixed_point_t Kd = fixed_point_t(0.0);

        pid_control(setpoint, measured, Kp, Ki, Kd, output);

        for (int i = 0; i < N; ++i) {
            assert(output[i] == fixed_point_t(2.0));
        }
        print_samples("Test 2 (pure proportional) output samples", output);
        std::cout << "Test 2 passed: Constant error yields constant proportional output." << std::endl;
    }

    // Test 3: Pure derivative control (Kp = 0, Ki = 0, Kd > 0) with a step error at the start
    // Setup: setpoint = 1, measured = 0 for all samples, so error = 1 from i=0 onward
    // Expectation: derivative at i=0 is 1 (from previous_error=0), then 0 afterwards
    // Output: output[0] = Kd * 1, output[i>0] = 0
    {
        for (int i = 0; i < N; ++i) {
            setpoint[i] = fixed_point_t(1);
            measured[i] = fixed_point_t(0);
            output[i]   = fixed_point_t(-999);
        }
        fixed_point_t Kp = fixed_point_t(0.0);
        fixed_point_t Ki = fixed_point_t(0.0);
        fixed_point_t Kd = fixed_point_t(3.0);

        pid_control(setpoint, measured, Kp, Ki, Kd, output);

        assert(output[0] == fixed_point_t(3.0));
        for (int i = 1; i < N; ++i) {
            assert(output[i] == fixed_point_t(0.0));
        }
        print_samples("Test 3 (pure derivative) output samples", output);
        std::cout << "Test 3 passed: Derivative responds only to the step change at i=0." << std::endl;
    }

    // Test 4: Pure integral control (Kp = 0, Ki > 0, Kd = 0) with constant error = 1
    // Setup: setpoint = 1, measured = 0 for all samples => error = 1 each cycle
    // Integral accumulates: integral[i] = i+1, output[i] = Ki * (i+1)
    // Choose Ki = 0.25 so outputs are 0.25, 0.5, 0.75, ... (exactly representable with 8 fractional bits)
    // We validate only the first few samples to avoid any overflow later in the sequence.
    {
        for (int i = 0; i < N; ++i) {
            setpoint[i] = fixed_point_t(1);
            measured[i] = fixed_point_t(0);
            output[i]   = fixed_point_t(-999);
        }
        fixed_point_t Kp = fixed_point_t(0.0);
        fixed_point_t Ki = fixed_point_t(0.25);
        fixed_point_t Kd = fixed_point_t(0.0);

        pid_control(setpoint, measured, Kp, Ki, Kd, output);

        for (int i = 0; i < 8; ++i) {
            fixed_point_t expected = fixed_point_t((i + 1) * 0.25);
            assert(output[i] == expected);
        }
        print_samples("Test 4 (pure integral) first 8 output samples", output, 8);
        std::cout << "Test 4 passed: Integral accumulates error as expected for initial samples." << std::endl;
    }

    // Test 5: Negative error scenario to verify sign handling
    // Setup: setpoint = 0, measured = 1 => error = -1; Kp only
    // Expectation: output[i] = Kp * (-1) = -Kp
    {
        for (int i = 0; i < N; ++i) {
            setpoint[i] = fixed_point_t(0);
            measured[i] = fixed_point_t(1);
            output[i]   = fixed_point_t(-999);
        }
        fixed_point_t Kp = fixed_point_t(1.5);
        fixed_point_t Ki = fixed_point_t(0.0);
        fixed_point_t Kd = fixed_point_t(0.0);

        pid_control(setpoint, measured, Kp, Ki, Kd, output);

        for (int i = 0; i < N; ++i) {
            assert(output[i] == fixed_point_t(-1.5));
        }
        print_samples("Test 5 (negative error, proportional) output samples", output);
        std::cout << "Test 5 passed: Negative error yields negative proportional output." << std::endl;
    }

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}