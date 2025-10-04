#include <stdint.h>

#define N 1024

void mersenne_twister(uint32_t seed, uint32_t output[N]) {

    constexpr uint32_t w = 32;
    constexpr uint32_t n = 624;
    constexpr uint32_t m = 397;
    constexpr uint32_t r = 31;
    constexpr uint32_t a = 0x9908B0DF;
    constexpr uint32_t u = 11;
    constexpr uint32_t d = 0xFFFFFFFF;
    constexpr uint32_t s = 7;
    constexpr uint32_t b = 0x9D2C5680;
    constexpr uint32_t t = 15;
    constexpr uint32_t c = 0xEFC60000;
    constexpr uint32_t l = 18;
    constexpr uint32_t f = 1812433253;

    uint32_t* MT = new uint32_t[n];

    // Initialize the generator from a seed
    MT[0] = seed;
    for (uint32_t i = 1; i < n; ++i) {
        MT[i] = (f * (MT[i - 1] ^ (MT[i - 1] >> (w - 2))) + i);
    }

    const uint32_t lower_mask = (1u << r) - 1u;
    const uint32_t upper_mask = ~lower_mask;

    // Generate an array of n untempered numbers
    for (uint32_t i = 0; i < n - m; ++i) {
        uint32_t x = (MT[i] & lower_mask) + (MT[i + 1] & upper_mask);
        uint32_t xA = x >> 1;
        if (x & 1u) {
            xA ^= a;
        }
        MT[i] = MT[i + m] ^ xA;
    }
    for (uint32_t i = n - m; i < n - 1; ++i) {
        uint32_t x = (MT[i] & lower_mask) + (MT[i + 1] & upper_mask);
        uint32_t xA = x >> 1;
        if (x & 1u) {
            xA ^= a;
        }
        MT[i] = MT[i + (m - n)] ^ xA;
    }
    uint32_t x = (MT[n - 1] & lower_mask) + (MT[0] & upper_mask);
    uint32_t xA = x >> 1;
    if (x & 1u) {
        xA ^= a;
    }
    MT[n - 1] = MT[m - 1] ^ xA;

    // Tempering
    for (uint32_t i = 0; i < N; ++i) {
        uint32_t y = MT[i % n];
        y ^= (y >> u) & d;
        y ^= (y << s) & b;
        y ^= (y << t) & c;
        y ^= (y >> l);
        output[i] = y;
    }

    delete[] MT;
}
