// Converted from virtual_memory_management_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: virtual_memory_management.cpp ----
#include <iostream>

#define PAGE_SIZE 4096
#define NUM_PAGES 1024
#define MEMORY_SIZE (PAGE_SIZE * NUM_PAGES)

void virtual_memory_management(int virtual_address[NUM_PAGES], int physical_address[NUM_PAGES], int page_table[NUM_PAGES]) {

    for (int i = 0; i < NUM_PAGES; i++) {

        int page_number = virtual_address[i] / PAGE_SIZE;
        int offset = virtual_address[i] % PAGE_SIZE;
        physical_address[i] = page_table[page_number] * PAGE_SIZE + offset;
    }
}

// Top function name: virtual_memory_management
