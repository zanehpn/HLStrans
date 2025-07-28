#include <iostream>
#include <ctime>
#include <utility>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include <hls_stream.h>
#include <ap_int.h>

#define hash_bloom 0x7ffff 
#define bloom_size 14
#define docTag 0xffffffff

#define TOTAL_SIZE 3500000
#define PARALLELISATION 8

//TRIPCOUNT identifiers
const unsigned int t_size = TOTAL_SIZE;
const unsigned int pf = PARALLELISATION;

typedef ap_uint<sizeof(int )*8*PARALLELISATION> parallel_words_t; 
typedef ap_uint<sizeof(char)*8*PARALLELISATION> parallel_flags_t; 

const unsigned int bloom_filter_size = 1<<bloom_size;

namespace hls_stream 
{
  template<typename T>
  void buffer(hls::stream<T> &stream_o, T* axi_i, unsigned int nvals)
  {
    axiToStreamLoop: for(int i=0; i<nvals; i++) {
      stream_o.write( axi_i[i] );
    }  
  }

  template<typename T>
  void buffer(T* axi_o, hls::stream<T> &stream_i, unsigned int nvals)
  {
    streamToAxiLoop: for(int i=0; i<nvals; i++) {
      axi_o[i] = stream_i.read();
    }  
  }

  template<int Wo, int Wi>
  void resize(hls::stream<ap_uint<Wo> > &stream_o, hls::stream<ap_uint<Wi> > &stream_i, unsigned int nvals)
  {
    if (Wo<Wi) { // Wide to Narrow
      ap_uint<Wi> tmp;
      int nwrites = Wi/Wo;
      int nreads  = nvals;
      resizeStreamW2NLoop: for(int i=0; i<nreads; i++) {
        for (int j=0; j<nwrites; j++) {
          if (j==0) tmp = stream_i.read();
          stream_o.write( tmp(Wo-1+Wo*j, Wo*j) );
        }
      }
    }

    if (Wo>Wi) { // Narrow to Wide
      ap_uint<Wo> tmp;
      int nwrites = nvals;
      int nreads  = Wo/Wi;

      resizeStreamN2WLoop: for(int i=0; i<nwrites; i++) {
        for (int j=0; j<nreads; j++) {
          tmp(Wi-1+Wi*j, Wi*j) = stream_i.read();
          if (j==(Wo/Wi-1)) stream_o.write(tmp);
        }
      }
    }

    if (Wo==Wi) { // Equal sizes
      resizeStreamEqLoop: for(int i=0; i<nvals; i++) {
        stream_o.write( stream_i.read() );      
      }
    }
  }
}


unsigned int MurmurHash2(unsigned int key, int len, unsigned int seed)
{
  const unsigned char* data = (const unsigned char *)&key;
  const unsigned int m = 0x5bd1e995;
  unsigned int h = seed ^ len;
  switch(len) {
    case 3: h ^= data[2] << 16;
    case 2: h ^= data[1] << 8;
    case 1: h ^= data[0];
            h *= m;
  };
  h ^= h >> 13;
  h *= m;
  h ^= h >> 15;
  return h;
} 

void compute_hash_flags (
        hls::stream<parallel_flags_t>& flag_stream,
        hls::stream<parallel_words_t>& word_stream,
        unsigned int                   bloom_filter_local[PARALLELISATION][bloom_filter_size],
        unsigned int                   total_size) 
{
  compute_flags: for(int i=0; i<total_size/PARALLELISATION; i++)
  {
    #pragma HLS LOOP_TRIPCOUNT min=1 max=t_size/pf
    parallel_words_t parallel_entries = word_stream.read();
    parallel_flags_t inh_flags = 0;

    compute_hash_flags_loop: for (unsigned int j=0; j<PARALLELISATION; j++)
    {
#pragma HLS UNROLL

      unsigned int curr_entry = parallel_entries(31+j*32, j*32);
      unsigned int frequency = curr_entry & 0x00ff;
      unsigned int word_id = curr_entry >> 8;
      unsigned hash_pu = MurmurHash2(word_id, 3, 1);
      unsigned hash_lu = MurmurHash2(word_id, 3, 5);
      bool doc_end= (word_id==docTag); 
      unsigned hash1 = hash_pu&hash_bloom; 
      bool inh1 = (!doc_end) && (bloom_filter_local[j][ hash1 >> 5 ] & ( 1 << (hash1 & 0x1f)));
      unsigned hash2=(hash_pu+hash_lu)&hash_bloom;
      bool inh2 = (!doc_end) && (bloom_filter_local[j][ hash2 >> 5 ] & ( 1 << (hash2 & 0x1f)));

      inh_flags(7+j*8, j*8) = (inh1 && inh2) ? 1 : 0;
    }

    flag_stream.write(inh_flags); 
  } 
}

void bloomfilter(
        ap_uint<512>*   output_flags,
        ap_uint<512>*   input_words,
        unsigned int    bloom_filter[PARALLELISATION][bloom_filter_size],
        unsigned int    total_size)
{
#pragma HLS DATAFLOW

    hls::stream<ap_uint<512> >    data_from_gmem;
    hls::stream<parallel_words_t> word_stream;
    hls::stream<parallel_flags_t> flag_stream;
    hls::stream<ap_uint<512> >    data_to_gmem;

  // Burst read 512-bit values from global memory over AXI interface
  hls_stream::buffer(data_from_gmem, input_words, total_size/(512/32));

  // Form a stream of parallel words from stream of 512-bit values
  // Going from Wi=512 to Wo= 256 
  hls_stream::resize(word_stream, data_from_gmem, total_size/(512/32));

  // Process stream of parallel word : word_stream is of 2k (32*64)
  compute_hash_flags(flag_stream, word_stream, bloom_filter, total_size);

  // Form a stream of 512-bit values from stream of parallel flags
  // Going from Wi=64 to Wo=512
  hls_stream::resize(data_to_gmem, flag_stream, total_size/(512/8));

  // Burst write 512-bit values to global memory over AXI interface
  hls_stream::buffer(output_flags, data_to_gmem, total_size/(512/8));
}