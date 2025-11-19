std::string *sub_10017D730@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10017D764(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10017D780@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  result = sub_10017D830(a1, a2);
  if ((result & 1) == 0)
  {
    std::bad_cast::bad_cast(&v3);
    v3.__vftable = &off_100434090;
    sub_100049F88(&v3);
  }

  return result;
}

void sub_10017D804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::bad_cast a10)
{
  std::bad_cast::~bad_cast(&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10017D830(uint64_t a1, std::string *a2)
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
  v6 = sub_10017DC20(&v33, a1);
  v7 = *(v6 + *(*v6 - 24) + 32);
  v8 = *(&v34.__rdstate_ + *(v33 - 3));
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

void sub_10017DBF8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v22 + 1);
  sub_10000D388(a1);
}

void *sub_10017DC20(void *a1, uint64_t a2)
{
  v11 = &v10;
  v3 = (a2 + 8);
  if (*a2 == *a2 >> 31)
  {
    sub_10017DCEC(v3, __p);
  }

  else
  {
    sub_10017DF00(v3, (a2 + 28));
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = __p[1];
  }

  result = sub_10003C2E4(a1, v4, v5);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(__p[0]);
    return v7;
  }

  return result;
}

void sub_10017DCD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10017DCEC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1000C2398(&v15, "%012x");
  v14[0] = a1;
  v14[1] = nullsub_85;
  v14[2] = sub_10017DEF8;
  if (v20 == 1)
  {
    size = v15.__r_.__value_.__l.__size_;
    v5 = v15.__r_.__value_.__r.__words[0];
    if (v15.__r_.__value_.__l.__size_ != v15.__r_.__value_.__r.__words[0])
    {
      v6 = 0;
      v7 = 0;
      do
      {
        if (!v17 || (v8 = *(v5 + v6), (v8 & 0x80000000) != 0) || ((*(v16 + ((v8 >> 3) & 0x1FFFFFF8)) >> v8) & 1) == 0)
        {
          std::string::resize((v5 + v6 + 8), 0, 0);
          size = v15.__r_.__value_.__l.__size_;
          v5 = v15.__r_.__value_.__r.__words[0];
        }

        ++v7;
        v6 += 120;
      }

      while (v7 < 0xEEEEEEEEEEEEEEEFLL * ((size - v5) >> 3));
    }

    v18 = 0;
    v20 = 0;
    if (v17 && v19 >= 1)
    {
      for (i = 0; i != v19; v18 = ++i)
      {
        if (((*(v16 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) == 0)
        {
          break;
        }
      }
    }
  }

  sub_1000C5364(&v15, v14);
  v10 = v18;
  v11 = ++v18;
  if (v17 && v11 < v19)
  {
    v12 = v10 + 2;
    do
    {
      if (((*(v16 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        break;
      }

      ++v11;
      v18 = v12++;
    }

    while (v19 != v11);
  }

  sub_1000C15C8(&v15, a2);
  return sub_1000C1894(&v15);
}

void sub_10017DECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000C1894(va);
  _Unwind_Resume(a1);
}

void sub_10017DEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000C1894(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10017DF00(unsigned __int8 *a1, unsigned __int8 *a2)
{
  sub_10003BFA8(&v9);
  v4 = v9;
  v5 = &v9 + *(v9 - 24);
  if (*(v5 + 36) == -1)
  {
    std::ios_base::getloc((&v9 + *(v9 - 24)));
    v6 = std::locale::use_facet(&v13, &std::ctype<char>::id);
    (v6->__vftable[2].~facet_0)(v6, 32);
    std::locale::~locale(&v13);
    v4 = v9;
  }

  *(v5 + 36) = 48;
  for (*(&v9 + *(v4 - 24) + 8) = *(&v9 + *(v4 - 24) + 8) & 0xFFFFFFB5 | 8; a1 != a2; ++a1)
  {
    *(&v11[1].__locale_ + *(v9 - 24)) = 2;
    v7 = *a1;
    std::ostream::operator<<();
  }

  std::stringbuf::str();
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  std::locale::~locale(v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10017E160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 72));
  sub_10003C1C4(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10017E1A4(void *a1, uint64_t a2)
{
  v31 = &v30;
  v2 = (a2 + 8);
  if (*a2 != *a2 >> 31)
  {
    sub_10017910C();
  }

  v3 = *v2;
  v31 = &v30;
  if (*(a2 + 32) != *(a2 + 32) >> 31)
  {
    sub_10017910C();
  }

  v6 = *(a2 + 40) ^ v3 ^ ((*(a2 + 40) ^ v3) >> 32);
  v7 = v6 + 31;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_73;
  }

  v4 = vcnt_s8(v8);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v6 + 31;
    if (v7 >= *&v8)
    {
      v5 = v7 % *&v8;
    }
  }

  else
  {
    v5 = (*&v8 - 1) & v7;
  }

  v9 = *(*a1 + 8 * v5);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_73:
    operator new();
  }

  v11 = *a2 ^ (*a2 >> 31);
  v12 = *(a2 + 8);
  v13 = *(a2 + 32) ^ (*(a2 + 32) >> 31);
  v14 = *(a2 + 40);
  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v10[1];
      if (v15 != v7)
      {
        if ((v15 & (*&v8 - 1)) != v5)
        {
          goto LABEL_73;
        }

        goto LABEL_16;
      }

      v16 = *(v10 + 4);
      if (v11 == ((v16 >> 31) ^ v16))
      {
        if (v16 >> 31 == v16)
        {
          if (v12 != v10[3])
          {
            goto LABEL_16;
          }
        }

        else if (*v2 != v10[3] || *(a2 + 16) != v10[4] || *(a2 + 24) != *(v10 + 10))
        {
          goto LABEL_16;
        }

        v19 = *(v10 + 12);
        if (v13 == ((v19 >> 31) ^ v19))
        {
          if (v19 >> 31 == v19)
          {
            if (v14 == v10[7])
            {
              return v10;
            }
          }

          else if (*(a2 + 40) == v10[7] && *(a2 + 48) == v10[8] && *(a2 + 56) == *(v10 + 18))
          {
            return v10;
          }
        }
      }

LABEL_16:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_73;
      }
    }
  }

  while (1)
  {
    v22 = v10[1];
    if (v22 == v7)
    {
      break;
    }

    if (v22 >= *&v8)
    {
      v22 %= *&v8;
    }

    if (v22 != v5)
    {
      goto LABEL_73;
    }

LABEL_44:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_73;
    }
  }

  v23 = *(v10 + 4);
  if (v11 != ((v23 >> 31) ^ v23))
  {
    goto LABEL_44;
  }

  if (v23 >> 31 == v23)
  {
    if (v12 != v10[3])
    {
      goto LABEL_44;
    }
  }

  else if (*v2 != v10[3] || *(a2 + 16) != v10[4] || *(a2 + 24) != *(v10 + 10))
  {
    goto LABEL_44;
  }

  v26 = *(v10 + 12);
  if (v13 != ((v26 >> 31) ^ v26))
  {
    goto LABEL_44;
  }

  if (v26 >> 31 == v26)
  {
    if (v14 == v10[7])
    {
      return v10;
    }

    goto LABEL_44;
  }

  if (*(a2 + 40) != v10[7] || *(a2 + 48) != v10[8] || *(a2 + 56) != *(v10 + 18))
  {
    goto LABEL_44;
  }

  return v10;
}

void sub_10017E724()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10017E794()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

int64x2_t sub_10017E804@<Q0>(uint64_t a1@<X0>, int64x2_t *a2@<X8>)
{
  result = vdupq_n_s64(1uLL);
  *a2 = result;
  a2[1].i64[0] = a1;
  return result;
}

uint64_t *sub_10017E864(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 40) == 1)
    {
      *(v2 + 40) = 0;
    }

    if (*(v2 + 8) == 1)
    {
      *(v2 + 8) = 0;
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_10017E8D4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

uint64_t sub_10017E8E8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = a3[2];
  if (*a3 >= 1 && v3 >= 1 && v4 >= 1)
  {
    if (v3 < *a3)
    {
      sub_1000474A4(&v18, "");
      sub_10017ED40("For now, dwellWithSignal allows us to wait additional time for a high quality fix if we think we can get one.", &v17);
      sub_100383AA4(&v17, __p, &v18);
      sub_1000BC6D8(__p);
    }

    if (v4 < v3)
    {
      sub_1000474A4(__p, "");
      sub_10017ED90("We can't be *more* than 100% duty cycle", &v18);
      sub_100383AA4(&v18, v15, __p);
      sub_1000BC6D8(v15);
    }
  }

  v7 = *a1;
  v8 = *(*a1 + 8);
  if (*a3 >= 1 && v3 >= 1 && v4 >= 1)
  {
    if (*(*a1 + 8))
    {
      if (*(v7 + 16) == *a3 && *(v7 + 24) == v3 && *(v7 + 32) == v4)
      {
        return 0;
      }

      v14 = *a3;
      *(v7 + 32) = a3[2];
      *(v7 + 16) = v14;
      v11 = *a1;
      *v11 = a2;
      if (*(v11 + 40) != 1)
      {
        return 1;
      }
    }

    else
    {
      v13 = *a3;
      *(v7 + 32) = a3[2];
      *(v7 + 16) = v13;
      *(v7 + 8) = 1;
      v11 = *a1;
      *v11 = a2;
      if (*(v11 + 40) != 1)
      {
        return 1;
      }
    }

LABEL_20:
    *(v11 + 40) = 0;
    return 1;
  }

  if (!*(*a1 + 8))
  {
    return 0;
  }

  *(v7 + 8) = 0;
  v11 = *a1;
  *v11 = a2;
  if (*(v11 + 40) == 1)
  {
    goto LABEL_20;
  }

  return 1;
}

void sub_10017EAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10017EB58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 8) == 1 && *(v3 + 16) >= 1 && *(v3 + 24) >= 1)
  {
    v5 = *(v3 + 32);
    if (v5 >= 1)
    {
      v6 = a3 - a2;
      if (a3 < a2)
      {
        sub_1000474A4(v12, "");
        sub_1000BDA70("Must travel forward in time. Required: a <= b", &v13);
        sub_100383AA4(&v13, __p, v12);
        sub_1000BC6D8(__p);
      }

      if (v6 < v5)
      {
        v7 = ((a2 - *v3) % v5 + v5) % v5;
        if (*(v3 + 40))
        {
          v9 = *(v3 + 16);
          v8 = (v3 + 16);
          if (a2 - v8[4] < v9)
          {
            ++v8;
          }

          if (v7 >= *v8)
          {
            return v6 >= v5 - v7;
          }
        }

        else if (v7 >= *(v3 + 16))
        {
          return v6 >= v5 - v7;
        }
      }

      return 1;
    }
  }

  return 0;
}

void sub_10017ECC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10017ED0C(uint64_t a1)
{
  if (*a1 != 1)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (*(a1 + 8) >= 1)
  {
    v3 = __OFSUB__(v1, 1);
    v2 = v1 - 1 < 0;
  }

  else
  {
    v3 = 0;
    v2 = 1;
  }

  return v2 == v3 && *(a1 + 24) > 0;
}

std::string *sub_10017ED40@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10017ED74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10017ED90@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10017EDC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017EDE0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10017EE50()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10017EEC0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  return result;
}

void sub_10017EECC(int *a1@<X0>, size_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  while (sub_100232714(a1) && !sub_1002326D0(a1, 1))
  {
    sub_100232704(a1, 1);
    v11 = sub_100232684(a1, a1[4]);
    if (sub_100232714(a1))
    {
      v4 = 0;
      do
      {
        if (!sub_1002326D0(a1, 1))
        {
          break;
        }

        sub_100232704(a1, 1);
        v5 = sub_100232684(a1, 1);
        v6 = v5 ? 6 : 2;
        v7 = sub_100232684(a1, v6);
        v8 = sub_100232714(a1);
        v9 = v4 + 5;
        if (!v5)
        {
          v9 = v4 + 1;
        }

        v4 = v9 + v7;
      }

      while (v8);
      v10 = v4;
      if (v4 >= 1)
      {
        sub_10000A688(a2, &v11);
        sub_10000A688(a2, &v10);
      }
    }
  }

  sub_10017F020(a2);
}

void sub_10017EFF4(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_10017F020(size_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = &v1[-*a1];
  if (v3 > v4)
  {
    v6 = v4 >> 2;
    if (v1 != v2)
    {
      if (!(v6 >> 62))
      {
        v7 = &v1[-*a1];
        operator new();
      }

      sub_10000D444();
    }

    if (v4 < v3)
    {
      v8 = 4 * v6;
      v9 = a1[1] - v2;
      v10 = v8 - v9;
      memcpy((v8 - v9), v2, v9);
      *a1 = v10;
      a1[1] = v8;
      a1[2] = v8;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

uint64_t sub_10017F118(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  *result = v3;
  *(result + 16) = v2;
  v4 = 1.0 / *&v3;
  v5 = *&v3 == 0.0;
  v6 = 0.0;
  if (!v5)
  {
    v6 = v4;
  }

  *(result + 24) = v6;
  return result;
}

double sub_10017F144(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  if (1 << *(a1 + 16) <= a2)
  {
    sub_1000474A4(v5, "");
    sub_10017F360("You tried to convert ", &v7);
    sub_10017F3B0(&v3, &v8);
    sub_10017F550(" to a float, which is outside the range of our spec", &v9);
    sub_1000E661C(v5, &v7, 3);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_10;
      }
    }

    else if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v8.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_6:
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      operator delete(v5[0]);
LABEL_7:
      sub_10003F5D0(&__p);
    }

LABEL_10:
    operator delete(v7.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  return *(a1 + 8) + a2 * *a1;
}

void sub_10017F2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017F2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  while (1)
  {
    v18 = *(v17 - 1);
    v17 -= 3;
    if (v18 < 0)
    {
      operator delete(*v17);
    }

    if (v17 == &a17)
    {
      JUMPOUT(0x10017F2C0);
    }
  }
}

std::string *sub_10017F310@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10017F344(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10017F360@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10017F394(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017F3B0(void *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v18 = v16;
  v19 = v17;
  v13[0] = *a1;
  v13[1] = v17;
  v14 = 48;
  v15 = 48;
  v3 = sub_1000E5EB8(v13);
  v18 = v3;
  v19 = v17;
  v4 = &v17[-v3];
  v5 = a2;
  if (&v17[-v3] >= 0x17)
  {
    std::string::__grow_by(a2, 0x16uLL, v4 - 22, 0, 0, 0, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2->__r_.__value_.__r.__words[0];
    }
  }

  if (v3 == v17)
  {
    v6 = v5;
  }

  else
  {
    if (v4 < 0x20 || v5 - v3 < 0x20)
    {
      v6 = v5;
      v7 = v3;
    }

    else
    {
      v6 = (v5 + (v4 & 0xFFFFFFFFFFFFFFE0));
      v7 = (v3 + (v4 & 0xFFFFFFFFFFFFFFE0));
      v8 = (v3 + 16);
      v9 = &v5->__r_.__value_.__r.__words[2];
      v10 = v4 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v11 = *v8;
        *(v9 - 1) = *(v8 - 1);
        *v9 = v11;
        v8 += 2;
        v9 += 4;
        v10 -= 32;
      }

      while (v10);
      if (v4 == (v4 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_15;
      }
    }

    do
    {
      v12 = *v7++;
      v6->__r_.__value_.__s.__data_[0] = v12;
      v6 = (v6 + 1);
    }

    while (v7 != v17);
  }

LABEL_15:
  v6->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = v4;
  }

  else
  {
    *(&a2->__r_.__value_.__s + 23) = v4 & 0x7F;
  }
}

void sub_10017F534(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10017F550@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10017F584(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017F5A0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10017F610()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void *sub_10017F680(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[2] = 0;
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  a1[2] += (*(*a2 + 200))(a2, __p);
  v8 = 0;
  v7 = 0;
  a1[2] += (*(*a2 + 216))(a2, __p, &v8, &v7);
  if (!v8)
  {
    sub_1000474A4(&v12, "");
    sub_1000D8214("Trying to read past end-of-stream", &v14);
    sub_1000E661C(&v12, &v14, 1);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (v13 < 0)
    {
      operator delete(v12.__vftable);
    }

    sub_10003F5D0(&v11);
  }

  if (v7 != 1 || v8 != 15)
  {
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v14, "SensorLog thrift modified?  I only know how to parse a basic one");
    std::runtime_error::runtime_error(&v12, &v14);
    v12.__vftable = &off_1004336A0;
    sub_10010A984(v6);
  }

  LODWORD(v14.__r_.__value_.__l.__data_) = 0;
  LODWORD(v12.__vftable) = 0;
  v4 = a1[2] + (*(*a2 + 248))(a2, &v12, &v14);
  a1[1] = LODWORD(v14.__r_.__value_.__l.__data_);
  a1[2] = v4;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_10017F8FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, std::runtime_error a26, int a27, __int16 a28, char a29, char a30)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017F9C8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == a1[1])
  {
    sub_1000474A4(&v17, "");
    sub_1000D8214("Trying to read past end-of-stream", &v16);
    sub_100382FC4(&v16, v14, &v17);
    sub_10003F5D0(v14);
  }

  *a4 = off_10043D988;
  *(a4 + 80) = 0;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 48) = 0;
  *(a4 + 72) = 0;
  *(a4 + 88) &= 0xFC00u;
  *a3 += sub_100129530(a4, a2);
  v7 = a1[1];
  v8 = *a1 + 1;
  *a1 = v8;
  if (v8 == v7)
  {
    *a3 += (*(*a2 + 256))(a2);
    *a3 += (*(*a2 + 224))(a2);
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    v10 = 0;
    v9 = 0;
    *a3 += (*(*a2 + 216))(a2, __p, &v10, &v9);
    if (v10)
    {
      sub_1000474A4(v14, "");
      sub_10017FD24("Didn't get STOP as expected", &v17);
      sub_1000E661C(v14, &v17, 1);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }

      sub_10003F5D0(&v13);
    }

    *a3 += (*(*a2 + 208))(a2);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10017FC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    nullsub_67(v28);
    _Unwind_Resume(a1);
  }

  nullsub_67(v28);
  _Unwind_Resume(a1);
}

std::string *sub_10017FD24@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10017FD58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017FD74()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10017FDE4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void *sub_10017FE54(void *result, uint64_t a2, uint64_t *a3)
{
  *result = off_1004401C0;
  result[1] = a2;
  v3 = *a3;
  *a3 = 0;
  result[2] = v3;
  return result;
}

void sub_10017FE80(uint64_t a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v64 = 0;
  v65 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  buf.__r_.__value_.__r.__words[0] = a3;
  buf.__r_.__value_.__s.__data_[8] = 0;
  v7 = v5 - v6;
  if (v7)
  {
    if (!((v7 >> 5) >> 60))
    {
      operator new();
    }

    sub_10000FC84();
  }

  v9 = *a2;
  v8 = a2[1];
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v54 = a3;
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v10 = a2[1] - *a2;
  if (v10)
  {
    if (!((v10 >> 5) >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  (*(**(a1 + 16) + 16))(&v57);
  v11 = v57;
  v12 = (a2[1] - *a2) >> 5;
  v55 = (0xAAAAAAAAAAAAAAABLL * ((v58 - v57) >> 3));
  v56 = v12;
  if (v55 != v12)
  {
    sub_1000474A4(&v64, "");
    sub_10004A7B0("Number of cache entries ", &buf);
    sub_100181374(&v55, &v68);
    sub_1001817C0(" != num macs, ", &v69);
    sub_100181374(&v56, &v70);
    sub_1000E661C(&v64, &buf, 4);
    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v70.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_53:
        if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_81;
      }
    }

    else if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    operator delete(v69.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_54:
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_82;
    }

LABEL_81:
    operator delete(v68.__r_.__value_.__l.__data_);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_55:
      if ((v66 & 0x80000000) == 0)
      {
        goto LABEL_56;
      }

LABEL_83:
      operator delete(v64);
LABEL_56:
      sub_10003F5D0(&__p);
    }

LABEL_82:
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((v66 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_83;
  }

  if (v58 != v57)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = &v11[24 * v14];
      if (*v16 == 1)
      {
        v17 = *a3;
        v19 = *(v16 + 1);
        v18 = *(v16 + 2);
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        v20 = (v17 + 16 * v14);
        v21 = v20[1];
        ++v13;
        *v20 = v19;
        v20[1] = v18;
        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
        }
      }

      else
      {
        if (v14 >= (a2[1] - *a2) >> 5)
        {
          sub_1000BFF58();
        }

        v22 = (*a2 + 32 * v14);
        v23 = v61;
        if (v61 >= v62)
        {
          v25 = (v61 - v60) >> 5;
          if ((v25 + 1) >> 59)
          {
            sub_10000FC84();
          }

          v26 = (v62 - v60) >> 4;
          if (v26 <= v25 + 1)
          {
            v26 = v25 + 1;
          }

          if (v62 - v60 >= 0x7FFFFFFFFFFFFFE0)
          {
            v27 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v27 = v26;
          }

          if (v27)
          {
            if (!(v27 >> 59))
            {
              operator new();
            }

LABEL_85:
            sub_10000D444();
          }

          v30 = (32 * v25);
          v33 = *v22;
          v32 = v22 + 2;
          v31 = v33;
          v28 = v33 >> 31;
          if (v33 >> 31 == v33)
          {
            *(32 * v25 + 8) = *v32;
            v28 = v31;
          }

          else
          {
            v34 = *v32;
            *(32 * v25 + 0x18) = v32[4];
            *(32 * v25 + 8) = v34;
          }

          v35 = v60;
          v36 = v61;
          v37 = v61 - v60;
          *v30 = v28 ^ v31;
          v38 = v30 + 8;
          if (v36 != v35)
          {
            v39 = -32 * ((v36 - v35) >> 5) + 32 * v25 + 8;
            v40 = v35;
            do
            {
              while (1)
              {
                v41 = v40 + 8;
                if (*v40 != *v40 >> 31)
                {
                  break;
                }

                *v39 = *v41;
                *(v39 - 8) = 0;
                v40 += 32;
                v39 += 32;
                if (v40 == v36)
                {
                  goto LABEL_43;
                }
              }

              v42 = *v41;
              *(v39 + 16) = *(v40 + 6);
              *v39 = v42;
              v43 = *v40;
              v40 += 32;
              *(v39 - 8) = v43 ^ (v43 >> 31);
              v39 += 32;
            }

            while (v40 != v36);
          }

LABEL_43:
          v60 = v30 - v37;
          v61 = v30 + 8;
          v62 = 0;
          if (v35)
          {
            operator delete(v35);
          }

          a3 = v54;
          v61 = v38;
        }

        else
        {
          v24 = v22 + 2;
          if (*v22 == *v22 >> 31)
          {
            *(v61 + 1) = *v24;
            *v23 = 0;
          }

          else
          {
            v29 = *v24;
            *(v61 + 6) = v22[6];
            *(v23 + 8) = v29;
            *v23 = *v22 ^ (*v22 >> 31);
          }

          v61 = v23 + 32;
        }

        v44 = v15;
        v45 = v15 >> 3;
        if (((v15 >> 3) + 1) >> 61)
        {
          sub_10000FC84();
        }

        if (v15 >> 3 != -1)
        {
          if (!(((v15 >> 3) + 1) >> 61))
          {
            operator new();
          }

          goto LABEL_85;
        }

        *(8 * v45) = v14;
        v15 = 8 * v45 + 8;
        memcpy(0, 0, v44);
      }

      ++v14;
      v11 = v57;
      if (v14 >= 0xAAAAAAAAAAAAAAABLL * ((v58 - v57) >> 3))
      {
        goto LABEL_58;
      }
    }
  }

  v13 = 0;
LABEL_58:
  if (qword_10045B080 != -1)
  {
    sub_100384A54();
  }

  v46 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
  {
    v47 = (a2[1] - *a2) >> 5;
    LODWORD(buf.__r_.__value_.__l.__data_) = 134218752;
    *(buf.__r_.__value_.__r.__words + 4) = v47;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = 0xAAAAAAAAAAAAAAABLL * ((v58 - v57) >> 3);
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
    v68.__r_.__value_.__r.__words[0] = v13;
    LOWORD(v68.__r_.__value_.__r.__words[1]) = 2048;
    *(&v68.__r_.__value_.__r.__words[1] + 2) = (v61 - v60) >> 5;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "found macs in cache, num macs=%zu num cacheEntries=%zu num foundInCache=%lu num macsToQuery=%zu", &buf, 0x2Au);
  }

  v48 = v57;
  if (v57)
  {
    v49 = v58;
    v50 = v57;
    if (v58 != v57)
    {
      v51 = v58;
      do
      {
        v52 = *(v51 - 24);
        v51 -= 24;
        if (v52 == 1)
        {
          v53 = *(v49 - 1);
          if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v53->__on_zero_shared)(v53);
            std::__shared_weak_count::__release_weak(v53);
          }

          *v51 = 0;
        }

        v49 = v51;
      }

      while (v51 != v48);
      v50 = v57;
    }

    v58 = v48;
    operator delete(v50);
  }

  if (v60 != v61)
  {
    v64 = 0;
    v65 = 0;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    buf.__r_.__value_.__r.__words[0] = &v57;
    buf.__r_.__value_.__s.__data_[8] = 0;
    if (!(((v61 - v60) >> 5) >> 60))
    {
      operator new();
    }

    sub_10000FC84();
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }
}

void sub_100180CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_100048F1C(&a15);
  sub_100048F1C(&a19);
  if (a13)
  {
    operator delete(a13);
    v38 = a22;
    if (!a22)
    {
LABEL_5:
      sub_100048F1C(a11);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v38 = a22;
    if (!a22)
    {
      goto LABEL_5;
    }
  }

  a23 = v38;
  operator delete(v38);
  sub_100048F1C(a11);
  _Unwind_Resume(a1);
}

void sub_100180F90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100181A50(va);
  _Unwind_Resume(a1);
}

void sub_100181090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_100384A7C(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001810AC(void *result)
{
  *result = off_1004401C0;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_100181124(void *a1)
{
  *a1 = off_1004401C0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  operator delete();
}

void ***sub_1001811E8(void ***a1)
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
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 16;
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

void *sub_1001812AC(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v6 = *(v5 - 24);
        v5 -= 24;
        if (v6 == 1)
        {
          v7 = *(v3 - 1);
          if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *v5 = 0;
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_100181374(void *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v18 = v16;
  v19 = v17;
  v13[0] = *a1;
  v13[1] = v17;
  v14 = 48;
  v15 = 48;
  v3 = sub_100181514(v13);
  v18 = v3;
  v19 = v17;
  v4 = &v17[-v3];
  v5 = a2;
  if (&v17[-v3] >= 0x17)
  {
    std::string::__grow_by(a2, 0x16uLL, v4 - 22, 0, 0, 0, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2->__r_.__value_.__r.__words[0];
    }
  }

  if (v3 == v17)
  {
    v6 = v5;
  }

  else
  {
    if (v4 < 0x20 || v5 - v3 < 0x20)
    {
      v6 = v5;
      v7 = v3;
    }

    else
    {
      v6 = (v5 + (v4 & 0xFFFFFFFFFFFFFFE0));
      v7 = (v3 + (v4 & 0xFFFFFFFFFFFFFFE0));
      v8 = (v3 + 16);
      v9 = &v5->__r_.__value_.__r.__words[2];
      v10 = v4 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v11 = *v8;
        *(v9 - 1) = *(v8 - 1);
        *v9 = v11;
        v8 += 2;
        v9 += 4;
        v10 -= 32;
      }

      while (v10);
      if (v4 == (v4 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_15;
      }
    }

    do
    {
      v12 = *v7++;
      v6->__r_.__value_.__s.__data_[0] = v12;
      v6 = (v6 + 1);
    }

    while (v7 != v17);
  }

LABEL_15:
  v6->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = v4;
  }

  else
  {
    *(&a2->__r_.__value_.__s + 23) = v4 & 0x7F;
  }
}

void sub_1001814F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100181514(uint64_t a1)
{
  std::locale::locale(&v27);
  v2 = std::locale::classic();
  if (std::locale::operator==(&v27, v2))
  {
    v3 = *a1;
    do
    {
      v4 = *(a1 + 8);
      *(a1 + 8) = v4 - 1;
      *(v4 - 1) = *(a1 + 20) + v3 - 10 * (((v3 * 0xCCCCCCCCCCCCCCCDLL) >> 64) >> 3);
      v5 = *a1;
      v3 = *a1 / 0xAuLL;
      *a1 = v3;
    }

    while (v5 > 9);
    v6 = *(a1 + 8);
    goto LABEL_28;
  }

  v7 = std::locale::use_facet(&v27, &std::numpunct<char>::id);
  (v7->__vftable[1].__on_zero_shared)(&__p);
  v8 = v26;
  if ((v26 & 0x8000000000000000) != 0)
  {
    v8 = v25;
    if (!v25 || *__p <= 0)
    {
      goto LABEL_24;
    }

LABEL_11:
    v9 = (v7->__vftable[1].~facet_0)(v7);
    v10 = 0;
    p_p = __p;
    if (v26 >= 0)
    {
      p_p = &__p;
    }

    v12 = (a1 + 8);
    LOBYTE(v13) = *p_p;
    v14 = *p_p;
    do
    {
      if (!v14)
      {
        if (++v10 < v8)
        {
          v19 = v26 >= 0 ? &__p : __p;
          v13 = *(v19 + v10);
          if (v13 < 1)
          {
            LOBYTE(v13) = 127;
          }
        }

        v15 = (*v12 - 1);
        *v12 = v15;
        *v15 = v9;
        v14 = v13;
      }

      --v14;
      v17 = *a1;
      v16 = *(a1 + 8);
      *(a1 + 8) = v16 - 1;
      *(v16 - 1) = *(a1 + 20) + v17 - 10 * (((v17 * 0xCCCCCCCCCCCCCCCDLL) >> 64) >> 3);
      v18 = *a1;
      *a1 /= 0xAuLL;
    }

    while (v18 > 9);
    goto LABEL_26;
  }

  if (v26 && __p > 0)
  {
    goto LABEL_11;
  }

LABEL_24:
  v12 = (a1 + 8);
  v20 = *a1;
  do
  {
    v21 = *(a1 + 8);
    *(a1 + 8) = v21 - 1;
    *(v21 - 1) = *(a1 + 20) + v20 - 10 * (((v20 * 0xCCCCCCCCCCCCCCCDLL) >> 64) >> 3);
    v22 = *a1;
    v20 = *a1 / 0xAuLL;
    *a1 = v20;
  }

  while (v22 > 9);
LABEL_26:
  v6 = *v12;
  if (v26 < 0)
  {
    operator delete(__p);
  }

LABEL_28:
  std::locale::~locale(&v27);
  return v6;
}

void sub_100181780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::locale::~locale(&a15);
    _Unwind_Resume(a1);
  }

  std::locale::~locale(&a15);
  _Unwind_Resume(a1);
}

std::string *sub_1001817C0@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1001817F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10018188C(uint64_t a1, uint64_t a2)
{
  *a2 = off_100440270;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001818C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  (*(**(a1 + 24) + 48))(&v9, *(a1 + 24), a3, *(a1 + 8));
  v5 = *(v4 + 24);
  if (!v5)
  {
    sub_1000DB498();
  }

  result = (*(*v5 + 48))(v5, a2, &v9);
  v7 = v10;
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      return v8;
    }
  }

  return result;
}

uint64_t sub_1001819D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN25CachingSingleApRadioMapDb15foreachRadioMapERK10LocationIdRK30SingleApRadioMapBuildingParamsNSt3__18functionIFbRK10MacAddressNS6_10shared_ptrI16SingleApRadioMapEEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN25CachingSingleApRadioMapDb15foreachRadioMapERK10LocationIdRK30SingleApRadioMapBuildingParamsNSt3__18functionIFbRK10MacAddressNS6_10shared_ptrI16SingleApRadioMapEEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN25CachingSingleApRadioMapDb15foreachRadioMapERK10LocationIdRK30SingleApRadioMapBuildingParamsNSt3__18functionIFbRK10MacAddressNS6_10shared_ptrI16SingleApRadioMapEEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN25CachingSingleApRadioMapDb15foreachRadioMapERK10LocationIdRK30SingleApRadioMapBuildingParamsNSt3__18functionIFbRK10MacAddressNS6_10shared_ptrI16SingleApRadioMapEEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_100181A50(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_100181AE0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100181B18(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100181B48(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteI16SingleApRadioMapEE")
  {
    if (((v2 & "NSt3__114default_deleteI16SingleApRadioMapEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteI16SingleApRadioMapEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteI16SingleApRadioMapEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_100181BA8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100181C18()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100181C88(uint64_t result, uint64_t a2, double a3)
{
  if ((*result & 1) == 0)
  {
    *result = 1;
    *(result + 8) = a2;
  }

  if (*(result + 16) == 1 && *(result + 24) > a2)
  {
    sub_1003846E0(__p, v4);
    sub_1000BC6D8(__p);
  }

  if (a3 > 0.0)
  {
    sub_1003846E0(__p, v4);
    sub_1000BC6D8(__p);
  }

  ++*(result + 32);
  *(result + 40) = *(result + 40) + a3;
  if ((*(result + 16) & 1) == 0)
  {
    *(result + 16) = 1;
  }

  *(result + 24) = a2;
  return result;
}

void sub_100181DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100181DC4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100181E34()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100181F48(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_100181FB4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100440350;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100182008(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 16);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 80;
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

void *sub_1001820DC(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 4) < 0x333333333333334)
    {
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_100182210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_100182230(&a11);
  *(v11 + 8) = v12;
  sub_1001822DC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100182230(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 80)
    {
      v6 = *(v4 - 16);
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  return a1;
}

void ***sub_1001822DC(void ***a1)
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
          v6 = *(v4 - 2);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 80;
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

void sub_1001823A0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100182410()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

__n128 sub_100182480(__n128 *a1, __n128 *a2, unint64_t a3, unint64_t a4)
{
  result = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *a1 = result;
  a1[1].n128_u64[0] = a3;
  a1[1].n128_u64[1] = a4;
  a1[2].n128_u32[0] = 0;
  return result;
}

void sub_100182498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  *&v12 = *a1;
  *(&v12 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *v6;
  v8 = v6[1];
  v11 = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  sub_100270504(a2, &v12, v5, v4, v7, v8, &v11);
  v9 = *(&v11 + 1);
  if (*(&v11 + 1) && !atomic_fetch_add((*(&v11 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(&v12 + 1);
  if (*(&v12 + 1))
  {
    if (!atomic_fetch_add((*(&v12 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

void sub_1001825A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002BB1C(&a9);
  sub_10002BB1C(&a11);
  _Unwind_Resume(a1);
}

BOOL sub_1001825C0(uint64_t a1, int a2)
{
  v2 = *(a1 + 32) != a2;
  *(a1 + 32) = a2;
  return v2;
}

void sub_1001825D8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100182648()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1001826B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      while (!sub_1001182C8(v5, i + 2))
      {
        v5 += 2;
        if (v5 == v6)
        {
          v5 = v6;
          break;
        }
      }

      v6 = *(a1 + 8);
    }

    if (v5 == v6)
    {
      if (v6 >= *(a1 + 16))
      {
        v8 = sub_100182F0C(a1, i + 1);
      }

      else
      {
        v7 = *(i + 3);
        *v6 = *(i + 2);
        v6[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        v8 = (v6 + 2);
      }

      *(a1 + 8) = v8;
      v9 = *(*(**(i + 4) + 40))(*(i + 4));
      if (v9 && ((*(*v9 + 40))(v9) & 1) == 0)
      {
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        if (v10 >= v11)
        {
          v13 = *(a1 + 24);
          v14 = (v10 - v13) >> 4;
          v15 = v14 + 1;
          if ((v14 + 1) >> 60)
          {
            sub_10000FC84();
          }

          v16 = v11 - v13;
          if (v16 >> 3 > v15)
          {
            v15 = v16 >> 3;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF0)
          {
            v17 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            if (!(v17 >> 60))
            {
              operator new();
            }

            sub_10000D444();
          }

          v21 = 16 * v14;
          v22 = i[2];
          *(16 * v14) = v22;
          if (*(&v22 + 1))
          {
            atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v4 = (v21 + 16);
          v18 = *(a1 + 24);
          v19 = *(a1 + 32) - v18;
          v20 = v21 - v19;
          memcpy((v21 - v19), v18, v19);
          *(a1 + 24) = v20;
          *(a1 + 32) = v4;
          *(a1 + 40) = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          v12 = *(i + 5);
          *v10 = *(i + 4);
          v10[1] = v12;
          if (v12)
          {
            atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
          }

          v4 = v10 + 2;
        }

        *(a1 + 32) = v4;
      }
    }
  }

  return a1;
}

void sub_1001828F4(_Unwind_Exception *a1)
{
  sub_100048F1C(v1 + 3);
  sub_100048F1C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100182920@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(result + 24);
  v3 = *(result + 32);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_100182B60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 != v3)
  {
    v22 = vdupq_n_s64(0x7FF4000000000000uLL);
    do
    {
      v5 = (*(**v2 + 40))();
      v7 = *v5;
      v6 = v5[1];
      v24 = *v5;
      v25 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = (*(*v7 + 112))(v7);
      if (sub_100177B64(*v8))
      {
        v9 = *(a2 + 8);
        v10 = *(a2 + 16);
        if (v9 >= v10)
        {
          v13 = (v9 - *a2) >> 4;
          v14 = v13 + 1;
          if ((v13 + 1) >> 60)
          {
            sub_10000FC84();
          }

          v15 = v10 - *a2;
          if (v15 >> 3 > v14)
          {
            v14 = v15 >> 3;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF0)
          {
            v16 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            if (!(v16 >> 60))
            {
              operator new();
            }

            sub_10000D444();
          }

          v20 = 16 * v13;
          v21 = *v8;
          *(16 * v13) = *v8;
          if (*(&v21 + 1))
          {
            atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v12 = (v20 + 16);
          v17 = *a2;
          v18 = *(a2 + 8) - *a2;
          v19 = v20 - v18;
          memcpy((v20 - v18), *a2, v18);
          *a2 = v19;
          *(a2 + 8) = v12;
          *(a2 + 16) = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          v11 = v8[1];
          *v9 = *v8;
          v9[1] = v11;
          if (v11)
          {
            atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
          }

          v12 = v9 + 2;
        }

        *(a2 + 8) = v12;
      }

      v23 = v22;
      v23.i64[0] = (*(**v2 + 32))();
      v23.i64[1] = (*(*v7 + 120))(v7);
      sub_1000277F8(a2 + 24, &v23);
      if (v6)
      {
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      v2 += 16;
    }

    while (v2 != v3);
  }
}

void sub_100182E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002BB1C(va);
  sub_100182E48(v5);
  _Unwind_Resume(a1);
}

void **sub_100182E48(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
    v5 = *a1;
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 16;
      }

      while (v4 != v3);
      v5 = *a1;
    }

    a1[1] = v3;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_100182F0C(void *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_10000FC84();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_10000D444();
  }

  v15 = 16 * v2;
  v16 = *a2;
  *(16 * v2) = *a2;
  if (*(&v16 + 1))
  {
    atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v15 + 16;
  v8 = *a1;
  v9 = a1[1];
  v10 = (v15 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      *v12++ = *v11;
      *v11 = 0;
      v11[1] = 0;
      v11 += 2;
    }

    while (v11 != v9);
    do
    {
      v13 = v8[1];
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v8 += 2;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_10018309C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10018310C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10018317C(void *a1)
{
  *a1 = off_1004403A0;
  a1[1] = off_100440438;
  sub_100184144(a1 + 2);
}

uint64_t sub_10018330C(uint64_t a1)
{
  *a1 = off_1004403A0;
  *(a1 + 8) = off_100440438;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    sub_1001CA6EC(v2);
    operator delete();
  }

  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_10031E47C((a1 + 48));
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 16);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 8);
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v5 -= 16;
      }

      while (v5 != v4);
      v6 = *(a1 + 16);
    }

    *(a1 + 24) = v4;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_100183468(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[8];
  v9 = sub_1001D5310(v8);
  (*(*v8 + 16))(v8, a3, v9, a4);
  v10 = *(*a1 + 120);

  return v10(a1, a2);
}

void sub_10018351C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1001D5310(*(a1 + 64));
  sub_10032483C(&v6, a2, v5, a3);
  operator new();
}

void sub_100183804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  sub_100183FC0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10018389C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v7 = v6;
      v4 = v2;
      (*(*v3 + 24))(v3, v6);
      v2 = v4;
    }

    else
    {
      v7 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  sub_1001CA6F0(v2, v6);
  result = v7;
  if (v7 == v6)
  {
    return (*(*v7 + 32))(v7);
  }

  if (v7)
  {
    return (*(*v7 + 40))();
  }

  return result;
}

void sub_1001839C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10000D388(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001839EC(uint64_t a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x3802000000;
  v3[3] = sub_100184278;
  v3[4] = nullsub_88;
  v3[5] = a1 + 16;
  v3[6] = a2;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = sub_100184288;
  v2[3] = &unk_1004404A8;
  v2[4] = v3;
  sub_10000AE28((a1 + 48), v2);
  _Block_object_dispose(v3, 8);
}

void sub_100183AB0(uint64_t a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x3802000000;
  v3[3] = sub_100184278;
  v3[4] = nullsub_88;
  v3[5] = a1 + 8;
  v3[6] = a2;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = sub_100184288;
  v2[3] = &unk_1004404A8;
  v2[4] = v3;
  sub_10000AE28((a1 + 40), v2);
  _Block_object_dispose(v3, 8);
}

void *sub_100183B74(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3802000000;
  v4[3] = sub_100184948;
  v4[4] = nullsub_89;
  v4[5] = a1 + 16;
  v4[6] = &v2;
  v2 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100184958;
  v3[3] = &unk_1004404D0;
  v3[4] = v4;
  sub_10000AE28((a1 + 48), v3);
  _Block_object_dispose(v4, 8);
  return sub_10004FF1C(*v2);
}

void sub_100183C4C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3802000000;
  v8[3] = sub_100184948;
  v8[4] = nullsub_89;
  v8[5] = a1 + 16;
  v8[6] = &v6;
  v6 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100184958;
  v7[3] = &unk_1004404D0;
  v7[4] = v8;
  sub_10000AE28((a1 + 48), v7);
  _Block_object_dispose(v8, 8);
  v3 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v4 = v6[1];
  *(a2 + 8) = *v6;
  *(a2 + 16) = v4;
  if (v4)
  {
    v5 = (v4 + 8);
    v3 = 1;
    atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
LABEL_4:
    *a2 = v3;
    return;
  }

  *a2 = 1;
}

void sub_100183D5C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = a1;
  sub_1000D38A8(&v4, &v5);
  v3 = std::string::insert(&v5, 0, "BaseLocalizer ");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_100183DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100183DFC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = a1 - 8;
  memset(&v5, 0, sizeof(v5));
  if ((sub_1000D3958(&v4, &v5) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v6);
    v6.__vftable = &off_100434090;
    sub_100049F88(&v6);
  }

  v3 = std::string::insert(&v5, 0, "BaseLocalizer ");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_100183ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::bad_cast a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

dispatch_object_t *sub_100183F04(dispatch_object_t *a1)
{
  sub_10031E47C(a1 + 4);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        isa = v3[-1].isa;
        if (isa && !atomic_fetch_add(&isa->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (isa->__on_zero_shared)(isa);
          std::__shared_weak_count::__release_weak(isa);
        }

        v3 -= 2;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_100183FC0(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_10018408C(a1 + 32);
  v3 = *(a1 + 24);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t sub_10018408C(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    sub_10011B04C(v3 + 4);
    v4 = v3[3];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_100184144(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_100184240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_100048F1C(v15);
    _Unwind_Resume(a1);
  }

  sub_100048F1C(v15);
  _Unwind_Resume(a1);
}

__n128 sub_100184278(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_100184288(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = v3[1];
  if (v4 >= v3[2])
  {
    v6 = sub_100182F0C(v3, v2);
  }

  else
  {
    v5 = *(v2 + 8);
    *v4 = *v2;
    v4[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v4 + 2);
  }

  v3[1] = v6;
  sub_100051018(*v3, v6, &v7, (v6 - *v3) >> 4);
}

uint64_t sub_100184308(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = *(a2 + 48);
  prime = *(a2 + 24);
  if (prime == 1)
  {
    prime = 2;
LABEL_19:
    sub_10000FE58(a1 + 16, prime);
    goto LABEL_20;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 24));
    v6 = *(a1 + 24);
    v7 = prime >= *&v6;
    if (prime > *&v6)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v6 = 0;
    v7 = 1;
    if (prime)
    {
      goto LABEL_19;
    }
  }

  if (!v7)
  {
    v8 = vcvtps_u32_f32(*(a1 + 40) / *(a1 + 48));
    if (*&v6 < 3uLL || (v9 = vcnt_s8(v6), v9.i16[0] = vaddlv_u8(v9), v9.u32[0] > 1uLL))
    {
      v8 = std::__next_prime(v8);
    }

    else
    {
      v10 = 1 << -__clz(v8 - 1);
      if (v8 >= 2)
      {
        v8 = v10;
      }
    }

    if (prime <= v8)
    {
      prime = v8;
    }

    if (prime < *&v6)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  for (i = *(a2 + 32); i; i = *i)
  {
    sub_100184488((a1 + 16), i + 2);
  }

  v12 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_100184468(_Unwind_Exception *a1)
{
  sub_10018408C(v2);
  sub_10002BB1C(v1);
  _Unwind_Resume(a1);
}

const void ***sub_100184488(void *a1, uint64_t ***a2)
{
  v4 = sub_1001183C0(&v14, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (sub_1001182C8(v10 + 2, a2))
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (!sub_1001182C8(v10 + 2, a2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_1001847F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100184820(va);
  _Unwind_Resume(a1);
}

void sub_100184804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002BB1C(v2);
  sub_100184820(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100184820(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_10011B04C(v1 + 4);
      v3 = v1[3];
      if (v3)
      {
        if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v3->__on_zero_shared)(v3);
          std::__shared_weak_count::__release_weak(v3);
        }
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_1001848BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

__n128 sub_100184948(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_100184958(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  if (*v3 == v3[1])
  {
    v4 = 0;
  }

  else
  {
    v4 = *v3;
  }

  *v2 = v4;
  return result;
}

void sub_100184978()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001849E8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

id sub_100184A58()
{
  if (qword_10045B080 == -1)
  {
    v1 = qword_10045B088;
  }

  else
  {
    sub_100384BF8();
    v1 = qword_10045B088;
  }

  return v1;
}

uint64_t sub_100184AB0(uint64_t a1)
{
  sub_1000063E8(a1);

  return a1;
}

uint64_t sub_100184AE4(uint64_t a1)
{
  sub_100007ABC(a1, &__p);
  sub_100002F5C(&__p, 0, buf);
  if (*buf > 1u)
  {
    sub_100007BA8(&v3, &__p, 294914, 0);
    operator new();
  }

  if (qword_10045B080 != -1)
  {
    sub_100384BD0();
  }

  v1 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "doExpectedTablesExist, #warning expecting db to exist", buf, 2u);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_100185758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _Unwind_Exception *exception_objecta, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a48 < 0)
  {
    operator delete(__p);
    if ((a41 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a41 & 0x80000000) == 0)
  {
LABEL_3:
    if (a61 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  operator delete(a36);
  if (a61 < 0)
  {
LABEL_4:
    operator delete(a56);
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  if ((a54 & 0x80000000) == 0)
  {
LABEL_5:
    *(v80 - 192) = v78;
    if (*(v80 - 161) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a49);
  *(v80 - 192) = v78;
  if (*(v80 - 161) < 0)
  {
LABEL_6:
    operator delete(*(v80 - 184));
    if ((a67 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  if ((a67 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v80 - 160));
    v81 = a33;
    if (!a33)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v80 - 232));
      if (*(v80 - 233) < 0)
      {
        operator delete(*(v80 - 256));
        if (a73 < 0)
        {
LABEL_20:
          operator delete(a72);
          if ((a77 & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_25;
        }
      }

      else if (a73 < 0)
      {
        goto LABEL_20;
      }

      if ((a77 & 0x80000000) == 0)
      {
LABEL_21:
        if (a75 < 0)
        {
          goto LABEL_22;
        }

        goto LABEL_26;
      }

LABEL_25:
      operator delete(a76);
      if (a75 < 0)
      {
LABEL_22:
        operator delete(a74);
        if ((v79 & 1) == 0)
        {
LABEL_28:
          if (*(v80 - 193) < 0)
          {
            operator delete(*(v80 - 216));
          }

          sub_1001862C4(&a11);
          if (a19 < 0)
          {
            operator delete(a14);
          }

          if (a25 < 0)
          {
            operator delete(a20);
          }

          sub_1000065A0(&a26);
          if (a32 < 0)
          {
            operator delete(a27);
          }

          _Unwind_Resume(a1);
        }

LABEL_27:
        __cxa_free_exception(v77);
        goto LABEL_28;
      }

LABEL_26:
      if (!v79)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_15:
    a34 = v81;
    operator delete(v81);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a62);
  sub_10019FF4C((v80 - 160));
  v81 = a33;
  if (!a33)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_100185CF8(sqlite3 **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    os_activity_scope_enter(v8, &state);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  objc_storeStrong((a4 + 16), a3);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sqlite3_prepare_v2(*a1, v11, v12, a4, 0);
  sub_100001838(v13, *a1);
  if (v13)
  {
    v14 = __error();
    sub_10023B1C8(*v14, &v27);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v23, " w/ ");
    v15 = std::string::insert(&v23, 0, "Failed to prepare query");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v22, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v27;
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v24, v17, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v26, &v25);
    v26.__vftable = &off_100440BD8;
    sub_10010A984(v21);
  }

  *(a4 + 8) = *a1;
  if (v9)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100186048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a35 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a35 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a30);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a23);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_6:
    sub_10019FF4C((v71 - 184));
    v73 = a47;
    if (!a47)
    {
LABEL_14:
      std::runtime_error::~runtime_error((v71 - 200));
      if (*(v71 - 201) < 0)
      {
        operator delete(*(v71 - 224));
        if ((a55 & 0x80000000) == 0)
        {
LABEL_16:
          if ((a67 & 0x80000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        }
      }

      else if ((a55 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      operator delete(a50);
      if ((a67 & 0x80000000) == 0)
      {
LABEL_17:
        if (a61 < 0)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }

LABEL_22:
      operator delete(a62);
      if (a61 < 0)
      {
LABEL_18:
        operator delete(a56);
        if ((v70 & 1) == 0)
        {
LABEL_25:
          if (*(v71 - 97) < 0)
          {
            operator delete(*(v71 - 120));
            sub_1001862C4(v68);

            _Unwind_Resume(a1);
          }

          sub_1001862C4(v68);

          _Unwind_Resume(a1);
        }

LABEL_24:
        __cxa_free_exception(v69);
        goto LABEL_25;
      }

LABEL_23:
      if (!v70)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_13:
    operator delete(v73);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a37);
  sub_10019FF4C((v71 - 184));
  v73 = a47;
  if (!a47)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t sub_1001862C4(uint64_t a1)
{
  sub_1001B472C(a1);

  return a1;
}

uint64_t sub_1001862F8(uint64_t a1, __int128 *a2, uint64_t *a3, int a4)
{
  *a1 = &off_100440500;
  v7 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_100003228(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  v9 = dispatch_queue_create("com.apple.indoor.privacy.sql.localizer", 0);
  v11 = *a3;
  v10 = a3[1];
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 1065353216;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100186420;
  v13[3] = &unk_100440530;
  v13[4] = a1;
  v14 = a4;
  _os_activity_initiate(&_mh_execute_header, "opening db & validating consistency", OS_ACTIVITY_FLAG_DEFAULT, v13);
  return a1;
}

uint64_t sub_100186420(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_10045B080 != -1)
  {
    sub_100384BF8();
  }

  v3 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 40))
    {
      v4 = "Encrypted";
    }

    else
    {
      v4 = "EncryptedUntilFirstUser";
    }

    *buf = 136315138;
    *v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "making sure migration is unnecessary in %s DB", buf, 0xCu);
  }

  v5 = sub_10018675C(v2);
  v13 = v5;
  if (v5 == 2 || !v5 && HIDWORD(v5) == 17)
  {
    sub_100186B30(v2, 17);
    sub_100186C30(v2);
  }

  v6 = sub_100184A58();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_100186864(&v13, &__p);
    v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 68289795;
    *v15 = 0;
    *&v15[4] = 2082;
    *&v15[6] = "";
    v16 = 2082;
    v17 = v7;
    v18 = 2082;
    v19 = "assert";
    v20 = 2081;
    v21 = "currentVersion.dbOkForVersion(gDbVersion)";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Migration is not supported, version:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v8 = sub_100184A58();
  if (os_signpost_enabled(v8))
  {
    sub_100186864(&v13, &__p);
    v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 68289795;
    *v15 = 0;
    *&v15[4] = 2082;
    *&v15[6] = "";
    v16 = 2082;
    v17 = v9;
    v18 = 2082;
    v19 = "assert";
    v20 = 2081;
    v21 = "currentVersion.dbOkForVersion(gDbVersion)";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Migration is not supported", "{msg%{public}.0s:Migration is not supported, version:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v10 = sub_100184A58();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    sub_100186864(&v13, &__p);
    sub_100384C0C(&__p, buf, v10);
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

unint64_t sub_10018675C(uint64_t a1)
{
  v2 = sub_1000065A4(*(a1 + 40));
  if (qword_10045B080 == -1)
  {
    v3 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
    {
      return v2;
    }
  }

  else
  {
    sub_100384BF8();
    v3 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
    {
      return v2;
    }
  }

  v4 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v4 = *v4;
  }

  v6 = 136446466;
  v7 = v4;
  v8 = 1026;
  v9 = HIDWORD(v2);
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "privacy.db @ %{public}s found to have %{public}d", &v6, 0x12u);
  return v2;
}

void sub_100186864(unsigned __int8 *a1@<X0>, std::string *a2@<X8>)
{
  *(&v15.__r_.__value_.__s + 23) = 17;
  strcpy(&v15, "DbVersion(status=");
  v4 = *a1;
  if (v4 < 3)
  {
    std::string::append(&v15, (&off_1004416A8)[v4]);
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  if (size + 10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  if (size + 10 >= 0x17)
  {
    operator new();
  }

  memset(&v13, 0, sizeof(v13));
  *(&v13.__r_.__value_.__s + 23) = size + 10;
  if (size)
  {
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v15;
    }

    else
    {
      v6 = v15.__r_.__value_.__r.__words[0];
    }

    memmove(&v13, v6, size);
  }

  strcpy(&v13 + size, ", version=");
  std::to_string(&__p, *(a1 + 1));
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
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __p.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v13, p_p, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v14, ")");
  *a2 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_22:
      if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_28:
    operator delete(v15.__r_.__value_.__l.__data_);
    return;
  }

LABEL_27:
  operator delete(v13.__r_.__value_.__l.__data_);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }
}

void sub_100186A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if ((a33 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_100186B30(uint64_t a1, int a2)
{
  sub_100188384(*(a1 + 40), a2);
  if (qword_10045B080 == -1)
  {
    v4 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
    {
      return;
    }
  }

  else
  {
    sub_100384BF8();
    v4 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
    {
      return;
    }
  }

  v5 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v5 = *v5;
  }

  v6 = 136315394;
  v7 = v5;
  v8 = 1024;
  v9 = a2;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "user_version in privacy.db @ %s is now %d", &v6, 0x12u);
}

void sub_100186C30(uint64_t a1)
{
  if (qword_10045B080 != -1)
  {
    sub_100384BF8();
  }

  v2 = qword_10045B088;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Enabling foreign key support", buf, 2u);
  }

  sub_10000210C(*(a1 + 40), "PRAGMA foreign_keys = ON;", "Failed to turn on foreign key support");
  if (qword_10045B080 != -1)
  {
    sub_100384BD0();
  }

  v3 = qword_10045B088;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Creating table for venues", buf, 2u);
  }

  operator new();
}

void sub_1001879C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  if (*(v77 - 137) < 0)
  {
    operator delete(*(v77 - 160));
    if ((*(v77 - 169) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v77 - 201) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*(v77 - 169) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v77 - 192));
  if ((*(v77 - 201) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v77 - 233) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(v77 - 224));
  if ((*(v77 - 233) & 0x80000000) == 0)
  {
LABEL_5:
    if ((SLOBYTE(STACK[0x287]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*(v77 - 256));
  if ((SLOBYTE(STACK[0x287]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((SLOBYTE(STACK[0x267]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(STACK[0x270]);
  if ((SLOBYTE(STACK[0x267]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((SLOBYTE(STACK[0x247]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x250]);
  if ((SLOBYTE(STACK[0x247]) & 0x80000000) == 0)
  {
LABEL_8:
    if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(STACK[0x230]);
  if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x210]);
  if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((a76 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(a77);
  if ((a76 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a74 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(a75);
  if ((a74 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a72 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(a73);
  if ((a72 & 0x80000000) == 0)
  {
LABEL_13:
    if ((a66 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(a68);
  if ((a66 & 0x80000000) == 0)
  {
LABEL_14:
    if ((a59 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(a61);
  if ((a59 & 0x80000000) == 0)
  {
LABEL_15:
    if ((a52 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(a54);
  if ((a52 & 0x80000000) == 0)
  {
LABEL_16:
    if ((*(v77 - 105) & 0x80000000) == 0)
    {
LABEL_34:
      _Unwind_Resume(a1);
    }

LABEL_33:
    operator delete(*(v77 - 128));
    _Unwind_Resume(a1);
  }

LABEL_32:
  operator delete(a47);
  if ((*(v77 - 105) & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  goto LABEL_33;
}

uint64_t sub_10018800C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = std::promise<void>::promise(&v13);
  std::promise<void>::get_future(v3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019FA48;
  block[3] = &unk_1004406E8;
  block[4] = &v10;
  block[5] = &v13;
  dispatch_sync(v2, block);
  std::future<void>::get(&v12);
  std::future<void>::~future(&v12);
  std::promise<void>::~promise(&v13);

  v4 = *(a1 + 72);
  while (v4)
  {
    v5 = v4;
    v4 = *v4;
    if (v5[9])
    {
      operator delete(v5[7]);
    }

    if (v5[6])
    {
      operator delete(v5[4]);
    }

    v6 = v5[3];
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    operator delete(v5);
  }

  v7 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 48);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);

    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_16;
  }

  if (*(a1 + 31) < 0)
  {
LABEL_16:
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1001881F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::future<void> a17)
{
  std::future<void>::~future(&a17);
  std::promise<void>::~promise((v18 - 56));

  sub_10000D388(a1);
}

void sub_100188238(uint64_t a1)
{
  sub_10018800C(a1);

  operator delete();
}

void sub_100188270(char *__s@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v9 = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
  }

  *(&__dst + v7) = 0;
  sub_10023CBA0(a3, &__dst, *(a2 + 40), *(a2 + 32));
  if (v9 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100188368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100188384(sqlite3 **a1, int __val)
{
  std::to_string(&v8, __val);
  v3 = std::string::insert(&v8, 0, "PRAGMA user_version = ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v9, ";");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v11 = v5->__r_.__value_.__r.__words[2];
  v10 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v11 >= 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10;
  }

  sub_10000210C(a1, v7, "Failed to set user version");
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_6:
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_10:
      operator delete(v8.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v9.__r_.__value_.__l.__data_);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_10;
  }
}

void sub_100188480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a10);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1001884F4(uint64_t a1, char **a2)
{
  std::operator+<char>();
  v4 = std::string::append(&__dst, " FROM ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v50, "venues");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v51, " WHERE ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D0D7 >= 0)
  {
    v10 = &qword_10045D0C0;
  }

  else
  {
    v10 = qword_10045D0C0;
  }

  if (byte_10045D0D7 >= 0)
  {
    v11 = byte_10045D0D7;
  }

  else
  {
    v11 = *&byte_10045D0C8;
  }

  v12 = std::string::append(&v59, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  *&v60[16] = *(&v12->__r_.__value_.__l + 2);
  *v60 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(v60, " = ?;");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v49 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if ((v60[23] & 0x80000000) != 0)
  {
    operator delete(*v60);
    if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }
  }

  else if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v59.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_30:
    operator delete(v50.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_31:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_12;
  }

LABEL_29:
  operator delete(v51.__r_.__value_.__l.__data_);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }

LABEL_11:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_31;
  }

LABEL_12:
  sub_100185CF8(*(a1 + 40), __p, 0, &pStmt);
  v16 = sub_100118234(a2);
  sub_1001B48E4(&pStmt, 1, v16);
  v17 = 0;
  v18 = pStmt;
  for (i = pStmt; ; i = pStmt)
  {
    while (1)
    {
      v20 = sqlite3_step(i);
      v21 = v20;
      if (v20 != 100)
      {
        break;
      }

      if (v17)
      {
        v24 = sub_100184A58();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          v25 = sub_10011823C(a2);
          *v60 = 68289795;
          *&v60[8] = 2082;
          *&v60[10] = "";
          *&v60[18] = 2081;
          *&v60[20] = v25;
          v61 = 2082;
          v62 = "assert";
          v63 = 2081;
          v64 = "!result";
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Multiple matches for resource, resource:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v60, 0x30u);
        }

        v26 = sub_100184A58();
        if (os_signpost_enabled(v26))
        {
          v27 = sub_10011823C(a2);
          *v60 = 68289795;
          *&v60[8] = 2082;
          *&v60[10] = "";
          *&v60[18] = 2081;
          *&v60[20] = v27;
          v61 = 2082;
          v62 = "assert";
          v63 = 2081;
          v64 = "!result";
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Multiple matches for resource", "{msg%{public}.0s:Multiple matches for resource, resource:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v60, 0x30u);
        }

        v28 = sub_100184A58();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = sub_10011823C(a2);
          sub_100384CB4(v29, v60);
        }

        abort_report_np();
        __break(1u);
LABEL_63:
        sub_100384BD0();
LABEL_40:
        v30 = qword_10045B088;
        if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
        {
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Query constraint violation", v60, 2u);
        }

        __cxa_allocate_exception(0x40uLL);
        operator new();
      }

      if (sqlite3_column_type(v18, 0) == 5)
      {
        v17 = 1;
        goto LABEL_14;
      }

      sqlite3_column_int64(v18, 0);
      v17 = 1;
      i = pStmt;
    }

    if (v20 == 101)
    {
      break;
    }

    if (v20 == 19)
    {
      if (qword_10045B080 != -1)
      {
        goto LABEL_63;
      }

      goto LABEL_40;
    }

    sub_100001838(v20, db);
    if (v21)
    {
      v31 = __error();
      sub_10023B1C8(*v31, &__dst);
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v54, " w/ ");
      v32 = std::string::insert(&v54, 0, "Failed sqlite3_step");
      v33 = *&v32->__r_.__value_.__l.__data_;
      v55.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&v55.__r_.__value_.__l.__data_ = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(&v53, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v53 = __dst;
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v53;
      }

      else
      {
        v37 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v53.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&v55, v37, size);
      v40 = *&v39->__r_.__value_.__l.__data_;
      v56.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v56.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v57, &v56);
      v57.__vftable = &off_100440BD8;
      sub_10010A984(v52);
    }

LABEL_14:
    ;
  }

  v22 = sqlite3_reset(pStmt);
  sub_100001838(v22, db);
  if (v22)
  {
    v34 = __error();
    sub_10023B1C8(*v34, &__dst);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v54, " w/ ");
    v35 = std::string::insert(&v54, 0, "Failed to execute query");
    v36 = *&v35->__r_.__value_.__l.__data_;
    v55.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v55.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v53, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v53 = __dst;
    }

    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v53;
    }

    else
    {
      v41 = v53.__r_.__value_.__r.__words[0];
    }

    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v53.__r_.__value_.__l.__size_;
    }

    v43 = std::string::append(&v55, v41, v42);
    v44 = *&v43->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v57, &v56);
    v57.__vftable = &off_100440BD8;
    sub_10010A984(v52);
  }

  sub_1001B472C(&pStmt);

  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

  return v17;
}

void sub_100189150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
LABEL_3:
    if (a47 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  operator delete(a21);
  if (a47 < 0)
  {
LABEL_4:
    operator delete(a42);
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  if ((a40 & 0x80000000) == 0)
  {
LABEL_5:
    *(v77 - 176) = v75;
    if (*(v77 - 145) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a35);
  *(v77 - 176) = v75;
  if (*(v77 - 145) < 0)
  {
LABEL_6:
    operator delete(*(v77 - 168));
    if ((a53 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  if ((a53 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v77 - 144));
    v79 = a58;
    if (!a58)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v77 - 216));
      if (*(v77 - 217) < 0)
      {
        operator delete(*(v77 - 240));
        if (a66 < 0)
        {
LABEL_18:
          operator delete(a61);
          if ((a74 & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }
      }

      else if (a66 < 0)
      {
        goto LABEL_18;
      }

      if ((a74 & 0x80000000) == 0)
      {
LABEL_19:
        if (a72 < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

LABEL_24:
      operator delete(a73);
      if (a72 < 0)
      {
LABEL_20:
        operator delete(a67);
        if ((v76 & 1) == 0)
        {
LABEL_27:
          if (*(v77 - 177) < 0)
          {
            operator delete(*(v77 - 200));
          }

          sub_1001862C4(&a12);
          if (a20 < 0)
          {
            operator delete(a15);
          }

          _Unwind_Resume(a1);
        }

LABEL_26:
        __cxa_free_exception(v74);
        goto LABEL_27;
      }

LABEL_25:
      if (!v76)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_15:
    a59 = v79;
    operator delete(v79);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a48);
  sub_10019FF4C((v77 - 144));
  v79 = a58;
  if (!a58)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_1001896FC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2;
  v2 = *(a1 + 32);
  operator new();
}

void sub_1001898A4(_Unwind_Exception *a1)
{
  if (!atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  sub_1001A46B4((v4 - 56));

  _Unwind_Resume(a1);
}

uint64_t sub_100189920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6[0] = off_1004413A0;
  v6[1] = a2;
  v7 = v6;
  v4[0] = off_100441430;
  v4[1] = a2;
  v5 = v4;
  sub_100189AB0(a1, 1, v6, a3);
  if (v5 != v4)
  {
    if (v5)
    {
      (*(*v5 + 40))();
    }

    result = v7;
    if (v7 != v6)
    {
      goto LABEL_5;
    }

    return (*(*result + 32))(result);
  }

  (*(*v5 + 32))(v5);
  result = v7;
  if (v7 == v6)
  {
    return (*(*result + 32))(result);
  }

LABEL_5:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_100189A94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10018C07C(va);
  sub_10018C108(va1);
  _Unwind_Resume(a1);
}

void sub_100189AB0(uint64_t a1@<X0>, int a2@<W1>, std::chrono::duration<long long, std::ratio<1, 1000000>>::rep rep@<X2>, _BYTE *a4@<X8>)
{
  memset(&v101, 0, sizeof(v101));
  memset(&v100, 0, sizeof(v100));
  if (a2 == 1)
  {
    v7 = &qword_10045D0C0;
    std::string::operator=(&v101, &qword_10045D0F0);
  }

  else
  {
    if (a2)
    {
      goto LABEL_6;
    }

    std::string::operator=(&v101, &qword_10045D0C0);
    v7 = &qword_10045D0F0;
  }

  std::string::operator=(&v100, v7);
LABEL_6:
  std::operator+<char>();
  v8 = std::string::append(&v92, ", ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v93.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v93.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D0EF >= 0)
  {
    v10 = &qword_10045D0D8;
  }

  else
  {
    v10 = qword_10045D0D8;
  }

  if (byte_10045D0EF >= 0)
  {
    v11 = byte_10045D0EF;
  }

  else
  {
    v11 = *&byte_10045D0E0;
  }

  v12 = std::string::append(&v93, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v94.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v94.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v94, ", ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v95.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v95.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D17F >= 0)
  {
    v16 = &qword_10045D168;
  }

  else
  {
    v16 = qword_10045D168;
  }

  if (byte_10045D17F >= 0)
  {
    v17 = byte_10045D17F;
  }

  else
  {
    v17 = unk_10045D170;
  }

  v18 = std::string::append(&v95, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v96.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v96.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v96, ", ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v97.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v97.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D137 >= 0)
  {
    v22 = &xmmword_10045D120;
  }

  else
  {
    v22 = xmmword_10045D120;
  }

  if (byte_10045D137 >= 0)
  {
    v23 = byte_10045D137;
  }

  else
  {
    v23 = *(&xmmword_10045D120 + 1);
  }

  v24 = std::string::append(&v97, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v102.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v102.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v102, ", ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v103.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v103.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D197 >= 0)
  {
    v28 = &xmmword_10045D180;
  }

  else
  {
    v28 = xmmword_10045D180;
  }

  if (byte_10045D197 >= 0)
  {
    v29 = byte_10045D197;
  }

  else
  {
    v29 = *(&xmmword_10045D180 + 1);
  }

  v30 = std::string::append(&v103, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v104.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v104.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v104, ", ");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v105.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v105.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D14F >= 0)
  {
    v34 = &qword_10045D138;
  }

  else
  {
    v34 = qword_10045D138;
  }

  if (byte_10045D14F >= 0)
  {
    v35 = byte_10045D14F;
  }

  else
  {
    v35 = *&dword_10045D140;
  }

  v36 = std::string::append(&v105, v34, v35);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v110.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&v110.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v38 = std::string::append(&v110, ", ");
  v39 = *&v38->__r_.__value_.__l.__data_;
  v111.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v111.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D167 >= 0)
  {
    v40 = &qword_10045D150;
  }

  else
  {
    v40 = qword_10045D150;
  }

  if (byte_10045D167 >= 0)
  {
    v41 = byte_10045D167;
  }

  else
  {
    v41 = qword_10045D158;
  }

  v42 = std::string::append(&v111, v40, v41);
  v43 = *&v42->__r_.__value_.__l.__data_;
  v106.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
  *&v106.__r_.__value_.__l.__data_ = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  v44 = std::string::append(&v106, ", ");
  v45 = *&v44->__r_.__value_.__l.__data_;
  v112.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&v112.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D11F >= 0)
  {
    v46 = &qword_10045D108;
  }

  else
  {
    v46 = qword_10045D108;
  }

  if (byte_10045D11F >= 0)
  {
    v47 = byte_10045D11F;
  }

  else
  {
    v47 = unk_10045D110;
  }

  v48 = std::string::append(&v112, v46, v47);
  v49 = *&v48->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  v50 = std::string::append(&__dst, " FROM ");
  v51 = *&v50->__r_.__value_.__l.__data_;
  v108.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
  *&v108.__r_.__value_.__l.__data_ = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  v52 = std::string::append(&v108, "venues");
  v53 = *&v52->__r_.__value_.__l.__data_;
  v109.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
  *&v109.__r_.__value_.__l.__data_ = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  v54 = std::string::append(&v109, " WHERE ");
  v55 = *&v54->__r_.__value_.__l.__data_;
  v107.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
  *&v107.__r_.__value_.__l.__data_ = v55;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = &v100;
  }

  else
  {
    v56 = v100.__r_.__value_.__r.__words[0];
  }

  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v100.__r_.__value_.__l.__size_;
  }

  v58 = std::string::append(&v107, v56, size);
  v59 = *&v58->__r_.__value_.__l.__data_;
  *&v113[16] = *(&v58->__r_.__value_.__l + 2);
  *v113 = v59;
  v58->__r_.__value_.__l.__size_ = 0;
  v58->__r_.__value_.__r.__words[2] = 0;
  v58->__r_.__value_.__r.__words[0] = 0;
  v60 = std::string::append(v113, " = ?;");
  v61 = *&v60->__r_.__value_.__l.__data_;
  v99 = v60->__r_.__value_.__r.__words[2];
  __p = v61;
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  if ((v113[23] & 0x80000000) != 0)
  {
    operator delete(*v113);
    if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_56:
      if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_111;
    }
  }

  else if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_56;
  }

  operator delete(v107.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_57:
    if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_112;
  }

LABEL_111:
  operator delete(v109.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_113;
  }

LABEL_112:
  operator delete(v108.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_59:
    if ((SHIBYTE(v112.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_114;
  }

LABEL_113:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v112.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_60:
    if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_115;
  }

LABEL_114:
  operator delete(v112.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_61:
    if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_116;
  }

LABEL_115:
  operator delete(v106.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_62:
    if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_117;
  }

LABEL_116:
  operator delete(v111.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_63:
    if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_118;
  }

LABEL_117:
  operator delete(v110.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_64:
    if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_119;
  }

LABEL_118:
  operator delete(v105.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_65:
    if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_120;
  }

LABEL_119:
  operator delete(v104.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_66:
    if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_121;
  }

LABEL_120:
  operator delete(v103.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_67:
    if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_122;
  }

LABEL_121:
  operator delete(v102.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_68:
    if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_123;
  }

LABEL_122:
  operator delete(v97.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_69:
    if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_124;
  }

LABEL_123:
  operator delete(v96.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_70:
    if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_125;
  }

LABEL_124:
  operator delete(v95.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_71:
    if ((SHIBYTE(v93.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

LABEL_126:
    operator delete(v93.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_127:
    operator delete(v92.__r_.__value_.__l.__data_);
    goto LABEL_73;
  }

LABEL_125:
  operator delete(v94.__r_.__value_.__l.__data_);
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_126;
  }

LABEL_72:
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_127;
  }

LABEL_73:
  *a4 = 0;
  sub_10018C550(*(a1 + 40), &__p, 0, &v97);
  v62 = *(rep + 24);
  if (!v62)
  {
    sub_1000DB498();
  }

  (*(*v62 + 48))(v62, &v97);
  v63 = v97.__r_.__value_.__r.__words[0];
  v93.__r_.__value_.__r.__words[0] = v97.__r_.__value_.__r.__words[0];
  while (1)
  {
    v64 = sqlite3_step(v63);
    v65 = v64;
    if (v64 == 100)
    {
      sub_1001B6448(&v93, v113);
      v110.__r_.__value_.__r.__words[0] = *&v113[16];
      *(v110.__r_.__value_.__r.__words + 7) = *&v113[23];
      if (sqlite3_column_type(v93.__r_.__value_.__l.__data_, 2) == 5 || sqlite3_column_type(v93.__r_.__value_.__l.__data_, 3) == 5)
      {
        if ((sqlite3_column_type(v93.__r_.__value_.__l.__data_, 2) == 5 || sqlite3_column_type(v93.__r_.__value_.__l.__data_, 3) == 5) && (sqlite3_column_type(v93.__r_.__value_.__l.__data_, 2) != 5 || sqlite3_column_type(v93.__r_.__value_.__l.__data_, 3) != 5))
        {
          v72 = sub_100184A58();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
          {
            *v113 = 68289539;
            *&v113[8] = 2082;
            *&v113[10] = "";
            *&v113[18] = 2082;
            *&v113[20] = "assert";
            *&v113[28] = 2081;
            *&v113[30] = "results.isNull<2>() && results.isNull<3>()";
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Metadata version/refresh timestamp is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v113, 0x26u);
          }

          v73 = sub_100184A58();
          if (os_signpost_enabled(v73))
          {
            *v113 = 68289539;
            *&v113[8] = 2082;
            *&v113[10] = "";
            *&v113[18] = 2082;
            *&v113[20] = "assert";
            *&v113[28] = 2081;
            *&v113[30] = "results.isNull<2>() && results.isNull<3>()";
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v73, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Metadata version/refresh timestamp is missing", "{msg%{public}.0s:Metadata version/refresh timestamp is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v113, 0x26u);
          }

          v74 = sub_100184A58();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            *v113 = 68289539;
            *&v113[8] = 2082;
            *&v113[10] = "";
            *&v113[18] = 2082;
            *&v113[20] = "assert";
            *&v113[28] = 2081;
            *&v113[30] = "results.isNull<2>() && results.isNull<3>()";
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Metadata version/refresh timestamp is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v113, 0x26u);
          }

          goto LABEL_144;
        }
      }

      else
      {
        if (sqlite3_column_type(v93.__r_.__value_.__l.__data_, 2) != 5)
        {
          sqlite3_column_type(v93.__r_.__value_.__l.__data_, 2);
          v66 = sqlite3_column_int64(v93.__r_.__value_.__l.__data_, 2);
          rep = std::chrono::system_clock::from_time_t(v66).__d_.__rep_;
        }

        sqlite3_column_type(v93.__r_.__value_.__l.__data_, 3);
        v67 = sqlite3_column_int64(v93.__r_.__value_.__l.__data_, 3);
        sub_10026F654(v113, v67, rep);
        *(__dst.__r_.__value_.__r.__words + 7) = *v113;
      }

      if (sqlite3_column_type(v93.__r_.__value_.__l.__data_, 4) != 5 && sqlite3_column_type(v93.__r_.__value_.__l.__data_, 5) != 5)
      {
        if (sqlite3_column_type(v93.__r_.__value_.__l.__data_, 4) != 5)
        {
          sqlite3_column_type(v93.__r_.__value_.__l.__data_, 4);
          v68 = sqlite3_column_int64(v93.__r_.__value_.__l.__data_, 4);
          rep = std::chrono::system_clock::from_time_t(v68).__d_.__rep_;
        }

        sqlite3_column_type(v93.__r_.__value_.__l.__data_, 5);
        v69 = sqlite3_column_int64(v93.__r_.__value_.__l.__data_, 5);
        sub_10026F654(v113, v69, rep);
        *(v112.__r_.__value_.__r.__words + 7) = *v113;
LABEL_101:
        if (sqlite3_column_type(v93.__r_.__value_.__l.__data_, 6) != 5)
        {
          sqlite3_column_type(v93.__r_.__value_.__l.__data_, 6);
          v70 = sqlite3_column_int64(v93.__r_.__value_.__l.__data_, 6);
          std::chrono::system_clock::from_time_t(v70);
        }

        sub_10011819C();
      }

      if (sqlite3_column_type(v93.__r_.__value_.__l.__data_, 4) != 5 && sqlite3_column_type(v93.__r_.__value_.__l.__data_, 5) != 5 || sqlite3_column_type(v93.__r_.__value_.__l.__data_, 4) == 5 && sqlite3_column_type(v93.__r_.__value_.__l.__data_, 5) == 5)
      {
        goto LABEL_101;
      }

      v75 = sub_100184A58();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
      {
        *v113 = 68289539;
        *&v113[8] = 2082;
        *&v113[10] = "";
        *&v113[18] = 2082;
        *&v113[20] = "assert";
        *&v113[28] = 2081;
        *&v113[30] = "results.isNull<4>() && results.isNull<5>()";
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Tile version/refresh timestamp is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v113, 0x26u);
      }

      v76 = sub_100184A58();
      if (os_signpost_enabled(v76))
      {
        *v113 = 68289539;
        *&v113[8] = 2082;
        *&v113[10] = "";
        *&v113[18] = 2082;
        *&v113[20] = "assert";
        *&v113[28] = 2081;
        *&v113[30] = "results.isNull<4>() && results.isNull<5>()";
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v76, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Tile version/refresh timestamp is missing", "{msg%{public}.0s:Tile version/refresh timestamp is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v113, 0x26u);
      }

      v74 = sub_100184A58();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        *v113 = 68289539;
        *&v113[8] = 2082;
        *&v113[10] = "";
        *&v113[18] = 2082;
        *&v113[20] = "assert";
        *&v113[28] = 2081;
        *&v113[30] = "results.isNull<4>() && results.isNull<5>()";
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Tile version/refresh timestamp is missing, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v113, 0x26u);
      }

LABEL_144:

      abort_report_np();
      __break(1u);
LABEL_170:
      sub_100384BD0();
LABEL_148:
      v80 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
      {
        *v113 = 0;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "Query constraint violation", v113, 2u);
      }

      __cxa_allocate_exception(0x40uLL);
      operator new();
    }

    if (v64 == 101)
    {
      break;
    }

    if (v64 == 19)
    {
      if (qword_10045B080 == -1)
      {
        goto LABEL_148;
      }

      goto LABEL_170;
    }

    sub_100001838(v64, v97.__r_.__value_.__l.__size_);
    if (v65)
    {
      v77 = __error();
      sub_10023B1C8(*v77, &__dst);
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v111, " w/ ");
      v78 = std::string::insert(&v111, 0, "Failed sqlite3_step");
      v79 = *&v78->__r_.__value_.__l.__data_;
      v106.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
      *&v106.__r_.__value_.__l.__data_ = v79;
      v78->__r_.__value_.__l.__size_ = 0;
      v78->__r_.__value_.__r.__words[2] = 0;
      v78->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(&v110, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v110 = __dst;
      }

      if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v84 = &v110;
      }

      else
      {
        v84 = v110.__r_.__value_.__r.__words[0];
      }

      if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v85 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v85 = v110.__r_.__value_.__l.__size_;
      }

      v86 = std::string::append(&v106, v84, v85);
      v87 = *&v86->__r_.__value_.__l.__data_;
      v112.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
      *&v112.__r_.__value_.__l.__data_ = v87;
      v86->__r_.__value_.__l.__size_ = 0;
      v86->__r_.__value_.__r.__words[2] = 0;
      v86->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v96, &v112);
      v96.__r_.__value_.__r.__words[0] = &off_100440BD8;
      sub_10010A984(&v105);
    }

    v63 = v97.__r_.__value_.__r.__words[0];
  }

  v71 = sqlite3_reset(v97.__r_.__value_.__l.__data_);
  sub_100001838(v71, v97.__r_.__value_.__l.__size_);
  if (v71)
  {
    v81 = __error();
    sub_10023B1C8(*v81, &__dst);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v111, " w/ ");
    v82 = std::string::insert(&v111, 0, "Failed to execute query");
    v83 = *&v82->__r_.__value_.__l.__data_;
    v106.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
    *&v106.__r_.__value_.__l.__data_ = v83;
    v82->__r_.__value_.__l.__size_ = 0;
    v82->__r_.__value_.__r.__words[2] = 0;
    v82->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v110, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v110 = __dst;
    }

    if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v88 = &v110;
    }

    else
    {
      v88 = v110.__r_.__value_.__r.__words[0];
    }

    if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v89 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v89 = v110.__r_.__value_.__l.__size_;
    }

    v90 = std::string::append(&v106, v88, v89);
    v91 = *&v90->__r_.__value_.__l.__data_;
    v112.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
    *&v112.__r_.__value_.__l.__data_ = v91;
    v90->__r_.__value_.__l.__size_ = 0;
    v90->__r_.__value_.__r.__words[2] = 0;
    v90->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v96, &v112);
    v96.__r_.__value_.__r.__words[0] = &off_100440BD8;
    sub_10010A984(&v105);
  }

  sub_1001B6290(&v97);

  if (SHIBYTE(v99) < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_129;
    }

LABEL_107:
    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_130:
      operator delete(v101.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_107;
    }

LABEL_129:
    operator delete(v100.__r_.__value_.__l.__data_);
    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_130;
    }
  }
}

void sub_10018B734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, std::runtime_error a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  STACK[0x210] = v81;
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
    if ((a64 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a64 & 0x80000000) == 0)
  {
LABEL_3:
    STACK[0x230] = v80;
    if (SLOBYTE(STACK[0x24F]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  operator delete(a59);
  STACK[0x230] = v80;
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x238]);
    if ((a71 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  if ((a71 & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x20F]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a66);
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
LABEL_6:
    operator delete(a78);
    if ((a73 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  if ((a73 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C(&STACK[0x2B0]);
    v85 = a74;
    if (!a74)
    {
LABEL_16:
      std::runtime_error::~runtime_error(&a33);
      if (SLOBYTE(STACK[0x2A7]) < 0)
      {
        operator delete(STACK[0x290]);
        if (SLOBYTE(STACK[0x267]) < 0)
        {
LABEL_20:
          operator delete(STACK[0x250]);
          if ((a77 & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_25;
        }
      }

      else if (SLOBYTE(STACK[0x267]) < 0)
      {
        goto LABEL_20;
      }

      if ((a77 & 0x80000000) == 0)
      {
LABEL_21:
        if (SLOBYTE(STACK[0x287]) < 0)
        {
          goto LABEL_22;
        }

        goto LABEL_26;
      }

LABEL_25:
      operator delete(a76);
      if (SLOBYTE(STACK[0x287]) < 0)
      {
LABEL_22:
        operator delete(STACK[0x270]);
        if ((v79 & 1) == 0)
        {
LABEL_28:
          if (*(v83 - 105) < 0)
          {
            operator delete(*(v83 - 128));
          }

          sub_10018CB1C(&a36);
          sub_10018CB50(v78);
          if (a45 < 0)
          {
            operator delete(a40);
          }

          v86 = a1;
          if (a52 < 0)
          {
            operator delete(a47);
            v86 = a1;
          }

          if (a58 < 0)
          {
            v87 = v86;
            operator delete(a53);
            _Unwind_Resume(v87);
          }

          _Unwind_Resume(v86);
        }

LABEL_27:
        __cxa_free_exception(v82);
        goto LABEL_28;
      }

LABEL_26:
      if (!v79)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_15:
    a75 = v85;
    operator delete(v85);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a72);
  sub_10019FF4C(&STACK[0x2B0]);
  v85 = a74;
  if (!a74)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

uint64_t sub_10018C07C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_10018C108(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_10018C194(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = &v5;
  v5 = a2;
  v2 = *(a1 + 32);
  operator new();
}

void sub_10018C344(_Unwind_Exception *a1)
{
  if (!atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  sub_1001A46B4((v4 - 56));

  _Unwind_Resume(a1);
}

uint64_t sub_10018C3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6[0] = off_1004414C0;
  v6[1] = a2;
  v7 = v6;
  v4[0] = off_100441540;
  v4[1] = a2;
  v5 = v4;
  sub_100189AB0(a1, 0, v6, a3);
  if (v5 != v4)
  {
    if (v5)
    {
      (*(*v5 + 40))();
    }

    result = v7;
    if (v7 != v6)
    {
      goto LABEL_5;
    }

    return (*(*result + 32))(result);
  }

  (*(*v5 + 32))(v5);
  result = v7;
  if (v7 == v6)
  {
    return (*(*result + 32))(result);
  }

LABEL_5:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_10018C534(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10018C07C(va);
  sub_10018C108(va1);
  _Unwind_Resume(a1);
}

void sub_10018C550(sqlite3 **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    os_activity_scope_enter(v8, &state);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  objc_storeStrong((a4 + 16), a3);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sqlite3_prepare_v2(*a1, v11, v12, a4, 0);
  sub_100001838(v13, *a1);
  if (v13)
  {
    v14 = __error();
    sub_10023B1C8(*v14, &v27);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v23, " w/ ");
    v15 = std::string::insert(&v23, 0, "Failed to prepare query");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v22, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v27;
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v24, v17, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v26, &v25);
    v26.__vftable = &off_100440BD8;
    sub_10010A984(v21);
  }

  *(a4 + 8) = *a1;
  if (v9)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10018C8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a35 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a35 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a30);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a23);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_6:
    sub_10019FF4C((v71 - 184));
    v73 = a47;
    if (!a47)
    {
LABEL_14:
      std::runtime_error::~runtime_error((v71 - 200));
      if (*(v71 - 201) < 0)
      {
        operator delete(*(v71 - 224));
        if ((a55 & 0x80000000) == 0)
        {
LABEL_16:
          if ((a67 & 0x80000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        }
      }

      else if ((a55 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      operator delete(a50);
      if ((a67 & 0x80000000) == 0)
      {
LABEL_17:
        if (a61 < 0)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }

LABEL_22:
      operator delete(a62);
      if (a61 < 0)
      {
LABEL_18:
        operator delete(a56);
        if ((v70 & 1) == 0)
        {
LABEL_25:
          if (*(v71 - 97) < 0)
          {
            operator delete(*(v71 - 120));
            sub_10018CB1C(v68);

            _Unwind_Resume(a1);
          }

          sub_10018CB1C(v68);

          _Unwind_Resume(a1);
        }

LABEL_24:
        __cxa_free_exception(v69);
        goto LABEL_25;
      }

LABEL_23:
      if (!v70)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_13:
    operator delete(v73);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a37);
  sub_10019FF4C((v71 - 184));
  v73 = a47;
  if (!a47)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t sub_10018CB1C(uint64_t a1)
{
  sub_1001B6290(a1);

  return a1;
}

uint64_t sub_10018CB50(uint64_t result)
{
  if (*result == 1)
  {
    if (*(result + 136) == 1)
    {
      *(result + 136) = 0;
      if (*(result + 120) != 1)
      {
LABEL_4:
        if (*(result + 96) != 1)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if (*(result + 120) != 1)
    {
      goto LABEL_4;
    }

    *(result + 120) = 0;
    if (*(result + 96) != 1)
    {
LABEL_5:
      if (*(result + 72) != 1)
      {
LABEL_7:
        v1 = *(result + 40);
        if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v3 = result;
          (v1->__on_zero_shared)(v1);
          std::__shared_weak_count::__release_weak(v1);
          result = v3;
          if ((*(v3 + 31) & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        else if ((*(result + 31) & 0x80000000) == 0)
        {
LABEL_11:
          *result = 0;
          return result;
        }

        v2 = result;
        operator delete(*(result + 8));
        result = v2;
        goto LABEL_11;
      }

LABEL_6:
      *(result + 72) = 0;
      goto LABEL_7;
    }

LABEL_15:
    *(result + 96) = 0;
    if (*(result + 72) != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  return result;
}

void sub_10018CC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F41FC(a2);
  v5 = sub_100118234(v4);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = sub_1000045A4(buf, v7, v8);
  if (qword_10045B080 != -1)
  {
    sub_100384BD0();
  }

  v10 = qword_10045B088;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = sub_1001F41FC(a2);
    v12 = sub_10011823C(v11);
    buf[0] = 136380931;
    *&buf[1] = v12;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Insert or update resource %{private}s (%lu)", buf, 0x16u);
  }

  v14 = a1;
  v15 = a2;
  v13 = *(a1 + 32);
  operator new();
}

void sub_10018CF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (!atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v5 + 16))(v5);
  }

  sub_1001A4E74(va);

  _Unwind_Resume(a1);
}

uint64_t sub_10018D008(uint64_t a1, uint64_t a2)
{
  *(&v80.__r_.__value_.__s + 23) = 21;
  strcpy(&v80, "INSERT OR ABORT INTO ");
  v4 = std::string::append(&v80, "venues");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v82.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v82.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v82, " VALUES (?, ?, (SELECT IFNULL(MAX(");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v73.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v73.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D107 >= 0)
  {
    v8 = &qword_10045D0F0;
  }

  else
  {
    v8 = qword_10045D0F0;
  }

  if (byte_10045D107 >= 0)
  {
    v9 = byte_10045D107;
  }

  else
  {
    v9 = *&byte_10045D0F8;
  }

  v10 = std::string::append(&v73, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v74.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v74.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v74, "), 0) + 1 FROM ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v75, "venues");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v83.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v83.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v83, "), ?, ?, ?, ?, ?, ?, ?, NULL);");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v72 = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_63;
    }
  }

  else if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v75.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_64;
  }

LABEL_63:
  operator delete(v74.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_65:
    operator delete(v82.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_66:
    operator delete(v80.__r_.__value_.__l.__data_);
    goto LABEL_13;
  }

LABEL_64:
  operator delete(v73.__r_.__value_.__l.__data_);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_65;
  }

LABEL_12:
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_66;
  }

LABEL_13:
  sub_10018E2A4(*(a1 + 40), __p, 0, &pStmt);
  v18 = sub_1001F41FC(a2);
  v19 = sub_100118234(v18);
  sub_1001B6710(&pStmt, 1, v19);
  v20 = nullsub_35(a2);
  sub_1001B6710(&pStmt, 2, v20);
  v21 = sub_10026FAF0(a2);
  if (v21)
  {
    v22 = 2 * (v21 == 1);
  }

  else
  {
    v22 = 1;
  }

  sub_1001B6D98(&pStmt, 3, v22);
  sub_10026FB18(a2, &v83);
  if (v83.__r_.__value_.__s.__data_[0] == 1)
  {
    v75.__r_.__value_.__r.__words[0] = v83.__r_.__value_.__l.__size_;
    v23 = std::chrono::system_clock::to_time_t(&v75);
    sub_1001B7918(&pStmt, 4, v23);
  }

  else
  {
    sub_1001B7358(&pStmt, 4);
  }

  if (sub_10026FAF8(a2))
  {
    sub_1001B7918(&pStmt, 5, v24);
  }

  else
  {
    sub_1001B7358(&pStmt, 5);
  }

  sub_10026FB60(a2, &v83);
  if (v83.__r_.__value_.__s.__data_[0] == 1)
  {
    v75.__r_.__value_.__r.__words[0] = v83.__r_.__value_.__l.__size_;
    v25 = std::chrono::system_clock::to_time_t(&v75);
    sub_1001B7918(&pStmt, 6, v25);
  }

  else
  {
    sub_1001B7358(&pStmt, 6);
  }

  if (sub_10026FB40(a2))
  {
    sub_1001B7918(&pStmt, 7, v26);
  }

  else
  {
    sub_1001B7358(&pStmt, 7);
  }

  v27 = sub_10026FB88(a2);
  if (*v27 == 1)
  {
    v83.__r_.__value_.__r.__words[0] = *(v27 + 8);
    v28 = std::chrono::system_clock::to_time_t(&v83);
    sub_1001B7918(&pStmt, 8, v28);
  }

  else
  {
    sub_1001B7358(&pStmt, 8);
  }

  sub_10026FBEC(a2, &v83);
  if (v83.__r_.__value_.__s.__data_[0] == 1)
  {
    v75.__r_.__value_.__r.__words[0] = v83.__r_.__value_.__l.__size_;
    v29 = std::chrono::system_clock::to_time_t(&v75);
    sub_1001B7918(&pStmt, 9, v29);
  }

  else
  {
    sub_1001B7358(&pStmt, 9);
  }

  while (1)
  {
    while (1)
    {
      do
      {
        v30 = sqlite3_step(pStmt);
        v31 = v30;
      }

      while (v30 == 100);
      if (v30 == 101)
      {
        break;
      }

      if (v30 == 19)
      {
        if (qword_10045B080 != -1)
        {
          sub_100384BD0();
        }

        v33 = qword_10045B088;
        if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
        {
          LOWORD(v83.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Query constraint violation", &v83, 2u);
        }

        if (sqlite3_reset(pStmt) != 19)
        {
          sub_100001838(v31, db);
          v53 = __error();
          sub_10023B1C8(*v53, &v82);
          __cxa_allocate_exception(0x40uLL);
          sub_1000474A4(&v78, " w/ ");
          v54 = std::string::insert(&v78, 0, "Failed sqlite3_step");
          v55 = *&v54->__r_.__value_.__l.__data_;
          v79.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
          *&v79.__r_.__value_.__l.__data_ = v55;
          v54->__r_.__value_.__l.__size_ = 0;
          v54->__r_.__value_.__r.__words[2] = 0;
          v54->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100003228(&v77, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
          }

          else
          {
            v77 = v82;
          }

          if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v64 = &v77;
          }

          else
          {
            v64 = v77.__r_.__value_.__r.__words[0];
          }

          if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v77.__r_.__value_.__l.__size_;
          }

          v66 = std::string::append(&v79, v64, size);
          v67 = *&v66->__r_.__value_.__l.__data_;
          v80.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
          *&v80.__r_.__value_.__l.__data_ = v67;
          v66->__r_.__value_.__l.__size_ = 0;
          v66->__r_.__value_.__r.__words[2] = 0;
          v66->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(&v81, &v80);
          v81.__vftable = &off_100440BD8;
          sub_10010A984(v76);
        }

        goto LABEL_47;
      }

      sub_100001838(v30, db);
      if (v31)
      {
        v47 = __error();
        sub_10023B1C8(*v47, &v82);
        __cxa_allocate_exception(0x40uLL);
        sub_1000474A4(&v78, " w/ ");
        v48 = std::string::insert(&v78, 0, "Failed sqlite3_step");
        v49 = *&v48->__r_.__value_.__l.__data_;
        v79.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
        *&v79.__r_.__value_.__l.__data_ = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100003228(&v77, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
        }

        else
        {
          v77 = v82;
        }

        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &v77;
        }

        else
        {
          v56 = v77.__r_.__value_.__r.__words[0];
        }

        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v57 = v77.__r_.__value_.__l.__size_;
        }

        v58 = std::string::append(&v79, v56, v57);
        v59 = *&v58->__r_.__value_.__l.__data_;
        v80.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
        *&v80.__r_.__value_.__l.__data_ = v59;
        v58->__r_.__value_.__l.__size_ = 0;
        v58->__r_.__value_.__r.__words[2] = 0;
        v58->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(&v81, &v80);
        v81.__vftable = &off_100440BD8;
        sub_10010A984(v76);
      }
    }

    v32 = sqlite3_reset(pStmt);
    sub_100001838(v32, db);
    if (v32)
    {
      v50 = __error();
      sub_10023B1C8(*v50, &v82);
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v78, " w/ ");
      v51 = std::string::insert(&v78, 0, "Failed to execute query");
      v52 = *&v51->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(&v77, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
      }

      else
      {
        v77 = v82;
      }

      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = &v77;
      }

      else
      {
        v60 = v77.__r_.__value_.__r.__words[0];
      }

      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v61 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v61 = v77.__r_.__value_.__l.__size_;
      }

      v62 = std::string::append(&v79, v60, v61);
      v63 = *&v62->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v81, &v80);
      v81.__vftable = &off_100440BD8;
      sub_10010A984(v76);
    }

LABEL_47:
    v34 = sub_1001F41FC(a2);
    if (sub_1001884F4(a1, v34))
    {
      break;
    }

    if (qword_10045B080 != -1)
    {
      sub_100384BD0();
    }

    v36 = qword_10045B088;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = sub_1001F41FC(a2);
      v38 = sub_10011823C(v37);
      v39 = sub_1001F41FC(a2);
      v40 = sub_100118234(v39);
      v41 = *(v40 + 23);
      if (v41 >= 0)
      {
        v42 = v40;
      }

      else
      {
        v42 = *v40;
      }

      if (v41 >= 0)
      {
        v43 = *(v40 + 23);
      }

      else
      {
        v43 = *(v40 + 8);
      }

      v44 = sub_1000045A4(&v75, v42, v43);
      LODWORD(v83.__r_.__value_.__l.__data_) = 136380931;
      *(v83.__r_.__value_.__r.__words + 4) = v38;
      WORD2(v83.__r_.__value_.__r.__words[1]) = 2048;
      *(&v83.__r_.__value_.__r.__words[1] + 6) = v44;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Failed to insert resource %{private}s (%lu). Retrying", &v83, 0x16u);
    }
  }

  v45 = v35;
  sub_1001B6558(&pStmt);

  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p[0]);
  }

  return v45;
}

void sub_10018DE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a33 < 0)
  {
    operator delete(a28);
    if (a26 < 0)
    {
LABEL_3:
      operator delete(__p);
      if (a47 < 0)
      {
LABEL_7:
        operator delete(a42);
        if ((a40 & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

LABEL_12:
      if ((a40 & 0x80000000) == 0)
      {
LABEL_8:
        if (a61 < 0)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }

LABEL_13:
      operator delete(a35);
      if (a61 < 0)
      {
LABEL_9:
        operator delete(a56);
        if ((a54 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      if ((a54 & 0x80000000) == 0)
      {
LABEL_10:
        sub_10019FF4C((v78 - 176));
        v80 = a67;
        if (!a67)
        {
LABEL_17:
          std::runtime_error::~runtime_error((v78 - 224));
          if (*(v78 - 233) < 0)
          {
            operator delete(*(v78 - 256));
            if (a72 < 0)
            {
LABEL_21:
              operator delete(a70);
              if ((a76 & 0x80000000) == 0)
              {
                goto LABEL_22;
              }

              goto LABEL_26;
            }
          }

          else if (a72 < 0)
          {
            goto LABEL_21;
          }

          if ((a76 & 0x80000000) == 0)
          {
LABEL_22:
            if (a74 < 0)
            {
              goto LABEL_23;
            }

            goto LABEL_27;
          }

LABEL_26:
          operator delete(a75);
          if (a74 < 0)
          {
LABEL_23:
            operator delete(a73);
            if ((v77 & 1) == 0)
            {
LABEL_29:
              if (*(v78 - 185) < 0)
              {
                operator delete(*(v78 - 208));
              }

              sub_10018E870(&a12);
              if (a20 < 0)
              {
                operator delete(a15);
              }

              _Unwind_Resume(a1);
            }

LABEL_28:
            __cxa_free_exception(v76);
            goto LABEL_29;
          }

LABEL_27:
          if (!v77)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }

LABEL_16:
        a68 = v80;
        operator delete(v80);
        goto LABEL_17;
      }

LABEL_15:
      operator delete(a49);
      sub_10019FF4C((v78 - 176));
      v80 = a67;
      if (!a67)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if (a26 < 0)
  {
    goto LABEL_3;
  }

  if (a47 < 0)
  {
    goto LABEL_7;
  }

  goto LABEL_12;
}

void sub_10018E2A4(sqlite3 **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    os_activity_scope_enter(v8, &state);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  objc_storeStrong((a4 + 16), a3);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sqlite3_prepare_v2(*a1, v11, v12, a4, 0);
  sub_100001838(v13, *a1);
  if (v13)
  {
    v14 = __error();
    sub_10023B1C8(*v14, &v27);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v23, " w/ ");
    v15 = std::string::insert(&v23, 0, "Failed to prepare query");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v22, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v27;
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v24, v17, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v26, &v25);
    v26.__vftable = &off_100440BD8;
    sub_10010A984(v21);
  }

  *(a4 + 8) = *a1;
  if (v9)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10018E5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a35 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a35 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a30);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a23);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_6:
    sub_10019FF4C((v71 - 184));
    v73 = a47;
    if (!a47)
    {
LABEL_14:
      std::runtime_error::~runtime_error((v71 - 200));
      if (*(v71 - 201) < 0)
      {
        operator delete(*(v71 - 224));
        if ((a55 & 0x80000000) == 0)
        {
LABEL_16:
          if ((a67 & 0x80000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        }
      }

      else if ((a55 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      operator delete(a50);
      if ((a67 & 0x80000000) == 0)
      {
LABEL_17:
        if (a61 < 0)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }

LABEL_22:
      operator delete(a62);
      if (a61 < 0)
      {
LABEL_18:
        operator delete(a56);
        if ((v70 & 1) == 0)
        {
LABEL_25:
          if (*(v71 - 97) < 0)
          {
            operator delete(*(v71 - 120));
            sub_10018E870(v68);

            _Unwind_Resume(a1);
          }

          sub_10018E870(v68);

          _Unwind_Resume(a1);
        }

LABEL_24:
        __cxa_free_exception(v69);
        goto LABEL_25;
      }

LABEL_23:
      if (!v70)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_13:
    operator delete(v73);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a37);
  sub_10019FF4C((v71 - 184));
  v73 = a47;
  if (!a47)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t sub_10018E870(uint64_t a1)
{
  sub_1001B6558(a1);

  return a1;
}

void sub_10018E8A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F41FC(a2);
  sub_100189920(a1, v4, v105);
  if ((v105[0] & 1) == 0)
  {
    v79 = sub_100184A58();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
    {
      v80 = sub_1001F41FC(a2);
      __p = 68289795;
      *v100 = 2082;
      *&v100[2] = "";
      *&v100[10] = 2081;
      *&v100[12] = sub_10011823C(v80);
      v101 = 2082;
      v102 = "assert";
      v103 = 2081;
      v104 = "current.is_initialized()";
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:couldn't find resource in db, locationId:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x30u);
    }

    v81 = sub_100184A58();
    if (os_signpost_enabled(v81))
    {
      v82 = sub_1001F41FC(a2);
      v83 = sub_10011823C(v82);
      __p = 68289795;
      *v100 = 2082;
      *&v100[2] = "";
      *&v100[10] = 2081;
      *&v100[12] = v83;
      v101 = 2082;
      v102 = "assert";
      v103 = 2081;
      v104 = "current.is_initialized()";
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v81, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "couldn't find resource in db", "{msg%{public}.0s:couldn't find resource in db, locationId:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x30u);
    }

    v84 = sub_100184A58();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      v85 = sub_1001F41FC(a2);
      v86 = sub_10011823C(v85);
      sub_100384D24(v86, &__p);
    }

    abort_report_np();
    __break(1u);
    return;
  }

  __p = 0;
  *v100 = 0;
  *&v100[8] = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v93 = &v94;
  v5 = sub_10026FB90(a2);
  v6 = sub_10026FB90(v106);
  sub_10018F6BC(&v93, &xmmword_10045D120, &qword_10045D168, v5, v6);
  v7 = sub_100240B3C(a2);
  v8 = sub_100240B3C(v106);
  sub_10018F6BC(&v93, &qword_10045D138, &xmmword_10045D180, v7, v8);
  if (*sub_10026FB88(a2) == 1)
  {
    v9 = sub_10026FB88(a2);
    v10 = sub_10026FB88(v106);
    v11 = *v9;
    v12 = *v10;
    if (v11 == 1 && (v12 & 1) != 0)
    {
      if (*(v9 + 1) == *(v10 + 1))
      {
        goto LABEL_40;
      }
    }

    else if (v11 == v12)
    {
      goto LABEL_40;
    }

    v13 = sub_10026FB88(a2);
    v14 = std::chrono::system_clock::to_time_t(v13 + 1);
    if (byte_10045D167 >= 0)
    {
      v15 = byte_10045D167;
    }

    else
    {
      v15 = qword_10045D158;
    }

    if (v15 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_10000D39C();
    }

    v16 = v14;
    if (v15 + 1 >= 0x17)
    {
      operator new();
    }

    memset(&v98, 0, sizeof(v98));
    *(&v98.__r_.__value_.__s + 23) = v15 + 1;
    if (v15)
    {
      if (byte_10045D167 >= 0)
      {
        v17 = &qword_10045D150;
      }

      else
      {
        v17 = qword_10045D150;
      }

      memmove(&v98, v17, v15);
    }

    *(&v98.__r_.__value_.__l.__data_ + v15) = 61;
    std::to_string(&v92, v16);
    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v92;
    }

    else
    {
      v18 = v92.__r_.__value_.__r.__words[0];
    }

    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v92.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v92.__r_.__value_.__l.__size_;
    }

    v20 = std::string::append(&v98, v18, size);
    v21 = v20->__r_.__value_.__r.__words[0];
    v97.__r_.__value_.__r.__words[0] = v20->__r_.__value_.__l.__size_;
    *(v97.__r_.__value_.__r.__words + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v23 = v95;
    if (v95 >= v96)
    {
      v25 = v94;
      v26 = v95 - v94;
      v27 = 0xAAAAAAAAAAAAAAABLL * ((v95 - v94) >> 3);
      v28 = v27 + 1;
      if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10000FC84();
      }

      if (0x5555555555555556 * ((v96 - v94) >> 3) > v28)
      {
        v28 = 0x5555555555555556 * ((v96 - v94) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v96 - v94) >> 3) >= 0x555555555555555)
      {
        v29 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v29 = v28;
      }

      if (v29)
      {
        if (v29 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_10000D444();
      }

      v30 = 8 * ((v95 - v94) >> 3);
      v31 = v97.__r_.__value_.__r.__words[0];
      *v30 = v21;
      *(v30 + 8) = v31;
      *(v30 + 15) = *(v97.__r_.__value_.__r.__words + 7);
      *(v30 + 23) = v22;
      v24 = 24 * v27 + 24;
      v32 = (24 * v27 - v26);
      memcpy(v32, v25, v26);
      v94 = v32;
      v95 = v24;
      v96 = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v95 = v21;
      *(v23 + 1) = v97.__r_.__value_.__r.__words[0];
      *(v23 + 15) = *(v97.__r_.__value_.__r.__words + 7);
      v23[23] = v22;
      v24 = (v23 + 24);
    }

    v95 = v24;
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v92.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }
    }

    else if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    operator delete(v98.__r_.__value_.__l.__data_);
  }

LABEL_40:
  sub_10026FBEC(a2, &v98);
  if (v98.__r_.__value_.__s.__data_[0] != 1)
  {
    goto LABEL_75;
  }

  sub_10026FBEC(a2, &v98);
  v33 = std::chrono::system_clock::to_time_t(&v98.__r_.__value_.__r.__words[1]);
  if (byte_10045D1AF >= 0)
  {
    v34 = byte_10045D1AF;
  }

  else
  {
    v34 = qword_10045D1A0;
  }

  if (v34 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_10000D39C();
  }

  v35 = v33;
  if (v34 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v98, 0, sizeof(v98));
  *(&v98.__r_.__value_.__s + 23) = v34 + 1;
  if (v34)
  {
    if (byte_10045D1AF >= 0)
    {
      v36 = &qword_10045D198;
    }

    else
    {
      v36 = qword_10045D198;
    }

    memmove(&v98, v36, v34);
  }

  *(&v98.__r_.__value_.__l.__data_ + v34) = 61;
  std::to_string(&v92, v35);
  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v92;
  }

  else
  {
    v37 = v92.__r_.__value_.__r.__words[0];
  }

  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v92.__r_.__value_.__l.__size_;
  }

  v39 = std::string::append(&v98, v37, v38);
  v40 = v39->__r_.__value_.__r.__words[0];
  v97.__r_.__value_.__r.__words[0] = v39->__r_.__value_.__l.__size_;
  *(v97.__r_.__value_.__r.__words + 7) = *(&v39->__r_.__value_.__r.__words[1] + 7);
  v41 = HIBYTE(v39->__r_.__value_.__r.__words[2]);
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  v42 = v95;
  if (v95 >= v96)
  {
    v44 = v94;
    v45 = v95 - v94;
    v46 = 0xAAAAAAAAAAAAAAABLL * ((v95 - v94) >> 3);
    v47 = v46 + 1;
    if (v46 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000FC84();
    }

    if (0x5555555555555556 * ((v96 - v94) >> 3) > v47)
    {
      v47 = 0x5555555555555556 * ((v96 - v94) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v96 - v94) >> 3) >= 0x555555555555555)
    {
      v48 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v48 = v47;
    }

    if (v48)
    {
      if (v48 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10000D444();
    }

    v49 = 8 * ((v95 - v94) >> 3);
    v50 = v97.__r_.__value_.__r.__words[0];
    *v49 = v40;
    *(v49 + 8) = v50;
    *(v49 + 15) = *(v97.__r_.__value_.__r.__words + 7);
    *(v49 + 23) = v41;
    v43 = 24 * v46 + 24;
    v51 = (24 * v46 - v45);
    memcpy(v51, v44, v45);
    v94 = v51;
    v95 = v43;
    v96 = 0;
    if (v44)
    {
      operator delete(v44);
    }
  }

  else
  {
    *v95 = v40;
    *(v42 + 1) = v97.__r_.__value_.__r.__words[0];
    *(v42 + 15) = *(v97.__r_.__value_.__r.__words + 7);
    v42[23] = v41;
    v43 = (v42 + 24);
  }

  v95 = v43;
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_75:
      v52 = v94;
      if (v94 == v95)
      {
        goto LABEL_108;
      }

LABEL_76:
      std::operator+<char>();
      v53 = std::string::append(&v97, "=");
      v54 = *&v53->__r_.__value_.__l.__data_;
      v92.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
      *&v92.__r_.__value_.__l.__data_ = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      v55 = sub_10026FAE8(v106);
      std::to_string(&v91, v55);
      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &v91;
      }

      else
      {
        v56 = v91.__r_.__value_.__r.__words[0];
      }

      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v57 = v91.__r_.__value_.__l.__size_;
      }

      v58 = std::string::append(&v92, v56, v57);
      v59 = *&v58->__r_.__value_.__l.__data_;
      v98.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
      *&v98.__r_.__value_.__l.__data_ = v59;
      v58->__r_.__value_.__l.__size_ = 0;
      v58->__r_.__value_.__r.__words[2] = 0;
      v58->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v91.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_84:
          if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_85;
          }

LABEL_138:
          operator delete(v97.__r_.__value_.__l.__data_);
LABEL_85:
          *(&v89.__r_.__value_.__s + 23) = 7;
          strcpy(&v89, "UPDATE ");
          v60 = std::string::append(&v89, "venues");
          v61 = *&v60->__r_.__value_.__l.__data_;
          v90.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
          *&v90.__r_.__value_.__l.__data_ = v61;
          v60->__r_.__value_.__l.__size_ = 0;
          v60->__r_.__value_.__r.__words[2] = 0;
          v60->__r_.__value_.__r.__words[0] = 0;
          v62 = std::string::append(&v90, " SET ");
          v63 = *&v62->__r_.__value_.__l.__data_;
          v91.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
          *&v91.__r_.__value_.__l.__data_ = v63;
          v62->__r_.__value_.__l.__size_ = 0;
          v62->__r_.__value_.__r.__words[2] = 0;
          v62->__r_.__value_.__r.__words[0] = 0;
          sub_10018FA78(", ", &v94, v87);
          if ((v88 & 0x80u) == 0)
          {
            v64 = v87;
          }

          else
          {
            v64 = v87[0];
          }

          if ((v88 & 0x80u) == 0)
          {
            v65 = v88;
          }

          else
          {
            v65 = v87[1];
          }

          v66 = std::string::append(&v91, v64, v65);
          v67 = *&v66->__r_.__value_.__l.__data_;
          v97.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
          *&v97.__r_.__value_.__l.__data_ = v67;
          v66->__r_.__value_.__l.__size_ = 0;
          v66->__r_.__value_.__r.__words[2] = 0;
          v66->__r_.__value_.__r.__words[0] = 0;
          if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v68 = &v98;
          }

          else
          {
            v68 = v98.__r_.__value_.__r.__words[0];
          }

          if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v69 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v69 = v98.__r_.__value_.__l.__size_;
          }

          v70 = std::string::append(&v97, v68, v69);
          v71 = *&v70->__r_.__value_.__l.__data_;
          v92.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
          *&v92.__r_.__value_.__l.__data_ = v71;
          v70->__r_.__value_.__l.__size_ = 0;
          v70->__r_.__value_.__r.__words[2] = 0;
          v70->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
            if ((v88 & 0x80000000) == 0)
            {
LABEL_99:
              if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_100;
              }

              goto LABEL_141;
            }
          }

          else if ((v88 & 0x80000000) == 0)
          {
            goto LABEL_99;
          }

          operator delete(v87[0]);
          if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_100:
            if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_101;
            }

            goto LABEL_142;
          }

LABEL_141:
          operator delete(v91.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_101:
            if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_102;
            }

LABEL_143:
            operator delete(v89.__r_.__value_.__l.__data_);
LABEL_102:
            if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v72 = &v92;
            }

            else
            {
              v72 = v92.__r_.__value_.__r.__words[0];
            }

            sub_10000210C(*(a1 + 40), v72, "Failed to update location");
            if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v92.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_107;
              }
            }

            else if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_107:
              v52 = v94;
              goto LABEL_108;
            }

            operator delete(v98.__r_.__value_.__l.__data_);
            goto LABEL_107;
          }

LABEL_142:
          operator delete(v90.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_102;
          }

          goto LABEL_143;
        }
      }

      else if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_84;
      }

      operator delete(v92.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_138;
    }
  }

  else if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(v98.__r_.__value_.__l.__data_);
  v52 = v94;
  if (v94 != v95)
  {
    goto LABEL_76;
  }

LABEL_108:
  if (!v52)
  {
    goto LABEL_121;
  }

  v73 = v95;
  if (v95 == v52)
  {
    v95 = v52;
    operator delete(v52);
    v74 = __p;
    if (__p)
    {
      goto LABEL_111;
    }

LABEL_121:
    if (v105[0] != 1)
    {
      return;
    }

    goto LABEL_122;
  }

  do
  {
    v77 = *(v73 - 1);
    v73 -= 3;
    if (v77 < 0)
    {
      operator delete(*v73);
    }
  }

  while (v73 != v52);
  v95 = v52;
  operator delete(v94);
  v74 = __p;
  if (!__p)
  {
    goto LABEL_121;
  }

LABEL_111:
  v75 = *v100;
  while (v75 != v74)
  {
    v76 = *(v75 - 1);
    v75 -= 3;
    if (v76 < 0)
    {
      operator delete(*v75);
    }
  }

  operator delete(v74);
  if (v105[0] != 1)
  {
    return;
  }

LABEL_122:
  if (v112 == 1)
  {
    v112 = 0;
    if (v111 != 1)
    {
      goto LABEL_124;
    }
  }

  else if (v111 != 1)
  {
LABEL_124:
    if (v110 == 1)
    {
      goto LABEL_125;
    }

    goto LABEL_130;
  }

  v111 = 0;
  if (v110 == 1)
  {
LABEL_125:
    v110 = 0;
    if (v109 != 1)
    {
      goto LABEL_126;
    }

    goto LABEL_131;
  }

LABEL_130:
  if (v109 != 1)
  {
LABEL_126:
    v78 = v108;
    if (!v108)
    {
LABEL_133:
      if ((v107 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_134;
    }

    goto LABEL_132;
  }

LABEL_131:
  v109 = 0;
  v78 = v108;
  if (!v108)
  {
    goto LABEL_133;
  }

LABEL_132:
  if (atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_133;
  }

  (v78->__on_zero_shared)(v78);
  std::__shared_weak_count::__release_weak(v78);
  if (v107 < 0)
  {
LABEL_134:
    operator delete(v106[0]);
  }
}

void sub_10018F4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void **a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void **a49)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  sub_1000D1490(&a35);
  sub_1000D1490(&a49);
  sub_10018CB50(v49 - 240);
  _Unwind_Resume(a1);
}

void sub_10018F6BC(uint64_t *a1, const void **a2, const void **a3, _BYTE *a4, _BYTE *a5)
{
  if (*a4 != 1)
  {
    return;
  }

  if (*a5 != 1 || (v10 = sub_100118234((a4 + 8)), v10 != sub_100118234((a5 + 8))))
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = a2[1];
    }

    if (v11 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_51:
      sub_10000D39C();
    }

    v12 = *a1;
    if (v11 + 1 >= 0x17)
    {
      operator new();
    }

    memset(&v29, 0, sizeof(v29));
    *(&v29.__r_.__value_.__s + 23) = v11 + 1;
    if (v11)
    {
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      memmove(&v29, v13, v11);
    }

    *(&v29.__r_.__value_.__l.__data_ + v11) = 61;
    v14 = sub_100118234((a4 + 8));
    std::to_string(&__p, v14);
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

    v17 = std::string::append(&v29, p_p, size);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v31 = v17->__r_.__value_.__r.__words[2];
    *&__t[0].__d_.__rep_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    sub_1000DCFA4(v12, &__t[0].__d_.__rep_);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__t[0].__d_.__rep_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_23:
        if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

LABEL_50:
        operator delete(v29.__r_.__value_.__l.__data_);
        goto LABEL_24;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_24:
  __t[0].__d_.__rep_ = sub_10026F65C((a4 + 8));
  v19 = std::chrono::system_clock::to_time_t(__t);
  if (*(a3 + 23) >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = a3[1];
  }

  if (v20 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_51;
  }

  v21 = v19;
  v22 = *a1;
  if (v20 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v29, 0, sizeof(v29));
  *(&v29.__r_.__value_.__s + 23) = v20 + 1;
  if (v20)
  {
    if (*(a3 + 23) >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    memmove(&v29, v23, v20);
  }

  *(&v29.__r_.__value_.__l.__data_ + v20) = 61;
  std::to_string(&__p, v21);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = __p.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v29, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v31 = v26->__r_.__value_.__r.__words[2];
  *&__t[0].__d_.__rep_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  sub_1000DCFA4(v22, &__t[0].__d_.__rep_);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__t[0].__d_.__rep_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_43:
      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_47:
      operator delete(v29.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_47;
  }
}

void sub_10018F9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

unint64_t *sub_10018FA78@<X0>(char *__s@<X1>, unint64_t *result@<X0>, uint64_t a3@<X8>)
{
  v5 = *result;
  v6 = result[1];
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v5 == v6)
  {
    goto LABEL_10;
  }

  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = *v5;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  for (result = sub_100026F84(a3, a3, v8, (v8 + v9), v9); ; result = sub_100026F84(a3, v15 + v14, v17, (v17 + v18), v18))
  {
    v5 += 24;
LABEL_10:
    if (v5 == v6)
    {
      break;
    }

    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (v10 >= 0)
    {
      v12 = *(a3 + 23);
    }

    else
    {
      v12 = *(a3 + 8);
    }

    v13 = strlen(__s);
    sub_1000272BC(a3, v11 + v12, __s, &__s[v13], v13);
    v14 = *(a3 + 23);
    if ((v14 & 0x80u) == 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a3 + 8);
    }

    v16 = *(v5 + 23);
    if (v16 >= 0)
    {
      v17 = v5;
    }

    else
    {
      v17 = *v5;
    }

    if (v16 >= 0)
    {
      v18 = *(v5 + 23);
    }

    else
    {
      v18 = *(v5 + 8);
    }
  }

  return result;
}

void sub_10018FB78(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_10018FB98(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  if (qword_10045B080 != -1)
  {
    sub_100384BF8();
  }

  v4 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
  {
    buf = 134217984;
    *buf_4 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Requesting to remove resource %llu", &buf, 0xCu);
  }

  v6 = a1;
  v7 = &v8;
  v5 = *(a1 + 32);
  operator new();
}

void sub_10018FDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (!atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v5 + 16))(v5);
  }

  sub_1001A54E4(va);

  _Unwind_Resume(a1);
}

void sub_10018FE58(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_10018FFB0(a1, a2, a3);
  if (*a3)
  {
    if (qword_10045B080 != -1)
    {
      sub_100384BF8();
    }

    v6 = qword_10045B088;
    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134217984;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Found resource %llu - removing", &v8, 0xCu);
    }

    sub_1001910F8(a1, (a3 + 8));
  }

  else
  {
    if (qword_10045B080 != -1)
    {
      sub_100384BF8();
    }

    v7 = qword_10045B088;
    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
    {
      v8 = 134217984;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "WARNING: Attempt to remove local resource %llu failed because not found", &v8, 0xCu);
    }
  }
}

void sub_10018FFB0(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  std::operator+<char>();
  v5 = std::string::append(&__dst, " FROM ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v41, "venues");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v42, " WHERE ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D107 >= 0)
  {
    v11 = &qword_10045D0F0;
  }

  else
  {
    v11 = qword_10045D0F0;
  }

  if (byte_10045D107 >= 0)
  {
    v12 = byte_10045D107;
  }

  else
  {
    v12 = *&byte_10045D0F8;
  }

  v13 = std::string::append(&v51, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  *&v52[16] = *(&v13->__r_.__value_.__l + 2);
  *v52 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(v52, " = ?;");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v40 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if ((v52[23] & 0x80000000) != 0)
  {
    operator delete(*v52);
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }
  }

  else if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v51.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_27:
    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_28:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_12;
  }

LABEL_26:
  operator delete(v42.__r_.__value_.__l.__data_);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  sub_100185CF8(*(a1 + 40), __p, 0, &pStmt);
  sub_1001B8810(&pStmt, 1, a2);
  v17 = pStmt;
  v49 = pStmt;
  while (1)
  {
    v18 = sqlite3_step(v17);
    v19 = v18;
    if (v18 == 100)
    {
      sub_1001B1A90(&v49, v52);
      v51 = *&v52[8];
      sub_1001181E4(v52, &v51);
    }

    if (v18 == 101)
    {
      break;
    }

    if (v18 == 19)
    {
      if (qword_10045B080 != -1)
      {
        sub_100384BD0();
      }

      v21 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
      {
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Query constraint violation", v52, 2u);
      }

      __cxa_allocate_exception(0x40uLL);
      operator new();
    }

    sub_100001838(v18, db);
    if (v19)
    {
      v22 = __error();
      sub_10023B1C8(*v22, &__dst);
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v45, " w/ ");
      v23 = std::string::insert(&v45, 0, "Failed sqlite3_step");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v46.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v46.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(&v44, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v44 = __dst;
      }

      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v44;
      }

      else
      {
        v28 = v44.__r_.__value_.__r.__words[0];
      }

      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v44.__r_.__value_.__l.__size_;
      }

      v30 = std::string::append(&v46, v28, size);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v47.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
      *&v47.__r_.__value_.__l.__data_ = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v48, &v47);
      v48.__vftable = &off_100440BD8;
      sub_10010A984(v43);
    }

    v17 = pStmt;
  }

  v20 = sqlite3_reset(pStmt);
  sub_100001838(v20, db);
  if (v20)
  {
    v25 = __error();
    sub_10023B1C8(*v25, &__dst);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v45, " w/ ");
    v26 = std::string::insert(&v45, 0, "Failed to execute query");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v44, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v44 = __dst;
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v44;
    }

    else
    {
      v32 = v44.__r_.__value_.__r.__words[0];
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v33 = v44.__r_.__value_.__l.__size_;
    }

    v34 = std::string::append(&v46, v32, v33);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v48, &v47);
    v48.__vftable = &off_100440BD8;
    sub_10010A984(v43);
  }

  sub_1001B472C(&pStmt);

  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100190B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a31 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
LABEL_3:
    if (a45 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  operator delete(a19);
  if (a45 < 0)
  {
LABEL_4:
    operator delete(a40);
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  if ((a38 & 0x80000000) == 0)
  {
LABEL_5:
    *(v78 - 192) = v76;
    if (*(v78 - 161) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a33);
  *(v78 - 192) = v76;
  if (*(v78 - 161) < 0)
  {
LABEL_6:
    operator delete(*(v78 - 184));
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  if ((a51 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v78 - 160));
    v80 = a56;
    if (!a56)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v78 - 240));
      if (a74 < 0)
      {
        operator delete(a73.__vftable);
        if (a64 < 0)
        {
LABEL_18:
          operator delete(a59);
          if ((a72 & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }
      }

      else if (a64 < 0)
      {
        goto LABEL_18;
      }

      if ((a72 & 0x80000000) == 0)
      {
LABEL_19:
        if (a70 < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

LABEL_24:
      operator delete(a71);
      if (a70 < 0)
      {
LABEL_20:
        operator delete(a65);
        if ((v77 & 1) == 0)
        {
LABEL_27:
          if (*(v78 - 193) < 0)
          {
            operator delete(*(v78 - 216));
          }

          sub_1001862C4(&a10);
          if (a18 < 0)
          {
            operator delete(a13);
          }

          sub_100192074(v74);
          _Unwind_Resume(a1);
        }

LABEL_26:
        __cxa_free_exception(v75);
        goto LABEL_27;
      }

LABEL_25:
      if (!v77)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_15:
    a57 = v80;
    operator delete(v80);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a46);
  sub_10019FF4C((v78 - 160));
  v80 = a56;
  if (!a56)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_1001910F8(uint64_t a1, uint64_t a2)
{
  *(&v38.__r_.__value_.__s + 23) = 12;
  strcpy(&v38, "DELETE FROM ");
  v4 = std::string::append(&v38, "venues");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v39, " WHERE ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (byte_10045D0D7 >= 0)
  {
    v8 = &qword_10045D0C0;
  }

  else
  {
    v8 = qword_10045D0C0;
  }

  if (byte_10045D0D7 >= 0)
  {
    v9 = byte_10045D0D7;
  }

  else
  {
    v9 = *&byte_10045D0C8;
  }

  v10 = std::string::append(&v47, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v48, " = ?;");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v37 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_24:
      operator delete(v39.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_25:
      operator delete(v38.__r_.__value_.__l.__data_);
      goto LABEL_11;
    }
  }

  else if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v47.__r_.__value_.__l.__data_);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  sub_100192320(*(a1 + 40), __p, 0, &pStmt);
  v14 = sub_100118234(a2);
  sub_1001B8188(&pStmt, 1, v14);
  while (1)
  {
    do
    {
      v15 = sqlite3_step(pStmt);
      v16 = v15;
    }

    while (v15 == 100);
    if (v15 == 101)
    {
      break;
    }

    if (v15 == 19)
    {
      if (qword_10045B080 == -1)
      {
        v21 = qword_10045B088;
        if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_100384BD0();
        v21 = qword_10045B088;
        if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
        {
LABEL_28:
          LOWORD(v48.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Query constraint violation", &v48, 2u);
        }
      }

      __cxa_allocate_exception(0x40uLL);
      operator new();
    }

    sub_100001838(v15, db);
    if (v16)
    {
      v17 = __error();
      sub_10023B1C8(*v17, &__dst);
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v42, " w/ ");
      v18 = std::string::insert(&v42, 0, "Failed sqlite3_step");
      v19 = *&v18->__r_.__value_.__l.__data_;
      v43.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v43.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(&v41, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v41 = __dst;
      }

      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v41;
      }

      else
      {
        v25 = v41.__r_.__value_.__r.__words[0];
      }

      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v41.__r_.__value_.__l.__size_;
      }

      v27 = std::string::append(&v43, v25, size);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v44.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v44.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v45, &v44);
      v45.__vftable = &off_100440BD8;
      sub_10010A984(v40);
    }
  }

  v20 = sqlite3_reset(pStmt);
  sub_100001838(v20, db);
  if (v20)
  {
    v22 = __error();
    sub_10023B1C8(*v22, &__dst);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v42, " w/ ");
    v23 = std::string::insert(&v42, 0, "Failed to execute query");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v41, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v41 = __dst;
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v41;
    }

    else
    {
      v29 = v41.__r_.__value_.__r.__words[0];
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = v41.__r_.__value_.__l.__size_;
    }

    v31 = std::string::append(&v43, v29, v30);
    v32 = *&v31->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v45, &v44);
    v45.__vftable = &off_100440BD8;
    sub_10010A984(v40);
  }

  sub_1001B7FD0(&pStmt);

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }
}