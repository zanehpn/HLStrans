// Standard C++ version of the original HLS-based code

#include <complex>
#include <queue>
#include <vector>
#include <cmath>
#include <cstddef>

// configurable params
const char FFT_INPUT_WIDTH = 16;
const char FFT_OUTPUT_WIDTH = FFT_INPUT_WIDTH;
const char FFT_CONFIG_WIDTH = 16;
const char FFT_NFFT_MAX = 10;
const int FFT_LENGTH = 1 << FFT_NFFT_MAX;

// Replace HLS fixed-point with standard double
using data_in_t = double;
using data_out_t = double;
using cmpxDataIn = std::complex<data_in_t>;
using cmpxDataOut = std::complex<data_out_t>;

// Simple config and status structures replacing HLS FFT config/status
struct config_t {
    bool dir = true;    // true: forward FFT, false: inverse FFT
    unsigned sch = 0;

    void setDir(bool d) { dir = d; }
    void setSch(unsigned s) { sch = s; }
    bool getDir() const { return dir; }
    unsigned getSch() const { return sch; }
};

struct status_t {
    unsigned ovflo = 0;

    unsigned getOvflo() const { return ovflo; }
    void setOvflo(unsigned v) { ovflo = v; }
};

// Forward declarations (preserving function names)
void dummy_proc_fe(bool direction, config_t* config, cmpxDataIn in[FFT_LENGTH],
                   cmpxDataIn out[FFT_LENGTH]);

void dummy_proc_be(status_t* status_in, bool* ovflo, cmpxDataOut in[FFT_LENGTH],
                   cmpxDataOut out[FFT_LENGTH]);

void fft_top(bool direction, std::queue<cmpxDataIn>& in,
             std::queue<cmpxDataOut>& out, bool* ovflo);

void inputdatamover(bool direction, std::queue<config_t>& config_strm,
                    std::queue<cmpxDataIn>& in,
                    std::queue<cmpxDataIn>& out_strm);

void outputdatamover(std::queue<status_t>& status_in_strm, bool* ovflo,
                     std::queue<cmpxDataOut>& in_strm,
                     std::queue<cmpxDataOut>& out);

// Implementations

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
    if (status_in && ovflo) {
        *ovflo = (status_in->getOvflo() & 0x1) != 0;
    }
}

void inputdatamover(bool direction, std::queue<config_t>& config_strm,
                    std::queue<cmpxDataIn>& in,
                    std::queue<cmpxDataIn>& out_strm) {
    config_t config;
    config.setDir(direction);
    config.setSch(0x2AB);
    config_strm.push(config);

    for (int i = 0; i < FFT_LENGTH; i++) {
        // Assume enough data is present
        cmpxDataIn v = in.front();
        in.pop();
        out_strm.push(v);
    }
}

void outputdatamover(std::queue<status_t>& status_in_strm, bool* ovflo,
                     std::queue<cmpxDataOut>& in_strm,
                     std::queue<cmpxDataOut>& out) {
    for (int i = 0; i < FFT_LENGTH; i++) {
        // Move data from internal stream to output stream
        cmpxDataOut v = in_strm.front();
        in_strm.pop();
        out.push(v);
    }
    if (!status_in_strm.empty()) {
        status_t status = status_in_strm.front();
        status_in_strm.pop();
        if (ovflo) *ovflo = (status.getOvflo() & 0x1) != 0;
    } else {
        if (ovflo) *ovflo = false;
    }
}

// Simple software FFT (DFT) to replace HLS IP behavior
static void software_fft(bool direction, std::queue<cmpxDataIn>& xn,
                         std::queue<cmpxDataOut>& xk,
                         std::queue<status_t>& fft_status) {
    std::vector<cmpxDataIn> x(FFT_LENGTH);
    for (int i = 0; i < FFT_LENGTH; ++i) {
        x[i] = xn.front();
        xn.pop();
    }

    std::vector<cmpxDataOut> X(FFT_LENGTH, cmpxDataOut(0.0, 0.0));

    const double two_pi = 2.0 * M_PI;
    const int N = FFT_LENGTH;

    for (int k = 0; k < N; ++k) {
        std::complex<double> sum(0.0, 0.0);
        for (int n = 0; n < N; ++n) {
            double angle = two_pi * k * n / static_cast<double>(N);
            double c = std::cos(angle);
            double s = std::sin(angle);
            std::complex<double> twiddle(c, direction ? -s : s); // forward: -j, inverse: +j
            sum += static_cast<std::complex<double>>(x[n]) * twiddle;
        }
        if (!direction) {
            sum /= static_cast<double>(N); // scale inverse
        }
        X[k] = static_cast<cmpxDataOut>(sum);
    }

    for (int k = 0; k < N; ++k) {
        xk.push(X[k]);
    }

    status_t st;
    st.setOvflo(0);
    fft_status.push(st);
}

void fft_top(bool direction, std::queue<cmpxDataIn>& in,
             std::queue<cmpxDataOut>& out, bool* ovflo) {
    std::queue<cmpxDataIn> xn;
    std::queue<cmpxDataOut> xk;
    std::queue<config_t> fft_config;
    std::queue<status_t> fft_status;

    inputdatamover(direction, fft_config, in, xn);

    // Read config (if present) to determine direction
    bool dir = direction;
    if (!fft_config.empty()) {
        config_t cfg = fft_config.front();
        fft_config.pop();
        dir = cfg.getDir();
    }

    software_fft(dir, xn, xk, fft_status);

    outputdatamover(fft_status, ovflo, xk, out);
}
