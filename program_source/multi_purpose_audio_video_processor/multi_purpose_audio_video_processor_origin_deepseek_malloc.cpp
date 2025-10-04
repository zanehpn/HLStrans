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
    int32_t* in_audio = new int32_t[ARRAY_SIZE];
    int32_t* in_video = new int32_t[ARRAY_SIZE];
    int32_t* out_audio_buf = new int32_t[ARRAY_SIZE];
    int32_t* out_video_buf = new int32_t[ARRAY_SIZE];

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        in_audio[i] = input_audio[i];
        in_video[i] = input_video[i];
    }

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        out_audio_buf[i] = in_audio[i] * audio_gain;
    }

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        out_video_buf[i] = in_video[i] + video_brightness;
    }

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        output_audio[i] = out_audio_buf[i];
        output_video[i] = out_video_buf[i];
    }

    delete[] in_audio;
    delete[] in_video;
    delete[] out_audio_buf;
    delete[] out_video_buf;
}
