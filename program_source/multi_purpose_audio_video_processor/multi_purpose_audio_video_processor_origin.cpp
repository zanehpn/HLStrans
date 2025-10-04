// Converted from multi_purpose_audio_video_processor_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: multi_purpose_audio_video_processor.cpp ----
#include <cstdint>

#define ARRAY_SIZE 1024

void multi_purpose_audio_video_processor(
    int32_t input_audio[ARRAY_SIZE],
    int32_t input_video[ARRAY_SIZE],
    int32_t output_audio[ARRAY_SIZE],
    int32_t output_video[ARRAY_SIZE],
    int32_t audio_gain,
    int32_t video_brightness)
{

    // Audio processing: simple gain adjustment
    for (int i = 0; i < ARRAY_SIZE; i++) {

        output_audio[i] = input_audio[i] * audio_gain;
    }

    // Video processing: simple brightness adjustment
    for (int i = 0; i < ARRAY_SIZE; i++) {

        output_video[i] = input_video[i] + video_brightness;
    }
}

// Top function name: multi_purpose_audio_video_processor
