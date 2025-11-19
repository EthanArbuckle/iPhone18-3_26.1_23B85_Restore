void sub_10067FBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, void **a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (*(v57 - 201) < 0)
  {
    operator delete(*(v57 - 224));
  }

  if (*(v57 - 169) < 0)
  {
    operator delete(*(v57 - 192));
  }

  if (*(v57 - 137) < 0)
  {
    operator delete(*(v57 - 160));
  }

  if (*(v57 - 105) < 0)
  {
    operator delete(*(v57 - 128));
  }

  if (*(v54 + 1007) < 0)
  {
    operator delete(*a12);
  }

  sub_10069F44C(v54 + 560);
  sub_10069F44C(v56 + 16);
  if (*(v54 + 111) < 0)
  {
    operator delete(*v55);
  }

  if (*(v54 + 87) < 0)
  {
    operator delete(*(v54 + 64));
  }

  if (*(v54 + 63) < 0)
  {
    operator delete(*a11);
  }

  if (*(v54 + 31) < 0)
  {
    operator delete(*v56);
  }

  _Unwind_Resume(a1);
}

void sub_10067FDA4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 39) < 0)
  {
    sub_100008904(__dst, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *__dst = *(a1 + 16);
    *&v17 = *(a1 + 32);
  }

  if (SBYTE7(v17) < 0)
  {
    v4 = __dst[1];
    operator delete(__dst[0]);
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (BYTE7(v17))
  {
LABEL_6:
    sub_1006A1690(a1, 0, 391, 0);
    return;
  }

  v19 = 0;
  v17 = 0u;
  *__p = 0u;
  *__dst = 0u;
  sub_10042A6A4(a1, 0, __dst);
  std::operator+<char>();
  v5 = std::string::append(&v13, "\r\nTEL;CHARSET=UTF-8:");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if ((SBYTE7(v17) & 0x80u) == 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  if ((SBYTE7(v17) & 0x80u) == 0)
  {
    v8 = BYTE7(v17);
  }

  else
  {
    v8 = __dst[1];
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v15, "\r\nEND:VCARD\r\n");
  v12 = *&v11->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v11->__r_.__value_.__l + 2);
  *a2 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v17) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10067FF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_1000DA6C8(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_10067FFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10069F12C(v4, a1 + 136);
  sub_10067FDA4(v4, a2);
  return sub_10069F44C(v4);
}

void sub_10067FFEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10069F44C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100680000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10069F12C(v4, a1 + 560);
  sub_10067FDA4(v4, a2);
  return sub_10069F44C(v4);
}

void sub_10068004C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10069F44C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_100680060@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v9 = 0;
  v10[0] = 0;
  *(v10 + 5) = 0;
  v5 = localtime((a1 + 32));
  if (a2)
  {
    v6 = "%Y%m%dT%H%M%S%z";
    v7 = 21;
  }

  else
  {
    v6 = "%Y%m%dT%H%M%S";
    v7 = 16;
  }

  strftime(&v9, v7, v6, v5);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return sub_100007E30(a3, &v9);
}

void sub_10068010C(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_10068028C(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      sub_1006802F8(a1, v10);
    }

    sub_1000C7698();
  }

  v11 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 3) >= a4)
  {
    sub_100680420(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 56;
        sub_100437FA4(a1, v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_100680420(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = sub_100680348(a1, __str + v11, a3, *(a1 + 8));
  }
}

void sub_10068028C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 56;
        sub_100437FA4(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1006802F8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_100437EA4(a1, a2);
  }

  sub_1000C7698();
}

uint64_t sub_100680348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100008904(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = a2 + v7;
      *(a4 + v7 + 24) = *(a2 + v7 + 24);
      if (*(a2 + v7 + 55) < 0)
      {
        sub_100008904((v11 + 32), *(v12 + 32), *(v12 + 40));
      }

      else
      {
        v13 = *(v12 + 32);
        *(v11 + 48) = *(v12 + 48);
        *(v11 + 32) = v13;
      }

      v7 += 56;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_100680400(_Unwind_Exception *exception_object)
{
  if (*(v1 + v2 + 23) < 0)
  {
    operator delete(*(v1 + v2));
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100680420(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    LODWORD(this[1].__r_.__value_.__l.__data_) = v5[1].__r_.__value_.__l.__data_;
    std::string::operator=((this + 32), (v5 + 32));
    this = (this + 56);
    v5 = (v5 + 56);
  }

  while (v5 != v6);
  return v6;
}

void sub_100680498(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (a1[2] - *a1) >> 7)
  {
    sub_1006805F8(a1);
    if (!(a4 >> 57))
    {
      v8 = a1[2] - *a1;
      v9 = v8 >> 6;
      if (v8 >> 6 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFF80)
      {
        v10 = 0x1FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100680638(a1, v10);
    }

    sub_1000C7698();
  }

  v11 = a1[1] - v7;
  if (a4 <= v11 >> 7)
  {
    sub_100680674(&v18, __str, a3, v7);
    sub_100680710(a1, v16);
  }

  else
  {
    v12 = (__str + v11);
    sub_100680674(&v17, __str, (__str + v11), v7);
    if (v12 == a3)
    {
      v13 = a1[1];
    }

    else
    {
      v13 = a1[1];
      v14 = v13;
      do
      {
        v15 = sub_100438398(v14, v12);
        v12 += 8;
        v14 = v15 + 128;
        v13 += 128;
      }

      while (v12 != a3);
    }

    a1[1] = v13;
  }
}

void sub_1006805F8(uint64_t a1)
{
  if (*a1)
  {
    sub_100680710(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_100680638(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    sub_100438188(a1, a2);
  }

  sub_1000C7698();
}

std::string *sub_100680674(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    std::string::operator=(this + 2, v5 + 2);
    std::string::operator=(this + 3, v5 + 3);
    std::string::operator=(this + 4, v5 + 4);
    LODWORD(this[5].__r_.__value_.__l.__data_) = v5[5].__r_.__value_.__l.__data_;
    this = (this + 128);
    v5 = (v5 + 128);
  }

  while (v5 != v6);
  return v6;
}

void sub_100680710(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      if (*(v4 - 9) < 0)
      {
        operator delete(*(v4 - 4));
      }

      if (*(v4 - 33) < 0)
      {
        operator delete(*(v4 - 7));
      }

      if (*(v4 - 57) < 0)
      {
        operator delete(*(v4 - 10));
      }

      if (*(v4 - 81) < 0)
      {
        operator delete(*(v4 - 13));
      }

      v5 = v4 - 16;
      if (*(v4 - 105) < 0)
      {
        operator delete(*v5);
      }

      v4 -= 16;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_1006807AC(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_10003E3E8(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_10035FD6C(a1, v10);
    }

    sub_1000C7698();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_1000DFE5C(a1, (v6 + v12), a3, v11);
  }
}

void sub_10068094C(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_10003E3E8(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_10035FD6C(a1, v10);
    }

    sub_1000C7698();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_1000DFE5C(a1, (v6 + v12), a3, v11);
  }
}

uint64_t sub_100680AEC(uint64_t a1)
{
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  sub_100008760(&v9);
  if (*(a1 + 120) == 1)
  {
    sub_100007774(&v9);
    if (*(a1 + 111) < 0)
    {
      sub_100008904(__p, *(a1 + 88), *(a1 + 96));
    }

    else
    {
      *__p = *(a1 + 88);
      v8 = *(a1 + 104);
    }

    v2 = std::ostream::operator<<();
    sub_100007774(v2);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }

    v3 = sub_100007774(&v9);
    sub_100007774(v3);
    if (*(a1 + 111) < 0)
    {
      sub_100008904(__p, *(a1 + 88), *(a1 + 96));
    }

    else
    {
      *__p = *(a1 + 88);
      v8 = *(a1 + 104);
    }

    v4 = sub_100007774(&v9);
    sub_100007774(v4);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }

    v5 = sub_100007774(&v9);
    sub_100007774(v5);
  }

  std::stringbuf::str();
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[1]);
  }

  std::locale::~locale(v10);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_100680DD8(uint64_t a1, char a2)
{
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  sub_100008760(&v22);
  v4 = sub_100007774(&v22);
  sub_100007774(v4);
  v5 = sub_100007774(&v22);
  sub_100007774(v5);
  v6 = sub_100007774(&v22);
  v7 = sub_100007774(v6);
  sub_100007774(v7);
  v8 = sub_100007774(&v22);
  sub_100007774(v8);
  v9 = sub_100007774(&v22);
  sub_100007774(v9);
  if ((a2 & 1) == 0)
  {
    v10 = sub_100007774(&v22);
    sub_100007774(v10);
  }

  sub_10067FFA0(a1, __p);
  sub_100007774(&v22);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v11 = sub_100007774(&v22);
  sub_100007774(v11);
  sub_100680000(a1, __p);
  sub_100007774(&v22);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = sub_100007774(&v22);
  sub_100007774(v12);
  if (*(a1 + 120))
  {
    v13 = sub_100007774(&v22);
    sub_100007774(v13);
    v14 = sub_100007774(&v22);
    if (*(a1 + 1007) < 0)
    {
      sub_100008904(__p, *(a1 + 984), *(a1 + 992));
    }

    else
    {
      *__p = *(a1 + 984);
      v21 = *(a1 + 1000);
    }

    v15 = sub_100007774(v14);
    sub_100007774(v15);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100680AEC(a1);
  sub_100007774(&v22);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v16 = sub_100007774(&v22);
  sub_100007774(v16);
  v17 = sub_100007774(&v22);
  sub_100007774(v17);
  v18 = sub_100007774(&v22);
  sub_100007774(v18);
  std::stringbuf::str();
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[1]);
  }

  std::locale::~locale(v23);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_1006812C8(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5)
{
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  *v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  memset(v40, 0, sizeof(v40));
  sub_100008760(&v39);
  if (a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = -1;
  }

  sub_100007774(&v39);
  v11 = sub_100007774(&v39);
  sub_100429A1C(a1, &__p);
  v12 = sub_100007774(v11);
  sub_100007774(v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v10 & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = sub_100007774(&v39);
  if (*(a1 + 87) < 0)
  {
    sub_100008904(&v36, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    v36 = *(a1 + 64);
  }

  std::string::basic_string(&__dst, &v36, 0, a3, &v54);
  sub_10050DDC8(&__dst, &__p);
  v14 = sub_100007774(v13);
  sub_100007774(v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((v10 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  operator delete(v36.__r_.__value_.__l.__data_);
  if ((v10 & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v15 = sub_100007774(&v39);
  sub_100680060(a1, a5, &__p);
  v16 = sub_100007774(v15);
  sub_100007774(v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v10 & 4) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  v17 = sub_100007774(&v39);
  if (*(a1 + 175) < 0)
  {
    sub_100008904(&__dst, *(a1 + 152), *(a1 + 160));
  }

  else
  {
    __dst = *(a1 + 152);
  }

  sub_10050DDC8(&__dst, &__p);
  v18 = sub_100007774(v17);
  sub_100007774(v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v10 & 8) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_27:
    if ((v10 & 8) == 0)
    {
      goto LABEL_33;
    }
  }

  memset(&__p, 0, sizeof(__p));
  sub_100681FD8((a1 + 136), &__p);
  memset(&__dst, 0, sizeof(__dst));
  sub_10050DDC8(&__p, &__dst);
  v19 = sub_100007774(&v39);
  v20 = sub_100007774(v19);
  sub_100007774(v20);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v10 & 0x10) == 0)
  {
    goto LABEL_38;
  }

LABEL_33:
  v21 = sub_100007774(&v39);
  if (*(a1 + 599) < 0)
  {
    sub_100008904(&__p, *(a1 + 576), *(a1 + 584));
  }

  else
  {
    __p = *(a1 + 576);
  }

  v22 = sub_100007774(v21);
  sub_100007774(v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_38:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_42;
    }
  }

  v23 = sub_100007774(&v39);
  sub_100681FD8((a1 + 560), &__p);
  v24 = sub_100007774(v23);
  sub_100007774(v24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_42:
  if ((v10 & 0x40) != 0 && a2 <= 3)
  {
    sub_100007774(&v39);
  }

  if ((v10 & 0x80) != 0)
  {
    sub_100007774(&v39);
    v25 = std::ostream::operator<<();
    sub_100007774(v25);
  }

  if ((v10 & 0x100) != 0)
  {
    v26 = sub_100007774(&v39);
    v27 = sub_100007774(v26);
    sub_100007774(v27);
  }

  if ((v10 & 0x200) != 0)
  {
    v28 = sub_100007774(&v39);
    v29 = sub_100007774(v28);
    sub_100007774(v29);
  }

  if ((v10 & 0x400) != 0)
  {
    sub_100007774(&v39);
    v30 = std::ostream::operator<<();
    sub_100007774(v30);
  }

  if ((v10 & 0x1000) != 0)
  {
    v31 = sub_100007774(&v39);
    v32 = sub_100007774(v31);
    sub_100007774(v32);
  }

  if ((v10 & 0x2000) != 0)
  {
    v33 = sub_100007774(&v39);
    v34 = sub_100007774(v33);
    sub_100007774(v34);
  }

  sub_100007774(&v39);
  std::stringbuf::str();
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[1]);
  }

  std::locale::~locale(v40);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_100681AFC(uint64_t result)
{
  *result = -1;
  *(result + 4) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_100681B14(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v2 = (a1 + 16);
  while (v3 != v4)
  {
    v3 -= 1008;
    sub_1006820BC(v2, v3);
  }

  *(a1 + 24) = v4;
  v6 = v2;
  sub_100682154(&v6);
  return a1;
}

uint64_t sub_100681B80(uint64_t *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3 >= a1[4])
  {
    result = sub_1006821DC(a1 + 2, a2);
  }

  else
  {
    sub_100681E18(a1[3], a2);
    result = v3 + 1008;
    a1[3] = v3 + 1008;
  }

  a1[3] = result;
  return result;
}

uint64_t sub_100681BD4(unsigned __int8 *a1, unsigned int a2)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v11 = 0u;
  v12 = 0u;
  *v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  sub_100008760(&v8);
  sub_100007774(&v8);
  for (i = *(a1 + 2); i != *(a1 + 3); i += 1008)
  {
    sub_1006812C8(i, a2, *a1, *(a1 + 1), a1[8]);
    sub_100007774(&v8);
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  sub_100007774(&v8);
  std::stringbuf::str();
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }

  std::locale::~locale(v9);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_100681E18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100008904((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  *(a1 + 32) = *(a2 + 32);
  if (*(a2 + 63) < 0)
  {
    sub_100008904((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
  }

  if (*(a2 + 87) < 0)
  {
    sub_100008904((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    sub_100008904((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
  }

  v8 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v8;
  sub_10069F12C(a1 + 136, a2 + 136);
  sub_10069F12C(a1 + 560, a2 + 560);
  v9 = (a1 + 984);
  if (*(a2 + 1007) < 0)
  {
    sub_100008904(v9, *(a2 + 984), *(a2 + 992));
  }

  else
  {
    v10 = *(a2 + 984);
    *(a1 + 1000) = *(a2 + 1000);
    *v9 = v10;
  }

  return a1;
}

void sub_100681F54(_Unwind_Exception *a1)
{
  sub_10069F44C(v1 + 560);
  sub_10069F44C(v1 + 136);
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void sub_100681FD8(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10042A6A4(a1, 0, v9);
  v4 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v4 = v9[1];
  }

  if (v4)
  {
    sub_10042A6A4(a1, 0, v5);
    *a2 = *v5;
    *(a2 + 16) = v6;
    v5[1] = 0;
    v6 = 0;
    v5[0] = 0;
    if (v8 < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v6) < 0)
      {
        operator delete(v5[0]);
      }
    }
  }

  else
  {
    sub_10042A780(a1, 0, a2);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_1006820A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000DA6C8(va);
  _Unwind_Resume(a1);
}

void sub_1006820BC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1007) < 0)
  {
    operator delete(*(a2 + 984));
  }

  sub_10069F44C(a2 + 560);
  sub_10069F44C(a2 + 136);
  if (*(a2 + 111) < 0)
  {
    operator delete(*(a2 + 88));
  }

  if (*(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void sub_100682154(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 1008;
        sub_1006820BC(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1006821DC(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEFBEFBEFBEFBEFBFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x41041041041041)
  {
    sub_1000C7698();
  }

  if (0xDF7DF7DF7DF7DF7ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDF7DF7DF7DF7DF7ELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEFBEFBEFBEFBEFBFLL * ((a1[2] - *a1) >> 4) >= 0x20820820820820)
  {
    v6 = 0x41041041041041;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100682324(a1, v6);
  }

  v13 = 0;
  v14 = 1008 * v2;
  sub_100681E18(1008 * v2, a2);
  v15 = 1008 * v2 + 1008;
  v7 = a1[1];
  v8 = 1008 * v2 + *a1 - v7;
  sub_100682380(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100682404(&v13);
  return v12;
}

void sub_100682310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100682404(va);
  _Unwind_Resume(a1);
}

void sub_100682324(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x41041041041042)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_100682380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_100681E18(a4, v8);
      v8 += 1008;
      a4 += 1008;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_1006820BC(a1, v6);
      v6 += 1008;
    }
  }
}

void **sub_100682404(void **a1)
{
  sub_100682438(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100682438(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 1008;
    sub_1006820BC(v4, i - 1008);
  }
}

void sub_1006824A8(uint64_t a1, __int16 a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 124) = a3;
  operator new();
}

void sub_100682790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 + 119) < 0)
  {
    operator delete(*(v40 + 96));
  }

  if (*(v40 + 95) < 0)
  {
    operator delete(*(v40 + 72));
  }

  if (*(v40 + 71) < 0)
  {
    operator delete(*(v40 + 48));
  }

  if (*(v40 + 47) < 0)
  {
    operator delete(*v41);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1006828BC@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "<folder-listing version=1.0>\n");
  for (i = *(a1 + 16); i != a1 + 8; i = *(i + 8))
  {
    v5 = *(i + 16);
    if (*(v5 + 55) < 0)
    {
      sub_100008904(&v13, *(v5 + 32), *(v5 + 40));
    }

    else
    {
      v13 = *(v5 + 32);
    }

    v6 = std::string::insert(&v13, 0, "<folder name=");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v14, "/>\n");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v16 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v16 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if (v16 >= 0)
    {
      v11 = HIBYTE(v16);
    }

    else
    {
      v11 = __p[1];
    }

    std::string::append(a2, v10, v11);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  return std::string::append(a2, "</folder-listing>\n");
}

void sub_100682A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100682A80(std::string *a1, void *a2, int a3)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  sub_100685FC4(&v26, a1->__r_.__value_.__l.__size_ + 8);
  memset(&__str, 0, sizeof(__str));
  if (byte_100BCE888[23] < 0)
  {
    sub_100008904(&__str, *byte_100BCE888, *&byte_100BCE888[8]);
  }

  else
  {
    __str = *byte_100BCE888;
  }

  if (a3 && (v6 = *a1->__r_.__value_.__l.__size_) != 0)
  {
    v7 = 0;
    a1->__r_.__value_.__l.__size_ = v6;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v7 = 1738;
  }

  if (*(a2 + 23) < 0)
  {
    v11 = a2[1];
    if (v11 || (a3 & 1) == 0)
    {
      v9 = a1;
      if (v11)
      {
        if (v11 != 1)
        {
          goto LABEL_37;
        }

        v10 = *a2;
LABEL_19:
        v9 = a1;
        if (*v10 == 47)
        {
          goto LABEL_20;
        }

LABEL_37:
        v9 = v27;
        if (v27 == &v26)
        {
LABEL_50:
          if ((v8 & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_21;
        }

        while (1)
        {
          v16 = v9->__words[2];
          if (*(a2 + 23) < 0)
          {
            sub_100008904(&__dst, *a2, a2[1]);
          }

          else
          {
            __dst = *a2;
            v24 = a2[2];
          }

          v17 = SHIBYTE(v24);
          v18 = __dst;
          if (v24 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          v20 = (v16 + 32);
          if (*(v16 + 55) < 0)
          {
            v20 = *v20;
          }

          v21 = strcasecmp(p_dst, v20);
          if (v17 < 0)
          {
            operator delete(v18);
          }

          if (!v21)
          {
            break;
          }

          v9 = v9->__words[1];
          if (v9 == &v26)
          {
            goto LABEL_50;
          }
        }
      }

LABEL_20:
      a1->__r_.__value_.__l.__size_ = v9->__words[2];
    }
  }

  else if (*(a2 + 23) || (a3 & 1) == 0)
  {
    v9 = a1;
    if (*(a2 + 23))
    {
      v10 = a2;
      if (*(a2 + 23) != 1)
      {
        goto LABEL_37;
      }

      goto LABEL_19;
    }

    goto LABEL_20;
  }

LABEL_21:
  sub_1006828BC(a1->__r_.__value_.__l.__size_, &__p);
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

  std::string::append(&__str, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::operator=(a1 + 1, &__str);
  v7 = 0;
LABEL_30:
  v22 = 0;
  sub_1000216B4(&v22);
  sub_1002209B0(LOWORD(a1->__r_.__value_.__l.__data_), v7);
  v14 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 67109378;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v7;
    LOWORD(__p.__r_.__value_.__r.__words[1]) = 2080;
    *(&__p.__r_.__value_.__r.__words[1] + 2) = a2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setpath returning %{bluetooth:OI_STATUS}u for folder: %s", &__p, 0x12u);
  }

  sub_10002249C(&v22);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_100028EB4(&v26);
  return v7;
}

double sub_100682DCC(uint64_t a1, unsigned __int8 *a2)
{
  sub_100681BD4(a2, *(a1 + 4));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  result = *&v4;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_100682E28(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100686068(v2);
    operator delete();
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_100682EAC(uint64_t a1)
{
  result = sub_10032F49C(a1, 21);
  *result = off_100B05268;
  *(result + 288) = 0;
  *(result + 264) = 0;
  *(result + 272) = 0;
  *(result + 256) = off_100B052E8;
  *(result + 280) = 0;
  return result;
}

uint64_t sub_100682F10()
{
  v4 = off_100B05318;
  v3 = 0;
  sub_1000216B4(&v3);
  v0 = sub_10021F6B0(off_100B54D48, off_100B54D58, &v4, 393855, 2);
  if (v0)
  {
    v1 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_ERROR))
    {
      sub_10085BF6C(v0, v1);
    }
  }

  sub_10002249C(&v3);
  return v0;
}

uint64_t sub_100682FC8()
{
  v1 = 0;
  sub_1000216B4(&v1);
  sub_10021FA30();
  sub_10002249C(&v1);
  return 0;
}

uint64_t sub_10068301C(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCEAA8;
  if (*(a1 + 288) != a2 && os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_FAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "MAP is being asked to disconnect a device that it's not tracking", __p, 2u);
    v4 = qword_100BCEAA8;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1006831D8(a1, __p);
    v5 = v12 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending disconnect indication to device %{public}s", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = 0;
  sub_1000216B4(&v10);
  v6 = sub_10021FBB8(*(a1 + 280));
  if (v6)
  {
    v7 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, __p);
      sub_10085BFE4(__p, buf, v6, v7);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  sub_10002249C(&v10);
  return v8;
}

void sub_1006831D8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    sub_1000E5A58(v2, a2);
  }

  else
  {
    sub_100007E30(a2, "<null>");
  }
}

uint64_t sub_1006831F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10085C068();
  }

  WORD2(v29) = WORD2(a2);
  LODWORD(v29) = a2;
  v6 = sub_1000E6554(off_100B508E8, &v29, 1);
  v37 = 0;
  v36 = 0u;
  memset(v35, 0, sizeof(v35));
  v33 = 0u;
  *v34 = 0u;
  v31 = 0u;
  *v32 = 0u;
  v29 = 0u;
  *v30 = 0u;
  sub_1000DE474(&v29 + 1);
  BYTE2(v30[0]) = 0;
  BYTE4(v30[0]) = 0;
  BYTE2(v32[0]) = 0;
  BYTE4(v32[0]) = 0;
  DWORD1(v35[1]) = 0;
  v31 = 0uLL;
  v30[1] = 0;
  LOBYTE(v32[0]) = 0;
  v33 = 0uLL;
  v32[1] = 0;
  LOBYTE(v34[0]) = 0;
  memset(v35, 0, 19);
  v34[1] = 0;
  BYTE8(v35[1]) = 1;
  *(&v35[1] + 14) = 0;
  *(&v35[1] + 9) = 0;
  v36 = 0uLL;
  *(&v35[2] + 1) = 0;
  LOBYTE(v37) = 0;
  *(&v37 + 2) = 0;
  if (sub_100536A18(v6, &v29) && BYTE12(v35[2]) == 1)
  {
    LODWORD(__p[0]) = 0;
    *buf = 0;
    *v28 = 0;
    *v24 = 0;
    v7 = sub_1000C2364(v6, __p, buf, v28, v24);
    if (*buf)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8 == 1 && *v28 != 0;
    v19 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = "BANNED";
      if (v9)
      {
        v20 = "ALLOWED (DId)";
      }

      *v27 = 136446210;
      *&v27[4] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device has a denylist, current BAN state is %{public}s\n", v27, 0xCu);
    }
  }

  else
  {
    __p[0] = 0;
    sub_100016250(__p);
    *v27 = SLODWORD(__p[0]);
    *&v27[8] = SWORD2(__p[0]);
    sub_100539554(v6, 0x200u, 4, v27, 0);
    if (sub_10057DFAC(a1, v6) && (sub_1005412C4(v6) & 1) != 0)
    {
      v9 = 1;
    }

    else
    {
      v10 = qword_100BCEAA8;
      if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v6, v27);
        sub_10085C07C(v27, v28, v10);
      }

      v9 = 0;
    }
  }

  v23 = 0;
  sub_1000216B4(&v23);
  v11 = sub_10021FDA8(a3, v9);
  sub_100022214(&v23);
  if (v11 == 0 && v9)
  {
    v12 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v6, __p);
      v13 = v22 >= 0 ? __p : __p[0];
      *buf = 136446466;
      *&buf[4] = v13;
      *&buf[12] = 1024;
      *&buf[14] = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Accepting incoming connection attempt from device %{public}s with connection ID %d", buf, 0x12u);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }
    }

    *buf = xmmword_1008AAD20;
    __p[0] = 0;
    __p[1] = 0;
    v22 = 0;
    if (sub_10053BFB4(v6, buf, 0x317u, __p))
    {
      v14 = *(__p[0] + 2);
      v15 = qword_100BCEAA8;
      if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 67109120;
        v25 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Supported features bits are: 0x%x", v24, 8u);
      }
    }

    else
    {
      v17 = qword_100BCEAA8;
      if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No supported features", v24, 2u);
      }
    }

    *(a1 + 288) = v6;
    *(a1 + 280) = a3;
    operator new();
  }

  if (v11)
  {
    v16 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_ERROR))
    {
      sub_10085C0F0(v9, v11, v16);
    }
  }

  sub_10002249C(&v23);
  if (SHIBYTE(v35[0]) < 0)
  {
    operator delete(v34[1]);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[1]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[1]);
  }

  return nullsub_21(&v29 + 1);
}

void sub_100683708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_10002249C(&a15);
  sub_100320BE8(&a28);
  _Unwind_Resume(a1);
}

void sub_1006837A4(uint64_t a1, unsigned __int16 a2)
{
  v2 = *(a1 + 288);
  v3 = qword_100BCEAA8;
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1006831D8(a1, __p);
      if (v8 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136446210;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received disconnect event from device %{public}s", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = *(a1 + 288);
    }

    sub_10057E710(a1, v2, 0);
    (***(a1 + 264))();
    *(a1 + 264) = 0;
    sub_100687E60((a1 + 272), 0);
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
  }

  else if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_ERROR))
  {
    sub_10085C190(a2, v3);
  }
}

void sub_100683928(uint64_t a1, uint64_t *a2)
{
  sub_100429A1C(*a2, &__p);
  sub_100683998(a1, &__p, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10068397C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100683998(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 && (v4 = *(a1 + 272), *(v4 + 120)))
  {
    v6 = *(v4 + 124);
    v25 = 0;
    v26 = 0;
    v7 = *(a1 + 264);
    if (*(a2 + 23) < 0)
    {
      sub_100008904(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v24 = *(a2 + 16);
    }

    v9 = (*(*v7 + 32))(&v25, v7, __p);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    v10 = *(*(a1 + 272) + 124) & 0x40000;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v11 = v26;
    v19[0] = v25;
    v19[1] = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1006840D4(v9, 0, v19, a3, (v6 >> 6) & 1, v10 != 0);
    if (v11)
    {
      sub_100117644(v11);
    }

    v12 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1006831D8(a1, v17);
      if (v18 >= 0)
      {
        v13 = v17;
      }

      else
      {
        v13 = v17[0];
      }

      v14 = &v20;
      if (v22 < 0)
      {
        v14 = v20;
      }

      *buf = 136315650;
      v28 = v13;
      v29 = 2080;
      v30 = v14;
      v31 = 1024;
      v32 = v10 >> 18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating CarKit %s with event: %s and UTCOffsetSupport: %d", buf, 0x1Cu);
      if (v18 < 0)
      {
        operator delete(v17[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    if (v22 >= 0)
    {
      v15 = &v20;
    }

    else
    {
      v15 = v20;
    }

    v16 = HIBYTE(v22);
    if (v22 < 0)
    {
      v16 = v21;
    }

    sub_10021FF38(*(a1 + 280), v15, v16);
    sub_10002249C(buf);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v20);
    }

    if (v26)
    {
      sub_100117644(v26);
    }
  }

  else
  {
    v8 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to send event notification which is explicitly filtered out, ignoring.", buf, 2u);
    }
  }
}

_BYTE *sub_100683CAC(uint64_t a1, uint64_t *a2, int a3)
{
  v10 = 0;
  sub_1000216B4(&v10);
  v6 = *(a1 + 280);
  if (a3)
  {
    sub_100429A1C(*a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    sub_100220318(v6, p_p, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_100220318(v6, 0, 114);
  }

  sub_100022214(&v10);
  return sub_10002249C(&v10);
}

void sub_100683D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a18);
  _Unwind_Resume(a1);
}

void sub_100683D90(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(v4 + 123) = 1;
  sub_100429A1C(v4, &__p);
  sub_100683998(a1, &__p, 4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_100429A1C(*a2, &v5);
  sub_100683998(a1, &v5, 8);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_100683E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_100683E58(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  if (*(*a3 + 111) < 0)
  {
    sub_100008904(buf, *(v5 + 88), *(v5 + 96));
  }

  else
  {
    *buf = *(v5 + 88);
    v25 = *(v5 + 104);
  }

  v6 = HIBYTE(v25);
  if (v25 < 0)
  {
    v6 = *&buf[8];
  }

  if (v6)
  {
    sub_100428D64(*a3, __p);
    v7 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v7 = __p[1];
    }

    if (v7)
    {
      v8 = 0;
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10042A780((*a3 + 136), 0, v20);
      v15 = v20[1];
      if (v21 >= 0)
      {
        v15 = v21;
      }

      v8 = v15 == 0;
      if ((v21 & 0x8000000000000000) != 0)
      {
        operator delete(v20[0]);
      }

      if ((v23 & 0x80) == 0)
      {
LABEL_12:
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    operator delete(__p[0]);
    goto LABEL_12;
  }

  v8 = 1;
  if (v25 < 0)
  {
LABEL_13:
    operator delete(*buf);
  }

LABEL_14:
  v9 = qword_100BCEAA8;
  v10 = os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Could not send message to BTMap due to missing info", buf, 2u);
    }

    v11 = a3[1];
    v18 = *a3;
    v19 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 96))(a1, &v18, 0);
    v12 = v19;
    if (!v19)
    {
      return;
    }

LABEL_26:
    sub_100117644(v12);
    return;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending message to BTMap to be sent through IMCore", buf, 2u);
  }

  v13 = a1[33];
  v14 = a3[1];
  v16 = *a3;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v13 + 16))(v13, &v16);
  v12 = v17;
  if (v17)
  {
    goto LABEL_26;
  }
}

void sub_10068407C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006840D4(uint64_t a1, unsigned int a2, uint64_t *a3, int a4, int a5, int a6)
{
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  *v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  memset(v54, 0, sizeof(v54));
  v52 = 0u;
  sub_100007AD0(&v52);
  memset(&v51, 0, sizeof(v51));
  memset(&v50, 0, sizeof(v50));
  memset(&v49, 0, sizeof(v49));
  v11 = sub_100007774(&v53);
  sub_100007774(v11);
  v12 = sub_100007774(&v53);
  v13 = sub_100007774(v12);
  sub_100007774(v13);
  if (a2 < 4)
  {
    std::string::assign(&v51, off_100B05478[a2]);
  }

  if (a4 <= 7)
  {
    if (a4 == 1)
    {
      std::string::assign(&v50, "NewMessage");
      v16 = "inbox";
      goto LABEL_21;
    }

    if (a4 == 2)
    {
      std::string::assign(&v50, "MessageDeleted");
      v16 = "deleted";
      goto LABEL_21;
    }

    if (a4 != 4)
    {
      goto LABEL_22;
    }

    v15 = "MessageShift";
    goto LABEL_19;
  }

  if (a4 > 31)
  {
    if (a4 != 32)
    {
      if (a4 != 64)
      {
        goto LABEL_22;
      }

      v14 = "DeliveryFailure";
      goto LABEL_15;
    }

    v15 = "DeliverySuccess";
LABEL_19:
    std::string::assign(&v50, v15);
    v16 = "sent";
    goto LABEL_21;
  }

  if (a4 == 8)
  {
    v15 = "SendingSuccess";
    goto LABEL_19;
  }

  if (a4 != 16)
  {
    goto LABEL_22;
  }

  v14 = "SendingFailure";
LABEL_15:
  std::string::assign(&v50, v14);
  v16 = "outbox";
LABEL_21:
  std::string::assign(&v49, v16);
LABEL_22:
  v17 = sub_100007774(&v53);
  v18 = sub_100007774(v17);
  v19 = sub_100007774(v18);
  sub_100007774(v19);
  v20 = sub_100007774(&v53);
  v21 = sub_100007774(v20);
  sub_100429A1C(*a3, &__p);
  v22 = sub_100007774(v21);
  sub_100007774(v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v23 = sub_100007774(&v53);
  v24 = sub_100007774(v23);
  v25 = sub_100007774(v24);
  v26 = sub_100007774(v25);
  sub_100007774(v26);
  if (a4 == 4)
  {
    v27 = sub_100007774(&v53);
    v28 = sub_100007774(v27);
    v29 = sub_100007774(v28);
LABEL_45:
    sub_100007774(v29);
    goto LABEL_46;
  }

  if (a4 == 1 && a5)
  {
    v30 = sub_100007774(&v53);
    v31 = sub_100007774(v30);
    sub_100680060(*a3, a6, &__p);
    v32 = sub_100007774(v31);
    sub_100007774(v32);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v33 = sub_100007774(&v53);
    v34 = sub_100007774(v33);
    v35 = *a3;
    if (*(*a3 + 87) < 0)
    {
      sub_100008904(v46, *(v35 + 64), *(v35 + 72));
    }

    else
    {
      *v46 = *(v35 + 64);
      v47 = *(v35 + 80);
    }

    sub_10050DDC8(v46, &__p);
    v36 = sub_100007774(v34);
    sub_100007774(v36);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46[0]);
    }

    v37 = sub_100007774(&v53);
    v38 = sub_100007774(v37);
    v39 = *a3;
    if (*(*a3 + 175) < 0)
    {
      sub_100008904(v46, *(v39 + 152), *(v39 + 160));
    }

    else
    {
      *v46 = *(v39 + 152);
      v47 = *(v39 + 168);
    }

    sub_10050DDC8(v46, &__p);
    v40 = sub_100007774(v38);
    sub_100007774(v40);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46[0]);
    }

    v29 = &v53;
    goto LABEL_45;
  }

LABEL_46:
  v41 = sub_100007774(&v53);
  v42 = sub_100007774(v41);
  v43 = sub_100007774(v42);
  sub_100007774(v43);
  sub_100007774(&v53);
  sub_100007774(&v53);
  std::stringbuf::str();
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  *&v53 = v44;
  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55[1]);
  }

  std::locale::~locale(v54);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10068484C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100684904(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a3 + 23);
  if (v6 < 0)
  {
    v8 = *a3;
    v7 = (*a3 + a3[1]);
  }

  else
  {
    v7 = a3 + v6;
    v8 = a3;
  }

  while (v8 != v7)
  {
    *v8 = __toupper(*v8);
    ++v8;
  }

  v9 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1006831D8(a1, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v11 = a3;
    if (*(a3 + 23) < 0)
    {
      v11 = *a3;
    }

    *buf = 136446466;
    *&buf[4] = p_p;
    *&buf[12] = 2080;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'GetMessageEvent' from %{public}s for messageHandle %s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  v12 = a1[33];
  if (!v12)
  {
    goto LABEL_30;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100008904(v19, *a3, a3[1]);
  }

  else
  {
    *v19 = *a3;
    v20 = a3[2];
  }

  (*(*v12 + 32))(buf, v12, v19);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (*buf)
  {
    sub_1000C23E0(a1[36], &__p);
    v13 = std::string::compare(&__p, "HandsFreeLink");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v14 = a1[34];
    sub_100680DD8(*buf, v13 == 0);
    v15 = v14 + 96;
    std::string::operator=((v14 + 96), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v16 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending BMessage response to 'GetMessageEvent'", &__p, 2u);
    }

    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_1000216B4(&__p);
    v17 = *(v14 + 119);
    if (v17 < 0)
    {
      v15 = *(v14 + 96);
      v17 = *(v14 + 104);
    }

    sub_100220128(a2, v15, v17, 1, 0);
  }

  else
  {
LABEL_30:
    v18 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No matching message found.", &__p, 2u);
    }

    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_1000216B4(&__p);
    sub_100220128(a2, 0, 0, 1, 114);
  }

  sub_10002249C(&__p);
  if (*&buf[8])
  {
    sub_100117644(*&buf[8]);
  }
}

void sub_100684C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  sub_10002249C(&__p);
  if (a24)
  {
    sub_100117644(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100684C78(uint64_t a1, unsigned int a2, std::string *p_str, int a4, unsigned int a5, char a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v17 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1006831D8(a1, __p);
    v18 = __p[0];
    if ((SBYTE7(v72) & 0x80u) == 0)
    {
      v18 = __p;
    }

    v19 = p_str;
    if (SHIBYTE(p_str->__r_.__value_.__r.__words[2]) < 0)
    {
      v19 = p_str->__r_.__value_.__r.__words[0];
    }

    v20 = (*(*(a1 + 272) + 124) >> 18) & 1;
    *buf = 136448002;
    *&buf[4] = v18;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    *&buf[18] = 2080;
    *&buf[20] = v19;
    *&buf[28] = 1024;
    *&buf[30] = a4;
    *&buf[34] = 1024;
    *&buf[36] = a8;
    *&buf[40] = 1024;
    *&buf[42] = a7;
    *&buf[46] = 1024;
    LODWORD(v78[0]) = a11;
    WORD2(v78[0]) = 1024;
    *(v78 + 6) = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received 'GetMessageListingEvent' from device %{public}s (connectionId: %u, path: %s, maxListCount: %u, filterMessageType: %u, parameterMask: %u, filterReadStatus: %u, UTCOffsetTimeSupport: %d)", buf, 0x3Au);
    if (SBYTE7(v72) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v73 = 0;
  v72 = 0u;
  *__p = 0u;
  sub_100681AFC(__p);
  *__s = 0;
  v85 = 0;
  v83 = 0;
  v82 = 0u;
  memset(v81, 0, sizeof(v81));
  *v80 = 0u;
  v79 = 0u;
  *v78 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_1000DE474(&buf[1]);
  buf[18] = 0;
  buf[20] = 0;
  BYTE2(v78[0]) = 0;
  BYTE4(v78[0]) = 0;
  DWORD1(v81[1]) = 0;
  memset(&buf[24], 0, 24);
  LOBYTE(v78[0]) = 0;
  v78[1] = 0;
  v79 = 0uLL;
  LOBYTE(v80[0]) = 0;
  v80[1] = 0;
  memset(v81, 0, 19);
  BYTE8(v81[1]) = 1;
  *(&v81[1] + 14) = 0;
  *(&v81[1] + 9) = 0;
  *(&v81[2] + 1) = 0;
  v82 = 0uLL;
  LOBYTE(v83) = 0;
  *(&v83 + 2) = 0;
  LOBYTE(__p[0]) = a6;
  HIDWORD(__p[0]) = a7;
  v21 = *(a1 + 272);
  LOBYTE(__p[1]) = (*(v21 + 124) & 0x40000) != 0;
  memset(&__str, 0, sizeof(__str));
  v22 = *(v21 + 8);
  if (*(v22 + 55) < 0)
  {
    sub_100008904(&__str, *(v22 + 32), *(v22 + 40));
  }

  else
  {
    __str = *(v22 + 32);
  }

  memset(&v69, 0, sizeof(v69));
  v23 = SHIBYTE(p_str->__r_.__value_.__r.__words[2]);
  if ((v23 & 0x8000000000000000) == 0)
  {
    if (*(&p_str->__r_.__value_.__s + 23))
    {
      goto LABEL_13;
    }

LABEL_17:
    p_str = &__str;
LABEL_18:
    std::string::operator=(&v69, p_str);
    goto LABEL_25;
  }

  if (!p_str->__r_.__value_.__l.__size_)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__str.__r_.__value_.__l.__size_ != 3)
    {
      goto LABEL_25;
    }

    v24 = __str.__r_.__value_.__r.__words[0];
    goto LABEL_21;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) == 3)
  {
    v24 = &__str;
LABEL_21:
    data_low = LOWORD(v24->__r_.__value_.__l.__data_);
    v26 = v24->__r_.__value_.__s.__data_[2];
    if (data_low != 29549 || v26 != 103)
    {
      goto LABEL_25;
    }

    v43 = *(a1 + 272);
    if ((v23 & 0x80000000) != 0)
    {
      sub_100008904(v67, p_str->__r_.__value_.__l.__data_, p_str->__r_.__value_.__l.__size_);
    }

    else
    {
      *v67 = *&p_str->__r_.__value_.__l.__data_;
      v68 = p_str->__r_.__value_.__r.__words[2];
    }

    v44 = sub_1006854FC(v43, v67);
    if (SHIBYTE(v68) < 0)
    {
      operator delete(v67[0]);
    }

    if ((v44 & 1) == 0)
    {
      v45 = qword_100BCEAA8;
      if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
      {
        if (SHIBYTE(p_str->__r_.__value_.__r.__words[2]) < 0)
        {
          p_str = p_str->__r_.__value_.__r.__words[0];
        }

        v46 = *(*(a1 + 272) + 8);
        if (*(v46 + 55) < 0)
        {
          sub_100008904(v65, *(v46 + 32), *(v46 + 40));
        }

        else
        {
          *v65 = *(v46 + 32);
          v66 = *(v46 + 48);
        }

        v47 = v65;
        if (v66 < 0)
        {
          v47 = v65[0];
        }

        *v74 = 136315394;
        *&v74[4] = p_str;
        v75 = 2080;
        v76 = v47;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "No such folder %s at path %s", v74, 0x16u);
        if (SHIBYTE(v66) < 0)
        {
          operator delete(v65[0]);
        }
      }

      LOBYTE(v65[0]) = 0;
      sub_1000216B4(v65);
      v41 = sub_10022055C(a2, 0, 0, 0, 0, 0);
      sub_10002249C(v65);
      goto LABEL_70;
    }

    goto LABEL_18;
  }

LABEL_25:
  v65[1] = 0;
  v65[0] = 0;
  v66 = 0;
  v28 = *(a1 + 264);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100008904(&__dst, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v69;
  }

  (*(*v28 + 40))(v65, v28, &__dst);
  v48 = a1;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v29 = v65[1];
  if (v65[1] != v65[0])
  {
    v30 = 0;
    v31 = 0;
    while (1)
    {
      v32 = *(v29 - 2);
      v33 = *(v29 - 1);
      v29 -= 16;
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = *(v32 + 122);
      if (a11)
      {
        if (a11 & 2) != 0 || (*(v32 + 122))
        {
          goto LABEL_52;
        }
      }

      else if ((a11 & 2) != 0 && !*(v32 + 122))
      {
        goto LABEL_52;
      }

      ++v30;
      if (a4 && v30 > a5 && v30 <= a5 + a4)
      {
        sub_1006812C4(v51, v32);
        sub_100681B80(__p, v51);
        if (v63 < 0)
        {
          operator delete(v62);
        }

        sub_10069F44C(&v61);
        sub_10069F44C(&v60);
        if (v59 < 0)
        {
          operator delete(v58);
        }

        if (v57 < 0)
        {
          operator delete(v56);
        }

        if (v55 < 0)
        {
          operator delete(v54);
        }

        if (v53 < 0)
        {
          operator delete(v52);
          if (!v33)
          {
            goto LABEL_54;
          }

LABEL_53:
          sub_100117644(v33);
          goto LABEL_54;
        }
      }

LABEL_52:
      if (v33)
      {
        goto LABEL_53;
      }

LABEL_54:
      v31 |= v34 ^ 1;
      if (v29 == v65[0])
      {
        goto LABEL_59;
      }
    }
  }

  v31 = 0;
  v30 = 0;
LABEL_59:
  if (a4)
  {
    sub_100682DCC(*(v48 + 272), __p);
    v35 = *(v48 + 272);
    v36 = *(v35 + 71);
    if (v36 < 0)
    {
      v37 = *(v35 + 48);
      v36 = *(v35 + 56);
    }

    else
    {
      v37 = v35 + 48;
    }

    v40 = qword_100BCEAA8;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      *v74 = 67109120;
      *&v74[4] = v30;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "getMessageListingEvent count = %u", v74, 8u);
    }

    v39 = v48;
  }

  else
  {
    v38 = qword_100BCEAA8;
    v39 = v48;
    if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
    {
      *v74 = 67109120;
      *&v74[4] = v30;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "getMessageListingEvent only returning the count %d", v74, 8u);
    }

    LOWORD(v36) = 0;
    v37 = 0;
  }

  (*(**(v39 + 264) + 8))(*(v39 + 264), __s);
  v74[0] = 0;
  sub_1000216B4(v74);
  v41 = sub_10022055C(a2, v31 & 1, v30, v37, v36, __s);
  sub_10002249C(v74);
  *v74 = v65;
  sub_10042AF8C(v74);
LABEL_70:
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v81[0]) < 0)
  {
    operator delete(v80[1]);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78[1]);
  }

  if (buf[47] < 0)
  {
    operator delete(*&buf[24]);
  }

  nullsub_21(&buf[1]);
  sub_100681B7C(__p);
  return v41;
}

void sub_100685410(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x46F]) < 0)
  {
    operator delete(STACK[0x458]);
  }

  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(STACK[0x470]);
  }

  sub_100320BE8(&STACK[0x4E0]);
  sub_100681B7C(&STACK[0x490]);
  _Unwind_Resume(a1);
}

uint64_t sub_1006854FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v3 = sub_100687C08(v2, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_100685574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100685590(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1006831D8(a1, __p);
    if (v18 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136446722;
    v20 = v9;
    v21 = 1024;
    v22 = a3;
    v23 = 1024;
    v24 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'GetFolderListing' event from device %{public}s (maxListCount=%d, startOffset=%d)", buf, 0x18u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = qword_100BCEAA8;
  }

  v10 = *(a1 + 272);
  v11 = *(*(v10 + 8) + 24);
  v12 = (v10 + 24);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = (v10 + 24);
    if (*(v10 + 47) < 0)
    {
      v13 = *v12;
    }

    *buf = 136315138;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Folder listing = %s", buf, 0xCu);
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  v14 = *(v10 + 47);
  if (v14 < 0)
  {
    v12 = *(v10 + 24);
    v14 = *(v10 + 32);
  }

  v15 = sub_1002207D4(a2, v11, v12, v14);
  sub_10002249C(buf);
  return v15;
}

void sub_100685740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10068575C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  v6 = *(a1 + 272);
  v7 = 1738;
  if (v6 && (a6 & 1) == 0)
  {
    if (*(a3 + 23) < 0)
    {
      sub_100008904(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v11 = *(a3 + 16);
    }

    v7 = sub_100682A80(v6, __p, a5);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v7;
}

void sub_1006857EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100685808(uint64_t a1, unsigned int a2, int a3, uint64_t *a4)
{
  v8 = *(a4 + 23);
  if (v8 < 0)
  {
    v10 = *a4;
    v9 = (*a4 + a4[1]);
  }

  else
  {
    v9 = a4 + v8;
    v10 = a4;
  }

  while (v10 != v9)
  {
    *v10 = __toupper(*v10);
    ++v10;
  }

  v11 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1006831D8(a1, __p);
    v12 = __p[0];
    if (v19 >= 0)
    {
      v12 = __p;
    }

    v13 = a4;
    if (*(a4 + 23) < 0)
    {
      v13 = *a4;
    }

    *buf = 136446722;
    v21 = v12;
    v22 = 1024;
    v23 = a3;
    v24 = 2080;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received 'SetReadStatus' event from device %{public}s (readFlag=%d, messageGUID=%s)", buf, 0x1Cu);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = *(a1 + 264);
  if (v14)
  {
    if (*(a4 + 23) < 0)
    {
      sub_100008904(v16, *a4, a4[1]);
    }

    else
    {
      *v16 = *a4;
      v17 = a4[2];
    }

    (*(*v14 + 24))(v14, v16);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  sub_100220A24(a2, 0);
  return sub_10002249C(buf);
}

void sub_1006859E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100685A14(uint64_t a1, unsigned int a2, int a3, uint64_t *a4)
{
  v8 = *(a4 + 23);
  if (v8 < 0)
  {
    v10 = *a4;
    v9 = (*a4 + a4[1]);
  }

  else
  {
    v9 = a4 + v8;
    v10 = a4;
  }

  while (v10 != v9)
  {
    *v10 = __toupper(*v10);
    ++v10;
  }

  v11 = qword_100BCEAA8;
  if (!os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_12;
  }

  sub_1006831D8(a1, __p);
  v12 = __p[0];
  if (v23 >= 0)
  {
    v12 = __p;
  }

  v13 = a4;
  if (*(a4 + 23) < 0)
  {
    v13 = *a4;
  }

  *buf = 136446722;
  v25 = v12;
  v26 = 1024;
  v27 = a3;
  v28 = 2080;
  v29 = v13;
  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received 'SetDeleteStatus' from device %{public}s (deleteFlag=%d, messageHandle=%s)", buf, 0x1Cu);
  if (v23 < 0)
  {
    operator delete(__p[0]);
    if (a3)
    {
LABEL_13:
      v14 = *(a1 + 264);
      if (v14)
      {
        if (*(a4 + 23) < 0)
        {
          sub_100008904(__dst, *a4, a4[1]);
        }

        else
        {
          *__dst = *a4;
          v21 = a4[2];
        }

        (*(*v14 + 48))(v14, __dst);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__dst[0]);
        }
      }

      if (*(a4 + 23) < 0)
      {
        sub_100008904(v18, *a4, a4[1]);
      }

      else
      {
        *v18 = *a4;
        v19 = a4[2];
      }

      sub_100683998(a1, v18, 2);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18[0]);
      }

      v16 = 0;
      goto LABEL_29;
    }
  }

  else
  {
LABEL_12:
    if (a3)
    {
      goto LABEL_13;
    }
  }

  v15 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_ERROR))
  {
    sub_10085C20C(v15);
  }

  v16 = 1706;
LABEL_29:
  buf[0] = 0;
  sub_1000216B4(buf);
  sub_100220A24(a2, v16);
  return sub_10002249C(buf);
}

void sub_100685C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100685CB4(uint64_t a1, unsigned int a2, int a3)
{
  v6 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 288), __p);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136446210;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received 'SetNotificationFilter' from device %{public}s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(*(a1 + 272) + 120) = a3;
  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  sub_100220AA0(a2, 0);
  return sub_10002249C(__p);
}

void sub_100685DC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100685DE4(void *a1)
{
  *a1 = off_100B05268;
  a1[32] = off_100B052E8;
  sub_100687E60(a1 + 34, 0);

  return sub_10032F580(a1);
}

void sub_100685E60(void *a1)
{
  *a1 = off_100B05268;
  a1[32] = off_100B052E8;
  sub_100687E60(a1 + 34, 0);
  sub_10032F580(a1);

  operator delete();
}

uint64_t sub_100685EF8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = a2;
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100008904((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v5;
  }

  if (a2)
  {
    operator new();
  }

  return a1;
}

void *sub_100685FC4(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

uint64_t sub_100686068(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != (a1 + 8))
  {
    do
    {
      if (v3[2])
      {
        sub_100686068();
        operator delete();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_100028EB4(v2);
  return a1;
}

void sub_1006860EC(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v10 = *a1;
  v11 = *(a1 + 2);
  if (qword_100B54340 != -1)
  {
    sub_10085C250();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100686244;
  v6[3] = &unk_100ADF8F8;
  v8 = v10;
  v9 = v11;
  v7 = a5;
  sub_1005897E0(qword_100B54338, v6);
}

void sub_1006861A4(__int16 a1, int a2)
{
  if (qword_100B54340 != -1)
  {
    sub_10085C250();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006863C0;
  v4[3] = &unk_100AE0ED8;
  v6 = a1;
  v5 = a2;
  sub_1005897E0(qword_100B54338, v4);
}

uint64_t sub_100686244(uint64_t a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  v3 = *(a1 + 34) | (*(a1 + 38) << 32);
  v4 = *(a1 + 32);

  return sub_1006831F4(v2, v3, v4);
}

void sub_1006863C0(uint64_t a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  v3 = *(a1 + 36);

  sub_1006837A4(v2, v3);
}

void sub_100686418(__int16 a1, char *a2, char a3, char a4, char a5)
{
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  sub_100007E30(v17, a2);
  if (qword_100B54340 != -1)
  {
    sub_10085C278();
  }

  v9 = qword_100B54338;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_1006871FC;
  v10[3] = &unk_100B05368;
  v13 = a1;
  if (SHIBYTE(v18) < 0)
  {
    sub_100008904(&__p, v17[0], v17[1]);
  }

  else
  {
    __p = *v17;
    v12 = v18;
  }

  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_1005897E0(v9, v10);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_100686534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100686568(int a1, const void *a2, unsigned int a3)
{
  v6 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a1;
    *&buf[8] = 1024;
    *&buf[10] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sendMessage(connectionId=%u, bodyDataLen=%u)", buf, 0xEu);
  }

  memset(buf, 0, sizeof(buf));
  v14 = 0;
  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = a3;
  if (a3)
  {
    memcpy(buf, a2, a3);
  }

  buf[a3] = 0;
  if (qword_100B54340 != -1)
  {
    sub_10085C278();
  }

  v7 = qword_100B54338;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_1006872C0;
  v9[3] = &unk_100B05398;
  v8 = SHIBYTE(v14);
  if (SHIBYTE(v14) < 0)
  {
    sub_100008904(__p, *buf, *&buf[8]);
  }

  else
  {
    *__p = *buf;
    v11 = v14;
  }

  v12 = a1;
  sub_1005897E0(v7, v9);
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(*buf);
    return;
  }

  operator delete(__p[0]);
  if (v8 < 0)
  {
    goto LABEL_17;
  }
}

void sub_1006867A0(uint64_t a1, char *a2)
{
  v3 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got stack call for getMessageListing", buf, 2u);
  }

  memset(buf, 0, sizeof(buf));
  v6 = 0;
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = "";
  }

  sub_100007E30(buf, v4);
  operator new();
}

void sub_100686C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  operator delete(v33);
  operator delete(v32);
  operator delete(v31);
  operator delete(v30);
  if (*(v34 - 89) < 0)
  {
    operator delete(*(v34 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_100686CDC(__int16 a1, __int16 a2, __int16 a3)
{
  if (qword_100B54340 != -1)
  {
    sub_10085C250();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10068791C;
  v6[3] = &unk_100AE0ED8;
  v7 = a1;
  v8 = a2;
  v9 = a3;
  sub_1005897E0(qword_100B54338, v6);
}

void sub_100686D8C(__int16 a1, char *a2, __int16 a3, char a4, char a5)
{
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  sub_100007E30(v17, a2);
  if (qword_100B54340 != -1)
  {
    sub_10085C278();
  }

  v9 = qword_100B54338;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_100687978;
  v10[3] = &unk_100B053F8;
  v13 = a1;
  if (SHIBYTE(v18) < 0)
  {
    sub_100008904(&__p, v17[0], v17[1]);
  }

  else
  {
    __p = *v17;
    v12 = v18;
  }

  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_1005897E0(v9, v10);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_100686EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100686EDC(__int16 a1, char a2, char *__s)
{
  v11 = 0uLL;
  v12 = 0;
  sub_100007E30(&v11, __s);
  if (qword_100B54340 != -1)
  {
    sub_10085C278();
  }

  v5 = qword_100B54338;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_100687A30;
  v6[3] = &unk_100B05428;
  v9 = a1;
  v10 = a2;
  if (SHIBYTE(v12) < 0)
  {
    sub_100008904(&__p, v11, *(&v11 + 1));
  }

  else
  {
    __p = v11;
    v8 = v12;
  }

  sub_1005897E0(v5, v6);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }
}

void sub_100686FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 33) < 0)
  {
    operator delete(*(v19 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_100687018(__int16 a1, char a2, char *__s)
{
  v11 = 0uLL;
  v12 = 0;
  sub_100007E30(&v11, __s);
  if (qword_100B54340 != -1)
  {
    sub_10085C278();
  }

  v5 = qword_100B54338;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_100687AF0;
  v6[3] = &unk_100B05428;
  v9 = a1;
  v10 = a2;
  if (SHIBYTE(v12) < 0)
  {
    sub_100008904(&__p, v11, *(&v11 + 1));
  }

  else
  {
    __p = v11;
    v8 = v12;
  }

  sub_1005897E0(v5, v6);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }
}

void sub_100687120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 33) < 0)
  {
    operator delete(*(v19 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_10068715C(__int16 a1, int a2)
{
  if (qword_100B54340 != -1)
  {
    sub_10085C250();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100687BB0;
  v4[3] = &unk_100AE0ED8;
  v6 = a1;
  v5 = a2;
  sub_1005897E0(qword_100B54338, v4);
}

void sub_1006871FC(uint64_t a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  v3 = *(a1 + 56);
  if (*(a1 + 55) < 0)
  {
    sub_100008904(__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *__p = *(a1 + 32);
    v5 = *(a1 + 48);
  }

  sub_100684904(v2, v3, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006872A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006872C0()
{
  v0 = 0;
  v1 = 0;
  operator new();
}

void sub_100687424(uint64_t a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  v3 = *(a1 + 156);
  if (*(a1 + 55) < 0)
  {
    sub_100008904(&__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    __p = *(a1 + 32);
  }

  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v4 != v5)
  {
    if (v4 - v5 >= 0)
    {
      operator new();
    }

    goto LABEL_21;
  }

  v7 = *(a1 + 80);
  v6 = *(a1 + 88);
  if (v6 != v7)
  {
    if (v6 - v7 >= 0)
    {
      operator new();
    }

    goto LABEL_21;
  }

  v9 = *(a1 + 104);
  v8 = *(a1 + 112);
  if (v8 != v9)
  {
    if (v8 - v9 >= 0)
    {
      operator new();
    }

    goto LABEL_21;
  }

  v11 = *(a1 + 128);
  v10 = *(a1 + 136);
  if (v10 != v11)
  {
    if (v10 - v11 >= 0)
    {
      operator new();
    }

LABEL_21:
    sub_1000C7698();
  }

  sub_100684C78(v2, v3, &__p, *(a1 + 158), *(a1 + 160), *(a1 + 162), *(a1 + 152), *(a1 + 163), v12, v13, *(a1 + 164));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10068764C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22)
  {
    operator delete(v22);
    if (!v23)
    {
LABEL_4:
      if (__p)
      {
        operator delete(__p);
      }

      if (a22 < 0)
      {
        operator delete(a17);
      }

      _Unwind_Resume(exception_object);
    }
  }

  else if (!v23)
  {
    goto LABEL_4;
  }

  operator delete(v23);
  goto LABEL_4;
}

uint64_t sub_1006876D0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    sub_100008904((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v6 = *(a2 + 56);
  v5 = *(a2 + 64);
  if (v5 != v6)
  {
    sub_1000C9104(a1 + 56, v5 - v6);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  if (v7 != v8)
  {
    sub_1000C9104(a1 + 80, v7 - v8);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v10 = *(a2 + 104);
  v9 = *(a2 + 112);
  if (v9 != v10)
  {
    sub_1000C9104(a1 + 104, v9 - v10);
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  result = a1 + 128;
  *(a1 + 144) = 0;
  v13 = *(a2 + 128);
  v12 = *(a2 + 136);
  if (v12 != v13)
  {
    sub_1000C9104(result, v12 - v13);
  }

  return result;
}

void sub_100687830(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 112) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 88) = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v8;
    operator delete(v8);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_100687894(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    *(a1 + 64) = v5;
    operator delete(v5);
  }

  if (*(a1 + 55) < 0)
  {
    v6 = *(a1 + 32);

    operator delete(v6);
  }
}

uint64_t sub_10068791C(unsigned __int16 *a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  v3 = a1[16];
  v4 = a1[17];
  v5 = a1[18];

  return sub_100685590(v2, v3, v4, v5);
}

void sub_100687978(uint64_t a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  if (*(a1 + 55) < 0)
  {
    sub_100008904(__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *__p = *(a1 + 32);
    v4 = *(a1 + 48);
  }

  sub_10068575C(v2, 0, __p, 0, *(a1 + 60), *(a1 + 61));
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100687A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100687A30(uint64_t a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  v3 = *(a1 + 56);
  v4 = *(a1 + 58);
  if (*(a1 + 55) < 0)
  {
    sub_100008904(__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *__p = *(a1 + 32);
    v6 = *(a1 + 48);
  }

  sub_100685808(v2, v3, v4, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100687AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100687AF0(uint64_t a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  v3 = *(a1 + 56);
  v4 = *(a1 + 58);
  if (*(a1 + 55) < 0)
  {
    sub_100008904(__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *__p = *(a1 + 32);
    v6 = *(a1 + 48);
  }

  sub_100685A14(v2, v3, v4, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100687B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100687BB0(uint64_t a1)
{
  if (qword_100B54DB8 != -1)
  {
    sub_10085C264();
  }

  v2 = qword_100B54DB0;
  v3 = *(a1 + 36);
  v4 = *(a1 + 32);

  return sub_100685CB4(v2, v3, v4);
}

uint64_t sub_100687C08(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 16);
  if (v3 == a1 + 8)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  while (1)
  {
    v7 = *(v3 + 16);
    v8 = *(v7 + 55);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v7 + 40);
    }

    if (v6 == v8)
    {
      v10 = v5 >= 0 ? a2 : *a2;
      v13 = *(v7 + 32);
      v11 = v7 + 32;
      v12 = v13;
      v14 = (v9 >= 0 ? v11 : v12);
      if (!memcmp(v10, v14, v6))
      {
        break;
      }
    }

    v3 = *(v3 + 8);
    if (v3 == v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100687CB8(uint64_t a1)
{
  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  sub_10069F44C(a1 + 560);
  sub_10069F44C(a1 + 136);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_100687D3C(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a3)
  {
    sub_100687DD0();
  }

  return result;
}

uint64_t sub_100687E60(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100682E28(result);

    operator delete();
  }

  return result;
}

void sub_100687F14()
{
  v0 = objc_autoreleasePoolPush();
  sub_100007E30(byte_100BCE888, "<?xml version=1.0?>\n<!DOCTYPE folder-listing SYSTEM obex-folder-listing.dtd>\n");
  __cxa_atexit(&std::string::~string, byte_100BCE888, &_mh_execute_header);
  sub_100007E30(v2, "inbox");
  sub_100007E30(v3, "sent");
  sub_100007E30(v4, "outbox");
  sub_100007E30(v5, "deleted");
  sub_100687D3C(&qword_100BCE8A0, v2, 4);
  for (i = 0; i != -96; i -= 24)
  {
    if (v5[i + 23] < 0)
    {
      operator delete(*&v5[i]);
    }
  }

  __cxa_atexit(sub_100682480, &qword_100BCE8A0, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_100688068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 95);
  v13 = -96;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 24;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 24;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

char *sub_1006880CC(char *__dst, double a2)
{
  v2 = a2;
  if (a2 >= 0.0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -v2;
  }

  memset(v12, 0, sizeof(v12));
  if (v3 >= 1)
  {
    v4 = __dst;
    if (a2 < 0.0)
    {
      if (v2)
      {
        __dst = memcpy(v12, __dst, 8 * -a2);
      }

      if (v2 != 128)
      {
        v10 = v2 ^ 0x80u;
        v11 = v4;
        do
        {
          *v11 = v11[-v2];
          ++v11;
          --v10;
        }

        while (v10);
      }

      if (v2)
      {
        v4 = &v4[-v3 + 128];
        v9 = 8 * v3;
        return memcpy(v4, v12, v9);
      }
    }

    else
    {
      v5 = a2;
      if (a2)
      {
        __dst = memcpy(v12, &__dst[-8 * a2 + 1024], 8 * a2);
      }

      if (v2 <= 127)
      {
        v6 = 127 - v2;
        v7 = v4 + 127;
        v8 = 128;
        do
        {
          *v7-- = v4[v6];
          --v8;
          --v6;
        }

        while (v8 > v2);
      }

      if (v5)
      {
        v9 = 8 * v5;
        return memcpy(v4, v12, v9);
      }
    }
  }

  return __dst;
}

uint64_t *sub_100688248(uint64_t *result, int a2, int a3, int *a4, unsigned int *a5)
{
  if (a2 <= a3)
  {
    v6 = result;
    v7 = (a3 - 1);
    *a4 = 1;
    v8 = *result;
    if (a3 < 2)
    {
      goto LABEL_45;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = v8 - 8;
    v13 = a2;
    v35 = a4;
    v34 = a2;
    while (1)
    {
      v14 = v11;
      v15 = *(v12 + 8 * v13);
      *(v12 + 8 * v13) = *(v8 + 8 * v7);
      *(v8 + 8 * v7) = v15;
      v16 = v11;
      v17 = -1;
      v18 = v11;
      do
      {
        v19 = *(v8 + 8 * v16);
        if (v19 == v15)
        {
          *(v8 + 8 * v16) = *(v8 + 8 * v18);
          *(v8 + 8 * v18) = v19;
          ++v17;
        }

        else
        {
          if (v19 >= v15)
          {
            goto LABEL_11;
          }

          *(v8 + 8 * v16) = *(v8 + 8 * v18);
          *(v8 + 8 * v18) = v19;
        }

        ++v18;
LABEL_11:
        ++v16;
      }

      while (v16 < v7);
      *(v8 + 8 * v7) = *(v8 + 8 * v18);
      *(v8 + 8 * v18) = v15;
      v11 = (v18 + 1);
      if (v11 < a2)
      {
        goto LABEL_15;
      }

      v20 = v18 - v17;
      *a4 = v20;
      if (v20 <= a2)
      {
        LODWORD(v7) = v18;
        goto LABEL_45;
      }

      v7 = (v18 - 1);
      v11 = v14;
LABEL_15:
      v21 = v7 - v11;
      v22 = v7 - v11 + 1;
      if (v10)
      {
        v23 = v21 < a3 / 2;
        a3 = v21 + 1;
        if (!v23)
        {
          goto LABEL_20;
        }

        a3 = v21 + 1;
LABEL_29:
        if (v21 < 2)
        {
          goto LABEL_41;
        }

        v30 = *(v8 + 8 * v11);
        v31 = v11 + (v21 >> 1);
        v32 = *(v8 + 8 * v31);
        v33 = *(v8 + 8 * v7);
        if (v30 < v32)
        {
          if (v32 >= v33)
          {
            if (v30 >= v33)
            {
              v31 = v11;
            }

            else
            {
              v31 = v7;
            }
          }

          goto LABEL_39;
        }

        if (v30 < v33)
        {
          goto LABEL_41;
        }

        if (v32 < v33)
        {
          v31 = v7;
        }

LABEL_39:
        if (v31 <= v11)
        {
LABEL_41:
          v9 = 0;
        }

        else
        {
          v9 = 0;
          *(v8 + 8 * v11) = *(v8 + 8 * v31);
          *(v8 + 8 * v31) = v30;
        }
      }

      else
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_29;
        }

LABEL_20:
        if (v21 < 1)
        {
          v9 = 1;
        }

        else
        {
          v36 = v10;
          v37 = v7;
          v41 = v11 + 1;
          v40 = (v8 + 8 * v11);
          v42 = v11;
          v38 = a3;
          v39 = v11 + 5;
          do
          {
            v24 = v22 / 5;
            *a5 = v22 % 5;
            if (v22 >= 5)
            {
              v25 = v24;
              v26 = v39;
              v27 = v40;
              do
              {
                result = sub_100688530(v6, (v26 - 4), v26);
                v28 = *v27;
                *v27++ = *(v12 + 8 * result);
                *(v12 + 8 * result) = v28;
                v26 += 5;
                --v25;
              }

              while (v25);
            }

            if ((v22 % 5) > 0)
            {
              result = sub_100688530(v6, (v41 + 5 * v24), v22 + v42);
              v29 = *(v8 + 8 * (v24 + v42));
              *(v8 + 8 * (v24 + v42)) = *(v12 + 8 * result);
              *(v12 + 8 * result) = v29;
              ++v24;
            }

            v22 = v24;
          }

          while (v24 > 1);
          v9 = 1;
          a4 = v35;
          a2 = v34;
          a3 = v38;
          v7 = v37;
          v10 = v36;
          v11 = v42;
        }
      }

      v10 ^= 1u;
      v13 = v11 + 1;
      *a4 = v11 + 1;
      if (v7 <= v11)
      {
LABEL_45:
        v5 = v7 + 1;
        goto LABEL_46;
      }
    }
  }

  v5 = 0;
  *a4 = 0;
LABEL_46:
  *a5 = v5;
  return result;
}

uint64_t sub_100688530(uint64_t *a1, uint64_t a2, int a3)
{
  if (a2 != a3)
  {
    v3 = a2 + 1;
    if (v3 != a3)
    {
      v4 = a2 + 2;
      if (a2 + 2 == a3 || (v5 = a2 + 3, a2 + 3 == a3))
      {
        v6 = (*a1 + 8 * a2);
        v8 = *(v6 - 1);
        v7 = *v6;
        v9 = *(*a1 + 8 * v3);
        if (v8 >= *v6)
        {
          if (v8 >= v9)
          {
            if (v7 >= v9)
            {
              return v3;
            }

            else
            {
              return v4;
            }
          }
        }

        else
        {
          if (v8 >= v9)
          {
            LODWORD(v4) = a2;
          }

          if (v7 >= v9)
          {
            return v4;
          }

          else
          {
            return v3;
          }
        }
      }

      else
      {
        v10 = *a1;
        v11 = *(*a1 + 8 * (a2 - 1));
        v12 = *(*a1 + 8 * a2);
        v13 = *(*a1 + 8 * v3);
        if (v11 >= v12)
        {
          if (v12 >= v13)
          {
            v17 = a2 + 2;
          }

          else
          {
            v17 = a2 + 1;
          }

          if (v12 >= v13)
          {
            v18 = a2;
          }

          else
          {
            v18 = a2 + 1;
          }

          if (v11 >= v13)
          {
            v14 = v17;
          }

          else
          {
            v14 = v3;
          }

          if (v11 >= v13)
          {
            v15 = v18;
          }

          else
          {
            v15 = a2 - 1;
          }

          if (v11 >= v13)
          {
            v16 = a2;
          }

          else
          {
            v16 = v4;
          }
        }

        else if (v12 >= v13)
        {
          if (v11 >= v13)
          {
            v14 = v4;
          }

          else
          {
            v14 = a2;
          }

          if (v11 >= v13)
          {
            v15 = a2 - 1;
          }

          else
          {
            v15 = a2 + 1;
          }

          v16 = a2 + 1;
        }

        else
        {
          v14 = a2;
          v15 = a2;
          v16 = a2 + 2;
        }

        v19 = *(v10 + 8 * v4);
        v20 = *(v10 + 8 * v5);
        v21 = v20 < v19;
        if (v20 < v19)
        {
          v22 = *(v10 + 8 * v5);
        }

        else
        {
          v22 = *(v10 + 8 * v4);
        }

        if (v20 < v19)
        {
          v23 = a2 + 1;
        }

        else
        {
          v19 = *(v10 + 8 * v5);
          v23 = a2;
        }

        if (v21)
        {
          LODWORD(v3) = a2;
        }

        a2 = v14;
        if (v19 >= *(v10 + 8 * v14 - 8))
        {
          v24 = *(v10 + 8 * v15);
          if (v19 >= v24)
          {
            if (v22 >= v24)
            {
              a2 = v16;
              if (v22 < *(v10 + 8 * v16 - 8))
              {
                return (v23 + 3);
              }
            }

            else
            {
              return (v15 + 1);
            }
          }

          else
          {
            return (v3 + 3);
          }
        }
      }
    }
  }

  return a2;
}

double sub_100688678(uint64_t a1, int a2, double a3, double a4, __n128 a5, __n128 a6)
{
  a6.n128_u64[0] = *a1;
  a5.n128_u64[0] = *(a1 + 8);
  if (a2 >= 2)
  {
    v7 = a2 - 1;
    v18 = vdupq_n_s64(0x7FDFFFFFFFFFFFFFuLL);
    do
    {
      v8 = *(a1 + 24);
      *&v9.f64[0] = a6.n128_u64[0];
      *&v9.f64[1] = a5.n128_u64[0];
      v20 = a5;
      v21 = *(a1 + 16);
      v19 = a6;
      if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_f64(vabsq_f64(v9), v18), vcgtq_f64(vabsq_f64(v21), v18)))))
      {
        v10 = sub_10068B384(a6.n128_f64[0] * 0.5, a5.n128_f64[0] * 0.5);
        v11 = v21.f64[0] * 0.5;
        v12 = v8 * 0.5;
      }

      else
      {
        v10 = sub_10068B384(a6.n128_f64[0], a5.n128_f64[0]);
        v11 = v21.f64[0];
        v12 = v8;
      }

      v13 = sub_10068B384(v11, v12);
      a6 = v19;
      a5 = v20;
      if (v10 == v13)
      {
        v10 = sub_100688804(v20.n128_f64[0], v19.n128_f64[0]);
        v13 = sub_100688804(v8, v21.f64[0]);
        if (v10 == v13)
        {
          if (v19.n128_f64[0] >= 0.0)
          {
            v13 = v8;
          }

          else
          {
            v13 = v20.n128_f64[0];
          }

          if (v19.n128_f64[0] >= 0.0)
          {
            v14 = v20.n128_f64[0];
          }

          else
          {
            v14 = v8;
          }

          if (v10 >= 0.0)
          {
            v15 = v19.n128_f64[0];
          }

          else
          {
            v15 = v21.f64[0];
          }

          if (v10 >= 0.0)
          {
            v16 = v21.f64[0];
          }

          else
          {
            v16 = v19.n128_f64[0];
          }

          if (v19.n128_f64[0] == v21.f64[0])
          {
            v10 = v14;
          }

          else
          {
            v13 = v15;
            v10 = v16;
          }

          a5 = v20;
          a6 = v19;
          if (v10 == v13)
          {
            goto LABEL_28;
          }
        }

        else
        {
          a6 = v19;
          a5 = v20;
        }
      }

      if (v10 > v13)
      {
        a6.n128_u64[0] = *(a1 + 16);
        a5.n128_u64[0] = *(a1 + 24);
      }

LABEL_28:
      --v7;
    }

    while (v7);
  }

  return a6.n128_f64[0];
}

double sub_100688804(double a1, double a2)
{
  v2 = fabs(a2) == INFINITY;
  if (fabs(a1) == INFINITY && v2)
  {
    if (a1 <= 0.0)
    {
      a1 = -1.0;
    }

    else
    {
      a1 = 1.0;
    }

    if (a2 <= 0.0)
    {
      a2 = -1.0;
    }

    else
    {
      a2 = 1.0;
    }

    return atan2(a1, a2);
  }

  if (a2 != 0.0)
  {
    return atan2(a1, a2);
  }

  v4 = a1 < 0.0;
  if (a1 > 0.0)
  {
    return 1.57079633;
  }

  result = -1.57079633;
  if (!v4)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10068888C(uint64_t a1, _DWORD *a2, _DWORD *a3, void *__b, _DWORD *a5)
{
  v8 = *a2;
  v9 = v8;
  *a5 = v8;
  v103 = a3;
  if (v8 >= 1)
  {
    memset_pattern16(__b, &unk_1008AAD40, 8 * v8);
    v9 = v8;
    a3 = v103;
  }

  v10 = 0;
  v11 = 0;
  *a3 = v8;
  v12 = a1 - 8;
  v13 = 8 * v9;
  v14 = 1;
  v15 = v8;
  LODWORD(v16) = v8;
  do
  {
    if (v14)
    {
      if (v15 < 1)
      {
        v43 = 0;
        LODWORD(v16) = v15;
      }

      else
      {
        v16 = *a3;
        v17 = v16;
        v18 = v8 * (v15 - 1);
        v19 = (v12 + 8 * v15);
        v20 = v15;
        while (v16 >= 1)
        {
          v21 = 0;
          while (1)
          {
            v22 = v20;
            if (v21 + 1 != v20)
            {
              v22 = v21 + 1;
              if (*(v12 + 8 * (v20 + *a2 * v21)) != 0.0)
              {
                break;
              }
            }

            v21 = v22;
            if (v22 >= v16)
            {
              goto LABEL_35;
            }
          }

          v18 -= v8;
          --v19;
          v23 = __OFSUB__(v20--, 1);
          if ((v20 < 0) ^ v23 | (v20 == 0))
          {
            result = v10;
            if ((v14 & 1) == 0)
            {
              return result;
            }

            v14 = 0;
            v15 = *a3;
            goto LABEL_17;
          }
        }

LABEL_35:
        *(__b + v16 - 1) = v20;
        if (v20 != v16)
        {
          if (v16 >= 1)
          {
            v44 = (a1 + 8 * (v16 - 1) * v8);
            v45 = (a1 + 8 * v18);
            do
            {
              v46 = *v45;
              *v45++ = *v44;
              *v44++ = v46;
              --v16;
            }

            while (v16);
          }

          if (v8 >= 1)
          {
            v47 = (v12 + 8 * v17);
            v48 = v8;
            do
            {
              v49 = *v19;
              *v19 = *v47;
              *v47 = v49;
              v47 = (v47 + v13);
              v19 = (v19 + v13);
              --v48;
            }

            while (v48);
          }
        }

        LODWORD(v16) = 1;
        *a3 = 1;
        v43 = 1;
        result = 1;
        v50 = v15 == 1;
        v15 = 1;
        if (v50)
        {
          return result;
        }
      }
    }

    else
    {
      do
      {
LABEL_17:
        while (2)
        {
          v25 = v11;
          v26 = v11 < v16;
          if (v11 < v16)
          {
            v27 = 0;
            v28 = v8 * v11;
            v29 = v11;
            v30 = (v8 + 1) * v11;
LABEL_19:
            v31 = v29++;
            v32 = v27;
            v33 = v11;
            do
            {
              if (v32 && *(a1 + 8 * (v33 + *a2 * v31)) != 0.0)
              {
                ++v27;
                v28 += v8;
                ++v30;
                v26 = v29 < v16;
                if (v29 < v16)
                {
                  goto LABEL_19;
                }

                goto LABEL_33;
              }

              ++v33;
              --v32;
            }

            while (v33 < v16);
            *(__b + v11++) = v29;
            if (v31 == v25)
            {
              continue;
            }

            v34 = v25 * v8;
            if (v16 >= 1)
            {
              v35 = (a1 + 8 * v34);
              v36 = v16;
              v37 = (a1 + 8 * v28);
              do
              {
                v38 = *v37;
                *v37++ = *v35;
                *v35++ = v38;
                --v36;
              }

              while (v36);
            }

            v39 = (v8 - v25);
            if (v8 != v25)
            {
              v40 = v34 + v25;
              v41 = a1;
              do
              {
                v42 = *(v41 + 8 * v30);
                *(v41 + 8 * v30) = *(v41 + 8 * v40);
                *(v41 + 8 * v40) = v42;
                v41 += v13;
                --v39;
              }

              while (v39);
            }
          }

          break;
        }

LABEL_33:
        ;
      }

      while (v26);
      v43 = 0;
      v10 = (v11 + 1);
    }

    v51 = v14;
    v14 = v43;
  }

  while ((v51 & 1) != 0);
  v52 = v11 * v8;
  v53 = (v8 - v11 - 1) * v8;
  v54 = v11 + v11 * v8;
  v102 = v11 * v8;
  v96 = v53;
  v55 = *a3;
  if (v8 - v11 >= 1)
  {
    v56 = 0;
  }

  else
  {
    v56 = -1;
  }

  v101 = v56;
  v100 = a1 + 8 * v9;
  v57 = v53 < 1;
  v58 = v53 >= 0;
  if (v8 < 0)
  {
    v58 = v57;
  }

  v97 = v10;
  v98 = v58;
  v59 = v54 + 1;
  v95 = v54 + 1;
  do
  {
    if (v11 >= v55)
    {
      break;
    }

    v99 = 1;
    v60 = v11;
    v61 = v54;
    do
    {
      v62 = v61 - 1;
      v63 = v55 - v11;
      v105 = v61;
      if (v55 - v11 < 1)
      {
        v65 = v60 * v9;
        v66 = 0.0;
      }

      else
      {
        v64 = v60 * v9 + v11;
        if (v63 == 1)
        {
          v65 = v60 * v9;
          v66 = fabs(*(a1 + 8 * v64));
        }

        else
        {
          v67 = (a1 + 8 * v61);
          v68 = 0.0;
          v69 = 3.31216864e-170;
          do
          {
            v70 = *v67++;
            v71 = fabs(v70);
            v72 = v68 + v71 / v69 * (v71 / v69);
            v68 = v68 * (v69 / v71) * (v69 / v71) + 1.0;
            if (v71 <= v69)
            {
              v68 = v72;
            }

            else
            {
              v69 = v71;
            }

            ++v62;
          }

          while (v62 <= v64);
          v65 = v60 * v9;
          v66 = v69 * sqrt(v68);
        }
      }

      v104 = v60 + v102;
      v73 = sub_10068B530(v63, a1, v60 + v102 + 1, v8);
      v55 = *v103;
      if (*v103 <= 1)
      {
        v75 = 0;
        v9 = v8;
        v74 = v65;
      }

      else
      {
        v74 = v65;
        v75 = fabs(*(a1 + 8 * v65 + 8)) > fabs(*(a1 + 8 * v65));
        v9 = v8;
      }

      v76 = v101;
      if (v8 - v11 >= 2)
      {
        v76 = fabs(*(v100 + 8 * v104)) > fabs(*(a1 + 8 * v104));
      }

      if (v66 != 0.0 && v73 != 0.0)
      {
        v77 = fabs(*(a1 + 8 * (v75 + *a2 * v60)));
        v78 = fabs(*(a1 + 8 * v60 + 8 * (v76 + v11) * *a2));
        v79 = v73 * 0.5;
        v80 = 1.0;
        if (v66 >= v73 * 0.5)
        {
          v82 = v73;
          v81 = v66;
        }

        else
        {
          v81 = v66;
          v82 = v73;
          do
          {
            v83 = fmin(v82, fmin(v79, v78));
            if (fmax(v80, fmax(v81, v77)) >= 4.98960077e291 || v83 <= 2.00416836e-292)
            {
              break;
            }

            v80 = v80 + v80;
            v81 = v81 + v81;
            v77 = v77 + v77;
            v82 = v82 * 0.5;
            v78 = v78 * 0.5;
            v79 = v79 * 0.5;
          }

          while (v81 < v79);
        }

        for (i = v81 * 0.5; ; i = i * 0.5)
        {
          v86 = fmax(v82, v78);
          v87 = i >= v82 && v86 < 4.98960077e291;
          if (!v87 || fmin(fmin(v80, v81), fmin(i, v77)) <= 2.00416836e-292)
          {
            break;
          }

          v80 = v80 * 0.5;
          v81 = v81 * 0.5;
          v77 = v77 * 0.5;
          v82 = v82 + v82;
          v78 = v78 + v78;
        }

        if (v82 + v81 < (v66 + v73) * 0.95)
        {
          if (v80 >= 1.0 || ((v88 = *(__b + v60), v88 < 1.0) ? (v89 = v80 * v88 > 1.00208418e-292) : (v89 = 1), v89))
          {
            v90 = *(__b + v60);
            if (v80 <= 1.0 || v90 <= 1.0 || v90 < 9.97920155e291 / v80)
            {
              *(__b + v60) = v80 * v90;
              if (v98)
              {
                v91 = (a1 - 8 + 8 * v59);
                v92 = v8 + v59;
                do
                {
                  *v91 = 1.0 / v80 * *v91;
                  v93 = v92 > v104 + v96;
                  if (v8 >= 0)
                  {
                    v93 = v92 <= v104 + v96 + 1;
                  }

                  v91 = (v91 + v13);
                  v92 += v8;
                }

                while (v93);
              }

              v94 = v52;
              if (v55 >= 1)
              {
                do
                {
                  *(a1 + 8 * v94) = v80 * *(a1 + 8 * v94);
                  ++v94;
                }

                while (v94 < v74 + v55);
              }

              v99 = 0;
            }
          }
        }
      }

      ++v60;
      v61 = v105 + v8;
      v52 += v8;
      ++v59;
    }

    while (v60 < v55);
    v10 = v97;
    v52 = v11 * v8;
    v59 = v95;
    v54 = v11 + v11 * v8;
  }

  while ((v99 & 1) == 0);
  return v10;
}

uint64_t sub_100688F80(uint64_t a1, _OWORD *a2)
{
  v3 = 0;
  *a2 = 0u;
  a2[1] = 0u;
  while (*(a1 + 8 * v3) == 0.0)
  {
    if (++v3 == 3)
    {
      return 0;
    }
  }

  v4 = v3 + 1;
  if ((v3 + 1) > 3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 2 - v3;
  while (*(a1 + 16 + 8 * v6) == 0.0)
  {
    v8 = v6 + 3;
    --v6;
    v5 -= 16;
    --v7;
    if (v8 <= v4)
    {
      goto LABEL_29;
    }
  }

  v3 = v6 + 3;
  if (v4 < v6 + 3)
  {
    memset(v17, 0, sizeof(v17));
    if (v7 < 1)
    {
      goto LABEL_32;
    }

    do
    {
      v9 = 0;
      v10 = v7;
      v11 = *(a1 - 8 + 8 * v4);
      do
      {
        v12 = *(a1 + 8 * (v9 + v4)) / v11;
        v17[v9] = v12;
      }

      while (fabs(v12) != INFINITY && ++v9 < v7);
      v7 -= v9 < v7;
      if (v9 >= v10)
      {
        v14 = 1;
      }

      else
      {
        LODWORD(v4) = v4 + 1;
        v14 = v7 <= 0;
      }
    }

    while (!v14);
    v16 = v9;
    if (v7 <= 0)
    {
LABEL_32:
      if (v3 <= 2)
      {
        return -v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      memset(v19, 0, sizeof(v19));
      v18[0] = v7;
      v18[1] = v7;
      bzero(v19, 8 * (v7 * v7));
      if (v7 != 1)
      {
        *v19 = -v17[0];
        *(&v19[0] + 1) = 0x3FF0000000000000;
      }

      *(v19 + ((v7 - 1) * v7)) = -v17[v7 - 1];
      if (v3 <= 2)
      {
        bzero(a2, -v5);
      }

      memset(__src, 0, sizeof(__src));
      if (v7 == 1)
      {
        __src[0] = *&v19[0];
      }

      else
      {
        sub_10068D534(v19, v18, __src, &v16);
      }

      memcpy(a2 - ((v5 + 48) & 0xFFFFFFFF0) + 48, __src, 16 * v7);
      return v10 - (v9 < v10) - v6;
    }
  }

LABEL_29:
  if (v3 >= 3)
  {
    return 0;
  }

  return (3 - v3);
}

double sub_1006891CC(double **a1)
{
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v1 = *(a1 + 7);
  v44 = v1;
  if (!v1)
  {
    v5 = &qword_100B54DC0;
    goto LABEL_10;
  }

  if (v1 < 1)
  {
    goto LABEL_6;
  }

  v3 = *a1;
  v4 = v1;
  do
  {
    ++v3;
    --v4;
  }

  while (v4);
  v45 = v1;
  if (v1 <= 4)
  {
LABEL_6:
    if (v1 <= 1)
    {
      if (v1 == 1)
      {
        v5 = *a1;
LABEL_10:
        v6 = *v5;
        goto LABEL_11;
      }

      goto LABEL_26;
    }

    if (v1 == 2)
    {
      v25 = **a1;
      v26 = (*a1)[1];
      v27 = (v25 < 0.0) ^ (v26 < 0.0);
      goto LABEL_66;
    }

    if (v1 != 3)
    {
LABEL_26:
      v18 = *a1;
      v19 = **a1;
      v20 = (*a1)[1];
      v21 = (*a1)[2];
      if (v19 >= v20)
      {
        if (v19 >= v21)
        {
          v23 = 0;
          if (v20 >= v21)
          {
            v22 = 2;
            v45 = 2;
            v24 = 1;
          }

          else
          {
            v22 = 1;
            v45 = 1;
            v24 = 2;
          }

          v46 = v24;
          v44 = 0;
        }

        else
        {
          v24 = 0;
          v22 = 1;
          v45 = 1;
          v46 = 0;
          v23 = 2;
          v44 = 2;
        }
      }

      else if (v20 >= v21)
      {
        if (v19 >= v21)
        {
          v24 = 0;
          v22 = 2;
          v23 = 1;
          v44 = 1;
          v45 = 2;
        }

        else
        {
          v22 = 0;
          v23 = 1;
          v44 = 1;
          v45 = 0;
          v24 = 2;
        }
      }

      else
      {
        v22 = 0;
        v23 = 2;
        v44 = 2;
        v45 = 0;
        v24 = 1;
      }

      v25 = v18[v22];
      v26 = v18[3];
      if (v25 < v26)
      {
        v39 = v18[v23];
        v25 = v18[v24];
        if (v26 >= v39)
        {
          v43 = fabs(v25) == INFINITY;
          if (v39 < 0.0 != v25 < 0.0 || v43)
          {
            v37 = v39 + v25;
            goto LABEL_71;
          }

          v42 = v39 - v25;
LABEL_73:
          v6 = v25 + v42 * 0.5;
          goto LABEL_11;
        }

        v40 = fabs(v25) == INFINITY;
        if (v26 < 0.0 != v25 < 0.0 || v40)
        {
          v37 = v26 + v25;
          goto LABEL_71;
        }

LABEL_72:
        v42 = v26 - v25;
        goto LABEL_73;
      }

      v26 = v18[v24];
      v27 = (v25 < 0.0) ^ (v26 < 0.0);
LABEL_66:
      if (fabs(v25) == INFINITY || v27 != 0)
      {
        v37 = v25 + v26;
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    v8 = *a1;
    v9 = **a1;
    v10 = (*a1)[1];
    v11 = (*a1)[2];
    if (v9 >= v10)
    {
      if (v9 < v11)
      {
        goto LABEL_37;
      }

      if (v10 < v11)
      {
LABEL_52:
        v33 = 2;
LABEL_54:
        v46 = v33;
        goto LABEL_55;
      }
    }

    else if (v10 >= v11)
    {
      if (v9 < v11)
      {
        goto LABEL_52;
      }

LABEL_37:
      v33 = 0;
      v46 = 0;
LABEL_55:
      v6 = v8[v33];
      goto LABEL_11;
    }

    v33 = 1;
    goto LABEL_54;
  }

  v12 = v1 >> 1;
  DWORD2(v48) = 1;
  HIDWORD(v48) = v1;
  if (v1)
  {
    sub_100689648(&v47, v1);
    v28 = *(a1 + 7);
    v45 = v28;
    if (v28 < 1)
    {
      LODWORD(v28) = 0;
    }

    else
    {
      v29 = *a1;
      v30 = v47;
      v31 = v28;
      do
      {
        v32 = *v29++;
        *v30++ = v32;
        --v31;
      }

      while (v31);
    }

    v46 = v28;
    sub_100688248(&v47, v12 + 1, v1, &v45, &v46);
    v6 = v38;
    goto LABEL_11;
  }

  sub_100689648(&v47, v1);
  v13 = *(a1 + 7);
  v45 = v13;
  if (v13 < 1)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v14 = *a1;
    v15 = v47;
    v16 = v13;
    do
    {
      v17 = *v14++;
      *v15++ = v17;
      --v16;
    }

    while (v16);
  }

  v46 = v13;
  sub_100688248(&v47, v12 + 1, v1, &v45, &v46);
  v6 = v34;
  if (v12 < v45)
  {
    sub_100688248(&v47, v1 >> 1, v46 - 1, &v45, &v44);
    if (fabs(v6) != INFINITY && v6 < 0.0 == v35 < 0.0)
    {
      v6 = v6 + (v35 - v6) * 0.5;
      goto LABEL_11;
    }

    v37 = v6 + v35;
LABEL_71:
    v6 = v37 * 0.5;
  }

LABEL_11:
  if (v48 == 1 && v47)
  {
    operator delete[]();
  }

  return v6;
}

void sub_100689610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    if (a11)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_100689648(uint64_t a1, int a2)
{
  v4 = *(a1 + 12);
  if (v4 < a2)
  {
    if (v4 <= 16)
    {
      v5 = 16;
    }

    else
    {
      v5 = *(a1 + 12);
    }

    if (a2 >= 17)
    {
      do
      {
        if (v5 <= 0x3FFFFFFF)
        {
          v5 *= 2;
        }

        else
        {
          v5 = 0x7FFFFFFF;
        }
      }

      while (v5 < a2);
    }

    sub_1006896C8(a1, v5);
  }

  sub_100689798(a1, a2);
}

uint64_t sub_1006896C8(uint64_t result, int a2)
{
  if (*(result + 12) < a2)
  {
    operator new[]();
  }

  return result;
}

void sub_100689798(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
  }

  else
  {
    sub_1006896C8(a1, a2);
    *(a1 + 8) = a2;
    if (*a1)
    {
      v6 = a2 >= v5 ? v5 : a2;
      if (v6 >= 1)
      {
        v7 = (*a1 + 8 * (a2 - v6));
        if (a2 <= a2 - v6 + 1)
        {
          v8 = a2 - v6 + 1;
        }

        else
        {
          v8 = a2;
        }

        bzero(v7, 8 * (v6 + ~a2 + v8) + 8);
      }
    }
  }
}

void sub_100689844(__int128 *a1, uint64_t a2)
{
  v2 = 0;
  memset(v137, 0, sizeof(v137));
  v135 = 0u;
  memset(v136, 0, sizeof(v136));
  memset(v134, 0, sizeof(v134));
  memset(v132, 0, sizeof(v132));
  memset(v131, 0, sizeof(v131));
  do
  {
    v3 = &v134[v2];
    v4 = byte_1008AADE0[v2];
    v3[18] = 1.0;
    v3[12] = v4;
    ++v2;
  }

  while (v2 != 6);
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = 0;
    v8 = v6;
    v9 = &v134[6 * (v5 ^ 1)];
    v10 = &v137[-48 * v5];
    do
    {
      v9[v7] = *&v10[8 * v7] * byte_1008AADE0[v7];
      ++v7;
    }

    while (v7 != 6);
    v6 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
  v11 = 0;
  memset(v133, 0, sizeof(v133));
  memset(v130, 0, sizeof(v130));
  v12 = a1[3];
  v139[1] = a1[2];
  v139[2] = v12;
  v13 = a1[5];
  v139[3] = a1[4];
  v139[4] = v13;
  v14 = a1[1];
  v15 = v134;
  v138 = *a1;
  v139[0] = v14;
  v129 = 0;
  do
  {
    v16 = 0;
    v17 = v11 + 1;
    *(&v129 + v11) = v11 + 1;
    *(v133 + v11) = 0;
    *(v130 + v11) = 0;
    v18 = 0.0;
    v19 = 3.31216864e-170;
    do
    {
      v20 = fabs(v15[v16]);
      v21 = v18 + v20 / v19 * (v20 / v19);
      v18 = v18 * (v19 / v20) * (v19 / v20) + 1.0;
      if (v20 <= v19)
      {
        v18 = v21;
      }

      else
      {
        v19 = v20;
      }

      ++v16;
    }

    while (v16 != 6);
    v22 = v19 * sqrt(v18);
    *(v132 + v11) = v22;
    *(v131 + v11) = v22;
    v15 += 6;
    ++v11;
  }

  while (v17 != 4);
  v23 = 0;
  v24 = 0;
  v25 = &v134[1];
  v26 = v136;
  v27 = -3;
  v127 = 8;
  v122 = 7;
  v121 = -7;
  v126 = 1;
  v124 = &v135 + 1;
  v125 = 6;
  v28 = 5;
  v123 = 6;
  do
  {
    v120 = v26;
    if (v23 <= 2)
    {
      v29 = 0;
      v30 = v132 + v23;
      v31 = fabs(*v30);
      v32 = 1;
      do
      {
        v33 = fabs(v30[v32]);
        if (v33 > v31)
        {
          v31 = v33;
          v29 = v32;
        }

        ++v32;
      }

      while (v27 + v32 != 1);
      if (v29)
      {
        v34 = 0;
        v35 = v29 + v23;
        v36 = &v134[6 * v23];
        v37 = &v134[6 * v35];
        do
        {
          v38 = v37[v34];
          v37[v34] = v36[v34];
          v36[v34++] = v38;
        }

        while (v34 != 6);
        v39 = *(&v129 + v35);
        *(&v129 + v35) = *(&v129 + v23);
        *(&v129 + v23) = v39;
        *(v132 + v35) = *(v132 + v23);
        *(v131 + v35) = *(v131 + v23);
      }
    }

    v40 = 7 * v23;
    v41 = v134[7 * v23];
    *(v133 + v23) = 0;
    v128 = 5 - v23;
    v42 = sub_10068B434(5 - v23, v134, 7 * v23 + 2);
    if (v42 == 0.0)
    {
      v134[7 * v23] = v41;
      if (v23 == 3)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v43 = v134[7 * v23];
      v44 = sub_10068B384(v43, v42);
      if (v43 >= 0.0)
      {
        v45 = -v44;
      }

      else
      {
        v45 = v44;
      }

      if (fabs(v44) >= 1.00208418e-292)
      {
        v55 = 0;
        v54 = (v45 - v43) / v45;
        *(v133 + v23) = v54;
        do
        {
          v25[v55] = 1.0 / (v43 - v45) * v25[v55];
          ++v55;
        }

        while (v28 != v55);
      }

      else
      {
        v46 = 0;
        v47 = 1;
        do
        {
          v48 = 0;
          v49 = v47;
          do
          {
            v25[v48] = v25[v48] * 9.97920155e291;
            ++v48;
          }

          while (v28 != v48);
          v45 = v45 * 9.97920155e291;
          v41 = v41 * 9.97920155e291;
          ++v47;
        }

        while (fabs(v45) < 1.00208418e-292 && v46++ < 0x13);
        v51 = sub_10068B434(v128, v134, v40 + 2);
        v52 = sub_10068B384(v41, v51);
        v53 = 0;
        if (v41 >= 0.0)
        {
          v45 = -v52;
        }

        else
        {
          v45 = v52;
        }

        v54 = (v45 - v41) / v45;
        *(v133 + v23) = v54;
        do
        {
          v25[v53] = 1.0 / (v41 - v45) * v25[v53];
          ++v53;
        }

        while (v28 != v53);
        do
        {
          v45 = v45 * 1.00208418e-292;
          --v49;
        }

        while (v49);
      }

      v134[7 * v23] = v45;
      if (v23 == 3)
      {
LABEL_49:
        v56 = 4;
        goto LABEL_71;
      }

      v134[7 * v23] = 1.0;
      if (v54 == 0.0)
      {
        goto LABEL_60;
      }

      v57 = 6 - v23;
      v58 = v124;
      while (*v58 == 0.0)
      {
        --v58;
        v59 = __OFSUB__(v57--, 1);
        if ((v57 < 0) ^ v59 | (v57 == 0))
        {
          v57 = 0;
          break;
        }
      }

      v60 = 2 - v23;
      if (v23 <= 2)
      {
        do
        {
          v69 = v123 + 6 * v60;
          while (v69 < v40 + 6 + 6 * v60 + v57)
          {
            v70 = v134[v69++];
            if (v70 != 0.0)
            {
              goto LABEL_57;
            }
          }

          v61 = v60 - 1;
          v71 = v60-- <= 0;
        }

        while (!v71);
      }

      else
      {
LABEL_57:
        v61 = v60;
      }

      if (v57 < 1 || v61 == -1)
      {
LABEL_60:
        v41 = v45;
      }

      else
      {
        v117 = (v61 + 1);
        v119 = v61;
        bzero(v130, 8 * v117);
        v72 = v40 + 7 + 6 * v119;
        if (v40 + 7 <= v72)
        {
          v73 = v120;
          v74 = v122;
          do
          {
            v75 = 0.0;
            v76 = v73;
            v77 = 0x700000000 * v23;
            v78 = v74;
            do
            {
              v79 = *v76++;
              v75 = v75 + v79 * *(v134 + (v77 >> 29));
              ++v78;
              v77 += &_mh_execute_header;
            }

            while (v78 < v74 + v57);
            v80 = (2 * (((v74 - v40 - 7) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFF8;
            *(v130 + v80) = v75 + *(v130 + v80);
            v74 += 6;
            v73 += 6;
          }

          while (v74 <= v72);
        }

        if ((v119 & 0x80000000) == 0)
        {
          v81 = 0;
          v82 = v122;
          v83 = v121 + v40;
          v84 = v24;
          do
          {
            v85 = *(v130 + v81);
            if (v85 != 0.0)
            {
              v86 = (v83 + v82) << 32;
              v87 = v82 - 1;
              v88 = v85 * -v54;
              do
              {
                v134[v87] = v134[v87] + *(v134 + (v86 >> 29)) * v88;
                v86 += &_mh_execute_header;
                ++v87;
              }

              while (v87 < v84 + (v57 + 6));
            }

            v84 += 6;
            ++v81;
            v82 += 6;
            v83 -= 6;
          }

          while (v81 != v117);
        }

        v41 = v45;
      }
    }

    v56 = v23 + 1;
    v134[7 * v23] = v41;
    if (v23 <= 2)
    {
      v118 = v24;
      v62 = v127 + v23;
      v63 = v126;
      v64 = v23 + v125;
      do
      {
        v65 = *(v132 + v63);
        if (v65 != 0.0)
        {
          v66 = fabs(v134[v64]);
          v67 = 1.0 - v66 / v65 * (v66 / v65);
          if (v67 < 0.0)
          {
            v67 = 0.0;
          }

          if (v65 / *(v131 + v63) * (v65 / *(v131 + v63)) * v67 <= 0.0000000149011612)
          {
            v68 = sub_10068B434(v128, v134, v62);
            *(v132 + v63) = v68;
            *(v131 + v63) = v68;
          }

          else
          {
            *(v132 + v63) = v65 * sqrt(v67);
          }
        }

        v62 += 6;
        v64 += 6;
        ++v63;
      }

      while (v63 != 4);
      v24 = v118;
    }

LABEL_71:
    --v28;
    v122 += 7;
    v123 += 7;
    v24 += 7;
    ++v27;
    v25 += 7;
    v26 = v120 + 56;
    v121 -= 7;
    v127 += 6;
    v124 += 6;
    v125 += 6;
    ++v126;
    v23 = v56;
  }

  while (v56 != 4);
  v89 = 0;
  LODWORD(v90) = 0;
  v91 = v139;
  v92 = &v134[1];
  do
  {
    if (v134[7 * v89] == 0.0)
    {
      v90 = v90;
    }

    else
    {
      v90 = (v90 + 1);
    }

    v93 = (a2 + 16 * v89);
    *v93 = 0;
    v93[1] = 0;
    v94 = *(v133 + v89);
    if (v94 != 0.0)
    {
      v95 = 0;
      v96 = v139[v89 - 1];
      do
      {
        v96 = vmlaq_n_f64(v96, v91[v95], v92[v95]);
        ++v95;
      }

      while (v89 + v95 != 5);
      v97 = vmulq_n_f64(v96, v94);
      if (v97.f64[0] != 0.0 || v97.f64[1] != 0.0)
      {
        v98 = 0;
        v139[v89 - 1] = vsubq_f64(v139[v89 - 1], v97);
        do
        {
          v91[v98] = vmlsq_lane_f64(v91[v98], v97, v92[v98], 0);
          ++v98;
        }

        while (v89 + v98 != 5);
      }
    }

    ++v89;
    ++v91;
    v92 += 7;
  }

  while (v89 != 4);
  if (v90)
  {
    v99 = a2 - 16;
    v100 = &v129;
    v101 = &v138;
    v102 = v90;
    do
    {
      v104 = *v100++;
      v103 = v104;
      v105 = *v101++;
      *(v99 + 16 * v103) = v105;
      --v102;
    }

    while (v102);
    v106 = &v134[6 * v90 - 6];
    do
    {
      v107 = a2 + 16 * *(&v129 + v90 - 1);
      v108 = v134[(v90 + 6 * (v90 - 1) - 1)];
      v109 = *(v107 - 16);
      v110 = *(v107 - 8);
      v111 = v109 == 0.0;
      v112 = v109 / v108;
      v113 = v110 / v108;
      if (v111)
      {
        v114 = 0.0;
      }

      else
      {
        v114 = v112;
      }

      if (v110 == 0.0)
      {
        v113 = 0.0;
      }

      else
      {
        v112 = v114;
      }

      *(v107 - 16) = v112;
      *(v107 - 8) = v113;
      if (v90 < 2)
      {
        break;
      }

      v115 = 0;
      do
      {
        *(v99 + 16 * *(&v129 + v115)) = vmlsq_lane_f64(*(v99 + 16 * *(&v129 + v115)), *(v107 - 16), v106[v115], 0);
        v71 = v115++ < v90 - 2;
      }

      while (v71);
      v106 -= 6;
      v71 = v90-- < 2;
    }

    while (!v71);
  }
}

uint64_t sub_10068A18C(__int128 *a1, uint64_t a2)
{
  v2 = 0;
  memset(v136, 0, sizeof(v136));
  v134 = 0;
  v135[0] = 0;
  v135[1] = 0;
  v130 = 1;
  __asm { FMOV            V2.2D, #1.0 }

  v139 = xmmword_1008AAD50;
  v7 = a1[1];
  v143 = *a1;
  v144[0] = v7;
  v131 = 770;
  v137 = 0u;
  v132 = 0u;
  v142 = 0x3FF0000000000000;
  v140[1] = xmmword_1008AAD60;
  v141 = _Q2;
  v140[0] = xmmword_1008AAD70;
  v144[1] = a1[2];
  v138 = 0;
  v8 = &v139;
  v133 = 0;
  do
  {
    v9 = 0;
    v10 = 0.0;
    v11 = 3.31216864e-170;
    do
    {
      v12 = *(v8 + v9);
      v13 = v10 + v12 / v11 * (v12 / v11);
      v10 = v10 * (v11 / v12) * (v11 / v12) + 1.0;
      if (v11 >= v12)
      {
        v10 = v13;
      }

      else
      {
        v11 = *(v8 + v9);
      }

      v9 += 8;
    }

    while (v9 != 24);
    v14 = v11 * sqrt(v10);
    *&v136[v2] = v14;
    *&v135[v2++ - 1] = v14;
    v8 = (v8 + 24);
  }

  while (v2 != 3);
  v15 = 0;
  v16 = 0;
  v125 = &v141;
  v126 = v140;
  v124 = v140 + 1;
  v17 = v135;
  v127 = 3;
  v128 = 1;
  v18 = 2;
  v19 = v136;
  while (1)
  {
    if (v16 == 2)
    {
      v138 = 0;
      goto LABEL_92;
    }

    v20 = 3 * v16;
    v21 = v16 ^ 3;
    if ((v16 ^ 3) >= 2)
    {
      v22 = 0;
      v23 = fabs(*&v136[v16]);
      v24 = v18;
      v25 = 1;
      do
      {
        v26 = fabs(*&v19[v25]);
        if (v26 > v23)
        {
          v23 = v26;
          v22 = v25;
        }

        ++v25;
        --v24;
      }

      while (v24);
      if (v22)
      {
        v27 = v22 + v16;
        v28 = *(&v140[-1] + 3 * v27);
        *(&v140[-1] + 3 * v27) = *(&v140[-1] + v20);
        *(&v140[-1] + v20) = v28;
        v29 = &v140[-1] + 24 * v27;
        v30 = *(v29 + 1);
        *(v29 + 1) = *(&v139 + v20 + 1);
        *(&v139 + v20 + 1) = v30;
        v31 = *(v29 + 2);
        *(v29 + 2) = *(v140 + v20);
        *(v140 + v20) = v31;
        LOBYTE(v29) = *(&v130 + v27);
        *(&v130 + v27) = *(&v130 + v16);
        *(&v130 + v16) = v29;
        v136[v27] = v136[v16];
        v135[v27 - 1] = v135[v16 - 1];
      }
    }

    v122 = 3 * v16;
    v32 = 4 * v16;
    v33 = *(&v140[-1] + v32);
    v34 = v32 | 2;
    *(&v137 + v16) = 0;
    v129 = 2 - v16;
    v35 = sub_10068B4AC(2 - v16, &v139, v32 | 2);
    if (v35 == 0.0)
    {
      v39 = 4 * v16;
      goto LABEL_70;
    }

    v121 = v16;
    v36 = sub_10068B384(*&v140[v32 / 2 - 1], v35);
    v37 = *&v140[v32 / 2 - 1];
    v38 = v37 >= 0.0 ? -v36 : v36;
    v39 = 4 * v16;
    if (fabs(v36) >= 1.00208418e-292)
    {
      v48 = (v38 - v37) / v38;
      *(&v137 + v16) = v48;
      v51 = (v122 + 3);
      v49 = v16;
      if (v34 <= v51)
      {
        v52 = v128;
        do
        {
          *(&v140[-1] + v52) = 1.0 / (v37 - v38) * *(&v140[-1] + v52);
          ++v52;
        }

        while (v52 < v51);
      }
    }

    else
    {
      v119 = v15;
      v40 = 0;
      v41 = (v122 + 3);
      v42 = 1;
      do
      {
        v43 = v42;
        if (v34 <= v41)
        {
          v44 = v128;
          do
          {
            *(&v140[-1] + v44) = *(&v140[-1] + v44) * 9.97920155e291;
            ++v44;
          }

          while (v44 < v41);
        }

        v38 = v38 * 9.97920155e291;
        _CF = fabs(v38) >= 1.00208418e-292 || v40++ >= 0x13;
        v33 = v33 * 9.97920155e291;
        v42 = v43 + 1;
      }

      while (!_CF);
      v46 = sub_10068B4AC(v129, &v139, v34);
      v47 = sub_10068B384(v33, v46);
      if (v33 >= 0.0)
      {
        v38 = -v47;
      }

      else
      {
        v38 = v47;
      }

      v48 = (v38 - v33) / v38;
      v49 = v16;
      *(&v137 + v16) = v48;
      if (v34 <= v41)
      {
        v50 = v128;
        do
        {
          *(&v140[-1] + v50) = 1.0 / (v33 - v38) * *(&v140[-1] + v50);
          ++v50;
        }

        while (v50 < v41);
      }

      v39 = 4 * v16;
      do
      {
        v38 = v38 * 1.00208418e-292;
        --v43;
      }

      while (v43);
      v15 = v119;
    }

    *(&v140[-1] + v39) = 0x3FF0000000000000;
    if (v48 != 0.0)
    {
      break;
    }

LABEL_69:
    v33 = v38;
LABEL_70:
    *(&v140[-1] + v39) = v33;
    if (v16 <= 1)
    {
      v77 = v15;
      v78 = 0;
      v79 = v127;
      do
      {
        v80 = &v19[v78];
        v81 = v80[1];
        if (v81 != 0.0)
        {
          v82 = fabs(*(&v140[-1] + v79));
          v83 = 1.0 - v82 / v81 * (v82 / v81);
          if (v83 < 0.0)
          {
            v83 = 0.0;
          }

          if (v81 / *&v17[v78] * (v81 / *&v17[v78]) * v83 <= 0.0000000149011612)
          {
            v84 = sub_10068B4AC(v129, &v139, v79 + 2);
            v80[1] = v84;
            *&v17[v78] = v84;
          }

          else
          {
            v80[1] = v81 * sqrt(v83);
          }
        }

        v79 += 3;
        ++v78;
      }

      while (v18 != v78);
      ++v19;
      --v18;
      v125 = (v125 + 8);
      v126 = (v126 + 24);
      v124 += 4;
      v15 = v77 + 4;
      v127 += 4;
      v128 += 4;
      ++v17;
      v85 = v16++ > 1;
      if (!v85)
      {
        continue;
      }
    }

    goto LABEL_92;
  }

  if (v16 != 3)
  {
    if (v21 >= 1)
    {
      v53 = 1;
    }

    else
    {
      v53 = v16 ^ 3;
    }

    v54 = v53 - 1;
    v55 = v126;
    while (*v55 == 0.0)
    {
      --v55;
      _VF = __OFSUB__(v21--, 1);
      if ((v21 < 0) ^ _VF | (v21 == 0))
      {
        v21 = v54;
        break;
      }
    }

    v56 = 1 - v16;
    if (v16 <= 1)
    {
      v86 = v125;
      do
      {
        v87 = ((v39 | 3) + 3 * v56);
        v88 = v87 + v21;
        v89 = v86;
        while (v87 < v88)
        {
          v90 = *v89++;
          ++v87;
          if (v90 != 0.0)
          {
            goto LABEL_55;
          }
        }

        v57 = v56 - 1;
        v86 -= 3;
        v85 = v56-- <= 0;
      }

      while (!v85);
    }

    else
    {
LABEL_55:
      v57 = v56;
    }

    if (v21 >= 1 && v57 != -1)
    {
      v123 = v39;
      v120 = v49;
      v58 = v39 + 4;
      bzero(&v132, 8 * (v57 + 1));
      v39 = v123;
      v59 = v58 + 3 * v57;
      v60 = 4 * v120;
      if (v58 <= v59)
      {
        v61 = v60 + 4;
        v62 = v124;
        do
        {
          v63 = 0.0;
          v64 = v15;
          v65 = v62;
          v66 = v61;
          do
          {
            v67 = *v65++;
            v63 = v63 + v67 * *(&v140[-1] + v64);
            ++v66;
            ++v64;
          }

          while (v66 < v61 + v21);
          v68 = (4 * (((v61 - v123 - 4) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFF8;
          *(&v132 + v68) = v63 + *(&v132 + v68);
          v61 += 3;
          v62 += 3;
        }

        while (v61 <= v59);
      }

      v16 = v121;
      if ((v57 & 0x80000000) == 0)
      {
        v69 = 0;
        v70 = v124;
        v71 = v127;
        do
        {
          v72 = *(&v132 + v69);
          if (v72 != 0.0)
          {
            v73 = v72 * -v48;
            v74 = v15;
            v75 = v70;
            v76 = v71;
            do
            {
              *v75 = *v75 + *(&v140[-1] + v74) * v73;
              ++v75;
              ++v76;
              ++v74;
            }

            while (v76 < v60 + (v21 + 3));
          }

          v60 += 3;
          ++v69;
          v71 += 3;
          v70 += 3;
        }

        while (v69 != v57 + 1);
      }
    }

    goto LABEL_69;
  }

  *(&v140[-1] + v39) = v38;
LABEL_92:
  v91 = 0;
  LODWORD(v92) = 0;
  v93 = v144;
  v94 = &v139 + 8;
  result = a2;
  do
  {
    if (*&v140[2 * v91 - 1] == 0.0)
    {
      v92 = v92;
    }

    else
    {
      v92 = (v92 + 1);
    }

    v96 = (a2 + 16 * v91);
    *v96 = 0;
    v96[1] = 0;
    v97 = *(&v137 + v91);
    if (v97 != 0.0)
    {
      v98 = v144[v91 - 1];
      if (v91 <= 1)
      {
        v99 = 0;
        v98 = v144[v91 - 1];
        do
        {
          v98 = vmlaq_n_f64(v98, v93[v99], *&v94[8 * v99]);
          ++v99;
        }

        while (v91 + v99 != 2);
      }

      v100 = vmulq_n_f64(v98, v97);
      if (v100.f64[0] != 0.0 || v100.f64[1] != 0.0)
      {
        v144[v91 - 1] = vsubq_f64(v144[v91 - 1], v100);
        if (v91 <= 1)
        {
          v101 = 0;
          do
          {
            v93[v101] = vmlsq_lane_f64(v93[v101], v100, *&v94[8 * v101], 0);
            ++v101;
          }

          while (v91 + v101 != 2);
        }
      }
    }

    ++v91;
    ++v93;
    v94 += 32;
  }

  while (v91 != 3);
  if (v92)
  {
    v102 = a2 - 16;
    v103 = &v130;
    v104 = &v143;
    v105 = v92;
    do
    {
      v107 = *v103++;
      v106 = v107;
      v108 = *v104++;
      *(v102 + 16 * v106) = v108;
      --v105;
    }

    while (v105);
    v109 = &v140[-2] + 24 * v92 - 8;
    do
    {
      v110 = a2 + 16 * *(&v130 + v92 - 1);
      v111 = *(&v140[-1] + (v92 + 3 * (v92 - 1) - 1));
      v112 = *(v110 - 16);
      v113 = *(v110 - 8);
      _ZF = v112 == 0.0;
      v114 = v112 / v111;
      v115 = v113 / v111;
      if (_ZF)
      {
        v116 = 0.0;
      }

      else
      {
        v116 = v114;
      }

      if (v113 == 0.0)
      {
        v115 = 0.0;
      }

      else
      {
        v114 = v116;
      }

      *(v110 - 16) = v114;
      *(v110 - 8) = v115;
      if (v92 < 2)
      {
        break;
      }

      v117 = 0;
      do
      {
        *(v102 + 16 * *(&v130 + v117)) = vmlsq_lane_f64(*(v102 + 16 * *(&v130 + v117)), *(v110 - 16), *&v109[8 * v117], 0);
        v85 = v117++ < v92 - 2;
      }

      while (v85);
      v109 -= 24;
      v85 = v92-- <= 1;
    }

    while (!v85);
  }

  return result;
}

void *sub_10068AA78(void *a1, void *a2)
{
  v2 = 0;
  v141 = 0u;
  v142 = 0u;
  memset(v140, 0, sizeof(v140));
  memset(v139, 0, sizeof(v139));
  v137 = 0u;
  v138 = 0u;
  v136 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v147 = _Q0;
  v148 = _Q0;
  v145[2] = xmmword_1008AAD80;
  v146 = xmmword_1008AAD90;
  v145[0] = xmmword_1008AADA0;
  v145[1] = xmmword_1008AADB0;
  v7 = &v143;
  v143 = xmmword_1008AADC0;
  v144 = xmmword_1008AADD0;
  do
  {
    v8 = 0;
    v9 = v2 + 1;
    *(&v136 + v2) = v2 + 1;
    *(&v141 + v2) = 0;
    *(&v137 + v2) = 0;
    v10 = 0.0;
    v11 = 3.31216864e-170;
    do
    {
      v12 = *(v7 + v8);
      v13 = v10 + v12 / v11 * (v12 / v11);
      v10 = v10 * (v11 / v12) * (v11 / v12) + 1.0;
      if (v12 <= v11)
      {
        v10 = v13;
      }

      else
      {
        v11 = *(v7 + v8);
      }

      v8 += 8;
    }

    while (v8 != 32);
    v14 = v11 * sqrt(v10);
    *(v140 + v2) = v14;
    *(v139 + v2) = v14;
    v7 += 2;
    ++v2;
  }

  while (v9 != 4);
  v15 = 0;
  v16 = 0;
  v132 = &v147;
  v133 = &v144 + 1;
  v17 = 1;
  v129 = &v143;
  v130 = v145;
  v134 = 4;
  v135 = 1;
  v18 = 4;
  v19 = v140;
  while (1)
  {
    v20 = 2;
    if (v18 > 2)
    {
      v20 = v18;
    }

    if (v16 == 3)
    {
      break;
    }

    v131 = v17;
    v21 = 0;
    v22 = 4 * v16;
    v23 = 5 * v16;
    v24 = 4 - v16;
    v25 = fabs(*(v140 + v16));
    for (i = 1; i != v20; ++i)
    {
      v27 = fabs(*(v19 + i));
      if (v27 > v25)
      {
        v25 = v27;
        v21 = i;
      }
    }

    v127 = v18;
    if (v21)
    {
      v28 = v21 + v16;
      v29 = &v143 + (4 * (v21 + v16));
      v30 = *v29;
      *v29 = *(&v143 + v22);
      *(&v143 + v22) = v30;
      v31 = v29[1];
      v29[1] = *(&v143 + (v22 | 1));
      *(&v143 + (v22 | 1)) = v31;
      v32 = v29[2];
      v29[2] = *(&v143 + (v22 | 2));
      *(&v143 + (v22 | 2)) = v32;
      v33 = v29[3];
      v29[3] = *(&v143 + (v22 | 3));
      *(&v143 + (v22 | 3)) = v33;
      LOBYTE(v29) = *(&v136 + v28);
      *(&v136 + v28) = *(&v136 + v16);
      *(&v136 + v16) = v29;
      *(v140 + v28) = *(v140 + v16);
      *(v139 + v28) = *(v139 + v16);
    }

    v34 = *(&v143 + v23);
    v35 = v23 + 2;
    *(&v141 + v16) = 0;
    v36 = 5 * v16;
    v37 = sub_10068B4AC(v16 ^ 3, &v143, v23 + 2);
    v128 = v15;
    if (v37 == 0.0)
    {
      v53 = v131;
      v41 = 5 * v16;
      goto LABEL_74;
    }

    v38 = sub_10068B384(*(&v143 + v36), v37);
    v39 = *(&v143 + v36);
    if (v39 >= 0.0)
    {
      v40 = -v38;
    }

    else
    {
      v40 = v38;
    }

    v41 = 5 * v16;
    if (fabs(v38) < 1.00208418e-292)
    {
      v42 = 0;
      v43 = v22 + 4;
      v44 = 1;
      do
      {
        v45 = v44;
        if (v35 <= v43)
        {
          v46 = v135;
          do
          {
            *(&v143 + v46) = *(&v143 + v46) * 9.97920155e291;
            ++v46;
          }

          while (v46 < v43);
        }

        v40 = v40 * 9.97920155e291;
        _CF = fabs(v40) >= 1.00208418e-292 || v42++ >= 0x13;
        v34 = v34 * 9.97920155e291;
        v44 = v45 + 1;
      }

      while (!_CF);
      v48 = sub_10068B4AC(v16 ^ 3, &v143, v35);
      v49 = sub_10068B384(v34, v48);
      if (v34 >= 0.0)
      {
        v40 = -v49;
      }

      else
      {
        v40 = v49;
      }

      v50 = (v40 - v34) / v40;
      v51 = v16;
      *(&v141 + v16) = v50;
      if (v35 <= v43)
      {
        v52 = v135;
        do
        {
          *(&v143 + v52) = 1.0 / (v34 - v40) * *(&v143 + v52);
          ++v52;
        }

        while (v52 < v43);
      }

      v41 = 5 * v16;
      do
      {
        v40 = v40 * 1.00208418e-292;
        --v45;
      }

      while (v45);
LABEL_43:
      v53 = v131;
      goto LABEL_46;
    }

    v50 = (v40 - v39) / v40;
    v51 = v16;
    *(&v141 + v16) = v50;
    v54 = v22 + 4;
    if (v35 > v54)
    {
      goto LABEL_43;
    }

    v55 = v135;
    v53 = v131;
    do
    {
      *(&v143 + v55) = 1.0 / (v39 - v40) * *(&v143 + v55);
      ++v55;
    }

    while (v55 < v54);
LABEL_46:
    *(&v143 + v41) = 0x3FF0000000000000;
    if (v50 == 0.0)
    {
      goto LABEL_72;
    }

    v56 = v133;
    while (*v56 == 0.0)
    {
      --v56;
      _VF = __OFSUB__(v24--, 1);
      if ((v24 < 0) ^ _VF | (v24 == 0))
      {
        v24 = 0;
        break;
      }
    }

    v57 = 2 - v16;
    v58 = v132;
    do
    {
      v59 = (v41 + 4 + 4 * v57);
      v60 = v59 + v24;
      v61 = v58;
      while (v59 < v60)
      {
        v62 = *v61++;
        ++v59;
        if (v62 != 0.0)
        {
          v64 = v57;
          goto LABEL_59;
        }
      }

      v64 = v57 - 1;
      v58 -= 4;
      v63 = v57-- <= 0;
    }

    while (!v63);
LABEL_59:
    if (v24 >= 1)
    {
      v65 = (v64 + 1);
      if (v64 != -1)
      {
        v126 = v41;
        v66 = v51;
        v67 = v41 + 5;
        bzero(&v137, 8 * (v64 + 1));
        v41 = v126;
        v68 = v67 + 4 * v64;
        v69 = 5 * v66;
        if (v67 <= v68)
        {
          v70 = v69 + 5;
          v71 = v130;
          do
          {
            v72 = 0.0;
            v73 = v128;
            v74 = v71;
            v75 = v70;
            do
            {
              v76 = *v74++;
              v72 = v72 + v76 * *(&v143 + v73);
              ++v75;
              ++v73;
            }

            while (v75 < v70 + v24);
            *(&v137 + ((v70 - v126 - 5) >> 2)) = v72 + *(&v137 + ((v70 - v126 - 5) >> 2));
            v70 += 4;
            v71 += 4;
          }

          while (v70 <= v68);
        }

        if ((v64 & 0x80000000) == 0)
        {
          v77 = 0;
          v78 = v130;
          v53 = v131;
          v79 = v134;
          do
          {
            v80 = *(&v137 + v77);
            if (v80 != 0.0)
            {
              v81 = v80 * -v50;
              v82 = v129;
              v83 = v78;
              v84 = v79;
              do
              {
                v85 = *v82++;
                *v83 = *v83 + v85 * v81;
                ++v83;
                ++v84;
              }

              while (v84 < v69 + (v24 + 4));
            }

            v69 += 4;
            ++v77;
            v79 += 4;
            v78 += 4;
          }

          while (v77 != v65);
LABEL_72:
          v34 = v40;
          goto LABEL_74;
        }
      }
    }

    v34 = v40;
    v53 = v131;
LABEL_74:
    *(&v143 + v41) = v34;
    v86 = v53;
    v87 = v134;
    do
    {
      v88 = *(v140 + v86);
      if (v88 != 0.0)
      {
        v89 = fabs(*(&v143 + v87));
        v90 = 1.0 - v89 / v88 * (v89 / v88);
        if (v90 < 0.0)
        {
          v90 = 0.0;
        }

        if (v88 / *(v139 + v86) * (v88 / *(v139 + v86)) * v90 <= 0.0000000149011612)
        {
          v91 = sub_10068B4AC(v16 ^ 3, &v143, v87 + 2);
          *(v140 + v86) = v91;
          *(v139 + v86) = v91;
        }

        else
        {
          *(v140 + v86) = v88 * sqrt(v90);
        }
      }

      v87 += 4;
      ++v86;
    }

    while (v86 != 4);
    v19 = (v19 + 8);
    v18 = v127 - 1;
    v132 = (v132 + 8);
    v133 += 4;
    v15 = v128 + 5;
    v134 += 5;
    v135 += 5;
    v129 = (v129 + 40);
    v130 = (v130 + 40);
    v17 = v53 + 1;
    _CF = v16++ >= 3;
    if (_CF)
    {
      goto LABEL_86;
    }
  }

  *(&v142 + 1) = 0;
LABEL_86:
  v92 = 0;
  v93 = *&v143;
  v94 = *(v145 + 1);
  if (*&v143 == 0.0)
  {
    v95 = 1;
  }

  else
  {
    v95 = 2;
  }

  result = a2;
  v97 = *&v146;
  v98 = *&v146 != 0.0;
  v99 = *(&v148 + 1);
  v100 = *(&v148 + 1) != 0.0;
  *&v101 = *a1;
  *a2 = 0;
  *(&v101 + 1) = a1[1];
  a2[1] = 0;
  *&v102 = a1[2];
  a2[2] = 0;
  *(&v102 + 1) = a1[3];
  v137 = v101;
  v138 = v102;
  a2[3] = 0;
  v103 = &v137 + 8;
  v104 = &v143 + 8;
  while (2)
  {
    v105 = *(&v141 + v92);
    if (v105 == 0.0)
    {
LABEL_97:
      ++v92;
      v103 += 8;
      v104 += 40;
      if (v92 == 4)
      {
        goto LABEL_101;
      }

      continue;
    }

    break;
  }

  v106 = *(&v137 + v92);
  if (v92 != 3)
  {
    v107 = 0;
    v108 = *(&v137 + v92);
    do
    {
      v108 = v108 + *&v104[8 * v107] * *&v103[8 * v107];
      ++v107;
    }

    while (v92 + v107 != 3);
    v109 = v105 * v108;
    if (v109 != 0.0)
    {
      v110 = 0;
      *(&v137 + v92) = v106 - v109;
      do
      {
        *&v103[8 * v110] = *&v103[8 * v110] - *&v104[8 * v110] * v109;
        ++v110;
      }

      while (v92 + v110 != 3);
    }

    goto LABEL_97;
  }

  v111 = v105 * v106;
  if (v111 != 0.0)
  {
    *(&v138 + 1) = v106 - v111;
  }

LABEL_101:
  if (v94 == 0.0)
  {
    v112 = v93 != 0.0;
  }

  else
  {
    v112 = v95;
  }

  v113 = (v112 + v98 + v100);
  if (v113)
  {
    v114 = a2 - 1;
    v115 = &v136;
    v116 = &v137;
    do
    {
      v117 = *v116++;
      v118 = v117;
      v119 = *v115++;
      v114[v119] = v118;
      --v113;
    }

    while (v113);
    if (v97 == 0.0)
    {
      v120 = v112;
    }

    else
    {
      v120 = v112 + 1;
    }

    if (v99 != 0.0)
    {
      ++v120;
    }

    v121 = (&v143 + 2 * v112 + 2 * v98 + 2 * v100 - 2);
    do
    {
      v122 = *(&v136 + v120 - 1);
      *&v114[v122] = *&v114[v122] / *(&v143 + 5 * v120 - 5);
      if (v120 < 2)
      {
        break;
      }

      v123 = 0;
      do
      {
        *&v114[*(&v136 + v123)] = *&v114[*(&v136 + v123)] - *&v114[v122] * v121[v123];
        v63 = v123++ < v120 - 2;
      }

      while (v63);
      v121 -= 4;
      v63 = v120-- <= 1;
    }

    while (!v63);
  }

  return result;
}

double sub_10068B384(double a1, double a2)
{
  v2 = fabs(a1);
  v3 = fabs(a2);
  if (v2 < v3)
  {
    return v3 * sqrt(v2 / v3 * (v2 / v3) + 1.0);
  }

  if (v2 <= v3)
  {
    v5 = 1.41421356;
  }

  else
  {
    v5 = sqrt(v3 / v2 * (v3 / v2) + 1.0);
  }

  return v2 * v5;
}

double sub_10068B3EC(unsigned __int8 *a1, int a2, double *a3)
{
  if (a2 > 1)
  {
    v3 = a1 + 1;
    v4 = *a1;
    v5 = (a2 + 1) - 2;
    do
    {
      v6 = *v3++;
      result = (v6 - v4);
      *a3++ = result;
      v4 = v6;
      --v5;
    }

    while (v5);
  }

  return result;
}

double sub_10068B434(int a1, uint64_t a2, int a3)
{
  if (a1 < 1)
  {
    v4 = 0.0;
    v5 = 3.31216864e-170;
  }

  else
  {
    v3 = a3;
    v4 = 0.0;
    v5 = 3.31216864e-170;
    do
    {
      v6 = fabs(*(a2 - 8 + 8 * v3));
      v7 = v4 + v6 / v5 * (v6 / v5);
      v4 = v4 * (v5 / v6) * (v5 / v6) + 1.0;
      if (v6 > v5)
      {
        v5 = v6;
      }

      else
      {
        v4 = v7;
      }

      ++v3;
    }

    while (v3 < a3 + a1);
  }

  return v5 * sqrt(v4);
}

double sub_10068B4AC(int a1, uint64_t a2, int a3)
{
  if (a1 < 1)
  {
    return 0.0;
  }

  if (a1 == 1)
  {
    return fabs(*(a2 + 8 * a3 - 8));
  }

  v4 = a3;
  v5 = 0.0;
  v6 = 3.31216864e-170;
  do
  {
    v7 = fabs(*(a2 - 8 + 8 * v4));
    v8 = v5 + v7 / v6 * (v7 / v6);
    v5 = v5 * (v6 / v7) * (v6 / v7) + 1.0;
    if (v7 <= v6)
    {
      v5 = v8;
    }

    else
    {
      v6 = v7;
    }

    ++v4;
  }

  while (v4 < a3 + a1);
  return v6 * sqrt(v5);
}

double sub_10068B530(int a1, uint64_t a2, int a3, int a4)
{
  if (a1 < 1)
  {
    return 0.0;
  }

  if (a1 == 1)
  {
    return fabs(*(a2 + 8 * a3 - 8));
  }

  v5 = 0.0;
  v6 = 3.31216864e-170;
  v7 = a3;
  do
  {
    v8 = fabs(*(a2 - 8 + 8 * v7));
    v9 = v5 + v8 / v6 * (v8 / v6);
    v5 = v5 * (v6 / v8) * (v6 / v8) + 1.0;
    if (v8 <= v6)
    {
      v5 = v9;
    }

    else
    {
      v6 = v8;
    }

    v10 = v7 < a3;
    v7 += a4;
    v11 = !v10;
    v12 = v10;
    if (a4 >= 0)
    {
      v11 = v12;
    }
  }

  while ((v11 & 1) != 0);
  return v6 * sqrt(v5);
}

unint64_t sub_10068B5C4(uint64_t a1, double *a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    *&a2[2 * v3] = *(a1 + 16 * v2);
    v4 = 128;
    do
    {
      v5 = v3;
      v3 ^= v4 >> 1;
      v4 >>= 1;
    }

    while ((v4 & ~v5) == 0);
    ++v2;
  }

  while (v2 != 127);
  v6 = 0;
  *&a2[2 * v3] = *(a1 + 2032);
  do
  {
    v7 = &a2[v6];
    v41 = vld4q_f64(v7);
    v42.val[2] = vsubq_f64(v41.val[0], v41.val[2]);
    v42.val[3] = vsubq_f64(v41.val[1], v41.val[3]);
    v42.val[0] = vaddq_f64(v41.val[2], v41.val[0]);
    v42.val[1] = vaddq_f64(v41.val[3], v41.val[1]);
    vst4q_f64(v7, v42);
    v6 += 8;
  }

  while (v6 != 256);
  v8 = 2;
  v9 = 4;
  v10 = 125;
  v11 = 32;
  do
  {
    v12 = v9;
    if (v10 >= 1)
    {
      v13 = 0;
      v14 = 2 * v8;
      v15 = a2;
      do
      {
        v16 = &v15[v14];
        v17 = v15[2 * v8];
        v18 = v15[v14 + 1];
        v19 = *v15;
        v20 = v15[1];
        *v16 = *v15 - v17;
        v16[1] = v20 - v18;
        *v15 = v17 + v19;
        v15[1] = v18 + v20;
        v13 += v9;
        v15 += 2 * v9;
      }

      while (v13 < v10);
    }

    v21 = 2 * v8;
    v22 = a2 + 2;
    result = v11;
    v24 = 1;
    do
    {
      if (v10 >= 1)
      {
        v25 = dbl_1008AAE10[result];
        v26 = dbl_1008AB018[result];
        v27 = v22;
        v28 = v24;
        do
        {
          v29 = &v27[v21];
          v31 = v27[v21];
          v30 = v27[v21 + 1];
          v32 = v30 * -v26 + v25 * v31;
          v33 = v26 * v31 + v25 * v30;
          v34 = *v27;
          v35 = v27[1];
          *v29 = *v27 - v32;
          v29[1] = v35 - v33;
          *v27 = v34 + v32;
          v27[1] = v33 + v35;
          v28 += v9;
          v27 += 2 * v9;
        }

        while (v28 < v24 + v10);
      }

      ++v24;
      result += v11;
      v22 += 2;
    }

    while (result < 0x40);
    v9 *= 2;
    v10 -= v12;
    v8 = v12;
    v36 = v11 > 1;
    v11 >>= 1;
  }

  while (v36);
  v37 = 0;
  v38 = vdupq_n_s64(0x3F80000000000000uLL);
  do
  {
    v39 = &a2[v37];
    v40 = vmulq_f64(*&a2[v37 + 2], v38);
    *v39 = vmulq_f64(*&a2[v37], v38);
    v39[1] = v40;
    v37 += 4;
  }

  while (v37 != 256);
  return result;
}

unint64_t sub_10068B790(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = &unk_100BBB388;
  *&qword_100BBB390 = xmmword_1008AADF0;
  v7 = 2999;
  do
  {
    v8 = v4 + 2;
    v9 = v4 + v5;
    if (v8 <= 6000 - v5)
    {
      v5 = v9 + 1;
    }

    else
    {
      v5 = v9 - 5999;
    }

    v10 = __sincos_stret(v5 * 3.14159265 / 3000.0);
    *(v6 - 1) = v10.__cosval;
    *v6 = -v10.__sinval;
    v6 -= 2;
    v4 = v8;
    --v7;
  }

  while (v7);
  v11 = &xmmword_100BC6F00;
  v12 = -2999;
  v13 = xmmword_100BAF820;
  do
  {
    v14 = *v13++;
    *v11-- = v14;
  }

  while (!__CFADD__(v12++, 1));
  v16 = 0;
  v17 = &unk_100BBB398;
  do
  {
    v18.f64[0] = -*v17;
    v19 = *(a1 + 16 * v16);
    v18.f64[1] = *v17;
    v20 = vmulq_f64(v19, v18);
    *(a2 + 16 * v16++) = vmlaq_n_f64(vextq_s8(v20, v20, 8uLL), v19, *(v17 - 1));
    v17 += 2;
  }

  while (v16 != 3000);
  bzero(qword_100B8F820, 0x20000uLL);
  v21 = 0;
  v22 = 0;
  do
  {
    *&qword_100B8F820[2 * v22] = *(a2 + 16 * v21);
    v23 = 0x2000;
    do
    {
      v24 = v22;
      v22 ^= v23 >> 1;
      v23 >>= 1;
    }

    while ((v23 & ~v24) == 0);
    ++v21;
  }

  while (v21 != 2999);
  v25 = 0;
  *&qword_100B8F820[2 * v22] = *(a2 + 47984);
  do
  {
    v26 = &qword_100B8F820[v25];
    v142 = vld4q_f64(v26);
    v145.val[2] = vsubq_f64(v142.val[0], v142.val[2]);
    v145.val[3] = vsubq_f64(v142.val[1], v142.val[3]);
    v145.val[0] = vaddq_f64(v142.val[2], v142.val[0]);
    v145.val[1] = vaddq_f64(v142.val[3], v142.val[1]);
    vst4q_f64(v26, v145);
    v25 += 8;
  }

  while (v25 != 0x4000);
  v27 = 2;
  v28 = 4;
  v29 = 8189;
  v30 = 2048;
  do
  {
    v31 = v28;
    if (v29 >= 1)
    {
      v32 = 0;
      v33 = 2 * v27;
      v34 = qword_100B8F820;
      do
      {
        v35 = &v34[v33];
        v36 = v34[2 * v27];
        v37 = v34[v33 + 1];
        v38 = *v34;
        v39 = v34[1];
        *v35 = *v34 - v36;
        v35[1] = v39 - v37;
        *v34 = v36 + v38;
        v34[1] = v37 + v39;
        v32 += v28;
        v34 += 2 * v28;
      }

      while (v32 < v29);
    }

    v40 = qword_100B8F820;
    v41 = v30;
    v42 = 2 * v27;
    v43 = 1;
    do
    {
      if (v29 >= 1)
      {
        v44 = dbl_1008AB220[v41];
        v45 = dbl_1008B3228[v41];
        v46 = v40;
        v47 = v43;
        do
        {
          v48 = &v46[v42];
          v50 = *&v46[v42 + 2];
          v49 = *&v46[v42 + 3];
          v51 = v49 * -v45 + v44 * v50;
          v52 = v45 * v50 + v44 * v49;
          v53 = *(v46 + 2);
          v54 = *(v46 + 3);
          *(v48 + 2) = v53 - v51;
          *(v48 + 3) = v54 - v52;
          *(v46 + 2) = v53 + v51;
          *(v46 + 3) = v52 + v54;
          v47 += v28;
          v46 += 2 * v28;
        }

        while (v47 < v43 + v29);
      }

      ++v43;
      v41 += v30;
      v40 += 2;
    }

    while (v41 < 0x1000);
    v28 *= 2;
    v29 -= v31;
    v27 = v31;
    v55 = v30 > 1;
    v30 >>= 1;
  }

  while (v55);
  bzero(qword_100B6F820, 0x20000uLL);
  v56 = 0;
  v57 = 0;
  do
  {
    *&qword_100B6F820[2 * v57] = xmmword_100BAF820[v56];
    v58 = 0x2000;
    do
    {
      v59 = v57;
      v57 ^= v58 >> 1;
      v58 >>= 1;
    }

    while ((v58 & ~v59) == 0);
    ++v56;
  }

  while (v56 != 5998);
  v60 = 0;
  *&qword_100B6F820[2 * v57] = xmmword_100BC6F00;
  do
  {
    v61 = &qword_100B6F820[v60];
    v143 = vld4q_f64(v61);
    v146.val[2] = vsubq_f64(v143.val[0], v143.val[2]);
    v146.val[3] = vsubq_f64(v143.val[1], v143.val[3]);
    v146.val[0] = vaddq_f64(v143.val[2], v143.val[0]);
    v146.val[1] = vaddq_f64(v143.val[3], v143.val[1]);
    vst4q_f64(v61, v146);
    v60 += 8;
  }

  while (v60 != 0x4000);
  v62 = 2;
  v63 = 4;
  v64 = 8189;
  v65 = 2048;
  do
  {
    v66 = v63;
    if (v64 >= 1)
    {
      v67 = 0;
      v68 = 2 * v62;
      v69 = qword_100B6F820;
      do
      {
        v70 = &v69[v68];
        v71 = v69[2 * v62];
        v72 = v69[v68 + 1];
        v73 = *v69;
        v74 = v69[1];
        *v70 = *v69 - v71;
        v70[1] = v74 - v72;
        *v69 = v71 + v73;
        v69[1] = v72 + v74;
        v67 += v63;
        v69 += 2 * v63;
      }

      while (v67 < v64);
    }

    v75 = qword_100B6F820;
    v76 = v65;
    v77 = 2 * v62;
    v78 = 1;
    do
    {
      if (v64 >= 1)
      {
        v79 = dbl_1008AB220[v76];
        v80 = dbl_1008B3228[v76];
        v81 = v75;
        v82 = v78;
        do
        {
          v83 = &v81[v77];
          v85 = *&v81[v77 + 2];
          v84 = *&v81[v77 + 3];
          v86 = v84 * -v80 + v79 * v85;
          v87 = v80 * v85 + v79 * v84;
          v88 = *(v81 + 2);
          v89 = *(v81 + 3);
          *(v83 + 2) = v88 - v86;
          *(v83 + 3) = v89 - v87;
          *(v81 + 2) = v88 + v86;
          *(v81 + 3) = v87 + v89;
          v82 += v63;
          v81 += 2 * v63;
        }

        while (v82 < v78 + v64);
      }

      ++v78;
      v76 += v65;
      v75 += 2;
    }

    while (v76 < 0x1000);
    v63 *= 2;
    v64 -= v66;
    v62 = v66;
    v55 = v65 > 1;
    v65 >>= 1;
  }

  while (v55);
  for (i = 0; i != 0x4000; i += 4)
  {
    v91 = &qword_100B8F820[i];
    v139 = vld2q_f64(v91);
    v92 = &qword_100B6F820[i];
    v140 = vld2q_f64(v92);
    v141.val[0] = vmlaq_f64(vmulq_f64(v140.val[1], vnegq_f64(v139.val[1])), v140.val[0], v139.val[0]);
    v141.val[1] = vmlaq_f64(vmulq_f64(v139.val[1], v140.val[0]), v140.val[1], v139.val[0]);
    vst2q_f64(v91, v141);
  }

  v93 = 0;
  v94 = 0;
  do
  {
    *&qword_100B6F820[2 * v94] = *&qword_100B8F820[2 * v93];
    v95 = 0x2000;
    do
    {
      v96 = v94;
      v94 ^= v95 >> 1;
      v95 >>= 1;
    }

    while ((v95 & ~v96) == 0);
    ++v93;
  }

  while (v93 != 0x1FFF);
  v97 = 0;
  *&qword_100B6F820[2 * v94] = xmmword_100BAF810;
  do
  {
    v98 = &qword_100B6F820[v97];
    v144 = vld4q_f64(v98);
    v147.val[2] = vsubq_f64(v144.val[0], v144.val[2]);
    v147.val[3] = vsubq_f64(v144.val[1], v144.val[3]);
    v147.val[0] = vaddq_f64(v144.val[2], v144.val[0]);
    v147.val[1] = vaddq_f64(v144.val[3], v144.val[1]);
    vst4q_f64(v98, v147);
    v97 += 8;
  }

  while (v97 != 0x4000);
  v99 = 2;
  v100 = 4;
  v101 = 8189;
  v102 = 2048;
  do
  {
    v103 = v100;
    if (v101 >= 1)
    {
      v104 = 0;
      v105 = 2 * v99;
      v106 = qword_100B6F820;
      do
      {
        v107 = &v106[v105];
        v108 = v106[2 * v99];
        v109 = v106[v105 + 1];
        v110 = *v106;
        v111 = v106[1];
        *v107 = *v106 - v108;
        v107[1] = v111 - v109;
        *v106 = v108 + v110;
        v106[1] = v109 + v111;
        v104 += v100;
        v106 += 2 * v100;
      }

      while (v104 < v101);
    }

    v112 = qword_100B6F820;
    result = v102;
    v114 = 2 * v99;
    v115 = 1;
    do
    {
      if (v101 >= 1)
      {
        v116 = dbl_1008AB220[result];
        v117 = dbl_1008BB230[result];
        v118 = v112;
        v119 = v115;
        do
        {
          v120 = &v118[v114];
          v122 = *&v118[v114 + 2];
          v121 = *&v118[v114 + 3];
          v123 = v121 * -v117 + v116 * v122;
          v124 = v117 * v122 + v116 * v121;
          v125 = *(v118 + 2);
          v126 = *(v118 + 3);
          *(v120 + 2) = v125 - v123;
          *(v120 + 3) = v126 - v124;
          *(v118 + 2) = v125 + v123;
          *(v118 + 3) = v124 + v126;
          v119 += v100;
          v118 += 2 * v100;
        }

        while (v119 < v115 + v101);
      }

      ++v115;
      result += v102;
      v112 += 2;
    }

    while (result < 0x1000);
    v100 *= 2;
    v101 -= v103;
    v99 = v103;
    v55 = v102 > 1;
    v102 >>= 1;
  }

  while (v55);
  v127 = 0;
  v128 = vdupq_n_s64(0x3F20000000000000uLL);
  do
  {
    v129 = &qword_100B6F820[v127];
    v130 = vmulq_f64(*&qword_100B6F820[v127 + 2], v128);
    *v129 = vmulq_f64(*&qword_100B6F820[v127], v128);
    *(v129 + 1) = v130;
    v127 += 4;
  }

  while (v127 != 0x4000);
  v131 = &unk_100B7B398;
  v132 = 3000;
  v133 = &unk_100BBB398;
  do
  {
    v134 = *(v133 - 1);
    v135 = *(v131 - 1);
    v136 = *v131 * *v133 + v134 * v135;
    v137 = v134 * *v131 - *v133 * v135;
    if (v137 == 0.0)
    {
      *a2 = v136 / 3000.0;
      v138 = 0.0;
    }

    else
    {
      v138 = v137 / 3000.0;
      if (v136 == 0.0)
      {
        *a2 = 0;
      }

      else
      {
        *a2 = v136 / 3000.0;
      }
    }

    *(a2 + 8) = v138;
    a2 += 16;
    v131 += 2;
    v133 += 2;
    --v132;
  }

  while (v132);
  return result;
}

void sub_10068BE94()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v209 = 0u;
  v210 = 0u;
  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  bzero(v279, 0xBB80uLL);
  bzero(&v277, 0xBB80uLL);
  bzero(v276, 0x800uLL);
  bzero(v250, 0x800uLL);
  v247 = 0u;
  v246 = 0u;
  v245 = 0u;
  v244 = 0u;
  v243 = 0u;
  v242 = 0u;
  v241 = 0u;
  v240 = 0u;
  v239 = 0u;
  v238 = 0u;
  v237 = 0u;
  v236 = 0u;
  v235 = 0u;
  memset(v234, 0, sizeof(v234));
  bzero(v231, 0x2098uLL);
  bzero(&v229, 0x400uLL);
  memset(v227, 0, 254);
  memset(v226, 0, 127);
  memset(v225, 0, 127);
  memset(v224, 0, 127);
  v204 = 0;
  sub_10068A18C((v5 + 1216), &v235);
  v6 = *(v5 + 336);
  v242 = *(v5 + 320);
  v7 = *(v5 + 432);
  v245 = *(v5 + 416);
  v243 = v6;
  v246 = v7;
  v244 = *(v5 + 352);
  v247 = *(v5 + 448);
  sub_100689844(&v242, &v238);
  bzero(v248, 0x500uLL);
  v8 = v238;
  v9 = v239;
  v10 = v240;
  v11 = v241;
  v12 = vaddq_f64(v241, vmlaq_f64(vmlaq_f64(vmulq_f64(v239, 0), 0, v238), 0, v240));
  *(v5 + 368) = vaddq_f64(vsubq_f64(vsubq_f64(v239, v238), v240), v241);
  *(v5 + 384) = v12;
  *(v5 + 400) = vaddq_f64(vaddq_f64(vaddq_f64(v8, v9), v10), v11);
  memcpy(v248, v5, 0x4F0uLL);
  __asm { FMOV            V2.2D, #3.0 }

  v16 = vmulq_f64(v236, _Q2);
  __asm { FMOV            V2.2D, #9.0 }

  v248[79] = vaddq_f64(v237, vmlaq_f64(v16, _Q2, v235));
  *(&v206 + 1) = 1;
  sub_100689648(&v205, 0);
  bzero(v249, 0x500uLL);
  memcpy(v279, v248, sizeof(v279));
  for (i = 0; i != 80; i += 2)
  {
    v19 = (&unk_1008C3290 + i * 16);
    v281 = vld2q_f64(v19);
    v20 = &v248[i];
    v282 = vld2q_f64(v20);
    v283.val[0] = vmlaq_f64(vmulq_f64(v282.val[1], vnegq_f64(v281.val[1])), v282.val[0], v281.val[0]);
    v283.val[1] = vmlaq_f64(vmulq_f64(v281.val[1], v282.val[0]), v282.val[1], v281.val[0]);
    v21 = &v249[i * 16];
    vst2q_f64(v21, v283);
  }

  bzero(&v280, 0xB680uLL);
  sub_10068B790(v279, &v277);
  bzero(v232, 0x5DC0uLL);
  v22 = 0;
  v23 = &v278;
  do
  {
    *&v232[v22++] = sub_10068B384(*(v23 - 1), *v23);
    v23 += 2;
  }

  while (v22 != 3000);
  v24 = 1;
  v25 = &v233;
  v26 = *v232;
  for (j = 2; j != 3001; ++j)
  {
    v28 = *v25++;
    v29 = v28;
    if (v26 < v28)
    {
      v26 = v29;
      v24 = j;
    }
  }

  v30 = v24 / 3000000000.0 * 300000000.0;
  memset(&v250[192], 0, 192);
  if (v30 >= 250.0)
  {
    v31 = 300.0 - v30;
  }

  else
  {
    v31 = v24 / 3000000000.0 * 300000000.0;
  }

  memset(v250, 0, 192);
  memcpy(v251, v249, sizeof(v251));
  v252 = 0u;
  v253 = 0u;
  v254 = 0u;
  v255 = 0u;
  v256 = 0u;
  v257 = 0u;
  v258 = 0u;
  v259 = 0u;
  v260 = 0u;
  v261 = 0u;
  v262 = 0u;
  v263 = 0u;
  v264 = 0u;
  v265 = 0u;
  v266 = 0u;
  v267 = 0u;
  v268 = 0u;
  v269 = 0u;
  v270 = 0u;
  v271 = 0u;
  v272 = 0u;
  v273 = 0u;
  v274 = 0u;
  v275 = 0u;
  sub_10068B5C4(v250, v276);
  v32 = 0;
  v201 = vdupq_n_s64(0x3FF9EC8E951033D9uLL);
  do
  {
    v33 = vmulq_f64(v276[v32], v201);
    v276[v32] = v33;
    *(&v229 + v32++) = sub_10068B384(v33.f64[0], v33.f64[1]);
  }

  while (v32 != 128);
  v34 = v229;
  v35 = 1;
  v36 = &v230;
  for (k = 2; k != 129; ++k)
  {
    v38 = *v36++;
    v39 = v38;
    if (v34 < v38)
    {
      v34 = v39;
      v35 = k;
    }
  }

  sub_1006880CC(&v229, 64.0 - v35);
  v40 = 0;
  memset(v228, 0, 256);
  do
  {
    *&v228[v40] = vmulq_f64(*(&v229 + v40 * 8), *(&v229 + v40 * 8));
    v40 += 2;
  }

  while (v40 != 32);
  v41 = *v228;
  for (m = 1; m != 32; ++m)
  {
    v41 = v41 + *&v228[m];
  }

  v43 = log10(v34);
  v44 = log10(sqrt(v41 * 0.03125)) * 20.0 + 10.0;
  if (v44 < v4 + v43 * 20.0)
  {
    v44 = v4 + v43 * 20.0;
  }

  v45 = v44 / 20.0;
  v46 = fabs(v45);
  if (v46 == INFINITY)
  {
    v47 = 0.0;
    if (v45 > 0.0)
    {
      v47 = *&qword_100B54DC8;
    }
  }

  else
  {
    v47 = 1.0;
    if (v45 != 0.0)
    {
      if (v46 == 1.0)
      {
        if (v45 <= 0.0)
        {
          v47 = 0.1;
        }

        else
        {
          v47 = 10.0;
        }
      }

      else if (v45 == 2.0)
      {
        v47 = 100.0;
      }

      else if (v45 == 0.5)
      {
        v47 = 3.16227766;
      }

      else
      {
        v47 = __exp10(v45);
      }
    }
  }

  v48 = 0;
  v49 = &v229;
  memset(v223, 0, sizeof(v223));
  v50.i64[0] = 0x101010101010101;
  v50.i64[1] = 0x101010101010101;
  v51 = vdupq_lane_s64(*&v47, 0);
  do
  {
    v53 = v49[6];
    v52 = v49[7];
    v55 = v49[4];
    v54 = v49[5];
    v57 = v49[2];
    v56 = v49[3];
    v58 = *v49;
    v59 = v49[1];
    v49 += 8;
    *&v223[v48] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v58, v51), vcgtq_f64(v59, v51)), vuzp1q_s32(vcgtq_f64(v57, v51), vcgtq_f64(v56, v51))), vuzp1q_s16(vuzp1q_s32(vcgtq_f64(v55, v51), vcgtq_f64(v54, v51)), vuzp1q_s32(vcgtq_f64(v53, v51), vcgtq_f64(v52, v51)))), v50);
    v48 += 16;
  }

  while (v48 != 128);
  v60 = 0;
  v61 = v223[0];
  do
  {
    v62 = v223[v60 + 1];
    v226[v60++] = v62 - v61;
    v61 = v62;
  }

  while (v60 != 127);
  v63 = 0;
  v64 = 0;
  while (!v226[v64])
  {
    ++v64;
LABEL_51:
    if (v64 > 126)
    {
      goto LABEL_52;
    }
  }

  v225[v63] = v64 + 1;
  v65 = v63++ <= 125;
  v66 = !v65;
  if (v65)
  {
    ++v64;
  }

  if ((v66 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_52:
  if (v63 < 1)
  {
    goto LABEL_119;
  }

  v67 = 0;
  v68 = 0;
  v69 = 0;
  do
  {
    if (v35 + v225[v67] >= 54)
    {
      ++v68;
      v224[v69++] = v67;
    }

    ++v67;
  }

  while (v63 != v67);
  if (v68 < 1)
  {
    goto LABEL_119;
  }

  for (n = 0; n != v68; ++n)
  {
    v227[n] = v35 + v225[v224[n]] - 63;
  }

  v71 = 0;
  v72 = 0;
  v73 = 2 * v68;
  do
  {
    if (v35 > v227[v71 / 2])
    {
      ++v72;
    }

    v71 += 2;
  }

  while (v73 != v71);
  v74 = 0;
  v75 = 0;
  do
  {
    v76 = v227[v74 / 2];
    if (v35 > v76)
    {
      v227[v75++] = v76;
    }

    v74 += 2;
  }

  while (v73 != v74);
  if (!v72)
  {
LABEL_119:
    puts("Slope 2 failed, noise too high");
    fflush(__stdoutp);
    *v2 = v31 * 0.5;
    v2[1] = v31 * 0.5;
    goto LABEL_199;
  }

  v202 = v47;
  bzero(v222, 0x4140uLL);
  bzero(v221, 0x20A0uLL);
  v220 = 0u;
  v219 = 0u;
  v217 = 0uLL;
  v218 = 0.0;
  bzero(v216, 0x828uLL);
  bzero(v215, 0x828uLL);
  bzero(v214, 0x826uLL);
  bzero(v213, 0x414uLL);
  v77 = 0;
  v78 = vdupq_n_s64(4 * v227[0] + 65528);
  v79 = xmmword_1008A4970;
  v80 = xmmword_1008A4980;
  v81 = xmmword_1008A4990;
  v82 = xmmword_1008A49A0;
  v83 = vdupq_n_s64(8uLL);
  do
  {
    *&v215[v77] = vuzp1q_s16(vuzp1q_s32(vaddq_s64(v78, v82), vaddq_s64(v78, v81)), vuzp1q_s32(vaddq_s64(v78, v80), vaddq_s64(v78, v79)));
    v80 = vaddq_s64(v80, v83);
    v81 = vaddq_s64(v81, v83);
    v82 = vaddq_s64(v82, v83);
    v79 = vaddq_s64(v79, v83);
    v77 += 16;
  }

  while (v77 != 64);
  v84 = 0;
  v85.i64[0] = 0x3000300030003;
  v85.i64[1] = 0x3000300030003;
  do
  {
    *&v216[v84] = vaddq_s16(*&v215[v84], v85);
    v84 += 16;
  }

  while (v84 != 64);
  *(&v208 + 1) = 0x5000000020;
  sub_10068D364(&v207, 2560);
  v88 = 0;
  v89 = 0.0;
  v90.f64[0] = NAN;
  v90.f64[1] = NAN;
  v91 = vnegq_f64(v90);
  do
  {
    v92 = 0;
    v93 = v89 * 6.28318531;
    v94 = v207 + 16 * DWORD2(v208) * v88;
    do
    {
      *v87.i64 = *&v216[v92];
      if (v93 * *v87.i64 == 0.0)
      {
        v86.i64[0] = 0;
        v87 = vbslq_s8(v91, v86, v87);
        *v94 = *v87.i64 * 0.001953125;
      }

      else
      {
        *v94 = 0;
        *v86.i64 = v93 * *v87.i64 * 0.001953125;
      }

      v92 += 2;
      *(v94 + 8) = v86.i64[0];
      v94 += 16;
    }

    while (v92 != 64);
    v89 = v89 + 1.0;
    ++v88;
  }

  while (v88 != 80);
  v95 = DWORD2(v208);
  v96 = 80 * DWORD2(v208);
  if (SDWORD2(v208) >= 1)
  {
    v97 = v207;
    if (v96 <= 1)
    {
      v98 = 1;
    }

    else
    {
      v98 = v96;
    }

    do
    {
      v99 = *v97;
      v100 = v97[1];
      if (*v97 == 0.0)
      {
        v101 = __sincos_stret(v97[1]);
        *v97 = v101.__cosval;
        v97[1] = v101.__sinval;
      }

      else if (v100 == 0.0)
      {
        *v97 = exp(v99);
        v97[1] = 0.0;
      }

      else
      {
        v102 = fabs(v100) == INFINITY;
        v103 = fabs(v99) == INFINITY;
        if (v99 >= 0.0 || !v103 || !v102)
        {
          v198 = exp(v99 * 0.5);
          v107 = __sincos_stret(v100);
          v106.f64[0] = v107.__cosval;
          v106.f64[1] = v107.__sinval;
          *v97 = vmulq_n_f64(vmulq_n_f64(v106, v198), v198);
        }

        else
        {
          *v97 = 0.0;
          v97[1] = 0.0;
        }
      }

      v97 += 2;
      --v98;
    }

    while (v98);
  }

  *(&v210 + 1) = v95 | 0x5000000000;
  sub_10068D364(&v209, v96);
  v108 = 0;
  v109 = DWORD2(v208);
  v110 = v207;
  v111 = DWORD2(v208);
  v112 = v209;
  v113 = 16 * SDWORD2(v208);
  v114 = 16 * SDWORD2(v210);
  do
  {
    if (v111 >= 1)
    {
      v115 = &v249[16 * v108];
      v116 = vld1q_dup_f64(v115++);
      v117.f64[0] = *v115;
      v117.f64[1] = -*v115;
      v118 = v109;
      v119 = v112;
      v120 = v110;
      do
      {
        v121 = *v120++;
        v122 = vmulq_f64(v121, v117);
        *v119++ = vmlaq_f64(vextq_s8(v122, v122, 8uLL), v121, v116);
        --v118;
      }

      while (v118);
    }

    ++v108;
    v110 = (v110 + v113);
    v112 = (v112 + v114);
  }

  while (v108 != 80);
  *(&v208 + 1) = DWORD2(v210) | 0x5000000000;
  sub_10068D364(&v207, 80 * DWORD2(v210));
  v123 = 0;
  v124 = DWORD2(v210);
  do
  {
    if (v124 >= 1)
    {
      v125 = 0;
      do
      {
        *(v207 + 16 * (v125 + SDWORD2(v208) * v123)) = *(v209 + 16 * (v125 + SDWORD2(v210) * v123));
        ++v125;
      }

      while (v124 != v125);
    }

    ++v123;
  }

  while (v123 != 80);
  v126 = sub_10068DD14(&v207, v222);
  v127 = v126;
  if (v126 >= 1)
  {
    v128 = v126;
    v129 = v213;
    v130 = v221;
    v131 = v222;
    v199 = vdupq_n_s64(0x3F60000000000000uLL);
    do
    {
      v132 = vmulq_f64(*v131, v199);
      *v131 = v132;
      v133 = sub_10068B384(v132.f64[0], v132.f64[1]) * 6.48101266;
      *v130++ = v133;
      *v129++ = v133 > v202;
      ++v131;
      --v128;
    }

    while (v128);
  }

  sub_10068B3EC(v213, v127, v231);
  if (v134 < 1)
  {
    v136 = 0;
  }

  else
  {
    v135 = 0;
    v136 = 0;
    do
    {
      if (v231[v135] == 0.0)
      {
        ++v135;
      }

      else
      {
        v214[v136++] = v135 + 1;
        if (v136 >= v134)
        {
          break;
        }

        ++v135;
      }
    }

    while (v135 < v134);
  }

  v137 = v136 != 0;
  LODWORD(v138) = v136 & ~(v136 >> 31);
  if (v134 == 1)
  {
    v138 = v137;
  }

  else
  {
    v138 = v138;
  }

  if (v138)
  {
    v139 = v231;
    v140 = v214;
    do
    {
      v141 = *v140++;
      *v139++ = v141 + 1.0;
      --v138;
    }

    while (v138);
  }

  v142 = v231[0];
  v203 = v231[0] - 1;
  v212[0] = log10(v221[v203]) * 20.0;
  v143 = &v221[v142];
  v212[1] = log10(v143[1]) * 20.0;
  v212[2] = log10(v143[3]) * 20.0;
  v212[3] = log10(v143[5]) * 20.0;
  sub_10068AA78(v212, &v219);
  v200 = v2;
  v144 = 0;
  v217 = vmulq_f64(v219, xmmword_1008C3280);
  while (2)
  {
    v145 = (v4 + 46.0) - 1 - v144 + 32 * v144;
    v146 = dbl_1008C3790[v145];
    v218 = *&v220 - dbl_1008C4140[v145];
    v147 = sub_100688F80(&v217, v234);
    if (v147 < 1)
    {
      goto LABEL_153;
    }

    LODWORD(v148) = 0;
    v149 = v147;
    v150 = v147;
    v151 = v234 + 1;
    do
    {
      v152 = *v151;
      v151 += 2;
      if (v152 == 0.0)
      {
        v148 = (v148 + 1);
      }

      else
      {
        v148 = v148;
      }

      --v150;
    }

    while (v150);
    v153 = v234 + 1;
    do
    {
      if (*v153 == 0.0)
      {
        v234[v150] = *(v153 - 1);
        LODWORD(v150) = v150 + 1;
      }

      v153 += 2;
      --v149;
    }

    while (v149);
    if (!v148)
    {
LABEL_153:
      LODWORD(v154) = 0;
      LODWORD(v165) = -1;
      goto LABEL_154;
    }

    LODWORD(v154) = 0;
    v155 = v234;
    v156 = v148;
    do
    {
      v157 = *v155;
      v155 += 2;
      if (v219.f64[1] + v219.f64[1] + v219.f64[0] * 6.0 * v157 >= 0.0)
      {
        v154 = v154;
      }

      else
      {
        v154 = (v154 + 1);
      }

      --v156;
    }

    while (v156);
    v158 = 0;
    v159 = v219.f64[0] * 6.0;
    v160 = v219.f64[1] + v219.f64[1];
    v161 = v234;
    do
    {
      if (v160 + v159 * *v161 < 0.0)
      {
        v234[v156] = *(v234 + (v158 >> 52));
        LODWORD(v156) = v156 + 1;
      }

      v161 += 2;
      v158 += 0x100000000000000;
      --v148;
    }

    while (v148);
    if (v154)
    {
      v162 = v221;
      v163 = v154;
      v164 = v234 + 1;
      do
      {
        *v162++ = sub_10068B384(*(v164 - 1), *v164);
        v164 += 2;
        --v163;
      }

      while (v163);
    }

    LODWORD(v165) = v154 - 1;
    if (v154 == 1)
    {
      v165 = 0;
      if (v154)
      {
        goto LABEL_158;
      }
    }

    else
    {
LABEL_154:
      if (v221[0] > v221[v165])
      {
        v165 = v165;
        if (!v154)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v165 = 0;
        if (!v154)
        {
          goto LABEL_169;
        }
      }

LABEL_158:
      v166 = &v234[v165];
      if (*v166 > -4.0 && *v166 < 6.0)
      {
        v168 = SHIDWORD(v206);
        DWORD2(v206) = 1;
        ++HIDWORD(v206);
        sub_100689648(&v205, SHIDWORD(v206));
        v169 = *v166 + *&v216[2 * v203] + -1.0;
        if (v166[1] == 0.0 || (v170 = 0.0, v169 != 0.0))
        {
          v170 = v169 / 512000000.0;
        }

        *(v205 + 8 * v168) = v146 + v170 * 300000000.0;
      }
    }

LABEL_169:
    if (++v144 != 10)
    {
      continue;
    }

    break;
  }

  if (HIDWORD(v206))
  {
    v171 = sub_1006891CC(&v205);
    v172 = v200;
  }

  else
  {
    memset(v211, 0, sizeof(v211));
    v217 = vmulq_f64(v219, xmmword_1008C3280);
    v218 = *&v220;
    v173 = sub_100688F80(&v217, v234);
    v172 = v200;
    if (v173 < 1)
    {
      goto LABEL_191;
    }

    LODWORD(v178) = 0;
    v179 = v173;
    v180 = v234 + 1;
    v181 = v173;
    do
    {
      v182 = *v180;
      v180 += 2;
      if (v182 == 0.0)
      {
        v178 = (v178 + 1);
      }

      else
      {
        v178 = v178;
      }

      --v181;
    }

    while (v181);
    v183 = 0;
    v184 = v234 + 1;
    do
    {
      v185 = (v184 - 1);
      *&v174 = *v184;
      if (*v184 == 0.0)
      {
        v174 = *v185;
        v234[v183++] = *v185;
      }

      v184 += 2;
      --v179;
    }

    while (v179);
    if (v178)
    {
      v186 = 0;
      v187 = 0;
      v188 = 0;
      v189 = v234;
      do
      {
        *&v174 = *v189;
        if (*v189 > 0.0)
        {
          ++v187;
          *(&v204 + v188++) = v186;
        }

        ++v186;
        v189 += 2;
      }

      while (v178 != v186);
      if (v187 >= 1)
      {
        v190 = v211;
        v191 = &v204;
        v192 = v187;
        do
        {
          v193 = *v191++;
          v174 = v234[v193];
          *v190++ = v174;
          --v192;
        }

        while (v192);
      }
    }

    else
    {
LABEL_191:
      v187 = 0;
    }

    v194 = sub_100688678(v211, v187, *&v174, v175, v176, v177) + *&v216[2 * v203] + -1.0;
    if (v195 == 0.0 || (v196 = 0.0, v194 != 0.0))
    {
      v196 = v194 / 512000000.0;
    }

    v171 = v196 * 300000000.0;
  }

  v197 = v171 * 0.5;
  if (v197 > v31 * 0.5)
  {
    v197 = v31 * 0.5;
  }

  *v172 = v197;
  v172[1] = v31 * 0.5;
LABEL_199:
  if (v206 == 1 && v205)
  {
    operator delete[]();
  }

  if (v208 == 1 && v207)
  {
    operator delete[]();
  }

  if (v210 == 1)
  {
    if (v209)
    {
      operator delete[]();
    }
  }
}