// contents of cache_replacement_lru_fifo_tb.cpp
#include <iostream>
#include <cassert>
#include <cstdint>

// Include the source under test to avoid duplicate symbols and directly call the function.
#include "cache_replacement_lru_fifo.cpp"

// Helper to print a small slice of cache for debug
static void print_cache_slice(const ap_uint<32>* cache, int start, int count, const char* label) {
    std::cout << label << " [";
    for (int i = 0; i < count; ++i) {
        if (i) std::cout << ", ";
        std::cout << static_cast<unsigned int>(cache[start + i]);
    }
    std::cout << "]\n";
}

int main() {
    // Test 1: FIFO replacement behavior
    // - Initialize cache with zeros.
    // - Provide several unique addresses to force misses and FIFO replacements.
    // - Then provide repeated hits to ensure no further replacements.
    {
        ap_uint<32> addresses[ADDR_SIZE];
        ap_uint<32> cache[CACHE_SIZE];

        // Initialize cache to 0
        for (int i = 0; i < CACHE_SIZE; ++i) {
            cache[i] = 0;
        }

        // First 10 addresses are unique non-zero values to cause misses
        const int unique_misses = 10;
        for (int i = 0; i < unique_misses; ++i) {
            addresses[i] = static_cast<unsigned int>(i + 1); // 1..10
        }
        // Remaining addresses are hits (use the first inserted address repeatedly)
        for (int i = unique_misses; i < ADDR_SIZE; ++i) {
            addresses[i] = 1;
        }

        cache_replacement_lru_fifo(addresses, cache, /*is_lru=*/false);

        // Validate: FIFO should have replaced indices 0..9 with addresses 1..10 respectively
        for (int i = 0; i < unique_misses; ++i) {
            assert(cache[i] == static_cast<unsigned int>(i + 1));
        }
        // Validate: next cache entry should remain zero since we only performed 10 replacements
        assert(cache[unique_misses] == 0);

        // Print a slice to demonstrate FIFO outcome
        print_cache_slice(cache, 0, 12, "FIFO cache slice (expect 1..10, then 0, 0)");
        std::cout << "Test 1 (FIFO) passed.\n";
    }

    // Test 2: LRU replacement behavior
    // Strategy:
    // - Preload cache with known, unique values.
    // - First, feed hits for all cache lines to initialize lru_tracker values deterministically.
    // - Then, provide a single miss to trigger replacement of the least recently used line (index 0).
    // - Remaining addresses are hits to avoid further replacements.
    {
        ap_uint<32> addresses[ADDR_SIZE];
        ap_uint<32> cache[CACHE_SIZE];

        // Preload cache with unique known values
        for (int i = 0; i < CACHE_SIZE; ++i) {
            cache[i] = static_cast<unsigned int>(100000 + i);
        }

        // First pass: hit every cache line to initialize lru_tracker[j] = time for all j
        for (int i = 0; i < CACHE_SIZE; ++i) {
            addresses[i] = static_cast<unsigned int>(100000 + i);
        }

        // Single miss to trigger LRU replacement; expected to replace index 0 (least recently used)
        const unsigned int miss_value = 555555U;
        addresses[CACHE_SIZE] = miss_value;

        // Remaining addresses: hits to avoid further replacements (use an existing cache value)
        for (int i = CACHE_SIZE + 1; i < ADDR_SIZE; ++i) {
            addresses[i] = static_cast<unsigned int>(100001); // cache[1] value
        }

        cache_replacement_lru_fifo(addresses, cache, /*is_lru=*/true);

        // Validate: index 0 should have been replaced by miss_value
        assert(cache[0] == miss_value);
        // Validate: other indices should remain unchanged
        for (int i = 1; i < CACHE_SIZE; ++i) {
            assert(cache[i] == static_cast<unsigned int>(100000 + i));
        }

        // Print a slice to demonstrate LRU outcome
        print_cache_slice(cache, 0, 5, "LRU cache slice (expect 555555, 100001, 100002, 100003, 100004)");
        std::cout << "Test 2 (LRU) passed.\n";
    }

    // Test 3: No replacement when all addresses are hits
    // - Preload cache with known values.
    // - Provide a sequence consisting only of these known values.
    // - Ensure cache remains unchanged.
    {
        ap_uint<32> addresses[ADDR_SIZE];
        ap_uint<32> cache[CACHE_SIZE];

        // Preload cache
        for (int i = 0; i < CACHE_SIZE; ++i) {
            cache[i] = static_cast<unsigned int>(200000 + i);
        }

        // All hits: cycle among a few known cache entries
        for (int i = 0; i < ADDR_SIZE; ++i) {
            unsigned int idx = i % 4; // 0..3
            addresses[i] = static_cast<unsigned int>(200000 + idx);
        }

        // Run both modes to ensure hit behavior doesn't alter cache contents besides LRU time tracking
        cache_replacement_lru_fifo(addresses, cache, /*is_lru=*/true);

        // Validate: Cache contents should be unchanged
        for (int i = 0; i < CACHE_SIZE; ++i) {
            assert(cache[i] == static_cast<unsigned int>(200000 + i));
        }

        std::cout << "Test 3 (All hits, no replacement) passed.\n";
    }

    std::cout << "All tests passed.\n";
    return 0;
}