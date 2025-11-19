void sub_100325C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100325D08(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[23];
  if (v3 < 0)
  {
    if (*(a1 + 1) != 12)
    {
      goto LABEL_50;
    }

    v4 = *a1;
    v5 = **a1;
    if ((v5 - 48) < 0xAu)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v4 = a1;
  if (v3 != 12)
  {
    goto LABEL_50;
  }

  v5 = *a1;
  if ((*a1 - 48) >= 0xAu)
  {
LABEL_7:
    v6 = v5 - 65;
    v7 = v6 > 0x25;
    v8 = (1 << v6) & 0x3F0000003FLL;
    if (!v7 && v8 != 0)
    {
      goto LABEL_11;
    }

LABEL_50:
    std::operator+<char>();
    v24 = std::string::append(&v30, "'");
    goto LABEL_53;
  }

LABEL_11:
  if ((v4[1] - 48) >= 0xAu)
  {
    v10 = v4[1] - 65;
    v7 = v10 > 0x25;
    v11 = (1 << v10) & 0x3F0000003FLL;
    if (v7 || v11 == 0)
    {
      goto LABEL_50;
    }
  }

  if ((v4[2] - 48) >= 0xAu)
  {
    v13 = v4[2] - 65;
    if (v13 > 0x25 || ((1 << v13) & 0x3F0000003FLL) == 0)
    {
      goto LABEL_50;
    }
  }

  if ((v4[3] - 48) >= 0xAu)
  {
    v14 = v4[3] - 65;
    if (v14 > 0x25 || ((1 << v14) & 0x3F0000003FLL) == 0)
    {
      goto LABEL_50;
    }
  }

  if ((v4[4] - 48) >= 0xAu)
  {
    v15 = v4[4] - 65;
    if (v15 > 0x25 || ((1 << v15) & 0x3F0000003FLL) == 0)
    {
      goto LABEL_50;
    }
  }

  if ((v4[5] - 48) >= 0xAu)
  {
    v16 = v4[5] - 65;
    if (v16 > 0x25 || ((1 << v16) & 0x3F0000003FLL) == 0)
    {
      goto LABEL_50;
    }
  }

  if ((v4[6] - 48) >= 0xAu)
  {
    v17 = v4[6] - 65;
    if (v17 > 0x25 || ((1 << v17) & 0x3F0000003FLL) == 0)
    {
      goto LABEL_50;
    }
  }

  if ((v4[7] - 48) >= 0xAu)
  {
    v18 = v4[7] - 65;
    if (v18 > 0x25 || ((1 << v18) & 0x3F0000003FLL) == 0)
    {
      goto LABEL_50;
    }
  }

  if ((v4[8] - 48) >= 0xAu)
  {
    v19 = v4[8] - 65;
    if (v19 > 0x25 || ((1 << v19) & 0x3F0000003FLL) == 0)
    {
      goto LABEL_50;
    }
  }

  if ((v4[9] - 48) >= 0xAu)
  {
    v20 = v4[9] - 65;
    if (v20 > 0x25 || ((1 << v20) & 0x3F0000003FLL) == 0)
    {
      goto LABEL_50;
    }
  }

  if ((v4[10] - 48) >= 0xAu)
  {
    v21 = v4[10] - 65;
    if (v21 > 0x25 || ((1 << v21) & 0x3F0000003FLL) == 0)
    {
      goto LABEL_50;
    }
  }

  v22 = v4[11];
  if ((v22 - 48) >= 0xAu)
  {
    v23 = v22 - 65;
    if (v23 > 0x25 || ((1 << v23) & 0x3F0000003FLL) == 0)
    {
      goto LABEL_50;
    }
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  v29 = 0;
  if (sscanf(a1, "%llx", &v29) == 1)
  {
    *(a2 + 16) = v29;
    *(a2 + 8) = 0;
    *a2 = 1;
    operator new();
  }

  std::operator+<char>();
  v24 = std::string::append(&v30, "' to number");
LABEL_53:
  v25 = v24->__r_.__value_.__r.__words[0];
  v31[0] = v24->__r_.__value_.__l.__size_;
  *(v31 + 7) = *(&v24->__r_.__value_.__r.__words[1] + 7);
  v26 = HIBYTE(v24->__r_.__value_.__r.__words[2]);
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v32[0] = v31[0];
  v27 = *(v31 + 7);
  *(v32 + 7) = *(v31 + 7);
  *a2 = 0;
  *(a2 + 55) = v27;
  v28 = v32[0];
  *(a2 + 40) = v25;
  *(a2 + 48) = v28;
  *(a2 + 63) = v26;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void sub_100326154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10032618C(const char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100325D08(a1, v9);
  if ((v9[0] & 1) == 0)
  {
    sub_1000474A4(__p, "");
    if (SHIBYTE(v14) < 0)
    {
      sub_100003228(&v15, v13.__vftable, v13.__imp_.__imp_);
    }

    else
    {
      v15 = v13;
      v16 = v14;
    }

    sub_1000E661C(__p, &v15, 1);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15.__vftable);
    }

    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10003F5D0(&v6);
  }

  v3 = v10;
  v4 = v10 >> 31;
  if (v10 >> 31 == v10)
  {
    *(a2 + 8) = v11;
    *a2 = 0;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    *(a2 + 8) = v11;
    *(a2 + 24) = v12;
    *a2 = v4 ^ v3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return;
    }
  }

  v5 = v13.__vftable;

  operator delete(v5);
}

void sub_10032634C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  std::logic_error::~logic_error((v32 - 64));
  if (v31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003263B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  if (!sub_100321A9C(a2))
  {
    sub_1000474A4(&v31, "");
    sub_1001E921C("Invalid IBeacon measurement!", &v35);
    sub_100382FC4(&v35, &__p, &v31);
    sub_10003F5D0(&__p);
  }

  memset(&v31, 0, sizeof(v31));
  memset(&__p, 0, sizeof(__p));
  memset(&v29, 0, sizeof(v29));
  v4 = *(a2 + 87);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 72);
  }

  if (!v4)
  {
    std::string::operator=(&v31, (a2 + 112));
    LOWORD(__dst.__r_.__value_.__l.__data_) = *(a2 + 108);
    sub_100326A48(&__dst);
    v13 = *(a2 + 104);
    __p = v28;
    LOWORD(__dst.__r_.__value_.__l.__data_) = v13;
    sub_100326A48(&__dst);
    v29 = v28;
    goto LABEL_55;
  }

  sub_1003216A0(a2 + 64, &v28);
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) > 7)
    {
      v5 = &v28;
      v6 = SHIBYTE(v28.__r_.__value_.__r.__words[2]) - 8;
      if (v6 >= 0x20)
      {
        v7 = 32;
      }

      else
      {
        v7 = SHIBYTE(v28.__r_.__value_.__r.__words[2]) - 8;
      }

      if (v6 < 0x17)
      {
        goto LABEL_11;
      }

LABEL_37:
      operator new();
    }

LABEL_95:
    sub_10001C6BC();
  }

  if (v28.__r_.__value_.__l.__size_ < 8)
  {
    goto LABEL_95;
  }

  v5 = v28.__r_.__value_.__r.__words[0];
  v6 = v28.__r_.__value_.__l.__size_ - 8;
  if (v28.__r_.__value_.__l.__size_ - 8 >= 0x20)
  {
    v7 = 32;
  }

  else
  {
    v7 = v28.__r_.__value_.__l.__size_ - 8;
  }

  if (v6 >= 0x17)
  {
    goto LABEL_37;
  }

LABEL_11:
  *(&__dst.__r_.__value_.__s + 23) = v7;
  if (v6)
  {
    memmove(&__dst, &v5->__r_.__value_.__r.__words[1], v7);
    __dst.__r_.__value_.__s.__data_[v7] = 0;
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_13:
      v31 = __dst;
      v8 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      if ((*(&v28.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_14;
      }

LABEL_40:
      if (v28.__r_.__value_.__l.__size_ >= 0x28)
      {
        v9 = v28.__r_.__value_.__r.__words[0];
        if (v28.__r_.__value_.__l.__size_ - 40 >= 4)
        {
          v10 = 4;
        }

        else
        {
          v10 = v28.__r_.__value_.__l.__size_ - 40;
        }

        *(&__dst.__r_.__value_.__s + 23) = v10;
        if (v28.__r_.__value_.__l.__size_ != 40)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      }

LABEL_96:
      sub_10001C6BC();
    }
  }

  else
  {
    __dst.__r_.__value_.__s.__data_[v7] = 0;
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  v31 = __dst;
  v8 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  if ((*(&v28.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_40;
  }

LABEL_14:
  if (v8 <= 0x27)
  {
    goto LABEL_96;
  }

  v9 = &v28;
  if ((v8 - 40) >= 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = v8 - 40;
  }

  *(&__dst.__r_.__value_.__s + 23) = v10;
  if (v8 != 40)
  {
LABEL_19:
    memmove(&__dst, &v9[1].__r_.__value_.__r.__words[2], v10);
  }

LABEL_20:
  __dst.__r_.__value_.__s.__data_[v10] = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    __p = __dst;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_22;
    }

LABEL_47:
    if (v28.__r_.__value_.__l.__size_ >= 0x2C)
    {
      v11 = v28.__r_.__value_.__r.__words[0];
      if (v28.__r_.__value_.__l.__size_ - 44 >= 4)
      {
        v12 = 4;
      }

      else
      {
        v12 = v28.__r_.__value_.__l.__size_ - 44;
      }

      *(&__dst.__r_.__value_.__s + 23) = v12;
      if (v28.__r_.__value_.__l.__size_ != 44)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

LABEL_97:
    sub_10001C6BC();
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  LODWORD(v8) = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  __p = __dst;
  if ((*(&v28.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_47;
  }

LABEL_22:
  if (v8 <= 0x2B)
  {
    goto LABEL_97;
  }

  v11 = &v28;
  if (v8 - 44 >= 4)
  {
    v12 = 4;
  }

  else
  {
    v12 = v8 - 44;
  }

  *(&__dst.__r_.__value_.__s + 23) = v12;
  if (v8 != 44)
  {
LABEL_27:
    memmove(&__dst, &v11[1].__r_.__value_.__r.__words[2] + 4, v12);
  }

LABEL_28:
  __dst.__r_.__value_.__s.__data_[v12] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    v29 = __dst;
    if ((*(&v28.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v29 = __dst;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_55;
    }
  }

  operator delete(v28.__r_.__value_.__l.__data_);
LABEL_55:
  v32 = 0;
  v33 = 0;
  v34 = 0;
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v31.__r_.__value_.__l.__size_;
  }

  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __p.__r_.__value_.__l.__size_;
  }

  if (v16 + size >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  if (v16 + size > 0x16)
  {
    operator new();
  }

  memset(&__dst, 0, sizeof(__dst));
  *(&__dst.__r_.__value_.__s + 23) = v16 + size;
  if (size)
  {
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v31;
    }

    else
    {
      v17 = v31.__r_.__value_.__r.__words[0];
    }

    memmove(&__dst, v17, size);
  }

  v18 = &__dst + size;
  if (v16)
  {
    if (v15 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    memmove(v18, p_p, v16);
  }

  v18[v16] = 0;
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v29;
  }

  else
  {
    v20 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v29.__r_.__value_.__l.__size_;
  }

  v22 = std::string::append(&__dst, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  sub_100326CE0(&v28, &v32);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_82;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_82;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_82:
  v24 = *a1;
  v25 = v32;
  *(a1 + 16) = v33;
  *(a1 + 24) = v34;
  if (v24 == v24 >> 31)
  {
    *a1 = 1;
    *(a1 + 8) = v25;
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_84;
    }
  }

  else
  {
    *(a1 + 8) = v25;
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_84:
      operator delete(v29.__r_.__value_.__l.__data_);
      if (v15 < 0)
      {
        goto LABEL_85;
      }

LABEL_89:
      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_86;
    }
  }

  if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_89;
  }

LABEL_85:
  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_86:
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_100326968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a35 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100326A48(unsigned __int16 *a1)
{
  sub_10003BFA8(&v7);
  v2 = v7;
  v3 = &v7 + *(v7 - 24);
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((&v7 + *(v7 - 24)));
    v4 = std::locale::use_facet(&v11, &std::ctype<char>::id);
    (v4->__vftable[2].~facet_0)(v4, 32);
    std::locale::~locale(&v11);
    v2 = v7;
  }

  *(v3 + 36) = 48;
  *(&v7 + *(v2 - 24) + 8) = *(&v7 + *(v2 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(&v9[1].__locale_ + *(v2 - 24)) = 4;
  v5 = *a1;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  std::locale::~locale(v9);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100326C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  sub_10003C1C4(&a9);
  _Unwind_Resume(a1);
}

void sub_100326CE0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v11 = a1[1];
    if (v11 != 40)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = *(a1 + 23);
    if (v4 != 40)
    {
LABEL_18:
      sub_1000474A4(v13, "");
      sub_100211F1C("Invalid hex string length ", &__dst);
      sub_100181374(&v11, &v16);
      sub_1000E661C(v13, &__dst, 2);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_20:
          if ((v14 & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

LABEL_24:
          operator delete(v13[0]);
LABEL_21:
          sub_10003F5D0(&__p);
        }
      }

      else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      operator delete(__dst.__r_.__value_.__l.__data_);
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }
  }

  v5 = 0;
  for (i = 0; ; i += 2)
  {
    v7 = *(a1 + 23);
    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (i >= v7)
    {
      return;
    }

    v8 = a1;
LABEL_12:
    v9 = v7 + v5;
    if (v9 >= 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9;
    }

    *(&__dst.__r_.__value_.__s + 23) = v10;
    memmove(&__dst, v8 + i, v10);
    *(&__dst | v10) = 0;
    *(a2 + (i >> 1)) = std::stoi(&__dst, 0, 16);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v5 -= 2;
  }

  v7 = a1[1];
  if (i < v7)
  {
    v8 = *a1;
    goto LABEL_12;
  }
}

void sub_100326EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_100326F28(const void **a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v7 = *(a1 + 23);
    if (v1 == 6)
    {
      LOBYTE(v1) = 6;
      goto LABEL_5;
    }

LABEL_12:
    sub_1000474A4(v9, "");
    sub_1001EDAE0("WiFi mac address was", &v11);
    sub_100181374(&v7, &v12);
    sub_100211F1C(" bytes, should have been 6", &v13);
    sub_1000E661C(v9, &v11, 3);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_14:
        if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    else if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v12.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      operator delete(v9[0]);
LABEL_16:
      sub_10003F5D0(&__p);
    }

LABEL_19:
    operator delete(v11.__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  v7 = a1[1];
  if (v7 != 6)
  {
    goto LABEL_12;
  }

LABEL_5:
  v6 = 0;
  v5 = 0;
  if ((v1 & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if ((v1 & 0x80u) == 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = a1[1];
  }

  memcpy(&v5, v2, v3);
  return bswap64(v5 | (v6 << 32)) >> 16;
}

void sub_1003270C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10032710C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
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
      JUMPOUT(0x1003270E8);
    }
  }
}

void *sub_100327138@<X0>(const void **a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v7 = *(a1 + 23);
    if (v3 == 20)
    {
      LOBYTE(v3) = 20;
      goto LABEL_5;
    }

LABEL_12:
    sub_1000474A4(v9, "");
    sub_1000D3660("Beacon mac address was", &v11);
    sub_100181374(&v7, &v12);
    sub_10017FD24(" bytes, should have been 20", &v13);
    sub_1000E661C(v9, &v11, 3);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_14:
        if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    else if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v12.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      operator delete(v9[0]);
LABEL_16:
      sub_10003F5D0(&__p);
    }

LABEL_19:
    operator delete(v11.__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  v7 = a1[1];
  if (v7 != 20)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v3 & 0x80u) == 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if ((v3 & 0x80u) == 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = a1[1];
  }

  return memcpy(a2, v4, v5);
}

void sub_1003272C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100327304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
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
      JUMPOUT(0x1003272E0);
    }
  }
}

double sub_100327330(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v2 = a1 + 8;
  *a1 = 0;
  v3 = *(a2 + 24);
  if (v3 == 2)
  {
    sub_100327138(*(a2 + 16), &v10);
    if (*a1 == *a1 >> 31)
    {
      v9 = *(&v10 + 1);
      *(a1 + 8) = v10;
      *(a1 + 16) = v9;
      *(a1 + 24) = v11;
      *a1 = 1;
    }

    else
    {
      result = *&v10;
      *v2 = v10;
      *(v2 + 16) = v11;
    }
  }

  else if (v3 == 1)
  {
    v5 = sub_100326F28(*(a2 + 16));
    v7 = *a1;
    if (v7 == v7 >> 31 || !v7)
    {
      *v2 = v5;
    }

    else
    {
      *(a1 + 8) = v5;
      *a1 = 0;
    }
  }

  return result;
}

void sub_100327470()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003274E0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100327570(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100449CD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003275C4(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_100340E34(v3 - 16);
      }

      while (v3 != v2);
      v4 = *(a1 + 64);
    }

    *(a1 + 72) = v2;
    operator delete(v4);
  }

  nullsub_35(a1 + 48);
  *(a1 + 24) = off_100439350;
  v5 = *(a1 + 40);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1003276C4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100327734()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

dispatch_queue_t *sub_100327940(dispatch_queue_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *a1 = dispatch_queue_create("dynamic settings runtime configuration", 0);
  a1[2] = objc_alloc_init(NSMutableArray);
  a1[3] = 0;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [v5 stringByAppendingString:@"/Prefs"];
  }

  v8 = a1[3];
  a1[3] = v7;

  sub_100327A28(a1);
  return a1;
}

uint64_t sub_100327A28(uint64_t a1)
{
  v2 = [*(a1 + 24) UTF8String];
  v3 = *a1;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3321888768;
  handler[2] = sub_100327CA0;
  handler[3] = &unk_100449D18;
  handler[4] = a1;
  result = notify_register_dispatch(v2, (a1 + 8), v3, handler);
  if (result)
  {
    sub_1000474A4(v7, "");
    sub_100259F4C("Failed to register", &v8);
    sub_100382FC4(&v8, __p, v7);
    sub_10003F5D0(__p);
  }

  return result;
}

void sub_100327B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100327B70(uint64_t a1)
{
  notify_cancel(*(a1 + 8));

  return a1;
}

void **sub_100327BB8(void **a1, uint64_t a2)
{
  *a1 = 0;
  a1[2] = 0;
  a1[3] = 0;
  notify_cancel(*(a2 + 8));
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;

  v7 = *a2;
  *a2 = v4;

  v8 = a1[2];
  a1[2] = 0;
  v9 = *(a2 + 16);
  *(a2 + 16) = 0;
  v10 = a1[2];
  a1[2] = v9;

  v11 = *(a2 + 16);
  *(a2 + 16) = v8;

  v12 = a1[3];
  a1[3] = 0;
  v13 = *(a2 + 24);
  *(a2 + 24) = 0;
  v14 = a1[3];
  a1[3] = v13;

  v15 = *(a2 + 24);
  *(a2 + 24) = v12;

  sub_100327A28(a1);
  return a1;
}

void sub_100327CA0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5) notify];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_100327DC0(NSObject **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[NotificationListener alloc] initWithCallback:v6 onQueue:v5];
  v8 = *a1;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_100327EAC;
  v10[3] = &unk_100449D48;
  v9 = v7;
  v11 = v9;
  v12 = a1;
  dispatch_async(v8, v10);
}

id sub_100327EB8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

void sub_100327EF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v10 = 0;
  v11 = &v10;
  v12 = 0x4012000000;
  v13 = sub_10032854C;
  v14 = nullsub_218;
  v15 = 0;
  v16 = 0;
  v3 = *(v2 + 16);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_10032855C;
  v7 = &unk_100449E30;
  v8 = v1;
  v9 = &v10;
  [v3 enumerateObjectsUsingBlock:&v4];
  if (*(v11 + 48) == 1)
  {
    [*(v2 + 16) removeObjectAtIndex:{v11[7], v4, v5, v6, v7}];
  }

  _Block_object_dispose(&v10, 8);
}

void sub_100327FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100328014(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  result = objc_retainBlock(v3);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_10032804C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  *a1 = off_100449DB8;
  v12 = v9;
  *(a1 + 8) = v12;
  v13 = v10;
  *(a1 + 16) = v13;
  v14 = v11;
  *(a1 + 24) = v14;
  sub_100327940((a1 + 32), v12, a5);
  if (!*(a1 + 8))
  {
    sub_1000474A4(v17, "");
    sub_10017FD24("applicationId cannot be nil", &__p);
    sub_1000E661C(v17, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    sub_1000BC6D8(v16);
  }

  if (!*(a1 + 16))
  {
    sub_1000474A4(v17, "");
    sub_100259F4C("user cannot be nil", &__p);
    sub_1000E661C(v17, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    sub_1000BC6D8(v16);
  }

  return a1;
}

void sub_100328224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100327B70((v20 + 4));

  _Unwind_Resume(a1);
}

void sub_1003282B0(uint64_t a1, id a2)
{
  v2 = a1 + 32;
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_100327EF4;
  v5[3] = &unk_100449D78;
  v4 = objc_retainBlock(a2);
  v5[4] = v2;
  v6 = objc_retainBlock(v4);
  dispatch_async(v3, v5);
}

uint64_t sub_100328358(uint64_t a1)
{
  notify_cancel(*(a1 + 40));

  return a1;
}

void sub_1003283B8(uint64_t a1)
{
  notify_cancel(*(a1 + 40));

  operator delete();
}

void sub_100328438()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "cannot override values in this kind of configuration");
}

void sub_100328494()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "cannot override values in this kind of configuration");
}

void sub_1003284F0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "cannot override values in this kind of configuration");
}

__n128 sub_10032854C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_10032855C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 cb];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    *a4 = 1;
    v9 = *(*(a1 + 40) + 8);
    *(v9 + 56) = a3;
    *(v9 + 48) = 1;
  }
}

void *sub_1003285E0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

uint64_t sub_100328718(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_100005B18(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10032876C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_10000FC84();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_10000D444();
  }

  v16 = 32 * v2;
  sub_10000F878(32 * v2, a2);
  v7 = 32 * v2 + 32;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 - v9;
  v11 = v16 + v10;
  if (*a1 != v9)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v16 + v10;
    do
    {
      sub_10000F9FC(v14, v13);
      v13 += 32;
      v14 += 32;
      v12 -= 32;
    }

    while (v13 != v9);
    do
    {
      sub_100005B18(v8);
      v8 += 32;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v11;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_1003288BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100328718(va);
  _Unwind_Resume(a1);
}

void sub_1003288D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v3)
  {
    v5 = v2 - 32;
    do
    {
      sub_100005B18(v5);
      v5 -= 32;
      v3 += 32;
    }

    while (v3);
  }

  sub_100328718(va);
  _Unwind_Resume(a1);
}

void **sub_100328900(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 32;
        sub_100005B18(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t **sub_100328964(void *a1, uint64_t a2)
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

void sub_100328D5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100010440(va);
  _Unwind_Resume(a1);
}

void sub_100328D70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_100010440(va);
  _Unwind_Resume(a1);
}

const void **sub_100328D98(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_100328DD0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100328E40()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100328EB0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100328ED8(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100003228(a1, *a2, *(a2 + 1));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v6 = *a3;
      *(a1 + 40) = *(a3 + 2);
      *(a1 + 24) = v6;
      return a1;
    }
  }

  sub_100003228((a1 + 24), *a3, *(a3 + 1));
  return a1;
}

void sub_100328F64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100328F80(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  buf.__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 104) != 1)
  {
    v8 = *a1;
    v9 = a1[1];
    buf.__r_.__value_.__l.__data_ = std::chrono::system_clock::now().__d_.__rep_;
    sub_10010C81C(&buf);
  }

  if (*(a2 + 135) < 0)
  {
    sub_100003228(&buf.__r_.__value_.__s.__data_[8], *(a2 + 112), *(a2 + 120));
  }

  else
  {
    *&buf.__r_.__value_.__r.__words[1] = *(a2 + 112);
    v18 = *(a2 + 128);
  }

  buf.__r_.__value_.__s.__data_[0] = 1;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__size_);
    buf.__r_.__value_.__s.__data_[0] = 0;
    if (*(a2 + 104) == 1)
    {
LABEL_8:
      if (*(a2 + 135) < 0)
      {
        sub_100003228(&buf.__r_.__value_.__s.__data_[8], *(a2 + 112), *(a2 + 120));
      }

      else
      {
        *&buf.__r_.__value_.__r.__words[1] = *(a2 + 112);
        v18 = *(a2 + 128);
      }

      buf.__r_.__value_.__s.__data_[0] = 1;
      if (*(a1 + 31) < 0)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  else
  {
    buf.__r_.__value_.__s.__data_[0] = 0;
    if (*(a2 + 104) == 1)
    {
      goto LABEL_8;
    }
  }

  if (*(a1 + 31) < 0)
  {
LABEL_15:
    operator delete(*(a1 + 1));
  }

LABEL_12:
  *(a1 + 2) = *&buf.__r_.__value_.__r.__words[1];
  *(a1 + 3) = v18;
  (*(**(a1 + 7) + 32))(&v15);
  *(&v16.__r_.__value_.__s + 23) = 4;
  strcpy(&v16, "logs");
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100003228(&buf, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = v15;
  }

  sub_1000032E4(&buf, &v16);
  if (*(a1 + 31) < 0)
  {
    sub_100003228(&v19, *(a1 + 1), *(a1 + 2));
  }

  else
  {
    v19 = *(a1 + 2);
    v20 = *(a1 + 3);
  }

  sub_1000032E4(&buf, &v19);
  __dst = buf;
  memset(&buf, 0, sizeof(buf));
  if ((SHIBYTE(v20) & 0x80000000) == 0 || (operator delete(v19), (SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0))
  {
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_25:
    operator delete(v16.__r_.__value_.__l.__data_);
  }

LABEL_26:
  sub_100019390(&__dst, 0);
  sub_100002F5C(&__dst, 0, &buf);
  if (LODWORD(buf.__r_.__value_.__l.__data_) <= 1)
  {
    __cxa_allocate_exception(0x60uLL);
    memset(&v16, 0, sizeof(v16));
    boost::filesystem::filesystem_error::filesystem_error(&buf, "Log directory doesn't exist", &__dst, &v16);
    sub_10010A984(&v16);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
    v10 = (a1 + 8);
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v10 = (a1 + 8);
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }
  }

  operator delete(*v10);
LABEL_29:
  *v10 = __dst;
  if (qword_10045B050 != -1)
  {
    sub_1003875FC();
  }

  v11 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v12 = v10;
    if (*(a1 + 55) < 0)
    {
      v12 = *v10;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Logging sensors into %s", &buf, 0xCu);
  }

  sub_10032A32C(a1, a3, a4);
  if (a1[1] == 2)
  {
    sub_10032ACD4(a1, a2, a3, a4);
  }

  (*(*a3 + 48))(&buf, a3);
  *(&v15.__r_.__value_.__s + 23) = 13;
  strcpy(&v15, "phoneinfo.txt");
  if (*(a1 + 55) < 0)
  {
    sub_100003228(&v16, *(a1 + 4), *(a1 + 5));
  }

  else
  {
    v16 = *v10;
  }

  sub_1000032E4(&v16, &v15);
  LOBYTE(v19) = 0;
  sub_1000EDB60(&buf.__r_.__value_.__l.__data_, &v16, &v19, 1, &v13);
  sub_1000ED500(&v13);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_47:
    operator delete(v15.__r_.__value_.__l.__data_);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_48;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_47;
  }

LABEL_44:
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return;
  }

LABEL_48:
  operator delete(buf.__r_.__value_.__l.__data_);
}

void sub_100329C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a49 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a49 & 0x80000000) == 0)
  {
LABEL_3:
    if (a42 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  operator delete(v62[4]);
  if (a42 < 0)
  {
LABEL_4:
    operator delete(a37);
    if ((a35 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  if ((a35 & 0x80000000) == 0)
  {
LABEL_5:
    if (a28 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a30);
  if (a28 < 0)
  {
LABEL_6:
    operator delete(a23);
    if ((a22 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  if ((a22 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a56 & 0x80000000) == 0)
    {
LABEL_16:
      if (*(v63 - 105) < 0)
      {
        operator delete(v62[30]);
      }

      if (a62 < 0)
      {
        operator delete(v62[11]);
      }

      _Unwind_Resume(a1);
    }

LABEL_15:
    operator delete(v62[8]);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a17);
  if ((a56 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_100329DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a38 < 0)
  {
    operator delete(v44[8]);
  }

  if (*(v45 - 105) < 0)
  {
    operator delete(v44[30]);
  }

  if (a44 < 0)
  {
    operator delete(v44[11]);
  }

  _Unwind_Resume(a1);
}

void sub_100329DD8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(*(v43 + 88));
    if ((*(v44 - 201) & 0x80000000) == 0)
    {
LABEL_3:
      if (a2 != 1)
      {
LABEL_12:
        JUMPOUT(0x10032A1C8);
      }

LABEL_7:
      __cxa_begin_catch(a1);
      if (*(v41 + 80) != -1)
      {
        sub_1003875FC();
      }

      if (os_log_type_enabled(*(v42 + 88), OS_LOG_TYPE_ERROR))
      {
        sub_1000D83A8();
      }

      __cxa_end_catch();
      JUMPOUT(0x100329B2CLL);
    }
  }

  else if ((*(v44 - 201) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v43 + 144));
  if (a2 != 1)
  {
    goto LABEL_12;
  }

  goto LABEL_7;
}

void sub_100329DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v45 - 201) < 0)
  {
    operator delete(*(v44 + 144));
    if (a44 < 0)
    {
      goto LABEL_5;
    }
  }

  else if (a44 < 0)
  {
LABEL_5:
    v46 = *(v44 + 112);
    JUMPOUT(0x10032A1B4);
  }

  JUMPOUT(0x10032A1B8);
}

void sub_100329DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if ((a44 & 0x80000000) == 0)
  {
    JUMPOUT(0x10032A1B8);
  }

  JUMPOUT(0x10032A180);
}

void sub_100329E88(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(v47[14]);
    if ((a41 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v48 - 201) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a41 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v47[11]);
  if ((*(v48 - 201) & 0x80000000) == 0)
  {
LABEL_4:
    if (a2 != 1)
    {
LABEL_10:
      JUMPOUT(0x10032A1C8);
    }

LABEL_9:
    JUMPOUT(0x100329EFCLL);
  }

LABEL_8:
  operator delete(v47[18]);
  if (a2 != 1)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_100329EEC(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    JUMPOUT(0x100329EFCLL);
  }

  JUMPOUT(0x10032A1C8);
}

void sub_100329F34(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int buf)
{
  if (*(v42 - 201) >= 0)
  {
    v43 = v40;
  }

  else
  {
    v43 = *(v41 + 144);
  }

  buf = 136315138;
  *(v41 + 116) = v43;
  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Trouble writing out stuff %s", &buf, 0xCu);
  if (*(v42 - 201) < 0)
  {
    operator delete(*(v41 + 144));
  }

  __cxa_end_catch();
  JUMPOUT(0x100329B2CLL);
}

void sub_100329FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    v39 = *(v38 + 64);
    JUMPOUT(0x10032A1B4);
  }

  JUMPOUT(0x10032A1B8);
}

void sub_10032A090()
{
  sub_10032B8F4((v2 - 224));
  v3 = *(v1 + 240);
  if (v3)
  {
    *(v1 + 248) = v3;
    operator delete(v3);
  }

  __cxa_free_exception(v0);
  __cxa_end_catch();
  JUMPOUT(0x10032A110);
}

void sub_10032A120(void *a1, int a2)
{
  if (a2)
  {
    sub_10000D388(a1);
  }

  JUMPOUT(0x10032A1C8);
}

void sub_10032A130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v45 - 105) < 0)
  {
    operator delete(*(v44 + 240));
    if (*(v45 - 201) < 0)
    {
LABEL_5:
      operator delete(*(v44 + 144));
      if (a44 < 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else if (*(v45 - 201) < 0)
  {
    goto LABEL_5;
  }

  if (a44 < 0)
  {
LABEL_8:
    v46 = *(v44 + 112);
    JUMPOUT(0x10032A1B4);
  }

LABEL_12:
  JUMPOUT(0x10032A1B8);
}

void sub_10032A16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if ((*(v45 - 201) & 0x80000000) == 0)
  {
    JUMPOUT(0x10032A178);
  }

  operator delete(*(v44 + 144));
  if (a44 < 0)
  {
    JUMPOUT(0x10032A180);
  }

  JUMPOUT(0x10032A1B8);
}

void sub_10032A18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a38 < 0)
  {
    JUMPOUT(0x10032A198);
  }

  if (*(v45 - 105) < 0)
  {
    operator delete(*(v44 + 240));
  }

  if (a44 < 0)
  {
    operator delete(*(v44 + 88));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10032A1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  *a1 = a5;
  *(a1 + 4) = a6;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  sub_100328F80(a1, a3, a2, a7);
  return a1;
}

void sub_10032A238(_Unwind_Exception *a1)
{
  v4 = v2;
  sub_10002BB1C(v4);
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v3);
  _Unwind_Resume(a1);
}

uint64_t sub_10032A280(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_8;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  if (*(a1 + 55) < 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_8:
  operator delete(*(a1 + 8));
  return a1;
}

void sub_10032A32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000A825C(v32);
  v6 = v35 | 2;
  v35 |= 2u;
  v7 = v34;
  if (!v34)
  {
    operator new();
  }

  v35 = v6 | 1;
  v8 = v33;
  if (!v33)
  {
    operator new();
  }

  *(v34 + 76) |= 0x10u;
  v9 = *(v7 + 48);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 84) |= 1u;
  v10 = *(v9 + 16);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 76) |= 0x40u;
  v11 = *(v10 + 64);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 28) |= 1u;
  v12 = *(v11 + 16);
  if (!v12)
  {
    operator new();
  }

  v13 = *(v10 + 76) | 1;
  *(v10 + 76) = v13;
  v14 = *(v10 + 16);
  if (!v14)
  {
    operator new();
  }

  *(v10 + 52) = 2;
  *(v10 + 76) = v13 | 0x84;
  v15 = *(v10 + 24);
  if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v15, (a1 + 8));
  (*(*a2 + 32))(&__str, a2);
  *(v10 + 76) |= 8u;
  v16 = *(v10 + 32);
  if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v16, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  (*(*a2 + 24))(&__str, a2);
  *(v10 + 76) |= 0x10u;
  v17 = *(v10 + 40);
  if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v17, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v18 = *(a1 + 4);
  *(v10 + 76) |= 2u;
  *(v10 + 48) = v18;
  v19 = sub_1001CA208();
  *(v14 + 52) |= 2u;
  *(v14 + 24) = v19;
  v20 = sub_1001CA2CC();
  *(v14 + 52) |= 4u;
  *(v14 + 32) = v20;
  v21.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  *(v14 + 52) |= 1u;
  *(v14 + 16) = (1000 * v21.__d_.__rep_) / 1000000000.0 + -978307200.0;
  v22 = sub_10010C670();
  *(v14 + 52) |= 8u;
  *(v14 + 40) = v22;
  v23 = *(v12 + 40);
  *(v12 + 32) = *(a3 + 16);
  v24 = *(a3 + 24);
  *(v12 + 40) = v23 | 0xC;
  *(v12 + 24) = v24;
  v25 = *(a3 + 12);
  *(v12 + 40) = v23 | 0xE;
  *(v12 + 20) = v25;
  v26 = sub_1003019B0(*(a3 + 8));
  *(v12 + 40) |= 1u;
  *(v12 + 16) = v26;
  v27 = *(v8 + 52);
  *(v8 + 16) = *(v14 + 16);
  *(v8 + 32) = *(v14 + 32);
  v28 = *(v14 + 40);
  *(v8 + 52) = v27 | 0xF;
  *(v8 + 40) = v28;
  v30 = 19;
  strcpy(__p, "datarun_metadata.pb");
  if (*(a1 + 55) < 0)
  {
    sub_100003228(&__str, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    __str = *(a1 + 32);
  }

  sub_1000032E4(&__str, __p);
  sub_10032AB58(v32, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (v30 < 0)
    {
LABEL_32:
      operator delete(*__p);
    }
  }

  else if (v30 < 0)
  {
    goto LABEL_32;
  }

  sub_1000A9070(v32);
}

void sub_10032A864(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t buf, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_begin_catch(a1);
    if (qword_10045B050 == -1)
    {
LABEL_3:
      v24 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
LABEL_5:
        __cxa_end_catch();
        JUMPOUT(0x10032A840);
      }

LABEL_4:
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Exception writing protobuf metadata", &buf, 2u);
      goto LABEL_5;
    }
  }

  else
  {
    __cxa_begin_catch(a1);
    if (qword_10045B050 == -1)
    {
      goto LABEL_3;
    }
  }

  sub_1003875FC();
  v24 = qword_10045B058;
  if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

void sub_10032AACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000A9070(va);
  _Unwind_Resume(a1);
}

void sub_10032AAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000A9070(va);
  _Unwind_Resume(a1);
}

void sub_10032AAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000A9070(va);
  _Unwind_Resume(a1);
}

void sub_10032AB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000A9070(va);
  _Unwind_Resume(a1);
}

void sub_10032AB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_1000A9070(&a20);
    _Unwind_Resume(a1);
  }

  sub_1000A9070(&a20);
  _Unwind_Resume(a1);
}

void sub_10032AB58(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100003228(&v7, *a2, *(a2 + 8));
  }

  else
  {
    v7 = *a2;
  }

  v5 = 16;
  strcpy(__p, ".protoToFile-tmp");
  sub_10001AEA8(&v7, __p);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  sub_1000EC3F8(&v7, 2, 420, &v6);
  wireless_diagnostics::google::protobuf::io::FileOutputStream::FileOutputStream(__p, v6, -1);
  sub_10032B988(a1);
  wireless_diagnostics::google::protobuf::io::FileOutputStream::~FileOutputStream(__p);
  sub_1000ED500(&v6);
  sub_10001A224(&v7, a2, 0);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_10032AC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if ((*(v14 - 25) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v14 - 48));
  _Unwind_Resume(exception_object);
}

void sub_10032ACD4(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10010C670();
  v9.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v12.__r_.__value_.__r.__words[0] = off_10043A548;
  *&v12.__r_.__value_.__r.__words[1] = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v15, 0, 28);
  memset(&v15[32], 0, 153);
  v16 = off_10043A508;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  memset(v23, 0, sizeof(v23));
  v21 = off_10043A528;
  v22 = v23;
  v24[2] = 0;
  v24[3] = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v29 = 0;
  v28 = 0;
  *(v24 + 5) = 0;
  v24[0] = 0;
  v30 = 1;
  sub_1000E2D28(&v12, 4);
  sub_1000E2C38(&v12, (a1 + 8));
  sub_1000E2C40(&v12, a2);
  (*(*a3 + 32))(v31, a3);
  sub_1000E2C48(&v12, v31);
  if (SHIBYTE(v31[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31[0].__r_.__value_.__l.__data_);
  }

  sub_1000E2C50(&v12, *a1);
  (*(*a3 + 24))(v31, a3);
  sub_1000E2C58(&v12, v31);
  if (SHIBYTE(v31[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31[0].__r_.__value_.__l.__data_);
  }

  (*(*a3 + 40))(v31, a3);
  sub_1000E2C60(&v12, v31);
  if (SHIBYTE(v31[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31[0].__r_.__value_.__l.__data_);
  }

  sub_1000E2C68(&v12, v8 / 1000000);
  sub_1000E2D00(&v12, v8);
  sub_1000E2D14(&v12, 1000 * v9.__d_.__rep_);
  sub_1000E2C70(&v12, a2 + 2);
  sub_1000E2C78(&v12, a2 + 1);
  v29 |= 0x400u;
  sub_1000E2C80(&v12, a4);
  sub_1000E2720(v31, &a2[5].__r_.__value_.__r.__words[2]);
  sub_1000E2CA4(&v12, v31);
  sub_1000E1ACC(v31);
  v11 = 20;
  strcpy(__p, "datarun_metadata.bin");
  if (*(a1 + 55) < 0)
  {
    sub_100003228(&v33, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v33 = *(a1 + 32);
  }

  sub_1000032E4(&v33, __p);
  sub_100018AFC(0, v31);
  sub_100016F50(&v33, v31, 0, v32);
  if (SHIBYTE(v31[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31[0].__r_.__value_.__l.__data_);
  }

  sub_1000EE460(v32);
}

void sub_10032B370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (a2 != 1)
    {
      goto LABEL_10;
    }
  }

  else if (a2 != 1)
  {
LABEL_10:
    sub_1000E2BFC(&a15);
    _Unwind_Resume(a1);
  }

  v18 = __cxa_begin_catch(a1);
  if (qword_10045B050 != -1)
  {
    sub_1003875FC();
  }

  v19 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
    v20 = (*(*v18 + 16))(v18);
    *(v15 - 96) = 136315138;
    *(v15 - 92) = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Somehow we failed to convert our metadata into a thrift file. %s", (v15 - 96), 0xCu);
  }

  __cxa_end_catch();
  JUMPOUT(0x10032B330);
}

void sub_10032B5C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  boost::filesystem::filesystem_error::filesystem_error(v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10[0].__vftable = &off_10043B0B0;
  v11 = off_10043B0D8;
  sub_1000F0C64(v16, v10);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v9 = a5[1] - *a5;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1000F0984();
}

void sub_10032B8CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_10032B8F4(boost::filesystem::filesystem_error *a1)
{
  *(a1 + 6) = &off_100431E10;
  v1 = *(a1 + 7);
  if (v1)
  {
    v2 = a1;
    v3 = (*(*v1 + 32))(*(a1 + 7));
    a1 = v2;
    if (v3)
    {
      *(v2 + 7) = 0;
    }
  }

  boost::filesystem::filesystem_error::~filesystem_error(a1);
}

uint64_t sub_10032B988(uint64_t a1)
{
  result = wireless_diagnostics::google::protobuf::MessageLite::SerializeToZeroCopyStream();
  if ((result & 1) == 0)
  {
    if (qword_10045B050 != -1)
    {
      sub_100387624();
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
    v20 = "serialized";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Failed to serialize-append properly, typename:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (qword_10045B050 != -1)
    {
      sub_1003875FC();
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
    v20 = "serialized";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to serialize-append properly", "{msg%{public}.0s:Failed to serialize-append properly, typename:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (qword_10045B050 != -1)
    {
      sub_1003875FC();
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
    v20 = "serialized";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Failed to serialize-append properly, typename:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_24:
    abort_report_np();
  }

  return result;
}

uint64_t sub_10032BE34(uint64_t a1)
{
  *a1 = off_100439558;
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

void sub_10032BF24()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10032BF94()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

std::string *sub_10032C004@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10032C038(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10032C054()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10032C0C4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10032C134()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

std::string *sub_10032C15C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10032C190(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10032C1AC(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_10032C4E0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10032C550()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10032C5C0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

Class sub_10032C5E8()
{
  if (qword_10045D610 != -1)
  {
    sub_100387638();
  }

  result = objc_getClass("AVAssetWriter");
  qword_10045D638 = result;
  return result;
}

Class sub_10032C628()
{
  if (qword_10045D610 != -1)
  {
    sub_100387638();
  }

  result = objc_getClass("AVAssetWriterInput");
  qword_10045D640 = result;
  return result;
}

Class sub_10032C668()
{
  if (qword_10045D610 != -1)
  {
    sub_100387638();
  }

  result = objc_getClass("AVAssetWriterInputPixelBufferAdaptor");
  qword_10045D648 = result;
  return result;
}

Class sub_10032C6A8()
{
  if (qword_10045D610 != -1)
  {
    sub_100387638();
  }

  result = objc_getClass("AVAssetReader");
  qword_10045D658 = result;
  return result;
}

Class sub_10032C6E8()
{
  if (qword_10045D610 != -1)
  {
    sub_100387638();
  }

  result = objc_getClass("AVURLAsset");
  qword_10045D660 = result;
  return result;
}

Class sub_10032C728()
{
  if (qword_10045D610 != -1)
  {
    sub_100387638();
  }

  result = objc_getClass("AVAssetReaderTrackOutput");
  qword_10045D668 = result;
  return result;
}

id sub_10032C768()
{
  if (qword_10045D688 == -1)
  {
    v1 = qword_10045D570;
  }

  else
  {
    sub_10038764C();
    v1 = qword_10045D570;
  }

  return v1;
}

id sub_10032C7C0()
{
  if (qword_10045D690 == -1)
  {
    v1 = qword_10045D578;
  }

  else
  {
    sub_100387660();
    v1 = qword_10045D578;
  }

  return v1;
}

id sub_10032C818()
{
  if (qword_10045D698 == -1)
  {
    v1 = qword_10045D580;
  }

  else
  {
    sub_100387674();
    v1 = qword_10045D580;
  }

  return v1;
}

id sub_10032C870()
{
  if (qword_10045D6A0 == -1)
  {
    v1 = qword_10045D588;
  }

  else
  {
    sub_100387688();
    v1 = qword_10045D588;
  }

  return v1;
}

id sub_10032C8C8()
{
  if (qword_10045D6A8 == -1)
  {
    v1 = qword_10045D590;
  }

  else
  {
    sub_10038769C();
    v1 = qword_10045D590;
  }

  return v1;
}

id sub_10032C920()
{
  if (qword_10045D6B0[0] == -1)
  {
    v1 = qword_10045D598;
  }

  else
  {
    sub_1003876B0();
    v1 = qword_10045D598;
  }

  return v1;
}

uint64_t sub_10032C984(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  return off_10045C278(&v2);
}

uint64_t sub_10032C9D8()
{
  if (qword_10045D740 == -1)
  {
    v0 = dlsym(qword_10045D748, "kCVPixelBufferPixelFormatTypeKey");
    if (v0)
    {
LABEL_3:
      result = *v0;
      qword_10045D738 = result;
      return result;
    }
  }

  else
  {
    sub_1003876C4();
    v0 = dlsym(qword_10045D748, "kCVPixelBufferPixelFormatTypeKey");
    if (v0)
    {
      goto LABEL_3;
    }
  }

  return qword_10045D738;
}

void sub_10032CA90(id a1)
{
  if (qword_10045D610 == -1)
  {
    v1 = dlsym(qword_10045D618, "AVMediaTypeVideo");
    if (!v1)
    {
      return;
    }
  }

  else
  {
    sub_100387638();
    v1 = dlsym(qword_10045D618, "AVMediaTypeVideo");
    if (!v1)
    {
      return;
    }
  }

  v2 = *v1;

  objc_storeStrong(&qword_10045D570, v2);
}

void sub_10032CB0C(id a1)
{
  if (qword_10045D610 == -1)
  {
    v1 = dlsym(qword_10045D618, "AVFileTypeMPEG4");
    if (!v1)
    {
      return;
    }
  }

  else
  {
    sub_100387638();
    v1 = dlsym(qword_10045D618, "AVFileTypeMPEG4");
    if (!v1)
    {
      return;
    }
  }

  v2 = *v1;

  objc_storeStrong(&qword_10045D578, v2);
}

void sub_10032CB88(id a1)
{
  if (qword_10045D610 == -1)
  {
    v1 = dlsym(qword_10045D618, "AVVideoCodecKey");
    if (!v1)
    {
      return;
    }
  }

  else
  {
    sub_100387638();
    v1 = dlsym(qword_10045D618, "AVVideoCodecKey");
    if (!v1)
    {
      return;
    }
  }

  v2 = *v1;

  objc_storeStrong(&qword_10045D580, v2);
}

void sub_10032CC04(id a1)
{
  if (qword_10045D610 == -1)
  {
    v1 = dlsym(qword_10045D618, "AVVideoCodecH264");
    if (!v1)
    {
      return;
    }
  }

  else
  {
    sub_100387638();
    v1 = dlsym(qword_10045D618, "AVVideoCodecH264");
    if (!v1)
    {
      return;
    }
  }

  v2 = *v1;

  objc_storeStrong(&qword_10045D588, v2);
}

void sub_10032CC80(id a1)
{
  if (qword_10045D610 == -1)
  {
    v1 = dlsym(qword_10045D618, "AVVideoWidthKey");
    if (!v1)
    {
      return;
    }
  }

  else
  {
    sub_100387638();
    v1 = dlsym(qword_10045D618, "AVVideoWidthKey");
    if (!v1)
    {
      return;
    }
  }

  v2 = *v1;

  objc_storeStrong(&qword_10045D590, v2);
}

void sub_10032CCFC(id a1)
{
  if (qword_10045D610 == -1)
  {
    v1 = dlsym(qword_10045D618, "AVVideoHeightKey");
    if (!v1)
    {
      return;
    }
  }

  else
  {
    sub_100387638();
    v1 = dlsym(qword_10045D618, "AVVideoHeightKey");
    if (!v1)
    {
      return;
    }
  }

  v2 = *v1;

  objc_storeStrong(&qword_10045D598, v2);
}

uint64_t sub_10032CDA4(uint64_t a1)
{
  if (qword_10045D728 != -1)
  {
    sub_1003876D8();
  }

  v2 = dlsym(qword_10045D730, "CMSampleBufferGetPresentationTimeStamp");
  off_10045C270 = v2;

  return (v2)(a1);
}

uint64_t sub_10032CE18(__int128 *a1)
{
  if (qword_10045D728 != -1)
  {
    sub_1003876D8();
  }

  off_10045C278 = dlsym(qword_10045D730, "CMTimeGetSeconds");
  v3 = *a1;
  v4 = *(a1 + 2);
  return (off_10045C278)(&v3);
}

uint64_t sub_10032CE90(uint64_t a1)
{
  if (qword_10045D728 != -1)
  {
    sub_1003876D8();
  }

  v2 = dlsym(qword_10045D730, "CMSampleBufferGetImageBuffer");
  off_10045C280 = v2;

  return (v2)(a1);
}

uint64_t sub_10032CEFC(uint64_t a1, uint64_t a2)
{
  if (qword_10045D728 != -1)
  {
    sub_1003876D8();
  }

  v4 = dlsym(qword_10045D730, "CMTimeMake");
  off_10045C288 = v4;

  return (v4)(a1, a2);
}

uint64_t sub_10032CFAC(uint64_t a1)
{
  if (qword_10045D740 != -1)
  {
    sub_1003876C4();
  }

  v2 = dlsym(qword_10045D748, "CVPixelBufferGetWidth");
  off_10045C298 = v2;

  return (v2)(a1);
}

uint64_t sub_10032D018(uint64_t a1)
{
  if (qword_10045D740 != -1)
  {
    sub_1003876C4();
  }

  v2 = dlsym(qword_10045D748, "CVPixelBufferGetHeight");
  off_10045C2A0 = v2;

  return (v2)(a1);
}

void sub_10032D084()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10032D0AC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10032D11C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10032D18C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10032D1FC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10032D26C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10032D294()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10032D304()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10032D374()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10032D3E4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t *sub_10032D4A4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10031EAFC(v2);
    operator delete();
  }

  return a1;
}

void sub_10032D5D0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_10032D5F8@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_100003228(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v32 = *(a2 + 16);
  }

  sub_10031EAF8(v33, __p, 3, 0);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *a1;
  v7 = archive_entry_new();
  v8 = v6[3];
  v37 = 0;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  while (1)
  {
    next_header2 = archive_read_next_header2();
    if (next_header2 == 1)
    {
      break;
    }

    ++v37;
    sub_10032DB00(v6, next_header2, "Failed to read entry ", &v37);
    v10 = v37;
    v11 = archive_entry_pathname();
    v12 = strlen(v11);
    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v13 = v12;
    if (v12 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v39) = v12;
    if (v12)
    {
      memmove(&__dst, v11, v12);
    }

    *(&__dst + v13) = 0;
    sub_10001B06C(&__dst);
    if (v14)
    {
      if (qword_10045B050 != -1)
      {
        sub_1003876EC();
      }

      v15 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        p_dst = &__dst;
        if (v39 < 0)
        {
          p_dst = __dst;
        }

        *buf = 67109378;
        v41 = v10;
        v42 = 2080;
        v43 = p_dst;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Cannot extract entry %d (%s) - it is absolute", buf, 0x12u);
      }

      v34 = 0;
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v17 = *(a3 + 24);
      if (!v17)
      {
        sub_1000DB498();
      }

      (*(*v17 + 48))(&v34);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(__dst);
      v18 = HIBYTE(v36);
      if (v36 >= 0)
      {
        v19 = HIBYTE(v36);
      }

      else
      {
        v19 = v35;
      }

      if (v19)
      {
        goto LABEL_36;
      }

LABEL_29:
      if (v18 < 0)
      {
        goto LABEL_43;
      }

LABEL_30:
      if (v19)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v18 = HIBYTE(v36);
      if (v36 >= 0)
      {
        v19 = HIBYTE(v36);
      }

      else
      {
        v19 = v35;
      }

      if (!v19)
      {
        goto LABEL_29;
      }

LABEL_36:
      sub_100016F50(&v34, a2, 0, &__dst);
      v20 = a4[1];
      if (v20 < a4[2])
      {
        v21 = __dst;
        *(v20 + 16) = v39;
        *v20 = v21;
        a4[1] = v20 + 24;
        v22 = v20;
        if ((*(v20 + 23) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

LABEL_41:
        v25 = *v22;
        goto LABEL_42;
      }

      v23 = sub_1000D3744(a4, &__dst);
      v24 = SHIBYTE(v39);
      a4[1] = v23;
      if ((v24 & 0x80000000) == 0)
      {
        v22 = (v23 - 24);
        if ((*(v23 - 1) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      operator delete(__dst);
      v27 = a4[1];
      v22 = (v27 - 24);
      if (*(v27 - 1) < 0)
      {
        goto LABEL_41;
      }

LABEL_42:
      archive_entry_set_pathname();
      if ((v36 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_43:
      operator delete(v34);
      if (v19)
      {
LABEL_44:
        if (!*(archive_entry_stat() + 4))
        {
          archive_entry_set_perm();
        }

        extract2 = archive_read_extract2();
        *&__dst = archive_entry_pathname();
        sub_10032DD94(v33, extract2, "Failed to save entry ", &v37, &__dst);
      }
    }
  }

  if (v7)
  {
    archive_entry_free();
  }

  sub_10031ED84(v33);
  sub_10031EB48(*a1);
  return sub_10031EAFC(v33);
}

void sub_10032DA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10000D388(exception_object);
}

uint64_t sub_10032DB00(uint64_t result, uint64_t a2, std::string::value_type *__s, int *a4)
{
  if (a2)
  {
    v6 = result;
    v22 = 0;
    LOBYTE(v21) = 0;
    memset(&v27, 0, sizeof(v27));
    std::string::assign(&v27, __s);
    memset(&v28, 0, sizeof(v28));
    v31 = v29;
    v32 = &v30;
    v7 = *a4;
    if (*a4 >= 0)
    {
      v8 = *a4;
    }

    else
    {
      v8 = -v7;
    }

    v23 = v8;
    v24 = &v30;
    v25 = 48;
    v26 = 48;
    v9 = sub_1000E4C90(&v23);
    v10 = v9;
    v11 = &v28;
    if (v7 < 0)
    {
      *(v9 - 1) = 45;
      v10 = (v9 - 1);
      v31 = (v9 - 1);
      v32 = &v30;
      v12 = (&v30 - v9 + 1);
      if (v12 < 0x17)
      {
LABEL_7:
        if (v10 != &v30)
        {
LABEL_8:
          if (v12 < 0x20 || (v11 - v10) < 0x20)
          {
            v13 = v11;
            v14 = v10;
          }

          else
          {
            v13 = (v11 + (v12 & 0xFFFFFFFFFFFFFFE0));
            v14 = &v10[v12 & 0xFFFFFFFFFFFFFFE0];
            v15 = (v10 + 16);
            v16 = &v11->__r_.__value_.__r.__words[2];
            v17 = v12 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v18 = *v15;
              *(v16 - 1) = *(v15 - 1);
              *v16 = v18;
              v15 += 2;
              v16 += 4;
              v17 -= 32;
            }

            while (v17);
            if (v12 == (v12 & 0xFFFFFFFFFFFFFFE0))
            {
              goto LABEL_21;
            }
          }

          do
          {
            v19 = *v14++;
            v13->__r_.__value_.__s.__data_[0] = v19;
            v13 = (v13 + 1);
          }

          while (v14 != &v30);
LABEL_21:
          v13->__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
          {
            v28.__r_.__value_.__l.__size_ = v12;
          }

          else
          {
            *(&v28.__r_.__value_.__s + 23) = v12 & 0x7F;
          }

          sub_1000E661C(&v21, &v27, 2);
          if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v28.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_26:
              if ((v22 & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

LABEL_31:
              operator delete(v21);
LABEL_27:
              sub_10031F5A4(v6, a2, &__p);
            }
          }

          else if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_26;
          }

          operator delete(v27.__r_.__value_.__l.__data_);
          if ((v22 & 0x80000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_31;
        }

LABEL_18:
        v13 = v11;
        goto LABEL_21;
      }
    }

    else
    {
      v31 = v9;
      v32 = &v30;
      v12 = (&v30 - v9);
      if ((&v30 - v9) < 0x17)
      {
        goto LABEL_7;
      }
    }

    std::string::__grow_by(&v28, 0x16uLL, v12 - 22, 0, 0, 0, 0);
    v28.__r_.__value_.__l.__size_ = 0;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v28.__r_.__value_.__r.__words[0];
    }

    if (v10 != &v30)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  return result;
}

void sub_10032DD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10032DD94(uint64_t result, uint64_t a2, std::string::value_type *__s, int *a4, const std::string::value_type **a5)
{
  if (a2)
  {
    v8 = result;
    v24 = 0;
    LOBYTE(v23) = 0;
    memset(&v29, 0, sizeof(v29));
    std::string::assign(&v29, __s);
    v9 = &v30;
    memset(&v30, 0, sizeof(v30));
    v34 = v32;
    v35 = &v33;
    v10 = *a4;
    if (*a4 >= 0)
    {
      v11 = *a4;
    }

    else
    {
      v11 = -v10;
    }

    v25 = v11;
    v26 = &v33;
    v27 = 48;
    v28 = 48;
    v12 = sub_1000E4C90(&v25);
    v13 = v12;
    if (v10 < 0)
    {
      *(v12 - 1) = 45;
      v13 = (v12 - 1);
      v34 = (v12 - 1);
      v35 = &v33;
      v14 = (&v33 - v12 + 1);
      if (v14 < 0x17)
      {
LABEL_7:
        if (v13 != &v33)
        {
LABEL_8:
          if (v14 < 0x20 || (v9 - v13) < 0x20)
          {
            v15 = v9;
            v16 = v13;
          }

          else
          {
            v15 = (v9 + (v14 & 0xFFFFFFFFFFFFFFE0));
            v16 = &v13[v14 & 0xFFFFFFFFFFFFFFE0];
            v17 = (v13 + 16);
            v18 = &v9->__r_.__value_.__r.__words[2];
            v19 = v14 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v20 = *v17;
              *(v18 - 1) = *(v17 - 1);
              *v18 = v20;
              v17 += 2;
              v18 += 4;
              v19 -= 32;
            }

            while (v19);
            if (v14 == (v14 & 0xFFFFFFFFFFFFFFE0))
            {
              goto LABEL_21;
            }
          }

          do
          {
            v21 = *v16++;
            v15->__r_.__value_.__s.__data_[0] = v21;
            v15 = (v15 + 1);
          }

          while (v16 != &v33);
LABEL_21:
          v15->__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
          {
            v30.__r_.__value_.__l.__size_ = v14;
          }

          else
          {
            *(&v30.__r_.__value_.__s + 23) = v14 & 0x7F;
          }

          memset(&v31, 0, sizeof(v31));
          std::string::assign(&v31, *a5);
          sub_1000E661C(&v23, &v29, 3);
          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_26:
              if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              goto LABEL_32;
            }
          }

          else if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_26;
          }

          operator delete(v30.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_27:
            if ((v24 & 0x80000000) == 0)
            {
              goto LABEL_28;
            }

LABEL_33:
            operator delete(v23);
LABEL_28:
            sub_10031F5A4(v8, a2, &__p);
          }

LABEL_32:
          operator delete(v29.__r_.__value_.__l.__data_);
          if ((v24 & 0x80000000) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_33;
        }

LABEL_18:
        v15 = v9;
        goto LABEL_21;
      }
    }

    else
    {
      v34 = v12;
      v35 = &v33;
      v14 = (&v33 - v12);
      if ((&v33 - v12) < 0x17)
      {
        goto LABEL_7;
      }
    }

    std::string::__grow_by(&v30, 0x16uLL, v14 - 22, 0, 0, 0, 0);
    v30.__r_.__value_.__l.__size_ = 0;
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v30.__r_.__value_.__r.__words[0];
    }

    if (v13 != &v33)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  return result;
}

void sub_10032E020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10032E0DC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10032E14C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10032EB50(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10032F534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error((v19 - 48));
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void sub_10032FF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_1003307E4(uint64_t a1, double *a2)
{
  sub_100003AE8(*a1);
  if (v15[0] == v15[0] >> 31)
  {
    v4 = *a2;
  }

  else
  {
    v4 = sub_100330AD8(v15, __p);
    if ((*(a1 + 8) & 1) == 0)
    {
      if (qword_10045B050 != -1)
      {
        sub_100387714();
      }

      v5 = qword_10045B058;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        sub_1000D8264(v15, __p);
        if (v10 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136315394;
        v12 = v6;
        v13 = 2080;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "developer override of %s with %s", buf, 0x16u);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(a1 + 8) = 1;
    }
  }

  sub_100005B18(v15);
  return v4;
}

id sub_100330A80()
{
  if (qword_10045B050 == -1)
  {
    v1 = qword_10045B058;
  }

  else
  {
    sub_10038773C();
    v1 = qword_10045B058;
  }

  return v1;
}

double sub_100330AD8(int *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1 + 2;
  v4 = v3 ^ (v3 >> 31);
  if (v4 <= 2)
  {
    if (!v4)
    {
      sub_100330B68();
    }

    if (v4 == 1)
    {
      return *v2;
    }

    else
    {
      return *v2;
    }
  }

  else
  {
    if (v4 > 4)
    {
      if (v4 == 5)
      {
        v6 = *v2;
        sub_10033128C();
      }

      v7 = *v2;
      sub_100331410();
    }

    if (v4 == 3)
    {
      return sub_100330CEC(a2, v2);
    }

    else
    {
      return *v2;
    }
  }
}

void sub_100330C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100330CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x100330CA4);
}

double sub_100330CEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 < 0)
  {
    v2 = *(a2 + 8);
  }

  v9 = 0.0;
  v10.__vftable = v3;
  v11 = (v3 + v2);
  if (!sub_10033104C(v3, v3 + v2, &v9, "NAN", "nan", "INFINITY", "infinity", 0x28u, 0x29u))
  {
    if (!sub_100330E08(&v10) || ((v4 = *(v11 - 1) - 43, v5 = v4 > 0x3A, v6 = (1 << v4) & 0x400000004000005, !v5) ? (v7 = v6 == 0) : (v7 = 1), !v7))
    {
      std::bad_cast::bad_cast(&v10);
      v10.__vftable = &off_100434090;
      sub_100049F88(&v10);
    }
  }

  return v9;
}

BOOL sub_100330E08(std::locale::__imp **a1)
{
  std::locale::locale(v14);
  memset(&v14[4], 0, 24);
  v2 = *a1;
  v3 = a1[1];
  __sb = off_1004486E0;
  v14[1].__locale_ = v2;
  v14[2].__locale_ = v2;
  v14[3].__locale_ = v3;
  v10.__loc_ = 0;
  v9[1] = 0;
  std::ios_base::init(&v10, &__sb);
  v11 = 0;
  v12 = -1;
  v4->__exceptions_ = 1;
  std::ios_base::clear(v4, v4->__rdstate_);
  v5 = v9[0];
  *(&v9[1] + *(v9[0] - 24)) &= ~0x1000u;
  *(&v9[2] + *(v5 - 24)) = 17;
  v6 = std::istream::operator>>();
  v7 = (*(v6 + *(*v6 - 24) + 32) & 5) == 0 && std::istream::get() == -1;
  std::istream::~istream();
  std::locale::~locale(v14);
  return v7;
}

void sub_100330FEC(_Unwind_Exception *a1)
{
  std::istream::~istream();
  *(v3 - 112) = v1;
  std::locale::~locale(v2 + 1);
  _Unwind_Resume(a1);
}

void sub_10033100C(_Unwind_Exception *a1)
{
  std::ios::~ios();
  *(v3 - 112) = v1;
  std::locale::~locale(v2 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10033104C(unsigned __int8 *a1, unsigned __int8 *a2, double *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 a8, unsigned __int8 a9)
{
  if (a1 == a2)
  {
    return 0;
  }

  v9 = *a1;
  v10 = v9 == 45 || v9 == 43;
  v11 = v10 ? a1 + 1 : a1;
  v12 = a2 - v11;
  if (a2 - v11 < 3)
  {
    return 0;
  }

  v14 = *v11;
  if (v14 == *a5 || v14 == *a4)
  {
    v15 = v11[1];
    if (v15 == a5[1] || v15 == a4[1])
    {
      v16 = v11[2];
      if (v16 == a5[2] || v16 == a4[2])
      {
        v17 = v11 + 3;
        if (v17 == a2 || a2 - v17 >= 2 && *v17 == a8 && *(a2 - 1) == a9)
        {
          v18 = NAN;
          if (v9 == 45)
          {
            v18 = NAN;
          }

          *a3 = v18;
          return 1;
        }

        return 0;
      }
    }
  }

  if (v12 == 3)
  {
    if (v14 != *a7 && v14 != *a6)
    {
      return 0;
    }

    v26 = v11[1];
    if (v26 != a7[1] && v26 != a6[1])
    {
      return 0;
    }

    v27 = v11[2];
    if (v27 != a7[2] && v27 != a6[2])
    {
      return 0;
    }
  }

  else
  {
    if (v12 != 8 || v14 != *a7 && v14 != *a6)
    {
      return 0;
    }

    v19 = v11[1];
    if (v19 != a7[1] && v19 != a6[1])
    {
      return 0;
    }

    v20 = v11[2];
    if (v20 != a7[2] && v20 != a6[2])
    {
      return 0;
    }

    v21 = v11[3];
    if (v21 != a7[3] && v21 != a6[3])
    {
      return 0;
    }

    v22 = v11[4];
    if (v22 != a7[4] && v22 != a6[4])
    {
      return 0;
    }

    v23 = v11[5];
    if (v23 != a7[5] && v23 != a6[5])
    {
      return 0;
    }

    v24 = v11[6];
    if (v24 != a7[6] && v24 != a6[6])
    {
      return 0;
    }

    v25 = v11[7];
    if (v25 != a7[7] && v25 != a6[7])
    {
      return 0;
    }
  }

  v28 = INFINITY;
  if (v9 == 45)
  {
    v28 = -INFINITY;
  }

  *a3 = v28;
  return 1;
}

void sub_100331370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1003313D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1003313C8);
}

void sub_1003314F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10033155C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10033154CLL);
}

void sub_100331594(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_1003315D8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100331648()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1003316B8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void *sub_1003316E0(void *result)
{
  *result = off_10044A0D8;
  v1 = result[4];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  *result = off_10044A188;
  v3 = result[2];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_100331864(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  *a1 = off_10044A030;
  v8 = *a3;
  if (*a3 && ((*(*v8 + 40))(*a3) & 1) == 0)
  {
    v9 = (*(*v8 + 32))(v8);
    v10 = v9[1];
    *(a1 + 8) = *v9;
    *(a1 + 24) = v10;
    if ((*(a2 + 1914) & 8) == 0)
    {
LABEL_7:
      v11 = sub_10033B4E0((a2 + 1800));
LABEL_8:
      v12 = a3[1];
      *(a1 + 48) = *a3;
      *(a1 + 40) = v11;
      *(a1 + 56) = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1000BC024(a2, (a1 + 64));
      sub_10011B8B8(a1 + 80, a2);
      v13 = *a4;
      if (*a4)
      {
        *a4 = 0;
        *(a1 + 2000) = v13;
        sub_1001181E4(a1 + 2008, (a1 + 88));
      }

      operator new();
    }
  }

  else
  {
    *(a1 + 8) = xmmword_1003DE5A0;
    *(a1 + 24) = unk_1003DE5B0;
    if ((*(a2 + 1914) & 8) == 0)
    {
      goto LABEL_7;
    }
  }

  v11 = *(a2 + 1824);
  if (v11 > 0.0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_100331A10(_Unwind_Exception *a1)
{
  sub_10011B04C(v1 + 80);
  sub_10002BB1C(v1 + 64);
  sub_10002BB1C(v2);
  _Unwind_Resume(a1);
}

void sub_100331A7C(_Unwind_Exception *a1)
{
  sub_10002BB1C(v1 + 64);
  sub_10002BB1C(v2);
  _Unwind_Resume(a1);
}

void *sub_100331AB0(void *a1)
{
  *a1 = off_10044A030;
  v2 = a1[252];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[250];
  a1[250] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_10011B04C(a1 + 10);
  v4 = a1[9];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[7];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_100331C14(void *a1)
{
  sub_100331AB0(a1);

  operator delete();
}

double sub_100331C4C(uint64_t a1)
{
  if (sub_10031C9E0((a1 + 8)))
  {
    sub_1000474A4(v7, "");
    sub_1002B0628("Radio map tile must have finite bounds. Localizer doesn't know about floorplans.", &v8);
    sub_100382FC4(&v8, __p, v7);
    sub_10003F5D0(__p);
  }

  result = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  return result;
}

void sub_100331D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100331D44(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *a2 = off_10043DB28;
  *(a2 + 16) = 0;
  *(a2 + 24) &= 0xFCu;
  if ((*(a1 + 1993) & 0x80) != 0)
  {
    sub_10011B8B8(v2, a1 + 80);
    sub_1000B9540(v2);
  }

  sub_1000474A4(v3, "");
  sub_1000D36B0("Only production tiles are allowed.", &v6);
  sub_1000E661C(v3, &v6, 1);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  sub_10003F5D0(&v5);
}

void sub_100331FEC(_Unwind_Exception *a1)
{
  if (*(v2 - 121) < 0)
  {
    operator delete(*(v2 - 144));
    nullsub_76(v1);
    _Unwind_Resume(a1);
  }

  nullsub_76(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003320E4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 72);
  *a2 = *(result + 64);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100332160(void *a1)
{
  *a1 = off_10044A0D8;
  v1 = a1[4];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  *a1 = off_10044A188;
  v3 = a1[2];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_100332368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1003323D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1003323C0);
}

void sub_1003324F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100332558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x100332548);
}

BOOL sub_1003325B0(uint64_t a1)
{
  v1 = (*(*a1 + 56))(a1);

  return sub_100232884(v1);
}

uint64_t sub_1003325F8@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_10043DB28;
  *(a1 + 24) &= 0xFCu;
  sub_1001294D4(a1, NAN);
  return sub_1001294DC(a1, NAN);
}

const void **sub_100332688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100118234(a1 + 24);
  if (*(result + 23) < 0)
  {
    v5 = *result;
    v6 = result[1];

    return sub_100003228(a2, v5, v6);
  }

  else
  {
    v4 = *result;
    *(a2 + 16) = result[2];
    *a2 = v4;
  }

  return result;
}

void sub_1003326F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10033272C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN22StaticFloorEnvironment22offmapFloorEnvironmentEvE3$_0")
  {
    if (((v2 & "ZN22StaticFloorEnvironment22offmapFloorEnvironmentEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN22StaticFloorEnvironment22offmapFloorEnvironmentEvE3$_0"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN22StaticFloorEnvironment22offmapFloorEnvironmentEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003327A4(uint64_t a1, double a2, double a3)
{
  v6[0] = off_10043DB08;
  v7 = 0;
  *&v6[1] = a2;
  *&v6[2] = a3;
  v3 = sub_10031C98C((a1 + 8), v6);
  nullsub_75(v6);
  if (v3)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v4 | v3;
}

void sub_100332910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100332978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x100332968);
}

double sub_1003329B0(uint64_t a1)
{
  result = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  return result;
}

uint64_t sub_1003329CC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v9 = a7;
  v10 = a6;
  v14 = (*(*a1 + 16))(a1, a6, a7);
  if (v14)
  {
    v18 = HIBYTE(v14);
  }

  else
  {
    v15 = atan2(v9 - a5, v10 - a4) + 1.57079633;
    v16 = (*(**a3 + 64))(0.0, 3.0);
    v17 = __sincos_stret(v15);
    v10 = v10 + v16 * v17.__cosval;
    v9 = v9 + v16 * v17.__sinval;
    v14 = (*(*a1 + 16))(a1, v10, v9);
    v18 = HIBYTE(v14);
    if ((v14 & 1) == 0)
    {
      return v14 | (v18 << 8);
    }
  }

  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  return v14 | (v18 << 8);
}

void sub_100332AF4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100332B64()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100332BD4()
{
  qword_100471CD0 = 0;
  unk_100471CD8 = 0;
  qword_100471CC8 = off_10044A0D8;
  sub_1001180E4();
}

void sub_100332C58(_Unwind_Exception *a1)
{
  *v1 = off_10044A188;
  sub_10002BB1C((v1 + 1));
  _Unwind_Resume(a1);
}

void sub_100332EDC(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_100332F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10033314C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, id a12)
{
  sub_1003339B4(&a9);

  _Unwind_Resume(a1);
}

void ***sub_100333940(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v6 = *(v4 - 2);
          v4 -= 16;
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void **sub_1003339B4(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 2);
        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_100333A14(unint64_t *a1, id *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 3;
  v4 = (v2 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_10000FC84();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  v8 = *a2;
  v9 = *a1;
  v10 = a1[1];
  v11 = 8 * v3 - (v10 - *a1);
  *(8 * v3) = v8;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v13 = v12 - 8;
    v14 = v9;
    v15 = v11;
    if ((v12 - 8) < 0x98)
    {
      goto LABEL_30;
    }

    v16 = v9 >= v2 + (v13 & 0xFFFFFFFFFFFFFFF8) - v12 + 8 || v11 >= v9 + (v13 & 0xFFFFFFFFFFFFFFF8) + 8;
    v14 = v9;
    v15 = v11;
    if (!v16)
    {
      goto LABEL_30;
    }

    v17 = v12 >> 3;
    v18 = (v13 >> 3) + 1;
    v19 = v18 & 0x3FFFFFFFFFFFFFFCLL;
    v14 = &v9[v19];
    v15 = (v11 + v19 * 8);
    v20 = (-8 * v17 + 8 * v3 + 16);
    v21 = (v9 + 2);
    v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *(v21 - 1);
      v24 = *v21;
      *(v21 - 1) = 0uLL;
      *v21 = 0uLL;
      *(v20 - 1) = v23;
      *v20 = v24;
      v20 += 2;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_30:
      do
      {
        v25 = *v14;
        *v14++ = 0;
        *v15++ = v25;
      }

      while (v14 != v10);
    }

    do
    {
      v26 = *v9++;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = 8 * v3 + 8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return 8 * v3 + 8;
}

void sub_100333BD0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100333C40()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100333CB0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100333CD8(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, char a5, __int128 *a6, uint64_t a7)
{
  v8 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *a3;
  *(a1 + 40) = *(a3 + 2);
  *(a1 + 24) = v9;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v10 = *a4;
  *(a1 + 64) = *(a4 + 2);
  *(a1 + 48) = v10;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  *(a1 + 72) = a5;
  v11 = *a6;
  *(a1 + 96) = *(a6 + 2);
  *(a1 + 80) = v11;
  *(a6 + 1) = 0;
  *(a6 + 2) = 0;
  *a6 = 0;
  *(a1 + 104) = 0;
  sub_1000E2720(a1 + 136, a7);
  return a1;
}

void sub_100333D70(_Unwind_Exception *a1)
{
  if (*(v1 + 104) == 1)
  {
    if (*(v1 + 135) < 0)
    {
      operator delete(*(v1 + 112));
    }

    *(v1 + 104) = 0;
  }

  sub_100387758(v1, (v1 + 80), (v1 + 48), (v1 + 24));
  _Unwind_Resume(a1);
}

void sub_100333DB4(uint64_t a1@<X0>, char **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (qword_10045B050 != -1)
  {
    sub_1003877E4();
  }

  v5 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v12 = sub_10011823C(a2);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Setting up floor environment for %{private}s", buf, 0xCu);
  }

  (*(**(a1 + 8) + 120))(&v10);
  sub_1002C699C(&v10, buf);
  (*(**(a1 + 8) + 128))(&v9);
  v8 = 0;
  if (sub_1002CCA50(&v9))
  {
    sub_1002CCA60(&v9);
    operator new();
  }

  v7[29] = sub_1002C7578(&v10);
  v6 = sub_1002C7520(&v10);
  sub_1002C64C0(v6, v7);
  sub_1000C0ECC();
}

void sub_100334450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002BB1C(&a9);
  sub_10002BB1C(&a11);
  operator delete();
}

void sub_100334478(void *a1, void *a2)
{
  *a1 = off_10044A2C0;
  v2 = a2[1];
  a1[1] = *a2;
  a1[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    v3 = a1[1];
  }

  operator new();
}

void sub_100334580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    sub_10038782C(a9);
    sub_10002BB1C(v9);
    _Unwind_Resume(a1);
  }

  sub_10002BB1C(v9);
  _Unwind_Resume(a1);
}

double sub_1003345E8@<D0>(uint64_t a1@<X0>, const void ***a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_1001182C8(a2, &qword_10045DF78))
  {

    sub_1003317E0();
  }

  sub_100334674(a1, a2, v7);
  result = *&v8;
  *a3 = v8;
  return result;
}

std::__shared_weak_count *sub_100334674@<X0>(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  v13 = 0;
  v6 = sub_10024A8AC((a1 + 40), a2);
  v7 = v6;
  if (!v6)
  {
    sub_100333DB4(a1, a2, &v11);
  }

  v8 = v6[5];
  if (!v8 || (result = std::__shared_weak_count::lock(v8)) == 0)
  {
    v12 = 0;
    v13 = 0;
LABEL_7:
    sub_100333DB4(a1, a2, &v11);
  }

  v10 = v7[4];
  v12 = v10;
  v13 = result;
  if (!v10)
  {
    goto LABEL_7;
  }

  *a3 = 0;
  *(a3 + 8) = v10;
  *(a3 + 16) = result;
  return result;
}

void sub_10033482C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_100334840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_100334854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_100334868(uint64_t a1@<X0>, const void ***a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_1001182C8(a2, &qword_10045DF78))
  {
    sub_1003317E0();
  }

  v17 = 0;
  v18 = 0;
  v6 = sub_10024A8AC((a1 + 40), a2);
  v7 = v6;
  if (v6)
  {
    v8 = v6[5];
    if (v8 && (v9 = std::__shared_weak_count::lock(v8)) != 0)
    {
      v10 = v9;
      v11 = v7[4];
      v17 = v11;
      v18 = v10;
      if (v11)
      {
        v12 = (*(*v11 + 7))(v11);
        sub_10011B8B8(a3, v12);
LABEL_14:
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        return;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }
  }

  sub_100120A04(&v16);
  (*(**(a1 + 8) + 120))(&v14);
  sub_1002C699C(&v14, a3);
  v13 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  sub_10011B04C(&v16);
  v10 = v18;
  if (v18)
  {
    goto LABEL_14;
  }
}

void sub_100334AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002BB1C(&a9);
  sub_10011B04C(&a11);
  sub_10002BB1C(v11 - 64);
  _Unwind_Resume(a1);
}

void sub_100334AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_100334B24(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (!(((v4 - *a2) >> 3) >> 60))
    {
      operator new();
    }

    sub_10000FC84();
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    do
    {
      while (1)
      {
        v6 = v5[5];
        if (!v6 || *(v6 + 8) == -1)
        {
          break;
        }

        v5 = *v5;
        if (!v5)
        {
          return;
        }
      }

      v7 = *v5;
      sub_100010A88((a1 + 40), v5, buf);
      v8 = *buf;
      *buf = 0;
      if (v8)
      {
        if (BYTE8(v12) == 1)
        {
          v9 = v8[5];
          if (v9)
          {
            std::__shared_weak_count::__release_weak(v9);
          }

          v10 = v8[3];
          if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }
        }

        operator delete(v8);
      }

      v5 = v7;
    }

    while (v7);
  }
}

void sub_100334ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002BB1C(va);
  sub_100048F1C(v3);
  _Unwind_Resume(a1);
}

void sub_100334EEC(void *a1)
{
  sub_100334F5C(a1);

  operator delete();
}

void *sub_100334F5C(void *a1)
{
  *a1 = off_10044A2C0;
  v2 = a1[7];
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[5];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = v3[3];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v3);
  }

  v6 = a1[5];
  a1[5] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = a1[4];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[2];
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_100335210(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_100335228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002BB1C(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_100335268(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044A370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003352E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100335320(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100335350(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteI15OnDiskRadioMapsEE")
  {
    if (((v2 & "NSt3__114default_deleteI15OnDiskRadioMapsEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteI15OnDiskRadioMapsEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteI15OnDiskRadioMapsEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_1003353D0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044A410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10033544C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t *a5)
{
  v7 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  v5 = *a5;
  *a5 = 0;
  v6 = v5;
  sub_100331AAC(a2, a3, &v7, &v6);
}

void sub_100335528(_Unwind_Exception *a1, uint64_t a2, uint64_t *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_100387888(a3);
  }

  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_10033561C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    sub_10038782C(a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void sub_100335664(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044A460;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void ***sub_1003356E0(void *a1, uint64_t ***a2)
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

void sub_100335A3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100335A50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100335A50(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[5];
      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }

      v4 = v2[3];
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_100335AF0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100335B60()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_100335BD0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a1 = off_10044A4B0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 80) = 1065353216;
  return result;
}

void sub_100335C24(void *a1, int a2)
{
  if (qword_10045B050 != -1)
  {
    sub_1003878BC();
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v5 = (a1[4] - a1[3]) >> 3;
    *buf = 67109376;
    *&buf[4] = a2;
    v15 = 2048;
    __p[0] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Starting up sensor collection %d with %zu sensors in collection", buf, 0x12u);
  }

  sub_100339F88(a2, buf);
  if (((*(*a1 + 16))(a1, buf) & 1) == 0)
  {
    if (qword_10045B050 != -1)
    {
      sub_1003878D0();
    }

    v6 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      v7 = (a1[4] - a1[3]) >> 3;
      v11[0] = 67109376;
      v11[1] = a2;
      v12 = 2048;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "WARNING: Attempt to start control group %d but no matching sensors found (%zu sensors available)", v11, 0x12u);
    }
  }

  v8 = *(__p + 6);
  if (*(__p + 6))
  {
    do
    {
      v9 = *v8;
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = *buf;
  *buf = 0;
  if (v10)
  {
    operator delete(v10);
  }
}

void sub_100335DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001F9AF8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100335DF8(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4;
      v8 = (*(**v4 + 48))(*v4);
      v9 = a2[1];
      if (v9)
      {
        v10 = vcnt_s8(v9);
        v10.i16[0] = vaddlv_u8(v10);
        if (v10.u32[0] > 1uLL)
        {
          v11 = v8;
          if (v9 <= v8)
          {
            v11 = v8 % v9;
          }
        }

        else
        {
          v11 = (v9 - 1) & v8;
        }

        v12 = *(*a2 + 8 * v11);
        if (v12)
        {
          v13 = *v12;
          if (v13)
          {
            if (v10.u32[0] < 2uLL)
            {
              v14 = v9 - 1;
              while (1)
              {
                v15 = v13[1];
                if (v15 == v8)
                {
                  if (*(v13 + 4) == v8)
                  {
                    goto LABEL_3;
                  }
                }

                else if ((v15 & v14) != v11)
                {
                  goto LABEL_4;
                }

                v13 = *v13;
                if (!v13)
                {
                  goto LABEL_4;
                }
              }
            }

            do
            {
              v16 = v13[1];
              if (v16 == v8)
              {
                if (*(v13 + 4) == v8)
                {
LABEL_3:
                  (*(*v7 + 24))(v7);
                  v6 = 1;
                  break;
                }
              }

              else
              {
                if (v16 >= v9)
                {
                  v16 %= v9;
                }

                if (v16 != v11)
                {
                  break;
                }
              }

              v13 = *v13;
            }

            while (v13);
          }
        }
      }

LABEL_4:
      ++v4;
    }

    while (v4 != v5);
  }

  for (i = a2[2]; i; i = *i)
  {
    sub_10032C1AC(a1 + 6, i + 4);
  }

  return v6 & 1;
}

void sub_100335FA0(void *a1, int a2)
{
  if (qword_10045B050 != -1)
  {
    sub_1003878BC();
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = a1;
    v14 = 1024;
    __p[0] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Stopping sensor collection %p %d", buf, 0x12u);
  }

  sub_100339F88(a2, buf);
  if (((*(*a1 + 40))(a1, buf) & 1) == 0)
  {
    if (qword_10045B050 != -1)
    {
      sub_1003878D0();
    }

    v5 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      v6 = (a1[4] - a1[3]) >> 3;
      v10[0] = 67109376;
      v10[1] = a2;
      v11 = 2048;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "WARNING: Attempt to stop control group %d but no matching sensors found (%zu sensors available)", v10, 0x12u);
    }
  }

  v7 = *(__p + 2);
  if (*(__p + 2))
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *buf;
  *buf = 0;
  if (v9)
  {
    operator delete(v9);
  }
}

void sub_100336150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001F9AF8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100336168(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4;
      v8 = (*(**v4 + 48))(*v4);
      v9 = a2[1];
      if (v9)
      {
        v10 = vcnt_s8(v9);
        v10.i16[0] = vaddlv_u8(v10);
        if (v10.u32[0] > 1uLL)
        {
          v11 = v8;
          if (v9 <= v8)
          {
            v11 = v8 % v9;
          }
        }

        else
        {
          v11 = (v9 - 1) & v8;
        }

        v12 = *(*a2 + 8 * v11);
        if (v12)
        {
          v13 = *v12;
          if (v13)
          {
            if (v10.u32[0] < 2uLL)
            {
              v14 = v9 - 1;
              while (1)
              {
                v15 = v13[1];
                if (v15 == v8)
                {
                  if (*(v13 + 4) == v8)
                  {
                    goto LABEL_3;
                  }
                }

                else if ((v15 & v14) != v11)
                {
                  goto LABEL_4;
                }

                v13 = *v13;
                if (!v13)
                {
                  goto LABEL_4;
                }
              }
            }

            do
            {
              v16 = v13[1];
              if (v16 == v8)
              {
                if (*(v13 + 4) == v8)
                {
LABEL_3:
                  (*(*v7 + 32))(v7);
                  v6 = 1;
                  break;
                }
              }

              else
              {
                if (v16 >= v9)
                {
                  v16 %= v9;
                }

                if (v16 != v11)
                {
                  break;
                }
              }

              v13 = *v13;
            }

            while (v13);
          }
        }
      }

LABEL_4:
      ++v4;
    }

    while (v4 != v5);
  }

  for (i = a2[2]; i; i = *i)
  {
    v19 = a1[7];
    if (v19)
    {
      v20 = *(i + 4);
      v21 = vcnt_s8(v19);
      v21.i16[0] = vaddlv_u8(v21);
      if (v21.u32[0] > 1uLL)
      {
        v22 = *(i + 4);
        if (*&v19 <= v20)
        {
          v22 = v20 % *&v19;
        }
      }

      else
      {
        v22 = (*&v19 - 1) & v20;
      }

      v23 = *(a1[6] + 8 * v22);
      if (v23)
      {
        v24 = *v23;
        if (*v23)
        {
          if (v21.u32[0] < 2uLL)
          {
            v25 = *&v19 - 1;
            while (1)
            {
              v26 = *(v24 + 8);
              if (v26 == v20)
              {
                if (*(v24 + 16) == v20)
                {
                  goto LABEL_51;
                }
              }

              else if ((v26 & v25) != v22)
              {
                goto LABEL_29;
              }

              v24 = *v24;
              if (!v24)
              {
                goto LABEL_29;
              }
            }
          }

          do
          {
            v27 = *(v24 + 8);
            if (v27 == v20)
            {
              if (*(v24 + 16) == v20)
              {
LABEL_51:
                sub_100010A88(a1 + 6, v24, &__p);
                v28 = __p;
                __p = 0;
                if (v28)
                {
                  operator delete(v28);
                }

                break;
              }
            }

            else
            {
              if (v27 >= *&v19)
              {
                v27 %= *&v19;
              }

              if (v27 != v22)
              {
                break;
              }
            }

            v24 = *v24;
          }

          while (v24);
        }
      }
    }

LABEL_29:
    ;
  }

  return v6 & 1;
}

void sub_100336404(void *a1, uint64_t a2)
{
  v18 = a2;
  v5 = a1[3];
  v6 = a1[4];
  v4 = (a1 + 3);
  if (v5 != v6)
  {
    while (*v5 != a2)
    {
      if (++v5 == v6)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 == v6)
  {
LABEL_10:
    sub_10003ABD8(v4, &v18);
    v9 = (*(*v18 + 48))(v18);
    v10 = a1[7];
    if (v10)
    {
      v11 = vcnt_s8(v10);
      v11.i16[0] = vaddlv_u8(v11);
      if (v11.u32[0] > 1uLL)
      {
        v12 = v9;
        if (v10 <= v9)
        {
          v12 = v9 % v10;
        }
      }

      else
      {
        v12 = (v10 - 1) & v9;
      }

      v13 = *(a1[6] + 8 * v12);
      if (v13)
      {
        v14 = *v13;
        if (v14)
        {
          if (v11.u32[0] < 2uLL)
          {
            v15 = v10 - 1;
            while (1)
            {
              v17 = v14[1];
              if (v17 == v9)
              {
                if (*(v14 + 4) == v9)
                {
                  goto LABEL_31;
                }
              }

              else if ((v17 & v15) != v12)
              {
                return;
              }

              v14 = *v14;
              if (!v14)
              {
                return;
              }
            }
          }

          do
          {
            v16 = v14[1];
            if (v16 == v9)
            {
              if (*(v14 + 4) == v9)
              {
LABEL_31:
                (*(*v18 + 24))(v18);
                return;
              }
            }

            else
            {
              if (v16 >= v10)
              {
                v16 %= v10;
              }

              if (v16 != v12)
              {
                return;
              }
            }

            v14 = *v14;
          }

          while (v14);
        }
      }
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_1003878BC();
    }

    v7 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      v8 = (*(*a2 + 48))(a2);
      *buf = 67109120;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Sensor %d already in collection", buf, 8u);
    }
  }
}

void sub_100336650(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  while (v2 != v3)
  {
    v5 = *v2++;
    sub_1003387F8(v5, a2);
  }
}

void sub_100336698(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  while (v2 != v3)
  {
    v5 = *v2++;
    sub_100338D90(v5, a2);
  }
}

uint64_t sub_1003366E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  do
  {
    v5 = *v1++;
    v4 = v4 + sub_100338EE4(v5);
    v3 += v6;
  }

  while (v1 != v2);
  return v4;
}

void *sub_100336758(void *a1)
{
  *a1 = off_10044A4B0;
  v2 = a1[8];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  v6 = a1[2];
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

void sub_100336828(void *a1)
{
  *a1 = off_10044A4B0;
  v2 = a1[8];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete();
}

void sub_100336938()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003369A8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100336A18(uint64_t result, _DWORD *a2, uint64_t a3, int a4, char a5, char a6, int a7, uint64_t a8, double a9, double a10)
{
  v11 = a2 + 2;
  v10 = *a2;
  if (v10 == v10 >> 31)
  {
    *(result + 8) = *v11;
    v12 = v10;
  }

  else
  {
    v13 = *v11;
    *(result + 24) = a2[6];
    *(result + 8) = v13;
    v12 = *a2;
    v10 = *a2 >> 31;
  }

  *result = v12 ^ v10;
  *(result + 32) = a9;
  *(result + 40) = 0;
  if (*a3 == 1)
  {
    *(result + 44) = *(a3 + 4);
    *(result + 40) = 1;
  }

  *(result + 48) = a5;
  *(result + 49) = a6;
  *(result + 56) = a8;
  *(result + 64) = a7;
  *(result + 72) = a10;
  *(result + 80) = a4;
  return result;
}

uint64_t sub_100336A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = 0;
  *a4 = off_10043DC98;
  *(a4 + 8) = 0;
  *(a4 + 16) = a4 + 24;
  v7 = a4 + 16;
  v8 = (a4 + 40);
  *(a4 + 96) = 0;
  v9 = (a4 + 96);
  *(a4 + 140) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = off_10043DC78;
  *(a4 + 48) = 0;
  *(a4 + 54) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 64) = 0;
  *(a4 + 88) = 0;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  *(a4 + 128) = 0;
  *(a4 + 135) = 0;
  *(a4 + 144) &= 0x80u;
  *(a4 + 152) &= 0xF8u;
  sub_100126648(a4, a1);
  v10 = *(a4 + 152) | 2;
  *(a4 + 152) = v10;
  v11 = a3[1];
  if (*a3 != v11)
  {
    v12 = (*a3 + 80);
    do
    {
      v18 = off_10043DC58;
      LODWORD(v19) = 0;
      BYTE4(v19) = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 &= 0xC0u;
      sub_1001294D4(&v18, *(v12 - 6));
      sub_1001313D4(&v18, *v12);
      sub_10012A3A4(&v18, *(v12 - 32) == 0);
      sub_10012E9CC(&v18, *(v12 - 3));
      sub_1001313DC(&v18, *(v12 - 31) == 1);
      sub_1001313E4(&v18, *(v12 - 9));
      v25 = &v24;
      if (*(v12 - 20) == *(v12 - 20) >> 31)
      {
        sub_10017DCEC((v12 - 18), __p);
      }

      else
      {
        sub_10017DF00(v12 - 72, v12 - 52);
      }

      sub_100337708(v7, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      nullsub_80(&v18);
      v13 = v12 + 2;
      v12 += 22;
    }

    while (v13 != v11);
    v10 = *(a4 + 152);
  }

  *(a4 + 152) = v10 | 4;
  sub_100126648(v8, *(a2 + 32));
  if (*(a2 + 48) == 1)
  {
    sub_100131E0C(v8, *(a2 + 52));
  }

  sub_10012A3A4(v8, *(a2 + 56) == 0);
  sub_100131E20(v8, *(a2 + 60) == 1);
  if (*a2 == 1)
  {
    sub_100131E28(v8, (a2 + 8));
  }

  *(a4 + 88) = *(a2 + 40);
  sub_10031C068(a2, &v18);
  v14 = *v9;
  if (*v9)
  {
    *(a4 + 104) = v14;
    operator delete(v14);
  }

  *(a4 + 96) = v18;
  *(a4 + 112) = v19;
  sub_100131E5C(v8, *(a2 + 88) == 0);
  sub_100131E64(v8, *(a2 + 96));
  return sub_100131E78(v8, *(a2 + 104) != 2);
}

void sub_100336DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nullsub_80(va);
  sub_10013338C(v5);
  _Unwind_Resume(a1);
}

void sub_100336DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    nullsub_80(&a16);
    sub_10013338C(v16);
    _Unwind_Resume(a1);
  }

  nullsub_80(&a16);
  sub_10013338C(v16);
  _Unwind_Resume(a1);
}

void sub_100336E1C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a1;
  sub_1000A825C(a4);
  *(a4 + 60) |= 1u;
  v7 = *(a4 + 40);
  if (!v7)
  {
    operator new();
  }

  v8 = sub_10010C670();
  *(v7 + 52) |= 8u;
  *(v7 + 40) = v8;
  *(a4 + 60) |= 1u;
  v9 = *(a4 + 40);
  if (!v9)
  {
    operator new();
  }

  v10 = sub_1001CA208();
  *(v9 + 52) |= 2u;
  *(v9 + 24) = v10;
  *(a4 + 60) |= 1u;
  v11 = *(a4 + 40);
  if (!v11)
  {
    operator new();
  }

  v12 = sub_1001CA2CC();
  *(v11 + 52) |= 4u;
  *(v11 + 32) = v12;
  *(a4 + 60) |= 1u;
  v13 = *(a4 + 40);
  if (!v13)
  {
    operator new();
  }

  Current = CFAbsoluteTimeGetCurrent();
  *(v13 + 52) |= 1u;
  *(v13 + 16) = Current;
  *(a4 + 60) |= 2u;
  v15 = *(a4 + 48);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 76) |= 4u;
  v16 = *(v15 + 32);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 60) |= 1u;
  v17 = *(v16 + 16);
  if (!v17)
  {
    operator new();
  }

  v18 = sub_10010C730(&v39);
  *(v17 + 44) |= 2u;
  *(v17 + 24) = v18;
  if (*(a2 + 48) == 1 && *(a2 + 52))
  {
    v19 = 5;
  }

  else
  {
    v19 = 4;
  }

  v20 = *(v16 + 60);
  *(v16 + 28) = v19;
  *(v16 + 60) = v20 | 0x44;
  v21 = *(v16 + 40);
  if (!v21)
  {
    operator new();
  }

  v38 = a2;
  v22 = a3[1];
  if (*a3 != v22)
  {
    v23 = *a3 + 8;
    do
    {
      v24 = *(v21 + 36);
      v25 = *(v21 + 32);
      if (v25 >= v24)
      {
        if (v24 == *(v21 + 40))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v21 + 24), v24 + 1);
          v24 = *(v21 + 36);
        }

        *(v21 + 36) = v24 + 1;
        operator new();
      }

      v26 = *(v21 + 24);
      *(v21 + 32) = v25 + 1;
      v27 = *(v26 + 8 * v25);
      v28 = v23 - 8;
      v41 = &v40;
      if (*(v23 - 8) != *(v23 - 8) >> 31)
      {
        sub_10017910C();
      }

      v29 = *v23;
      *(v27 + 64) |= 1u;
      *(v27 + 16) = v29;
      LODWORD(v41) = *(v23 + 56);
      v30 = sub_10031BBC4(&v41);
      v31 = *(v27 + 64);
      *(v27 + 36) = v30;
      v32 = *(v23 + 64);
      *(v27 + 64) = v31 | 0x28;
      *(v27 + 44) = v32;
      v33 = sub_1000E0718(*(v23 + 72));
      v34 = *(v27 + 64);
      *(v27 + 40) = v33;
      *(v27 + 32) = *(v23 + 24);
      v35 = *(v23 + 41) == 1;
      *(v27 + 64) = v34 | 0x54;
      *(v27 + 48) = v35;
      v23 += 88;
    }

    while (v28 + 88 != v22);
  }

  *(v21 + 52) |= 1u;
  v36 = *(v21 + 16);
  if (!v36)
  {
    operator new();
  }

  v41 = *(v38 + 32);
  v37 = sub_10010C730(&v41);
  *(v36 + 44) |= 2u;
  *(v36 + 24) = v37;
}

void sub_100337488(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_100309E68(a2, a1[2]);
  v6 = *a1;
  v4 = a1 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    while (1)
    {
      v33[0] = 0;
      v7 = *(v5 + 96);
      if ((v7 & 0x20) != 0)
      {
        v8 = *(v5 + 23);
        v33[0] = 1;
        v34 = v8;
      }

      v32 = *(v5 + 76) ^ 1;
      v9 = *(v5 + 8);
      v31 = *(v5 + 88);
      if (v9 < 0.0)
      {
        break;
      }

      if ((v7 & 0x20) != 0)
      {
        goto LABEL_15;
      }

LABEL_16:
      v20 = v5[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v5[2];
          v22 = *v21 == v5;
          v5 = v21;
        }

        while (!v22);
      }

      v5 = v21;
      if (v21 == v4)
      {
        return;
      }
    }

    sub_10032618C(v5 + 32, &v35);
    v10 = v5[10];
    v30 = v10;
    v11 = a2[1];
    if (v11 >= a2[2])
    {
      v23 = sub_100337930(a2, &v35, v5 + 8, v33, v5 + 18, &v32, &v31, &v30);
      v24 = v33[0];
      a2[1] = v23;
      if ((v24 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = v35;
      if (v35 >> 31 != v35)
      {
        v39 = v37;
        v40 = v38;
        v12 = v35 >> 31;
      }

      v13 = v12 ^ v35;
      v14 = (v12 ^ v35) >> 31;
      v15 = v13;
      if (v14 != v13)
      {
        v41 = v39;
        v42 = v40;
        v15 = v13 >> 31;
      }

      v16 = v5[8];
      v17 = *(v5 + 18);
      v18 = v15 ^ v13;
      v19 = v18 >> 31;
      if (v18 >> 31 == v18)
      {
        *(v11 + 8) = v36;
        v19 = v18;
      }

      else
      {
        v25 = v41;
        *(v11 + 8) = v36;
        *(v11 + 16) = v25;
        *(v11 + 24) = v42;
      }

      v26 = v33[0];
      v27 = v34;
      v28 = v32;
      v29 = v31;
      *v11 = v19 ^ v18;
      *(v11 + 32) = v16;
      *(v11 + 40) = 0;
      if (v26)
      {
        *(v11 + 44) = v27;
        *(v11 + 40) = 1;
      }

      *(v11 + 48) = v28;
      *(v11 + 49) = v29;
      *(v11 + 56) = v10;
      *(v11 + 64) = 0;
      *(v11 + 72) = 0;
      *(v11 + 80) = v17;
      a2[1] = v11 + 88;
      if ((v26 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    v33[0] = 0;
    goto LABEL_16;
  }
}

void *sub_100337708(uint64_t a1, const void **a2)
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

void sub_1003378B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  sub_1003378D4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003378D4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      nullsub_80(v1 + 56);
      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

_DWORD *sub_100337930(void *a1, uint64_t a2, uint64_t *a3, char *a4, int *a5, char *a6, char *a7, uint64_t *a8)
{
  v8 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v9 = v8 + 1;
  if ((v8 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_10000FC84();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v9)
  {
    v9 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v11 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v42 = *a2;
  v12 = *a2;
  if (*a2 >> 31 != *a2)
  {
    v43 = *(a2 + 16);
    v44 = *(a2 + 24);
    v12 = *a2 >> 31;
  }

  v13 = (8 * ((a1[1] - *a1) >> 3));
  v14 = v12 ^ v42;
  v15 = v12 ^ v42;
  if ((v12 ^ v42) >> 31 != (v12 ^ v42))
  {
    v45 = v43;
    v46 = v44;
    v15 = v14 >> 31;
  }

  v16 = *a3;
  v17 = *a4;
  v18 = v15 ^ v14;
  v19 = v18 >> 31;
  *(8 * ((a1[1] - *a1) >> 3) + 8) = *(a2 + 8);
  if (v18 >> 31 == v18)
  {
    v19 = v18;
  }

  else
  {
    *(88 * v8 + 0x10) = v45;
    *(88 * v8 + 0x18) = v46;
  }

  v20 = *(a4 + 1);
  v21 = *a5;
  v22 = *a6;
  v23 = *a7;
  v24 = *a8;
  *v13 = v19 ^ v18;
  *(88 * v8 + 0x20) = v16;
  *(88 * v8 + 0x28) = 0;
  if (v17)
  {
    *(88 * v8 + 0x2C) = v20;
    *(88 * v8 + 0x28) = 1;
  }

  *(88 * v8 + 0x30) = v22;
  *(88 * v8 + 0x31) = v23;
  *(88 * v8 + 0x38) = v24;
  *(88 * v8 + 0x40) = 0;
  *(88 * v8 + 0x48) = 0;
  *(88 * v8 + 0x50) = v21;
  v25 = *a1;
  v26 = a1[1];
  v27 = (v13 - &v26[-*a1]);
  v28 = v13 + 22;
  if (v26 != *a1)
  {
    v29 = 0;
    v30 = -8 * (&v26[-*a1] >> 3) + 88 * v8;
    do
    {
      v33 = v30 + v29;
      v35 = &v25[v29 + 8];
      v34 = *&v25[v29];
      if (v34 == v34 >> 31)
      {
        *(v33 + 8) = *v35;
        v36 = v34;
      }

      else
      {
        v37 = *v35;
        *(v33 + 24) = *&v25[v29 + 24];
        *(v33 + 8) = v37;
        v36 = *&v25[v29];
        v34 = v36 >> 31;
      }

      v38 = v36 ^ v34;
      v39 = v30 + v29;
      *v39 = v38;
      v40 = &v25[v29];
      *(v39 + 32) = *&v25[v29 + 32];
      *(v39 + 40) = 0;
      if (v25[v29 + 40] == 1)
      {
        *(v39 + 44) = *(v40 + 11);
        *(v39 + 40) = 1;
      }

      v31 = *(v40 + 3);
      v32 = *(v40 + 4);
      *(v39 + 80) = *(v40 + 20);
      *(v39 + 48) = v31;
      *(v39 + 64) = v32;
      v29 += 88;
    }

    while (&v25[v29] != v26);
    do
    {
      if (v25[40] == 1)
      {
        v25[40] = 0;
      }

      v25 += 88;
    }

    while (v25 != v26);
    v25 = *a1;
  }

  *a1 = v27;
  a1[1] = v28;
  a1[2] = 0;
  if (v25)
  {
    operator delete(v25);
  }

  return v28;
}

void sub_100337C7C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100337CEC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100337D5C(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_100338704(a1);
  *a1 = off_10044A560;
  objc_initWeak((a1 + 96), v3);

  return a1;
}

id sub_100337DCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained sensorPresent];

    return v3;
  }

  else
  {

    return 0;
  }
}

void sub_100337E34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained start];
}

void sub_100337E90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained stop];
}

void sub_100337EEC(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v4 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_100324468(&v5, a2, &v4, a4);
  operator new();
}

void sub_1003380E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_100050568(v11 - 48);
  sub_100338158(&a11);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

void sub_10033810C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_10002BB1C(v12);
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v14);
  sub_100338158(&a11);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

void sub_10033813C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_100338158(&a11);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

void *sub_100338158(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    for (i = a1[4]; i != v2; i -= 88)
    {
      if (*(i - 48) == 1)
      {
        *(i - 48) = 0;
      }
    }

    a1[4] = v2;
    operator delete(v2);
  }

  v4 = a1[2];
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_10033820C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  memset(v3, 0, sizeof(v3));
  sub_100324468(&v5, a2, &v4, v3);
  operator new();
}

void sub_10033844C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, char *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  sub_100050568(v2 - 48);
  sub_100338158(va2);
  sub_100261424(va);
  sub_10002BB1C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003384A4(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_100338540(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));

  operator delete();
}

void sub_1003385FC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10033866C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1003386DC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100338704(uint64_t a1)
{
  *a1 = off_10044A5C0;
  *(a1 + 8) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  if (qword_10045B050 != -1)
  {
    sub_100387900();
  }

  v2 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134217984;
    v5 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Creating sensor %p", &v4, 0xCu);
  }

  return a1;
}

void sub_1003387F8(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 8));
  if (!*a2)
  {
    sub_100014A08(__p, "");
    sub_10017FD24("Trying to add null observer", &buf);
    sub_1000E661C(__p, &buf, 1);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    sub_1000BC6D8(&v20);
  }

  v4 = sub_100338B1C(a1 + 72, a2);
  v5 = *(a1 + 80);
  if (v5 != v4)
  {
    if (qword_10045B050 != -1)
    {
      sub_100387914();
    }

    v6 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Attempt to add observer already present", &buf, 2u);
    }

    goto LABEL_26;
  }

  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a1 + 80);
    v9 = *(a1 + 88);
    if (v4 < v9)
    {
      *v4 = v7;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v10 = v4 + 2;
      goto LABEL_24;
    }

LABEL_12:
    v11 = *(a1 + 72);
    v12 = (v4 - v11) >> 4;
    if ((v12 + 1) >> 60)
    {
      sub_10000FC84();
    }

    v13 = v9 - v11;
    v14 = v13 >> 3;
    if (v13 >> 3 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      if (!(v15 >> 60))
      {
        operator new();
      }

      sub_10000D444();
    }

    v19 = 16 * v12;
    *(16 * v12) = v7;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = (v19 + 16);
    v16 = *(a1 + 72);
    v17 = *(a1 + 80) - v16;
    v18 = v19 - v17;
    memcpy((v19 - v17), v16, v17);
    *(a1 + 72) = v18;
    *(a1 + 80) = v10;
    *(a1 + 88) = 0;
    if (v16)
    {
      operator delete(v16);
    }

    goto LABEL_24;
  }

  v9 = *(a1 + 88);
  if (v9 <= v4)
  {
    goto LABEL_12;
  }

  *v5 = v7;
  v5[1] = 0;
  v10 = v5 + 2;
LABEL_24:
  *(a1 + 80) = v10;
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_26:
  std::mutex::unlock((a1 + 8));
}

void sub_100338A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    std::mutex::unlock((v22 + 8));
    _Unwind_Resume(a1);
  }

  std::mutex::unlock((v22 + 8));
  _Unwind_Resume(a1);
}

void *sub_100338B1C(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    return *(a1 + 8);
  }

  while (1)
  {
    v6 = v2[1];
    if (!v6)
    {
      break;
    }

    v7 = std::__shared_weak_count::lock(v6);
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = *v2;
    if (*v2 == *a2)
    {
      goto LABEL_32;
    }

LABEL_10:
    if (!v8)
    {
      if (qword_10045B050 != -1)
      {
        sub_100387914();
      }

      v9 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        v10 = (v2 - *a1) >> 4;
        *buf = 134217984;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "WARNING: Invalid weak reference in collection @ [%ld]. Removing", buf, 0xCu);
      }

      v11 = *(a1 + 8);
      if (v2 + 2 == v11)
      {
        v13 = v2;
      }

      else
      {
        v12 = v2;
        do
        {
          v15 = *(v12 + 1);
          v12[2] = 0;
          v12[3] = 0;
          v16 = v12[1];
          *v12 = v15;
          if (v16)
          {
            std::__shared_weak_count::__release_weak(v16);
          }

          v13 = v12 + 2;
          v14 = v12 + 4;
          v12 += 2;
        }

        while (v14 != v11);
        v11 = *(a1 + 8);
      }

      while (v11 != v13)
      {
        v17 = *(v11 - 1);
        if (v17)
        {
          std::__shared_weak_count::__release_weak(v17);
        }

        v11 -= 2;
      }

      *(a1 + 8) = v13;
      v2 -= 2;
      if (!v7)
      {
        goto LABEL_3;
      }

LABEL_29:
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      goto LABEL_3;
    }

    if (v7)
    {
      goto LABEL_29;
    }

LABEL_3:
    v2 += 2;
    if (v2 == v3)
    {
      return *(a1 + 8);
    }
  }

  v7 = 0;
LABEL_9:
  v8 = 0;
  if (*a2)
  {
    goto LABEL_10;
  }

LABEL_32:
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return v2;
}

void sub_100338D90(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 8));
  v4 = sub_100338B1C(a1 + 72, a2);
  v5 = v4;
  v6 = *(a1 + 80);
  if (v6 == v4)
  {
    if (qword_10045B050 == -1)
    {
      v12 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_100387900();
      v12 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }
    }

    v13[0] = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Attempt to remove observer not in list", v13, 2u);
    goto LABEL_16;
  }

  if (v4 + 2 != v6)
  {
    do
    {
      v9 = *(v5 + 1);
      v5[2] = 0;
      v5[3] = 0;
      v10 = v5[1];
      *v5 = v9;
      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      v7 = v5 + 2;
      v8 = v5 + 4;
      v5 += 2;
    }

    while (v8 != v6);
    v6 = *(a1 + 80);
    v5 = v7;
  }

  while (v6 != v5)
  {
    v11 = *(v6 - 1);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    v6 -= 2;
  }

  *(a1 + 80) = v5;
LABEL_16:
  std::mutex::unlock((a1 + 8));
}

uint64_t sub_100338EE4(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  if (v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v7 = v2[1];
      if (v7 && (v8 = std::__shared_weak_count::lock(v7)) != 0)
      {
        v6 = *v2 == 0;
        if (*v2)
        {
          ++v5;
        }

        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v9 = v8;
          (v8->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v9);
        }
      }

      else
      {
        v6 = 1;
      }

      v4 += v6;
      v2 += 2;
    }

    while (v2 != v3);
    v2 = *(a1 + 72);
    v3 = *(a1 + 80);
  }

  while (v3 != v2)
  {
    v10 = *(v3 - 1);
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    v3 -= 2;
  }

  *(a1 + 80) = v2;
  std::mutex::unlock((a1 + 8));
  return v5;
}

double sub_100338FF8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v3 = *(*(*a1 - 8) + 8);
  v4 = strlen((v3 & 0x7FFFFFFFFFFFFFFFLL));
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v10 = v4;
  if (v4)
  {
    memmove(&__dst, (v3 & 0x7FFFFFFFFFFFFFFFLL), v4);
  }

  *(&__dst + v5) = 0;
  sub_1000DF33C(&__dst, &v7);
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

void sub_1003390FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100339118(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v3 != v4)
  {
    for (i = *(a1 + 72); i != v4; i += 2)
    {
      v15 = 0;
      v16 = 0;
      v6 = i[1];
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        v16 = v7;
        if (v7)
        {
          v8 = *i;
          v15 = v8;
          if (v8)
          {
            (*(*v8 + 16))(v8, a2);
LABEL_16:
            if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v7->__on_zero_shared)(v7);
              std::__shared_weak_count::__release_weak(v7);
            }

            goto LABEL_3;
          }
        }
      }

      else
      {
        v7 = 0;
      }

      if (qword_10045B050 != -1)
      {
        sub_100387914();
      }

      v9 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      v10 = *(a1 + 72);
      (*(*a1 + 40))(__p, a1);
      v11 = __p;
      if (v14 < 0)
      {
        v11 = __p[0];
      }

      *buf = 134218242;
      v18 = (v3 - v10) >> 4;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "WARNING: Reference to dead observer @ [%ld] in %s. Did you forget to remove it?", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
        if (v7)
        {
          goto LABEL_16;
        }
      }

      else
      {
LABEL_15:
        if (v7)
        {
          goto LABEL_16;
        }
      }

LABEL_3:
      v3 += 2;
    }
  }

  std::mutex::unlock((a1 + 8));
}

void sub_100339344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002BB1C(va);
  std::mutex::unlock((v9 + 8));
  _Unwind_Resume(a1);
}

void sub_100339394()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100339404()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t *sub_100339474()
{
  if ((atomic_load_explicit(&qword_10045D778, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D778))
  {
    return &qword_10045D8B8;
  }

  qword_10045D8B8 = sub_1000DD388();
  unk_10045D8C0 = v1;
  byte_10045D8C8 = 0;
  byte_10045D8D0 = 0;
  byte_10045D8D2 = 0;
  __cxa_guard_release(&qword_10045D778);
  return &qword_10045D8B8;
}

uint64_t *sub_100339504()
{
  if ((atomic_load_explicit(qword_10045D780, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(qword_10045D780))
  {
    return &qword_10045D7F8;
  }

  qword_10045D7F8 = sub_1000DD3A8();
  *&word_10045D800 = v1;
  byte_10045D808 = 0;
  byte_10045D80A = 0;
  byte_10045D80C = 0;
  __cxa_guard_release(qword_10045D780);
  return &qword_10045D7F8;
}

uint64_t *sub_100339598()
{
  if ((atomic_load_explicit(&qword_10045D7A0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7A0))
  {
    return &qword_10045D810;
  }

  qword_10045D810 = sub_1000DD48C();
  *&word_10045D818 = v1;
  byte_10045D820 = 0;
  byte_10045D822 = 0;
  byte_10045D824 = 0;
  __cxa_guard_release(&qword_10045D7A0);
  return &qword_10045D810;
}

uint64_t *sub_10033962C()
{
  if ((atomic_load_explicit(&qword_10045D7A8, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7A8))
  {
    return &qword_10045D828;
  }

  qword_10045D828 = sub_1000DD49C();
  *&word_10045D830 = v1;
  byte_10045D838 = 0;
  byte_10045D83A = 0;
  byte_10045D83C = 0;
  __cxa_guard_release(&qword_10045D7A8);
  return &qword_10045D828;
}

uint64_t *sub_1003396C0()
{
  if ((atomic_load_explicit(&qword_10045D7B0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7B0))
  {
    return &qword_10045D840;
  }

  qword_10045D840 = sub_1000DD4AC();
  *&word_10045D848 = v1;
  byte_10045D850 = 0;
  byte_10045D852 = 0;
  byte_10045D854 = 0;
  __cxa_guard_release(&qword_10045D7B0);
  return &qword_10045D840;
}

uint64_t *sub_100339754()
{
  if ((atomic_load_explicit(&qword_10045D7B8, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7B8))
  {
    return &qword_10045D858;
  }

  qword_10045D858 = sub_1000DD580();
  *&word_10045D860 = v1;
  byte_10045D868 = 0;
  byte_10045D86A = 0;
  byte_10045D86C = 0;
  __cxa_guard_release(&qword_10045D7B8);
  return &qword_10045D858;
}

uint64_t *sub_1003397E8()
{
  if ((atomic_load_explicit(&qword_10045D7C0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7C0))
  {
    return &qword_10045D870;
  }

  qword_10045D870 = sub_1000DD5C0();
  *&word_10045D878 = v1;
  byte_10045D880 = 0;
  byte_10045D882 = 0;
  byte_10045D884 = 0;
  __cxa_guard_release(&qword_10045D7C0);
  return &qword_10045D870;
}

uint64_t *sub_10033987C()
{
  if ((atomic_load_explicit(&qword_10045D7C8, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7C8))
  {
    return &qword_10045D938;
  }

  qword_10045D938 = sub_1000DD5D0();
  unk_10045D940 = v1;
  byte_10045D948 = 0;
  byte_10045D950 = 0;
  byte_10045D952 = 0;
  __cxa_guard_release(&qword_10045D7C8);
  return &qword_10045D938;
}

uint64_t *sub_10033990C()
{
  if ((atomic_load_explicit(&qword_10045D7D0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7D0))
  {
    return &qword_10045D888;
  }

  qword_10045D888 = sub_1000DD5E0();
  *&word_10045D890 = v1;
  byte_10045D898 = 0;
  byte_10045D89A = 0;
  byte_10045D89C = 0;
  __cxa_guard_release(&qword_10045D7D0);
  return &qword_10045D888;
}

uint64_t *sub_1003399A0()
{
  if ((atomic_load_explicit(&qword_10045D7D8, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7D8))
  {
    return &qword_10045D8A0;
  }

  qword_10045D8A0 = sub_1000DD630();
  *&word_10045D8A8 = v1;
  byte_10045D8B0 = 0;
  byte_10045D8B2 = 0;
  byte_10045D8B4 = 0;
  __cxa_guard_release(&qword_10045D7D8);
  return &qword_10045D8A0;
}

uint64_t *sub_100339A34()
{
  if ((atomic_load_explicit(&qword_10045D7E0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7E0))
  {
    return &qword_10045D958;
  }

  qword_10045D958 = sub_1000DD6F8();
  unk_10045D960 = v1;
  byte_10045D968 = 0;
  byte_10045D970 = 0;
  byte_10045D972 = 0;
  __cxa_guard_release(&qword_10045D7E0);
  return &qword_10045D958;
}

uint64_t *sub_100339AC4()
{
  if ((atomic_load_explicit(&qword_10045D7E8, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7E8))
  {
    return &qword_10045D978;
  }

  qword_10045D978 = sub_1000DD708();
  unk_10045D980 = v1;
  byte_10045D988 = 0;
  byte_10045D990 = 0;
  byte_10045D992 = 0;
  __cxa_guard_release(&qword_10045D7E8);
  return &qword_10045D978;
}

uint64_t *sub_100339B54()
{
  if ((atomic_load_explicit(&qword_10045D7F0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7F0))
  {
    return &qword_10045D998;
  }

  qword_10045D998 = sub_1000DD728();
  unk_10045D9A0 = v1;
  byte_10045D9A8 = 0;
  byte_10045D9B0 = 0;
  byte_10045D9B2 = 0;
  __cxa_guard_release(&qword_10045D7F0);
  return &qword_10045D998;
}

void sub_100339BE4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100339C54()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100339CC4()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void *sub_100339CEC(void *a1, int *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_22;
      }

      v3 = "additional sensors needed for pdr";
      v4 = 33;
    }

    else
    {
      v3 = "sensor list for localization (no pdr)";
      v4 = 37;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        v3 = "additional sensors for extra tracing of localizers";
        v4 = 50;

        break;
      case 3:
        v3 = "sensor list for survey capture";
        v4 = 30;

        break;
      case 4:
        v3 = "invalid control group (num control groups)";
        v4 = 42;

        return sub_10003C2E4(a1, v3, v4);
      default:
LABEL_22:
        __cxa_allocate_exception(0x40uLL);
        sub_1000474A4(&v7, "unsupported control group");
        std::runtime_error::runtime_error(&v8, &v7);
        v8.__vftable = &off_1004338D0;
        sub_10010A984(v6);
    }
  }

  return sub_10003C2E4(a1, v3, v4);
}

void sub_100339F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, std::runtime_error a20, std::runtime_error a21)
{
  sub_10003FDD8(&a21);
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a20);
  if (a19 < 0)
  {
    operator delete(a14);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t *sub_100339F88@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      LODWORD(v9) = 14;
      return sub_10033AC30(a2, &v9);
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_15;
      }

      LODWORD(v9) = 1;
      sub_10033AC30(a2, &v9);
      v9 = sub_1000DD5F0();
      v10[0] = v4;
      if (sub_100008F80(&v9, v10 + 1))
      {
        LODWORD(v9) = 11;
        sub_10033AC30(a2, &v9);
      }

      LODWORD(v9) = 7;
      sub_10033AC30(a2, &v9);
      LODWORD(v9) = 14;
      sub_10033AC30(a2, &v9);
      LODWORD(v9) = 17;
      sub_10033AC30(a2, &v9);
      LODWORD(v9) = 8;
      sub_10033AC30(a2, &v9);
      LODWORD(v9) = 16;
      return sub_10033AC30(a2, &v9);
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        LODWORD(v9) = 8;
        sub_10033AC30(a2, &v9);
        LODWORD(v9) = 16;
        return sub_10033AC30(a2, &v9);
      }

LABEL_15:
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v7, "Unsupported control group to get thrift types for");
      std::runtime_error::runtime_error(&v8, &v7);
      v8.__vftable = &off_1004338D0;
      sub_10010A984(v6);
    }

    LODWORD(v9) = 1;
    sub_10033AC30(a2, &v9);
    v9 = sub_1000DD5F0();
    v10[0] = v5;
    if (sub_100008F80(&v9, v10 + 1))
    {
      LODWORD(v9) = 11;
      sub_10033AC30(a2, &v9);
    }

    LODWORD(v9) = 17;
    return sub_10033AC30(a2, &v9);
  }
}

void sub_10033A250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, std::runtime_error a20, std::runtime_error a21)
{
  sub_10003FDD8(&a21);
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a20);
  if (a19 < 0)
  {
    operator delete(a14);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      sub_1001F9AF8(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  sub_1001F9AF8(v21);
  _Unwind_Resume(a1);
}

void sub_10033A3C4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10003BEA8(("PN13SensorManager12ControlGroupE" & 0x7FFFFFFFFFFFFFFFLL), &v13);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4.__i_ = &v13;
  }

  else
  {
    v4.__i_ = v13.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v13, v4, 91);
  v14 = v13;
  memset(&v13, 0, sizeof(v13));
  v5 = std::string::append(&v14, "] = ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_10003BFA8(&v17);
  sub_100339CEC(&v17, (a1 + 8));
  std::stringbuf::str();
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  std::locale::~locale(v19);
  std::ostream::~ostream();
  std::ios::~ios();
  if ((v12 & 0x80u) == 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v11[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v11[1];
  }

  v9 = std::string::append(&v15, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v16, 10);
  *a2 = v16;
  memset(&v16, 0, sizeof(v16));
  if (v12 < 0)
  {
    operator delete(v11[0]);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_14:
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(v13.__r_.__value_.__l.__data_);
    return;
  }

LABEL_19:
  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }
}

void sub_10033A660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a40 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_10033A9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10033AB84(va);
  _Unwind_Resume(a1);
}

void sub_10033A9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10033AB84(va1);
  _Unwind_Resume(a1);
}

void sub_10033AAF8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10033AB3C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_10033AB84(uint64_t result)
{
  v1 = *(result + 8);
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

uint64_t *sub_10033AC30(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_10033AF64()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10033AFD4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10033B320(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10033B378(va);
  _Unwind_Resume(a1);
}

void sub_10033B334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10033B378(va);
  _Unwind_Resume(a1);
}

void sub_10033B348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_10033B378(va);
  _Unwind_Resume(a1);
}

void sub_10033B364(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10033B378(va);
  _Unwind_Resume(a1);
}

void **sub_10033B378(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}