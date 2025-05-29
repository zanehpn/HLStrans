// test_des.c
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include "des.h"  // contains prototypes for des, des_key_setup, and types

// Helper: hex string to bytes
int hex2bytes(const char *hex, uint8_t *out, size_t outlen) {
    for (size_t i = 0; i < outlen; ++i) {
        unsigned int byte;
        if (sscanf(hex + 2*i, "%2x", &byte) != 1)
            return -1;
        out[i] = (uint8_t)byte;
    }
    return 0;
}

// Print block as hex
void print_block(const char *label, const uint8_t blk[8]) {
    printf("%s: ", label);
    for (int i = 0; i < 8; ++i)
        printf("%02X", blk[i]);
    printf("\n");
}

int main(void) {
    // Test vector from FIPS-46: 
    // Key: 133457799BBCDFF1
    // Plain: 0123456789ABCDEF
    // Cipher: 85E813540F0AB405
    const char *hex_key = "133457799BBCDFF1";
    const char *hex_pt  = "0123456789ABCDEF";
    const char *hex_ct  = "85E813540F0AB405";

    uint8_t key_bytes[8], pt[8], expected_ct[8];
    if (hex2bytes(hex_key, key_bytes, 8)  < 0 ||
        hex2bytes(hex_pt,  pt,       8)  < 0 ||
        hex2bytes(hex_ct,  expected_ct, 8) < 0) {
        fprintf(stderr, "Invalid hex string\n");
        return 1;
    }

    // Prepare key schedule
    des_key_t schedule;
    des_key_setup(key_bytes, schedule, DES_ENCRYPT);

    // Encrypt
    uint8_t out_ct[8];
    des((des_block_t*)pt, (des_block_t*)out_ct, &schedule);

    // Compare
    if (memcmp(out_ct, expected_ct, 8) == 0) {
        printf("PASS: DES encryption matches reference.\n");
        return 0;
    } else {
        printf("FAIL: DES output mismatch\n");
        print_block("Got ", out_ct);
        print_block("Exp ", expected_ct);
        return 1;
    }
}
