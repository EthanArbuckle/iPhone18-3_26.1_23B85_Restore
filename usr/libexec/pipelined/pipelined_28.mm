void sub_1001B8EC8(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sqlite3_sql(v2);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = "<unknown query>";
    }

    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v11 = v5;
    if (v5)
    {
      memmove(__dst, v4, v5);
    }

    *(__dst + v6) = 0;
    v7 = sqlite3_finalize(*a1);
    if (v7)
    {
      if (qword_10045B080 != -1)
      {
        sub_100384BF8();
      }

      v8 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to finalize with %{public}d", buf, 8u);
      }
    }

    *a1 = 0;
    v9 = *(a1 + 16);
    if (v9)
    {
      *(a1 + 16) = 0;
    }

    if (v11 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_1001B9064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001B9080(void *result, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = result;
  if (a2)
  {
    if (a4)
    {
      result = sub_10026F654(&v7, a3, a5);
      *(v5 + 1) = *&v7.__r_.__value_.__l.__data_;
      *v5 = 1;
      return result;
    }

LABEL_6:
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v7, "DB is corrupt");
    std::runtime_error::runtime_error(&v8, &v7);
    v8.__vftable = &off_1004338D0;
    sub_10010A984(v6);
  }

  if (a4)
  {
    goto LABEL_6;
  }

  *result = 0;
  return result;
}

void sub_1001B918C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

double sub_1001B9204@<D0>(sqlite3_stmt **a1@<X0>, uint64_t a2@<X8>)
{
  if (sqlite3_column_type(*a1, 2) == 5)
  {
    *a2 = 0;
  }

  else
  {
    v5 = sqlite3_column_text(*a1, 2);
    v6 = strlen(v5);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v9) = v6;
    if (v6)
    {
      memmove(&__dst, v5, v6);
    }

    *(&__dst + v7) = 0;
    result = *&__dst;
    *(a2 + 8) = __dst;
    *(a2 + 24) = v9;
    *a2 = 1;
  }

  return result;
}

uint64_t sub_1001B9314(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x1C71C71C71C71C7)
  {
    sub_10000FC84();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_10000D444();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  v14 = v6;
  v15 = v6;
  if (*(a2 + 23) < 0)
  {
    sub_100003228(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    *(v6 + 16) = *(a2 + 16);
  }

  v7 = *(a2 + 32);
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(v6 + 40) = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    *(v6 + 72) = *(a2 + 72);
    *(v6 + 64) = 1;
    *(v6 + 88) = 0;
    v8 = *(a2 + 88);
    if (v8 != 1)
    {
LABEL_17:
      *(v6 + 112) = 0;
      if (*(a2 + 112) != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }
  }

  else
  {
    *(v6 + 88) = 0;
    v8 = *(a2 + 88);
    if (v8 != 1)
    {
      goto LABEL_17;
    }
  }

  *(v6 + 96) = *(a2 + 96);
  *(v6 + 88) = v8;
  *(v6 + 112) = 0;
  if (*(a2 + 112) != 1)
  {
LABEL_18:
    *(v6 + 128) = 0;
    if (*(a2 + 128) != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_25:
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 112) = 1;
  *(v6 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
LABEL_19:
    *(v6 + 136) = *(a2 + 136);
    *(v6 + 128) = 1;
  }

LABEL_20:
  v9 = v6 + 144;
  v10 = a1[1];
  v11 = v6 + *a1 - v10;
  sub_1001B9558(a1, *a1, v10, v14 + *a1 - v10);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v15 + 144;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_1001B9544(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001B9798(va);
  _Unwind_Resume(a1);
}

void sub_1001B9558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return;
  }

  v5 = a2;
  v6 = 0;
  do
  {
    v7 = a2 + v6;
    v8 = a4 + v6;
    v9 = *(a2 + v6);
    *(v8 + 16) = *(a2 + v6 + 16);
    *v8 = v9;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = 0;
    *(v8 + 24) = *(a2 + v6 + 24);
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    v10 = *(a2 + v6 + 40);
    *(v8 + 56) = *(a2 + v6 + 56);
    *(v8 + 40) = v10;
    *(v8 + 64) = 0;
    if (*(a2 + v6 + 64) == 1)
    {
      *(v8 + 72) = *(v7 + 72);
      *(v8 + 64) = 1;
      *(v8 + 88) = 0;
      if (*(v7 + 88) != 1)
      {
LABEL_6:
        v11 = a4 + v6;
        *(a4 + v6 + 112) = 0;
        if (*(v7 + 112) == 1)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }
    }

    else
    {
      *(v8 + 88) = 0;
      if (*(v7 + 88) != 1)
      {
        goto LABEL_6;
      }
    }

    *(a4 + v6 + 96) = *(a2 + v6 + 96);
    *(v8 + 88) = 1;
    v11 = a4 + v6;
    *(a4 + v6 + 112) = 0;
    if (*(v7 + 112) == 1)
    {
LABEL_11:
      *(v11 + 120) = *(a2 + v6 + 120);
      *(v11 + 112) = 1;
      *(v11 + 128) = 0;
      if (*(v7 + 128) != 1)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

LABEL_7:
    *(v11 + 128) = 0;
    if (*(v7 + 128) != 1)
    {
      goto LABEL_3;
    }

LABEL_12:
    *(a4 + v6 + 136) = *(a2 + v6 + 136);
    *(v11 + 128) = 1;
LABEL_3:
    v6 += 144;
  }

  while (v7 + 144 != a3);
  if (a2 != a3)
  {
    while (1)
    {
      if (*(v5 + 128) == 1)
      {
        *(v5 + 128) = 0;
        if (*(v5 + 112) != 1)
        {
LABEL_19:
          if (*(v5 + 88) != 1)
          {
            goto LABEL_20;
          }

          goto LABEL_25;
        }
      }

      else if (*(v5 + 112) != 1)
      {
        goto LABEL_19;
      }

      *(v5 + 112) = 0;
      if (*(v5 + 88) != 1)
      {
LABEL_20:
        if (*(v5 + 64) != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_26;
      }

LABEL_25:
      *(v5 + 88) = 0;
      if (*(v5 + 64) != 1)
      {
LABEL_21:
        v12 = *(v5 + 32);
        if (v12)
        {
          goto LABEL_27;
        }

        goto LABEL_15;
      }

LABEL_26:
      *(v5 + 64) = 0;
      v12 = *(v5 + 32);
      if (v12)
      {
LABEL_27:
        if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }
      }

LABEL_15:
      if (*(v5 + 23) < 0)
      {
        v13 = *v5;
        v5 += 144;
        operator delete(v13);
        if (v5 == a3)
        {
          return;
        }
      }

      else
      {
        v5 += 144;
        if (v5 == a3)
        {
          return;
        }
      }
    }
  }
}

void **sub_1001B9798(void **a1)
{
  sub_1001B97CC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001B97CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v1)
  {
    while (1)
    {
      *(a1 + 16) = v2 - 144;
      if (*(v2 - 16) == 1)
      {
        *(v2 - 16) = 0;
        if (*(v2 - 32) != 1)
        {
LABEL_7:
          if (*(v2 - 56) != 1)
          {
            goto LABEL_8;
          }

          goto LABEL_13;
        }
      }

      else if (*(v2 - 32) != 1)
      {
        goto LABEL_7;
      }

      *(v2 - 32) = 0;
      if (*(v2 - 56) != 1)
      {
LABEL_8:
        if (*(v2 - 80) != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }

LABEL_13:
      *(v2 - 56) = 0;
      if (*(v2 - 80) != 1)
      {
LABEL_9:
        v4 = *(v2 - 112);
        if (v4)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }

LABEL_14:
      *(v2 - 80) = 0;
      v4 = *(v2 - 112);
      if (v4)
      {
LABEL_15:
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
        }
      }

LABEL_3:
      if (*(v2 - 121) < 0)
      {
        operator delete(*(v2 - 144));
        v2 = *(a1 + 16);
        if (v2 == v1)
        {
          return;
        }
      }

      else
      {
        v2 = *(a1 + 16);
        if (v2 == v1)
        {
          return;
        }
      }
    }
  }
}

void sub_1001B98F8(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sqlite3_sql(v2);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = "<unknown query>";
    }

    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v11 = v5;
    if (v5)
    {
      memmove(__dst, v4, v5);
    }

    *(__dst + v6) = 0;
    v7 = sqlite3_finalize(*a1);
    if (v7)
    {
      if (qword_10045B080 != -1)
      {
        sub_100384BF8();
      }

      v8 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to finalize with %{public}d", buf, 8u);
      }
    }

    *a1 = 0;
    v9 = *(a1 + 16);
    if (v9)
    {
      *(a1 + 16) = 0;
    }

    if (v11 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_1001B9A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_1001B9AB0(void *a1, uint64_t a2)
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

  v6 = sub_1000045A4(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
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
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_1001B9C68(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  sub_10004DAA4(v16);
  v6 = *a2;
  if (*a3 != v6)
  {
    v7 = *(v6 + 39);
    if (v7 >= 0)
    {
      v8 = (v6 + 2);
    }

    else
    {
      v8 = v6[2];
    }

    if (v7 >= 0)
    {
      v9 = *(v6 + 39);
    }

    else
    {
      v9 = v6[3];
    }

    while (1)
    {
      sub_10003C2E4(&v17, v8, v9);
      v6 = *v6;
      if (v6 == *a3)
      {
        break;
      }

      v10 = *(a1 + 23);
      if (v10 >= 0)
      {
        v11 = a1;
      }

      else
      {
        v11 = *a1;
      }

      if (v10 >= 0)
      {
        v12 = *(a1 + 23);
      }

      else
      {
        v12 = *(a1 + 8);
      }

      sub_10003C2E4(&v17, v11, v12);
      v13 = *(v6 + 39);
      if (v13 >= 0)
      {
        v8 = (v6 + 2);
      }

      else
      {
        v8 = v6[2];
      }

      if (v13 >= 0)
      {
        v9 = *(v6 + 39);
      }

      else
      {
        v9 = v6[3];
      }
    }
  }

  std::stringbuf::str();
  v17 = v14;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001B9E80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1001B9EB0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sqlite3_sql(v2);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = "<unknown query>";
    }

    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v11 = v5;
    if (v5)
    {
      memmove(__dst, v4, v5);
    }

    *(__dst + v6) = 0;
    v7 = sqlite3_finalize(*a1);
    if (v7)
    {
      if (qword_10045B080 != -1)
      {
        sub_100384BF8();
      }

      v8 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to finalize with %{public}d", buf, 8u);
      }
    }

    *a1 = 0;
    v9 = *(a1 + 16);
    if (v9)
    {
      *(a1 + 16) = 0;
    }

    if (v11 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_1001BA04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001BA068(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10000FC84();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
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

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_100003228(v6, *a2, *(a2 + 8));
    v6 = 24 * v2;
  }

  else
  {
    *v6 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 16);
  }

  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = v6 - v8;
  memcpy((v6 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_1001BA1A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100051ED0(va);
  _Unwind_Resume(a1);
}

void sub_1001BA29C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream((v2 + 48));
  sub_1001AF76C(v3);

  sub_1001AF76C(va);
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_1001BA2FC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004415C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001BA350(uint64_t a1)
{
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((a1 + 72));
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream((a1 + 48));
  sub_1001AF76C((a1 + 40));
  v2 = *(a1 + 32);
}

uint64_t sub_1001BA3A0(uint64_t a1)
{
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((a1 + 48));
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream((a1 + 24));
  sub_1001AF76C((a1 + 16));

  return a1;
}

void sub_1001BA3E4(uint64_t a1)
{
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((a1 + 48));
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream((a1 + 24));
  sub_1001AF76C((a1 + 16));

  operator delete();
}

void sub_1001BA64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (!atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v9 + 16))(v9);
  }

  sub_1001BAB48(va);

  _Unwind_Resume(a1);
}

void sub_1001BA770(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __cxa_begin_catch(a1);
  v17 = *(v16 + 32);
  std::current_exception();
  sub_1001BA7DC(v17, v18);
  std::exception_ptr::~exception_ptr(v18);
  __cxa_end_catch();
}

void sub_1001BA7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001BA7DC(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_100013504(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void sub_1001BA840(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_1001BA8AC(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_1001BA92C(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v1 = *(a1 + 152);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = a1;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        a1 = v2;
      }
    }
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_1001BA9D0(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    sub_100013504(2u);
  }

  *(a1 + 144) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void sub_1001BAA74(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_1001BAB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_1001BAB48(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(&v10, v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

void sub_1001BACA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &a9, 0x26u);
}

void sub_1001BACCC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x26u);
}

void sub_1001BACEC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x26u);
}

BOOL sub_1001BAD0C(NSObject *a1)
{
  *v1 = a1;

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void sub_1001BAD28(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, log, OS_LOG_TYPE_INFO, a4, a5, 0x30u);
}

uint64_t sub_1001BAD44(uint64_t result, uint64_t a2)
{
  *(a2 + 10) = v2;
  *(a2 + 18) = 2081;
  *(a2 + 20) = result;
  return result;
}

BOOL sub_1001BAD58(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void sub_1001BAD70()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001BADE0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1001BAE50()
{
  v0 = objc_autoreleasePoolPush();
  byte_10045D0D7 = 8;
  strcpy(&qword_10045D0C0, "resource");
  __cxa_atexit(&std::string::~string, &qword_10045D0C0, &_mh_execute_header);
  byte_10045D0EF = 8;
  strcpy(&qword_10045D0D8, "grouping");
  __cxa_atexit(&std::string::~string, &qword_10045D0D8, &_mh_execute_header);
  byte_10045D107 = 8;
  strcpy(&qword_10045D0F0, "local_id");
  __cxa_atexit(&std::string::~string, &qword_10045D0F0, &_mh_execute_header);
  byte_10045D11F = 16;
  strcpy(&qword_10045D108, "location_context");
  __cxa_atexit(&std::string::~string, &qword_10045D108, &_mh_execute_header);
  byte_10045D137 = 16;
  strcpy(&xmmword_10045D120, "metadata_version");
  __cxa_atexit(&std::string::~string, &xmmword_10045D120, &_mh_execute_header);
  byte_10045D14F = 12;
  strcpy(&qword_10045D138, "tile_version");
  __cxa_atexit(&std::string::~string, &qword_10045D138, &_mh_execute_header);
  byte_10045D167 = 13;
  strcpy(&qword_10045D150, "last_relevant");
  __cxa_atexit(&std::string::~string, &qword_10045D150, &_mh_execute_header);
  byte_10045D17F = 21;
  strcpy(&qword_10045D168, "last_refresh_metadata");
  __cxa_atexit(&std::string::~string, &qword_10045D168, &_mh_execute_header);
  byte_10045D197 = 17;
  strcpy(&xmmword_10045D180, "last_refresh_tile");
  __cxa_atexit(&std::string::~string, &xmmword_10045D180, &_mh_execute_header);
  byte_10045D1AF = 12;
  strcpy(&qword_10045D198, "last_visited");
  __cxa_atexit(&std::string::~string, &qword_10045D198, &_mh_execute_header);
  strcpy(&qword_10045D1B0, "metadata");
  byte_10045D1C7 = 8;
  __cxa_atexit(&std::string::~string, &qword_10045D1B0, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void sub_1001BB0C4(std::locale *a1)
{
  locale = a1[6].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
    a1 = v2;
  }

  std::locale::~locale(a1);
}

double sub_1001BB15C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  return result;
}

void sub_1001BB178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1002718E8(a4, a3 + 32) <= 50.0)
  {
    sub_10011B8B8(v5, a2);
    sub_1000B9540(v5);
  }
}

void sub_1001BB40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  nullsub_76(&a17);
  nullsub_75(&a10);
  nullsub_75(&a21);
  nullsub_75(&a29);
  sub_1000B9C50(v29 - 112);
  _Unwind_Resume(a1);
}

void sub_1001BB498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  nullsub_76(va);
  sub_1000B9C50(v17 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_1001BB4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10012DA9C(v15, *(a1 + 16));
  v4 = *(a1 + 16);
  v6 = *(v4 + 32);
  v5 = *(v4 + 40);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v6;
  v12 = v5;
  sub_10031D8EC(v13, &v11, *a1, *(a1 + 8));
  v7 = sub_1000BC300(v15, v13, a2);
  v8 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8, v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9, v7);
    std::__shared_weak_count::__release_weak(v9);
  }

  return nullsub_76(v15);
}

void sub_1001BB624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  sub_10002BB1C(&a13);
  sub_10002BB1C(&a11);
  sub_10002BB1C(&a9);
  nullsub_76(v13 - 48);
  _Unwind_Resume(a1);
}

void sub_1001BB658(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  (*(**a1 + 48))(&__p);
  v5 = __p;
  v6 = v23;
  if (__p == v23)
  {
    if (!__p)
    {
      return;
    }

    goto LABEL_29;
  }

  do
  {
    v7 = sub_100118234(v5);
    v8 = *(v7 + 23);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = *v7;
    }

    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v7 + 8);
    }

    v10 = a2[23];
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
      v12 = a2[23];
    }

    else
    {
      v12 = *(a2 + 1);
    }

    if (v12)
    {
      if (v8 >= v12)
      {
        v13 = &v9[v8];
        v14 = *v11;
        v15 = v9;
        do
        {
          v16 = v8 - v12;
          if (v16 == -1)
          {
            break;
          }

          v17 = memchr(v15, v14, v16 + 1);
          if (!v17)
          {
            break;
          }

          v18 = v17;
          if (!memcmp(v17, v11, v12))
          {
            if (v18 != v13 && v18 == v9)
            {
              goto LABEL_4;
            }

            break;
          }

          v15 = v18 + 1;
          v8 = v13 - (v18 + 1);
        }

        while (v8 >= v12);
      }
    }

    else
    {
LABEL_4:
      sub_1001C60C0(a3, v5);
    }

    v5 += 2;
  }

  while (v5 != v6);
  v5 = __p;
  if (__p)
  {
LABEL_29:
    v19 = v23;
    v20 = v5;
    if (v23 != v5)
    {
      do
      {
        v21 = *(v19 - 1);
        if (v21)
        {
          if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v21->__on_zero_shared)(v21);
            std::__shared_weak_count::__release_weak(v21);
          }
        }

        v19 -= 2;
      }

      while (v19 != v5);
      v20 = __p;
    }

    v23 = v5;
    operator delete(v20);
  }
}

void sub_1001BB848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100048F1C(va);
  sub_10004D7DC(v2);
  _Unwind_Resume(a1);
}

void sub_1001BB864(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (*a5 / 1000000000.0 - *(a4 + 8) / 1000000000.0 <= 2.0)
  {
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    memset(v52, 0, 41);
    v9 = *(a3 + 31);
    if (v9 >= 0)
    {
      v10 = a3 + 8;
    }

    else
    {
      v10 = *(a3 + 8);
    }

    if (v9 >= 0)
    {
      v11 = *(a3 + 31);
    }

    else
    {
      v11 = *(a3 + 16);
    }

    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    *__p = 0uLL;
    memset(v35, 0, sizeof(v35));
    v12 = sub_1001C64C4(&unk_10045E320, v10, v10 + v11, __p, 4160);
    sub_1001C67D0(v52, v10, v10 + v11, __p, 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (!v12)
    {
LABEL_13:
      if (qword_10045B050 == -1)
      {
        v13 = qword_10045B058;
        if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_58;
        }
      }

      else
      {
        sub_10038510C();
        v13 = qword_10045B058;
        if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
        {
LABEL_58:
          if (*&v52[0])
          {
            *(&v52[0] + 1) = *&v52[0];
            operator delete(*&v52[0]);
          }

          return;
        }
      }

      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "This location configuration's id doesn't satisfy regional naming convention. This should not happen.", __p, 2u);
      goto LABEL_58;
    }

    if (v58 == 1)
    {
      *(&v52[0] + 1) = *&v52[0];
      goto LABEL_13;
    }

    v14 = *&v52[0];
    v15 = 0xAAAAAAAAAAAAAAABLL * ((*(&v52[0] + 1) - *&v52[0]) >> 3);
    if (v15 <= 1)
    {
      v16 = v52;
    }

    else
    {
      v16 = *&v52[0];
    }

    if (*(v16 + 40) == 1)
    {
      if (v15 <= 1)
      {
        v14 = v52;
      }

      v17 = *(v14 + 3);
      v18 = *(v14 + 4);
      v19 = v18 - v17;
      if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_10000D39C();
      }

      if (v19 > 0x16)
      {
        operator new();
      }

      HIBYTE(v51) = v18 - v17;
      if (v18 != v17)
      {
        memmove(__dst, v17, v18 - v17);
      }

      *(__dst + v19) = 0;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v51 = 0;
    }

    sub_1001BB658(a1, __dst, v47);
    if (v49)
    {
      __p[0] = __dst;
      v20 = sub_1001C8BA4(a1 + 1, __dst);
      if (sub_100271F80((v20 + 5), v47))
      {
        v45 = 0;
        v44 = 0;
        v46 = 0;
        for (i = v48; i; i = *i)
        {
          while (1)
          {
            (*(**a1 + 24))(__p);
            v22 = v45;
            if (v45 < v46)
            {
              break;
            }

            v45 = sub_1001C925C(&v44, __p);
            sub_10011B04C(__p);
            i = *i;
            if (!i)
            {
              goto LABEL_37;
            }
          }

          sub_10011B8B8(v45, __p);
          v45 = v22 + 1920;
          sub_10011B04C(__p);
        }

LABEL_37:
        sub_100271FF8((v20 + 5), &v44);
        v23 = v44;
        if (v44)
        {
          v24 = v44;
          if (v45 != v44)
          {
            v25 = v45 - 1920;
            v26 = v45 - 1920;
            do
            {
              (**v26)(v26);
              v25 -= 1920;
              v27 = v26 == v23;
              v26 -= 1920;
            }

            while (!v27);
            v24 = v44;
          }

          v45 = v23;
          operator delete(v24);
        }
      }

      sub_1001BB178(a2, a3, a4, (v20 + 5));
      goto LABEL_48;
    }

    if (qword_10045B050 == -1)
    {
      v28 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
LABEL_48:
        v29 = v48;
        while (v29)
        {
          v30 = v29;
          v29 = *v29;
          v31 = v30[3];
          if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v32 = v30;
            (v31->__on_zero_shared)(v31);
            std::__shared_weak_count::__release_weak(v31);
            v30 = v32;
          }

          operator delete(v30);
        }

        v33 = v47[0];
        v47[0] = 0;
        if (v33)
        {
          operator delete(v33);
        }

        if (SHIBYTE(v51) < 0)
        {
          operator delete(__dst[0]);
        }

        goto LABEL_58;
      }
    }

    else
    {
      sub_10038510C();
      v28 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }
    }

    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Warning: we have a regional LocationConfiguration, but no regional tiles in that region on disk. Something could be wrong.", __p, 2u);
    goto LABEL_48;
  }
}

void sub_1001BBD74(_Unwind_Exception *a1)
{
  sub_10011D7F4(&STACK[0x788]);
  sub_10004D7DC(v1 - 256);
  if (*(v1 - 193) < 0)
  {
    operator delete(*(v1 - 216));
  }

  v3 = *(v1 - 192);
  if (v3)
  {
    *(v1 - 184) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1001BBE2C(uint64_t a1, const char *a2, int a3)
{
  v6 = std::locale::locale(a1);
  *(a1 + 8) = std::locale::use_facet(v6, &std::ctype<char>::id);
  *(a1 + 16) = std::locale::use_facet(a1, &std::collate<char>::id);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  strlen(a2);
  sub_1001BBEF8();
}

void sub_1001BBEC8(_Unwind_Exception *a1)
{
  sub_10002BB1C(&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

void sub_1001BC308(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_1001BC36C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_parse);
}

unsigned __int8 *sub_1001BC3C4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  result = a2;
  do
  {
    v8 = result;
    result = sub_1001BD1BC(a1, result, a3);
  }

  while (result != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3 && *result == 124)
  {
    v9 = *(a1 + 56);
    v10 = result + 1;
    v11 = result + 1;
    do
    {
      v12 = v11;
      v11 = sub_1001BD1BC(a1, v11, a3);
    }

    while (v11 != v12);
    if (v12 == v10)
    {
      operator new();
    }

    operator new();
  }

  return result;
}

unsigned __int8 *sub_1001BC5EC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      operator new();
    }

    if (a2 == a3)
    {
      v10 = a2;
    }

    else
    {
      while (1)
      {
        if (v3 == a3)
        {
          v10 = v3;
LABEL_11:
          if (v10 == a3)
          {
            goto LABEL_18;
          }

          goto LABEL_14;
        }

        v6 = *(a1 + 56);
        v7 = *(a1 + 28);
        v8 = sub_1001C54C0(a1, v3, a3);
        if (v8 == v3)
        {
          break;
        }

        v9 = *(a1 + 28);
        v10 = sub_1001C56E8(a1, v8, a3);
        v11 = v10 == v3;
        v3 = v10;
        if (v11)
        {
          goto LABEL_11;
        }
      }

      v10 = v3;
      if (v3 == a3)
      {
        goto LABEL_18;
      }

LABEL_14:
      if (v10 + 1 == a3 && *v10 == 36)
      {
        operator new();
      }
    }

LABEL_18:
    v3 = v10;
    if (v10 != a3)
    {
      sub_1001C5468();
    }
  }

  return v3;
}

unsigned __int8 *sub_1001BC7A0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = sub_1001C5C4C(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_11;
  }

  do
  {
    v8 = v7;
    v7 = sub_1001C5C4C(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    goto LABEL_11;
  }

  if (v8 != a3 && *v8 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v8 + 1;
    v11 = sub_1001C5C4C(a1, v8 + 1, a3);
    if (v11 != v8 + 1)
    {
      do
      {
        v12 = v11;
        v11 = sub_1001C5C4C(a1, v11, a3);
      }

      while (v11 != v12);
      if (v12 != v10)
      {
        operator new();
      }
    }

LABEL_11:
    sub_1001C5468();
  }

  return v8;
}

unsigned __int8 *sub_1001BC94C(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    operator new();
  }

  sub_1001BC5EC(a1, v8, v9);
  if (v9 == a3)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  if (v10 != a3)
  {
    v11 = *(a1 + 56);
    v12 = memchr(v10, 10, a3 - v10);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = a3;
    }

    if (v13 != v10)
    {
      sub_1001BC5EC(a1, v10, v13);
      operator new();
    }

    operator new();
  }

  return v10;
}

unsigned __int8 *sub_1001BCB74(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    operator new();
  }

  sub_1001BC7A0(a1, v8, v9);
  if (v9 == a3)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  if (v10 != a3)
  {
    v11 = *(a1 + 56);
    v12 = memchr(v10, 10, a3 - v10);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = a3;
    }

    if (v13 != v10)
    {
      sub_1001BC7A0(a1, v10, v13);
      operator new();
    }

    operator new();
  }

  return v10;
}

void sub_1001BCD9C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_grammar);
}

void sub_1001BCE24(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001BCE5C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1001BCE8C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001003D7A1ELL)
  {
    if (((v2 & 0x80000001003D7A1ELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001003D7A1ELL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001003D7A1ELL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1001BCEFC(void *result)
{
  *result = off_100441830;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1001BCF70(void *a1)
{
  *a1 = off_100441830;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_1001BD000(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1001BD014(void *result)
{
  *result = off_100441830;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1001BD088(void *a1)
{
  *a1 = off_100441830;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

unsigned __int8 *sub_1001BD118(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  while (1)
  {
    result = sub_1001BD264(a1, a2, a3);
    if (result != a2)
    {
      goto LABEL_3;
    }

    v9 = *(a1 + 56);
    v10 = *(a1 + 28);
    v11 = sub_1001BD658(a1, a2, a3);
    if (v11 == a2)
    {
      return a2;
    }

    v6 = *(a1 + 28);
    result = sub_1001BDA54(a1, v11, a3);
LABEL_3:
    v8 = result == a2;
    a2 = result;
    if (v8)
    {
      return result;
    }
  }
}

unsigned __int8 *sub_1001BD1BC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_1001BD264(a1, a2, a3);
  if (result == a2)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 28);
    v9 = sub_1001BD658(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = (*(a1 + 28) + 1);

      return sub_1001BDA54(a1, v9, a3);
    }
  }

  return result;
}

unsigned __int8 *sub_1001BD264(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    if (v3 > 0x5B)
    {
      if (v3 == 92)
      {
        if (a2 + 1 != a3)
        {
          v7 = a2[1];
          if (v7 == 66)
          {
            operator new();
          }

          if (v7 == 98)
          {
            operator new();
          }
        }
      }

      else if (v3 == 94)
      {
        operator new();
      }
    }

    else
    {
      if (v3 == 36)
      {
        operator new();
      }

      v5 = v3 == 40;
      v4 = a2 + 1;
      v5 = !v5 || v4 == a3;
      if (!v5)
      {
        v5 = *v4 == 63;
        v8 = a2 + 2;
        if (v5 && v8 != a3)
        {
          v10 = *v8;
          if (v10 == 33)
          {
            sub_1001BDE3C(v19);
            v20 = *(a1 + 24);
            sub_1001BBEF8(v19, a2 + 3, a3);
            v18 = *(a1 + 28);
            sub_1001BDEAC();
          }

          if (v10 == 61)
          {
            sub_1001BDE3C(v19);
            v20 = *(a1 + 24);
            sub_1001BBEF8(v19, a2 + 3, a3);
            v14 = *(a1 + 28);
            sub_1001BDEAC();
          }
        }
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_1001BD658(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 <= 0x3E)
  {
    if (v3 != 40)
    {
      if (v3 == 46)
      {
        operator new();
      }

      if (v3 - 42 >= 2)
      {
        goto LABEL_27;
      }

LABEL_45:
      sub_1001BF9EC();
    }

    v8 = a2 + 1;
    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && *v8 == 63 && a2[2] == 58)
      {
        v9 = (a1 + 36);
        ++*(a1 + 36);
        v11 = sub_1001BC3C4(a1, a2 + 3, a3);
        if (v11 == a3)
        {
          goto LABEL_53;
        }

        v12 = v11;
        if (*v11 != 41)
        {
          goto LABEL_53;
        }

LABEL_41:
        --*v9;
        return v12 + 1;
      }

      if ((*(a1 + 24) & 2) == 0)
      {
        operator new();
      }

      v16 = *(a1 + 28);
      v9 = (a1 + 36);
      ++*(a1 + 36);
      v19 = sub_1001BC3C4(a1, v8, a3);
      if (v19 != a3)
      {
        v12 = v19;
        if (*v19 == 41)
        {
          if ((*(a1 + 24) & 2) == 0)
          {
            operator new();
          }

          goto LABEL_41;
        }
      }
    }

LABEL_53:
    sub_1001BDF74();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v3 == 91)
    {

      return sub_1001BF870(a1, a2, a3);
    }

    if (v3 == 63)
    {
      goto LABEL_45;
    }

LABEL_27:

    return sub_1001BFA44(a1, a2, a3);
  }

  if (v3 != 92)
  {
    if (v3 == 123)
    {
      goto LABEL_45;
    }

    goto LABEL_27;
  }

  v5 = a2 + 1;
  if (a2 + 1 == a3)
  {
    sub_1001BFBC8();
  }

  v7 = *v5;
  if (v7 == 48)
  {
    sub_1001C02B0(a1);
  }

  if ((v7 - 49) <= 8)
  {
    v13 = (v7 - 48);
    v14 = a2 + 2;
    if (a2 + 2 == a3)
    {
      goto LABEL_46;
    }

    do
    {
      v15 = *v14;
      if ((v15 - 48) > 9)
      {
        break;
      }

      if (v13 >= 0x19999999)
      {
        goto LABEL_54;
      }

      v13 = v15 + 10 * v13 - 48;
      ++v14;
    }

    while (v14 != a3);
    if (v13)
    {
LABEL_46:
      if (v13 <= *(a1 + 28))
      {
        sub_1001C04CC(a1);
      }
    }

LABEL_54:
    sub_1001C0474();
  }

  v22 = sub_1001BFC20(a1, v5, a3);
  v23 = a3;
  v24 = v22;
  if (v22 == v5)
  {
    v25 = sub_1001BFEA0(a1, v5, v23, 0);
    if (v25 == v5)
    {
      return a2;
    }

    else
    {
      return v25;
    }
  }

  return v24;
}

unsigned __int8 *sub_1001BDA54(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *(a1 + 24) & 0x1F0;
  v4 = *a2;
  if (v4 > 0x3E)
  {
    if (v4 == 63)
    {
      v15 = a2 + 1;
      if (v3)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15 == a3;
      }

      if (!v16 && *v15 == 63)
      {
        sub_1001C4A68();
      }

      sub_1001C4A68();
    }

    if (v4 != 123)
    {
      return a2;
    }

    if (a2 + 1 != a3)
    {
      v6 = a2[1];
      if ((v6 & 0xF8) == 0x30 || (v6 & 0xFE) == 0x38)
      {
        v7 = v6 - 48;
        v8 = a2 + 2;
        if (a2 + 2 != a3)
        {
          do
          {
            v9 = *v8;
            if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
            {
              goto LABEL_20;
            }

            if (v7 >= 214748364)
            {
              goto LABEL_66;
            }

            v7 = v9 + 10 * v7 - 48;
            ++v8;
          }

          while (v8 != a3);
          v8 = a3;
        }

LABEL_20:
        if (v8 == a3)
        {
          goto LABEL_67;
        }

        v10 = *v8;
        if (v10 != 44)
        {
          if (v10 == 125)
          {
            v11 = v8 + 1;
            if (!v3 && v11 != a3 && *v11 == 63)
            {
              sub_1001C4A68();
            }

            sub_1001C4A68();
          }

          goto LABEL_66;
        }

        if (v8 + 1 == a3)
        {
          goto LABEL_66;
        }

        v17 = v8[1];
        if (v17 == 125)
        {
          v18 = v8 + 2;
          if (v3 || v18 == a3 || *v18 != 63)
          {
            goto LABEL_40;
          }

          goto LABEL_33;
        }

        if ((v17 & 0xF8) != 0x30 && (v17 & 0xFE) != 0x38)
        {
          goto LABEL_67;
        }

        v19 = v17 - 48;
        v20 = v8 + 2;
        if (v20 != a3)
        {
          do
          {
            v21 = *v20;
            if ((v21 & 0xF8) != 0x30 && (v21 & 0xFE) != 0x38)
            {
              goto LABEL_57;
            }

            if (v19 >= 214748364)
            {
              goto LABEL_66;
            }

            v19 = v21 + 10 * v19 - 48;
            ++v20;
          }

          while (v20 != a3);
          v20 = a3;
        }

LABEL_57:
        if (v20 == a3 || *v20 != 125)
        {
LABEL_67:
          sub_1001C4C50();
        }

        if (v19 >= v7)
        {
          v22 = v20 + 1;
          if (!v3 && v22 != a3 && *v22 == 63)
          {
            sub_1001C4A68();
          }

          sub_1001C4A68();
        }
      }
    }

LABEL_66:
    sub_1001C4BF8();
  }

  if (v4 == 42)
  {
    v13 = a2 + 1;
    if (v3)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13 == a3;
    }

    if (v14 || *v13 != 63)
    {
      goto LABEL_40;
    }

LABEL_33:
    sub_1001C4A68();
  }

  if (v4 == 43)
  {
    v5 = a2 + 1;
    if (!v3 && v5 != a3 && *v5 == 63)
    {
      goto LABEL_33;
    }

LABEL_40:
    sub_1001C4A68();
  }

  return a2;
}

uint64_t sub_1001BDE3C(uint64_t a1)
{
  v2 = std::locale::locale(a1);
  *(a1 + 8) = std::locale::use_facet(v2, &std::ctype<char>::id);
  *(a1 + 16) = std::locale::use_facet(a1, &std::collate<char>::id);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return a1;
}

void sub_1001BDF74()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_paren);
}

void *sub_1001BDFCC(void *result)
{
  *result = off_100441830;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1001BE040(void *a1)
{
  *a1 = off_100441830;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_1001BE0D0(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) != 1)
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
    return result;
  }

  if (*(a2 + 16) == *(a2 + 8) && (*(a2 + 88) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a2 = -993;
  *(a2 + 80) = 0;
  return result;
}

void *sub_1001BE138(void *result)
{
  *result = off_100441830;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1001BE1AC(void *a1)
{
  *a1 = off_100441830;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_1001BE23C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

std::locale *sub_1001BE290(std::locale *a1)
{
  a1->__locale_ = off_1004418F0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100441830;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1001BE31C(std::locale *a1)
{
  a1->__locale_ = off_1004418F0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100441830;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1001BE3C8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_19;
  }

  v4 = *(a2 + 16);
  if (v4 != v3)
  {
    if (v4 == v2)
    {
      v5 = *(a2 + 88);
      if ((v5 & 0x80) == 0)
      {
        if ((v5 & 4) == 0)
        {
          v6 = *v4;
          if (v6 == 95)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    v7 = *(v4 - 1);
    v8 = *v4;
    if (v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0)
    {
      v9 = 1;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v9 = 0;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    if ((v8 & 0x80) != 0 || (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) == 0)
    {
      if (*(result + 40) == (v9 != 0))
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_24:
    if (*(result + 40) != (v9 != 1))
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if ((*(a2 + 88) & 8) == 0)
  {
    v6 = *(v4 - 1);
    if (v6 == 95)
    {
      goto LABEL_17;
    }

LABEL_15:
    if ((v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
    {
LABEL_17:
      if (*(result + 40) != 1)
      {
        goto LABEL_27;
      }

LABEL_20:
      *a2 = -993;
      *(a2 + 80) = 0;
      return result;
    }
  }

LABEL_19:
  if (!*(result + 40))
  {
    goto LABEL_20;
  }

LABEL_27:
  v10 = *(result + 8);
  *a2 = -994;
  *(a2 + 80) = v10;
  return result;
}

std::locale *sub_1001BE51C(std::locale *a1)
{
  a1->__locale_ = off_100441938;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100441830;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1001BE5F4(std::locale *a1)
{
  a1->__locale_ = off_100441938;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100441830;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

void sub_1001BE6EC(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0uLL;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  __p = 0;
  v19 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v20 = 0;
  *&v21 = v5;
  *(&v21 + 1) = v5;
  v22 = 0;
  sub_1001BED34(&__p, v4, &v21);
  v23 = v6;
  v24 = v6;
  v25 = 0;
  v26 = v21;
  v27 = v22;
  v29 = v6;
  v28 = 1;
  v7 = *(a2 + 88) & 0xFFF;
  v8 = *(a2 + 16);
  if (v8 == *(a2 + 8))
  {
    v9 = *(a2 + 92);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 84) == sub_1001BE874(a1 + 16, v8, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v9))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v10 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v10 = __p;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v19 - __p) >> 3);
  if (v11 < 2)
  {
LABEL_10:
    if (!v10)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 32);
  v14 = 2;
  v15 = 1;
  do
  {
    v16 = &v10[24 * v15];
    v17 = v13 + 24 * v12;
    *v17 = *v16;
    *(v17 + 16) = v16[16];
    v15 = v14;
    ++v12;
    ++v14;
  }

  while (v11 > v15);
LABEL_11:
  v19 = v10;
  operator delete(v10);
}

void sub_1001BE854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001BE874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0;
  }

  *&v50 = a3;
  *(&v50 + 1) = a3;
  v51 = 0;
  *v47 = 0;
  memset(&v47[8], 0, 48);
  *__p = 0u;
  memset(v49, 0, 21);
  v53 = sub_1001BF094(&v52, v47);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v47[32])
  {
    *&v47[40] = *&v47[32];
    operator delete(*&v47[32]);
  }

  v13 = v53;
  *(v53 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    sub_1001BF3C0(v13 - 8, v15 - v16, &v50);
    v13 = v53;
  }

  v18 = *(v13 - 5);
  v19 = *(a1 + 32);
  v20 = (*(v13 - 4) - v18) >> 4;
  if (v19 <= v20)
  {
    if (v19 < v20)
    {
      *(v13 - 4) = v18 + 16 * v19;
    }
  }

  else
  {
    sub_1001BF58C(v13 - 40, v19 - v20);
    v13 = v53;
  }

  *(v13 - 2) = v6;
  *(v13 - 2) = a5;
  v21 = 1;
  *(v13 - 4) = a6;
  while (1)
  {
    if ((v21 & 0xFFF) == 0 && (v21 >> 12) >= a3 - a2)
    {
      sub_1001BEF60();
    }

    v23 = (v13 - 6);
    v24 = *(v13 - 2);
    if (v24)
    {
      (*(*v24 + 16))(v24, v13 - 6);
    }

    v25 = *v23;
    if (*v23 > -994)
    {
      if (v25 != -993)
      {
        if (v25 == -992)
        {
          sub_1001BF6E0(v47, v13 - 6);
          (*(**(v13 - 2) + 24))(*(v13 - 2), 1, v13 - 6);
          (*(*v49[1] + 24))(v49[1], 0, v47);
          v30 = v53;
          if (v53 >= v54)
          {
            v53 = sub_1001BF094(&v52, v47);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            v31 = *&v47[16];
            *v53 = *v47;
            v30[1] = v31;
            *(v30 + 6) = 0;
            *(v30 + 7) = 0;
            *(v30 + 4) = 0;
            *(v30 + 5) = 0;
            v30[2] = *&v47[32];
            *(v30 + 6) = *&v47[48];
            *&v47[32] = 0;
            *&v47[40] = 0;
            *(v30 + 8) = 0;
            *(v30 + 9) = 0;
            *(v30 + 56) = *__p;
            *(v30 + 9) = v49[0];
            *&v47[48] = 0;
            __p[0] = 0;
            __p[1] = 0;
            v49[0] = 0;
            v32 = v49[1];
            *(v30 + 85) = *(&v49[1] + 5);
            *(v30 + 10) = v32;
            v53 = v30 + 6;
          }

          if (*&v47[32])
          {
            *&v47[40] = *&v47[32];
            operator delete(*&v47[32]);
          }
        }

        else if (v25 != -991)
        {
          goto LABEL_60;
        }

        goto LABEL_17;
      }

      goto LABEL_32;
    }

    if ((v25 + 995) >= 2)
    {
      break;
    }

LABEL_17:
    v22 = v52;
    v13 = v53;
    ++v21;
    if (v52 == v53)
    {
      v17 = 0;
      if (!v52)
      {
        return v17;
      }

      goto LABEL_44;
    }
  }

  if (v25 != -1000)
  {
LABEL_60:
    sub_1001BEFB8();
  }

  v26 = *(v13 - 10);
  if ((a5 & 0x20) != 0 && v26 == a2 || (a5 & 0x1000) != 0 && v26 != a3)
  {
LABEL_32:
    v27 = v53;
    v28 = *(v53 - 5);
    if (v28)
    {
      *(v53 - 4) = v28;
      operator delete(v28);
    }

    v29 = *(v27 - 8);
    if (v29)
    {
      *(v27 - 7) = v29;
      operator delete(v29);
    }

    v53 = v27 - 6;
    goto LABEL_17;
  }

  v38 = *a4;
  *v38 = a2;
  *(v38 + 8) = v26;
  *(v38 + 16) = 1;
  v39 = *(v13 - 8);
  v40 = *(v13 - 7) - v39;
  if (v40)
  {
    v41 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    v42 = (v39 + 16);
    v43 = 1;
    do
    {
      v44 = v38 + 24 * v43;
      *v44 = *(v42 - 1);
      v45 = *v42;
      v42 += 24;
      *(v44 + 16) = v45;
    }

    while (v41 > v43++);
  }

  v17 = 1;
  v22 = v52;
  if (v52)
  {
LABEL_44:
    v33 = v53;
    v34 = v22;
    if (v53 != v22)
    {
      do
      {
        v35 = *(v33 - 5);
        if (v35)
        {
          *(v33 - 4) = v35;
          operator delete(v35);
        }

        v36 = *(v33 - 8);
        if (v36)
        {
          *(v33 - 7) = v36;
          operator delete(v36);
        }

        v33 -= 6;
      }

      while (v33 != v22);
      v34 = v52;
    }

    v53 = v22;
    operator delete(v34);
  }

  return v17;
}

void sub_1001BECC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1001BEF1C(&a9);
  sub_1001BF010((v9 - 104));
  _Unwind_Resume(a1);
}

char *sub_1001BED34(char **a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = a3[1];
    v15 = *(a3 + 16);
    if (v12 == 1)
    {
      v16 = 1;
      v17 = result;
    }

    else
    {
      v17 = &result[24 * (v12 & 0xFFFFFFFFFFFFFFFELL)];
      v16 = v12 & 1;
      v18 = result + 24;
      v19 = v12 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        *(v18 - 3) = v13;
        *(v18 - 2) = v14;
        *v18 = v13;
        *(v18 + 1) = v14;
        *(v18 - 8) = v15;
        v18[16] = v15;
        v18 += 48;
        v19 -= 2;
      }

      while (v19);
      if (v12 == (v12 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_22;
      }
    }

    do
    {
      *v17 = v13;
      *(v17 + 1) = v14;
      v17[16] = v15;
      v17 += 24;
      --v16;
    }

    while (v16);
  }

LABEL_22:
  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v20 = &v10[24 * (a2 - v11)];
    v21 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v22 = *a3;
      *(v10 + 2) = a3[2];
      *v10 = v22;
      v10 += 24;
      v21 -= 24;
    }

    while (v21);
    a1[1] = v20;
  }

  return result;
}

void *sub_1001BEF1C(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1001BEF60()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_complexity);
}

void sub_1001BEFB8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_unknown);
}

void **sub_1001BF010(void **a1)
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
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 8);
        if (v6)
        {
          *(v3 - 7) = v6;
          operator delete(v6);
        }

        v3 -= 96;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1001BF094(void *a1, uint64_t a2)
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

  v20 = a1;
  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v6 = 96 * v2;
  __p = 0;
  v17 = v6;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v6 + 56) = *(a2 + 56);
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v6 + 85) = *(a2 + 85);
  *(v6 + 72) = v8;
  *(v6 + 80) = v9;
  v18 = 96 * v2 + 96;
  v19 = 0;
  sub_1001BF220(a1, &__p);
  v10 = a1[1];
  v11 = v17;
  while (1)
  {
    v12 = v18;
    if (v18 == v11)
    {
      break;
    }

    v18 -= 96;
    v13 = *(v12 - 40);
    if (v13)
    {
      *(v12 - 32) = v13;
      operator delete(v13);
    }

    v14 = *(v12 - 64);
    if (v14)
    {
      *(v12 - 56) = v14;
      operator delete(v14);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_1001BF20C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001BF348(va);
  _Unwind_Resume(a1);
}

void sub_1001BF220(void *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *(v7 + 1);
      *v8 = *v7;
      *(v8 + 16) = v9;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v8 + 32) = *(v7 + 2);
      *(v8 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = *(v7 + 7);
      *(v8 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v10 = v7[10];
      *(v8 + 85) = *(v7 + 85);
      *(v8 + 80) = v10;
      v7 += 12;
      v8 += 96;
    }

    while (v7 != v4);
    do
    {
      v11 = v5[7];
      if (v11)
      {
        v5[8] = v11;
        operator delete(v11);
      }

      v12 = v5[4];
      if (v12)
      {
        v5[5] = v12;
        operator delete(v12);
      }

      v5 += 12;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v13 = *a1;
  *a1 = v6;
  a1[1] = v13;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

uint64_t sub_1001BF348(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }

    v5 = *(i - 64);
    if (v5)
    {
      *(i - 56) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001BF3C0(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = 24 * a2;
      do
      {
        v11 = *a3;
        *(v3 + 16) = *(a3 + 2);
        *v3 = v11;
        v3 += 24;
        v10 -= 24;
      }

      while (v10);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000FC84();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10000D444();
    }

    v12 = 24 * a2;
    v13 = 24 * v5;
    do
    {
      v14 = *a3;
      *(v13 + 16) = *(a3 + 2);
      *v13 = v14;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v15 = *a1;
    v16 = a1[1];
    v17 = 24 * v5 + *a1 - v16;
    if (v16 != *a1)
    {
      v18 = 24 * v5 + *a1 - v16;
      do
      {
        v19 = *v15;
        *(v18 + 16) = v15[2];
        *v18 = v19;
        v18 += 24;
        v15 += 3;
      }

      while (v15 != v16);
      v15 = *a1;
    }

    *a1 = v17;
    a1[1] = 24 * v5 + 24 * a2;
    a1[2] = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_1001BF58C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_10000FC84();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_10000D444();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
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

uint64_t sub_1001BF6E0(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(result + 32) = 0;
  *result = v2;
  *(result + 16) = v3;
  *(result + 40) = 0;
  *(result + 48) = 0;
  v5 = *(a2 + 4);
  v4 = *(a2 + 5);
  if (v4 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_10000FC84();
  }

  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  v7 = *(a2 + 7);
  v6 = *(a2 + 8);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v8 = *(a2 + 10);
  *(result + 85) = *(a2 + 85);
  *(result + 80) = v8;
  return result;
}

void sub_1001BF83C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1001BF870(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      v3 = a2[1];
      operator new();
    }

    sub_1001C2560();
  }

  return a2;
}

void sub_1001BF9EC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badrepeat);
}

unsigned __int8 *sub_1001BFA44(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x7800000080004F1) == 0;
    if (v4 && (v3 - 123) >= 3)
    {
      sub_1001C02B0(a1);
    }
  }

  return a2;
}

void *sub_1001BFAC4(void *result)
{
  *result = off_100441830;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1001BFB38(void *a1)
{
  *a1 = off_100441830;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

void sub_1001BFBC8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_escape);
}

unsigned __int8 *sub_1001BFC20(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    if (v3 > 0x63)
    {
      switch(v3)
      {
        case 'w':
          operator new();
        case 's':
          operator new();
        case 'd':
          operator new();
      }
    }

    else
    {
      switch(v3)
      {
        case 'D':
          operator new();
        case 'S':
          operator new();
        case 'W':
          operator new();
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_1001BFEA0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 <= 0x71u)
  {
    if (*a2 > 0x65u)
    {
      if (v5 == 102)
      {
        if (!this)
        {
          sub_1001C02B0(a1);
        }

        std::string::operator=(this, 12);
        return v4 + 1;
      }

      if (v5 == 110)
      {
        if (!this)
        {
          sub_1001C02B0(a1);
        }

        std::string::operator=(this, 10);
        return v4 + 1;
      }

LABEL_63:
      if ((v5 & 0x80) == 0 && (*(*(*(a1 + 8) + 16) + 4 * v5) & 0x500) != 0)
      {
        goto LABEL_67;
      }

      if (this)
      {
        std::string::operator=(this, v5);
        return v4 + 1;
      }

LABEL_55:
      sub_1001C02B0(a1);
    }

    if (v5 == 48)
    {
      if (!this)
      {
        sub_1001C02B0(a1);
      }

      std::string::operator=(this, 0);
      return v4 + 1;
    }

    if (v5 != 99)
    {
      if (v5 == 95)
      {
        goto LABEL_67;
      }

      goto LABEL_63;
    }

    if (a2 + 1 == a3)
    {
      goto LABEL_67;
    }

    v7 = a2[1];
    if (((v7 & 0xDF) - 65) > 0x19u)
    {
      goto LABEL_67;
    }

    if (!this)
    {
      sub_1001C02B0(a1);
    }

    std::string::operator=(this, v7 & 0x1F);
    v4 += 2;
    return v4;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
    {
      if (this)
      {
        std::string::operator=(this, 13);
        return v4 + 1;
      }

      goto LABEL_55;
    }

    if (v5 == 116)
    {
      if (!this)
      {
        sub_1001C02B0(a1);
      }

      std::string::operator=(this, 9);
      return v4 + 1;
    }

    goto LABEL_63;
  }

  if (v5 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_67;
    }

    v9 = a2[1];
    if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
    {
      goto LABEL_67;
    }

    v4 = a2 + 2;
    if (a2 + 2 == a3)
    {
      goto LABEL_67;
    }

    v10 = *v4;
    v11 = -48;
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
    {
      v10 |= 0x20u;
      if ((v10 - 97) >= 6)
      {
        goto LABEL_67;
      }

      v11 = -87;
    }

    v6 = 16 * (v11 + v10);
LABEL_40:
    if (v4 + 1 == a3)
    {
      goto LABEL_67;
    }

    v12 = v4[1];
    v13 = -48;
    if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
    {
      v12 |= 0x20u;
      if ((v12 - 97) >= 6)
      {
        goto LABEL_67;
      }

      v13 = -87;
    }

    if (v4 + 2 != a3)
    {
      v14 = v4[2];
      v15 = -48;
      if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
      {
LABEL_50:
        if (!this)
        {
          sub_1001C02B0(a1);
        }

        std::string::operator=(this, v15 + v14 + 16 * (v13 + v6 + v12));
        return v4 + 3;
      }

      v14 |= 0x20u;
      if ((v14 - 97) < 6)
      {
        v15 = -87;
        goto LABEL_50;
      }
    }

LABEL_67:
    sub_1001BFBC8();
  }

  if (v5 != 118)
  {
    if (v5 == 120)
    {
      v6 = 0;
      goto LABEL_40;
    }

    goto LABEL_63;
  }

  if (!this)
  {
    sub_1001C02B0(a1);
  }

  std::string::operator=(this, 11);
  return v4 + 1;
}

void sub_1001C02B0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1001C0428()
{
  std::locale::~locale(v0 + 2);
  v0->__locale_ = off_100441830;
  locale = v0[1].__locale_;
  if (locale)
  {
    sub_100385134(locale);
  }

  operator delete();
}

void sub_1001C0474()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_backref);
}

void sub_1001C04CC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

std::locale *sub_1001C0604(std::locale *a1)
{
  a1->__locale_ = off_1004419C8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100441830;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1001C0690(std::locale *a1)
{
  a1->__locale_ = off_1004419C8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100441830;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1001C073C(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    *(a2 + 80) = *(v4 + 8);
  }

  return result;
}

std::locale *sub_1001C07DC(std::locale *a1)
{
  a1->__locale_ = off_100441A10;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100441830;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1001C0868(std::locale *a1)
{
  a1->__locale_ = off_100441A10;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100441830;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1001C0914(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void *sub_1001C095C(void *result)
{
  *result = off_100441830;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1001C09D0(void *a1)
{
  *a1 = off_100441830;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_1001C0A60(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

std::locale *sub_1001C0AA8(std::locale *a1)
{
  a1->__locale_ = off_100441AA0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100441830;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1001C0B34(std::locale *a1)
{
  a1->__locale_ = off_100441AA0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100441830;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1001C0BE0(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) != 1 || (v4 = *(v3 + 8) - *v3, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  v6 = result;
  v7 = *(v3 + 8) != *v3;
  if (v4 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*v3 + v8));
      result = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*(a2 + 16) + v8));
      if (v9 != result)
      {
        goto LABEL_3;
      }

      if (v4 == ++v8)
      {
        v5 = *(a2 + 16);
        break;
      }
    }
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(v6 + 8);
  return result;
}

std::locale *sub_1001C0D10(std::locale *a1)
{
  a1->__locale_ = off_100441AE8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100441830;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1001C0D9C(std::locale *a1)
{
  a1->__locale_ = off_100441AE8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100441830;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1001C0E48(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) != 1 || (v3 = *v2, v4 = *(v2 + 8) - *v2, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  if (v4 >= 1)
  {
    v6 = *(a2 + 16);
    v7 = v4;
    do
    {
      v9 = *v3++;
      v8 = v9;
      v10 = *v6++;
      if (v8 != v10)
      {
        goto LABEL_3;
      }
    }

    while (--v7);
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1001C0ED4(void *result)
{
  *result = off_100441830;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1001C0F48(void *a1)
{
  *a1 = off_100441830;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_1001C0FD8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_1001C0474();
  }

  v4 = v3 + 24 * (v2 - 1);
  if (*(v4 + 16) != 1)
  {
    goto LABEL_5;
  }

  v6 = v4;
  v5 = *v4;
  v7 = *(v6 + 8) - v5;
  v8 = *(a2 + 16);
  if (*(a2 + 24) - v8 < v7)
  {
    goto LABEL_5;
  }

  v9 = result;
  v10 = a2;
  result = memcmp(v5, *(a2 + 16), v7);
  a2 = v10;
  if (!result)
  {
    *v10 = -994;
    *(v10 + 16) = v8 + v7;
    *(v10 + 80) = *(v9 + 8);
  }

  else
  {
LABEL_5:
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

void sub_1001C10AC(uint64_t a1, char a2)
{
  if (*(a1 + 169) != 1)
  {
    v6 = *(a1 + 170);
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    if (v8 < v7)
    {
      *v8 = a2;
      *(a1 + 48) = v8 + 1;
      return;
    }

    v9 = *(a1 + 40);
    v14 = (v8 - v9);
    v15 = v8 - v9 + 1;
    if (v15 >= 0)
    {
      v16 = v7 - v9;
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        operator new();
      }

      v20 = v8 - v9;
      *v14 = a2;
      v19 = v14 + 1;
      memcpy(0, v9, v20);
      *(a1 + 40) = 0;
      *(a1 + 48) = v14 + 1;
      *(a1 + 56) = 0;
      if (v9)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

LABEL_26:
    sub_10000FC84();
  }

  v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v5 < v4)
  {
    *v5 = v3;
    *(a1 + 48) = v5 + 1;
    return;
  }

  v9 = *(a1 + 40);
  v10 = (v5 - v9);
  v11 = v5 - v9 + 1;
  if (v11 < 0)
  {
    goto LABEL_26;
  }

  v12 = v4 - v9;
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

  v18 = v5 - v9;
  *v10 = v3;
  v19 = v10 + 1;
  memcpy(0, v9, v18);
  *(a1 + 40) = 0;
  *(a1 + 48) = v10 + 1;
  *(a1 + 56) = 0;
  if (v9)
  {
LABEL_23:
    operator delete(v9);
    *(a1 + 48) = v19;
    return;
  }

LABEL_25:
  *(a1 + 48) = v19;
}

uint64_t sub_1001C12C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = off_100441B78;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_1001C1408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  sub_1000D1490((v9 + 136));
  v14 = *(v9 + 112);
  if (v14)
  {
    *(v9 + 120) = v14;
    operator delete(v14);
    sub_1001C1DCC(v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
LABEL_3:
      v16 = *v12;
      if (!*v12)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    sub_1001C1DCC(v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  *(v9 + 72) = v15;
  operator delete(v15);
  v16 = *v12;
  if (!*v12)
  {
LABEL_4:
    std::locale::~locale((v9 + 16));
    *v9 = v10;
    v17 = *(v9 + 8);
    if (!v17)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v9 + 48) = v16;
  operator delete(v16);
  std::locale::~locale((v9 + 16));
  *v9 = v10;
  v17 = *(v9 + 8);
  if (!v17)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  (*(*v17 + 8))(v17);
  _Unwind_Resume(a1);
}

void sub_1001C14CC(std::locale *a1)
{
  sub_1001C1E64(a1);

  operator delete();
}

void sub_1001C1504(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v22 = 0;
    v23 = *(a1 + 168);
    goto LABEL_80;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_57;
  }

  LOBYTE(v111[0]) = *v4;
  v6 = v4[1];
  BYTE1(v111[0]) = v4[1];
  if (*(a1 + 169) == 1)
  {
    LOBYTE(v111[0]) = (*(**(a1 + 24) + 40))(*(a1 + 24));
    BYTE1(v111[0]) = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  sub_1001C213C(a1 + 16, v111, v111 + 2, &__p);
  if ((v116 & 0x80000000) == 0)
  {
    if (v116)
    {
      goto LABEL_8;
    }

LABEL_57:
    v23 = 0;
    v22 = 1;
    goto LABEL_58;
  }

  v37 = v115;
  operator delete(__p);
  if (!v37)
  {
    goto LABEL_57;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    v10 = (v7 + 1);
    while (LOBYTE(v111[0]) != *(v10 - 1) || BYTE1(v111[0]) != *v10)
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_218;
  }

LABEL_17:
  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    p_p = &__p;
    sub_1001C1FE0(a1 + 16, v111, v111 + 2);
    v13 = *(a1 + 88);
    v14 = v116;
    v15 = *(a1 + 96) - v13;
    if (v15)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v108 = v116;
      if (v116 >= 0)
      {
        v17 = v116;
      }

      else
      {
        v17 = v115;
      }

      if (v116 < 0)
      {
        p_p = __p;
      }

      v18 = v16 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v19 = (v13 + 47);
      v20 = 1;
      v21 = 1;
      do
      {
        v24 = *(v19 - 24);
        if (v24 >= 0)
        {
          v25 = *(v19 - 24);
        }

        else
        {
          v25 = *(v19 - 39);
        }

        if (v24 >= 0)
        {
          v26 = (v19 - 47);
        }

        else
        {
          v26 = *(v19 - 47);
        }

        if (v25 >= v17)
        {
          v27 = v17;
        }

        else
        {
          v27 = v25;
        }

        v28 = memcmp(p_p, v26, v27);
        v29 = v17 >= v25;
        if (v28)
        {
          v29 = v28 >= 0;
        }

        if (v29)
        {
          v30 = *v19;
          if (v30 >= 0)
          {
            v31 = *v19;
          }

          else
          {
            v31 = *(v19 - 15);
          }

          if (v30 >= 0)
          {
            v32 = (v19 - 23);
          }

          else
          {
            v32 = *(v19 - 23);
          }

          if (v17 >= v31)
          {
            v33 = v31;
          }

          else
          {
            v33 = v17;
          }

          v34 = memcmp(v32, p_p, v33);
          v35 = v31 >= v17;
          if (v34)
          {
            v35 = v34 >= 0;
          }

          if (v35)
          {
            v36 = 5;
            goto LABEL_165;
          }
        }

        v21 = v20++ < v16;
        v19 += 48;
        --v18;
      }

      while (v18);
      v36 = 0;
LABEL_165:
      v14 = v108;
    }

    else
    {
      v21 = 0;
      v36 = 0;
    }

    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v21)
    {
      v87 = 1;
      goto LABEL_198;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    v87 = 0;
    goto LABEL_200;
  }

  sub_1001C23A0(a1 + 16, v111, v111 + 2, &__p);
  v88 = *(a1 + 136);
  v89 = v116;
  v90 = *(a1 + 144) - v88;
  if (v90)
  {
    v91 = 0xAAAAAAAAAAAAAAABLL * (v90 >> 3);
    if (v116 >= 0)
    {
      v92 = v116;
    }

    else
    {
      v92 = v115;
    }

    if (v116 >= 0)
    {
      v93 = &__p;
    }

    else
    {
      v93 = __p;
    }

    if (v91 <= 1)
    {
      v94 = 1;
    }

    else
    {
      v94 = 0xAAAAAAAAAAAAAAABLL * (v90 >> 3);
    }

    v95 = 1;
    v96 = 1;
    while (1)
    {
      v97 = *(v88 + 23);
      v98 = v97;
      if ((v97 & 0x80u) != 0)
      {
        v97 = *(v88 + 8);
      }

      if (v92 == v97)
      {
        v99 = v98 >= 0 ? v88 : *v88;
        if (!memcmp(v93, v99, v92))
        {
          break;
        }
      }

      v96 = v95++ < v91;
      v88 += 24;
      if (!--v94)
      {
        goto LABEL_194;
      }
    }

    v87 = 1;
    v36 = 5;
  }

  else
  {
    v96 = 0;
LABEL_194:
    v36 = 0;
    v87 = 0;
  }

  if (v89 < 0)
  {
    operator delete(__p);
  }

  if (!v96)
  {
LABEL_200:
    if (SLOBYTE(v111[0]) < 0)
    {
      v103 = *(a1 + 164);
    }

    else
    {
      v100 = *(a1 + 160);
      v101 = *(*(a1 + 24) + 16);
      v102 = *(v101 + 4 * LOBYTE(v111[0]));
      if (((v102 & v100) != 0 || LOBYTE(v111[0]) == 95 && (v100 & 0x80) != 0) && (SBYTE1(v111[0]) & 0x8000000000000000) == 0 && ((*(v101 + 4 * SBYTE1(v111[0])) & v100) != 0 || (v100 & 0x80) != 0 && SBYTE1(v111[0]) == 95))
      {
        goto LABEL_218;
      }

      v103 = *(a1 + 164);
      if ((v102 & v103) != 0 || LOBYTE(v111[0]) == 95 && (v103 & 0x80) != 0)
      {
LABEL_217:
        v23 = v87;
LABEL_219:
        v22 = 2;
        goto LABEL_80;
      }
    }

    if ((SBYTE1(v111[0]) & 0x8000000000000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * SBYTE1(v111[0])) & v103) == 0)
      {
        v23 = 1;
        if (SBYTE1(v111[0]) != 95 || (v103 & 0x80) == 0)
        {
          goto LABEL_219;
        }
      }

      goto LABEL_217;
    }

LABEL_218:
    v23 = 1;
    goto LABEL_219;
  }

LABEL_198:
  v22 = 2;
  v23 = v87;
  if (v36)
  {
    goto LABEL_80;
  }

LABEL_58:
  v38 = **(v2 + 16);
  v113 = **(v2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v38) = (*(**(a1 + 24) + 40))(*(a1 + 24), v38);
    v113 = v38;
  }

  v39 = *(a1 + 40);
  v40 = *(a1 + 48) - v39;
  if (v40)
  {
    if (v40 <= 1)
    {
      v40 = 1;
    }

    do
    {
      v41 = *v39++;
      if (v41 == v38)
      {
        goto LABEL_79;
      }
    }

    while (--v40);
  }

  v42 = *(a1 + 164);
  if (v42 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v38 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v38) & v42) == 0)
    {
      v43 = (v38 == 95) & (v42 >> 7);
    }

    else
    {
      LOBYTE(v43) = 1;
    }

    v44 = *(a1 + 72);
    v45 = memchr(*(a1 + 64), v38, v44 - *(a1 + 64));
    v46 = !v45 || v45 == v44;
    v47 = !v46;
    if ((v43 & 1) == 0 && !v47)
    {
LABEL_79:
      v23 = 1;
      goto LABEL_80;
    }
  }

  v50 = *(a1 + 88);
  v51 = *(a1 + 96);
  if (v50 != v51)
  {
    v109 = v23;
    if (*(a1 + 170) == 1)
    {
      v116 = 1;
      LOWORD(__p) = v38;
      (*(**(a1 + 32) + 32))(v111);
      if (v116 < 0)
      {
        operator delete(__p);
      }

      v50 = *(a1 + 88);
      v52 = v112;
      v53 = *(a1 + 96) - v50;
      if (!v53)
      {
LABEL_89:
        v54 = 0;
        if ((v52 & 0x80) == 0)
        {
          goto LABEL_131;
        }

        goto LABEL_130;
      }
    }

    else
    {
      v112 = 1;
      LOWORD(v111[0]) = v38;
      v52 = 1;
      v53 = v51 - v50;
      if (!v53)
      {
        goto LABEL_89;
      }
    }

    v105 = v2;
    v106 = v22;
    v55 = 0xAAAAAAAAAAAAAAABLL * (v53 >> 4);
    v104 = v52;
    if ((v52 & 0x80u) == 0)
    {
      v56 = v52;
    }

    else
    {
      v56 = v111[1];
    }

    if ((v52 & 0x80u) == 0)
    {
      v57 = v111;
    }

    else
    {
      v57 = v111[0];
    }

    if (v55 <= 1)
    {
      v58 = 1;
    }

    else
    {
      v58 = 0xAAAAAAAAAAAAAAABLL * (v53 >> 4);
    }

    v59 = (v50 + 47);
    v60 = 1;
    v54 = 1;
    do
    {
      v61 = *(v59 - 24);
      if (v61 >= 0)
      {
        v62 = *(v59 - 24);
      }

      else
      {
        v62 = *(v59 - 39);
      }

      if (v61 >= 0)
      {
        v63 = (v59 - 47);
      }

      else
      {
        v63 = *(v59 - 47);
      }

      if (v62 >= v56)
      {
        v64 = v56;
      }

      else
      {
        v64 = v62;
      }

      v65 = memcmp(v57, v63, v64);
      v66 = v56 >= v62;
      if (v65)
      {
        v66 = v65 >= 0;
      }

      if (v66)
      {
        v67 = *v59;
        if (v67 >= 0)
        {
          v68 = *v59;
        }

        else
        {
          v68 = *(v59 - 15);
        }

        if (v67 >= 0)
        {
          v69 = (v59 - 23);
        }

        else
        {
          v69 = *(v59 - 23);
        }

        if (v56 >= v68)
        {
          v70 = v68;
        }

        else
        {
          v70 = v56;
        }

        v71 = memcmp(v69, v57, v70);
        v72 = v68 >= v56;
        if (v71)
        {
          v72 = v71 >= 0;
        }

        if (v72)
        {
          v23 = 1;
          v2 = v105;
          goto LABEL_129;
        }
      }

      v54 = v60++ < v55;
      v59 += 48;
      --v58;
    }

    while (v58);
    v2 = v105;
    v23 = v109;
LABEL_129:
    v22 = v106;
    if ((v104 & 0x80) == 0)
    {
LABEL_131:
      if (v54)
      {
        goto LABEL_80;
      }

      goto LABEL_132;
    }

LABEL_130:
    operator delete(v111[0]);
    goto LABEL_131;
  }

LABEL_132:
  if (*(a1 + 136) == *(a1 + 144))
  {
    goto LABEL_157;
  }

  v73 = &__p;
  sub_1001C23A0(a1 + 16, &v113, &__p, &__p);
  v74 = *(a1 + 136);
  v75 = v116;
  v76 = *(a1 + 144) - v74;
  if (v76)
  {
    v107 = v22;
    v110 = v23;
    v77 = 0xAAAAAAAAAAAAAAABLL * (v76 >> 3);
    if (v116 >= 0)
    {
      v78 = v116;
    }

    else
    {
      v78 = v115;
    }

    if (v116 < 0)
    {
      v73 = __p;
    }

    if (v77 <= 1)
    {
      v79 = 1;
    }

    else
    {
      v79 = 0xAAAAAAAAAAAAAAABLL * (v76 >> 3);
    }

    v80 = 1;
    v81 = 1;
    do
    {
      v82 = *(v74 + 23);
      v83 = v82;
      if ((v82 & 0x80u) != 0)
      {
        v82 = *(v74 + 8);
      }

      if (v78 == v82)
      {
        v84 = v83 >= 0 ? v74 : *v74;
        if (!memcmp(v73, v84, v78))
        {
          v23 = 1;
          v22 = v107;
          if ((v75 & 0x80) == 0)
          {
            goto LABEL_155;
          }

          goto LABEL_154;
        }
      }

      v81 = v80++ < v77;
      v74 += 24;
      --v79;
    }

    while (v79);
    v23 = v110;
    v22 = v107;
    if ((v75 & 0x80) == 0)
    {
      goto LABEL_155;
    }
  }

  else
  {
    v81 = 0;
    if ((v116 & 0x80) == 0)
    {
      goto LABEL_155;
    }
  }

LABEL_154:
  operator delete(__p);
LABEL_155:
  if (v81)
  {
    goto LABEL_80;
  }

  LOBYTE(v38) = v113;
LABEL_157:
  v85 = *(a1 + 160);
  if ((v38 & 0x80) == 0 && (*(*(*(a1 + 24) + 16) + 4 * v38) & v85) != 0)
  {
    goto LABEL_79;
  }

  v86 = (v85 >> 7) & 1;
  if (v38 != 95)
  {
    LOBYTE(v86) = 0;
  }

  v23 |= v86;
LABEL_80:
  if (*(a1 + 168) == (v23 & 1))
  {
    v48 = 0;
    v49 = -993;
  }

  else
  {
    *(v2 + 16) += v22;
    v48 = *(a1 + 8);
    v49 = -995;
  }

  *v2 = v49;
  *(v2 + 80) = v48;
}

void sub_1001C1DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_1001C1DCC(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

std::locale *sub_1001C1E64(std::locale *a1)
{
  a1->__locale_ = off_100441B78;
  locale = a1[17].__locale_;
  if (locale)
  {
    v3 = a1[18].__locale_;
    v4 = a1[17].__locale_;
    if (v3 != locale)
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

      while (v3 != locale);
      v4 = a1[17].__locale_;
    }

    a1[18].__locale_ = locale;
    operator delete(v4);
  }

  v6 = a1[14].__locale_;
  if (v6)
  {
    a1[15].__locale_ = v6;
    operator delete(v6);
  }

  v7 = a1[11].__locale_;
  if (v7)
  {
    v8 = a1[12].__locale_;
    v9 = a1[11].__locale_;
    if (v8 == v7)
    {
LABEL_21:
      a1[12].__locale_ = v7;
      operator delete(v9);
      goto LABEL_22;
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
LABEL_19:
          operator delete(*v10);
        }
      }

      else
      {
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
          goto LABEL_19;
        }
      }

      v8 = v10;
      if (v10 == v7)
      {
        v9 = a1[11].__locale_;
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  v11 = a1[8].__locale_;
  if (v11)
  {
    a1[9].__locale_ = v11;
    operator delete(v11);
  }

  v12 = a1[5].__locale_;
  if (v12)
  {
    a1[6].__locale_ = v12;
    operator delete(v12);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100441830;
  v13 = a1[1].__locale_;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

void sub_1001C1FE0(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  if (v3 > 0x16)
  {
    operator new();
  }

  v8 = a3 - a2;
  if (a3 != a2)
  {
    memcpy(__dst, a2, v3);
  }

  *(__dst + v3) = 0;
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1001C2120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C213C(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = a3 - a2;
  if (a3 != a2)
  {
    memcpy(&__dst, a2, v5);
  }

  __dst.__r_.__value_.__s.__data_[v5] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__dst.__r_.__value_.__l.__size_)
    {
      goto LABEL_15;
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__dst.__r_.__value_.__s + 23))
    {
      return;
    }

    p_dst = &__dst;
  }

  std::__get_collation_name(&v12, p_dst);
  *a4 = *&v12.__r_.__value_.__l.__data_;
  v8 = v12.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v12.__r_.__value_.__l + 2);
  v9 = HIBYTE(v8);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a4 + 8);
  }

  if (v9)
  {
    goto LABEL_15;
  }

  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__dst.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_15;
    }
  }

  else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v10 = *(a4 + 23);
    if (v10 != 12 && v10 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  v11 = *(a4 + 8);
  if (v11 == 1 || v11 == 12)
  {
LABEL_30:
    std::string::operator=(a4, &__dst);
    goto LABEL_15;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_15:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1001C235C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_1001C23A0(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  v13 = a3 - a2;
  if (a3 != a2)
  {
    memcpy(__dst, a2, v5);
  }

  *(__dst + v5) = 0;
  v7 = v13;
  if ((v13 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if ((v13 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v8, v8 + v7);
  v9 = *(a4 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a4 + 8);
  }

  if (v9 == 1)
  {
    goto LABEL_23;
  }

  if (v9 != 12)
  {
    if (v10 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
      if ((v13 & 0x80000000) == 0)
      {
        return;
      }

LABEL_26:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_23:
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_26;
  }

  if (v10 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  v11[11] = v11[3];
  if (v13 < 0)
  {
    goto LABEL_26;
  }
}

void sub_1001C2544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C2560()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brack);
}

void sub_1001C25B8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 != a3)
  {
    v5 = *a2;
    if (v5 != 93)
    {
      memset(&v32, 0, sizeof(v32));
      if (a2 + 1 != a3 && v5 == 91)
      {
        v9 = a2[1];
        switch(v9)
        {
          case '.':
            v23 = a2 + 2;
            if (a3 - (v4 + 2) >= 2)
            {
              v24 = a3 - v4 - 4;
              v25 = v4 + 2;
              v26 = v23 + 1;
              if (*v23 != 46)
              {
                goto LABEL_43;
              }

LABEL_42:
              if (*v26 == 93)
              {
                if (v25 != a3)
                {
                  sub_1001C3A44(a1, v23, v25, &v33);
                  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v32.__r_.__value_.__l.__data_);
                  }

                  v32 = v33;
                  size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
                  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    size = v32.__r_.__value_.__l.__size_;
                  }

                  if (size - 1 >= 2)
                  {
                    sub_1001C39EC();
                  }

                  v4 = v25 + 2;
                  v10 = *(a1 + 24) & 0x1F0;
                  v12 = v4;
                  if (size)
                  {
LABEL_16:
                    if (v12 == a3 || (v13 = *v12, v13 == 93))
                    {
                      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        if (!*(&v32.__r_.__value_.__s + 23))
                        {
                          goto LABEL_72;
                        }

                        v14 = &v32;
                        if (HIBYTE(v32.__r_.__value_.__r.__words[2]) != 1)
                        {
                          v15 = v32.__r_.__value_.__s.__data_[0];
                          v16 = v32.__r_.__value_.__s.__data_[1];
                          if (*(a4 + 169) == 1)
                          {
LABEL_22:
                            v33.__r_.__value_.__s.__data_[0] = (*(**(a4 + 24) + 40))(*(a4 + 24), v15);
                            v33.__r_.__value_.__s.__data_[1] = (*(**(a4 + 24) + 40))(*(a4 + 24), v16);
                            sub_1001C46E8(a4 + 112, &v33);
                            goto LABEL_72;
                          }

                          goto LABEL_33;
                        }

                        goto LABEL_61;
                      }

                      if (!v32.__r_.__value_.__l.__size_)
                      {
                        goto LABEL_72;
                      }

                      if (v32.__r_.__value_.__l.__size_ != 1)
                      {
                        v15 = *v32.__r_.__value_.__l.__data_;
                        v16 = *(v32.__r_.__value_.__r.__words[0] + 1);
                        if (*(a4 + 169) == 1)
                        {
                          goto LABEL_22;
                        }

LABEL_33:
                        LOWORD(v33.__r_.__value_.__l.__data_) = v15 | (v16 << 8);
                        sub_1001C46E8(a4 + 112, &v33);
                        goto LABEL_72;
                      }

                      goto LABEL_60;
                    }

                    v17 = v12 + 1;
                    if (v12 + 1 == a3 || v13 != 45 || *v17 == 93)
                    {
                      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
                      {
                        if (!v32.__r_.__value_.__l.__size_)
                        {
                          goto LABEL_72;
                        }

                        if (v32.__r_.__value_.__l.__size_ == 1)
                        {
LABEL_60:
                          v14 = v32.__r_.__value_.__r.__words[0];
LABEL_61:
                          sub_1001C10AC(a4, v14->__r_.__value_.__s.__data_[0]);
                          goto LABEL_72;
                        }

                        v14 = v32.__r_.__value_.__r.__words[0];
                      }

                      else
                      {
                        if (!*(&v32.__r_.__value_.__s + 23))
                        {
                          goto LABEL_72;
                        }

                        v14 = &v32;
                        if (HIBYTE(v32.__r_.__value_.__r.__words[2]) == 1)
                        {
                          goto LABEL_61;
                        }
                      }

                      sub_1001C38E4(a4, v14->__r_.__value_.__s.__data_[0], v14->__r_.__value_.__s.__data_[1]);
LABEL_72:
                      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v32.__r_.__value_.__l.__data_);
                      }

                      return;
                    }

                    memset(&v33, 0, sizeof(v33));
                    if (v12 + 2 != a3 && *v17 == 91 && v12[2] == 46)
                    {
                      sub_1001C2EF4(a1, v12 + 3, a3, &v33);
                      goto LABEL_78;
                    }

                    if ((v10 | 0x40) == 0x40)
                    {
                      LODWORD(v17) = *v17;
                      if (v17 == 92)
                      {
                        if (v10)
                        {
                          sub_1001C3160(a1, v12 + 2, a3, &v33);
                        }

                        else
                        {
                          sub_1001C2FC8(a1, v12 + 2, a3, &v33, a4);
                        }

LABEL_78:
                        v31 = v32;
                        memset(&v32, 0, sizeof(v32));
                        __p = v33;
                        memset(&v33, 0, sizeof(v33));
                        sub_1001C3448(a4, &v31, &__p);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                          if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
LABEL_80:
                            if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                            {
                              goto LABEL_72;
                            }

                            goto LABEL_84;
                          }
                        }

                        else if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_80;
                        }

                        operator delete(v31.__r_.__value_.__l.__data_);
                        if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_72;
                        }

LABEL_84:
                        operator delete(v33.__r_.__value_.__l.__data_);
                        goto LABEL_72;
                      }
                    }

                    else
                    {
                      LOBYTE(v17) = *v17;
                    }

                    std::string::operator=(&v33, v17);
                    goto LABEL_78;
                  }

LABEL_10:
                  if ((v10 | 0x40) == 0x40)
                  {
                    v11 = *v4;
                    if (v11 == 92)
                    {
                      if (v10)
                      {
                        v12 = sub_1001C3160(a1, v4 + 1, a3, &v32);
                      }

                      else
                      {
                        v12 = sub_1001C2FC8(a1, v4 + 1, a3, &v32, a4);
                        v10 = 0;
                      }

                      goto LABEL_16;
                    }
                  }

                  else
                  {
                    LOBYTE(v11) = *v4;
                  }

                  std::string::operator=(&v32, v11);
                  v12 = v4 + 1;
                  goto LABEL_16;
                }
              }

              else
              {
LABEL_43:
                while (v24)
                {
                  --v24;
                  v25 = v26;
                  v27 = *v26++;
                  if (v27 == 46)
                  {
                    goto LABEL_42;
                  }
                }
              }
            }

            break;
          case ':':
            v18 = a2 + 2;
            if (a3 - (v4 + 2) >= 2)
            {
              v19 = a3 - v4 - 4;
              v20 = v4 + 2;
              v21 = v4 + 3;
              if (*v18 != 58)
              {
                goto LABEL_37;
              }

LABEL_36:
              if (*v21 == 93)
              {
                if (v20 != a3)
                {
                  v29 = sub_1001C4014(a1, v18, v20, *(a1 + 24) & 1);
                  if (!v29)
                  {
                    sub_1001C3FBC();
                  }

                  *(a4 + 160) |= v29;
                  goto LABEL_72;
                }
              }

              else
              {
LABEL_37:
                while (v19)
                {
                  --v19;
                  v20 = v21;
                  v22 = *v21++;
                  if (v22 == 58)
                  {
                    goto LABEL_36;
                  }
                }
              }
            }

            break;
          case '=':
            sub_1001C2BEC(a1, a2 + 2, a3, a4);
            goto LABEL_72;
          default:
            goto LABEL_9;
        }

        sub_1001C2560();
      }

LABEL_9:
      v10 = *(a1 + 24) & 0x1F0;
      goto LABEL_10;
    }
  }
}

void sub_1001C2B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v28 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((*(v28 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(v28 - 72));
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(a23);
  _Unwind_Resume(exception_object);
}

_BYTE *sub_1001C2BEC(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_41;
  }

  v7 = a2;
  v8 = a2 + 1;
  if (*a2 != 61)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v8 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v7 = v8;
      v9 = *v8++;
      if (v9 == 61)
      {
        goto LABEL_3;
      }
    }

LABEL_41:
    sub_1001C2560();
  }

  if (v7 == a3)
  {
    goto LABEL_41;
  }

  sub_1001C3A44(a1, a2, v7, &v24);
  v10 = v26;
  if ((v26 & 0x8000000000000000) == 0)
  {
    if (v26)
    {
      v11 = &v24;
      goto LABEL_13;
    }

LABEL_42:
    sub_1001C39EC();
  }

  v10 = v25;
  if (!v25)
  {
    goto LABEL_42;
  }

  v11 = v24;
LABEL_13:
  sub_1001C3CA8(a1, v11, &v11[v10], __p);
  v12 = HIBYTE(v23);
  if (v23 < 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    v13 = *(a4 + 144);
    if (v13 >= *(a4 + 152))
    {
      *(a4 + 144) = sub_1001C3E68(a4 + 136, __p);
      if (SHIBYTE(v23) < 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (SHIBYTE(v23) < 0)
      {
        sub_100003228(*(a4 + 144), __p[0], __p[1]);
      }

      else
      {
        v14 = *__p;
        *(v13 + 16) = v23;
        *v13 = v14;
      }

      *(a4 + 144) = v13 + 24;
      *(a4 + 144) = v13 + 24;
      if (SHIBYTE(v23) < 0)
      {
        goto LABEL_27;
      }
    }

LABEL_39:
    if (v26 < 0)
    {
      goto LABEL_28;
    }

    return v7 + 2;
  }

  v15 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v15 = v25;
  }

  if (v15 == 2)
  {
    v18 = v24;
    if ((v26 & 0x80u) == 0)
    {
      v18 = &v24;
    }

    v19 = *v18;
    v20 = v18[1];
    if (*(a4 + 169) == 1)
    {
      v21 = (*(**(a4 + 24) + 40))(*(a4 + 24), v19);
      v27 = v21 | ((*(**(a4 + 24) + 40))(*(a4 + 24), v20) << 8);
    }

    else
    {
      v27 = v19 | (v20 << 8);
    }

    sub_1001C46E8(a4 + 112, &v27);
  }

  else
  {
    if (v15 != 1)
    {
      sub_1001C39EC();
    }

    v16 = &v24;
    if ((v26 & 0x80u) != 0)
    {
      v16 = v24;
    }

    sub_1001C10AC(a4, *v16);
  }

  if ((SHIBYTE(v23) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

LABEL_27:
  operator delete(__p[0]);
  if (v26 < 0)
  {
LABEL_28:
    operator delete(v24);
    return v7 + 2;
  }

  return v7 + 2;
}

void sub_1001C2E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 144) = v22;
  if (a15 < 0)
  {
    operator delete(__p);
    if (a21 < 0)
    {
LABEL_7:
      operator delete(a16);
      _Unwind_Resume(a1);
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_7;
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_1001C2EF4(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  v7 = a2 + 1;
  if (*a2 != 46)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v7 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v6 = v7;
      v8 = *v7++;
      if (v8 == 46)
      {
        goto LABEL_3;
      }
    }

LABEL_14:
    sub_1001C2560();
  }

  if (v6 == a3)
  {
    goto LABEL_14;
  }

  sub_1001C3A44(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    sub_1001C39EC();
  }

  return v6 + 2;
}

unsigned __int8 *sub_1001C2FC8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_1001BFBC8();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 == 115)
      {
        *(a5 + 160) |= 0x4000u;
        return a2 + 1;
      }

      if (v6 == 119)
      {
        *(a5 + 160) |= 0x500u;
        sub_1001C10AC(a5, 95);
        return a2 + 1;
      }
    }

    else
    {
      if (v6 == 98)
      {
        std::string::operator=(this, 8);
        return a2 + 1;
      }

      if (v6 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }
    }
  }

  else if (*a2 > 0x52u)
  {
    if (v6 == 83)
    {
      *(a5 + 164) |= 0x4000u;
      return a2 + 1;
    }

    if (v6 == 87)
    {
      *(a5 + 164) |= 0x500u;
      sub_1001C4190(a5, 95);
      return a2 + 1;
    }
  }

  else
  {
    if (!*a2)
    {
      std::string::operator=(this, 0);
      return a2 + 1;
    }

    if (v6 == 68)
    {
      *(a5 + 164) |= 0x400u;
      return a2 + 1;
    }
  }

  return sub_1001BFEA0(a1, a2, a3, this);
}

unsigned __int8 *sub_1001C3160(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
    goto LABEL_48;
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (!this)
        {
          sub_1001C02B0(a1);
        }

        std::string::operator=(this, 12);
        return a2 + 1;
      }

      else
      {
        if (v5 != 110)
        {
          goto LABEL_32;
        }

        if (!this)
        {
          sub_1001C02B0(a1);
        }

        std::string::operator=(this, 10);
        return a2 + 1;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (!this)
          {
            sub_1001C02B0(a1);
          }

          std::string::operator=(this, 13);
          return a2 + 1;
        case 't':
          if (!this)
          {
            sub_1001C02B0(a1);
          }

          std::string::operator=(this, 9);
          return a2 + 1;
        case 'v':
          if (!this)
          {
            sub_1001C02B0(a1);
          }

          std::string::operator=(this, 11);
          return a2 + 1;
        default:
          goto LABEL_32;
      }
    }
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_32;
    }

    goto LABEL_17;
  }

  if (v5 == 92)
  {
LABEL_17:
    if (!this)
    {
      sub_1001C02B0(a1);
    }

    std::string::operator=(this, v5);
    return a2 + 1;
  }

  if (v5 != 97)
  {
    if (v5 == 98)
    {
      if (!this)
      {
        sub_1001C02B0(a1);
      }

      std::string::operator=(this, 8);
      return a2 + 1;
    }

LABEL_32:
    if ((v5 & 0xFFFFFFF8) == 0x30)
    {
      v7 = v5 - 48;
      v8 = a2 + 1;
      if (a2 + 1 != a3 && (*v8 & 0xF8) == 0x30)
      {
        v7 = *v8 + 8 * v7 - 48;
        v8 = a2 + 2;
        if (a2 + 2 != a3)
        {
          v9 = *v8 + 8 * v7 - 48;
          if ((*v8 & 0xF8) == 0x30)
          {
            v8 = a2 + 3;
            v7 = v9;
          }
        }
      }

      if (!this)
      {
        sub_1001C02B0(a1);
      }

      std::string::operator=(this, v7);
      return v8;
    }

LABEL_48:
    sub_1001BFBC8();
  }

  if (!this)
  {
    sub_1001C02B0(a1);
  }

  std::string::operator=(this, 7);
  return a2 + 1;
}

void sub_1001C3448(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) != 1)
  {
    v11 = a2[23];
    if (v11 < 0)
    {
      if (*(a2 + 1) != 1)
      {
        goto LABEL_73;
      }
    }

    else if (v11 != 1)
    {
      goto LABEL_73;
    }

    v29 = a3[23];
    if (v29 < 0)
    {
      v29 = *(a3 + 1);
    }

    if (v29 != 1)
    {
LABEL_73:
      sub_1001C4690();
    }

    if (*(a1 + 169) != 1)
    {
LABEL_63:
      *v39 = *v4;
      v40 = *(v4 + 2);
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
      *v4 = 0;
      *__p = *v3;
      v42 = *(v3 + 2);
      *v3 = 0;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      sub_1001C43AC((a1 + 88), v39);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v40) < 0)
        {
          goto LABEL_67;
        }
      }

      else if (SHIBYTE(v40) < 0)
      {
        goto LABEL_67;
      }

      return;
    }

    v30 = a2;
    if ((v11 & 0x80000000) != 0)
    {
      v30 = *a2;
    }

    v31 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v30);
    if (v4[23] < 0)
    {
      **v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      *v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
LABEL_60:
        v33 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v32);
        v34 = v3;
        if (v3[23] < 0)
        {
          v34 = *v3;
        }

        *v34 = v33;
        goto LABEL_63;
      }
    }

    v32 = *v3;
    goto LABEL_60;
  }

  if (*(a1 + 169))
  {
    for (i = 0; ; ++i)
    {
      v7 = v4[23];
      if ((v7 & 0x8000000000000000) != 0)
      {
        if (i >= *(v4 + 1))
        {
LABEL_25:
          for (j = 0; ; ++j)
          {
            v17 = v3[23];
            if ((v17 & 0x8000000000000000) != 0)
            {
              if (j >= *(v3 + 1))
              {
                goto LABEL_44;
              }
            }

            else if (j >= v17)
            {
              goto LABEL_44;
            }

            v18 = v3;
            if ((v17 & 0x80000000) != 0)
            {
              v18 = *v3;
            }

            v19 = (*(**(a1 + 24) + 40))(*(a1 + 24), v18[j]);
            v20 = v3;
            if (v3[23] < 0)
            {
              v20 = *v3;
            }

            v20[j] = v19;
          }
        }
      }

      else if (i >= v7)
      {
        goto LABEL_25;
      }

      v8 = v4;
      if ((v7 & 0x80000000) != 0)
      {
        v8 = *v4;
      }

      v9 = (*(**(a1 + 24) + 40))(*(a1 + 24), v8[i]);
      v10 = v4;
      if (v4[23] < 0)
      {
        v10 = *v4;
      }

      v10[i] = v9;
    }
  }

  for (k = 0; ; ++k)
  {
    v14 = a2[23];
    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (k >= v14)
    {
      goto LABEL_35;
    }

LABEL_23:
    v13 = a2;
    if ((v14 & 0x80000000) != 0)
    {
      v13 = *a2;
      v15 = *a2;
    }

    else
    {
      v15 = a2;
    }

    v15[k] = v13[k];
  }

  if (k < *(a2 + 1))
  {
    goto LABEL_23;
  }

LABEL_35:
  for (m = 0; ; ++m)
  {
    v23 = a3[23];
    if ((v23 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (m >= v23)
    {
      goto LABEL_44;
    }

LABEL_42:
    v22 = a3;
    if ((v23 & 0x80000000) != 0)
    {
      v22 = *a3;
      v24 = *a3;
    }

    else
    {
      v24 = a3;
    }

    v24[m] = v22[m];
  }

  if (m < *(a3 + 1))
  {
    goto LABEL_42;
  }

LABEL_44:
  v25 = v4[23];
  if (v25 < 0)
  {
    v26 = v4;
    v4 = *v4;
    v25 = *(v26 + 1);
  }

  sub_1001C4534(a1 + 16, v4, &v4[v25]);
  v27 = v3[23];
  if (v27 < 0)
  {
    v28 = v3;
    v3 = *v3;
    v27 = *(v28 + 1);
  }

  sub_1001C4534(a1 + 16, v3, &v3[v27]);
  *v39 = *v37;
  v40 = v38;
  *__p = *v35;
  v42 = v36;
  sub_1001C43AC((a1 + 88), v39);
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      return;
    }

LABEL_67:
    operator delete(v39[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_67;
  }
}

void sub_1001C3894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100047F24(va);
  _Unwind_Resume(a1);
}

void sub_1001C38A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  sub_100047F24(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1001C38E4(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v9 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    sub_1001C46E8(a1 + 112, &v9);
  }

  else
  {
    v6 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v8 = v6;
      sub_1001C46E8(a1 + 112, &v8);
    }

    else
    {
      v7 = v6;
      sub_1001C46E8(a1 + 112, &v7);
    }
  }
}

void sub_1001C39EC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_collate);
}

void sub_1001C3A44(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = a3 - a2;
  if (a3 != a2)
  {
    memcpy(&__dst, a2, v5);
  }

  __dst.__r_.__value_.__s.__data_[v5] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__dst.__r_.__value_.__l.__size_)
    {
      goto LABEL_15;
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__dst.__r_.__value_.__s + 23))
    {
      return;
    }

    p_dst = &__dst;
  }

  std::__get_collation_name(&v12, p_dst);
  *a4 = *&v12.__r_.__value_.__l.__data_;
  v8 = v12.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v12.__r_.__value_.__l + 2);
  v9 = HIBYTE(v8);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a4 + 8);
  }

  if (v9)
  {
    goto LABEL_15;
  }

  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__dst.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_15;
    }
  }

  else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v10 = *(a4 + 23);
    if (v10 != 12 && v10 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  v11 = *(a4 + 8);
  if (v11 == 1 || v11 == 12)
  {
LABEL_30:
    std::string::operator=(a4, &__dst);
    goto LABEL_15;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_15:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1001C3C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_1001C3CA8(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  v13 = a3 - a2;
  if (a3 != a2)
  {
    memmove(__dst, a2, v5);
  }

  *(__dst + v5) = 0;
  v7 = v13;
  if ((v13 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if ((v13 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v8, v8 + v7);
  v9 = *(a4 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a4 + 8);
  }

  if (v9 == 1)
  {
    goto LABEL_23;
  }

  if (v9 != 12)
  {
    if (v10 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
      if ((v13 & 0x80000000) == 0)
      {
        return;
      }

LABEL_26:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_23:
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_26;
  }

  if (v10 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  v11[11] = v11[3];
  if (v13 < 0)
  {
    goto LABEL_26;
  }
}

void sub_1001C3E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001C3E68(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10000FC84();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
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

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_100003228(v6, *a2, *(a2 + 8));
    v6 = 24 * v2;
  }

  else
  {
    *v6 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 16);
  }

  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = v6 - v8;
  memcpy((v6 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_1001C3FA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100051ED0(va);
  _Unwind_Resume(a1);
}

void sub_1001C3FBC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_ctype);
}

uint64_t sub_1001C4014(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  v4 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  v13 = a3 - a2;
  if (a3 != a2)
  {
    memcpy(__dst, a2, v4);
  }

  *(__dst + v4) = 0;
  v7 = v13;
  if ((v13 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if ((v13 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v8, v8 + v7);
  if ((v13 & 0x80u) == 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  result = std::__get_classname(v9, a4);
  if (v13 < 0)
  {
    v11 = result;
    operator delete(__dst[0]);
    return v11;
  }

  return result;
}

void sub_1001C4174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C4190(uint64_t a1, char a2)
{
  if (*(a1 + 169) != 1)
  {
    v6 = *(a1 + 170);
    v8 = *(a1 + 72);
    v7 = *(a1 + 80);
    if (v8 < v7)
    {
      *v8 = a2;
      *(a1 + 72) = v8 + 1;
      return;
    }

    v9 = *(a1 + 64);
    v14 = (v8 - v9);
    v15 = v8 - v9 + 1;
    if (v15 >= 0)
    {
      v16 = v7 - v9;
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        operator new();
      }

      v20 = v8 - v9;
      *v14 = a2;
      v19 = v14 + 1;
      memcpy(0, v9, v20);
      *(a1 + 64) = 0;
      *(a1 + 72) = v14 + 1;
      *(a1 + 80) = 0;
      if (v9)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

LABEL_26:
    sub_10000FC84();
  }

  v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  v5 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v5 < v4)
  {
    *v5 = v3;
    *(a1 + 72) = v5 + 1;
    return;
  }

  v9 = *(a1 + 64);
  v10 = (v5 - v9);
  v11 = v5 - v9 + 1;
  if (v11 < 0)
  {
    goto LABEL_26;
  }

  v12 = v4 - v9;
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

  v18 = v5 - v9;
  *v10 = v3;
  v19 = v10 + 1;
  memcpy(0, v9, v18);
  *(a1 + 64) = 0;
  *(a1 + 72) = v10 + 1;
  *(a1 + 80) = 0;
  if (v9)
  {
LABEL_23:
    operator delete(v9);
    *(a1 + 72) = v19;
    return;
  }

LABEL_25:
  *(a1 + 72) = v19;
}

void sub_1001C43AC(void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
LABEL_3:
    a1[1] = v7;
    return;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v9 = v8 + 1;
  if (v8 + 1 > 0x555555555555555)
  {
    sub_10000FC84();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x2AAAAAAAAAAAAAALL)
  {
    v11 = 0x555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x555555555555555)
    {
      operator new();
    }

    sub_10000D444();
  }

  v12 = 48 * v8;
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  v13 = *(a2 + 24);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(v12 + 40) = *(a2 + 5);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v7 = 48 * v8 + 48;
  v14 = *a1;
  v15 = a1[1] - *a1;
  *(v12 + 24) = v13;
  v16 = v12 - v15;
  memcpy((v12 - v15), v14, v15);
  *a1 = v16;
  a1[1] = v7;
  a1[2] = 0;
  if (!v14)
  {
    goto LABEL_3;
  }

  operator delete(v14);
  a1[1] = v7;
}

void sub_1001C4534(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  if (v3 > 0x16)
  {
    operator new();
  }

  v8 = a3 - a2;
  if (a3 != a2)
  {
    memmove(__dst, a2, v3);
  }

  *(__dst + v3) = 0;
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1001C4674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C4690()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_range);
}

void sub_1001C46E8(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 1;
  if (v7 >> 1 <= -2)
  {
    sub_10000FC84();
  }

  v9 = v3 - v6;
  if (v9 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000D444();
  }

  *(2 * v8) = *a2;
  v5 = 2 * v8 + 2;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void *sub_1001C47F8(void *result)
{
  *result = off_100441830;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1001C486C(void *a1)
{
  *a1 = off_100441830;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_1001C48FC(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1001C492C(void *result)
{
  *result = off_100441830;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1001C49A0(void *a1)
{
  *a1 = off_100441830;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_1001C4A30(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_1001C4BF8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badbrace);
}

void sub_1001C4C50()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brace);
}

void *sub_1001C4CA8(void *a1)
{
  *a1 = off_100441CB0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_100441830;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1001C4D5C(void *a1)
{
  *a1 = off_100441CB0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_100441830;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

uint64_t sub_1001C4E30(uint64_t result, uint64_t a2)
{
  v2 = (*(a2 + 56) + 16 * *(result + 40));
  if (*a2 != -991)
  {
    *v2 = 0;
    if (!*(result + 32))
    {
      *a2 = -994;
      goto LABEL_28;
    }

    if (*(result + 24))
    {
      *a2 = -994;
      *(a2 + 80) = *(result + 8);
      v2[1] = *(a2 + 16);
      v18 = *(result + 44);
      v19 = *(result + 48);
      if (v18 == v19)
      {
        return result;
      }

      v20 = (v19 - 1);
      v21 = (v18 - 1);
      v22 = *(a2 + 24);
      v23 = *(a2 + 32);
      v24 = v20 - v21;
      if ((v20 - v21) >= 2)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFFELL) + v21;
        v26 = v23 + 24 * v21 + 24;
        v27 = v24 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v26 - 24) = v22;
          *(v26 - 16) = v22;
          *v26 = v22;
          *(v26 + 8) = v22;
          *(v26 - 8) = 0;
          *(v26 + 16) = 0;
          v26 += 48;
          v27 -= 2;
        }

        while (v27);
        if (v24 == (v24 & 0xFFFFFFFFFFFFFFFELL))
        {
          return result;
        }
      }

      else
      {
        v25 = v21;
      }

      v28 = v20 - v25;
      v29 = (v23 + 24 * v25 + 16);
      do
      {
        *(v29 - 2) = v22;
        *(v29 - 1) = v22;
        *v29 = 0;
        v29 += 24;
        --v28;
      }

      while (v28);
      return result;
    }

LABEL_26:
    *a2 = -992;
    return result;
  }

  v3 = *v2 + 1;
  *v2 = v3;
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = v3 < v5;
  if (v3 < v5 && v3 >= v4)
  {
    v6 = v3 < v5 && v2[1] != *(a2 + 16);
  }

  if (v6 && v3 >= v4)
  {
    goto LABEL_26;
  }

  *a2 = -994;
  if (!v6)
  {
LABEL_28:
    *(a2 + 80) = *(result + 16);
    return result;
  }

  *(a2 + 80) = *(result + 8);
  v2[1] = *(a2 + 16);
  v10 = *(result + 44);
  v11 = *(result + 48);
  if (v10 == v11)
  {
    return result;
  }

  v12 = (v11 - 1);
  v13 = (v10 - 1);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = v12 - v13;
  if ((v12 - v13) < 2)
  {
    v17 = v13;
LABEL_39:
    v32 = v12 - v17;
    v33 = (v15 + 24 * v17 + 16);
    do
    {
      *(v33 - 2) = v14;
      *(v33 - 1) = v14;
      *v33 = 0;
      v33 += 24;
      --v32;
    }

    while (v32);
    return result;
  }

  v17 = (v16 & 0xFFFFFFFFFFFFFFFELL) + v13;
  v30 = v15 + 24 * v13 + 24;
  v31 = v16 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v30 - 24) = v14;
    *(v30 - 16) = v14;
    *v30 = v14;
    *(v30 + 8) = v14;
    *(v30 - 8) = 0;
    *(v30 + 16) = 0;
    v30 += 48;
    v31 -= 2;
  }

  while (v31);
  if (v16 != (v16 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_1001C5008(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    *(a3 + 80) = *(result + 16);
    return result;
  }

  *(a3 + 80) = *(result + 8);
  v3 = *(result + 44);
  *(*(a3 + 56) + 16 * *(result + 40) + 8) = *(a3 + 16);
  v4 = *(result + 48);
  if (v3 != v4)
  {
    v5 = (v4 - 1);
    v6 = (v3 - 1);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    v9 = v5 - v6;
    if ((v5 - v6) < 2)
    {
      v10 = v6;
LABEL_9:
      v13 = v5 - v10;
      v14 = (v8 + 24 * v10 + 16);
      do
      {
        *(v14 - 2) = v7;
        *(v14 - 1) = v7;
        *v14 = 0;
        v14 += 24;
        --v13;
      }

      while (v13);
      return result;
    }

    v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) + v6;
    v11 = v8 + 24 * v6 + 24;
    v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v11 - 24) = v7;
      *(v11 - 16) = v7;
      *v11 = v7;
      *(v11 + 8) = v7;
      *(v11 - 8) = 0;
      *(v11 + 16) = 0;
      v11 += 48;
      v12 -= 2;
    }

    while (v12);
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_9;
    }
  }

  return result;
}

void *sub_1001C50D0(void *a1)
{
  *a1 = off_100441CB0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_100441830;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1001C5184(void *a1)
{
  *a1 = off_100441CB0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_100441830;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

uint64_t sub_1001C5270(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1001C5284(void *a1)
{
  *a1 = off_100441CB0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_100441830;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1001C5338(void *a1)
{
  *a1 = off_100441CB0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_100441830;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

uint64_t sub_1001C5418(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_1001C5454(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_1001C5468()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_empty);
}

unsigned __int8 *sub_1001C54C0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_1001C5960(a1, a2, a3);
  if (result == a2 && result != a3 && result + 1 != a3 && *result == 92)
  {
    v7 = result[1];
    if (v7 == 40)
    {
      v8 = result + 2;
      if ((*(a1 + 24) & 2) == 0)
      {
        operator new();
      }

      v9 = *(a1 + 28);
      while (v8 != a3)
      {
        v10 = *(a1 + 56);
        v11 = *(a1 + 28);
        v12 = sub_1001C54C0(a1, v8, a3);
        if (v12 == v8)
        {
          break;
        }

        v13 = *(a1 + 28);
        v14 = sub_1001C56E8(a1, v12, a3);
        v15 = v14 == v8;
        v8 = v14;
        if (v15)
        {
          goto LABEL_20;
        }
      }

      v14 = v8;
LABEL_20:
      if (v14 == a3 || v14 + 1 == a3 || *v14 != 92 || v14[1] != 41)
      {
        sub_1001BDF74();
      }

      result = &v14[2 * (v14[1] == 41)];
      if ((*(a1 + 24) & 2) == 0)
      {
        operator new();
      }
    }

    else if (((v7 & 0xF8) == 0x30 || (v7 & 0xFE) == 0x38) && (v7 - 49) <= 8)
    {
      if ((v7 - 48) <= *(a1 + 28))
      {
        sub_1001C04CC(a1);
      }

      sub_1001C0474();
    }
  }

  return result;
}

unsigned __int8 *sub_1001C56E8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = *a2;
    if (v3 == 42)
    {
      sub_1001C4A68();
    }

    if (a2 + 1 != a3 && v3 == 92 && a2[1] == 123)
    {
      v5 = &a2[2 * (a2[1] == 123)];
      if (v5 == a3)
      {
        goto LABEL_41;
      }

      v6 = *v5;
      if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
      {
        goto LABEL_41;
      }

      v7 = v6 - 48;
      v8 = v5 + 1;
      if (v5 + 1 != a3)
      {
        do
        {
          v9 = *v8;
          if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
          {
            goto LABEL_17;
          }

          if (v7 >= 214748364)
          {
            goto LABEL_41;
          }

          v7 = v9 + 10 * v7 - 48;
          ++v8;
        }

        while (v8 != a3);
        v8 = a3;
      }

LABEL_17:
      if (v8 != a3)
      {
        v10 = v8 + 1;
        v11 = *v8;
        if (v11 == 44)
        {
          if (v10 != a3 && ((v12 = *v10, (v12 & 0xF8) == 0x30) || (v12 & 0xFE) == 0x38))
          {
            v13 = v12 - 48;
            v10 = v8 + 2;
            if (v8 + 2 != a3)
            {
              do
              {
                v14 = *v10;
                if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
                {
                  goto LABEL_23;
                }

                if (v13 >= 214748364)
                {
                  goto LABEL_41;
                }

                v13 = v14 + 10 * v13 - 48;
                ++v10;
              }

              while (v10 != a3);
              v10 = a3;
            }
          }

          else
          {
            v13 = -1;
          }

LABEL_23:
          if (v10 != a3 && v10 + 1 != a3 && *v10 == 92 && v10[1] == 125)
          {
            if (v13 == -1)
            {
              sub_1001C4A68();
            }

            if (v13 >= v7)
            {
              sub_1001C4A68();
            }

LABEL_41:
            sub_1001C4BF8();
          }
        }

        else if (v10 != a3 && v11 == 92 && *v10 == 125)
        {
          sub_1001C4A68();
        }
      }

      sub_1001C4C50();
    }
  }

  return a2;
}

_BYTE *sub_1001C5960(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2 + 1;
    v3 = *a2;
    if (a2 + 1 != a3 || v3 != 36)
    {
      if ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0)
      {
        sub_1001C02B0(a1);
      }

      if (v4 != a3 && v3 == 92)
      {
        v7 = *v4 - 36;
        if (v7 <= 0x3A && ((1 << v7) & 0x580000000000441) != 0)
        {
          sub_1001C02B0(a1);
        }
      }

      if (*a2 == 46)
      {
        operator new();
      }
    }
  }

  return sub_1001BF870(a1, a2, a3);
}

void *sub_1001C5AA4(void *result)
{
  *result = off_100441830;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1001C5B18(void *a1)
{
  *a1 = off_100441830;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_1001C5BA8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

uint64_t sub_1001C5BE8(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_1001C04CC(a1);
    }

    sub_1001C0474();
  }

  return 0;
}

unsigned __int8 *sub_1001C5C4C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 != a3)
  {
    v8 = *a2;
    v9 = (v8 - 36);
    if (v9 > 0x3A)
    {
      goto LABEL_21;
    }

    if (((1 << (v8 - 36)) & 0x5800000080004D1) != 0)
    {
      goto LABEL_4;
    }

    if (v9 == 5)
    {
      if (!*(a1 + 36))
      {
LABEL_22:
        sub_1001C02B0(a1);
      }
    }

    else
    {
LABEL_21:
      if ((v8 - 123) >= 2)
      {
        goto LABEL_22;
      }
    }

LABEL_4:
    v10 = sub_1001C5FD4(a1, a2, a3);
    v11 = v10;
    if (v10 == a2)
    {
      if (*v10 == 46)
      {
        operator new();
      }

      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v11 = sub_1001C5FD4(a1, a2, a3);
  if (v11 == a2)
  {
LABEL_8:
    v11 = sub_1001BF870(a1, a2, a3);
  }

LABEL_9:
  if (v11 == a2 && v11 != a3)
  {
    v12 = *v11;
    switch(v12)
    {
      case '$':
        operator new();
      case '(':
        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        v13 = *(a1 + 28);
        ++*(a1 + 36);
        v14 = sub_1001BC7A0(a1, v11 + 1, a3);
        if (v14 == a3 || *v14 != 41)
        {
          sub_1001BDF74();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        --*(a1 + 36);
        v11 = v14 + 1;
        break;
      case '^':
        operator new();
    }
  }

  if (v11 == a2)
  {
    return v11;
  }

  v15 = (*(a1 + 28) + 1);

  return sub_1001BDA54(a1, v11, a3);
}

unsigned __int8 *sub_1001C5FD4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return a2;
  }

  v3 = a2[1];
  v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x5800000080004F1) == 0;
  if (!v4 || (v3 - 123) < 3)
  {
    sub_1001C02B0(a1);
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v6 = a2 + 1;

    return sub_1001C3160(a1, v6, a3, 0);
  }

  else
  {
    v8 = sub_1001C5BE8(a1, v3);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    return &a2[v9];
  }
}

const void ***sub_1001C60C0(void *a1, uint64_t ***a2)
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

void sub_1001C640C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001C6420(va);
  _Unwind_Resume(a1);
}

void **sub_1001C6420(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = v2;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          v2 = v5;
        }
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t sub_1001C64C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  *(a4 + 24) = a3;
  v11 = (a4 + 24);
  *(a4 + 32) = a3;
  *(a4 + 40) = 0;
  sub_1001BED34(a4, (v10 + 1), (a4 + 24));
  *(a4 + 48) = a2;
  *(a4 + 56) = a2;
  *(a4 + 64) = 0;
  *(a4 + 72) = *v11;
  *(a4 + 88) = *(a4 + 40);
  if ((v9 & 0x800) == 0)
  {
    *(a4 + 104) = a2;
  }

  *(a4 + 96) = 1;
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    if (sub_1001BE874(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  if (*(a1 + 28))
  {
    if (sub_1001C723C(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

LABEL_13:
    if (a2 != a3 && (v9 & 0x40) == 0)
    {
      for (i = a2 + 1; i != a3; ++i)
      {
        sub_1001BED34(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
        if ((*(a1 + 24) & 0x1F0) != 0)
        {
          if (*(a1 + 28))
          {
            if (sub_1001C723C(a1, i, a3, a4, v9 | 0x80u, 0))
            {
              goto LABEL_28;
            }
          }

          else if (sub_1001C693C(a1, i, a3, a4, v9 | 0x80u, 0))
          {
            goto LABEL_28;
          }
        }

        else if (sub_1001BE874(a1, i, a3, a4, v9 | 0x80u, 0))
        {
          goto LABEL_28;
        }

        sub_1001BED34(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
      }

      sub_1001BED34(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
      if ((*(a1 + 24) & 0x1F0) != 0)
      {
        if (*(a1 + 28))
        {
          if (sub_1001C723C(a1, i, a3, a4, v9 | 0x80u, 0))
          {
            goto LABEL_28;
          }
        }

        else if (sub_1001C693C(a1, i, a3, a4, v9 | 0x80u, 0))
        {
          goto LABEL_28;
        }
      }

      else if (sub_1001BE874(a1, i, a3, a4, v9 | 0x80u, 0))
      {
        goto LABEL_28;
      }
    }

    result = 0;
    *(a4 + 8) = *a4;
    return result;
  }

  if ((sub_1001C693C(a1, a2, a3, a4, v9, (v9 & 0x800) == 0) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_28:
  if (*(a4 + 8) == *a4)
  {
    v13 = v11;
  }

  else
  {
    v13 = *a4;
  }

  v14 = *v13;
  *(a4 + 56) = *v13;
  *(a4 + 64) = *(a4 + 48) != v14;
  v15 = *(v13 + 1);
  *(a4 + 72) = v15;
  *(a4 + 88) = v15 != *(a4 + 80);
  return 1;
}

void sub_1001C67D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  v11 = a4[1] - *a4;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
  if (v12 <= v15)
  {
    if (v12 < v15)
    {
      v13 = v14 + v11;
      *(a1 + 8) = v14 + v11;
    }
  }

  else
  {
    sub_1001C89F4(a1, v12 - v15);
    v14 = *a1;
    v13 = *(a1 + 8);
  }

  if (v13 == v14)
  {
    v20 = a2 - v10;
  }

  else
  {
    v16 = 0;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
    v18 = *a4;
    v19 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
    v20 = a2 - v10;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v21 = (v14 + 16);
    do
    {
      if (v19 <= v16)
      {
        v22 = a4 + 3;
      }

      else
      {
        v22 = v18;
      }

      *(v21 - 2) = v20 + *v22;
      *(v21 - 1) = v20 + v22[1];
      *v21 = *(v22 + 16);
      v21 += 24;
      ++v16;
      v18 += 3;
    }

    while (v17 != v16);
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v23 = v20 + a4[6];
  *(a1 + 48) = v23;
  *(a1 + 56) = v20 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  *(a1 + 72) = v20 + a4[9];
  *(a1 + 80) = v20 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = v23;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t sub_1001C693C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v82 = 0u;
  v83 = 0u;
  v81 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_93;
  }

  *v78 = 0;
  memset(&v78[8], 0, 48);
  *__p = 0uLL;
  memset(v80, 0, 21);
  sub_1001C79A4(&v81);
  v12 = *(*(&v81 + 1) + 8 * ((v83.i64[1] + v83.i64[0]) / 0x2AuLL)) + 96 * ((v83.i64[1] + v83.i64[0]) % 0x2AuLL);
  v13 = *&v78[16];
  *v12 = *v78;
  *(v12 + 16) = v13;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = 0;
  memset(&v78[32], 0, 24);
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  __p[0] = 0;
  __p[1] = 0;
  v80[0] = 0;
  v14 = v80[1];
  *(v12 + 85) = *(&v80[1] + 5);
  *(v12 + 80) = v14;
  v16 = v83.i64[1];
  v15 = v83.i64[0];
  v17 = ++v83.i64[1];
  v18 = *(&v81 + 1);
  v19 = *(a1 + 32);
  v20 = *(*(&v81 + 1) + 8 * ((v16 + v83.i64[0]) / 0x2AuLL)) + 96 * ((v16 + v83.i64[0]) % 0x2AuLL);
  *v20 = 0;
  *(v20 + 8) = a2;
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = *(v20 + 56);
  v22 = (*(v20 + 64) - v21) >> 4;
  v74 = a4;
  if (v19 <= v22)
  {
    if (v19 < v22)
    {
      *(v20 + 64) = v21 + 16 * v19;
    }
  }

  else
  {
    sub_1001BF58C(v20 + 56, v19 - v22);
    v17 = v83.i64[1];
    v15 = v83.i64[0];
    v18 = *(&v81 + 1);
  }

  v76 = 0;
  v23 = 0;
  v24 = 0;
  v25 = *(v18 + 8 * ((v17 + v15 - 1) / 0x2AuLL)) + 96 * ((v17 + v15 - 1) % 0x2AuLL);
  *(v25 + 80) = v6;
  *(v25 + 92) = a6;
  v75 = a3;
  v26 = a3 - a2;
  *(v25 + 88) = a5;
  do
  {
    if ((++v23 & 0xFFF) == 0 && (v23 >> 12) >= v26)
    {
      sub_1001BEF60();
    }

    v28 = *(*(&v81 + 1) + 8 * ((v17 + v83.i64[0] - 1) / 0x2AuLL)) + 96 * ((v17 + v83.i64[0] - 1) % 0x2AuLL);
    v29 = *(v28 + 80);
    if (v29)
    {
      (*(*v29 + 16))(v29, v28);
    }

    v30 = *v28;
    if (*v28 <= -995)
    {
      if (v30 != -1000)
      {
        if (v30 == -999)
        {
          goto LABEL_9;
        }

        if (v30 != -995)
        {
LABEL_107:
          sub_1001BEFB8();
        }

        v31 = v83.i64[0];
        if (!v83.i64[0])
        {
          sub_1001C8090(&v81);
          v31 = v83.i64[0];
        }

        v32 = (*(&v81 + 1) + 8 * (v31 / 0x2A));
        v33 = *v32 + 96 * (v31 % 0x2A);
        if (v82 == *(&v81 + 1))
        {
          v33 = 0;
        }

        if (v33 == *v32)
        {
          v33 = *(v32 - 1) + 4032;
        }

        v34 = *(v28 + 16);
        *(v33 - 96) = *v28;
        *(v33 - 80) = v34;
        *(v33 - 56) = 0;
        *(v33 - 48) = 0;
        *(v33 - 64) = 0;
        *(v33 - 64) = *(v28 + 32);
        *(v33 - 48) = *(v28 + 48);
        *(v28 + 32) = 0;
        *(v28 + 40) = 0;
        *(v28 + 48) = 0;
        *(v33 - 40) = 0;
        *(v33 - 32) = 0;
        *(v33 - 24) = 0;
        *(v33 - 40) = *(v28 + 56);
        *(v33 - 24) = *(v28 + 72);
        *(v28 + 56) = 0;
        *(v28 + 64) = 0;
        *(v28 + 72) = 0;
        v35 = *(v28 + 80);
        *(v33 - 11) = *(v28 + 85);
        *(v33 - 16) = v35;
        v36 = vdupq_laneq_s64(v83, 1);
        v83 = vaddq_s64(v83, xmmword_1003D1E00);
        v36.i64[0] = vaddq_s64(v36, v83).u64[0];
        v37 = (*(*(&v81 + 1) + 8 * (v36.i64[0] / 0x2AuLL)) + 96 * (v36.i64[0] % 0x2AuLL));
        v38 = v37[7];
        if (!v38)
        {
          goto LABEL_39;
        }

LABEL_38:
        v37[8] = v38;
        operator delete(v38);
LABEL_39:
        v40 = v37[4];
        if (v40)
        {
          v37[5] = v40;
          operator delete(v40);
        }

        v41 = 42 * ((v82 - *(&v81 + 1)) >> 3) - 1;
        v42 = v83;
        --v83.i64[1];
        if (v82 == *(&v81 + 1))
        {
          v41 = 0;
        }

        if ((v41 - (v42.i64[1] + v42.i64[0]) + 1) >= 0x54)
        {
          operator delete(*(v82 - 8));
          *&v82 = v82 - 8;
        }

        goto LABEL_9;
      }

      v39 = *(v28 + 16);
      if ((a5 & 0x20) != 0 && v39 == a2 || (a5 & 0x1000) != 0 && v39 != v75)
      {
        goto LABEL_37;
      }

      v49 = v39 - *(v28 + 8);
      if (v24 <= v49)
      {
        v50 = v49;
      }

      else
      {
        v50 = v24;
      }

      if (v76)
      {
        v24 = v50;
      }

      else
      {
        v24 = v49;
      }

      if (v24 == v26)
      {
        v51 = *(&v81 + 1);
        v52 = v82;
        if (v82 == *(&v81 + 1))
        {
          v83.i64[1] = 0;
          v64 = 0;
        }

        else
        {
          v53 = (*(&v81 + 1) + 8 * (v83.i64[0] / 0x2AuLL));
          v54 = (*v53 + 96 * (v83.i64[0] % 0x2AuLL));
          v55 = *(*(&v81 + 1) + 8 * ((v83.i64[1] + v83.i64[0]) / 0x2AuLL)) + 96 * ((v83.i64[1] + v83.i64[0]) % 0x2AuLL);
          if (v54 != v55)
          {
            do
            {
              v56 = v54[7];
              if (v56)
              {
                v54[8] = v56;
                operator delete(v56);
              }

              v57 = v54[4];
              if (v57)
              {
                v54[5] = v57;
                operator delete(v57);
              }

              v54 += 12;
              if ((v54 - *v53) == 4032)
              {
                v58 = v53[1];
                ++v53;
                v54 = v58;
              }
            }

            while (v54 != v55);
            v51 = *(&v81 + 1);
            v52 = v82;
          }

          v83.i64[1] = 0;
          v64 = (v52 - v51) >> 3;
          if (v64 >= 3)
          {
            do
            {
              operator delete(*v51);
              v51 = (*(&v81 + 1) + 8);
              *(&v81 + 1) = v51;
              v64 = (v82 - v51) >> 3;
            }

            while (v64 > 2);
          }
        }

        if (v64 == 1)
        {
          v65 = 21;
LABEL_88:
          v83.i64[0] = v65;
        }

        else if (v64 == 2)
        {
          v65 = 42;
          goto LABEL_88;
        }

        v76 = 1;
        v24 = v26;
        goto LABEL_9;
      }

      v59 = (*(*(&v81 + 1) + 8 * ((v83.i64[1] + v83.i64[0] - 1) / 0x2AuLL)) + 96 * ((v83.i64[1] + v83.i64[0] - 1) % 0x2AuLL));
      v60 = v59[7];
      if (v60)
      {
        v59[8] = v60;
        operator delete(v60);
      }

      v61 = v59[4];
      if (v61)
      {
        v59[5] = v61;
        operator delete(v61);
      }

      v62 = 42 * ((v82 - *(&v81 + 1)) >> 3) - 1;
      v63 = v83;
      --v83.i64[1];
      if (v82 == *(&v81 + 1))
      {
        v62 = 0;
      }

      if ((v62 - (v63.i64[1] + v63.i64[0]) + 1) >= 0x54)
      {
        operator delete(*(v82 - 8));
        *&v82 = v82 - 8;
      }

      v76 = 1;
    }

    else
    {
      if (v30 <= -993)
      {
        if (v30 == -994)
        {
          goto LABEL_9;
        }

        if (v30 != -993)
        {
          goto LABEL_107;
        }

LABEL_37:
        v37 = (*(*(&v81 + 1) + 8 * ((v83.i64[1] + v83.i64[0] - 1) / 0x2AuLL)) + 96 * ((v83.i64[1] + v83.i64[0] - 1) % 0x2AuLL));
        v38 = v37[7];
        if (v38)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (v30 == -992)
      {
        sub_1001BF6E0(v78, v28);
        (*(**(v28 + 80) + 24))(*(v28 + 80), 1, v28);
        (*(*v80[1] + 24))(v80[1], 0, v78);
        v43 = *(&v81 + 1);
        if (v82 == *(&v81 + 1))
        {
          v44 = 0;
        }

        else
        {
          v44 = 42 * ((v82 - *(&v81 + 1)) >> 3) - 1;
        }

        v45 = v83.i64[1] + v83.i64[0];
        if (v44 == v83.i64[1] + v83.i64[0])
        {
          sub_1001C79A4(&v81);
          v43 = *(&v81 + 1);
          v45 = v83.i64[1] + v83.i64[0];
        }

        v46 = *(v43 + 8 * (v45 / 0x2A)) + 96 * (v45 % 0x2A);
        v47 = *&v78[16];
        *v46 = *v78;
        *(v46 + 16) = v47;
        *(v46 + 40) = 0;
        *(v46 + 48) = 0;
        *(v46 + 32) = 0;
        *(v46 + 32) = *&v78[32];
        *(v46 + 48) = *&v78[48];
        memset(&v78[32], 0, 24);
        *(v46 + 56) = 0;
        *(v46 + 64) = 0;
        *(v46 + 72) = 0;
        *(v46 + 56) = *__p;
        *(v46 + 72) = v80[0];
        __p[0] = 0;
        __p[1] = 0;
        v80[0] = 0;
        v48 = v80[1];
        *(v46 + 85) = *(&v80[1] + 5);
        *(v46 + 80) = v48;
        ++v83.i64[1];
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (*&v78[32])
        {
          *&v78[40] = *&v78[32];
          operator delete(*&v78[32]);
        }
      }

      else if (v30 != -991)
      {
        goto LABEL_107;
      }
    }

LABEL_9:
    v17 = v83.i64[1];
  }

  while (v83.i64[1]);
  if (v76)
  {
    v66 = *v74;
    *v66 = a2;
    *(v66 + 8) = a2 + v24;
    v67 = 1;
    *(v66 + 16) = 1;
    v68 = *(&v81 + 1);
    v69 = v82;
    v83.i64[1] = 0;
    v70 = (v82 - *(&v81 + 1)) >> 3;
    if (v70 < 3)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_93:
  v67 = 0;
  v68 = *(&v81 + 1);
  v69 = v82;
  v83.i64[1] = 0;
  v70 = (v82 - *(&v81 + 1)) >> 3;
  if (v70 < 3)
  {
    goto LABEL_95;
  }

  do
  {
LABEL_94:
    operator delete(*v68);
    v69 = v82;
    v68 = (*(&v81 + 1) + 8);
    *(&v81 + 1) = v68;
    v70 = (v82 - v68) >> 3;
  }

  while (v70 > 2);
LABEL_95:
  if (v70 == 1)
  {
    v71 = 21;
LABEL_99:
    v83.i64[0] = v71;
  }

  else if (v70 == 2)
  {
    v71 = 42;
    goto LABEL_99;
  }

  if (v68 != v69)
  {
    do
    {
      v72 = *v68++;
      operator delete(v72);
    }

    while (v68 != v69);
    if (v82 != *(&v81 + 1))
    {
      *&v82 = v82 + ((*(&v81 + 1) - v82 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v81)
  {
    operator delete(v81);
  }

  return v67;
}