#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#define TOTAL_SIZE      3500000   // total number of words
#define PARALLEL        8         // words processed per loop iteration
#define BLOOM_BITS      (1<<14)   // bloom_size = 14
#define BLOOM_WORDS     (BLOOM_BITS/32)
#define DOC_TAG         0xffffffff

// MurmurHash2 for 32‑bit key
uint32_t MurmurHash2(uint32_t key, int len, uint32_t seed) {
    const unsigned char *data = (const unsigned char *)&key;
    const uint32_t m = 0x5bd1e995;
    uint32_t h = seed ^ len;
    if (len >= 3) { h ^= data[2] << 16; h *= m; }
    if (len >= 2) { h ^= data[1] << 8;  h *= m; }
    if (len >= 1) { h ^= data[0];        h *= m; }
    h ^= h >> 13;
    h *= m;
    h ^= h >> 15;
    return h;
}

/**
 * Simple bloom‑filter flagging:
 *  - input_words:  TOTAL_SIZE words to check
 *  - bloom_filter: PARALLEL separate bloom filters, each BLOOM_WORDS uint32_t
 *  - output_flags: TOTAL_SIZE bytes, each is 1 if both hashes hit, else 0
 */
void bloomfilter(
    uint32_t    *input_words,
    uint32_t     bloom_filter[PARALLEL][BLOOM_WORDS],
    uint8_t     *output_flags,
    size_t       total_size
) {
    size_t count = total_size;
    for (size_t idx = 0; idx < count; idx++) {
        uint32_t word = input_words[idx];
        uint32_t word_id   = word >> 8;
        // skip if end‑of‑document tag
        if (word_id == DOC_TAG) {
            output_flags[idx] = 0;
            continue;
        }
        // compute two hashes
        uint32_t hash1 = MurmurHash2(word_id, 3, 1) & (BLOOM_BITS - 1);
        uint32_t hash2 = (MurmurHash2(word_id, 3, 5) + hash1) & (BLOOM_BITS - 1);
        // check both bits
        uint32_t w1 = hash1 >> 5, b1 = 1u << (hash1 & 0x1F);
        uint32_t w2 = hash2 >> 5, b2 = 1u << (hash2 & 0x1F);
        uint8_t flag = ((bloom_filter[idx % PARALLEL][w1] & b1) &&
                        (bloom_filter[idx % PARALLEL][w2] & b2))
                       ? 1 : 0;
        output_flags[idx] = flag;
    }
}