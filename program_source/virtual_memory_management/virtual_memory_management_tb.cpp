// contents of virtual_memory_management_tb.cpp

#include <iostream>
#include <iomanip>
#include <cstdlib>
#include <cstring>

// Include the DUT implementation to avoid linking issues
#include "virtual_memory_management.cpp"

// Helper: compute expected physical address for a given virtual address and page table
static inline int compute_expected(int va, const int* page_table) {
    int page_number = va / PAGE_SIZE;
    int offset = va % PAGE_SIZE;
    return page_table[page_number] * PAGE_SIZE + offset;
}

// Helper: verify outputs against expected and report mismatches
static int verify_outputs(const int* virtual_address,
                          const int* page_table,
                          const int* physical_address,
                          const char* test_name,
                          int max_report = 5) {
    int mismatches = 0;
    for (int i = 0; i < NUM_PAGES; ++i) {
        int expected = compute_expected(virtual_address[i], page_table);
        if (physical_address[i] != expected) {
            if (mismatches < max_report) {
                std::cout << "Mismatch in " << test_name
                          << " at index " << i
                          << ": VA=" << virtual_address[i]
                          << ", PT[" << virtual_address[i] / PAGE_SIZE << "]=" << page_table[virtual_address[i] / PAGE_SIZE]
                          << ", got PA=" << physical_address[i]
                          << ", expected " << expected << "\n";
            }
            ++mismatches;
        }
    }
    if (mismatches == 0) {
        std::cout << "[PASS] " << test_name << "\n";
    } else {
        std::cout << "[FAIL] " << test_name << " with " << mismatches << " mismatches\n";
    }
    return mismatches;
}

int main() {
    int total_mismatches = 0;

    // Common buffers
    static int virtual_address[NUM_PAGES];
    static int physical_address[NUM_PAGES];
    static int page_table[NUM_PAGES];

    // Test 1: Identity page table; physical address should equal virtual address
    // VA pattern: page_number = i, offset = i (since i < PAGE_SIZE)
    std::cout << "Running Test 1: Identity page table, VA mirrors PA\n";
    for (int i = 0; i < NUM_PAGES; ++i) {
        page_table[i] = i; // identity mapping
    }
    for (int i = 0; i < NUM_PAGES; ++i) {
        virtual_address[i] = i * PAGE_SIZE + i;
        physical_address[i] = 0; // clear output
    }
    virtual_memory_management(virtual_address, physical_address, page_table);
    total_mismatches += verify_outputs(virtual_address, page_table, physical_address, "Test 1");

    // Test 2: Reverse page table; page p maps to (NUM_PAGES - 1 - p)
    // VA pattern: page_number = i, offset = i; PA should reflect reversed page index with same offset
    std::cout << "Running Test 2: Reverse page table mapping\n";
    for (int i = 0; i < NUM_PAGES; ++i) {
        page_table[i] = NUM_PAGES - 1 - i;
        virtual_address[i] = i * PAGE_SIZE + i; // same VA as Test 1
        physical_address[i] = 0;
    }
    virtual_memory_management(virtual_address, physical_address, page_table);
    total_mismatches += verify_outputs(virtual_address, page_table, physical_address, "Test 2");

    // Test 3: Affine page table mapping and scrambled virtual addresses
    // PT[p] = (3*p + 5) % NUM_PAGES; VA uses permuted page numbers and offsets
    std::cout << "Running Test 3: Affine PT mapping with scrambled VAs\n";
    for (int i = 0; i < NUM_PAGES; ++i) {
        page_table[i] = (3 * i + 5) % NUM_PAGES;
    }
    for (int i = 0; i < NUM_PAGES; ++i) {
        int page = (i * 7) % NUM_PAGES;         // scrambled page number
        int offset = (i * 13) % PAGE_SIZE;      // scrambled offset
        virtual_address[i] = page * PAGE_SIZE + offset;
        physical_address[i] = 0;
    }
    virtual_memory_management(virtual_address, physical_address, page_table);
    total_mismatches += verify_outputs(virtual_address, page_table, physical_address, "Test 3");

    // Test 4: All virtual pages map to physical page 0; PA should equal offset only
    // PT[p] = 0 for all p; various offsets should be preserved
    std::cout << "Running Test 4: All-to-zero page table mapping\n";
    for (int i = 0; i < NUM_PAGES; ++i) {
        page_table[i] = 0;
    }
    for (int i = 0; i < NUM_PAGES; ++i) {
        int page = (i * 11) % NUM_PAGES;
        int offset = (i * 31) % PAGE_SIZE;
        virtual_address[i] = page * PAGE_SIZE + offset;
        physical_address[i] = 0;
    }
    virtual_memory_management(virtual_address, physical_address, page_table);
    // For this test, expected PA equals offset
    int mismatches4 = 0;
    for (int i = 0; i < NUM_PAGES; ++i) {
        int expected = virtual_address[i] % PAGE_SIZE;
        if (physical_address[i] != expected) {
            if (mismatches4 < 5) {
                std::cout << "Mismatch in Test 4 at index " << i
                          << ": VA=" << virtual_address[i]
                          << ", got PA=" << physical_address[i]
                          << ", expected " << expected << "\n";
            }
            ++mismatches4;
        }
    }
    if (mismatches4 == 0) {
        std::cout << "[PASS] Test 4\n";
    } else {
        std::cout << "[FAIL] Test 4 with " << mismatches4 << " mismatches\n";
    }
    total_mismatches += mismatches4;

    // Test 5: Edge cases for virtual addresses at boundaries
    // Using identity PT; explicit VAs at 0, PAGE_SIZE-1, MEMORY_SIZE-PAGE_SIZE, MEMORY_SIZE-1
    std::cout << "Running Test 5: Edge boundary virtual addresses\n";
    for (int i = 0; i < NUM_PAGES; ++i) {
        page_table[i] = i; // identity mapping
        virtual_address[i] = (i % NUM_PAGES) * PAGE_SIZE; // default page start
    }
    virtual_address[0] = 0;
    virtual_address[1] = PAGE_SIZE - 1;
    virtual_address[2] = MEMORY_SIZE - PAGE_SIZE;
    virtual_address[3] = MEMORY_SIZE - 1;
    std::memset(physical_address, 0, sizeof(physical_address));
    virtual_memory_management(virtual_address, physical_address, page_table);
    total_mismatches += verify_outputs(virtual_address, page_table, physical_address, "Test 5");

    if (total_mismatches == 0) {
        std::cout << "All tests PASSED\n";
    } else {
        std::cout << "Total mismatches across all tests: " << total_mismatches << "\n";
    }
    return (total_mismatches == 0) ? 0 : 1;
}