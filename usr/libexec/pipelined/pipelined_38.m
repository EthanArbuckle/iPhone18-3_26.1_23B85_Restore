void sub_100259D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_100259EAC(uint64_t a1, __int128 *a2, double a3)
{
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v3;
  *(a1 + 16) = v4;
  result = sqrt(*a2 * a3 * 3.0);
  *(a1 + 40) = result;
  return result;
}

void sub_100259ED8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = (*(*a2 + 24))(a2, -*(a1 + 40)) + a3;
  if (*(a1 + 16) < v4)
  {
    v4 = *(a1 + 16);
  }

  if (v4 < *(a1 + 8))
  {
    v5 = *(a1 + 8);
  }
}

std::string *sub_100259F4C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100259F80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100259F9C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100259FD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100259FEC(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    sub_10000FC84();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_10000D444();
  }

  *(8 * ((a1[1] - *a1) >> 3)) = *a2;
  sub_1001351B8(40 * v3 + 8, a3);
  v7 = 40 * v3 + 40;
  v13 = v7;
  v8 = *a1;
  v9 = a1[1];
  v10 = 40 * v3 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = 0;
    do
    {
      *(v10 + v11) = *&v8[v11];
      sub_1001351B8(v10 + v11 + 8, &v8[v11 + 8]);
      v11 += 40;
    }

    while (&v8[v11] != v9);
    do
    {
      nullsub_81(v8 + 8);
      v8 += 40;
    }

    while (v8 != v9);
    v8 = *a1;
    v7 = v13;
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

void sub_10025A168(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10025A1AC(va);
  _Unwind_Resume(a1);
}

void sub_10025A17C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    v5 = -v2;
    v6 = v3 - 32;
    do
    {
      v6 = nullsub_81(v6) - 40;
      v5 += 40;
    }

    while (v5);
  }

  sub_10025A1AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10025A1AC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    nullsub_81(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10025A204()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10025A274()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t *sub_10025A2E4(uint64_t *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = 126 - 2 * __clz((*(&v3 + 1) - v3) >> 4);
  v8 = *a2;
  v11 = *a2;
  v5 = *(a2 + 2);
  v12 = v5;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  if (*(&v3 + 1) == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  sub_10025E224(v3, *(&v3 + 1), v6, 1);
  *a1 = v8;
  a1[2] = v5;
  sub_10025A474(&__p, a1);
  sub_100261AE0(a1 + 3, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  sub_10025A474(&__p, a1);
  sub_100261AE0(a1 + 15, &__p);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  sub_10025A6C0((a1 + 27), a1);
  return a1;
}

void sub_10025A3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  sub_10025A83C((v13 + 15));
  sub_10025A83C((v13 + 3));
  sub_100048F1C(v13);
  _Unwind_Resume(a1);
}

void sub_10025A424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
    sub_100048F1C(v15);
    _Unwind_Resume(a1);
  }

  sub_100048F1C(v15);
  _Unwind_Resume(a1);
}

void *sub_10025A474(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (!(((v2 - *a2) >> 4) >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_10025A694(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10025A6C0(uint64_t result, uint64_t *a2)
{
  *(result + 8) = 0;
  v3 = (result + 8);
  *(result + 16) = 0;
  *result = result + 8;
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      result = (*(**(v4 + 16 * v6) + 56))(*(v4 + 16 * v6));
      v8 = *(result + 1616);
      if ((v7 & 1) == 0 || !v7 || v8 != v2)
      {
        v9 = *v3;
        if (!*v3)
        {
LABEL_14:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v10 = v9;
            v11 = *(v9 + 32);
            if (v8 >= v11)
            {
              break;
            }

            v9 = *v10;
            if (!*v10)
            {
              goto LABEL_14;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v9 = v10[1];
          if (!v9)
          {
            goto LABEL_14;
          }
        }

        v7 = 1;
        v2 = *(result + 1616);
      }

      ++v6;
      v4 = *a2;
    }

    while (v6 < (a2[1] - *a2) >> 4);
  }

  return result;
}

uint64_t sub_10025A83C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  sub_1000275F4(a1 + 24, *(a1 + 32));
  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_10025A8A0(uint64_t *a1, __int128 *a2, uint64_t **a3, uint64_t *a4)
{
  v7 = *a2;
  v8 = 126 - 2 * __clz((*(&v7 + 1) - v7) >> 4);
  v46 = *a2;
  v53 = *a2;
  v9 = *(a2 + 2);
  v54 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  if (*(&v7 + 1) == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  sub_10025E224(v7, *(&v7 + 1), v10, 1);
  *a1 = v46;
  a1[2] = v9;
  v54 = 0;
  v53 = 0uLL;
  v11 = a4[1];
  v48 = *a4;
  v49 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10025B070(a1, v47);
  v12 = *a1;
  v13 = a1[1];
  v51 = 0;
  v52 = 0;
  v50 = 0;
  if (v12 != v13)
  {
    while (1)
    {
      v15 = (*(**v12 + 40))();
      (*(**v15 + 48))(&v61);
      v16 = *v15;
      __p = COERCE_VOID_((*(**v12 + 24))());
      v56 = v17;
      v57 = v18;
      v58 = v19;
      (*(*v16 + 152))(&v59, v16, &__p, 0);
      if (v59 != v60)
      {
        sub_1002100EC(v47, a3, &__p);
        sub_10020F1C0();
      }

      v20 = 0.0 / 0;
      v21 = v51;
      if (v51 >= v52)
      {
        v23 = v50;
        v24 = v51 - v50;
        v25 = (v51 - v50) >> 3;
        v26 = v25 + 1;
        if ((v25 + 1) >> 61)
        {
          sub_10000FC84();
        }

        v27 = v52 - v50;
        if ((v52 - v50) >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          if (!(v28 >> 61))
          {
            operator new();
          }

          sub_10000D444();
        }

        v29 = (8 * v25);
        v30 = &v29[-((v51 - v50) >> 3)];
        *v29 = v20;
        v22 = v29 + 1;
        memcpy(v30, v23, v24);
        v50 = v30;
        v51 = v22;
        v52 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v51 = v20;
        v22 = v21 + 1;
      }

      v51 = v22;
      v31 = v59;
      if (!v59)
      {
        goto LABEL_39;
      }

      v32 = v60;
      v33 = v59;
      if (v60 != v59)
      {
        break;
      }

LABEL_38:
      v60 = v31;
      operator delete(v33);
LABEL_39:
      v36 = v61;
      if (v61)
      {
        v37 = v62;
        v14 = v61;
        if (v62 != v61)
        {
          do
          {
            v38 = *(v37 - 1);
            if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v38->__on_zero_shared)(v38);
              std::__shared_weak_count::__release_weak(v38);
            }

            v37 -= 16;
          }

          while (v37 != v36);
          v14 = v61;
        }

        v62 = v36;
        operator delete(v14);
      }

      v12 += 16;
      if (v12 == v13)
      {
        goto LABEL_46;
      }
    }

    while (1)
    {
      v34 = *(v32 - 3);
      if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v34->__on_zero_shared)(v34);
        std::__shared_weak_count::__release_weak(v34);
        v35 = *(v32 - 6);
        if (v35)
        {
LABEL_33:
          if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v35->__on_zero_shared)(v35);
            std::__shared_weak_count::__release_weak(v35);
          }
        }
      }

      else
      {
        v35 = *(v32 - 6);
        if (v35)
        {
          goto LABEL_33;
        }
      }

      v32 -= 56;
      if (v32 == v31)
      {
        v33 = v59;
        goto LABEL_38;
      }
    }
  }

LABEL_46:
  sub_100261AE0(a1 + 3, &v50);
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  v39 = v49;
  if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  v40 = nullsub_35(a1 + 3);
  v41 = v40[1];
  if (v41 != *v40)
  {
    if (((v41 - *v40) & 0x8000000000000000) == 0)
    {
      v42 = v41 - *v40;
      operator new();
    }

    sub_10000FC84();
  }

  __p = 0;
  v56 = 0;
  v57 = 0;
  if (a1[1] != *a1)
  {
    v43 = MEMORY[0];
    v44 = v43 * (*(***a1 + 32))(**a1);
    operator new();
  }

  sub_100261AE0(a1 + 15, &__p);
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

  sub_10025A6C0((a1 + 27), a1);
  return a1;
}

void sub_10025AF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_10025A83C((v26 + 15));
  sub_10025A83C((v26 + 3));
  sub_100048F1C(v26);
  _Unwind_Resume(a1);
}

void sub_10025B01C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10025B038);
}

void sub_10025B070(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __p = 0;
  v22 = 0;
  v23 = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v6 = (*(**v3 + 40))();
      if (*v6 && ((*(**v6 + 40))(*v6) & 1) == 0)
      {
        v7 = v22;
        if (v22 >= v23)
        {
          v9 = (v22 - __p) >> 4;
          v10 = v9 + 1;
          if ((v9 + 1) >> 60)
          {
            sub_10000FC84();
          }

          v11 = v23 - __p;
          if ((v23 - __p) >> 3 > v10)
          {
            v10 = v11 >> 3;
          }

          if (v11 >= 0x7FFFFFFFFFFFFFF0)
          {
            v12 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v10;
          }

          if (v12)
          {
            if (!(v12 >> 60))
            {
              operator new();
            }

            sub_10000D444();
          }

          v15 = 16 * v9;
          v16 = *v6;
          *(16 * v9) = *v6;
          if (*(&v16 + 1))
          {
            atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v5 = (v15 + 16);
          v13 = __p;
          v14 = (v15 - (v22 - __p));
          memcpy(v14, __p, v22 - __p);
          __p = v14;
          v23 = 0;
          if (v13)
          {
            operator delete(v13);
          }
        }

        else
        {
          v8 = v6[1];
          *v22 = *v6;
          *(v7 + 1) = v8;
          if (v8)
          {
            atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
          }

          v5 = v7 + 16;
        }

        v22 = v5;
      }

      v3 += 16;
    }

    while (v3 != v4);
  }

  sub_10021127C(&__p, a2);
  v17 = __p;
  if (__p)
  {
    v18 = v22;
    v19 = __p;
    if (v22 != __p)
    {
      do
      {
        v20 = *(v18 - 1);
        if (v20)
        {
          if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
          }
        }

        v18 -= 16;
      }

      while (v18 != v17);
      v19 = __p;
    }

    v22 = v17;
    operator delete(v19);
  }
}

void sub_10025B2D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100048F1C(va);
  _Unwind_Resume(a1);
}

void sub_10025B2E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100048F1C(va);
  _Unwind_Resume(a1);
}

void sub_10025B2F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100048F1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10025B320(uint64_t *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = 15;
  }

  else
  {
    v4 = 3;
  }

  v5 = (*(*a2 + 32))(a2);
  v6 = sub_100261AE4(&a1[v4], v5);
  v12 = v6;
  v7 = *a1;
  v8 = a1[1];
  if (*a1 == v8)
  {
    sub_1000474A4(v14, "");
    sub_100261334("Empty location choices for injection; something must be wrong! choice: ", &buf);
    sub_100181374(&v12, &v17);
    sub_1000E661C(v14, &buf, 2);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_9:
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_19:
        operator delete(v14[0]);
LABEL_10:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    operator delete(buf.__r_.__value_.__l.__data_);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  if (v6 < (v8 - v7) >> 4)
  {
    return v7 + 16 * v6;
  }

  if (qword_10045B050 != -1)
  {
    sub_100386624();
  }

  v10 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
  {
    v11 = (a1[1] - *a1) >> 4;
    LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
    *(buf.__r_.__value_.__r.__words + 4) = v12;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
    *&v17.__r_.__value_.__l.__data_ = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "OOB index error; choice: %{public}zu, size of choices: %{public}zu, rand float: %{public}f", &buf, 0x20u);
  }

  result = *a1;
  if (a1[1] == *a1)
  {
    sub_1000BFF58();
  }

  return result;
}

void sub_10025B538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10025B594(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, __n128 a9@<Q0>, double a10@<D1>)
{
  v13 = a9.n128_f64[0];
  v18 = *(a4 + 12);
  if (v18 >= 2)
  {
    sub_1000474A4(buf, "");
    sub_10017F310("You should only call this function if a floor transition happened!", &v58);
    sub_100383AA4(&v58, __p, buf);
    sub_10003F5D0(__p);
  }

  *a8 = 0;
  v19 = *(a4 + 8);
  if (v18)
  {
    v20 = a1 + 28;
    v21 = a1[28];
    if (v21)
    {
      v22 = a1 + 28;
      v23 = a1[28];
      do
      {
        if (*(v23 + 32) >= v19)
        {
          v22 = v23;
        }

        v23 = *(v23 + 8 * (*(v23 + 32) < v19));
      }

      while (v23);
      if (v22 != v20)
      {
        v24 = v22[5];
        if (v24)
        {
          v25 = v24 - 1;
LABEL_34:
          v33 = *(a1[27] + 40);
          goto LABEL_35;
        }

        if (qword_10045B050 != -1)
        {
          sub_100386624();
        }

        v35 = qword_10045B058;
        if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        *buf = 67109120;
        v51 = v19;
        v36 = "Failed to find a floor with floor number < %d";
LABEL_30:
        v37 = v35;
        v38 = 8;
LABEL_48:
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, v36, buf, v38);
        return;
      }

      do
      {
        v26 = v21;
        v21 = v21[1];
      }

      while (v21);
    }

    else
    {
      do
      {
        v26 = v20[2];
        v39 = *v26 == v20;
        v20 = v26;
      }

      while (v39);
    }

    v25 = v26[5];
    goto LABEL_34;
  }

  v27 = a1[28];
  if (!v27)
  {
    goto LABEL_22;
  }

  v28 = a1 + 28;
  v29 = a1[28];
  do
  {
    v30 = *(v29 + 32);
    v31 = v19 < v30;
    v32 = v19 >= v30;
    if (v31)
    {
      v28 = v29;
    }

    v29 = *(v29 + 8 * v32);
  }

  while (v29);
  if (v28 == a1 + 28)
  {
LABEL_22:
    if (qword_10045B050 != -1)
    {
      sub_10038664C();
    }

    v35 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 67109120;
    v51 = v19;
    v36 = "Failed to find a floor with floor number > %d";
    goto LABEL_30;
  }

  v33 = v28[5];
  do
  {
    v34 = v27;
    v27 = *(v27 + 8);
  }

  while (v27);
  v25 = *(v34 + 40);
LABEL_35:
  v40 = 3;
  if (a5)
  {
    v40 = 15;
  }

  v41 = sub_100261B10(&a1[v40], v33, v25, a2, a9);
  if (v41 >= (a1[1] - *a1) >> 4)
  {
    sub_1000BFF58();
  }

  v42 = (*a1 + 16 * v41);
  v43 = sub_10025BA14(v13, a10, v41, a3, *v42, a7, a6);
  if (v43)
  {
    v44 = *v42;
    *(a8 + 8) = *v42;
    if (*(&v44 + 1))
    {
      atomic_fetch_add_explicit((*(&v44 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    *a8 = 1;
  }

  if (qword_10045B050 != -1)
  {
    sub_100386624();
  }

  v45 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v46 = (*(**v42 + 56))();
    v47 = (v46 + 8);
    if (*(v46 + 31) < 0)
    {
      v47 = *v47;
    }

    v48 = *((*(**v42 + 56))() + 1616);
    *buf = 67109891;
    v51 = v19;
    v52 = 2081;
    v53 = v47;
    v54 = 1024;
    v55 = v48;
    v56 = 1024;
    v57 = v43;
    v36 = "Transitioning from %d, find a floor %{private}s with %d with walkability = %d";
    v37 = v45;
    v38 = 30;
    goto LABEL_48;
  }
}

void sub_10025B980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10025BA14(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  sub_100176F74(a6, a4, a5, v15);
  v11 = (*(*a5 + 16))(a5);
  if ((*(*v11 + 48))(v11) & a7)
  {
    v12 = 1;
  }

  else
  {
    v13 = (*(*a5 + 16))(a5);
    v12 = (*(*v13 + 16))(v13, v15[1] + a1, v15[2] + a2);
  }

  nullsub_75(v15);
  return v12 & 1;
}

uint64_t *sub_10025BB48(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, double a7, double a8)
{
  if (a4)
  {
    v15 = 15;
  }

  else
  {
    v15 = 3;
  }

  v16 = (*(*a2 + 32))(a2);
  v17 = sub_100261AE4(&a1[v15], v16);
  if (v17 >= (a1[1] - *a1) >> 4)
  {
    sub_1000BFF58();
  }

  v18 = (*a1 + 16 * v17);
  v19 = *((*(**v18 + 56))() + 1616);
  v20 = (*(*a3 + 56))(a3);
  v21 = *(v20 + 1616);
  if (v19 == v21)
  {
    v22 = (*(**v18 + 64))();
    v23 = (*(*a3 + 64))(a3);
    v24 = sub_100118344(v22, v23);
    if (v24 && (sub_10025BA14(a7, a8, v24, a3, *v18, a6, a5) & 1) != 0)
    {
      return v18;
    }

    v20 = (*(*a2 + 80))(a2, 2);
    v25 = v20 != 0;
    v26 = a1 + 28;
    v27 = a1[28];
    if (!v27)
    {
      return v18;
    }
  }

  else
  {
    v25 = v19 > v21;
    v26 = a1 + 28;
    v27 = a1[28];
    if (!v27)
    {
      return v18;
    }
  }

  v28 = v26;
  do
  {
    if (*(v27 + 32) >= v21)
    {
      v28 = v27;
    }

    v27 = *(v27 + 8 * (*(v27 + 32) < v21));
  }

  while (v27);
  if (v28 != v26 && v21 >= *(v28 + 8))
  {
    if (v25)
    {
      v29 = v28[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v28[2];
          v31 = *v30 == v28;
          v28 = v30;
        }

        while (!v31);
      }
    }

    else
    {
      v30 = v28;
    }

    if (v30 != v26)
    {
      v32 = v30[5] - !v25;
      if (v25)
      {
        v33 = 1;
      }

      else
      {
        v33 = -1;
      }

      while (1)
      {
        v34 = *a1;
        if (v32 >= (a1[1] - *a1) >> 4)
        {
          break;
        }

        v35 = v32;
        v20 = sub_10025BA14(a7, a8, v20, a3, *(v34 + 16 * v32), a6, a5);
        v32 = v35 + v33;
        if (v20)
        {
          return (v34 + 16 * v35);
        }
      }
    }
  }

  return v18;
}

void sub_10025BE00(std::runtime_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::runtime_error::runtime_error(&v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10.__vftable = &off_100444650;
  v11 = off_100444678;
  sub_100260900(&v16, &v10);
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

  sub_100260620();
}

void sub_10025C124(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_10025C14C(std::runtime_error *a1)
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

uint64_t sub_10025C1E4(void *a1)
{
  sub_10025C234(a1);
  v2 = sub_100253A78(v1 * 0.5) * 1000000000.0;
  v3 = v2;
  if (v2 > v2)
  {
    ++v3;
  }

  if (v3 <= 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

void sub_10025C234(void *a1)
{
  v2 = sub_100261BA4((a1 + 15));
  v3 = *v2;
  v4 = v2[1];
  v5 = 0.0;
  v6 = 0.0;
  while (v3 != v4)
  {
    if (*v3 >= ((a1[1] - *a1) >> 4))
    {
      sub_1000BFF58();
    }

    v7 = *(v3 + 8);
    v8 = (*(**(*a1 + 16 * *v3) + 40))(*(*a1 + 16 * *v3));
    if (*v8)
    {
      if (((*(**v8 + 40))(*v8) & 1) == 0)
      {
        v6 = v6 + (*(**v8 + 120))() * v7;
        v5 = v5 + v7;
      }
    }

    v3 += 16;
  }
}

void sub_10025C350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _BYTE *a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14)
{
  v19 = sub_10033962C();
  v20 = v19;
  v21 = atomic_load(v19 + 20);
  if ((v21 & 1) != 0 || *(v19 + 16) == 1)
  {
    if ((*(v19 + 17) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v22 = sub_100008F80(v19, v19 + 9);
    *(v20 + 17) = v22;
    *(v20 + 16) = 1;
    atomic_store(1u, v20 + 20);
    if (!v22)
    {
LABEL_7:
      v23 = sub_100339598();
      v24 = atomic_load(v23 + 20);
      if ((v24 & 1) != 0 || *(v23 + 16) == 1)
      {
        if ((*(v23 + 17) & 1) == 0)
        {
LABEL_13:
          v38 = vdupq_n_s64(0x7FF4000000000000uLL);
          if (a12 != 2 && (*a5 & 1) != 0)
          {
            sub_10011B8B8(v37, a1);
            sub_1000B9540(v37);
          }

          __asm { FMOV            V0.2D, #0.5 }

          v38 = _Q0;
          sub_100249108(*a4, a1);
        }
      }

      else
      {
        v25 = v23;
        v26 = sub_100008F80(v23, v23 + 9);
        *(v25 + 17) = v26;
        *(v25 + 16) = 1;
        atomic_store(1u, v25 + 20);
        if (!v26)
        {
          goto LABEL_13;
        }
      }

      sub_1002D7200(v39, a14);
      sub_10025CBE0(a1, a8, a9, a3, a4);
    }
  }

  sub_1002D7200(v40, a14);
  sub_10025CBE0(a1, a6, a7, a2, a4);
}

void sub_10025CA8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    v3 = v2;
    v4 = v2[9];
    __cxa_end_catch();
    v3[17] = v4;
    v3[16] = 1;
    atomic_store(1u, v3 + 20);
    if ((v4 & 1) == 0)
    {
      JUMPOUT(0x10025C508);
    }

    JUMPOUT(0x10025C4C8);
  }

  _Unwind_Resume(a1);
}

void sub_10025CBE0(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v5 = a3;
  v6 = a2;
  sub_100248F28(*a5, a1);
}

void sub_10025D35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10025D448(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v8 = sub_100339504();
  v9 = atomic_load(v8 + 20);
  if ((v9 & 1) != 0 || *(v8 + 16) == 1)
  {
    if (*(v8 + 17))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = v8;
    v11 = sub_100008F80(v8, v8 + 9);
    *(v10 + 17) = v11;
    *(v10 + 16) = 1;
    atomic_store(1u, v10 + 20);
    if (v11)
    {
LABEL_7:
      v12 = sub_1001D1EB8(a2);
      goto LABEL_9;
    }
  }

  if (*(a1 + 1860) == 1)
  {
    goto LABEL_7;
  }

  v12 = sub_1001D1E30(a2);
LABEL_9:
  if (*v12 == 1)
  {
    sub_10011B8B8(v17, a1);
    sub_1000B9540(v17);
  }

  if (a3)
  {
    sub_100127A04(a3, 0.0);
  }

  if (qword_10045B050 != -1)
  {
    sub_100386624();
  }

  v13 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 8);
    v15 = a1 + 8;
    v14 = v16;
    if (*(v15 + 23) >= 0)
    {
      v14 = v15;
    }

    *buf = 136382211;
    v19 = v14;
    v20 = 2049;
    v21 = 0;
    v22 = 2049;
    v23 = 1.0;
    v24 = 2049;
    v25 = 0;
    v26 = 2049;
    v27 = 1.0;
    v28 = 2050;
    v29 = 0x7FF4000000000000;
    v30 = 2050;
    v31 = 0x7FF4000000000000;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "id %{private}s p('xIn')= %{private}f p('xOut')=%{private}f p('xIn'|z_g)=%{private}f p('xOut'|z_g)=%{private}f p('xIn'|z_z)=%{public}f p('xIn'|z_oe)=%{public}f", buf, 0x48u);
  }

  *a4 = 1.0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1.0;
  *(a4 + 24) = 0;
  *(a4 + 32) = xmmword_1003DA088;
  *(a4 + 48) = xmmword_1003DA088;
  *(a4 + 64) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0;
  *(a4 + 128) = 0;
  *(a4 + 136) = 1.0;
  *(a4 + 144) = 0;
  *(a4 + 152) = 1;
}

void sub_10025D858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v19 = v18[9];
    __cxa_end_catch();
    v18[17] = v19;
    v18[16] = 1;
    atomic_store(1u, v18 + 20);
    if (v19)
    {
      JUMPOUT(0x10025D4E8);
    }

    JUMPOUT(0x10025D4DCLL);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10025D930(uint64_t a1, int a2, int a3)
{
  if (a3 == 1)
  {
    v8 = *(a1 + 224);
    v3 = a1 + 224;
    v7 = v8;
    if (v8)
    {
      v6 = v3;
      do
      {
        if (*(v7 + 32) >= a2)
        {
          v6 = v7;
        }

        v7 = *(v7 + 8 * (*(v7 + 32) < a2));
      }

      while (v7);
      return v6 != v3;
    }
  }

  else
  {
    if (a3)
    {
      return 0;
    }

    v5 = *(a1 + 224);
    v3 = a1 + 224;
    v4 = v5;
    if (v5)
    {
      v6 = v3;
      do
      {
        if (*(v4 + 32) > a2)
        {
          v6 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) <= a2));
      }

      while (v4);
      return v6 != v3;
    }
  }

  return 0;
}

uint64_t sub_10025D9A8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, _BYTE *a6)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *a4;
  v7 = a4[1];
  *(a1 + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = *a2;
  v8 = a2[1];
  *(a1 + 48) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = *a5;
  *(a1 + 56) = a3;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a1 + 80) = 0;
  if (*a6 == 1)
  {
    sub_1001300D0(a1 + 88, a6 + 8);
    *(a1 + 80) = 1;
  }

  *(a1 + 288) = 0;
  v9 = *(a1 + 64);
  if (v9)
  {
    sub_100201C6C(v9, a1 + 352);
    v10 = *(a1 + 384);
    v11 = (a1 + 360);
    prime = *(a1 + 360);
    *__p = 0u;
    *v50 = 0u;
    LODWORD(v50[2]) = v10;
    if (prime == 1)
    {
      prime = 2;
LABEL_25:
      sub_10000FE58(__p, prime);
      goto LABEL_26;
    }
  }

  else
  {
    prime = 0;
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    *(a1 + 384) = 1065353216;
    *__p = 0u;
    *v50 = 0u;
    LODWORD(v50[2]) = 1065353216;
    v11 = (a1 + 360);
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v13 = __p[1];
    v14 = prime >= __p[1];
    if (prime > __p[1])
    {
      goto LABEL_25;
    }
  }

  else
  {
    v13 = 0;
    v14 = 1;
    if (prime)
    {
      goto LABEL_25;
    }
  }

  if (!v14)
  {
    v15 = vcvtps_u32_f32(v50[1] / *&v50[2]);
    if (v13 < 3 || (v16 = vcnt_s8(v13), v16.i16[0] = vaddlv_u8(v16), v16.u32[0] > 1uLL))
    {
      v15 = std::__next_prime(v15);
    }

    else
    {
      v17 = 1 << -__clz(v15 - 1);
      if (v15 >= 2)
      {
        v15 = v17;
      }
    }

    if (prime <= v15)
    {
      prime = v15;
    }

    if (prime < v13)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  for (i = *(a1 + 368); i; i = *i)
  {
    sub_1001F9F8C(__p, (i + 2));
  }

  v19 = (a1 + 368);
  if (*(a1 + 376))
  {
    v20 = *v19;
    if (*v19)
    {
      do
      {
        v21 = *v20;
        operator delete(v20);
        v20 = v21;
      }

      while (v21);
    }

    *v19 = 0;
    if (*v11)
    {
      bzero(*(a1 + 352), 8 * *v11);
    }

    *(a1 + 376) = 0;
  }

  v22 = __p[0];
  __p[0] = 0;
  v23 = *(a1 + 352);
  *(a1 + 352) = v22;
  if (v23)
  {
    operator delete(v23);
  }

  v25 = __p[1];
  v24 = v50[0];
  __p[1] = 0;
  v26 = v50[1];
  *(a1 + 368) = v50[0];
  *(a1 + 376) = v26;
  *(a1 + 384) = v50[2];
  *(a1 + 360) = v25;
  if (v26)
  {
    v27 = v24[1];
    if ((v25 & (v25 - 1)) != 0)
    {
      if (v27 >= v25)
      {
        v27 %= v25;
      }
    }

    else
    {
      v27 &= v25 - 1;
    }

    *(*(a1 + 352) + 8 * v27) = v19;
    v50[0] = 0;
    v50[1] = 0;
  }

  else if (v24)
  {
    do
    {
      v28 = *v24;
      operator delete(v24);
      v24 = v28;
    }

    while (v28);
  }

  v29 = __p[0];
  __p[0] = 0;
  if (v29)
  {
    operator delete(v29);
  }

  *(a1 + 16) = 0;
  if (!*(a1 + 64))
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    sub_1001CE7DC(__p, &v46, &v43, *(a1 + 56));
    if (*(a1 + 288) == 1)
    {
      v30 = sub_100261488((a1 + 288), __p);
      if (v50[1])
      {
        v50[2] = v50[1];
        operator delete(v50[1]);
      }
    }

    else
    {
      *(a1 + 296) = *__p;
      *(a1 + 312) = v50[0];
      __p[0] = 0;
      __p[1] = 0;
      v30 = *&v50[1];
      *(a1 + 320) = *&v50[1];
      memset(v50, 0, sizeof(v50));
      v31 = v51;
      v32 = v52;
      v51 = 0;
      *(a1 + 336) = v31;
      *(a1 + 344) = v32;
      *(a1 + 288) = 1;
    }

    v33 = __p[0];
    if (__p[0])
    {
      v34 = __p[1];
      v35 = __p[0];
      if (__p[1] != __p[0])
      {
        v36 = __p[1] - 168;
        do
        {
          v39 = *(v34 - 44);
          if (v39 == v39 >> 31)
          {
            if (*(v34 - 128) == 1)
            {
              *(v34 - 128) = 0;
            }
          }

          else
          {
            v37 = *(v34 - 21);
            if (v39 < 0)
            {
              if (v37)
              {
                (*(*v37 + 8))(v37, v30);
              }
            }

            else
            {
              v38 = *(v34 - 21);
              (*v37)(v34 - 168);
            }
          }

          v34 -= 208;
          v36 -= 208;
        }

        while (v34 != v33);
        v35 = __p[0];
      }

      __p[1] = v33;
      operator delete(v35);
    }

    v40 = v43;
    if (v43)
    {
      for (j = v44; j != v40; j -= 88)
      {
        if (*(j - 48) == 1)
        {
          *(j - 48) = 0;
        }
      }

      v44 = v40;
      operator delete(v40);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }
  }

  return a1;
}

void sub_10025DE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15)
{
  sub_1001CFAA0(&a15);
  sub_100261424(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  sub_1001F9AF8(v15 + 352);
  sub_1001F9B44(v15 + 288);
  if (*(v15 + 80) == 1)
  {
    sub_10012E8E4(v15 + 88);
    *(v15 + 80) = 0;
  }

  sub_10002BB1C(v18);
  sub_10002BB1C(v17);
  sub_10002BB1C(v16);
  sub_10002BB1C(v15);
  _Unwind_Resume(a1);
}

void sub_10025DEAC(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 288) == 1)
  {

    sub_100203650(a2, (a1 + 296));
  }

  else
  {
    (*(**(a1 + 64) + 16))(&v26);
    v24 = 0;
    v25 = 0;
    v23 = 0;
    if (v27 != v26)
    {
      if (!((0x4EC4EC4EC4EC4EC5 * ((v27 - v26) >> 4)) >> 61))
      {
        operator new();
      }

      sub_10000FC84();
    }

    sub_1001CE970(&v18, &v23, &v26, *(a1 + 56));
    if (*(a1 + 288) == 1)
    {
      if ((a1 + 296) != &v18)
      {
        sub_100204098((a1 + 296), v18, v19, 0x4EC4EC4EC4EC4EC5 * ((v19 - v18) >> 4));
        sub_10011DD68((a1 + 320), __p, v21, (v21 - __p) >> 3);
      }

      *(a1 + 344) = v22;
    }

    else
    {
      sub_100203650((a1 + 296), &v18);
      *(a1 + 288) = 1;
    }

    sub_100203650(a2, (a1 + 296));
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    v4 = v18;
    if (v18)
    {
      v5 = v19;
      v6 = v18;
      if (v19 != v18)
      {
        v7 = v19 - 168;
        do
        {
          v10 = *(v5 - 44);
          if (v10 == v10 >> 31)
          {
            if (*(v5 - 128) == 1)
            {
              *(v5 - 128) = 0;
            }
          }

          else
          {
            v8 = *(v5 - 21);
            if (v10 < 0)
            {
              if (v8)
              {
                (*(*v8 + 8))(v8);
              }
            }

            else
            {
              v9 = *(v5 - 21);
              (*v8)(v5 - 168);
            }
          }

          v5 -= 208;
          v7 -= 208;
        }

        while (v5 != v4);
        v6 = v18;
      }

      v19 = v4;
      operator delete(v6);
    }

    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    v11 = v26;
    if (v26)
    {
      v12 = v27;
      v13 = v26;
      if (v27 != v26)
      {
        v14 = v27 - 168;
        do
        {
          v17 = *(v12 - 44);
          if (v17 == v17 >> 31)
          {
            if (*(v12 - 128) == 1)
            {
              *(v12 - 128) = 0;
            }
          }

          else
          {
            v15 = *(v12 - 21);
            if (v17 < 0)
            {
              if (v15)
              {
                (*(*v15 + 8))(v15);
              }
            }

            else
            {
              v16 = *(v12 - 21);
              (*v15)(v12 - 168);
            }
          }

          v12 -= 208;
          v14 -= 208;
        }

        while (v12 != v11);
        v13 = v26;
      }

      v27 = v11;
      operator delete(v13);
    }
  }
}

void sub_10025E1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1001CE6F4((v18 - 72));
  _Unwind_Resume(a1);
}

void sub_10025E224(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = a2;
  v8 = a2 - 2;
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = (v7 - v9) >> 4;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          sub_10025F978(v9, v9 + 2, v8);
          return;
        case 4:

          sub_10025FBB4(v9, v9 + 2, v9 + 4, v8);
          return;
        case 5:

          sub_10025FD44(v9, v9 + 2, v9 + 4, (v9 + 6), v8);
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      v7 = a2;
      if (v10 == 2)
      {
        v59 = *((*(**(a2 - 2) + 56))(*(a2 - 2)) + 1616);
        if (v59 < *((*(**v9 + 56))() + 1616))
        {
          v60 = *v9;
          *v9 = *(a2 - 1);
          *(a2 - 1) = v60;
        }

        return;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v9 == v7)
      {
        return;
      }

      v77 = v11 >> 1;
      v78 = v11 >> 1;
      do
      {
        v79 = v78;
        if (v77 >= v78)
        {
          v80 = (2 * v78) | 1;
          v81 = &a1[2 * v80];
          if (2 * v78 + 2 < v10)
          {
            v82 = *((*(**v81 + 56))() + 1616);
            if (v82 < *((*(*v81[2] + 56))(v81[2]) + 1616))
            {
              v81 += 2;
              v80 = 2 * v79 + 2;
            }
          }

          v83 = &a1[2 * v79];
          v84 = *((*(**v81 + 56))() + 1616);
          if (v84 >= *((*(**v83 + 56))() + 1616))
          {
            v147 = *v83;
            *v83 = 0;
            v83[1] = 0;
            while (1)
            {
              v85 = v81;
              v86 = *v81;
              *v81 = 0;
              v81[1] = 0;
              v87 = v83[1];
              *v83 = v86;
              if (v87 && !atomic_fetch_add(&v87->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v87->__on_zero_shared)(v87);
                std::__shared_weak_count::__release_weak(v87);
              }

              if (v77 < v80)
              {
                break;
              }

              v88 = (2 * v80) | 1;
              v81 = &a1[2 * v88];
              v80 = 2 * v80 + 2;
              if (v80 >= v10)
              {
                v80 = v88;
              }

              else
              {
                v89 = *((*(**v81 + 56))() + 1616);
                if (v89 >= *((*(*v81[2] + 56))() + 1616))
                {
                  v80 = v88;
                }

                else
                {
                  v81 += 2;
                }
              }

              v90 = *((*(**v81 + 56))() + 1616);
              v91 = v147;
              v83 = v85;
              if (v90 < *((*(*v147 + 56))(v147) + 1616))
              {
                v92 = *(&v147 + 1);
                v148 = 0uLL;
                v93 = v85[1];
                *v85 = v91;
                v85[1] = v92;
                if (!v93)
                {
                  goto LABEL_125;
                }

                goto LABEL_123;
              }
            }

            v94 = v147;
            v148 = 0uLL;
            v93 = v81[1];
            *v81 = v94;
            if (!v93)
            {
              goto LABEL_125;
            }

LABEL_123:
            if (!atomic_fetch_add(&v93->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v93->__on_zero_shared)(v93);
              std::__shared_weak_count::__release_weak(v93);
            }

LABEL_125:
            if (*(&v148 + 1) && !atomic_fetch_add((*(&v148 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (*(**(&v148 + 1) + 16))(*(&v148 + 1));
              std::__shared_weak_count::__release_weak(*(&v148 + 1));
            }
          }
        }

        v78 = v79 - 1;
      }

      while (v79);
      while (2)
      {
        v96 = 0;
        v138 = a2;
        v140 = *a1;
        *a1 = 0;
        a1[1] = 0;
        v97 = a1;
LABEL_132:
        v98 = v97;
        v99 = &v97[16 * v96];
        v97 = v99 + 16;
        v100 = (2 * v96) | 1;
        v96 = 2 * v96 + 2;
        if (v96 >= v10)
        {
          v96 = v100;
          v106 = *v97;
          *v97 = 0;
          *(v99 + 3) = 0;
          v105 = *(v98 + 1);
          *v98 = v106;
          if (!v105)
          {
            goto LABEL_131;
          }
        }

        else
        {
          v101 = *((*(**(v99 + 2) + 56))(*(v99 + 2)) + 1616);
          v103 = *(v99 + 4);
          v102 = v99 + 32;
          if (v101 >= *((*(*v103 + 56))(v103) + 1616))
          {
            v96 = v100;
          }

          else
          {
            v97 = v102;
          }

          v104 = *v97;
          *v97 = 0;
          *(v97 + 1) = 0;
          v105 = *(v98 + 1);
          *v98 = v104;
          if (!v105)
          {
            goto LABEL_131;
          }
        }

        if (!atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v105->__on_zero_shared)(v105);
          std::__shared_weak_count::__release_weak(v105);
        }

LABEL_131:
        if (v96 > ((v10 - 2) >> 1))
        {
          v107 = a2 - 2;
          a2 -= 2;
          if (v97 == (v138 - 2))
          {
            v124 = v140;
            v141 = 0uLL;
            v125 = *(v97 + 1);
            *v97 = v124;
            if (v125)
            {
              goto LABEL_166;
            }
          }

          else
          {
            v108 = *(v138 - 1);
            *v107 = 0;
            v107[1] = 0;
            v109 = *(v97 + 1);
            *v97 = v108;
            if (v109 && !atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v109->__on_zero_shared)(v109);
              std::__shared_weak_count::__release_weak(v109);
            }

            v110 = v140;
            v141 = 0uLL;
            v111 = *(v138 - 1);
            *(v138 - 1) = v110;
            if (v111 && !atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v111->__on_zero_shared)(v111);
              std::__shared_weak_count::__release_weak(v111);
              v126 = (v97 + 16 - a1) >> 4;
              v95 = v126 < 2;
              v113 = v126 - 2;
              if (!v95)
              {
                goto LABEL_148;
              }
            }

            else
            {
              v112 = (v97 + 16 - a1) >> 4;
              v95 = v112 < 2;
              v113 = v112 - 2;
              if (!v95)
              {
LABEL_148:
                v114 = v113 >> 1;
                v115 = &a1[2 * (v113 >> 1)];
                v116 = *((*(**v115 + 56))() + 1616);
                if (v116 < *((*(**v97 + 56))() + 1616))
                {
                  v149 = *v97;
                  *v97 = 0;
                  *(v97 + 1) = 0;
                  while (1)
                  {
                    v117 = v115;
                    v118 = *v115;
                    *v115 = 0;
                    v115[1] = 0;
                    v119 = *(v97 + 1);
                    *v97 = v118;
                    if (v119 && !atomic_fetch_add(&v119->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v119->__on_zero_shared)(v119);
                      std::__shared_weak_count::__release_weak(v119);
                    }

                    if (!v114)
                    {
                      break;
                    }

                    v114 = (v114 - 1) >> 1;
                    v115 = &a1[2 * v114];
                    v120 = *((*(**v115 + 56))() + 1616);
                    v121 = v149;
                    v97 = v117;
                    if (v120 >= *((*(*v149 + 56))(v149) + 1616))
                    {
                      v122 = *(&v149 + 1);
                      v150 = 0uLL;
                      v123 = v117[1];
                      *v117 = v121;
                      v117[1] = v122;
                      if (!v123)
                      {
                        goto LABEL_165;
                      }

                      goto LABEL_163;
                    }
                  }

                  v127 = v149;
                  v150 = 0uLL;
                  v123 = v115[1];
                  *v115 = v127;
                  if (!v123)
                  {
                    goto LABEL_165;
                  }

LABEL_163:
                  if (!atomic_fetch_add(&v123->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v123->__on_zero_shared)(v123);
                    std::__shared_weak_count::__release_weak(v123);
                  }

LABEL_165:
                  v125 = *(&v150 + 1);
                  if (*(&v150 + 1))
                  {
LABEL_166:
                    if (!atomic_fetch_add(&v125->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v125->__on_zero_shared)(v125);
                      std::__shared_weak_count::__release_weak(v125);
                    }
                  }
                }
              }
            }
          }

          if (*(&v141 + 1) && !atomic_fetch_add((*(&v141 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(**(&v141 + 1) + 16))(*(&v141 + 1));
            std::__shared_weak_count::__release_weak(*(&v141 + 1));
          }

          v95 = v10-- <= 2;
          if (v95)
          {
            return;
          }

          continue;
        }

        goto LABEL_132;
      }
    }

    v12 = &v9[2 * (v10 >> 1)];
    if (v10 < 0x81)
    {
      sub_10025F978(&a1[2 * (v10 >> 1)], a1, v8);
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_16:
      v16 = 0;
      v142 = *a1;
      v17 = *a1;
      *a1 = 0;
      a1[1] = 0;
      v18 = v17;
      do
      {
        v19 = *((*(*a1[v16 + 2] + 56))(a1[v16 + 2]) + 1616);
        v16 += 2;
      }

      while (v19 < *((*(*v18 + 56))(v18) + 1616));
      v20 = &a1[v16];
      v21 = v7;
      if (v16 == 2)
      {
        v21 = a2;
        do
        {
          if (v20 >= v21)
          {
            break;
          }

          v24 = *(v21 - 2);
          v21 -= 2;
          v25 = *((*(*v24 + 56))(v24) + 1616);
        }

        while (v25 >= *((*(*v18 + 56))(v18) + 1616));
      }

      else
      {
        do
        {
          v22 = *(v21 - 2);
          v21 -= 2;
          v23 = *((*(*v22 + 56))(v22) + 1616);
        }

        while (v23 >= *((*(*v18 + 56))(v18) + 1616));
      }

      v9 = &a1[v16];
      if (v20 < v21)
      {
        v26 = v21;
        do
        {
          v27 = *v9;
          *v9 = *v26;
          *v26 = v27;
          do
          {
            v28 = v9[2];
            v9 += 2;
            v29 = *((*(*v28 + 56))(v28) + 1616);
          }

          while (v29 < *((*(*v142 + 56))(v142) + 1616));
          do
          {
            v30 = *(v26 - 2);
            v26 -= 2;
            v31 = *((*(*v30 + 56))(v30) + 1616);
          }

          while (v31 >= *((*(*v142 + 56))(v142) + 1616));
        }

        while (v9 < v26);
      }

      v32 = v9 - 2;
      if (v9 - 2 == a1 || (v33 = *v32, *v32 = 0, *(v9 - 1) = 0, v34 = a1[1], *a1 = v33, !v34) || atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v35 = v142;
        v143 = 0uLL;
        v36 = *(v9 - 1);
        *(v9 - 1) = v35;
        v7 = a2;
        if (!v36)
        {
          goto LABEL_36;
        }
      }

      else
      {
        (v34->__on_zero_shared)(v34);
        std::__shared_weak_count::__release_weak(v34);
        v38 = v142;
        v143 = 0uLL;
        v36 = *(v9 - 1);
        *(v9 - 1) = v38;
        v7 = a2;
        if (!v36)
        {
          goto LABEL_36;
        }
      }

      if (!atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v36->__on_zero_shared)(v36);
        std::__shared_weak_count::__release_weak(v36);
      }

LABEL_36:
      if (*(&v143 + 1) && !atomic_fetch_add((*(&v143 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(**(&v143 + 1) + 16))(*(&v143 + 1));
        std::__shared_weak_count::__release_weak(*(&v143 + 1));
      }

      if (v20 < v21)
      {
        goto LABEL_42;
      }

      v37 = sub_10025FF48(a1, v9 - 2);
      if (sub_10025FF48(v9, v7))
      {
        a2 = v9 - 2;
        if (v37)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v37)
      {
LABEL_42:
        sub_10025E224(a1, v9 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      sub_10025F978(a1, &a1[2 * (v10 >> 1)], v8);
      v13 = 2 * (v10 >> 1);
      sub_10025F978(a1 + 2, &a1[v13 - 2], a2 - 4);
      sub_10025F978(a1 + 4, &a1[v13 + 2], a2 - 6);
      sub_10025F978(&a1[v13 - 2], v12, &a1[v13 + 2]);
      v14 = *a1;
      *a1 = *&a1[v13];
      *&a1[v13] = v14;
      v7 = a2;
      --a3;
      if (a4)
      {
        goto LABEL_16;
      }

LABEL_15:
      v15 = *((*(**(a1 - 2) + 56))(*(a1 - 2)) + 1616);
      if (v15 < *((*(**a1 + 56))() + 1616))
      {
        goto LABEL_16;
      }

      v144 = *a1;
      v39 = *a1;
      *a1 = 0;
      a1[1] = 0;
      v40 = v39;
      v41 = *((*(*v39 + 56))(v39) + 1616);
      if (v41 >= *((*(**v8 + 56))() + 1616))
      {
        v44 = a1 + 2;
        do
        {
          v9 = v44;
          if (v44 >= v7)
          {
            break;
          }

          v45 = *((*(*v40 + 56))(v40) + 1616);
          v46 = (*(**v9 + 56))();
          v44 = v9 + 2;
        }

        while (v45 >= *(v46 + 1616));
      }

      else
      {
        v9 = a1;
        do
        {
          v42 = *((*(*v40 + 56))(v40) + 1616);
          v43 = v9[2];
          v9 += 2;
        }

        while (v42 >= *((*(*v43 + 56))(v43) + 1616));
      }

      v47 = v7;
      if (v9 < v7)
      {
        v47 = a2;
        do
        {
          v48 = *((*(*v40 + 56))(v40) + 1616);
          v49 = *(v47 - 2);
          v47 -= 2;
        }

        while (v48 < *((*(*v49 + 56))(v49) + 1616));
      }

      while (v9 < v47)
      {
        v50 = *v9;
        *v9 = *v47;
        *v47 = v50;
        do
        {
          v51 = *((*(*v144 + 56))(v144) + 1616);
          v52 = v9[2];
          v9 += 2;
        }

        while (v51 >= *((*(*v52 + 56))(v52) + 1616));
        do
        {
          v53 = *((*(*v144 + 56))(v144) + 1616);
          v54 = *(v47 - 2);
          v47 -= 2;
        }

        while (v53 < *((*(*v54 + 56))(v54) + 1616));
      }

      v55 = v9 - 2;
      if (v9 - 2 != a1)
      {
        v56 = *v55;
        *v55 = 0;
        *(v9 - 1) = 0;
        v57 = a1[1];
        *a1 = v56;
        if (v57)
        {
          if (!atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v57->__on_zero_shared)(v57);
            std::__shared_weak_count::__release_weak(v57);
          }
        }
      }

      v58 = *(v9 - 1);
      *(v9 - 1) = v144;
      v7 = a2;
      if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v58->__on_zero_shared)(v58);
        std::__shared_weak_count::__release_weak(v58);
      }

      a4 = 0;
    }
  }

  if (a4)
  {
    if (v9 != v7)
    {
      v61 = v9 + 2;
      if (v9 + 2 != a2)
      {
        v62 = 0;
        v63 = v9;
        do
        {
          v64 = v63;
          v63 = v61;
          v65 = *((*(*v64[2] + 56))(v64[2]) + 1616);
          if (v65 < *((*(**v64 + 56))() + 1616))
          {
            v145 = *v63;
            *v63 = 0;
            v63[1] = 0;
            v66 = v62;
            while (1)
            {
              v67 = a1 + v66;
              v68 = *(a1 + v66);
              *v67 = 0;
              *(v67 + 1) = 0;
              v69 = *(a1 + v66 + 24);
              *(v67 + 1) = v68;
              if (v69 && !atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v69->__on_zero_shared)(v69);
                std::__shared_weak_count::__release_weak(v69);
              }

              v70 = v145;
              if (!v66)
              {
                break;
              }

              v71 = *((*(*v145 + 56))(v145) + 1616);
              v72 = (*(**(a1 + v66 - 16) + 56))(*(a1 + v66 - 16));
              v66 -= 16;
              if (v71 >= *(v72 + 1616))
              {
                v73 = (a1 + v66 + 16);
                v74 = *(&v145 + 1);
                v146 = 0uLL;
                v75 = *(a1 + v66 + 24);
                *v73 = v70;
                v73[1] = v74;
                if (!v75)
                {
                  goto LABEL_98;
                }

                goto LABEL_96;
              }
            }

            v76 = *(&v145 + 1);
            v146 = 0uLL;
            v75 = a1[1];
            *a1 = v70;
            a1[1] = v76;
            if (!v75)
            {
              goto LABEL_98;
            }

LABEL_96:
            if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v75->__on_zero_shared)(v75);
              std::__shared_weak_count::__release_weak(v75);
            }

LABEL_98:
            if (*(&v146 + 1) && !atomic_fetch_add((*(&v146 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (*(**(&v146 + 1) + 16))(*(&v146 + 1));
              std::__shared_weak_count::__release_weak(*(&v146 + 1));
            }
          }

          v61 = v63 + 2;
          v62 += 16;
        }

        while (v63 + 2 != a2);
      }
    }
  }

  else if (v9 != v7)
  {
    v128 = v9 + 2;
    if (v9 + 2 != a2)
    {
      v129 = (v9 + 3);
      do
      {
        v130 = a1;
        a1 = v128;
        v131 = *((*(*v130[2] + 56))(v130[2]) + 1616);
        if (v131 < *((*(**v130 + 56))() + 1616))
        {
          v151 = *a1;
          *a1 = 0;
          a1[1] = 0;
          v132 = v129;
          do
          {
            v133 = *(v132 - 3);
            *(v132 - 3) = 0;
            *(v132 - 2) = 0;
            v134 = *v132;
            *(v132 - 1) = v133;
            if (v134 && !atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v134->__on_zero_shared)(v134);
              std::__shared_weak_count::__release_weak(v134);
            }

            v135 = *((*(*v151 + 56))(v151) + 1616);
            v136 = ((*(v132 - 5))->__vftable[1].__on_zero_shared)(*(v132 - 5));
            v132 -= 2;
          }

          while (v135 < *(v136 + 1616));
          v137 = *v132;
          *(v132 - 1) = v151;
          if (v137 && !atomic_fetch_add(&v137->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v137->__on_zero_shared)(v137);
            std::__shared_weak_count::__release_weak(v137);
          }
        }

        v128 = a1 + 2;
        v129 += 2;
      }

      while (a1 + 2 != a2);
    }
  }
}

void sub_10025F82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_10025F840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_10025F854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_10025F928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_10025F93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_10025F950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_10025F964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10025F978(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *((*(**a2 + 56))() + 1616);
  v7 = *((*(**a1 + 56))() + 1616);
  v8 = *((*(**a3 + 56))() + 1616);
  result = (*(**v4 + 56))();
  v10 = *(result + 1616);
  if (v6 < v7)
  {
    v11 = *a1;
    if (v8 >= v10)
    {
      v16 = a1[1];
      *a1 = *v4;
      v4[1] = v16;
      v12 = v4 + 1;
      *v4 = v11;
      v17 = *((*(**a3 + 56))() + 1616);
      result = (*(**v4 + 56))();
      if (v17 >= *(result + 1616))
      {
        return result;
      }

      v18 = *v4;
      *v4 = *a3;
      *a3 = v18;
    }

    else
    {
      *a1 = *a3;
      *a3 = v11;
      v12 = a1 + 1;
    }

    v4 = a3;
    goto LABEL_10;
  }

  if (v8 < v10)
  {
    v13 = *v4;
    *v4 = *a3;
    *a3 = v13;
    v14 = *((*(**v4 + 56))() + 1616);
    result = (*(**a1 + 56))();
    if (v14 < *(result + 1616))
    {
      v15 = *a1;
      *a1 = *v4;
      v12 = a1 + 1;
      *v4 = v15;
LABEL_10:
      v19 = *v12;
      *v12 = v4[1];
      v4[1] = v19;
    }
  }

  return result;
}

__n128 sub_10025FBB4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  sub_10025F978(a1, a2, a3);
  v8 = *((*(**a4 + 56))() + 1616);
  if (v8 < *((*(**a3 + 56))() + 1616))
  {
    v10 = *a3;
    *a3 = *a4;
    *a4 = v10;
    v11 = *((*(**a3 + 56))() + 1616);
    if (v11 < *((*(**a2 + 56))() + 1616))
    {
      v12 = *a2;
      *a2 = *a3;
      *a3 = v12;
      v13 = *((*(**a2 + 56))() + 1616);
      if (v13 < *((*(**a1 + 56))() + 1616))
      {
        result = *a2;
        v14 = *a1;
        *a1 = *a2;
        *a2 = v14;
      }
    }
  }

  return result;
}

__n128 sub_10025FD44(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10025FBB4(a1, a2, a3, a4);
  v11 = *((*(**a5 + 56))(v10) + 1616);
  if (v11 < *((*(**a4 + 56))() + 1616))
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    v14 = *((*(**a4 + 56))() + 1616);
    if (v14 < *((*(**a3 + 56))() + 1616))
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      v16 = *((*(**a3 + 56))() + 1616);
      if (v16 < *((*(**a2 + 56))() + 1616))
      {
        v17 = *a2;
        *a2 = *a3;
        *a3 = v17;
        v18 = *((*(**a2 + 56))() + 1616);
        if (v18 < *((*(**a1 + 56))() + 1616))
        {
          result = *a2;
          v19 = *a1;
          *a1 = *a2;
          *a2 = v19;
        }
      }
    }
  }

  return result;
}

BOOL sub_10025FF48(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_10025F978(a1, a1 + 2, a2 - 2);
        return 1;
      case 4:
        sub_10025FBB4(a1, a1 + 2, a1 + 4, (a2 - 2));
        return 1;
      case 5:
        sub_10025FD44(a1, a1 + 2, a1 + 4, (a1 + 6), (a2 - 2));
        return 1;
    }

    goto LABEL_12;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
LABEL_12:
    v8 = a1 + 4;
    sub_10025F978(a1, a1 + 2, a1 + 4);
    v9 = a1 + 6;
    if (a1 + 6 == a2)
    {
      return 1;
    }

    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *((*(**v9 + 56))(*v9) + 1616);
      if (v12 < *((*(**v8 + 56))(*v8) + 1616))
      {
        v24 = *v9;
        *v9 = 0;
        v9[1] = 0;
        v13 = v10;
        while (1)
        {
          v14 = a1 + v13;
          v15 = *(a1 + v13 + 32);
          *(v14 + 4) = 0;
          *(v14 + 5) = 0;
          v16 = *(a1 + v13 + 56);
          *(v14 + 3) = v15;
          if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v16->__on_zero_shared)(v16);
            std::__shared_weak_count::__release_weak(v16);
          }

          v17 = v24;
          if (v13 == -32)
          {
            break;
          }

          v18 = *((*(*v24 + 56))(v24) + 1616);
          v19 = (*(**(a1 + v13 + 16) + 56))(*(a1 + v13 + 16));
          v13 -= 16;
          if (v18 >= *(v19 + 1616))
          {
            v20 = (a1 + v13 + 48);
            v21 = *(&v24 + 1);
            v25 = 0uLL;
            v22 = *(a1 + v13 + 56);
            *v20 = v17;
            v20[1] = v21;
            if (!v22)
            {
              goto LABEL_28;
            }

            goto LABEL_26;
          }
        }

        v23 = *(&v24 + 1);
        v25 = 0uLL;
        v22 = a1[1];
        *a1 = v17;
        a1[1] = v23;
        if (!v22)
        {
          goto LABEL_28;
        }

LABEL_26:
        if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }

LABEL_28:
        if (*(&v25 + 1))
        {
          if (!atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(**(&v25 + 1) + 16))(*(&v25 + 1));
            std::__shared_weak_count::__release_weak(*(&v25 + 1));
          }
        }

        if (++v11 == 8)
        {
          return v9 + 2 == a2;
        }
      }

      v8 = v9;
      v10 += 16;
      v9 += 2;
      if (v9 == a2)
      {
        return 1;
      }
    }
  }

  v6 = *((*(**(a2 - 2) + 56))(*(a2 - 2)) + 1616);
  if (v6 >= *((*(**a1 + 56))() + 1616))
  {
    return 1;
  }

  v7 = *a1;
  *a1 = *(a2 - 1);
  *(a2 - 1) = v7;
  return 1;
}

uint64_t *sub_100260300(uint64_t *a1)
{
  if (*a1)
  {
    sub_10026033C(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_10026033C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 24);
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        v5 = *(v3 - 48);
        if (v5)
        {
LABEL_7:
          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }
        }
      }

      else
      {
        v5 = *(v3 - 48);
        if (v5)
        {
          goto LABEL_7;
        }
      }

      v3 -= 56;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_100260458(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  std::runtime_error::runtime_error(a1, a2)->__vftable = &off_100444698;
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
  *a1 = &off_1004445B0;
  *(a1 + 16) = off_1004445E8;
  *(a1 + 56) = &off_100444620;
  return a1;
}

void sub_10026058C(std::runtime_error *a1)
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

void sub_1002608BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_1002608D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100260900(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100444698;
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
  *a1 = &off_1004445B0;
  *(a1 + 16) = off_1004445E8;
  *(a1 + 56) = &off_100444620;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_100260A54(std::runtime_error *a1)
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

void sub_100260AE8(std::runtime_error *this)
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

void sub_100260C08(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100260458(exception, a1);
}

void sub_100260C64(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_100260CEC(std::runtime_error *a1)
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

void sub_100260E1C(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100260458(exception, a1 + v2);
}

void sub_100260E90(void *a1)
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

void sub_100260F30(void *a1)
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

void sub_100260FE4(std::runtime_error *this)
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

void sub_100261084(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_10026110C(std::runtime_error *a1)
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

void sub_1002611A8(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_1002611E0(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100444698;
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
  *a1 = &off_1004445B0;
  *(a1 + 16) = off_1004445E8;
  *(a1 + 56) = &off_100444620;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

std::string *sub_100261334@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100261368(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100261384@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002613B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1002613D4@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100261408(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char **sub_100261424(char **result)
{
  v1 = *result;
  if (*result)
  {
    for (i = result[1]; i != v1; i -= 88)
    {
      if (*(i - 48) == 1)
      {
        *(i - 48) = 0;
      }
    }

    result[1] = v1;
    v3 = result;
    operator delete(v1);
    return v3;
  }

  return result;
}

__n128 sub_100261488(__n128 *a1, uint64_t a2)
{
  v4 = &a1->n128_u64[1];
  v5 = a1->n128_i64[1];
  if (v5)
  {
    v6 = a1[1].n128_i64[0];
    v7 = a1->n128_u64[1];
    if (v6 != v5)
    {
      v8 = v6 - 168;
      do
      {
        v11 = *(v6 - 176);
        if (v11 == v11 >> 31)
        {
          if (*(v6 - 128) == 1)
          {
            *(v6 - 128) = 0;
          }
        }

        else
        {
          v9 = *(v6 - 168);
          if (v11 < 0)
          {
            if (v9)
            {
              (*(*v9 + 8))(v9);
            }
          }

          else
          {
            v10 = *(v6 - 168);
            (*v9)(v6 - 168);
          }
        }

        v6 -= 208;
        v8 -= 208;
      }

      while (v6 != v5);
      v7 = *v4;
    }

    a1[1].n128_u64[0] = v5;
    operator delete(v7);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *(a1 + 8) = *a2;
  a1[1].n128_u64[1] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v12 = a1[2].n128_u64[0];
  if (v12)
  {
    a1[2].n128_u64[1] = v12;
    operator delete(v12);
    a1[2].n128_u64[0] = 0;
    a1[2].n128_u64[1] = 0;
    a1[3].n128_u64[0] = 0;
  }

  result = *(a2 + 24);
  a1[2] = result;
  v14 = *(a2 + 48);
  a1[3].n128_u64[0] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  a1[3].n128_u64[1] = v14;
  return result;
}

void sub_1002615D4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100261644()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1002616B4(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  *(a1 + 32) = 0;
  v4 = (a1 + 32);
  *(a1 + 24) = a1 + 32;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  v37 = (a1 + 48);
  v38 = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  v39 = 0;
  v40 = 0;
  v5 = a2[1] - *a2;
  if (v5)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_10031C330(&v38);
  v6 = v38;
  v7 = v39;
  if (v38 != v39)
  {
    v8 = 0;
    v9 = 0.0;
    do
    {
      v11 = *v6;
      v9 = v9 + *v6;
      v12 = *v4;
      if (!*v4)
      {
LABEL_17:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v13 = v12;
          v14 = *(v12 + 4);
          if (v9 >= v14)
          {
            break;
          }

          v12 = *v12;
          if (!*v13)
          {
            goto LABEL_17;
          }
        }

        if (v14 >= v9)
        {
          break;
        }

        v12 = v12[1];
        if (!v12)
        {
          goto LABEL_17;
        }
      }

      v16 = *(a1 + 56);
      v15 = *(a1 + 64);
      if (v16 >= v15)
      {
        v18 = *v37;
        v19 = v16 - *v37;
        v20 = v19 >> 4;
        v21 = (v19 >> 4) + 1;
        if (v21 >> 60)
        {
          sub_10000FC84();
        }

        v22 = v15 - v18;
        if (v22 >> 3 > v21)
        {
          v21 = v22 >> 3;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF0)
        {
          v23 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          if (!(v23 >> 60))
          {
            operator new();
          }

LABEL_47:
          sub_10000D444();
        }

        v24 = (16 * v20);
        *v24 = v8;
        v24[1] = v11;
        v17 = 16 * v20 + 16;
        memcpy(0, v18, v19);
        *(a1 + 48) = 0;
        *(a1 + 56) = v17;
        *(a1 + 64) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v16 = v8;
        *(v16 + 1) = v11;
        v17 = (v16 + 16);
      }

      *(a1 + 56) = v17;
      v26 = *(a1 + 80);
      v25 = *(a1 + 88);
      if (v26 < v25)
      {
        *v26 = v9;
        v10 = v26 + 1;
      }

      else
      {
        v27 = *(a1 + 72);
        v28 = v26 - v27;
        v29 = (v26 - v27) >> 3;
        v30 = v29 + 1;
        if ((v29 + 1) >> 61)
        {
          sub_10000FC84();
        }

        v31 = v25 - v27;
        if (v31 >> 2 > v30)
        {
          v30 = v31 >> 2;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF8)
        {
          v32 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          if (!(v32 >> 61))
          {
            operator new();
          }

          goto LABEL_47;
        }

        v33 = (v26 - v27) >> 3;
        v34 = (8 * v29);
        v35 = (8 * v29 - 8 * v33);
        *v34 = v9;
        v10 = v34 + 1;
        memcpy(v35, v27, v28);
        *(a1 + 72) = v35;
        *(a1 + 80) = v10;
        *(a1 + 88) = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      *(a1 + 80) = v10;
      ++v8;
      ++v6;
    }

    while (v6 != v7);
    v6 = v38;
  }

  if (v6)
  {
    v39 = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_100261A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  v14 = *(v11 + 72);
  if (v14)
  {
    *(v11 + 80) = v14;
    operator delete(v14);
  }

  v15 = *a9;
  if (*a9)
  {
    *(v11 + 56) = v15;
    operator delete(v15);
  }

  sub_1000275F4(v12, *(v11 + 32));
  v16 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100261AE4(uint64_t a1, float a2)
{
  v4 = *(a1 + 32);
  v2 = a1 + 32;
  v3 = v4;
  if (v4)
  {
    v5 = a2;
    do
    {
      v6 = *(v3 + 32);
      if (v6 >= v5)
      {
        v2 = v3;
      }

      v3 = *(v3 + 8 * (v6 < v5));
    }

    while (v3);
  }

  return *(v2 + 40);
}

uint64_t sub_100261B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = *(a1 + 72);
  if (a2)
  {
    a5.n128_u64[0] = *(v6 + 8 * a2 - 8);
    a5.n128_f32[0] = a5.n128_f64[0];
  }

  else
  {
    a5.n128_u64[0] = 0;
  }

  v7 = *(v6 + 8 * a3);
  (*(*a4 + 40))(a4, a5, v7);
  v11 = *(a1 + 32);
  v10 = a1 + 32;
  v9 = v11;
  if (v11)
  {
    v12 = v8;
    do
    {
      v13 = *(v9 + 32);
      if (v13 >= v12)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * (v13 < v12));
    }

    while (v9);
  }

  return *(v10 + 40);
}

__n128 sub_100261BAC(uint64_t a1, __int128 *a2, __n128 *a3, int a4)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  result = *a3;
  *(a1 + 40) = a3[1].n128_u64[0];
  *(a1 + 24) = result;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  a3->n128_u64[0] = 0;
  *(a1 + 48) = a4;
  return result;
}

void sub_100261BEC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100261C5C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void **sub_100261CCC(void **a1)
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
        v6 = *(v3 - 3);
        v3 -= 24;
        v5 = v6;
        if (v6)
        {
          operator delete(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_100261D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1004446C0;
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v5 = sub_1002C74FC(a2);
  sub_10023F4DC(a1 + 24, v5);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  (*(**(a1 + 8) + 32))(*(a1 + 8));
  *(a1 + 80) = sub_1000C1064(*(a1 + 64));
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  sub_100172B30(a1 + 112, (a1 + 64));
  *(a1 + 168) = sub_1002C7584(a2);
  *(a1 + 176) = sub_1002C75A0(a2);
  *(a1 + 184) = sub_1002C75B8(a2);
  v12 = sub_1002C75D0(a2, v9, v10, v11);
  sub_1002D3DA4((a1 + 192), v12);
  v16 = sub_1002C7600(a2, v13, v14, v15);
  sub_1002D3DA4((a1 + 248), v16);
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = a1 + 336;
  *(a1 + 352) = sub_1002C7630(a2);
  *(a1 + 360) = v17;
  *(a1 + 368) = sub_1002C7650(a2);
  *(a1 + 376) = v18;
  return a1;
}

void sub_100261EA0(_Unwind_Exception *a1)
{
  sub_10002BB1C(v2);
  sub_10002BB1C(v1);
  _Unwind_Resume(a1);
}

void sub_100261EBC(_Unwind_Exception *a1)
{
  sub_1000275F4(v2 + 328, *v4);
  v6 = *(v2 + 304);
  if (v6)
  {
    operator delete(v6);
  }

  sub_1002D3E48(v2 + 248);
  sub_1002D3E48(v2 + 192);
  sub_1001736CC(v2 + 112);
  sub_10002BB1C(v3 + 16);
  sub_10002BB1C(v3);
  sub_10002BB1C(v1);
  _Unwind_Resume(a1);
}

int32x2_t sub_100261F54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 64))
  {
    sub_1003846E0(__p, &v8);
    sub_10003F5D0(__p);
  }

  v4 = *(a1 + 120);
  *a3 = *(a1 + 112);
  *(a3 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 16) = *(a1 + 128);
  v5 = *(a1 + 144);
  *(a3 + 24) = *(a1 + 136);
  *(a3 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 40) = *(a1 + 152);
  return sub_100172B34(a3, a2);
}

void sub_100262014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100262044@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 64))
  {
    sub_1003846E0(__p, &v7);
    sub_10003F5D0(__p);
  }

  v4 = sub_100172F78(a3, (a1 + 64));
  return sub_100173340(v4, a2);
}

void sub_1002620C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **sub_1002620F0(void **a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return a1;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    v5 = *(v3 - 3);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v6 = *(v3 - 6);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *(v3 - 6);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

LABEL_4:
    v3 -= 56;
  }

  while (v3 != v2);
  v4 = *a1;
LABEL_13:
  a1[1] = v2;
  operator delete(v4);
  return a1;
}

void sub_1002621F4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (!((0x4EC4EC4EC4EC4EC5 * ((v4 - *a2) >> 4)) >> 59))
    {
      operator new();
    }

    sub_10000FC84();
  }

  (*(**(a1 + 8) + 16))(*(a1 + 8), &__p);
  if (0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 4) != (a3[1] - *a3) >> 4)
  {
    sub_1000474A4(v10, "");
    sub_100258AB0("Number of results returned does not match number of inputs", &v12);
    sub_1000E661C(v10, &v12, 1);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    sub_10003F5D0(&v9);
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_1002625B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_100048F1C(v26);
  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100262618(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a2 + 16);
  memset(&__p, 0, sizeof(__p));
  if (v6)
  {
    v7 = 0;
    v8 = -1;
    v9 = v6;
    do
    {
      v9 = *v9;
      ++v8;
      v7 += 32;
    }

    while (v9);
    if (v8 < 0x7FFFFFFFFFFFFFFLL)
    {
      operator new();
    }

    sub_10000FC84();
  }

  (*(*v5 + 16))(v5, &__p);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 24) != (a3[1] - *a3) >> 4)
  {
    sub_1000474A4(v11, "");
    sub_100258AB0("Number of results returned does not match number of inputs", &__p);
    sub_1000E661C(v11, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    sub_10003F5D0(&v10);
  }
}

void sub_100262800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_100048F1C(v20);
    _Unwind_Resume(a1);
  }

  sub_100048F1C(v20);
  _Unwind_Resume(a1);
}

void sub_10026285C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100262878(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v6 = v5;
      (*(*v3 + 24))(v3, v5);
    }

    else
    {
      v6 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v6 = 0;
  }

  (*(*v2 + 24))(v2, v5);
  result = v6;
  if (v6 == v5)
  {
    return (*(*v6 + 32))(v6);
  }

  if (v6)
  {
    return (*(*v6 + 40))();
  }

  return result;
}

void sub_1002629D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10022683C(va);
  _Unwind_Resume(a1);
}

void sub_1002629E8(uint64_t a1@<X0>, double *a2@<X1>, int a3@<W2>, void **a4@<X8>)
{
  v5 = a1;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = sub_10031CEFC(a2, (a1 + 80));
  v8 = v5[8];
  v5 += 8;
  sub_1000C1450(v8);
  v10 = v9;
  sub_1000C1364(*v5);
  LODWORD(v47) = v10;
  LODWORD(v46[0]) = v11;
  sub_10031C15C(v53, &v47, v46);
  v12 = v53[0];
  v13 = v53[1];
  sub_100172B30(&v47, v5);
  v49 = 0;
  if (!a3)
  {
    v14 = v12 - 1;
    v40 = -1;
    v41 = -1;
    if (!v12)
    {
      goto LABEL_49;
    }

LABEL_6:
    if (v13 < 1)
    {
      goto LABEL_49;
    }

    v15 = 0;
    v42 = v13;
    v43 = v7;
LABEL_9:
    v16 = 0;
    v17 = v14;
    v44 = v14;
    while (1)
    {
      v49 = __PAIR64__(v14, v16);
      *&v52 = v16;
      *(&v52 + 1) = v17;
      if (v7)
      {
        break;
      }

      v46[0] = sub_1000BCE34(&v47);
      v46[1] = v18;
      v46[2] = v19;
      v46[3] = v20;
      if (sub_10031C818(v46, a2))
      {
        break;
      }

LABEL_12:
      if (++v16 == v13)
      {
        v14 += v41;
        if (v14 == v40)
        {
          goto LABEL_49;
        }

        goto LABEL_9;
      }
    }

    v21 = a4[2];
    if (v15 < v21)
    {
      *v15 = v47;
      v22 = v48;
      *(v15 + 1) = v48;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v15 + 2) = v49;
      *(v15 + 3) = v50;
      v23 = v51;
      *(v15 + 4) = v51;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v15 + 40) = v52;
      v15 += 56;
LABEL_11:
      a4[1] = v15;
      goto LABEL_12;
    }

    v24 = *a4;
    v25 = v15 - *a4;
    v26 = 0x6DB6DB6DB6DB6DB7 * (v25 >> 3) + 1;
    if (v26 > 0x492492492492492)
    {
      sub_10000FC84();
    }

    v27 = 0x6DB6DB6DB6DB6DB7 * ((v21 - v24) >> 3);
    if (2 * v27 > v26)
    {
      v26 = 2 * v27;
    }

    if (v27 >= 0x249249249249249)
    {
      v28 = 0x492492492492492;
    }

    else
    {
      v28 = v26;
    }

    if (v28)
    {
      if (v28 <= 0x492492492492492)
      {
        operator new();
      }

      sub_10000D444();
    }

    v36 = v48;
    v37 = (8 * (v25 >> 3));
    *v37 = v47;
    v37[1] = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(8 * (v25 >> 3) + 0x10) = v49;
    v29 = v51;
    *(8 * (v25 >> 3) + 0x18) = v50;
    *(8 * (v25 >> 3) + 0x20) = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(8 * (v25 >> 3) + 0x28) = v52;
    v30 = v37 - v25;
    if (v24 == v15)
    {
LABEL_44:
      v35 = *a4;
      v15 = (v37 + 7);
      *a4 = v30;
      a4[2] = 0;
      if (v35)
      {
        operator delete(v35);
      }

      v13 = v42;
      v7 = v43;
      v14 = v44;
      goto LABEL_11;
    }

    v31 = v24;
    v32 = v37 - v25;
    do
    {
      *v32 = *v31;
      *v31 = 0;
      *(v31 + 1) = 0;
      *(v32 + 2) = *(v31 + 2);
      *(v32 + 24) = *(v31 + 24);
      *(v31 + 3) = 0;
      *(v31 + 4) = 0;
      *(v32 + 40) = *(v31 + 40);
      v31 += 56;
      v32 += 56;
    }

    while (v31 != v15);
    while (1)
    {
      v33 = *(v24 + 4);
      if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
        v34 = *(v24 + 1);
        if (v34)
        {
LABEL_40:
          if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v34->__on_zero_shared)(v34);
            std::__shared_weak_count::__release_weak(v34);
          }
        }
      }

      else
      {
        v34 = *(v24 + 1);
        if (v34)
        {
          goto LABEL_40;
        }
      }

      v24 += 56;
      if (v24 == v15)
      {
        goto LABEL_44;
      }
    }
  }

  v41 = a3;
  if (a3 == 1)
  {
    v14 = 0;
    v40 = v12;
    if (v12)
    {
      goto LABEL_6;
    }
  }

LABEL_49:
  v38 = v51;
  if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  v39 = v48;
  if (v48)
  {
    if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
    }
  }
}

void sub_100262EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1001736CC(va);
  sub_1002620F0(v9);
  _Unwind_Resume(a1);
}

void sub_100262EE4(uint64_t a1)
{
  sub_100262FFC(a1);

  operator delete();
}

__n128 sub_100262F24@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 40);
  return result;
}

uint64_t sub_100262F80(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  v3 = a1;
  sub_100173794((a1 + 64));
  return v3;
}

uint64_t sub_100262FFC(uint64_t a1)
{
  *a1 = off_1004446C0;
  sub_1000275F4(a1 + 328, *(a1 + 336));
  v2 = *(a1 + 304);
  if (v2)
  {
    operator delete(v2);
  }

  sub_1002D3E48(a1 + 248);
  sub_1002D3E48(a1 + 192);
  v3 = *(a1 + 144);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 120);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 72);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 56);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 16);
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return a1;
}

void sub_1002631DC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10026324C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1002632BC()
{
  qword_10045D240 = 0;
  *algn_10045D248 = 0;
  qword_10045D250 = 0;
  __cxa_atexit(sub_100261CCC, &qword_10045D240, &_mh_execute_header);
  qword_10045D260 = 0;
  qword_10045D258 = &qword_10045D260;
  qword_10045D268 = 0;

  return __cxa_atexit(sub_100261D38, &qword_10045D258, &_mh_execute_header);
}

uint64_t sub_100263344(uint64_t a1, uint64_t a2)
{
  v3 = sub_100251D50(a2);
  result = sub_100166A3C(a1, v3);
  *(a1 + 56) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  return result;
}

void sub_100263384(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 4)
  {
    v4 = *(a2 + 156);
    if ((v4 & 0x80) == 0 || ((v5 = *(a2 + 64), v5 > 0.0) ? (v6 = v5 > 8.0) : (v6 = 1), v6))
    {
      if (*(a1 + 56) != 1)
      {
        return;
      }

      if ((v4 & 0x20) != 0)
      {
        v12 = *(a1 + 232);
        if (v12 >= *(a1 + 240))
        {
          *(a1 + 232) = sub_100263A74((a1 + 224), a2);
          if (!sub_100263688(a1))
          {
            return;
          }
        }

        else
        {
          sub_1000B7078(*(a1 + 232), a2);
          *(a1 + 232) = v12 + 160;
          *(a1 + 232) = v12 + 160;
          if (!sub_100263688(a1))
          {
            return;
          }
        }

        if (*(a1 + 56) == 1)
        {
          sub_1000B7124((a1 + 64));
          *(a1 + 56) = 0;
        }

        sub_100263CBC((a1 + 224), 0, 0, 0);
      }

      else
      {
        if (qword_10045B050 != -1)
        {
          sub_100386660();
        }

        v7 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
        {
          v8 = *(a2 + 16);
          if (!v8)
          {
            v8 = *(qword_10045DD98 + 16);
          }

          v9 = *(v8 + 16);
          v13 = 134349056;
          v14 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Missing altitude field for WiFi fix at %{public}f; this should never happen.", &v13, 0xCu);
        }

        if (*(a1 + 56) == 1)
        {
          sub_1000B7124((a1 + 64));
          *(a1 + 56) = 0;
        }

        sub_100263CBC((a1 + 224), 0, 0, 0);
      }
    }

    else
    {
      if (*(a1 + 56) == 1)
      {
        sub_1000B7124((a1 + 64));
        *(a1 + 56) = 0;
      }

      sub_100263CBC((a1 + 224), 0, 0, 0);
      if (*(a1 + 56) == 1)
      {

        sub_1000B8F38(a1 + 64, a2);
      }

      else
      {
        sub_1000B7078(a1 + 64, a2);
        *(a1 + 56) = 1;
      }
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100386660();
    }

    v10 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
    {
      v11 = *(a2 + 48);
      v13 = 67240192;
      LODWORD(v14) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Unsupported location type %{public}d passed in", &v13, 8u);
    }
  }
}

BOOL sub_100263688(uint64_t a1)
{
  if (*(a1 + 56) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 224);
  v3 = *(a1 + 232);
  if (v2 == v3)
  {
    return 0;
  }

  v4 = 0.0;
  do
  {
    sub_1000B7078(&v15, v2);
    v4 = v4 + v24;
    sub_1000B7124(&v15);
    v2 += 160;
  }

  while (v2 != v3);
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 232) - *(a1 + 224)) >> 5);
  v6 = v5;
  v7 = sqrt(*(a1 + 128) * *(a1 + 128) / v5);
  v8 = 1;
  if (v7 > 0.0)
  {
    v9 = v4 / v6;
    v10 = sub_10023FB90(-vabdd_f64(v4 / v6, *(a1 + 120)) / v7);
    v11 = *(a1 + 32) * 0.5;
    v8 = v10 < v11;
    if (qword_10045B050 != -1)
    {
      sub_100386674();
    }

    v12 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 120);
      LODWORD(v15) = 67241216;
      HIDWORD(v15) = v10 < v11;
      v16 = 2050;
      v17 = v5;
      v18 = 2050;
      v19 = v9;
      v20 = 2050;
      v21 = v7;
      v22 = 2050;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "reject null hypothesis, %{public}d, # of samples, %{public}lu, sample mean, %{public}f, sample std, %{public}f, last qualified altitude, %{public}f", &v15, 0x30u);
    }
  }

  return v8;
}

uint64_t *sub_100263888(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 12) <= 1u && *(result + 56) == 1)
  {
    v3 = result;
    sub_1000B7124(result + 8);
    *(v3 + 56) = 0;

    return sub_100263CBC(v3 + 28, 0, 0, 0);
  }

  return result;
}

void sub_1002638F0(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (*(a1 + 40) == 1 && *(a2 + 32) == 1 && *(a1 + 56) == 1)
  {
    v4 = *(a1 + 128);
    if (v4 >= 0.0)
    {
      v9 = *(a2 + 8);
      v10 = *(a1 + 120);
      v11 = *a2 + v9 * 0.5;
      v12 = *a2 + v9 * -0.5;
      if (v10 > *a2)
      {
        v12 = v11;
      }

      v13 = v10 - v12;
      if (v10 > *a2)
      {
        v13 = -v13;
      }

      v7 = sub_10023FB90(v13 / v4);
      v6 = 1.0 - v7;
    }

    else
    {
      if (qword_10045B050 != -1)
      {
        sub_100386660();
      }

      v5 = qword_10045B058;
      v6 = 0.5;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
      {
        v14 = 134349056;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Altitude estimate uncertainty is less than zero: %{public}f. Use uniform prior to continue", &v14, 0xCu);
      }

      v7 = 0.5;
    }

    *a3 = v6;
    *(a3 + 8) = v7;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v8;
}

uint64_t sub_100263A74(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    sub_10000FC84();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v5 = 0x199999999999999;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x199999999999999)
    {
      operator new();
    }

    sub_10000D444();
  }

  v18 = 32 * ((a1[1] - *a1) >> 5);
  sub_1000B7078(v18, a2);
  v6 = 160 * v2 + 160;
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
      sub_1000B7078(v13, v12);
      v12 += 160;
      v13 += 160;
      v11 -= 160;
    }

    while (v12 != v8);
    v14 = v7;
    v15 = v7;
    do
    {
      v16 = *v15;
      v15 += 20;
      (*v16)(v7);
      v14 += 20;
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

void sub_100263C14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100263C4C(va);
  _Unwind_Resume(a1);
}

void sub_100263C28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_10038669C();
  }

  sub_100263C4C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100263C4C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 160);
    *(a1 + 16) = i - 160;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_100263CBC(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 5) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        v12 = v10 - 160;
        v13 = (v10 - 160);
        v14 = (v10 - 160);
        do
        {
          v15 = *v14;
          v14 -= 20;
          (*v15)(v13);
          v12 -= 160;
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

    if (a4 <= 0x199999999999999)
    {
      v17 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 5);
      v18 = 2 * v17;
      if (2 * v17 <= a4)
      {
        v18 = a4;
      }

      if (v17 >= 0xCCCCCCCCCCCCCCLL)
      {
        v19 = 0x199999999999999;
      }

      else
      {
        v19 = v18;
      }

      if (v19 <= 0x199999999999999)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v20 = result[1];
  v21 = v20 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v20 - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_1000B8F38(v8, v5);
        v5 += 160;
        v8 += 160;
      }

      while (v5 != a3);
      v20 = v6[1];
    }

    if (v20 != v8)
    {
      v25 = v20 - 160;
      v26 = (v20 - 160);
      v27 = (v20 - 160);
      do
      {
        v28 = *v27;
        v27 -= 20;
        result = (*v28)(v26);
        v25 -= 160;
        v16 = v26 == v8;
        v26 = v27;
      }

      while (!v16);
    }

    v6[1] = v8;
  }

  else
  {
    v22 = a2 + v21;
    if (v20 != v8)
    {
      do
      {
        result = sub_1000B8F38(v8, v5);
        v5 += 160;
        v8 += 160;
        v21 -= 160;
      }

      while (v21);
      v20 = v6[1];
    }

    v23 = v20;
    if (v22 != a3)
    {
      v24 = 0;
      do
      {
        result = sub_1000B7078(v20 + v24, v22);
        v22 += 160;
        v24 += 160;
      }

      while (v22 != a3);
      v23 = v20 + v24;
    }

    v6[1] = v23;
  }

  return result;
}

void sub_100263F50(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_10038669C();
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

void sub_100263F70(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    sub_10038669C();
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_100263FA4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100264014()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100264084(uint64_t a1, __int128 *a2, __int128 *a3, void *a4)
{
  *a1 = off_1004447D8;
  *(a1 + 8) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100003228((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v8;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100003228((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v9;
  }

  if (!*a4)
  {
    v10[23] = 10;
    strcpy(v10, "privacy.db");
    if (*(a2 + 23) < 0)
    {
      sub_100003228(&__p, *a2, *(a2 + 1));
    }

    else
    {
      __p = *a2;
    }

    sub_1000032E4(&__p, v10);
    sub_100007E34();
  }

  operator new();
}

void sub_100264334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((*(v21 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v21 + 39) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v21 + 63) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v21 + 40));
  if ((*(v21 + 39) & 0x80000000) == 0)
  {
LABEL_4:
    sub_100267C00(v22);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v21 + 16));
  sub_100267C00(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_10026442C(uint64_t a1)
{
  *a1 = off_1004447D8;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v2)
      {
        goto LABEL_4;
      }

      return a1;
    }
  }

  else if ((*(a1 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 16));
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
LABEL_4:
    sub_100188234(v2);
    operator delete();
  }

  return a1;
}

void sub_1002644C8(uint64_t a1)
{
  *a1 = off_1004447D8;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    if ((*(a1 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v2)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if ((*(a1 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 16));
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
LABEL_4:
    sub_100188234(v2);
    operator delete();
  }

LABEL_5:

  operator delete();
}

void sub_100264C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27)
{
  if (v27)
  {
    operator delete(v27);
  }

  a27 = &a22;
  sub_100267C54(&a27);
  _Unwind_Resume(a1);
}

void sub_100264CF8(uint64_t a1, uint64_t a2)
{
  if (qword_10045B080 != -1)
  {
    sub_100386724();
  }

  v4 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(a2 + 8) - *a2) >> 3;
    *buf = 134349056;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "@TileEvict, exec, floors, %{public}zu", buf, 0xCu);
  }

  if (*a2 != *(a2 + 8))
  {
    sub_10018FB98(*(a1 + 8), **a2);
  }
}

void sub_100264E74(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v1 = 0;
  operator new();
}

void sub_100264F78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001848BC(va);
  sub_100048F1C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100264FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_1000DB498();
  }

  return (*(*v3 + 48))(v3);
}

void sub_10026503C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(exception_object);
    if (qword_10045B080 != -1)
    {
      sub_100386724();
    }

    v12 = qword_10045B088;
    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10011823C(v9);
      LODWORD(a9) = 136380675;
      *(&a9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Protobuf parsing error encountered, deleting tile, %{private}s", &a9, 0xCu);
    }

    sub_10026741C(v10, v9);
    exception = __cxa_allocate_exception(0x10uLL);
    v15 = std::runtime_error::runtime_error(exception, v11);
    v15->__vftable = &off_1004449A8;
  }

  _Unwind_Resume(exception_object);
}

void sub_100265130(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100265138);
  }

  sub_10000D388(a1);
}

uint64_t sub_100265148(uint64_t a1, uint64_t a2)
{
  v3[0] = off_100444A60;
  v3[1] = a1;
  v3[2] = a2;
  v4 = v3;
  sub_100264FA8(a1, a2, v3);
  result = v4;
  if (v4 == v3)
  {
    return (*(*v4 + 32))(v4);
  }

  if (v4)
  {
    return (*(*v4 + 40))();
  }

  return result;
}

void sub_100265224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001848BC(va);
  _Unwind_Resume(a1);
}

void sub_100265328(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001848BC(va);
  _Unwind_Resume(a1);
}

void sub_100265414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2;
  v4 = nullsub_35(a3);
  if (*(v4 + 23) < 0)
  {
    sub_100003228(__p, *v4, *(v4 + 8));
  }

  else
  {
    v5 = *v4;
    v7 = *(v4 + 16);
    *__p = v5;
  }

  sub_100188270("cfg_prefetch_import", *(a1 + 8), v11);
  v10 = 0;
  v9 = 0;
  operator new();
}

void sub_100265608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_10026591C(&a16);
  sub_100192074(&a20);
  sub_10023D498(&a23);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10026564C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_100340190(a1 + 16, a3, v7);
  v6 = *(a4 + 24);
  if (v6)
  {
    (*(*v6 + 48))(__p);
    sub_10018CC60(*(a1 + 8), __p);
  }

  sub_1000DB498();
}

void sub_1002658E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_1001A49EC(va1);
  sub_100340628(va);
  _Unwind_Resume(a1);
}

void sub_100265908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100340628(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10026591C(uint64_t a1)
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

void sub_1002659A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a4;
  v10 = a2;
  v5 = nullsub_35(a3);
  if (*(v5 + 23) < 0)
  {
    sub_100003228(__p, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    v8 = *(v5 + 16);
    *__p = v6;
  }

  sub_100188270("tile_prefetch_import", *(a1 + 8), v14);
  v13 = 0;
  v12 = 0;
  v11 = 0;
  operator new();
}

void sub_100265D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_1001AFFBC(&a10);
  sub_100267B14(&a28);
  sub_100192074(v28 - 160);
  sub_10023D498(v28 - 136);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100265D8C(uint64_t a1, uint64_t a2, char **a3, double a4)
{
  (*(*a1 + 48))(&v27);
  if ((v27 & 1) == 0)
  {
    if (qword_10045B080 != -1)
    {
      sub_100386738();
    }

    v12 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    v25 = 136380675;
    *v26 = sub_10011823C(a3);
    v13 = "#shouldPrefetchMetadata, true, data for locationId unavailable, %{private}s";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, v13, &v25, 0xCu);
    result = 1;
    if (v27 != 1)
    {
      return result;
    }

    goto LABEL_44;
  }

  if ((sub_10026FAF8(__p) & 1) == 0)
  {
    if (qword_10045B080 != -1)
    {
      sub_100386738();
    }

    v12 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    v25 = 136380675;
    *v26 = sub_10011823C(a3);
    v13 = "#shouldPrefetchMetadata, true, metadata for %{private}s is missing";
    goto LABEL_16;
  }

  if ((sub_10026FB40(__p) & 1) == 0)
  {
    goto LABEL_30;
  }

  v7 = sub_10026FB40(__p);
  v9 = v8;
  v10 = sub_10026FAF8(__p);
  if (v7 & 1) != 0 && (v10)
  {
    if (v9 == v11)
    {
      goto LABEL_30;
    }
  }

  else if (v7 == v10)
  {
    goto LABEL_30;
  }

  sub_10026FB18(__p, &v25);
  v15 = *&v26[4];
  sub_10026FB60(__p, &v25);
  v16 = *&v26[4];
  if (v15 < *&v26[4])
  {
    if (qword_10045B080 != -1)
    {
      sub_100386738();
    }

    v17 = qword_10045B088;
    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
    {
      v25 = 134218240;
      *v26 = v15;
      *&v26[8] = 2048;
      *&v26[10] = v16;
      v18 = "#shouldPrefetchMetadata, true, metadata modification earlier than tile, %lld < %lld";
      goto LABEL_35;
    }

LABEL_24:
    result = 1;
    if (v27 != 1)
    {
      return result;
    }

    goto LABEL_44;
  }

  if (qword_10045B080 != -1)
  {
    sub_100386738();
  }

  v19 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
  {
    v25 = 134218240;
    *v26 = v15;
    *&v26[8] = 2048;
    *&v26[10] = v16;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "#shouldPrefetchMetadata, no decision, tiles modifications earlier than metadata, %lld >= %lld", &v25, 0x16u);
  }

LABEL_30:
  sub_10026FB98(__p, &v25);
  v20 = a2 - *&v26[4];
  if (a4 * 8.64e10 >= (a2 - *&v26[4]))
  {
    if (qword_10045B080 != -1)
    {
      sub_100386738();
    }

    v21 = qword_10045B088;
    result = os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v25 = 134218240;
      *v26 = v20 / 1000000;
      *&v26[8] = 2048;
      *&v26[10] = (a4 * 86400.0);
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "#shouldPrefetchMetadata, false, metadata age less than limit, %lld <= %lld", &v25, 0x16u);
      result = 0;
      if (v27 != 1)
      {
        return result;
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (qword_10045B080 != -1)
    {
      sub_100386738();
    }

    v17 = qword_10045B088;
    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
    {
      v25 = 134218240;
      *v26 = v20 / 1000000;
      *&v26[8] = 2048;
      *&v26[10] = (a4 * 86400.0);
      v18 = "#shouldPrefetchMetadata, true, metadata older than limit, %lld > %lld";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, v18, &v25, 0x16u);
      result = 1;
      if (v27 != 1)
      {
        return result;
      }

      goto LABEL_44;
    }

    result = 1;
  }

  if (v27 != 1)
  {
    return result;
  }

LABEL_44:
  if (v34 == 1)
  {
    v34 = 0;
    if (v33 != 1)
    {
      goto LABEL_46;
    }
  }

  else if (v33 != 1)
  {
LABEL_46:
    if (v32 == 1)
    {
      goto LABEL_47;
    }

    goto LABEL_52;
  }

  v33 = 0;
  if (v32 == 1)
  {
LABEL_47:
    v32 = 0;
    if (v31 != 1)
    {
      goto LABEL_48;
    }

LABEL_53:
    v31 = 0;
    v22 = v30;
    if (!v30)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_52:
  if (v31 == 1)
  {
    goto LABEL_53;
  }

LABEL_48:
  v22 = v30;
  if (!v30)
  {
LABEL_55:
    if ((v29 & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_56;
  }

LABEL_54:
  if (atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_55;
  }

  v24 = result;
  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  result = v24;
  if (v29 < 0)
  {
LABEL_56:
    v23 = result;
    operator delete(__p[0]);
    return v23;
  }

  return result;
}

void sub_1002662EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10018CB50(va);
  _Unwind_Resume(a1);
}

void sub_100266300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10018CB50(va);
  _Unwind_Resume(a1);
}

void sub_100266314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10018CB50(va);
  _Unwind_Resume(a1);
}

void sub_100266328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10018CB50(va);
  _Unwind_Resume(a1);
}

void sub_10026633C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10018CB50(va);
  _Unwind_Resume(a1);
}

void sub_100266350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10018CB50(va);
  _Unwind_Resume(a1);
}

void sub_100266364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10018CB50(va);
  _Unwind_Resume(a1);
}

void sub_100266378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10018CB50(va);
  _Unwind_Resume(a1);
}

void sub_10026638C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10018CB50(va);
  _Unwind_Resume(a1);
}

BOOL sub_1002663A4(uint64_t a1, uint64_t a2, char **a3)
{
  (*(*a1 + 48))(&v24);
  if (v24)
  {
    v4 = sub_10026FB90(__p);
    v22 = 0;
    if (*v4 == 1)
    {
      v23 = *(v4 + 8);
      v22 = 1;
    }

    v5 = sub_100240B3C(__p);
    v20 = 0;
    if (*v5 == 1 && (v21 = *(v5 + 8), v20 = 1, v22 == 1))
    {
      if (sub_10026F664(&v23, &v21))
      {
        if (qword_10045B080 != -1)
        {
          sub_100386738();
        }

        v6 = qword_10045B088;
        if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
        {
          v16 = 136380675;
          *v17 = sub_10011823C(a3);
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#prefetchDbShouldPrefetchTile, false, metadata version matches tile version, %{private}s", &v16, 0xCu);
        }

        v7 = 0;
      }

      else
      {
        v13 = sub_10026F65C(&v23);
        v14 = sub_10026F65C(&v21);
        v7 = v14 < v13;
        if (qword_10045B080 != -1)
        {
          sub_100386738();
        }

        v15 = qword_10045B088;
        if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
        {
          v16 = 67109632;
          *v17 = v14 < v13;
          *&v17[4] = 2048;
          *&v17[6] = v13;
          v18 = 2048;
          v19 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "#shouldPrefetchMetadata, %d, comparing metadata timestamp, %lld, tile timestamp, %lld", &v16, 0x1Cu);
        }
      }
    }

    else
    {
      if (qword_10045B080 != -1)
      {
        sub_100386738();
      }

      v9 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
      {
        if (v22)
        {
          v10 = "true";
        }

        else
        {
          v10 = "false";
        }

        v16 = 136315138;
        *v17 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#shouldPrefetchMetadata, %s, based on cfgVersionInfo availability", &v16, 0xCu);
      }

      v7 = v22;
    }
  }

  else
  {
    if (qword_10045B080 != -1)
    {
      sub_100386738();
    }

    v8 = qword_10045B088;
    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136380675;
      *v17 = sub_10011823C(a3);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#prefetchDbShouldPrefetchTile, true, no resource info, %{private}s", &v16, 0xCu);
    }

    v7 = 1;
  }

  if (v24 != 1)
  {
    return v7;
  }

  if (v31 == 1)
  {
    v31 = 0;
    if (v30 != 1)
    {
      goto LABEL_28;
    }
  }

  else if (v30 != 1)
  {
LABEL_28:
    if (v29 == 1)
    {
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  v30 = 0;
  if (v29 == 1)
  {
LABEL_29:
    v29 = 0;
    if (v28 != 1)
    {
      goto LABEL_30;
    }

LABEL_35:
    v28 = 0;
    v11 = v27;
    if (!v27)
    {
      goto LABEL_37;
    }

LABEL_36:
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      if ((v26 & 0x80000000) == 0)
      {
        return v7;
      }

      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_34:
  if (v28 == 1)
  {
    goto LABEL_35;
  }

LABEL_30:
  v11 = v27;
  if (v27)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (v26 < 0)
  {
LABEL_38:
    operator delete(__p[0]);
  }

  return v7;
}

void sub_1002667A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10018CB50(va);
  _Unwind_Resume(a1);
}

void sub_1002667BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10018CB50(va);
  _Unwind_Resume(a1);
}

void sub_1002667D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10018CB50(va);
  _Unwind_Resume(a1);
}

void sub_1002667E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10018CB50(va);
  _Unwind_Resume(a1);
}

void sub_1002667F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10018CB50(va);
  _Unwind_Resume(a1);
}

void sub_10026680C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10018CB50(va);
  _Unwind_Resume(a1);
}

void sub_100266820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10018CB50(va);
  _Unwind_Resume(a1);
}

void sub_100266A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char *a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  a19 = &a16;
  sub_100267C54(&a19);
  _Unwind_Resume(a1);
}

void sub_100266AD8()
{
  __cxa_allocate_exception(0x40uLL);
  sub_10010A984(v0);
}

void sub_100266B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, std::runtime_error a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a13);
  _Unwind_Resume(a1);
}

void sub_100266B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::runtime_error a13)
{
  std::runtime_error::~runtime_error(&a13);
  __cxa_free_exception(v13);
  _Unwind_Resume(a1);
}

void sub_100266BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10045B080 != -1)
  {
    sub_100386724();
  }

  v5 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
  {
    v6 = sub_1001F41FC(a3);
    if (*(v6 + 23) >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *v6;
    }

    v8 = nullsub_35(a3);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    buf[0] = 136381187;
    *&buf[1] = v7;
    v17 = 2081;
    v18 = v9;
    v19 = 0;
    v20 = 8;
    v21 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting the relevancy for %{private}s %{private}s to %lld", buf, 0x20u);
  }

  v10 = sub_1001F41FC(a3);
  if (*(v10 + 23) < 0)
  {
    sub_100003228(__p, *v10, *(v10 + 8));
  }

  else
  {
    v11 = *v10;
    v15 = *(v10 + 16);
    *__p = v11;
  }

  v12 = nullsub_35(a3);
  sub_1001181E4(&v13, v12);
}

void sub_100266F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1001A49EC(va);
  _Unwind_Resume(a1);
}

void sub_100266F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a18 == 1)
  {
    a18 = 0;
    if (a20 != 1)
    {
      goto LABEL_3;
    }
  }

  else if (a20 != 1)
  {
LABEL_3:
    if (a22 == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  a20 = 0;
  if (a22 == 1)
  {
LABEL_4:
    a22 = 0;
    if (a25 != 1)
    {
      goto LABEL_10;
    }

LABEL_9:
    a25 = 0;
LABEL_10:
    sub_100118124(&a9);
    if (a16 < 0)
    {
      operator delete(__p);
    }

    _Unwind_Resume(a1);
  }

LABEL_8:
  if (a25 != 1)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_100266FD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3 != a3[1])
  {
    if (qword_10045B080 != -1)
    {
      sub_100386738();
    }

    v5 = qword_10045B088;
    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
    {
      v6 = sub_1001F41FC(v3);
      if (*(v6 + 23) >= 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = *v6;
      }

      v8 = nullsub_35(v3);
      if (*(v8 + 23) >= 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = *v8;
      }

      buf[0] = 136381187;
      *&buf[1] = v7;
      v17 = 2081;
      v18 = v9;
      v19 = 1;
      v20 = 8;
      v21 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting the last_visitied for %{private}s %{private}s to %{private}lld", buf, 0x20u);
    }

    v10 = sub_1001F41FC(v3);
    if (*(v10 + 23) < 0)
    {
      sub_100003228(__p, *v10, *(v10 + 8));
    }

    else
    {
      v11 = *v10;
      v15 = *(v10 + 16);
      *__p = v11;
    }

    v12 = nullsub_35(v3);
    sub_1001181E4(v13, v12);
  }
}

void sub_100267368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_100118124(&a11);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10026741C(uint64_t *a1, uint64_t a2)
{
  sub_100188270("remove_corrupt_tile", a1[1], v4);
  (*(*a1 + 144))(a1, a2);
  sub_10023D49C(v4);
  sub_10023D498(v4);
}

void sub_1002674C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10023D498(va);
  _Unwind_Resume(a1);
}

void sub_100267694(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (!*v1)
  {
    _Unwind_Resume(exception_object);
  }

  *(v1 + 8) = v3;
  operator delete(v3);
  _Unwind_Resume(exception_object);
}

void sub_1002676BC(uint64_t a1, uint64_t a2)
{
  if (qword_10045B080 == -1)
  {
    v4 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_100386724();
    v4 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEFAULT))
    {
LABEL_4:
      sub_1002674DC(a1, a2);
    }
  }

  *buf = 0;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "@TileEvict, prefetchFinishedAllDownloads, evictPrefetchBeyondLimit", buf, 2u);
  goto LABEL_4;
}

void sub_1002679E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1001AFFBC(&a16);
  sub_10002BB1C(v27 - 48);
  _Unwind_Resume(a1);
}

void sub_100267A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
LABEL_3:
      sub_10002BB1C(v27 - 48);
      _Unwind_Resume(a1);
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a22);
  sub_10002BB1C(v27 - 48);
  _Unwind_Resume(a1);
}

uint64_t sub_100267B14(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 40);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    sub_1000ED500((a1 + 8));
    *a1 = 0;
  }

  return a1;
}

void sub_100267BC8(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t *sub_100267C00(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100188234(v2);
    operator delete();
  }

  return a1;
}

void sub_100267C54(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!v2)
  {
    return;
  }

  v4 = v1[1];
  v5 = **a1;
  if (v4 == v2)
  {
    goto LABEL_20;
  }

  do
  {
    while (1)
    {
      if (*(v4 - 16) == 1)
      {
        *(v4 - 16) = 0;
        if (*(v4 - 32) != 1)
        {
LABEL_8:
          if (*(v4 - 56) != 1)
          {
            goto LABEL_9;
          }

          goto LABEL_14;
        }
      }

      else if (*(v4 - 32) != 1)
      {
        goto LABEL_8;
      }

      *(v4 - 32) = 0;
      if (*(v4 - 56) != 1)
      {
LABEL_9:
        if (*(v4 - 80) != 1)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      *(v4 - 56) = 0;
      if (*(v4 - 80) != 1)
      {
LABEL_10:
        v7 = *(v4 - 14);
        if (!v7)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

LABEL_15:
      *(v4 - 80) = 0;
      v7 = *(v4 - 14);
      if (!v7)
      {
        goto LABEL_4;
      }

LABEL_16:
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

LABEL_4:
      v6 = v4 - 18;
      if (*(v4 - 121) < 0)
      {
        break;
      }

      v4 -= 18;
      if (v6 == v2)
      {
        goto LABEL_19;
      }
    }

    operator delete(*v6);
    v4 -= 18;
  }

  while (v6 != v2);
LABEL_19:
  v5 = **a1;
LABEL_20:
  v1[1] = v2;

  operator delete(v5);
}

void sub_100267DBC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 128) == 1)
  {
    *(a2 + 128) = 0;
    if (*(a2 + 112) != 1)
    {
LABEL_3:
      if (*(a2 + 88) != 1)
      {
        goto LABEL_4;
      }

LABEL_12:
      *(a2 + 88) = 0;
      if (*(a2 + 64) != 1)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if (*(a2 + 112) != 1)
  {
    goto LABEL_3;
  }

  *(a2 + 112) = 0;
  if (*(a2 + 88) == 1)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (*(a2 + 64) == 1)
  {
LABEL_5:
    *(a2 + 64) = 0;
  }

LABEL_6:
  v3 = *(a2 + 32);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = a2;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a2 = v4;
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a2 + 23) & 0x80000000) == 0)
  {
    return;
  }

  v5 = *a2;

  operator delete(v5);
}

__n128 sub_100267F40(uint64_t a1, uint64_t a2)
{
  *a2 = off_1004449D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100268060(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12SqliteTileDb18getRssiMapsForMacsERK10LocationIdRKNSt3__16vectorI10MacAddressNS3_9allocatorIS5_EEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12SqliteTileDb18getRssiMapsForMacsERK10LocationIdRKNSt3__16vectorI10MacAddressNS3_9allocatorIS5_EEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12SqliteTileDb18getRssiMapsForMacsERK10LocationIdRKNSt3__16vectorI10MacAddressNS3_9allocatorIS5_EEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12SqliteTileDb18getRssiMapsForMacsERK10LocationIdRKNSt3__16vectorI10MacAddressNS3_9allocatorIS5_EEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_10026814C(uint64_t a1, uint64_t a2)
{
  *a2 = off_100444A60;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100268188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12SqliteTileDb14buildOffsetMapERK10LocationIdE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12SqliteTileDb14buildOffsetMapERK10LocationIdE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12SqliteTileDb14buildOffsetMapERK10LocationIdE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12SqliteTileDb14buildOffsetMapERK10LocationIdE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_10026827C(uint64_t a1, uint64_t a2)
{
  *a2 = off_100444AE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1002682B4(void *a1)
{
  v1 = a1[2];
  v2 = *(a1[1] + 8);
  v3 = a1[3];
  v4 = *(v3 + 24);
  if (v4)
  {
    if (v4 == v3)
    {
      v7 = v6;
      (*(*v4 + 24))(v4, v6);
    }

    else
    {
      v7 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10019C74C(v2, v1, v6);
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

void sub_100268404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100181A50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100268418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12SqliteTileDb14foreachRssiMapERK10LocationIdNSt3__18functionIFbRK10MacAddressRKN10purpleslam9ApRssiMapEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12SqliteTileDb14foreachRssiMapERK10LocationIdNSt3__18functionIFbRK10MacAddressRKN10purpleslam9ApRssiMapEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12SqliteTileDb14foreachRssiMapERK10LocationIdNSt3__18functionIFbRK10MacAddressRKN10purpleslam9ApRssiMapEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12SqliteTileDb14foreachRssiMapERK10LocationIdNSt3__18functionIFbRK10MacAddressRKN10purpleslam9ApRssiMapEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_10026850C(uint64_t a1, uint64_t a2)
{
  *a2 = off_100444B60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_100268DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::runtime_error a23, std::string *a24, uint64_t a25, std::string *a26, char a27, uint64_t a28, std::runtime_error a29, int a30, __int16 a31, char a32, char a33, std::string *a34, uint64_t a35, void *__p, int a37, __int16 a38, int a39, __int16 a40, char a41, char a42, uint64_t a43)
{
  if (a2)
  {
    if (*(v43 - 105) < 0)
    {
      operator delete(*(v43 - 128));
    }

    sub_100118124(&a24);
    sub_100118124(&a28);
    sub_100118124(&a30);
    __cxa_begin_catch(exception_object);
    sub_1000D83A8();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100269964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12SqliteTileDb24metadataPrefetchFinishedENSt3__16chrono10time_pointINS1_12system_clockENS1_8durationIxNS0_5ratioILl1ELl1000000EEEEEEERK14TileIdentifierRKN5boost10filesystem4pathERK17TileStorageLimitsE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12SqliteTileDb24metadataPrefetchFinishedENSt3__16chrono10time_pointINS1_12system_clockENS1_8durationIxNS0_5ratioILl1ELl1000000EEEEEEERK14TileIdentifierRKN5boost10filesystem4pathERK17TileStorageLimitsE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12SqliteTileDb24metadataPrefetchFinishedENSt3__16chrono10time_pointINS1_12system_clockENS1_8durationIxNS0_5ratioILl1ELl1000000EEEEEEERK14TileIdentifierRKN5boost10filesystem4pathERK17TileStorageLimitsE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12SqliteTileDb24metadataPrefetchFinishedENSt3__16chrono10time_pointINS1_12system_clockENS1_8durationIxNS0_5ratioILl1ELl1000000EEEEEEERK14TileIdentifierRKN5boost10filesystem4pathERK17TileStorageLimitsE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1002699DC(std::runtime_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::runtime_error::runtime_error(&v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10.__vftable = &off_100444DB8;
  v11 = off_100444DE0;
  sub_10026A40C(&v16, &v10);
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

  sub_10026A12C();
}

void sub_100269D00(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_100269D28(std::runtime_error *a1)
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

uint64_t sub_100269DC0(uint64_t a1)
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

uint64_t sub_100269EEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZZN12SqliteTileDb24metadataPrefetchFinishedENSt3__16chrono10time_pointINS1_12system_clockENS1_8durationIxNS0_5ratioILl1ELl1000000EEEEEEERK14TileIdentifierRKN5boost10filesystem4pathERK17TileStorageLimitsENK3$_0clESG_ENKUlvE_clEvEUlSG_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZZN12SqliteTileDb24metadataPrefetchFinishedENSt3__16chrono10time_pointINS1_12system_clockENS1_8durationIxNS0_5ratioILl1ELl1000000EEEEEEERK14TileIdentifierRKN5boost10filesystem4pathERK17TileStorageLimitsENK3$_0clESG_ENKUlvE_clEvEUlSG_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZZN12SqliteTileDb24metadataPrefetchFinishedENSt3__16chrono10time_pointINS1_12system_clockENS1_8durationIxNS0_5ratioILl1ELl1000000EEEEEEERK14TileIdentifierRKN5boost10filesystem4pathERK17TileStorageLimitsENK3$_0clESG_ENKUlvE_clEvEUlSG_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZZN12SqliteTileDb24metadataPrefetchFinishedENSt3__16chrono10time_pointINS1_12system_clockENS1_8durationIxNS0_5ratioILl1ELl1000000EEEEEEERK14TileIdentifierRKN5boost10filesystem4pathERK17TileStorageLimitsENK3$_0clESG_ENKUlvE_clEvEUlSG_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_100269F64(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  std::runtime_error::runtime_error(a1, a2)->__vftable = &off_100444E00;
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
  *a1 = &off_100444D18;
  *(a1 + 16) = off_100444D50;
  *(a1 + 56) = &off_100444D88;
  return a1;
}

void sub_10026A098(std::runtime_error *a1)
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

void sub_10026A3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_10026A3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10026A40C(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100444E00;
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
  *a1 = &off_100444D18;
  *(a1 + 16) = off_100444D50;
  *(a1 + 56) = &off_100444D88;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_10026A560(std::runtime_error *a1)
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

void sub_10026A5F4(std::runtime_error *this)
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

void sub_10026A714(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100269F64(exception, a1);
}

void sub_10026A770(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_10026A7F8(std::runtime_error *a1)
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

void sub_10026A928(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100269F64(exception, a1 + v2);
}

void sub_10026A99C(void *a1)
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

void sub_10026AA3C(void *a1)
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

void sub_10026AAF0(std::runtime_error *this)
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

void sub_10026AB90(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_10026AC18(std::runtime_error *a1)
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

void sub_10026ACB4(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_10026ACEC(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100444E00;
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
  *a1 = &off_100444D18;
  *(a1 + 16) = off_100444D50;
  *(a1 + 56) = &off_100444D88;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_10026AE40(std::runtime_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::runtime_error::runtime_error(&v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10.__vftable = &off_100444F58;
  v11 = off_100444F80;
  sub_10026B6CC(&v16, &v10);
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

  sub_10026B3EC();
}

void sub_10026B164(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_10026B18C(std::runtime_error *a1)
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

uint64_t sub_10026B224(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  std::runtime_error::runtime_error(a1, a2)->__vftable = &off_100444FA0;
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
  *a1 = &off_100444EB8;
  *(a1 + 16) = off_100444EF0;
  *(a1 + 56) = &off_100444F28;
  return a1;
}

void sub_10026B358(std::runtime_error *a1)
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

void sub_10026B688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_10026B69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10026B6CC(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100444FA0;
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
  *a1 = &off_100444EB8;
  *(a1 + 16) = off_100444EF0;
  *(a1 + 56) = &off_100444F28;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_10026B820(std::runtime_error *a1)
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

void sub_10026B8B4(std::runtime_error *this)
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

void sub_10026B9D4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10026B224(exception, a1);
}

void sub_10026BA30(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_10026BAB8(std::runtime_error *a1)
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

void sub_10026BBE8(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10026B224(exception, a1 + v2);
}

void sub_10026BC5C(void *a1)
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

void sub_10026BCFC(void *a1)
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

void sub_10026BDB0(std::runtime_error *this)
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

void sub_10026BE50(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_10026BED8(std::runtime_error *a1)
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

void sub_10026BF74(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_10026BFAC(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100444FA0;
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
  *a1 = &off_100444EB8;
  *(a1 + 16) = off_100444EF0;
  *(a1 + 56) = &off_100444F28;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

std::string *sub_10026C100@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10026C134(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026C150@<X0>(uint64_t **a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  result = sub_10026C200(a1, a2);
  if ((result & 1) == 0)
  {
    std::bad_cast::bad_cast(&v3);
    v3.__vftable = &off_100434090;
    sub_100049F88(&v3);
  }

  return result;
}

void sub_10026C1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::bad_cast a10)
{
  std::bad_cast::~bad_cast(&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10026C200(uint64_t **a1, std::string *a2)
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
  v6 = sub_100118404(&v33, a1);
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

void sub_10026C5C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v22 + 1);
  sub_10000D388(a1);
}

__n128 sub_10026C67C(uint64_t a1, uint64_t a2)
{
  *a2 = off_100444FE8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_10026D124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::runtime_error a23, std::string *a24, uint64_t a25, std::string *a26, uint64_t a27, std::runtime_error a28, int a29, __int16 a30, char a31, char a32, std::string *a33, void *__p, int a35, __int16 a36, int a37, __int16 a38, char a39, char a40, uint64_t a41)
{
  if (a2)
  {
    if (*(v41 - 137) < 0)
    {
      operator delete(*(v41 - 160));
    }

    __cxa_begin_catch(a1);
    sub_1000D83A8();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10026DCA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12SqliteTileDb20tilePrefetchFinishedENSt3__16chrono10time_pointINS1_12system_clockENS1_8durationIxNS0_5ratioILl1ELl1000000EEEEEEERK14TileIdentifierxRKN5boost10filesystem4pathERK17TileStorageLimitsE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12SqliteTileDb20tilePrefetchFinishedENSt3__16chrono10time_pointINS1_12system_clockENS1_8durationIxNS0_5ratioILl1ELl1000000EEEEEEERK14TileIdentifierxRKN5boost10filesystem4pathERK17TileStorageLimitsE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12SqliteTileDb20tilePrefetchFinishedENSt3__16chrono10time_pointINS1_12system_clockENS1_8durationIxNS0_5ratioILl1ELl1000000EEEEEEERK14TileIdentifierxRKN5boost10filesystem4pathERK17TileStorageLimitsE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12SqliteTileDb20tilePrefetchFinishedENSt3__16chrono10time_pointINS1_12system_clockENS1_8durationIxNS0_5ratioILl1ELl1000000EEEEEEERK14TileIdentifierxRKN5boost10filesystem4pathERK17TileStorageLimitsE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_10026DDC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZZN12SqliteTileDb20tilePrefetchFinishedENSt3__16chrono10time_pointINS1_12system_clockENS1_8durationIxNS0_5ratioILl1ELl1000000EEEEEEERK14TileIdentifierxRKN5boost10filesystem4pathERK17TileStorageLimitsENK3$_0clESG_ENKUlvE_clEvEUlSG_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZZN12SqliteTileDb20tilePrefetchFinishedENSt3__16chrono10time_pointINS1_12system_clockENS1_8durationIxNS0_5ratioILl1ELl1000000EEEEEEERK14TileIdentifierxRKN5boost10filesystem4pathERK17TileStorageLimitsENK3$_0clESG_ENKUlvE_clEvEUlSG_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZZN12SqliteTileDb20tilePrefetchFinishedENSt3__16chrono10time_pointINS1_12system_clockENS1_8durationIxNS0_5ratioILl1ELl1000000EEEEEEERK14TileIdentifierxRKN5boost10filesystem4pathERK17TileStorageLimitsENK3$_0clESG_ENKUlvE_clEvEUlSG_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZZN12SqliteTileDb20tilePrefetchFinishedENSt3__16chrono10time_pointINS1_12system_clockENS1_8durationIxNS0_5ratioILl1ELl1000000EEEEEEERK14TileIdentifierxRKN5boost10filesystem4pathERK17TileStorageLimitsENK3$_0clESG_ENKUlvE_clEvEUlSG_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_10026DE38(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100003228(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 16) = *(v6 + 2);
        *v4 = v7;
      }

      v8 = *(v6 + 4);
      *(v4 + 24) = *(v6 + 3);
      *(v4 + 32) = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = *(v6 + 40);
      *(v4 + 56) = *(v6 + 14);
      *(v4 + 40) = v9;
      *(v4 + 64) = 0;
      if (*(v6 + 64) == 1)
      {
        *(v4 + 72) = *(v6 + 72);
        *(v4 + 64) = 1;
        *(v4 + 88) = 0;
        if (*(v6 + 88) != 1)
        {
LABEL_11:
          *(v4 + 112) = 0;
          if (*(v6 + 112) != 1)
          {
            goto LABEL_12;
          }

          goto LABEL_16;
        }
      }

      else
      {
        *(v4 + 88) = 0;
        if (*(v6 + 88) != 1)
        {
          goto LABEL_11;
        }
      }

      *(v4 + 96) = v6[6];
      *(v4 + 88) = 1;
      *(v4 + 112) = 0;
      if (*(v6 + 112) != 1)
      {
LABEL_12:
        *(v4 + 128) = 0;
        if (*(v6 + 128) == 1)
        {
          goto LABEL_17;
        }

        goto LABEL_3;
      }

LABEL_16:
      *(v4 + 120) = *(v6 + 15);
      *(v4 + 112) = 1;
      *(v4 + 128) = 0;
      if (*(v6 + 128) == 1)
      {
LABEL_17:
        *(v4 + 136) = *(v6 + 17);
        *(v4 + 128) = 1;
      }

LABEL_3:
      v6 += 9;
      v4 = v11 + 144;
      v11 += 144;
    }

    while (v6 != a3);
  }

  return v4;
}

uint64_t sub_10026DFBC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 144;
        sub_100267DBC(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_10026E024()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10026E094()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void *sub_10026E104(void *a1, uint64_t a2)
{
  *a1 = off_1004450E8;
  a1[1] = sub_100251990(a2);
  return a1;
}

void sub_10026E168()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10026E1D8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void **sub_10026E248(void **a1)
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
        v5 = v3 - 40;
        nullsub_68(v3 - 32);
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

uint64_t sub_10026E2B0(uint64_t result)
{
  *result = 0x7FF8000000000000;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 892857142;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

void sub_10026E2D4(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*a1 <= a3)
  {
    v6 = *a1;
  }

  else
  {
    v6 = a3;
  }

  v7 = v6;
  __p = 0;
  v27 = 0;
  v28 = 0;
  v8 = a1[1];
  v9 = a1[2];
  *&v23 = &__p;
  BYTE8(v23) = 0;
  if (v9 != v8)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1002AE7DC(a2);
  if (__p != v27 && v7 > 0.0)
  {
    v10 = sub_10026E5B8(a1, &__p, v7);
    sub_1002AE7F4(&__p, &v23, v7 * v10);
    v11 = *a2;
    if (*a2)
    {
      v12 = *(a2 + 8);
      v13 = *a2;
      if (v12 != v11)
      {
        do
        {
          v14 = v12 - 40;
          nullsub_68(v12 - 32);
          v12 = v14;
        }

        while (v14 != v11);
        v13 = *a2;
      }

      *(a2 + 8) = v11;
      operator delete(v13);
    }

    *a2 = v23;
    *(a2 + 16) = v24;
    *(a2 + 24) = v25;
  }

  v16 = a1[1];
  v15 = a1[2];
  if (v15 != v16)
  {
    do
    {
      v17 = v15 - 40;
      nullsub_68(v15 - 32);
      v15 = v17;
    }

    while (v17 != v16);
  }

  a1[2] = v16;
  *a1 = a3;
  v18 = *(a2 + 32);
  v19 = __p;
  if (__p)
  {
    v20 = v27;
    v21 = __p;
    if (v27 != __p)
    {
      do
      {
        v22 = v20 - 40;
        nullsub_68(v20 - 32);
        v20 = v22;
      }

      while (v22 != v19);
      v21 = __p;
    }

    v27 = v19;
    operator delete(v21);
  }
}

void sub_10026E520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_10026E248(v23);
  sub_10026E248(&a15);
  _Unwind_Resume(a1);
}

void sub_10026E55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10026E248(va);
  _Unwind_Resume(a1);
}

void sub_10026E584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v10)
  {
    v12 = -v10;
    v13 = v9 - 32;
    do
    {
      v13 = nullsub_68(v13) - 40;
      v12 += 40;
    }

    while (v12);
  }

  sub_10026F228(&a9);
  _Unwind_Resume(a1);
}

double sub_10026E5B8(uint64_t *a1, uint64_t **a2, double a3)
{
  result = 0.0;
  if (a3 != 0.0)
  {
    v5 = *a2;
    v6 = a2[1];
    if (*a2 != v6)
    {
      do
      {
        v19 = *v5;
        sub_10012A31C(v20, (v5 + 1));
        *&v18 = sub_100218048(&v19);
        *(&v18 + 1) = a3;
        sub_1000277F8((a1 + 5), &v18);
        sub_1000462CC(a1 + 4, ((a1[6] - a1[5]) >> 4) - 1);
        nullsub_68(v20);
        v5 += 5;
      }

      while (v5 != v6);
      v9 = a1[5];
      v8 = a1[6];
      if (v9 == v8)
      {
        v11 = 0.0;
      }

      else
      {
        v10 = v8 - v9 - 16;
        if (v10 > 0xF)
        {
          v13 = (v10 >> 4) + 1;
          v12 = v9 + 16 * (v13 & 0x1FFFFFFFFFFFFFFELL);
          v14 = (v9 + 24);
          v11 = 0.0;
          v15 = v13 & 0x1FFFFFFFFFFFFFFELL;
          do
          {
            v16 = *(v14 - 2);
            v17 = *v14;
            v14 += 4;
            v11 = v11 + v16 + v17;
            v15 -= 2;
          }

          while (v15);
          if (v13 == (v13 & 0x1FFFFFFFFFFFFFFELL))
          {
            return a3 / v11;
          }
        }

        else
        {
          v11 = 0.0;
          v12 = a1[5];
        }

        do
        {
          v11 = v11 + *(v12 + 8);
          v12 += 16;
        }

        while (v12 != v8);
      }

      return a3 / v11;
    }
  }

  return result;
}

void sub_10026E71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 32);
  (*(*a3 + 96))(a3);
  sub_1002253B8(a3, &v12);
  sub_1001F969C(a4);
  v14 = v8;
  v9 = *(a1 + 136);
  if (v9 >= *(a1 + 144))
  {
    v10 = sub_10026EEF4((a1 + 128), &v14, v12);
  }

  else
  {
    sub_100217E8C(*(a1 + 136), v8, v12);
    v10 = v9 + 40;
    *(a1 + 136) = v9 + 40;
  }

  *(a1 + 136) = v10;
  *(a1 + 112) = *(a2 + 32);
  v11 = v13;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_10026E848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 136) = v3;
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_10026E860(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10026E874(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(void, uint64_t, uint64_t *, uint64_t, uint64_t), _BYTE *a5, int a6, uint64_t a7, uint64_t a8)
{
  (*(*a3 + 104))(a3);
  sub_100322264(&v30, a2);
  v16 = sub_1002253C0(a3, &v30);
  sub_10026E2D4((a1 + 120), &__p, v16);
  if (a6)
  {
    v29 = 0x3FF0000000000000;
  }

  v17 = *(a2 + 32);
  v18 = *(a7 + 24);
  if (!v18)
  {
    goto LABEL_6;
  }

  if (v18 != a7)
  {
    v18 = (*(*v18 + 16))(v18);
LABEL_6:
    v32 = v18;
    goto LABEL_8;
  }

  v32 = v31;
  (*(*v18 + 24))(v18, v31);
LABEL_8:
  v19 = sub_10026EADC(a1, v17, &__p, a3, a4, a5, v31, a8);
  v21 = v20;
  if (v32 == v31)
  {
    (*(*v32 + 32))(v32, v19);
    *(a1 + 112) = *(a2 + 32);
    v22 = __p;
    if (!__p)
    {
      return v21;
    }

    goto LABEL_14;
  }

  if (v32)
  {
    (*(*v32 + 40))(v19);
  }

  *(a1 + 112) = *(a2 + 32);
  v22 = __p;
  if (__p)
  {
LABEL_14:
    v23 = v28;
    v24 = v22;
    if (v28 != v22)
    {
      do
      {
        v25 = v23 - 40;
        nullsub_68(v23 - 32);
        v23 = v25;
      }

      while (v25 != v22);
      v24 = __p;
    }

    v28 = v22;
    operator delete(v24);
  }

  return v21;
}

void sub_10026EAA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10026E248(va);
  _Unwind_Resume(a1);
}

void sub_10026EABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_1001D3E18(va1);
  sub_10026E248(va);
  _Unwind_Resume(a1);
}

__n128 sub_10026EADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (***a5)(void, uint64_t, uint64_t *, uint64_t, uint64_t), _BYTE *a6, uint64_t a7, uint64_t a8)
{
  result.n128_u64[0] = *(a3 + 32);
  if (result.n128_f64[0] != 0.0 && sub_1001F82BC(a5))
  {
    sub_10022536C(a4, a3);
    if (*a3 == *(a3 + 8))
    {
      sub_1003846E0(&v25, v19);
      sub_10003F5D0(&v25);
    }

    sub_1002258B8(a4, a2, v19);
    if (!sub_10025B310(v19))
    {
      *&v25.__r_.__value_.__l.__data_ = 0uLL;
      v17 = *(a7 + 24);
      if (v17)
      {
        if (v17 == a7)
        {
          v24 = v23;
          (*(*v17 + 24))(v17, v23);
LABEL_10:
          sub_100229A40(a6, a2, &v25, v23, a5, a8);
          if (v24 == v23)
          {
            (*(*v24 + 32))(v24);
          }

          else if (v24)
          {
            (*(*v24 + 40))();
          }

          size = v25.__r_.__value_.__l.__size_;
          if (v25.__r_.__value_.__l.__size_ && !atomic_fetch_add((v25.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (size->__on_zero_shared)(size);
            std::__shared_weak_count::__release_weak(size);
          }

          v22 = 0;
          LOBYTE(__p) = 0;
          memset(&v25, 0, sizeof(v25));
          std::string::assign(&v25, "Need the following code here: pfilter->updateHeadingNonuniformTimestep(headingMotion, currentUpdateWalkingState);");
          sub_1000E661C(&__p, &v25, 1);
          if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25.__r_.__value_.__l.__data_);
          }

          if (v22 < 0)
          {
            operator delete(__p);
          }

          sub_10003F5D0(&v20);
        }

        v17 = (*(*v17 + 16))(v17);
      }

      v24 = v17;
      goto LABEL_10;
    }

    sub_1001F96EC(a5, a3);
    if (*(a1 + 64) == 1)
    {
      result.n128_u64[0] = *(a3 + 32);
      if (result.n128_f64[0] > *(a1 + 104))
      {
        if (a1 + 72 != a3)
        {
          sub_10026F2A4((a1 + 72), *a3, *(a3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 3));
        }

        result = *(a3 + 24);
        *(a1 + 96) = result;
      }
    }

    else
    {
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      sub_10026F108(a1 + 72, *a3, *(a3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 3));
      result = *(a3 + 24);
      *(a1 + 96) = result;
      *(a1 + 64) = 1;
    }
  }

  return result;
}

void sub_10026EE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (*(v22 - 73) < 0)
  {
    operator delete(*(v22 - 96));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_10026EEB4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = v1 + 1;
  if (v1 != v2 && v3 != v2)
  {
    v5 = *v1;
    v6 = v1 + 1;
    do
    {
      v7 = *v6++;
      v8 = v7;
      if (v5 < v7)
      {
        v5 = v8;
        v1 = v3;
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  return *v1;
}

uint64_t sub_10026EEF4(void **a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    sub_10000FC84();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_10000D444();
  }

  v13 = (8 * ((a1[1] - *a1) >> 3));
  sub_100217E8C(v13, *a2, a3);
  v7 = 40 * v3 + 40;
  v14 = v7;
  v8 = *a1;
  v9 = a1[1];
  v10 = v13 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = 0;
    do
    {
      *&v10[v11] = *&v8[v11];
      sub_10012A31C(&v10[v11 + 8], &v8[v11 + 8]);
      v11 += 40;
    }

    while (&v8[v11] != v9);
    do
    {
      nullsub_68(v8 + 8);
      v8 += 40;
    }

    while (v8 != v9);
    v8 = *a1;
    v7 = v14;
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

void sub_10026F06C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10026F0B0(va);
  _Unwind_Resume(a1);
}

void sub_10026F080(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    v5 = -v2;
    v6 = v3 - 32;
    do
    {
      v6 = nullsub_68(v6) - 40;
      v5 += 40;
    }

    while (v5);
  }

  sub_10026F0B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10026F0B0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    nullsub_68(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10026F108(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      operator new();
    }

    sub_10000FC84();
  }
}

void sub_10026F1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v11)
  {
    v14 = -v11;
    v15 = v12 - 32;
    do
    {
      v15 = nullsub_68(v15) - 40;
      v14 += 40;
    }

    while (v14);
  }

  *(v9 + 8) = v10;
  sub_10026F228(&a9);
  _Unwind_Resume(a1);
}

void ***sub_10026F228(void ***result)
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
          v6 = v4 - 40;
          nullsub_68(v4 - 32);
          v4 = v6;
        }

        while (v6 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_10026F2A4(char **a1, void *a2, void *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = v10 - 40;
          nullsub_68(v10 - 32);
          v10 = v12;
        }

        while (v12 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x666666666666666)
    {
      v13 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v14 = 2 * v13;
      if (2 * v13 <= a4)
      {
        v14 = a4;
      }

      if (v13 >= 0x333333333333333)
      {
        v15 = 0x666666666666666;
      }

      else
      {
        v15 = v14;
      }

      if (v15 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v16 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v16 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v23 = a2;
      v24 = *a1;
      do
      {
        v25 = *v23;
        v23 += 5;
        *v24 = v25;
        v24 += 40;
        sub_10012A358((v8 + 8), (v5 + 1));
        v8 = v24;
        v5 = v23;
      }

      while (v23 != a3);
      v16 = a1[1];
      v8 = v24;
    }

    for (; v16 != v8; v16 -= 40)
    {
      nullsub_68(v16 - 32);
    }

    a1[1] = v8;
  }

  else
  {
    v17 = (a2 + v16 - v8);
    if (v16 != v8)
    {
      v18 = a2;
      v19 = *a1;
      do
      {
        v20 = *v18;
        v18 += 5;
        *v19 = v20;
        v19 += 40;
        sub_10012A358((v8 + 8), (v5 + 1));
        v8 = v19;
        v5 = v18;
      }

      while (v18 != v17);
      v16 = a1[1];
    }

    v21 = v16;
    if (v17 != a3)
    {
      v22 = 0;
      do
      {
        *&v16[v22 * 8] = v17[v22];
        sub_10012A31C(&v16[v22 * 8 + 8], &v17[v22 + 1]);
        v22 += 5;
      }

      while (&v17[v22] != a3);
      v21 = &v16[v22 * 8];
    }

    a1[1] = v21;
  }
}

void sub_10026F548(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    v6 = -v3;
    v7 = v4 - 32;
    do
    {
      v7 = nullsub_68(v7) - 40;
      v6 += 40;
    }

    while (v6);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_10026F574()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10026F5E4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void *sub_10026F654(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t *sub_10026F678@<X0>(uint64_t *result@<X0>, void *a2@<X1>, int a3@<W2>, unsigned __int8 *a4@<X3>, unsigned __int8 *a5@<X4>, unsigned __int8 *a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *result;
  *v19 = result[1];
  *&v19[7] = *(result + 15);
  v11 = *(result + 23);
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  v12 = *a4;
  if (v12 == 1)
  {
    v18 = *(a4 + 8);
    v13 = *a5;
    if (v13 != 1)
    {
LABEL_3:
      v14 = *a6;
      if (v14 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v13 = *a5;
    if (v13 != 1)
    {
      goto LABEL_3;
    }
  }

  v17 = *(a5 + 8);
  v14 = *a6;
  if (v14 != 1)
  {
LABEL_4:
    v15 = *a7;
    if (v15 != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  v8 = *(a6 + 1);
  v15 = *a7;
  if (v15 == 1)
  {
LABEL_5:
    v9 = *(a7 + 1);
  }

LABEL_6:
  *a8 = v10;
  *(a8 + 8) = *v19;
  *(a8 + 15) = *&v19[7];
  *(a8 + 23) = v11;
  v16 = a2[1];
  *(a8 + 24) = *a2;
  *(a8 + 32) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(a8 + 40) = 0;
  *(a8 + 56) = a3;
  *(a8 + 64) = 0;
  if (v12)
  {
    *(a8 + 72) = v18;
    *(a8 + 64) = 1;
    *(a8 + 88) = 0;
    if (!v13)
    {
LABEL_10:
      *(a8 + 112) = 0;
      if (!v14)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else
  {
    *(a8 + 88) = 0;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  *(a8 + 96) = v17;
  *(a8 + 88) = 1;
  *(a8 + 112) = 0;
  if (!v14)
  {
LABEL_11:
    *(a8 + 128) = 0;
    if (!v15)
    {
      return result;
    }

LABEL_20:
    *(a8 + 136) = v9;
    *(a8 + 128) = 1;
    return result;
  }

LABEL_19:
  *(a8 + 120) = v8;
  *(a8 + 112) = 1;
  *(a8 + 128) = 0;
  if (v15)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10026F808(uint64_t result, uint64_t a2, uint64_t *a3, void *a4, int a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8)
{
  v9 = *a3;
  *v17 = a3[1];
  *&v17[7] = *(a3 + 15);
  v10 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v11 = *a6;
  if (v11 == 1)
  {
    v16 = *(a6 + 8);
    v12 = *a7;
    if (v12 != 1)
    {
LABEL_3:
      v13 = *a8;
      if (v13 != 1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v12 = *a7;
    if (v12 != 1)
    {
      goto LABEL_3;
    }
  }

  v15 = *(a7 + 8);
  v13 = *a8;
  if (v13 == 1)
  {
LABEL_4:
    v8 = *(a8 + 1);
  }

LABEL_5:
  *result = v9;
  *(result + 8) = *v17;
  *(result + 15) = *&v17[7];
  *(result + 23) = v10;
  v14 = a4[1];
  *(result + 24) = *a4;
  *(result + 32) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 40) = 1;
  *(result + 48) = a2;
  *(result + 56) = a5;
  *(result + 64) = 0;
  if (!v11)
  {
    *(result + 88) = 0;
    if (!v12)
    {
      goto LABEL_9;
    }

LABEL_16:
    *(result + 96) = v15;
    *(result + 88) = 1;
    *(result + 112) = 0;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *(result + 72) = v16;
  *(result + 64) = 1;
  *(result + 88) = 0;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_9:
  *(result + 112) = 0;
  if (v13)
  {
LABEL_10:
    *(result + 120) = v8;
    *(result + 112) = 1;
  }

LABEL_11:
  *(result + 128) = 0;
  return result;
}

uint64_t sub_10026F950(uint64_t result, uint64_t a2, uint64_t *a3, void *a4, int a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8, unsigned __int8 *a9)
{
  v11 = *a3;
  *v21 = a3[1];
  *&v21[7] = *(a3 + 15);
  v12 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v13 = *a6;
  if (v13 == 1)
  {
    v20 = *(a6 + 8);
    v14 = a9;
    v15 = *a7;
    if (v15 != 1)
    {
LABEL_3:
      v16 = *a8;
      if (v16 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v14 = a9;
    v15 = *a7;
    if (v15 != 1)
    {
      goto LABEL_3;
    }
  }

  v19 = *(a7 + 8);
  v16 = *a8;
  if (v16 != 1)
  {
LABEL_4:
    v17 = *v14;
    if (v17 != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  v9 = *(a8 + 1);
  v17 = *v14;
  if (v17 == 1)
  {
LABEL_5:
    v10 = *(v14 + 1);
  }

LABEL_6:
  *result = v11;
  *(result + 8) = *v21;
  *(result + 15) = *&v21[7];
  *(result + 23) = v12;
  v18 = a4[1];
  *(result + 24) = *a4;
  *(result + 32) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 40) = 1;
  *(result + 48) = a2;
  *(result + 56) = a5;
  *(result + 64) = 0;
  if (v13)
  {
    *(result + 72) = v20;
    *(result + 64) = 1;
    *(result + 88) = 0;
    if (!v15)
    {
LABEL_10:
      *(result + 112) = 0;
      if (!v16)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else
  {
    *(result + 88) = 0;
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  *(result + 96) = v19;
  *(result + 88) = 1;
  *(result + 112) = 0;
  if (!v16)
  {
LABEL_11:
    *(result + 128) = 0;
    if (!v17)
    {
      return result;
    }

LABEL_20:
    *(result + 136) = v10;
    *(result + 128) = 1;
    return result;
  }

LABEL_19:
  *(result + 120) = v9;
  *(result + 112) = 1;
  *(result + 128) = 0;
  if (v17)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10026FAF8(uint64_t a1)
{
  if (*(a1 + 64) != 1)
  {
    return 0;
  }

  v1 = *(a1 + 72);
  return 1;
}

uint64_t sub_10026FB18@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 64) == 1)
  {
    *(a2 + 8) = *(result + 80);
    *a2 = 1;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10026FB40(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    return 0;
  }

  v1 = *(a1 + 96);
  return 1;
}

uint64_t sub_10026FB60@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 88) == 1)
  {
    *(a2 + 8) = *(result + 104);
    *a2 = 1;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10026FB98@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 88);
  if (*(result + 64) == 1)
  {
    v3 = *(result + 80);
    if (*(result + 88))
    {
      if (v3 <= *(result + 104))
      {
        v3 = *(result + 104);
      }
    }

    *(a2 + 8) = v3;
    *a2 = 1;
  }

  else if (*(result + 88))
  {
    *(a2 + 8) = *(result + 104);
    *a2 = 1;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10026FBEC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  if (*(result + 128) == 1)
  {
    *(a2 + 8) = *(result + 136);
    *a2 = 1;
  }

  return result;
}

void sub_10026FC10()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10026FC80()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10026FCF0(uint64_t result, int a2)
{
  *result = off_100445118;
  *(result + 8) = a2;
  return result;
}

void sub_10026FD14(int a1)
{
  switch(a1)
  {
    case 0:
      operator new();
    case 1:
    case 3:
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v2, "Localizer type not ported");
      std::runtime_error::runtime_error(&v8, &v2);
      v8.__vftable = &off_100444338;
      sub_10010A984(v7);
    case 2:
    case 10:
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v2, "Localizer type deleted to simplify life.");
      std::runtime_error::runtime_error(&v8, &v2);
      v8.__vftable = &off_100444338;
      sub_10010A984(v6);
    case 4:
    case 5:
    case 7:
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v2, "Localizer type not ported");
      std::runtime_error::runtime_error(&v8, &v2);
      v8.__vftable = &off_100444338;
      sub_10010A984(v5);
    case 6:
      operator new();
    case 8:
      operator new();
    case 9:
      operator new();
    case 11:
    case 12:
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v2, "Localizer type not ported");
      std::runtime_error::runtime_error(&v8, &v2);
      v8.__vftable = &off_100444338;
      sub_10010A984(v3);
    case 13:

      sub_1000B9E3C();
    case 14:
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v2, "make_shared<specs::MultiphonePdrNoMag>()");
      std::runtime_error::runtime_error(&v8, &v2);
      v8.__vftable = &off_100444338;
      sub_10010A984(v4);
    case 15:

      sub_1000C010C();
    default:
      __cxa_allocate_exception(0x40uLL);
      std::logic_error::logic_error(&v8, "Unrecognized localizer type");
      sub_10010A984(v1);
  }
}