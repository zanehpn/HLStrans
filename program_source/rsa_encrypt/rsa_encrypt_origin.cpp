// Converted from rsa_encrypt_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: rsa_encrypt.cpp ----
#include <ap_int.h>

#define N 1024

void rsa_encrypt(ap_uint<1024> message[N], ap_uint<1024> encrypted_message[N], ap_uint<1024> e, ap_uint<1024> n) {

    for (int i = 0; i < N; i++) {

        ap_uint<1024> result = 1;
        ap_uint<1024> base = message[i];
        ap_uint<1024> exponent = e;

        for (int j = 0; j < 1024; j++) {

            if (exponent[0] == 1) {
                result = (result * base) % n;
            }
            base = (base * base) % n;
            exponent = exponent >> 1;
        }

        encrypted_message[i] = result;
    }
}

// Top function name: rsa_encrypt
