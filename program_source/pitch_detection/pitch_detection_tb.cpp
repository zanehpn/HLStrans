// contents of pitch_detection_tb.cpp

#include <iostream>
#include <cmath>
#include <cassert>

// Include the source under test to avoid duplicate symbol issues (no main in the source).
#include "pitch_detection.cpp"

// Helper constant for generating sine waves
static const float PI = 3.14159265358979323846f;
static const float SAMPLE_RATE = 44100.0f;

// Generate a sine wave of given frequency, amplitude, and phase
void generate_sine(float signal[N], float freq, float amplitude = 1.0f, float phase = 0.0f) {
    for (int i = 0; i < N; ++i) {
        float t = static_cast<float>(i) / SAMPLE_RATE;
        signal[i] = amplitude * std::sin(2.0f * PI * freq * t + phase);
    }
}

// Generate a mixture of two sine waves
void generate_sine_mix(float signal[N], float freq1, float amp1, float freq2, float amp2, float phase1 = 0.0f, float phase2 = 0.0f) {
    for (int i = 0; i < N; ++i) {
        float t = static_cast<float>(i) / SAMPLE_RATE;
        signal[i] = amp1 * std::sin(2.0f * PI * freq1 * t + phase1)
                  + amp2 * std::sin(2.0f * PI * freq2 * t + phase2);
    }
}

// Check that all elements of the pitch array are (approximately) equal to expected within tolerance
void check_pitch_array_constant(const float pitch[N], float expected, float tol) {
    for (int i = 0; i < N; ++i) {
        float diff = std::fabs(pitch[i] - expected);
        assert(diff <= tol && "Pitch array not constant within tolerance.");
    }
}

int main() {
    std::cout << "Running pitch_detection testbench..." << std::endl;

    // Test 1: Zero signal should produce pitch = 0 across all outputs.
    {
        float signal[N] = {0.0f};
        float pitch[N]  = {0.0f};
        pitch_detection(signal, pitch);

        // Expect all zeros
        for (int i = 0; i < N; ++i) {
            assert(pitch[i] == 0.0f && "Zero signal must yield zero pitch.");
        }
        std::cout << "Test 1 (Zero signal): PASS. Pitch = 0 Hz" << std::endl;
    }

    // Test 2: 440 Hz sine wave (A4). Expect pitch near 440 Hz.
    {
        float signal[N];
        float pitch[N] = {0.0f};
        const float target_freq = 440.0f;
        const float tolerance_hz = 10.0f; // Allow discrete lag quantization error

        generate_sine(signal, target_freq);
        pitch_detection(signal, pitch);

        float detected = pitch[0];
        std::cout << "Test 2 (440 Hz sine): detected pitch = " << detected << " Hz" << std::endl;

        assert(std::fabs(detected - target_freq) <= tolerance_hz && "Detected pitch deviates from expected 440 Hz.");
        check_pitch_array_constant(pitch, detected, 1e-6f);
        std::cout << "Test 2: PASS." << std::endl;
    }

    // Test 3: 220 Hz sine wave. Expect pitch near 220 Hz.
    {
        float signal[N];
        float pitch[N] = {0.0f};
        const float target_freq = 220.0f;
        const float tolerance_hz = 6.0f; // Slightly tighter than 440 Hz case

        generate_sine(signal, target_freq);
        pitch_detection(signal, pitch);

        float detected = pitch[0];
        std::cout << "Test 3 (220 Hz sine): detected pitch = " << detected << " Hz" << std::endl;

        assert(std::fabs(detected - target_freq) <= tolerance_hz && "Detected pitch deviates from expected 220 Hz.");
        check_pitch_array_constant(pitch, detected, 1e-6f);
        std::cout << "Test 3: PASS." << std::endl;
    }

    // Test 4: 1000 Hz sine wave. Expect pitch near 1000 Hz.
    {
        float signal[N];
        float pitch[N] = {0.0f};
        const float target_freq = 1000.0f;
        const float tolerance_hz = 50.0f; // Larger tolerance for higher frequency quantization

        generate_sine(signal, target_freq);
        pitch_detection(signal, pitch);

        float detected = pitch[0];
        std::cout << "Test 4 (1000 Hz sine): detected pitch = " << detected << " Hz" << std::endl;

        assert(std::fabs(detected - target_freq) <= tolerance_hz && "Detected pitch deviates from expected 1000 Hz.");
        check_pitch_array_constant(pitch, detected, 1e-6f);
        std::cout << "Test 4: PASS." << std::endl;
    }

    // Test 5: Low frequency near half the window length (≈86.13 Hz, period ~512 samples).
    // Expect pitch close to 44100/512 ≈ 86.1328 Hz.
    {
        float signal[N];
        float pitch[N] = {0.0f};
        const float target_freq = SAMPLE_RATE / 512.0f; // ~86.13 Hz
        const float tolerance_hz = 2.0f;

        generate_sine(signal, target_freq);
        pitch_detection(signal, pitch);

        float detected = pitch[0];
        std::cout << "Test 5 (~86.13 Hz sine): detected pitch = " << detected << " Hz" << std::endl;

        assert(std::fabs(detected - target_freq) <= tolerance_hz && "Detected pitch deviates from expected ~86.13 Hz.");
        check_pitch_array_constant(pitch, detected, 1e-6f);
        std::cout << "Test 5: PASS." << std::endl;
    }

    // Test 6: Mixture of two sine waves (440 Hz strong + 660 Hz weak).
    // Expect pitch dominated by the stronger 440 Hz component.
    {
        float signal[N];
        float pitch[N] = {0.0f};
        const float dominant_freq = 440.0f;
        const float weak_freq = 660.0f;
        const float tolerance_hz = 12.0f; // Slightly wider tolerance for mixed signal

        generate_sine_mix(signal, dominant_freq, 1.0f, weak_freq, 0.3f);
        pitch_detection(signal, pitch);

        float detected = pitch[0];
        std::cout << "Test 6 (Mix 440 Hz @1.0 + 660 Hz @0.3): detected pitch = " << detected << " Hz" << std::endl;

        assert(std::fabs(detected - dominant_freq) <= tolerance_hz && "Detected pitch not dominated by 440 Hz component as expected.");
        check_pitch_array_constant(pitch, detected, 1e-6f);
        std::cout << "Test 6: PASS." << std::endl;
    }

    // Test 7: Amplitude invariance — scaling the signal amplitude should not change detected pitch.
    {
        float signal1[N], signal2[N];
        float pitch1[N] = {0.0f};
        float pitch2[N] = {0.0f};
        const float freq = 330.0f; // E4
        const float tolerance_hz = 8.0f;

        generate_sine(signal1, freq, 1.0f);
        generate_sine(signal2, freq, 0.5f); // Half amplitude
        pitch_detection(signal1, pitch1);
        pitch_detection(signal2, pitch2);

        float detected1 = pitch1[0];
        float detected2 = pitch2[0];
        std::cout << "Test 7 (Amplitude invariance, 330 Hz): detected1 = " << detected1 << " Hz, detected2 = " << detected2 << " Hz" << std::endl;

        assert(std::fabs(detected1 - freq) <= tolerance_hz && "Detected pitch deviates for amplitude=1.0.");
        assert(std::fabs(detected2 - freq) <= tolerance_hz && "Detected pitch deviates for amplitude=0.5.");
        assert(std::fabs(detected1 - detected2) <= 1e-5f && "Amplitude scaling changed detected pitch unexpectedly.");
        std::cout << "Test 7: PASS." << std::endl;
    }

    std::cout << "All tests PASSED." << std::endl;
    return 0;
}