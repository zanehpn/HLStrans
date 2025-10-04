// contents of karaoke_processor_tb.cpp

#include "karaoke_processor.cpp"
#include <cassert>
#include <iostream>
#include <cmath>

// Helper to compute maximum absolute error between two arrays
float compute_max_abs_error(const float* a, const float* b, int n) {
    float max_err = 0.0f;
    for (int i = 0; i < n; ++i) {
        float err = std::fabs(a[i] - b[i]);
        if (err > max_err) max_err = err;
    }
    return max_err;
}

// Helper to print first few samples for visual inspection
void print_samples(const float* arr, int n, const char* label, int count = 5) {
    std::cout << label << ": ";
    for (int i = 0; i < count && i < n; ++i) {
        std::cout << arr[i] << (i + 1 < count ? ", " : "");
    }
    std::cout << std::endl;
}

int main() {
    const float PI = 3.14159265358979323846f;
    const float tol = 1e-6f;

    // Test Case 1: Constant input of ones, gains sum to 1.0
    {
        float input[SIZE];
        float output[SIZE];
        float expected[SIZE];
        float vocal_gain = 0.7f;
        float music_gain = 0.3f;

        // Prepare input and expected output
        for (int i = 0; i < SIZE; ++i) {
            input[i] = 1.0f;
            expected[i] = input[i] * (vocal_gain + music_gain);
        }

        karaoke_processor(input, output, vocal_gain, music_gain);

        float max_err = compute_max_abs_error(output, expected, SIZE);
        print_samples(output, SIZE, "TC1 Output");
        assert(max_err <= tol);
        std::cout << "PASS: Test Case 1 (ones input, gains 0.7+0.3). Max error = " << max_err << std::endl;
    }

    // Test Case 2: Zero input, any gains should result in zero output
    {
        float input[SIZE];
        float output[SIZE];
        float expected[SIZE];
        float vocal_gain = 0.8f;
        float music_gain = 0.2f;

        for (int i = 0; i < SIZE; ++i) {
            input[i] = 0.0f;
            expected[i] = 0.0f;
        }

        karaoke_processor(input, output, vocal_gain, music_gain);

        float max_err = compute_max_abs_error(output, expected, SIZE);
        print_samples(output, SIZE, "TC2 Output");
        assert(max_err <= tol);
        std::cout << "PASS: Test Case 2 (zero input). Max error = " << max_err << std::endl;
    }

    // Test Case 3: Sine wave input, gains sum to 1.0 -> output equals input
    {
        float input[SIZE];
        float output[SIZE];
        float expected[SIZE];
        float vocal_gain = 0.75f;
        float music_gain = 0.25f;

        for (int i = 0; i < SIZE; ++i) {
            input[i] = std::sin(2.0f * PI * i / SIZE);
            expected[i] = input[i] * (vocal_gain + music_gain);
        }

        karaoke_processor(input, output, vocal_gain, music_gain);

        float max_err = compute_max_abs_error(output, expected, SIZE);
        print_samples(output, SIZE, "TC3 Output");
        assert(max_err <= tol);
        std::cout << "PASS: Test Case 3 (sine input, gains 0.75+0.25). Max error = " << max_err << std::endl;
    }

    // Test Case 4: Ramp input, one gain positive >1 and one negative, sum to 1.0
    {
        float input[SIZE];
        float output[SIZE];
        float expected[SIZE];
        float vocal_gain = 1.5f;
        float music_gain = -0.5f; // cancellation, overall scale = 1.0

        for (int i = 0; i < SIZE; ++i) {
            input[i] = static_cast<float>(i) / static_cast<float>(SIZE); // ramp from 0 to ~1
            expected[i] = input[i] * (vocal_gain + music_gain);
        }

        karaoke_processor(input, output, vocal_gain, music_gain);

        float max_err = compute_max_abs_error(output, expected, SIZE);
        print_samples(output, SIZE, "TC4 Output");
        assert(max_err <= tol);
        std::cout << "PASS: Test Case 4 (ramp input, gains 1.5-0.5). Max error = " << max_err << std::endl;
    }

    // Test Case 5: Pseudo-random input, gains sum not equal 1.0 (scale by 0.7)
    {
        float input[SIZE];
        float output[SIZE];
        float expected[SIZE];
        float vocal_gain = 0.6f;
        float music_gain = 0.1f; // scale factor = 0.7

        // Deterministic pseudo-random pattern in range ~[-0.5, 0.49]
        for (int i = 0; i < SIZE; ++i) {
            int val = (i * 37) % 100;
            input[i] = static_cast<float>(val) / 100.0f - 0.5f;
            expected[i] = input[i] * (vocal_gain + music_gain);
        }

        karaoke_processor(input, output, vocal_gain, music_gain);

        float max_err = compute_max_abs_error(output, expected, SIZE);
        print_samples(output, SIZE, "TC5 Output");
        assert(max_err <= tol);
        std::cout << "PASS: Test Case 5 (pseudo-random input, gains 0.6+0.1). Max error = " << max_err << std::endl;
    }

    std::cout << "All tests passed." << std::endl;
    return 0;
}