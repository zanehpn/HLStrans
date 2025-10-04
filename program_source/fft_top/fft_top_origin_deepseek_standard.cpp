// Converted from fft_top_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: combined.cpp ----
/*
 * Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
 * Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <complex>
#include <cmath>
#include <cstdint>
using namespace std;

// configurable params
const char FFT_INPUT_WIDTH = 16;
const char FFT_OUTPUT_WIDTH = FFT_INPUT_WIDTH;
const char FFT_CONFIG_WIDTH = 16;
const char FFT_NFFT_MAX = 10;
const int FFT_LENGTH = 1 << FFT_NFFT_MAX;

// Simple config and status types to replace HLS-specific ones
struct config_t {
    bool dir = false;          // false: inverse, true: forward
    uint16_t sch = 0;
    void setDir(bool d) { dir = d; }
    void setSch(uint16_t s) { sch = s; }
    bool getDir() const { return dir; }
    uint16_t getSch() const { return sch; }
};

struct status_t {
    bool ovflo = false;
    unsigned getOvflo() const { return ovflo ? 1u : 0u; }
};

// Use standard floating point types in place of fixed-point types
typedef float data_in_t;
typedef float data_out_t;
typedef std::complex<data_in_t> cmpxDataIn;
typedef std::complex<data_out_t> cmpxDataOut;

void dummy_proc_fe(bool direction, config_t* config, cmpxDataIn in[FFT_LENGTH],
                   cmpxDataIn out[FFT_LENGTH]);

void dummy_proc_be(status_t* status_in, bool* ovflo, cmpxDataOut in[FFT_LENGTH],
                   cmpxDataOut out[FFT_LENGTH]);

void fft_top(bool direction, cmpxDataIn in[FFT_LENGTH],
             cmpxDataOut out[FFT_LENGTH], bool* ovflo);

// Data mover functions
void inputdatamover(bool direction, config_t* config, cmpxDataIn in[FFT_LENGTH],
                    cmpxDataIn out[FFT_LENGTH]) {
    config->setDir(direction);
    config->setSch(0x2AB);
L0:
    for (int i = 0; i < FFT_LENGTH; i++) {
        out[i] = in[i];
    }
}

void outputdatamover(status_t* status_in, bool* ovflo,
                     cmpxDataOut in[FFT_LENGTH], cmpxDataOut out[FFT_LENGTH]) {
L0:
    for (int i = 0; i < FFT_LENGTH; i++) {
        out[i] = in[i];
    }
    *ovflo = status_in->getOvflo() & 0x1;
}

// In-place iterative Cooley-Tukey FFT (power-of-two length)
static void fft_compute(cmpxDataIn data_in[FFT_LENGTH], cmpxDataIn data_out[FFT_LENGTH], bool forward) {
    const size_t n = FFT_LENGTH;

    // Copy input to output buffer
    for (size_t i = 0; i < n; ++i) data_out[i] = data_in[i];

    // Bit-reversal permutation
    for (size_t i = 1, j = 0; i < n; ++i) {
        size_t bit = n >> 1;
        for (; j & bit; bit >>= 1) j ^= bit;
        j ^= bit;
        if (i < j) {
            std::swap(data_out[i], data_out[j]);
        }
    }

    // FFT
    const float ang_sign = forward ? -1.0f : +1.0f;
    for (size_t len = 2; len <= n; len <<= 1) {
        float ang = ang_sign * 2.0f * static_cast<float>(M_PI) / static_cast<float>(len);
        std::complex<float> wlen(std::cos(ang), std::sin(ang));
        for (size_t i = 0; i < n; i += len) {
            std::complex<float> w(1.0f, 0.0f);
            for (size_t j = 0; j < (len >> 1); ++j) {
                std::complex<float> u = data_out[i + j];
                std::complex<float> v = data_out[i + j + (len >> 1)] * w;
                data_out[i + j] = u + v;
                data_out[i + j + (len >> 1)] = u - v;
                w *= wlen;
            }
        }
    }

    // Normalize for inverse FFT
    if (!forward) {
        float inv_n = 1.0f / static_cast<float>(n);
        for (size_t i = 0; i < n; ++i) data_out[i] *= inv_n;
    }
}

// Wrapper that uses config/status to drive the FFT
void myfftwrapper(cmpxDataIn xn[FFT_LENGTH], cmpxDataIn xk[FFT_LENGTH],
                  status_t& fft_status, config_t& fft_config) {
    // Perform FFT based on direction specified in config
    bool forward = fft_config.getDir();
    fft_compute(xn, xk, forward);

    // In this software model, we do not detect overflow
    fft_status.ovflo = false;
}

void fft_top(bool direction, complex<data_in_t> in[FFT_LENGTH],
             complex<data_out_t> out[FFT_LENGTH], bool* ovflo) {

    complex<data_in_t> xn[FFT_LENGTH];
    complex<data_out_t> xk[FFT_LENGTH];
    config_t fft_config;
    status_t fft_status;

    inputdatamover(direction, &fft_config, in, xn);

    // FFT
    myfftwrapper(xn, xk, fft_status, fft_config);

    outputdatamover(&fft_status, ovflo, xk, out);
}

// Dummy processing functions (not used in main flow, provided for completeness)
void dummy_proc_fe(bool direction, config_t* config, cmpxDataIn in[FFT_LENGTH],
                   cmpxDataIn out[FFT_LENGTH]) {
    if (config) {
        config->setDir(direction);
        config->setSch(0x2AB);
    }
    for (int i = 0; i < FFT_LENGTH; ++i) {
        out[i] = in[i];
    }
}

void dummy_proc_be(status_t* status_in, bool* ovflo, cmpxDataOut in[FFT_LENGTH],
                   cmpxDataOut out[FFT_LENGTH]) {
    for (int i = 0; i < FFT_LENGTH; ++i) {
        out[i] = in[i];
    }
    if (ovflo) {
        *ovflo = status_in ? (status_in->getOvflo() & 0x1) : false;
    }
}
