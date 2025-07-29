// audio_chain_hls.c
#include <hls_stream.h>
#define N 1024

typedef enum { FX_GAIN, FX_THR, FX_CLIP } FXType;

void gain(float &v, float g) { v *= g; }
void thr(float &v, float t) { if (v>t) v=t; if (v< -t) v=-t; }
void clip(float &v) { if (v>1.0f) v=1.0f; if (v<-1.0f) v=-1.0f; }

void process_audio(hls::stream<float>& in, 
                       hls::stream<float>& out,
                       FXType fx1, float p1,
                       FXType fx2, float p2)
{
    #pragma HLS DATAFLOW
    // Stage 1
    auto stage1 = [&](hls::stream<float>& s_in, hls::stream<float>& s_out){
      for (int i=0;i<N;i++){ 
        #pragma HLS PIPELINE II=1
        float v = s_in.read();
        switch(fx1){
          case FX_GAIN: gain(v,p1); break;
          case FX_THR:  thr(v,p1);  break;
          default:      break;
        }
        s_out.write(v);
      }
    };
    // Stage 2
    auto stage2 = [&](hls::stream<float>& s_in, hls::stream<float>& s_out){
      for (int i=0;i<N;i++){ 
        #pragma HLS PIPELINE II=1
        float v = s_in.read();
        switch(fx2){
          case FX_CLIP: clip(v);    break;
          case FX_GAIN: gain(v,p2); break;
          default:      break;
        }
        s_out.write(v);
      }
    };

    static hls::stream<float> buf;
    stage1(in, buf);
    stage2(buf, out);
}
