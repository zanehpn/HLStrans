// contents of packet_filtering_tb.cpp
#include <iostream>
#include <cstdint>
#include <cassert>
#include <cstring>

// Include the source to access packet_filtering() and the macros PACKET_COUNT/PACKET_SIZE
#include "packet_filtering.cpp"

// Helper: compare two packet rows (length PACKET_SIZE)
static bool equals_row(const uint8_t* a, const uint8_t* b) {
    return std::memcmp(a, b, PACKET_SIZE) == 0;
}

// Helper: check if a packet row is all zeros
static bool is_zero_row(const uint8_t* a) {
    for (int j = 0; j < PACKET_SIZE; ++j) {
        if (a[j] != 0) return false;
    }
    return true;
}

// Helper: initialize filter criteria with a deterministic non-trivial pattern
static void init_filter(uint8_t filter_criteria[PACKET_SIZE]) {
    for (int j = 0; j < PACKET_SIZE; ++j) {
        filter_criteria[j] = static_cast<uint8_t>((j * 7 + 13) & 0xFF);
    }
}

// Helper: set a packet row equal to the filter criteria
static void set_row_to_filter(uint8_t packets[PACKET_COUNT][PACKET_SIZE], int idx, const uint8_t* filter_criteria) {
    std::memcpy(packets[idx], filter_criteria, PACKET_SIZE);
}

// Helper: set a packet row to a mismatching pattern relative to filter criteria
static void set_row_mismatch(uint8_t packets[PACKET_COUNT][PACKET_SIZE], int idx, const uint8_t* filter_criteria) {
    for (int j = 0; j < PACKET_SIZE; ++j) {
        packets[idx][j] = filter_criteria[j] ^ 0xFF; // Guaranteed mismatch for every byte
    }
}

int main() {
    std::cout << "Running packet_filtering testbench" << std::endl;

    static uint8_t packets[PACKET_COUNT][PACKET_SIZE];
    static uint8_t filtered_packets[PACKET_COUNT][PACKET_SIZE];
    static uint8_t filter_criteria[PACKET_SIZE];

    // Initialize common filter criteria pattern
    init_filter(filter_criteria);

    // Test 1: All packets match the filter criteria -> all packets should be copied to filtered_packets
    for (int i = 0; i < PACKET_COUNT; ++i) {
        set_row_to_filter(packets, i, filter_criteria);
    }
    packet_filtering(packets, filtered_packets, filter_criteria);
    for (int i = 0; i < PACKET_COUNT; ++i) {
        assert(equals_row(packets[i], filtered_packets[i]));
        assert(equals_row(filtered_packets[i], filter_criteria));
    }
    std::cout << "Test 1 passed: All packets matched and were copied." << std::endl;

    // Test 2: No packets match the filter criteria -> all filtered_packets rows should be zero
    for (int i = 0; i < PACKET_COUNT; ++i) {
        set_row_mismatch(packets, i, filter_criteria);
    }
    packet_filtering(packets, filtered_packets, filter_criteria);
    for (int i = 0; i < PACKET_COUNT; ++i) {
        assert(is_zero_row(filtered_packets[i]));
    }
    std::cout << "Test 2 passed: No packets matched and all outputs are zero." << std::endl;

    // Test 3: Mixed case -> select a few indices to match; others mismatch
    // - Matching indices should be copied
    // - Non-matching indices should be zeroed
    for (int i = 0; i < PACKET_COUNT; ++i) {
        set_row_mismatch(packets, i, filter_criteria);
    }
    int match_indices[] = {0, 5, 123, PACKET_COUNT - 1};
    for (int idx : match_indices) {
        set_row_to_filter(packets, idx, filter_criteria);
    }
    // Create a near-match that differs at the first byte to exercise early mismatch/break
    set_row_to_filter(packets, 11, filter_criteria);
    packets[11][0] = static_cast<uint8_t>(filter_criteria[0] ^ 0x1);

    packet_filtering(packets, filtered_packets, filter_criteria);

    // Verify matches
    for (int idx : match_indices) {
        assert(equals_row(filtered_packets[idx], packets[idx]));
    }
    // Verify the near-match with single differing byte was zeroed
    assert(is_zero_row(filtered_packets[11]));
    // Verify all other indices are zeroed
    for (int i = 0; i < PACKET_COUNT; ++i) {
        bool is_match_idx = false;
        for (int idx : match_indices) {
            if (i == idx) { is_match_idx = true; break; }
        }
        if (!is_match_idx && i != 11) {
            assert(is_zero_row(filtered_packets[i]));
        }
    }
    std::cout << "Test 3 passed: Mixed matches behave correctly (copied vs. zeroed)." << std::endl;

    // Test 4: Edge case with filter criteria all zeros
    // - Packets with all zeros should match and be copied
    // - Packets with any non-zero byte should be zeroed
    for (int j = 0; j < PACKET_SIZE; ++j) {
        filter_criteria[j] = 0;
    }
    // Initialize all packets to ones (mismatch)
    for (int i = 0; i < PACKET_COUNT; ++i) {
        for (int j = 0; j < PACKET_SIZE; ++j) {
            packets[i][j] = 1;
        }
    }
    // Set selected rows to all zeros to match
    int zero_match_indices[] = {7, 42, 888};
    for (int idx : zero_match_indices) {
        for (int j = 0; j < PACKET_SIZE; ++j) {
            packets[idx][j] = 0;
        }
    }
    packet_filtering(packets, filtered_packets, filter_criteria);

    for (int idx : zero_match_indices) {
        assert(equals_row(filtered_packets[idx], packets[idx]));
        assert(is_zero_row(filtered_packets[idx])); // Since packets[idx] is zeros, this also holds
    }
    for (int i = 0; i < PACKET_COUNT; ++i) {
        bool is_match_idx = false;
        for (int idx : zero_match_indices) {
            if (i == idx) { is_match_idx = true; break; }
        }
        if (!is_match_idx) {
            assert(is_zero_row(filtered_packets[i]));
        }
    }
    std::cout << "Test 4 passed: Zero filter criteria handled correctly." << std::endl;

    std::cout << "All tests passed." << std::endl;
    return 0;
}