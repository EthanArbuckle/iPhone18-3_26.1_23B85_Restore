void sub_1002C9B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, std::invalid_argument a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C9CC0(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (*a1)
  {
    if (sub_1002B0F24((a1 + 32)) != 1)
    {
      sub_1002B18B0(a1 + 32);
    }

    if (a2)
    {
      if (qword_10045B050 != -1)
      {
        sub_100386AFC();
        v6 = qword_10045B058;
        if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          goto LABEL_16;
        }

        goto LABEL_6;
      }

      v6 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
LABEL_6:
        *buf = 0;
        v7 = "WARNING: UNIFORM: Max covariance blue dot, apply as UNIFORM.";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v7, buf, 2u);
      }
    }
  }

  else if (a2)
  {
    if (qword_10045B050 == -1)
    {
      v6 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_100386AFC();
      v6 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }
    }

    *buf = 0;
    v7 = "WARNING: UNIFORM: Uninitialized blue dot, start with UNIFORM prior.";
    goto LABEL_11;
  }

LABEL_16:
  *a3 = 0;
  a3[1] = 0;
}

void sub_1002C9FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1002CA008(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1002CA020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    sub_100385CC0(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CA03C(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  sub_1002C9CC0(a1, a2, &v6);
  if (!v6)
  {
    v4 = unk_100471BF0;
    *a3 = qword_100471BE8;
    a3[1] = v4;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = v7;
  *a3 = v6;
  a3[1] = v4;
  if (v4)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v5 = v7;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1002CA108(uint64_t a1)
{
  v2 = sub_100258548(a1);
  v3 = 1;
  sub_1002B0B24(v4, v2, &v3);
  sub_1002B0D48((a1 + 24), v4);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_1002CA168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002CA184(uint64_t result, uint64_t a2, char *a3, uint64_t **a4, char *a5, uint64_t a6)
{
  if (result != a2)
  {
    v11 = result;
    sub_10003BFA8(v28);
    sub_100258A10(v28, a4);
    sub_10003BFA8(v27);
    sub_1002B14EC(v27, a6);
    sub_1000474A4(v24, a3);
    std::stringbuf::str();
    sub_1000474A4(v22, a5);
    std::stringbuf::str();
    sub_10033E7A8(&v26, v24, v11, v18, v22, a2, __p);
    if (v21 < 0)
    {
      operator delete(__p[0]);
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v23 & 0x80000000) == 0)
    {
LABEL_4:
      if (SHIBYTE(v19) < 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

    operator delete(v22[0]);
    if (SHIBYTE(v19) < 0)
    {
LABEL_5:
      operator delete(v18[0]);
      if ((v25 & 0x80000000) == 0)
      {
LABEL_11:
        if (sub_1000E6528())
        {
          sub_10004DAA4(v18);
          sub_1000E0784(0);
          if ((v21 & 0x80u) == 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          if ((v21 & 0x80u) == 0)
          {
            v13 = v21;
          }

          else
          {
            v13 = __p[1];
          }

          sub_10003C2E4(&v19, v12, v13);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          if (qword_10045B050 != -1)
          {
            sub_100386AD4();
          }

          v14 = qword_10045B058;
          if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
          {
            v15 = std::logic_error::what(&v26);
            std::stringbuf::str();
            if ((v21 & 0x80u) == 0)
            {
              v16 = __p;
            }

            else
            {
              v16 = __p[0];
            }

            *buf = 136315394;
            v30 = v15;
            v31 = 2080;
            v32 = v16;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Precondition failure: %s\n%s\n", buf, 0x16u);
            if (v21 < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_1001D8FE0(v18);
        }

        __cxa_allocate_exception(0x80uLL);
        sub_10010A984(v17);
      }

LABEL_10:
      operator delete(v24[0]);
      goto LABEL_11;
    }

LABEL_9:
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return result;
}

void sub_1002CA454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, std::logic_error a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1001D8FE0(&a13);
  sub_10033E844(&a57);
  sub_10003C1C4(&a66);
  sub_10003C1C4(&STACK[0x2D8]);
  _Unwind_Resume(a1);
}

void sub_1002CA4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a56 < 0)
  {
    operator delete(__p);
    if (a62 < 0)
    {
LABEL_5:
      operator delete(a57);
      if (a18 < 0)
      {
LABEL_8:
        operator delete(a13);
        if ((a68 & 0x80000000) == 0)
        {
LABEL_12:
          sub_10003C1C4(&a72);
          sub_10003C1C4(&STACK[0x2D8]);
          _Unwind_Resume(a1);
        }

LABEL_11:
        operator delete(a63);
        sub_10003C1C4(&a72);
        sub_10003C1C4(&STACK[0x2D8]);
        _Unwind_Resume(a1);
      }

LABEL_10:
      if ((a68 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (a62 < 0)
  {
    goto LABEL_5;
  }

  if (a18 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

void *sub_1002CA5C4(void *a1, double **a2)
{
  sub_100234F24(a2, &__p);
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

  result = sub_10003C2E4(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v6;
  }

  return result;
}

void sub_1002CA648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CA6B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100446A70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

std::string *sub_1002CA730@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002CA764(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CA780()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002CA7F0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void **sub_1002CA8B0(void **result, uint64_t a2)
{
  if (**result != a2)
  {
    operator new();
  }

  return result;
}

void sub_1002CAA3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001DF4C4(va);
  _Unwind_Resume(a1);
}

void sub_1002CAA50(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    do
    {
      v5 = *(v3 + 40);
      v6 = *(v3 + 32);
      if (v6 >= 0)
      {
        v5 = v3 + 40;
      }

      v7 = (v5 + 8);
      v8 = (v3 + 96);
      if (v6 != v6 >> 31)
      {
        v8 = v7;
      }

      if (*v8 != a2)
      {
        sub_100014A08(v13, "");
        sub_1002CB244("Rolling wifi independence requires the current Wi-Fi scan to always appear in the history. This isn't guaranteed if the scan has different timestamps", &__p);
        sub_1000E661C(v13, &__p, 1);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v14 < 0)
        {
          operator delete(v13[0]);
        }

        sub_10003F5D0(&v12);
      }

      v3 += 208;
    }

    while (v3 != v4);
    v3 = *a3;
    v4 = a3[1];
  }

  v9 = *a1;
  v10 = (*a1)[2];
  v11 = (*a1)[1];
  sub_100205090(v9 + 1, v9[2], v3, v4, 0x4EC4EC4EC4EC4EC5 * ((v4 - v3) >> 4));
  sub_1002CAC2C(v9, 0x4EC4EC4EC4EC4EC5 * ((v10 - v11) >> 4));
}

void sub_1002CABDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CAC2C(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v2 = a1 + 1;
  v4 = a1[2] - v3;
  if (v4 == 208)
  {
    *(a1 + 8) = 1;
  }

  else
  {
    v5 = 0x4EC4EC4EC4EC4EC5 * (v4 >> 4);
    if (v5 <= a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v7 = v3 + 208 * a2;
        v10 = *(v7 + 40);
        v8 = v7 + 40;
        v9 = v10;
        v11 = *(v8 - 8);
        if (v11 >= 0)
        {
          v9 = v8;
        }

        v12 = (v9 + 8);
        v13 = (v8 + 56);
        if (v11 != v11 >> 31)
        {
          v13 = v12;
        }

        if (v6 != a2)
        {
          v14 = *v13;
          v15 = *a1;
          v16 = v3 + 96 + 208 * v6;
          while (1)
          {
            v17 = *(v16 - 64);
            v18 = v16 - 56;
            if (v17 < 0)
            {
              v18 = *(v16 - 56);
            }

            v19 = v18 + 8;
            v20 = (v17 == v17 >> 31 ? v16 : v19);
            if (v15 >= v14 - *v20)
            {
              break;
            }

            ++v6;
            *(a1 + 8) = 2;
            v16 += 208;
            if (a2 == v6)
            {
              goto LABEL_6;
            }
          }
        }

        if (v6 == a2)
        {
LABEL_6:
          *(a1 + 8) = 1;
          v6 = a2;
        }

        ++a2;
      }

      while (a2 != v5);
    }

    v21 = v3 + 208 * v6;
    __p = 0;
    v30 = 0;
    v31 = 0;
    sub_1002CB028(&__p, v3, v21, v6);
    sub_1002CAE64(v2, v3, v21);
    v22 = __p;
    if (__p)
    {
      v23 = v30;
      v24 = __p;
      if (v30 != __p)
      {
        v25 = v30 - 168;
        do
        {
          v28 = *(v23 - 44);
          if (v28 == v28 >> 31)
          {
            if (*(v23 - 128) == 1)
            {
              *(v23 - 128) = 0;
            }
          }

          else
          {
            v26 = *(v23 - 21);
            if (v28 < 0)
            {
              if (v26)
              {
                (*(*v26 + 8))(v26);
              }
            }

            else
            {
              v27 = *(v23 - 21);
              (*v26)(v23 - 168);
            }
          }

          v23 -= 208;
          v25 -= 208;
        }

        while (v23 != v22);
        v24 = __p;
      }

      v30 = v22;
      operator delete(v24);
    }
  }
}

void sub_1002CAE50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001CE6F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002CAE64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v18 = a2;
      if (v5 == a2)
      {
LABEL_25:
        a1[1] = v18;
        return a2;
      }
    }

    else
    {
      v6 = *a1;
      v7 = -*a1;
      v8 = *a1 + a2;
      v9 = *a1 + a3;
      do
      {
        v11 = *(v8 + v7);
        v12 = *(v9 + v7);
        if (v11 == v12)
        {
          v13 = v9 + v7;
          v14 = v8 + v7;
          if (v11 == v11 >> 31)
          {
            *(v14 + 8) = *(v13 + 8);
          }

          else
          {
            v10 = *(v13 + 8);
            *(v14 + 24) = *(v13 + 24);
            *(v14 + 8) = v10;
          }
        }

        else
        {
          v15 = v9 + v7;
          v16 = v8 + v7;
          if (v12 >> 31 == v12)
          {
            *(v16 + 8) = *(v15 + 8);
          }

          else
          {
            v17 = *(v15 + 8);
            *(v16 + 24) = *(v15 + 24);
            *(v16 + 8) = v17;
          }

          *(v8 + v7) = (v12 >> 31) ^ v12;
        }

        sub_1002058E8(v8 + v7 + 32, v9 + v7 + 32);
        v8 += 208;
        v9 += 208;
      }

      while (v9 + v7 != v5);
      v5 = a1[1];
      v18 = v8 - v6;
      if (v5 == v18)
      {
        goto LABEL_25;
      }
    }

    v19 = v5 - 168;
    do
    {
      v22 = *(v5 - 176);
      if (v22 == v22 >> 31)
      {
        if (*(v5 - 128) == 1)
        {
          *(v5 - 128) = 0;
        }
      }

      else
      {
        v20 = *(v5 - 168);
        if (v22 < 0)
        {
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }
        }

        else
        {
          v21 = *(v5 - 168);
          (*v20)(v5 - 168);
        }
      }

      v5 -= 208;
      v19 -= 208;
    }

    while (v5 != v18);
    goto LABEL_25;
  }

  return a2;
}

void sub_1002CB028(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x13B13B13B13B13CLL)
    {
      operator new();
    }

    sub_10000FC84();
  }
}

void sub_1002CB224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_1001CFDE4(&a11);
  *(v11 + 8) = v12;
  sub_1001CFEC4(&a9);
  _Unwind_Resume(a1);
}

std::string *sub_1002CB244@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002CB278(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CB294()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002CB304()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

char *sub_1002CB374@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[23] < 0)
  {
    result = sub_100003228(a2, *result, *(result + 1));
  }

  else
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 2);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

double *sub_1002CB3D4(double *a1)
{
  v2 = sub_1002511A8();
  *a1 = v2 * v2;
  return a1;
}

void sub_1002CB408()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002CB478()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002CB4E8(uint64_t a1)
{
  sub_1000EC3E0(a1, &v2);
  wireless_diagnostics::google::protobuf::io::FileInputStream::FileInputStream(&v1, v2, -1);
  operator new();
}

void sub_1002CB5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, char a22)
{
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(&a22);
  sub_10002BB1C(v22);
  wireless_diagnostics::google::protobuf::io::FileInputStream::~FileInputStream(&a9);
  sub_1000ED500(&a21);
  _Unwind_Resume(a1);
}

void sub_1002CB728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, char a22)
{
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(&a22);
  wireless_diagnostics::google::protobuf::io::FileInputStream::~FileInputStream(&a9);
  sub_1000ED500(&a21);
  sub_10002BB1C(v22);
  _Unwind_Resume(a1);
}

void sub_1002CB778(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1002CB8B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_10002BB1C(v20);
    _Unwind_Resume(a1);
  }

  sub_10002BB1C(v20);
  _Unwind_Resume(a1);
}

void sub_1002CB930(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40[1] = 0;
  v41 = 0;
  v40[0] = 0;
  v4 = *a1;
  v5 = *(*a1 + 24);
  if (v5)
  {
    v6 = 0;
    v7 = *(v4 + 16);
    v8 = 8 * v5;
    do
    {
      while (1)
      {
        v9 = *v7;
        if (v6 < v41)
        {
          break;
        }

        v6 = sub_1002D07A8(v40, v9);
        v40[1] = v6;
        ++v7;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      sub_100327330(v6, v9);
      v6 = (v10 + 32);
      v40[1] = v6;
      ++v7;
      v8 -= 8;
    }

    while (v8);
LABEL_6:
    v4 = *a1;
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v11 = *(v4 + 48);
  v12 = *(v4 + 24);
  if (v11)
  {
    if (v11 != v12)
    {
      sub_1000474A4(v43, "");
      sub_1001F2AF4("These should be parallel arrays", &v45);
      sub_1000E661C(v43, &v45, 1);
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (v44 < 0)
      {
        operator delete(v43[0]);
      }

      sub_10003F5D0(&v42);
    }

    v13 = *(v4 + 40);
    v14 = &v13[v11];
    v15 = v38;
    do
    {
      while (1)
      {
        v16 = *v13;
        if (v15 >= v39)
        {
          break;
        }

        sub_1002D7200(v15, v16);
        v15 += 40;
        v38 = v15;
        if (++v13 == v14)
        {
          goto LABEL_22;
        }
      }

      v15 = sub_1002D0B60(&v37, v16);
      v38 = v15;
      ++v13;
    }

    while (v13 != v14);
  }

  else if (v12 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    do
    {
      if (v15 >= v39)
      {
        v15 = sub_1002D0920(&v37);
      }

      else
      {
        sub_1002D5AA8(v15);
        v15 += 40;
      }

      v38 = v15;
      ++v17;
    }

    while (v17 < *(*a1 + 24));
  }

LABEL_22:
  *v35 = *v40;
  v18 = v41;
  v40[1] = 0;
  v41 = 0;
  __p = v37;
  v33 = v15;
  v34 = v39;
  v39 = 0;
  v40[0] = 0;
  v36 = v18;
  v37 = 0;
  v38 = 0;
  sub_1002CCA84(a2, v35, &__p);
  v19 = __p;
  if (__p)
  {
    v20 = __p;
    if (v33 != __p)
    {
      v21 = v33 - 40;
      v22 = v33 - 40;
      v23 = (v33 - 40);
      do
      {
        v24 = *v23;
        v23 -= 5;
        (*v24)(v22);
        v21 -= 40;
        v25 = v22 == v19;
        v22 = v23;
      }

      while (!v25);
      v20 = __p;
    }

    v33 = v19;
    operator delete(v20);
  }

  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  v26 = v37;
  if (v37)
  {
    v27 = v37;
    if (v38 != v37)
    {
      v28 = v38 - 40;
      v29 = v38 - 40;
      v30 = (v38 - 40);
      do
      {
        v31 = *v30;
        v30 -= 5;
        (*v31)(v29);
        v28 -= 40;
        v25 = v29 == v26;
        v29 = v30;
      }

      while (!v25);
      v27 = v37;
    }

    v38 = v26;
    operator delete(v27);
  }

  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }
}

void sub_1002CBC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1002CBD18(&a16);
  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void **sub_1002CBD18(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 40;
      v6 = v3 - 40;
      v7 = v3 - 40;
      do
      {
        v8 = *v7;
        v7 -= 40;
        (*v8)(v6);
        v5 -= 40;
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

uint64_t sub_1002CBDC0(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, int a3)
{
  v5 = result;
  v12 = 0;
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || *v6 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
    if ((result & 1) == 0)
    {
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v10, "Cannot find header length in input stream");
      std::runtime_error::runtime_error(&v11, &v10);
      v11.__vftable = &off_100444698;
      sub_10010A984(v9);
    }
  }

  else
  {
    v12 = *v6;
    *(this + 1) = v6 + 1;
  }

  if (a3 == 1)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, v12);
    if ((result & 1) == 0)
    {
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v10, "Failed to skip header in input stream");
      sub_10010A984(v8);
    }
  }

  else if (!a3)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v12);
    sub_1002CC088(v5, this);
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
  }

  return result;
}

void sub_1002CBFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, std::underflow_error a15, int a16, __int16 a17, char a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error((v19 - 56));
  if (a19 < 0)
  {
    operator delete(a15.__vftable);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002CC088(wireless_diagnostics::google::protobuf::MessageLite **a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  result = wireless_diagnostics::google::protobuf::MessageLite::MergeFromCodedStream(*a1, a2);
  if ((result & 1) == 0)
  {
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v6, "Failed to deserialize TileHeader message");
    sub_10010A984(v5);
  }

  if ((*(a2 + 36) & 1) == 0)
  {
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v6, "Failed to consume entire message");
    sub_10010A984(v4);
  }

  return result;
}

void sub_1002CC1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::underflow_error::~underflow_error((v13 - 32));
  _Unwind_Resume(a1);
}

void sub_1002CC25C(std::runtime_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::runtime_error::runtime_error(&v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10.__vftable = &off_100446C68;
  v11 = off_100446C90;
  sub_1002CEE6C(&v16, &v10);
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

  sub_1002CEB8C();
}

void sub_1002CC580(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_1002CC5A8(std::underflow_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::underflow_error::~underflow_error(a1);
}

int *sub_1002CC63C(uint64_t *a1, uint64_t a2)
{
  if ((*(*a1 + 92) & 0x10) == 0)
  {
    sub_1003846E0(&v16, v13);
    sub_10003F5D0(&v16);
  }

  sub_1000EC3F8(a2, 1, 420, &v15);
  wireless_diagnostics::google::protobuf::io::FileOutputStream::FileOutputStream(v13, v15, -1);
  v3 = *a1;
  if ((wireless_diagnostics::google::protobuf::MessageLite::SerializeToZeroCopyStream() & 1) == 0)
  {
    __cxa_allocate_exception(0x40uLL);
    std::to_string(&v11, __val);
    v5 = std::string::insert(&v11, 0, "Failed to serialize tile header. errno=");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v12, &v16);
    sub_10010A984(v10);
  }

  if ((wireless_diagnostics::google::protobuf::io::FileOutputStream::Flush(v13) & 1) == 0)
  {
    __cxa_allocate_exception(0x40uLL);
    std::to_string(&v11, __val);
    v7 = std::string::insert(&v11, 0, "Failed to flush tile header. errno=");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v12, &v16);
    sub_10010A984(v9);
  }

  wireless_diagnostics::google::protobuf::io::FileOutputStream::~FileOutputStream(v13);
  return sub_1000ED500(&v15);
}

void sub_1002CC83C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CC858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::runtime_error a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a21);
  if (*(v22 - 41) < 0)
  {
    operator delete(*(v22 - 64));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  wireless_diagnostics::google::protobuf::io::FileOutputStream::~FileOutputStream(&a22);
  sub_1000ED500((v22 - 68));
  _Unwind_Resume(a1);
}

uint64_t sub_1002CC984(uint64_t a1)
{
  if ((*(*a1 + 92) & 0x10) == 0)
  {
    sub_1003846E0(__p, &v3);
    sub_10003F5D0(__p);
  }

  return *(*a1 + 80);
}

void sub_1002CCA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1002CCA2C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *(v2 + 92) = *(*result + 92) | 0x10;
  *(v2 + 80) = a2;
  return result;
}

uint64_t sub_1002CCA60(uint64_t a1)
{
  result = *(*a1 + 64);
  if (!result)
  {
    return *(qword_100471C60 + 64);
  }

  return result;
}

uint64_t sub_1002CCA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *a2;
  *(a1 + 56) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = *a3;
  *(a1 + 80) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = *(a1 + 48) - *(a1 + 40);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = v4 >> 5;
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    do
    {
      v9 = *(a1 + 40);
      if (v6 >= (*(a1 + 48) - v9) >> 5)
      {
        sub_1000BFF58();
      }

      v10 = (v9 + v5);
      v12 = v9 + v5 + 8;
      v11 = *(v9 + v5);
      if (v11 == v11 >> 31)
      {
        *&v17 = *v12;
        v13 = v11;
      }

      else
      {
        v14 = *v12;
        v18 = *(v12 + 16);
        v17 = v14;
        v13 = *v10;
        v11 = v13 >> 31;
      }

      v16 = v13 ^ v11;
      sub_1002D0D38(a1, &v16);
      ++v6;
      v5 += 32;
    }

    while (v8 != v6);
  }

  return a1;
}

void sub_1002CCBF4(_Unwind_Exception *a1)
{
  sub_1002CBD18(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  sub_1001F9AF8(v1);
  _Unwind_Resume(a1);
}

float sub_1002CCC24(void *a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v10 = 0.0;
  if (sub_1001CF958(a5))
  {
    return v10;
  }

  v11 = sub_1002D11E0(a1, a2);
  if (!v11)
  {
    if (!sub_1002D11E0(a3, a2))
    {
      return v10;
    }

    v19 = *(a4 + 24);
    v14 = *(a4 + 28);
    v10 = *(a4 + 16);
    v15 = (v19 - v14);
    if (v15 >= a5)
    {
      return v10;
    }

    v16 = *(a4 + 20);
    if ((v19 + v14) > a5)
    {
      goto LABEL_5;
    }

    return v16;
  }

  v12 = a1[8] + 40 * *(v11 + 12);
  v13 = *(v12 + 24);
  v14 = *(v12 + 28);
  v10 = *(v12 + 16);
  v15 = (v13 - v14);
  if (v15 < a5)
  {
    v16 = *(v12 + 20);
    if ((v13 + v14) > a5)
    {
LABEL_5:
      v17 = a5 - v15;
      return (v10 * (1.0 - (v17 / (v14 + v14)))) + (v16 * (v17 / (v14 + v14)));
    }

    return v16;
  }

  return v10;
}

double sub_1002CCD44(void *a1, uint64_t *a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a5 == 2)
  {
    v22 = *a2;
    v23 = a2[1];
    v12 = 0.0;
    if (*a2 != v23)
    {
      do
      {
        if (sub_1002D11E0(a1, v22))
        {
          v12 = v12 + 1.0;
        }

        v22 += 208;
      }

      while (v22 != v23);
    }
  }

  else if (a5 == 1)
  {
    return (0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 4));
  }

  else
  {
    if (a5)
    {
      __cxa_allocate_exception(0x40uLL);
      std::to_string(&v29, a5);
      v26 = std::string::insert(&v29, 0, "Unrecognized coarse indoor weight calculation type ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v30.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v30.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v31, &v30);
      v31.__vftable = &off_1004336A0;
      sub_10010A984(v28);
    }

    v8 = a2[1];
    if (*a2 == v8)
    {
      v12 = 0.0;
    }

    else
    {
      v11 = *a2 + 40;
      v12 = 0.0;
      if (a6)
      {
        do
        {
          v17 = *(v11 - 8);
          if (v17 == v17 >> 31)
          {
            v14 = *(v11 + 32);
          }

          else
          {
            if (v17 >= 0)
            {
              v13 = v11;
            }

            else
            {
              v13 = *v11;
            }

            v14 = *(v13 + 92);
          }

          v15 = sub_1002CCC24(a1, v11 - 40, a3, a4, v14);
          v12 = v12 + v15;
          LOWORD(v30.__r_.__value_.__l.__data_) = llround(v15 * 10.0);
          sub_1001C46E8(a6 + 56, &v30);
          v16 = v11 + 168;
          v11 += 208;
        }

        while (v16 != v8);
      }

      else
      {
        do
        {
          v20 = *(v11 - 8);
          if (v20 == v20 >> 31)
          {
            v18 = *(v11 + 32);
          }

          else
          {
            if (v20 >= 0)
            {
              v21 = v11;
            }

            else
            {
              v21 = *v11;
            }

            v18 = *(v21 + 92);
          }

          v12 = v12 + sub_1002CCC24(a1, v11 - 40, a3, a4, v18);
          v19 = v11 + 168;
          v11 += 208;
        }

        while (v19 != v8);
      }
    }

    if (a6)
    {
      sub_1001279E0(a6, v12);
    }
  }

  return v12;
}

void sub_1002CCFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::runtime_error a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a25);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1002CD070(uint64_t a1)
{
  v5 = a1;
  v6 = 0;
  v7 = 0;
  memset(v8, 0, 14);
  v9 = xmmword_1003C74F0;
  v10 = 0;
  v11 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v12 = 0;
  v13 = 0;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(&v5);
  v4 = 0;
  if (v6 >= v7 || (v1 = *v6, (v1 & 0x80000000) != 0))
  {
    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(&v5, &v4))
    {
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v3, "error deserialzing ap rssi map");
      v3.__vftable = &off_1004449A8;
      sub_10010A984(v2);
    }

    v1 = v4;
  }

  else
  {
    v4 = *v6++;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(&v5, v1);
  operator new();
}

void sub_1002CD2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, std::runtime_error a18, uint64_t a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(&a20);
  _Unwind_Resume(a1);
}

void sub_1002CD2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::runtime_error a18, uint64_t a19, char a20)
{
  std::runtime_error::~runtime_error(&a18);
  __cxa_free_exception(v20);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(&a20);
  _Unwind_Resume(a1);
}

void sub_1002CD314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, std::runtime_error a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a13);
  sub_10002BB1C(&a17);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(&a20);
  _Unwind_Resume(a1);
}

void sub_1002CD388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::__shared_weak_count::~__shared_weak_count(v21);
  operator delete(v23);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(&a21);
  _Unwind_Resume(a1);
}

void sub_1002CD3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(va);
  _Unwind_Resume(a1);
}

void sub_1002CD3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(va);
  _Unwind_Resume(a1);
}

void sub_1002CD3D0(std::runtime_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::runtime_error::runtime_error(&v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10.__vftable = &off_100446D58;
  v11 = off_100446D80;
  sub_1002CFD10(&v16, &v10);
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

  sub_1002CFA30();
}

void sub_1002CD6F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_1002CD71C(std::runtime_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

void sub_1002CD7B0(uint64_t a1, uint64_t a2, int *a3)
{
  if ((*(*a1 + 81) & 2) != 0)
  {
    a3 = (*a1 + 72);
  }

  v4 = *a3;
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      operator new();
    }

    if (v4 == 5)
    {
      operator new();
    }

    if (v4 != 101)
    {
LABEL_8:
      __cxa_allocate_exception(8uLL);
      operator new();
    }
  }

  else
  {
    if (v4 == 1)
    {
      operator new();
    }

    if (v4 == 2)
    {
      operator new();
    }

    if (v4 != 3)
    {
      goto LABEL_8;
    }
  }

  operator new();
}

void sub_1002CD9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v15)
    {
LABEL_6:
      operator delete();
    }
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_1002CDA94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100255200(a2);
  v5 = nullsub_35(a2);

  sub_1002CD7B0(a1, v4, v5);
}

uint64_t sub_1002CDAF8(uint64_t a1)
{
  result = *(*a1 + 16);
  if (!result)
  {
    return *(qword_100471C58 + 16);
  }

  return result;
}

uint64_t sub_1002CDB40(uint64_t a1)
{
  result = *(*a1 + 40);
  if (!result)
  {
    return *(qword_100471C58 + 40);
  }

  return result;
}

uint64_t sub_1002CDB64(uint64_t a1)
{
  result = *(*a1 + 48);
  if (!result)
  {
    return *(qword_100471C58 + 48);
  }

  return result;
}

uint64_t sub_1002CDB88(uint64_t a1)
{
  result = *(*a1 + 64);
  if (!result)
  {
    return *(qword_100471C58 + 64);
  }

  return result;
}

uint64_t sub_1002CDBAC(wireless_diagnostics::google::protobuf::MessageLite **a1, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  v4 = (*(**a1 + 72))(*a1);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, v4);
  result = wireless_diagnostics::google::protobuf::MessageLite::SerializeToCodedStream(*a1, a2);
  if ((result & 1) == 0)
  {
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v7, "Failed to seralize map to output stream");
    sub_10010A984(v6);
  }

  return result;
}

void sub_1002CDC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, std::runtime_error a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a13);
  _Unwind_Resume(a1);
}

void sub_1002CDCAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::runtime_error a13)
{
  std::runtime_error::~runtime_error(&a13);
  __cxa_free_exception(v13);
  _Unwind_Resume(a1);
}

void sub_1002CDCDC(_DWORD *a1, uint64_t a2)
{
  sub_1000EC3E0(a2, a1);
  v3 = *a1;
  operator new();
}

void sub_1002CDDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(&a11);
  sub_10002BB1C(&a9);
  sub_10002BB1C(v12);
  v14 = *(v11 + 8);
  *(v11 + 8) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    sub_1000ED500(v11);
    _Unwind_Resume(a1);
  }

  sub_1000ED500(v11);
  _Unwind_Resume(a1);
}

__n128 sub_1002CDE84(_DWORD *a1, __n128 *a2)
{
  v3 = sub_1000EC510(a1);
  *(v3 + 1) = 0;
  v3[4] = -1;
  result = *a2;
  *(v3 + 6) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

int *sub_1002CDEC0(uint64_t a1, uint64_t a2)
{
  sub_1000EC3F8(a2, 1, 420, &v21);
  wireless_diagnostics::google::protobuf::io::FileOutputStream::FileOutputStream(v19, v21, -1);
  if (*(a1 + 24))
  {
    sub_1002CE368(a1, v19);
  }

  else
  {
    v18 = 0;
    v17 = 0;
    while ((*(**(a1 + 8) + 16))(*(a1 + 8), &v18, &v17))
    {
      v3 = v17;
      if (v17)
      {
        v4 = 0;
        v5 = v18;
        v27 = 0;
        v26 = 0;
        do
        {
          if ((wireless_diagnostics::google::protobuf::io::FileOutputStream::Next(v19, &v27, &v26) & 1) == 0)
          {
            __cxa_allocate_exception(0x40uLL);
            std::to_string(&v23, __val);
            v9 = std::string::insert(&v23, 0, "Failed to get output buffer to save tile data: ");
            v10 = *&v9->__r_.__value_.__l.__data_;
            v24.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
            *&v24.__r_.__value_.__l.__data_ = v10;
            v9->__r_.__value_.__l.__size_ = 0;
            v9->__r_.__value_.__r.__words[2] = 0;
            v9->__r_.__value_.__r.__words[0] = 0;
            std::runtime_error::runtime_error(&v25, &v24);
            sub_10010A984(&v22);
          }

          if (v26 >= v3)
          {
            v6 = v3;
          }

          else
          {
            v6 = v26;
          }

          memcpy(v27, (v5 + v4), v6);
          wireless_diagnostics::google::protobuf::io::FileOutputStream::BackUp(v19, v26 - v6);
          v4 += v6;
          v3 -= v6;
        }

        while (v3);
      }
    }

    v7 = *(a1 + 8);
    if (v7[6])
    {
      __cxa_allocate_exception(0x40uLL);
      std::to_string(&v23, *(*(a1 + 8) + 24));
      v11 = std::string::insert(&v23, 0, "Failed to read tile data: ");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v24.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v24.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v22, &v24);
      sub_10010A984(v16);
    }

    *(a1 + 8) = 0;
    (*(*v7 + 8))(v7);
    sub_1000ED2C4(a1);
    if ((wireless_diagnostics::google::protobuf::io::FileOutputStream::Flush(v19) & 1) == 0)
    {
      __cxa_allocate_exception(0x40uLL);
      std::to_string(&v23, __val);
      v13 = std::string::insert(&v23, 0, "Failed to write tile data: ");
      v14 = *&v13->__r_.__value_.__l.__data_;
      v24.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v24.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v22, &v24);
      sub_10010A984(v15);
    }
  }

  wireless_diagnostics::google::protobuf::io::FileOutputStream::~FileOutputStream(v19);
  return sub_1000ED500(&v21);
}

void sub_1002CE228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29, std::runtime_error a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a30);
  if (*(v30 - 89) < 0)
  {
    operator delete(*(v30 - 112));
  }

  if (*(v30 - 113) < 0)
  {
    operator delete(*(v30 - 136));
  }

  wireless_diagnostics::google::protobuf::io::FileOutputStream::~FileOutputStream(&a18);
  sub_1000ED500(&a29);
  _Unwind_Resume(a1);
}

void sub_1002CE368(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v19 = 0;
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream();
    while ((*(**(a1 + 24) + 24))(*(a1 + 24)))
    {
      (*(**(a1 + 24) + 32))(&v15);
      sub_1002CDBAC(&v15, &v17);
      if (v18 == 1)
      {
        sub_1000474A4(&v21, "");
        sub_1002B21DC("Trouble saving map ", &v23);
        sub_10024C4BC(&v19, &v24);
        sub_1000E661C(&v21, &v23, 2);
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
          if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_13;
          }

LABEL_10:
          if (v22 < 0)
          {
LABEL_14:
            operator delete(v21.__vftable);
          }
        }

        else
        {
          if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

LABEL_13:
          operator delete(v23.__r_.__value_.__l.__data_);
          if (v22 < 0)
          {
            goto LABEL_14;
          }
        }

        sub_10003F5D0(__p);
      }

      ++v19;
      v4 = v16;
      if (v16)
      {
        if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
        }
      }
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(&v17);
  }

  else
  {
    __p[0] = 0;
    LODWORD(v15) = 0;
    if ((*(**(a1 + 8) + 16))(*(a1 + 8), __p, &v15))
    {
      do
      {
        v17.__r_.__value_.__r.__words[0] = 0;
        LODWORD(v21.__vftable) = 0;
        v5 = v15;
        if (v15)
        {
          v6 = 0;
          v7 = 0;
          v8 = __p[0];
          do
          {
            if (!v7)
            {
              if (!(*(*a2 + 16))(a2, &v17, &v21))
              {
                __cxa_allocate_exception(0x40uLL);
                std::runtime_error::runtime_error(&v23, "Failed get output buffer for serialization");
                sub_10010A984(v14);
              }

              v7 = v21.__vftable;
              v5 = v15;
              v6 = v17.__r_.__value_.__r.__words[0];
            }

            if (v7 >= v5)
            {
              v9 = v5;
            }

            else
            {
              v9 = v7;
            }

            memcpy(v6, v8, v9);
            v8 += v9;
            v6 = (v17.__r_.__value_.__r.__words[0] + v9);
            v17.__r_.__value_.__r.__words[0] = v6;
            v7 = LODWORD(v21.__vftable) - v9;
            LODWORD(v21.__vftable) -= v9;
            v5 = v15 - v9;
            LODWORD(v15) = v5;
          }

          while (v5);
        }

        (*(*a2 + 24))(a2);
      }

      while (((*(**(a1 + 8) + 16))(*(a1 + 8), __p, &v15) & 1) != 0);
    }

    v10 = *(a1 + 8);
    if (v10[6])
    {
      __cxa_allocate_exception(0x40uLL);
      std::to_string(&v17, *(*(a1 + 8) + 24));
      v11 = std::string::insert(&v17, 0, "Failed serialize. errno=");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v23.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v23.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v21, &v23);
      sub_10010A984(v13);
    }

    *(a1 + 8) = 0;
    (*(*v10 + 8))(v10);
    sub_1000ED2C4(a1);
  }
}

void sub_1002CE804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, std::runtime_error a32, int a33, __int16 a34, char a35, char a36)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  sub_10002BB1C(&a16);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(&a18);
  _Unwind_Resume(a1);
}

void sub_1002CE960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002CE98C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 16))();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1002CE9C4(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &off_100446BC8;
  *(a1 + 16) = off_100446C00;
  *(a1 + 56) = &off_100446C38;
  return a1;
}

void sub_1002CEAF8(std::underflow_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::underflow_error::~underflow_error(a1);
}

void sub_1002CEE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_1002CEE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002CEE6C(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_100446BC8;
  *(a1 + 16) = off_100446C00;
  *(a1 + 56) = &off_100446C38;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_1002CEFC0(std::underflow_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::underflow_error::~underflow_error(a1);
}

void sub_1002CF054(std::underflow_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::underflow_error::~underflow_error(this);

  operator delete();
}

void sub_1002CF174(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1002CE9C4(exception, a1);
}

void sub_1002CF1D0(std::underflow_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::underflow_error::~underflow_error(a1 - 1);
}

void sub_1002CF258(std::underflow_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::underflow_error::~underflow_error(a1 - 1);

  operator delete();
}

void sub_1002CF388(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1002CE9C4(exception, a1 + v2);
}

void sub_1002CF3FC(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::underflow_error::~underflow_error(v1);
}

void sub_1002CF49C(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::underflow_error::~underflow_error(v1);

  operator delete();
}

void sub_1002CF550(std::underflow_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::underflow_error::~underflow_error(this);

  operator delete();
}

void sub_1002CF5F0(std::underflow_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::underflow_error::~underflow_error(a1 - 1);
}

void sub_1002CF678(std::underflow_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::underflow_error::~underflow_error(a1 - 1);

  operator delete();
}

uint64_t sub_1002CF714(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_100446BC8;
  *(a1 + 16) = off_100446C00;
  *(a1 + 56) = &off_100446C38;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

uint64_t sub_1002CF868(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  std::runtime_error::runtime_error(a1, a2)->__vftable = &off_1004449A8;
  v4 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &off_100446CB8;
  *(a1 + 16) = off_100446CF0;
  *(a1 + 56) = &off_100446D28;
  return a1;
}

void sub_1002CF99C(std::runtime_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

void sub_1002CFCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_1002CFCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002CFD10(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_1004449A8;
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_100446CB8;
  *(a1 + 16) = off_100446CF0;
  *(a1 + 56) = &off_100446D28;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_1002CFE64(std::runtime_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

void sub_1002CFEF8(std::runtime_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_1002D0018(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1002CF868(exception, a1);
}

void sub_1002D0074(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1002D00FC(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

void sub_1002D022C(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1002CF868(exception, a1 + v2);
}

void sub_1002D02A0(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(v1);
}

void sub_1002D0340(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(v1);

  operator delete();
}

void sub_1002D03F4(std::runtime_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_1002D0494(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1002D051C(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

uint64_t sub_1002D05B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_1004449A8;
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_100446CB8;
  *(a1 + 16) = off_100446CF0;
  *(a1 + 56) = &off_100446D28;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_1002D072C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100446DA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002D07A8(uint64_t *a1, uint64_t a2)
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

  sub_100327330(32 * v2, a2);
  v7 = *a1;
  v8 = a1[1];
  v9 = 32 * v2 - (v8 - *a1);
  if (v8 != *a1)
  {
    v10 = -32 * ((v8 - *a1) >> 5) + 32 * v2 + 8;
    do
    {
      while (1)
      {
        v11 = v7 + 2;
        if (*v7 != *v7 >> 31)
        {
          break;
        }

        *v10 = *v11;
        *(v10 - 8) = 0;
        v7 += 8;
        v10 += 32;
        if (v7 == v8)
        {
          goto LABEL_15;
        }
      }

      v12 = *v11;
      *(v10 + 16) = v7[6];
      *v10 = v12;
      v13 = *v7;
      v7 += 8;
      *(v10 - 8) = v13 ^ (v13 >> 31);
      v10 += 32;
    }

    while (v7 != v8);
LABEL_15:
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = 32 * v2 + 32;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return 32 * v2 + 32;
}

void sub_1002D0908(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002D0920(uint64_t *a1)
{
  v1 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0x666666666666666)
  {
    sub_10000FC84();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v4 = 0x666666666666666;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x666666666666666)
    {
      operator new();
    }

    sub_10000D444();
  }

  v17 = 8 * ((a1[1] - *a1) >> 3);
  sub_1002D5AA8(v17);
  v5 = 40 * v1 + 40;
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1 - v7;
  v9 = v17 + v8;
  if (*a1 != v7)
  {
    v10 = 0;
    v11 = *a1;
    v12 = v17 + v8;
    do
    {
      sub_1002D7200(v12, v11);
      v11 += 40;
      v12 += 40;
      v10 -= 40;
    }

    while (v11 != v7);
    v13 = v6;
    v14 = v6;
    do
    {
      v15 = *v14;
      v14 += 5;
      (*v15)(v6);
      v13 += 5;
      v6 = v14;
    }

    while (v14 != v7);
    v6 = *a1;
  }

  *a1 = v9;
  a1[1] = v5;
  a1[2] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return v5;
}

void sub_1002D0AB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002D0AF0(va);
  _Unwind_Resume(a1);
}

void sub_1002D0ACC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100386B10();
  }

  sub_1002D0AF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D0AF0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 40);
    *(a1 + 16) = i - 40;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1002D0B60(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_10000FC84();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_10000D444();
  }

  v18 = 8 * ((a1[1] - *a1) >> 3);
  sub_1002D7200(v18, a2);
  v6 = 40 * v2 + 40;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v18 + v9;
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v18 + v9;
    do
    {
      sub_1002D7200(v13, v12);
      v12 += 40;
      v13 += 40;
      v11 -= 40;
    }

    while (v12 != v8);
    v14 = v7;
    v15 = v7;
    do
    {
      v16 = *v15;
      v15 += 5;
      (*v16)(v7);
      v14 += 5;
      v7 = v15;
    }

    while (v15 != v8);
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

void sub_1002D0D00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002D0AF0(va);
  _Unwind_Resume(a1);
}

void sub_1002D0D14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100386B10();
  }

  sub_1002D0AF0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002D0D38(void *a1, uint64_t a2)
{
  v26 = &v25;
  v4 = a2 + 8;
  if (*a2 == *a2 >> 31)
  {
    v5 = *v4;
    v6 = a1[1];
    if (!*&v6)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v5 = sub_1001FA420(&v26, (a2 + 8));
    v6 = a1[1];
    if (!*&v6)
    {
      goto LABEL_58;
    }
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_58:
    operator new();
  }

  v11 = *a2;
  v12 = (v11 >> 31) ^ v11;
  v13 = v11 >> 31 == v11;
  v14 = *(a2 + 8);
  if (v7.u32[0] <= 1uLL)
  {
    v15 = *&v6 - 1;
    if (v13)
    {
      while (1)
      {
        v16 = v10[1];
        if (v16 == v5)
        {
          if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12 && v10[3] == v14)
          {
            return v10;
          }
        }

        else if ((v16 & v15) != v8)
        {
          goto LABEL_58;
        }

        v10 = *v10;
        if (!v10)
        {
          goto LABEL_58;
        }
      }
    }

    while (1)
    {
      v17 = v10[1];
      if (v17 == v5)
      {
        if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12)
        {
          v18 = v10[3] == *v4 && v10[4] == *(v4 + 8);
          if (v18 && *(v10 + 10) == *(v4 + 16))
          {
            return v10;
          }
        }
      }

      else if ((v17 & v15) != v8)
      {
        goto LABEL_58;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_58;
      }
    }
  }

  if (v13)
  {
    while (1)
    {
      v20 = v10[1];
      if (v20 == v5)
      {
        if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12 && v10[3] == v14)
        {
          return v10;
        }
      }

      else
      {
        if (v20 >= *&v6)
        {
          v20 %= *&v6;
        }

        if (v20 != v8)
        {
          goto LABEL_58;
        }
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_58;
      }
    }
  }

  while (1)
  {
    v21 = v10[1];
    if (v21 == v5)
    {
      break;
    }

    if (v21 >= *&v6)
    {
      v21 %= *&v6;
    }

    if (v21 != v8)
    {
      goto LABEL_58;
    }

LABEL_44:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_58;
    }
  }

  if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) != v12)
  {
    goto LABEL_44;
  }

  v22 = v10[3] == *v4 && v10[4] == *(v4 + 8);
  if (!v22 || *(v10 + 10) != *(v4 + 16))
  {
    goto LABEL_44;
  }

  return v10;
}

uint64_t *sub_1002D11E0(void *a1, uint64_t a2)
{
  v25 = &v24;
  v4 = a2 + 8;
  if (*a2 != *a2 >> 31)
  {
    v5 = sub_1001FA420(&v25, (a2 + 8));
    v6 = a1[1];
    if (v6)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v5 = *v4;
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

LABEL_3:
  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v8);
  if (!v10)
  {
    return v10;
  }

  v10 = *v10;
  if (!v10)
  {
    return v10;
  }

  v11 = *a2;
  v12 = (v11 >> 31) ^ v11;
  v13 = v11 >> 31 == v11;
  v14 = *(a2 + 8);
  if (v7.u32[0] <= 1uLL)
  {
    v15 = *&v6 - 1;
    if (v13)
    {
      while (1)
      {
        v16 = v10[1];
        if (v5 == v16)
        {
          if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12 && v10[3] == v14)
          {
            return v10;
          }
        }

        else if ((v16 & v15) != v8)
        {
          return 0;
        }

        v10 = *v10;
        if (!v10)
        {
          return v10;
        }
      }
    }

    while (1)
    {
      v17 = v10[1];
      if (v5 == v17)
      {
        if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12)
        {
          v18 = v10[3] == *v4 && v10[4] == *(v4 + 8);
          if (v18 && *(v10 + 10) == *(v4 + 16))
          {
            return v10;
          }
        }
      }

      else if ((v17 & v15) != v8)
      {
        return 0;
      }

      v10 = *v10;
      if (!v10)
      {
        return v10;
      }
    }
  }

  if (v13)
  {
    while (1)
    {
      v20 = v10[1];
      if (v5 == v20)
      {
        if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12 && v10[3] == v14)
        {
          return v10;
        }
      }

      else
      {
        if (v20 >= *&v6)
        {
          v20 %= *&v6;
        }

        if (v20 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
      if (!v10)
      {
        return v10;
      }
    }
  }

  while (1)
  {
    v21 = v10[1];
    if (v5 != v21)
    {
      break;
    }

    if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12)
    {
      v22 = v10[3] == *v4 && v10[4] == *(v4 + 8);
      if (v22 && *(v10 + 10) == *(v4 + 16))
      {
        return v10;
      }
    }

LABEL_44:
    v10 = *v10;
    if (!v10)
    {
      return v10;
    }
  }

  if (v21 >= *&v6)
  {
    v21 %= *&v6;
  }

  if (v21 == v8)
  {
    goto LABEL_44;
  }

  return 0;
}

void sub_1002D1470(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100446DF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002D1500()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002D1570()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002D15E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  (*(*a1 + 24))(&v33, *(a2 + 8), *(a2 + 16));
  v23 = vcvtpd_s64_f64(a4 / sub_1000BCD5C(&v33));
  if (v23 >= 1)
  {
    v8 = 1;
    do
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = off_10043DB08;
      *(a3 + 24) &= 0xFCu;
      sub_1000BD760(&v33, v8, &__p);
      v10 = __p;
      v9 = v32;
      v11 = 1.79769313e308;
      if (__p == v32)
      {
        if (!__p)
        {
          goto LABEL_5;
        }
      }

      else
      {
        do
        {
          v12 = v10[1];
          v28 = *v10;
          v29 = v12;
          if (v12)
          {
            atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
          }

          v30 = v10[2];
          v24[0] = sub_1000BCE34(&v28);
          v24[1] = v13;
          v24[2] = v14;
          v24[3] = v15;
          sub_10031CC24(v24, a2, v25, 0.01);
          if ((*(*a1 + 16))(a1, v26, v27))
          {
            v16 = hypot(v26 - *(a2 + 8), v27 - *(a2 + 16));
            if (v11 > v16)
            {
              v17 = v16;
              sub_10012A358(a3, v25);
              v11 = v17;
            }
          }

          nullsub_75(v25);
          v18 = v29;
          if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v18->__on_zero_shared)(v18);
            std::__shared_weak_count::__release_weak(v18);
          }

          v10 += 3;
        }

        while (v10 != v9);
        v10 = __p;
        if (!__p)
        {
LABEL_5:
          if (v11 <= a4)
          {
            goto LABEL_28;
          }

          goto LABEL_25;
        }
      }

      v19 = v32;
      if (v32 == v10)
      {
        v32 = v10;
        operator delete(v10);
        if (v11 <= a4)
        {
          goto LABEL_28;
        }
      }

      else
      {
        do
        {
          v20 = *(v19 - 2);
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
          }

          v19 -= 3;
        }

        while (v19 != v10);
        v32 = v10;
        operator delete(__p);
        if (v11 <= a4)
        {
          goto LABEL_28;
        }
      }

LABEL_25:
      nullsub_75(a3);
    }

    while (v8++ != v23);
  }

  *a3 = off_10043DB08;
  *(a3 + 24) &= 0xFCu;
  *(a3 + 8) = vdupq_n_s64(0x7FF4000000000000uLL);
LABEL_28:
  v22 = v34;
  if (v34)
  {
    if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }
}

void sub_1002D1914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1002D1928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  nullsub_75(v17);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1002D1944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  va_copy(va3, va2);
  v18 = va_arg(va3, void *);
  v20 = va_arg(va3, void);
  v21 = va_arg(va3, void);
  nullsub_75(va);
  sub_10002BB1C(va1);
  sub_1000BD6AC(va2);
  nullsub_75(v7);
  sub_10002BB1C(va3);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D1984(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if (a2 <= a3 && a4 <= a5)
  {
    (*(*a1 + 40))(&v6, a1);
    sub_1000C0ECC();
  }

  return 1;
}

void sub_1002D1C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  sub_10002BB1C(va2);
  sub_10002BB1C(va1);
  sub_10002BB1C(va);
  sub_10002BB1C(va3);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D1CD0(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 16))(a1, *(a2 + 8), *(a2 + 16));
  if ((v4 & 0x100) == 0)
  {
    return 1;
  }

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(&v10, a1);
  v6 = v12;
  if (v10 == 1)
  {
    nullsub_78(&v11);
  }

  (*(*a1 + 40))(&v10, a1);
  v7 = v13;
  if (v10 == 1)
  {
    nullsub_78(&v11);
  }

  (*(*a1 + 24))(&v10, a1, *(a2 + 8), *(a2 + 16));
  if (sub_1002D1984(a1, 0, v12, v13, v13) & 1) != 0 || (sub_1002D1984(a1, v12, v7 - 1, v13, v13) & 1) != 0 || (sub_1002D1984(a1, v12, v12, 0, v13))
  {
    result = 1;
  }

  else
  {
    result = sub_1002D1984(a1, v12, v12, v13, v6 - 1);
  }

  v8 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      return v9;
    }
  }

  return result;
}

void sub_1002D1EFC(void *a1, uint64_t a2)
{
  *a1 = off_100446E40;
  sub_1002E9738((a1 + 1), a2);
  v3 = *(a2 + 16);
  if (!v3)
  {
    v3 = *(qword_100471C90 + 16);
  }

  sub_1002C64C0(v3, v4);
  sub_1000C0ECC();
}

void sub_1002D1FC0(_Unwind_Exception *a1)
{
  sub_10002BB1C(v2);
  sub_1002E97E8((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1002D1FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nullsub_78(va);
  sub_1002E97E8((v3 + 8));
  _Unwind_Resume(a1);
}

double sub_1002D2010@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    v3 = *(qword_100471C90 + 16);
  }

  sub_1002C64C0(v3, v5);
  *a2 = 0;
  sub_10012E1A4((a2 + 8), v5);
  *a2 = 1;
  *&result = nullsub_78(v5).n128_u64[0];
  return result;
}

uint64_t sub_1002D20AC(uint64_t a1, double a2, double a3)
{
  v11 = 0.0;
  v12 = 0.0;
  sub_10031DB38(*(a1 + 56), &v12, &v11, a2, a3);
  v9 = vcvtmd_s64_f64(v11 + 0.5);
  v10 = vcvtmd_s64_f64(v12 + 0.5);
  v4 = sub_10031C178((a1 + 72), &v10, &v9);
  if (v4 == -1)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 + 7;
  }

  v7 = *(a1 + 32);
  v8 = v6 >> 3;
  if (*(v7 + 23) < 0)
  {
    v7 = *v7;
  }

  return (*(v7 + v8) >> (v4 & 7)) & 1 | 0x100u;
}

void sub_1002D2180(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v10 = v6;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a1 + 56);
  }

  v15 = 0.0;
  v14 = 0.0;
  sub_10031DB38(v6, &v15, &v14, a3, a4);
  v12 = vcvtmd_s64_f64(v14 + 0.5);
  v13 = vcvtmd_s64_f64(v15 + 0.5);
  v8 = sub_10031C178((a1 + 72), &v13, &v12);
  sub_1000BCCF4(a2, &v10, a1 + 72, v8);
  v9 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void sub_1002D227C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D2298(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  if (((*(*a1 + 48))(a1) & 1) == 0 && (*(a4 + 36) & 1) != 0 || (v16 = *(a2 + 49), v16 != 1))
  {
    v47 = 0.0;
    v48 = 0.0;
    sub_10031DB38(*(a1 + 56), &v48, &v47, a5, a6);
    v45 = vcvtmd_s64_f64(v47 + 0.5);
    v46 = vcvtmd_s64_f64(v48 + 0.5);
    v18 = sub_10031C178((a1 + 72), &v46, &v45);
    v47 = 0.0;
    v48 = 0.0;
    sub_10031DB38(*(a1 + 56), &v48, &v47, a7, a8);
    v45 = vcvtmd_s64_f64(v47 + 0.5);
    v46 = vcvtmd_s64_f64(v48 + 0.5);
    v19 = sub_10031C178((a1 + 72), &v46, &v45);
    if (v18 == -1)
    {
      goto LABEL_19;
    }

    v20 = v19;
    if ((*(**(a2 + 56) + 72))(*(a2 + 56)) == 1 && v20 == -1)
    {
      goto LABEL_19;
    }

    if (v18 != v20)
    {
      v22 = a8 - a6;
      v23 = hypot(a7 - a5, a8 - a6);
      v24 = *(*(a1 + 56) + 64);
      v43 = v23;
      v25 = vcvtpd_s64_f64(v23 * *(a4 + 32) / v24);
      v26 = (*(*a1 + 16))(a1, a5, a6);
      v44 = a7 - a5;
      if (v25 >= 1)
      {
        v27 = (a7 - a5) / v25;
        v28 = v22 / v25;
        while ((v26 & 1) != 0)
        {
          a5 = v27 + a5;
          a6 = v28 + a6;
          v26 = (*(*a1 + 16))(a1, a5, a6);
          if (!--v25)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_18;
      }

LABEL_15:
      if ((v26 & 1) == 0)
      {
LABEL_18:
        if ((*(**(a2 + 56) + 72))(*(a2 + 56)) == 1)
        {
LABEL_19:
          v16 = 0;
          v17 = 0;
          return v17 | (v16 << 8);
        }

        if (*(a4 + 24) < 1)
        {
LABEL_32:
          v40 = *(a2 + 32);
          v41 = (*(**a3 + 24))(-*(a4 + 28), *(a4 + 28));
          v17 = 0;
          *(a2 + 32) = v41 + *(a2 + 32);
          v16 = 1;
          return v17 | (v16 << 8);
        }

        v30 = -v22 / v43;
        v31 = 1;
        v32 = v44 / v43;
        while (1)
        {
          v33 = (*(**a3 + 80))(*a3, 2);
          v34 = (v33 & 1) != 0 ? 1 : -1;
          v35 = v24 * (v34 * v31);
          v36 = a5 + v30 * v35;
          v37 = a6 + v32 * v35;
          if ((*(*a1 + 16))(a1, v36, v37))
          {
            break;
          }

          v34 = (v33 & 1) != 0 ? -1 : 1;
          v38 = v24 * (v34 * v31);
          v36 = a5 + v30 * v38;
          v37 = a6 + v32 * v38;
          if ((*(*a1 + 16))(a1, v36, v37))
          {
            break;
          }

          if (v31++ >= *(a4 + 24))
          {
            goto LABEL_32;
          }
        }

        v42 = *(a2 + 32);
        *(a2 + 32) = v42 + (*(**a3 + 24))(0.0, *(a4 + 28)) * v34;
        *(a2 + 16) = v36;
        *(a2 + 24) = v37;
LABEL_17:
        v16 = 1;
        v17 = 1;
        return v17 | (v16 << 8);
      }
    }

    *(a2 + 16) = a7;
    *(a2 + 24) = a8;
    goto LABEL_17;
  }

  *(a2 + 16) = a7;
  *(a2 + 24) = a8;
  v17 = 1;
  return v17 | (v16 << 8);
}

void *sub_1002D272C(void *a1)
{
  *a1 = off_100446E40;
  v1 = a1[8];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  v3 = a1;
  sub_1002E97E8(a1 + 1);
  return v3;
}

void sub_1002D27C4(void *a1)
{
  *a1 = off_100446E40;
  v1 = a1[8];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  sub_1002E97E8(a1 + 1);

  operator delete();
}

void sub_1002D287C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002D28EC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002D295C()
{
  v0 = sub_1002D2BA0();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_1002D2B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D2B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D2B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D2BA0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045D288 & 1) == 0)
  {
    byte_10045D288 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/math.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x17protobuf/gen/math.proto\x12\nproto.math\x88\x01\n\x10ObservationStats\x12\x15\n\nsumWeights\x18\x01 \x02(\x01:\x010\x12\x0E\n\x03sum\x18\x02 \x02(\x01:\x010\x12\x15\n\nsumSquared\x18\x03 \x02(\x01:\x010\x12\x1C\n\x11sumSquaredWeights\x18\x04 \x02(\x01:\x010\x12\v\n\x03min\x18\x05 \x01(\x01\x12\v\n\x03max\x18\x06 \x01(\x01f\nLinearSaturationFunctionParameters\x12\x10\n\x05slope\x18\x01 \x01(\x01:\x011\x12\x14\n\tintercept\x18\x02 \x01(\x01:\x010\x12\v\n\x03max\x18\x03 \x01(\x01\x12\v\n\x03min\x18\x04 \x01(\x01B\x1D\n\x1Bcom.apple.indoor.proto.math", 0x137, v4);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_1002D2D20()
{
  if (qword_100471C08)
  {
    (*(*qword_100471C08 + 8))(qword_100471C08);
  }

  if (qword_10045D2A0)
  {
    (*(*qword_10045D2A0 + 8))(qword_10045D2A0);
  }

  if (qword_100471C10)
  {
    (*(*qword_100471C10 + 8))(qword_100471C10);
  }

  result = qword_10045D2B0;
  if (qword_10045D2B0)
  {
    v1 = *(*qword_10045D2B0 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1002D2E08()
{
  v0 = qword_10045D2B8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v3[1] = sub_1002D295C;
    v4 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  if (!qword_100471C08)
  {
    (sub_1002D2BA0)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471C10)
  {
    sub_1002D2BA0(v1);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1002D2EEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D2F00(uint64_t a1)
{
  *a1 = off_100446EB8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

void *sub_1002D2F68(void *a1)
{
  *a1 = off_100446F68;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[5] = 0;
  a1[6] = 0;
  a1[2] = 0x3FF0000000000000;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_1002D2FD0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 68);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 68))
  {
    v7 = *(a2 + 16);
    *(a1 + 68) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 68);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 68) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 68) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = *(a2 + 32);
  *(a1 + 68) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 48);
    *(a1 + 68) |= 0x10u;
    *(a1 + 48) = v11;
    if ((*(a2 + 68) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_15:
  v10 = *(a2 + 40);
  *(a1 + 68) |= 8u;
  *(a1 + 40) = v10;
  v4 = *(a2 + 68);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 56);
    *(a1 + 68) |= 0x20u;
    *(a1 + 56) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002D3118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D312C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D3140(uint64_t a1)
{
  *a1 = off_100446EB8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002D3194(uint64_t a1)
{
  *a1 = off_100446EB8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1002D3204(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_100471C08;
  if (!qword_100471C08)
  {
    sub_1002D2BA0(0, a2, a3, a4);
    return qword_100471C08;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002D32D4(uint64_t a1)
{
  if (*(a1 + 68))
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 15) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002D32FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v8 == 1)
        {
          if (v9 != 1)
          {
            goto LABEL_39;
          }

          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v16;
          *(a1 + 68) |= 1u;
          v10 = *(this + 1);
          if (v10 < *(this + 2) && *v10 == 17)
          {
            *(this + 1) = v10 + 1;
            goto LABEL_28;
          }
        }

        else if (v8 == 2)
        {
          if (v9 != 1)
          {
            goto LABEL_39;
          }

LABEL_28:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v16;
          *(a1 + 68) |= 2u;
          v11 = *(this + 1);
          if (v11 < *(this + 2) && *v11 == 25)
          {
            *(this + 1) = v11 + 1;
            v16 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_32;
          }
        }

        else
        {
          if (v8 != 3 || v9 != 1)
          {
            goto LABEL_39;
          }

          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

LABEL_32:
          *(a1 + 32) = v16;
          *(a1 + 68) |= 4u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 33)
          {
            *(this + 1) = v12 + 1;
            v16 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_35;
          }
        }
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_39;
      }

      v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      *(a1 + 40) = v16;
      *(a1 + 68) |= 8u;
      v13 = *(this + 1);
      if (v13 < *(this + 2) && *v13 == 41)
      {
        *(this + 1) = v13 + 1;
LABEL_42:
        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = v16;
        *(a1 + 68) |= 0x10u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 49)
        {
          *(this + 1) = v14 + 1;
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

LABEL_46:
          *(a1 + 56) = v16;
          *(a1 + 68) |= 0x20u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v8 == 5)
    {
      if (v9 == 1)
      {
        goto LABEL_42;
      }
    }

    else if (v8 == 6 && v9 == 1)
    {
      v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_46;
    }

LABEL_39:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1002D3628(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 68);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v5 = *(v4 + 68);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v5 = *(v4 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v5 = *(v4 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
  v5 = *(v4 + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 48), a3);
  if ((*(v4 + 68) & 0x20) == 0)
  {
LABEL_7:
    v8 = *(v4 + 8);
    v7 = (v4 + 8);
    v6 = v8;
    if (!v8)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v4 + 56), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_15:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_1002D3734(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 68);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 68);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
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
  v3 = *(a1 + 68);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v9 = *(a1 + 32);
  *a2 = 25;
  *(a2 + 1) = v9;
  a2 += 9;
  v3 = *(a1 + 68);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10 = *(a1 + 40);
  *a2 = 33;
  *(a2 + 1) = v10;
  a2 += 9;
  v3 = *(a1 + 68);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v12 = *(a1 + 56);
    *a2 = 49;
    *(a2 + 1) = v12;
    a2 += 9;
    v13 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v13;
    if (!v13)
    {
      return a2;
    }

    goto LABEL_15;
  }

LABEL_13:
  v11 = *(a1 + 48);
  *a2 = 41;
  *(a2 + 1) = v11;
  a2 += 9;
  if ((*(a1 + 68) & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_15:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_1002D396C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 68);
  if (*(a1 + 68))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
LABEL_14:
      *(a1 + 64) = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_14;
  }

  v9 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 64) = v9;
  return v9;
}

uint64_t sub_1002D3A28(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002D2FD0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1002D3B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D3B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D3B30(uint64_t result, uint64_t a2)
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

uint64_t sub_1002D3BD0()
{
  v0 = qword_10045D2B8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002D295C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D298;
}

void sub_1002D3C60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D3C74(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 52))
  {
    v7 = *(a2 + 16);
    *(a1 + 52) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 52);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 32);
      *(a1 + 52) |= 4u;
      *(a1 + 32) = v9;
      if ((*(a2 + 52) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 52) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 40);
    *(a1 + 52) |= 8u;
    *(a1 + 40) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002D3D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D3D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1002D3DA4(void *a1, uint64_t a2)
{
  *a1 = off_100446F68;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[5] = 0;
  a1[6] = 0;
  a1[2] = 0x3FF0000000000000;
  a1[3] = 0;
  a1[4] = 0;
  sub_1002D3C74(a1, a2);
  return a1;
}

void sub_1002D3E18(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_1002D3E48(uint64_t a1)
{
  *a1 = off_100446F68;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002D3E9C(uint64_t a1)
{
  *a1 = off_100446F68;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1002D3F0C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_100471C10;
  if (!qword_100471C10)
  {
    sub_1002D2BA0(0, a2, a3, a4);
    return qword_100471C10;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002D3FDC(uint64_t a1)
{
  if (*(a1 + 52))
  {
    *(a1 + 16) = 0x3FF0000000000000;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 11) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002D4004(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      v8 = TagFallback >> 3;
      v9 = TagFallback & 7;
      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v8 == 1)
      {
        if (v9 != 1)
        {
          goto LABEL_26;
        }

        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v14;
        *(a1 + 52) |= 1u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 17)
        {
          *(this + 1) = v10 + 1;
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_22;
        }
      }

      else
      {
        if (v8 != 2 || v9 != 1)
        {
          goto LABEL_26;
        }

        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

LABEL_22:
        *(a1 + 24) = v14;
        *(a1 + 52) |= 2u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 25)
        {
          *(this + 1) = v11 + 1;
LABEL_29:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v14;
          *(a1 + 52) |= 4u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 33)
          {
            *(this + 1) = v12 + 1;
            v14 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
            {
              return 0;
            }

LABEL_33:
            *(a1 + 40) = v14;
            *(a1 + 52) |= 8u;
            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v8 == 3)
    {
      if (v9 == 1)
      {
        goto LABEL_29;
      }
    }

    else if (v8 == 4 && v9 == 1)
    {
      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_33;
    }

LABEL_26:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1002D4264(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 52);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v5 = *(v4 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  if ((*(v4 + 52) & 8) == 0)
  {
LABEL_5:
    v8 = *(v4 + 8);
    v7 = (v4 + 8);
    v6 = v8;
    if (!v8)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_11:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_1002D4338(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 52);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 52);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
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
  v3 = *(a1 + 52);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v10 = *(a1 + 40);
    *a2 = 33;
    *(a2 + 1) = v10;
    a2 += 9;
    v11 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v11;
    if (!v11)
    {
      return a2;
    }

    goto LABEL_11;
  }

LABEL_9:
  v9 = *(a1 + 32);
  *a2 = 25;
  *(a2 + 1) = v9;
  a2 += 9;
  if ((*(a1 + 52) & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_11:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_1002D44C0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 52);
  if (*(a1 + 52))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
LABEL_10:
      *(a1 + 48) = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_10;
  }

  v9 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 48) = v9;
  return v9;
}

uint64_t sub_1002D4564(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002D3C74(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1002D4644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D4658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D466C(uint64_t result, uint64_t a2)
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

uint64_t sub_1002D4700()
{
  v0 = qword_10045D2B8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002D295C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D2A8;
}

void sub_1002D4790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1002D47B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1002D4E38(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_1002D4DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D4DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D4DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D4E38(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045D2C0 & 1) == 0)
  {
    byte_10045D2C0 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/radiomap.pb.cc", a4);
    sub_1002E2D40(v4, v5, v6, v7);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x1Bprotobuf/gen/radiomap.proto\x12\x0Eproto.radiomap\x1A\x18protobuf/gen/venue.protoB\n\aAddress\x12*\n\bencoding\x18\x01 \x02(\x0E2\x18.proto.radiomap.ApIdType\x12\v\n\x03uid\x18\x02 \x02(\fU\n\x0EFixedPointSpec\x12\x19\n\x11fixedToFloatScale\x18\x01 \x02(\x01\x12\x1A\n\x12fixedToFloatOffset\x18\x02 \x02(\x01\x12\f\n\x04bits\x18\x03 \x02(\r}\n\x0ECoarseApParams\x12\x15\n\nweakWeight\x18\x01 \x01(\x02:\x011\x12\x17\n\fstrongWeight\x18\x02 \x01(\x02:\x011\x12\x1B\n\rrssiThreshold\x18\x03 \x01(\x11:\x04-255\x12\x1E\n\x12rssiSmoothingRange\x18\x04 \x01(\x11:\x0210\xBF\x01\n\vSurveyPoint\x12\x10\n\bpowerDbm\x18\x01 \x02(\x01\x129\n\x04type\x18\x02 \x01(\x0E2+.proto.radiomap.SurveyPoint.SurveyPointType\x12\x10\n\bsourceId\x18\x03 \x01(\tQ\n\x0FSurveyPointType\x12\n\n\x06Survey\x10\x01\x12\x11\n\rIndoorHarvest\x10\x03\x12\a\n\x03Als\x10\x04\x12\x16\n\x12Deprecated_Harvest\x10\x02\xD0\x02\n\x0FCellObservation\x12\x1A\n\x12surveyPointWeights\x18\x01 \x03(\x01\x12E\n\x10surveyPointTypes\x18\x02 \x03(\x0E2+.proto.radiomap.SurveyPoint.SurveyPointType\x12\x14\n\fsourceIdIdxs\x18\x03 \x03(\x05\x12\x11\n\tpowerDbms\x18\x04 \x03(\x01\x12\x11\n\tsourceIds\x18\x05 \x03(\t\x12\x11\n\tisOutlier\x18\x06 \x03(\b\x12\x12\n\nclusterIds\x18\b \x03(\x05\x12\x14\n\ffrequencyMhz\x18\t \x03(\x05\x12\x13\n\vprobIndoors\x18\n \x03(\x01\x12\x1B\n\x13horizontalAccuracys\x18\v \x03(\x01\x12\x16\n\x0EtimestampNanos\x18\f \x03(\x03\x12\x17\n\x0FmodeDbmNoReject\x18\a \x01(\x01q\n\x0EApRssiMapDebug\x12(\n\aaddress\x18\x01 \x02(\v2\x17.proto.radiomap.Address\x125\n\fobservations\x18\x02 \x03(\v2\x1F.proto.radiomap.CellObservationb\n\x14SelfHealingTileDebug\x12\x11\n\tsourceIds\x18\x01 \x03(\t\x12\x12\n\nprobIndoor\x18\x02 \x03(\x01\x12#\n\x1BprobIndoorAgainstSurveyTile\x18\x03 \x03(\x01P\n\x0EPathLossParams\x12\x0E\n\x06rowIdx\x18\x01 \x02(\r\x12\x0E\n\x06colIdx\x18\x02 \x02(\r\x12\x0F\n\amodeDbm\x18\x03 \x02(\x02\x12\r\n\x05gamma\x18\x04 \x02(\x02\xF7\x02\x0A\x09ApRssiMap\x12(\n\aaddress\x18\x01 \x02(\v2\x17.proto.radiomap.Address\x12\x12\n\nxIdxOffset\x18\x02 \x02(\r\x12\x12\n\nyIdxOffset\x18\x03 \x02(\r\x12\f\n\x04rows\x18\x04 \x02(\r\x12\f\n\x04cols\x18\x05 \x02(\r\x120\n\bmodeSpec\x18\x06 \x01(\v2\x1E.proto.radiomap.FixedPointSpec\x125\n\rcertaintySpec\x18\a \x01(\v2\x1E.proto.radiomap.FixedPointSpec\x12\n\x1ApackedCellModeAndCertainty\x18\b \x02(\f\x126\n\x0EpathLossParams\x18\t \x01(\v2\x1E.proto.radiomap.PathLossParams\x127\n\fencodingType\x18\n \x01(\x0E2!.proto.venue.RadioMapEncodingType\xB9\x01\n\nTileHeader\x12*\n\taddresses\x18\x01 \x03(\v2\x17.proto.radiomap.Address\x126\n\x0EcoarseApParams\x18\x04 \x03(\v2\x1E.proto.radiomap.CoarseApParams\x12)\n\toccupancy\x18\x02 \x01(\v2\x16.proto.venue.Occupancy\x12\v\n\x03uid\x18\x03 \x02(\t\x12\x0F\n\aversion\x18\x10 \x01(\x03H\n\rApFrequencies\x12(\n\aaddress\x18\x01 \x02(\v2\x17.proto.radiomap.Address\x12\r\n\x05freqs\x18\x02 \x03(\x05*#\n\bApIdType\x12\b\n\x04WiFi\x10\x01\x12\r\n\tBluetooth\x10\x02B!\n\x1Fcom.apple.indoor.proto.radiomap", 0x767, v8);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_1002D5424()
{
  if (qword_100471C18)
  {
    (*(*qword_100471C18 + 8))(qword_100471C18);
  }

  if (qword_10045D2D8)
  {
    (*(*qword_10045D2D8 + 8))(qword_10045D2D8);
  }

  if (qword_100471C20)
  {
    (*(*qword_100471C20 + 8))(qword_100471C20);
  }

  if (qword_10045D2E8)
  {
    (*(*qword_10045D2E8 + 8))(qword_10045D2E8);
  }

  if (qword_100471C28)
  {
    (*(*qword_100471C28 + 8))(qword_100471C28);
  }

  if (qword_10045D2F8)
  {
    (*(*qword_10045D2F8 + 8))(qword_10045D2F8);
  }

  if (qword_100471C30)
  {
    (*(*qword_100471C30 + 8))(qword_100471C30);
  }

  if (qword_10045D308)
  {
    (*(*qword_10045D308 + 8))(qword_10045D308);
  }

  if (qword_100471C38)
  {
    (*(*qword_100471C38 + 8))(qword_100471C38);
  }

  if (qword_10045D320)
  {
    (*(*qword_10045D320 + 8))(qword_10045D320);
  }

  if (qword_100471C40)
  {
    (*(*qword_100471C40 + 8))(qword_100471C40);
  }

  if (qword_10045D330)
  {
    (*(*qword_10045D330 + 8))(qword_10045D330);
  }

  if (qword_100471C48)
  {
    (*(*qword_100471C48 + 8))(qword_100471C48);
  }

  if (qword_10045D340)
  {
    (*(*qword_10045D340 + 8))(qword_10045D340);
  }

  if (qword_100471C50)
  {
    (*(*qword_100471C50 + 8))(qword_100471C50);
  }

  if (qword_10045D350)
  {
    (*(*qword_10045D350 + 8))(qword_10045D350);
  }

  if (qword_100471C58)
  {
    (*(*qword_100471C58 + 8))(qword_100471C58);
  }

  if (qword_10045D360)
  {
    (*(*qword_10045D360 + 8))(qword_10045D360);
  }

  if (qword_100471C60)
  {
    (*(*qword_100471C60 + 8))(qword_100471C60);
  }

  if (qword_10045D370)
  {
    (*(*qword_10045D370 + 8))(qword_10045D370);
  }

  if (qword_100471C68)
  {
    (*(*qword_100471C68 + 8))(qword_100471C68);
  }

  result = qword_10045D380;
  if (qword_10045D380)
  {
    v1 = *(*qword_10045D380 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1002D586C()
{
  v0 = qword_10045D390;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v12[1] = sub_1002D47B8;
    v13 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v12);
  }

  if (!qword_100471C18)
  {
    (sub_1002D4E38)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471C20)
  {
    sub_1002D4E38(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471C28)
  {
    sub_1002D4E38(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471C30)
  {
    sub_1002D4E38(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471C38)
  {
    sub_1002D4E38(v4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471C40)
  {
    sub_1002D4E38(v5);
  }

  v6 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471C48)
  {
    sub_1002D4E38(v6);
  }

  v7 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471C50)
  {
    sub_1002D4E38(v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471C58)
  {
    sub_1002D4E38(v8);
  }

  v9 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471C60)
  {
    sub_1002D4E38(v9);
  }

  v10 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471C68)
  {
    sub_1002D4E38(v10);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1002D5A94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D5AA8(uint64_t a1)
{
  *a1 = off_1004471A8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 16) = _D0;
  *(a1 + 24) = xmmword_1003DCF40;
  return a1;
}

uint64_t sub_1002D5B14(uint64_t a1)
{
  *a1 = off_1004475C8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  return a1;
}

uint64_t sub_1002D5B94(uint64_t a1)
{
  *a1 = off_100447678;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return a1;
}

uint64_t sub_1002D5C0C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 24);
      *(a1 + 32) |= 1u;
      *(a1 + 24) = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(a1 + 32) |= 2u;
      v7 = *(a1 + 16);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002D5D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D5D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D5D30(uint64_t a1, uint64_t a2)
{
  *a1 = off_100447048;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 24) = 1;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 32) = 0;
  sub_1002D5C0C(a1, a2);
  return a1;
}

void sub_1002D5DB0(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_1002D5DE0(void *a1)
{
  *a1 = off_100447048;
  v2 = a1[2];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002D5E78(void *a1)
{
  *a1 = off_100447048;
  v2 = a1[2];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002D5FCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1 || (*(a1 + 24) = 1, (v1 & 2) == 0) || (v2 = *(a1 + 16), v2 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
  {
LABEL_6:
    v4 = *(a1 + 8);
    result = (a1 + 8);
    *(result + 6) = 0;
    if (!v4)
    {
      return result;
    }

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_6;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  v5 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 6) = 0;
  if (v5)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002D6030(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_14;
        }

LABEL_23:
        *(a1 + 32) |= 2u;
        if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        break;
      }

      v13 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
        if (!result)
        {
          return result;
        }

        v10 = v13;
        if (v13 - 1 <= 1)
        {
LABEL_12:
          *(a1 + 32) |= 1u;
          *(a1 + 24) = v10;
          goto LABEL_20;
        }
      }

      else
      {
        *(this + 1) = v9 + 1;
        if ((v10 - 1) <= 1)
        {
          goto LABEL_12;
        }
      }

      wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v10);
LABEL_20:
      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 18)
      {
        *(this + 1) = v11 + 1;
        goto LABEL_23;
      }
    }

LABEL_14:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1002D6228(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 24), a2, a4);
    if ((*(v5 + 32) & 2) == 0)
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

  v10 = *(v5 + 16);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v11 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v11;
  if (!v11)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002D62C4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if ((*(this + 32) & 1) == 0)
  {
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    v11 = *(this + 2);
    *v4 = 18;
    v12 = *(v11 + 23);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v12 = *(v11 + 8);
      if (v12 <= 0x7F)
      {
        goto LABEL_14;
      }
    }

    else if (v12 <= 0x7F)
    {
LABEL_14:
      *(v4 + 1) = v12;
      v13 = v4 + 2;
      goto LABEL_17;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v4 + 1, a3);
LABEL_17:
    v14 = *(v11 + 23);
    if (v14 >= 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = *v11;
    }

    if (v14 >= 0)
    {
      v16 = *(v11 + 23);
    }

    else
    {
      v16 = *(v11 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v15, v16, v13, a4);
    v17 = *(this + 1);
    v7 = (this + 8);
    v6 = v17;
    if (!v17)
    {
      return v4;
    }

    goto LABEL_24;
  }

  v9 = *(this + 6);
  *a2 = 8;
  v10 = a2 + 1;
  if ((v9 & 0x80000000) != 0)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v9, v10, a3);
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_12;
    }
  }

  else if (v9 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v10, a3);
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(v4 + 1) = v9;
    v4 = (v4 + 2);
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_12;
    }
  }

LABEL_3:
  v8 = *(this + 1);
  v7 = (this + 8);
  v6 = v8;
  if (!v8)
  {
    return v4;
  }

LABEL_24:
  if (*v6 == v6[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v7, v4, a3);
}

uint64_t sub_1002D63F8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (*(a1 + 32))
    {
      v5 = *(a1 + 24);
      if ((v5 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(a1 + 32) & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 32) & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    v6 = *(a1 + 16);
    v7 = *(v6 + 23);
    v8 = v7;
    v9 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = v9;
    }

    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v8 = *(v6 + 23);
    }

    else
    {
      v11 = 1;
    }

    if (v8 < 0)
    {
      v7 = v9;
    }

    v4 = (v4 + v11 + v7 + 1);
  }

  else
  {
    v4 = 0;
  }

LABEL_22:
  v12 = *(a1 + 8);
  if (v12 && *v12 != v12[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 28) = v4;
  return v4;
}

uint64_t sub_1002D64F0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002D5C0C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1002D65D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D65E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D65F8(uint64_t result, uint64_t a2)
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

uint64_t sub_1002D6698()
{
  v0 = qword_10045D390;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002D47B8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D2D0;
}

void sub_1002D6728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D673C(uint64_t a1, uint64_t a2)
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

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = *(a2 + 24);
    *(a1 + 40) |= 2u;
    *(a1 + 24) = v8;
    if ((*(a2 + 40) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 16);
  *(a1 + 40) |= 1u;
  *(a1 + 16) = v7;
  v4 = *(a2 + 40);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 32);
    *(a1 + 40) |= 4u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002D6824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D6838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D684C(uint64_t a1)
{
  *a1 = off_1004470F8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002D68A0(uint64_t a1)
{
  *a1 = off_1004470F8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002D69A0(uint64_t a1)
{
  if (*(a1 + 40))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 8) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002D69C4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(this + 1);
        v11 = *(this + 2);
        if (v13 < v11)
        {
          goto LABEL_25;
        }

LABEL_28:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
        if (!result)
        {
          return result;
        }

        v18 = *(this + 1);
        v17 = *(this + 2);
        *(a1 + 40) |= 4u;
        if (v18 == v17)
        {
          goto LABEL_30;
        }
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 1)
      {
        goto LABEL_21;
      }

      v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v19) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v19;
      *(a1 + 40) |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 17)
      {
        *(this + 1) = v10 + 1;
LABEL_15:
        v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v19) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v19;
        *(a1 + 40) |= 2u;
        v12 = *(this + 1);
        v11 = *(this + 2);
        if (v12 < v11 && *v12 == 24)
        {
          v13 = v12 + 1;
          *(this + 1) = v13;
          if (v13 >= v11)
          {
            goto LABEL_28;
          }

LABEL_25:
          v14 = *v13;
          if (v14 < 0)
          {
            goto LABEL_28;
          }

          *(a1 + 32) = v14;
          v15 = v13 + 1;
          *(this + 1) = v15;
          *(a1 + 40) |= 4u;
          if (v15 == v11)
          {
LABEL_30:
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

    if (v9 == 1)
    {
      goto LABEL_15;
    }

LABEL_21:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1002D6BC8(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  if ((*(v5 + 40) & 4) == 0)
  {
LABEL_4:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_9:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_1002D6C80(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v8 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v8;
    a2 += 9;
    v3 = *(a1 + 40);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v10 = *(a1 + 32);
      *a2 = 24;
      if (v10 > 0x7F)
      {
        a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, a2 + 1, a3);
        v4 = (a1 + 8);
        v5 = *(a1 + 8);
        if (!v5)
        {
          return a2;
        }
      }

      else
      {
        *(a2 + 1) = v10;
        a2 += 2;
        v11 = *(a1 + 8);
        v4 = (a1 + 8);
        v5 = v11;
        if (!v11)
        {
          return a2;
        }
      }

      goto LABEL_5;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v9;
  a2 += 9;
  if ((*(a1 + 40) & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_5:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_1002D6DD4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v6 = *(a1 + 32);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
      v8 = (a1 + 8);
      v9 = *(a1 + 8);
      if (!v9)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = (a1 + 8);
  v9 = *(a1 + 8);
  if (!v9)
  {
LABEL_10:
    *(a1 + 36) = v5;
    return v5;
  }

LABEL_13:
  if (*v9 == v9[1])
  {
    goto LABEL_10;
  }

  v11 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v8, a2) + v5;
  *(a1 + 36) = v11;
  return v11;
}

uint64_t sub_1002D6E84(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002D673C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1002D6F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D6F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D6F8C(uint64_t result, uint64_t a2)
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

uint64_t sub_1002D702C()
{
  v0 = qword_10045D390;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002D47B8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D2E0;
}

void sub_1002D70BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D70D0(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 36);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
  }

  if (*(a2 + 36))
  {
    v7 = *(a2 + 16);
    a1[9] |= 1u;
    a1[4] = v7;
    v4 = *(a2 + 36);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 24);
      a1[9] |= 4u;
      a1[6] = v9;
      if ((*(a2 + 36) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 36) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  a1[9] |= 2u;
  a1[5] = v8;
  v4 = *(a2 + 36);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 28);
    a1[9] |= 8u;
    a1[7] = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_1002D71D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D71EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D7200(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004471A8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 16) = _D0;
  *(a1 + 24) = xmmword_1003DCF40;
  sub_1002D70D0(a1, a2);
  return a1;
}

void sub_1002D7278(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_1002D72A8(uint64_t a1)
{
  *a1 = off_1004471A8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002D72FC(uint64_t a1)
{
  *a1 = off_1004471A8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002D7404(uint64_t a1)
{
  if (*(a1 + 36))
  {
    __asm { FMOV            V1.2S, #1.0 }

    *(a1 + 16) = _D1;
    *(a1 + 24) = 0xAFFFFFF01;
  }

  v7 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v7)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002D7430(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 == 1)
        {
          if (v9 != 5)
          {
            goto LABEL_26;
          }

          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

          a1[4] = v20;
          a1[9] |= 1u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 21)
          {
            *(this + 1) = v12 + 1;
            v20 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_22;
          }
        }

        else
        {
          if (v8 != 2 || v9 != 5)
          {
            goto LABEL_26;
          }

          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

LABEL_22:
          a1[5] = v20;
          a1[9] |= 2u;
          v13 = *(this + 1);
          v10 = *(this + 2);
          if (v13 < v10 && *v13 == 24)
          {
            v14 = v13 + 1;
            *(this + 1) = v14;
            goto LABEL_30;
          }
        }
      }

      if (v8 != 3)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v14 = *(this + 1);
      v10 = *(this + 2);
LABEL_30:
      v20 = 0;
      if (v14 >= v10 || (v15 = *v14, (v15 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
        if (!result)
        {
          return result;
        }

        v15 = v20;
        v16 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        v16 = v14 + 1;
        *(this + 1) = v16;
      }

      a1[6] = -(v15 & 1) ^ (v15 >> 1);
      a1[9] |= 4u;
      if (v16 < v10 && *v16 == 32)
      {
        v11 = v16 + 1;
        *(this + 1) = v16 + 1;
        v20 = 0;
        if ((v16 + 1) >= v10)
        {
          goto LABEL_40;
        }

LABEL_38:
        v18 = *v11;
        if ((v18 & 0x80000000) != 0)
        {
LABEL_40:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
          if (!result)
          {
            return result;
          }

          v18 = v20;
          v19 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_42;
        }

        v19 = v11 + 1;
        *(this + 1) = v19;
LABEL_42:
        a1[7] = -(v18 & 1) ^ (v18 >> 1);
        a1[9] |= 8u;
        if (v19 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 4 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      v20 = 0;
      if (v11 >= v10)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

LABEL_26:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1002D76D8(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 16), a3);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 20), a3);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(3, *(v5 + 24), a2, a4);
  if ((*(v5 + 36) & 8) == 0)
  {
LABEL_5:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(4, *(v5 + 28), a2, a4);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_11:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_1002D77AC(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1[9];
  if (v3)
  {
    v8 = a1[4];
    *a2 = 13;
    *(a2 + 1) = v8;
    a2 += 5;
    v3 = a1[9];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = a1[5];
  *a2 = 21;
  *(a2 + 1) = v9;
  a2 += 5;
  if ((a1[9] & 4) == 0)
  {
LABEL_4:
    if ((a1[9] & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    v13 = a1[7];
    *a2 = 32;
    v14 = ((2 * v13) ^ (v13 >> 31));
    if (v14 > 0x7F)
    {
      v16 = a1;
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, a2 + 1, a3);
      v4 = (v16 + 2);
      v5 = *(v16 + 1);
      if (!v5)
      {
        return a2;
      }
    }

    else
    {
      *(a2 + 1) = v14;
      a2 += 2;
      v15 = *(a1 + 1);
      v4 = (a1 + 2);
      v5 = v15;
      if (!v15)
      {
        return a2;
      }
    }

    goto LABEL_6;
  }

LABEL_12:
  v10 = a1[6];
  *a2 = 24;
  v11 = ((2 * v10) ^ (v10 >> 31));
  if (v11 > 0x7F)
  {
    v12 = a1;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, a2 + 1, a3);
    a1 = v12;
    if ((v12[9] & 8) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(a2 + 1) = v11;
    a2 += 2;
    if ((a1[9] & 8) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_5:
  v6 = *(a1 + 1);
  v4 = (a1 + 2);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_6:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_1002D7924(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 36);
  if (!*(a1 + 36))
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v5 = v4 + 5;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    v10 = ((2 * *(a1 + 28)) ^ (*(a1 + 28) >> 31));
    if (v10 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1 + v5;
      v6 = (a1 + 8);
      v7 = *(a1 + 8);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = (v5 + 2);
      v6 = (a1 + 8);
      v7 = *(a1 + 8);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_19;
  }

  v9 = ((2 * *(a1 + 24)) ^ (*(a1 + 24) >> 31));
  if (v9 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1 + v5;
    if ((*(a1 + 36) & 8) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = (v5 + 2);
    if ((v3 & 8) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_7:
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_8:
    *(a1 + 32) = v5;
    return v5;
  }

LABEL_19:
  if (*v7 == v7[1])
  {
    goto LABEL_8;
  }

  v11 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 32) = v11;
  return v11;
}

uint64_t sub_1002D7A38(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002D70D0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1002D7B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D7B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D7B40(uint64_t result, uint64_t a2)
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

uint64_t sub_1002D7BD4()
{
  v0 = qword_10045D390;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002D47B8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D2F0;
}

void sub_1002D7C64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D7C88(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 16);
      *(a1 + 40) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 40);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
        }

LABEL_10:
        v7 = *(a2 + 24);
        *(a1 + 40) |= 4u;
        v8 = *(a1 + 24);
        if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v8, v7);
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 32);
    *(a1 + 40) |= 2u;
    *(a1 + 32) = v6;
    if ((*(a2 + 40) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002D7DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D7DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D7DD4(void *a1)
{
  *a1 = off_100447258;
  v2 = a1[3];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002D7E6C(void *a1)
{
  *a1 = off_100447258;
  v2 = a1[3];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002D7FC0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1 || (*(a1 + 16) = 0, *(a1 + 32) = 1, (v1 & 4) == 0) || (v2 = *(a1 + 24), v2 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
  {
LABEL_6:
    v4 = *(a1 + 8);
    result = (a1 + 8);
    *(result + 8) = 0;
    if (!v4)
    {
      return result;
    }

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_6;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  v5 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 8) = 0;
  if (v5)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002D8028(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v9 != 2)
          {
            goto LABEL_21;
          }

LABEL_30:
          *(a1 + 40) |= 4u;
          if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }

        if (v8 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(this + 1);
        v13 = *(this + 2);
        v17 = 0;
        if (v12 >= v13)
        {
          goto LABEL_24;
        }

LABEL_17:
        v14 = *v12;
        if ((v14 & 0x80000000) == 0)
        {
          *(this + 1) = v12 + 1;
          if ((v14 - 1) <= 3)
          {
            goto LABEL_19;
          }

          goto LABEL_26;
        }

LABEL_24:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v17);
        if (!result)
        {
          return result;
        }

        v14 = v17;
        if (v17 - 1 <= 3)
        {
LABEL_19:
          *(a1 + 40) |= 2u;
          *(a1 + 32) = v14;
          goto LABEL_27;
        }

LABEL_26:
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 2, v14);
LABEL_27:
        v16 = *(this + 1);
        if (v16 < *(this + 2) && *v16 == 26)
        {
          *(this + 1) = v16 + 1;
          goto LABEL_30;
        }
      }

      if (v8 != 1 || v9 != 1)
      {
        break;
      }

      v18 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v18) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v18;
      *(a1 + 40) |= 1u;
      v11 = *(this + 1);
      v10 = *(this + 2);
      if (v11 < v10 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(this + 1) = v12;
        v17 = 0;
        if (v12 >= v10)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }
    }

LABEL_21:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1002D8288(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 32), a2, a4);
  if ((*(v5 + 40) & 4) == 0)
  {
LABEL_4:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_8:
  v10 = *(v5 + 24);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v11 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v11;
  if (!v11)
  {
    return result;
  }

LABEL_9:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002D8340(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    v10 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v10;
    v4 = (a2 + 9);
    if ((*(this + 10) & 2) == 0)
    {
LABEL_3:
      if ((*(this + 40) & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      v13 = *(this + 3);
      *v4 = 26;
      v14 = *(v13 + 23);
      if ((v14 & 0x8000000000000000) != 0)
      {
        v14 = *(v13 + 8);
        if (v14 <= 0x7F)
        {
          goto LABEL_16;
        }
      }

      else if (v14 <= 0x7F)
      {
LABEL_16:
        *(v4 + 1) = v14;
        v15 = v4 + 2;
        goto LABEL_19;
      }

      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v4 + 1, a3);
LABEL_19:
      v16 = *(v13 + 23);
      if (v16 >= 0)
      {
        v17 = v13;
      }

      else
      {
        v17 = *v13;
      }

      if (v16 >= 0)
      {
        v18 = *(v13 + 23);
      }

      else
      {
        v18 = *(v13 + 8);
      }

      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v17, v18, v15, a4);
      v19 = *(this + 1);
      v8 = (this + 8);
      v7 = v19;
      if (!v19)
      {
        return v4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(this + 8);
  *v4 = 16;
  v12 = v4 + 1;
  if ((v11 & 0x80000000) != 0)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v12, a3);
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_14;
    }
  }

  else if (v11 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v12, a3);
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(v4 + 1) = v11;
    v4 = (v4 + 2);
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_14;
    }
  }

LABEL_4:
  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9)
  {
    return v4;
  }

LABEL_26:
  if (*v7 == v7[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, v4, a3);
}

uint64_t sub_1002D84CC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) == 0)
  {
    if ((v3 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_15:
    v9 = *(a1 + 24);
    v10 = *(v9 + 23);
    v11 = v10;
    v12 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v13 = *(v9 + 23);
    }

    else
    {
      v13 = v12;
    }

    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
      v10 = *(v9 + 23);
      v12 = *(v9 + 8);
      v11 = *(v9 + 23);
    }

    else
    {
      v14 = 1;
    }

    if (v11 < 0)
    {
      v10 = v12;
    }

    v4 = (v4 + v14 + v10 + 1);
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

  v8 = *(a1 + 32);
  if ((v8 & 0x80000000) != 0)
  {
    v4 = (v4 + 11);
    if ((v3 & 4) != 0)
    {
      goto LABEL_15;
    }
  }

  else if (v8 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1 + v4;
    if ((*(a1 + 40) & 4) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = (v4 + 2);
    if ((v3 & 4) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_5:
    *(a1 + 36) = v4;
    return v4;
  }

LABEL_24:
  if (*v6 == v6[1])
  {
    goto LABEL_5;
  }

  v15 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 36) = v15;
  return v15;
}

uint64_t sub_1002D8604(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002D7C88(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1002D86E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D86F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D870C(uint64_t result, uint64_t a2)
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

uint64_t sub_1002D87A4()
{
  v0 = qword_10045D390;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002D47B8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D300;
}

void sub_1002D8834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D8848(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v76);
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

  v10 = *(a2 + 40);
  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 44);
    v13 = v11 + v10;
    v14 = *(a1 + 32);
    if (v12 < v13)
    {
      v15 = 2 * v12;
      if (2 * v12 <= v13)
      {
        v15 = v13;
      }

      if (v15 <= 4)
      {
        v15 = 4;
      }

      *(a1 + 44) = v15;
      operator new[]();
    }

    memcpy((*(a1 + 32) + 4 * v11), *(a2 + 32), 4 * *(a2 + 40));
    *(a1 + 40) += *(a2 + 40);
  }

  v16 = *(a2 + 56);
  if (v16)
  {
    v17 = *(a1 + 56);
    v18 = *(a1 + 60);
    v19 = v17 + v16;
    v20 = *(a1 + 48);
    if (v18 < v19)
    {
      v21 = 2 * v18;
      if (2 * v18 <= v19)
      {
        v21 = v19;
      }

      if (v21 <= 4)
      {
        v21 = 4;
      }

      *(a1 + 60) = v21;
      operator new[]();
    }

    memcpy((*(a1 + 48) + 4 * v17), *(a2 + 48), 4 * *(a2 + 56));
    *(a1 + 56) += *(a2 + 56);
  }

  v22 = *(a2 + 72);
  if (v22)
  {
    v23 = *(a1 + 72);
    v24 = *(a1 + 76);
    v25 = v23 + v22;
    v26 = *(a1 + 64);
    if (v24 < v25)
    {
      v27 = 2 * v24;
      if (2 * v24 <= v25)
      {
        v27 = v25;
      }

      if (v27 <= 4)
      {
        v27 = 4;
      }

      *(a1 + 76) = v27;
      operator new[]();
    }

    memcpy((*(a1 + 64) + 8 * v23), *(a2 + 64), 8 * *(a2 + 72));
    *(a1 + 72) += *(a2 + 72);
  }

  v28 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 80), *(a2 + 88) + *(a1 + 88));
  if (*(a2 + 88) >= 1)
  {
    v29 = 0;
    do
    {
      while (1)
      {
        v33 = *(*(a2 + 80) + 8 * v29);
        v34 = *(a1 + 92);
        v35 = *(a1 + 88);
        if (v35 >= v34)
        {
          break;
        }

        v36 = *(a1 + 80);
        *(a1 + 88) = v35 + 1;
        v28 = std::string::operator=(*(v36 + 8 * v35), v33);
        if (++v29 >= *(a2 + 88))
        {
          goto LABEL_43;
        }
      }

      if (v34 == *(a1 + 96))
      {
        v28 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 80), v34 + 1);
        v34 = *(a1 + 92);
      }

      *(a1 + 92) = v34 + 1;
      v30 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v28);
      v31 = *(a1 + 80);
      v32 = *(a1 + 88);
      *(a1 + 88) = v32 + 1;
      *(v31 + 8 * v32) = v30;
      v28 = std::string::operator=(v30, v33);
      ++v29;
    }

    while (v29 < *(a2 + 88));
  }

LABEL_43:
  v37 = *(a2 + 112);
  if (v37)
  {
    v38 = *(a1 + 112);
    v39 = *(a1 + 116);
    v40 = v38 + v37;
    v41 = *(a1 + 104);
    if (v39 < v40)
    {
      v42 = 2 * v39;
      if (2 * v39 <= v40)
      {
        v42 = v40;
      }

      if (v42 <= 4)
      {
        v43 = 4;
      }

      else
      {
        v43 = v42;
      }

      *(a1 + 116) = v43;
      operator new[]();
    }

    memcpy((*(a1 + 104) + v38), *(a2 + 104), *(a2 + 112));
    *(a1 + 112) += *(a2 + 112);
  }

  v44 = *(a2 + 128);
  if (v44)
  {
    v45 = *(a1 + 128);
    v46 = *(a1 + 132);
    v47 = v45 + v44;
    v48 = *(a1 + 120);
    if (v46 < v47)
    {
      v49 = 2 * v46;
      if (2 * v46 <= v47)
      {
        v49 = v47;
      }

      if (v49 <= 4)
      {
        v49 = 4;
      }

      *(a1 + 132) = v49;
      operator new[]();
    }

    memcpy((*(a1 + 120) + 4 * v45), *(a2 + 120), 4 * *(a2 + 128));
    *(a1 + 128) += *(a2 + 128);
  }

  v50 = *(a2 + 144);
  if (v50)
  {
    v51 = *(a1 + 144);
    v52 = *(a1 + 148);
    v53 = v51 + v50;
    v54 = *(a1 + 136);
    if (v52 < v53)
    {
      v55 = 2 * v52;
      if (2 * v52 <= v53)
      {
        v55 = v53;
      }

      if (v55 <= 4)
      {
        v55 = 4;
      }

      *(a1 + 148) = v55;
      operator new[]();
    }

    memcpy((*(a1 + 136) + 4 * v51), *(a2 + 136), 4 * *(a2 + 144));
    *(a1 + 144) += *(a2 + 144);
  }

  v56 = *(a2 + 160);
  if (v56)
  {
    v57 = *(a1 + 160);
    v58 = *(a1 + 164);
    v59 = v57 + v56;
    v60 = *(a1 + 152);
    if (v58 < v59)
    {
      v61 = 2 * v58;
      if (2 * v58 <= v59)
      {
        v61 = v59;
      }

      if (v61 <= 4)
      {
        v61 = 4;
      }

      *(a1 + 164) = v61;
      operator new[]();
    }

    memcpy((*(a1 + 152) + 8 * v57), *(a2 + 152), 8 * *(a2 + 160));
    *(a1 + 160) += *(a2 + 160);
  }

  v62 = *(a2 + 176);
  if (v62)
  {
    v63 = *(a1 + 176);
    v64 = *(a1 + 180);
    v65 = v63 + v62;
    v66 = *(a1 + 168);
    if (v64 < v65)
    {
      v67 = 2 * v64;
      if (2 * v64 <= v65)
      {
        v67 = v65;
      }

      if (v67 <= 4)
      {
        v67 = 4;
      }

      *(a1 + 180) = v67;
      operator new[]();
    }

    memcpy((*(a1 + 168) + 8 * v63), *(a2 + 168), 8 * *(a2 + 176));
    *(a1 + 176) += *(a2 + 176);
  }

  v68 = *(a2 + 192);
  if (v68)
  {
    v69 = *(a1 + 192);
    v70 = *(a1 + 196);
    v71 = v69 + v68;
    v72 = *(a1 + 184);
    if (v70 < v71)
    {
      v73 = 2 * v70;
      if (2 * v70 <= v71)
      {
        v73 = v71;
      }

      if (v73 <= 4)
      {
        v73 = 4;
      }

      *(a1 + 196) = v73;
      operator new[]();
    }

    memcpy((*(a1 + 184) + 8 * v69), *(a2 + 184), 8 * *(a2 + 192));
    *(a1 + 192) += *(a2 + 192);
  }

  if ((*(a2 + 213) & 8) != 0)
  {
    v74 = *(a2 + 200);
    *(a1 + 212) |= 0x800u;
    *(a1 + 200) = v74;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002D9018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D902C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002D9040(uint64_t a1)
{
  *a1 = off_100447308;
  if (*(a1 + 184))
  {
    operator delete[]();
  }

  if (*(a1 + 168))
  {
    operator delete[]();
  }

  if (*(a1 + 152))
  {
    operator delete[]();
  }

  if (*(a1 + 136))
  {
    operator delete[]();
  }

  if (*(a1 + 120))
  {
    operator delete[]();
  }

  if (*(a1 + 104))
  {
    operator delete[]();
  }

  if (*(a1 + 92) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 80) + 8 * v2);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < *(a1 + 92));
  }

  if (*(a1 + 80))
  {
    operator delete[]();
  }

  if (*(a1 + 64))
  {
    operator delete[]();
  }

  if (*(a1 + 48))
  {
    operator delete[]();
  }

  if (*(a1 + 32))
  {
    operator delete[]();
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002D91BC(uint64_t a1)
{
  sub_1002D9040(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002D92B0(uint64_t a1)
{
  if ((*(a1 + 213) & 0x7F8) != 0)
  {
    *(a1 + 200) = 0;
  }

  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  if (*(a1 + 88) >= 1)
  {
    v1 = 0;
    do
    {
      while (1)
      {
        v2 = *(*(a1 + 80) + 8 * v1);
        if (*(v2 + 23) < 0)
        {
          break;
        }

        *v2 = 0;
        *(v2 + 23) = 0;
        if (++v1 >= *(a1 + 88))
        {
          goto LABEL_8;
        }
      }

      **v2 = 0;
      *(v2 + 8) = 0;
      ++v1;
    }

    while (v1 < *(a1 + 88));
  }

LABEL_8:
  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 20) = 0;
  *(result + 26) = 0;
  *(result + 30) = 0;
  *(result + 34) = 0;
  *(result + 38) = 0;
  *(result + 42) = 0;
  *(result + 46) = 0;
  *(result + 51) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002D9358(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
  while (1)
  {
    while (1)
    {
LABEL_2:
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        v7 = result;
        *(this + 8) = result;
        if (!result)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = v7;
        *(this + 1) = v6 + 1;
        if (!v7)
        {
          return 1;
        }
      }

      v8 = v7 >> 3;
      v9 = v7 & 7;
      if (v7 >> 3 > 6)
      {
        break;
      }

      if (v7 >> 3 > 3)
      {
        if (v8 != 4)
        {
          if (v8 == 5)
          {
            if (v9 == 2)
            {
              v10 = *(v5 + 92);
              v11 = *(v5 + 88);
              if (v11 >= v10)
              {
                goto LABEL_171;
              }

LABEL_62:
              v12 = *(v5 + 80);
              *(v5 + 88) = v11 + 1;
              v13 = *(v12 + 8 * v11);
              goto LABEL_174;
            }
          }

          else if (v8 == 6)
          {
            if ((v7 & 7) == 0)
            {
              v19 = *(this + 1);
              v18 = *(this + 2);
              goto LABEL_179;
            }

            if (v9 == 2)
            {
              result = sub_1002DA6BC(this, (v5 + 104));
              if (!result)
              {
                return result;
              }

              goto LABEL_202;
            }
          }

          goto LABEL_65;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            result = sub_100059C10(this, (v5 + 64));
            if (!result)
            {
              return result;
            }

            goto LABEL_167;
          }

          goto LABEL_65;
        }

        while (1)
        {
          *v150 = 0;
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v150);
          if ((result & 1) == 0)
          {
            return 0;
          }

          v56 = *v150;
          v57 = *(v5 + 72);
          v58 = *(v5 + 64);
          if (v57 == *(v5 + 76))
          {
            if (2 * v57 <= v57 + 1)
            {
              v59 = v57 + 1;
            }

            else
            {
              v59 = 2 * v57;
            }

            if (v59 <= 4)
            {
              v59 = 4;
            }

            *(v5 + 76) = v59;
            operator new[]();
          }

          v60 = v57 + 1;
          *(v5 + 72) = v57 + 1;
          *(v58 + 8 * v57) = v56;
          v61 = *(this + 1);
          v62 = *(this + 4) - v61;
          if (v62 >= 1)
          {
            v63 = *(v5 + 76) - v60;
            v64 = v62 / 9u;
            if ((v62 / 9u) >= v63)
            {
              v64 = *(v5 + 76) - v60;
            }

            if (v64 >= 1)
            {
              v65 = 0;
              v66 = v57 + 2;
              v67 = v58 + 8 * v60;
              v68 = ((*(this + 4) - v61) * 0x1C71C71C71C71C72uLL) >> 64;
              if (v68 >= v63)
              {
                LODWORD(v68) = v63;
              }

              while (*v61 == 33)
              {
                v69 = *(v61 + 1);
                *(v5 + 72) = v66;
                *(v67 + 8 * v65) = v69;
                ++v66;
                ++v65;
                v61 += 9;
                if (v68 == v65)
                {
                  goto LABEL_166;
                }
              }

              if (!v65)
              {
                goto LABEL_167;
              }

              v64 = v65;
LABEL_166:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v64);
            }
          }

LABEL_167:
          v38 = *(this + 1);
          if (v38 >= *(this + 2))
          {
            goto LABEL_2;
          }

          v70 = *v38;
          if (v70 != 33)
          {
            break;
          }

LABEL_146:
          *(this + 1) = v38 + 1;
        }

        if (v70 != 42)
        {
          continue;
        }

        do
        {
          *(this + 1) = v38 + 1;
          v10 = *(v5 + 92);
          v11 = *(v5 + 88);
          if (v11 < v10)
          {
            goto LABEL_62;
          }

LABEL_171:
          if (v10 == *(v5 + 96))
          {
            result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 80), v10 + 1);
            v10 = *(v5 + 92);
          }

          *(v5 + 92) = v10 + 1;
          v71 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
          v72 = *(v5 + 80);
          v73 = *(v5 + 88);
          *(v5 + 88) = v73 + 1;
          *(v72 + 8 * v73) = v71;
LABEL_174:
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v38 = *(this + 1);
          v18 = *(this + 2);
          if (v38 >= v18)
          {
            goto LABEL_2;
          }

          v74 = *v38;
        }

        while (v74 == 42);
        do
        {
          if (v74 != 48)
          {
            goto LABEL_2;
          }

          v19 = (v38 + 1);
          *(this + 1) = v19;
LABEL_179:
          v150[0] = 0;
          if (v19 >= v18 || (v75 = *v19, v75 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v150);
            if (!result)
            {
              return result;
            }

            v76 = v150[0] != 0;
            v77 = *(v5 + 112);
            v78 = *(v5 + 104);
            if (v77 == *(v5 + 116))
            {
LABEL_185:
              if (2 * v77 <= v77 + 1)
              {
                v79 = v77 + 1;
              }

              else
              {
                v79 = 2 * v77;
              }

              if (v79 <= 4)
              {
                v80 = 4;
              }

              else
              {
                v80 = v79;
              }

              *(v5 + 116) = v80;
              operator new[]();
            }
          }

          else
          {
            *(this + 1) = v19 + 1;
            v76 = v75 != 0;
            v77 = *(v5 + 112);
            v78 = *(v5 + 104);
            if (v77 == *(v5 + 116))
            {
              goto LABEL_185;
            }
          }

          v81 = v77 + 1;
          *(v5 + 112) = v77 + 1;
          *(v78 + v77) = v76;
          v82 = *(v5 + 116);
          if (v82 - (v77 + 1) >= 1)
          {
            v83 = v82 - v77;
            do
            {
              v84 = *(this + 1);
              v85 = *(this + 2);
              if (v84 >= v85 || *v84 != 48)
              {
                break;
              }

              *(this + 1) = v84 + 1;
              v150[0] = 0;
              if ((v84 + 1) >= v85 || (v86 = v84[1], (v86 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v150);
                if (!result)
                {
                  return result;
                }

                v86 = v150[0];
                v78 = *(v5 + 104);
                v81 = *(v5 + 112);
              }

              else
              {
                *(this + 1) = v84 + 2;
              }

              *(v5 + 112) = v81 + 1;
              *(v78 + v81) = v86 != 0;
              --v83;
              ++v81;
            }

            while (v83 > 1);
          }

LABEL_202:
          v38 = *(this + 1);
          v18 = *(this + 2);
          if (v38 >= v18)
          {
            goto LABEL_2;
          }

          v74 = *v38;
        }

        while (v74 != 57);
        *(this + 1) = v38 + 1;
LABEL_205:
        *v150 = 0;
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v150);
        if ((result & 1) == 0)
        {
          return 0;
        }

        *(v5 + 200) = *v150;
        *(v5 + 212) |= 0x800u;
        v87 = *(this + 1);
        v16 = *(this + 2);
        if (v87 < v16)
        {
          v88 = *v87;
          goto LABEL_208;
        }
      }

      else
      {
        if (v8 != 1)
        {
          if (v8 == 2)
          {
            if ((v7 & 7) == 0)
            {
              v22 = *(this + 1);
              v14 = *(this + 2);
              goto LABEL_101;
            }

            if (v9 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
              if (!result)
              {
                return result;
              }

              goto LABEL_115;
            }
          }

          else if (v8 == 3)
          {
            if ((v7 & 7) == 0)
            {
              v15 = *(this + 1);
              v14 = *(this + 2);
              goto LABEL_120;
            }

            if (v9 == 2)
            {
              result = sub_1002DA524(this, (v5 + 48));
              if (!result)
              {
                return result;
              }

              goto LABEL_142;
            }
          }

          goto LABEL_65;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            result = sub_100059C10(this, (v5 + 16));
            if (!result)
            {
              return result;
            }

            goto LABEL_96;
          }

          goto LABEL_65;
        }

        while (1)
        {
          *v150 = 0;
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v150);
          if ((result & 1) == 0)
          {
            return 0;
          }

          v24 = *v150;
          v25 = *(v5 + 24);
          v26 = *(v5 + 16);
          if (v25 == *(v5 + 28))
          {
            if (2 * v25 <= v25 + 1)
            {
              v27 = v25 + 1;
            }

            else
            {
              v27 = 2 * v25;
            }

            if (v27 <= 4)
            {
              v27 = 4;
            }

            *(v5 + 28) = v27;
            operator new[]();
          }

          v28 = v25 + 1;
          *(v5 + 24) = v25 + 1;
          *(v26 + 8 * v25) = v24;
          v29 = *(this + 1);
          v30 = *(this + 4) - v29;
          if (v30 >= 1)
          {
            v31 = *(v5 + 28) - v28;
            v32 = v30 / 9u;
            if ((v30 / 9u) >= v31)
            {
              v32 = *(v5 + 28) - v28;
            }

            if (v32 >= 1)
            {
              v33 = 0;
              v34 = v25 + 2;
              v35 = v26 + 8 * v28;
              v36 = ((*(this + 4) - v29) * 0x1C71C71C71C71C72uLL) >> 64;
              if (v36 >= v31)
              {
                LODWORD(v36) = v31;
              }

              while (*v29 == 9)
              {
                v37 = *(v29 + 1);
                *(v5 + 24) = v34;
                *(v35 + 8 * v33) = v37;
                ++v34;
                ++v33;
                v29 += 9;
                if (v36 == v33)
                {
                  goto LABEL_95;
                }
              }

              if (!v33)
              {
                goto LABEL_96;
              }

              v32 = v33;
LABEL_95:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v32);
            }
          }

LABEL_96:
          v38 = *(this + 1);
          v14 = *(this + 2);
          if (v38 >= v14)
          {
            goto LABEL_2;
          }

          v39 = *v38;
          if (v39 == 16)
          {
            break;
          }

          if (v39 != 9)
          {
            goto LABEL_2;
          }

          *(this + 1) = v38 + 1;
        }

        while (1)
        {
          v22 = (v38 + 1);
          *(this + 1) = v22;
LABEL_101:
          v150[0] = 0;
          if (v22 >= v14 || (v40 = *v22, v40 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v150);
            if (!result)
            {
              return result;
            }

            v40 = v150[0];
            if (v150[0] - 1 > 3)
            {
LABEL_113:
              result = wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((v5 + 8), 2, v40);
              goto LABEL_115;
            }
          }

          else
          {
            *(this + 1) = v22 + 1;
            if ((v40 - 1) > 3)
            {
              goto LABEL_113;
            }
          }

          v41 = *(v5 + 40);
          v42 = *(v5 + 32);
          if (v41 == *(v5 + 44))
          {
            if (2 * v41 <= v41 + 1)
            {
              v43 = v41 + 1;
            }

            else
            {
              v43 = 2 * v41;
            }

            if (v43 <= 4)
            {
              v43 = 4;
            }

            *(v5 + 44) = v43;
            operator new[]();
          }

          *(v5 + 40) = v41 + 1;
          *(v42 + 4 * v41) = v40;
LABEL_115:
          v38 = *(this + 1);
          v14 = *(this + 2);
          if (v38 >= v14)
          {
            goto LABEL_2;
          }

          v44 = *v38;
          if (v44 == 24)
          {
            break;
          }

          if (v44 != 16)
          {
            goto LABEL_2;
          }
        }

        do
        {
          v15 = (v38 + 1);
          *(this + 1) = v15;
LABEL_120:
          v150[0] = 0;
          if (v15 >= v14 || (v45 = *v15, (v45 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v150);
            if (!result)
            {
              return result;
            }

            v45 = v150[0];
            v46 = *(v5 + 56);
            v47 = *(v5 + 48);
            if (v46 == *(v5 + 60))
            {
LABEL_126:
              if (2 * v46 <= v46 + 1)
              {
                v48 = v46 + 1;
              }

              else
              {
                v48 = 2 * v46;
              }

              if (v48 <= 4)
              {
                v48 = 4;
              }

              *(v5 + 60) = v48;
              operator new[]();
            }
          }

          else
          {
            *(this + 1) = v15 + 1;
            v46 = *(v5 + 56);
            v47 = *(v5 + 48);
            if (v46 == *(v5 + 60))
            {
              goto LABEL_126;
            }
          }

          *(v5 + 56) = v46 + 1;
          *(v47 + 4 * v46) = v45;
          v49 = *(v5 + 60) - *(v5 + 56);
          if (v49 >= 1)
          {
            for (i = v49 + 1; i > 1; --i)
            {
              v52 = *(this + 1);
              v53 = *(this + 2);
              if (v52 >= v53 || *v52 != 24)
              {
                break;
              }

              *(this + 1) = v52 + 1;
              v150[0] = 0;
              if ((v52 + 1) >= v53 || (v54 = v52[1], (v54 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v150);
                if (!result)
                {
                  return result;
                }

                v54 = v150[0];
                v47 = *(v5 + 48);
              }

              else
              {
                *(this + 1) = v52 + 2;
              }

              v51 = *(v5 + 56);
              *(v5 + 56) = v51 + 1;
              *(v47 + 4 * v51) = v54;
            }
          }

LABEL_142:
          v38 = *(this + 1);
          v14 = *(this + 2);
          if (v38 >= v14)
          {
            break;
          }

          v55 = *v38;
          if (v55 == 33)
          {
            goto LABEL_146;
          }
        }

        while (v55 == 24);
      }
    }

    if (v7 >> 3 <= 9)
    {
      break;
    }

    if (v8 == 10)
    {
      if (v9 == 1)
      {
        goto LABEL_262;
      }

      if (v9 == 2)
      {
        result = sub_100059C10(this, (v5 + 152));
        if (!result)
        {
          return result;
        }

        goto LABEL_282;
      }

      goto LABEL_65;
    }

    if (v8 == 11)
    {
      if (v9 == 1)
      {
        goto LABEL_286;
      }

      if (v9 == 2)
      {
        result = sub_100059C10(this, (v5 + 168));
        if (!result)
        {
          return result;
        }

        goto LABEL_306;
      }

      goto LABEL_65;
    }

    if (v8 != 12)
    {
      goto LABEL_65;
    }

    if ((v7 & 7) != 0)
    {
      if (v9 == 2)
      {
        result = sub_1002DA85C(this, (v5 + 184));
        if (!result)
        {
          return result;
        }

        goto LABEL_332;
      }

LABEL_65:
      if (v9 == 4)
      {
        return 1;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, v7, v5 + 8, a4);
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v21 = *(this + 1);
      v20 = *(this + 2);
      while (1)
      {
        *v150 = 0;
        if (v21 >= v20 || (v140 = *v21, v140 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v150);
          if (!result)
          {
            return result;
          }

          v140 = *v150;
          v141 = *(v5 + 192);
          v142 = *(v5 + 184);
          if (v141 == *(v5 + 196))
          {
LABEL_316:
            if (2 * v141 <= v141 + 1)
            {
              v143 = v141 + 1;
            }

            else
            {
              v143 = 2 * v141;
            }

            if (v143 <= 4)
            {
              v143 = 4;
            }

            *(v5 + 196) = v143;
            operator new[]();
          }
        }

        else
        {
          *(this + 1) = v21 + 1;
          v141 = *(v5 + 192);
          v142 = *(v5 + 184);
          if (v141 == *(v5 + 196))
          {
            goto LABEL_316;
          }
        }

        v144 = v141 + 1;
        *(v5 + 192) = v141 + 1;
        *(v142 + 8 * v141) = v140;
        v145 = *(v5 + 196);
        if (v145 - (v141 + 1) >= 1)
        {
          for (j = v145 - v141; j > 1; --j)
          {
            v148 = *(this + 1);
            v147 = *(this + 2);
            if (v148 >= v147 || *v148 != 96)
            {
              break;
            }

            *(this + 1) = v148 + 1;
            *v150 = 0;
            if ((v148 + 1) >= v147 || (v149 = v148[1], v149 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v150);
              if (!result)
              {
                return result;
              }

              v149 = *v150;
              v142 = *(v5 + 184);
              v144 = *(v5 + 192);
            }

            else
            {
              *(this + 1) = v148 + 2;
            }

            *(v5 + 192) = v144 + 1;
            *(v142 + 8 * v144++) = v149;
          }
        }

LABEL_332:
        v87 = *(this + 1);
        v20 = *(this + 2);
        if (v87 >= v20 || *v87 != 96)
        {
          break;
        }

LABEL_309:
        v21 = v87 + 1;
        *(this + 1) = v21;
      }

      if (v87 == v20 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }
  }

  if (v8 == 7)
  {
    if (v9 != 1)
    {
      goto LABEL_65;
    }

    goto LABEL_205;
  }

  if (v8 == 8)
  {
    if ((v7 & 7) == 0)
    {
      v23 = *(this + 1);
      v16 = *(this + 2);
      goto LABEL_210;
    }

    if (v9 == 2)
    {
      result = sub_1002DA524(this, (v5 + 120));
      if (!result)
      {
        return result;
      }

      while (1)
      {
        v87 = *(this + 1);
        v16 = *(this + 2);
        if (v87 >= v16)
        {
          goto LABEL_2;
        }

        v88 = *v87;
        if (v88 == 72)
        {
          goto LABEL_234;
        }

LABEL_208:
        if (v88 != 64)
        {
          goto LABEL_2;
        }

        v23 = v87 + 1;
        *(this + 1) = v23;
LABEL_210:
        v150[0] = 0;
        if (v23 >= v16 || (v89 = *v23, (v89 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v150);
          if (!result)
          {
            return result;
          }

          v89 = v150[0];
          v90 = *(v5 + 128);
          v91 = *(v5 + 120);
          if (v90 == *(v5 + 132))
          {
LABEL_216:
            if (2 * v90 <= v90 + 1)
            {
              v92 = v90 + 1;
            }

            else
            {
              v92 = 2 * v90;
            }

            if (v92 <= 4)
            {
              v92 = 4;
            }

            *(v5 + 132) = v92;
            operator new[]();
          }
        }

        else
        {
          *(this + 1) = v23 + 1;
          v90 = *(v5 + 128);
          v91 = *(v5 + 120);
          if (v90 == *(v5 + 132))
          {
            goto LABEL_216;
          }
        }

        *(v5 + 128) = v90 + 1;
        *(v91 + 4 * v90) = v89;
        v93 = *(v5 + 132) - *(v5 + 128);
        if (v93 >= 1)
        {
          v94 = v93 + 1;
          do
          {
            v96 = *(this + 1);
            v97 = *(this + 2);
            if (v96 >= v97 || *v96 != 64)
            {
              break;
            }

            *(this + 1) = v96 + 1;
            v150[0] = 0;
            if ((v96 + 1) >= v97 || (v98 = v96[1], (v98 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v150);
              if (!result)
              {
                return result;
              }

              v98 = v150[0];
              v91 = *(v5 + 120);
            }

            else
            {
              *(this + 1) = v96 + 2;
            }

            v95 = *(v5 + 128);
            *(v5 + 128) = v95 + 1;
            *(v91 + 4 * v95) = v98;
            --v94;
          }

          while (v94 > 1);
        }
      }
    }

    goto LABEL_65;
  }

  if (v8 != 9)
  {
    goto LABEL_65;
  }

  if ((v7 & 7) == 0)
  {
    v17 = *(this + 1);
    v16 = *(this + 2);
    goto LABEL_235;
  }

  if (v9 != 2)
  {
    goto LABEL_65;
  }

  result = sub_1002DA524(this, (v5 + 136));
  if (!result)
  {
    return result;
  }

  while (1)
  {
    v87 = *(this + 1);
    v16 = *(this + 2);
    if (v87 >= v16)
    {
      goto LABEL_2;
    }

    v109 = *v87;
    if (v109 == 81)
    {
      break;
    }

    if (v109 != 72)
    {
      goto LABEL_2;
    }

LABEL_234:
    v17 = v87 + 1;
    *(this + 1) = v17;
LABEL_235:
    v150[0] = 0;
    if (v17 >= v16 || (v99 = *v17, (v99 & 0x80000000) != 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v150);
      if (!result)
      {
        return result;
      }

      v99 = v150[0];
      v100 = *(v5 + 144);
      v101 = *(v5 + 136);
      if (v100 == *(v5 + 148))
      {
LABEL_241:
        if (2 * v100 <= v100 + 1)
        {
          v102 = v100 + 1;
        }

        else
        {
          v102 = 2 * v100;
        }

        if (v102 <= 4)
        {
          v102 = 4;
        }

        *(v5 + 148) = v102;
        operator new[]();
      }
    }

    else
    {
      *(this + 1) = v17 + 1;
      v100 = *(v5 + 144);
      v101 = *(v5 + 136);
      if (v100 == *(v5 + 148))
      {
        goto LABEL_241;
      }
    }

    *(v5 + 144) = v100 + 1;
    *(v101 + 4 * v100) = v99;
    v103 = *(v5 + 148) - *(v5 + 144);
    if (v103 >= 1)
    {
      v104 = v103 + 1;
      do
      {
        v106 = *(this + 1);
        v107 = *(this + 2);
        if (v106 >= v107 || *v106 != 72)
        {
          break;
        }

        *(this + 1) = v106 + 1;
        v150[0] = 0;
        if ((v106 + 1) >= v107 || (v108 = v106[1], (v108 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v150);
          if (!result)
          {
            return result;
          }

          v108 = v150[0];
          v101 = *(v5 + 136);
        }

        else
        {
          *(this + 1) = v106 + 2;
        }

        v105 = *(v5 + 144);
        *(v5 + 144) = v105 + 1;
        *(v101 + 4 * v105) = v108;
        --v104;
      }

      while (v104 > 1);
    }
  }

  do
  {
    *(this + 1) = v87 + 1;
LABEL_262:
    *v150 = 0;
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v150);
    if ((result & 1) == 0)
    {
      return 0;
    }

    v110 = *v150;
    v111 = *(v5 + 160);
    v112 = *(v5 + 152);
    if (v111 == *(v5 + 164))
    {
      if (2 * v111 <= v111 + 1)
      {
        v113 = v111 + 1;
      }

      else
      {
        v113 = 2 * v111;
      }

      if (v113 <= 4)
      {
        v113 = 4;
      }

      *(v5 + 164) = v113;
      operator new[]();
    }

    v114 = v111 + 1;
    *(v5 + 160) = v111 + 1;
    *(v112 + 8 * v111) = v110;
    v115 = *(this + 1);
    v116 = *(this + 4) - v115;
    if (v116 >= 1)
    {
      v117 = *(v5 + 164) - v114;
      v118 = v116 / 9u;
      if ((v116 / 9u) >= v117)
      {
        v118 = *(v5 + 164) - v114;
      }

      if (v118 >= 1)
      {
        v119 = 0;
        v120 = v111 + 2;
        v121 = v112 + 8 * v114;
        v122 = ((*(this + 4) - v115) * 0x1C71C71C71C71C72uLL) >> 64;
        if (v122 >= v117)
        {
          LODWORD(v122) = v117;
        }

        while (*v115 == 81)
        {
          v123 = *(v115 + 1);
          *(v5 + 160) = v120;
          *(v121 + 8 * v119) = v123;
          ++v120;
          ++v119;
          v115 += 9;
          if (v122 == v119)
          {
            goto LABEL_281;
          }
        }

        if (!v119)
        {
          goto LABEL_282;
        }

        v118 = v119;
LABEL_281:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v118);
      }
    }

LABEL_282:
    v87 = *(this + 1);
    if (v87 >= *(this + 2))
    {
      goto LABEL_2;
    }

    v124 = *v87;
  }

  while (v124 == 81);
  if (v124 != 89)
  {
    goto LABEL_2;
  }

  while (1)
  {
    *(this + 1) = v87 + 1;
LABEL_286:
    *v150 = 0;
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v150);
    if ((result & 1) == 0)
    {
      return 0;
    }

    v125 = *v150;
    v126 = *(v5 + 176);
    v127 = *(v5 + 168);
    if (v126 == *(v5 + 180))
    {
      if (2 * v126 <= v126 + 1)
      {
        v128 = v126 + 1;
      }

      else
      {
        v128 = 2 * v126;
      }

      if (v128 <= 4)
      {
        v128 = 4;
      }

      *(v5 + 180) = v128;
      operator new[]();
    }

    v129 = v126 + 1;
    *(v5 + 176) = v126 + 1;
    *(v127 + 8 * v126) = v125;
    v130 = *(this + 1);
    v131 = *(this + 4) - v130;
    if (v131 >= 1)
    {
      v132 = *(v5 + 180) - v129;
      v133 = v131 / 9u;
      if ((v131 / 9u) >= v132)
      {
        v133 = *(v5 + 180) - v129;
      }

      if (v133 >= 1)
      {
        v134 = 0;
        v135 = v126 + 2;
        v136 = v127 + 8 * v129;
        v137 = ((*(this + 4) - v130) * 0x1C71C71C71C71C72uLL) >> 64;
        if (v137 >= v132)
        {
          LODWORD(v137) = v132;
        }

        while (*v130 == 89)
        {
          v138 = *(v130 + 1);
          *(v5 + 176) = v135;
          *(v136 + 8 * v134) = v138;
          ++v135;
          ++v134;
          v130 += 9;
          if (v137 == v134)
          {
            goto LABEL_305;
          }
        }

        if (!v134)
        {
          goto LABEL_306;
        }

        v133 = v134;
LABEL_305:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v133);
      }
    }

LABEL_306:
    v87 = *(this + 1);
    v20 = *(this + 2);
    if (v87 >= v20)
    {
      goto LABEL_2;
    }

    v139 = *v87;
    if (v139 != 89)
    {
      if (v139 != 96)
      {
        goto LABEL_2;
      }

      goto LABEL_309;
    }
  }
}