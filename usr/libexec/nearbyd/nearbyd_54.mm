uint64_t sub_10041C77C(int a1)
{
  result = 1;
  if (a1 <= 99)
  {
    if (a1 >= 0x1C)
    {
      return result;
    }

    return 0;
  }

  if (a1 > 199)
  {
    if ((a1 - 200) < 3 || a1 == 999 || a1 == 997)
    {
      return 0;
    }
  }

  else
  {
    v3 = a1 - 100;
    if (v3 <= 0x18 && ((1 << v3) & 0x18C6333) != 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10041C7EC(int a1)
{
  result = 1;
  if (a1 <= 99)
  {
    if (a1 >= 0x1C)
    {
      return result;
    }

    return 0;
  }

  if ((a1 - 100) < 0x1B || a1 == 999 || a1 == 997)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10041C854(int a1)
{
  if ((a1 - 100) < 0x1B)
  {
    return 0;
  }

  result = 1;
  if (a1 <= 996)
  {
    if ((a1 - 200) >= 3 && a1 != 27)
    {
      return result;
    }

    return 0;
  }

  if (a1 == 999 || a1 == 997)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10041C8A4(int a1)
{
  result = 1;
  if (a1 > 199)
  {
    if ((a1 - 200) >= 3 && a1 != 999 && a1 != 997)
    {
      return result;
    }

    return 0;
  }

  if ((a1 - 100) < 0x1B || a1 < 0x11)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10041C8F0(int a1)
{
  result = 1;
  if (a1 <= 99)
  {
    if (a1 >= 0x1C)
    {
      return result;
    }

    return 0;
  }

  if (a1 <= 199)
  {
    if ((a1 - 100) >= 0x1B)
    {
      return result;
    }

    return 0;
  }

  if (a1 <= 996)
  {
    if (a1 != 200 && a1 != 202)
    {
      return result;
    }

    return 0;
  }

  if (a1 == 999 || a1 == 997)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10041C974(uint64_t result)
{
  if (result > 201)
  {
    if (result == 999)
    {
      return result;
    }

    return result == 202;
  }

  if (result == 200)
  {
    return 1;
  }

  if (result == 201)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10041C9B4(uint64_t result)
{
  if (result >= 3)
  {
    return 999;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10041C9CC()
{
  sub_100193120(v2);
  std::ostream::operator<<();
  std::stringbuf::str();
  v2[2] = v0;
  if (v5 < 0)
  {
    operator delete(v4[7].__locale_);
  }

  std::locale::~locale(v4);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10041CB58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100193C68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10041CB6C(uint64_t result)
{
  if (result == 998)
  {
    v1 = 998;
  }

  else
  {
    v1 = 999;
  }

  if (result >= 0xE)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10041CB84@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result > 99)
  {
    goto LABEL_4;
  }

  if (result > 2)
  {
    if ((result - 4) < 0x18)
    {
LABEL_4:
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      return result;
    }

    v2 = 7;
    goto LABEL_11;
  }

  if (result)
  {
    if (result == 1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

LABEL_11:
    v3 = v2;
    goto LABEL_12;
  }

  v3 = 1;
LABEL_12:
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return sub_10041CC2C(a2, &v3, &vars0, 1uLL);
}

uint64_t sub_10041CC2C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10004F5E0(result, a4);
  }

  return result;
}

void sub_10041CC84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041CCA0(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 16) = 1018212795;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC((a1 + 64), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 80) = *(a2 + 2);
    *(a1 + 64) = v3;
  }

  *(a1 + 88) = 0u;
  *(a1 + 136) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  v4 = *(a1 + 87);
  if (v4 < 0)
  {
    v4 = *(a1 + 72);
  }

  if (v4)
  {
    atomic_store(1u, (a1 + 8));
    sub_10041CE14();
  }

  __assert_rtn("DispatchQueue", "roseDispatchQueue.cpp", 17, "fName.size() > 0");
}

void sub_10041CDCC(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v2);
  std::thread::~thread(v1);
  _Unwind_Resume(a1);
}

void sub_10041CEF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10041D5DC(va);
  _Unwind_Resume(a1);
}

void sub_10041CF30(uint64_t a1)
{
  atomic_store(0, (a1 + 8));
  std::condition_variable::notify_all((a1 + 16));
  if (*a1)
  {
    std::thread::join(a1);
  }

  std::mutex::~mutex((a1 + 136));
  sub_10041D01C((a1 + 88));
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  std::condition_variable::~condition_variable((a1 + 16));

  std::thread::~thread(a1);
}

void sub_10041CFB4(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 136));
  sub_10041D14C((a1 + 88), a2);
  std::mutex::unlock((a1 + 136));

  std::condition_variable::notify_all((a1 + 16));
}

uint64_t sub_10041D01C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 7];
    v7 = *v6 + 32 * (v5 & 0x7F);
    v8 = *(v2 + (((a1[5] + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v5) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v7 = sub_1001B3E54(v7) + 32;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 64;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 128;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_10004EE68(a1);
}

uint64_t sub_10041D14C(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_10041D1E4(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  result = sub_1001DB3FC(v8, a2);
  ++a1[5];
  return result;
}

void *sub_10041D1E4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10016F098(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10016EC70(a1, &v10);
}

void sub_10041D36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10041D3B8(std::__thread_struct **a1)
{
  v10 = a1;
  v1 = std::__thread_local_data();
  v2 = *v10;
  *v10 = 0;
  pthread_setspecific(v1->__key_, v2);
  v3 = v10[5];
  if (SHIBYTE(v3[2].__p_) < 0)
  {
    v3 = v3->__p_;
  }

  pthread_setname_np(v3);
  do
  {
    __lk.__m_ = v10[4];
    __lk.__owns_ = 1;
    std::mutex::lock(__lk.__m_);
    v5 = v10[1];
    v4 = v10[2];
    v6 = v10[3];
    while (1)
    {
      v7 = atomic_load(v5);
      if ((v7 & 1) == 0 || v6[5].__p_)
      {
        break;
      }

      std::condition_variable::wait(v4, &__lk);
    }

    v8 = atomic_load(v10[1]);
    if (v8)
    {
      sub_1001DB3FC(v12, *(v10[3][1].__p_ + ((v10[3][4].__p_ >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v10[3][4].__p_ & 0x7F));
      sub_10041D624(v10[3]);
      if (!__lk.__owns_)
      {
        std::__throw_system_error(1, "unique_lock::unlock: not locked");
        __break(1u);
      }

      std::mutex::unlock(__lk.__m_);
      __lk.__owns_ = 0;
      if (!v13)
      {
        sub_100037B10();
      }

      (*(*v13 + 48))(v13);
      sub_1001B3E54(v12);
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }

  while ((v8 & 1) != 0);
  sub_10041D594(&v10);
  return 0;
}

std::__thread_struct ***sub_10041D594(std::__thread_struct ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10041D5DC(v2);
    operator delete();
  }

  return a1;
}

std::__thread_struct **sub_10041D5DC(std::__thread_struct **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__thread_struct::~__thread_struct(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_10041D624(int64x2_t *a1)
{
  sub_1001B3E54(*(a1->i64[1] + ((a1[2].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (a1[2].i64[0] & 0x7F));
  a1[2] = vaddq_s64(a1[2], xmmword_100561EC0);

  return sub_1003EC368(a1, 1);
}

uint64_t sub_10041D690()
{
  v0 = sub_1000054A8();
  sub_1000198EC(&__dst, v0);
  if ((v18 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "getConnectionDescriptorSize: no cached hello response. Cannot guarantee correct parsing.");
  }

  v1 = v10;
  v2 = v11;
  v3 = v12;
  if (v17 == 1)
  {
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }
  }

  if (v9 < 0)
  {
    operator delete(__dst);
  }

  if (v2 <= 0x17u && v1 == 0 || (v3 - 3) >= 4)
  {
    return 20;
  }

  else
  {
    return 24;
  }
}

void sub_10041D778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017E34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10041D79C()
{
  v0 = sub_1000054A8();
  sub_1000198EC(&__dst, v0);
  if ((v18 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "getTimeStatusSize: no cached hello response. Cannot guarantee correct parsing.");
  }

  v1 = v10;
  v2 = v11;
  v3 = v12;
  if (v17 == 1)
  {
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }
  }

  if (v9 < 0)
  {
    operator delete(__dst);
  }

  if (v2 <= 0x17u && v1 == 0 || (v3 - 3) >= 4)
  {
    return 32;
  }

  else
  {
    return 48;
  }
}

void sub_10041D884(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017E34(va);
  _Unwind_Resume(a1);
}

std::string *sub_10041D8A8@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v15, *(a1 + 8));
  v4 = std::string::append(&v15, ":");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v17 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (v17 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v17 >= 0)
  {
    v7 = HIBYTE(v17);
  }

  else
  {
    v7 = __p[1];
  }

  std::string::append(a2, v6, v7);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v8 = *(a1 + 16);
  if (v8 >= 4)
  {
    v9 = "RFU_Critical requests ";
  }

  else
  {
    v9 = off_1009AB3F8[v8];
  }

  std::string::append(a2, v9);
  v10 = "unknown operation, ";
  if (*(a1 + 17) == 1)
  {
    v10 = "to resume, ";
  }

  if (*(a1 + 17))
  {
    v11 = v10;
  }

  else
  {
    v11 = "to pause, ";
  }

  std::string::append(a2, v11);
  v12 = "r1 status unknown";
  if (*(a1 + 18) == 1)
  {
    v12 = "r1 active";
  }

  if (*(a1 + 18))
  {
    v13 = v12;
  }

  else
  {
    v13 = "r1 paused";
  }

  return std::string::append(a2, v13);
}

void sub_10041D9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10041DA38(uint64_t a1, __int16 a2, __int16 a3, char a4, __int16 a5, char a6, void *a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, uint64_t *a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int16 a22, int a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, int a34, int a35, int a36, __int16 a37, __int16 a38, __int16 a39, __int16 a40, __int16 a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, __int128 a50, __int16 a51, int a52, __int16 a53, int a54, __int16 a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, __int16 a63)
{
  v132 = a17;
  v131 = a18;
  v130 = a19;
  v129 = a20;
  v128 = a21;
  v127 = a26;
  v126 = a25;
  v125 = a28;
  v124 = a27;
  v123 = a30;
  v122 = a29;
  v121 = a33;
  v120 = a35;
  v119 = a41;
  v118 = a43;
  v117 = a42;
  v116 = a45;
  v115 = a44;
  v114 = a47;
  v113 = a46;
  v112 = a49;
  v111 = a48;
  v110 = a50;
  v109 = a51;
  v108 = a53;
  v107 = a55;
  v106 = a57;
  v105 = a59;
  v104 = a61;
  v103 = a63;
  v102 = a65;
  v101 = a64;
  v100 = a67;
  v99 = a66;
  v98 = a68;
  v97 = a69;
  v96 = a70;
  v95 = a71;
  v94 = a72;
  v93 = a1;
  v92 = a2;
  v91 = a3;
  v90 = a4;
  v89 = a9;
  v88 = a5;
  v87 = a6;
  v86 = a7;
  v85 = a10;
  v84 = a8;
  v83 = a11;
  v82 = a12;
  v81 = a13;
  v80 = a14;
  v79 = a15;
  v133 = a1;
  *a1 = a2;
  *(a1 + 2) = v91;
  *(a1 + 4) = v90;
  *(a1 + 8) = v89;
  *(a1 + 16) = v88;
  *(a1 + 18) = v87;
  *(a1 + 19) = *v86;
  *(a1 + 32) = v85;
  sub_10041E038((a1 + 40), a16);
  *(a1 + 64) = v83;
  *(a1 + 72) = v82;
  *(a1 + 80) = v110;
  *(a1 + 96) = v132;
  *(a1 + 112) = v131;
  *(a1 + 128) = v130;
  *(a1 + 144) = v81;
  *(a1 + 152) = v80;
  *(a1 + 160) = v129;
  *(a1 + 176) = v128;
  *(a1 + 192) = a22;
  *(a1 + 196) = a23;
  *(a1 + 200) = v79;
  *(a1 + 208) = sub_1000422F0(v85);
  *(a1 + 216) = a24;
  *(a1 + 224) = v126;
  *(a1 + 232) = v127;
  *(a1 + 240) = v124;
  *(a1 + 248) = v125;
  *(a1 + 256) = v122;
  *(a1 + 264) = v123;
  *(a1 + 272) = a31;
  *(a1 + 273) = v121;
  *(a1 + 276) = v120;
  *(a1 + 280) = a37;
  *(a1 + 282) = a38;
  *(a1 + 284) = a39;
  *(a1 + 286) = v119;
  *(a1 + 288) = v117;
  *(a1 + 296) = v118;
  *(a1 + 304) = v115;
  *(a1 + 312) = v116;
  *(a1 + 320) = v113;
  *(a1 + 328) = v114;
  *(a1 + 336) = v111;
  *(a1 + 344) = v112;
  *(a1 + 352) = v109;
  *(a1 + 354) = v108;
  *(a1 + 356) = v107;
  *(a1 + 358) = v106;
  *(a1 + 362) = v105;
  *(a1 + 366) = v104;
  *(a1 + 370) = v103;
  *(a1 + 376) = v101;
  *(a1 + 384) = v102;
  *(a1 + 392) = v99;
  *(a1 + 400) = v100;
  *(a1 + 408) = v98;
  *(a1 + 410) = v97;
  *(a1 + 412) = v96;
  *(a1 + 414) = v95;
  *(a1 + 416) = v94;
  sub_10041E08C((a1 + 424));
  sub_10041E08C((a1 + 440));
  if (!v84)
  {
    v78[1] = a1 + 40;
    v78[0] = sub_10041E098(a1 + 40);
    v77 = sub_10041E0A0(a1 + 40);
    while (sub_10041E0A8(v78, &v77))
    {
      v76 = sub_10041E098(v78);
      v75 = 0;
      v74 = 0;
      sub_100042378(&v75, &v74, *v76, v76[1]);
      *v76 = v75;
      *(v76 + 1) = v74;
      sub_10041E0BC(v78);
    }
  }

  return v133;
}

void *sub_10041E038(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100020574(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  return a1;
}

_BYTE *sub_10041E08C(_BYTE *result)
{
  *result = 0;
  result[8] = 0;
  return result;
}

uint64_t sub_10041E0CC(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10041E754(uint64_t a1, __int16 a2, __int16 a3, char a4, uint64_t a5, __int16 a6, __int16 a7, __int16 a8, double a9, double a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, uint64_t *a21)
{
  *a1 = a2;
  *(a1 + 2) = a3;
  *(a1 + 4) = a4;
  *(a1 + 8) = a9;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  *(a1 + 26) = a7;
  *(a1 + 28) = a8;
  *(a1 + 30) = a11;
  *(a1 + 31) = a12;
  *(a1 + 32) = a13;
  *(a1 + 33) = a14;
  *(a1 + 34) = a15;
  *(a1 + 35) = a16;
  *(a1 + 40) = a10;
  *(a1 + 48) = a17;
  *(a1 + 49) = a18;
  *(a1 + 50) = a19;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v22 = *a21;
  v23 = a21[1];
  v24 = (v23 - *a21) >> 4;
  *(a1 + 51) = a20;
  sub_10002086C(a1 + 56, v22, v23, v24);
  return a1;
}

uint64_t sub_10041E80C(uint64_t result, void *a2, uint64_t a3, int a4)
{
  *result = 850045863;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0;
  v4 = a2[1];
  *(result + 64) = *a2;
  *(result + 72) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(result + 80) = a3;
  *(result + 88) = a4;
  *(result + 96) = a4;
  *(result + 100) = 1;
  *(result + 101) = 0uLL;
  *(result + 117) = 0uLL;
  *(result + 133) = 0uLL;
  *(result + 148) = 0;
  return result;
}

void sub_10041E86C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[9];
  if (v9)
  {
    v12 = std::__shared_weak_count::lock(v9);
    if (v12)
    {
      v13 = a1[8];
      if (v13)
      {
        v14 = sub_100426398(a2);
        if (v14 == 2)
        {
          if (sub_10042679C(a2) == 128)
          {
            sub_100420FE4(a3);
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            operator new();
          }

          v23 = *(a2 + 2);
          v24 = "got factory test event with unknown message ID 0x%02x";
          goto LABEL_24;
        }

        if (v14 == 1)
        {
          if (sub_1004266E8(a2) == 83)
          {
            if (sub_100420E70(a1, a3))
            {
              v48 = 0;
              v47 = 0;
              v49 = 0;
              sub_100009A48(&v47, a1[16], a1[17], a1[17] - a1[16]);
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              memset(__p, 0, 24);
              sub_100009A48(__p, v47, v48, v48 - v47);
              operator new();
            }

            goto LABEL_25;
          }

          v23 = *(a2 + 2);
          v24 = "got debug event with unknown message ID 0x%02x";
          goto LABEL_24;
        }

        if (v14)
        {
          v23 = *(a2 + 1);
          v24 = "got response packet with unknown groupID 0x%02x";
LABEL_24:
          sub_100428B48(v24, v15, v16, v17, v18, v19, v20, v21, v23);
          goto LABEL_25;
        }

        v22 = sub_10042640C(a2);
        if (v22 <= 512)
        {
          if (v22 > 84)
          {
            if (v22 == 85)
            {
              sub_100420AC4(a3, &v27);
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              operator new();
            }

            if (v22 == 512)
            {
              sub_100428B48("handleEvent: got time sync event packet - expected AOP to handle this for us!", v15, v16, v17, v18, v19, v20, v21, v25);
              goto LABEL_25;
            }
          }

          else
          {
            if (v22 == 81)
            {
              sub_1004206A4(a3, &v29);
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              operator new();
            }

            if (v22 == 84)
            {
              sub_1004207B8(a3, &v28);
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              operator new();
            }
          }

          goto LABEL_43;
        }

        if (v22 <= 515)
        {
          if (v22 == 513)
          {
            sub_10041F210(a3, &v50);
            v39 = v13;
            v40 = v12;
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            v41 = v50;
            v42 = *v51;
            v43 = *&v51[16];
            v44 = *v52;
            v45 = v52[2];
            memset(v52, 0, sizeof(v52));
            memcpy(v46, v53, sizeof(v46));
            sub_10041FF48(&v47);
          }

          if (v22 == 515)
          {
            sub_100420040(a3);
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            operator new();
          }

LABEL_43:
          v23 = *(a2 + 2);
          v24 = "got ranging event with unknown message ID 0x%02x";
          goto LABEL_24;
        }

        if (v22 == 516)
        {
          sub_1004200E0(a3, v15, v16, v17, v18, v19, v20, v21, &v38);
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          operator new();
        }

        if (v22 == 517)
        {
          sub_100426934((a1 + 12), a3, &v50);
          if (LOBYTE(v53[1]) == 1)
          {
            v30 = v13;
            v31 = v12;
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            v32 = v50;
            v34 = *&v51[8];
            v33 = *v51;
            v35 = v52[0];
            *&v51[8] = 0;
            *&v51[16] = 0;
            v36 = *&v52[1];
            v37 = v53[0];
            memset(v52, 0, sizeof(v52));
            v53[0] = 0;
            sub_1004205A4(&v47);
          }

          sub_1001A59C8(&v50);
          goto LABEL_25;
        }

        if (v22 != 522)
        {
          goto LABEL_43;
        }

LABEL_25:
        sub_10000AD84(v12);
        return;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  sub_100005D28("No event listener, ignoring event packet", a2, a3, a4, a5, a6, a7, a8, v25);
  if (v12)
  {
    goto LABEL_25;
  }
}

void sub_10041F050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  sub_1001B3E54(&a56);
  sub_1001B3E54(&STACK[0x520]);
  sub_1001A59C8(&STACK[0x540]);
  sub_10000AD84(v56);
  _Unwind_Resume(a1);
}

void sub_10041F210(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1000054A8();
  sub_1000198EC(&v176, v6);
  if ((v184 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Got event, but no cached hello response. Cannot guarantee correct parsing.");
  }

  v14 = __rev16(v178);
  sub_1004289F8("RoseEventHandler::decodeRangeResultEvent: hsiVersion %hu", v7, v8, v9, v10, v11, v12, v13, v14);
  if (v14 <= 0x1D)
  {
    sub_100428B48("Unsupported HSI version.", v15, v16, v17, v18, v19, v20, v21, v109);
    v105 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v105, "Unsupported HSI version.");
  }

  v29 = *(sub_1000054A8() + 187);
  switch(v29)
  {
    case 1:
      v31 = 112;
      v32 = 88;
      v138 = 85;
      v140 = 84;
      v134 = 97;
      v136 = 92;
      v33 = 87;
      v34 = 82;
      v35 = 81;
      v36 = 79;
      v37 = 77;
      v30 = 75;
      break;
    case 2:
      v31 = 112;
      v32 = 89;
      v138 = 86;
      v140 = 85;
      v134 = 98;
      v136 = 93;
      v33 = 88;
      v34 = 83;
      v35 = 82;
      v36 = 80;
      v37 = 78;
      v30 = 76;
      break;
    case 0:
      v107 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v107, "HSI version error");
    default:
      v30 = 0;
      v31 = 0;
      v32 = 13;
      v138 = 10;
      v140 = 9;
      v134 = 22;
      v136 = 17;
      v33 = 12;
      v34 = 7;
      v35 = 6;
      v36 = 4;
      v37 = 2;
      break;
  }

  v38 = *a1;
  if (a1[1] - *a1 != v31)
  {
    sub_100428B48("Range result event (%zu) not of expected size (%u)", v22, v23, v24, v25, v26, v27, v28, a1[1] - *a1);
    v106 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v106, "Range result event not of expected size");
  }

  __dst = 0;
  v174 = 0;
  v173 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v162 = 0;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v150 = 0;
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  sub_10046F95C((v38 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*a1 + 6), 2uLL, &__dst, 1);
  sub_10046F95C((*a1 + 8), 1uLL, &v174, 1);
  sub_10046F95C((*a1 + 9), 8uLL, &v173, 1);
  sub_10046F95C((*a1 + 17), 2uLL, &v172, 1);
  v39 = *(*a1 + 19);
  sub_10046F95C((*a1 + 22), 4uLL, &v170, 1);
  sub_10046F95C((*a1 + 26), 2uLL, &v169 + 2, 1);
  sub_10046F95C((*a1 + 28), 2uLL, &v169, 1);
  sub_10046F95C((*a1 + 30), 2uLL, &v168 + 2, 1);
  sub_10046F95C((*a1 + 32), 2uLL, &v168, 1);
  sub_10046F95C((*a1 + 34), 4uLL, &v167, 1);
  sub_10046F95C((*a1 + 38), 2uLL, &v166 + 2, 1);
  sub_10046F95C((*a1 + 40), 2uLL, &v166, 1);
  sub_10046F95C((*a1 + 42), 2uLL, &v165 + 2, 1);
  sub_10046F95C((*a1 + 44), 2uLL, &v165, 1);
  sub_10046F95C((*a1 + 46), 2uLL, &v164, 1);
  sub_10046F95C((*a1 + 48), 4uLL, &v163, 1);
  sub_10046F95C((*a1 + 52), 1uLL, &v162 + 1, 1);
  sub_10046F95C((*a1 + 53), 1uLL, &v162, 1);
  sub_10046F95C((*a1 + 54), 1uLL, &v161, 1);
  sub_10046F95C((*a1 + 55), 2uLL, &v160 + 2, 1);
  sub_10046F95C((*a1 + 57), 2uLL, &v160, 1);
  sub_10046F95C((*a1 + 59), 8uLL, &v171, 1);
  sub_10046F95C((*a1 + 67), 1uLL, &v159, 1);
  sub_10046F95C((*a1 + 68), 2uLL, &v158, 1);
  sub_10046F95C((*a1 + 70), 2uLL, &v157 + 2, 1);
  sub_10046F95C((*a1 + 72), 2uLL, &v157, 1);
  if (v29 == 1)
  {
    v40 = (&v156 + 1);
    v41 = v29;
  }

  else
  {
    if (v29 != 2)
    {
      goto LABEL_15;
    }

    v40 = &v156;
    v41 = 2;
  }

  sub_10046F95C((*a1 + 74), v41, v40, 1);
LABEL_15:
  sub_10046F95C((*a1 + v30), 2uLL, &v155, 1);
  sub_10046F95C((*a1 + v37), 2uLL, &v154 + 2, 1);
  sub_10046F95C((*a1 + v36), 2uLL, &v154, 1);
  sub_10046F95C((*a1 + v35), 1uLL, &v153, 1);
  if (v29 == 2)
  {
    sub_10046F95C((*a1 + v34), 2uLL, &v152, 1);
    sub_10046F95C((*a1 + v140), 1uLL, &v147 + 1, 1);
    sub_10046F95C((*a1 + v138), 1uLL, &v147, 1);
    v49 = 1;
    sub_10046F95C((*a1 + v32), 1uLL, &v146, 1);
  }

  else
  {
    if (v29 == 1)
    {
      sub_10046F95C((*a1 + v34), 5uLL, &v151, 1);
      sub_10046F95C((*a1 + v33), 5uLL, &v150, 1);
      sub_10046F95C((*a1 + v136), 5uLL, &v149, 1);
      sub_10046F95C((*a1 + v134), 5uLL, &v148, 1);
    }

    v49 = 0;
  }

  v50 = sub_100427984(HIWORD(__dst), v42, v43, v44, v45, v46, v47, v48);
  v58 = sub_100427658(v174, v51, v52, v53, v54, v55, v56, v57);
  v59 = SHIWORD(v168);
  v60 = v168;
  v61 = SHIBYTE(v162);
  v62 = v162;
  v63 = v161;
  LOWORD(v4) = v158;
  LOWORD(v3) = HIWORD(v157);
  LOWORD(v2) = v157;
  v70 = *(sub_1000054A8() + 187);
  v141 = v63;
  switch(v70)
  {
    case 1:
      v71 = sub_1004281F8(HIBYTE(v156), 1, v64, v65, v66, v67, v68, v69);
      v137 = 0;
      v139 = 0.0;
      v133 = 0;
      v135 = 0;
      v131 = 0;
      v132 = 0;
      v130 = 0;
      break;
    case 2:
      v72 = sub_10042841C(v156);
      v71 = 9;
      if (v73)
      {
        if ((v72 & 0x10000) != 0)
        {
          v71 = BYTE1(v72);
        }

        else
        {
          v71 = 9;
        }

        v133 = BYTE4(v72);
        v135 = HIDWORD(v72) & 0xFF0000;
        v131 = v72;
        v132 = HIDWORD(v72) & 0xFF00;
        v130 = 256;
      }

      else
      {
        v133 = 0;
        v135 = 0;
        v131 = 0;
        v132 = 0;
        v130 = 0;
      }

      v139 = vcvtd_n_f64_s32(v152, 2uLL);
      v137 = 1;
      break;
    case 0:
      v108 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v108, "Unknown HSI version");
    default:
      v137 = 0;
      v139 = 0.0;
      v133 = 0;
      v135 = 0;
      v131 = 0;
      v132 = 0;
      v130 = 0;
      v71 = 9;
      break;
  }

  v144 = 0;
  __p = 0;
  v145 = 0;
  v74 = v166;
  v75 = v166 & 0xF;
  if (v75 != 15)
  {
    *&v185 = SHIWORD(v169);
    *(&v185 + 1) = v169;
    v186 = v75 * 0.0666666667;
    v187 = 0;
    v188 = 0;
    v189 = 0;
    v190 = 0;
    sub_100199694(&__p, &v185);
    v74 = v166;
  }

  v129 = v62;
  v76 = v74 >> 4;
  if (v76 != 15)
  {
    *&v185 = SHIWORD(v160);
    *(&v185 + 1) = v160;
    v186 = v76 * 0.0666666667;
    v187 = 0;
    v188 = 0;
    v189 = 0;
    v190 = 0;
    sub_100199694(&__p, &v185);
  }

  v123 = v76;
  v120 = v75;
  v125 = v71;
  v77 = v49;
  v126 = v58;
  v127 = v50;
  v128 = v39;
  *&v185 = v171;
  v124 = __dst;
  v78 = sub_10041C3B4(v173);
  v122 = v172;
  v79 = v170;
  v80 = v167;
  v81 = HIWORD(v166);
  v82 = HIWORD(v165);
  v83 = v165;
  v121 = v164;
  v84 = v163;
  v85 = sub_10041C3B4(v163);
  v86 = vcvtd_n_f64_s32(v59, 2uLL);
  v87 = vcvtd_n_f64_s32(v60, 2uLL);
  v88 = HIBYTE(v147) | 0x100;
  if (v77)
  {
    v88 = 0;
  }

  v89 = v147 | 0x100;
  if (v77)
  {
    v89 = 0;
  }

  *&v119 = v139;
  *(&v119 + 1) = v137;
  *(&v116 + 1) = 1;
  *&v116 = v83;
  *(&v115 + 1) = 1;
  *&v115 = v82;
  *(&v114 + 1) = 1;
  *&v114 = v141;
  *(&v113 + 1) = 1;
  *&v113 = v129;
  *(&v110 + 1) = 1;
  *&v110 = v61;
  sub_10041E100(a2, v127, v124, v126, v122, v128, &v185, 0, v78, v79, v86, v87, v80, v81, v85, &__p, v110, v113, v114, v115, v116, v121, v84, v159, COERCE__INT64(v4 * 0.01), 1, COERCE__INT64(v3 * 0.01), 1, COERCE__INT64(v2 * 0.01), 1, v125, v117, v130 | v131, (v130 | v131) >> 32, v135 | v133 | v132, (v135 | v133 | v132) >> 32, v155, SHIWORD(v154), v154, v118, v153 | 0x100, v151, v151 != 0, v150, v150 != 0, v149, v149 != 0, v148, v148 != 0, v119, v88, SHIDWORD(v88), v89, SHIDWORD(v89), v146 | 0x100, (v146 | 0x100uLL) >> 32, 0, 0, 0, 0, 0, 0, 0);
  if (*(a2 + 4) != 16)
  {
    if (v120 == 15)
    {
      sub_100005D28("Ignoring AOA hypothesis primary with az %d el %d intunc %d", v90, v91, v92, v93, v94, v95, v96, SHIWORD(v169));
    }

    else
    {
      v111 = *(__p + 2);
      sub_1004289F8("AOA hypothesis primary: az %f el %f unc %f", v90, v91, v92, v93, v94, v95, v96, *__p);
    }

    if (v123 == 15)
    {
      sub_100005D28("Ignoring AOA hypothesis alt1 with az %d el %d intunc %d", v97, v98, v99, v100, v101, v102, v103, SHIWORD(v160));
    }

    else
    {
      v112 = *(v144 - 5);
      sub_1004289F8("AOA hypothesis alt1: az %f el %f unc %f", v97, v98, v99, v100, v101, v102, v103, *(v144 - 7));
    }
  }

  if (__p)
  {
    v144 = __p;
    operator delete(__p);
  }

  if (v184 == 1)
  {
    if (v183 == 1)
    {
      if (v182 < 0)
      {
        operator delete(v181);
      }

      if (v180 < 0)
      {
        operator delete(v179);
      }
    }

    if (v177 < 0)
    {
      operator delete(v176);
    }
  }
}

void sub_10041FEA0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  sub_100017E34(&STACK[0x2A0]);
  _Unwind_Resume(a1);
}

void *sub_100420000(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  return a1;
}

unint64_t sub_100420040(uint64_t a1)
{
  v1 = a1;
  __dst = 0;
  v18 = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*v1 + 6), 2uLL, &__dst, 1);
  sub_10046F95C((*v1 + 8), 2uLL, &v18, 1);
  LODWORD(v1) = sub_100427984(HIWORD(__dst), v2, v3, v4, v5, v6, v7, v8);
  v16 = sub_100427984(v18, v9, v10, v11, v12, v13, v14, v15);
  return (v16 << 32) | (__dst << 16) | v1;
}

double sub_1004200E0@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = *a1;
  if (a1[1] - *a1 != 96)
  {
    sub_100428B48("Range debug event (%zu) not of expected size (%u)", a2, a3, a4, a5, a6, a7, a8, a1[1] - *a1);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Range debug event not of expected size");
  }

  v11 = a1;
  __dst = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  sub_10046F95C((v10 + 4), 2uLL, &__dst, 1);
  sub_10046F95C((*v11 + 6), 1uLL, &v69, 1);
  sub_10046F95C((*v11 + 7), 2uLL, &v68, 1);
  sub_10046F95C((*v11 + 9), 1uLL, &v67, 1);
  sub_10046F95C((*v11 + 12), 8uLL, &v65, 1);
  sub_10046F95C((*v11 + 20), 8uLL, &v64, 1);
  sub_10046F95C((*v11 + 28), 8uLL, &v63, 1);
  sub_10046F95C((*v11 + 36), 8uLL, &v62, 1);
  sub_10046F95C((*v11 + 44), 8uLL, &v61, 1);
  sub_10046F95C((*v11 + 52), 8uLL, &v60, 1);
  sub_10046F95C((*v11 + 60), 2uLL, &v59 + 2, 1);
  sub_10046F95C((*v11 + 62), 2uLL, &v59, 1);
  sub_10046F95C((*v11 + 64), 2uLL, &v58 + 2, 1);
  sub_10046F95C((*v11 + 66), 2uLL, &v58, 1);
  sub_10046F95C((*v11 + 68), 2uLL, &v57 + 2, 1);
  sub_10046F95C((*v11 + 70), 2uLL, &v57, 1);
  sub_10046F95C((*v11 + 72), 2uLL, &v56 + 2, 1);
  sub_10046F95C((*v11 + 74), 2uLL, &v56, 1);
  sub_10046F95C((*v11 + 76), 2uLL, &v55 + 2, 1);
  sub_10046F95C((*v11 + 78), 2uLL, &v55, 1);
  sub_10046F95C((*v11 + 80), 2uLL, &v54 + 2, 1);
  sub_10046F95C((*v11 + 82), 2uLL, &v54, 1);
  sub_10046F95C((*v11 + 84), 2uLL, &v53 + 2, 1);
  sub_10046F95C((*v11 + 86), 2uLL, &v53, 1);
  sub_10046F95C((*v11 + 88), 8uLL, &v66, 1);
  LOBYTE(v11) = sub_100427658(v69, v12, v13, v14, v15, v16, v17, v18);
  v19 = v66;
  v51 = vcvtd_n_f64_s32(v58, 2uLL);
  v52 = vcvtd_n_f64_s32(SHIWORD(v58), 2uLL);
  v49 = vcvtd_n_f64_s32(v57, 2uLL);
  v50 = vcvtd_n_f64_s32(SHIWORD(v57), 2uLL);
  v47 = vcvtd_n_f64_s32(v56, 2uLL);
  v48 = vcvtd_n_f64_s32(SHIWORD(v56), 2uLL);
  v45 = vcvtd_n_f64_s32(v55, 2uLL);
  v46 = vcvtd_n_f64_s32(SHIWORD(v55), 2uLL);
  v43 = vcvtd_n_f64_s32(v54, 2uLL);
  v44 = vcvtd_n_f64_s32(SHIWORD(v54), 2uLL);
  v42 = vcvtd_n_f64_s32(SHIWORD(v53), 2uLL);
  v20 = vcvtd_n_f64_s32(v53, 2uLL);
  v21 = __dst;
  v22 = v68;
  v23 = v67;
  v24 = sub_10041C3C8(v65);
  v25 = sub_10041C3C8(v64);
  v26 = sub_10041C3C8(v63);
  v27 = sub_10041C3C8(v62);
  v28 = sub_10041C3C8(v61);
  v29 = sub_10041C3C8(v60);
  v30 = sub_10041C3C8(HIWORD(v59));
  v31 = sub_10041C3C8(v59);
  v33 = v64;
  v32 = v65;
  v35 = v62;
  v34 = v63;
  v37 = v60;
  v36 = v61;
  v38 = HIWORD(v59);
  v39 = v59;
  *a9 = v21;
  *(a9 + 2) = v11;
  *(a9 + 4) = v22;
  *(a9 + 6) = v23;
  *(a9 + 7) = v19;
  *(a9 + 24) = v24;
  *(a9 + 32) = v25;
  *(a9 + 40) = v26;
  *(a9 + 48) = v27;
  *(a9 + 56) = v28;
  *(a9 + 64) = v29;
  *(a9 + 72) = v30;
  *(a9 + 80) = v31;
  *(a9 + 88) = v32;
  *(a9 + 96) = v33;
  *(a9 + 104) = v34;
  *(a9 + 112) = v35;
  *(a9 + 120) = v36;
  *(a9 + 128) = v37;
  *(a9 + 136) = v38;
  *(a9 + 144) = v39;
  *(a9 + 152) = v52;
  *(a9 + 160) = v51;
  *(a9 + 168) = v50;
  *(a9 + 176) = v49;
  *(a9 + 184) = v48;
  *(a9 + 192) = v47;
  *(a9 + 200) = v46;
  *(a9 + 208) = v45;
  *(a9 + 216) = v44;
  *(a9 + 224) = v43;
  result = v42;
  *(a9 + 232) = v42;
  *(a9 + 240) = v20;
  *(a9 + 16) = v19;
  return result;
}

uint64_t sub_10042064C(uint64_t a1)
{
  v4 = (a1 + 64);
  sub_100189A94(&v4);
  v4 = (a1 + 40);
  sub_100189B38(&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

uint64_t sub_1004206A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __dst = 0;
  v22 = 0;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst, 1);
  sub_10046F95C((*a1 + 6), 4uLL, &v22, 1);
  sub_10046F95C((*a1 + 10), 1uLL, &v21, 1);
  sub_10046F95C((*a1 + 11), 8uLL, &v20, 1);
  sub_10046F95C((*a1 + 19), 8uLL, &v19, 1);
  sub_10046F95C((*a1 + 27), 4uLL, &v18 + 4, 1);
  sub_10046F95C((*a1 + 31), 4uLL, &v18, 1);
  result = sub_100427984(__dst, v4, v5, v6, v7, v8, v9, v10);
  v12 = v22;
  v13 = v21;
  v15 = v19;
  v14 = v20;
  v17 = v18;
  v16 = HIDWORD(v18);
  *a2 = result;
  *(a2 + 4) = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  return result;
}

uint64_t sub_1004207B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  __dst = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*v2 + 6), 2uLL, &__dst, 1);
  sub_10046F95C((*v2 + 8), 1uLL, &v43, 1);
  sub_10046F95C((*v2 + 9), 2uLL, &v42, 1);
  sub_10046F95C((*v2 + 12), 4uLL, &v41, 1);
  sub_10046F95C((*v2 + 16), 8uLL, &v40, 1);
  sub_10046F95C((*v2 + 24), 2uLL, &v39 + 2, 1);
  sub_10046F95C((*v2 + 26), 2uLL, &v39, 1);
  sub_10046F95C((*v2 + 28), 4uLL, &v38, 1);
  sub_10046F95C((*v2 + 32), 2uLL, &v37 + 2, 1);
  sub_10046F95C((*v2 + 34), 2uLL, &v37, 1);
  sub_10046F95C((*v2 + 36), 1uLL, &v36 + 1, 1);
  sub_10046F95C((*v2 + 65), 1uLL, &v36, 1);
  sub_10046F95C((*v2 + 66), 1uLL, &v35 + 1, 1);
  sub_10046F95C((*v2 + 67), 1uLL, &v35, 1);
  sub_10046F95C((*v2 + 68), 2uLL, &v34, 1);
  sub_10046F95C((*v2 + 70), 1uLL, &v33 + 1, 1);
  sub_10046F95C((*v2 + 71), 1uLL, &v33, 1);
  sub_10046F95C((*v2 + 72), 1uLL, &v32 + 1, 1);
  sub_10046F95C((*v2 + 73), 1uLL, &v32, 1);
  sub_10046F95C((*v2 + 74), 2uLL, &v31, 1);
  result = sub_100427984(HIWORD(__dst), v4, v5, v6, v7, v8, v9, v10);
  v12 = __dst;
  v13 = v43;
  v14 = v42;
  v15 = v41;
  v16 = v40;
  v17 = HIWORD(v39);
  v18 = v39;
  v19 = v38;
  v20 = HIWORD(v37);
  v21 = v37;
  v22 = HIBYTE(v36);
  v23 = v36;
  v24 = HIBYTE(v35);
  v25 = v35;
  v26 = v34;
  v27 = HIBYTE(v33);
  v28 = v33;
  LOBYTE(v2) = HIBYTE(v32);
  v29 = v32;
  v30 = v31;
  *a2 = result;
  *(a2 + 2) = v12;
  *(a2 + 4) = v13;
  *(a2 + 6) = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 26) = v18;
  *(a2 + 28) = v19;
  *(a2 + 32) = v20;
  *(a2 + 34) = v21;
  *(a2 + 36) = v22;
  *(a2 + 37) = v23;
  *(a2 + 38) = v24;
  *(a2 + 39) = v25;
  *(a2 + 40) = v26;
  *(a2 + 42) = v27;
  *(a2 + 43) = v28;
  *(a2 + 44) = v2;
  *(a2 + 45) = v29;
  *(a2 + 46) = v30;
  return result;
}

uint64_t sub_100420AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  __dst = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*v2 + 6), 2uLL, &__dst, 1);
  sub_10046F95C((*v2 + 8), 1uLL, &v53, 1);
  sub_10046F95C((*v2 + 9), 2uLL, &v52, 1);
  sub_10046F95C((*v2 + 11), 1uLL, &v51, 1);
  sub_10046F95C((*v2 + 12), 4uLL, &v50, 1);
  sub_10046F95C((*v2 + 16), 8uLL, &v49, 1);
  sub_10046F95C((*v2 + 24), 2uLL, &v48 + 2, 1);
  sub_10046F95C((*v2 + 26), 2uLL, &v48, 1);
  sub_10046F95C((*v2 + 28), 4uLL, &v47, 1);
  sub_10046F95C((*v2 + 32), 2uLL, &v46 + 2, 1);
  sub_10046F95C((*v2 + 34), 2uLL, &v46, 1);
  sub_10046F95C((*v2 + 36), 1uLL, &v45 + 1, 1);
  sub_10046F95C((*v2 + 37), 1uLL, &v45, 1);
  sub_10046F95C((*v2 + 38), 2uLL, &v44, 1);
  sub_10046F95C((*v2 + 40), 4uLL, &v43 + 4, 1);
  sub_10046F95C((*v2 + 44), 4uLL, &v43, 1);
  sub_10046F95C((*v2 + 48), 1uLL, &v42, 1);
  sub_10046F95C((*v2 + 49), 2uLL, &v41, 1);
  sub_10046F95C((*v2 + 51), 1uLL, &v40, 1);
  sub_10046F95C((*v2 + 52), 2uLL, &v39, 1);
  sub_10046F95C((*v2 + 54), 1uLL, &v38, 1);
  sub_10046F95C((*v2 + 55), 2uLL, &v37, 1);
  sub_10046F95C((*v2 + 57), 1uLL, &v36, 1);
  sub_10046F95C((*v2 + 58), 2uLL, &v35, 1);
  result = sub_100427984(HIWORD(__dst), v4, v5, v6, v7, v8, v9, v10);
  v12 = __dst;
  v13 = v53;
  v14 = v52;
  v15 = v51;
  v16 = v50;
  v17 = v49;
  v18 = HIWORD(v48);
  v19 = v48;
  v20 = v47;
  v21 = HIWORD(v46);
  v22 = v46;
  v23 = HIBYTE(v45);
  v24 = v45;
  v25 = v44;
  v27 = v43;
  v26 = HIDWORD(v43);
  v28 = v42;
  LOWORD(v2) = v41;
  v29 = v40;
  v30 = v39;
  v31 = v38;
  v32 = v37;
  v33 = v36;
  v34 = v35;
  *a2 = result;
  *(a2 + 2) = v12;
  *(a2 + 4) = v13;
  *(a2 + 6) = v14;
  *(a2 + 8) = v15;
  *(a2 + 12) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 26) = v19;
  *(a2 + 28) = v20;
  *(a2 + 32) = v21;
  *(a2 + 34) = v22;
  *(a2 + 36) = v23;
  *(a2 + 37) = v24;
  *(a2 + 38) = v25;
  *(a2 + 40) = v26;
  *(a2 + 44) = v27;
  *(a2 + 48) = v28;
  *(a2 + 50) = v2;
  *(a2 + 52) = v29;
  *(a2 + 54) = v30;
  *(a2 + 56) = v31;
  *(a2 + 58) = v32;
  *(a2 + 60) = v33;
  *(a2 + 62) = v34;
  return result;
}

BOOL sub_100420E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10046F8E0(a2);
  v5 = sub_10046F8B8(v4);
  v20 = v5;
  v21 = WORD2(v5);
  if (!sub_1004262A0(&v20))
  {
    v17 = *(a1 + 128);
    v16 = (a1 + 128);
    v16[1] = v17;
    sub_1000F5900(v16, *(a2 + 8) - *a2);
    sub_100423634(&v22, (*a2 + 4), *(a2 + 8), v16);
    return 1;
  }

  v6 = sub_1004262C8(&v20);
  v14 = *(a1 + 128);
  v15 = *(a1 + 136);
  if (v6)
  {
    if (v14 != v15)
    {
      sub_100428B48("%s: fDebugLogBufferData not emptied: size = %zu", v7, v8, v9, v10, v11, v12, v13, "collectLogBufferDataEvent");
      v14 = *(a1 + 128);
    }

    *(a1 + 136) = v14;
    sub_100423634(&v23, (*a2 + 4), *(a2 + 8), a1 + 128);
    return 0;
  }

  if (v14 != v15)
  {
    sub_100423634(&v24, (*a2 + 4), *(a2 + 8), a1 + 128);
    return sub_1004262E8(&v20);
  }

  v19 = *(a2 + 8) - *a2;
  sub_100428B48("%s: start of this multipart packet missing, so this packet is discarded: size = %zu", v7, v8, v9, v10, v11, v12, v13, "collectLogBufferDataEvent");
  return 0;
}

void *sub_100420FA4(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  return a1;
}

unint64_t sub_100420FE4(uint64_t a1)
{
  __dst = 0;
  v11 = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*a1 + 6), 2uLL, &__dst, 1);
  sub_10046F95C((*a1 + 8), 2uLL, &v11, 1);
  v9 = sub_100427984(HIWORD(__dst), v2, v3, v4, v5, v6, v7, v8);
  return v9 | (__dst << 16) | (v11 << 32);
}

void sub_100421078(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      if (*(a1 + 64))
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *a2;
        operator new();
      }

      sub_10000AD84(v5);
    }
  }
}

void sub_100421180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_1001B3E54(va);
  sub_1001B3E54(va1);
  sub_10000AD84(v4);
  _Unwind_Resume(a1);
}

std::runtime_error *sub_1004211BC(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  return result;
}

uint64_t sub_1004211F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = *a1;
  if (a1[1] - *a1 != 68)
  {
    sub_100428B48("Range debug V2 event (%zu) not of expected size (%u)", a2, a3, a4, a5, a6, a7, a8, a1[1] - *a1);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Range debug V2 event not of expected size");
  }

  __dst = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  sub_10046F95C((v10 + 4), 2uLL, &__dst, 1);
  sub_10046F95C((*a1 + 6), 1uLL, &v35, 1);
  sub_10046F95C((*a1 + 7), 2uLL, &v34, 1);
  sub_10046F95C((*a1 + 9), 8uLL, &v33, 1);
  sub_10046F95C((*a1 + 17), 4uLL, &v32, 1);
  sub_10046F95C((*a1 + 28), 5uLL, &v31, 1);
  sub_10046F95C((*a1 + 33), 5uLL, &v30, 1);
  sub_10046F95C((*a1 + 38), 5uLL, &v29, 1);
  sub_10046F95C((*a1 + 43), 5uLL, &v28, 1);
  result = sub_100427658(v35, v12, v13, v14, v15, v16, v17, v18);
  v20 = v34;
  v21 = v33;
  v22 = v32;
  v24 = v30;
  v23 = v31;
  v26 = v28;
  v25 = v29;
  *a9 = __dst;
  *(a9 + 2) = result;
  *(a9 + 4) = v20;
  *(a9 + 8) = v21;
  *(a9 + 16) = v22;
  *(a9 + 24) = v23;
  *(a9 + 32) = v24;
  *(a9 + 40) = v25;
  *(a9 + 48) = v26;
  return result;
}

uint64_t sub_1004213B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __dst = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  if (a1[1] - *a1 != 17)
  {
    sub_1004CF608();
  }

  sub_10046F95C((*a1 + 4), 2uLL, &__dst, 1);
  sub_10046F95C((*a1 + 6), 8uLL, &v18, 1);
  sub_10046F95C((*a1 + 14), 1uLL, &v17 + 1, 1);
  sub_10046F95C((*a1 + 15), 1uLL, &v17, 1);
  sub_10046F95C((*a1 + 16), 1uLL, &v16, 1);
  result = sub_100427984(__dst, v4, v5, v6, v7, v8, v9, v10);
  v12 = v18;
  v13 = HIBYTE(v17);
  v14 = v17;
  v15 = v16;
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 17) = v14;
  *(a2 + 18) = v15;
  return result;
}

void sub_1004214A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *(sub_1000054A8() + 187);
  v123 = a2;
  if (v11 == 1)
  {
    *v124 = *(*a1 + 4);
    *&v124[16] = *(*a1 + 20);
    *&v124[30] = *(*a1 + 34);
    v121 = sub_100427984(*v124, v4, v5, v6, v7, v8, v9, v10);
    v122 = sub_100427658(v124[4], v31, v32, v33, v34, v35, v36, v37);
    v38 = sub_10041C3B4(*&v124[5]);
    v118 = sub_1004272E8(v124[29], 1);
    v117 = sub_1004272E8(v124[30], 1);
    v116 = sub_100427F98(v124[32], v39, v40, v41, v42, v43, v44, v45);
    v53 = sub_100427728(v124[37], v46, v47, v48, v49, v50, v51, v52);
    v67 = sub_1004281F8(v124[38], 1, v54, v55, v56, v57, v58, v59);
    v68 = v124[45];
    v126 = 0;
    v127 = 0;
    v128 = 0;
    if (v124[45])
    {
      v69 = &v125;
      do
      {
        v70 = *v69;
        v71 = sub_100427F98(*(v69 - 1), v60, v61, v62, v63, v64, v65, v66);
        v72 = vcvtd_n_f64_s32(v70, 2uLL);
        v73 = v127;
        if (v127 >= v128)
        {
          v75 = (v127 - v126) >> 4;
          v76 = v75 + 1;
          if ((v75 + 1) >> 60)
          {
            sub_100019B38();
          }

          v77 = v128 - v126;
          if ((v128 - v126) >> 3 > v76)
          {
            v76 = v77 >> 3;
          }

          if (v77 >= 0x7FFFFFFFFFFFFFF0)
          {
            v78 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v78 = v76;
          }

          if (v78)
          {
            sub_100020924(&v126, v78);
          }

          v79 = 16 * v75;
          *v79 = v71;
          *(v79 + 8) = v72;
          v74 = 16 * v75 + 16;
          v80 = (v79 - (v127 - v126));
          memcpy(v80, v126, v127 - v126);
          v81 = v126;
          v126 = v80;
          v127 = v74;
          v128 = 0;
          if (v81)
          {
            operator delete(v81);
          }
        }

        else
        {
          *v127 = v71;
          v73[1] = v72;
          v74 = (v73 + 2);
        }

        v69 = (v69 + 3);
        v127 = v74;
        --v68;
      }

      while (v68);
    }

    sub_10041E754(v123, v121, *&v124[2], v122, *&v124[15], *&v124[13], *&v124[23], *&v124[25], v38, vcvtd_n_f64_s32(*&v124[33], 2uLL), v124[27], v124[28], v118, v117, v124[31], v116, v124[35], v124[36], v53, v67, &v126);
  }

  else
  {
    if (v11 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1004211BC(exception, "Unknown HSI version");
    }

    *v124 = *(*a1 + 4);
    *&v124[16] = *(*a1 + 20);
    *&v124[31] = *(*a1 + 35);
    v12 = sub_100427984(*v124, v4, v5, v6, v7, v8, v9, v10);
    v20 = sub_100427658(v124[4], v13, v14, v15, v16, v17, v18, v19);
    v28 = sub_10041C3B4(*&v124[5]);
    v29 = 9;
    if (v124[29])
    {
      v30 = 9;
      if (v124[30])
      {
        v30 = sub_1004272E8(v124[29], 2);
        v29 = sub_1004272E8(v124[30], 2);
      }
    }

    else
    {
      v30 = 9;
    }

    v120 = v29;
    v82 = sub_100427F98(v124[32], v21, v22, v23, v24, v25, v26, v27);
    v119 = sub_100427728(v124[37], v83, v84, v85, v86, v87, v88, v89);
    v90 = sub_10042841C(*&v124[38]);
    if ((v91 & 1) == 0 || (v98 = BYTE1(v90), (v90 & 0x10000) == 0))
    {
      sub_1004CF634();
    }

    v115 = v30;
    v99 = v82;
    v100 = v124[46];
    v126 = 0;
    v127 = 0;
    v128 = 0;
    if (v124[46])
    {
      v101 = &v126;
      do
      {
        v102 = *v101;
        v103 = sub_100427F98(*(v101 - 1), v91, v92, v93, v94, v95, v96, v97);
        v104 = vcvtd_n_f64_s32(v102, 2uLL);
        v105 = v127;
        if (v127 >= v128)
        {
          v107 = (v127 - v126) >> 4;
          v108 = v107 + 1;
          if ((v107 + 1) >> 60)
          {
            sub_100019B38();
          }

          v109 = v128 - v126;
          if ((v128 - v126) >> 3 > v108)
          {
            v108 = v109 >> 3;
          }

          if (v109 >= 0x7FFFFFFFFFFFFFF0)
          {
            v110 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v110 = v108;
          }

          if (v110)
          {
            sub_100020924(&v126, v110);
          }

          v111 = 16 * v107;
          *v111 = v103;
          *(v111 + 8) = v104;
          v106 = 16 * v107 + 16;
          v112 = (v111 - (v127 - v126));
          memcpy(v112, v126, v127 - v126);
          v113 = v126;
          v126 = v112;
          v127 = v106;
          v128 = 0;
          if (v113)
          {
            operator delete(v113);
          }
        }

        else
        {
          *v127 = v103;
          v105[1] = v104;
          v106 = (v105 + 2);
        }

        v101 = (v101 + 3);
        v127 = v106;
        --v100;
      }

      while (v100);
    }

    sub_10041E754(v123, v12, *&v124[2], v20, *&v124[15], *&v124[13], *&v124[23], *&v124[25], v28, vcvtd_n_f64_s32(*&v124[33], 2uLL), v124[27], v124[28], v115, v120, v124[31], v99, v124[35], v124[36], v119, v98, &v126);
  }

  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }
}

void *sub_100421A1C(void *a1)
{
  *a1 = off_1009AB428;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  return a1;
}

void sub_100421A78(void *a1)
{
  *a1 = off_1009AB428;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete();
}

void sub_100421BC0(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_100421BE0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_1009AB428;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  *(a2 + 64) = 0;
  *(a2 + 56) = v8;
  *(a2 + 40) = v7;
  *(a2 + 24) = v6;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  sub_100020574(a2 + 64, *(a1 + 64), *(a1 + 72), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 72) - *(a1 + 64)) >> 3));

  return memcpy((a2 + 88), (a1 + 88), 0x181uLL);
}

void sub_100421C9C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100421CBC(void *a1)
{
  sub_100421D74(a1 + 1);

  operator delete(a1);
}

uint64_t sub_100421D28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100421D74(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {

    sub_10000AD84(v3);
  }
}

void *sub_100421DC8(void *a1)
{
  *a1 = off_1009AB4A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100421E14(void *a1)
{
  *a1 = off_1009AB4A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100421F00(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AB4A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 24);
  *(a2 + 28) = *(result + 28);
  *(a2 + 24) = v4;
  *(a2 + 30) = 0;
  return result;
}

void sub_100421F4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100421F5C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100421FCC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100422018(void *a1)
{
  *a1 = off_1009AB528;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100422064(void *a1)
{
  *a1 = off_1009AB528;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

__n128 sub_1004221BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AB528;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v6;
  *(a2 + 40) = v5;
  *(a2 + 24) = v4;
  v7 = *(a1 + 88);
  v8 = *(a1 + 104);
  v9 = *(a1 + 120);
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 120) = v9;
  *(a2 + 104) = v8;
  *(a2 + 88) = v7;
  v10 = *(a1 + 152);
  v11 = *(a1 + 168);
  v12 = *(a1 + 184);
  *(a2 + 200) = *(a1 + 200);
  *(a2 + 184) = v12;
  *(a2 + 168) = v11;
  *(a2 + 152) = v10;
  result = *(a1 + 216);
  v14 = *(a1 + 232);
  v15 = *(a1 + 248);
  *(a2 + 264) = *(a1 + 264);
  *(a2 + 248) = v15;
  *(a2 + 232) = v14;
  *(a2 + 216) = result;
  return result;
}

void sub_100422274(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100422284(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_1004222F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100422340(uint64_t a1)
{
  *a1 = off_1009AB5A8;
  v4 = (a1 + 72);
  sub_100189A94(&v4);
  v4 = (a1 + 48);
  sub_100189B38(&v4);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1004223B4(uint64_t a1)
{
  *a1 = off_1009AB5A8;
  v3 = (a1 + 72);
  sub_100189A94(&v3);
  v3 = (a1 + 48);
  sub_100189B38(&v3);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete();
}

void sub_100422520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100189B38(va);
  v4 = v2[2];
  if (v4)
  {
    sub_10000AD84(v4);
  }

  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100422554(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_1009AB5A8;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  *(a2 + 48) = 0;
  *(a2 + 40) = v7;
  *(a2 + 24) = v6;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_1001895D0(a2 + 48, *(a1 + 48), *(a1 + 56), 0x86BCA1AF286BCA1BLL * ((*(a1 + 56) - *(a1 + 48)) >> 3));
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return sub_100189C1C(a2 + 72, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 5);
}

void sub_10042261C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100189B38(va);
  v4 = *(v2 + 16);
  if (v4)
  {
    sub_10000AD84(v4);
  }

  _Unwind_Resume(a1);
}

void sub_100422648(uint64_t a1)
{
  v3 = (a1 + 72);
  sub_100189A94(&v3);
  v3 = (a1 + 48);
  sub_100189B38(&v3);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }
}

void sub_10042269C(uint64_t a1)
{
  v3 = (a1 + 72);
  sub_100189A94(&v3);
  v3 = (a1 + 48);
  sub_100189B38(&v3);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(a1);
}

uint64_t sub_100422728(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100422774(void *a1)
{
  *a1 = off_1009AB628;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1004227C0(void *a1)
{
  *a1 = off_1009AB628;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

__n128 sub_1004228B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AB628;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  v5 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v5;
  *(a2 + 24) = result;
  return result;
}

void sub_100422900(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100422910(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100422980(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004229CC(void *a1)
{
  *a1 = off_1009AB6A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100422A18(void *a1)
{
  *a1 = off_1009AB6A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

__n128 sub_100422B08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AB6A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  v5 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v5;
  *(a2 + 24) = result;
  return result;
}

void sub_100422B58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100422B68(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100422BD8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100422C24(void *a1)
{
  *a1 = off_1009AB728;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100422C70(void *a1)
{
  *a1 = off_1009AB728;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

__n128 sub_100422D68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AB728;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v6;
  *(a2 + 40) = v5;
  *(a2 + 24) = result;
  return result;
}

void sub_100422DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100422DD0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100422E40(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100422E8C(void *a1)
{
  *a1 = off_1009AB7A8;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  return a1;
}

void sub_100422EE8(void *a1)
{
  *a1 = off_1009AB7A8;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete();
}

void sub_100422FF0(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100423010(void *a1, void *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  *a2 = off_1009AB7A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return sub_100009A48((a2 + 3), a1[3], a1[4], a1[4] - a1[3]);
}

void sub_100423080(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004230A0(void *a1)
{
  sub_100423158(a1 + 1);

  operator delete(a1);
}

uint64_t sub_10042310C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100423158(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {

    sub_10000AD84(v3);
  }
}

void *sub_1004231AC(void *a1)
{
  *a1 = off_1009AB828;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1004231F8(void *a1)
{
  *a1 = off_1009AB828;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_1004232E4(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AB828;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 24);
  *(a2 + 28) = *(result + 28);
  *(a2 + 24) = v4;
  *(a2 + 30) = 0;
  return result;
}

void sub_100423330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100423340(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_1004233B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004233FC(void *a1)
{
  *a1 = off_1009AB8A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100423448(void *a1)
{
  *a1 = off_1009AB8A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

__n128 sub_100423528(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AB8A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void sub_100423568(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100423578(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_1004235E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100423634(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = &v7[-*a4];
        v11 = (v10 + 1);
        if ((v10 + 1) < 0)
        {
          sub_100019B38();
        }

        v12 = v8 - v9;
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          operator new();
        }

        v14 = &v7[-*a4];
        *v10 = *v5;
        v7 = v10 + 1;
        memcpy(0, v9, v14);
        *a4 = 0;
        *(a4 + 8) = v10 + 1;
        *(a4 + 16) = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v7++ = *v5;
      }

      *(a4 + 8) = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_100423760(int *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v3 = a3;
  __dst = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  memset(v155, 0, sizeof(v155));
  if (sub_100426878(*a1, 5))
  {
    sub_100004A08(v153, "CIRData");
    if (a2[1] != *a2)
    {
      v148 = 0;
      v11 = 0;
      v12 = 1;
      v145 = 256;
      do
      {
        sub_100193120(&v161);
        sub_10000EA44(&v163, "CIR packet part ", 16);
        v13 = std::ostream::operator<<();
        sub_10000EA44(v13, ":", 1);
        std::stringbuf::str();
        sub_100193120(__src);
        if ((v160 & 0x80u) == 0)
        {
          v14 = v159;
        }

        else
        {
          v14 = v159[0];
        }

        if ((v160 & 0x80u) == 0)
        {
          v15 = v160;
        }

        else
        {
          v15 = v159[1];
        }

        v16 = sub_10000EA44(v179, v14, v15);
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v17 = std::locale::use_facet(&v176, &std::ctype<char>::id);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(&v176);
        std::ostream::put();
        std::ostream::flush();
        v18 = a2[1] - *a2;
        v142 = v11 + 256;
        if (v18 >= v11 + 256)
        {
          v19 = v11 + 256;
        }

        else
        {
          v19 = a2[1] - *a2;
        }

        if (v19 > v11)
        {
          if (v145 < v18)
          {
            v18 = v145;
          }

          v20 = v18 + v148;
          do
          {
            v21 = *&v179[0];
            v22 = v179 + *(*&v179[0] - 24);
            if (*(v22 + 36) == -1)
            {
              std::ios_base::getloc((v179 + *(*&v179[0] - 24)));
              v23 = std::locale::use_facet(&v176, &std::ctype<char>::id);
              (v23->__vftable[2].~facet_0)(v23, 32);
              std::locale::~locale(&v176);
              v21 = *&v179[0];
            }

            *(v22 + 36) = 48;
            *(v179 + *(v21 - 24) + 8) = *(v179 + *(v21 - 24) + 8) & 0xFFFFFFB5 | 8;
            *(&v179[1] + *(v21 - 24) + 8) = 2;
            v24 = *(*a2 + v11);
            v25 = std::ostream::operator<<();
            sub_10000EA44(v25, " ", 1);
            if ((~v11 & 0xF) == 0 || v20 == 1)
            {
              std::ios_base::getloc((v179 + *(*&v179[0] - 24)));
              v26 = std::locale::use_facet(&v176, &std::ctype<char>::id);
              (v26->__vftable[2].~facet_0)(v26, 10);
              std::locale::~locale(&v176);
              std::ostream::put();
              std::ostream::flush();
            }

            ++v11;
            --v20;
          }

          while (v20);
        }

        std::stringbuf::str();
        v34 = __p;
        if (v175 < 0)
        {
          v34 = __p[0];
        }

        sub_100005D28("%s", v27, v28, v29, v30, v31, v32, v33, v34);
        if (SHIBYTE(v175) < 0)
        {
          operator delete(__p[0]);
        }

        __src[0] = v137;
        *(__src + *(v137 - 3)) = v135;
        *&v179[0] = v134;
        if (SHIBYTE(v182[0]) < 0)
        {
          operator delete(*(&v181 + 1));
        }

        std::locale::~locale(&v179[1]);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        if (v160 < 0)
        {
          operator delete(v159[0]);
        }

        v161 = v137;
        *(&v161 + *(v137 - 3)) = v135;
        v163 = v134;
        if ((v172[15] & 0x80000000) != 0)
        {
          operator delete(*(&v171 + 1));
        }

        ++v12;
        std::locale::~locale(&v165);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        v145 += 256;
        v148 -= 256;
        v11 = v142;
        v3 = a3;
      }

      while (v142 < a2[1] - *a2);
    }

    if (v154 < 0)
    {
      operator delete(v153[0]);
    }
  }

  v35 = *a2;
  v36 = a2[1] - *a2;
  if (!v36)
  {
    goto LABEL_194;
  }

  v37 = 0;
  v149 = 0;
  v141 = 0;
  v146 = 0;
  v136 = 0;
  v144 = 0;
  v139 = 0;
  v143 = 0;
  v138 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  do
  {
    v42 = v36 - v37;
    if (v36 - v37 <= 3)
    {
      sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: bytesRemaining %zu, expect at least %zu for tag and len", v4, v5, v6, v7, v8, v9, v10, v36 - v37);
      goto LABEL_195;
    }

    LOWORD(v153[0]) = 0;
    LOWORD(v176.__locale_) = 0;
    sub_10046F95C((v35 + v37), 2uLL, v153, 1);
    sub_10046F95C((*a2 + v37 + 2), 2uLL, &v176, 1);
    if (!LOWORD(v176.__locale_))
    {
      sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: got 0 length for tag %hu", v43, v44, v45, v46, v47, v48, v49, LOWORD(v153[0]));
      goto LABEL_195;
    }

    if (v42 - 4 < LOWORD(v176.__locale_))
    {
      sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: bytesRemaining %zu, expect at least %hu for val", v43, v44, v45, v46, v47, v48, v49, v42 - 4);
      goto LABEL_195;
    }

    v50 = v37 + 4;
    if (LOWORD(v153[0]) > 0x11Fu)
    {
      if (LOWORD(v153[0]) > 0x122u)
      {
        if (LOWORD(v153[0]) > 0x124u)
        {
          if (LOWORD(v153[0]) == 293)
          {
            sub_1004289F8("decodeRangeCIREventVersion2: FirstPathIndex", v43, v44, v45, v46, v47, v48, v49, v132);
            if ((v40 & 1) == 0)
            {
              v126 = "RoseCIRDecoder::decodeRangeCIREventVersion2: got FirstPathIndex but no PacketContainer";
              goto LABEL_205;
            }

            if (0xF0F0F0F0F0F0F0F1 * ((v157 - v156) >> 3) > v41)
            {
              __src[0] = 0;
              if (LOWORD(v176.__locale_) >= 9uLL)
              {
                __assert_rtn("decodeFirstPathIndex", "roseCIRDataDecoderV2.cpp", 443, "len <= sizeof firstPathIndex");
              }

              sub_10046F95C((*a2 + v50), LOWORD(v176.__locale_), __src, 1);
              v85 = v156 + 136 * v41;
              *(v85 + 80) = __src[0];
              v40 = 1;
              *(v85 + 88) = 1;
              goto LABEL_150;
            }

            v127 = 216;
          }

          else
          {
            if (LOWORD(v153[0]) != 294)
            {
              goto LABEL_125;
            }

            sub_1004289F8("decodeRangeCIREventVersion2: RxStartTime", v43, v44, v45, v46, v47, v48, v49, v132);
            if ((v40 & 1) == 0)
            {
              v126 = "RoseCIRDecoder::decodeRangeCIREventVersion2: got RxStartTime but no PacketContainer";
              goto LABEL_205;
            }

            if (0xF0F0F0F0F0F0F0F1 * ((v157 - v156) >> 3) > v41)
            {
              __src[0] = 0;
              if (LOWORD(v176.__locale_) >= 9uLL)
              {
                __assert_rtn("decodeRxStartTime", "roseCIRDataDecoderV2.cpp", 451, "len <= sizeof rxStartTime");
              }

              sub_10046F95C((*a2 + v50), LOWORD(v176.__locale_), __src, 1);
              v79 = v156 + 136 * v41;
              *(v79 + 96) = __src[0];
              v40 = 1;
              *(v79 + 104) = 1;
              goto LABEL_150;
            }

            v127 = 225;
          }
        }

        else if (LOWORD(v153[0]) == 291)
        {
          sub_1004289F8("decodeRangeCIREventVersion2: HwRxTimeStatus", v43, v44, v45, v46, v47, v48, v49, v132);
          if ((v40 & 1) == 0)
          {
LABEL_197:
            v126 = "RoseCIRDecoder::decodeRangeCIREventVersion2: got HwConnectionDescriptor but no PacketContainer";
            goto LABEL_205;
          }

          v80 = v156;
          if (0xF0F0F0F0F0F0F0F1 * ((v157 - v156) >> 3) > v41)
          {
            locale_low = LOWORD(v176.__locale_);
            *&v179[0] = 0;
            __src[0] = 0;
            __src[1] = 0;
            if (v50 + LOWORD(v176.__locale_) > v50)
            {
              v82 = v37 + 4;
              do
              {
                sub_1001FE4D0(__src, (*a2 + v82++));
                --locale_low;
              }

              while (locale_low);
              v80 = v156;
            }

            v83 = v80 + 136 * v41;
            v84 = *(v83 + 32);
            v62 = (v83 + 32);
            v61 = v84;
            if (!v84)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          }

          v127 = 198;
        }

        else
        {
          sub_1004289F8("decodeRangeCIREventVersion2: CIR", v43, v44, v45, v46, v47, v48, v49, v132);
          if ((v40 & 1) == 0)
          {
            v126 = "RoseCIRDecoder::decodeRangeCIREventVersion2: got CIR but no PacketContainer";
            goto LABEL_205;
          }

          if (0xF0F0F0F0F0F0F0F1 * ((v157 - v156) >> 3) > v41)
          {
            sub_10042513C(a2, v50, LOWORD(v176.__locale_), __src);
            v60 = v156 + 136 * v41;
            v63 = *(v60 + 56);
            v62 = (v60 + 56);
            v61 = v63;
            if (v63)
            {
LABEL_62:
              v62[1] = v61;
              operator delete(v61);
              *v62 = 0;
              v62[1] = 0;
              v62[2] = 0;
            }

LABEL_63:
            *v62 = *__src;
            v62[2] = *&v179[0];
            goto LABEL_149;
          }

          v127 = 207;
        }

LABEL_226:
        __assert_rtn("decodeRangeCIREventVersion2", "roseCIRDataDecoderV2.cpp", v127, "currentPacketIdx.value() < packets.size()");
      }

      if (LOWORD(v153[0]) != 288)
      {
        if (LOWORD(v153[0]) == 289)
        {
          sub_1004289F8("decodeRangeCIREventVersion2: RxChainMask", v43, v44, v45, v46, v47, v48, v49, v132);
          if ((v40 & 1) == 0)
          {
            v126 = "RoseCIRDecoder::decodeRangeCIREventVersion2: got RxChainMask but no PacketContainer";
            goto LABEL_205;
          }

          if (0xF0F0F0F0F0F0F0F1 * ((v157 - v156) >> 3) <= v41)
          {
            v127 = 180;
            goto LABEL_226;
          }

          LOBYTE(__src[0]) = 0;
          if (LOWORD(v176.__locale_) >= 2uLL)
          {
            __assert_rtn("decodeRxChainBitMask", "roseCIRDataDecoderV2.cpp", 393, "len <= sizeof rxChainBitMask");
          }

          sub_10046F95C((*a2 + v50), LOWORD(v176.__locale_), __src, 1);
          *(v156 + 136 * v41 + 3) = LOBYTE(__src[0]) | 0x100;
LABEL_149:
          v40 = 1;
          goto LABEL_150;
        }

        if (LOWORD(v153[0]) != 290)
        {
          goto LABEL_125;
        }

        sub_1004289F8("decodeRangeCIREventVersion2: HwConnectionDescriptor", v43, v44, v45, v46, v47, v48, v49, v132);
        if ((v40 & 1) == 0)
        {
          goto LABEL_197;
        }

        v64 = v156;
        if (0xF0F0F0F0F0F0F0F1 * ((v157 - v156) >> 3) <= v41)
        {
          v127 = 189;
          goto LABEL_226;
        }

        v65 = LOWORD(v176.__locale_);
        *&v179[0] = 0;
        __src[0] = 0;
        __src[1] = 0;
        if (v50 + LOWORD(v176.__locale_) > v50)
        {
          v66 = v37 + 4;
          do
          {
            sub_1001FE4D0(__src, (*a2 + v66++));
            --v65;
          }

          while (v65);
          v64 = v156;
        }

        v67 = v64 + 136 * v41;
        v68 = *(v67 + 8);
        v62 = (v67 + 8);
        v61 = v68;
        if (v68)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      sub_1004289F8("decodeRangeCIREventVersion2: PacketType", v43, v44, v45, v46, v47, v48, v49, v132);
      if ((v40 & 1) == 0)
      {
        v126 = "RoseCIRDecoder::decodeRangeCIREventVersion2: got PacketType but no PacketContainer";
        goto LABEL_205;
      }

      if (0xF0F0F0F0F0F0F0F1 * ((v157 - v156) >> 3) <= v41)
      {
        v127 = 171;
        goto LABEL_226;
      }

      v86 = LOWORD(v176.__locale_);
      v87 = sub_1000054A8();
      v88 = *(v87 + 748);
      switch(v88)
      {
        case 1:
          LOBYTE(__src[0]) = 0;
          if (v86 == 1)
          {
            sub_10046F95C((*a2 + v50), 1uLL, __src, 1);
            v87 = sub_100428610(LOBYTE(__src[0]));
            if ((v87 & 0x10000) == 0)
            {
LABEL_234:
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not decode packet type");
            }

            goto LABEL_146;
          }

          v128 = 360;
          v129 = "len == sizeof(r1PacketTypeInt)";
          break;
        case 2:
          LOWORD(__src[0]) = 0;
          if (v86 == 2)
          {
            sub_10046F95C((*a2 + v50), 2uLL, __src, 1);
            v87 = sub_100428610(LOWORD(__src[0]));
            if ((v87 & 0x10000) == 0)
            {
              goto LABEL_234;
            }

            goto LABEL_146;
          }

          v128 = 372;
          v129 = "len == sizeof(packetTypeAsInt)";
          break;
        case 0:
          v130 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v130, "HSI version error");
        default:
LABEL_146:
          v98 = v156 + 136 * v41;
          if ((*(v98 + 2) & 1) == 0)
          {
            *(v98 + 2) = 1;
          }

          *v98 = v87;
          goto LABEL_149;
      }

      __assert_rtn("decodePacketType", "roseCIRDataDecoderV2.cpp", v128, v129);
    }

    if (LOWORD(v153[0]) <= 0x102u)
    {
      switch(LOWORD(v153[0]))
      {
        case 0x100u:
          sub_1004289F8("decodeRangeCIREventVersion2: SessionId", v43, v44, v45, v46, v47, v48, v49, v132);
          LOWORD(__src[0]) = 0;
          if (LOWORD(v176.__locale_) >= 3uLL)
          {
            __assert_rtn("decodeSessionId", "roseCIRDataDecoderV2.cpp", 306, "len <= sizeof sessionId");
          }

          sub_10046F95C((*a2 + v50), LOWORD(v176.__locale_), __src, 1);
          v141 = __src[0];
          v149 = 1;
          goto LABEL_150;
        case 0x101u:
          sub_1004289F8("decodeRangeCIREventVersion2: SessionType", v43, v44, v45, v46, v47, v48, v49, v132);
          LOBYTE(__src[0]) = 0;
          if (LOWORD(v176.__locale_) >= 2uLL)
          {
            __assert_rtn("decodeSessionType", "roseCIRDataDecoderV2.cpp", 314, "len <= sizeof sessionTypeInt");
          }

          sub_10046F95C((*a2 + v50), LOWORD(v176.__locale_), __src, 1);
          v136 = sub_100427658(LOBYTE(__src[0]), v89, v90, v91, v92, v93, v94, v95);
          v146 = 1;
          goto LABEL_150;
        case 0x102u:
          sub_1004289F8("decodeRangeCIREventVersion2: CycleIndex", v43, v44, v45, v46, v47, v48, v49, v132);
          LOWORD(__src[0]) = 0;
          if (LOWORD(v176.__locale_) >= 3uLL)
          {
            __assert_rtn("decodeCycleIdx", "roseCIRDataDecoderV2.cpp", 322, "len <= sizeof cycleIdx");
          }

          sub_10046F95C((*a2 + v50), LOWORD(v176.__locale_), __src, 1);
          v139 = __src[0];
          v144 = 1;
          goto LABEL_150;
      }
    }

    else
    {
      if (LOWORD(v153[0]) <= 0x104u)
      {
        if (LOWORD(v153[0]) == 259)
        {
          sub_1004289F8("decodeRangeCIREventVersion2: DeviceIndex", v43, v44, v45, v46, v47, v48, v49, v132);
          LOBYTE(__src[0]) = 0;
          if (LOWORD(v176.__locale_) >= 2uLL)
          {
            __assert_rtn("decodeDeviceIdx", "roseCIRDataDecoderV2.cpp", 330, "len <= sizeof deviceIdx");
          }

          sub_10046F95C((*a2 + v50), LOWORD(v176.__locale_), __src, 1);
          v138 = __src[0];
          v143 = 1;
        }

        else
        {
          sub_1004250BC(a2, v50, LOWORD(v176.__locale_), __src);
          if ((__src[1] - __src[0]) >= 8)
          {
            v51 = 8;
          }

          else
          {
            v51 = __src[1] - __src[0];
          }

          memcpy(&__dst, __src[0], v51);
          sub_100004A08(__p, "");
          sub_100004A08(v159, "");
          sub_10046FC20(__p, &__dst, 8uLL, 0x10u, v159);
          if (v160 < 0)
          {
            operator delete(v159[0]);
          }

          if (SHIBYTE(v175) < 0)
          {
            operator delete(__p[0]);
          }

          sub_1004289F8("decodeRangeCIREventVersion2: MacAddress: len %hu, val: %s", v52, v53, v54, v55, v56, v57, v58, LOWORD(v176.__locale_));
          if (SHIBYTE(v163) < 0)
          {
            operator delete(v161);
          }

          v59 = __src[0];
          if (__src[0])
          {
            __src[1] = __src[0];
LABEL_131:
            operator delete(v59);
            goto LABEL_150;
          }
        }

        goto LABEL_150;
      }

      if (LOWORD(v153[0]) == 261)
      {
        sub_1004289F8("decodeRangeCIREventVersion2: NumPackets", v43, v44, v45, v46, v47, v48, v49, v132);
        LOWORD(__src[0]) = 0;
        if (LOWORD(v176.__locale_) >= 3uLL)
        {
          __assert_rtn("decodeNumPackets", "roseCIRDataDecoderV2.cpp", 349, "len <= sizeof numPackets");
        }

        sub_10046F95C((*a2 + v50), LOWORD(v176.__locale_), __src, 1);
        v39 = __src[0];
LABEL_140:
        v38 = 1;
        goto LABEL_150;
      }

      if (LOWORD(v153[0]) == 262)
      {
        sub_1004289F8("decodeRangeCIREventVersion2: PacketContainer", v43, v44, v45, v46, v47, v48, v49, v132);
        if (v38)
        {
          if (v40)
          {
            v69 = v41 + 1;
          }

          else
          {
            v69 = 0;
          }

          sub_1004289F8("decodeRangeCIREventVersion2: PacketContainer: PacketIdx %hu", v4, v5, v6, v7, v8, v9, v10, v69);
          if (v69 >= v39)
          {
            sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: currentPacketIdx %hu out of range: expected NumPackets %hu", v70, v71, v72, v73, v74, v75, v76, v69);
            v3 = a3;
            goto LABEL_195;
          }

          *&v183 = 0;
          memset(v182, 0, sizeof(v182));
          v181 = 0u;
          memset(v180, 0, sizeof(v180));
          *__src = 0u;
          memset(v179, 0, sizeof(v179));
          v77 = v157;
          if (v157 >= v158)
          {
            v78 = sub_1004256C0(&v156, __src);
          }

          else
          {
            sub_1004257F4(&v156, v157, __src);
            v78 = v77 + 136;
          }

          v157 = v78;
          v161 = &v182[1];
          sub_100189A94(&v161);
          if (v180[1])
          {
            v180[2] = v180[1];
            operator delete(v180[1]);
          }

          if (*&v179[1])
          {
            *(&v179[1] + 1) = *&v179[1];
            operator delete(*&v179[1]);
          }

          if (__src[1])
          {
            *&v179[0] = __src[1];
            operator delete(__src[1]);
          }

          v40 = 1;
          v41 = v69;
          goto LABEL_140;
        }

        v126 = "RoseCIRDecoder::decodeRangeCIREventVersion2: got PacketContainer tag but no NumPackets tag";
LABEL_205:
        sub_100428B48(v126, v4, v5, v6, v7, v8, v9, v10, v132);
        v3 = a3;
        goto LABEL_195;
      }
    }

LABEL_125:
    sub_1004289F8("Ignoring unrecognized RangeCIREventTag %02x", v43, v44, v45, v46, v47, v48, v49, LOWORD(v153[0]));
    LOWORD(__src[0]) = v153[0];
    WORD1(__src[0]) = v176.__locale_;
    v96 = v50 + *a2;
    v179[0] = 0uLL;
    __src[1] = 0;
    sub_100296B98(&__src[1], v96, v96 + LOWORD(v176.__locale_), LOWORD(v176.__locale_));
    if (v40)
    {
      if (0xF0F0F0F0F0F0F0F1 * ((v157 - v156) >> 3) <= v41)
      {
        __assert_rtn("decodeRangeCIREventVersion2", "roseCIRDataDecoderV2.cpp", 237, "currentPacketIdx.value() < packets.size()");
      }

      v97 = (v156 + 136 * v41 + 112);
    }

    else
    {
      v97 = v155;
    }

    sub_10042533C(v97, __src);
    v59 = __src[1];
    if (__src[1])
    {
      *&v179[0] = __src[1];
      goto LABEL_131;
    }

LABEL_150:
    v37 = v50 + LOWORD(v176.__locale_);
    v35 = *a2;
    v36 = a2[1] - *a2;
    v3 = a3;
  }

  while (v37 < v36);
  if (v37 > v36)
  {
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: readIdx %zu exceeds packet size %zu", v4, v5, v6, v7, v8, v9, v10, v37);
LABEL_195:
    *v3 = 0;
    v3[72] = 0;
    goto LABEL_196;
  }

  if ((v38 & 1) == 0)
  {
LABEL_194:
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: no NumPackets field", v4, v5, v6, v7, v8, v9, v10, v132);
    goto LABEL_195;
  }

  if (0xF0F0F0F0F0F0F0F1 * ((v157 - v156) >> 3) != v39)
  {
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: got %zu packets, expected NumPackets %hu", v4, v5, v6, v7, v8, v9, v10, 0xF0F0F0F0F0F0F0F1 * ((v157 - v156) >> 3));
    goto LABEL_195;
  }

  if (v157 == v156)
  {
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: no packets in CIR message", v4, v5, v6, v7, v8, v9, v10, v132);
    goto LABEL_195;
  }

  if ((v149 & 1) == 0)
  {
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: no session ID", v4, v5, v6, v7, v8, v9, v10, v132);
    goto LABEL_195;
  }

  if ((v146 & 1) == 0)
  {
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: no session type", v4, v5, v6, v7, v8, v9, v10, v132);
    goto LABEL_195;
  }

  if ((v144 & 1) == 0)
  {
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: no cycle index", v4, v5, v6, v7, v8, v9, v10, v132);
    goto LABEL_195;
  }

  if ((v143 & 1) == 0)
  {
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: no device index", v4, v5, v6, v7, v8, v9, v10, v132);
    goto LABEL_195;
  }

  sub_1004289F8("decodeRangeCIREventVersion2: converting to libRose format", v4, v5, v6, v7, v8, v9, v10, v132);
  __p[0] = 0;
  __p[1] = 0;
  v175 = 0;
  v106 = v156;
  v107 = v157;
  v108 = *a3;
  if (v156 == v157)
  {
LABEL_193:
    *a3 = v108;
    sub_1004289F8("decodeRangeCIREventVersion2: returning RangeCIREvent", v99, v100, v101, v102, v103, v104, v105, v133);
    sub_100425488(__src, v141, v136, v139, v138, &__dst, __p, v155);
    v125 = *(&v179[1] + 1);
    *(a3 + 2) = *&v179[0];
    *a3 = *__src;
    *(a3 + 24) = *(v179 + 8);
    *(a3 + 5) = v125;
    *(&v179[0] + 1) = 0;
    *&v179[1] = 0;
    *(a3 + 3) = *v180;
    *(a3 + 8) = v180[2];
    *(&v179[1] + 1) = 0;
    memset(v180, 0, 24);
    a3[72] = 1;
    sub_100189E60(__src);
    goto LABEL_213;
  }

  v109 = a3[72];
  while (2)
  {
    if ((*(v106 + 2) & 1) == 0)
    {
      sub_100428B48("convertCIRPacketToLibRoseFormat: no packet type", v99, v100, v101, v102, v103, v104, v105, v133);
LABEL_181:
      LOBYTE(__src[0]) = 0;
      v185 = 0;
      goto LABEL_182;
    }

    if ((*(v106 + 4) & 1) == 0)
    {
      sub_100428B48("convertCIRPacketToLibRoseFormat: no RX chain bit mask", v99, v100, v101, v102, v103, v104, v105, v133);
      goto LABEL_181;
    }

    if ((*(v106 + 88) & 1) == 0)
    {
      sub_100428B48("convertCIRPacketToLibRoseFormat: no first path index", v99, v100, v101, v102, v103, v104, v105, v133);
      goto LABEL_181;
    }

    if ((*(v106 + 104) & 1) == 0)
    {
      sub_100428B48("convertCIRPacketToLibRoseFormat: no rx start time", v99, v100, v101, v102, v103, v104, v105, v133);
      goto LABEL_181;
    }

    LOWORD(v161) = *v106;
    BYTE2(v161) = *(v106 + 3);
    v164 = 0;
    v162 = *(v106 + 8);
    v110 = v162;
    v147 = *(v106 + 16);
    v163 = *(v106 + 16);
    *(v106 + 8) = 0;
    *(v106 + 16) = 0;
    *(v106 + 24) = 0;
    v165 = 0;
    v166 = 0;
    v167 = 0;
    v111 = *(v106 + 32);
    v112 = *(v106 + 48);
    *(v106 + 40) = 0;
    *(v106 + 48) = 0;
    *(v106 + 32) = 0;
    v168 = 0;
    v169 = 0;
    v170 = 0;
    v150 = *(v106 + 56);
    v152 = v111;
    v113 = *(v106 + 72);
    *(v106 + 64) = 0;
    *(v106 + 72) = 0;
    *(v106 + 56) = 0;
    *&v171 = *(v106 + 80) * 0.01;
    BYTE8(v171) = 1;
    *v172 = sub_10041C3B4(*(v106 + 96));
    v172[8] = 1;
    v114 = *(v106 + 96);
    v172[24] = *(v106 + 104);
    *&v172[16] = v114;
    v115 = *(v106 + 128);
    v116 = *(v106 + 112);
    *(v106 + 120) = 0;
    *(v106 + 128) = 0;
    *(v106 + 112) = 0;
    LOWORD(__src[0]) = v161;
    BYTE2(__src[0]) = BYTE2(v161);
    __src[1] = v110;
    v162 = 0;
    v163 = 0;
    v179[0] = v147;
    v179[1] = v152;
    v164 = 0;
    v165 = 0;
    v166 = 0;
    v167 = 0;
    *&v180[1] = v150;
    v180[0] = v112;
    v180[3] = v113;
    v168 = 0;
    v169 = 0;
    v170 = 0;
    *(v182 + 9) = *&v172[9];
    v181 = v171;
    v182[0] = *v172;
    v183 = v116;
    v184 = v115;
    memset(v173, 0, 24);
    v185 = 1;
    v159[0] = v173;
    sub_100189A94(v159);
    if (v168)
    {
      v169 = v168;
      operator delete(v168);
    }

    if (v165)
    {
      v166 = v165;
      operator delete(v165);
    }

    if (v162)
    {
      v163 = v162;
      operator delete(v162);
    }

    if (v185)
    {
      sub_100425D4C(__p, __src);
      v124 = 1;
      goto LABEL_183;
    }

LABEL_182:
    sub_100428B48("RoseCIRDecoder::decodeRangeCIREventVersion2: error converting packet to libRose format", v117, v118, v119, v120, v121, v122, v123, v133);
    v124 = 0;
    v109 = 0;
    v108 = 0;
LABEL_183:
    if (v185 == 1)
    {
      v161 = &v183;
      sub_100189A94(&v161);
      if (v180[1])
      {
        v180[2] = v180[1];
        operator delete(v180[1]);
      }

      if (*&v179[1])
      {
        *(&v179[1] + 1) = *&v179[1];
        operator delete(*&v179[1]);
      }

      if (__src[1])
      {
        *&v179[0] = __src[1];
        operator delete(__src[1]);
      }
    }

    if (v124)
    {
      v106 += 136;
      if (v106 == v107)
      {
        a3[72] = v109;
        goto LABEL_193;
      }

      continue;
    }

    break;
  }

  a3[72] = v109;
  *a3 = v108;
LABEL_213:
  __src[0] = __p;
  sub_100189B38(__src);
LABEL_196:
  __src[0] = v155;
  sub_100189A94(__src);
  __src[0] = &v156;
  sub_1004255B0(__src);
}

void sub_100424E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = v73;
  v76[72] = v72;
  *v76 = v74;
  if (a21)
  {
    operator delete(a21);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (v75)
  {
    operator delete(v75);
  }

  STACK[0x220] = &a72;
  sub_100189B38(&STACK[0x220]);
  a72 = &a28;
  sub_100189A94(&a72);
  a72 = &a31;
  sub_1004255B0(&a72);
  _Unwind_Resume(a1);
}

void sub_1004250BC(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3 + a2 > a2)
  {
    v5 = a3;
    v6 = a2;
    do
    {
      sub_1001FE4D0(a4, (*a1 + v6++));
      --v5;
    }

    while (v5);
  }
}

void sub_100425120(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10042513C(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if ((a3 & 0x3FF) != 0)
  {
    sub_1004CF660();
  }

  if (a3 >= 0x400)
  {
    v7 = 0;
    v8 = a3 >> 10;
    v22 = a3 >> 10;
    do
    {
      bzero(__src, 0x400uLL);
      for (i = 0; i != 1024; i += 4)
      {
        __dst = 0;
        sub_10046F95C((*a1 + a2 + i), 2uLL, &__dst + 2, 1);
        sub_10046F95C((*a1 + a2 + i + 2), 2uLL, &__dst, 1);
        v10 = HIWORD(__dst);
        v11 = &__src[i];
        *v11 = __dst;
        v11[1] = v10;
      }

      v13 = *(a4 + 8);
      v12 = *(a4 + 16);
      if (v13 >= v12)
      {
        v15 = *a4;
        v16 = v13 - *a4;
        v17 = (v16 >> 10) + 1;
        if (v17 >> 54)
        {
          sub_100019B38();
        }

        v18 = v12 - v15;
        if (v18 >> 9 > v17)
        {
          v17 = v18 >> 9;
        }

        if (v18 >= 0x7FFFFFFFFFFFFC00)
        {
          v19 = 0x3FFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          sub_10018997C(a4, v19);
        }

        v20 = (v16 >> 10 << 10);
        memcpy(v20, __src, 0x400uLL);
        v14 = v20 + 1024;
        memcpy(0, v15, v16);
        v21 = *a4;
        *a4 = 0;
        *(a4 + 8) = v20 + 1024;
        *(a4 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }

        v8 = v22;
      }

      else
      {
        memcpy(*(a4 + 8), __src, 0x400uLL);
        v14 = (v13 + 1024);
      }

      a2 += 1024;
      *(a4 + 8) = v14;
      ++v7;
    }

    while (v7 != v8);
  }
}

void sub_100425318(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10042533C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100425AC8(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1004253A4(uint64_t a1)
{
  v6 = (a1 + 112);
  sub_100189A94(&v6);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_100425410(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    v6 = (a1 + 128);
    sub_100189A94(&v6);
    v2 = *(a1 + 56);
    if (v2)
    {
      *(a1 + 64) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      *(a1 + 40) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      *(a1 + 16) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_100425488(uint64_t a1, __int16 a2, char a3, __int16 a4, char a5, void *a6, uint64_t *a7, uint64_t *a8)
{
  *a1 = a2;
  *(a1 + 2) = a3;
  *(a1 + 4) = a4;
  *(a1 + 6) = a5;
  *(a1 + 7) = *a6;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_1001895D0(a1 + 24, *a7, a7[1], 0x86BCA1AF286BCA1BLL * ((a7[1] - *a7) >> 3));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_100189C1C(a1 + 48, *a8, a8[1], (a8[1] - *a8) >> 5);
  *(a1 + 16) = *(a1 + 7);
  return a1;
}

void sub_100425530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100189B38(va);
  _Unwind_Resume(a1);
}

void sub_100425548(uint64_t a1, uint64_t a2)
{
  v6 = (a2 + 128);
  sub_100189A94(&v6);
  v3 = *(a2 + 56);
  if (v3)
  {
    *(a2 + 64) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    *(a2 + 40) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    *(a2 + 16) = v5;
    operator delete(v5);
  }
}

void sub_1004255B0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100425604(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100425604(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_100425658(a1, i))
  {
    i -= 136;
  }

  *(a1 + 8) = a2;
}

void sub_100425658(uint64_t a1, uint64_t a2)
{
  v6 = (a2 + 112);
  sub_100189A94(&v6);
  v3 = *(a2 + 56);
  if (v3)
  {
    *(a2 + 64) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    *(a2 + 40) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    *(a2 + 16) = v5;
    operator delete(v5);
  }
}

uint64_t sub_1004256C0(uint64_t a1, int *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    sub_100019B38();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100425898(a1, v6);
  }

  v13 = 0;
  v14 = 136 * v2;
  sub_1004257F4(a1, 136 * v2, a2);
  v15 = 136 * v2 + 136;
  v7 = *(a1 + 8);
  v8 = 136 * v2 + *a1 - v7;
  sub_1004258EC(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100425A48(&v13);
  return v12;
}

void sub_1004257E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100425A48(va);
  _Unwind_Resume(a1);
}

__n128 sub_1004257F4(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  *(a2 + 4) = *(a3 + 4);
  *a2 = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 8) = *(a3 + 2);
  *(a2 + 24) = *(a3 + 3);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = *(a3 + 2);
  *(a2 + 48) = *(a3 + 6);
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = *(a3 + 14);
  *(a2 + 72) = *(a3 + 9);
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  *(a3 + 9) = 0;
  v4 = *(a3 + 5);
  *(a2 + 89) = *(a3 + 89);
  *(a2 + 80) = v4;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  result = *(a3 + 7);
  *(a2 + 112) = result;
  *(a2 + 128) = *(a3 + 16);
  *(a3 + 14) = 0;
  *(a3 + 15) = 0;
  *(a3 + 16) = 0;
  return result;
}

void sub_100425898(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_1004258EC(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_1004257F4(a1, a4, v7);
      v7 += 34;
      a4 = v12 + 136;
      v12 += 136;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_100425658(a1, v5);
      v5 += 136;
    }
  }

  return sub_1004259BC(v9);
}

uint64_t sub_1004259BC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004259F4(a1);
  }

  return a1;
}

void sub_1004259F4(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 136;
      sub_100425658(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_100425A48(uint64_t a1)
{
  sub_100425A80(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100425A80(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 136;
    sub_100425658(v5, v4 - 136);
  }
}

uint64_t sub_100425AC8(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_100019B38();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_100189CE0(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  sub_100425BF0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100425CB4(&v15);
  return v14;
}

void sub_100425BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100425CB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100425BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return sub_100189DE0(v9);
}

uint64_t sub_100425CB4(uint64_t a1)
{
  sub_100425CEC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100425CEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

uint64_t sub_100425D4C(uint64_t a1, __int16 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v4 = sub_100425DB0(a1, a2);
  }

  else
  {
    sub_100425EFC(a1, *(a1 + 8), a2);
    v4 = v3 + 152;
    *(a1 + 8) = v3 + 152;
  }

  *(a1 + 8) = v4;
  return v4 - 152;
}

uint64_t sub_100425DB0(uint64_t a1, __int16 *a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    sub_100019B38();
  }

  if (0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((*(a1 + 16) - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v6 = 0x1AF286BCA1AF286;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1001896A8(a1, v6);
  }

  v13 = 0;
  v14 = 152 * v2;
  sub_100425EFC(a1, 152 * v2, a2);
  v15 = 152 * v2 + 152;
  v7 = *(a1 + 8);
  v8 = 152 * v2 + *a1 - v7;
  sub_100425FA0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100426070(&v13);
  return v12;
}

void sub_100425EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100426070(va);
  _Unwind_Resume(a1);
}

__n128 sub_100425EFC(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v3 = *a3;
  *(a2 + 2) = *(a3 + 2);
  *a2 = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 8) = *(a3 + 4);
  *(a2 + 24) = *(a3 + 3);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = *(a3 + 2);
  *(a2 + 48) = *(a3 + 6);
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = *(a3 + 28);
  *(a2 + 72) = *(a3 + 9);
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  *(a3 + 9) = 0;
  v4 = *(a3 + 5);
  v5 = *(a3 + 6);
  *(a2 + 105) = *(a3 + 105);
  *(a2 + 80) = v4;
  *(a2 + 96) = v5;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  result = *(a3 + 8);
  *(a2 + 128) = result;
  *(a2 + 144) = *(a3 + 18);
  *(a3 + 16) = 0;
  *(a3 + 17) = 0;
  *(a3 + 18) = 0;
  return result;
}

uint64_t sub_100425FA0(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_100425EFC(a1, a4, v7);
      v7 += 76;
      a4 = v12 + 152;
      v12 += 152;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_100425548(a1, v5);
      v5 += 152;
    }
  }

  return sub_1001899C4(v9);
}

uint64_t sub_100426070(uint64_t a1)
{
  sub_1004260A8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1004260A8(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 152;
    sub_100425548(v5, v4 - 152);
  }
}

uint64_t sub_1004260F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  sub_100426188(a1 + 16, a3);
  *(a1 + 48) = a4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

std::thread *sub_100426130(std::thread *this)
{
  atomic_store(0, &this[8]);
  v2 = this + 7;
  if (this[7].__t_)
  {
    std::thread::join(this + 7);
  }

  std::thread::~thread(v2);
  sub_100426220(&this[2]);
  return this;
}

uint64_t sub_100426188(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100426220(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100426320(unsigned __int8 *a1)
{
  result = *a1;
  if ((result - 1) >= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Unknown message type");
  }

  return result;
}

uint64_t sub_100426398(uint64_t a1)
{
  result = *(a1 + 1);
  if (result >= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Unknown group ID");
  }

  return result;
}

uint64_t sub_10042640C(uint64_t a1)
{
  if (*(a1 + 1) > 2u || sub_100426398(a1))
  {
    sub_100193120(v12);
    sub_10000EA44(v13, "not ranging group ID: ", 22);
    v4 = *(a1 + 1);
    std::ostream::operator<<();
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v11);
  }

  result = *(a1 + 2);
  v3 = result > 0x16 || ((1 << result) & 0x60023F) == 0;
  if (v3 && ((result - 80) > 0x20 || ((1 << (result - 80)) & 0x10001003FLL) == 0) && ((result - 512) > 0xD || ((1 << result) & 0x243B) == 0))
  {
    sub_100193120(v12);
    v6 = sub_10000EA44(v13, "Unknown ranging group message ID: ", 34);
    *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 8;
    v7 = sub_10000EA44(v6, "0x", 2);
    v8 = *v7;
    *(v7 + *(*v7 - 24) + 24) = 3;
    sub_100426884((v7 + *(v8 - 24)), 0x30u);
    v9 = *(a1 + 2);
    std::ostream::operator<<();
    v10 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(v10, &v11);
  }

  return result;
}

void sub_100426690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_100193C68(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_1004266E8(uint64_t a1)
{
  if (*(a1 + 1) > 2u || sub_100426398(a1) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "not debug group ID");
    goto LABEL_7;
  }

  result = *(a1 + 2);
  if ((result - 82) >= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Debug group message IDs not defined");
LABEL_7:
  }

  return result;
}

uint64_t sub_10042679C(uint64_t a1)
{
  if (*(a1 + 1) > 2u || sub_100426398(a1) != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "not factory test group ID");
LABEL_12:
  }

  result = *(a1 + 2);
  v3 = result > 0x20 || ((1 << result) & 0x104090011) == 0;
  if (v3 && result != 78 && result != 128)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Unknown factory test group message ID");
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100426884(std::ios_base *this, std::ios_base::fmtflags a2)
{
  fmtflags = this[1].__fmtflags_;
  if (fmtflags == -1)
  {
    std::ios_base::getloc(this);
    v5 = std::locale::use_facet(&v7, &std::ctype<char>::id);
    fmtflags = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v7);
    this[1].__fmtflags_ = fmtflags;
  }

  this[1].__fmtflags_ = a2;
  return fmtflags;
}

void sub_100426934(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_100426A4C(a1, a2))
  {
    sub_1004289F8("RoseCIRDecoder::getBufferedCIREvent, version %d", v5, v6, v7, v8, v9, v10, v11, *(a1 + 5));
    v19 = *(a1 + 5);
    if (v19 == 2)
    {

      sub_100423760(a1, (a1 + 8), a3);
    }

    else
    {
      if (v19 != 1)
      {
        sub_100428B48("collectRangeCIREvent: Unexpected version number %u in CIR debug data. Only versions 1 and 2 are supported.", v12, v13, v14, v15, v16, v17, v18, *(a1 + 5));
        exception = __cxa_allocate_exception(0x10uLL);
        sub_1004211BC(exception, "Unexpected version number in CIR debug data. Only versions 1 and 2 are supported.");
      }

      sub_10045EF14((a1 + 8), a3);
    }
  }

  else
  {
    *a3 = 0;
    a3[72] = 0;
  }
}

BOOL sub_100426A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10046F8E0(a2);
  v5 = sub_10046F8B8(v4);
  v40 = v5;
  v41 = WORD2(v5);
  if (*(a1 + 4) == 1 && !sub_1004262C8(&v40))
  {
    sub_100005D28("collectRangeCIREvent: waiting for start of multipart message; ignoring partial data", v6, v7, v8, v9, v10, v11, v12, v38);
    return 0;
  }

  if (sub_1004262C8(&v40))
  {
    v13 = *(a1 + 8);
    *(a1 + 4) = 0;
    *(a1 + 16) = v13;
    sub_10046F95C((*a2 + 4), 1uLL, (a1 + 5), 1);
    sub_10046F95C((*a2 + 5), 2uLL, (a1 + 6), 1);
    if (*(a1 + 5) - 1 >= 2)
    {
      sub_100428B48("collectRangeCIREvent: Unexpected version number %u in CIR debug data. Only versions 1 and 2 are supported.", v14, v15, v16, v17, v18, v19, v20, *(a1 + 5));
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1004211BC(exception, "Unexpected version number in CIR debug data. Only versions 1 and 2 are supported.");
    }

    sub_1000F5900((a1 + 8), *(a1 + 6));
    v21 = 7;
  }

  else
  {
    v21 = 4;
  }

  sub_100426C1C(a1 + 8, *(a1 + 16), (v21 + *a2), *(a2 + 8), *(a2 + 8) - (v21 + *a2));
  if (*(a1 + 16) - *(a1 + 8) > *(a1 + 6))
  {
    sub_100428B48("collectRangeCIREvent: Collected CIR data exceeds expected size %hu", v22, v23, v24, v25, v26, v27, v28, *(a1 + 6));
    result = 0;
    *(a1 + 4) = 1;
    return result;
  }

  result = sub_1004262E8(&v40);
  if (result)
  {
    result = 1;
    *(a1 + 4) = 1;
    if (*(a1 + 16) - *(a1 + 8) != *(a1 + 6))
    {
      v39 = *(a1 + 16) - *(a1 + 8);
      sub_100428B48("collectRangeCIREvent: end of multipart message, expected %hu bytes but received %zu", v30, v31, v32, v33, v34, v35, v36, *(a1 + 6));
      return 0;
    }
  }

  return result;
}

char *sub_100426C1C(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = __src;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10 - v9 >= a5)
  {
    v15 = v9 - __dst;
    if (v9 - __dst >= a5)
    {
      v19 = &__dst[a5];
      v20 = &v9[-a5];
      v21 = *(a1 + 8);
      if (v9 >= a5)
      {
        do
        {
          v22 = *v20++;
          *v21++ = v22;
        }

        while (v20 != v9);
      }

      *(a1 + 8) = v21;
      if (v9 != v19)
      {
        memmove(&__dst[a5], __dst, v9 - v19);
      }

      v23 = v5;
      v24 = v7;
      v25 = v6;
    }

    else
    {
      v16 = &__src[v15];
      if (&__src[v15] == a4)
      {
        v17 = *(a1 + 8);
        v18 = v17;
      }

      else
      {
        v17 = (&v9[a4] - v16);
        v18 = *(a1 + 8);
        do
        {
          v34 = *v16++;
          *v18++ = v34;
        }

        while (v16 != a4);
      }

      *(a1 + 8) = v17;
      if (v15 < 1)
      {
        return v5;
      }

      v35 = &__dst[a5];
      v36 = &v17[-a5];
      v37 = v17;
      if (&v17[-a5] < v9)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
        }

        while (v36 != v9);
      }

      *(a1 + 8) = v37;
      if (v18 != v35)
      {
        memmove(&__dst[a5], __dst, v17 - v35);
      }

      v23 = v5;
      v24 = v7;
      v25 = v15;
    }

    memmove(v23, v24, v25);
    return v5;
  }

  v11 = *a1;
  v12 = &v9[a5 - *a1];
  if (v12 < 0)
  {
    sub_100019B38();
  }

  v13 = v10 - v11;
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    operator new();
  }

  v26 = (__dst - v11);
  v27 = (__dst - v11 + a5);
  v28 = (__dst - v11);
  do
  {
    v29 = *v7++;
    *v28++ = v29;
    --v6;
  }

  while (v6);
  v30 = *(a1 + 8) - __dst;
  memcpy(v27, __dst, v30);
  v31 = &v27[v30];
  *(a1 + 8) = v5;
  v32 = *a1;
  v33 = &v26[*a1 - v5];
  memcpy(v33, *a1, &v5[-*a1]);
  *a1 = v33;
  *(a1 + 8) = v31;
  *(a1 + 16) = 0;
  if (v32)
  {
    operator delete(v32);
  }

  return v26;
}

void sub_100426E3C(uint64_t a1, __int16 **a2)
{
  v2 = a1 + 8;
  *(a1 + 16) = *(a1 + 8);
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    v7 = v5;
    sub_1001FE4D0(v2, &v7);
    v6 = HIBYTE(v5);
    sub_1001FE4D0(v2, &v6);
  }
}

uint64_t sub_100426EAC(unsigned __int8 *a1)
{
  sub_10026B0D4(&v18);
  sub_100427248(*a1, &v15);
  v2 = std::string::append(&v15, ": [");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v17 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v17 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v17 >= 0)
  {
    v5 = HIBYTE(v17);
  }

  else
  {
    v5 = __p[1];
  }

  sub_10000EA44(&v18, v4, v5);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v6 = v18;
  v7 = &v18 + *(v18 - 3);
  if (*(v7 + 36) == -1)
  {
    std::ios_base::getloc((&v18 + *(v18 - 3)));
    v8 = std::locale::use_facet(__p, &std::ctype<char>::id);
    (v8->__vftable[2].~facet_0)(v8, 32);
    std::locale::~locale(__p);
    v6 = v18;
  }

  *(v7 + 36) = 48;
  *(&v18 + *(v6 - 3) + 8) = *(&v18 + *(v6 - 3) + 8) & 0xFFFFFFB5 | 8;
  if (*(a1 + 2) != *(a1 + 1))
  {
    v9 = 0;
    do
    {
      v10 = sub_10000EA44(&v18, "0x", 2);
      *(v10 + *(*v10 - 24) + 24) = 2;
      v11 = *(*(a1 + 1) + v9);
      std::ostream::operator<<();
      v13 = *(a1 + 1);
      v12 = *(a1 + 2);
      if (v9 != ~v13 + v12)
      {
        sub_10000EA44(&v18, ", ", 2);
        v13 = *(a1 + 1);
        v12 = *(a1 + 2);
      }

      ++v9;
    }

    while (v9 < v12 - v13);
  }

  sub_10000EA44(&v18, "]", 1);
  std::stringbuf::str();
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  std::locale::~locale(v20);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1004271D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

_BYTE *sub_100427248@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if ((a1 - 1) > 0x37)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_1009AB918[(a1 - 1)];
  }

  return sub_100004A08(a2, v2);
}

uint64_t sub_10042727C(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 < 0)
  {
    v4 = 0;
  }

  else
  {
    v3 = *(a1 + 8);
    v4 = 0;
    if (*(a1 + 16) - v3 > a2)
    {
      v4 = *(v3 + a2);
      v2 = 1;
    }
  }

  return v4 | (v2 << 8);
}

BOOL sub_1004272B4(uint64_t a1, int a2, char a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) - v3;
  if (v4 > a2)
  {
    *(v3 + a2) = a3;
  }

  return v4 > a2;
}

uint64_t sub_1004272E8(unsigned int a1, int a2)
{
  if (a2 == 2)
  {
    if (a1 < 0x21 && ((0x1FFFFFE01uLL >> a1) & 1) != 0)
    {
      return byte_100572B60[a1];
    }

LABEL_9:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid raw value for extended preamble");
  }

  if (a2 != 1 || a1 >= 4)
  {
    goto LABEL_9;
  }

  return (a1 + 9);
}

uint64_t sub_100427398(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 1)
  {
    if (result <= 10)
    {
      if (result == 9)
      {
        return 0;
      }

      if (result == 10)
      {
        return 1;
      }

      if (result)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (result == 11)
      {
        return 2;
      }

      if (result == 12)
      {
        return 3;
      }

      if ((result - 13) >= 0x14)
      {
        goto LABEL_15;
      }
    }

    sub_100428B48("Preambles not supported in HSI 1.x", a2, a3, a4, a5, a6, a7, a8, v9);
LABEL_15:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid extended preamble");
    goto LABEL_16;
  }

  if (a2 != 2)
  {
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1004211BC(exception, "Unknown HSI version");
LABEL_16:
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_10042749C(char a1)
{
  sub_100193120(v5);
  v2 = sub_10000EA44(&v6, "Preamble_", 9);
  v10 = a1;
  sub_10000EA44(v2, &v10, 1);
  std::stringbuf::str();
  v6 = v3;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_100427658(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result > 0x1B || ((1 << result) & 0xFDB548F) == 0)
  {
    sub_100428B48("Exception: %s - 0x%x", a2, a3, a4, a5, a6, a7, a8, "Invalid session type");
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid session type");
  }

  return result;
}

_BYTE *sub_1004276FC@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 0x1B)
  {
    v2 = "UNKNOWN";
  }

  else
  {
    v2 = off_1009ABAD8[a1];
  }

  return sub_100004A08(a2, v2);
}

uint64_t sub_100427728(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result > 4)
  {
    sub_100428B48("Exception: %s - 0x%x", a2, a3, a4, a5, a6, a7, a8, "Invalid gr superframe format");
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid session type");
  }

  return result;
}

uint64_t sub_1004277B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result > 1)
  {
    sub_100428B48("Exception: %s - 0x%x", a2, a3, a4, a5, a6, a7, a8, "Invalid session role");
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid session role");
  }

  return result;
}

uint64_t sub_100427844(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result > 0x38 || ((1 << result) & 0x149E3C884FAA1F2) == 0)
  {
    sub_100428B48("Exception: Invalid config parameter ID %d", a2, a3, a4, a5, a6, a7, a8, result);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid config parameter ID");
  }

  return result;
}

double sub_1004278F0@<D0>(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a1 < 0x33 && (a2 - 1) > 0xFFFFFFCC)
  {
    v5[0] = a1;
    v5[1] = a2;
    v7 = 0;
    v6 = 0uLL;
    sub_1000069DC(&v6, v5, &v6, 2);
    result = *&v6;
    *a3 = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t sub_100427984(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result >= 0x62 && result != 16398 && result != 0xFFFF)
  {
    sub_100428D00("Fault: %s - 0x%x", a2, a3, a4, a5, a6, a7, a8, "Unknown error code");
    return 0xFFFFLL;
  }

  return result;
}

_BYTE *sub_1004279E4@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v2 = "SUCCESS";
  switch(a1)
  {
    case 0:
      return sub_100004A08(a2, v2);
    case 1:
      v2 = "INVALID_CMD_PARAM";
      break;
    case 2:
      v2 = "UNKNOWN_CMD";
      break;
    case 3:
      v2 = "INVALID_CMD_LEN";
      break;
    case 4:
      v2 = "MEMORY_FAILURE";
      break;
    case 5:
      v2 = "INTERNAL";
      break;
    case 6:
      v2 = "BUSY";
      break;
    case 7:
      v2 = "CMD_DISALLOWED";
      break;
    case 8:
      v2 = "SES_MAX_LIMIT_REACHED";
      break;
    case 9:
      v2 = "SES_NOT_FOUND";
      break;
    case 10:
      v2 = "TBD3";
      break;
    case 11:
      v2 = "TBD4";
      break;
    case 12:
      v2 = "SES_TIMEOUT";
      break;
    case 13:
      v2 = "SES_SYNC_TIMEOUT";
      break;
    case 14:
      v2 = "MISSED_RANGING_CYCLE";
      break;
    case 15:
      v2 = "LOCAL_SES_REMOVE_SUCCESS";
      break;
    case 16:
      v2 = "LOCAL_SES_DISABLE_SUCCESS";
      break;
    case 17:
      v2 = "SES_COMPLETED";
      break;
    case 18:
      v2 = "SES_ALREADY_ACTIVE";
      break;
    case 19:
      v2 = "SES_ALREADY_DISABLED";
      break;
    case 20:
      v2 = "SES_SCHEDULING_CONFLICT";
      break;
    case 21:
      v2 = "SES_COEX_CONFLICT";
      break;
    case 22:
      v2 = "SES_WRONG_SYNC";
      break;
    case 23:
      v2 = "START_TIME_ELAPSED";
      break;
    case 24:
      v2 = "SES_UAP_ALREADY_PENDING";
      break;
    case 25:
      v2 = "COEX_UNSUPPORTED";
      break;
    case 26:
      v2 = "INVALID_TX_MINI_SLOT_SIZE";
      break;
    case 27:
      v2 = "INVALID_RX_MINI_SLOT_SIZE";
      break;
    case 28:
      v2 = "INVALID_SES_ROLE";
      break;
    case 29:
      v2 = "INVALID_ANTENNA_CFG";
      break;
    case 30:
      v2 = "INVALID_NACCESS_SLOTS";
      break;
    case 31:
      v2 = "INVALID_PREAMBLE";
      break;
    case 32:
      v2 = "INVALID_FEM_CFG";
      break;
    case 33:
      v2 = "SUPERFRAMES_OVERLAP";
      break;
    case 34:
      v2 = "INVALID_INTERVAL";
      break;
    case 35:
      v2 = "INVALID_PKT_TYPE";
      break;
    case 36:
      v2 = "INVALID_MAC_ADDR";
      break;
    case 37:
      v2 = "MUTE_UNMUTE_DISALLOWED";
      break;
    case 38:
      v2 = "SES_MUTED";
      break;
    case 39:
      v2 = "INVALID_CHANNEL";
      break;
    case 40:
      v2 = "DTM_CMD_UNSUPPORTED";
      break;
    case 41:
      v2 = "DTM_SES_NOT_READY";
      break;
    case 42:
      v2 = "DTM_SES_BUSY";
      break;
    case 43:
      v2 = "DTM_PAYLOAD_INVALID_LEN";
      break;
    case 44:
      v2 = "DTM_INVALID_SES_TO";
      break;
    case 45:
      v2 = "MP_CMD_INTERLEAVED";
      break;
    case 46:
      v2 = "MP_CMD_LEN_OVERFLOW";
      break;
    case 47:
      v2 = "INVALID_SES_TYPE";
      break;
    case 48:
      v2 = "INVALID_ALISHA_UWB_CFG_ID";
      break;
    case 49:
      v2 = "INVALID_ALISHA_RAN_MULTIPLIER";
      break;
    case 50:
      v2 = "INVALID_ALISHA_NRESPONDERS";
      break;
    case 51:
      v2 = "INVALID_ALISHA_NCHAPS_PER_SLOT";
      break;
    case 52:
      v2 = "INVALID_ALISHA_NSLOTS_PER_ROUND";
      break;
    case 53:
      v2 = "INVALID_ALISHA_RBLOCK_CFG";
      break;
    case 54:
      v2 = "ALISHA_UWB_SES_ID_NOT_FOUND";
      break;
    case 55:
      v2 = "ALISHA_UWB_SES_ID_ALREADY_IN_USE";
      break;
    case 56:
      v2 = "ALISHA_KEY_STORE_FULL";
      break;
    case 57:
      v2 = "INVALID_ALISHA_RESPONDER_IDX";
      break;
    case 58:
      v2 = "SES_GRUAP_ALREADY_PENDING";
      break;
    case 59:
      v2 = "INVALID_CHANNEL_HOP_PATTERN";
      break;
    case 60:
      v2 = "INVALID_ACCESS_SLOT_IDX";
      break;
    case 61:
      v2 = "INVALID_GR_TYPE";
      break;
    case 62:
      v2 = "SLOT_TIME_ELAPSED";
      break;
    case 63:
      v2 = "INVALID_ALISHA_PULSE_SHAPE_COMBO";
      break;
    case 64:
      v2 = "INVALID_ALISHA_HOP_MODE";
      break;
    case 65:
      v2 = "INVALID_ALISHA_HOP_SEQUENCE";
      break;
    case 66:
      v2 = "INVALID_SUBRATE";
      break;
    case 67:
      v2 = "SES_NOT_ACTIVE";
      break;
    case 68:
      v2 = "SES_SUBRATE_ALREADY_PENDING";
      break;
    case 69:
      v2 = "SES_SUBRATE_ALREADY_EFFECTIVE";
      break;
    case 70:
      v2 = "UAP_RX_FAILED";
      break;
    case 71:
      v2 = "ALISHA_URSK_RETRIEVAL_FAILED";
      break;
    case 72:
      v2 = "ALISHA_GET_KEY_ALREADY_PENDING";
      break;
    case 73:
      v2 = "ALISHA_STS_INDEX_EXHAUSTED";
      break;
    case 74:
      v2 = "ALISHA_BLOCK_IDX_EXHAUSTED";
      break;
    case 75:
      v2 = "ALISHA_URSK_TTL_EXPIRED";
      break;
    case 76:
      v2 = "INVALID_ALISHA_STS_INDEX_0";
      break;
    case 77:
      v2 = "ALISHA_RESPONSE_TIMEOUT";
      break;
    case 78:
      v2 = "ALISHA_TOTAL_TIMEOUT";
      break;
    case 79:
      v2 = "UNAUTHENTICATED_CAL_BLOB";
      break;
    case 80:
      v2 = "INVALID_SFD";
      break;
    case 81:
      v2 = "INVALID_ALISHA_NSIMRESPONDERS";
      break;
    case 82:
      v2 = "DUPLICATE";
      break;
    case 83:
      v2 = "NMI_NAP_RX_FAILED";
      break;
    case 84:
      v2 = "NMI_NAR_RX_FAILED";
      break;
    case 85:
      v2 = "NMI_SOR_RX_FAILED";
      break;
    case 86:
      v2 = "NMI_NAP_WRONG_SYNC";
      break;
    case 87:
      v2 = "NMI_WRONG_IRK";
      break;
    case 88:
      v2 = "NMI_RNG_DIS_BOTH_SIDES";
      break;
    case 89:
      v2 = "NMI_POLL_RSP_RX_OTHER_FAILURE";
      break;
    case 90:
      v2 = "NMI_DATA_RX_OTHER_FAILURE";
      break;
    case 91:
      v2 = "NMI_POLL_RSP_WRONG_SYNC";
      break;
    case 92:
      v2 = "NMI_DATA_WRONG_SYNC";
      break;
    case 93:
      v2 = "SES_EXCLUSIVE_MAC_DISALLOWED";
      break;
    case 94:
      v2 = "NMI_NAR_WRONG_SYNC";
      break;
    case 95:
      v2 = "NMI_SOR_WRONG_SYNC";
      break;
    case 96:
      v2 = "NMI_INVALID_RTT_TAT";
      break;
    case 97:
      v2 = "NMI_POLL_RSP_MISSED_CYCLE";
      break;
    default:
      v3 = "UNKNOWN";
      if (a1 == 0xFFFF)
      {
        v3 = "UNKNOWN_ERROR";
      }

      if (a1 == 16398)
      {
        v2 = "FACTORY_STOP_TEST";
      }

      else
      {
        v2 = v3;
      }

      break;
  }

  return sub_100004A08(a2, v2);
}

uint64_t sub_100427EE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result > 6)
  {
    sub_100428B48("Exception: %s - 0x%x", a2, a3, a4, a5, a6, a7, a8, "Invalid Rose hardware version");
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid Rose hardware version");
  }

  return result;
}

_BYTE *sub_100427F6C@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 6)
  {
    v2 = "UNKNOWN";
  }

  else
  {
    v2 = off_1009ABBB8[a1];
  }

  return sub_100004A08(a2, v2);
}

uint64_t sub_100427F98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (((result - 208) > 0x2E || ((1 << (result + 48)) & 0x7FFF47FF1FFFLL) == 0) && (result > 0x18 || ((1 << result) & 0x116003F) == 0))
  {
    sub_100428B48("Exception: %s - 0x%x", a2, a3, a4, a5, a6, a7, a8, "Invalid rx status.");
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid rx status.");
  }

  return result;
}

uint64_t sub_100428064(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *v1++;
      v6 = v5 - 2;
      v7 = v3 | 2;
      if (v5 == 1)
      {
        v3 |= 1u;
      }

      if (v6 < 4)
      {
        ++v4;
        v3 = v7;
      }
    }

    while (v1 != v2);
    if ((v4 & 0xFFFFFFFB) != 0)
    {
      sub_1004CF68C();
    }
  }

  return v3;
}

uint64_t sub_1004280CC(unsigned int a1)
{
  if (a1 >= 4)
  {
    sub_1004CF6B8();
  }

  return a1 & 1;
}

BOOL sub_1004280EC(unsigned int a1)
{
  if (a1 >= 4)
  {
    sub_1004CF6E4();
  }

  return a1 > 1;
}

_BYTE *sub_100428110@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if ((a1 - 1) > 4)
  {
    v2 = "UNKNOWN";
  }

  else
  {
    v2 = off_1009ABBF0[(a1 - 1)];
  }

  return sub_100004A08(a2, v2);
}

_BYTE *sub_100428144@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v2 = "UNKNOWN";
  if (a1 == 9)
  {
    v2 = "CHANNEL9";
  }

  if (a1 == 5)
  {
    v3 = "CHANNEL5";
  }

  else
  {
    v3 = v2;
  }

  return sub_100004A08(a2, v3);
}

_BYTE *sub_100428174@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 6)
  {
    v2 = "UNKNOWN";
  }

  else
  {
    v2 = off_1009ABC18[a1];
  }

  return sub_100004A08(a2, v2);
}

_BYTE *sub_1004281A0(_BYTE *result, int a2)
{
  if (a2 == 5)
  {
    v2 = 1;
  }

  else
  {
    if (a2 != 9)
    {
      return result;
    }

    v2 = 2;
  }

  *result |= v2;
  return result;
}

_WORD *sub_1004281CC(_WORD *result, int a2)
{
  if ((a2 - 1) <= 5)
  {
    *result |= word_100572B82[(a2 - 1)];
  }

  return result;
}

uint64_t sub_1004281F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  switch(a2)
  {
    case 1:
      if (a1)
      {
        if (a1 != 1)
        {
          sub_100428B48("Exception: %s - %d", a2, a3, a4, a5, a6, a7, a8, "Invalid Rose channel config for HSI V1");
          exception = __cxa_allocate_exception(0x10uLL);
          sub_1004211BC(exception, "Invalid Rose channel config");
LABEL_12:
        }

        return 9;
      }

      else
      {
        return 5;
      }

    case 2:
      sub_1004282F4(a1, a2, a3, a4, a5, a6, a7, a8);
      break;
    case 0:
      sub_100428B48("Exception: %s", a2, a3, a4, a5, a6, a7, a8, "Unknown HSI version");
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1004211BC(exception, "Unknown HSI version");
      goto LABEL_12;
  }

  return v8;
}

uint64_t sub_1004282F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result != 9 && result != 5)
  {
    sub_100428B48("Exception: %s - %d", a2, a3, a4, a5, a6, a7, a8, "Invalid Rose channel config for HSI V2");
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Invalid Rose channel config");
  }

  return result;
}

uint64_t sub_10042838C(int a1, int a2)
{
  if (a2 == 2)
  {
    if (a1 == 5)
    {
      return 5;
    }

    else
    {
      return 9;
    }
  }

  else
  {
    if (a2 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1004211BC(exception, "Unknown HSI version");
    }

    return a1 != 5;
  }
}

unint64_t sub_10042841C(unsigned int a1)
{
  v1 = a1 >> 11;
  if ((v1 - 1) >= 6)
  {
    if (!v1 && (a1 == 9 || a1 == 5))
    {
      v1 = 0;
      v2 = a1 | 0x100u;
    }

    else
    {
      v1 = 0;
      v2 = 0;
    }
  }

  else
  {
    v2 = ((a1 & 0x7FF) << 24) | 0x10000000000;
  }

  return v1 | (v2 << 8);
}

uint64_t sub_100428478(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 << 11;
  v3 = v1 - 1;
  if ((v1 - 1) >= 6)
  {
    if (*a1)
    {
      return v3;
    }

    if (a1[2])
    {
      return (v2 | a1[1]);
    }

LABEL_8:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Missing channel-select for band");
  }

  if ((a1[6] & 1) == 0)
  {
    goto LABEL_8;
  }

  return (*(a1 + 2) | v2);
}

uint64_t sub_100428540(int a1)
{
  if ((a1 & 0x10000) != 0)
  {
    v3 = sub_10042841C(a1);
    v5 = v3 >> 8;
    v6 = v3 >> 16;
    if (v3)
    {
      LOBYTE(v5) = 0;
      LODWORD(v6) = 0;
    }

    if (v4)
    {
      v1 = v5;
    }

    else
    {
      v1 = 0;
    }

    if (v4)
    {
      v2 = v6;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

uint64_t sub_100428594(int a1)
{
  if (a1)
  {
    return 32 * (a1 == 1);
  }

  else
  {
    return 16;
  }
}

uint64_t sub_1004285B0(int a1)
{
  if (a1 == 32)
  {
    v1 = 1;
  }

  else
  {
    v1 = 4;
  }

  if (a1 == 16)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1004285C8(uint64_t result, unsigned int a2)
{
  v2 = 32 * (result == 1);
  if (!result)
  {
    v2 = 16;
  }

  v3 = 32 * (a2 == 1);
  if (!a2)
  {
    v3 = 16;
  }

  if (v2 <= v3)
  {
    return result;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_100428610(unsigned int a1)
{
  v1 = a1 >> 8;
  v2 = __rev16(a1);
  v3 = bswap32(a1) >> 24;
  if (((1 << SBYTE1(a1)) & 0x101F7) == 0)
  {
    v2 = 0;
    v3 = a1 >> 8;
  }

  v4 = v1 > 0x10;
  v5 = v1 <= 0x10 && ((1 << SBYTE1(a1)) & 0x101F7) != 0;
  if (v4)
  {
    v2 = 0;
    LOWORD(v3) = v5;
  }

  return (v2 | (v3 << 8)) | (v5 << 16);
}

uint64_t sub_100428674(unsigned __int8 *a1)
{
  v1 = a1[1];
  v2 = *a1;
  if (*a1)
  {
    if (a1[1] == 1 && v2 == 16)
    {
      v2 = 16;
    }
  }

  else
  {
    v4 = v1 - 1;
    if (v4 >= 0xD)
    {
      v1 = 0;
      v2 = 0;
    }

    else
    {
      v2 = 0;
      v1 = byte_100572B8E[v4];
    }
  }

  return v1 | (v2 << 8);
}

uint64_t sub_1004286CC(unsigned __int8 *a1)
{
  sub_100193120(v15);
  v2 = *a1;
  if (v2 <= 4)
  {
    if (*a1 > 1u)
    {
      if (v2 == 2)
      {
        v9 = &v16;
        v10 = "IEEE_";
        v11 = 5;
      }

      else
      {
        if (v2 != 4)
        {
          goto LABEL_26;
        }

        v9 = &v16;
        v10 = "Proprietary_";
        v11 = 12;
      }

LABEL_18:
      v3 = sub_10000EA44(v9, v10, v11);
      v4 = "HPRF";
LABEL_22:
      v5 = 4;
      goto LABEL_25;
    }

    v6 = &v16;
    if (*a1)
    {
      v7 = "IEEE_";
      v8 = 5;
    }

    else
    {
      v7 = "Legacy_";
      v8 = 7;
    }

LABEL_21:
    v3 = sub_10000EA44(v6, v7, v8);
    v4 = "BPRF";
    goto LABEL_22;
  }

  if (*a1 <= 6u)
  {
    if (v2 != 5)
    {
      if (v2 != 6)
      {
        goto LABEL_26;
      }

      v9 = sub_10000EA44(&v16, "Split", 5);
      v10 = "ND_";
      v11 = 3;
      goto LABEL_18;
    }

    v6 = sub_10000EA44(&v16, "Split", 5);
    v7 = "ND_";
    v8 = 3;
    goto LABEL_21;
  }

  switch(v2)
  {
    case 7u:
      v3 = &v16;
      break;
    case 8u:
      v3 = sub_10000EA44(&v16, "Mixed_", 6);
      break;
    case 0x10u:
      v3 = &v16;
      v4 = "NB";
      v5 = 2;
      goto LABEL_25;
    default:
      goto LABEL_26;
  }

  v4 = "MMS";
  v5 = 3;
LABEL_25:
  sub_10000EA44(v3, v4, v5);
LABEL_26:
  sub_10000EA44(&v16, " PktIdx ", 8);
  v12 = a1[1];
  std::ostream::operator<<();
  std::stringbuf::str();
  v16 = v13;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1004289E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100193C68(va);
  _Unwind_Resume(a1);
}

void sub_1004289F8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = &a9;
  v10 = sub_100005E0C();
  sub_100428ADC(v10);
  sub_100004A08(&v15, a1);
  v11 = std::string::append(&v15, "\n");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v17 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v13 = sub_100005F14();
  if (v17 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  sub_100005EB0(v13, v14, v18);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100428AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100428ADC(uint64_t *a1)
{
  std::mutex::lock((a1 + 1));
  v2 = *a1;
  os_log_with_args();

  std::mutex::unlock((a1 + 1));
}

void sub_100428B48(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = &a9;
  v10 = sub_100005E0C();
  sub_100428C2C(v10);
  sub_100004A08(&v15, a1);
  v11 = std::string::append(&v15, "\n");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v17 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v13 = sub_100005F14();
  if (v17 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  sub_100428C98(v13, v14, v18);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100428BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100428C2C(uint64_t *a1)
{
  std::mutex::lock((a1 + 1));
  v2 = *a1;
  os_log_with_args();

  std::mutex::unlock((a1 + 1));
}

void sub_100428C98(std::mutex *a1, const char *a2, va_list a3)
{
  std::mutex::lock(a1);
  vfprintf(__stderrp, a2, a3);
  fflush(__stderrp);

  std::mutex::unlock(a1);
}

void sub_100428D00(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = &a9;
  v10 = sub_100005E0C();
  sub_100428DE4(v10);
  sub_100004A08(&v15, a1);
  v11 = std::string::append(&v15, "\n");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v17 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v13 = sub_100005F14();
  if (v17 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  sub_100428C98(v13, v14, v18);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100428DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100428DE4(uint64_t *a1)
{
  std::mutex::lock((a1 + 1));
  v2 = *a1;
  os_log_with_args();

  std::mutex::unlock((a1 + 1));
}

uint64_t sub_100428E54(uint64_t a1)
{
  os_release(*a1);
  std::mutex::~mutex((a1 + 8));
  return a1;
}

uint64_t sub_100428E90(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100428F20;
  block[3] = &unk_1009ABC50;
  block[4] = a1;
  if (qword_1009F91E8 != -1)
  {
    dispatch_once(&qword_1009F91E8, block);
  }

  return byte_1009F91F0;
}

void sub_100428F20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (v1 + 48);
  if (*(v1 + 48))
  {
    sub_1004CF844();
  }

  v3 = dlopen("/usr/lib/libRoseBooter.dylib", 1);
  *v2 = v3;
  if (!v3)
  {
    dlerror();
    sub_100428B48("Failed to dlopen %s, error: %s", v13, v14, v15, v16, v17, v18, v19, "/usr/lib/libRoseBooter.dylib");
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v4 = "RoseBooterHasFailedForward";
  *(v1 + 56) = dlsym(v3, "RoseBooterHasFailedForward");
  if (!dlerror())
  {
    if (*(v1 + 56))
    {
      v4 = "RoseBooterPerformHealing";
      *(v1 + 64) = dlsym(*(v1 + 48), "RoseBooterPerformHealing");
      if (!dlerror())
      {
        if (*(v1 + 64))
        {
          v4 = "RoseBooterAllocate";
          *(v1 + 72) = dlsym(*(v1 + 48), "RoseBooterAllocate");
          if (!dlerror())
          {
            if (*(v1 + 72))
            {
              v4 = "RoseBooterPreflight";
              *(v1 + 80) = dlsym(*(v1 + 48), "RoseBooterPreflight");
              if (!dlerror())
              {
                if (*(v1 + 80))
                {
                  v4 = "RoseBooterBootChip";
                  *(v1 + 88) = dlsym(*(v1 + 48), "RoseBooterBootChip");
                  if (!dlerror())
                  {
                    if (*(v1 + 88))
                    {
                      v4 = "RoseBooterSendCalWithOptions";
                      *(v1 + 96) = dlsym(*(v1 + 48), "RoseBooterSendCalWithOptions");
                      if (!dlerror())
                      {
                        if (*(v1 + 96))
                        {
                          v4 = "RoseBooterGetCal";
                          *(v1 + 104) = dlsym(*(v1 + 48), "RoseBooterGetCal");
                          if (!dlerror())
                          {
                            if (*(v1 + 104))
                            {
                              v4 = "RoseBooterDestroy";
                              *(v1 + 112) = dlsym(*(v1 + 48), "RoseBooterDestroy");
                              if (!dlerror())
                              {
                                if (*(v1 + 112))
                                {
                                  v12 = 1;
                                  goto LABEL_8;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_100428B48("Failed to dlsym %s, error: %s", v5, v6, v7, v8, v9, v10, v11, v4);
  if (!*v2)
  {
    goto LABEL_7;
  }

  dlclose(*v2);
  v12 = 0;
  *v2 = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
LABEL_8:
  byte_1009F91F0 = v12;
}

uint64_t sub_100429114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *child = 0;
  if (qword_1009F91F8 != -1)
  {
    sub_1004CF870();
  }

  if (byte_1009F91F1 != 1)
  {
    return 0;
  }

  v10 = (a1 + 8);
  if (*(a1 + 8))
  {
    return 1;
  }

  if (!*(a1 + 40))
  {
    v27 = "packet receive callback uninitialized";
LABEL_25:
    sub_100428B48(v27, a2, a3, a4, a5, a6, a7, a8, byte7);
    return 0;
  }

  if (!*(a1 + 144))
  {
    v27 = "crash callback needs to be registered first";
    goto LABEL_25;
  }

  if (!*(a1 + 176))
  {
    v27 = "state change available callback needs to be registered first";
    goto LABEL_25;
  }

  if (!*(a1 + 208))
  {
    v27 = "error reporting callback needs to be registered first";
    goto LABEL_25;
  }

  if (!a2)
  {
    v27 = "invalid dispatch queue parameter";
    goto LABEL_25;
  }

  if ((sub_100428E90(a1) & 1) == 0)
  {
    v27 = "unable to load booter library";
    goto LABEL_25;
  }

  v12 = IOServiceNameMatching("rose");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v12);
  if (!MatchingService)
  {
    v27 = "failed to get rose service";
    goto LABEL_25;
  }

  v14 = MatchingService;
  ChildEntry = IORegistryEntryGetChildEntry(MatchingService, "IOService", child);
  IOObjectRelease(v14);
  if (ChildEntry || (v16 = child[0]) == 0)
  {
    sub_100429514(a1);
    byte7 = ChildEntry;
    v27 = "failed to get rose driver: 0x%x";
    goto LABEL_25;
  }

  v17 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xAu, 0x3Au, 0xB3u, 0x17u, 0x88u, 0xE7u, 0x40u, 0xA0u, 0x89u, 0x68u, 0x33u, 0x55u, 0x58u, 0x14u, 0x66u, 0x63u);
  v18 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v19 = IOCreatePlugInInterfaceForService(v16, v17, v18, a1, &child[1]);
  IOObjectRelease(child[0]);
  if (v19 || (v28 = *a1) == 0)
  {
    sub_100429514(a1);
    sub_100428B48("creating rose plugin interface failed: 0x%x", v20, v21, v22, v23, v24, v25, v26, v19);
    return 0;
  }

  QueryInterface = (*v28)->QueryInterface;
  v30 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x10u, 0x3Au, 0xBDu, 0x4Au, 0x60u, 0x94u, 0x4Bu, 0xC0u, 0xAEu, 0xEEu, 0x3Eu, 0x37u, 0xF5u, 0xA2u, 0xFu, 0x3Bu);
  v31 = CFUUIDGetUUIDBytes(v30);
  (QueryInterface)(v28, *&v31.byte0, *&v31.byte8, a1 + 8);
  if (!*v10)
  {
    sub_100429514(a1);
    v27 = "failed to query rose plugin interface";
    goto LABEL_25;
  }

  (*(**v10 + 72))(*v10, a2);
  v32 = (*(**(a1 + 8) + 344))(*(a1 + 8), sub_100429570, a1);
  if (v32)
  {
    sub_100428B48("failed to register event callback: 0x%x", v33, v34, v35, v36, v37, v38, v39, v32);
  }

  else
  {
    v40 = (*(**(a1 + 8) + 392))(*(a1 + 8), sub_100429594, a1);
    if (v40)
    {
      sub_100428B48("failed to register crashHandlerCallback: 0x%x", v41, v42, v43, v44, v45, v46, v47, v40);
    }

    else
    {
      v48 = (*(**(a1 + 8) + 400))(*(a1 + 8), sub_1004295D0, a1);
      if (v48)
      {
        sub_100428B48("failed to register fwStateChangeCallback: 0x%x", v49, v50, v51, v52, v53, v54, v55, v48);
      }

      else
      {
        v56 = (*(**(a1 + 8) + 408))(*(a1 + 8), sub_100429640, a1);
        if (!v56)
        {
          return 1;
        }

        sub_100428B48("failed to register errorReportCallback: 0x%x", v57, v58, v59, v60, v61, v62, v63, v56);
      }
    }
  }

  sub_100429514(a1);
  return 0;
}

uint64_t sub_1004294DC()
{
  if (qword_1009F91F8 != -1)
  {
    sub_1004CF870();
  }

  return byte_1009F91F1;
}

IOCFPlugInInterface **sub_100429514(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 72))(v2, 0);
    (*(**(a1 + 8) + 24))(*(a1 + 8));
    *(a1 + 8) = 0;
  }

  result = *a1;
  if (*a1)
  {
    result = IODestroyPlugInInterface(result);
    *a1 = 0;
  }

  return result;
}

void sub_100429570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {

    sub_100429730(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v9 = sub_1004CF884(a1, a2, a3, a4, a5, a6, a7, a8);
    sub_100429594(v9);
  }
}

uint64_t sub_100429594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    a1 = sub_1004CF8D4(0, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_7;
  }

  if (!*(a1 + 144))
  {
LABEL_7:
    v10 = sub_1004CF8AC(a1, a2, a3, a4, a5, a6, a7, a8);
    return sub_1004295D0(v10);
  }

  v8 = a1 + 120;

  return sub_10042A418(v8, a2);
}

uint64_t sub_1004295D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    a1 = sub_1004CF924(a2, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_9;
  }

  v8 = a1;
  if (!*(a1 + 176))
  {
LABEL_9:
    v10 = sub_1004CF8FC(a1, a2, a3, a4, a5, a6, a7, a8);
    return sub_100429640(v10);
  }

  if (a2 >= 4)
  {
    sub_100428B48("RoseControllerInterface::fwStateChangeCallback() unknown state: 0x%x", a2, a3, a4, a5, a6, a7, a8, a2);
    LODWORD(a2) = 4;
  }

  return sub_10042A46C(v8 + 152, a2);
}

uint64_t sub_100429640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    a1 = sub_1004CF984(a2, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_9;
  }

  v8 = a1;
  if (!*(a1 + 208))
  {
LABEL_9:
    v12 = sub_1004CF95C(a1, a2, a3, a4, a5, a6, a7, a8);
    return sub_1004296C8(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  if (a2 >= 0xB)
  {
    sub_100428B48("errorReportCallback: UnknownError: %d", a2, a3, a4, a5, a6, a7, a8, a2);
    LODWORD(a2) = 12;
  }

  return sub_100429820(v8 + 184, a2, a3, a4);
}

uint64_t sub_1004296C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (!v8)
  {
    sub_100428B48("%s: rose not connected", a2, a3, a4, a5, a6, a7, a8, "reset");
    return 0;
  }

  v9 = (*(*v8 + 112))(v8);
  if (v9)
  {
    sub_100428B48("RoseController reset failed: 0x%x", v10, v11, v12, v13, v14, v15, v16, v9);
    return 0;
  }

  return 1;
}

void sub_100429730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && (a3 - 113) > 0xFFFFFFFFFFFFFF92)
  {
    __p = 0;
    v12 = 0;
    v13 = 0;
    sub_100009A48(&__p, a2, a2 + a3, a3);
    sub_100429880(a1 + 16, &__p, 0);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_100428B48("invalid event parameter (size: %zu)", a2, a3, a4, a5, a6, a7, a8, a3);
    if (*(a1 + 208))
    {

      sub_100429820(a1 + 184, 11, a2, a3);
    }
  }
}

void sub_100429804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100429820(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100037B10();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t sub_100429880(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100037B10();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t sub_1004298D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = 0;
  v9 = *(a1 + 8);
  if (!v9)
  {
    v19 = "driver interface not created";
LABEL_10:
    sub_100428B48(v19, a2, a3, a4, a5, a6, a7, a8, v21);
    return 0;
  }

  if (((*(a1 + 72))(v9, &v22) & 1) == 0)
  {
    v19 = "creating RoseBooter failed";
    goto LABEL_10;
  }

  v10 = (*(a1 + 80))(v22);
  if (v10)
  {
    v18 = v10;
    if ((*(a1 + 112))(v22))
    {
      return v18;
    }

    goto LABEL_9;
  }

  sub_100428B48("rose preflight failed", v11, v12, v13, v14, v15, v16, v17, v21);
  if (((*(a1 + 112))(v22) & 1) == 0)
  {
LABEL_9:
    v19 = "destroying RoseBooter failed";
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_100429988(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = -1;
  v25 = -1;
  v23 = 0;
  v9 = *(a1 + 8);
  if (v9)
  {
    if ((*(a1 + 72))(v9, &v23))
    {
      v11 = (*(a1 + 88))(v23, &v25, &v24);
      v19 = v24;
      a2[1] = v25;
      a2[2] = v19;
      *a2 = v11;
      if (v11)
      {
        sub_100428B48("rose boot failed: %d, driver state %d, status reg %d", v12, v13, v14, v15, v16, v17, v18, v11);
        if ((*(a1 + 112))(v23))
        {
          return 0;
        }
      }

      else if ((*(a1 + 112))(v23))
      {
        return 1;
      }

      v20 = "destroying RoseBooter failed";
    }

    else
    {
      v20 = "creating RoseBooter failed";
    }
  }

  else
  {
    v20 = "driver interface not created";
  }

  sub_100428B48(v20, a2, a3, a4, a5, a6, a7, a8, v22);
  return 0;
}

BOOL sub_100429A64(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = 0;
  *a3 = 0;
  if (!*(a1 + 8))
  {
    v13 = "driver interface not created";
LABEL_12:
    sub_100428B48(v13, a2, a3, a4, a5, a6, a7, a8, v24);
    return 0;
  }

  v10 = a4;
  if ((a2 - 1) > 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = dword_100572BA0[(a2 - 1)];
  }

  v25 = 0;
  if (((*(a1 + 72))() & 1) == 0)
  {
    v13 = "creating RoseBooter failed";
    goto LABEL_12;
  }

  v14 = (*(a1 + 96))(v26, v12, &v25, v10);
  *(a6 + 12) = v14;
  v22 = v14 == 0;
  if (v14)
  {
    sub_100428B48("send calibration failed: %d", v15, v16, v17, v18, v19, v20, v21, v14);
  }

  *a3 = ((v25 & 2) != 0) + (v25 & 1) + ((v25 & 4) != 0);
  if (((*(a1 + 112))(v26) & 1) == 0)
  {
    v13 = "destroying RoseBooter failed";
    goto LABEL_12;
  }

  return v22;
}

uint64_t sub_100429B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 0;
  if (!*(a1 + 8))
  {
    v18 = "driver interface not created";
    goto LABEL_11;
  }

  if ((a2 - 1) >= 3)
  {
    v18 = "please select a single cal file to retrieve";
    goto LABEL_11;
  }

  v9 = dword_100572BB0[(a2 - 1)];
  if (((*(a1 + 72))() & 1) == 0)
  {
    v18 = "creating RoseBooter failed";
    goto LABEL_11;
  }

  v17 = (*(a1 + 104))(v21, v9);
  if (!v17)
  {
    sub_100428B48("failed to get cal file", v10, v11, v12, v13, v14, v15, v16, v20);
  }

  if (((*(a1 + 112))(v21) & 1) == 0)
  {
    v18 = "destroying RoseBooter failed";
LABEL_11:
    sub_100428B48(v18, a2, a3, a4, a5, a6, a7, a8, v20);
    return 0;
  }

  return v17;
}

uint64_t sub_100429C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100025100(__p, 112);
  v13 = *(a1 + 8);
  if (!v13)
  {
    sub_100428B48("%s: rose not connected", v6, v7, v8, v9, v10, v11, v12, "send");
    goto LABEL_9;
  }

  v14 = *v13;
  if ((a4 & 0x100000000) != 0)
  {
    v23 = (*(v14 + 472))();
    if (v23)
    {
      sub_100428B48("PerformCommandWithTimeout failed: 0x%x", v16, v17, v18, v19, v20, v21, v22, v23);
      goto LABEL_9;
    }
  }

  else
  {
    v15 = (*(v14 + 264))();
    if (v15)
    {
      sub_100428B48("PerformCommand failed: 0x%x", v16, v17, v18, v19, v20, v21, v22, v15);
      goto LABEL_9;
    }
  }

  sub_100428B48("invalid response (length: %zu)", v16, v17, v18, v19, v20, v21, v22, 0);
LABEL_9:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 0;
}

void sub_100429DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100429DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 8))
  {
    v18 = "driver interface not created";
LABEL_29:
    sub_100428B48(v18, a2, a3, a4, a5, a6, a7, a8, v71);
    return 0;
  }

  if (!a2)
  {
    v18 = "invalid parameter";
    goto LABEL_29;
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v10 = (*(**(a1 + 8) + 128))(*(a1 + 8), a2 + 8);
  if (v10)
  {
    sub_100428B48("get chip id failed: 0x%x", v11, v12, v13, v14, v15, v16, v17, v10);
    return 0;
  }

  v19 = (*(**(a1 + 8) + 136))(*(a1 + 8), a2 + 10);
  if (v19)
  {
    sub_100428B48("get board id failed: 0x%x", v20, v21, v22, v23, v24, v25, v26, v19);
    return 0;
  }

  v27 = (*(**(a1 + 8) + 144))(*(a1 + 8), a2);
  if (v27)
  {
    sub_100428B48("get ecid failed: 0x%x", v28, v29, v30, v31, v32, v33, v34, v27);
    return 0;
  }

  v35 = (*(**(a1 + 8) + 200))(*(a1 + 8), a2 + 12);
  if (v35)
  {
    sub_100428B48("get boot mode failed: 0x%x", v36, v37, v38, v39, v40, v41, v42, v35);
    return 0;
  }

  v43 = (*(**(a1 + 8) + 232))(*(a1 + 8), a2 + 17);
  if (v43)
  {
    v51 = 1;
  }

  else
  {
    v51 = *(a2 + 17) >= 2u;
  }

  if (v51)
  {
    v72 = *(a2 + 17);
    sub_100428B48("get secure mode failed: 0x%08x secureMode: 0x%x", v44, v45, v46, v47, v48, v49, v50, v43);
    return 0;
  }

  v52 = (*(**(a1 + 8) + 224))(*(a1 + 8), a2 + 16);
  if (v52)
  {
    v60 = 1;
  }

  else
  {
    v60 = *(a2 + 16) >= 2u;
  }

  if (v60)
  {
    v73 = *(a2 + 16);
    sub_100428B48("get production mode failed: 0x%08x prodMode: 0x%02x", v53, v54, v55, v56, v57, v58, v59, v52);
    return 0;
  }

  v61 = (*(**(a1 + 8) + 240))(*(a1 + 8), a2 + 18);
  if (v61)
  {
    sub_100428B48("get security domain failed: 0x%08x", v62, v63, v64, v65, v66, v67, v68, v61);
    return 0;
  }

  v69 = (*(**(a1 + 8) + 360))(*(a1 + 8), a2 + 20);
  if (v69)
  {
    v71 = v69;
    v18 = "get chip revision failed: 0x%08x";
    goto LABEL_29;
  }

  return 1;
}

uint64_t sub_100429F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (!v8)
  {
    v17 = "driver interface not created";
LABEL_7:
    sub_100428B48(v17, a2, a3, a4, a5, a6, a7, a8, v19);
    return 0;
  }

  if (!a2)
  {
    v17 = "invalid time dictionary";
    goto LABEL_7;
  }

  v9 = (*(*v8 + 216))(v8);
  if (!v9)
  {
    return 1;
  }

  sub_100428B48("perform timesync failed: 0x%x", v10, v11, v12, v13, v14, v15, v16, v9);
  return 0;
}

uint64_t sub_100429FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (!v8)
  {
    v18 = "driver interface not created";
LABEL_7:
    sub_100428B48(v18, a2, a3, a4, a5, a6, a7, a8, v20);
    return 0;
  }

  if (!a6)
  {
    v18 = "Invalid arguments";
    goto LABEL_7;
  }

  if ((*(*v8 + 368))(v8))
  {
    sub_100428B48("error while trying to dequeue FirwmareCrashLogs for core - %d: 0x%x", v11, v12, v13, v14, v15, v16, v17, a2);
    return 0;
  }

  if (a3 && *(a3 + 13) != a2)
  {
    v21 = *(a3 + 13);
    sub_100428B48("Expecting a crash log for core: %d. But, got a crash log for core: %d", v11, v12, v13, v14, v15, v16, v17, a2);
    return 0;
  }

  return 1;
}

BOOL sub_10042A08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = (*(*v8 + 376))(v8);
    v18 = v10 == -536870160 || v10 == 0;
    if (v10 != -536870160 && v10 != 0)
    {
      sub_100428B48("error while trying to read the coredump information for core - %d: 0x%x", v11, v12, v13, v14, v15, v16, v17, a2);
    }
  }

  else
  {
    sub_100428B48("driver interface not created", a2, a3, a4, a5, a6, a7, a8, v21);
    return 0;
  }

  return v18;
}

uint64_t sub_10042A110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (!v8)
  {
    sub_100428B48("driver interface not created", a2, a3, a4, a5, a6, a7, a8, v18);
    return 0;
  }

  if ((*(*v8 + 384))(v8))
  {
    sub_100428B48("error while trying to read the coredump for core - %d: 0x%x", v10, v11, v12, v13, v14, v15, v16, a2);
    return 0;
  }

  return 1;
}

uint64_t sub_10042A178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (!v8)
  {
    sub_100428B48("driver interface not created", a2, a3, a4, a5, a6, a7, a8, v18);
    return 0;
  }

  v9 = (*(*v8 + 280))(v8);
  if (v9)
  {
    sub_100428B48("error while trying to pause firmware logs: 0x%x", v10, v11, v12, v13, v14, v15, v16, v9);
    return 0;
  }

  return 1;
}

uint64_t sub_10042A1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (!v8)
  {
    sub_100428B48("driver interface not created", a2, a3, a4, a5, a6, a7, a8, v18);
    return 0;
  }

  v9 = (*(*v8 + 296))(v8);
  if (v9)
  {
    sub_100428B48("error while trying to resume firmware logs: 0x%x", v10, v11, v12, v13, v14, v15, v16, v9);
    return 0;
  }

  return 1;
}

uint64_t sub_10042A230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (!v8)
  {
    v17 = "driver interface not created";
LABEL_9:
    sub_100428B48(v17, a2, a3, a4, a5, a6, a7, a8, v19);
    return 0;
  }

  if (!a2 || !a3 || !a4)
  {
    v17 = "Invalid arguments";
    goto LABEL_9;
  }

  v9 = (*(*v8 + 288))(v8);
  if (!v9)
  {
    return 1;
  }

  sub_100428B48("error while trying to dequeue FirwmareCrashLogs: 0x%x", v10, v11, v12, v13, v14, v15, v16, v9);
  return 0;
}

void *sub_10042A2AC(void *a1, uint64_t a2)
{
  sub_10042ABD0(v4, a2);
  sub_10042AC68(v4, a1);
  sub_10042AA50(v4);
  return a1;
}

void *sub_10042A328(void *a1, uint64_t a2)
{
  sub_10042AECC(v4, a2);
  sub_10042AF64(v4, a1);
  sub_10042AAD0(v4);
  return a1;
}

void *sub_10042A3A4(void *a1, uint64_t a2)
{
  sub_10042B1C8(v4, a2);
  sub_10042B260(v4, a1);
  sub_10042AB50(v4);
  return a1;
}

uint64_t sub_10042A418(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10042A46C(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10042A4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (!v8)
  {
    sub_100428B48("driver interface not created", a2, a3, a4, a5, a6, a7, a8, v18);
    return 0;
  }

  v9 = (*(*v8 + 352))(v8);
  if (v9)
  {
    sub_100428B48("error while trying to trigger a crashlog: 0x%x", v10, v11, v12, v13, v14, v15, v16, v9);
    return 0;
  }

  return 1;
}

uint64_t sub_10042A51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (!v8)
  {
    v10 = "driver interface not created";
LABEL_7:
    sub_100428B48(v10, a2, a3, a4, a5, a6, a7, a8, v12);
    return 4;
  }

  v13 = 0;
  v9 = (*(*v8 + 312))(v8, &v13);
  if (!v9)
  {
    result = v13;
    if (v13 < 4u)
    {
      return result;
    }

    v12 = v13;
    v10 = "RoseControllerInterface::getFirmwareState() unknown state: 0x%x";
    goto LABEL_7;
  }

  sub_100428B48("error while trying to get the firmware state: 0x%x", a2, a3, a4, a5, a6, a7, a8, v9);
  return 4;
}

void sub_10042A594(id a1)
{
  v1 = IOServiceNameMatching("rose");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  if (!MatchingService)
  {
    v12 = "failed to find rose service";
LABEL_6:
    sub_100428B48(v12, v3, v4, v5, v6, v7, v8, v9, v13);
    v11 = 0;
    goto LABEL_7;
  }

  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"ECID", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    v12 = "rose ECID property not found in registry";
    goto LABEL_6;
  }

  CFRelease(CFProperty);
  v11 = 1;
LABEL_7:
  byte_1009F91F1 = v11;
}

uint64_t sub_10042A628(uint64_t a1, _BYTE *a2)
{
  if ((sub_100428E90(a1) & 1) == 0)
  {
    sub_100005D28("couldn't load booter library, so we are answering to the best of our ability", v4, v5, v6, v7, v8, v9, v10, v22);
    LOBYTE(v20) = 0;
    goto LABEL_5;
  }

  v11 = (*(a1 + 56))();
  v12 = v11;
  sub_100005D28("fail forward state %d", v13, v14, v15, v16, v17, v18, v19, v11);
  if ((v12 - 1) <= 2)
  {
    v20 = 0x10001u >> (8 * (v12 - 1));
LABEL_5:
    *a2 = v20;
    return 1;
  }

  return 0;
}

uint64_t sub_10042A6B4(uint64_t a1)
{
  if (sub_100428E90(a1))
  {
    v9 = *(a1 + 64);

    return v9();
  }

  else
  {
    sub_100005D28("couldn't load booter library, so we are answering to the best of our ability", v2, v3, v4, v5, v6, v7, v8, v11);
    return 0;
  }
}

uint64_t sub_10042A70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (!v8)
  {
    sub_100428B48("driver interface not created", a2, a3, a4, a5, a6, a7, a8, v18);
    return 0;
  }

  v9 = (*(*v8 + 440))(v8);
  if (v9)
  {
    sub_100428B48("error while trying to deallocate firmware log cache: 0x%x", v10, v11, v12, v13, v14, v15, v16, v9);
    return 0;
  }

  sub_100005D28("successfully deallocated firmware log cache", v10, v11, v12, v13, v14, v15, v16, v18);
  return 1;
}

uint64_t sub_10042A774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (!v8)
  {
    sub_100428B48("driver interface not created", a2, a3, a4, a5, a6, a7, a8, v18);
    return 0;
  }

  v9 = (*(*v8 + 416))(v8);
  if (v9)
  {
    sub_100428B48("error while trying to SetPowerState : 0x%x", v10, v11, v12, v13, v14, v15, v16, v9);
    return 0;
  }

  return 1;
}

uint64_t sub_10042A7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = a2;
    v10 = (*(*v8 + 464))(v8);
    if (!v10)
    {
      return 1;
    }

    if (v10 == -536870203)
    {
      v11 = "off";
      if (v9)
      {
        v11 = "on";
      }

      sub_100005D28("deep sleep state %s was requested, which was already the current state, so the request was a no-op", a2, a3, a4, a5, a6, a7, a8, v11);
      return 1;
    }

    v14 = v10;
    v13 = "error while trying to SetDeepSleepState : 0x%x";
  }

  else
  {
    v13 = "driver interface not created";
  }

  sub_100428B48(v13, a2, a3, a4, a5, a6, a7, a8, v14);
  return 0;
}

uint64_t sub_10042A870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (!v8)
  {
    v17 = "driver interface not created";
LABEL_7:
    sub_100428B48(v17, a2, a3, a4, a5, a6, a7, a8, v19);
    return 0;
  }

  if (!a2)
  {
    v17 = "invalid time dictionary";
    goto LABEL_7;
  }

  v9 = (*(*v8 + 256))(v8);
  if (!v9)
  {
    return 1;
  }

  sub_100428B48("error getting debug info: 0x%x", v10, v11, v12, v13, v14, v15, v16, v9);
  return 0;
}

CFDataRef sub_10042A8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = 0;
  v21 = 0;
  v8 = *(a1 + 8);
  if (!v8)
  {
    v17 = "driver interface not created";
LABEL_14:
    sub_100428B48(v17, a2, a3, a4, a5, a6, a7, a8, v19);
    return 0;
  }

  v9 = (*(*v8 + 448))(v8, kCFAllocatorDefault, &v21, &v20);
  if (v9)
  {
    v15 = 1;
  }

  else
  {
    v15 = v21 == 0;
  }

  if (v15 || v20 == 0)
  {
    sub_100428B48("get sik public key failed: 0x%x, size %zu", v21, v20, v10, v11, v12, v13, v14, v9);
    return 0;
  }

  result = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v21, v20, kCFAllocatorDefault);
  if (!result)
  {
    v17 = "failed to package sik public key";
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_10042A980(uint64_t a1)
{
  sub_100429514(a1);
  sub_10042AB50(a1 + 184);
  sub_10042AAD0(a1 + 152);
  sub_10042AA50(a1 + 120);
  sub_10042A9D0(a1 + 16);
  return a1;
}

uint64_t sub_10042A9D0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10042AA50(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10042AAD0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10042AB50(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10042ABD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10042AC68(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_10042AEC0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

uint64_t sub_10042AECC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10042AF64(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_10042B1BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

uint64_t sub_10042B1C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10042B260(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_10042B4B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

void sub_10042B4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __chkstk_darwin(a1, a2, a3);
  v5 = v4;
  v6 = 0;
  if (v3 <= 201)
  {
    if ((v3 - 122) >= 5 && (v3 - 24) >= 4)
    {
      goto LABEL_12;
    }

LABEL_11:
    v6 = 1;
    goto LABEL_12;
  }

  if (v3 != 999 && v3 != 997)
  {
    if (v3 != 202)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CF9BC(v7);
  }

  v6 = 0;
LABEL_12:
  sub_100004A08(v1955, "US");
  sub_100004A08(v1949, "United States");
  sub_100004A08(v1951, "US");
  v1953 = 257;
  v1954 = 0;
  sub_100439B9C(v1957, v1955, v1949);
  sub_100004A08(v1947, "CA");
  sub_100004A08(v1941, "Canada");
  sub_100004A08(&v1943, "CA");
  v1945 = 257;
  v1946 = 0;
  sub_100439B9C(v1958, v1947, v1941);
  sub_100004A08(v1939, "MX");
  sub_100004A08(v1933, "Mexico");
  sub_100004A08(&v1935, "MX");
  v1937 = 257;
  v1938 = 0;
  sub_100439B9C(v1959, v1939, v1933);
  sub_100004A08(v1931, "SV");
  sub_100004A08(v1925, "El Salvador");
  sub_100004A08(&v1927, "SV");
  v1929 = 257;
  v1930 = 0;
  sub_100439B9C(v1960, v1931, v1925);
  sub_100004A08(v1923, "CO");
  sub_100004A08(v1917, "Colombia");
  sub_100004A08(&v1919, "CO");
  v1921 = 257;
  v1922 = 0;
  sub_100439B9C(v1961, v1923, v1917);
  sub_100004A08(v1915, "PR");
  sub_100004A08(v1909, "Puerto Rico");
  sub_100004A08(&v1911, "PR");
  v1913 = 257;
  v1914 = 0;
  sub_100439B9C(v1962, v1915, v1909);
  sub_100004A08(v1907, "CR");
  sub_100004A08(v1901, "Costa Rica");
  sub_100004A08(&v1903, "CR");
  v1905 = 257;
  v1906 = 0;
  sub_100439B9C(v1963, v1907, v1901);
  sub_100004A08(v1899, "EC");
  sub_100004A08(v1893, "Ecuador");
  sub_100004A08(&v1895, "EC");
  v1897 = 257;
  v1898 = 0;
  sub_100439B9C(v1964, v1899, v1893);
  sub_100004A08(v1891, "AR");
  sub_100004A08(v1885, "Argentina");
  sub_100004A08(&v1887, "AR");
  v1889 = 257;
  v1890 = 7;
  sub_100439B9C(v1965, v1891, v1885);
  sub_100004A08(v1883, "VI");
  sub_100004A08(v1877, "US Virgin Islands");
  sub_100004A08(&v1879, "VI");
  v1881 = 257;
  v1882 = 0;
  sub_100439B9C(v1966, v1883, v1877);
  sub_100004A08(v1875, "GT");
  sub_100004A08(v1869, "Guatemala");
  sub_100004A08(&v1871, "GT");
  v1873 = 257;
  v1874 = 0;
  sub_100439B9C(v1967, v1875, v1869);
  sub_100004A08(v1867, "BR");
  sub_100004A08(v1861, "Brazil");
  sub_100004A08(&v1863, "BR");
  v1865 = 257;
  v1866 = 0;
  sub_100439B9C(v1968, v1867, v1861);
  sub_100004A08(v1859, "UM");
  sub_100004A08(v1853, "United States Minor Outlying Islands");
  sub_100004A08(&v1855, "UM");
  v1857 = 257;
  v1858 = 0;
  sub_100439B9C(v1969, v1859, v1853);
  sub_100004A08(v1851, "JP");
  sub_100004A08(v1845, "Japan");
  sub_100004A08(&v1847, "JP");
  v1849 = 256;
  v1850 = 4;
  sub_100439B9C(v1970, v1851, v1845);
  sub_100004A08(v1843, "AT");
  sub_100004A08(v1837, "Austria");
  sub_100004A08(&v1839, "AT");
  v1841 = 257;
  v1842 = 1;
  sub_100439B9C(v1971, v1843, v1837);
  sub_100004A08(v1835, "BE");
  sub_100004A08(v1829, "Belgium");
  sub_100004A08(&v1831, "BE");
  v1833 = 257;
  v1834 = 1;
  sub_100439B9C(v1972, v1835, v1829);
  sub_100004A08(v1827, "BG");
  sub_100004A08(v1821, "Bulgaria");
  sub_100004A08(&v1823, "BG");
  v1825 = 257;
  v1826 = 1;
  sub_100439B9C(v1973, v1827, v1821);
  sub_100004A08(v1819, "CY");
  sub_100004A08(v1813, "Cyprus");
  sub_100004A08(&v1815, "CY");
  v1817 = 257;
  v1818 = 1;
  sub_100439B9C(v1974, v1819, v1813);
  sub_100004A08(v1811, "CZ");
  sub_100004A08(v1805, "Czech Republic");
  sub_100004A08(&v1807, "CZ");
  v1809 = 257;
  v1810 = 1;
  sub_100439B9C(v1975, v1811, v1805);
  sub_100004A08(v1803, "DK");
  sub_100004A08(v1797, "Denmark");
  sub_100004A08(&v1799, "DK");
  v1801 = 257;
  v1802 = 1;
  sub_100439B9C(v1976, v1803, v1797);
  sub_100004A08(v1795, "EE");
  sub_100004A08(v1789, "Estonia");
  sub_100004A08(&v1791, "EE");
  v1793 = 257;
  v1794 = 1;
  sub_100439B9C(v1977, v1795, v1789);
  sub_100004A08(v1787, "FR");
  sub_100004A08(v1781, "France");
  sub_100004A08(&v1783, "FR");
  v1785 = 257;
  v1786 = 1;
  sub_100439B9C(v1978, v1787, v1781);
  sub_100004A08(v1779, "FI");
  sub_100004A08(v1773, "Finland");
  sub_100004A08(&v1775, "FI");
  v1777 = 257;
  v1778 = 1;
  sub_100439B9C(v1979, v1779, v1773);
  sub_100004A08(v1771, "DE");
  sub_100004A08(v1765, "Germany");
  sub_100004A08(&v1767, "DE");
  v1769 = 257;
  v1770 = 1;
  sub_100439B9C(v1980, v1771, v1765);
  sub_100004A08(v1763, "GR");
  sub_100004A08(v1757, "Greece");
  sub_100004A08(&v1759, "GR");
  v1761 = 257;
  v1762 = 1;
  sub_100439B9C(v1981, v1763, v1757);
  sub_100004A08(v1755, "HU");
  sub_100004A08(v1749, "Hungary");
  sub_100004A08(&v1751, "HU");
  v1753 = 257;
  v1754 = 1;
  sub_100439B9C(v1982, v1755, v1749);
  sub_100004A08(v1747, "IS");
  sub_100004A08(v1741, "Iceland");
  sub_100004A08(&v1743, "IS");
  v1745 = 257;
  v1746 = 1;
  sub_100439B9C(v1983, v1747, v1741);
  sub_100004A08(v1739, "IT");
  sub_100004A08(v1733, "Italy");
  sub_100004A08(&v1735, "IT");
  v1737 = 257;
  v1738 = 1;
  sub_100439B9C(v1984, v1739, v1733);
  sub_100004A08(v1731, "IE");
  sub_100004A08(v1725, "Ireland");
  sub_100004A08(&v1727, "IE");
  v1729 = 257;
  v1730 = 1;
  sub_100439B9C(v1985, v1731, v1725);
  sub_100004A08(v1723, "LV");
  sub_100004A08(v1717, "Latvia");
  sub_100004A08(&v1719, "LV");
  v1721 = 257;
  v1722 = 1;
  sub_100439B9C(v1986, v1723, v1717);
  sub_100004A08(v1715, "LI");
  sub_100004A08(v1709, "Liechtenstein");
  sub_100004A08(&v1711, "LI");
  v1713 = 257;
  v1714 = 1;
  sub_100439B9C(v1987, v1715, v1709);
  sub_100004A08(v1707, "LT");
  sub_100004A08(v1701, "Lithuania");
  sub_100004A08(&v1703, "LT");
  v1705 = 257;
  v1706 = 1;
  sub_100439B9C(v1988, v1707, v1701);
  sub_100004A08(v1699, "LU");
  sub_100004A08(v1693, "Luxembourg");
  sub_100004A08(&v1695, "LU");
  v1697 = 257;
  v1698 = 1;
  sub_100439B9C(v1989, v1699, v1693);
  sub_100004A08(v1691, "MT");
  sub_100004A08(v1685, "Malta");
  sub_100004A08(&v1687, "MT");
  v1689 = 257;
  v1690 = 1;
  sub_100439B9C(v1990, v1691, v1685);
  sub_100004A08(v1683, "NL");
  sub_100004A08(v1677, "Netherlands");
  sub_100004A08(&v1679, "NL");
  v1681 = 257;
  v1682 = 1;
  sub_100439B9C(v1991, v1683, v1677);
  sub_100004A08(v1675, "NO");
  sub_100004A08(v1669, "Norway");
  sub_100004A08(&v1671, "NO");
  v1673 = 257;
  v1674 = 1;
  sub_100439B9C(v1992, v1675, v1669);
  sub_100004A08(v1667, "PL");
  sub_100004A08(v1661, "Poland");
  sub_100004A08(&v1663, "PL");
  v1665 = 257;
  v1666 = 1;
  sub_100439B9C(v1993, v1667, v1661);
  sub_100004A08(v1659, "PT");
  sub_100004A08(v1653, "Portugal");
  sub_100004A08(&v1655, "PT");
  v1657 = 257;
  v1658 = 1;
  sub_100439B9C(v1994, v1659, v1653);
  sub_100004A08(v1651, "RO");
  sub_100004A08(v1645, "Romania");
  sub_100004A08(&v1647, "RO");
  v1649 = 257;
  v1650 = 1;
  sub_100439B9C(v1995, v1651, v1645);
  sub_100004A08(v1643, "SK");
  sub_100004A08(v1637, "Slovak Republic");
  sub_100004A08(&v1639, "SK");
  v1641 = 257;
  v1642 = 1;
  sub_100439B9C(v1996, v1643, v1637);
  sub_100004A08(v1635, "SI");
  sub_100004A08(v1629, "Slovenia");
  sub_100004A08(&v1631, "SI");
  v1633 = 257;
  v1634 = 1;
  sub_100439B9C(v1997, v1635, v1629);
  sub_100004A08(v1627, "ES");
  sub_100004A08(v1621, "Spain");
  sub_100004A08(&v1623, "ES");
  v1625 = 257;
  v1626 = 1;
  sub_100439B9C(v1998, v1627, v1621);
  sub_100004A08(v1619, "SE");
  sub_100004A08(v1613, "Sweden");
  sub_100004A08(&v1615, "SE");
  v1617 = 257;
  v1618 = 1;
  sub_100439B9C(v1999, v1619, v1613);
  sub_100004A08(v1611, "CH");
  sub_100004A08(v1605, "Switzerland");
  sub_100004A08(&v1607, "CH");
  v1609 = 257;
  v1610 = 1;
  sub_100439B9C(v2000, v1611, v1605);
  sub_100004A08(v1603, "GB");
  sub_100004A08(v1597, "United Kingdom");
  sub_100004A08(&v1599, "GB");
  v1601 = 257;
  v1602 = 1;
  sub_100439B9C(v2001, v1603, v1597);
  sub_100004A08(v1595, "ZA");
  sub_100004A08(v1589, "South Africa");
  sub_100004A08(&v1591, "ZA");
  v1593 = 257;
  v1594 = 1;
  sub_100439B9C(v2002, v1595, v1589);
  sub_100004A08(v1587, "TR");
  sub_100004A08(v1581, "Turkey");
  sub_100004A08(&v1583, "TR");
  v1585 = 257;
  v1586 = 1;
  sub_100439B9C(v2003, v1587, v1581);
  sub_100004A08(v1579, "AE");
  sub_100004A08(v1573, "United Arab Emirates");
  sub_100004A08(&v1575, "AE");
  v1577 = 257;
  v1578 = 1;
  sub_100439B9C(v2004, v1579, v1573);
  sub_100004A08(v1571, "SA");
  sub_100004A08(v1565, "Saudi Arabia");
  sub_100004A08(&v1567, "SA");
  v1569 = 257;
  v1570 = 1;
  sub_100439B9C(v2005, v1571, v1565);
  sub_100004A08(v1563, "HR");
  sub_100004A08(v1557, "Croatia");
  sub_100004A08(&v1559, "HR");
  v1561 = 257;
  v1562 = 1;
  sub_100439B9C(v2006, v1563, v1557);
  sub_100004A08(v1555, "RS");
  sub_100004A08(v1549, "Serbia");
  sub_100004A08(&v1551, "RS");
  v1553 = 257;
  v1554 = 1;
  sub_100439B9C(v2007, v1555, v1549);
  sub_100004A08(v1547, "AU");
  sub_100004A08(v1541, "Australia");
  sub_100004A08(&v1543, "AU");
  v1545 = 257;
  v1546 = 1;
  sub_100439B9C(v2008, v1547, v1541);
  sub_100004A08(v1539, "HK");
  sub_100004A08(v1533, "Hong Kong");
  sub_100004A08(&v1535, "HK");
  v1537 = 257;
  v1538 = 1;
  sub_100439B9C(v2009, v1539, v1533);
  sub_100004A08(v1531, "NZ");
  sub_100004A08(v1525, "New Zealand");
  sub_100004A08(&v1527, "NZ");
  v1529 = 257;
  v1530 = 1;
  sub_100439B9C(v2010, v1531, v1525);
  sub_100004A08(v1523, "SG");
  sub_100004A08(v1517, "Singapore");
  sub_100004A08(&v1519, "SG");
  v1521 = 257;
  v1522 = 1;
  sub_100439B9C(v2011, v1523, v1517);
  sub_100004A08(v1515, "MY");
  sub_100004A08(v1509, "Malaysia");
  sub_100004A08(&v1511, "MY");
  v1513 = 257;
  v1514 = 1;
  sub_100439B9C(v2012, v1515, v1509);
  sub_100004A08(v1507, "VN");
  sub_100004A08(v1501, "Vietnam");
  sub_100004A08(&v1503, "VN");
  v1505 = 256;
  v1506 = 1;
  sub_100439B9C(v2013, v1507, v1501);
  sub_100004A08(v1499, "BN");
  sub_100004A08(v1493, "Brunei");
  sub_100004A08(&v1495, "BN");
  v1497 = 257;
  v1498 = 1;
  sub_100439B9C(v2014, v1499, v1493);
  sub_100004A08(v1491, "TH");
  sub_100004A08(v1485, "Thailand");
  sub_100004A08(&v1487, "TH");
  v1489 = 257;
  v1490 = 1;
  sub_100439B9C(v2015, v1491, v1485);
  sub_100004A08(v1483, "KH");
  sub_100004A08(v1477, "Cambodia");
  sub_100004A08(&v1479, "KH");
  v1481 = 257;
  v1482 = 1;
  sub_100439B9C(v2016, v1483, v1477);
  sub_100004A08(v1475, "LA");
  sub_100004A08(v1469, "Laos");
  sub_100004A08(&v1471, "LA");
  v1473 = 257;
  v1474 = 1;
  sub_100439B9C(v2017, v1475, v1469);
  sub_100004A08(v1467, "MM");
  sub_100004A08(v1461, "Myanmar");
  sub_100004A08(&v1463, "MM");
  v1465 = 257;
  v1466 = 1;
  sub_100439B9C(v2018, v1467, v1461);
  sub_100004A08(v1459, "CN");
  sub_100004A08(v1453, "China");
  sub_100004A08(&v1455, "CN");
  v1457 = 256;
  v1458 = 3;
  sub_100439B9C(v2019, v1459, v1453);
  sub_100004A08(v1451, "TW");
  sub_100004A08(v1445, "Taiwan");
  sub_100004A08(&v1447, "TW");
  v1449 = 257;
  v1450 = 2;
  sub_100439B9C(v2020, v1451, v1445);
  sub_100004A08(v1443, "PK");
  sub_100004A08(v1437, "Pakistan");
  sub_100004A08(&v1439, "PK");
  v1441 = 257;
  v1442 = 1;
  sub_100439B9C(v2021, v1443, v1437);
  sub_100004A08(v1435, "BD");
  sub_100004A08(v1429, "Bangladesh");
  sub_100004A08(&v1431, "BD");
  v1433 = 257;
  v1434 = 1;
  sub_100439B9C(v2022, v1435, v1429);
  sub_100004A08(v1427, "KR");
  sub_100004A08(v1421, "South Korea");
  sub_100004A08(&v1423, "KR");
  v1425 = 256;
  v1426 = 5;
  sub_100439B9C(v2023, v1427, v1421);
  sub_100004A08(v1419, "CL");
  sub_100004A08(v1413, "Chile");
  sub_100004A08(&v1415, "CL");
  v1417 = 257;
  v1418 = 0;
  sub_100439B9C(v2024, v1419, v1413);
  sub_100004A08(v1411, "PA");
  sub_100004A08(v1405, "Panama");
  sub_100004A08(&v1407, "PA");
  v1409 = 257;
  v1410 = 0;
  sub_100439B9C(v2025, v1411, v1405);
  sub_100004A08(v1403, "VE");
  sub_100004A08(v1397, "Venezuela");
  sub_100004A08(&v1399, "VE");
  v1401 = 257;
  v1402 = 0;
  sub_100439B9C(v2026, v1403, v1397);
  sub_100004A08(v1395, "UY");
  sub_100004A08(v1389, "Uruguay");
  sub_100004A08(&v1391, "UY");
  v1393 = 257;
  v1394 = 0;
  sub_100439B9C(v2027, v1395, v1389);
  sub_100004A08(v1387, "LK");
  sub_100004A08(v1381, "Sri Lanka");
  sub_100004A08(&v1383, "LK");
  v1385 = 257;
  v1386 = 1;
  sub_100439B9C(v2028, v1387, v1381);
  sub_100004A08(v1379, "MV");
  sub_100004A08(v1373, "Maldives");
  sub_100004A08(&v1375, "MV");
  v1377 = 257;
  v1378 = 1;
  sub_100439B9C(v2029, v1379, v1373);
  sub_100004A08(v1371, "AF");
  sub_100004A08(v1365, "Afghanistan");
  sub_100004A08(&v1367, "AF");
  v1369 = 257;
  v1370 = 1;
  sub_100439B9C(v2030, v1371, v1365);
  sub_100004A08(v1363, "MN");
  sub_100004A08(v1357, "Mongolia");
  sub_100004A08(&v1359, "MN");
  v1361 = 257;
  v1362 = 1;
  sub_100439B9C(v2031, v1363, v1357);
  sub_100004A08(v1355, "BT");
  sub_100004A08(v1349, "Bhutan");
  sub_100004A08(&v1351, "BT");
  v1353 = 257;
  v1354 = 1;
  sub_100439B9C(v2032, v1355, v1349);
  sub_100004A08(v1347, "MO");
  sub_100004A08(v1341, "Macau");
  sub_100004A08(&v1343, "MO");
  v1345 = 257;
  v1346 = 1;
  sub_100439B9C(v2033, v1347, v1341);
  sub_100004A08(v1339, "IN");
  sub_100004A08(v1333, "India");
  sub_100004A08(&v1335, "IN");
  v1337 = 257;
  v1338 = 1;
  sub_100439B9C(v2034, v1339, v1333);
  sub_100004A08(v1331, "PH");
  sub_100004A08(v1325, "Philippines");
  sub_100004A08(&v1327, "PH");
  v1329 = 257;
  v1330 = 1;
  sub_100439B9C(v2035, v1331, v1325);
  sub_100004A08(v1323, "PE");
  sub_100004A08(v1317, "Peru");
  sub_100004A08(&v1319, "PE");
  v1321 = 257;
  v1322 = 0;
  sub_100439B9C(v2036, v1323, v1317);
  sub_100004A08(v1315, "DO");
  sub_100004A08(v1309, "Dominican Republic");
  sub_100004A08(&v1311, "DO");
  v1313 = 257;
  v1314 = 0;
  sub_100439B9C(v2037, v1315, v1309);
  sub_100004A08(v1307, "GU");
  sub_100004A08(v1301, "Guam");
  sub_100004A08(&v1303, "GU");
  v1305 = 257;
  v1306 = 0;
  sub_100439B9C(v2038, v1307, v1301);
  sub_100004A08(v1299, "FJ");
  sub_100004A08(v1293, "Fiji");
  sub_100004A08(&v1295, "FJ");
  v1297 = 257;
  v1298 = 1;
  sub_100439B9C(v2039, v1299, v1293);
  sub_100004A08(v1291, "NC");
  sub_100004A08(v1285, "New Caledonia");
  sub_100004A08(&v1287, "NC");
  v1289 = 257;
  v1290 = 1;
  sub_100439B9C(v2040, v1291, v1285);
  sub_100004A08(v1283, "PG");
  sub_100004A08(v1277, "Papua New Guinea");
  sub_100004A08(&v1279, "PG");
  v1281 = 257;
  v1282 = 1;
  sub_100439B9C(v2041, v1283, v1277);
  sub_100004A08(v1275, "WS");
  sub_100004A08(v1269, "Samoa");
  sub_100004A08(&v1271, "WS");
  v1273 = 257;
  v1274 = 1;
  sub_100439B9C(v2042, v1275, v1269);
  sub_100004A08(v1267, "VU");
  sub_100004A08(v1261, "Vanuatu");
  sub_100004A08(&v1263, "VU");
  v1265 = 257;
  v1266 = 1;
  sub_100439B9C(v2043, v1267, v1261);
  sub_100004A08(v1259, "RU");
  sub_100004A08(v1253, "Russia");
  sub_100004A08(&v1255, "RU");
  v1257 = 0;
  v1258 = 6;
  sub_100439B9C(v2044, v1259, v1253);
  sub_100004A08(v1251, "IL");
  sub_100004A08(v1245, "Israel");
  sub_100004A08(&v1247, "IL");
  v1249 = 257;
  v1250 = 1;
  sub_100439B9C(v2045, v1251, v1245);
  sub_100004A08(v1243, "EG");
  sub_100004A08(v1237, "Egypt");
  sub_100004A08(&v1239, "EG");
  v1241 = 257;
  v1242 = 1;
  sub_100439B9C(v2046, v1243, v1237);
  sub_100004A08(v1235, "KW");
  sub_100004A08(v1229, "Kuwait");
  sub_100004A08(&v1231, "KW");
  v1233 = 257;
  v1234 = 1;
  sub_100439B9C(v2047, v1235, v1229);
  sub_100004A08(v1227, "MA");
  sub_100004A08(v1221, "Morocco");
  sub_100004A08(&v1223, "MA");
  v1225 = 257;
  v1226 = 1;
  sub_100439B9C(v2048, v1227, v1221);
  sub_100004A08(v1219, "UA");
  sub_100004A08(v1213, "Ukraine");
  sub_100004A08(&v1215, "UA");
  v1217 = 0;
  v1218 = 6;
  sub_100439B9C(v2049, v1219, v1213);
  sub_100004A08(v1211, "BY");
  sub_100004A08(v1205, "Belarus");
  sub_100004A08(&v1207, "BY");
  v1209 = 0;
  v1210 = 6;
  sub_100439B9C(v2050, v1211, v1205);
  sub_100004A08(v1203, "AZ");
  sub_100004A08(v1197, "Azerbaijan");
  sub_100004A08(&v1199, "AZ");
  v1201 = 0;
  v1202 = 6;
  sub_100439B9C(v2051, v1203, v1197);
  sub_100004A08(v1195, "KZ");
  sub_100004A08(v1189, "Kazakhstan");
  sub_100004A08(&v1191, "KZ");
  v1193 = 0;
  v1194 = 6;
  sub_100439B9C(v2052, v1195, v1189);
  sub_100004A08(v1187, "HN");
  sub_100004A08(v1181, "Honduras");
  sub_100004A08(&v1183, "HN");
  v1185 = 257;
  v1186 = 0;
  sub_100439B9C(v2053, v1187, v1181);
  sub_100004A08(v1179, "AI");
  sub_100004A08(v1173, "Anguilla");
  sub_100004A08(&v1175, "AI");
  v1177 = 257;
  v1178 = 0;
  sub_100439B9C(v2054, v1179, v1173);
  sub_100004A08(v1171, "AG");
  sub_100004A08(v1165, "Antigua/Barbuda");
  sub_100004A08(&v1167, "AG");
  v1169 = 257;
  v1170 = 0;
  sub_100439B9C(v2055, v1171, v1165);
  sub_100004A08(v1163, "AW");
  sub_100004A08(v1157, "Aruba");
  sub_100004A08(&v1159, "AW");
  v1161 = 257;
  v1162 = 0;
  sub_100439B9C(v2056, v1163, v1157);
  sub_100004A08(v1155, "BS");
  sub_100004A08(v1149, "Bahamas");
  sub_100004A08(&v1151, "BS");
  v1153 = 257;
  v1154 = 0;
  sub_100439B9C(v2057, v1155, v1149);
  sub_100004A08(v1147, "BB");
  sub_100004A08(v1141, "Barbados");
  sub_100004A08(&v1143, "BB");
  v1145 = 257;
  v1146 = 0;
  sub_100439B9C(v2058, v1147, v1141);
  sub_100004A08(v1139, "BM");
  sub_100004A08(v1133, "Bermuda");
  sub_100004A08(&v1135, "BM");
  v1137 = 257;
  v1138 = 0;
  sub_100439B9C(v2059, v1139, v1133);
  sub_100004A08(v1131, "VG");
  sub_100004A08(v1125, "British Virgin Islands");
  sub_100004A08(&v1127, "VG");
  v1129 = 257;
  v1130 = 0;
  sub_100439B9C(v2060, v1131, v1125);
  sub_100004A08(v1123, "KY");
  sub_100004A08(v1117, "Cayman Islands");
  sub_100004A08(&v1119, "KY");
  v1121 = 257;
  v1122 = 0;
  sub_100439B9C(v2061, v1123, v1117);
  sub_100004A08(v1115, "DM");
  sub_100004A08(v1109, "Dominica");
  sub_100004A08(&v1111, "DM");
  v1113 = 257;
  v1114 = 0;
  sub_100439B9C(v2062, v1115, v1109);
  sub_100004A08(v1107, "GD");
  sub_100004A08(v1101, "Grenada");
  sub_100004A08(&v1103, "GD");
  v1105 = 257;
  v1106 = 0;
  sub_100439B9C(v2063, v1107, v1101);
  sub_100004A08(v1099, "MS");
  sub_100004A08(v1093, "Montserrat");
  sub_100004A08(&v1095, "MS");
  v1097 = 257;
  v1098 = 0;
  sub_100439B9C(v2064, v1099, v1093);
  sub_100004A08(v1091, "NI");
  sub_100004A08(v1085, "Nicaragua");
  sub_100004A08(&v1087, "NI");
  v1089 = 257;
  v1090 = 0;
  sub_100439B9C(v2065, v1091, v1085);
  sub_100004A08(v1083, "KN");
  sub_100004A08(v1077, "St Kitts/Nevis");
  sub_100004A08(&v1079, "KN");
  v1081 = 257;
  v1082 = 0;
  sub_100439B9C(v2066, v1083, v1077);
  sub_100004A08(v1075, "LC");
  sub_100004A08(v1069, "St Lucia");
  sub_100004A08(&v1071, "LC");
  v1073 = 257;
  v1074 = 0;
  sub_100439B9C(v2067, v1075, v1069);
  sub_100004A08(v1067, "VC");
  sub_100004A08(v1061, "St Vincent/Grenadines");
  sub_100004A08(&v1063, "VC");
  v1065 = 257;
  v1066 = 0;
  sub_100439B9C(v2068, v1067, v1061);
  sub_100004A08(v1059, "TC");
  sub_100004A08(v1053, "Turks and Caicos");
  sub_100004A08(&v1055, "TC");
  v1057 = 257;
  v1058 = 0;
  sub_100439B9C(v2069, v1059, v1053);
  sub_100004A08(v1051, "BO");
  sub_100004A08(v1045, "Bolivia");
  sub_100004A08(&v1047, "BO");
  v1049 = 257;
  v1050 = 0;
  sub_100439B9C(v2070, v1051, v1045);
  sub_100004A08(v1043, "JM");
  sub_100004A08(v1037, "Jamaica");
  sub_100004A08(&v1039, "JM");
  v1041 = 257;
  v1042 = 0;
  sub_100439B9C(v2071, v1043, v1037);
  sub_100004A08(v1035, "PY");
  sub_100004A08(v1029, "Paraguay");
  sub_100004A08(&v1031, "PY");
  v1033 = 257;
  v1034 = 0;
  sub_100439B9C(v2072, v1035, v1029);
  sub_100004A08(v1027, "TT");
  sub_100004A08(v1021, "Trinidad/Tobago");
  sub_100004A08(&v1023, "TT");
  v1025 = 257;
  v1026 = 0;
  sub_100439B9C(v2073, v1027, v1021);
  sub_100004A08(v1019, "AL");
  sub_100004A08(v1013, "Albania");
  sub_100004A08(&v1015, "AL");
  v1017 = 257;
  v1018 = 1;
  sub_100439B9C(v2074, v1019, v1013);
  sub_100004A08(v1011, "DZ");
  sub_100004A08(v1005, "Algeria");
  sub_100004A08(&v1007, "DZ");
  v1009 = 257;
  v1010 = 1;
  sub_100439B9C(v2075, v1011, v1005);
  sub_100004A08(v1003, "AO");
  sub_100004A08(v997, "Angola");
  sub_100004A08(&v999, "AO");
  v1001 = 257;
  v1002 = 1;
  sub_100439B9C(v2076, v1003, v997);
  sub_100004A08(v995, "AM");
  sub_100004A08(v989, "Armenia");
  sub_100004A08(&v991, "AM");
  v993 = 0;
  v994 = 6;
  sub_100439B9C(v2077, v995, v989);
  sub_100004A08(v987, "BJ");
  sub_100004A08(v981, "Benin");
  sub_100004A08(&v983, "BJ");
  v985 = 257;
  v986 = 1;
  sub_100439B9C(v2078, v987, v981);
  sub_100004A08(v979, "BA");
  sub_100004A08(v973, "Bosina & Herzegovina");
  sub_100004A08(&v975, "BA");
  v977 = 257;
  v978 = 1;
  sub_100439B9C(v2079, v979, v973);
  sub_100004A08(v971, "BI");
  sub_100004A08(v965, "Burundi");
  sub_100004A08(&v967, "BI");
  v969 = 257;
  v970 = 1;
  sub_100439B9C(v2080, v971, v965);
  sub_100004A08(v963, "BF");
  sub_100004A08(v957, "Burkina Faso");
  sub_100004A08(&v959, "BF");
  v961 = 257;
  v962 = 1;
  sub_100439B9C(v2081, v963, v957);
  sub_100004A08(v955, "CF");
  sub_100004A08(v949, "Central Africa Republic");
  sub_100004A08(&v951, "CF");
  v953 = 257;
  v954 = 1;
  sub_100439B9C(v2082, v955, v949);
  sub_100004A08(v947, "TD");
  sub_100004A08(v941, "Chad");
  sub_100004A08(&v943, "TD");
  v945 = 257;
  v946 = 1;
  sub_100439B9C(v2083, v947, v941);
  sub_100004A08(v939, "CD");
  sub_100004A08(v933, "Congo (Brazzaville)");
  sub_100004A08(&v935, "CD");
  v937 = 257;
  v938 = 1;
  sub_100439B9C(v2084, v939, v933);
  sub_100004A08(v931, "CG");
  sub_100004A08(v925, "Democratic Republic of Congo");
  sub_100004A08(&v927, "CG");
  v929 = 257;
  v930 = 1;
  sub_100439B9C(v2085, v931, v925);
  sub_100004A08(v923, "GQ");
  sub_100004A08(v917, "Equatorial Guinea");
  sub_100004A08(&v919, "GQ");
  v921 = 257;
  v922 = 1;
  sub_100439B9C(v2086, v923, v917);
  sub_100004A08(v915, "ET");
  sub_100004A08(v909, "Ethiopia");
  sub_100004A08(&v911, "ET");
  v913 = 257;
  v914 = 1;
  sub_100439B9C(v2087, v915, v909);
  sub_100004A08(v907, "PF");
  sub_100004A08(v901, "French Polynesia");
  sub_100004A08(&v903, "PF");
  v905 = 257;
  v906 = 1;
  sub_100439B9C(v2088, v907, v901);
  sub_100004A08(v899, "GA");
  sub_100004A08(v893, "Gabon");
  sub_100004A08(&v895, "GA");
  v897 = 257;
  v898 = 1;
  sub_100439B9C(v2089, v899, v893);
  sub_100004A08(v891, "GM");
  sub_100004A08(v885, "Gambia");
  sub_100004A08(&v887, "GM");
  v889 = 257;
  v890 = 1;
  sub_100439B9C(v2090, v891, v885);
  sub_100004A08(v883, "GH");
  sub_100004A08(v877, "Ghana");
  sub_100004A08(&v879, "GH");
  v881 = 257;
  v882 = 1;
  sub_100439B9C(v2091, v883, v877);
  sub_100004A08(v875, "GI");
  sub_100004A08(v869, "Gibraltar");
  sub_100004A08(&v871, "GI");
  v873 = 257;
  v874 = 1;
  sub_100439B9C(v2092, v875, v869);
  sub_100004A08(v867, "GL");
  sub_100004A08(v861, "Greenland");
  sub_100004A08(&v863, "GL");
  v865 = 257;
  v866 = 1;
  sub_100439B9C(v2093, v867, v861);
  sub_100004A08(v859, "GP");
  sub_100004A08(v853, "Guadeloupe");
  sub_100004A08(&v855, "GP");
  v857 = 257;
  v858 = 1;
  sub_100439B9C(v2094, v859, v853);
  sub_100004A08(v851, "GW");
  sub_100004A08(v845, "Guinea Bissau");
  sub_100004A08(&v847, "GW");
  v849 = 257;
  v850 = 1;
  sub_100439B9C(v2095, v851, v845);
  sub_100004A08(v843, "GN");
  sub_100004A08(v837, "Guinea Conakry");
  sub_100004A08(&v839, "GN");
  v841 = 257;
  v842 = 1;
  sub_100439B9C(v2096, v843, v837);
  sub_100004A08(v835, "IQ");
  sub_100004A08(v829, "Iraq");
  sub_100004A08(&v831, "IQ");
  v833 = 257;
  v834 = 1;
  sub_100439B9C(v2097, v835, v829);
  sub_100004A08(v827, "CI");
  sub_100004A08(v821, "Ivory Coast");
  sub_100004A08(&v823, "CI");
  v825 = 257;
  v826 = 1;
  sub_100439B9C(v2098, v827, v821);
  sub_100004A08(v819, "KE");
  sub_100004A08(v813, "Kenya");
  sub_100004A08(&v815, "KE");
  v817 = 257;
  v818 = 1;
  sub_100439B9C(v2099, v819, v813);
  sub_100004A08(v811, "KG");
  sub_100004A08(v805, "Kyrgzstan");
  sub_100004A08(&v807, "KG");
  v809 = 0;
  v810 = 6;
  sub_100439B9C(v2100, v811, v805);
  sub_100004A08(v803, "LB");
  sub_100004A08(v797, "Lebanon");
  sub_100004A08(&v799, "LB");
  v801 = 257;
  v802 = 1;
  sub_100439B9C(v2101, v803, v797);
  sub_100004A08(v795, "LS");
  sub_100004A08(v789, "Lesotho");
  sub_100004A08(&v791, "LS");
  v793 = 257;
  v794 = 1;
  sub_100439B9C(v2102, v795, v789);
  sub_100004A08(v787, "LR");
  sub_100004A08(v781, "Liberia");
  sub_100004A08(&v783, "LR");
  v785 = 257;
  v786 = 1;
  sub_100439B9C(v2103, v787, v781);
  sub_100004A08(v779, "LY");
  sub_100004A08(v773, "Libya");
  sub_100004A08(&v775, "LY");
  v777 = 257;
  v778 = 1;
  sub_100439B9C(v2104, v779, v773);
  sub_100004A08(v771, "MK");
  sub_100004A08(v765, "Macedonia");
  sub_100004A08(&v767, "MK");
  v769 = 257;
  v770 = 1;
  sub_100439B9C(v2105, v771, v765);
  sub_100004A08(v763, "MG");
  sub_100004A08(v757, "Madagascar");
  sub_100004A08(&v759, "MG");
  v761 = 257;
  v762 = 1;
  sub_100439B9C(v2106, v763, v757);
  sub_100004A08(v755, "ML");
  sub_100004A08(v749, "Mali");
  sub_100004A08(&v751, "ML");
  v753 = 257;
  v754 = 1;
  sub_100439B9C(v2107, v755, v749);
  sub_100004A08(v747, "MQ");
  sub_100004A08(v741, "Martinique");
  sub_100004A08(&v743, "MQ");
  v745 = 257;
  v746 = 1;
  sub_100439B9C(v2108, v747, v741);
  sub_100004A08(v739, "MU");
  sub_100004A08(v733, "Mauritius");
  sub_100004A08(&v735, "MU");
  v737 = 257;
  v738 = 1;
  sub_100439B9C(v2109, v739, v733);
  sub_100004A08(v731, "MD");
  sub_100004A08(v725, "Moldova");
  sub_100004A08(&v727, "MD");
  v729 = 257;
  v730 = 1;
  sub_100439B9C(v2110, v731, v725);
  sub_100004A08(v723, "MC");
  sub_100004A08(v717, "Monaco");
  sub_100004A08(&v719, "MC");
  v721 = 257;
  v722 = 1;
  sub_100439B9C(v2111, v723, v717);
  sub_100004A08(v715, "ME");
  sub_100004A08(v709, "Montenegro");
  sub_100004A08(&v711, "ME");
  v713 = 257;
  v714 = 1;
  sub_100439B9C(v2112, v715, v709);
  sub_100004A08(v707, "MZ");
  sub_100004A08(v701, "Mozambique");
  sub_100004A08(&v703, "MZ");
  v705 = 257;
  v706 = 1;
  sub_100439B9C(v2113, v707, v701);
  sub_100004A08(v699, "NA");
  sub_100004A08(v693, "Namibia");
  sub_100004A08(&v695, "NA");
  v697 = 257;
  v698 = 1;
  sub_100439B9C(v2114, v699, v693);
  sub_100004A08(v691, "NE");
  sub_100004A08(v685, "Niger");
  sub_100004A08(&v687, "NE");
  v689 = 257;
  v690 = 1;
  sub_100439B9C(v2115, v691, v685);
  sub_100004A08(v683, "OM");
  sub_100004A08(v677, "Oman");
  sub_100004A08(&v679, "OM");
  v681 = 257;
  v682 = 1;
  sub_100439B9C(v2116, v683, v677);
  sub_100004A08(v675, "RE");
  sub_100004A08(v669, "Reunion");
  sub_100004A08(&v671, "RE");
  v673 = 257;
  v674 = 1;
  sub_100439B9C(v2117, v675, v669);
  sub_100004A08(v667, "SN");
  sub_100004A08(v661, "Senegal");
  sub_100004A08(&v663, "SN");
  v665 = 257;
  v666 = 1;
  sub_100439B9C(v2118, v667, v661);
  sub_100004A08(v659, "TZ");
  sub_100004A08(v653, "Tanzania");
  sub_100004A08(&v655, "TZ");
  v657 = 257;
  v658 = 1;
  sub_100439B9C(v2119, v659, v653);
  sub_100004A08(v651, "TG");
  sub_100004A08(v645, "Togo");
  sub_100004A08(&v647, "TG");
  v649 = 257;
  v650 = 1;
  sub_100439B9C(v2120, v651, v645);
  sub_100004A08(v643, "TN");
  sub_100004A08(v637, "Tunisia");
  sub_100004A08(&v639, "TN");
  v641 = 257;
  v642 = 1;
  sub_100439B9C(v2121, v643, v637);
  sub_100004A08(v635, "UG");
  sub_100004A08(v629, "Uganda");
  sub_100004A08(&v631, "UG");
  v633 = 257;
  v634 = 1;
  sub_100439B9C(v2122, v635, v629);
  sub_100004A08(v627, "UZ");
  sub_100004A08(v621, "Uzbekistan");
  sub_100004A08(&v623, "UZ");
  v625 = 0;
  v626 = 6;
  sub_100439B9C(v2123, v627, v621);
  sub_100004A08(v619, "ZM");
  sub_100004A08(v613, "Zambia");
  sub_100004A08(&v615, "ZM");
  v617 = 257;
  v618 = 1;
  sub_100439B9C(v2124, v619, v613);
  sub_100004A08(v611, "ZW");
  sub_100004A08(v605, "Zimbabwe");
  sub_100004A08(&v607, "ZW");
  v609 = 257;
  v610 = 1;
  sub_100439B9C(v2125, v611, v605);
  sub_100004A08(v603, "GE");
  sub_100004A08(v597, "Georgia");
  sub_100004A08(&v599, "GE");
  v601 = 257;
  v602 = 1;
  sub_100439B9C(v2126, v603, v597);
  sub_100004A08(v595, "MW");
  sub_100004A08(v589, "Malawi");
  sub_100004A08(&v591, "MW");
  v593 = 257;
  v594 = 1;
  sub_100439B9C(v2127, v595, v589);
  sub_100004A08(v587, "RW");
  sub_100004A08(v581, "Rwanda");
  sub_100004A08(&v583, "RW");
  v585 = 257;
  v586 = 1;
  sub_100439B9C(v2128, v587, v581);
  sub_100004A08(v579, "SC");
  sub_100004A08(v573, "Seychelles");
  sub_100004A08(&v575, "SC");
  v577 = 257;
  v578 = 1;
  sub_100439B9C(v2129, v579, v573);
  sub_100004A08(v571, "SZ");
  sub_100004A08(v565, "Swaziland");
  sub_100004A08(&v567, "SZ");
  v569 = 257;
  v570 = 1;
  sub_100439B9C(v2130, v571, v565);
  sub_100004A08(v563, "QA");
  sub_100004A08(v557, "Qatar");
  sub_100004A08(&v559, "QA");
  v561 = 257;
  v562 = 1;
  sub_100439B9C(v2131, v563, v557);
  sub_100004A08(v555, "JO");
  sub_100004A08(v549, "Jordan");
  sub_100004A08(&v551, "JO");
  v553 = 257;
  v554 = 1;
  sub_100439B9C(v2132, v555, v549);
  sub_100004A08(v547, "BH");
  sub_100004A08(v541, "Bahrain");
  sub_100004A08(&v543, "BH");
  v545 = 257;
  v546 = 1;
  sub_100439B9C(v2133, v547, v541);
  sub_100004A08(v539, "AD");
  sub_100004A08(v533, "ANDORRA (all EIRP locales)");
  sub_100004A08(&v535, "AD");
  v537 = 257;
  v538 = 1;
  sub_100439B9C(v2134, v539, v533);
  sub_100004A08(v531, "CW");
  sub_100004A08(v525, "CURACAO");
  sub_100004A08(&v527, "CW");
  v529 = 257;
  v530 = 0;
  sub_100439B9C(v2135, v531, v525);
  sub_100004A08(v523, "BZ");
  sub_100004A08(v517, "BELIZE");
  sub_100004A08(&v519, "BZ");
  v521 = 257;
  v522 = 0;
  sub_100439B9C(v2136, v523, v517);
  sub_100004A08(v515, "CC");
  sub_100004A08(v509, "COCOS (KEELING) ISLANDS");
  sub_100004A08(&v511, "CC");
  v513 = 257;
  v514 = 1;
  sub_100439B9C(v2137, v515, v509);
  sub_100004A08(v507, "CK");
  sub_100004A08(v501, "COOK ISLANDS");
  sub_100004A08(&v503, "CK");
  v505 = 257;
  v506 = 1;
  sub_100439B9C(v2138, v507, v501);
  sub_100004A08(v499, "CM");
  sub_100004A08(v493, "CAMEROON");
  sub_100004A08(&v495, "CM");
  v497 = 257;
  v498 = 1;
  sub_100439B9C(v2139, v499, v493);
  sub_100004A08(v491, "CV");
  sub_100004A08(v485, "CAPE VERDE");
  sub_100004A08(&v487, "CV");
  v489 = 257;
  v490 = 1;
  sub_100439B9C(v2140, v491, v485);
  sub_100004A08(v483, "CX");
  sub_100004A08(v477, "CHRISTMAS ISLAND");
  sub_100004A08(&v479, "CX");
  v481 = 257;
  v482 = 1;
  sub_100439B9C(v2141, v483, v477);
  sub_100004A08(v475, "FM");
  sub_100004A08(v469, "MICRONESIA. FEDERATED STATES OF");
  sub_100004A08(&v471, "FM");
  v473 = 257;
  v474 = 1;
  sub_100439B9C(v2142, v475, v469);
  sub_100004A08(v467, "GF");
  sub_100004A08(v461, "FRENCH GUIANA");
  sub_100004A08(&v463, "GF");
  v465 = 257;
  v466 = 0;
  sub_100439B9C(v2143, v467, v461);
  sub_100004A08(v459, "GG");
  sub_100004A08(v453, "Guernsey (All EIRP Locales)");
  sub_100004A08(&v455, "GG");
  v457 = 257;
  v458 = 1;
  sub_100439B9C(v2144, v459, v453);
  sub_100004A08(v451, "HM");
  sub_100004A08(v445, "HEARD ISLAND AND MCDONALD ISLANDS");
  sub_100004A08(&v447, "HM");
  v449 = 257;
  v450 = 1;
  sub_100439B9C(v2145, v451, v445);
  sub_100004A08(v443, "HT");
  sub_100004A08(v437, "HAITI");
  sub_100004A08(&v439, "HT");
  v441 = 257;
  v442 = 0;
  sub_100439B9C(v2146, v443, v437);
  sub_100004A08(v435, "IO");
  sub_100004A08(v429, "BRITISH INDIAN OCEAN TERRITORY");
  sub_100004A08(&v431, "IO");
  v433 = 257;
  v434 = 1;
  sub_100439B9C(v2147, v435, v429);
  sub_100004A08(v427, "MF");
  sub_100004A08(v421, "Saint Martin (North of Island)");
  sub_100004A08(&v423, "MF");
  v425 = 257;
  v426 = 0;
  sub_100439B9C(v2148, v427, v421);
  sub_100004A08(v419, "MH");
  sub_100004A08(v413, "MARSHALL ISLANDS");
  sub_100004A08(&v415, "MH");
  v417 = 257;
  v418 = 1;
  sub_100439B9C(v2149, v419, v413);
  sub_100004A08(v411, "MR");
  sub_100004A08(v405, "MAURITANIA");
  sub_100004A08(&v407, "MR");
  v409 = 257;
  v410 = 1;
  sub_100439B9C(v2150, v411, v405);
  sub_100004A08(v403, "NG");
  sub_100004A08(v397, "NIGERIA");
  sub_100004A08(&v399, "NG");
  v401 = 257;
  v402 = 1;
  sub_100439B9C(v2151, v403, v397);
  sub_100004A08(v395, "NR");
  sub_100004A08(v389, "NAURU");
  sub_100004A08(&v391, "NR");
  v393 = 257;
  v394 = 1;
  sub_100439B9C(v2152, v395, v389);
  sub_100004A08(v387, "NU");
  sub_100004A08(v381, "NIUE");
  sub_100004A08(&v383, "NU");
  v385 = 257;
  v386 = 1;
  sub_100439B9C(v2153, v387, v381);
  sub_100004A08(v379, "PN");
  sub_100004A08(v373, "PITCAIRN");
  sub_100004A08(&v375, "PN");
  v377 = 257;
  v378 = 1;
  sub_100439B9C(v2154, v379, v373);
  sub_100004A08(v371, "PW");
  sub_100004A08(v365, "PALAU ");
  sub_100004A08(&v367, "PW");
  v369 = 257;
  v370 = 0;
  sub_100439B9C(v2155, v371, v365);
  sub_100004A08(v363, "SB");
  sub_100004A08(v357, "SOLOMON ISLANDS");
  sub_100004A08(&v359, "SB");
  v361 = 257;
  v362 = 1;
  sub_100439B9C(v2156, v363, v357);
  sub_100004A08(v355, "SL");
  sub_100004A08(v349, "SIERRA LEONE");
  sub_100004A08(&v351, "SL");
  v353 = 257;
  v354 = 1;
  sub_100439B9C(v2157, v355, v349);
  sub_100004A08(v347, "SR");
  sub_100004A08(v341, "SURINAME");
  sub_100004A08(&v343, "SR");
  v345 = 257;
  v346 = 0;
  sub_100439B9C(v2158, v347, v341);
  sub_100004A08(v339, "ST");
  sub_100004A08(v333, "SAO TOME AND PRINCIPE");
  sub_100004A08(&v335, "ST");
  v337 = 257;
  v338 = 1;
  sub_100439B9C(v2159, v339, v333);
  sub_100004A08(v331, "TF");
  sub_100004A08(v325, "FRENCH SOUTHERN TERRITORIES");
  sub_100004A08(&v327, "TF");
  v329 = 257;
  v330 = 1;
  sub_100439B9C(v2160, v331, v325);
  sub_100004A08(v323, "TK");
  sub_100004A08(v317, "TOKELAU");
  sub_100004A08(&v319, "TK");
  v321 = 257;
  v322 = 1;
  sub_100439B9C(v2161, v323, v317);
  sub_100004A08(v315, "TM");
  sub_100004A08(v309, "TURKMENISTAN");
  sub_100004A08(&v311, "TM");
  v313 = 0;
  v314 = 6;
  sub_100439B9C(v2162, v315, v309);
  sub_100004A08(v307, "TO");
  sub_100004A08(v301, "TONGA");
  sub_100004A08(&v303, "TO");
  v305 = 257;
  v306 = 1;
  sub_100439B9C(v2163, v307, v301);
  sub_100004A08(v299, "TV");
  sub_100004A08(v293, "TUVALU");
  sub_100004A08(&v295, "TV");
  v297 = 257;
  v298 = 1;
  sub_100439B9C(v2164, v299, v293);
  sub_100004A08(v291, "VA");
  sub_100004A08(v285, "HOLY SEE (VATICAN CITY STATE)");
  sub_100004A08(&v287, "VA");
  v289 = 257;
  v290 = 1;
  sub_100439B9C(v2165, v291, v285);
  sub_100004A08(v283, "WF");
  sub_100004A08(v277, "WALLIS AND FUTUNA");
  sub_100004A08(&v279, "WF");
  v281 = 257;
  v282 = 1;
  sub_100439B9C(v2166, v283, v277);
  sub_100004A08(v275, "YE");
  sub_100004A08(v269, "YEMEN");
  sub_100004A08(&v271, "YE");
  v273 = 257;
  v274 = 1;
  sub_100439B9C(v2167, v275, v269);
  sub_100004A08(v267, "YT");
  sub_100004A08(v261, "MAYOTTE");
  sub_100004A08(&v263, "YT");
  v265 = 257;
  v266 = 1;
  sub_100439B9C(v2168, v267, v261);
  sub_100004A08(v259, "ER");
  sub_100004A08(v253, "ERITREA");
  sub_100004A08(&v255, "ER");
  v257 = 257;
  v258 = 1;
  sub_100439B9C(v2169, v259, v253);
  sub_100004A08(v251, "FO");
  sub_100004A08(v245, "FAROE ISLANDS");
  sub_100004A08(&v247, "FO");
  v249 = 257;
  v250 = 1;
  sub_100439B9C(v2170, v251, v245);
  sub_100004A08(v243, "SO");
  sub_100004A08(v237, "SOMALIA");
  sub_100004A08(&v239, "SO");
  v241 = 257;
  v242 = 1;
  sub_100439B9C(v2171, v243, v237);
  sub_100004A08(v235, "BQ");
  sub_100004A08(v229, "BES");
  sub_100004A08(&v231, "BQ");
  v233 = 257;
  v234 = 0;
  sub_100439B9C(v2172, v235, v229);
  sub_100004A08(v227, "GY");
  sub_100004A08(v221, "Guyana");
  sub_100004A08(&v223, "GY");
  v225 = 257;
  v226 = 0;
  sub_100439B9C(v2173, v227, v221);
  sub_100004A08(v219, "AS");
  sub_100004A08(v213, "America Samoa");
  sub_100004A08(&v215, "AS");
  v217 = 257;
  v218 = 0;
  sub_100439B9C(v2174, v219, v213);
  sub_100004A08(v211, "BW");
  sub_100004A08(v205, "Botswana");
  sub_100004A08(&v207, "BW");
  v209 = 257;
  v210 = 1;
  sub_100439B9C(v2175, v211, v205);
  sub_100004A08(v203, "XK");
  sub_100004A08(v197, "Kosovo");
  sub_100004A08(&v199, "XK");
  v201 = 257;
  v202 = 1;
  sub_100439B9C(v2176, v203, v197);
  sub_100004A08(v195, "PS");
  sub_100004A08(v189, "Palestine");
  sub_100004A08(&v191, "PS");
  v193 = 257;
  v194 = 1;
  sub_100439B9C(v2177, v195, v189);
  sub_100004A08(v187, "TJ");
  sub_100004A08(v181, "Tajikistan");
  sub_100004A08(&v183, "TJ");
  v185 = 0;
  v186 = 6;
  sub_100439B9C(v2178, v187, v181);
  sub_100004A08(v179, "SD");
  sub_100004A08(v173, "SUDAN");
  sub_100004A08(&v175, "SD");
  v177 = 257;
  v178 = 1;
  sub_100439B9C(v2179, v179, v173);
  sub_100004A08(v171, "IM");
  sub_100004A08(v165, "Isle of MAN");
  sub_100004A08(&v167, "IM");
  v169 = 257;
  v170 = 1;
  sub_100439B9C(v2180, v171, v165);
  sub_100004A08(v163, "TL");
  sub_100004A08(v157, "East Timor");
  sub_100004A08(&v159, "TL");
  v161 = 257;
  v162 = 1;
  sub_100439B9C(v2181, v163, v157);
  sub_100004A08(v155, "DJ");
  sub_100004A08(v149, "Djibouti ");
  sub_100004A08(&v151, "DJ");
  v153 = 257;
  v154 = 1;
  sub_100439B9C(v2182, v155, v149);
  sub_100004A08(v147, "FK");
  sub_100004A08(v141, "Falkland Islands");
  sub_100004A08(&v143, "FK");
  v145 = 257;
  v146 = 1;
  sub_100439B9C(v2183, v147, v141);
  sub_100004A08(v139, "KI");
  sub_100004A08(v133, "Kiribati");
  sub_100004A08(&v135, "KI");
  v137 = 257;
  v138 = 1;
  sub_100439B9C(v2184, v139, v133);
  sub_100004A08(v131, "KM");
  sub_100004A08(v125, "Comoros ");
  sub_100004A08(&v127, "KM");
  v129 = 257;
  v130 = 1;
  sub_100439B9C(v2185, v131, v125);
  sub_100004A08(v123, "PM");
  sub_100004A08(v117, "St. Pierre & Miquelon");
  sub_100004A08(&v119, "PM");
  v121 = 257;
  v122 = 1;
  sub_100439B9C(v2186, v123, v117);
  sub_100004A08(v115, "SM");
  sub_100004A08(v109, "San Marino");
  sub_100004A08(&v111, "SM");
  v113 = 257;
  v114 = 1;
  sub_100439B9C(v2187, v115, v109);
  sub_100004A08(v107, "MP");
  sub_100004A08(v101, "Northern Mariana Islands");
  sub_100004A08(&v103, "MP");
  v105 = 257;
  v106 = 0;
  sub_100439B9C(v2188, v107, v101);
  sub_100004A08(v99, "A2");
  sub_100004A08(v93, "French West Indies");
  sub_100004A08(&v95, "A2");
  v97 = 257;
  v98 = 1;
  sub_100439B9C(v2189, v99, v93);
  sub_100004A08(v91, "ID");
  sub_100004A08(v84, "Indonesia");
  sub_100004A08(&v86, "ID");
  v88 = v6;
  v89 = v6;
  v90 = 1;
  sub_100439B9C(v2190, v91, v84);
  sub_100004A08(v82, "NP");
  sub_100004A08(v75, "Nepal");
  sub_100004A08(&v77, "NP");
  v79 = v6;
  v80 = v6;
  v81 = 1;
  sub_100439B9C(v2191, v82, v75);
  sub_100004A08(v73, off_1009EC3F0[0]);
  sub_100004A08(v67, "Shared MCC");
  sub_100004A08(&v69, off_1009EC3F0[0]);
  v71 = 0;
  v72 = 0;
  sub_100439B9C(v2192, v73, v67);
  sub_100004A08(v65, off_1009EC410[0]);
  sub_100004A08(v59, "JPSS");
  sub_100004A08(&v61, off_1009EC410[0]);
  v63 = 0;
  v64 = 4;
  sub_100439B9C(v2193, v65, v59);
  sub_100004A08(v57, off_1009EC418[0]);
  sub_100004A08(v51, "USCW");
  sub_100004A08(&v53, off_1009EC418[0]);
  v55 = 0;
  v56 = 0;
  sub_100439B9C(v2194, v57, v51);
  sub_100004A08(v49, off_1009EC420[0]);
  sub_100004A08(v43, "GridRestricted");
  sub_100004A08(&v45, off_1009EC420[0]);
  v47 = 0;
  v48 = 0;
  sub_100439B9C(v2195, v49, v43);
  sub_100004A08(v41, off_1009EC438[0]);
  sub_100004A08(v35, "BACKOFF");
  sub_100004A08(&v37, off_1009EC438[0]);
  v39 = 0;
  v40 = 0;
  sub_100439B9C(v2196, v41, v35);
  sub_100004A08(v33, off_1009EC3F8[0]);
  sub_100004A08(v27, "TEST5");
  sub_100004A08(&v29, off_1009EC3F8[0]);
  v31 = 1;
  v32 = 0;
  sub_100439B9C(v2197, v33, v27);
  sub_100004A08(v25, off_1009EC408[0]);
  sub_100004A08(v19, "ApFakeCountry");
  sub_100004A08(&v21, off_1009EC408[0]);
  v23 = 0;
  v24 = 0;
  sub_100439B9C(v2198, v25, v19);
  sub_100004A08(v17, off_1009EC400[0]);
  sub_100004A08(v11, "kUnknownCountry");
  sub_100004A08(&__p, off_1009EC400[0]);
  v15 = 0;
  v16 = 0;
  sub_100439B9C(v2199, v17, v11);
  sub_10043A0A8(v5, v1957, 243);
  v8 = 2430;
  v9 = 19431;
  do
  {
    v10 = &v1957[v8];
    if (*(v1957 + v9) < 0)
    {
      operator delete(*(v10 - 4));
    }

    if (*(v1955 + v9) < 0)
    {
      operator delete(*(v10 - 7));
    }

    if (*(&v1951[1] + v9) < 0)
    {
      operator delete(*(v10 - 10));
    }

    v9 -= 80;
    v8 -= 10;
  }

  while (v8 * 8);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (v62 < 0)
  {
    operator delete(v61);
  }

  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  if (v70 < 0)
  {
    operator delete(v69);
  }

  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  if (v74 < 0)
  {
    operator delete(v73[0]);
  }

  if (v78 < 0)
  {
    operator delete(v77);
  }

  if (v76 < 0)
  {
    operator delete(v75[0]);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  if (v87 < 0)
  {
    operator delete(v86);
  }

  if (v85 < 0)
  {
    operator delete(v84[0]);
  }

  if (v92 < 0)
  {
    operator delete(v91[0]);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (v94 < 0)
  {
    operator delete(v93[0]);
  }

  if (v100 < 0)
  {
    operator delete(v99[0]);
  }

  if (v104 < 0)
  {
    operator delete(v103);
  }

  if (v102 < 0)
  {
    operator delete(v101[0]);
  }

  if (v108 < 0)
  {
    operator delete(v107[0]);
  }

  if (v112 < 0)
  {
    operator delete(v111);
  }

  if (v110 < 0)
  {
    operator delete(v109[0]);
  }

  if (v116 < 0)
  {
    operator delete(v115[0]);
  }

  if (v120 < 0)
  {
    operator delete(v119);
  }

  if (v118 < 0)
  {
    operator delete(v117[0]);
  }

  if (v124 < 0)
  {
    operator delete(v123[0]);
  }

  if (v128 < 0)
  {
    operator delete(v127);
  }

  if (v126 < 0)
  {
    operator delete(v125[0]);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  if (v136 < 0)
  {
    operator delete(v135);
  }

  if (v134 < 0)
  {
    operator delete(v133[0]);
  }

  if (v140 < 0)
  {
    operator delete(v139[0]);
  }

  if (v144 < 0)
  {
    operator delete(v143);
  }

  if (v142 < 0)
  {
    operator delete(v141[0]);
  }

  if (v148 < 0)
  {
    operator delete(v147[0]);
  }

  if (v152 < 0)
  {
    operator delete(v151);
  }

  if (v150 < 0)
  {
    operator delete(v149[0]);
  }

  if (v156 < 0)
  {
    operator delete(v155[0]);
  }

  if (v160 < 0)
  {
    operator delete(v159);
  }

  if (v158 < 0)
  {
    operator delete(v157[0]);
  }

  if (v164 < 0)
  {
    operator delete(v163[0]);
  }

  if (v168 < 0)
  {
    operator delete(v167);
  }

  if (v166 < 0)
  {
    operator delete(v165[0]);
  }

  if (v172 < 0)
  {
    operator delete(v171[0]);
  }

  if (v176 < 0)
  {
    operator delete(v175);
  }

  if (v174 < 0)
  {
    operator delete(v173[0]);
  }

  if (v180 < 0)
  {
    operator delete(v179[0]);
  }

  if (v184 < 0)
  {
    operator delete(v183);
  }

  if (v182 < 0)
  {
    operator delete(v181[0]);
  }

  if (v188 < 0)
  {
    operator delete(v187[0]);
  }

  if (v192 < 0)
  {
    operator delete(v191);
  }

  if (v190 < 0)
  {
    operator delete(v189[0]);
  }

  if (v196 < 0)
  {
    operator delete(v195[0]);
  }

  if (v200 < 0)
  {
    operator delete(v199);
  }

  if (v198 < 0)
  {
    operator delete(v197[0]);
  }

  if (v204 < 0)
  {
    operator delete(v203[0]);
  }

  if (v208 < 0)
  {
    operator delete(v207);
  }

  if (v206 < 0)
  {
    operator delete(v205[0]);
  }

  if (v212 < 0)
  {
    operator delete(v211[0]);
  }

  if (v216 < 0)
  {
    operator delete(v215);
  }

  if (v214 < 0)
  {
    operator delete(v213[0]);
  }

  if (v220 < 0)
  {
    operator delete(v219[0]);
  }

  if (v224 < 0)
  {
    operator delete(v223);
  }

  if (v222 < 0)
  {
    operator delete(v221[0]);
  }

  if (v228 < 0)
  {
    operator delete(v227[0]);
  }

  if (v232 < 0)
  {
    operator delete(v231);
  }

  if (v230 < 0)
  {
    operator delete(v229[0]);
  }

  if (v236 < 0)
  {
    operator delete(v235[0]);
  }

  if (v240 < 0)
  {
    operator delete(v239);
  }

  if (v238 < 0)
  {
    operator delete(v237[0]);
  }

  if (v244 < 0)
  {
    operator delete(v243[0]);
  }

  if (v248 < 0)
  {
    operator delete(v247);
  }

  if (v246 < 0)
  {
    operator delete(v245[0]);
  }

  if (v252 < 0)
  {
    operator delete(v251[0]);
  }

  if (v256 < 0)
  {
    operator delete(v255);
  }

  if (v254 < 0)
  {
    operator delete(v253[0]);
  }

  if (v260 < 0)
  {
    operator delete(v259[0]);
  }

  if (v264 < 0)
  {
    operator delete(v263);
  }

  if (v262 < 0)
  {
    operator delete(v261[0]);
  }

  if (v268 < 0)
  {
    operator delete(v267[0]);
  }

  if (v272 < 0)
  {
    operator delete(v271);
  }

  if (v270 < 0)
  {
    operator delete(v269[0]);
  }

  if (v276 < 0)
  {
    operator delete(v275[0]);
  }

  if (v280 < 0)
  {
    operator delete(v279);
  }

  if (v278 < 0)
  {
    operator delete(v277[0]);
  }

  if (v284 < 0)
  {
    operator delete(v283[0]);
  }

  if (v288 < 0)
  {
    operator delete(v287);
  }

  if (v286 < 0)
  {
    operator delete(v285[0]);
  }

  if (v292 < 0)
  {
    operator delete(v291[0]);
  }

  if (v296 < 0)
  {
    operator delete(v295);
  }

  if (v294 < 0)
  {
    operator delete(v293[0]);
  }

  if (v300 < 0)
  {
    operator delete(v299[0]);
  }

  if (v304 < 0)
  {
    operator delete(v303);
  }

  if (v302 < 0)
  {
    operator delete(v301[0]);
  }

  if (v308 < 0)
  {
    operator delete(v307[0]);
  }

  if (v312 < 0)
  {
    operator delete(v311);
  }

  if (v310 < 0)
  {
    operator delete(v309[0]);
  }

  if (v316 < 0)
  {
    operator delete(v315[0]);
  }

  if (v320 < 0)
  {
    operator delete(v319);
  }

  if (v318 < 0)
  {
    operator delete(v317[0]);
  }

  if (v324 < 0)
  {
    operator delete(v323[0]);
  }

  if (v328 < 0)
  {
    operator delete(v327);
  }

  if (v326 < 0)
  {
    operator delete(v325[0]);
  }

  if (v332 < 0)
  {
    operator delete(v331[0]);
  }

  if (v336 < 0)
  {
    operator delete(v335);
  }

  if (v334 < 0)
  {
    operator delete(v333[0]);
  }

  if (v340 < 0)
  {
    operator delete(v339[0]);
  }

  if (v344 < 0)
  {
    operator delete(v343);
  }

  if (v342 < 0)
  {
    operator delete(v341[0]);
  }

  if (v348 < 0)
  {
    operator delete(v347[0]);
  }

  if (v352 < 0)
  {
    operator delete(v351);
  }

  if (v350 < 0)
  {
    operator delete(v349[0]);
  }

  if (v356 < 0)
  {
    operator delete(v355[0]);
  }

  if (v360 < 0)
  {
    operator delete(v359);
  }

  if (v358 < 0)
  {
    operator delete(v357[0]);
  }

  if (v364 < 0)
  {
    operator delete(v363[0]);
  }

  if (v368 < 0)
  {
    operator delete(v367);
  }

  if (v366 < 0)
  {
    operator delete(v365[0]);
  }

  if (v372 < 0)
  {
    operator delete(v371[0]);
  }

  if (v376 < 0)
  {
    operator delete(v375);
  }

  if (v374 < 0)
  {
    operator delete(v373[0]);
  }

  if (v380 < 0)
  {
    operator delete(v379[0]);
  }

  if (v384 < 0)
  {
    operator delete(v383);
  }

  if (v382 < 0)
  {
    operator delete(v381[0]);
  }

  if (v388 < 0)
  {
    operator delete(v387[0]);
  }

  if (v392 < 0)
  {
    operator delete(v391);
  }

  if (v390 < 0)
  {
    operator delete(v389[0]);
  }

  if (v396 < 0)
  {
    operator delete(v395[0]);
  }

  if (v400 < 0)
  {
    operator delete(v399);
  }

  if (v398 < 0)
  {
    operator delete(v397[0]);
  }

  if (v404 < 0)
  {
    operator delete(v403[0]);
  }

  if (v408 < 0)
  {
    operator delete(v407);
  }

  if (v406 < 0)
  {
    operator delete(v405[0]);
  }

  if (v412 < 0)
  {
    operator delete(v411[0]);
  }

  if (v416 < 0)
  {
    operator delete(v415);
  }

  if (v414 < 0)
  {
    operator delete(v413[0]);
  }

  if (v420 < 0)
  {
    operator delete(v419[0]);
  }

  if (v424 < 0)
  {
    operator delete(v423);
  }

  if (v422 < 0)
  {
    operator delete(v421[0]);
  }

  if (v428 < 0)
  {
    operator delete(v427[0]);
  }

  if (v432 < 0)
  {
    operator delete(v431);
  }

  if (v430 < 0)
  {
    operator delete(v429[0]);
  }

  if (v436 < 0)
  {
    operator delete(v435[0]);
  }

  if (v440 < 0)
  {
    operator delete(v439);
  }

  if (v438 < 0)
  {
    operator delete(v437[0]);
  }

  if (v444 < 0)
  {
    operator delete(v443[0]);
  }

  if (v448 < 0)
  {
    operator delete(v447);
  }

  if (v446 < 0)
  {
    operator delete(v445[0]);
  }

  if (v452 < 0)
  {
    operator delete(v451[0]);
  }

  if (v456 < 0)
  {
    operator delete(v455);
  }

  if (v454 < 0)
  {
    operator delete(v453[0]);
  }

  if (v460 < 0)
  {
    operator delete(v459[0]);
  }

  if (v464 < 0)
  {
    operator delete(v463);
  }

  if (v462 < 0)
  {
    operator delete(v461[0]);
  }

  if (v468 < 0)
  {
    operator delete(v467[0]);
  }

  if (v472 < 0)
  {
    operator delete(v471);
  }

  if (v470 < 0)
  {
    operator delete(v469[0]);
  }

  if (v476 < 0)
  {
    operator delete(v475[0]);
  }

  if (v480 < 0)
  {
    operator delete(v479);
  }

  if (v478 < 0)
  {
    operator delete(v477[0]);
  }

  if (v484 < 0)
  {
    operator delete(v483[0]);
  }

  if (v488 < 0)
  {
    operator delete(v487);
  }

  if (v486 < 0)
  {
    operator delete(v485[0]);
  }

  if (v492 < 0)
  {
    operator delete(v491[0]);
  }

  if (v496 < 0)
  {
    operator delete(v495);
  }

  if (v494 < 0)
  {
    operator delete(v493[0]);
  }

  if (v500 < 0)
  {
    operator delete(v499[0]);
  }

  if (v504 < 0)
  {
    operator delete(v503);
  }

  if (v502 < 0)
  {
    operator delete(v501[0]);
  }

  if (v508 < 0)
  {
    operator delete(v507[0]);
  }

  if (v512 < 0)
  {
    operator delete(v511);
  }

  if (v510 < 0)
  {
    operator delete(v509[0]);
  }

  if (v516 < 0)
  {
    operator delete(v515[0]);
  }

  if (v520 < 0)
  {
    operator delete(v519);
  }

  if (v518 < 0)
  {
    operator delete(v517[0]);
  }

  if (v524 < 0)
  {
    operator delete(v523[0]);
  }

  if (v528 < 0)
  {
    operator delete(v527);
  }

  if (v526 < 0)
  {
    operator delete(v525[0]);
  }

  if (v532 < 0)
  {
    operator delete(v531[0]);
  }

  if (v536 < 0)
  {
    operator delete(v535);
  }

  if (v534 < 0)
  {
    operator delete(v533[0]);
  }

  if (v540 < 0)
  {
    operator delete(v539[0]);
  }

  if (v544 < 0)
  {
    operator delete(v543);
  }

  if (v542 < 0)
  {
    operator delete(v541[0]);
  }

  if (v548 < 0)
  {
    operator delete(v547[0]);
  }

  if (v552 < 0)
  {
    operator delete(v551);
  }

  if (v550 < 0)
  {
    operator delete(v549[0]);
  }

  if (v556 < 0)
  {
    operator delete(v555[0]);
  }

  if (v560 < 0)
  {
    operator delete(v559);
  }

  if (v558 < 0)
  {
    operator delete(v557[0]);
  }

  if (v564 < 0)
  {
    operator delete(v563[0]);
  }

  if (v568 < 0)
  {
    operator delete(v567);
  }

  if (v566 < 0)
  {
    operator delete(v565[0]);
  }

  if (v572 < 0)
  {
    operator delete(v571[0]);
  }

  if (v576 < 0)
  {
    operator delete(v575);
  }

  if (v574 < 0)
  {
    operator delete(v573[0]);
  }

  if (v580 < 0)
  {
    operator delete(v579[0]);
  }

  if (v584 < 0)
  {
    operator delete(v583);
  }

  if (v582 < 0)
  {
    operator delete(v581[0]);
  }

  if (v588 < 0)
  {
    operator delete(v587[0]);
  }

  if (v592 < 0)
  {
    operator delete(v591);
  }

  if (v590 < 0)
  {
    operator delete(v589[0]);
  }

  if (v596 < 0)
  {
    operator delete(v595[0]);
  }

  if (v600 < 0)
  {
    operator delete(v599);
  }

  if (v598 < 0)
  {
    operator delete(v597[0]);
  }

  if (v604 < 0)
  {
    operator delete(v603[0]);
  }

  if (v608 < 0)
  {
    operator delete(v607);
  }

  if (v606 < 0)
  {
    operator delete(v605[0]);
  }

  if (v612 < 0)
  {
    operator delete(v611[0]);
  }

  if (v616 < 0)
  {
    operator delete(v615);
  }

  if (v614 < 0)
  {
    operator delete(v613[0]);
  }

  if (v620 < 0)
  {
    operator delete(v619[0]);
  }

  if (v624 < 0)
  {
    operator delete(v623);
  }

  if (v622 < 0)
  {
    operator delete(v621[0]);
  }

  if (v628 < 0)
  {
    operator delete(v627[0]);
  }

  if (v632 < 0)
  {
    operator delete(v631);
  }

  if (v630 < 0)
  {
    operator delete(v629[0]);
  }

  if (v636 < 0)
  {
    operator delete(v635[0]);
  }

  if (v640 < 0)
  {
    operator delete(v639);
  }

  if (v638 < 0)
  {
    operator delete(v637[0]);
  }

  if (v644 < 0)
  {
    operator delete(v643[0]);
  }

  if (v648 < 0)
  {
    operator delete(v647);
  }

  if (v646 < 0)
  {
    operator delete(v645[0]);
  }

  if (v652 < 0)
  {
    operator delete(v651[0]);
  }

  if (v656 < 0)
  {
    operator delete(v655);
  }

  if (v654 < 0)
  {
    operator delete(v653[0]);
  }

  if (v660 < 0)
  {
    operator delete(v659[0]);
  }

  if (v664 < 0)
  {
    operator delete(v663);
  }

  if (v662 < 0)
  {
    operator delete(v661[0]);
  }

  if (v668 < 0)
  {
    operator delete(v667[0]);
  }

  if (v672 < 0)
  {
    operator delete(v671);
  }

  if (v670 < 0)
  {
    operator delete(v669[0]);
  }

  if (v676 < 0)
  {
    operator delete(v675[0]);
  }

  if (v680 < 0)
  {
    operator delete(v679);
  }

  if (v678 < 0)
  {
    operator delete(v677[0]);
  }

  if (v684 < 0)
  {
    operator delete(v683[0]);
  }

  if (v688 < 0)
  {
    operator delete(v687);
  }

  if (v686 < 0)
  {
    operator delete(v685[0]);
  }

  if (v692 < 0)
  {
    operator delete(v691[0]);
  }

  if (v696 < 0)
  {
    operator delete(v695);
  }

  if (v694 < 0)
  {
    operator delete(v693[0]);
  }

  if (v700 < 0)
  {
    operator delete(v699[0]);
  }

  if (v704 < 0)
  {
    operator delete(v703);
  }

  if (v702 < 0)
  {
    operator delete(v701[0]);
  }

  if (v708 < 0)
  {
    operator delete(v707[0]);
  }

  if (v712 < 0)
  {
    operator delete(v711);
  }

  if (v710 < 0)
  {
    operator delete(v709[0]);
  }

  if (v716 < 0)
  {
    operator delete(v715[0]);
  }

  if (v720 < 0)
  {
    operator delete(v719);
  }

  if (v718 < 0)
  {
    operator delete(v717[0]);
  }

  if (v724 < 0)
  {
    operator delete(v723[0]);
  }

  if (v728 < 0)
  {
    operator delete(v727);
  }

  if (v726 < 0)
  {
    operator delete(v725[0]);
  }

  if (v732 < 0)
  {
    operator delete(v731[0]);
  }

  if (v736 < 0)
  {
    operator delete(v735);
  }

  if (v734 < 0)
  {
    operator delete(v733[0]);
  }

  if (v740 < 0)
  {
    operator delete(v739[0]);
  }

  if (v744 < 0)
  {
    operator delete(v743);
  }

  if (v742 < 0)
  {
    operator delete(v741[0]);
  }

  if (v748 < 0)
  {
    operator delete(v747[0]);
  }

  if (v752 < 0)
  {
    operator delete(v751);
  }

  if (v750 < 0)
  {
    operator delete(v749[0]);
  }

  if (v756 < 0)
  {
    operator delete(v755[0]);
  }

  if (v760 < 0)
  {
    operator delete(v759);
  }

  if (v758 < 0)
  {
    operator delete(v757[0]);
  }

  if (v764 < 0)
  {
    operator delete(v763[0]);
  }

  if (v768 < 0)
  {
    operator delete(v767);
  }

  if (v766 < 0)
  {
    operator delete(v765[0]);
  }

  if (v772 < 0)
  {
    operator delete(v771[0]);
  }

  if (v776 < 0)
  {
    operator delete(v775);
  }

  if (v774 < 0)
  {
    operator delete(v773[0]);
  }

  if (v780 < 0)
  {
    operator delete(v779[0]);
  }

  if (v784 < 0)
  {
    operator delete(v783);
  }

  if (v782 < 0)
  {
    operator delete(v781[0]);
  }

  if (v788 < 0)
  {
    operator delete(v787[0]);
  }

  if (v792 < 0)
  {
    operator delete(v791);
  }

  if (v790 < 0)
  {
    operator delete(v789[0]);
  }

  if (v796 < 0)
  {
    operator delete(v795[0]);
  }

  if (v800 < 0)
  {
    operator delete(v799);
  }

  if (v798 < 0)
  {
    operator delete(v797[0]);
  }

  if (v804 < 0)
  {
    operator delete(v803[0]);
  }

  if (v808 < 0)
  {
    operator delete(v807);
  }

  if (v806 < 0)
  {
    operator delete(v805[0]);
  }

  if (v812 < 0)
  {
    operator delete(v811[0]);
  }

  if (v816 < 0)
  {
    operator delete(v815);
  }

  if (v814 < 0)
  {
    operator delete(v813[0]);
  }

  if (v820 < 0)
  {
    operator delete(v819[0]);
  }

  if (v824 < 0)
  {
    operator delete(v823);
  }

  if (v822 < 0)
  {
    operator delete(v821[0]);
  }

  if (v828 < 0)
  {
    operator delete(v827[0]);
  }

  if (v832 < 0)
  {
    operator delete(v831);
  }

  if (v830 < 0)
  {
    operator delete(v829[0]);
  }

  if (v836 < 0)
  {
    operator delete(v835[0]);
  }

  if (v840 < 0)
  {
    operator delete(v839);
  }

  if (v838 < 0)
  {
    operator delete(v837[0]);
  }

  if (v844 < 0)
  {
    operator delete(v843[0]);
  }

  if (v848 < 0)
  {
    operator delete(v847);
  }

  if (v846 < 0)
  {
    operator delete(v845[0]);
  }

  if (v852 < 0)
  {
    operator delete(v851[0]);
  }

  if (v856 < 0)
  {
    operator delete(v855);
  }

  if (v854 < 0)
  {
    operator delete(v853[0]);
  }

  if (v860 < 0)
  {
    operator delete(v859[0]);
  }

  if (v864 < 0)
  {
    operator delete(v863);
  }

  if (v862 < 0)
  {
    operator delete(v861[0]);
  }

  if (v868 < 0)
  {
    operator delete(v867[0]);
  }

  if (v872 < 0)
  {
    operator delete(v871);
  }

  if (v870 < 0)
  {
    operator delete(v869[0]);
  }

  if (v876 < 0)
  {
    operator delete(v875[0]);
  }

  if (v880 < 0)
  {
    operator delete(v879);
  }

  if (v878 < 0)
  {
    operator delete(v877[0]);
  }

  if (v884 < 0)
  {
    operator delete(v883[0]);
  }

  if (v888 < 0)
  {
    operator delete(v887);
  }

  if (v886 < 0)
  {
    operator delete(v885[0]);
  }

  if (v892 < 0)
  {
    operator delete(v891[0]);
  }

  if (v896 < 0)
  {
    operator delete(v895);
  }

  if (v894 < 0)
  {
    operator delete(v893[0]);
  }

  if (v900 < 0)
  {
    operator delete(v899[0]);
  }

  if (v904 < 0)
  {
    operator delete(v903);
  }

  if (v902 < 0)
  {
    operator delete(v901[0]);
  }

  if (v908 < 0)
  {
    operator delete(v907[0]);
  }

  if (v912 < 0)
  {
    operator delete(v911);
  }

  if (v910 < 0)
  {
    operator delete(v909[0]);
  }

  if (v916 < 0)
  {
    operator delete(v915[0]);
  }

  if (v920 < 0)
  {
    operator delete(v919);
  }

  if (v918 < 0)
  {
    operator delete(v917[0]);
  }

  if (v924 < 0)
  {
    operator delete(v923[0]);
  }

  if (v928 < 0)
  {
    operator delete(v927);
  }

  if (v926 < 0)
  {
    operator delete(v925[0]);
  }

  if (v932 < 0)
  {
    operator delete(v931[0]);
  }

  if (v936 < 0)
  {
    operator delete(v935);
  }

  if (v934 < 0)
  {
    operator delete(v933[0]);
  }

  if (v940 < 0)
  {
    operator delete(v939[0]);
  }

  if (v944 < 0)
  {
    operator delete(v943);
  }

  if (v942 < 0)
  {
    operator delete(v941[0]);
  }

  if (v948 < 0)
  {
    operator delete(v947[0]);
  }

  if (v952 < 0)
  {
    operator delete(v951);
  }

  if (v950 < 0)
  {
    operator delete(v949[0]);
  }

  if (v956 < 0)
  {
    operator delete(v955[0]);
  }

  if (v960 < 0)
  {
    operator delete(v959);
  }

  if (v958 < 0)
  {
    operator delete(v957[0]);
  }

  if (v964 < 0)
  {
    operator delete(v963[0]);
  }

  if (v968 < 0)
  {
    operator delete(v967);
  }

  if (v966 < 0)
  {
    operator delete(v965[0]);
  }

  if (v972 < 0)
  {
    operator delete(v971[0]);
  }

  if (v976 < 0)
  {
    operator delete(v975);
  }

  if (v974 < 0)
  {
    operator delete(v973[0]);
  }

  if (v980 < 0)
  {
    operator delete(v979[0]);
  }

  if (v984 < 0)
  {
    operator delete(v983);
  }

  if (v982 < 0)
  {
    operator delete(v981[0]);
  }

  if (v988 < 0)
  {
    operator delete(v987[0]);
  }

  if (v992 < 0)
  {
    operator delete(v991);
  }

  if (v990 < 0)
  {
    operator delete(v989[0]);
  }

  if (v996 < 0)
  {
    operator delete(v995[0]);
  }

  if (v1000 < 0)
  {
    operator delete(v999);
  }

  if (v998 < 0)
  {
    operator delete(v997[0]);
  }

  if (v1004 < 0)
  {
    operator delete(v1003[0]);
  }

  if (v1008 < 0)
  {
    operator delete(v1007);
  }

  if (v1006 < 0)
  {
    operator delete(v1005[0]);
  }

  if (v1012 < 0)
  {
    operator delete(v1011[0]);
  }

  if (v1016 < 0)
  {
    operator delete(v1015);
  }

  if (v1014 < 0)
  {
    operator delete(v1013[0]);
  }

  if (v1020 < 0)
  {
    operator delete(v1019[0]);
  }

  if (v1024 < 0)
  {
    operator delete(v1023);
  }

  if (v1022 < 0)
  {
    operator delete(v1021[0]);
  }

  if (v1028 < 0)
  {
    operator delete(v1027[0]);
  }

  if (v1032 < 0)
  {
    operator delete(v1031);
  }

  if (v1030 < 0)
  {
    operator delete(v1029[0]);
  }

  if (v1036 < 0)
  {
    operator delete(v1035[0]);
  }

  if (v1040 < 0)
  {
    operator delete(v1039);
  }

  if (v1038 < 0)
  {
    operator delete(v1037[0]);
  }

  if (v1044 < 0)
  {
    operator delete(v1043[0]);
  }

  if (v1048 < 0)
  {
    operator delete(v1047);
  }

  if (v1046 < 0)
  {
    operator delete(v1045[0]);
  }

  if (v1052 < 0)
  {
    operator delete(v1051[0]);
  }

  if (v1056 < 0)
  {
    operator delete(v1055);
  }

  if (v1054 < 0)
  {
    operator delete(v1053[0]);
  }

  if (v1060 < 0)
  {
    operator delete(v1059[0]);
  }

  if (v1064 < 0)
  {
    operator delete(v1063);
  }

  if (v1062 < 0)
  {
    operator delete(v1061[0]);
  }

  if (v1068 < 0)
  {
    operator delete(v1067[0]);
  }

  if (v1072 < 0)
  {
    operator delete(v1071);
  }

  if (v1070 < 0)
  {
    operator delete(v1069[0]);
  }

  if (v1076 < 0)
  {
    operator delete(v1075[0]);
  }

  if (v1080 < 0)
  {
    operator delete(v1079);
  }

  if (v1078 < 0)
  {
    operator delete(v1077[0]);
  }

  if (v1084 < 0)
  {
    operator delete(v1083[0]);
  }

  if (v1088 < 0)
  {
    operator delete(v1087);
  }

  if (v1086 < 0)
  {
    operator delete(v1085[0]);
  }

  if (v1092 < 0)
  {
    operator delete(v1091[0]);
  }

  if (v1096 < 0)
  {
    operator delete(v1095);
  }

  if (v1094 < 0)
  {
    operator delete(v1093[0]);
  }

  if (v1100 < 0)
  {
    operator delete(v1099[0]);
  }

  if (v1104 < 0)
  {
    operator delete(v1103);
  }

  if (v1102 < 0)
  {
    operator delete(v1101[0]);
  }

  if (v1108 < 0)
  {
    operator delete(v1107[0]);
  }

  if (v1112 < 0)
  {
    operator delete(v1111);
  }

  if (v1110 < 0)
  {
    operator delete(v1109[0]);
  }

  if (v1116 < 0)
  {
    operator delete(v1115[0]);
  }

  if (v1120 < 0)
  {
    operator delete(v1119);
  }

  if (v1118 < 0)
  {
    operator delete(v1117[0]);
  }

  if (v1124 < 0)
  {
    operator delete(v1123[0]);
  }

  if (v1128 < 0)
  {
    operator delete(v1127);
  }

  if (v1126 < 0)
  {
    operator delete(v1125[0]);
  }

  if (v1132 < 0)
  {
    operator delete(v1131[0]);
  }

  if (v1136 < 0)
  {
    operator delete(v1135);
  }

  if (v1134 < 0)
  {
    operator delete(v1133[0]);
  }

  if (v1140 < 0)
  {
    operator delete(v1139[0]);
  }

  if (v1144 < 0)
  {
    operator delete(v1143);
  }

  if (v1142 < 0)
  {
    operator delete(v1141[0]);
  }

  if (v1148 < 0)
  {
    operator delete(v1147[0]);
  }

  if (v1152 < 0)
  {
    operator delete(v1151);
  }

  if (v1150 < 0)
  {
    operator delete(v1149[0]);
  }

  if (v1156 < 0)
  {
    operator delete(v1155[0]);
  }

  if (v1160 < 0)
  {
    operator delete(v1159);
  }

  if (v1158 < 0)
  {
    operator delete(v1157[0]);
  }

  if (v1164 < 0)
  {
    operator delete(v1163[0]);
  }

  if (v1168 < 0)
  {
    operator delete(v1167);
  }

  if (v1166 < 0)
  {
    operator delete(v1165[0]);
  }

  if (v1172 < 0)
  {
    operator delete(v1171[0]);
  }

  if (v1176 < 0)
  {
    operator delete(v1175);
  }

  if (v1174 < 0)
  {
    operator delete(v1173[0]);
  }

  if (v1180 < 0)
  {
    operator delete(v1179[0]);
  }

  if (v1184 < 0)
  {
    operator delete(v1183);
  }

  if (v1182 < 0)
  {
    operator delete(v1181[0]);
  }

  if (v1188 < 0)
  {
    operator delete(v1187[0]);
  }

  if (v1192 < 0)
  {
    operator delete(v1191);
  }

  if (v1190 < 0)
  {
    operator delete(v1189[0]);
  }

  if (v1196 < 0)
  {
    operator delete(v1195[0]);
  }

  if (v1200 < 0)
  {
    operator delete(v1199);
  }

  if (v1198 < 0)
  {
    operator delete(v1197[0]);
  }

  if (v1204 < 0)
  {
    operator delete(v1203[0]);
  }

  if (v1208 < 0)
  {
    operator delete(v1207);
  }

  if (v1206 < 0)
  {
    operator delete(v1205[0]);
  }

  if (v1212 < 0)
  {
    operator delete(v1211[0]);
  }

  if (v1216 < 0)
  {
    operator delete(v1215);
  }

  if (v1214 < 0)
  {
    operator delete(v1213[0]);
  }

  if (v1220 < 0)
  {
    operator delete(v1219[0]);
  }

  if (v1224 < 0)
  {
    operator delete(v1223);
  }

  if (v1222 < 0)
  {
    operator delete(v1221[0]);
  }

  if (v1228 < 0)
  {
    operator delete(v1227[0]);
  }

  if (v1232 < 0)
  {
    operator delete(v1231);
  }

  if (v1230 < 0)
  {
    operator delete(v1229[0]);
  }

  if (v1236 < 0)
  {
    operator delete(v1235[0]);
  }

  if (v1240 < 0)
  {
    operator delete(v1239);
  }

  if (v1238 < 0)
  {
    operator delete(v1237[0]);
  }

  if (v1244 < 0)
  {
    operator delete(v1243[0]);
  }

  if (v1248 < 0)
  {
    operator delete(v1247);
  }

  if (v1246 < 0)
  {
    operator delete(v1245[0]);
  }

  if (v1252 < 0)
  {
    operator delete(v1251[0]);
  }

  if (v1256 < 0)
  {
    operator delete(v1255);
  }

  if (v1254 < 0)
  {
    operator delete(v1253[0]);
  }

  if (v1260 < 0)
  {
    operator delete(v1259[0]);
  }

  if (v1264 < 0)
  {
    operator delete(v1263);
  }

  if (v1262 < 0)
  {
    operator delete(v1261[0]);
  }

  if (v1268 < 0)
  {
    operator delete(v1267[0]);
  }

  if (v1272 < 0)
  {
    operator delete(v1271);
  }

  if (v1270 < 0)
  {
    operator delete(v1269[0]);
  }

  if (v1276 < 0)
  {
    operator delete(v1275[0]);
  }

  if (v1280 < 0)
  {
    operator delete(v1279);
  }

  if (v1278 < 0)
  {
    operator delete(v1277[0]);
  }

  if (v1284 < 0)
  {
    operator delete(v1283[0]);
  }

  if (v1288 < 0)
  {
    operator delete(v1287);
  }

  if (v1286 < 0)
  {
    operator delete(v1285[0]);
  }

  if (v1292 < 0)
  {
    operator delete(v1291[0]);
  }

  if (v1296 < 0)
  {
    operator delete(v1295);
  }

  if (v1294 < 0)
  {
    operator delete(v1293[0]);
  }

  if (v1300 < 0)
  {
    operator delete(v1299[0]);
  }

  if (v1304 < 0)
  {
    operator delete(v1303);
  }

  if (v1302 < 0)
  {
    operator delete(v1301[0]);
  }

  if (v1308 < 0)
  {
    operator delete(v1307[0]);
  }

  if (v1312 < 0)
  {
    operator delete(v1311);
  }

  if (v1310 < 0)
  {
    operator delete(v1309[0]);
  }

  if (v1316 < 0)
  {
    operator delete(v1315[0]);
  }

  if (v1320 < 0)
  {
    operator delete(v1319);
  }

  if (v1318 < 0)
  {
    operator delete(v1317[0]);
  }

  if (v1324 < 0)
  {
    operator delete(v1323[0]);
  }

  if (v1328 < 0)
  {
    operator delete(v1327);
  }

  if (v1326 < 0)
  {
    operator delete(v1325[0]);
  }

  if (v1332 < 0)
  {
    operator delete(v1331[0]);
  }

  if (v1336 < 0)
  {
    operator delete(v1335);
  }

  if (v1334 < 0)
  {
    operator delete(v1333[0]);
  }

  if (v1340 < 0)
  {
    operator delete(v1339[0]);
  }

  if (v1344 < 0)
  {
    operator delete(v1343);
  }

  if (v1342 < 0)
  {
    operator delete(v1341[0]);
  }

  if (v1348 < 0)
  {
    operator delete(v1347[0]);
  }

  if (v1352 < 0)
  {
    operator delete(v1351);
  }

  if (v1350 < 0)
  {
    operator delete(v1349[0]);
  }

  if (v1356 < 0)
  {
    operator delete(v1355[0]);
  }

  if (v1360 < 0)
  {
    operator delete(v1359);
  }

  if (v1358 < 0)
  {
    operator delete(v1357[0]);
  }

  if (v1364 < 0)
  {
    operator delete(v1363[0]);
  }

  if (v1368 < 0)
  {
    operator delete(v1367);
  }

  if (v1366 < 0)
  {
    operator delete(v1365[0]);
  }

  if (v1372 < 0)
  {
    operator delete(v1371[0]);
  }

  if (v1376 < 0)
  {
    operator delete(v1375);
  }

  if (v1374 < 0)
  {
    operator delete(v1373[0]);
  }

  if (v1380 < 0)
  {
    operator delete(v1379[0]);
  }

  if (v1384 < 0)
  {
    operator delete(v1383);
  }

  if (v1382 < 0)
  {
    operator delete(v1381[0]);
  }

  if (v1388 < 0)
  {
    operator delete(v1387[0]);
  }

  if (v1392 < 0)
  {
    operator delete(v1391);
  }

  if (v1390 < 0)
  {
    operator delete(v1389[0]);
  }

  if (v1396 < 0)
  {
    operator delete(v1395[0]);
  }

  if (v1400 < 0)
  {
    operator delete(v1399);
  }

  if (v1398 < 0)
  {
    operator delete(v1397[0]);
  }

  if (v1404 < 0)
  {
    operator delete(v1403[0]);
  }

  if (v1408 < 0)
  {
    operator delete(v1407);
  }

  if (v1406 < 0)
  {
    operator delete(v1405[0]);
  }

  if (v1412 < 0)
  {
    operator delete(v1411[0]);
  }

  if (v1416 < 0)
  {
    operator delete(v1415);
  }

  if (v1414 < 0)
  {
    operator delete(v1413[0]);
  }

  if (v1420 < 0)
  {
    operator delete(v1419[0]);
  }

  if (v1424 < 0)
  {
    operator delete(v1423);
  }

  if (v1422 < 0)
  {
    operator delete(v1421[0]);
  }

  if (v1428 < 0)
  {
    operator delete(v1427[0]);
  }

  if (v1432 < 0)
  {
    operator delete(v1431);
  }

  if (v1430 < 0)
  {
    operator delete(v1429[0]);
  }

  if (v1436 < 0)
  {
    operator delete(v1435[0]);
  }

  if (v1440 < 0)
  {
    operator delete(v1439);
  }

  if (v1438 < 0)
  {
    operator delete(v1437[0]);
  }

  if (v1444 < 0)
  {
    operator delete(v1443[0]);
  }

  if (v1448 < 0)
  {
    operator delete(v1447);
  }

  if (v1446 < 0)
  {
    operator delete(v1445[0]);
  }

  if (v1452 < 0)
  {
    operator delete(v1451[0]);
  }

  if (v1456 < 0)
  {
    operator delete(v1455);
  }

  if (v1454 < 0)
  {
    operator delete(v1453[0]);
  }

  if (v1460 < 0)
  {
    operator delete(v1459[0]);
  }

  if (v1464 < 0)
  {
    operator delete(v1463);
  }

  if (v1462 < 0)
  {
    operator delete(v1461[0]);
  }

  if (v1468 < 0)
  {
    operator delete(v1467[0]);
  }

  if (v1472 < 0)
  {
    operator delete(v1471);
  }

  if (v1470 < 0)
  {
    operator delete(v1469[0]);
  }

  if (v1476 < 0)
  {
    operator delete(v1475[0]);
  }

  if (v1480 < 0)
  {
    operator delete(v1479);
  }

  if (v1478 < 0)
  {
    operator delete(v1477[0]);
  }

  if (v1484 < 0)
  {
    operator delete(v1483[0]);
  }

  if (v1488 < 0)
  {
    operator delete(v1487);
  }

  if (v1486 < 0)
  {
    operator delete(v1485[0]);
  }

  if (v1492 < 0)
  {
    operator delete(v1491[0]);
  }

  if (v1496 < 0)
  {
    operator delete(v1495);
  }

  if (v1494 < 0)
  {
    operator delete(v1493[0]);
  }

  if (v1500 < 0)
  {
    operator delete(v1499[0]);
  }

  if (v1504 < 0)
  {
    operator delete(v1503);
  }

  if (v1502 < 0)
  {
    operator delete(v1501[0]);
  }

  if (v1508 < 0)
  {
    operator delete(v1507[0]);
  }

  if (v1512 < 0)
  {
    operator delete(v1511);
  }

  if (v1510 < 0)
  {
    operator delete(v1509[0]);
  }

  if (v1516 < 0)
  {
    operator delete(v1515[0]);
  }

  if (v1520 < 0)
  {
    operator delete(v1519);
  }

  if (v1518 < 0)
  {
    operator delete(v1517[0]);
  }

  if (v1524 < 0)
  {
    operator delete(v1523[0]);
  }

  if (v1528 < 0)
  {
    operator delete(v1527);
  }

  if (v1526 < 0)
  {
    operator delete(v1525[0]);
  }

  if (v1532 < 0)
  {
    operator delete(v1531[0]);
  }

  if (v1536 < 0)
  {
    operator delete(v1535);
  }

  if (v1534 < 0)
  {
    operator delete(v1533[0]);
  }

  if (v1540 < 0)
  {
    operator delete(v1539[0]);
  }

  if (v1544 < 0)
  {
    operator delete(v1543);
  }

  if (v1542 < 0)
  {
    operator delete(v1541[0]);
  }

  if (v1548 < 0)
  {
    operator delete(v1547[0]);
  }

  if (v1552 < 0)
  {
    operator delete(v1551);
  }

  if (v1550 < 0)
  {
    operator delete(v1549[0]);
  }

  if (v1556 < 0)
  {
    operator delete(v1555[0]);
  }

  if (v1560 < 0)
  {
    operator delete(v1559);
  }

  if (v1558 < 0)
  {
    operator delete(v1557[0]);
  }

  if (v1564 < 0)
  {
    operator delete(v1563[0]);
  }

  if (v1568 < 0)
  {
    operator delete(v1567);
  }

  if (v1566 < 0)
  {
    operator delete(v1565[0]);
  }

  if (v1572 < 0)
  {
    operator delete(v1571[0]);
  }

  if (v1576 < 0)
  {
    operator delete(v1575);
  }

  if (v1574 < 0)
  {
    operator delete(v1573[0]);
  }

  if (v1580 < 0)
  {
    operator delete(v1579[0]);
  }

  if (v1584 < 0)
  {
    operator delete(v1583);
  }

  if (v1582 < 0)
  {
    operator delete(v1581[0]);
  }

  if (v1588 < 0)
  {
    operator delete(v1587[0]);
  }

  if (v1592 < 0)
  {
    operator delete(v1591);
  }

  if (v1590 < 0)
  {
    operator delete(v1589[0]);
  }

  if (v1596 < 0)
  {
    operator delete(v1595[0]);
  }

  if (v1600 < 0)
  {
    operator delete(v1599);
  }

  if (v1598 < 0)
  {
    operator delete(v1597[0]);
  }

  if (v1604 < 0)
  {
    operator delete(v1603[0]);
  }

  if (v1608 < 0)
  {
    operator delete(v1607);
  }

  if (v1606 < 0)
  {
    operator delete(v1605[0]);
  }

  if (v1612 < 0)
  {
    operator delete(v1611[0]);
  }

  if (v1616 < 0)
  {
    operator delete(v1615);
  }

  if (v1614 < 0)
  {
    operator delete(v1613[0]);
  }

  if (v1620 < 0)
  {
    operator delete(v1619[0]);
  }

  if (v1624 < 0)
  {
    operator delete(v1623);
  }

  if (v1622 < 0)
  {
    operator delete(v1621[0]);
  }

  if (v1628 < 0)
  {
    operator delete(v1627[0]);
  }

  if (v1632 < 0)
  {
    operator delete(v1631);
  }

  if (v1630 < 0)
  {
    operator delete(v1629[0]);
  }

  if (v1636 < 0)
  {
    operator delete(v1635[0]);
  }

  if (v1640 < 0)
  {
    operator delete(v1639);
  }

  if (v1638 < 0)
  {
    operator delete(v1637[0]);
  }

  if (v1644 < 0)
  {
    operator delete(v1643[0]);
  }

  if (v1648 < 0)
  {
    operator delete(v1647);
  }

  if (v1646 < 0)
  {
    operator delete(v1645[0]);
  }

  if (v1652 < 0)
  {
    operator delete(v1651[0]);
  }

  if (v1656 < 0)
  {
    operator delete(v1655);
  }

  if (v1654 < 0)
  {
    operator delete(v1653[0]);
  }

  if (v1660 < 0)
  {
    operator delete(v1659[0]);
  }

  if (v1664 < 0)
  {
    operator delete(v1663);
  }

  if (v1662 < 0)
  {
    operator delete(v1661[0]);
  }

  if (v1668 < 0)
  {
    operator delete(v1667[0]);
  }

  if (v1672 < 0)
  {
    operator delete(v1671);
  }

  if (v1670 < 0)
  {
    operator delete(v1669[0]);
  }

  if (v1676 < 0)
  {
    operator delete(v1675[0]);
  }

  if (v1680 < 0)
  {
    operator delete(v1679);
  }

  if (v1678 < 0)
  {
    operator delete(v1677[0]);
  }

  if (v1684 < 0)
  {
    operator delete(v1683[0]);
  }

  if (v1688 < 0)
  {
    operator delete(v1687);
  }

  if (v1686 < 0)
  {
    operator delete(v1685[0]);
  }

  if (v1692 < 0)
  {
    operator delete(v1691[0]);
  }

  if (v1696 < 0)
  {
    operator delete(v1695);
  }

  if (v1694 < 0)
  {
    operator delete(v1693[0]);
  }

  if (v1700 < 0)
  {
    operator delete(v1699[0]);
  }

  if (v1704 < 0)
  {
    operator delete(v1703);
  }

  if (v1702 < 0)
  {
    operator delete(v1701[0]);
  }

  if (v1708 < 0)
  {
    operator delete(v1707[0]);
  }

  if (v1712 < 0)
  {
    operator delete(v1711);
  }

  if (v1710 < 0)
  {
    operator delete(v1709[0]);
  }

  if (v1716 < 0)
  {
    operator delete(v1715[0]);
  }

  if (v1720 < 0)
  {
    operator delete(v1719);
  }

  if (v1718 < 0)
  {
    operator delete(v1717[0]);
  }

  if (v1724 < 0)
  {
    operator delete(v1723[0]);
  }

  if (v1728 < 0)
  {
    operator delete(v1727);
  }

  if (v1726 < 0)
  {
    operator delete(v1725[0]);
  }

  if (v1732 < 0)
  {
    operator delete(v1731[0]);
  }

  if (v1736 < 0)
  {
    operator delete(v1735);
  }

  if (v1734 < 0)
  {
    operator delete(v1733[0]);
  }

  if (v1740 < 0)
  {
    operator delete(v1739[0]);
  }

  if (v1744 < 0)
  {
    operator delete(v1743);
  }

  if (v1742 < 0)
  {
    operator delete(v1741[0]);
  }

  if (v1748 < 0)
  {
    operator delete(v1747[0]);
  }

  if (v1752 < 0)
  {
    operator delete(v1751);
  }

  if (v1750 < 0)
  {
    operator delete(v1749[0]);
  }

  if (v1756 < 0)
  {
    operator delete(v1755[0]);
  }

  if (v1760 < 0)
  {
    operator delete(v1759);
  }

  if (v1758 < 0)
  {
    operator delete(v1757[0]);
  }

  if (v1764 < 0)
  {
    operator delete(v1763[0]);
  }

  if (v1768 < 0)
  {
    operator delete(v1767);
  }

  if (v1766 < 0)
  {
    operator delete(v1765[0]);
  }

  if (v1772 < 0)
  {
    operator delete(v1771[0]);
  }

  if (v1776 < 0)
  {
    operator delete(v1775);
  }

  if (v1774 < 0)
  {
    operator delete(v1773[0]);
  }

  if (v1780 < 0)
  {
    operator delete(v1779[0]);
  }

  if (v1784 < 0)
  {
    operator delete(v1783);
  }

  if (v1782 < 0)
  {
    operator delete(v1781[0]);
  }

  if (v1788 < 0)
  {
    operator delete(v1787[0]);
  }

  if (v1792 < 0)
  {
    operator delete(v1791);
  }

  if (v1790 < 0)
  {
    operator delete(v1789[0]);
  }

  if (v1796 < 0)
  {
    operator delete(v1795[0]);
  }

  if (v1800 < 0)
  {
    operator delete(v1799);
  }

  if (v1798 < 0)
  {
    operator delete(v1797[0]);
  }

  if (v1804 < 0)
  {
    operator delete(v1803[0]);
  }

  if (v1808 < 0)
  {
    operator delete(v1807);
  }

  if (v1806 < 0)
  {
    operator delete(v1805[0]);
  }

  if (v1812 < 0)
  {
    operator delete(v1811[0]);
  }

  if (v1816 < 0)
  {
    operator delete(v1815);
  }

  if (v1814 < 0)
  {
    operator delete(v1813[0]);
  }

  if (v1820 < 0)
  {
    operator delete(v1819[0]);
  }

  if (v1824 < 0)
  {
    operator delete(v1823);
  }

  if (v1822 < 0)
  {
    operator delete(v1821[0]);
  }

  if (v1828 < 0)
  {
    operator delete(v1827[0]);
  }

  if (v1832 < 0)
  {
    operator delete(v1831);
  }

  if (v1830 < 0)
  {
    operator delete(v1829[0]);
  }

  if (v1836 < 0)
  {
    operator delete(v1835[0]);
  }

  if (v1840 < 0)
  {
    operator delete(v1839);
  }

  if (v1838 < 0)
  {
    operator delete(v1837[0]);
  }

  if (v1844 < 0)
  {
    operator delete(v1843[0]);
  }

  if (v1848 < 0)
  {
    operator delete(v1847);
  }

  if (v1846 < 0)
  {
    operator delete(v1845[0]);
  }

  if (v1852 < 0)
  {
    operator delete(v1851[0]);
  }

  if (v1856 < 0)
  {
    operator delete(v1855);
  }

  if (v1854 < 0)
  {
    operator delete(v1853[0]);
  }

  if (v1860 < 0)
  {
    operator delete(v1859[0]);
  }

  if (v1864 < 0)
  {
    operator delete(v1863);
  }

  if (v1862 < 0)
  {
    operator delete(v1861[0]);
  }

  if (v1868 < 0)
  {
    operator delete(v1867[0]);
  }

  if (v1872 < 0)
  {
    operator delete(v1871);
  }

  if (v1870 < 0)
  {
    operator delete(v1869[0]);
  }

  if (v1876 < 0)
  {
    operator delete(v1875[0]);
  }

  if (v1880 < 0)
  {
    operator delete(v1879);
  }

  if (v1878 < 0)
  {
    operator delete(v1877[0]);
  }

  if (v1884 < 0)
  {
    operator delete(v1883[0]);
  }

  if (v1888 < 0)
  {
    operator delete(v1887);
  }

  if (v1886 < 0)
  {
    operator delete(v1885[0]);
  }

  if (v1892 < 0)
  {
    operator delete(v1891[0]);
  }

  if (v1896 < 0)
  {
    operator delete(v1895);
  }

  if (v1894 < 0)
  {
    operator delete(v1893[0]);
  }

  if (v1900 < 0)
  {
    operator delete(v1899[0]);
  }

  if (v1904 < 0)
  {
    operator delete(v1903);
  }

  if (v1902 < 0)
  {
    operator delete(v1901[0]);
  }

  if (v1908 < 0)
  {
    operator delete(v1907[0]);
  }

  if (v1912 < 0)
  {
    operator delete(v1911);
  }

  if (v1910 < 0)
  {
    operator delete(v1909[0]);
  }

  if (v1916 < 0)
  {
    operator delete(v1915[0]);
  }

  if (v1920 < 0)
  {
    operator delete(v1919);
  }

  if (v1918 < 0)
  {
    operator delete(v1917[0]);
  }

  if (v1924 < 0)
  {
    operator delete(v1923[0]);
  }

  if (v1928 < 0)
  {
    operator delete(v1927);
  }

  if (v1926 < 0)
  {
    operator delete(v1925[0]);
  }

  if (v1932 < 0)
  {
    operator delete(v1931[0]);
  }

  if (v1936 < 0)
  {
    operator delete(v1935);
  }

  if (v1934 < 0)
  {
    operator delete(v1933[0]);
  }

  if (v1940 < 0)
  {
    operator delete(v1939[0]);
  }

  if (v1944 < 0)
  {
    operator delete(v1943);
  }

  if (v1942 < 0)
  {
    operator delete(v1941[0]);
  }

  if (v1948 < 0)
  {
    operator delete(v1947[0]);
  }

  if (v1952 < 0)
  {
    operator delete(v1951[0]);
  }

  if (v1950 < 0)
  {
    operator delete(v1949[0]);
  }

  if (v1956 < 0)
  {
    operator delete(v1955[0]);
  }
}