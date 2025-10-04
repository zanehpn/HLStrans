// contents of multi_purpose_audio_video_processor_tb.cpp

#include <iostream>
#include <cstdint>
#include <cassert>

// Include the source to avoid duplicate symbol errors (source does not define main()).
#include "multi_purpose_audio_video_processor.cpp"

// Helper to fill audio input with a bounded deterministic pattern
static void fill_audio_pattern(int32_t* arr, int size, int seed) {
    for (int i = 0; i < size; ++i) {
        // Range: [-1000, 1000]
        arr[i] = static_cast<int32_t>((((i * 7 + seed) % 2001) - 1000));
    }
}

// Helper to fill video input with a bounded deterministic pattern
static void fill_video_pattern(int32_t* arr, int size, int seed) {
    for (int i = 0; i < size; ++i) {
        // Range: [-512, 511]
        arr[i] = static_cast<int32_t>((((i * 5 + seed * 3) % 1024) - 512));
    }
}

// Helper to print a few sample values from an array
static void print_samples(const char* label, const int32_t* arr, int count) {
    std::cout << label << ": ";
    for (int i = 0; i < count; ++i) {
        std::cout << arr[i];
        if (i + 1 < count) std::cout << ", ";
    }
    std::cout << std::endl;
}

int main() {
    // Shared input/output buffers
    static int32_t input_audio[ARRAY_SIZE];
    static int32_t input_video[ARRAY_SIZE];
    static int32_t output_audio[ARRAY_SIZE];
    static int32_t output_video[ARRAY_SIZE];

    // ------------------------------
    // Test 1: Basic positive gain and brightness
    // Audio: gain = 2 (scale by 2)
    // Video: brightness = 10 (offset by +10)
    // ------------------------------
    fill_audio_pattern(input_audio, ARRAY_SIZE, /*seed=*/1);
    fill_video_pattern(input_video, ARRAY_SIZE, /*seed=*/2);
    int32_t audio_gain = 2;
    int32_t video_brightness = 10;

    multi_purpose_audio_video_processor(
        input_audio, input_video, output_audio, output_video, audio_gain, video_brightness);

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        int32_t expected_audio = input_audio[i] * audio_gain;
        int32_t expected_video = input_video[i] + video_brightness;
        assert(output_audio[i] == expected_audio);
        assert(output_video[i] == expected_video);
    }
    std::cout << "Test 1 passed: positive gain and brightness." << std::endl;
    print_samples("Test 1 sample output_audio", output_audio, 8);
    print_samples("Test 1 sample output_video", output_video, 8);

    // ------------------------------
    // Test 2: Zero gain and zero brightness
    // Audio: gain = 0 (all outputs should be 0)
    // Video: brightness = 0 (output should match input)
    // ------------------------------
    fill_audio_pattern(input_audio, ARRAY_SIZE, /*seed=*/5);
    fill_video_pattern(input_video, ARRAY_SIZE, /*seed=*/7);
    audio_gain = 0;
    video_brightness = 0;

    multi_purpose_audio_video_processor(
        input_audio, input_video, output_audio, output_video, audio_gain, video_brightness);

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        assert(output_audio[i] == 0);
        assert(output_video[i] == input_video[i]);
    }
    std::cout << "Test 2 passed: zero gain and zero brightness." << std::endl;
    print_samples("Test 2 sample output_audio", output_audio, 8);
    print_samples("Test 2 sample output_video", output_video, 8);

    // ------------------------------
    // Test 3: Negative gain and negative brightness
    // Audio: gain = -3 (sign inversion and scale)
    // Video: brightness = -20 (darken by 20)
    // ------------------------------
    fill_audio_pattern(input_audio, ARRAY_SIZE, /*seed=*/11);
    fill_video_pattern(input_video, ARRAY_SIZE, /*seed=*/13);
    audio_gain = -3;
    video_brightness = -20;

    multi_purpose_audio_video_processor(
        input_audio, input_video, output_audio, output_video, audio_gain, video_brightness);

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        int32_t expected_audio = input_audio[i] * audio_gain;
        int32_t expected_video = input_video[i] + video_brightness;
        assert(output_audio[i] == expected_audio);
        assert(output_video[i] == expected_video);
    }
    std::cout << "Test 3 passed: negative gain and negative brightness." << std::endl;
    print_samples("Test 3 sample output_audio", output_audio, 8);
    print_samples("Test 3 sample output_video", output_video, 8);

    // ------------------------------
    // Test 4: Mixed edge-safe values with different parameters
    // Verifies behavior across mixed inputs while avoiding overflow.
    // ------------------------------
    // Create a custom pattern: first 64 entries are fixed edge-safe values, rest follow pattern.
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        if (i < 64) {
            // Keep small absolute values to avoid overflow with gain=4
            input_audio[i] = (i % 17) - 8;  // range [-8, 8]
            input_video[i] = (i % 33) - 16; // range [-16, 16]
        } else {
            input_audio[i] = static_cast<int32_t>((((i * 9 + 123) % 2001) - 1000));
            input_video[i] = static_cast<int32_t>((((i * 11 + 321) % 1024) - 512));
        }
    }
    audio_gain = 4;
    video_brightness = 123;

    multi_purpose_audio_video_processor(
        input_audio, input_video, output_audio, output_video, audio_gain, video_brightness);

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        int32_t expected_audio = input_audio[i] * audio_gain;
        int32_t expected_video = input_video[i] + video_brightness;
        assert(output_audio[i] == expected_audio);
        assert(output_video[i] == expected_video);
    }
    std::cout << "Test 4 passed: mixed pattern with gain=4 and brightness=123." << std::endl;
    print_samples("Test 4 sample output_audio", output_audio, 8);
    print_samples("Test 4 sample output_video", output_video, 8);

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}