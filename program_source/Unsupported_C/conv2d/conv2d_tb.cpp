#include <iostream>
#include <cmath>
#include <hls_stream.h>
#include <ap_int.h>

// Prototype of the HLS kernel
void conv2d_synth(
    hls::stream<ap_uint<8>>& in,
    hls::stream<ap_uint<8>>& out,
    ap_uint<8>               kernel[3][3]
);

// Image dimensions and kernel size
static const int WIDTH  = 1920;  // image width :contentReference[oaicite:0]{index=0}
static const int HEIGHT = 1080;  // image height :contentReference[oaicite:1]{index=1}
static const int K      = 3;     // kernel size :contentReference[oaicite:2]{index=2}

// Software reference convolution (no padding)
void conv2d_ref(
    uint8_t  in[HEIGHT][WIDTH],
    uint8_t  out[HEIGHT][WIDTH],
    uint8_t  kernel[K][K]
) {
    for (int r = 0; r < HEIGHT; r++) {
        for (int c = 0; c < WIDTH; c++) {
            int acc = 0;
            for (int i = 0; i < K; i++) {
                for (int j = 0; j < K; j++) {
                    int rr = r + i - (K/2);
                    int cc = c + j - (K/2);
                    if (rr >= 0 && rr < HEIGHT && cc >= 0 && cc < WIDTH) {
                        acc += in[rr][cc] * kernel[i][j];
                    }
                }
            }
            // match HLS: shift by 4 bits (>>4) :contentReference[oaicite:3]{index=3}
            out[r][c] = static_cast<uint8_t>(acc >> 4);
        }
    }
}

int main() {
    // 1. Prepare streams and buffers
    hls::stream<ap_uint<8>> in_stream, out_stream;                    // AXI‑Stream emulation :contentReference[oaicite:4]{index=4}
    static uint8_t  img_in [HEIGHT][WIDTH];
    static uint8_t  img_hls[HEIGHT][WIDTH];
    static uint8_t  img_ref[HEIGHT][WIDTH];
    ap_uint<8>      kernel[K][K];

    // 2. Initialize input image with a simple pattern
    for (int r = 0; r < HEIGHT; r++) {
        for (int c = 0; c < WIDTH; c++) {
            img_in[r][c] = static_cast<uint8_t>((r + c) & 0xFF);
        }
    }

    // 3. Define a simple averaging kernel
    uint8_t k_val = 1;
    for (int i = 0; i < K; i++) {
        for (int j = 0; j < K; j++) {
            kernel[i][j] = k_val;  // all ones :contentReference[oaicite:5]{index=5}
        }
    }

    // 4. Push the input image into the HLS input stream
    for (int r = 0; r < HEIGHT; r++) {
        for (int c = 0; c < WIDTH; c++) {
            in_stream.write(img_in[r][c]);  // blocking write :contentReference[oaicite:6]{index=6}
        }
    }

    // 5. Invoke the HLS kernel
    conv2d_synth(in_stream, out_stream, kernel);  // HLS C Simulation call :contentReference[oaicite:7]{index=7}

    // 6. Read back the output stream
    for (int r = 0; r < HEIGHT; r++) {
        for (int c = 0; c < WIDTH; c++) {
            img_hls[r][c] = out_stream.read();  // blocking read
        }
    }

    // 7. Compute the software reference
    conv2d_ref(img_in, img_ref, reinterpret_cast<uint8_t(*)[K]>(kernel));  // reference :contentReference[oaicite:8]{index=8}

    // 8. Compare results
    bool pass = true;
    for (int r = 0; r < HEIGHT && pass; r++) {
        for (int c = 0; c < WIDTH; c++) {
            if (img_hls[r][c] != img_ref[r][c]) {
                std::cout << "Mismatch at (" << r << "," << c << "): "
                          << "HLS=" << static_cast<int>(img_hls[r][c])
                          << " REF=" << static_cast<int>(img_ref[r][c]) << "\n";  // detailed report :contentReference[oaicite:9]{index=9}
                pass = false;
                break;
            }
        }
    }

    // 9. Final pass/fail message
    if (pass) {
        std::cout << "TEST PASSED\n";  // success :contentReference[oaicite:10]{index=10}
    } else {
        std::cout << "TEST FAILED\n";  // failure
    }

    return pass ? 0 : 1;
}
