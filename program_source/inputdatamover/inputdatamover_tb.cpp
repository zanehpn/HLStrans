// contents of inputdatamover_tb.cpp
#include <iostream>
#include <iomanip>
#include <cassert>
#include <cmath>
#include "hls_stream.h"

// Include the source under test
void fft_top(bool direction, hls::stream<cmpxDataIn>& in,
             hls::stream<cmpxDataOut>& out, bool* ovflo);
using std::cout;
using std::endl;

// Helper to generate normalized test samples within the ap_fixed<16,1> range [-1, 1)
static inline data_in_t gen_in_val_real(int i) {
    return data_in_t(double(i) / double(FFT_LENGTH)); // [0, 1)
}
static inline data_in_t gen_in_val_imag(int i) {
    return data_in_t(double(FFT_LENGTH - 1 - i) / double(FFT_LENGTH)); // (approx) [0, 1)
}
static inline data_out_t gen_out_val_real(int i) {
    return data_out_t(double(i) / double(FFT_LENGTH)); // [0, 1)
}
static inline data_out_t gen_out_val_imag(int i) {
    return data_out_t(double(FFT_LENGTH - 1 - i) / double(FFT_LENGTH));
}

int main() {
    cout << "Running inputdatamover/outputdatamover tests..." << endl;

    // Test Case 1: inputdatamover with direction = true
    // - Ensures config dir is set and schedule is 0x2AB
    // - Ensures all samples are forwarded unchanged
    {
        hls::stream<config_t> cfg_strm;
        hls::stream<cmpxDataIn> in_strm;
        hls::stream<cmpxDataIn> out_strm;

        // Populate input stream with normalized values within representable range
        for (int i = 0; i < FFT_LENGTH; ++i) {
            cmpxDataIn val(gen_in_val_real(i), gen_in_val_imag(i));
            in_strm.write(val);
        }

        bool direction = true;
        inputdatamover(direction, cfg_strm, in_strm, out_strm);

        // Verify config
        assert(!cfg_strm.empty());
        config_t cfg = cfg_strm.read();
        // Check direction and schedule fields
        // Note: config_t in HLS FFT provides getDir() and getSch() accessors
        assert(cfg.getDir() == true);
        assert(cfg.getSch() == 0x2AB);

        // Verify data forwarding
        bool pass = true;
        for (int i = 0; i < FFT_LENGTH; ++i) {
            assert(!out_strm.empty());
            cmpxDataIn out_val = out_strm.read();
            cmpxDataIn exp_val(gen_in_val_real(i), gen_in_val_imag(i));
            if (!(out_val.real() == exp_val.real() && out_val.imag() == exp_val.imag())) {
                pass = false;
                cout << "Mismatch at sample " << i << ": got (" 
                     << double(out_val.real()) << ", " << double(out_val.imag())
                     << "), expected (" << double(exp_val.real()) << ", " << double(exp_val.imag()) << ")" << endl;
                break;
            }
        }
        assert(pass);
        cout << "Test Case 1 passed: inputdatamover direction=true forwards data and sets config correctly." << endl;
    }

    // Test Case 2: inputdatamover with direction = false
    // - Ensures config dir is set to false and schedule is unchanged
    {
        hls::stream<config_t> cfg_strm;
        hls::stream<cmpxDataIn> in_strm;
        hls::stream<cmpxDataIn> out_strm;

        for (int i = 0; i < FFT_LENGTH; ++i) {
            cmpxDataIn val(gen_in_val_real(i), gen_in_val_imag(i));
            in_strm.write(val);
        }

        bool direction = false;
        inputdatamover(direction, cfg_strm, in_strm, out_strm);

        // Verify config
        assert(!cfg_strm.empty());
        config_t cfg = cfg_strm.read();
        assert(cfg.getDir() == false);
        assert(cfg.getSch() == 0x2AB);

        // Verify data forwarding
        bool pass = true;
        for (int i = 0; i < FFT_LENGTH; ++i) {
            assert(!out_strm.empty());
            cmpxDataIn out_val = out_strm.read();
            cmpxDataIn exp_val(gen_in_val_real(i), gen_in_val_imag(i));
            if (!(out_val.real() == exp_val.real() && out_val.imag() == exp_val.imag())) {
                pass = false;
                cout << "Mismatch at sample " << i << ": got (" 
                     << double(out_val.real()) << ", " << double(out_val.imag())
                     << "), expected (" << double(exp_val.real()) << ", " << double(exp_val.imag()) << ")" << endl;
                break;
            }
        }
        assert(pass);
        cout << "Test Case 2 passed: inputdatamover direction=false forwards data and sets config correctly." << endl;
    }

    // Test Case 3: outputdatamover with ovflo = 0
    // - Ensures all samples are forwarded unchanged and overflow flag is cleared
    {
        hls::stream<status_t> status_in_strm;
        hls::stream<cmpxDataOut> in_strm;
        hls::stream<cmpxDataOut> out_strm;
        bool ovflo = true; // initialize to true to ensure function can change it

        // Prepare status with overflow = 0
        status_t status0;
        status0.setOvflo(0);
        status_in_strm.write(status0);

        // Populate input data stream
        for (int i = 0; i < FFT_LENGTH; ++i) {
            cmpxDataOut val(gen_out_val_real(i), gen_out_val_imag(i));
            in_strm.write(val);
        }

        outputdatamover(status_in_strm, &ovflo, in_strm, out_strm);

        // Verify data forwarding
        bool pass = true;
        for (int i = 0; i < FFT_LENGTH; ++i) {
            assert(!out_strm.empty());
            cmpxDataOut out_val = out_strm.read();
            cmpxDataOut exp_val(gen_out_val_real(i), gen_out_val_imag(i));
            if (!(out_val.real() == exp_val.real() && out_val.imag() == exp_val.imag())) {
                pass = false;
                cout << "Mismatch at sample " << i << ": got (" 
                     << double(out_val.real()) << ", " << double(out_val.imag())
                     << "), expected (" << double(exp_val.real()) << ", " << double(exp_val.imag()) << ")" << endl;
                break;
            }
        }

        // Verify overflow flag
        assert(ovflo == false);
        assert(pass);
        cout << "Test Case 3 passed: outputdatamover forwards data and ovflo=0 is reported correctly." << endl;
    }

    // Test Case 4: outputdatamover with ovflo = 1
    // - Ensures overflow flag is set when provided by status stream
    {
        hls::stream<status_t> status_in_strm;
        hls::stream<cmpxDataOut> in_strm;
        hls::stream<cmpxDataOut> out_strm;
        bool ovflo = false; // initialize to false

        // Prepare status with overflow = 1
        status_t status1;
        status1.setOvflo(1);
        status_in_strm.write(status1);

        // Populate input data stream
        for (int i = 0; i < FFT_LENGTH; ++i) {
            cmpxDataOut val(gen_out_val_real(i), gen_out_val_imag(i));
            in_strm.write(val);
        }

        outputdatamover(status_in_strm, &ovflo, in_strm, out_strm);

        // Drain output to ensure behavior matches input
        bool pass = true;
        for (int i = 0; i < FFT_LENGTH; ++i) {
            assert(!out_strm.empty());
            cmpxDataOut out_val = out_strm.read();
            cmpxDataOut exp_val(gen_out_val_real(i), gen_out_val_imag(i));
            if (!(out_val.real() == exp_val.real() && out_val.imag() == exp_val.imag())) {
                pass = false;
                cout << "Mismatch at sample " << i << ": got (" 
                     << double(out_val.real()) << ", " << double(out_val.imag())
                     << "), expected (" << double(exp_val.real()) << ", " << double(exp_val.imag()) << ")" << endl;
                break;
            }
        }

        // Verify overflow flag
        assert(ovflo == true);
        assert(pass);
        cout << "Test Case 4 passed: outputdatamover forwards data and ovflo=1 is reported correctly." << endl;
    }

    cout << "All tests passed." << endl;
    return 0;
}