// contents of priority_arbiter_tb.cpp
#include <iostream>
#include <cstdint>

// Include the DUT (Device Under Test)
#define NUM_REQUESTS 1024

void priority_arbiter(uint8_t requests[NUM_REQUESTS], uint8_t grants[NUM_REQUESTS]);
// Helper: zero-initialize an array
static void zero_array(uint8_t* arr, int n) {
    for (int i = 0; i < n; ++i) arr[i] = 0;
}

// Helper: verify that grants has exactly one '1' at expected_index (or none if expected_index == -1)
static bool verify_grants(const uint8_t* grants, int expected_index, std::string& err) {
    int count = 0;
    int first = -1;
    for (int i = 0; i < NUM_REQUESTS; ++i) {
        if (grants[i] == 1) {
            if (first == -1) first = i;
            count++;
        } else if (grants[i] != 0) {
            err = "Grant array contains value other than 0/1 at index " + std::to_string(i);
            return false;
        }
    }
    if (expected_index == -1) {
        if (count != 0) {
            err = "Expected no grants, but found " + std::to_string(count);
            return false;
        }
        return true;
    } else {
        if (count != 1) {
            err = "Expected exactly one grant at index " + std::to_string(expected_index) +
                  ", but found " + std::to_string(count);
            return false;
        }
        if (first != expected_index) {
            err = "Expected grant at index " + std::to_string(expected_index) +
                  ", but found at " + std::to_string(first);
            return false;
        }
        return true;
    }
}

// Helper: run a single test case
static bool run_test_case(const char* name, const uint8_t* requests_in, int expected_index) {
    uint8_t requests[NUM_REQUESTS];
    uint8_t grants[NUM_REQUESTS];
    // Copy inputs and zero grants
    for (int i = 0; i < NUM_REQUESTS; ++i) {
        requests[i] = requests_in[i];
        grants[i] = 0;
    }

    // Call DUT
    priority_arbiter(requests, grants);

    // Verify
    std::string err;
    bool ok = verify_grants(grants, expected_index, err);
    if (ok) {
        std::cout << "[PASS] " << name << std::endl;
    } else {
        std::cout << "[FAIL] " << name << " -> " << err << std::endl;
    }
    return ok;
}

int main() {
    int passed = 0;
    int total = 0;

    // Test 1: No requests -> no grants
    {
        uint8_t req[NUM_REQUESTS]; zero_array(req, NUM_REQUESTS);
        total++;
        if (run_test_case("No requests => no grants", req, -1)) passed++;
    }

    // Test 2: First element is 1, later ones also 1 -> grant at index 0
    {
        uint8_t req[NUM_REQUESTS]; zero_array(req, NUM_REQUESTS);
        req[0] = 1;
        req[10] = 1;
        total++;
        if (run_test_case("First element 1 with later ones => grant at 0", req, 0)) passed++;
    }

    // Test 3: Single request in the middle -> grant at that index
    {
        uint8_t req[NUM_REQUESTS]; zero_array(req, NUM_REQUESTS);
        int mid = NUM_REQUESTS / 2; // 512 for 1024
        req[mid] = 1;
        total++;
        if (run_test_case("Single request in the middle", req, mid)) passed++;
    }

    // Test 4: Single request at the last index -> grant at last index
    {
        uint8_t req[NUM_REQUESTS]; zero_array(req, NUM_REQUESTS);
        int last = NUM_REQUESTS - 1;
        req[last] = 1;
        total++;
        if (run_test_case("Single request at last index", req, last)) passed++;
    }

    // Test 5: Multiple requests at 100, 200, 300 -> grant at 100
    {
        uint8_t req[NUM_REQUESTS]; zero_array(req, NUM_REQUESTS);
        req[100] = 1;
        req[200] = 1;
        req[300] = 1;
        total++;
        if (run_test_case("Multiple requests at 100/200/300 => grant at 100", req, 100)) passed++;
    }

    // Test 6: All ones -> grant at index 0
    {
        uint8_t req[NUM_REQUESTS];
        for (int i = 0; i < NUM_REQUESTS; ++i) req[i] = 1;
        total++;
        if (run_test_case("All ones => grant at 0", req, 0)) passed++;
    }

    // Test 7: Non-1 value (2) at index 0, 1 at index 1 -> grant at index 1 (non-1 is ignored)
    {
        uint8_t req[NUM_REQUESTS]; zero_array(req, NUM_REQUESTS);
        req[0] = 2;  // Not equal to 1, should be ignored
        req[1] = 1;  // First valid request
        total++;
        if (run_test_case("Non-1 at 0, 1 at 1 => grant at 1", req, 1)) passed++;
    }

    // Test 8: Non-1 (255) at index 10, 1 at index 20 -> grant at index 20
    {
        uint8_t req[NUM_REQUESTS]; zero_array(req, NUM_REQUESTS);
        req[10] = 255; // Not equal to 1
        req[20] = 1;
        total++;
        if (run_test_case("Non-1 at 10, 1 at 20 => grant at 20", req, 20)) passed++;
    }

    // Test 9: No element equals 1 (all 2's) -> no grants
    {
        uint8_t req[NUM_REQUESTS];
        for (int i = 0; i < NUM_REQUESTS; ++i) req[i] = 2;
        total++;
        if (run_test_case("All entries are 2 => no grants", req, -1)) passed++;
    }

    // Test 10: Multiple scattered 1's including low index -> grant at smallest index with 1
    {
        uint8_t req[NUM_REQUESTS]; zero_array(req, NUM_REQUESTS);
        req[700] = 1;
        req[10]  = 1; // smallest index with 1
        req[900] = 1;
        total++;
        if (run_test_case("Scattered ones at 700/10/900 => grant at 10", req, 10)) passed++;
    }

    std::cout << "Summary: " << passed << " / " << total << " tests passed." << std::endl;
    return (passed == total) ? 0 : 1;
}