// contents of ip_checksum_tb.cpp
#include <iostream>
#include <iomanip>
#include <cassert>
#include <cstring>

// Include the source to reuse the function and ARRAY_SIZE definition.
#include "ip_checksum.cpp"

// Reference implementation to compute expected checksum for validation
static uint16_t reference_checksum(const uint16_t data[], size_t n) {
    uint32_t sum = 0;
    for (size_t i = 0; i < n; ++i) {
        sum += data[i];
    }
    // Fold carries until the sum fits in 16 bits
    while (sum > 0xFFFF) {
        sum = (sum & 0xFFFF) + (sum >> 16);
    }
    return static_cast<uint16_t>(~static_cast<uint16_t>(sum));
}

// Helper to print 16-bit values in 0xXXXX format
static std::string hex16(uint16_t v) {
    std::ostringstream oss;
    oss << "0x" << std::uppercase << std::hex << std::setw(4) << std::setfill('0') << v;
    return oss.str();
}

int main() {
    uint16_t data[ARRAY_SIZE];
    uint16_t checksum = 0;

    // Test 1: All zeros -> checksum should be 0xFFFF
    std::memset(data, 0, sizeof(data));
    ip_checksum(data, checksum);
    uint16_t expected = reference_checksum(data, ARRAY_SIZE);
    std::cout << "Test 1 (All zeros): expected=" << hex16(expected)
              << " computed=" << hex16(checksum) << std::endl;
    assert(checksum == expected);

    // Test 2: Single non-zero word -> simple complement of the value
    std::memset(data, 0, sizeof(data));
    data[0] = 0x1234;
    ip_checksum(data, checksum);
    expected = reference_checksum(data, ARRAY_SIZE);
    std::cout << "Test 2 (Single word 0x1234): expected=" << hex16(expected)
              << " computed=" << hex16(checksum) << std::endl;
    assert(checksum == expected);

    // Test 3: Carry folding case: 0xFFFF + 0x0001 -> sum wraps to 0x0001, checksum is 0xFFFE
    std::memset(data, 0, sizeof(data));
    data[0] = 0xFFFF;
    data[1] = 0x0001;
    ip_checksum(data, checksum);
    expected = reference_checksum(data, ARRAY_SIZE);
    std::cout << "Test 3 (Wrap-around carry 0xFFFF + 0x0001): expected=" << hex16(expected)
              << " computed=" << hex16(checksum) << std::endl;
    assert(checksum == expected);

    // Test 4: Sum equals 0xFFFF -> checksum should be 0x0000
    std::memset(data, 0, sizeof(data));
    data[0] = 0x8000;
    data[1] = 0x7FFF;
    ip_checksum(data, checksum);
    expected = reference_checksum(data, ARRAY_SIZE);
    std::cout << "Test 4 (Sum == 0xFFFF: 0x8000 + 0x7FFF): expected=" << hex16(expected)
              << " computed=" << hex16(checksum) << std::endl;
    assert(checksum == expected);

    // Test 5: All 0xFFFF -> repeated carries; final sum is 0xFFFF, checksum 0x0000
    for (int i = 0; i < ARRAY_SIZE; ++i) data[i] = 0xFFFF;
    ip_checksum(data, checksum);
    expected = reference_checksum(data, ARRAY_SIZE);
    std::cout << "Test 5 (All 0xFFFF): expected=" << hex16(expected)
              << " computed=" << hex16(checksum) << std::endl;
    assert(checksum == expected);

    // Test 6: Sequential values 0..1023 -> mixed sums with carry folding
    for (int i = 0; i < ARRAY_SIZE; ++i) data[i] = static_cast<uint16_t>(i);
    ip_checksum(data, checksum);
    expected = reference_checksum(data, ARRAY_SIZE);
    std::cout << "Test 6 (Sequence 0..1023): expected=" << hex16(expected)
              << " computed=" << hex16(checksum) << std::endl;
    assert(checksum == expected);

    // Test 7: Mixed pattern to exercise multiple folds over the array
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        // Pattern: high nibble cycles, low byte increments; ensures diverse values
        data[i] = static_cast<uint16_t>(((i % 16) << 12) | (i & 0xFF));
    }
    ip_checksum(data, checksum);
    expected = reference_checksum(data, ARRAY_SIZE);
    std::cout << "Test 7 (Mixed pattern): expected=" << hex16(expected)
              << " computed=" << hex16(checksum) << std::endl;
    assert(checksum == expected);

    std::cout << "All tests PASSED" << std::endl;
    return 0;
}