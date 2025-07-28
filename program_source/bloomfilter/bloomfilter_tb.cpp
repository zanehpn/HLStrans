#include <iostream>
#include <iomanip>
#include <hls_stream.h>
#include <ap_int.h>
#include <cstring>
#include <cstdlib>

// Kernel declaration
void bloomfilter(
    ap_uint<512>*   output_flags,
    ap_uint<512>*   input_words,
    unsigned int    bloom_filter[8][1<<14],
    unsigned int    total_size
);

// Host-side parameters
constexpr unsigned int TOTAL_SIZE       = 3500000;
constexpr unsigned int PARALLELISATION   = 8;
constexpr unsigned int BLOOM_BITS        = 1 << 14;
constexpr unsigned int BLOOM_WORDS       = BLOOM_BITS / 32;
constexpr unsigned int PACKETS_IN        = TOTAL_SIZE / (512/32);
constexpr unsigned int PACKETS_OUT       = TOTAL_SIZE / (512/8);

int main() {
    // Allocate host buffers (AXI memory simulation)
    ap_uint<512>* input_words  = (ap_uint<512>*) malloc(sizeof(ap_uint<512>) * PACKETS_IN);
    ap_uint<512>* output_flags = (ap_uint<512>*) malloc(sizeof(ap_uint<512>) * PACKETS_OUT);
    static unsigned int bloom_filter[PARALLELISATION][BLOOM_WORDS];

    // 1) Initialize bloom_filter to all-ones (every hash hits)
    for (unsigned p = 0; p < PARALLELISATION; ++p)
        for (unsigned w = 0; w < BLOOM_WORDS; ++w)
            bloom_filter[p][w] = 0xFFFFFFFF;

    // 2) Initialize input_words with increasing 32-bit entries
    // pack PARALLEL entries per 512-bit word
    for (unsigned pkt = 0; pkt < PACKETS_IN; ++pkt) {
        ap_uint<512> val = 0;
        for (unsigned lane = 0; lane < PARALLELISATION; ++lane) {
            unsigned entry_idx = pkt * PARALLELISATION + lane;
            // encode: word = (entry_idx << 8) | frequency(ignored here)
            uint32_t word = (entry_idx << 8) | 0xAB;
            // place into 32‑bit lane
            val.range(lane*32+31, lane*32) = word;
        }
        input_words[pkt] = val;
    }

    // 3) Call the HLS kernel
    bloomfilter(output_flags, input_words, bloom_filter, TOTAL_SIZE);

    // 4) Verify outputs: since bloom_filter all-ones, each lane flag = 1
    bool pass = true;
    for (unsigned pkt = 0; pkt < PACKETS_OUT; ++pkt) {
        ap_uint<512> flags = output_flags[pkt];
        for (unsigned lane = 0; lane < PARALLELISATION; ++lane) {
            // each flag is 1‑bit in each 8‑bit chunk
            unsigned char f = flags.range(lane*8+7, lane*8);
            if (f != 1) {
                std::cerr << "Mismatch at packet " << pkt
                          << " lane " << lane
                          << ": got " << (unsigned)f << "\n";
                pass = false;
            }
        }
    }

    // 5) Report result
    if (pass) {
        std::cout << "TEST PASSED\n";
    } else {
        std::cout << "TEST FAILED\n";
    }

    free(input_words);
    free(output_flags);
    return pass ? 0 : 1;
}
