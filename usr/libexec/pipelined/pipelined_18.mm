void sub_10011CD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10011CE7C(uint64_t *a1)
{
  sub_10003BFA8(&v12);
  v2 = sub_10003C2E4(&v12, "[", 1);
  v3 = *a1;
  v8 = a1[1];
  v9 = v3;
  sub_100120034(&v9, &v8);
  if ((v11 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_10003C2E4(v2, v4, v5);
  sub_10003C2E4(v6, "]", 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10011D034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_10011D048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_10003C1C4(&a17);
    _Unwind_Resume(a1);
  }

  sub_10003C1C4(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10011D080(uint64_t *a1)
{
  sub_10003BFA8(&v12);
  v2 = sub_10003C2E4(&v12, "[", 1);
  v3 = *a1;
  v8 = a1[1];
  v9 = v3;
  sub_100120780(&v9, &v8);
  if ((v11 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_10003C2E4(v2, v4, v5);
  sub_10003C2E4(v6, "]", 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10011D238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_10011D24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_10003C1C4(&a17);
    _Unwind_Resume(a1);
  }

  sub_10003C1C4(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10011D284(uint64_t a1)
{
  *a1 = off_10043D758;
  *(a1 + 104) = off_10043D698;
  sub_1000E4A44(a1 + 136, *(a1 + 144));
  sub_1000E4A44(a1 + 112, *(a1 + 120));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 80);
    }

    *(a1 + 88) = v2;
    operator delete(v4);
  }

  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_15;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_15:
  operator delete(*(a1 + 8));
  return a1;
}

void sub_10011D3A4(uint64_t a1)
{
  sub_10011D284(a1);

  operator delete();
}

uint64_t sub_10011D3DC(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043D758;
  *(a1 + 56) = 0u;
  v4 = (a1 + 56);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 104) = off_10043D698;
  *(a1 + 112) = a1 + 120;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 152) = 0;
  *(a1 + 160) &= 0xFCu;
  *(a1 + 168) &= 0xE0u;
  std::string::operator=((a1 + 8), (a2 + 8));
  std::string::operator=((a1 + 32), (a2 + 32));
  std::string::operator=(v4, (a2 + 56));
  if (a1 != a2)
  {
    sub_1000E5A0C(a1 + 80, *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 3));
    sub_1000E4F40((a1 + 112), *(a2 + 112), (a2 + 120));
    sub_1000E4F40((a1 + 136), *(a2 + 136), (a2 + 144));
  }

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  return a1;
}

void sub_10011D528(_Unwind_Exception *a1)
{
  sub_100118638(v3);
  sub_1000D1490((v1 + 80));
  if (*(v1 + 79) < 0)
  {
    operator delete(*v2);
  }

  sub_100383E04(v1, (v1 + 32), (v1 + 8));
  _Unwind_Resume(a1);
}

double sub_10011D568(uint64_t a1)
{
  *a1 = off_10043D6B8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = off_10043DD58;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = off_10043DAA8;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) &= 0xFCu;
  *(a1 + 208) = 0;
  *(a1 + 216) = off_10043DB68;
  *(a1 + 224) = 0;
  *(a1 + 232) = off_10043DB48;
  *(a1 + 240) = off_10043DB08;
  *(a1 + 248) = 0u;
  *(a1 + 264) &= 0xFCu;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = *(a1 + 296) & 0xF8 | 4;
  *(a1 + 304) &= 0xF8u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = off_10043DAC8;
  *(a1 + 336) = xmmword_1003D21F0;
  *(a1 + 352) = xmmword_1003D2200;
  *(a1 + 368) |= 0xFu;
  *(a1 + 376) = off_10043DAC8;
  *(a1 + 384) = xmmword_1003D21F0;
  *(a1 + 400) = xmmword_1003D2200;
  *(a1 + 416) |= 0xFu;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 464) = off_10043DB08;
  *(a1 + 472) = 0u;
  *(a1 + 488) &= 0xFCu;
  *(a1 + 496) = off_10043DB08;
  *(a1 + 504) = 0u;
  *(a1 + 520) &= 0xFCu;
  *(a1 + 576) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 578) &= ~1u;
  *(a1 + 584) = off_10043D818;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 616) &= ~1u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 816) &= 0xE000u;
  return result;
}

void *sub_10011D7F4(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 240;
      v6 = v3 - 240;
      do
      {
        (**v6)(v6);
        v5 -= 240;
        v7 = v6 == v2;
        v6 -= 240;
      }

      while (!v7);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10011D888(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = sub_100135B80(v28, a1);
  v6 = *(v5 + *(*v5 - 24) + 32);
  v7 = *(&v28[5] + *(v28[0] - 24));
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

uint64_t sub_10011DAF8(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = sub_10012169C(v28, a1);
  v6 = *(v5 + *(*v5 - 24) + 32);
  v7 = *(&v28[5] + *(v28[0] - 24));
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

char *sub_10011DD68(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_10011DEC4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_10000FC84();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10000D444();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_10011E018(double **a1, double **a2)
{
  sub_10003BFA8(&v10);
  for (i = *a1; i != *a2; ++i)
  {
    if (i != *a1)
    {
      sub_10003C2E4(&v10, ", ", 2);
    }

    memset(&__p, 0, sizeof(__p));
    if ((sub_1000DE4DC(i, &__p) & 1) == 0)
    {
      v8 = std::bad_cast::bad_cast(&v14);
      v14.__vftable = &off_100434090;
      sub_100049F88(v8);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(&v10, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::stringbuf::str();
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10011E24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_10011E264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10003C1C4(&a16);
  _Unwind_Resume(a1);
}

void **sub_10011E29C(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x8E38E38E38E38E39 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        v12 = v10 - 9;
        v13 = v10 - 9;
        v14 = v10 - 9;
        do
        {
          v15 = *v14;
          v14 -= 9;
          (*v15)(v13);
          v12 -= 9;
          v16 = v13 == v8;
          v13 = v14;
        }

        while (!v16);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v17 = 0x8E38E38E38E38E39 * (v7 >> 3);
      v18 = 2 * v17;
      if (2 * v17 <= a4)
      {
        v18 = a4;
      }

      if (v17 >= 0x1C71C71C71C71C7)
      {
        v19 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v19 = v18;
      }

      if (v19 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v20 = result[1];
  if (0x8E38E38E38E38E39 * (v20 - v8) < a4)
  {
    v21 = a2 + v20 - v8;
    if (v20 == v8)
    {
      v22 = result[1];
      if (v21 == a3)
      {
LABEL_34:
        v6[1] = v22;
        return result;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          sub_10011DD68(v8 + 1, *(v5 + 8), *(v5 + 16), (*(v5 + 16) - *(v5 + 8)) >> 3);
          result = sub_10011DD68(v8 + 4, *(v5 + 32), *(v5 + 40), (*(v5 + 40) - *(v5 + 32)) >> 3);
        }

        v8[7] = *(v5 + 56);
        *(v8 + 64) = *(v5 + 64);
        v5 += 72;
        v8 += 9;
      }

      while (v5 != v21);
      v20 = v6[1];
      v22 = v20;
      if (v21 == a3)
      {
        goto LABEL_34;
      }
    }

    v23 = 0;
    do
    {
      result = sub_100119F68(&v20[v23], v21);
      v21 += 72;
      v23 += 9;
    }

    while (v21 != a3);
    v22 = &v20[v23];
    goto LABEL_34;
  }

  if (a2 != a3)
  {
    do
    {
      if (v5 != v8)
      {
        sub_10011DD68(v8 + 1, *(v5 + 8), *(v5 + 16), (*(v5 + 16) - *(v5 + 8)) >> 3);
        result = sub_10011DD68(v8 + 4, *(v5 + 32), *(v5 + 40), (*(v5 + 40) - *(v5 + 32)) >> 3);
      }

      v8[7] = *(v5 + 56);
      *(v8 + 64) = *(v5 + 64);
      v5 += 72;
      v8 += 9;
    }

    while (v5 != a3);
    v20 = v6[1];
    if (v20 == v8)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v20 != v8)
  {
LABEL_36:
    v24 = v20 - 9;
    v25 = v20 - 9;
    v26 = v20 - 9;
    do
    {
      v27 = *v26;
      v26 -= 9;
      result = (*v27)(v25);
      v24 -= 9;
      v16 = v25 == v8;
      v25 = v26;
    }

    while (!v16);
  }

LABEL_39:
  v6[1] = v8;
  return result;
}

void sub_10011E5C4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100383E60(v3 + v2, v3);
    *(v1 + 8) = v3;
    _Unwind_Resume(exception_object);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t sub_10011E604(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  sub_10011A054(v28, a1);
  v5 = v28 + *(v28[0] - 24);
  v6 = *(v5 + 8);
  v7 = *(v5 + 5);
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

uint64_t sub_10011E85C(uint64_t *a1, void *a2)
{
  sub_10003BFA8(&v10);
  for (i = *a1; i != *a2; i += 72)
  {
    if (i != *a1)
    {
      sub_10003C2E4(&v10, ", ", 2);
    }

    memset(&__p, 0, sizeof(__p));
    if ((sub_10011E604(i, &__p) & 1) == 0)
    {
      v8 = std::bad_cast::bad_cast(&v14);
      v14.__vftable = &off_100434090;
      sub_100049F88(v8);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(&v10, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::stringbuf::str();
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10011EA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_10011EAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10003C1C4(&a16);
  _Unwind_Resume(a1);
}

void **sub_10011EAE0(void **result, char *a2, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        v12 = v10 - 112;
        v13 = v10 - 112;
        v14 = v10 - 112;
        do
        {
          v15 = *v14;
          v14 -= 112;
          (*v15)(v13);
          v12 -= 112;
          v16 = v13 == v8;
          v13 = v14;
        }

        while (!v16);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x249249249249249)
    {
      v17 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 4);
      v18 = 2 * v17;
      if (2 * v17 <= a4)
      {
        v18 = a4;
      }

      if (v17 >= 0x124924924924924)
      {
        v19 = 0x249249249249249;
      }

      else
      {
        v19 = v18;
      }

      if (v19 <= 0x249249249249249)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v20 = result[1];
  if (0x6DB6DB6DB6DB6DB7 * ((v20 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v27 = 0;
      do
      {
        while (1)
        {
          v28 = &v8[v27];
          v29 = &a2[v27];
          if (a2 == v8)
          {
            break;
          }

          sub_10011DD68(v28 + 2, *(v29 + 2), *(v29 + 3), (*(v29 + 3) - *(v29 + 2)) >> 3);
          sub_10011DD68(v28 + 5, *(v29 + 5), *(v29 + 6), (*(v29 + 6) - *(v29 + 5)) >> 3);
          *(v28 + 8) = *(v29 + 8);
          v28[72] = v29[72];
          result = sub_10011E29C(v28 + 10, *(v29 + 10), *(v29 + 11), 0x8E38E38E38E38E39 * ((*(v29 + 11) - *(v29 + 10)) >> 3));
          v28[104] = v29[104];
          v27 += 112;
          if (v29 + 112 == a3)
          {
            goto LABEL_34;
          }
        }

        *(v28 + 8) = *(v29 + 8);
        v28[72] = v29[72];
        v28[104] = v29[104];
        v27 += 112;
      }

      while (v29 + 112 != a3);
LABEL_34:
      v20 = v6[1];
      v8 += v27;
    }

    if (v20 != v8)
    {
      v30 = v20 - 112;
      v31 = v20 - 112;
      v32 = v20 - 112;
      do
      {
        v33 = *v32;
        v32 -= 112;
        result = (*v33)(v31);
        v30 -= 112;
        v16 = v31 == v8;
        v31 = v32;
      }

      while (!v16);
    }

    v6[1] = v8;
  }

  else
  {
    v21 = &a2[v20 - v8];
    if (v20 != v8)
    {
      v22 = 0;
      do
      {
        while (1)
        {
          v23 = &v8[v22];
          v24 = &a2[v22];
          if (a2 == v8)
          {
            break;
          }

          sub_10011DD68(v23 + 2, *(v24 + 2), *(v24 + 3), (*(v24 + 3) - *(v24 + 2)) >> 3);
          sub_10011DD68(v23 + 5, *(v24 + 5), *(v24 + 6), (*(v24 + 6) - *(v24 + 5)) >> 3);
          *(v23 + 8) = *(v24 + 8);
          v23[72] = v24[72];
          result = sub_10011E29C(v23 + 10, *(v24 + 10), *(v24 + 11), 0x8E38E38E38E38E39 * ((*(v24 + 11) - *(v24 + 10)) >> 3));
          v23[104] = v24[104];
          v22 += 112;
          if (v24 + 112 == v21)
          {
            goto LABEL_23;
          }
        }

        *(v23 + 8) = *(v24 + 8);
        v23[72] = v24[72];
        v23[104] = v24[104];
        v22 += 112;
      }

      while (v24 + 112 != v21);
LABEL_23:
      v20 = v6[1];
    }

    v25 = v20;
    if (v21 != a3)
    {
      v26 = 0;
      do
      {
        result = sub_10011A78C(&v20[v26], v21);
        v21 += 112;
        v26 += 112;
      }

      while (v21 != a3);
      v25 = &v20[v26];
    }

    v6[1] = v25;
  }

  return result;
}

void sub_10011EEB8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100383EC8(v3 + v2, v3);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

void sub_10011EED8(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    sub_100383EC8(v2 + v3, v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t *sub_10011EEF8(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xDAB7EC1DD3431B57 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        v12 = v10 - 824;
        v13 = (v10 - 824);
        do
        {
          (**v13)(v13);
          v12 -= 824;
          v14 = v13 == v8;
          v13 -= 103;
        }

        while (!v14);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x4F88B2F392A409)
    {
      v15 = 0xDAB7EC1DD3431B57 * (v7 >> 3);
      v16 = 2 * v15;
      if (2 * v15 <= a4)
      {
        v16 = a4;
      }

      if (v15 >= 0x27C45979C95204)
      {
        v17 = 0x4F88B2F392A409;
      }

      else
      {
        v17 = v16;
      }

      if (v17 <= 0x4F88B2F392A409)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v18 = result[1];
  v19 = v18 - v8;
  if (0xDAB7EC1DD3431B57 * ((v18 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_100118F20(v8, v5);
        v5 += 824;
        v8 += 824;
      }

      while (v5 != a3);
      v18 = v6[1];
    }

    if (v18 != v8)
    {
      v23 = v18 - 824;
      v24 = (v18 - 824);
      do
      {
        result = (**v24)(v24);
        v23 -= 824;
        v14 = v24 == v8;
        v24 -= 103;
      }

      while (!v14);
    }

    v6[1] = v8;
  }

  else
  {
    v20 = a2 + v19;
    if (v18 != v8)
    {
      do
      {
        result = sub_100118F20(v8, v5);
        v5 += 824;
        v8 += 824;
        v19 -= 824;
      }

      while (v19);
      v18 = v6[1];
    }

    v21 = v18;
    if (v20 != a3)
    {
      v22 = 0;
      do
      {
        result = sub_100118A30(v18 + v22, v20);
        v20 += 824;
        v22 += 824;
      }

      while (v20 != a3);
      v21 = v18 + v22;
    }

    v6[1] = v21;
  }

  return result;
}

void sub_10011F19C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100383F30();
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

void sub_10011F1BC(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    sub_100383F30();
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_10011F1DC(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  sub_100118FEC(v28, a1);
  v5 = v28 + *(v28[0] - 24);
  v6 = *(v5 + 8);
  v7 = *(v5 + 5);
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

uint64_t sub_10011F434(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  sub_100118708(v28, a1);
  v5 = v28 + *(v28[0] - 24);
  v6 = *(v5 + 8);
  v7 = *(v5 + 5);
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

uint64_t sub_10011F68C(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = sub_10013A2D4(v28, a1);
  v6 = *(v5 + *(*v5 - 24) + 32);
  v7 = *(&v28[5] + *(v28[0] - 24));
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

uint64_t sub_10011F8FC(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = sub_10013ACB4(v28, a1);
  v6 = *(v5 + *(*v5 - 24) + 32);
  v7 = *(&v28[5] + *(v28[0] - 24));
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

uint64_t sub_10011FB6C(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = sub_10012DAD8(v28, a1);
  v6 = *(v5 + *(*v5 - 24) + 32);
  v7 = *(&v28[5] + *(v28[0] - 24));
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

uint64_t sub_10011FDDC(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  sub_100119828(v28, a1);
  v5 = v28 + *(v28[0] - 24);
  v6 = *(v5 + 8);
  v7 = *(v5 + 5);
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

uint64_t sub_100120034(uint64_t *a1, void *a2)
{
  sub_10003BFA8(&v10);
  for (i = *a1; i != *a2; i += 112)
  {
    if (i != *a1)
    {
      sub_10003C2E4(&v10, ", ", 2);
    }

    memset(&__p, 0, sizeof(__p));
    if ((sub_1001202B8(i, &__p) & 1) == 0)
    {
      v8 = std::bad_cast::bad_cast(&v14);
      v14.__vftable = &off_100434090;
      sub_100049F88(v8);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(&v10, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::stringbuf::str();
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100120268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_100120280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10003C1C4(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1001202B8(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  sub_10011A8CC(v28, a1);
  v5 = v28 + *(v28[0] - 24);
  v6 = *(v5 + 8);
  v7 = *(v5 + 5);
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

uint64_t sub_100120510(unsigned int *a1, std::string *a2)
{
  sub_1000D2150(&v26);
  v4 = (v29 + *(v29[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = *a1;
  v6 = std::ostream::operator<<();
  v7 = *(v6 + *(*v6 - 24) + 32);
  v8 = *(&v29[5] + *(v29[0] - 24));
  v10 = *(v8 + 40);
  v9 = *(v8 + 48);
  v29[21] = v10;
  v29[22] = v9;
  if ((v7 & 5) == 0)
  {
    v12 = &v9[-v10];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v16 = a2->__r_.__value_.__r.__words[2];
      v15 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v15 >= v12)
      {
        v17 = HIBYTE(v16);
LABEL_10:
        if ((v17 & 0x80u) == 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v10 == v9)
        {
          v18 = v14;
          goto LABEL_23;
        }

        if (v12 < 0x20 || v14 - v10 < 0x20)
        {
          v18 = v14;
          v19 = v10;
        }

        else
        {
          v18 = (v14 + (v12 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v10 + (v12 & 0xFFFFFFFFFFFFFFE0));
          v20 = (v10 + 16);
          v21 = &v14->__r_.__value_.__r.__words[2];
          v22 = v12 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v20 += 2;
            v21 += 4;
            v22 -= 32;
          }

          while (v22);
          if (v12 == (v12 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v18->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v12;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v12 & 0x7F;
            }

            v11 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v24 = *v19++;
          v18->__r_.__value_.__s.__data_[0] = v24;
          v18 = (v18 + 1);
        }

        while (v19 != v9);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v14 = a2;
      if (v12 <= 0x16)
      {
        goto LABEL_13;
      }

      v15 = 22;
    }

    std::string::__grow_by(a2, v15, v12 - v15, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v17) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v11 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  std::locale::~locale(v27);
  return v11;
}

uint64_t sub_100120780(uint64_t *a1, void *a2)
{
  sub_10003BFA8(&v10);
  for (i = *a1; i != *a2; i += 824)
  {
    if (i != *a1)
    {
      sub_10003C2E4(&v10, ", ", 2);
    }

    memset(&__p, 0, sizeof(__p));
    if ((sub_10011F1DC(i, &__p) & 1) == 0)
    {
      v8 = std::bad_cast::bad_cast(&v14);
      v14.__vftable = &off_100434090;
      sub_100049F88(v8);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(&v10, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::stringbuf::str();
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1001209B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_1001209CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10003C1C4(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100120A04(uint64_t a1)
{
  *a1 = off_10043D738;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  sub_10011D568(a1 + 80);
  *(a1 + 928) = 0;
  *(a1 + 920) = 0;
  *(a1 + 904) = 0u;
  *(a1 + 984) = 0;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 992) = off_10043D698;
  *(a1 + 1008) = 0u;
  *(a1 + 1000) = a1 + 1008;
  *(a1 + 1032) = 0u;
  *(a1 + 1024) = a1 + 1032;
  *(a1 + 1048) &= 0xFCu;
  *(a1 + 1056) = off_10043DE88;
  *(a1 + 1064) = off_10043DE28;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1104) &= 0xF8u;
  *(a1 + 1112) = off_10043DB48;
  *(a1 + 1120) = off_10043DB08;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) &= 0xFCu;
  *(a1 + 1152) = 0;
  *(a1 + 1160) = 0;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = *(a1 + 1176) & 0xF8 | 4;
  *(a1 + 1184) = off_10043DE48;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) &= 0xC0u;
  *(a1 + 1288) = 0;
  *(a1 + 1280) = 0;
  *(a1 + 1264) = 0u;
  *(a1 + 1296) = off_10043DB28;
  *(a1 + 1304) = 0u;
  *(a1 + 1320) &= 0xFCu;
  *(a1 + 1328) = off_10043DB28;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) &= 0xFCu;
  *(a1 + 1360) = off_10043DE28;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) &= 0xF8u;
  *(a1 + 1424) = 0;
  *(a1 + 1408) = 0u;
  *(a1 + 1432) &= 0xF800u;
  *(a1 + 1440) = off_10043DEA8;
  *(a1 + 1448) = off_10043DE28;
  *(a1 + 1472) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1488) &= 0xF8u;
  *(a1 + 1496) = off_10043DB48;
  *(a1 + 1504) = off_10043DB08;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) &= 0xFCu;
  *(a1 + 1536) = 0;
  *(a1 + 1544) = 0;
  *(a1 + 1552) = 0;
  *(a1 + 1560) = *(a1 + 1560) & 0xF8 | 4;
  *(a1 + 1584) = 0;
  *(a1 + 1568) = 0u;
  *(a1 + 1592) &= 0xF8u;
  *(a1 + 1616) = 0;
  *(a1 + 1600) = 0u;
  *(a1 + 1624) = off_10043DB28;
  *(a1 + 1632) = 0u;
  *(a1 + 1648) &= 0xFCu;
  *(a1 + 1656) = off_10043D6D8;
  *(a1 + 1712) = 0;
  *(a1 + 1696) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1720) &= 0x80u;
  *(a1 + 1728) = off_10043D6D8;
  *(a1 + 1784) = 0;
  *(a1 + 1752) = 0u;
  *(a1 + 1768) = 0u;
  *(a1 + 1736) = 0u;
  *(a1 + 1792) &= 0x80u;
  *(a1 + 1845) = 0u;
  *(a1 + 1816) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1800) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1896) = 0u;
  *(a1 + 1864) = 0u;
  *(a1 + 1912) &= 0xFE000000;
  return a1;
}

void sub_100120E34(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  sub_100383E04(v1, (v1 + 32), (v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_100120E60(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1920;
    (**(i - 1920))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100120F0C()
{
  qword_10045DF90 = 0;
  qword_10045DF98 = 0;
  qword_10045DF88 = &qword_10045DF90;
  operator new();
}

void *sub_1001210FC(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "RttApModel(", 11);
  v4 = sub_10003C2E4(a1, "mac=", 4);
  sub_1000E4670((a2 + 8), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v4, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  v8 = sub_10003C2E4(v7, "floorplanX=", 11);
  memset(&v24, 0, sizeof(v24));
  if ((sub_1000DE4DC((a2 + 16), &v24) & 1) == 0)
  {
    std::bad_cast::bad_cast(&__p);
    __p.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&__p);
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v24;
  }

  else
  {
    v9 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v24.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v8, v9, v10);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v11 = sub_10003C2E4(a1, ", ", 2);
  v12 = sub_10003C2E4(v11, "floorplanY=", 11);
  memset(&v24, 0, sizeof(v24));
  if ((sub_1000DE4DC((a2 + 24), &v24) & 1) == 0)
  {
    std::bad_cast::bad_cast(&__p);
    __p.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&__p);
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v24;
  }

  else
  {
    v13 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v24.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v12, v13, v14);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v15 = sub_10003C2E4(a1, ", ", 2);
  v16 = sub_10003C2E4(v15, "height=", 7);
  memset(&v24, 0, sizeof(v24));
  if ((sub_1000DE4DC((a2 + 32), &v24) & 1) == 0)
  {
    std::bad_cast::bad_cast(&__p);
    __p.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&__p);
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v24;
  }

  else
  {
    v17 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v24.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v16, v17, v18);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v19 = sub_10003C2E4(a1, ", ", 2);
  v20 = sub_10003C2E4(v19, "resolutionNanos=", 16);
  sub_1000E4670((a2 + 40), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v20, v21, v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_10012144C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1001214AC(void *a1)
{
  *a1 = off_10043D818;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      v5 = v3 - 7;
      v6 = v3 - 7;
      v7 = v3 - 7;
      do
      {
        v8 = *v7;
        v7 -= 7;
        (*v8)(v6);
        v5 -= 7;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_100121564(void *a1)
{
  *a1 = off_10043D818;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      v5 = v3 - 7;
      v6 = v3 - 7;
      v7 = v3 - 7;
      do
      {
        v8 = *v7;
        v7 -= 7;
        (*v8)(v6);
        v5 -= 7;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  operator delete();
}

uint64_t sub_10012163C(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    sub_100121970((result + 8), *(a2 + 8), *(a2 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    result = v3;
  }

  *(result + 32) = *(a2 + 32);
  return result;
}

void *sub_10012169C(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "RttModel(", 9);
  v4 = sub_10003C2E4(a1, "accessPoints=", 13);
  sub_10012176C((a2 + 8));
  if ((v9 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = __p[1];
  }

  sub_10003C2E4(v4, v5, v6);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_100121750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012176C(uint64_t *a1)
{
  sub_10003BFA8(&v12);
  v2 = sub_10003C2E4(&v12, "[", 1);
  v3 = *a1;
  v8 = a1[1];
  v9 = v3;
  sub_100121CDC(&v9, &v8);
  if ((v11 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_10003C2E4(v2, v4, v5);
  sub_10003C2E4(v6, "]", 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100121924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_100121938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_10003C1C4(&a17);
    _Unwind_Resume(a1);
  }

  sub_10003C1C4(&a17);
  _Unwind_Resume(a1);
}

void **sub_100121970(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = result;
  v5 = result[2];
  v6 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v5 - *result) >> 3) < a4)
  {
    if (v6)
    {
      v7 = a4;
      v8 = result[1];
      v9 = *result;
      if (v8 != v6)
      {
        v10 = v8 - 56;
        v11 = v8 - 56;
        v12 = v8 - 56;
        do
        {
          v13 = *v12;
          v12 -= 56;
          (*v13)(v11);
          v10 -= 56;
          v14 = v11 == v6;
          v11 = v12;
        }

        while (!v14);
        v9 = *v4;
      }

      v4[1] = v6;
      operator delete(v9);
      v5 = 0;
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      a4 = v7;
    }

    if (a4 <= 0x492492492492492)
    {
      v15 = 0x6DB6DB6DB6DB6DB7 * (v5 >> 3);
      v16 = 2 * v15;
      if (2 * v15 <= a4)
      {
        v16 = a4;
      }

      if (v15 >= 0x249249249249249)
      {
        v17 = 0x492492492492492;
      }

      else
      {
        v17 = v16;
      }

      if (v17 <= 0x492492492492492)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v18 = result[1];
  v19 = v18 - v6;
  if (0x6DB6DB6DB6DB6DB7 * ((v18 - v6) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v27 = 0;
      do
      {
        v28 = &v6[v27];
        *(v28 + 1) = *(a2 + v27 + 8);
        *(v28 + 1) = *(a2 + v27 + 16);
        *(v28 + 4) = *(a2 + v27 + 32);
        *(v28 + 5) = *(a2 + v27 + 40);
        v28[48] = *(a2 + v27 + 48);
        v27 += 56;
      }

      while (a2 + v27 != a3);
      v18 = result[1];
      v6 += v27;
    }

    if (v18 != v6)
    {
      v29 = v18 - 56;
      v30 = v18 - 56;
      v31 = v18 - 56;
      do
      {
        v32 = *v31;
        v31 -= 56;
        result = (*v32)(v30);
        v29 -= 56;
        v14 = v30 == v6;
        v30 = v31;
      }

      while (!v14);
    }

    v4[1] = v6;
  }

  else
  {
    v20 = a2 + v19;
    if (v18 != v6)
    {
      v21 = 0;
      do
      {
        v22 = &v6[v21];
        *(v22 + 1) = *(a2 + v21 + 8);
        *(v22 + 1) = *(a2 + v21 + 16);
        *(v22 + 4) = *(a2 + v21 + 32);
        *(v22 + 5) = *(a2 + v21 + 40);
        v22[48] = *(a2 + v21 + 48);
        v21 += 56;
      }

      while (v19 != v21);
      v18 = result[1];
    }

    v23 = v18;
    if (v20 != a3)
    {
      v24 = 0;
      do
      {
        v25 = &v18[v24];
        v25[48] = v18[v24 + 48] & 0xE0;
        v26 = *(v20 + v24 + 8);
        *v25 = off_10043D7F8;
        *(v25 + 1) = v26;
        *(v25 + 1) = *(v20 + v24 + 16);
        *(v25 + 4) = *(v20 + v24 + 32);
        *(v25 + 5) = *(v20 + v24 + 40);
        v25[48] = *(v20 + v24 + 48);
        v24 += 56;
      }

      while (v20 + v24 != a3);
      v23 = &v18[v24];
    }

    result[1] = v23;
  }

  return result;
}

uint64_t sub_100121CDC(uint64_t *a1, void *a2)
{
  sub_10003BFA8(&v10);
  for (i = *a1; i != *a2; i += 56)
  {
    if (i != *a1)
    {
      sub_10003C2E4(&v10, ", ", 2);
    }

    memset(&__p, 0, sizeof(__p));
    if ((sub_100121F60(i, &__p) & 1) == 0)
    {
      v8 = std::bad_cast::bad_cast(&v14);
      v14.__vftable = &off_100434090;
      sub_100049F88(v8);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(&v10, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::stringbuf::str();
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100121F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_100121F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10003C1C4(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100121F60(uint64_t a1, std::string *a2)
{
  v32 = 0u;
  v31 = 0u;
  *__p = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  std::locale::locale(&v27);
  v29 = 0uLL;
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0uLL;
  DWORD2(v32) = 24;
  *(&v27 + 1) = &__p[1];
  *&v28 = &__p[1];
  *(&v28 + 1) = &__p[1];
  *&v32 = &__p[1];
  std::string::resize(&__p[1], 0x16uLL, 0);
  v4 = HIBYTE(v31);
  if (v31 < 0)
  {
    v4 = v31;
  }

  *&v29 = &__p[1];
  *(&v29 + 1) = &__p[1];
  __p[0] = &__p[1] + v4;
  v28 = 0uLL;
  *(&v27 + 1) = 0;
  v26 = off_100433ED0;
  v34.__loc_ = 0;
  std::ios_base::init(&v34, &v26);
  v35 = 0;
  v36 = -1;
  v38 = &v37;
  v39 = &v37 + 2;
  v5 = (&v33 + *(v33 - 3));
  v5->__exceptions_ = 1;
  std::ios_base::clear(v5, v5->__rdstate_);
  sub_1001210FC(&v33, a1);
  v6 = &v33 + *(v33 - 3);
  v7 = *(v6 + 8);
  v8 = *(v6 + 5);
  v10 = *(v8 + 40);
  v9 = *(v8 + 48);
  v38 = v10;
  v39 = v9;
  if ((v7 & 5) == 0)
  {
    v13 = &v9[-v10];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v17 = a2->__r_.__value_.__r.__words[2];
      v16 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v16 >= v13)
      {
        v18 = HIBYTE(v17);
LABEL_14:
        if ((v18 & 0x80u) == 0)
        {
          v15 = a2;
        }

        else
        {
          v15 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_17:
        if (v10 == v9)
        {
          v19 = v15;
          goto LABEL_27;
        }

        if (v13 < 0x20 || v15 - v10 < 0x20)
        {
          v19 = v15;
          v20 = v10;
        }

        else
        {
          v19 = (v15 + (v13 & 0xFFFFFFFFFFFFFFE0));
          v20 = (v10 + (v13 & 0xFFFFFFFFFFFFFFE0));
          v21 = (v10 + 16);
          v22 = &v15->__r_.__value_.__r.__words[2];
          v23 = v13 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v24 = *v21;
            *(v22 - 1) = *(v21 - 1);
            *v22 = v24;
            v21 += 2;
            v22 += 4;
            v23 -= 32;
          }

          while (v23);
          if (v13 == (v13 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_27:
            v19->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v13;
              v11 = 1;
              std::ostream::~ostream();
              if ((SHIBYTE(v31) & 0x80000000) == 0)
              {
                goto LABEL_6;
              }
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v13 & 0x7F;
              v11 = 1;
              std::ostream::~ostream();
              if ((SHIBYTE(v31) & 0x80000000) == 0)
              {
                goto LABEL_6;
              }
            }

            goto LABEL_5;
          }
        }

        do
        {
          v25 = *v20++;
          v19->__r_.__value_.__s.__data_[0] = v25;
          v19 = (v19 + 1);
        }

        while (v20 != v9);
        goto LABEL_27;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v15 = a2;
      if (v13 <= 0x16)
      {
        goto LABEL_17;
      }

      v16 = 22;
    }

    std::string::__grow_by(a2, v16, v13 - v16, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v18) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_14;
  }

  v11 = 0;
  std::ostream::~ostream();
  if (SHIBYTE(v31) < 0)
  {
LABEL_5:
    operator delete(__p[1]);
  }

LABEL_6:
  std::locale::~locale(&v27);
  return v11;
}

void sub_100122310(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v22 + 1);
  sub_10000D388(a1);
}

void *sub_100122338(void *result)
{
  *result = off_10043D858;
  v1 = result[7];
  if (v1)
  {
    result[8] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_100122390(void *a1)
{
  *a1 = off_10043D858;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_100122414(uint64_t result, int a2)
{
  *(result + 112) = a2;
  *(result + 152) |= 1u;
  return result;
}

uint64_t sub_100122428(uint64_t result, int a2)
{
  *(result + 116) = a2;
  *(result + 152) |= 2u;
  return result;
}

uint64_t sub_10012243C(uint64_t result, int a2)
{
  *(result + 120) = a2;
  *(result + 152) |= 4u;
  return result;
}

uint64_t sub_100122450(uint64_t result, double a2)
{
  *(result + 128) = a2;
  *(result + 152) |= 8u;
  return result;
}

uint64_t sub_100122464(uint64_t result, double a2)
{
  *(result + 136) = a2;
  *(result + 152) |= 0x10u;
  return result;
}

uint64_t sub_100122478(uint64_t result, double a2)
{
  *(result + 144) = a2;
  *(result + 152) |= 0x20u;
  return result;
}

uint64_t sub_10012248C(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "HealthIndicators");
  v7 = (*(*a2 + 48))(a2, "prbPipelinedSaysYield", 4, 1) + v6;
  v8 = (*(*a2 + 160))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "prbCoarseIndoorSaysIndoor", 4, 2);
  v11 = v10 + (*(*a2 + 160))(a2, *(a1 + 16));
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = (*(*a2 + 48))(a2, "prbWifiSaysIndoor", 4, 3);
  v14 = v13 + (*(*a2 + 160))(a2, *(a1 + 24));
  v15 = v14 + (*(*a2 + 56))(a2);
  v16 = v12 + v15 + (*(*a2 + 48))(a2, "prbGpsSaysIndoor", 4, 4);
  v17 = (*(*a2 + 160))(a2, *(a1 + 32));
  v18 = v17 + (*(*a2 + 56))(a2);
  v19 = v18 + (*(*a2 + 48))(a2, "prbParticleFilterSaysYield", 4, 5);
  v20 = v19 + (*(*a2 + 160))(a2, *(a1 + 40));
  v21 = v16 + v20 + (*(*a2 + 56))(a2);
  v22 = (*(*a2 + 48))(a2, "prbOnFloors", 4, 6);
  v23 = v22 + (*(*a2 + 160))(a2, *(a1 + 48));
  v24 = v23 + (*(*a2 + 56))(a2);
  v25 = v24 + (*(*a2 + 48))(a2, "prbOnFloor", 15, 7);
  v26 = v21 + v25 + (*(*a2 + 88))(a2, 4, (*(a1 + 64) - *(a1 + 56)) >> 3);
  for (i = *(a1 + 56); i != *(a1 + 64); v26 += (*(*a2 + 160))(a2, v28))
  {
    v28 = *i++;
  }

  v29 = (*(*a2 + 96))(a2);
  v30 = v29 + (*(*a2 + 56))(a2) + v26;
  v31 = (*(*a2 + 48))(a2, "prbInlier", 4, 8);
  v32 = v31 + (*(*a2 + 160))(a2, *(a1 + 80));
  v33 = v30 + v32 + (*(*a2 + 56))(a2);
  v34 = (*(*a2 + 48))(a2, "prbLocalizerIoWrapperSaysWifiOk", 4, 9);
  v35 = v34 + (*(*a2 + 160))(a2, *(a1 + 88));
  v36 = v35 + (*(*a2 + 56))(a2);
  v37 = v33 + v36 + (*(*a2 + 48))(a2, "prbInjectionOccupancyRetryLimitOk", 4, 10);
  v38 = (*(*a2 + 160))(a2, *(a1 + 96));
  v39 = v38 + (*(*a2 + 56))(a2);
  v40 = v39 + (*(*a2 + 48))(a2, "prbInjectionGainRetryLimitOk", 4, 11);
  v41 = v40 + (*(*a2 + 160))(a2, *(a1 + 104));
  v42 = v37 + v41 + (*(*a2 + 56))(a2);
  v43 = *(a1 + 152);
  if (v43)
  {
    v49 = (*(*a2 + 48))(a2, "pfYieldStatusBeforeCalculatePose", 8, 12);
    v50 = v49 + (*(*a2 + 144))(a2, *(a1 + 112));
    v42 += v50 + (*(*a2 + 56))(a2);
    v43 = *(a1 + 152);
    if ((v43 & 2) == 0)
    {
LABEL_6:
      if ((v43 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 152) & 2) == 0)
  {
    goto LABEL_6;
  }

  v51 = (*(*a2 + 48))(a2, "yieldStatusBeforeCalculatePose", 8, 13);
  v52 = v51 + (*(*a2 + 144))(a2, *(a1 + 116));
  v42 += v52 + (*(*a2 + 56))(a2);
  v43 = *(a1 + 152);
  if ((v43 & 4) == 0)
  {
LABEL_7:
    if ((v43 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v53 = (*(*a2 + 48))(a2, "motionUpdateSource", 8, 14);
  v54 = v53 + (*(*a2 + 144))(a2, *(a1 + 120));
  v42 += v54 + (*(*a2 + 56))(a2);
  v43 = *(a1 + 152);
  if ((v43 & 8) == 0)
  {
LABEL_8:
    if ((v43 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v57 = (*(*a2 + 48))(a2, "prbRawCLOutdoorServiceSaysIndoor", 4, 16);
    v58 = v57 + (*(*a2 + 160))(a2, *(a1 + 136));
    v42 += v58 + (*(*a2 + 56))(a2);
    if ((*(a1 + 152) & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_15:
  v55 = (*(*a2 + 48))(a2, "prbZAxisSaysIndoor", 4, 15);
  v56 = v55 + (*(*a2 + 160))(a2, *(a1 + 128));
  v42 += v56 + (*(*a2 + 56))(a2);
  v43 = *(a1 + 152);
  if ((v43 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v43 & 0x20) != 0)
  {
LABEL_10:
    v44 = (*(*a2 + 48))(a2, "prbCoarseIndoorSaysIndoorWifiAndGps", 4, 17);
    v45 = v44 + (*(*a2 + 160))(a2, *(a1 + 144));
    v42 += v45 + (*(*a2 + 56))(a2);
  }

LABEL_11:
  v46 = (*(*a2 + 64))(a2);
  v47 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v46 + v47 + v42);
}

uint64_t sub_1001230E8(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "FloorTransitionState");
  v7 = (*(*a2 + 48))(a2, "startFloorNumber", 8, 1) + v6;
  v8 = (*(*a2 + 144))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "transitionDirection", 8, 2);
  v11 = v10 + (*(*a2 + 144))(a2, *(a1 + 12));
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = (*(*a2 + 48))(a2, "timestampNanos", 10, 3);
  LODWORD(a1) = v13 + (*(*a2 + 152))(a2, *(a1 + 16));
  LODWORD(a1) = a1 + (*(*a2 + 56))(a2);
  LODWORD(a1) = v12 + a1 + (*(*a2 + 64))(a2);
  v14 = (*(*a2 + 40))(a2);
  --a2[6];
  return (a1 + v14);
}

double sub_1001233E0(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043D878;
  *(a1 + 24) &= 0xF8u;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return result;
}

uint64_t sub_100123424(uint64_t a1)
{
  *a1 = off_10043D898;
  if (*(a1 + 743) < 0)
  {
    operator delete(*(a1 + 720));
  }

  nullsub_76(a1 + 528);
  *(a1 + 304) = off_10043D858;
  v2 = *(a1 + 360);
  if (v2)
  {
    *(a1 + 368) = v2;
    operator delete(v2);
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  nullsub_76(a1 + 40);
  nullsub_75(a1 + 8);
  return a1;
}

void sub_1001234D0(uint64_t a1)
{
  sub_100123424(a1);

  operator delete();
}

uint64_t sub_100123520(uint64_t result, int a2)
{
  *(result + 88) = a2;
  *(result + 752) |= 0x10uLL;
  return result;
}

uint64_t sub_10012353C(uint64_t result, int a2)
{
  *(result + 128) = a2;
  *(result + 752) |= 0x80uLL;
  return result;
}

uint64_t sub_100123558(uint64_t result, double a2)
{
  *(result + 192) = a2;
  *(result + 752) |= 0x8000uLL;
  return result;
}

uint64_t sub_10012356C(uint64_t result, uint64_t a2)
{
  *(result + 240) = a2;
  *(result + 752) |= 0x200000uLL;
  return result;
}

uint64_t sub_100123580(uint64_t result, double a2)
{
  *(result + 248) = a2;
  *(result + 752) |= 0x400000uLL;
  return result;
}

uint64_t sub_100123594(uint64_t result, double a2)
{
  *(result + 256) = a2;
  *(result + 752) |= 0x800000uLL;
  return result;
}

uint64_t sub_1001235A8(uint64_t result, double a2)
{
  *(result + 264) = a2;
  *(result + 752) |= 0x1000000uLL;
  return result;
}

uint64_t sub_1001235BC(uint64_t result, double a2)
{
  *(result + 280) = a2;
  *(result + 752) |= 0x4000000uLL;
  return result;
}

uint64_t sub_1001235D0(uint64_t result, double a2)
{
  *(result + 288) = a2;
  *(result + 752) |= 0x8000000uLL;
  return result;
}

uint64_t sub_1001235E4(uint64_t result, int a2)
{
  *(result + 300) = a2;
  *(result + 752) |= 0x20000000uLL;
  return result;
}

uint64_t sub_100123618(uint64_t result, double a2)
{
  *(result + 488) = a2;
  *(result + 752) |= 0x400000000uLL;
  return result;
}

uint64_t sub_10012362C(uint64_t result, double a2)
{
  *(result + 496) = a2;
  *(result + 752) |= 0x800000000uLL;
  return result;
}

uint64_t sub_100123640(uint64_t result, double a2)
{
  *(result + 504) = a2;
  *(result + 752) |= 0x1000000000uLL;
  return result;
}

uint64_t sub_10012365C(uint64_t result, int a2)
{
  *(result + 520) = a2;
  *(result + 752) |= 0x4000000000uLL;
  return result;
}

uint64_t sub_100123670(uint64_t result, int a2)
{
  *(result + 524) = a2;
  *(result + 752) |= 0x8000000000uLL;
  return result;
}

uint64_t sub_1001236B8(uint64_t result, double a2)
{
  *(result + 560) = a2;
  *(result + 752) |= 0x20000000000uLL;
  return result;
}

double sub_1001236CC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  *(a1 + 576) = result;
  *(a1 + 584) = *(a2 + 16);
  *(a1 + 592) = *(a2 + 24);
  *(a1 + 752) |= 0x40000000000uLL;
  return result;
}

uint64_t sub_1001236F4(uint64_t result, double a2)
{
  *(result + 600) = a2;
  *(result + 752) |= 0x80000000000uLL;
  return result;
}

uint64_t sub_100123708(uint64_t result, int a2)
{
  *(result + 608) = a2;
  *(result + 752) |= 0x100000000000uLL;
  return result;
}

uint64_t sub_10012371C(uint64_t result, double a2)
{
  *(result + 648) = a2;
  *(result + 752) |= 0x2000000000000uLL;
  return result;
}

uint64_t sub_100123730(uint64_t result, double a2)
{
  *(result + 656) = a2;
  *(result + 752) |= 0x4000000000000uLL;
  return result;
}

uint64_t sub_100123744(uint64_t result, int a2)
{
  *(result + 664) = a2;
  *(result + 752) |= 0x8000000000000uLL;
  return result;
}

uint64_t sub_100123758(uint64_t result, double a2)
{
  *(result + 672) = a2;
  *(result + 752) |= 0x10000000000000uLL;
  return result;
}

uint64_t sub_10012376C(uint64_t result, double a2)
{
  *(result + 680) = a2;
  *(result + 752) |= 0x20000000000000uLL;
  return result;
}

uint64_t sub_100123780(uint64_t result, double a2)
{
  *(result + 688) = a2;
  *(result + 752) |= 0x40000000000000uLL;
  return result;
}

uint64_t sub_100123794(uint64_t result, double a2)
{
  *(result + 696) = a2;
  *(result + 752) |= 0x80000000000000uLL;
  return result;
}

uint64_t sub_1001237A8(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "PoseEstimate");
  v7 = (*(*a2 + 48))(a2, "userPosition", 12, 1) + v6;
  v8 = sub_10012D118(a1 + 8, a2);
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "userHeading", 4, 2);
  v11 = v10 + (*(*a2 + 160))(a2, *(a1 + 72));
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = (*(*a2 + 48))(a2, "screenHeading", 4, 3);
  v14 = v13 + (*(*a2 + 160))(a2, *(a1 + 80));
  v15 = v12 + v14 + (*(*a2 + 56))(a2);
  if ((*(a1 + 752) & 0x10) != 0)
  {
    v16 = (*(*a2 + 48))(a2, "walking", 8, 4);
    v17 = v16 + (*(*a2 + 144))(a2, *(a1 + 88));
    v15 += v17 + (*(*a2 + 56))(a2);
  }

  v18 = (*(*a2 + 48))(a2, "measuredHeading", 4, 5);
  v19 = v18 + (*(*a2 + 160))(a2, *(a1 + 96));
  v20 = v19 + (*(*a2 + 56))(a2);
  v21 = v20 + (*(*a2 + 48))(a2, "floorId", 11, 6);
  v22 = v21 + (*(*a2 + 168))(a2, a1 + 104) + v15;
  v23 = v22 + (*(*a2 + 56))(a2);
  v24 = *(a1 + 752);
  if ((v24 & 0x200000000000000) != 0)
  {
    v101 = (*(*a2 + 48))(a2, "DEPRECATED_floorIndex", 8, 7);
    v102 = v101 + (*(*a2 + 144))(a2, *(a1 + 712));
    v23 += v102 + (*(*a2 + 56))(a2);
    v24 = *(a1 + 752);
    if ((v24 & 0x400000000000000) == 0)
    {
LABEL_6:
      if ((v24 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((v24 & 0x400000000000000) == 0)
  {
    goto LABEL_6;
  }

  v103 = (*(*a2 + 48))(a2, "DEPRECATED_floorplanId", 11, 8);
  v104 = v103 + (*(*a2 + 168))(a2, a1 + 720);
  v23 += v104 + (*(*a2 + 56))(a2);
  if ((*(a1 + 752) & 0x100) != 0)
  {
LABEL_7:
    v25 = (*(*a2 + 48))(a2, "DEPRECATED_accuracyRadius", 4, 9);
    v26 = v25 + (*(*a2 + 160))(a2, *(a1 + 136));
    v23 += v26 + (*(*a2 + 56))(a2);
  }

LABEL_8:
  v27 = (*(*a2 + 48))(a2, "latLonPosition", 12, 10);
  v28 = v27 + sub_10012D83C(a1 + 40, a2);
  v29 = v28 + (*(*a2 + 56))(a2);
  v30 = v29 + (*(*a2 + 48))(a2, "gainDbm", 4, 11);
  v31 = v30 + (*(*a2 + 160))(a2, *(a1 + 144));
  v32 = v31 + (*(*a2 + 56))(a2) + v23;
  if (*(a1 + 759))
  {
    v33 = (*(*a2 + 48))(a2, "DEPRECATED_onFloorProbability", 4, 12);
    v34 = v33 + (*(*a2 + 160))(a2, *(a1 + 704));
    v32 += v34 + (*(*a2 + 56))(a2);
  }

  v35 = (*(*a2 + 48))(a2, "sigmaDist", 4, 13);
  v36 = v35 + (*(*a2 + 160))(a2, *(a1 + 152));
  v37 = v36 + (*(*a2 + 56))(a2);
  v38 = v37 + (*(*a2 + 48))(a2, "compoundConfidence", 4, 14);
  v39 = v38 + (*(*a2 + 160))(a2, *(a1 + 160));
  v40 = v39 + (*(*a2 + 56))(a2);
  v41 = v40 + (*(*a2 + 48))(a2, "probabilityOnMappedLocation", 4, 15);
  v42 = v41 + (*(*a2 + 160))(a2, *(a1 + 168)) + v32;
  v43 = (*(*a2 + 56))(a2);
  v44 = v43 + (*(*a2 + 48))(a2, "probabilityOnFloorId", 4, 16);
  v45 = v44 + (*(*a2 + 160))(a2, *(a1 + 176));
  v46 = v45 + (*(*a2 + 56))(a2);
  v47 = v46 + (*(*a2 + 48))(a2, "probabilityInlier", 4, 17);
  v48 = v47 + (*(*a2 + 160))(a2, *(a1 + 184));
  v49 = v42 + v48 + (*(*a2 + 56))(a2);
  if ((*(a1 + 759) & 8) != 0)
  {
    v50 = (*(*a2 + 48))(a2, "DEPRECATED_probabilityRadiusInterval", 4, 18);
    v51 = v50 + (*(*a2 + 160))(a2, *(a1 + 744));
    v49 += v51 + (*(*a2 + 56))(a2);
  }

  v52 = (*(*a2 + 48))(a2, "scaledFloorplanX", 4, 19);
  v53 = v52 + (*(*a2 + 160))(a2, *(a1 + 200));
  v54 = v53 + (*(*a2 + 56))(a2);
  v55 = v54 + (*(*a2 + 48))(a2, "scaledFloorplanY", 4, 20);
  v56 = v55 + (*(*a2 + 160))(a2, *(a1 + 208));
  v57 = v56 + (*(*a2 + 56))(a2);
  v58 = v57 + (*(*a2 + 48))(a2, "origFloorplanX", 4, 21);
  v59 = v58 + (*(*a2 + 160))(a2, *(a1 + 216));
  v60 = v59 + (*(*a2 + 56))(a2);
  v61 = v60 + (*(*a2 + 48))(a2, "origFloorplanY", 4, 22) + v49;
  v62 = (*(*a2 + 160))(a2, *(a1 + 224));
  v63 = v61 + v62 + (*(*a2 + 56))(a2);
  v64 = *(a1 + 752);
  if ((v64 & 0x100000) != 0)
  {
    v105 = (*(*a2 + 48))(a2, "origFloorplanSigmaDist", 4, 23);
    v106 = v105 + (*(*a2 + 160))(a2, *(a1 + 232));
    v63 += v106 + (*(*a2 + 56))(a2);
    v64 = *(a1 + 752);
    if ((v64 & 0x200000) == 0)
    {
LABEL_14:
      if ((v64 & 0x400000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_55;
    }
  }

  else if ((v64 & 0x200000) == 0)
  {
    goto LABEL_14;
  }

  v107 = (*(*a2 + 48))(a2, "timestampNanos", 10, 24);
  v108 = v107 + (*(*a2 + 152))(a2, *(a1 + 240));
  v63 += v108 + (*(*a2 + 56))(a2);
  v64 = *(a1 + 752);
  if ((v64 & 0x400000) == 0)
  {
LABEL_15:
    if ((v64 & 0x800000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  v109 = (*(*a2 + 48))(a2, "userHeadingVariance", 4, 25);
  v110 = v109 + (*(*a2 + 160))(a2, *(a1 + 248));
  v63 += v110 + (*(*a2 + 56))(a2);
  v64 = *(a1 + 752);
  if ((v64 & 0x800000) == 0)
  {
LABEL_16:
    if ((v64 & 0x1000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  v111 = (*(*a2 + 48))(a2, "gyroBias", 4, 26);
  v112 = v111 + (*(*a2 + 160))(a2, *(a1 + 256));
  v63 += v112 + (*(*a2 + 56))(a2);
  v64 = *(a1 + 752);
  if ((v64 & 0x1000000) == 0)
  {
LABEL_17:
    if ((v64 & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  v113 = (*(*a2 + 48))(a2, "measuredHeadingIndependence", 4, 27);
  v114 = v113 + (*(*a2 + 160))(a2, *(a1 + 264));
  v63 += v114 + (*(*a2 + 56))(a2);
  v64 = *(a1 + 752);
  if ((v64 & 0x2000000) == 0)
  {
LABEL_18:
    if ((v64 & 0x4000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  v115 = (*(*a2 + 48))(a2, "attitudeHeading", 4, 28);
  v116 = v115 + (*(*a2 + 160))(a2, *(a1 + 272));
  v63 += v116 + (*(*a2 + 56))(a2);
  v64 = *(a1 + 752);
  if ((v64 & 0x4000000) == 0)
  {
LABEL_19:
    if ((v64 & 0x8000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_59:
  v117 = (*(*a2 + 48))(a2, "horizontalAccuracy", 4, 29);
  v118 = v117 + (*(*a2 + 160))(a2, *(a1 + 280));
  v63 += v118 + (*(*a2 + 56))(a2);
  if ((*(a1 + 752) & 0x8000000) != 0)
  {
LABEL_20:
    v65 = (*(*a2 + 48))(a2, "verticalAccuracy", 4, 30);
    v66 = v65 + (*(*a2 + 160))(a2, *(a1 + 288));
    v63 += v66 + (*(*a2 + 56))(a2);
  }

LABEL_21:
  v67 = (*(*a2 + 48))(a2, "yieldStatus", 8, 31);
  v68 = v67 + (*(*a2 + 144))(a2, *(a1 + 296));
  v69 = v68 + (*(*a2 + 56))(a2) + v63;
  if ((*(a1 + 755) & 0x20) != 0)
  {
    v70 = (*(*a2 + 48))(a2, "yieldFailureType", 8, 32);
    v71 = v70 + (*(*a2 + 144))(a2, *(a1 + 300));
    v69 += v71 + (*(*a2 + 56))(a2);
  }

  v72 = (*(*a2 + 48))(a2, "indoorNeedsGps", 2, 33);
  v73 = v72 + (*(*a2 + 120))(a2, *(a1 + 464));
  v74 = v73 + (*(*a2 + 56))(a2) + v69;
  if ((*(a1 + 752) & 0x80) != 0)
  {
    v75 = (*(*a2 + 48))(a2, "floorNumber", 8, 34);
    v76 = v75 + (*(*a2 + 144))(a2, *(a1 + 128));
    v74 += v76 + (*(*a2 + 56))(a2);
  }

  v77 = (*(*a2 + 48))(a2, "gpsStrobingActive", 2, 36);
  v78 = v77 + (*(*a2 + 120))(a2, *(a1 + 465));
  v79 = v78 + (*(*a2 + 56))(a2);
  v80 = v79 + (*(*a2 + 48))(a2, "lastWifiDataTimestampNanos", 10, 37);
  v81 = v80 + (*(*a2 + 152))(a2, *(a1 + 472));
  v82 = v81 + (*(*a2 + 56))(a2);
  v83 = v82 + (*(*a2 + 48))(a2, "healthIndicators", 12, 38);
  v84 = v83 + sub_10012248C(a1 + 304, a2);
  v85 = v84 + (*(*a2 + 56))(a2) + v74;
  v86 = *(a1 + 752);
  if ((v86 & 0x400000000) != 0)
  {
    v119 = (*(*a2 + 48))(a2, "Pxx", 4, 39);
    v120 = v119 + (*(*a2 + 160))(a2, *(a1 + 488));
    v85 += v120 + (*(*a2 + 56))(a2);
    v86 = *(a1 + 752);
    if ((v86 & 0x800000000) == 0)
    {
LABEL_27:
      if ((v86 & 0x1000000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((v86 & 0x800000000) == 0)
  {
    goto LABEL_27;
  }

  v121 = (*(*a2 + 48))(a2, "Pxy", 4, 40);
  v122 = v121 + (*(*a2 + 160))(a2, *(a1 + 496));
  v85 += v122 + (*(*a2 + 56))(a2);
  if ((*(a1 + 752) & 0x1000000000) != 0)
  {
LABEL_28:
    v87 = (*(*a2 + 48))(a2, "Pyy", 4, 41);
    v88 = v87 + (*(*a2 + 160))(a2, *(a1 + 504));
    v85 += v88 + (*(*a2 + 56))(a2);
  }

LABEL_29:
  v89 = (*(*a2 + 48))(a2, "lifespan", 4, 42);
  v90 = v89 + (*(*a2 + 160))(a2, *(a1 + 512));
  v91 = v90 + (*(*a2 + 56))(a2);
  v92 = v91 + (*(*a2 + 48))(a2, "lastBeaconDataTimestampNanos", 10, 43);
  v93 = v92 + (*(*a2 + 152))(a2, *(a1 + 480));
  v94 = v93 + (*(*a2 + 56))(a2) + v85;
  v95 = *(a1 + 752);
  if ((v95 & 0x4000000000) != 0)
  {
    v123 = (*(*a2 + 48))(a2, "numOfLoadedLocations", 8, 44);
    v124 = v123 + (*(*a2 + 144))(a2, *(a1 + 520));
    v94 += v124 + (*(*a2 + 56))(a2);
    v95 = *(a1 + 752);
    if ((v95 & 0x8000000000) == 0)
    {
LABEL_31:
      if ((v95 & 0x10000000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_66;
    }
  }

  else if ((v95 & 0x8000000000) == 0)
  {
    goto LABEL_31;
  }

  v125 = (*(*a2 + 48))(a2, "yieldSource", 8, 45);
  v126 = v125 + (*(*a2 + 144))(a2, *(a1 + 524));
  v94 += v126 + (*(*a2 + 56))(a2);
  v95 = *(a1 + 752);
  if ((v95 & 0x10000000000) == 0)
  {
LABEL_32:
    if ((v95 & 0x20000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_67;
  }

LABEL_66:
  v127 = (*(*a2 + 48))(a2, "nonwalkableLatLonPosition", 12, 46);
  v128 = v127 + sub_10012D83C(a1 + 528, a2);
  v94 += v128 + (*(*a2 + 56))(a2);
  v95 = *(a1 + 752);
  if ((v95 & 0x20000000000) == 0)
  {
LABEL_33:
    if ((v95 & 0x40000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_68;
  }

LABEL_67:
  v129 = (*(*a2 + 48))(a2, "signedDistanceToSurveyWithToleranceMaximized", 4, 47);
  v130 = v129 + (*(*a2 + 160))(a2, *(a1 + 560));
  v94 += v130 + (*(*a2 + 56))(a2);
  v95 = *(a1 + 752);
  if ((v95 & 0x40000000000) == 0)
  {
LABEL_34:
    if ((v95 & 0x80000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_69;
  }

LABEL_68:
  v131 = (*(*a2 + 48))(a2, "floorTransitionState", 12, 48);
  v132 = v131 + sub_1001230E8(a1 + 568, a2);
  v94 += v132 + (*(*a2 + 56))(a2);
  v95 = *(a1 + 752);
  if ((v95 & 0x80000000000) == 0)
  {
LABEL_35:
    if ((v95 & 0x100000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_70;
  }

LABEL_69:
  v133 = (*(*a2 + 48))(a2, "signedDistanceToFloorplanWithToleranceMaximized", 4, 49);
  v134 = v133 + (*(*a2 + 160))(a2, *(a1 + 600));
  v94 += v134 + (*(*a2 + 56))(a2);
  v95 = *(a1 + 752);
  if ((v95 & 0x100000000000) == 0)
  {
LABEL_36:
    if ((v95 & 0x200000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_71;
  }

LABEL_70:
  v135 = (*(*a2 + 48))(a2, "yieldType", 8, 50);
  v136 = v135 + (*(*a2 + 144))(a2, *(a1 + 608));
  v94 += v136 + (*(*a2 + 56))(a2);
  v95 = *(a1 + 752);
  if ((v95 & 0x200000000000) == 0)
  {
LABEL_37:
    if ((v95 & 0x400000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_72;
  }

LABEL_71:
  v137 = (*(*a2 + 48))(a2, "speed", 4, 51);
  v138 = v137 + (*(*a2 + 160))(a2, *(a1 + 616));
  v94 += v138 + (*(*a2 + 56))(a2);
  v95 = *(a1 + 752);
  if ((v95 & 0x400000000000) == 0)
  {
LABEL_38:
    if ((v95 & 0x800000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_73;
  }

LABEL_72:
  v139 = (*(*a2 + 48))(a2, "speedAccuracy", 4, 52);
  v140 = v139 + (*(*a2 + 160))(a2, *(a1 + 624));
  v94 += v140 + (*(*a2 + 56))(a2);
  v95 = *(a1 + 752);
  if ((v95 & 0x800000000000) == 0)
  {
LABEL_39:
    if ((v95 & 0x1000000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_74;
  }

LABEL_73:
  v141 = (*(*a2 + 48))(a2, "bearing", 4, 53);
  v142 = v141 + (*(*a2 + 160))(a2, *(a1 + 632));
  v94 += v142 + (*(*a2 + 56))(a2);
  v95 = *(a1 + 752);
  if ((v95 & 0x1000000000000) == 0)
  {
LABEL_40:
    if ((v95 & 0x2000000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_75;
  }

LABEL_74:
  v143 = (*(*a2 + 48))(a2, "bearingAccuracy", 4, 54);
  v144 = v143 + (*(*a2 + 160))(a2, *(a1 + 640));
  v94 += v144 + (*(*a2 + 56))(a2);
  v95 = *(a1 + 752);
  if ((v95 & 0x2000000000000) == 0)
  {
LABEL_41:
    if ((v95 & 0x4000000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_76;
  }

LABEL_75:
  v145 = (*(*a2 + 48))(a2, "gpsSignedDistanceToFloorplanWithToleranceMaximized", 4, 55);
  v146 = v145 + (*(*a2 + 160))(a2, *(a1 + 648));
  v94 += v146 + (*(*a2 + 56))(a2);
  v95 = *(a1 + 752);
  if ((v95 & 0x4000000000000) == 0)
  {
LABEL_42:
    if ((v95 & 0x8000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_77;
  }

LABEL_76:
  v147 = (*(*a2 + 48))(a2, "gpsSignedDistanceToSurveyWithToleranceMaximized", 4, 56);
  v148 = v147 + (*(*a2 + 160))(a2, *(a1 + 656));
  v94 += v148 + (*(*a2 + 56))(a2);
  v95 = *(a1 + 752);
  if ((v95 & 0x8000) == 0)
  {
LABEL_43:
    if ((v95 & 0x8000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_78;
  }

LABEL_77:
  v149 = (*(*a2 + 48))(a2, "selectedWeightFractionOfModeParticles", 4, 57);
  v150 = v149 + (*(*a2 + 160))(a2, *(a1 + 192));
  v94 += v150 + (*(*a2 + 56))(a2);
  v95 = *(a1 + 752);
  if ((v95 & 0x8000000000000) == 0)
  {
LABEL_44:
    if ((v95 & 0x10000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_79;
  }

LABEL_78:
  v151 = (*(*a2 + 48))(a2, "bodyFixedState", 8, 58);
  v152 = v151 + (*(*a2 + 144))(a2, *(a1 + 664));
  v94 += v152 + (*(*a2 + 56))(a2);
  v95 = *(a1 + 752);
  if ((v95 & 0x10000000000000) == 0)
  {
LABEL_45:
    if ((v95 & 0x20000000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_80;
  }

LABEL_79:
  v153 = (*(*a2 + 48))(a2, "machAbsoluteTimestampSecs", 4, 59);
  v154 = v153 + (*(*a2 + 160))(a2, *(a1 + 672));
  v94 += v154 + (*(*a2 + 56))(a2);
  v95 = *(a1 + 752);
  if ((v95 & 0x20000000000000) == 0)
  {
LABEL_46:
    if ((v95 & 0x40000000000000) == 0)
    {
      goto LABEL_47;
    }

LABEL_81:
    v157 = (*(*a2 + 48))(a2, "cfTimestampSecs", 4, 61);
    v158 = v157 + (*(*a2 + 160))(a2, *(a1 + 688));
    v94 += v158 + (*(*a2 + 56))(a2);
    if ((*(a1 + 752) & 0x80000000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_80:
  v155 = (*(*a2 + 48))(a2, "machContinuousTimestampSecs", 4, 60);
  v156 = v155 + (*(*a2 + 160))(a2, *(a1 + 680));
  v94 += v156 + (*(*a2 + 56))(a2);
  v95 = *(a1 + 752);
  if ((v95 & 0x40000000000000) != 0)
  {
    goto LABEL_81;
  }

LABEL_47:
  if ((v95 & 0x80000000000000) != 0)
  {
LABEL_48:
    v96 = (*(*a2 + 48))(a2, "altitude", 4, 62);
    v97 = v96 + (*(*a2 + 160))(a2, *(a1 + 696));
    v94 += v97 + (*(*a2 + 56))(a2);
  }

LABEL_49:
  v98 = (*(*a2 + 64))(a2);
  v99 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v98 + v99 + v94);
}

uint64_t sub_100125EE8(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043D898;
  *(a1 + 8) = off_10043DB08;
  *(a1 + 16) = 0u;
  *(a1 + 32) &= 0xFCu;
  v4 = a1 + 40;
  *(a1 + 40) = off_10043DB28;
  *(a1 + 48) = 0u;
  *(a1 + 64) &= 0xFCu;
  *(a1 + 104) = 0;
  v5 = (a1 + 104);
  *(a1 + 112) = 0u;
  *(a1 + 304) = off_10043D858;
  *(a1 + 424) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 456) &= 0xC0u;
  v6 = a1 + 528;
  *(a1 + 528) = off_10043DB28;
  *(a1 + 536) = 0u;
  *(a1 + 552) &= 0xFCu;
  *(a1 + 568) = off_10043D878;
  *(a1 + 576) = 0u;
  *(a1 + 592) &= 0xF8u;
  v7 = (a1 + 720);
  *(a1 + 736) = 0;
  *(a1 + 720) = 0u;
  *(a1 + 752) = *(a1 + 752) & 0xF000000000000000 | 0x10000000;
  sub_10012A358(a1 + 8, a2 + 8);
  sub_10012A358(v4, a2 + 40);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  std::string::operator=(v5, (a2 + 104));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  if (a1 != a2)
  {
    sub_10011DD68((a1 + 360), *(a2 + 360), *(a2 + 368), (*(a2 + 368) - *(a2 + 360)) >> 3);
  }

  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  v8 = *(a2 + 480);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = v8;
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 520) = *(a2 + 520);
  sub_10012A358(v6, a2 + 528);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 664) = *(a2 + 664);
  *(a1 + 672) = *(a2 + 672);
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 712) = *(a2 + 712);
  std::string::operator=(v7, (a2 + 720));
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 752) = *(a2 + 752);
  return a1;
}

void sub_100126274(_Unwind_Exception *a1)
{
  if (*(v2 + 743) < 0)
  {
    operator delete(*v7);
    nullsub_76(v6);
    *(v2 + 304) = v5;
    v9 = *(v2 + 360);
    if (!v9)
    {
LABEL_3:
      if ((*(v2 + 127) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    nullsub_76(v6);
    *(v2 + 304) = v5;
    v9 = *(v2 + 360);
    if (!v9)
    {
      goto LABEL_3;
    }
  }

  *(v2 + 368) = v9;
  operator delete(v9);
  if ((*(v2 + 127) & 0x80000000) == 0)
  {
LABEL_4:
    nullsub_76(v3);
    nullsub_75(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*v4);
  nullsub_76(v3);
  nullsub_75(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100126304(uint64_t a1, uint64_t a2)
{
  sub_10012A358(a1 + 8, a2 + 8);
  sub_10012A358(a1 + 40, a2 + 40);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  std::string::operator=((a1 + 104), (a2 + 104));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  if (a1 != a2)
  {
    sub_10011DD68((a1 + 360), *(a2 + 360), *(a2 + 368), (*(a2 + 368) - *(a2 + 360)) >> 3);
  }

  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  v4 = *(a2 + 480);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = v4;
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 520) = *(a2 + 520);
  sub_10012A358(a1 + 528, a2 + 528);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 664) = *(a2 + 664);
  *(a1 + 672) = *(a2 + 672);
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 712) = *(a2 + 712);
  std::string::operator=((a1 + 720), (a2 + 720));
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 752) = *(a2 + 752);
  return a1;
}

uint64_t sub_10012651C(uint64_t a1)
{
  *a1 = off_10043D8B8;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 48);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(a1 + 48);
    }

    *(a1 + 56) = v6;
    operator delete(v8);
  }

  nullsub_76(a1 + 16);
  return a1;
}

void sub_100126610(uint64_t a1)
{
  sub_10012651C(a1);

  operator delete();
}

uint64_t sub_100126658(uint64_t a1, uint64_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v40 = 0;
  v38 = 0;
  v37 = 0;
  for (i = (*(*a2 + 200))(a2, __p); ; i = (*(*a2 + 224))(a2) + v7)
  {
    v5 = (*(*a2 + 216))(a2, __p, &v38, &v37) + i;
    if (!v38)
    {
      break;
    }

    if (v37 > 4u)
    {
      if (v37 <= 6u)
      {
        if (v37 == 5)
        {
          v6 = *a2;
          if (v38 == 2)
          {
            v7 = (*(v6 + 280))(a2, a1 + 96) + v5;
            *(a1 + 152) |= 0x10u;
            continue;
          }
        }

        else
        {
          if (v37 != 6)
          {
            goto LABEL_39;
          }

          v6 = *a2;
          if (v38 == 11)
          {
            v7 = (*(v6 + 336))(a2, a1 + 104) + v5;
            *(a1 + 152) |= 0x20u;
            continue;
          }
        }
      }

      else
      {
        switch(v37)
        {
          case 7u:
            v6 = *a2;
            if (v38 == 4)
            {
              v7 = (*(v6 + 328))(a2, a1 + 128) + v5;
              *(a1 + 152) |= 0x40u;
              continue;
            }

            break;
          case 8u:
            v6 = *a2;
            if (v38 == 4)
            {
              v7 = (*(v6 + 328))(a2, a1 + 136) + v5;
              *(a1 + 152) |= 0x80u;
              continue;
            }

            break;
          case 9u:
            v6 = *a2;
            if (v38 == 4)
            {
              v7 = (*(v6 + 328))(a2, a1 + 144) + v5;
              *(a1 + 152) |= 0x100u;
              continue;
            }

            break;
          default:
            goto LABEL_39;
        }
      }

      goto LABEL_48;
    }

    if (v37 <= 2u)
    {
      if (v37 != 1)
      {
        if (v37 == 2 && v38 == 12)
        {
          v7 = sub_10012D5CC(a1 + 16, a2) + v5;
          *(a1 + 152) |= 2u;
          continue;
        }

LABEL_39:
        v14 = (*(*a2 + 352))(a2);
LABEL_49:
        v7 = v14 + v5;
        continue;
      }

      v6 = *a2;
      if (v38 == 10)
      {
        v7 = (*(v6 + 320))(a2, a1 + 8) + v5;
        *(a1 + 152) |= 1u;
        continue;
      }

LABEL_48:
      v14 = (*(v6 + 352))(a2);
      goto LABEL_49;
    }

    if (v37 == 3)
    {
      if (v38 != 15)
      {
        goto LABEL_39;
      }

      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      while (v12 != v11)
      {
        v13 = *(v12 - 1);
        v12 -= 3;
        if (v13 < 0)
        {
          operator delete(*v12);
        }
      }

      *(a1 + 56) = v11;
      v36 = 0;
      v19 = (*(*a2 + 248))(a2, &v36, &v36 + 4);
      v20 = *(a1 + 48);
      v21 = *(a1 + 56);
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3);
      if (HIDWORD(v36) <= v22)
      {
        if (HIDWORD(v36) < v22)
        {
          v25 = (v20 + 24 * HIDWORD(v36));
          while (v21 != v25)
          {
            v26 = *(v21 - 1);
            v21 -= 3;
            if (v26 < 0)
            {
              operator delete(*v21);
            }
          }

          *(a1 + 56) = v25;
        }
      }

      else
      {
        sub_1000E5D0C(a1 + 48, HIDWORD(v36) - v22);
      }

      v30 = v19 + v5;
      if (HIDWORD(v36))
      {
        v31 = 0;
        v32 = 0;
        do
        {
          v30 += (*(*a2 + 336))(a2, *(a1 + 48) + v31);
          ++v32;
          v31 += 24;
        }

        while (v32 < HIDWORD(v36));
      }

      v7 = (*(*a2 + 256))(a2) + v30;
      *(a1 + 152) |= 4u;
    }

    else
    {
      if (v37 != 4 || v38 != 15)
      {
        goto LABEL_39;
      }

      v8 = *(a1 + 72);
      v9 = *(a1 + 80);
      while (v9 != v8)
      {
        v10 = *(v9 - 1);
        v9 -= 3;
        if (v10 < 0)
        {
          operator delete(*v9);
        }
      }

      *(a1 + 80) = v8;
      v36 = 0;
      v15 = (*(*a2 + 248))(a2, &v36, &v36 + 4);
      v16 = *(a1 + 72);
      v17 = *(a1 + 80);
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3);
      if (HIDWORD(v36) <= v18)
      {
        if (HIDWORD(v36) < v18)
        {
          v23 = (v16 + 24 * HIDWORD(v36));
          while (v17 != v23)
          {
            v24 = *(v17 - 1);
            v17 -= 3;
            if (v24 < 0)
            {
              operator delete(*v17);
            }
          }

          *(a1 + 80) = v23;
        }
      }

      else
      {
        sub_1000E5D0C(a1 + 72, HIDWORD(v36) - v18);
      }

      v27 = v15 + v5;
      if (HIDWORD(v36))
      {
        v28 = 0;
        v29 = 0;
        do
        {
          v27 += (*(*a2 + 336))(a2, *(a1 + 72) + v28);
          ++v29;
          v28 += 24;
        }

        while (v29 < HIDWORD(v36));
      }

      v7 = (*(*a2 + 256))(a2) + v27;
      *(a1 + 152) |= 8u;
    }
  }

  v33 = (*(*a2 + 208))(a2);
  if (SHIBYTE(v40) < 0)
  {
    v34 = v33;
    operator delete(__p[0]);
    v33 = v34;
  }

  return (v33 + v5);
}

void sub_100126E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    v17 = a1;
    operator delete(__p);
    a1 = v17;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100126ED0(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "LocalizerUniverseState");
  v7 = (*(*a2 + 48))(a2, "timestampNanos", 10, 1) + v6;
  v8 = (*(*a2 + 152))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "latLonPosition", 12, 2);
  v11 = v10 + sub_10012D83C(a1 + 16, a2);
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = (*(*a2 + 48))(a2, "locationGroupIds", 15, 3);
  v14 = v12 + v13 + (*(*a2 + 88))(a2, 11, -1431655765 * ((*(a1 + 56) - *(a1 + 48)) >> 3));
  for (i = *(a1 + 48); i != *(a1 + 56); i += 24)
  {
    v14 += (*(*a2 + 168))(a2, i);
  }

  v16 = (*(*a2 + 96))(a2);
  v17 = v16 + (*(*a2 + 56))(a2) + v14;
  v18 = *(a1 + 152);
  if ((v18 & 8) != 0)
  {
    v24 = (*(*a2 + 48))(a2, "groundTruthGroupIds", 15, 4) + v17;
    v25 = v24 + (*(*a2 + 88))(a2, 11, -1431655765 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    for (j = *(a1 + 72); j != *(a1 + 80); j += 24)
    {
      v25 += (*(*a2 + 168))(a2, j);
    }

    v27 = (*(*a2 + 96))(a2);
    v17 = v27 + (*(*a2 + 56))(a2) + v25;
    v18 = *(a1 + 152);
    if ((v18 & 0x10) == 0)
    {
LABEL_6:
      if ((v18 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else if ((v18 & 0x10) == 0)
  {
    goto LABEL_6;
  }

  v28 = (*(*a2 + 48))(a2, "triggerUpdateCallback", 2, 5);
  v29 = v28 + (*(*a2 + 120))(a2, *(a1 + 96));
  v17 += v29 + (*(*a2 + 56))(a2);
  v18 = *(a1 + 152);
  if ((v18 & 0x20) == 0)
  {
LABEL_7:
    if ((v18 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v30 = (*(*a2 + 48))(a2, "provider", 11, 6);
  v31 = v30 + (*(*a2 + 168))(a2, a1 + 104);
  v17 += v31 + (*(*a2 + 56))(a2);
  v18 = *(a1 + 152);
  if ((v18 & 0x40) == 0)
  {
LABEL_8:
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v34 = (*(*a2 + 48))(a2, "localX", 4, 8);
    v35 = v34 + (*(*a2 + 160))(a2, *(a1 + 136));
    v17 += v35 + (*(*a2 + 56))(a2);
    if ((*(a1 + 152) & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_17:
  v32 = (*(*a2 + 48))(a2, "horizontalAccuracy", 4, 7);
  v33 = v32 + (*(*a2 + 160))(a2, *(a1 + 128));
  v17 += v33 + (*(*a2 + 56))(a2);
  v18 = *(a1 + 152);
  if ((v18 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v18 & 0x100) != 0)
  {
LABEL_10:
    v19 = (*(*a2 + 48))(a2, "localY", 4, 9);
    v20 = v19 + (*(*a2 + 160))(a2, *(a1 + 144));
    v17 += v20 + (*(*a2 + 56))(a2);
  }

LABEL_11:
  v21 = (*(*a2 + 64))(a2);
  v22 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v21 + v22 + v17);
}

uint64_t sub_1001276C0(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043D8B8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = *(a1 + 40) & 0xFC;
  *(a1 + 48) = 0u;
  v5 = a1 + 48;
  *(a1 + 104) = 0;
  v6 = (a1 + 104);
  *(a1 + 40) = v4;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 152) &= 0xFE00u;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = off_10043DB28;
  sub_10012A358(a1 + 16, a2 + 16);
  if (a1 != a2)
  {
    sub_1000E5A0C(v5, *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
    sub_1000E5A0C(a1 + 72, *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  }

  *(a1 + 96) = *(a2 + 96);
  std::string::operator=(v6, (a2 + 104));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

void sub_1001277E8(_Unwind_Exception *a1)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*v4);
  }

  sub_1000D1490((v1 + 72));
  sub_1000D1490(v3);
  nullsub_76(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100127820(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  sub_10012A358(a1 + 16, a2 + 16);
  if (a1 != a2)
  {
    sub_1000E5A0C(a1 + 48, *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
    sub_1000E5A0C(a1 + 72, *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  }

  *(a1 + 96) = *(a2 + 96);
  std::string::operator=((a1 + 104), (a2 + 104));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t sub_1001278D0(uint64_t a1)
{
  *a1 = off_10043D8D8;
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

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100127950(uint64_t a1)
{
  *a1 = off_10043D8D8;
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

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

uint64_t sub_1001279F0(uint64_t result, double a2)
{
  *(result + 112) = a2;
  *(result + 144) |= 0x80u;
  return result;
}

uint64_t sub_100127A0C(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043D8D8;
  *(a1 + 56) = 0u;
  v4 = (a1 + 56);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 144) &= 0xF800u;
  std::string::operator=((a1 + 8), (a2 + 8));
  if (a1 != a2)
  {
    sub_100128604((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 1);
    sub_100128604(v4, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 1);
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

void sub_100127AE0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  sub_100383F88((v1 + 32), v1, (v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_100127B10(uint64_t a1)
{
  *a1 = off_10043D8F8;
  if ((*(a1 + 159) & 0x80000000) == 0)
  {
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 112));
    v2 = *(a1 + 88);
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 136));
  if (*(a1 + 135) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 88);
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_7:
  v3 = *(a1 + 96);
  v4 = v2;
  if (v3 != v2)
  {
    do
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }

    while (v3 != v2);
    v4 = *(a1 + 88);
  }

  *(a1 + 96) = v2;
  operator delete(v4);
LABEL_14:
  nullsub_76(a1 + 32);
  sub_100127D64(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_100127BEC(uint64_t a1)
{
  sub_100127B10(a1);

  operator delete();
}

uint64_t sub_100127C2C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_100128754((a1 + 8), *(a2 + 8), (a2 + 16));
  }

  sub_10012A358(a1 + 32, a2 + 32);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  if (a1 != a2)
  {
    sub_1000E5A0C(a1 + 88, *(a2 + 88), *(a2 + 96), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 96) - *(a2 + 88)) >> 3));
  }

  std::string::operator=((a1 + 112), (a2 + 112));
  std::string::operator=((a1 + 136), (a2 + 136));
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

void *sub_100127CD0(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 95;
      v6 = v3 - 95;
      do
      {
        (**v6)(v6);
        v5 -= 95;
        v7 = v6 == v2;
        v6 -= 95;
      }

      while (!v7);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_100127D64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100127D64(a1, *a2);
    sub_100127D64(a1, *(a2 + 8));
    *(a2 + 56) = off_10043D8D8;
    v4 = *(a2 + 112);
    if (v4)
    {
      *(a2 + 120) = v4;
      operator delete(v4);
    }

    v5 = *(a2 + 88);
    if (v5)
    {
      *(a2 + 96) = v5;
      operator delete(v5);
    }

    if (*(a2 + 87) < 0)
    {
      operator delete(*(a2 + 64));
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_8:
        v6 = a2;

LABEL_10:
        operator delete(v6);
        return;
      }
    }

    else if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    operator delete(*(a2 + 32));
    v6 = a2;

    goto LABEL_10;
  }
}

uint64_t sub_100127E40(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = sub_10012D3B4(v28, a1);
  v6 = *(v5 + *(*v5 - 24) + 32);
  v7 = *(&v28[5] + *(v28[0] - 24));
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

uint64_t sub_1001280B0(unsigned int *a1, std::string *a2)
{
  sub_1000D2150(&v26);
  v4 = (v29 + *(v29[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = *a1;
  v6 = std::ostream::operator<<();
  v7 = *(v6 + *(*v6 - 24) + 32);
  v8 = *(&v29[5] + *(v29[0] - 24));
  v10 = *(v8 + 40);
  v9 = *(v8 + 48);
  v29[21] = v10;
  v29[22] = v9;
  if ((v7 & 5) == 0)
  {
    v12 = &v9[-v10];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v16 = a2->__r_.__value_.__r.__words[2];
      v15 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v15 >= v12)
      {
        v17 = HIBYTE(v16);
LABEL_10:
        if ((v17 & 0x80u) == 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v10 == v9)
        {
          v18 = v14;
          goto LABEL_23;
        }

        if (v12 < 0x20 || v14 - v10 < 0x20)
        {
          v18 = v14;
          v19 = v10;
        }

        else
        {
          v18 = (v14 + (v12 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v10 + (v12 & 0xFFFFFFFFFFFFFFE0));
          v20 = (v10 + 16);
          v21 = &v14->__r_.__value_.__r.__words[2];
          v22 = v12 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v23 = *v20;
            *(v21 - 1) = *(v20 - 1);
            *v21 = v23;
            v20 += 2;
            v21 += 4;
            v22 -= 32;
          }

          while (v22);
          if (v12 == (v12 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v18->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v12;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v12 & 0x7F;
            }

            v11 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v24 = *v19++;
          v18->__r_.__value_.__s.__data_[0] = v24;
          v18 = (v18 + 1);
        }

        while (v19 != v9);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v14 = a2;
      if (v12 <= 0x16)
      {
        goto LABEL_13;
      }

      v15 = 22;
    }

    std::string::__grow_by(a2, v15, v12 - v15, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v17) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v11 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  std::locale::~locale(v27);
  return v11;
}

uint64_t sub_100128320(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 760;
    (**(i - 760))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100128394(uint64_t a1, std::string *a2)
{
  sub_1000D2150(&v25);
  v4 = (v28 + *(v28[0] - 24));
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = sub_10012DDEC(v28, a1);
  v6 = *(v5 + *(*v5 - 24) + 32);
  v7 = *(&v28[5] + *(v28[0] - 24));
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);
  v28[21] = v9;
  v28[22] = v8;
  if ((v6 & 5) == 0)
  {
    v11 = &v8[-v9];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = a2->__r_.__value_.__r.__words[2];
      v14 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v14 >= v11)
      {
        v16 = HIBYTE(v15);
LABEL_10:
        if ((v16 & 0x80u) == 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v9 == v8)
        {
          v17 = v13;
          goto LABEL_23;
        }

        if (v11 < 0x20 || v13 - v9 < 0x20)
        {
          v17 = v13;
          v18 = v9;
        }

        else
        {
          v17 = (v13 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v9 + (v11 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &v13->__r_.__value_.__r.__words[2];
          v21 = v11 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 4;
            v21 -= 32;
          }

          while (v21);
          if (v11 == (v11 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v17->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v11;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v11 & 0x7F;
            }

            v10 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v23 = *v18++;
          v17->__r_.__value_.__s.__data_[0] = v23;
          v17 = (v17 + 1);
        }

        while (v18 != v8);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v13 = a2;
      if (v11 <= 0x16)
      {
        goto LABEL_13;
      }

      v14 = 22;
    }

    std::string::__grow_by(a2, v14, v11 - v14, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v16) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v10 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  return v10;
}

char *sub_100128604(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 1)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v6 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v6;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFELL;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 1)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_100128754(uint64_t *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a1[2])
  {
    goto LABEL_66;
  }

  v6 = *a1;
  v8 = (a1 + 1);
  v7 = a1[1];
  *a1 = (a1 + 1);
  *(v7 + 16) = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*(v6 + 8))
  {
    v9 = *(v6 + 8);
  }

  else
  {
    v9 = v6;
  }

  v36 = a1;
  v38 = v9;
  if (!v9)
  {
    goto LABEL_65;
  }

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v35 = v10[1];
        if (!v35)
        {
          break;
        }

        do
        {
          v10 = v35;
          v35 = *v35;
        }

        while (v35);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v37 = v10;
  if (a2 == a3)
  {
    v12 = a1;
    sub_100127D64(a1, v9);
    if (v10)
    {
      goto LABEL_62;
    }

    goto LABEL_66;
  }

  v13 = a2;
  do
  {
    v39[0] = v9 + 32;
    v39[1] = v9 + 56;
    sub_100128AA0(v39, (v13 + 4));
    v14 = *v8;
    v15 = v5 + 1;
    v16 = v5 + 1;
    if (!*v8)
    {
LABEL_37:
      *v38 = 0;
      *(v38 + 8) = 0;
      *(v38 + 16) = v15;
      *v16 = v38;
      v29 = **v5;
      if (!v29)
      {
        goto LABEL_39;
      }

LABEL_38:
      *v5 = v29;
      goto LABEL_39;
    }

    v17 = *(v38 + 55);
    if (v17 >= 0)
    {
      v18 = *(v38 + 55);
    }

    else
    {
      v18 = *(v38 + 40);
    }

    if (v17 >= 0)
    {
      v19 = (v38 + 32);
    }

    else
    {
      v19 = *(v38 + 32);
    }

    do
    {
      while (1)
      {
        v15 = v14;
        v22 = v14[4];
        v20 = v14 + 4;
        v21 = v22;
        v23 = *(v20 + 23);
        if (v23 >= 0)
        {
          v24 = *(v20 + 23);
        }

        else
        {
          v24 = v20[1];
        }

        if (v23 >= 0)
        {
          v25 = v20;
        }

        else
        {
          v25 = v21;
        }

        if (v24 >= v18)
        {
          v26 = v18;
        }

        else
        {
          v26 = v24;
        }

        v27 = memcmp(v19, v25, v26);
        v28 = v18 < v24;
        if (v27)
        {
          v28 = v27 < 0;
        }

        if (!v28)
        {
          break;
        }

        v14 = *v15;
        v16 = v15;
        if (!*v15)
        {
          goto LABEL_37;
        }
      }

      v14 = v15[1];
    }

    while (v14);
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 16) = v15;
    v15[1] = v38;
    v29 = **v5;
    if (v29)
    {
      goto LABEL_38;
    }

LABEL_39:
    sub_10002764C(v5[1], v38);
    ++v5[2];
    v9 = v37;
    v38 = v37;
    if (v37)
    {
      v10 = *(v37 + 16);
      if (v10)
      {
        v30 = *v10;
        if (*v10 == v37)
        {
          *v10 = 0;
          while (1)
          {
            v33 = v10[1];
            if (!v33)
            {
              break;
            }

            do
            {
              v10 = v33;
              v33 = *v33;
            }

            while (v33);
          }
        }

        else
        {
          for (v10[1] = 0; v30; v30 = v10[1])
          {
            do
            {
              v10 = v30;
              v30 = *v30;
            }

            while (v30);
          }
        }
      }

      v37 = v10;
      v31 = v13[1];
      if (!v31)
      {
        do
        {
LABEL_50:
          a2 = v13[2];
          v32 = *a2 == v13;
          v13 = a2;
        }

        while (!v32);
        goto LABEL_52;
      }
    }

    else
    {
      v10 = 0;
      v31 = v13[1];
      if (!v31)
      {
        goto LABEL_50;
      }
    }

    do
    {
      a2 = v31;
      v31 = *v31;
    }

    while (v31);
LABEL_52:
    if (!v9)
    {
      break;
    }

    v13 = a2;
  }

  while (a2 != a3);
  v12 = v36;
  sub_100127D64(v36, v9);
  if (v10)
  {
LABEL_62:
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    a1 = v12;
    v9 = v10;
LABEL_65:
    sub_100127D64(a1, v9);
  }

LABEL_66:
  if (a2 != a3)
  {
    sub_100128B9C();
  }
}

void sub_100128A8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100128B44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100128AA0(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  std::string::operator=((v4 + 8), (a2 + 32));
  if (v4 != a2 + 24)
  {
    sub_100128604((v4 + 32), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 1);
    sub_100128604((v4 + 56), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 1);
  }

  *(v4 + 80) = *(a2 + 104);
  *(v4 + 96) = *(a2 + 120);
  *(v4 + 112) = *(a2 + 136);
  *(v4 + 128) = *(a2 + 152);
  *(v4 + 144) = *(a2 + 168);
  return a1;
}

uint64_t *sub_100128B44(uint64_t *a1)
{
  sub_100127D64(*a1, a1[2]);
  v2 = a1[1];
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      a1[1] = v2;
    }

    sub_100127D64(*a1, v2);
  }

  return a1;
}

void sub_100128D38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100128D70(va);
  _Unwind_Resume(a1);
}

void sub_100128D4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  sub_100128D70(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100128D70(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      *(v2 + 56) = off_10043D8D8;
      v3 = *(v2 + 112);
      if (v3)
      {
        *(v2 + 120) = v3;
        operator delete(v3);
      }

      v4 = *(v2 + 88);
      if (v4)
      {
        *(v2 + 96) = v4;
        operator delete(v4);
      }

      if (*(v2 + 87) < 0)
      {
        operator delete(*(v2 + 64));
        if ((*(v2 + 55) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }
      }

      else if ((*(v2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      operator delete(*(v2 + 32));
    }

LABEL_9:
    operator delete(v2);
  }

  return a1;
}

void *sub_100128E20(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_100129028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100128D70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012903C()
{
  v1 = 0x500000000;
  v2 = &unk_10045B768;
  v3 = off_10045B780;
  sub_1000E10E0(&qword_10045DFA0, &v1);
  __cxa_atexit(sub_1000E1214, &qword_10045DFA0, &_mh_execute_header);
  v1 = &_mh_execute_header;
  v2 = &unk_10045DFB8;
  v3 = &off_10045B7A8;
  sub_1000E10E0(qword_10045DFC0, &v1);
  __cxa_atexit(sub_1000E1214, qword_10045DFC0, &_mh_execute_header);
  v1 = 0x300000000;
  v2 = &unk_10045B7B0;
  v3 = off_10045B7C0;
  sub_1000E10E0(&qword_10045DFD8, &v1);
  __cxa_atexit(sub_1000E1214, &qword_10045DFD8, &_mh_execute_header);
  v1 = 0x200000000;
  v2 = &unk_10045B7D8;
  v3 = off_10045B7E0;
  sub_1000E10E0(qword_10045DFF0, &v1);
  __cxa_atexit(sub_1000E1214, qword_10045DFF0, &_mh_execute_header);
  v1 = 0x500000000;
  v2 = &unk_10045B7F0;
  v3 = off_10045B808;
  sub_1000E10E0(&qword_10045E008, &v1);
  __cxa_atexit(sub_1000E1214, &qword_10045E008, &_mh_execute_header);
  v1 = 0x400000000;
  v2 = &unk_10045B830;
  v3 = off_10045B840;
  sub_1000E10E0(qword_10045E020, &v1);
  return __cxa_atexit(sub_1000E1214, qword_10045E020, &_mh_execute_header);
}

uint64_t sub_10012927C()
{
  v1 = 0x200000000;
  v2 = &unk_10045B860;
  v3 = off_10045B868;
  sub_1000E10E0(qword_10045E038, &v1);
  __cxa_atexit(sub_1000E1214, qword_10045E038, &_mh_execute_header);
  v1 = 0x400000000;
  v2 = &unk_10045B878;
  v3 = off_10045B888;
  sub_1000E10E0(qword_10045E050, &v1);
  __cxa_atexit(sub_1000E1214, qword_10045E050, &_mh_execute_header);
  v1 = 0x300000000;
  v2 = &unk_10045B8A8;
  v3 = off_10045B8B8;
  sub_1000E10E0(qword_10045E068, &v1);
  __cxa_atexit(sub_1000E1214, qword_10045E068, &_mh_execute_header);
  v1 = 0x1000000000;
  v2 = &unk_10045B8D0;
  v3 = off_10045B910;
  sub_1000E10E0(&qword_10045E080, &v1);
  __cxa_atexit(sub_1000E1214, &qword_10045E080, &_mh_execute_header);
  v1 = 0x300000000;
  v2 = &unk_10045B990;
  v3 = off_10045B9A0;
  sub_1000E10E0(qword_10045E098, &v1);
  __cxa_atexit(sub_1000E1214, qword_10045E098, &_mh_execute_header);
  v1 = 0x200000000;
  v2 = &unk_10045B9B8;
  v3 = off_10045B9C0;
  sub_1000E10E0(qword_10045E0B0, &v1);
  return __cxa_atexit(sub_1000E1214, qword_10045E0B0, &_mh_execute_header);
}

uint64_t sub_1001294F4(uint64_t result, int a2)
{
  *(result + 40) = a2;
  *(result + 88) |= 0x10u;
  return result;
}

uint64_t sub_100129508(uint64_t result, int a2)
{
  *(result + 72) = a2;
  *(result + 88) |= 0x100u;
  return result;
}

uint64_t sub_10012951C(uint64_t result, double a2)
{
  *(result + 80) = a2;
  *(result + 88) |= 0x200u;
  return result;
}

uint64_t sub_100129530(uint64_t a1, uint64_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  v14 = 0;
  v13 = 0;
  for (i = (*(*a2 + 200))(a2, __p); ; i = v7 + v5 + (*(*a2 + 224))(a2))
  {
    v5 = (*(*a2 + 216))(a2, __p, &v14, &v13) + i;
    if (!v14)
    {
      break;
    }

    if (v13 > 5u)
    {
      if (v13 <= 7u)
      {
        if (v13 == 6)
        {
          v6 = *a2;
          if (v14 == 10)
          {
            v7 = (*(v6 + 320))(a2, a1 + 48);
            v8 = *(a1 + 88) | 0x20;
            goto LABEL_36;
          }
        }

        else
        {
          if (v13 != 7)
          {
            goto LABEL_37;
          }

          v6 = *a2;
          if (v14 == 10)
          {
            v7 = (*(v6 + 320))(a2, a1 + 56);
            v8 = *(a1 + 88) | 0x40;
            goto LABEL_36;
          }
        }
      }

      else
      {
        switch(v13)
        {
          case 8u:
            v6 = *a2;
            if (v14 == 4)
            {
              v7 = (*(v6 + 328))(a2, a1 + 64);
              v8 = *(a1 + 88) | 0x80;
              goto LABEL_36;
            }

            break;
          case 9u:
            if (v14 == 8)
            {
              v12 = 0;
              v7 = (*(*a2 + 312))(a2, &v12);
              *(a1 + 72) = v12;
              v8 = *(a1 + 88) | 0x100;
              goto LABEL_36;
            }

LABEL_37:
            v6 = *a2;
            break;
          case 0xAu:
            v6 = *a2;
            if (v14 == 4)
            {
              v7 = (*(v6 + 328))(a2, a1 + 80);
              v8 = *(a1 + 88) | 0x200;
              goto LABEL_36;
            }

            break;
          default:
            goto LABEL_37;
        }
      }
    }

    else if (v13 <= 2u)
    {
      if (v13 == 1)
      {
        v6 = *a2;
        if (v14 == 4)
        {
          v7 = (*(v6 + 328))(a2, a1 + 8);
          v8 = *(a1 + 88) | 1;
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_37;
        }

        v6 = *a2;
        if (v14 == 4)
        {
          v7 = (*(v6 + 328))(a2, a1 + 16);
          v8 = *(a1 + 88) | 2;
          goto LABEL_36;
        }
      }
    }

    else
    {
      switch(v13)
      {
        case 3u:
          v6 = *a2;
          if (v14 == 4)
          {
            v7 = (*(v6 + 328))(a2, a1 + 24);
            v8 = *(a1 + 88) | 4;
            goto LABEL_36;
          }

          break;
        case 4u:
          v6 = *a2;
          if (v14 == 10)
          {
            v7 = (*(v6 + 320))(a2, a1 + 32);
            v8 = *(a1 + 88) | 8;
            goto LABEL_36;
          }

          break;
        case 5u:
          v6 = *a2;
          if (v14 == 8)
          {
            v7 = (*(v6 + 312))(a2, a1 + 40);
            v8 = *(a1 + 88) | 0x10;
LABEL_36:
            *(a1 + 88) = v8;
            continue;
          }

          break;
        default:
          goto LABEL_37;
      }
    }

    v7 = (*(v6 + 352))(a2);
  }

  v9 = (*(*a2 + 208))(a2);
  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    return (v9 + v5);
  }

  v11 = v9;
  operator delete(__p[0]);
  return (v11 + v5);
}

void sub_100129A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100129ABC(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "SensorMeasurement");
  v7 = (*(*a2 + 48))(a2, "x", 4, 1) + v6;
  v8 = (*(*a2 + 160))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "y", 4, 2);
  v11 = v10 + (*(*a2 + 160))(a2, *(a1 + 16));
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = (*(*a2 + 48))(a2, "z", 4, 3);
  v14 = v13 + (*(*a2 + 160))(a2, *(a1 + 24));
  v15 = v14 + (*(*a2 + 56))(a2);
  v16 = v12 + v15 + (*(*a2 + 48))(a2, "timestampNanos", 10, 4);
  v17 = (*(*a2 + 152))(a2, *(a1 + 32));
  v18 = v16 + v17 + (*(*a2 + 56))(a2);
  v19 = *(a1 + 88);
  if ((v19 & 0x10) != 0)
  {
    v25 = (*(*a2 + 48))(a2, "accuracy", 8, 5);
    v26 = v25 + (*(*a2 + 144))(a2, *(a1 + 40));
    v18 += v26 + (*(*a2 + 56))(a2);
    v19 = *(a1 + 88);
    if ((v19 & 0x20) == 0)
    {
LABEL_4:
      if ((v19 & 0x40) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  else if ((v19 & 0x20) == 0)
  {
    goto LABEL_4;
  }

  v27 = (*(*a2 + 48))(a2, "DEPRECATED_eventTimestampNanos", 10, 6);
  v28 = v27 + (*(*a2 + 152))(a2, *(a1 + 48));
  v18 += v28 + (*(*a2 + 56))(a2);
  v19 = *(a1 + 88);
  if ((v19 & 0x40) == 0)
  {
LABEL_5:
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v29 = (*(*a2 + 48))(a2, "DEPRECATED_pdrTimestampNanos", 10, 7);
  v30 = v29 + (*(*a2 + 152))(a2, *(a1 + 56));
  v18 += v30 + (*(*a2 + 56))(a2);
  v19 = *(a1 + 88);
  if ((v19 & 0x80) == 0)
  {
LABEL_6:
    if ((v19 & 0x100) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v33 = (*(*a2 + 48))(a2, "magAccuracy", 8, 9);
    v34 = v33 + (*(*a2 + 144))(a2, *(a1 + 72));
    v18 += v34 + (*(*a2 + 56))(a2);
    if ((*(a1 + 88) & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_13:
  v31 = (*(*a2 + 48))(a2, "w", 4, 8);
  v32 = v31 + (*(*a2 + 160))(a2, *(a1 + 64));
  v18 += v32 + (*(*a2 + 56))(a2);
  v19 = *(a1 + 88);
  if ((v19 & 0x100) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v19 & 0x200) != 0)
  {
LABEL_8:
    v20 = (*(*a2 + 48))(a2, "cmTimestampSeconds", 4, 10);
    v21 = v20 + (*(*a2 + 160))(a2, *(a1 + 80));
    v18 += v21 + (*(*a2 + 56))(a2);
  }

LABEL_9:
  v22 = (*(*a2 + 64))(a2);
  v23 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v22 + v23 + v18);
}

double sub_10012A244(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043D988;
  *(a1 + 88) &= 0xFC00u;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 80);
  *(a1 + 80) = result;
  *(a1 + 88) = *(a2 + 88);
  return result;
}

double sub_10012A2B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 80);
  *(a1 + 80) = result;
  *(a1 + 88) = *(a2 + 88);
  return result;
}

__n128 sub_10012A31C(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043D9A8;
  *(a1 + 24) &= 0xFCu;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

__n128 sub_10012A358(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

uint64_t sub_10012A3AC(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "ActivityStateClassification");
  v7 = (*(*a2 + 48))(a2, "confidence", 10, 1) + v6;
  v8 = (*(*a2 + 152))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "stationary", 2, 2);
  v11 = v10 + (*(*a2 + 120))(a2, *(a1 + 16));
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = (*(*a2 + 48))(a2, "walking", 2, 3);
  v14 = v13 + (*(*a2 + 120))(a2, *(a1 + 17));
  v15 = v14 + (*(*a2 + 56))(a2);
  v16 = v12 + v15 + (*(*a2 + 48))(a2, "running", 2, 4);
  v17 = (*(*a2 + 120))(a2, *(a1 + 18));
  v18 = v17 + (*(*a2 + 56))(a2);
  v19 = v18 + (*(*a2 + 48))(a2, "automotive", 2, 5);
  v20 = v19 + (*(*a2 + 120))(a2, *(a1 + 19));
  v21 = v16 + v20 + (*(*a2 + 56))(a2);
  v22 = (*(*a2 + 48))(a2, "unknown", 2, 6);
  LODWORD(a1) = v22 + (*(*a2 + 120))(a2, *(a1 + 20));
  LODWORD(a1) = a1 + (*(*a2 + 56))(a2);
  LODWORD(a1) = a1 + (*(*a2 + 64))(a2);
  v23 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v21 + a1 + v23);
}

uint64_t sub_10012A89C(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 8);
  *(result + 56) = *(a2 + 16);
  *(result + 60) = *(a2 + 20);
  *(result + 61) = *(a2 + 21);
  return result;
}

uint64_t sub_10012A8C0(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "ActivityState");
  v7 = (*(*a2 + 48))(a2, "cmLogTime", 4, 1) + v6;
  v8 = (*(*a2 + 160))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "timestampNanos", 10, 2);
  v11 = v10 + (*(*a2 + 152))(a2, *(a1 + 16));
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = (*(*a2 + 48))(a2, "startDate", 4, 3);
  v14 = v13 + (*(*a2 + 160))(a2, *(a1 + 24));
  v15 = v14 + (*(*a2 + 56))(a2);
  v16 = v12 + v15 + (*(*a2 + 48))(a2, "endDate", 4, 4);
  v17 = (*(*a2 + 160))(a2, *(a1 + 32));
  v18 = v17 + (*(*a2 + 56))(a2);
  v19 = v18 + (*(*a2 + 48))(a2, "classification", 12, 5);
  LODWORD(a1) = v19 + sub_10012A3AC(a1 + 40, a2);
  v20 = v16 + a1 + (*(*a2 + 56))(a2);
  LODWORD(a1) = (*(*a2 + 64))(a2);
  v21 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v20 + a1 + v21);
}

__n128 sub_10012ACD0(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043D9E8;
  *(a1 + 40) = off_10043D9C8;
  *(a1 + 48) = 0;
  *(a1 + 53) = 0;
  *(a1 + 61) &= 0xC0u;
  *(a1 + 64) &= 0xE0u;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 64) = *(a2 + 64);
  return result;
}

uint64_t sub_10012AD84(uint64_t result, double a2)
{
  *(result + 32) = a2;
  *(result + 80) |= 1u;
  return result;
}

uint64_t sub_10012AD98(uint64_t result, char a2)
{
  *(result + 40) = a2;
  *(result + 80) |= 2u;
  return result;
}

uint64_t sub_10012ADAC(uint64_t result, char a2)
{
  *(result + 41) = a2;
  *(result + 80) |= 4u;
  return result;
}

uint64_t sub_10012ADC0(uint64_t result, double a2)
{
  *(result + 48) = a2;
  *(result + 80) |= 8u;
  return result;
}

uint64_t sub_10012ADD4(uint64_t result, double a2)
{
  *(result + 56) = a2;
  *(result + 80) |= 0x10u;
  return result;
}

uint64_t sub_10012ADE8(uint64_t result, double a2)
{
  *(result + 64) = a2;
  *(result + 80) |= 0x20u;
  return result;
}

uint64_t sub_10012ADFC(uint64_t result, double a2)
{
  *(result + 72) = a2;
  *(result + 80) |= 0x40u;
  return result;
}

uint64_t sub_10012AE10(uint64_t a1, uint64_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  v17 = 0;
  v16 = 0;
  v4 = (*(*a2 + 200))(a2, __p);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = (*(*a2 + 216))(a2, __p, &v17, &v16) + v4;
    if (!v17)
    {
      break;
    }

    if (v16 > 5u)
    {
      if (v16 <= 7u)
      {
        if (v16 == 6)
        {
          v9 = *a2;
          if (v17 == 3)
          {
            v10 = (*(v9 + 296))(a2, a1 + 41);
            v11 = 4;
            goto LABEL_36;
          }
        }

        else
        {
          if (v16 != 7)
          {
            goto LABEL_37;
          }

          v9 = *a2;
          if (v17 == 4)
          {
            v10 = (*(v9 + 328))(a2, a1 + 48);
            v11 = 8;
            goto LABEL_36;
          }
        }
      }

      else
      {
        switch(v16)
        {
          case 8u:
            v9 = *a2;
            if (v17 == 4)
            {
              v10 = (*(v9 + 328))(a2, a1 + 56);
              v11 = 16;
              goto LABEL_36;
            }

            break;
          case 9u:
            v9 = *a2;
            if (v17 == 4)
            {
              v10 = (*(v9 + 328))(a2, a1 + 64);
              v11 = 32;
              goto LABEL_36;
            }

            break;
          case 0xAu:
            v9 = *a2;
            if (v17 == 4)
            {
              v10 = (*(v9 + 328))(a2, a1 + 72);
              v11 = 64;
              goto LABEL_36;
            }

            break;
          default:
            goto LABEL_37;
        }
      }
    }

    else
    {
      if (v16 <= 2u)
      {
        if (v16 == 1)
        {
          v9 = *a2;
          if (v17 == 10)
          {
            v10 = (*(v9 + 320))(a2, a1 + 8);
            v5 = 1;
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        if (v16 == 2)
        {
          v9 = *a2;
          if (v17 == 10)
          {
            v10 = (*(v9 + 320))(a2, a1 + 16);
            v6 = 1;
            goto LABEL_39;
          }

          goto LABEL_38;
        }

LABEL_37:
        v9 = *a2;
        goto LABEL_38;
      }

      switch(v16)
      {
        case 3u:
          v9 = *a2;
          if (v17 == 8)
          {
            v10 = (*(v9 + 312))(a2, a1 + 24);
            v7 = 1;
            goto LABEL_39;
          }

          break;
        case 4u:
          v9 = *a2;
          if (v17 == 4)
          {
            v10 = (*(v9 + 328))(a2, a1 + 32);
            v11 = 1;
            goto LABEL_36;
          }

          break;
        case 5u:
          v9 = *a2;
          if (v17 == 3)
          {
            v10 = (*(v9 + 296))(a2, a1 + 40);
            v11 = 2;
LABEL_36:
            *(a1 + 80) |= v11;
            goto LABEL_39;
          }

          break;
        default:
          goto LABEL_37;
      }
    }

LABEL_38:
    v10 = (*(v9 + 352))(a2);
LABEL_39:
    v4 = v10 + v8 + (*(*a2 + 224))(a2);
  }

  v12 = (*(*a2 + 208))(a2);
  if ((v5 & v6 & v7 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 1;
  }

  if (SHIBYTE(v19) < 0)
  {
    v13 = v12;
    operator delete(__p[0]);
    v12 = v13;
  }

  return (v12 + v8);
}

void sub_10012B3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012B3DC(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "PedometerData");
  v7 = (*(*a2 + 48))(a2, "timestampNanos", 10, 1) + v6;
  v8 = (*(*a2 + 152))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "durationNanos", 10, 2);
  v11 = v10 + (*(*a2 + 152))(a2, *(a1 + 16));
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = (*(*a2 + 48))(a2, "numberOfSteps", 8, 3);
  v14 = v13 + (*(*a2 + 144))(a2, *(a1 + 24));
  v15 = v12 + v14 + (*(*a2 + 56))(a2);
  v16 = *(a1 + 80);
  if (v16)
  {
    v22 = (*(*a2 + 48))(a2, "distance", 4, 4);
    v23 = v22 + (*(*a2 + 160))(a2, *(a1 + 32));
    v15 += v23 + (*(*a2 + 56))(a2);
    v16 = *(a1 + 80);
    if ((v16 & 2) == 0)
    {
LABEL_4:
      if ((v16 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 80) & 2) == 0)
  {
    goto LABEL_4;
  }

  v24 = (*(*a2 + 48))(a2, "floorsAscended", 3, 5);
  v25 = v24 + (*(*a2 + 128))(a2, *(a1 + 40));
  v15 += v25 + (*(*a2 + 56))(a2);
  v16 = *(a1 + 80);
  if ((v16 & 4) == 0)
  {
LABEL_5:
    if ((v16 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v26 = (*(*a2 + 48))(a2, "floorsDescended", 3, 6);
  v27 = v26 + (*(*a2 + 128))(a2, *(a1 + 41));
  v15 += v27 + (*(*a2 + 56))(a2);
  v16 = *(a1 + 80);
  if ((v16 & 8) == 0)
  {
LABEL_6:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v28 = (*(*a2 + 48))(a2, "eventWallclockTimestampSeconds", 4, 7);
  v29 = v28 + (*(*a2 + 160))(a2, *(a1 + 48));
  v15 += v29 + (*(*a2 + 56))(a2);
  v16 = *(a1 + 80);
  if ((v16 & 0x10) == 0)
  {
LABEL_7:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v32 = (*(*a2 + 48))(a2, "activeTime", 4, 9);
    v33 = v32 + (*(*a2 + 160))(a2, *(a1 + 64));
    v15 += v33 + (*(*a2 + 56))(a2);
    if ((*(a1 + 80) & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  v30 = (*(*a2 + 48))(a2, "firstStepTime", 4, 8);
  v31 = v30 + (*(*a2 + 160))(a2, *(a1 + 56));
  v15 += v31 + (*(*a2 + 56))(a2);
  v16 = *(a1 + 80);
  if ((v16 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v16 & 0x40) != 0)
  {
LABEL_9:
    v17 = (*(*a2 + 48))(a2, "currentPace", 4, 10);
    v18 = v17 + (*(*a2 + 160))(a2, *(a1 + 72));
    v15 += v18 + (*(*a2 + 56))(a2);
  }

LABEL_10:
  v19 = (*(*a2 + 64))(a2);
  v20 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v19 + v20 + v15);
}

__n128 sub_10012BB70(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043DA08;
  *(a1 + 80) &= 0x80u;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 80) = *(a2 + 80);
  return result;
}

__n128 sub_10012BBD4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 80) = *(a2 + 80);
  return result;
}

uint64_t sub_10012BC28(uint64_t result, uint64_t a2)
{
  *(result + 40) = a2;
  *(result + 48) |= 1u;
  return result;
}

uint64_t sub_10012BC3C(uint64_t a1, uint64_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  v17 = 0;
  v16 = 0;
  v4 = (*(*a2 + 200))(a2, __p);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = (*(*a2 + 216))(a2, __p, &v17, &v16) + v4;
    if (!v17)
    {
      break;
    }

    if (v16 > 2u)
    {
      switch(v16)
      {
        case 3u:
          v10 = *a2;
          if (v17 == 4)
          {
            v11 = (*(v10 + 328))(a2, a1 + 24);
            v7 = 1;
            goto LABEL_21;
          }

          goto LABEL_20;
        case 4u:
          v10 = *a2;
          if (v17 == 4)
          {
            v11 = (*(v10 + 328))(a2, a1 + 32);
            v8 = 1;
            goto LABEL_21;
          }

          goto LABEL_20;
        case 5u:
          v10 = *a2;
          if (v17 == 10)
          {
            v11 = (*(v10 + 320))(a2, a1 + 40);
            *(a1 + 48) |= 1u;
            goto LABEL_21;
          }

          goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (v16 != 1)
    {
      if (v16 == 2)
      {
        v10 = *a2;
        if (v17 == 10)
        {
          v11 = (*(v10 + 320))(a2, a1 + 16);
          v6 = 1;
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      v10 = *a2;
      goto LABEL_20;
    }

    v10 = *a2;
    if (v17 == 4)
    {
      v11 = (*(v10 + 328))(a2, a1 + 8);
      v5 = 1;
      goto LABEL_21;
    }

LABEL_20:
    v11 = (*(v10 + 352))(a2);
LABEL_21:
    v4 = v11 + v9 + (*(*a2 + 224))(a2);
  }

  v12 = (*(*a2 + 208))(a2);
  if ((v5 & v6 & v7 & v8 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 1;
  }

  if (SHIBYTE(v19) < 0)
  {
    v13 = v12;
    operator delete(__p[0]);
    v12 = v13;
  }

  return (v12 + v9);
}

void sub_10012C00C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012C030(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "AltitudeData");
  v7 = (*(*a2 + 48))(a2, "cmLogTime", 4, 1) + v6;
  v8 = (*(*a2 + 160))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "timestampNanos", 10, 2);
  v11 = v10 + (*(*a2 + 152))(a2, *(a1 + 16));
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = (*(*a2 + 48))(a2, "relativeAltitudeMeters", 4, 3);
  v14 = v13 + (*(*a2 + 160))(a2, *(a1 + 24));
  v15 = v14 + (*(*a2 + 56))(a2);
  v16 = v12 + v15 + (*(*a2 + 48))(a2, "pressureKiloPascals", 4, 4);
  v17 = (*(*a2 + 160))(a2, *(a1 + 32));
  v18 = v16 + v17 + (*(*a2 + 56))(a2);
  if (*(a1 + 48))
  {
    v19 = (*(*a2 + 48))(a2, "backdatedTimestampNanos", 10, 5);
    v20 = v19 + (*(*a2 + 152))(a2, *(a1 + 40));
    v18 += v20 + (*(*a2 + 56))(a2);
  }

  v21 = (*(*a2 + 64))(a2);
  v22 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v21 + v22 + v18);
}

__n128 sub_10012C46C(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043DA28;
  *(a1 + 48) &= ~1u;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return result;
}

__n128 sub_10012C4C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return result;
}

void **sub_10012C4EC(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 96;
      v6 = v3 - 96;
      v7 = v3 - 96;
      do
      {
        v8 = *v7;
        v7 -= 96;
        (*v8)(v6);
        v5 -= 96;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10012C588()
{
  v1 = 0x400000000;
  v2 = &unk_10045B9D0;
  v3 = off_10045B9E0;
  sub_1000E10E0(qword_10045E0C8, &v1);
  __cxa_atexit(sub_1000E1214, qword_10045E0C8, &_mh_execute_header);
  v1 = 0x300000000;
  v2 = &unk_10045BA00;
  v3 = off_10045BA10;
  sub_1000E10E0(qword_10045E0E0, &v1);
  __cxa_atexit(sub_1000E1214, qword_10045E0E0, &_mh_execute_header);
  v1 = 0x300000000;
  v2 = &unk_10045BA28;
  v3 = off_10045BA38;
  sub_1000E10E0(qword_10045E0F8, &v1);
  return __cxa_atexit(sub_1000E1214, qword_10045E0F8, &_mh_execute_header);
}

uint64_t sub_10012C6E4(uint64_t result, double a2)
{
  *(result + 40) = a2;
  *(result + 56) |= 1u;
  return result;
}

uint64_t sub_10012C6F8(uint64_t result, double a2)
{
  *(result + 48) = a2;
  *(result + 56) |= 2u;
  return result;
}

__n128 sub_10012C70C(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043DAA8;
  *(a1 + 56) &= 0xFCu;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 56) = *(a2 + 56);
  return result;
}

__n128 sub_10012C758(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 56) = *(a2 + 56);
  return result;
}

void *sub_10012C77C(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "ObservationStats(", 17);
  v4 = sub_10003C2E4(a1, "sumWeights=", 11);
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000DE4DC((a2 + 8), &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v27);
    v27.__vftable = &off_100434090;
    sub_100049F88(&v27);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v4, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  v8 = sub_10003C2E4(v7, "sum=", 4);
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000DE4DC((a2 + 16), &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v27);
    v27.__vftable = &off_100434090;
    sub_100049F88(&v27);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v8, v9, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = sub_10003C2E4(a1, ", ", 2);
  v12 = sub_10003C2E4(v11, "sumSquared=", 11);
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000DE4DC((a2 + 24), &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v27);
    v27.__vftable = &off_100434090;
    sub_100049F88(&v27);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &__p;
  }

  else
  {
    v13 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v12, v13, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = sub_10003C2E4(a1, ", ", 2);
  v16 = sub_10003C2E4(v15, "sumSquaredWeights=", 18);
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000DE4DC((a2 + 32), &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v27);
    v27.__vftable = &off_100434090;
    sub_100049F88(&v27);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p;
  }

  else
  {
    v17 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v16, v17, v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v19 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v19, "min=", 4);
  if (*(a2 + 56))
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_1000DE4DC((a2 + 40), &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v27);
      v27.__vftable = &off_100434090;
      sub_100049F88(&v27);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &__p;
    }

    else
    {
      v20 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v20, v21);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v22 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v22, "max=", 4);
  if ((*(a2 + 56) & 2) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_1000DE4DC((a2 + 48), &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v27);
      v27.__vftable = &off_100434090;
      sub_100049F88(&v27);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &__p;
    }

    else
    {
      v23 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v23, v24);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_10012CC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::bad_cast a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10012CCEC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

void *sub_10012CD08(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "LinearSaturationFunctionParameters(", 35);
  sub_10003C2E4(a1, "slope=", 6);
  if (*(a2 + 40))
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_1000DE4DC((a2 + 8), &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v17);
      v17.__vftable = &off_100434090;
      sub_100049F88(&v17);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v6 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v6, "intercept=", 10);
  if ((*(a2 + 40) & 2) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_1000DE4DC((a2 + 16), &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v17);
      v17.__vftable = &off_100434090;
      sub_100049F88(&v17);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v8 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v7, v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v9 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v9, "max=", 4);
  if ((*(a2 + 40) & 4) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_1000DE4DC((a2 + 24), &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v17);
      v17.__vftable = &off_100434090;
      sub_100049F88(&v17);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &__p;
    }

    else
    {
      v10 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v11 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v10, v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  v12 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v12, "min=", 4);
  if ((*(a2 + 40) & 8) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_1000DE4DC((a2 + 32), &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v17);
      v17.__vftable = &off_100434090;
      sub_100049F88(&v17);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v13, v14);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_10012D0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::bad_cast a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012D118(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "Universal2d");
  v7 = (*(*a2 + 48))(a2, "x", 4, 1) + v6;
  v8 = (*(*a2 + 160))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "y", 4, 2);
  LODWORD(a1) = v10 + (*(*a2 + 160))(a2, *(a1 + 16));
  v11 = v9 + a1 + (*(*a2 + 56))(a2);
  LODWORD(a1) = (*(*a2 + 64))(a2);
  v12 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v11 + a1 + v12);
}

__n128 sub_10012D378(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043DB08;
  *(a1 + 24) &= 0xFCu;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

void *sub_10012D3B4(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "Universal2d(", 12);
  v4 = sub_10003C2E4(a1, "x=", 2);
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000DE4DC((a2 + 8), &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v13);
    v13.__vftable = &off_100434090;
    sub_100049F88(&v13);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v4, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  v8 = sub_10003C2E4(v7, "y=", 2);
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000DE4DC((a2 + 16), &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v13);
    v13.__vftable = &off_100434090;
    sub_100049F88(&v13);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v8, v9, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_10012D578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::bad_cast a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012D5CC(uint64_t a1, uint64_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  v13 = 0;
  v12 = 0;
  for (i = (*(*a2 + 200))(a2, __p); ; i = v7 + v5 + (*(*a2 + 224))(a2))
  {
    v5 = (*(*a2 + 216))(a2, __p, &v13, &v12) + i;
    if (!v13)
    {
      break;
    }

    if (v12 == 2)
    {
      v6 = *a2;
      if (v13 == 4)
      {
        v7 = (*(v6 + 328))(a2, a1 + 16);
        v8 = 2;
        goto LABEL_9;
      }
    }

    else if (v12 == 1)
    {
      v6 = *a2;
      if (v13 == 4)
      {
        v7 = (*(v6 + 328))(a2, a1 + 8);
        v8 = 1;
LABEL_9:
        *(a1 + 24) |= v8;
        continue;
      }
    }

    else
    {
      v6 = *a2;
    }

    v7 = (*(v6 + 352))(a2);
  }

  v9 = (*(*a2 + 208))(a2);
  if ((SHIBYTE(v15) & 0x80000000) == 0)
  {
    return (v9 + v5);
  }

  v11 = v9;
  operator delete(__p[0]);
  return (v11 + v5);
}

void sub_10012D81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012D83C(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "LatLon");
  v7 = (*(*a2 + 48))(a2, "lat", 4, 1) + v6;
  v8 = (*(*a2 + 160))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "lon", 4, 2);
  LODWORD(a1) = v10 + (*(*a2 + 160))(a2, *(a1 + 16));
  v11 = v9 + a1 + (*(*a2 + 56))(a2);
  LODWORD(a1) = (*(*a2 + 64))(a2);
  v12 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v11 + a1 + v12);
}

__n128 sub_10012DA9C(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043DB28;
  *(a1 + 24) &= 0xFCu;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

void *sub_10012DAD8(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "LatLon(", 7);
  v4 = sub_10003C2E4(a1, "lat=", 4);
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000DE4DC((a2 + 8), &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v13);
    v13.__vftable = &off_100434090;
    sub_100049F88(&v13);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v4, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  v8 = sub_10003C2E4(v7, "lon=", 4);
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000DE4DC((a2 + 16), &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v13);
    v13.__vftable = &off_100434090;
    sub_100049F88(&v13);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v8, v9, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_10012DC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::bad_cast a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10012DCF0(__n128 *a1, uint64_t a2)
{
  result = *(a2 + 8);
  a1[1] = result;
  a1[2].n128_u8[0] = *(a2 + 24);
  return result;
}

uint64_t sub_10012DD14(uint64_t result, double a2)
{
  *(result + 56) = a2;
  *(result + 64) |= 4u;
  return result;
}

double sub_10012DD28(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043DB48;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = off_10043DB08;
  *(a1 + 32) &= 0xFCu;
  *(a1 + 64) = *(a1 + 64) & 0xF8 | 4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

double sub_10012DDB8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

void *sub_10012DDEC(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "HomogeneousOrthonormalMatrix2d(", 31);
  v4 = sub_10003C2E4(a1, "universalLocationOfCoordinateFrameOrigin=", 41);
  memset(&__p, 0, sizeof(__p));
  if ((sub_100127E40(a2 + 8, &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v19);
    v19.__vftable = &off_100434090;
    sub_100049F88(&v19);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v4, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  v8 = sub_10003C2E4(v7, "universalLengthOfCoordinateFrameUnitVector=", 43);
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000DE4DC((a2 + 40), &__p) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v19);
    v19.__vftable = &off_100434090;
    sub_100049F88(&v19);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v8, v9, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = sub_10003C2E4(a1, ", ", 2);
  v12 = sub_10003C2E4(v11, "localCoordinateFrameIsRightHanded=", 34);
  v20 = 0;
  v21 = 0;
  v19.__vftable = 0;
  if (*(a2 + 48))
  {
    v13 = 49;
  }

  else
  {
    v13 = 48;
  }

  LOBYTE(v19.__vftable) = v13;
  HIBYTE(v21) = 1;
  sub_10003C2E4(v12, &v19, 1);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19.__vftable);
  }

  v14 = sub_10003C2E4(a1, ", ", 2);
  sub_10003C2E4(v14, "universalOrientationOfCoordinateFrameX=", 39);
  if ((*(a2 + 64) & 4) != 0)
  {
    memset(&__p, 0, sizeof(__p));
    if ((sub_1000DE4DC((a2 + 56), &__p) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v19);
      v19.__vftable = &off_100434090;
      sub_100049F88(&v19);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = __p.__r_.__value_.__l.__size_;
    }

    sub_10003C2E4(a1, v15, v16);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_10003C2E4(a1, "<null>", 6);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_10012E0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::bad_cast a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10012E170(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 16);
  *(a1 + 48) = *(a2 + 32);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = *(a2 + 48);
  result = *(a2 + 56);
  *(a1 + 72) = result;
  *(a1 + 80) = *(a2 + 64);
  return result;
}

double sub_10012E1A4(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043DB68;
  *(a1 + 16) = off_10043DB48;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = off_10043DB08;
  *(a1 + 48) &= 0xFCu;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = *(a1 + 80) & 0xF8 | 4;
  *(a1 + 88) &= 0xF8u;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return result;
}

double sub_10012E27C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return result;
}

void *sub_10012E2C0(void *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "BoundedCellCoordinateFrame(", 27);
  v4 = sub_10003C2E4(a1, "rows=", 5);
  sub_1000E18F8((a2 + 8), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v4, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_10003C2E4(a1, ", ", 2);
  v8 = sub_10003C2E4(v7, "cols=", 5);
  sub_1000E18F8((a2 + 12), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __p.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v8, v9, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = sub_10003C2E4(a1, ", ", 2);
  v12 = sub_10003C2E4(v11, "transform=", 10);
  memset(&v16, 0, sizeof(v16));
  if ((sub_100128394(a2 + 16, &v16) & 1) == 0)
  {
    std::bad_cast::bad_cast(&__p);
    __p.__r_.__value_.__r.__words[0] = &off_100434090;
    sub_100049F88(&__p);
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v16;
  }

  else
  {
    v13 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v16.__r_.__value_.__l.__size_;
  }

  sub_10003C2E4(v12, v13, v14);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  sub_10003C2E4(a1, ")", 1);
  return a1;
}

void sub_10012E498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::bad_cast a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012E4F8(uint64_t result, int a2)
{
  *(result + 8) = a2;
  *(result + 12) |= 1u;
  return result;
}

uint64_t sub_10012E50C(uint64_t a1, uint64_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  for (i = (*(*a2 + 200))(a2, __p); ; i = v7 + v5 + (*(*a2 + 224))(a2))
  {
    v5 = (*(*a2 + 216))(a2, __p, &v12, &v11) + i;
    if (!v12)
    {
      break;
    }

    if (v11 == 1)
    {
      v6 = *a2;
      if (v12 == 8)
      {
        v7 = (*(v6 + 312))(a2, a1 + 8);
        *(a1 + 12) |= 1u;
        continue;
      }
    }

    else
    {
      v6 = *a2;
    }

    v7 = (*(v6 + 352))(a2);
  }

  v8 = (*(*a2 + 208))(a2);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    return (v8 + v5);
  }

  v10 = v8;
  operator delete(__p[0]);
  return (v10 + v5);
}

void sub_10012E6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012E71C(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "WifiZaxisData");
  if (*(a1 + 12))
  {
    v7 = (*(*a2 + 48))(a2, "numberOfZaxisSlamApsUsed", 8, 1) + v6;
    v8 = (*(*a2 + 144))(a2, *(a1 + 8));
    v6 = v7 + v8 + (*(*a2 + 56))(a2);
  }

  v9 = (*(*a2 + 64))(a2) + v6;
  v10 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v9 + v10);
}

uint64_t sub_10012E8E4(uint64_t a1)
{
  *a1 = off_10043DBE8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
    nullsub_76(a1 + 32);
  }

  else
  {
    nullsub_76(a1 + 32);
  }

  return a1;
}

void sub_10012E954(uint64_t a1)
{
  *a1 = off_10043DBE8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  nullsub_76(a1 + 32);

  operator delete();
}

std::string *sub_10012E9DC(uint64_t a1, const std::string *a2)
{
  result = std::string::operator=((a1 + 64), a2);
  *(a1 + 192) |= 0x10u;
  return result;
}

uint64_t sub_10012EA10(uint64_t result, double a2)
{
  *(result + 88) = a2;
  *(result + 192) |= 0x20u;
  return result;
}

uint64_t sub_10012EA24(uint64_t result, double a2)
{
  *(result + 96) = a2;
  *(result + 192) |= 0x40u;
  return result;
}

uint64_t sub_10012EA38(uint64_t result, double a2)
{
  *(result + 104) = a2;
  *(result + 192) |= 0x80u;
  return result;
}

uint64_t sub_10012EA4C(uint64_t result, double a2)
{
  *(result + 112) = a2;
  *(result + 192) |= 0x100u;
  return result;
}

uint64_t sub_10012EA68(uint64_t result, double a2)
{
  *(result + 128) = a2;
  *(result + 192) |= 0x800u;
  return result;
}

uint64_t sub_10012EA7C(uint64_t result, double a2)
{
  *(result + 136) = a2;
  *(result + 192) |= 0x1000u;
  return result;
}

uint64_t sub_10012EA90(uint64_t result, double a2)
{
  *(result + 144) = a2;
  *(result + 192) |= 0x2000u;
  return result;
}

uint64_t sub_10012EAA4(uint64_t result, double a2)
{
  *(result + 152) = a2;
  *(result + 192) |= 0x4000u;
  return result;
}

uint64_t sub_10012EAB8(uint64_t result, double a2)
{
  *(result + 160) = a2;
  *(result + 192) |= 0x8000u;
  return result;
}

uint64_t sub_10012EACC(uint64_t result, double a2)
{
  *(result + 168) = a2;
  *(result + 194) |= 1u;
  return result;
}

uint64_t sub_10012EAE0(uint64_t result, uint64_t a2)
{
  *(result + 184) = *(a2 + 8);
  *(result + 188) = *(a2 + 12);
  *(result + 194) |= 2u;
  return result;
}

uint64_t sub_10012EB00(uint64_t a1, uint64_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  v13 = 0;
  v12 = 0;
  for (i = (*(*a2 + 200))(a2, __p); ; i = v7 + v5 + (*(*a2 + 224))(a2))
  {
    v5 = (*(*a2 + 216))(a2, __p, &v13, &v12) + i;
    if (!v13)
    {
      break;
    }

    switch(v12)
    {
      case 1:
        v6 = *a2;
        if (v13 != 10)
        {
          goto LABEL_32;
        }

        v7 = (*(v6 + 320))(a2, a1 + 8);
        *(a1 + 192) |= 1u;
        continue;
      case 2:
        if (v13 != 12)
        {
          goto LABEL_31;
        }

        v7 = sub_10012D5CC(a1 + 32, a2);
        *(a1 + 192) |= 8u;
        continue;
      case 3:
        v6 = *a2;
        if (v13 != 11)
        {
          goto LABEL_32;
        }

        v7 = (*(v6 + 336))(a2, a1 + 64);
        *(a1 + 192) |= 0x10u;
        continue;
      case 4:
        v6 = *a2;
        if (v13 != 4)
        {
          goto LABEL_32;
        }

        v7 = (*(v6 + 328))(a2, a1 + 88);
        *(a1 + 192) |= 0x20u;
        continue;
      case 5:
        v6 = *a2;
        if (v13 != 4)
        {
          goto LABEL_32;
        }

        v7 = (*(v6 + 328))(a2, a1 + 96);
        *(a1 + 192) |= 0x40u;
        continue;
      case 6:
        v6 = *a2;
        if (v13 != 4)
        {
          goto LABEL_32;
        }

        v7 = (*(v6 + 328))(a2, a1 + 104);
        *(a1 + 192) |= 0x80u;
        continue;
      case 7:
        v6 = *a2;
        if (v13 != 4)
        {
          goto LABEL_32;
        }

        v7 = (*(v6 + 328))(a2, a1 + 112);
        *(a1 + 192) |= 0x100u;
        continue;
      case 8:
        v6 = *a2;
        if (v13 != 8)
        {
          goto LABEL_32;
        }

        v7 = (*(v6 + 312))(a2, a1 + 120);
        *(a1 + 192) |= 0x200u;
        continue;
      case 9:
        v6 = *a2;
        if (v13 != 10)
        {
          goto LABEL_32;
        }

        v7 = (*(v6 + 320))(a2, a1 + 16);
        *(a1 + 192) |= 2u;
        continue;
      case 10:
        v6 = *a2;
        if (v13 != 10)
        {
          goto LABEL_32;
        }

        v7 = (*(v6 + 320))(a2, a1 + 24);
        *(a1 + 192) |= 4u;
        continue;
      case 11:
        v6 = *a2;
        if (v13 != 8)
        {
          goto LABEL_32;
        }

        v7 = (*(v6 + 312))(a2, a1 + 124);
        *(a1 + 192) |= 0x400u;
        continue;
      case 12:
        v6 = *a2;
        if (v13 != 4)
        {
          goto LABEL_32;
        }

        v7 = (*(v6 + 328))(a2, a1 + 128);
        *(a1 + 192) |= 0x800u;
        continue;
      case 13:
        v6 = *a2;
        if (v13 != 4)
        {
          goto LABEL_32;
        }

        v7 = (*(v6 + 328))(a2, a1 + 136);
        *(a1 + 192) |= 0x1000u;
        continue;
      case 14:
        v6 = *a2;
        if (v13 != 4)
        {
          goto LABEL_32;
        }

        v7 = (*(v6 + 328))(a2, a1 + 144);
        *(a1 + 192) |= 0x2000u;
        continue;
      case 15:
        v6 = *a2;
        if (v13 != 4)
        {
          goto LABEL_32;
        }

        v7 = (*(v6 + 328))(a2, a1 + 152);
        *(a1 + 192) |= 0x4000u;
        continue;
      case 16:
        v6 = *a2;
        if (v13 != 4)
        {
          goto LABEL_32;
        }

        v7 = (*(v6 + 328))(a2, a1 + 160);
        *(a1 + 192) |= 0x8000u;
        continue;
      case 17:
        v6 = *a2;
        if (v13 != 4)
        {
          goto LABEL_32;
        }

        v7 = (*(v6 + 328))(a2, a1 + 168);
        v8 = *(a1 + 194) | 1;
        goto LABEL_30;
      case 18:
        if (v13 != 12)
        {
          goto LABEL_31;
        }

        v7 = sub_10012E50C(a1 + 176, a2);
        v8 = *(a1 + 194) | 2;
LABEL_30:
        *(a1 + 194) = v8;
        break;
      default:
LABEL_31:
        v6 = *a2;
LABEL_32:
        v7 = (*(v6 + 352))(a2);
        break;
    }
  }

  v9 = (*(*a2 + 208))(a2);
  if ((SHIBYTE(v15) & 0x80000000) == 0)
  {
    return (v9 + v5);
  }

  v11 = v9;
  operator delete(__p[0]);
  return (v11 + v5);
}

void sub_10012F2C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012F2E4(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "GPSLocation");
  v7 = (*(*a2 + 48))(a2, "timestampNanos", 10, 1) + v6;
  v8 = (*(*a2 + 152))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "latlon", 12, 2);
  v11 = v10 + sub_10012D83C(a1 + 32, a2);
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = *(a1 + 192);
  if ((v13 & 0x10) != 0)
  {
    v32 = (*(*a2 + 48))(a2, "provider", 11, 3);
    v33 = v32 + (*(*a2 + 168))(a2, a1 + 64);
    v12 += v33 + (*(*a2 + 56))(a2);
    v13 = *(a1 + 192);
    if ((v13 & 0x20) == 0)
    {
LABEL_4:
      if ((v13 & 0x40) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  else if ((v13 & 0x20) == 0)
  {
    goto LABEL_4;
  }

  v34 = (*(*a2 + 48))(a2, "altitude", 4, 4);
  v35 = v34 + (*(*a2 + 160))(a2, *(a1 + 88));
  v12 += v35 + (*(*a2 + 56))(a2);
  v13 = *(a1 + 192);
  if ((v13 & 0x40) == 0)
  {
LABEL_5:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v36 = (*(*a2 + 48))(a2, "accuracy", 4, 5);
  v37 = v36 + (*(*a2 + 160))(a2, *(a1 + 96));
  v12 += v37 + (*(*a2 + 56))(a2);
  v13 = *(a1 + 192);
  if ((v13 & 0x80) == 0)
  {
LABEL_6:
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v38 = (*(*a2 + 48))(a2, "bearing", 4, 6);
  v39 = v38 + (*(*a2 + 160))(a2, *(a1 + 104));
  v12 += v39 + (*(*a2 + 56))(a2);
  v13 = *(a1 + 192);
  if ((v13 & 0x100) == 0)
  {
LABEL_7:
    if ((v13 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_22:
  v40 = (*(*a2 + 48))(a2, "speed", 4, 7);
  v41 = v40 + (*(*a2 + 160))(a2, *(a1 + 112));
  v12 += v41 + (*(*a2 + 56))(a2);
  if ((*(a1 + 192) & 0x200) != 0)
  {
LABEL_8:
    v14 = (*(*a2 + 48))(a2, "numSatellites", 8, 8);
    v15 = v14 + (*(*a2 + 144))(a2, *(a1 + 120));
    v12 += v15 + (*(*a2 + 56))(a2);
  }

LABEL_9:
  v16 = (*(*a2 + 48))(a2, "receivedTimestampNanos", 10, 9);
  v17 = v16 + (*(*a2 + 152))(a2, *(a1 + 16));
  v18 = v17 + (*(*a2 + 56))(a2);
  v19 = v18 + (*(*a2 + 48))(a2, "simulationTimestampNanos", 10, 10) + v12;
  v20 = (*(*a2 + 152))(a2, *(a1 + 24));
  v21 = v20 + (*(*a2 + 56))(a2);
  v22 = v21 + (*(*a2 + 48))(a2, "clGpsConfidence", 8, 11);
  v23 = v22 + (*(*a2 + 144))(a2, *(a1 + 124));
  v24 = v19 + v23 + (*(*a2 + 56))(a2);
  v25 = *(a1 + 192);
  if ((v25 & 0x800) != 0)
  {
    v42 = (*(*a2 + 48))(a2, "horzUncSemiMaj", 4, 12);
    v43 = v42 + (*(*a2 + 160))(a2, *(a1 + 128));
    v24 += v43 + (*(*a2 + 56))(a2);
    v25 = *(a1 + 192);
    if ((v25 & 0x1000) == 0)
    {
LABEL_11:
      if ((v25 & 0x2000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else if ((*(a1 + 192) & 0x1000) == 0)
  {
    goto LABEL_11;
  }

  v44 = (*(*a2 + 48))(a2, "horzUncSemiMin", 4, 13);
  v45 = v44 + (*(*a2 + 160))(a2, *(a1 + 136));
  v24 += v45 + (*(*a2 + 56))(a2);
  v25 = *(a1 + 192);
  if ((v25 & 0x2000) == 0)
  {
LABEL_12:
    if ((v25 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v46 = (*(*a2 + 48))(a2, "horzUncSemiMajAz", 4, 14);
  v47 = v46 + (*(*a2 + 160))(a2, *(a1 + 144));
  v24 += v47 + (*(*a2 + 56))(a2);
  v25 = *(a1 + 192);
  if ((v25 & 0x4000) == 0)
  {
LABEL_13:
    if ((v25 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  v48 = (*(*a2 + 48))(a2, "speedAccuracy", 4, 15);
  v49 = v48 + (*(*a2 + 160))(a2, *(a1 + 152));
  v24 += v49 + (*(*a2 + 56))(a2);
  if ((*(a1 + 192) & 0x8000) == 0)
  {
LABEL_14:
    v26 = *(a1 + 194);
    if ((v26 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v52 = (*(*a2 + 48))(a2, "verticalAccuracy", 4, 17);
    v53 = v52 + (*(*a2 + 160))(a2, *(a1 + 168));
    v24 += v53 + (*(*a2 + 56))(a2);
    if ((*(a1 + 194) & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_28:
  v50 = (*(*a2 + 48))(a2, "bearingAccuracy", 4, 16);
  v51 = v50 + (*(*a2 + 160))(a2, *(a1 + 160));
  v24 += v51 + (*(*a2 + 56))(a2);
  v26 = *(a1 + 194);
  if (v26)
  {
    goto LABEL_29;
  }

LABEL_15:
  if ((v26 & 2) != 0)
  {
LABEL_16:
    v27 = (*(*a2 + 48))(a2, "wifiZaxisData", 12, 18);
    v28 = v27 + sub_10012E71C(a1 + 176, a2);
    v24 += v28 + (*(*a2 + 56))(a2);
  }

LABEL_17:
  v29 = (*(*a2 + 64))(a2);
  v30 = (*(*a2 + 40))(a2);
  --a2[6];
  return (v29 + v30 + v24);
}

uint64_t sub_10012FF60(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043DBE8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = off_10043DB28;
  *(a1 + 56) &= 0xFCu;
  *(a1 + 64) = 0;
  v4 = (a1 + 64);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 176) = off_10043DBC8;
  *(a1 + 184) = 0;
  *(a1 + 188) &= ~1u;
  *(a1 + 192) = 0;
  v5 = a1 + 192;
  *(a1 + 194) &= 0xFCu;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  sub_10012A358(a1 + 32, a2 + 32);
  std::string::operator=(v4, (a2 + 64));
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 188) = *(a2 + 188);
  v6 = *(a2 + 192);
  *(v5 + 2) = *(a2 + 194);
  *v5 = v6;
  return a1;
}