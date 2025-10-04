// MALLOC_VARIANT
#include <iostream>
#include <cstdlib>

#define PAGE_SIZE 4096
#define NUM_PAGES 1024
#define MEMORY_SIZE (PAGE_SIZE * NUM_PAGES)

void virtual_memory_management(int virtual_address[NUM_PAGES], int physical_address[NUM_PAGES], int page_table[NUM_PAGES]) {
    int* va = static_cast<int*>(std::malloc(NUM_PAGES * sizeof(int)));
    int* pa = static_cast<int*>(std::malloc(NUM_PAGES * sizeof(int)));
    int* pt = static_cast<int*>(std::malloc(NUM_PAGES * sizeof(int)));

    if (!va || !pa || !pt) {
        for (int i = 0; i < NUM_PAGES; i++) {
            int page_number = virtual_address[i] / PAGE_SIZE;
            int offset = virtual_address[i] % PAGE_SIZE;
            physical_address[i] = page_table[page_number] * PAGE_SIZE + offset;
        }
        std::free(va);
        std::free(pa);
        std::free(pt);
        return;
    }

    for (int i = 0; i < NUM_PAGES; i++) {
        va[i] = virtual_address[i];
        pt[i] = page_table[i];
    }

    for (int i = 0; i < NUM_PAGES; i++) {
        int page_number = va[i] / PAGE_SIZE;
        int offset = va[i] % PAGE_SIZE;
        pa[i] = pt[page_number] * PAGE_SIZE + offset;
    }

    for (int i = 0; i < NUM_PAGES; i++) {
        physical_address[i] = pa[i];
    }

    std::free(va);
    std::free(pa);
    std::free(pt);
}
