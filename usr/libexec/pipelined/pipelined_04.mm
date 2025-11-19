uint64_t sub_10004C028(uint64_t a1, _DWORD *a2)
{
  sub_10004B2E4(*(a1 + 32), &v4, 4u);
  *a2 = bswap32(v4);
  return 4;
}

uint64_t sub_10004C070(uint64_t a1, void *a2)
{
  sub_10004B2E4(*(a1 + 32), &v4, 8u);
  *a2 = bswap64(v4);
  return 8;
}

uint64_t sub_10004C0B8(uint64_t a1, void *a2)
{
  sub_10004B2E4(*(a1 + 32), &v4, 8u);
  *a2 = bswap64(v4);
  return 8;
}

double sub_10004C1AC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 2, 1u, memory_order_relaxed);
  }

  *a1 = off_1004346F8;
  a1[1] = v2;
  a1[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 2, 1u, memory_order_relaxed);
    *&result = 0x4000000000;
    a1[3] = 0x4000000000;
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      v5 = a1;
      (*(*v3 + 16))(v3);
      a1 = v5;
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
        a1 = v5;
      }
    }

    *a1 = off_100434580;
  }

  else
  {
    *&result = 0x4000000000;
    a1[3] = 0x4000000000;
    *a1 = off_100434580;
  }

  return result;
}

void *sub_10004C2EC(void *result)
{
  *result = off_1004346F8;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void sub_10004C3B4(void *a1)
{
  *a1 = off_1004346F8;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
      }
    }
  }

  operator delete();
}

uint64_t sub_10004C4A0(uint64_t a1, int a2)
{
  result = 0;
  if (a2 <= 9)
  {
    if (a2 <= 3)
    {
      if (a2 == 2)
      {
        LOBYTE(__p) = 0;
        return (*(*a1 + 280))(a1, &__p);
      }

      else if (a2 == 3)
      {
        LOBYTE(__p) = 0;
        return (*(*a1 + 296))(a1, &__p);
      }
    }

    else
    {
      switch(a2)
      {
        case 4:
          __p = 0;
          return (*(*a1 + 328))(a1, &__p);
        case 6:
          LOWORD(__p) = 0;
          return (*(*a1 + 304))(a1, &__p);
        case 8:
          LODWORD(__p) = 0;
          return (*(*a1 + 312))(a1, &__p);
      }
    }
  }

  else if (a2 > 12)
  {
    switch(a2)
    {
      case 13:
        LODWORD(__p) = 0;
        v15 = 0;
        v11 = (*(*a1 + 232))(a1, &__p, &v15 + 4, &v15);
        if (v15)
        {
          v12 = 0;
          do
          {
            v13 = sub_10004C4A0(a1, __p) + v11;
            v11 = v13 + sub_10004C4A0(a1, HIDWORD(v15));
            ++v12;
          }

          while (v12 < v15);
        }

        return (*(*a1 + 240))(a1) + v11;
      case 14:
        HIDWORD(v15) = 0;
        LODWORD(__p) = 0;
        v9 = (*(*a1 + 264))(a1, &__p, &v15 + 4);
        if (HIDWORD(v15))
        {
          v10 = 0;
          do
          {
            v9 += sub_10004C4A0(a1, __p);
            ++v10;
          }

          while (v10 < HIDWORD(v15));
        }

        return (*(*a1 + 272))(a1) + v9;
      case 15:
        HIDWORD(v15) = 0;
        LODWORD(__p) = 0;
        v7 = (*(*a1 + 248))(a1, &__p, &v15 + 4);
        if (HIDWORD(v15))
        {
          v8 = 0;
          do
          {
            v7 += sub_10004C4A0(a1, __p);
            ++v8;
          }

          while (v8 < HIDWORD(v15));
        }

        return (*(*a1 + 256))(a1) + v7;
    }
  }

  else
  {
    if (a2 == 10)
    {
      __p = 0;
      return (*(*a1 + 320))(a1, &__p);
    }

    if (a2 == 11)
    {
      __p = 0;
      v17 = 0;
      v18 = 0;
      result = (*(*a1 + 344))(a1, &__p);
      if (SHIBYTE(v18) < 0)
      {
LABEL_39:
        v14 = result;
        operator delete(__p);
        return v14;
      }
    }

    else
    {
      __p = 0;
      v17 = 0;
      v18 = 0;
      LOWORD(v15) = 0;
      HIDWORD(v15) = 0;
      for (i = (*(*a1 + 200))(a1, &__p); ; i = v6 + v5 + (*(*a1 + 224))(a1))
      {
        v5 = (*(*a1 + 216))(a1, &__p, &v15 + 4, &v15) + i;
        if (!HIDWORD(v15))
        {
          break;
        }

        v6 = sub_10004C4A0(a1, HIDWORD(v15));
      }

      result = (*(*a1 + 208))(a1) + v5;
      if (SHIBYTE(v18) < 0)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

void sub_10004CA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004CA9C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 49) == 1)
  {
    v2 = *(a1 + 32);
    sub_10004B3FC();
  }

  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 8) >> 31)
    {
      exception = __cxa_allocate_exception(0x28uLL);
      exception[2] = 0;
      exception[3] = 0;
      *exception = &off_100434888;
      exception[1] = 0;
      *(exception + 8) = 3;
    }
  }

  v3 = *(a1 + 32);
  sub_10004B3FC();
}

void sub_10004CC54(uint64_t a1)
{
  *a1 = &off_1004341F8;
  if (*(a1 + 31) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 8));
    a1 = v2;
  }

  std::exception::~exception(a1);
}

void sub_10004CCC8(std::exception *this)
{
  this->__vftable = &off_1004341F8;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  operator delete();
}

const char *sub_10004CD3C(uint64_t a1)
{
  result = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    if (*(a1 + 16))
    {
      return *result;
    }
  }

  else if (*(a1 + 31))
  {
    return result;
  }

  v3 = *(a1 + 32);
  if (v3 > 5)
  {
    return "TProtocolException: (Invalid exception type)";
  }

  else
  {
    return off_1004348A0[v3];
  }
}

uint64_t sub_10004CD90(uint64_t a1, std::string *a2, _DWORD *a3, _DWORD *a4)
{
  sub_10004B2E4(*(a1 + 32), &v14, 4u);
  v8 = bswap32(v14);
  if ((v8 & 0x80000000) != 0)
  {
    if (WORD1(v8) != 32769)
    {
      exception = __cxa_allocate_exception(0x28uLL);
      sub_1000474A4(&v14, "Bad version identifier");
      sub_10004CFA0(exception, 4, &v14);
    }

    *a3 = v8;
    sub_10004B2E4(*(a1 + 32), &v14, 4u);
    v11 = sub_10004D03C(a1, a2, bswap32(v14));
    sub_10004B2E4(*(a1 + 32), &v14, 4u);
    *a4 = bswap32(v14);
    return (v11 + 12);
  }

  else
  {
    if (*(a1 + 48) == 1)
    {
      v12 = __cxa_allocate_exception(0x28uLL);
      sub_1000474A4(&v14, "No version identifier... old protocol client in strict mode?");
      sub_10004CFA0(v12, 4, &v14);
    }

    v9 = sub_10004D03C(a1, a2, v8);
    sub_10004B2E4(*(a1 + 32), &v14, 1u);
    *a3 = v14;
    sub_10004B2E4(*(a1 + 32), &v14, 4u);
    *a4 = bswap32(v14);
    return (v9 + 9);
  }
}

void sub_10004CF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004CFA0(uint64_t a1, int a2, __int128 *a3)
{
  *a1 = &off_1004341F8;
  v5 = a1 + 8;
  if (*(a3 + 23) < 0)
  {
    sub_100003228(v5, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(v5 + 16) = *(a3 + 2);
    *v5 = v6;
  }

  *a1 = &off_100434888;
  *(a1 + 32) = a2;
  return a1;
}

std::string::size_type sub_10004D03C(uint64_t a1, std::string *this, std::string::size_type __n)
{
  if ((__n & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 2;
  }

  v5 = *(a1 + 40);
  if (v5 >= 1 && v5 < __n)
  {
    v11 = __cxa_allocate_exception(0x28uLL);
    v11[2] = 0;
    v11[3] = 0;
    *v11 = &off_100434888;
    v11[1] = 0;
    *(v11 + 8) = 3;
  }

  if (__n)
  {
    std::string::resize(this, __n, 0);
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = this;
    }

    else
    {
      v8 = this->__r_.__value_.__r.__words[0];
    }

    sub_10004B2E4(*(a1 + 32), v8, __n);
    return __n;
  }

  else
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }

    return __n;
  }
}

uint64_t sub_10004D194(uint64_t a1, _DWORD *a2, _DWORD *a3, signed int *a4)
{
  sub_10004B2E4(*(a1 + 32), &v13, 1u);
  *a2 = v13;
  sub_10004B2E4(*(a1 + 32), &v14, 1u);
  *a3 = v14;
  sub_10004B2E4(*(a1 + 32), &v15, 4u);
  v8 = bswap32(v15);
  if (v8 < 0)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 2;
  }

  v9 = *(a1 + 44);
  if (v9 && v8 > v9)
  {
    v12 = __cxa_allocate_exception(0x28uLL);
    v12[2] = 0;
    v12[3] = 0;
    *v12 = &off_100434888;
    v12[1] = 0;
    *(v12 + 8) = 3;
  }

  *a4 = v8;
  return 6;
}

uint64_t sub_10004D2CC(uint64_t a1, _DWORD *a2, signed int *a3)
{
  sub_10004B2E4(*(a1 + 32), &v12, 1u);
  *a2 = v12;
  sub_10004B2E4(*(a1 + 32), &v13, 4u);
  v6 = bswap32(v13);
  if (v6 < 0)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 2;
  }

  v7 = *(a1 + 44);
  if (v7)
  {
    v8 = v6 <= v7;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v11 = __cxa_allocate_exception(0x28uLL);
    v11[2] = 0;
    v11[3] = 0;
    *v11 = &off_100434888;
    v11[1] = 0;
    *(v11 + 8) = 3;
  }

  *a3 = v6;
  return 5;
}

uint64_t sub_10004D3E8(uint64_t a1, int a2)
{
  v3 = 0;
  if (a2 <= 9)
  {
    if (a2 <= 3)
    {
      if (a2 != 2 && a2 != 3)
      {
        return v3;
      }

      v8 = *(a1 + 32);
      v9 = 1;
      v10 = 1;
    }

    else
    {
      if (a2 == 4)
      {
LABEL_23:
        v8 = *(a1 + 32);
        v9 = 8;
        v10 = 8;
        goto LABEL_25;
      }

      if (a2 != 6)
      {
        if (a2 == 8)
        {
          sub_10004B2E4(*(a1 + 32), &v15, 4u);
          return 4;
        }

        return v3;
      }

      v8 = *(a1 + 32);
      v9 = 2;
      v10 = 2;
    }

LABEL_25:
    sub_10004B2E4(v8, &v15, v10);
    return v9;
  }

  if (a2 > 12)
  {
    switch(a2)
    {
      case 13:
        v14 = 0;
        LODWORD(v15.__r_.__value_.__l.__data_) = 0;
        v16 = 0;
        v3 = sub_10004D194(a1, &v15, &v16, &v14);
        if (v14)
        {
          for (i = 0; i < v14; ++i)
          {
            v13 = sub_10004D3E8(a1, LODWORD(v15.__r_.__value_.__l.__data_)) + v3;
            v3 = v13 + sub_10004D3E8(a1, v16);
          }
        }

        break;
      case 14:
        LODWORD(v15.__r_.__value_.__l.__data_) = 0;
        v16 = 0;
        v3 = sub_10004D2CC(a1, &v15, &v16);
        if (v16)
        {
          for (j = 0; j < v16; ++j)
          {
            v3 = sub_10004D3E8(a1, LODWORD(v15.__r_.__value_.__l.__data_)) + v3;
          }
        }

        break;
      case 15:
        LODWORD(v15.__r_.__value_.__l.__data_) = 0;
        v16 = 0;
        v3 = sub_10004D2CC(a1, &v15, &v16);
        if (v16)
        {
          for (k = 0; k < v16; ++k)
          {
            v3 = sub_10004D3E8(a1, LODWORD(v15.__r_.__value_.__l.__data_)) + v3;
          }
        }

        break;
    }

    return v3;
  }

  if (a2 == 10)
  {
    goto LABEL_23;
  }

  if (a2 != 11)
  {
    memset(&v15, 0, sizeof(v15));
    std::string::assign(&v15, "");
    for (m = 0; ; m += sub_10004D3E8(a1, v5) + 3)
    {
      sub_10004B2E4(*(a1 + 32), &v16, 1u);
      v5 = v16;
      if (!v16)
      {
        break;
      }

      sub_10004B2E4(*(a1 + 32), &v16, 2u);
    }

    v3 = (m + 1);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_37;
    }

    return v3;
  }

  memset(&v15, 0, sizeof(v15));
  sub_10004B2E4(*(a1 + 32), &v16, 4u);
  v3 = sub_10004D03C(a1, &v15, bswap32(v16)) + 4;
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return v3;
  }

LABEL_37:
  operator delete(v15.__r_.__value_.__l.__data_);
  return v3;
}

void sub_10004D6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004D6EC(uint64_t a1)
{
  *a1 = off_100434238;
  v2 = *(a1 + 56);
  if (v2)
  {
    free(v2);
    *(a1 + 64) = 0;
  }

  *a1 = off_1004346F8;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  return a1;
}

uint64_t sub_10004D7DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[3];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }

    operator delete(v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_10004D890(uint64_t a1, uint64_t ***a2, uint64_t **a3)
{
  sub_10004DAA4(v12);
  v6 = *a2;
  if (*a3 != v6)
  {
    sub_100118404(&v13, v6 + 2);
    while (1)
    {
      v6 = *v6;
      if (v6 == *a3)
      {
        break;
      }

      v7 = *(a1 + 23);
      if (v7 >= 0)
      {
        v8 = a1;
      }

      else
      {
        v8 = *a1;
      }

      if (v7 >= 0)
      {
        v9 = *(a1 + 23);
      }

      else
      {
        v9 = *(a1 + 8);
      }

      sub_10003C2E4(&v13, v8, v9);
      sub_100118404(&v13, v6 + 2);
    }
  }

  std::stringbuf::str();
  v13 = v10;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10004DA74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t *sub_10004DAA4(uint64_t *a1)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(v2 + *(v7 - 24)) = v6;
  *a1 = v8;
  sub_100048428((a1 + 3), 24);
  return a1;
}

void sub_10004DD20(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10004DD54(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t sub_10004DEA4(uint64_t a1)
{
  result = wireless_diagnostics::google::protobuf::MessageLite::ParseFromZeroCopyStream();
  if ((result & 1) == 0)
  {
    if (qword_10045B050 != -1)
    {
      sub_10038308C();
    }

    v3 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    (*(*a1 + 16))(__p, a1);
    if (v10 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 68289795;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2081;
    v16 = v4;
    v17 = 2082;
    v18 = "assert";
    v19 = 2081;
    v20 = "parsed";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Failed to deserialize-next properly, typename:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (qword_10045B050 != -1)
    {
      sub_1003830A0();
      v5 = qword_10045B058;
      if (!os_signpost_enabled(qword_10045B058))
      {
        goto LABEL_18;
      }
    }

    else
    {
LABEL_11:
      v5 = qword_10045B058;
      if (!os_signpost_enabled(qword_10045B058))
      {
        goto LABEL_18;
      }
    }

    (*(*a1 + 16))(__p, a1);
    if (v10 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 68289795;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2081;
    v16 = v6;
    v17 = 2082;
    v18 = "assert";
    v19 = 2081;
    v20 = "parsed";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to deserialize-next properly", "{msg%{public}.0s:Failed to deserialize-next properly, typename:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (qword_10045B050 != -1)
    {
      sub_1003830A0();
      v7 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

LABEL_18:
    v7 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

LABEL_19:
    (*(*a1 + 16))(__p, a1);
    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 68289795;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2081;
    v16 = v8;
    v17 = 2082;
    v18 = "assert";
    v19 = 2081;
    v20 = "parsed";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Failed to deserialize-next properly, typename:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_24:
    abort_report_np();
  }

  return result;
}

uint64_t sub_10004E210(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t **sub_10004E27C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1000045A4(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_10004E670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10004E69C(va);
  _Unwind_Resume(a1);
}

void sub_10004E684(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10004E69C(va);
  _Unwind_Resume(a1);
}

void *sub_10004E69C(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t sub_10004E704(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_10004E764(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_10004E7E8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10004E858()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10004E8C8(uint64_t result, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = result;
    sub_100003228(result, *a2, *(a2 + 1));
    return v3;
  }

  else
  {
    v2 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v2;
  }

  return result;
}

void sub_10004E914(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_100003228(__p, *a2, *(a2 + 8));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      *&a3->__r_.__value_.__l.__data_ = *a1;
      a3->__r_.__value_.__r.__words[2] = *(a1 + 16);
      goto LABEL_6;
    }
  }

  sub_100003228(a3, *a1, *(a1 + 8));
LABEL_6:
  sub_1000032E4(a3, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10004E9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_10004EA10(uint64_t a1)
{
  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  sub_100050024((a1 + 144));

  return sub_1000505E0(a1);
}

void sub_10004EC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v25 - 17) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  if ((*(v25 - 17) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v25 - 40));
  _Unwind_Resume(exception_object);
}

void sub_10004EDF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((*(v18 - 17) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v18 - 17) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v18 - 40));
  _Unwind_Resume(exception_object);
}

void sub_10004EE4C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = 19;
  strcpy(__p, "pedometer.thriftbin");
  if (*(a1 + 23) < 0)
  {
    sub_100003228(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  sub_1000032E4(a2, __p);
  if (v4 < 0)
  {
    operator delete(*__p);
  }
}

void sub_10004EEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_10004EF3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 11;
  strcpy(__p, "ar_state.pb");
  if (*(a1 + 23) < 0)
  {
    sub_100003228(&v6, *a1, *(a1 + 8));
  }

  else
  {
    v6 = *a1;
  }

  sub_1000032E4(&v6, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100002F5C(&v6, 0, __p);
  if (LODWORD(__p[0]) < 2)
  {
    *a2 = 0;
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_13:
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = 0;
    v3 = (a2 + 8);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(v3, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
    }

    else
    {
      *v3 = *&v6.__r_.__value_.__l.__data_;
      *(a2 + 24) = *(&v6.__r_.__value_.__l + 2);
    }

    *a2 = 1;
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_13;
    }
  }
}

void sub_10004F050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004F098(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 17;
  strcpy(__p, "vio_estimation.pb");
  if (*(a1 + 23) < 0)
  {
    sub_100003228(&v6, *a1, *(a1 + 8));
  }

  else
  {
    v6 = *a1;
  }

  sub_1000032E4(&v6, __p);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  sub_100002F5C(&v6, 0, __p);
  if (*__p < 2u)
  {
    *a2 = 0;
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_13:
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = 0;
    v3 = (a2 + 8);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(v3, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
    }

    else
    {
      *v3 = *&v6.__r_.__value_.__l.__data_;
      *(a2 + 24) = *(&v6.__r_.__value_.__l + 2);
    }

    *a2 = 1;
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_13;
    }
  }
}

void sub_10004F1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004F320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004F368(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 20;
  strcpy(__p, "provider_position.pb");
  if (*(a1 + 23) < 0)
  {
    sub_100003228(&v6, *a1, *(a1 + 8));
  }

  else
  {
    v6 = *a1;
  }

  sub_1000032E4(&v6, __p);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  sub_100002F5C(&v6, 0, __p);
  if (*__p < 2u)
  {
    *a2 = 0;
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_13:
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = 0;
    v3 = (a2 + 8);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(v3, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
    }

    else
    {
      *v3 = *&v6.__r_.__value_.__l.__data_;
      *(a2 + 24) = *(&v6.__r_.__value_.__l + 2);
    }

    *a2 = 1;
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_13;
    }
  }
}

void sub_10004F47C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004F5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004F640(uint64_t a1)
{
  *(&v6.__r_.__value_.__s + 23) = 19;
  strcpy(&v6, "datarun_metadata.pb");
  sub_10004E914(a1, &v6, &v9);
  sub_100002F5C(&v9, 0, &v6);
  if (LODWORD(v6.__r_.__value_.__l.__data_) < 2)
  {
    *(&v6.__r_.__value_.__s + 23) = 20;
    strcpy(&v6, "datarun_metadata.bin");
    sub_10004E914(a1, &v6, &v8);
    sub_100002F5C(&v8, 0, &v6);
    if (LODWORD(v6.__r_.__value_.__l.__data_) >= 2)
    {
      sub_10004F92C(&v6);
    }

    __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    std::logic_error::logic_error(&v5, &v6);
    sub_10010A984(v4);
  }

  sub_1000479B4(&v9, &v6);
  if (v7)
  {
    v2 = *(v7 + 40);
    sub_1000A9070(&v6);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_4:
      operator delete(v9.__r_.__value_.__l.__data_);
      return v2;
    }
  }

  else
  {
    v2 = *(*(qword_10045DD30 + 40) + 40);
    sub_1000A9070(&v6);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_4;
    }
  }

  return v2;
}

void sub_10004F860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, std::invalid_argument a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::invalid_argument::~invalid_argument(&a13);
  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (*(v19 - 57) < 0)
  {
    operator delete(*(v19 - 80));
    if (*(v19 - 33) < 0)
    {
LABEL_9:
      operator delete(*(v19 - 56));
      _Unwind_Resume(a1);
    }
  }

  else if (*(v19 - 33) < 0)
  {
    goto LABEL_9;
  }

  _Unwind_Resume(a1);
}

void sub_10004F92C(uint64_t a1)
{
  *a1 = off_10043A548;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 225) = 0u;
  *(a1 + 248) = off_10043A508;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) &= 0xF0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 288) = off_10043A528;
  *(a1 + 296) = a1 + 304;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 320) = 0;
  *(a1 + 348) &= 0xF8u;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  *(a1 + 400) = 0;
  *(a1 + 402) = *(a1 + 402) & 0xFC | 1;
  sub_1000ED7A4();
}

void sub_10004FD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10004A8AC(va);
  sub_10004A800(v5 - 48);
  sub_10002BB1C(v5 - 32);
  sub_1000E2BFC(v4);
  _Unwind_Resume(a1);
}

uint64_t *sub_10004FD84(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8((v1 + 48), (v1 + 56), v2);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void *sub_10004FE00@<X0>(atomic_uint **a1@<X0>, atomic_uint **a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add(v5, 1u);
  }

  v6 = *a2;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
  }

  result = sub_100051F38(a3, &v11, &v10);
  v8 = v10;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8(v8 + 6, v8 + 7, v12);
    if (*(v8 + 31) < 0)
    {
      operator delete(*(v8 + 1));
    }

    operator delete();
  }

  v9 = v11;
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8(v9 + 6, v9 + 7, v12);
    if (*(v9 + 31) < 0)
    {
      operator delete(*(v9 + 1));
    }

    operator delete();
  }

  return result;
}

void sub_10004FF00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_10004FD84(va);
  sub_10004FD84(va1);
  _Unwind_Resume(a1);
}

void *sub_10004FF1C(_DWORD *a1)
{
  v3 = *a1;
  v1 = a1 + 2;
  v2 = v3;
  switch(v3 ^ (v3 >> 31))
  {
    case 1:
      if (v2 < 0)
      {
        v1 = *v1;
      }

      result = v1[2];
      break;
    case 2:
    case 0xB:
    case 0xD:
    case 0xE:
    case 0x10:
      goto LABEL_3;
    case 3:
      if (v2 < 0)
      {
        v1 = *v1;
      }

      result = v1[4];
      break;
    case 4:
      if (v2 < 0)
      {
        v1 = *v1;
      }

      result = v1[1];
      break;
    case 5:
      if (v2 < 0)
      {
        v1 = *v1;
      }

      result = v1[1];
      break;
    case 6:
      if (v2 < 0)
      {
        v1 = *v1;
      }

      result = v1[1];
      break;
    case 7:
      if (v2 < 0)
      {
        v1 = *v1;
      }

      result = v1[1];
      break;
    case 8:
      if (v2 < 0)
      {
        v1 = *v1;
      }

      result = v1[4];
      break;
    case 9:
      if (v2 < 0)
      {
        v1 = *v1;
      }

      result = v1[1];
      break;
    case 0xA:
      if (v2 < 0)
      {
        v1 = *v1;
      }

      result = v1[1];
      break;
    case 0xF:
      if (v2 < 0)
      {
        v1 = *v1;
      }

      result = v1[1];
      break;
    default:
      if (v2 < 0)
      {
        result = **v1;
      }

      else
      {
LABEL_3:
        result = *v1;
      }

      break;
  }

  return result;
}

void *sub_100050024(void *a1)
{
  v2 = a1[35];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[33];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[31];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[29];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[27];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[25];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[23];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = a1[21];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = a1[19];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = a1[17];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = a1[15];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = a1[13];
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = a1[11];
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = a1[9];
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = a1[7];
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = a1[5];
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = a1[3];
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = a1[1];
  if (!v19 || atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  return a1;
}

uint64_t sub_100050568(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t *sub_1000505E0(uint64_t *a1)
{
  v2 = a1[17];
  a1[17] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[16];
  a1[16] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[15];
  a1[15] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[14];
  a1[14] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[13];
  a1[13] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[12];
  a1[12] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = a1[11];
  a1[11] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = a1[10];
  a1[10] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = a1[9];
  a1[9] = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = a1[8];
  a1[8] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = a1[7];
  a1[7] = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = a1[6];
  a1[6] = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = a1[5];
  a1[5] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = a1[4];
  a1[4] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = a1[3];
  a1[3] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = a1[2];
  a1[2] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = a1[1];
  a1[1] = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *a1;
  *a1 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  return a1;
}

void sub_100050964(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = 15;
  strcpy(__p, "accel.thriftbin");
  if (*(a1 + 23) < 0)
  {
    sub_100003228(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  sub_1000032E4(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100050A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_100050B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_100050B60(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = 9;
  strcpy(__p, "accel.dat");
  if (*(a1 + 23) < 0)
  {
    sub_100003228(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  sub_1000032E4(a2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100050BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_100050D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_100050E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_100050E68(size_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v9 = v4;
  if (!v4)
  {
    LOBYTE(__dst) = 0;
    result = sub_10001A918(a1, &__dst);
    if ((v9 & 0x80000000) == 0)
    {
      return result;
    }

LABEL_8:
    v7 = result;
    operator delete(__dst);
    return v7;
  }

  memcpy(&__dst, __s, v4);
  *(&__dst + v5) = 0;
  result = sub_10001A918(a1, &__dst);
  if (v9 < 0)
  {
    goto LABEL_8;
  }

  return result;
}

std::string *sub_100050F78@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100050FAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100050FC8@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100050FFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100051018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 16 * (v4 >> 1));
    v9 = sub_10004FF1C(*v8);
    v11 = *(a2 - 16);
    v10 = (a2 - 16);
    if (sub_10004FF1C(v11) < v9)
    {
      v20 = *v10;
      *v10 = 0;
      v10[1] = 0;
      while (1)
      {
        v12 = v8;
        v13 = *v8;
        *v8 = 0;
        v8[1] = 0;
        v14 = v10[1];
        *v10 = v13;
        if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 16 * v7);
        v15 = sub_10004FF1C(*v8);
        v16 = v20;
        v10 = v12;
        if (sub_10004FF1C(v20) >= v15)
        {
          v17 = *(&v20 + 1);
          v21 = 0uLL;
          v18 = v12[1];
          *v12 = v16;
          v12[1] = v17;
          if (!v18)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }
      }

      v19 = v20;
      v21 = 0uLL;
      v18 = v8[1];
      *v8 = v19;
      if (!v18)
      {
        goto LABEL_14;
      }

LABEL_12:
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

LABEL_14:
      if (*(&v21 + 1))
      {
        if (!atomic_fetch_add((*(&v21 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(**(&v21 + 1) + 16))(*(&v21 + 1));
          std::__shared_weak_count::__release_weak(*(&v21 + 1));
        }
      }
    }
  }
}

uint64_t sub_1000511F8(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_10000FC84();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v19 = 32 * ((a1[1] - *a1) >> 5);
  sub_10012A244(v19, a2);
  v6 = 96 * v2 + 96;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v19 + v9;
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v19 + v9;
    do
    {
      v14.n128_f64[0] = sub_10012A244(v13, v12);
      v12 += 96;
      v13 += 96;
      v11 -= 96;
    }

    while (v12 != v8);
    v15 = v7;
    v16 = v7;
    do
    {
      v17 = *v16;
      v16 += 12;
      (*v17)(v7, v14);
      v15 += 12;
      v7 = v16;
    }

    while (v16 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_100051398(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000513D0(va);
  _Unwind_Resume(a1);
}

void sub_1000513AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v4)
  {
    sub_1003830C8(v3, v2);
  }

  sub_1000513D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000513D0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 96);
    *(a1 + 16) = i - 96;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100051460(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004348E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000514C0(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = *a1;
  switch(v2 ^ (v2 >> 31))
  {
    case 1:
      if ((v2 & 0x80000000) == 0)
      {
        v27 = a1 + 8;

        nullsub_72(v27);
        return;
      }

      if (!*v1)
      {
        return;
      }

      (nullsub_72)();
      goto LABEL_143;
    case 2:
      return;
    case 3:
    case 8:
      if ((v2 & 0x80000000) == 0)
      {
        v3 = a1 + 8;

        nullsub_67(v3);
        return;
      }

      if (!*v1)
      {
        return;
      }

      (nullsub_67)();
      goto LABEL_143;
    case 4:
      if ((v2 & 0x80000000) == 0)
      {
        v24 = a1 + 8;

        sub_100130234(v24);
        return;
      }

      if (!*v1)
      {
        return;
      }

      (sub_100130234)();
      goto LABEL_119;
    case 5:
      if ((v2 & 0x80000000) == 0)
      {
        v33 = (a1 + 8);

        sub_10013C960(v33);
        return;
      }

      if (!*v1)
      {
        return;
      }

      sub_10013C960(*v1);

      goto LABEL_121;
    case 6:
      if ((v2 & 0x80000000) == 0)
      {
        v36 = a1 + 8;

        sub_10012660C(v36);
        return;
      }

      if (!*v1)
      {
        return;
      }

      (sub_10012660C)();
      goto LABEL_136;
    case 7:
      if ((v2 & 0x80000000) == 0)
      {
        v29 = a1 + 8;

        sub_10012E8E4(v29);
        return;
      }

      if (!*v1)
      {
        return;
      }

      sub_10012E8E4(*v1);
      goto LABEL_119;
    case 9:
      if ((v2 & 0x80000000) == 0)
      {
        v26 = a1 + 8;

        sub_10013CFA4(v26);
        return;
      }

      if (!*v1)
      {
        return;
      }

      sub_10013CFA4(*v1);
LABEL_119:

      goto LABEL_121;
    case 0xA:
      if ((v2 & 0x80000000) == 0)
      {
        v38 = a1 + 8;

        nullsub_71(v38);
        return;
      }

      if (!*v1)
      {
        return;
      }

      nullsub_71(*v1);
LABEL_143:

      goto LABEL_121;
    case 0xB:
      v15 = *(a1 + 88);
      if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v16 = a1;
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
        a1 = v16;
      }

      v17 = a1;
      v18 = *(a1 + 56);
      while (v18)
      {
        v19 = v18;
        v18 = *v18;
        sub_10011B04C(v19 + 4);
        v20 = v19[3];
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        operator delete(v19);
      }

      v21 = v17;
      v22 = *(v17 + 40);
      *(v17 + 40) = 0;
      if (v22)
      {
        operator delete(v22);
        v21 = v17;
      }

      v23 = *(v21 + 32);
      if (!v23)
      {
        return;
      }

      goto LABEL_99;
    case 0xC:
      if (v2 < 0)
      {
        v41 = *v1;
        if (!*v1)
        {
          return;
        }

        nullsub_76(v41 + 24);
        v42 = *(v41 + 16);
        if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v42->__on_zero_shared)(v42);
          std::__shared_weak_count::__release_weak(v42);
        }

LABEL_148:

LABEL_121:
        operator delete();
      }

      v25 = a1;
      nullsub_76(a1 + 32);
      v23 = *(v25 + 24);
      if (v23)
      {
LABEL_99:
        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);

          std::__shared_weak_count::__release_weak(v23);
        }
      }

      return;
    case 0xD:
      v35 = *(a1 + 24);
      if (v35)
      {
        CFRelease(v35);
      }

      return;
    case 0xE:
      v13 = *(a1 + 32);
      if (v13)
      {
        for (i = *(a1 + 40); i != v13; i -= 88)
        {
          if (*(i - 48) == 1)
          {
            *(i - 48) = 0;
          }
        }

        *(a1 + 40) = v13;
        v40 = a1;
        operator delete(v13);
        a1 = v40;
      }

      v23 = *(a1 + 24);
      if (v23)
      {
        goto LABEL_99;
      }

      return;
    case 0xF:
      if ((v2 & 0x80000000) == 0)
      {
        v28 = a1 + 8;

        sub_100134BA4(v28);
        return;
      }

      if (!*v1)
      {
        return;
      }

      (sub_100134BA4)();
LABEL_136:

      goto LABEL_121;
    case 0x10:
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = *(a1 + 24);
        v6 = *(a1 + 16);
        if (v5 != v4)
        {
          v7 = a1;
          v8 = v5 - 11;
          v9 = v5 - 11;
          v10 = v5 - 11;
          do
          {
            v11 = *v10;
            v10 -= 11;
            (*v11)(v9);
            v8 -= 11;
            v12 = v9 == v4;
            v9 = v10;
          }

          while (!v12);
          a1 = v7;
          v6 = *(v7 + 16);
        }

        *(a1 + 24) = v4;

        operator delete(v6);
      }

      return;
    case 0x11:
      if ((v2 & 0x80000000) == 0)
      {
        v31 = a1 + 24;

        sub_1000A8524(v31);
        return;
      }

      if (!*v1)
      {
        return;
      }

      sub_1000A8524(*v1 + 16);
      goto LABEL_148;
    case 0x12:
      if ((v2 & 0x80000000) == 0)
      {
        v37 = a1;
        sub_1000A8524(a1 + 120);

        sub_10005F4E8((v37 + 16));
        return;
      }

      v45 = *v1;
      if (!*v1)
      {
        return;
      }

      sub_1000A8524(v45 + 112);
      sub_10005F4E8((v45 + 8));
      goto LABEL_148;
    case 0x13:
      if ((v2 & 0x80000000) == 0)
      {
        v39 = a1;
        sub_1000A8524(a1 + 88);

        sub_10006A6AC(v39 + 16);
        return;
      }

      v46 = *v1;
      if (!*v1)
      {
        return;
      }

      sub_1000A8524(v46 + 80);
      sub_10006A6AC(v46 + 8);
      goto LABEL_148;
    case 0x14:
      if ((v2 & 0x80000000) == 0)
      {
        v32 = a1;
        sub_1000A8524(a1 + 184);

        sub_1000B7124((v32 + 24));
        return;
      }

      v43 = *v1;
      if (!*v1)
      {
        return;
      }

      sub_1000A8524(v43 + 176);
      sub_1000B7124((v43 + 16));
      goto LABEL_148;
    case 0x15:
      if ((v2 & 0x80000000) == 0)
      {
        v34 = a1;
        sub_1000A8524(a1 + 112);

        sub_10006DD50((v34 + 16));
        return;
      }

      v44 = *v1;
      if (!*v1)
      {
        return;
      }

      sub_1000A8524(v44 + 104);
      sub_10006DD50((v44 + 8));
      goto LABEL_148;
    default:
      if ((v2 & 0x80000000) == 0)
      {
        v30 = a1 + 16;

        nullsub_70(v30);
        return;
      }

      if (!*v1)
      {
        return;
      }

      nullsub_70(*v1 + 8);
      goto LABEL_148;
  }
}

uint64_t sub_100051D10(__int128 **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10000FC84();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v6 = (8 * ((a1[1] - *a1) >> 3));
  v15 = 24 * v2;
  if (*(a2 + 23) < 0)
  {
    sub_100003228(v6, *a2, *(a2 + 8));
    v7 = 24 * v2 + 24;
    v8 = *a1;
    v9 = a1[1];
    v10 = (v15 + *a1 - v9);
    if (v9 == *a1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *v6 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 16);
    v7 = (v6 + 24);
    v8 = *a1;
    v9 = a1[1];
    v10 = &v6[*a1 - v9];
    if (v9 == *a1)
    {
      goto LABEL_21;
    }
  }

  v11 = v8;
  v12 = v10;
  do
  {
    v13 = *v11;
    *(v12 + 2) = *(v11 + 2);
    *v12 = v13;
    v12 += 24;
    *(v11 + 1) = 0;
    *(v11 + 2) = 0;
    *v11 = 0;
    v11 = (v11 + 24);
  }

  while (v11 != v9);
  do
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    v8 = (v8 + 24);
  }

  while (v8 != v9);
  v8 = *a1;
LABEL_21:
  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_100051EBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100051ED0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100051ED0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_100051F38(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add(v3, 1u);
  }

  v4 = *a3;
  if (*a3)
  {
    atomic_fetch_add(v4, 1u);
  }

  *result = v3;
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  result[1] = v4;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      sub_100014DC8((v4 + 48), (v4 + 56), v5);
      if (*(v4 + 31) < 0)
      {
        operator delete(*(v4 + 8));
      }

      operator delete();
    }
  }

  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8((v3 + 48), (v3 + 56), v5);
    if (*(v3 + 31) < 0)
    {
      operator delete(*(v3 + 8));
    }

    operator delete();
  }

  return result;
}

void sub_100052048()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000520B8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100052128(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1000522F0(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_100052294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000522A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000522BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000522F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045C630 & 1) == 0)
  {
    byte_10045C630 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/uuid.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x17protobuf/gen/uuid.proto\x12\bproto.idE\n\x04UUID\x12\x1E\n\x16least_significant_bits\x18\x01 \x02(\x12\x12\x1D\n\x15most_significant_bits\x18\x02 \x02(\x12B\x1B\n\x19com.apple.indoor.proto.id", 0x87, v4);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_10005240C()
{
  if (qword_10045DB18)
  {
    (*(*qword_10045DB18 + 8))(qword_10045DB18);
  }

  result = qword_10045C648;
  if (qword_10045C648)
  {
    v1 = *(*qword_10045C648 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_100052494()
{
  v0 = qword_10045C650;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100052128;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  if (!qword_10045DB18)
  {
    sub_1000522F0();
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_100052554(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100052568(void *a1)
{
  *a1 = off_100434930;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_1000525C8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 16);
      *(a1 + 36) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 24);
      *(a1 + 36) |= 2u;
      *(a1 + 24) = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100052688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005269C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000526B0(uint64_t a1)
{
  *a1 = off_100434930;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100052704(uint64_t a1)
{
  *a1 = off_100434930;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_100052774(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DB18;
  if (!qword_10045DB18)
  {
    sub_1000522F0(0, a2, a3, a4);
    return qword_10045DB18;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10005283C(uint64_t a1)
{
  if (*(a1 + 36))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10005285C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v16 = 0;
      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x8000000000000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v16);
        if (!result)
        {
          return result;
        }

        v10 = v16;
        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 16) = -(v10 & 1) ^ (v10 >> 1);
      *(a1 + 36) |= 1u;
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(this + 1) = v11 + 1;
        v16 = 0;
        if ((v11 + 1) >= v8)
        {
          goto LABEL_25;
        }

LABEL_23:
        v13 = *v12;
        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_25:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v16);
          if (!result)
          {
            return result;
          }

          v13 = v16;
          v14 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_27;
        }

        v14 = v12 + 1;
        *(this + 1) = v14;
LABEL_27:
        *(a1 + 24) = -(v13 & 1) ^ (v13 >> 1);
        *(a1 + 36) |= 2u;
        if (v14 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(this + 1);
      v8 = *(this + 2);
      v16 = 0;
      if (v12 >= v8)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100052A30(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt64(1, *(result + 16), a2, a4);
    if ((*(v5 + 36) & 2) == 0)
    {
LABEL_3:
      v9 = *(v5 + 8);
      v8 = (v5 + 8);
      v7 = v9;
      if (!v9)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt64(2, *(v5 + 24), a2, a4);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_7:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100052ACC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v4 = *(this + 9);
  if (v4)
  {
    v8 = *(this + 2);
    *a2 = 8;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(((2 * v8) ^ (v8 >> 63)), a2 + 1, a3);
    if ((*(this + 9) & 2) == 0)
    {
LABEL_3:
      v7 = *(this + 1);
      v6 = (this + 8);
      v5 = v7;
      if (!v7)
      {
        return a2;
      }

      goto LABEL_7;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(this + 3);
  *a2 = 16;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(((2 * v9) ^ (v9 >> 63)), a2 + 1, a3);
  v10 = *(this + 1);
  v6 = (this + 8);
  v5 = v10;
  if (!v10)
  {
    return a2;
  }

LABEL_7:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, a2, a3);
}

uint64_t sub_100052B7C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 36))
  {
    if ((*(a1 + 36) & 1) == 0)
    {
      v3 = 0;
      if ((*(a1 + 36) & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(((2 * *(a1 + 16)) ^ (*(a1 + 16) >> 63)), a2) + 1;
    if ((*(a1 + 36) & 2) != 0)
    {
LABEL_7:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(((2 * *(a1 + 24)) ^ (*(a1 + 24) >> 63)), a2) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_8:
  v4 = *(a1 + 8);
  if (v4 && *v4 != v4[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 32) = v3;
  return v3;
}

uint64_t sub_100052C18(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_1000525C8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100052CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100052D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100052D20(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100052DC0()
{
  v0 = qword_10045C650;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100052128;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C640;
}

void sub_100052E50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100052EAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_100053074(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_100053018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005302C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100053040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100053074(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045C658 & 1) == 0)
  {
    byte_10045C658 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/common/protobuf/clpsensorsurvey/Proto/CLPPipelinedLogEntry.pb.cc", a4);
    sub_100086130(v4, v5, v6, v7);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x1ACLPPipelinedLogEntry.proto\x12\x1Cproto.CLP.LogEntry.Pipelined\x1A\x18CLPPipelinedOutput.protoS\n\bLogEntry\x12G\n\x10pipelined_output\x18\x01 \x01(\v2-.proto.CLP.LogEntry.Pipelined.PipelinedOutput", 0xA9, v8);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_100053198()
{
  if (qword_10045DB20)
  {
    (*(*qword_10045DB20 + 8))(qword_10045DB20);
  }

  result = qword_10045C670;
  if (qword_10045C670)
  {
    v1 = *(*qword_10045C670 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_100053220()
{
  v0 = qword_10045C678;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100052EAC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  if (!qword_10045DB20)
  {
    sub_100053074();
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1000532E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000532F4(void *a1)
{
  *a1 = off_1004349F8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

uint64_t sub_100053350(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
    if ((*(a2 + 28) & 1) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else if ((*(a2 + 28) & 1) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  *(a1 + 28) |= 1u;
  v4 = *(a1 + 16);
  if (!v4)
  {
    operator new();
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    v5 = *(qword_10045DB20 + 16);
  }

  sub_100089DA4(v4, v5);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100053464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100053478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005348C(void *a1)
{
  *a1 = off_1004349F8;
  if (qword_10045DB20 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100053520(void *a1)
{
  *a1 = off_1004349F8;
  if (qword_10045DB20 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000535D0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DB20;
  if (!qword_10045DB20)
  {
    sub_100053074(0, a2, a3, a4);
    return qword_10045DB20;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100053694(uint64_t a1)
{
  if ((*(a1 + 28) & 1) != 0 && *(a1 + 16))
  {
    v2 = a1;
    sub_10008A310(*(a1 + 16));
    a1 = v2;
    v1 = vars8;
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000536F0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 < *(this + 2))
      {
        TagFallback = *v6;
        if ((TagFallback & 0x80000000) == 0)
        {
          break;
        }
      }

      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (TagFallback != 10)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(a1 + 28) |= 1u;
      v8 = *(a1 + 16);
      if (!v8)
      {
        operator new();
      }

      v19 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19))
        {
          return 0;
        }
      }

      else
      {
        v19 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v19);
      if (!sub_10008A428(v8, this, v13, v14) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v15 = *(this + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(this + 14) = v17;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    *(this + 8) = TagFallback;
    *(this + 1) = v6 + 1;
    if (TagFallback == 10)
    {
      goto LABEL_9;
    }

LABEL_4:
    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

wireless_diagnostics::google::protobuf::internal::WireFormat *sub_1000538E0(uint64_t a1, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(a1 + 28))
  {
    v5 = a1;
    v6 = *(a1 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DB20 + 16);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
    a1 = v5;
  }

  v9 = *(a1 + 8);
  result = (a1 + 8);
  v8 = v9;
  if (v9 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(result, a2, a3);
  }

  return result;
}

uint64_t sub_100053964(uint64_t a1, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(a1 + 28))
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_10045DB20 + 16);
    }

    v5 = a1;
    *a2 = 10;
    v6 = v4[14];
    if (v6 > 0x7F)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v6;
      v7 = (a2 + 2);
    }

    a2 = sub_10008A98C(v4, v7, a3, a4);
    a1 = v5;
  }

  v10 = *(a1 + 8);
  v8 = (a1 + 8);
  v9 = v10;
  if (!v10 || *v9 == v9[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, a2, a3);
}

uint64_t sub_100053A14(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = sub_10008AB44(v7, a2);
      if (v8 < 0x80)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = sub_10008AB44(*(qword_10045DB20 + 16), a2);
      if (v8 < 0x80)
      {
LABEL_6:
        v3 = (v8 + 2);
        v4 = (a1 + 8);
        v5 = *(a1 + 8);
        if (!v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v3 = v8 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v4 = (a1 + 8);
    v5 = *(a1 + 8);
    if (!v5)
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  v3 = 0;
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_3:
    *(a1 + 24) = v3;
    return v3;
  }

LABEL_10:
  if (*v5 == v5[1])
  {
    goto LABEL_3;
  }

  v9 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v4, a2) + v3;
  *(a1 + 24) = v9;
  return v9;
}

uint64_t sub_100053AE8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100053350(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100053BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100053BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100053BF0(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100053C84()
{
  v0 = qword_10045C678;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100052EAC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C668;
}

void sub_100053D14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100053D34(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_100053EFC(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_100053EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100053EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100053EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100053EFC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045C680 & 1) == 0)
  {
    byte_10045C680 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/common/protobuf/clpsensorsurvey/Proto/CLPPrivateDataCapture.pb.cc", a4);
    sub_10007AA60(v4, v5, v6, v7);
    sub_100053074(v8, v9, v10, v11);
    sub_10008484C(v12, v13, v14, v15);
    sub_10008DAB0(v16, v17, v18, v19);
    sub_10006C580(v20, v21, v22, v23);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x1BCLPPrivateDataCapture.proto\x12\x1Eproto.CLP.LogEntry.PrivateData\x1A\x1ACLPPrivateDataShared.proto\x1A\x1ACLPPipelinedLogEntry.proto\x1A\x17CLPVisionLogEntry.proto\x1A\x1DCLPSensorSurveyLogEntry.proto\x1A!CLPOutdoorEstimatorLogEntry.proto\xF3\x03\x0A\x12PrivateDataCapture\x124\n\x05accel\x18\x01 \x01(\v2%.proto.CLP.LogEntry.PrivateData.Accel\x122\n\x04gyro\x18\x02 \x01(\v2$.proto.CLP.LogEntry.PrivateData.Gyro\x12K\n\x11wifi_notification\x18\x16 \x01(\v20.proto.CLP.LogEntry.PrivateData.WifiNotification\x12>\n\x10vision_log_entry\x18\xEF\x07\x20\x01(\v2#.proto.CLP.LogEntry.Vision.LogEntry\x12K\n\x17sensor_survey_log_entry\x18\xF1\x07\x20\x01(\v2).proto.CLP.LogEntry.SensorSurvey.LogEntry\x12D\n\x13pipelined_log_entry\x18\xF3\x07\x20\x01(\v2&.proto.CLP.LogEntry.Pipelined.LogEntry\x12S\n\x1Boutdoor_estimator_log_entry\x18\xF4\x07\x20\x01(\v2-.proto.CLP.LogEntry.OutdoorEstimator.LogEntry", 0x2C6, v24);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_100054068()
{
  if (qword_10045DB28)
  {
    (*(*qword_10045DB28 + 8))(qword_10045DB28);
  }

  result = qword_10045C698;
  if (qword_10045C698)
  {
    v1 = *(*qword_10045C698 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1000540F0()
{
  v0 = qword_10045C6A0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100053D34;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  if (!qword_10045DB28)
  {
    sub_100053EFC();
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1000541B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000541C4(uint64_t a1)
{
  *a1 = off_100434AC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_100054228(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
    LOBYTE(v4) = *(a2 + 76);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 76);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    *(a1 + 76) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DB28 + 16);
    }

    sub_10007CEC0(v5, v6);
    v4 = *(a2 + 76);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 76) |= 2u;
    v7 = *(a1 + 24);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 24);
    if (!v8)
    {
      v8 = *(qword_10045DB28 + 24);
    }

    sub_10007EB48(v7, v8);
    v4 = *(a2 + 76);
  }

  if ((v4 & 4) != 0)
  {
    *(a1 + 76) |= 4u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 32);
    if (!v10)
    {
      v10 = *(qword_10045DB28 + 32);
    }

    sub_100082930(v9, v10);
    v4 = *(a2 + 76);
  }

  if ((v4 & 8) != 0)
  {
    *(a1 + 76) |= 8u;
    v11 = *(a1 + 40);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 40);
    if (!v12)
    {
      v12 = *(qword_10045DB28 + 40);
    }

    sub_100084B58(v11, v12);
    v4 = *(a2 + 76);
  }

  if ((v4 & 0x10) != 0)
  {
    *(a1 + 76) |= 0x10u;
    v13 = *(a1 + 48);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 48);
    if (!v14)
    {
      v14 = *(qword_10045DB28 + 48);
    }

    sub_10008DDDC(v13, v14);
    v4 = *(a2 + 76);
  }

  if ((v4 & 0x20) != 0)
  {
    *(a1 + 76) |= 0x20u;
    v15 = *(a1 + 56);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 56);
    if (!v16)
    {
      v16 = *(qword_10045DB28 + 56);
    }

    sub_100053350(v15, v16);
    v4 = *(a2 + 76);
  }

  if ((v4 & 0x40) != 0)
  {
    *(a1 + 76) |= 0x40u;
    v17 = *(a1 + 64);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 64);
    if (!v18)
    {
      v18 = *(qword_10045DB28 + 64);
    }

    sub_10006D498(v17, v18);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100054658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005466C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_100054680(void *result)
{
  if (qword_10045DB28 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[6];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[7];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    result = v1[8];
    if (result)
    {
      v8 = *(*result + 8);

      return v8();
    }
  }

  return result;
}

void sub_1000547FC(void *a1)
{
  *a1 = off_100434AC0;
  v2 = (a1 + 1);
  sub_100054680(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10005485C(void *a1)
{
  *a1 = off_100434AC0;
  v2 = (a1 + 1);
  sub_100054680(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000548D8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DB28;
  if (!qword_10045DB28)
  {
    sub_100053EFC(0, a2, a3, a4);
    return qword_10045DB28;
  }

  return result;
}

uint64_t sub_1000549A4(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 76);
  if (v2)
  {
    if (*(this + 76))
    {
      this = *(this + 16);
      if (this)
      {
        this = sub_10007D360(this);
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = sub_10007EFE8(this);
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = sub_100082F94(this);
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = sub_100085084(this);
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = sub_10008E60C(this);
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = sub_100053694(this);
        v2 = *(v1 + 76);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = sub_10006DEFC(this);
      }
    }
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  *(v3 + 17) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_100054A80(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(this + 1);
          if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v6 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 > 0x3EE)
          {
            break;
          }

          if (v8 == 1)
          {
            if (v9 != 2)
            {
              goto LABEL_37;
            }

            *(a1 + 76) |= 1u;
            v13 = *(a1 + 16);
            if (!v13)
            {
              operator new();
            }

            v81 = 0;
            v14 = *(this + 1);
            if (v14 >= *(this + 2) || *v14 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v81))
              {
                return 0;
              }
            }

            else
            {
              v81 = *v14;
              *(this + 1) = v14 + 1;
            }

            v17 = *(this + 14);
            v18 = *(this + 15);
            *(this + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v81);
            if (!sub_10007D42C(v13, this, v20, v21) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
            v22 = *(this + 14);
            v23 = __OFSUB__(v22, 1);
            v24 = v22 - 1;
            if (v24 < 0 == v23)
            {
              *(this + 14) = v24;
            }

            v25 = *(this + 1);
            if (v25 < *(this + 2) && *v25 == 18)
            {
              *(this + 1) = v25 + 1;
LABEL_49:
              *(a1 + 76) |= 2u;
              v26 = *(a1 + 24);
              if (!v26)
              {
                operator new();
              }

              v81 = 0;
              v27 = *(this + 1);
              if (v27 >= *(this + 2) || *v27 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v81))
                {
                  return 0;
                }
              }

              else
              {
                v81 = *v27;
                *(this + 1) = v27 + 1;
              }

              v28 = *(this + 14);
              v29 = *(this + 15);
              *(this + 14) = v28 + 1;
              if (v28 >= v29)
              {
                return 0;
              }

              v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v81);
              if (!sub_10007F0B4(v26, this, v31, v32) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v30);
              v33 = *(this + 14);
              v23 = __OFSUB__(v33, 1);
              v34 = v33 - 1;
              if (v34 < 0 == v23)
              {
                *(this + 14) = v34;
              }

              v35 = *(this + 1);
              if (*(this + 4) - v35 > 1 && *v35 == 178 && v35[1] == 1)
              {
                *(this + 1) = v35 + 2;
                *(a1 + 76) |= 4u;
                v11 = *(a1 + 32);
                if (!v11)
                {
LABEL_18:
                  operator new();
                }

                goto LABEL_64;
              }
            }
          }

          else
          {
            if (v8 == 2)
            {
              if (v9 != 2)
              {
                goto LABEL_37;
              }

              goto LABEL_49;
            }

            if (v8 != 22 || v9 != 2)
            {
              goto LABEL_37;
            }

            *(a1 + 76) |= 4u;
            v11 = *(a1 + 32);
            if (!v11)
            {
              goto LABEL_18;
            }

LABEL_64:
            v81 = 0;
            v36 = *(this + 1);
            if (v36 >= *(this + 2) || *v36 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v81))
              {
                return 0;
              }
            }

            else
            {
              v81 = *v36;
              *(this + 1) = v36 + 1;
            }

            v37 = *(this + 14);
            v38 = *(this + 15);
            *(this + 14) = v37 + 1;
            if (v37 >= v38)
            {
              return 0;
            }

            v39 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v81);
            if (!sub_1000830FC(v11, this, v40, v41) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v39);
            v42 = *(this + 14);
            v23 = __OFSUB__(v42, 1);
            v43 = v42 - 1;
            if (v43 < 0 == v23)
            {
              *(this + 14) = v43;
            }

            v44 = *(this + 1);
            if (*(this + 4) - v44 > 1 && *v44 == 250 && v44[1] == 62)
            {
              *(this + 1) = v44 + 2;
              *(a1 + 76) |= 8u;
              v15 = *(a1 + 40);
              if (!v15)
              {
LABEL_32:
                operator new();
              }

              goto LABEL_77;
            }
          }
        }

        if (TagFallback >> 3 > 0x3F2)
        {
          break;
        }

        if (v8 == 1007)
        {
          if (v9 != 2)
          {
            goto LABEL_37;
          }

          *(a1 + 76) |= 8u;
          v15 = *(a1 + 40);
          if (!v15)
          {
            goto LABEL_32;
          }

LABEL_77:
          v81 = 0;
          v45 = *(this + 1);
          if (v45 >= *(this + 2) || *v45 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v81))
            {
              return 0;
            }
          }

          else
          {
            v81 = *v45;
            *(this + 1) = v45 + 1;
          }

          v46 = *(this + 14);
          v47 = *(this + 15);
          *(this + 14) = v46 + 1;
          if (v46 >= v47)
          {
            return 0;
          }

          v48 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v81);
          if (!sub_100085134(v15, this, v49, v50) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v48);
          v51 = *(this + 14);
          v23 = __OFSUB__(v51, 1);
          v52 = v51 - 1;
          if (v52 < 0 == v23)
          {
            *(this + 14) = v52;
          }

          v53 = *(this + 1);
          if (*(this + 4) - v53 > 1 && *v53 == 138 && v53[1] == 63)
          {
            *(this + 1) = v53 + 2;
            *(a1 + 76) |= 0x10u;
            v10 = *(a1 + 48);
            if (!v10)
            {
LABEL_12:
              operator new();
            }

            goto LABEL_90;
          }
        }

        else
        {
          if (v8 != 1009 || v9 != 2)
          {
            goto LABEL_37;
          }

          *(a1 + 76) |= 0x10u;
          v10 = *(a1 + 48);
          if (!v10)
          {
            goto LABEL_12;
          }

LABEL_90:
          v81 = 0;
          v54 = *(this + 1);
          if (v54 >= *(this + 2) || *v54 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v81))
            {
              return 0;
            }
          }

          else
          {
            v81 = *v54;
            *(this + 1) = v54 + 1;
          }

          v55 = *(this + 14);
          v56 = *(this + 15);
          *(this + 14) = v55 + 1;
          if (v55 >= v56)
          {
            return 0;
          }

          v57 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v81);
          if (!sub_10008E6FC(v10, this, v58, v59) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v57);
          v60 = *(this + 14);
          v23 = __OFSUB__(v60, 1);
          v61 = v60 - 1;
          if (v61 < 0 == v23)
          {
            *(this + 14) = v61;
          }

          v62 = *(this + 1);
          if (*(this + 4) - v62 > 1 && *v62 == 154 && v62[1] == 63)
          {
            *(this + 1) = v62 + 2;
            *(a1 + 76) |= 0x20u;
            v16 = *(a1 + 56);
            if (!v16)
            {
LABEL_35:
              operator new();
            }

            goto LABEL_103;
          }
        }
      }

      if (v8 != 1011)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_37;
      }

      *(a1 + 76) |= 0x20u;
      v16 = *(a1 + 56);
      if (!v16)
      {
        goto LABEL_35;
      }

LABEL_103:
      v81 = 0;
      v63 = *(this + 1);
      if (v63 >= *(this + 2) || *v63 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v81))
        {
          return 0;
        }
      }

      else
      {
        v81 = *v63;
        *(this + 1) = v63 + 1;
      }

      v64 = *(this + 14);
      v65 = *(this + 15);
      *(this + 14) = v64 + 1;
      if (v64 >= v65)
      {
        return 0;
      }

      v66 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v81);
      if (!sub_1000536F0(v16, this, v67, v68) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v66);
      v69 = *(this + 14);
      v23 = __OFSUB__(v69, 1);
      v70 = v69 - 1;
      if (v70 < 0 == v23)
      {
        *(this + 14) = v70;
      }

      v71 = *(this + 1);
      if (*(this + 4) - v71 > 1 && *v71 == 162 && v71[1] == 63)
      {
        *(this + 1) = v71 + 2;
        *(a1 + 76) |= 0x40u;
        v12 = *(a1 + 64);
        if (!v12)
        {
LABEL_23:
          operator new();
        }

LABEL_116:
        v81 = 0;
        v72 = *(this + 1);
        if (v72 >= *(this + 2) || *v72 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v81))
          {
            return 0;
          }
        }

        else
        {
          v81 = *v72;
          *(this + 1) = v72 + 1;
        }

        v73 = *(this + 14);
        v74 = *(this + 15);
        *(this + 14) = v73 + 1;
        if (v73 >= v74)
        {
          return 0;
        }

        v75 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v81);
        if (!sub_10006E8AC(v12, this, v76, v77) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v75);
        v78 = *(this + 14);
        v23 = __OFSUB__(v78, 1);
        v79 = v78 - 1;
        if (v79 < 0 == v23)
        {
          *(this + 14) = v79;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 1012 && v9 == 2)
    {
      *(a1 + 76) |= 0x40u;
      v12 = *(a1 + 64);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_116;
    }

LABEL_37:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000553D0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 76);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    v11 = *(v5 + 24);
    if (v11)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v11, a2, a4);
      v6 = *(v5 + 76);
      if ((v6 & 4) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(qword_10045DB28 + 24), a2, a4);
      v6 = *(v5 + 76);
      if ((v6 & 4) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_22:
    v13 = *(v5 + 40);
    if (v13)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x3EF, v13, a2, a4);
      v6 = *(v5 + 76);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x3EF, *(qword_10045DB28 + 40), a2, a4);
      v6 = *(v5 + 76);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_26;
      }
    }

LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_30:
    v15 = *(v5 + 56);
    if (v15)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x3F3, v15, a2, a4);
      if ((*(v5 + 76) & 0x40) != 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x3F3, *(qword_10045DB28 + 56), a2, a4);
      if ((*(v5 + 76) & 0x40) != 0)
      {
        goto LABEL_34;
      }
    }

LABEL_8:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_38;
  }

  v10 = *(result + 16);
  if (v10)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
    v6 = *(v5 + 76);
    if ((v6 & 2) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DB28 + 16), a2, a4);
    v6 = *(v5 + 76);
    if ((v6 & 2) != 0)
    {
      goto LABEL_14;
    }
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_18:
  v12 = *(v5 + 32);
  if (v12)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x16, v12, a2, a4);
    v6 = *(v5 + 76);
    if ((v6 & 8) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x16, *(qword_10045DB28 + 32), a2, a4);
    v6 = *(v5 + 76);
    if ((v6 & 8) != 0)
    {
      goto LABEL_22;
    }
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_26:
  v14 = *(v5 + 48);
  if (v14)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x3F1, v14, a2, a4);
    v6 = *(v5 + 76);
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x3F1, *(qword_10045DB28 + 48), a2, a4);
    v6 = *(v5 + 76);
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_30;
    }
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_34:
  v16 = *(v5 + 64);
  if (v16)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x3F4, v16, a2, a4);
    v17 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v17;
    if (!v17)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x3F4, *(qword_10045DB28 + 64), a2, a4);
    v18 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v18;
    if (!v18)
    {
      return result;
    }
  }

LABEL_38:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100055610(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 19);
  if ((v5 & 1) == 0)
  {
    result = a2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v13 = *(this + 3);
    if (v13)
    {
      *result = 18;
      v14 = result + 1;
      v15 = v13[12];
      if (v15 <= 0x7F)
      {
LABEL_12:
        *(result + 1) = v15;
        v16 = (result + 2);
LABEL_15:
        result = sub_10007F540(v13, v16, a3);
        v5 = *(this + 19);
        goto LABEL_16;
      }
    }

    else
    {
      v13 = *(qword_10045DB28 + 24);
      *result = 18;
      v14 = result + 1;
      v15 = v13[12];
      if (v15 <= 0x7F)
      {
        goto LABEL_12;
      }
    }

    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v14, a3);
    goto LABEL_15;
  }

  v7 = *(this + 2);
  if (v7)
  {
    v8 = a2;
    *a2 = 10;
    v9 = a2 + 1;
    v10 = v7[12];
    if (v10 <= 0x7F)
    {
      goto LABEL_6;
    }

LABEL_9:
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v9, a3);
    result = sub_10007D8B8(v7, v11, v12);
    v5 = *(this + 19);
    if ((v5 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v7 = *(qword_10045DB28 + 16);
  v8 = a2;
  *a2 = 10;
  v9 = a2 + 1;
  v10 = v7[12];
  if (v10 > 0x7F)
  {
    goto LABEL_9;
  }

LABEL_6:
  *(v8 + 1) = v10;
  result = sub_10007D8B8(v7, (v8 + 2), a3);
  v5 = *(this + 19);
  if ((v5 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if ((v5 & 4) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    v26 = *(this + 5);
    if (v26)
    {
      *result = 16122;
      v27 = result + 2;
      v28 = v26[11];
      if (v28 <= 0x7F)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v26 = *(qword_10045DB28 + 40);
      *result = 16122;
      v27 = result + 2;
      v28 = v26[11];
      if (v28 <= 0x7F)
      {
LABEL_31:
        *(result + 2) = v28;
        result = sub_100085780(v26, (result + 3), a3, a4);
        v5 = *(this + 19);
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_35;
        }

LABEL_19:
        if ((v5 & 0x20) == 0)
        {
          goto LABEL_20;
        }

LABEL_41:
        v38 = *(this + 7);
        if (v38)
        {
          *result = 16282;
          v39 = result + 2;
          v40 = *(v38 + 24);
          if (v40 <= 0x7F)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v38 = *(qword_10045DB28 + 56);
          *result = 16282;
          v39 = result + 2;
          v40 = *(v38 + 24);
          if (v40 <= 0x7F)
          {
LABEL_43:
            *(result + 2) = v40;
            result = sub_100053964(v38, (result + 3), a3, a4);
            if ((*(this + 19) & 0x40) != 0)
            {
              goto LABEL_47;
            }

LABEL_21:
            v19 = *(this + 1);
            v18 = (this + 8);
            v17 = v19;
            if (!v19)
            {
              return result;
            }

            goto LABEL_53;
          }
        }

        v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v40, v39, a3);
        result = sub_100053964(v38, v41, v42, v43);
        if ((*(this + 19) & 0x40) != 0)
        {
          goto LABEL_47;
        }

        goto LABEL_21;
      }
    }

    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, v27, a3);
    result = sub_100085780(v26, v29, v30, v31);
    v5 = *(this + 19);
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  v20 = *(this + 4);
  if (v20)
  {
    *result = 434;
    v21 = result + 2;
    v22 = v20[14];
    if (v22 <= 0x7F)
    {
      goto LABEL_25;
    }

LABEL_28:
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v21, a3);
    result = sub_100083BE8(v20, v23, v24, v25);
    v5 = *(this + 19);
    if ((v5 & 8) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  v20 = *(qword_10045DB28 + 32);
  *result = 434;
  v21 = result + 2;
  v22 = v20[14];
  if (v22 > 0x7F)
  {
    goto LABEL_28;
  }

LABEL_25:
  *(result + 2) = v22;
  result = sub_100083BE8(v20, (result + 3), a3, a4);
  v5 = *(this + 19);
  if ((v5 & 8) != 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_35:
  v32 = *(this + 6);
  if (v32)
  {
    *result = 16266;
    v33 = result + 2;
    v34 = v32[20];
    if (v34 <= 0x7F)
    {
      goto LABEL_37;
    }

LABEL_40:
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v34, v33, a3);
    result = sub_10008F424(v32, v35, v36, v37);
    v5 = *(this + 19);
    if ((v5 & 0x20) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_20;
  }

  v32 = *(qword_10045DB28 + 48);
  *result = 16266;
  v33 = result + 2;
  v34 = v32[20];
  if (v34 > 0x7F)
  {
    goto LABEL_40;
  }

LABEL_37:
  *(result + 2) = v34;
  result = sub_10008F424(v32, (result + 3), a3, a4);
  v5 = *(this + 19);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_41;
  }

LABEL_20:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_47:
  v44 = *(this + 8);
  if (v44)
  {
    *result = 16290;
    v45 = result + 2;
    v46 = v44[22];
    if (v46 <= 0x7F)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v44 = *(qword_10045DB28 + 64);
    *result = 16290;
    v45 = result + 2;
    v46 = v44[22];
    if (v46 <= 0x7F)
    {
LABEL_49:
      *(result + 2) = v46;
      result = sub_10006F868(v44, (result + 3), a3);
      v47 = *(this + 1);
      v18 = (this + 8);
      v17 = v47;
      if (!v47)
      {
        return result;
      }

      goto LABEL_53;
    }
  }

  v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v46, v45, a3);
  result = sub_10006F868(v44, v48, v49);
  v50 = *(this + 1);
  v18 = (this + 8);
  v17 = v50;
  if (!v50)
  {
    return result;
  }

LABEL_53:
  if (*v17 != v17[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, result, a3);
  }

  return result;
}

uint64_t sub_1000559E0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 76);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

  if ((*(a1 + 76) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 76) & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v9 = *(a1 + 24);
    if (v9)
    {
      v10 = sub_10007F698(v9, a2);
      if (v10 < 0x80)
      {
LABEL_15:
        v11 = 1;
LABEL_18:
        v4 = (v4 + v10 + v11 + 1);
        v3 = *(a1 + 76);
        goto LABEL_19;
      }
    }

    else
    {
      v10 = sub_10007F698(*(qword_10045DB28 + 24), a2);
      if (v10 < 0x80)
      {
        goto LABEL_15;
      }
    }

    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    goto LABEL_18;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = sub_10007DA10(v7, a2);
    if (v8 < 0x80)
    {
      goto LABEL_9;
    }

LABEL_12:
    v4 = v8 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 76);
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v8 = sub_10007DA10(*(qword_10045DB28 + 16), a2);
  if (v8 >= 0x80)
  {
    goto LABEL_12;
  }

LABEL_9:
  v4 = (v8 + 2);
  v3 = *(a1 + 76);
  if ((v3 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = sub_100084030(v13, a2);
      if (v14 < 0x80)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = sub_100084030(*(qword_10045DB28 + 32), a2);
      if (v14 < 0x80)
      {
LABEL_28:
        v4 = (v4 + v14 + 3);
        v3 = *(a1 + 76);
        if ((v3 & 8) != 0)
        {
          goto LABEL_32;
        }

LABEL_21:
        if ((v3 & 0x10) == 0)
        {
          goto LABEL_22;
        }

LABEL_38:
        v17 = *(a1 + 48);
        if (v17)
        {
          v18 = sub_10008F874(v17, a2);
          if (v18 < 0x80)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v18 = sub_10008F874(*(qword_10045DB28 + 48), a2);
          if (v18 < 0x80)
          {
LABEL_40:
            v4 = (v4 + v18 + 3);
            v3 = *(a1 + 76);
            if ((v3 & 0x20) != 0)
            {
              goto LABEL_44;
            }

LABEL_23:
            if ((v3 & 0x40) == 0)
            {
              goto LABEL_24;
            }

LABEL_50:
            v21 = *(a1 + 64);
            if (v21)
            {
              v22 = sub_10006FD38(v21, a2);
              if (v22 < 0x80)
              {
LABEL_52:
                v23 = 1;
                goto LABEL_55;
              }
            }

            else
            {
              v22 = sub_10006FD38(*(qword_10045DB28 + 64), a2);
              if (v22 < 0x80)
              {
                goto LABEL_52;
              }
            }

            v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
LABEL_55:
            v4 = (v4 + v22 + v23 + 2);
            v5 = (a1 + 8);
            v6 = *(a1 + 8);
            if (!v6)
            {
              goto LABEL_25;
            }

            goto LABEL_56;
          }
        }

        v4 = v4 + v18 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 2;
        v3 = *(a1 + 76);
        if ((v3 & 0x20) != 0)
        {
          goto LABEL_44;
        }

        goto LABEL_23;
      }
    }

    v4 = v4 + v14 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 2;
    v3 = *(a1 + 76);
    if ((v3 & 8) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_21;
  }

  if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_32:
  v15 = *(a1 + 40);
  if (v15)
  {
    v16 = sub_1000859D0(v15, a2);
    if (v16 < 0x80)
    {
      goto LABEL_34;
    }

LABEL_37:
    v4 = v4 + v16 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 2;
    v3 = *(a1 + 76);
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_22;
  }

  v16 = sub_1000859D0(*(qword_10045DB28 + 40), a2);
  if (v16 >= 0x80)
  {
    goto LABEL_37;
  }

LABEL_34:
  v4 = (v4 + v16 + 3);
  v3 = *(a1 + 76);
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_38;
  }

LABEL_22:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_23;
  }

LABEL_44:
  v19 = *(a1 + 56);
  if (v19)
  {
    v20 = sub_100053A14(v19, a2);
    if (v20 < 0x80)
    {
      goto LABEL_46;
    }

LABEL_49:
    v4 = v4 + v20 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 2;
    if ((*(a1 + 76) & 0x40) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_24;
  }

  v20 = sub_100053A14(*(qword_10045DB28 + 56), a2);
  if (v20 >= 0x80)
  {
    goto LABEL_49;
  }

LABEL_46:
  v4 = (v4 + v20 + 3);
  if ((*(a1 + 76) & 0x40) != 0)
  {
    goto LABEL_50;
  }

LABEL_24:
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_25:
    *(a1 + 72) = v4;
    return v4;
  }

LABEL_56:
  if (*v6 == v6[1])
  {
    goto LABEL_25;
  }

  v24 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 72) = v24;
  return v24;
}

uint64_t sub_100055D4C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100054228(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100055E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100055E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100055E54(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100055EE8()
{
  v0 = qword_10045C6A0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100053D34;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C690;
}

void sub_100055F78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100055F98()
{
  v0 = sub_100056A38();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  v3 = 20;
  strcpy(__p, "CLPVisionEvent.proto");
  FileByName = wireless_diagnostics::google::protobuf::DescriptorPool::FindFileByName();
  if (!FileByName)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
  }

  qword_10045C6B8 = *(FileByName + 80);
  operator new();
}

void sub_100056990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000569A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000569B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100056A38(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045C6A8 & 1) == 0)
  {
    byte_10045C6A8 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/common/protobuf/clpsensorsurvey/Proto/CLPVisionEvent.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_1003C7A1C, 0x124D, v4);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_100057584()
{
  if (qword_10045DB30)
  {
    (*(*qword_10045DB30 + 8))(qword_10045DB30);
  }

  if (qword_10045C6C0)
  {
    (*(*qword_10045C6C0 + 8))(qword_10045C6C0);
  }

  if (qword_10045DB38)
  {
    (*(*qword_10045DB38 + 8))(qword_10045DB38);
  }

  if (qword_10045C6D0)
  {
    (*(*qword_10045C6D0 + 8))(qword_10045C6D0);
  }

  if (qword_10045DB40)
  {
    (*(*qword_10045DB40 + 8))(qword_10045DB40);
  }

  if (qword_10045C6E0)
  {
    (*(*qword_10045C6E0 + 8))(qword_10045C6E0);
  }

  if (qword_10045DB48)
  {
    (*(*qword_10045DB48 + 8))(qword_10045DB48);
  }

  if (qword_10045C6F0)
  {
    (*(*qword_10045C6F0 + 8))(qword_10045C6F0);
  }

  if (qword_10045DB50)
  {
    (*(*qword_10045DB50 + 8))(qword_10045DB50);
  }

  if (qword_10045C700)
  {
    (*(*qword_10045C700 + 8))(qword_10045C700);
  }

  if (qword_10045DB58)
  {
    (*(*qword_10045DB58 + 8))(qword_10045DB58);
  }

  if (qword_10045C710)
  {
    (*(*qword_10045C710 + 8))(qword_10045C710);
  }

  if (qword_10045DB60)
  {
    (*(*qword_10045DB60 + 8))(qword_10045DB60);
  }

  if (qword_10045C720)
  {
    (*(*qword_10045C720 + 8))(qword_10045C720);
  }

  if (qword_10045DB68)
  {
    (*(*qword_10045DB68 + 8))(qword_10045DB68);
  }

  if (qword_10045C730)
  {
    (*(*qword_10045C730 + 8))(qword_10045C730);
  }

  if (qword_10045DB70)
  {
    (*(*qword_10045DB70 + 8))(qword_10045DB70);
  }

  if (qword_10045C740)
  {
    (*(*qword_10045C740 + 8))(qword_10045C740);
  }

  if (qword_10045DB78)
  {
    (*(*qword_10045DB78 + 8))(qword_10045DB78);
  }

  if (qword_10045C750)
  {
    (*(*qword_10045C750 + 8))(qword_10045C750);
  }

  if (qword_10045DB80)
  {
    (*(*qword_10045DB80 + 8))(qword_10045DB80);
  }

  if (qword_10045C760)
  {
    (*(*qword_10045C760 + 8))(qword_10045C760);
  }

  if (qword_10045DB88)
  {
    (*(*qword_10045DB88 + 8))(qword_10045DB88);
  }

  if (qword_10045C770)
  {
    (*(*qword_10045C770 + 8))(qword_10045C770);
  }

  if (qword_10045DB90)
  {
    (*(*qword_10045DB90 + 8))(qword_10045DB90);
  }

  if (qword_10045C780)
  {
    (*(*qword_10045C780 + 8))(qword_10045C780);
  }

  if (qword_10045DB98)
  {
    (*(*qword_10045DB98 + 8))(qword_10045DB98);
  }

  if (qword_10045C790)
  {
    (*(*qword_10045C790 + 8))(qword_10045C790);
  }

  if (qword_10045DBA0)
  {
    (*(*qword_10045DBA0 + 8))(qword_10045DBA0);
  }

  if (qword_10045C7A0)
  {
    (*(*qword_10045C7A0 + 8))(qword_10045C7A0);
  }

  if (qword_10045DBA8)
  {
    (*(*qword_10045DBA8 + 8))(qword_10045DBA8);
  }

  if (qword_10045C7B0)
  {
    (*(*qword_10045C7B0 + 8))(qword_10045C7B0);
  }

  if (qword_10045DBB0)
  {
    (*(*qword_10045DBB0 + 8))(qword_10045DBB0);
  }

  if (qword_10045C7C0)
  {
    (*(*qword_10045C7C0 + 8))(qword_10045C7C0);
  }

  if (qword_10045DBB8)
  {
    (*(*qword_10045DBB8 + 8))(qword_10045DBB8);
  }

  if (qword_10045C7D0)
  {
    (*(*qword_10045C7D0 + 8))(qword_10045C7D0);
  }

  if (qword_10045DBC0)
  {
    (*(*qword_10045DBC0 + 8))(qword_10045DBC0);
  }

  if (qword_10045C7E0)
  {
    (*(*qword_10045C7E0 + 8))(qword_10045C7E0);
  }

  if (qword_10045DBC8)
  {
    (*(*qword_10045DBC8 + 8))(qword_10045DBC8);
  }

  result = qword_10045C7F0;
  if (qword_10045C7F0)
  {
    v1 = *(*qword_10045C7F0 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_100057D2C()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v21[1] = sub_100055F98;
    v22 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v21);
  }

  if (!qword_10045DB30)
  {
    (sub_100056A38)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DB38)
  {
    sub_100056A38(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DB40)
  {
    sub_100056A38(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DB48)
  {
    sub_100056A38(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DB50)
  {
    sub_100056A38(v4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DB58)
  {
    sub_100056A38(v5);
  }

  v6 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DB60)
  {
    sub_100056A38(v6);
  }

  v7 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DB68)
  {
    sub_100056A38(v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DB70)
  {
    sub_100056A38(v8);
  }

  v9 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DB78)
  {
    sub_100056A38(v9);
  }

  v10 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DB80)
  {
    sub_100056A38(v10);
  }

  v11 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DB88)
  {
    sub_100056A38(v11);
  }

  v12 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DB90)
  {
    sub_100056A38(v12);
  }

  v13 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DB98)
  {
    sub_100056A38(v13);
  }

  v14 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DBA0)
  {
    sub_100056A38(v14);
  }

  v15 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DBA8)
  {
    sub_100056A38(v15);
  }

  v16 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DBB0)
  {
    sub_100056A38(v16);
  }

  v17 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DBB8)
  {
    sub_100056A38(v17);
  }

  v18 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DBC0)
  {
    sub_100056A38(v18);
  }

  v19 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DBC8)
  {
    sub_100056A38(v19);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_100058098(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000580AC(void *a1)
{
  *a1 = off_100434CE8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_10005810C(uint64_t a1)
{
  *a1 = off_100435108;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 88) = 0xFFFFFFFFLL;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 48) = 0;
  *(a1 + 56) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_10005818C(uint64_t a1)
{
  *a1 = off_100435528;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = xmmword_1003C78E0;
  return a1;
}

void *sub_1000581F8(void *a1)
{
  *a1 = off_1004355D8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_100058258(uint64_t a1)
{
  *a1 = off_100435898;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_1000582D0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((*(a2 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = *(a2 + 24);
    *(a1 + 44) |= 2u;
    *(a1 + 24) = v8;
    if ((*(a2 + 44) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 16);
  *(a1 + 44) |= 1u;
  *(a1 + 16) = v7;
  v4 = *(a2 + 44);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 32);
    *(a1 + 44) |= 4u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000583B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000583CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000583E0(uint64_t a1)
{
  *a1 = off_100434B88;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100058434(uint64_t a1)
{
  *a1 = off_100434B88;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100058530(uint64_t a1)
{
  if (*(a1 + 44))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100058554(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v9 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v13;
        *(a1 + 44) |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 1)
      {
        goto LABEL_20;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v13;
      *(a1 + 44) |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 17)
      {
        *(this + 1) = v10 + 1;
LABEL_15:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v13;
        *(a1 + 44) |= 2u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 25)
        {
          *(this + 1) = v11 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v9 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100058728(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 44);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  if ((*(v4 + 44) & 4) == 0)
  {
LABEL_4:
    v8 = *(v4 + 8);
    v7 = (v4 + 8);
    v6 = v8;
    if (!v8)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_9:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_1000587E0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = *(a1 + 32);
      *a2 = 25;
      *(a2 + 1) = v9;
      a2 += 9;
      v10 = *(a1 + 8);
      v4 = (a1 + 8);
      v5 = v10;
      if (!v10)
      {
        return a2;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v8;
  a2 += 9;
  if ((*(a1 + 44) & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_9:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_100058910(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 4) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 44))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 40) = v5;
  return v5;
}

uint64_t sub_100058984(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_1000582D0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100058A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100058A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100058A8C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100058B20()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C6B8;
}

void sub_100058BB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100058BC4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = v5 + v4;
    v8 = *(a1 + 16);
    if (v6 < v7)
    {
      v9 = 2 * v6;
      if (2 * v6 <= v7)
      {
        v9 = v7;
      }

      if (v9 <= 4)
      {
        v9 = 4;
      }

      *(a1 + 28) = v9;
      operator new[]();
    }

    memcpy((*(a1 + 16) + 4 * v5), *(a2 + 16), 4 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100058CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100058D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100058D20(void *a1)
{
  *a1 = off_100434C38;
  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100058D94(void *a1)
{
  *a1 = off_100434C38;
  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100058EB0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 7) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100058EC8(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback & 7;
      if ((TagFallback & 0xFFFFFFF8) == 8)
      {
        break;
      }

LABEL_9:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 2)
    {
      if (v8 != 5)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    result = sub_100059148(this, (a1 + 16));
    if (!result)
    {
      return result;
    }

    while (1)
    {
      v10 = *(this + 1);
      v11 = *(this + 2);
      if (v10 >= v11 || *v10 != 13)
      {
        break;
      }

      *(this + 1) = v10 + 1;
LABEL_16:
      v26 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v26) & 1) == 0)
      {
        return 0;
      }

      v12 = v26;
      v13 = *(a1 + 24);
      v14 = *(a1 + 16);
      if (v13 == *(a1 + 28))
      {
        if (2 * v13 <= v13 + 1)
        {
          v15 = v13 + 1;
        }

        else
        {
          v15 = 2 * v13;
        }

        if (v15 <= 4)
        {
          v15 = 4;
        }

        *(a1 + 28) = v15;
        operator new[]();
      }

      v16 = v13 + 1;
      *(a1 + 24) = v13 + 1;
      *(v14 + 4 * v13) = v12;
      v17 = *(this + 1);
      v18 = *(this + 4) - v17;
      if (v18 >= 1)
      {
        v19 = *(a1 + 28) - v16;
        v20 = v18 / 5u;
        if ((v18 / 5u) >= v19)
        {
          v20 = *(a1 + 28) - v16;
        }

        if (v20 >= 1)
        {
          v21 = 0;
          v22 = v13 + 2;
          v23 = v14 + 4 * v16;
          v24 = ((*(this + 4) - v17) * 0x3333333333333334uLL) >> 64;
          if (v24 >= v19)
          {
            LODWORD(v24) = v19;
          }

          while (*v17 == 13)
          {
            v25 = *(v17 + 1);
            *(a1 + 24) = v22;
            *(v23 + 4 * v21) = v25;
            ++v22;
            ++v21;
            v17 += 5;
            if (v24 == v21)
            {
              goto LABEL_39;
            }
          }

          if (!v21)
          {
            continue;
          }

          v20 = v21;
LABEL_39:
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 5 * v20);
        }
      }
    }
  }

  while (v10 != v11 || !*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_100059148(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v13 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
    if (!result)
    {
      return result;
    }

    v5 = v13;
  }

  else
  {
    v13 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
  {
LABEL_17:
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
    return 1;
  }

  else
  {
    while (1)
    {
      v14 = 0;
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v14);
      if (!result)
      {
        break;
      }

      v9 = v14;
      v10 = *(a2 + 2);
      v11 = *a2;
      if (v10 == *(a2 + 3))
      {
        if (2 * v10 <= v10 + 1)
        {
          v12 = v10 + 1;
        }

        else
        {
          v12 = 2 * v10;
        }

        if (v12 <= 4)
        {
          v12 = 4;
        }

        *(a2 + 3) = v12;
        operator new[]();
      }

      v8 = *a2;
      *(a2 + 2) = v10 + 1;
      *(v8 + 4 * v10) = v9;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
      {
        goto LABEL_17;
      }
    }
  }

  return result;
}

uint64_t sub_1000592B0(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    v5 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(*(v4 + 16) + 4 * v5++), a3);
    }

    while (v5 < *(v4 + 24));
  }

  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_10005934C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (*(a1 + 24) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 16) + 4 * v3);
      *a2 = 13;
      *(a2 + 1) = v4;
      a2 += 5;
      ++v3;
    }

    while (v3 < *(a1 + 24));
  }

  v7 = *(a1 + 8);
  v5 = (a1 + 8);
  v6 = v7;
  if (!v7 || *v6 == v6[1])
  {
    return a2;
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v5, a2, a3);
  }
}

uint64_t sub_1000593BC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  v6 = (5 * *(v3 + 4));
  if (v5 && *v4 != v4[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v3, a2) + v6;
  }

  *(a1 + 32) = v6;
  return v6;
}

uint64_t sub_100059408(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100058BC4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000594E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000594FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100059510(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000595A4()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C6C8;
}

void sub_100059634(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100059648(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = v5 + v4;
    v8 = *(a1 + 16);
    if (v6 < v7)
    {
      v9 = 2 * v6;
      if (2 * v6 <= v7)
      {
        v9 = v7;
      }

      if (v9 <= 4)
      {
        v9 = 4;
      }

      *(a1 + 28) = v9;
      operator new[]();
    }

    memcpy((*(a1 + 16) + 8 * v5), *(a2 + 16), 8 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10005977C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100059790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000597A4(void *a1)
{
  *a1 = off_100434CE8;
  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100059818(void *a1)
{
  *a1 = off_100434CE8;
  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000598A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DB40;
  if (!qword_10045DB40)
  {
    sub_100056A38(0, a2, a3, a4);
    return qword_10045DB40;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100059970(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 7) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100059988(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
LABEL_1:
    v6 = *(this + 1);
    if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v8 = TagFallback & 7;
    if ((TagFallback & 0xFFFFFFF8) == 8)
    {
      if (v8 == 1)
      {
        while (1)
        {
          v26 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v26) & 1) == 0)
          {
            return 0;
          }

          v10 = v26;
          v11 = *(a1 + 24);
          v12 = *(a1 + 16);
          if (v11 == *(a1 + 28))
          {
            if (2 * v11 <= v11 + 1)
            {
              v13 = v11 + 1;
            }

            else
            {
              v13 = 2 * v11;
            }

            if (v13 <= 4)
            {
              v13 = 4;
            }

            *(a1 + 28) = v13;
            operator new[]();
          }

          v14 = v11 + 1;
          *(a1 + 24) = v11 + 1;
          *(v12 + 8 * v11) = v10;
          v15 = *(this + 1);
          v16 = *(this + 4) - v15;
          if (v16 >= 1)
          {
            v17 = *(a1 + 28) - v14;
            v18 = v16 / 9u;
            if ((v16 / 9u) >= v17)
            {
              v18 = *(a1 + 28) - v14;
            }

            if (v18 >= 1)
            {
              v19 = 0;
              v20 = v11 + 2;
              v21 = v12 + 8 * v14;
              v22 = ((*(this + 4) - v15) * 0x1C71C71C71C71C72uLL) >> 64;
              if (v22 >= v17)
              {
                LODWORD(v22) = v17;
              }

              while (*v15 == 9)
              {
                v23 = *(v15 + 1);
                *(a1 + 24) = v20;
                *(v21 + 8 * v19) = v23;
                ++v20;
                ++v19;
                v15 += 9;
                if (v22 == v19)
                {
                  goto LABEL_33;
                }
              }

              if (!v19)
              {
                goto LABEL_34;
              }

              v18 = v19;
LABEL_33:
              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v18);
            }
          }

LABEL_34:
          v24 = *(this + 1);
          v25 = *(this + 2);
          if (v24 >= v25 || *v24 != 9)
          {
            if (v24 == v25 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }

            goto LABEL_1;
          }

          *(this + 1) = v24 + 1;
        }
      }

      if (v8 == 2)
      {
        break;
      }
    }

    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_100059C10(this, (a1 + 16));
  if (result)
  {
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_100059C10(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v13 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
    if (!result)
    {
      return result;
    }

    v5 = v13;
  }

  else
  {
    v13 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
  {
LABEL_17:
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
    return 1;
  }

  else
  {
    while (1)
    {
      v14 = 0;
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14);
      if (!result)
      {
        break;
      }

      v9 = v14;
      v10 = *(a2 + 2);
      v11 = *a2;
      if (v10 == *(a2 + 3))
      {
        if (2 * v10 <= v10 + 1)
        {
          v12 = v10 + 1;
        }

        else
        {
          v12 = 2 * v10;
        }

        if (v12 <= 4)
        {
          v12 = 4;
        }

        *(a2 + 3) = v12;
        operator new[]();
      }

      v8 = *a2;
      *(a2 + 2) = v10 + 1;
      *(v8 + 8 * v10) = v9;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
      {
        goto LABEL_17;
      }
    }
  }

  return result;
}

uint64_t sub_100059D78(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    v5 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(*(v4 + 16) + 8 * v5++), a3);
    }

    while (v5 < *(v4 + 24));
  }

  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_100059E14(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (*(a1 + 24) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 16) + 8 * v3);
      *a2 = 9;
      *(a2 + 1) = v4;
      a2 += 9;
      ++v3;
    }

    while (v3 < *(a1 + 24));
  }

  v7 = *(a1 + 8);
  v5 = (a1 + 8);
  v6 = v7;
  if (!v7 || *v6 == v6[1])
  {
    return a2;
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v5, a2, a3);
  }
}

uint64_t sub_100059EA4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  v6 = (9 * *(v3 + 4));
  if (v5 && *v4 != v4[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v3, a2) + v6;
  }

  *(a1 + 32) = v6;
  return v6;
}

uint64_t sub_100059EF0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100059648(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100059FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100059FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100059FF8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10005A08C()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C6D8;
}

void sub_10005A11C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005A130(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), *(a2 + 24) + a1[6]);
  if (*(a2 + 24) >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a2 + 16) + 8 * v4);
      v7 = a1[7];
      v8 = a1[6];
      if (v8 >= v7)
      {
        if (v7 == a1[8])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v7 + 1);
          v7 = a1[7];
        }

        a1[7] = v7 + 1;
        operator new();
      }

      v5 = *(a1 + 2);
      a1[6] = v8 + 1;
      sub_100058BC4(*(v5 + 8 * v8), v6);
      ++v4;
    }

    while (v4 < *(a2 + 24));
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_10005A2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005A2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005A304(uint64_t a1)
{
  *a1 = off_100434D98;
  v2 = *(a1 + 28);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 16) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 28);
      }
    }
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10005A3D0(uint64_t a1)
{
  *a1 = off_100434D98;
  v2 = *(a1 + 28);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 16) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 28);
      }
    }
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_10005A550(uint64_t this)
{
  v1 = this;
  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 16) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 24));
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  *(v4 + 4) = 0;
  *(v4 + 9) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_10005A5EC(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
LABEL_1:
    v6 = *(this + 1);
    if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (TagFallback == 10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
      if (TagFallback == 10)
      {
        while (1)
        {
LABEL_11:
          v8 = a1[7];
          v9 = a1[6];
          if (v9 >= v8)
          {
            if (v8 == a1[8])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v8 + 1);
              v8 = a1[7];
            }

            a1[7] = v8 + 1;
            operator new();
          }

          v10 = *(a1 + 2);
          a1[6] = v9 + 1;
          v11 = *(v10 + 8 * v9);
          v24 = 0;
          v12 = *(this + 1);
          if (v12 >= *(this + 2) || *v12 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
            {
              return 0;
            }
          }

          else
          {
            v24 = *v12;
            *(this + 1) = v12 + 1;
          }

          v13 = *(this + 14);
          v14 = *(this + 15);
          *(this + 14) = v13 + 1;
          if (v13 >= v14)
          {
            return 0;
          }

          v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v24);
          if (!sub_100058EC8(v11, this, v16, v17) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v15);
          v18 = *(this + 14);
          v19 = __OFSUB__(v18, 1);
          v20 = v18 - 1;
          if (v20 < 0 == v19)
          {
            *(this + 14) = v20;
          }

          v21 = *(this + 1);
          v22 = *(this + 2);
          if (v21 >= v22 || *v21 != 10)
          {
            if (v21 == v22 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }

            goto LABEL_1;
          }

          *(this + 1) = v21 + 1;
        }
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10005A868(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 24) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10005A904(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    for (i = 0; i < *(this + 6); ++i)
    {
      v6 = *(*(this + 2) + 8 * i);
      *a2 = 10;
      v7 = *(v6 + 32);
      if (v7 > 0x7F)
      {
        a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
        if (*(v6 + 24) >= 1)
        {
LABEL_8:
          v8 = 0;
          do
          {
            v9 = *(*(v6 + 16) + 4 * v8);
            *a2 = 13;
            *(a2 + 1) = v9;
            a2 = (a2 + 5);
            ++v8;
          }

          while (v8 < *(v6 + 24));
        }
      }

      else
      {
        *(a2 + 1) = v7;
        a2 = (a2 + 2);
        if (*(v6 + 24) >= 1)
        {
          goto LABEL_8;
        }
      }

      v12 = *(v6 + 8);
      v11 = (v6 + 8);
      v10 = v12;
      if (v12 && *v10 != v10[1])
      {
        a2 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3);
      }
    }
  }

  v15 = *(this + 1);
  v14 = (this + 8);
  v13 = v15;
  if (!v15 || *v13 == v13[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, a2, a3);
}

uint64_t sub_10005AA58(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a1 + 16) + 8 * v4);
      v7 = (5 * v6[6]);
      v8 = *(v6 + 1);
      if (v8 && *v8 != v8[1])
      {
        v7 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v6 + 2), a2) + v7;
      }

      v6[8] = v7;
      if (v7 < 0x80)
      {
        v5 = 1;
      }

      else
      {
        v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      }

      v3 = (v7 + v3 + v5);
      ++v4;
    }

    while (v4 < *(a1 + 24));
  }

  v9 = *(a1 + 8);
  if (v9 && *v9 != v9[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 40) = v3;
  return v3;
}

uint64_t sub_10005AB28(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_10005A130(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10005AC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005AC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005AC30(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10005ACC4()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C6E8;
}

void sub_10005AD54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005AD68(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), *(a2 + 24) + a1[6]);
  if (*(a2 + 24) >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a2 + 16) + 8 * v4);
      v7 = a1[7];
      v8 = a1[6];
      if (v8 >= v7)
      {
        if (v7 == a1[8])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v7 + 1);
          v7 = a1[7];
        }

        a1[7] = v7 + 1;
        operator new();
      }

      v5 = *(a1 + 2);
      a1[6] = v8 + 1;
      sub_100059648(*(v5 + 8 * v8), v6);
      ++v4;
    }

    while (v4 < *(a2 + 24));
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_10005AEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005AF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005AF3C(uint64_t a1)
{
  *a1 = off_100434E48;
  v2 = *(a1 + 28);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 16) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 28);
      }
    }
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10005B008(uint64_t a1)
{
  *a1 = off_100434E48;
  v2 = *(a1 + 28);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 16) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 28);
      }
    }
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_10005B188(uint64_t this)
{
  v1 = this;
  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 16) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 24));
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  *(v4 + 4) = 0;
  *(v4 + 9) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_10005B224(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
LABEL_1:
    v6 = *(this + 1);
    if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (TagFallback == 10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
      if (TagFallback == 10)
      {
        while (1)
        {
LABEL_11:
          v8 = a1[7];
          v9 = a1[6];
          if (v9 >= v8)
          {
            if (v8 == a1[8])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v8 + 1);
              v8 = a1[7];
            }

            a1[7] = v8 + 1;
            operator new();
          }

          v10 = *(a1 + 2);
          a1[6] = v9 + 1;
          v11 = *(v10 + 8 * v9);
          v24 = 0;
          v12 = *(this + 1);
          if (v12 >= *(this + 2) || *v12 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
            {
              return 0;
            }
          }

          else
          {
            v24 = *v12;
            *(this + 1) = v12 + 1;
          }

          v13 = *(this + 14);
          v14 = *(this + 15);
          *(this + 14) = v13 + 1;
          if (v13 >= v14)
          {
            return 0;
          }

          v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v24);
          if (!sub_100059988(v11, this, v16, v17) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v15);
          v18 = *(this + 14);
          v19 = __OFSUB__(v18, 1);
          v20 = v18 - 1;
          if (v20 < 0 == v19)
          {
            *(this + 14) = v20;
          }

          v21 = *(this + 1);
          v22 = *(this + 2);
          if (v21 >= v22 || *v21 != 10)
          {
            if (v21 == v22 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }

            goto LABEL_1;
          }

          *(this + 1) = v21 + 1;
        }
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10005B4A0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 24) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10005B53C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    for (i = 0; i < *(this + 6); ++i)
    {
      v6 = *(*(this + 2) + 8 * i);
      *a2 = 10;
      v7 = *(v6 + 32);
      if (v7 > 0x7F)
      {
        a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
        if (*(v6 + 24) >= 1)
        {
LABEL_8:
          v8 = 0;
          do
          {
            v9 = *(*(v6 + 16) + 8 * v8);
            *a2 = 9;
            *(a2 + 1) = v9;
            a2 = (a2 + 9);
            ++v8;
          }

          while (v8 < *(v6 + 24));
        }
      }

      else
      {
        *(a2 + 1) = v7;
        a2 = (a2 + 2);
        if (*(v6 + 24) >= 1)
        {
          goto LABEL_8;
        }
      }

      v12 = *(v6 + 8);
      v11 = (v6 + 8);
      v10 = v12;
      if (v12 && *v10 != v10[1])
      {
        a2 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3);
      }
    }
  }

  v15 = *(this + 1);
  v14 = (this + 8);
  v13 = v15;
  if (!v15 || *v13 == v13[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, a2, a3);
}

uint64_t sub_10005B6B0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a1 + 16) + 8 * v4);
      v7 = (9 * v6[6]);
      v8 = *(v6 + 1);
      if (v8 && *v8 != v8[1])
      {
        v7 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v6 + 2), a2) + v7;
      }

      v6[8] = v7;
      if (v7 < 0x80)
      {
        v5 = 1;
      }

      else
      {
        v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      }

      v3 = (v7 + v3 + v5);
      ++v4;
    }

    while (v4 < *(a1 + 24));
  }

  v9 = *(a1 + 8);
  if (v9 && *v9 != v9[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 40) = v3;
  return v3;
}

uint64_t sub_10005B780(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_10005AD68(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10005B860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005B874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005B888(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10005B91C()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C6F8;
}

void sub_10005B9AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005B9C0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 16);
      *(a1 + 36) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 24);
      *(a1 + 36) |= 2u;
      *(a1 + 24) = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10005BA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005BA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005BAA8(uint64_t a1)
{
  *a1 = off_100434EF8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10005BAFC(uint64_t a1)
{
  *a1 = off_100434EF8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10005BBF8(uint64_t a1)
{
  if (*(a1 + 36))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10005BC18(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v11;
        *(a1 + 36) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 1)
      {
        break;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v11;
      *(a1 + 36) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10005BD90(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    if ((*(v4 + 36) & 2) == 0)
    {
LABEL_3:
      v8 = *(v4 + 8);
      v7 = (v4 + 8);
      v6 = v8;
      if (!v8)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_7:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_10005BE2C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 36);
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v8;
    a2 += 9;
    v9 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = *(a1 + 16);
  *a2 = 9;
  *(a2 + 1) = v7;
  a2 += 9;
  if ((*(a1 + 36) & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_7:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_10005BF04(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 36);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 36))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 32) = v5;
  return v5;
}

uint64_t sub_10005BF6C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_10005B9C0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10005C04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005C060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005C074(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10005C108()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C708;
}

void sub_10005C198(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005C1AC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
    a2 = v3;
    a1 = v2;
  }

  v4 = *(a2 + 72);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 16);
    *(a1 + 72) |= 1u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 24);
  *(a1 + 72) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 28);
  *(a1 + 72) |= 4u;
  *(a1 + 28) = v10;
  v4 = *(a2 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 32);
  *(a1 + 72) |= 8u;
  *(a1 + 32) = v11;
  v4 = *(a2 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v13 = *(a2 + 40);
    *(a1 + 72) |= 0x20u;
    *(a1 + 40) = v13;
    v4 = *(a2 + 72);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_24:
  v12 = *(a2 + 36);
  *(a1 + 72) |= 0x10u;
  *(a1 + 36) = v12;
  v4 = *(a2 + 72);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  v14 = *(a2 + 44);
  *(a1 + 72) |= 0x40u;
  *(a1 + 44) = v14;
  v4 = *(a2 + 72);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 48);
    *(a1 + 72) |= 0x80u;
    *(a1 + 48) = v5;
    v4 = *(a2 + 72);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 52);
    *(a1 + 72) |= 0x100u;
    *(a1 + 52) = v15;
    v4 = *(a2 + 72);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

LABEL_30:
      v17 = *(a2 + 60);
      *(a1 + 72) |= 0x400u;
      *(a1 + 60) = v17;
      if ((*(a2 + 72) & 0x800) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 56);
  *(a1 + 72) |= 0x200u;
  *(a1 + 56) = v16;
  v4 = *(a2 + 72);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  if ((v4 & 0x800) != 0)
  {
LABEL_18:
    v6 = *(a2 + 64);
    *(a1 + 72) |= 0x800u;
    *(a1 + 64) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10005C3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005C3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005C3E8(uint64_t a1)
{
  *a1 = off_100434FA8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10005C43C(uint64_t a1)
{
  *a1 = off_100434FA8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10005C540(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 60) = 0;
    *(a1 + 52) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 16) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10005C57C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback >> 3;
      if (TagFallback >> 3 > 6)
      {
        break;
      }

      if (TagFallback >> 3 > 3)
      {
        if (v8 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_52;
          }

          v18 = *(this + 1);
          v9 = *(this + 2);
          if (v18 >= v9)
          {
            goto LABEL_77;
          }

LABEL_74:
          v28 = *v18;
          if (v28 < 0)
          {
            goto LABEL_77;
          }

          *(a1 + 32) = v28;
          v29 = v18 + 1;
          *(this + 1) = v29;
          *(a1 + 72) |= 8u;
          if (v29 < v9)
          {
LABEL_79:
            if (*v29 == 40)
            {
              v22 = v29 + 1;
              *(this + 1) = v22;
              if (v22 < v9)
              {
                goto LABEL_81;
              }

LABEL_84:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
              if (!result)
              {
                return result;
              }

              v31 = *(this + 1);
              v9 = *(this + 2);
              *(a1 + 72) |= 0x10u;
              if (v31 < v9)
              {
                goto LABEL_86;
              }
            }
          }
        }

        else if (v8 == 5)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_52;
          }

          v22 = *(this + 1);
          v9 = *(this + 2);
          if (v22 >= v9)
          {
            goto LABEL_84;
          }

LABEL_81:
          v30 = *v22;
          if (v30 < 0)
          {
            goto LABEL_84;
          }

          *(a1 + 36) = v30;
          v31 = v22 + 1;
          *(this + 1) = v31;
          *(a1 + 72) |= 0x10u;
          if (v31 < v9)
          {
LABEL_86:
            if (*v31 == 48)
            {
              v12 = v31 + 1;
              *(this + 1) = v12;
              if (v12 < v9)
              {
                goto LABEL_88;
              }

LABEL_91:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
              if (!result)
              {
                return result;
              }

              v33 = *(this + 1);
              v9 = *(this + 2);
              *(a1 + 72) |= 0x20u;
              if (v33 < v9)
              {
                goto LABEL_93;
              }
            }
          }
        }

        else
        {
          if (v8 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_52;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
          if (v12 >= v9)
          {
            goto LABEL_91;
          }

LABEL_88:
          v32 = *v12;
          if (v32 < 0)
          {
            goto LABEL_91;
          }

          *(a1 + 40) = v32;
          v33 = v12 + 1;
          *(this + 1) = v33;
          *(a1 + 72) |= 0x20u;
          if (v33 < v9)
          {
LABEL_93:
            if (*v33 == 56)
            {
              v17 = v33 + 1;
              *(this + 1) = v17;
LABEL_95:
              if (v17 >= v9 || (v34 = *v17, v34 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
                if (!result)
                {
                  return result;
                }

                v35 = *(this + 1);
                v9 = *(this + 2);
                *(a1 + 72) |= 0x40u;
                if (v35 < v9)
                {
                  goto LABEL_101;
                }
              }

              else
              {
                *(a1 + 44) = v34;
                v35 = v17 + 1;
                *(this + 1) = v35;
                *(a1 + 72) |= 0x40u;
                if (v35 < v9)
                {
LABEL_101:
                  if (*v35 == 64)
                  {
                    v21 = v35 + 1;
                    *(this + 1) = v21;
LABEL_103:
                    if (v21 >= v9 || (v36 = *v21, v36 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
                      if (!result)
                      {
                        return result;
                      }

                      v37 = *(this + 1);
                      v9 = *(this + 2);
                      *(a1 + 72) |= 0x80u;
                      if (v37 < v9)
                      {
                        goto LABEL_109;
                      }
                    }

                    else
                    {
                      *(a1 + 48) = v36;
                      v37 = v21 + 1;
                      *(this + 1) = v37;
                      *(a1 + 72) |= 0x80u;
                      if (v37 < v9)
                      {
LABEL_109:
                        if (*v37 == 72)
                        {
                          v11 = v37 + 1;
                          *(this + 1) = v11;
LABEL_111:
                          if (v11 >= v9 || (v38 = *v11, v38 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
                            if (!result)
                            {
                              return result;
                            }

                            v39 = *(this + 1);
                            v9 = *(this + 2);
                            *(a1 + 72) |= 0x100u;
                            if (v39 < v9)
                            {
                              goto LABEL_117;
                            }
                          }

                          else
                          {
                            *(a1 + 52) = v38;
                            v39 = v11 + 1;
                            *(this + 1) = v39;
                            *(a1 + 72) |= 0x100u;
                            if (v39 < v9)
                            {
LABEL_117:
                              if (*v39 == 80)
                              {
                                v19 = v39 + 1;
                                *(this + 1) = v19;
LABEL_119:
                                if (v19 >= v9 || (v40 = *v19, v40 < 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v41 = *(this + 1);
                                  v9 = *(this + 2);
                                  *(a1 + 72) |= 0x200u;
                                  if (v41 < v9)
                                  {
                                    goto LABEL_125;
                                  }
                                }

                                else
                                {
                                  *(a1 + 56) = v40;
                                  v41 = v19 + 1;
                                  *(this + 1) = v41;
                                  *(a1 + 72) |= 0x200u;
                                  if (v41 < v9)
                                  {
LABEL_125:
                                    if (*v41 == 88)
                                    {
                                      v23 = v41 + 1;
                                      *(this + 1) = v23;
LABEL_127:
                                      if (v23 >= v9 || (v42 = *v23, v42 < 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v43 = *(this + 1);
                                        v9 = *(this + 2);
                                        *(a1 + 72) |= 0x400u;
                                        if (v43 < v9)
                                        {
                                          goto LABEL_133;
                                        }
                                      }

                                      else
                                      {
                                        *(a1 + 60) = v42;
                                        v43 = v23 + 1;
                                        *(this + 1) = v43;
                                        *(a1 + 72) |= 0x400u;
                                        if (v43 < v9)
                                        {
LABEL_133:
                                          if (*v43 == 96)
                                          {
                                            v13 = v43 + 1;
                                            *(this + 1) = v13;
LABEL_135:
                                            if (v13 >= v9 || (v44 = *v13, v44 < 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v47 = *(this + 1);
                                              v46 = *(this + 2);
                                              *(a1 + 72) |= 0x800u;
                                              if (v47 == v46)
                                              {
                                                goto LABEL_141;
                                              }
                                            }

                                            else
                                            {
                                              *(a1 + 64) = v44;
                                              v45 = v13 + 1;
                                              *(this + 1) = v45;
                                              *(a1 + 72) |= 0x800u;
                                              if (v45 == v9)
                                              {
LABEL_141:
                                                if (*(this + 11) || *(this + 6) == *(this + 10))
                                                {
                                                  *(this + 8) = 0;
                                                  result = 1;
                                                  *(this + 36) = 1;
                                                  return result;
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
                }
              }
            }
          }
        }
      }

      else if (v8 == 1)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v14 = *(this + 1);
        v9 = *(this + 2);
        if (v14 >= v9 || (v15 = *v14, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v16 = *(this + 1);
          v9 = *(this + 2);
          *(a1 + 72) |= 1u;
          if (v16 < v9)
          {
            goto LABEL_58;
          }
        }

        else
        {
          *(a1 + 16) = v15;
          v16 = v14 + 1;
          *(this + 1) = v16;
          *(a1 + 72) |= 1u;
          if (v16 < v9)
          {
LABEL_58:
            if (*v16 == 16)
            {
              v20 = v16 + 1;
              *(this + 1) = v20;
              if (v20 < v9)
              {
                goto LABEL_60;
              }

LABEL_63:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
              if (!result)
              {
                return result;
              }

              v25 = *(this + 1);
              v9 = *(this + 2);
              *(a1 + 72) |= 2u;
              if (v25 < v9)
              {
                goto LABEL_65;
              }
            }
          }
        }
      }

      else if (v8 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v20 = *(this + 1);
        v9 = *(this + 2);
        if (v20 >= v9)
        {
          goto LABEL_63;
        }

LABEL_60:
        v24 = *v20;
        if (v24 < 0)
        {
          goto LABEL_63;
        }

        *(a1 + 24) = v24;
        v25 = v20 + 1;
        *(this + 1) = v25;
        *(a1 + 72) |= 2u;
        if (v25 < v9)
        {
LABEL_65:
          if (*v25 == 24)
          {
            v10 = v25 + 1;
            *(this + 1) = v10;
            if (v10 < v9)
            {
              goto LABEL_67;
            }

LABEL_70:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
            if (!result)
            {
              return result;
            }

            v27 = *(this + 1);
            v9 = *(this + 2);
            *(a1 + 72) |= 4u;
            if (v27 < v9)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        if (v8 != 3 || (TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9)
        {
          goto LABEL_70;
        }

LABEL_67:
        v26 = *v10;
        if (v26 < 0)
        {
          goto LABEL_70;
        }

        *(a1 + 28) = v26;
        v27 = v10 + 1;
        *(this + 1) = v27;
        *(a1 + 72) |= 4u;
        if (v27 < v9)
        {
LABEL_72:
          if (*v27 == 32)
          {
            v18 = v27 + 1;
            *(this + 1) = v18;
            if (v18 < v9)
            {
              goto LABEL_74;
            }

LABEL_77:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
            if (!result)
            {
              return result;
            }

            v29 = *(this + 1);
            v9 = *(this + 2);
            *(a1 + 72) |= 8u;
            if (v29 < v9)
            {
              goto LABEL_79;
            }
          }
        }
      }
    }

    if (TagFallback >> 3 > 9)
    {
      if (v8 == 10)
      {
        if ((TagFallback & 7) == 0)
        {
          v19 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_119;
        }
      }

      else if (v8 == 11)
      {
        if ((TagFallback & 7) == 0)
        {
          v23 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_127;
        }
      }

      else if (v8 == 12 && (TagFallback & 7) == 0)
      {
        v13 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_135;
      }
    }

    else if (v8 == 7)
    {
      if ((TagFallback & 7) == 0)
      {
        v17 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_95;
      }
    }

    else if (v8 == 8)
    {
      if ((TagFallback & 7) == 0)
      {
        v21 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_103;
      }
    }

    else if (v8 == 9 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_111;
    }

LABEL_52:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}