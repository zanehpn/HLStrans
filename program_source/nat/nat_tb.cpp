// contents of nat_tb.cpp
#include <cassert>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <string>

// Include the source to access nat() and LARGE_SCALE without duplicate symbols
#include "nat.cpp"

// Helper to convert 32-bit IP (big-endian layout) to dotted-decimal string
static std::string ip_to_str(uint32_t ip) {
    uint32_t a = (ip >> 24) & 0xFFu;
    uint32_t b = (ip >> 16) & 0xFFu;
    uint32_t c = (ip >> 8) & 0xFFu;
    uint32_t d = ip & 0xFFu;
    return std::to_string(a) + "." + std::to_string(b) + "." + std::to_string(c) + "." + std::to_string(d);
}

int main() {
    const uint32_t OFFSET = 0x01000000u;

    uint32_t src_ip[LARGE_SCALE];
    uint32_t dst_ip[LARGE_SCALE];
    uint32_t translated_ip[LARGE_SCALE];

    // Test 1: Sequential values - verify translation equals src + OFFSET for all entries
    for (int i = 0; i < LARGE_SCALE; ++i) {
        src_ip[i] = static_cast<uint32_t>(i);
        dst_ip[i] = 0;                 // Unused by nat(), but initialize anyway
        translated_ip[i] = 0xDEADBEEFu; // Clear to known pattern
    }
    nat(src_ip, dst_ip, translated_ip);
    for (int i = 0; i < LARGE_SCALE; ++i) {
        uint32_t expected = src_ip[i] + OFFSET;
        assert(translated_ip[i] == expected);
    }
    // Print a few sample translations for visibility
    std::cout << "Test 1 samples:\n";
    for (int i = 0; i < 5 && i < LARGE_SCALE; ++i) {
        std::cout << "  src[" << i << "] = 0x" << std::hex << src_ip[i]
                  << " (" << std::dec << ip_to_str(src_ip[i]) << ") -> translated = 0x"
                  << std::hex << translated_ip[i] << " (" << std::dec << ip_to_str(translated_ip[i]) << ")\n";
    }

    // Test 2: Specific edge and typical IPs
    // - 0.0.0.0 -> 1.0.0.0
    // - 192.168.0.1 -> 193.168.0.1
    // - 255.255.255.255 -> 0.255.255.255 (wrap-around)
    // - 254.255.255.255 -> 255.255.255.255
    // - 1.2.3.4 -> 2.2.3.4
    std::memset(src_ip, 0, sizeof(src_ip));
    std::memset(dst_ip, 0, sizeof(dst_ip));
    std::memset(translated_ip, 0, sizeof(translated_ip));

    int idxs[5] = {0, 1, 2, 3, 4};
    uint32_t values[5] = {
        0x00000000u, // 0.0.0.0
        0xC0A80001u, // 192.168.0.1
        0xFFFFFFFFu, // 255.255.255.255
        0xFEFFFFFFu, // 254.255.255.255
        0x01020304u  // 1.2.3.4
    };
    for (int k = 0; k < 5; ++k) {
        if (idxs[k] < LARGE_SCALE) {
            src_ip[idxs[k]] = values[k];
        }
    }
    nat(src_ip, dst_ip, translated_ip);

    for (int k = 0; k < 5; ++k) {
        if (idxs[k] < LARGE_SCALE) {
            uint32_t expected = values[k] + OFFSET; // Unsigned wrap-around is expected
            assert(translated_ip[idxs[k]] == expected);
        }
    }
    std::cout << "Test 2 specific cases:\n";
    for (int k = 0; k < 5; ++k) {
        if (idxs[k] < LARGE_SCALE) {
            uint32_t s = src_ip[idxs[k]];
            uint32_t t = translated_ip[idxs[k]];
            std::cout << "  src[" << idxs[k] << "] " << ip_to_str(s) << " (0x" << std::hex << s
                      << ") -> " << ip_to_str(t) << " (0x" << t << ")" << std::dec << "\n";
        }
    }

    // Test 3: Randomized fuzz - fill with pseudo-random 32-bit values and verify all outputs
    std::srand(1);
    for (int i = 0; i < LARGE_SCALE; ++i) {
        uint32_t r1 = static_cast<uint32_t>(std::rand()) & 0xFFFFu;
        uint32_t r2 = static_cast<uint32_t>(std::rand()) & 0xFFFFu;
        src_ip[i] = (r1 << 16) | r2;
        dst_ip[i] = 0;
        translated_ip[i] = 0;
    }
    nat(src_ip, dst_ip, translated_ip);
    for (int i = 0; i < LARGE_SCALE; ++i) {
        uint32_t expected = src_ip[i] + OFFSET;
        assert(translated_ip[i] == expected);
    }
    std::cout << "Test 3 random fuzz: verified " << LARGE_SCALE << " entries.\n";

    std::cout << "All tests passed.\n";
    return 0;
}