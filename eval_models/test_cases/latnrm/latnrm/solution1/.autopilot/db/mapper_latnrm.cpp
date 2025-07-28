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
extern "C" void latnrm(Byte<4>*, Byte<4>*, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_latnrm_hw(volatile void * __xlx_apatb_param_data, volatile void * __xlx_apatb_param_outa, volatile void * __xlx_apatb_param_coefficient_0, volatile void * __xlx_apatb_param_coefficient_1, volatile void * __xlx_apatb_param_coefficient_2, volatile void * __xlx_apatb_param_coefficient_3, volatile void * __xlx_apatb_param_coefficient_4, volatile void * __xlx_apatb_param_coefficient_5, volatile void * __xlx_apatb_param_coefficient_6, volatile void * __xlx_apatb_param_coefficient_7, volatile void * __xlx_apatb_param_coefficient_8, volatile void * __xlx_apatb_param_coefficient_9, volatile void * __xlx_apatb_param_coefficient_10, volatile void * __xlx_apatb_param_coefficient_11, volatile void * __xlx_apatb_param_coefficient_12, volatile void * __xlx_apatb_param_coefficient_13, volatile void * __xlx_apatb_param_coefficient_14, volatile void * __xlx_apatb_param_coefficient_15, volatile void * __xlx_apatb_param_coefficient_16, volatile void * __xlx_apatb_param_coefficient_17, volatile void * __xlx_apatb_param_coefficient_18, volatile void * __xlx_apatb_param_coefficient_19, volatile void * __xlx_apatb_param_coefficient_20, volatile void * __xlx_apatb_param_coefficient_21, volatile void * __xlx_apatb_param_coefficient_22, volatile void * __xlx_apatb_param_coefficient_23, volatile void * __xlx_apatb_param_coefficient_24, volatile void * __xlx_apatb_param_coefficient_25, volatile void * __xlx_apatb_param_coefficient_26, volatile void * __xlx_apatb_param_coefficient_27, volatile void * __xlx_apatb_param_coefficient_28, volatile void * __xlx_apatb_param_coefficient_29, volatile void * __xlx_apatb_param_coefficient_30, volatile void * __xlx_apatb_param_coefficient_31, volatile void * __xlx_apatb_param_coefficient_32, volatile void * __xlx_apatb_param_coefficient_33, volatile void * __xlx_apatb_param_coefficient_34, volatile void * __xlx_apatb_param_coefficient_35, volatile void * __xlx_apatb_param_coefficient_36, volatile void * __xlx_apatb_param_coefficient_37, volatile void * __xlx_apatb_param_coefficient_38, volatile void * __xlx_apatb_param_coefficient_39, volatile void * __xlx_apatb_param_coefficient_40, volatile void * __xlx_apatb_param_coefficient_41, volatile void * __xlx_apatb_param_coefficient_42, volatile void * __xlx_apatb_param_coefficient_43, volatile void * __xlx_apatb_param_coefficient_44, volatile void * __xlx_apatb_param_coefficient_45, volatile void * __xlx_apatb_param_coefficient_46, volatile void * __xlx_apatb_param_coefficient_47, volatile void * __xlx_apatb_param_coefficient_48, volatile void * __xlx_apatb_param_coefficient_49, volatile void * __xlx_apatb_param_coefficient_50, volatile void * __xlx_apatb_param_coefficient_51, volatile void * __xlx_apatb_param_coefficient_52, volatile void * __xlx_apatb_param_coefficient_53, volatile void * __xlx_apatb_param_coefficient_54, volatile void * __xlx_apatb_param_coefficient_55, volatile void * __xlx_apatb_param_coefficient_56, volatile void * __xlx_apatb_param_coefficient_57, volatile void * __xlx_apatb_param_coefficient_58, volatile void * __xlx_apatb_param_coefficient_59, volatile void * __xlx_apatb_param_coefficient_60, volatile void * __xlx_apatb_param_coefficient_61, volatile void * __xlx_apatb_param_coefficient_62, volatile void * __xlx_apatb_param_coefficient_63, volatile void * __xlx_apatb_param_internal_state_0, volatile void * __xlx_apatb_param_internal_state_1, volatile void * __xlx_apatb_param_internal_state_2, volatile void * __xlx_apatb_param_internal_state_3, volatile void * __xlx_apatb_param_internal_state_4, volatile void * __xlx_apatb_param_internal_state_5, volatile void * __xlx_apatb_param_internal_state_6, volatile void * __xlx_apatb_param_internal_state_7, volatile void * __xlx_apatb_param_internal_state_8, volatile void * __xlx_apatb_param_internal_state_9, volatile void * __xlx_apatb_param_internal_state_10, volatile void * __xlx_apatb_param_internal_state_11, volatile void * __xlx_apatb_param_internal_state_12, volatile void * __xlx_apatb_param_internal_state_13, volatile void * __xlx_apatb_param_internal_state_14, volatile void * __xlx_apatb_param_internal_state_15, volatile void * __xlx_apatb_param_internal_state_16, volatile void * __xlx_apatb_param_internal_state_17, volatile void * __xlx_apatb_param_internal_state_18, volatile void * __xlx_apatb_param_internal_state_19, volatile void * __xlx_apatb_param_internal_state_20, volatile void * __xlx_apatb_param_internal_state_21, volatile void * __xlx_apatb_param_internal_state_22, volatile void * __xlx_apatb_param_internal_state_23, volatile void * __xlx_apatb_param_internal_state_24, volatile void * __xlx_apatb_param_internal_state_25, volatile void * __xlx_apatb_param_internal_state_26, volatile void * __xlx_apatb_param_internal_state_27, volatile void * __xlx_apatb_param_internal_state_28, volatile void * __xlx_apatb_param_internal_state_29, volatile void * __xlx_apatb_param_internal_state_30, volatile void * __xlx_apatb_param_internal_state_31, volatile void * __xlx_apatb_param_internal_state_32) {
using hls::sim::createStream;
  // Collect __xlx_data__tmp_vec
std::vector<Byte<4>> __xlx_data__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_data__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_data)[i]);
}
  int __xlx_size_param_data = 64;
  int __xlx_offset_param_data = 0;
  int __xlx_offset_byte_param_data = 0*4;
  // Collect __xlx_outa__tmp_vec
std::vector<Byte<4>> __xlx_outa__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_outa__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_outa)[i]);
}
  int __xlx_size_param_outa = 64;
  int __xlx_offset_param_outa = 0;
  int __xlx_offset_byte_param_outa = 0*4;
  // DUT call
  latnrm(__xlx_data__tmp_vec.data(), __xlx_outa__tmp_vec.data(), __xlx_apatb_param_coefficient_0, __xlx_apatb_param_coefficient_1, __xlx_apatb_param_coefficient_2, __xlx_apatb_param_coefficient_3, __xlx_apatb_param_coefficient_4, __xlx_apatb_param_coefficient_5, __xlx_apatb_param_coefficient_6, __xlx_apatb_param_coefficient_7, __xlx_apatb_param_coefficient_8, __xlx_apatb_param_coefficient_9, __xlx_apatb_param_coefficient_10, __xlx_apatb_param_coefficient_11, __xlx_apatb_param_coefficient_12, __xlx_apatb_param_coefficient_13, __xlx_apatb_param_coefficient_14, __xlx_apatb_param_coefficient_15, __xlx_apatb_param_coefficient_16, __xlx_apatb_param_coefficient_17, __xlx_apatb_param_coefficient_18, __xlx_apatb_param_coefficient_19, __xlx_apatb_param_coefficient_20, __xlx_apatb_param_coefficient_21, __xlx_apatb_param_coefficient_22, __xlx_apatb_param_coefficient_23, __xlx_apatb_param_coefficient_24, __xlx_apatb_param_coefficient_25, __xlx_apatb_param_coefficient_26, __xlx_apatb_param_coefficient_27, __xlx_apatb_param_coefficient_28, __xlx_apatb_param_coefficient_29, __xlx_apatb_param_coefficient_30, __xlx_apatb_param_coefficient_31, __xlx_apatb_param_coefficient_32, __xlx_apatb_param_coefficient_33, __xlx_apatb_param_coefficient_34, __xlx_apatb_param_coefficient_35, __xlx_apatb_param_coefficient_36, __xlx_apatb_param_coefficient_37, __xlx_apatb_param_coefficient_38, __xlx_apatb_param_coefficient_39, __xlx_apatb_param_coefficient_40, __xlx_apatb_param_coefficient_41, __xlx_apatb_param_coefficient_42, __xlx_apatb_param_coefficient_43, __xlx_apatb_param_coefficient_44, __xlx_apatb_param_coefficient_45, __xlx_apatb_param_coefficient_46, __xlx_apatb_param_coefficient_47, __xlx_apatb_param_coefficient_48, __xlx_apatb_param_coefficient_49, __xlx_apatb_param_coefficient_50, __xlx_apatb_param_coefficient_51, __xlx_apatb_param_coefficient_52, __xlx_apatb_param_coefficient_53, __xlx_apatb_param_coefficient_54, __xlx_apatb_param_coefficient_55, __xlx_apatb_param_coefficient_56, __xlx_apatb_param_coefficient_57, __xlx_apatb_param_coefficient_58, __xlx_apatb_param_coefficient_59, __xlx_apatb_param_coefficient_60, __xlx_apatb_param_coefficient_61, __xlx_apatb_param_coefficient_62, __xlx_apatb_param_coefficient_63, __xlx_apatb_param_internal_state_0, __xlx_apatb_param_internal_state_1, __xlx_apatb_param_internal_state_2, __xlx_apatb_param_internal_state_3, __xlx_apatb_param_internal_state_4, __xlx_apatb_param_internal_state_5, __xlx_apatb_param_internal_state_6, __xlx_apatb_param_internal_state_7, __xlx_apatb_param_internal_state_8, __xlx_apatb_param_internal_state_9, __xlx_apatb_param_internal_state_10, __xlx_apatb_param_internal_state_11, __xlx_apatb_param_internal_state_12, __xlx_apatb_param_internal_state_13, __xlx_apatb_param_internal_state_14, __xlx_apatb_param_internal_state_15, __xlx_apatb_param_internal_state_16, __xlx_apatb_param_internal_state_17, __xlx_apatb_param_internal_state_18, __xlx_apatb_param_internal_state_19, __xlx_apatb_param_internal_state_20, __xlx_apatb_param_internal_state_21, __xlx_apatb_param_internal_state_22, __xlx_apatb_param_internal_state_23, __xlx_apatb_param_internal_state_24, __xlx_apatb_param_internal_state_25, __xlx_apatb_param_internal_state_26, __xlx_apatb_param_internal_state_27, __xlx_apatb_param_internal_state_28, __xlx_apatb_param_internal_state_29, __xlx_apatb_param_internal_state_30, __xlx_apatb_param_internal_state_31, __xlx_apatb_param_internal_state_32);
// print __xlx_apatb_param_data
for (size_t i = 0; i < __xlx_size_param_data; ++i) {
((Byte<4>*)__xlx_apatb_param_data)[i] = __xlx_data__tmp_vec[__xlx_offset_param_data+i];
}
// print __xlx_apatb_param_outa
for (size_t i = 0; i < __xlx_size_param_outa; ++i) {
((Byte<4>*)__xlx_apatb_param_outa)[i] = __xlx_outa__tmp_vec[__xlx_offset_param_outa+i];
}
}
