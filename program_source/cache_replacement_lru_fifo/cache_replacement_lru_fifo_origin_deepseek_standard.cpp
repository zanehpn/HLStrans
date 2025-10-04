// ---- file: cache_replacement_lru_fifo.cpp ----
#include <cstdint>

#define CACHE_SIZE 1024
#define ADDR_SIZE 2048

void cache_replacement_lru_fifo(uint32_t addresses[ADDR_SIZE], uint32_t cache[CACHE_SIZE], bool is_lru) {
    uint32_t lru_tracker[CACHE_SIZE] = {0};
    uint32_t fifo_tracker = 0;
    uint32_t time = 0;

    for (int i = 0; i < ADDR_SIZE; i++) {
        uint32_t addr = addresses[i];
        bool hit = false;

        for (int j = 0; j < CACHE_SIZE; j++) {
            if (cache[j] == addr) {
                hit = true;
                if (is_lru) {
                    lru_tracker[j] = time;
                }
                break;
            }
        }

        if (!hit) {
            uint32_t replace_index = 0;
            if (is_lru) {
                uint32_t min_time = time;
                for (int j = 0; j < CACHE_SIZE; j++) {
                    if (lru_tracker[j] < min_time) {
                        min_time = lru_tracker[j];
                        replace_index = static_cast<uint32_t>(j);
                    }
                }
            } else {
                replace_index = fifo_tracker;
                fifo_tracker = (fifo_tracker + 1) % CACHE_SIZE;
            }

            cache[replace_index] = addr;
            if (is_lru) {
                lru_tracker[replace_index] = time;
            }
        }

        time++;
    }
}

// Top function name: cache_replacement_lru_fifo
