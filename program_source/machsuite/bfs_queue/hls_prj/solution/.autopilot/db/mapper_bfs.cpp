#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
using hls::sim::Byte;
struct __cosim_s16__ { char data[16]; };
extern "C" void bfs(Byte<16>*, Byte<8>*, long long, Byte<1>*, Byte<8>*);
extern "C" void apatb_bfs_hw(volatile void * __xlx_apatb_param_nodes, volatile void * __xlx_apatb_param_edges, long long __xlx_apatb_param_starting_node, volatile void * __xlx_apatb_param_level, volatile void * __xlx_apatb_param_level_counts) {
using hls::sim::createStream;
  // Collect __xlx_nodes__tmp_vec
std::vector<Byte<16>> __xlx_nodes__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_nodes__tmp_vec.push_back(((Byte<16>*)__xlx_apatb_param_nodes)[i]);
}
  int __xlx_size_param_nodes = 256;
  int __xlx_offset_param_nodes = 0;
  int __xlx_offset_byte_param_nodes = 0*16;
  // Collect __xlx_edges__tmp_vec
std::vector<Byte<8>> __xlx_edges__tmp_vec;
for (size_t i = 0; i < 4096; ++i){
__xlx_edges__tmp_vec.push_back(((Byte<8>*)__xlx_apatb_param_edges)[i]);
}
  int __xlx_size_param_edges = 4096;
  int __xlx_offset_param_edges = 0;
  int __xlx_offset_byte_param_edges = 0*8;
  // Collect __xlx_level__tmp_vec
std::vector<Byte<1>> __xlx_level__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_level__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_level)[i]);
}
  int __xlx_size_param_level = 256;
  int __xlx_offset_param_level = 0;
  int __xlx_offset_byte_param_level = 0*1;
  // Collect __xlx_level_counts__tmp_vec
std::vector<Byte<8>> __xlx_level_counts__tmp_vec;
for (size_t i = 0; i < 10; ++i){
__xlx_level_counts__tmp_vec.push_back(((Byte<8>*)__xlx_apatb_param_level_counts)[i]);
}
  int __xlx_size_param_level_counts = 10;
  int __xlx_offset_param_level_counts = 0;
  int __xlx_offset_byte_param_level_counts = 0*8;
  // DUT call
  bfs(__xlx_nodes__tmp_vec.data(), __xlx_edges__tmp_vec.data(), __xlx_apatb_param_starting_node, __xlx_level__tmp_vec.data(), __xlx_level_counts__tmp_vec.data());
// print __xlx_apatb_param_nodes
for (size_t i = 0; i < __xlx_size_param_nodes; ++i) {
((Byte<16>*)__xlx_apatb_param_nodes)[i] = __xlx_nodes__tmp_vec[__xlx_offset_param_nodes+i];
}
// print __xlx_apatb_param_edges
for (size_t i = 0; i < __xlx_size_param_edges; ++i) {
((Byte<8>*)__xlx_apatb_param_edges)[i] = __xlx_edges__tmp_vec[__xlx_offset_param_edges+i];
}
// print __xlx_apatb_param_level
for (size_t i = 0; i < __xlx_size_param_level; ++i) {
((Byte<1>*)__xlx_apatb_param_level)[i] = __xlx_level__tmp_vec[__xlx_offset_param_level+i];
}
// print __xlx_apatb_param_level_counts
for (size_t i = 0; i < __xlx_size_param_level_counts; ++i) {
((Byte<8>*)__xlx_apatb_param_level_counts)[i] = __xlx_level_counts__tmp_vec[__xlx_offset_param_level_counts+i];
}
}
