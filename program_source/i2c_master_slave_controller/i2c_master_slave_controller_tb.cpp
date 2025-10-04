// contents of i2c_master_slave_controller_tb.cpp
// Standalone C++ testbench for i2c_master_slave_controller.cpp
// This testbench includes the source and exercises representative cases.

#include <iostream>
#include <iomanip>
#include <cassert>
#include <cstring>

// Include the DUT (Device Under Test) source file.
// Note: The source does not define main(), so including is safe.
#include "i2c_master_slave_controller.cpp"

// Helper: Fill array with a constant value
static void fill_const(uint8_t* arr, size_t n, uint8_t value) {
    for (size_t i = 0; i < n; ++i) arr[i] = value;
}

// Helper: Fill array with a simple pattern (start + step*i)
static void fill_pattern(uint8_t* arr, size_t n, uint8_t start, uint8_t step) {
    for (size_t i = 0; i < n; ++i) arr[i] = static_cast<uint8_t>(start + step * i);
}

// Helper: Check that dst[0..count-1] equals src[0..count-1]
static void assert_prefix_equal(const uint8_t* src, const uint8_t* dst, size_t count, const char* label) {
    if (std::memcmp(src, dst, count) != 0) {
        std::cerr << "ERROR: Prefix mismatch in " << label << " on first " << count << " elements\n";
        for (size_t i = 0; i < count; ++i) {
            if (src[i] != dst[i]) {
                std::cerr << "  At index " << i << " expected " << (int)src[i] << " got " << (int)dst[i] << "\n";
                break;
            }
        }
        assert(false);
    }
}

// Helper: Check that dst[count] and a few other positions still equal fill_value
static void assert_unmodified_region(const uint8_t* arr, size_t start_idx, uint8_t fill_value, const char* label) {
    // Check some sentinel positions
    size_t checks[] = {start_idx, (start_idx + 1 < ARRAY_SIZE) ? start_idx + 1 : start_idx, ARRAY_SIZE - 1};
    for (size_t pos : checks) {
        if (pos < ARRAY_SIZE) {
            if (arr[pos] != fill_value) {
                std::cerr << "ERROR: Unmodified region check failed in " << label
                          << " at index " << pos << ", expected " << (int)fill_value
                          << " got " << (int)arr[pos] << "\n";
                assert(false);
            }
        }
    }
}

// Helper: Execute one test case and validate expected behavior
static void run_test_case(uint8_t master_tx_size, uint8_t slave_tx_size,
                          const char* description) {
    std::cout << "\n--- Test: " << description << " ---\n";

    uint8_t master_tx[ARRAY_SIZE];
    uint8_t master_rx[ARRAY_SIZE];
    uint8_t slave_tx[ARRAY_SIZE];
    uint8_t slave_rx[ARRAY_SIZE];

    // Initialize input patterns
    fill_pattern(master_tx, ARRAY_SIZE, 1, 2);   // 1, 3, 5, ...
    fill_pattern(slave_tx, ARRAY_SIZE, 100, 1);  // 100, 101, 102, ...
    // Initialize outputs to a sentinel value
    const uint8_t sentinel = 0xEE;
    fill_const(master_rx, ARRAY_SIZE, sentinel);
    fill_const(slave_rx, ARRAY_SIZE, sentinel);

    // Call DUT
    i2c_master_slave_controller(master_tx, master_rx, slave_tx, slave_rx, master_tx_size, slave_tx_size);

    // Validate: slave_rx[0..master_tx_size-1] == master_tx[0..master_tx_size-1]
    assert_prefix_equal(master_tx, slave_rx, master_tx_size, "slave_rx <= master_tx");
    // Validate: master_rx[0..slave_tx_size-1] == slave_tx[0..slave_tx_size-1]
    assert_prefix_equal(slave_tx, master_rx, slave_tx_size, "master_rx <= slave_tx");

    // Validate: regions beyond copied sizes remain sentinel
    assert_unmodified_region(slave_rx, master_tx_size, sentinel, "slave_rx");
    assert_unmodified_region(master_rx, slave_tx_size, sentinel, "master_rx");

    // Print a small sample to visualize behavior
    auto print_sample = [](const char* name, const uint8_t* arr, size_t n) {
        std::cout << name << " first " << n << ": ";
        for (size_t i = 0; i < n; ++i) {
            std::cout << (int)arr[i] << (i + 1 < n ? ", " : "");
        }
        std::cout << "\n";
    };
    size_t sample = (std::max(master_tx_size, slave_tx_size) > 10) ? 10 : 10;
    print_sample("master_tx", master_tx, sample);
    print_sample("slave_rx", slave_rx, sample);
    print_sample("slave_tx", slave_tx, sample);
    print_sample("master_rx", master_rx, sample);

    std::cout << "Test passed: " << description << "\n";
}

int main() {
    std::cout << "Running i2c_master_slave_controller testbench...\n";

    // Test 1: Basic small sizes
    // Expect: First 5 bytes from master_tx copied to slave_rx, first 3 bytes from slave_tx copied to master_rx.
    run_test_case(/*master_tx_size=*/5, /*slave_tx_size=*/3, "Basic small sizes (M=5, S=3)");

    // Test 2: Zero sizes (no transfer)
    // Expect: master_rx and slave_rx remain unchanged (sentinel values).
    run_test_case(/*master_tx_size=*/0, /*slave_tx_size=*/0, "Zero sizes (M=0, S=0)");

    // Test 3: Max uint8_t sizes (255)
    // Expect: First 255 bytes transferred; indices beyond remain sentinel.
    run_test_case(/*master_tx_size=*/255, /*slave_tx_size=*/255, "Max uint8_t sizes (M=255, S=255)");

    // Test 4: Asymmetric sizes
    // Expect: First 12 bytes from master_tx to slave_rx; first 200 bytes from slave_tx to master_rx.
    run_test_case(/*master_tx_size=*/12, /*slave_tx_size=*/200, "Asymmetric sizes (M=12, S=200)");

    // Test 5: Stateless behavior across successive calls
    // Expect: Second call overwrites beginning of outputs based on new sizes, no residual from first call.
    {
        std::cout << "\n--- Test: Stateless behavior across successive calls ---\n";

        uint8_t master_tx[ARRAY_SIZE];
        uint8_t master_rx[ARRAY_SIZE];
        uint8_t slave_tx[ARRAY_SIZE];
        uint8_t slave_rx[ARRAY_SIZE];

        const uint8_t sentinel = 0xCC;
        fill_pattern(master_tx, ARRAY_SIZE, 2, 3);    // 2,5,8,...
        fill_pattern(slave_tx, ARRAY_SIZE, 50, 2);    // 50,52,...
        fill_const(master_rx, ARRAY_SIZE, sentinel);
        fill_const(slave_rx, ARRAY_SIZE, sentinel);

        // First call
        uint8_t m1 = 20, s1 = 15;
        i2c_master_slave_controller(master_tx, master_rx, slave_tx, slave_rx, m1, s1);
        assert_prefix_equal(master_tx, slave_rx, m1, "Call1 slave_rx");
        assert_prefix_equal(slave_tx, master_rx, s1, "Call1 master_rx");
        assert_unmodified_region(slave_rx, m1, sentinel, "Call1 slave_rx");
        assert_unmodified_region(master_rx, s1, sentinel, "Call1 master_rx");

        // Change patterns for second call
        fill_pattern(master_tx, ARRAY_SIZE, 7, 1);    // 7,8,9,...
        fill_pattern(slave_tx, ARRAY_SIZE, 200, 5);   // 200,205,210,...
        uint8_t m2 = 8, s2 = 22;

        // Second call
        i2c_master_slave_controller(master_tx, master_rx, slave_tx, slave_rx, m2, s2);

        // Validate second call results overwrite initial portion
        assert_prefix_equal(master_tx, slave_rx, m2, "Call2 slave_rx");
        assert_prefix_equal(slave_tx, master_rx, s2, "Call2 master_rx");
        assert_unmodified_region(slave_rx, m2, sentinel, "Call2 slave_rx");
        assert_unmodified_region(master_rx, s2, sentinel, "Call2 master_rx");

        std::cout << "Test passed: Stateless behavior across successive calls\n";
    }

    std::cout << "\nAll tests passed.\n";
    return 0;
}