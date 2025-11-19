std::string *sub_1001E921C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1001E9250(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1001E926C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1001E92A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double *sub_1001E92BC(uint64_t *a1, uint64_t a2, uint64_t a3, double *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x333333333333333)
  {
    sub_10000FC84();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v7 = 0x333333333333333;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 <= 0x333333333333333)
    {
      operator new();
    }

    sub_10000D444();
  }

  v15 = (16 * ((a1[1] - *a1) >> 4));
  v8 = sub_100217148(v15, *a4, a4[1]);
  v9 = *(a3 + 32);
  *(v8 + 1) = *(a3 + 16);
  *(v8 + 2) = v9;
  *(v8 + 48) = *(a3 + 48);
  *(v8 + 49) = 0;
  v10 = *(a3 + 64);
  v8[7] = *(a3 + 56);
  *(v8 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v8[9] = *(a3 + 72);
  v11 = a1[1];
  v12 = v15 + *a1 - v11;
  sub_1001E9438(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  a1[1] = (v15 + 10);
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v15 + 10;
}

void sub_1001E9424(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001E95F0(va);
  _Unwind_Resume(a1);
}

void sub_1001E9438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      sub_100217150(v4, v7);
      v8 = *(v7 + 16);
      v9 = *(v7 + 32);
      *(v4 + 48) = *(v7 + 48);
      *(v4 + 16) = v8;
      *(v4 + 32) = v9;
      v10 = *(v7 + 64);
      *(v4 + 56) = *(v7 + 56);
      *(v4 + 64) = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      *(v4 + 72) = *(v7 + 72);
      v7 += 80;
      v4 = v12 + 80;
      v12 += 80;
    }

    while (v7 != a3);
    for (; v6 != a3; v6 += 80)
    {
      v11 = *(v6 + 64);
      if (v11)
      {
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }
}

uint64_t sub_1001E95F0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    v4 = *(i - 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001E9698()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001E9708()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1001E9778(uint64_t a1, uint64_t *a2)
{
  sub_1002156A4(&v8, 1.0);
  *a1 = off_1004428E8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_100217150((a1 + 32), &v8);
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  sub_1002C6250(a1 + 120);
  *(a1 + 120) = 0;
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 104);
  *(a1 + 96) = v5;
  *(a1 + 104) = v4;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

void sub_1001E9888(_Unwind_Exception *a1)
{
  sub_10002BB1C(v1 + 96);
  if (*(v1 + 64) == 1)
  {
    *(v1 + 64) = 0;
    if (*(v1 + 48) != 1)
    {
LABEL_3:
      sub_1001E4D4C(v2);
      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 + 48) != 1)
  {
    goto LABEL_3;
  }

  *(v1 + 48) = 0;
  sub_1001E4D4C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E98F4(uint64_t a1)
{
  *a1 = off_1004428E8;
  v2 = *(a1 + 104);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (*(a1 + 64) != 1)
    {
LABEL_4:
      if (*(a1 + 48) != 1)
      {
        goto LABEL_5;
      }

LABEL_9:
      *(a1 + 48) = 0;
      v3 = *(a1 + 8);
      if (!v3)
      {
        return a1;
      }

      goto LABEL_10;
    }
  }

  else if (*(a1 + 64) != 1)
  {
    goto LABEL_4;
  }

  *(a1 + 64) = 0;
  if (*(a1 + 48) == 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v3 = *(a1 + 8);
  if (!v3)
  {
    return a1;
  }

LABEL_10:
  v5 = *(a1 + 16);
  v6 = v3;
  if (v5 != v3)
  {
    do
    {
      v7 = *(v5 - 2);
      if (v7)
      {
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      v5 -= 80;
    }

    while (v5 != v3);
    v6 = *(a1 + 8);
  }

  *(a1 + 16) = v3;
  operator delete(v6);
  return a1;
}

uint64_t sub_1001E9A6C(uint64_t a1, uint64_t a2)
{
  result = sub_1001E9B08(a1, a2);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16) - v4;
  if (v5)
  {
    v6 = v5 >> 4;
    v7 = 0xCCCCCCCCCCCCCCCDLL * v6;
    v8 = 0xCCCCCCCCCCCCCCCDLL * v6 > 1;
    if (0xCCCCCCCCCCCCCCCDLL * v6 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * v6;
    }

    if (!v8)
    {
      v10 = 0;
LABEL_10:
      v13 = v9 - v10;
      v14 = (v4 + 80 * v10 + 49);
      do
      {
        *v14 = 1;
        v14 += 80;
        --v13;
      }

      while (v13);
      return result;
    }

    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v11 = (v4 + 129);
    v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v11 - 80) = 1;
      *v11 = 1;
      v11 += 160;
      v12 -= 2;
    }

    while (v12);
    if (v7 != v10)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_1001E9B08(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1001EC44C((a1 + 8), *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 4));
  }

  sub_100217150((a1 + 32), (a2 + 32));
  v4 = *(a2 + 48);
  if (*(a1 + 48) == 1)
  {
    if (*(a2 + 48))
    {
      *(a1 + 56) = *(a2 + 56);
      v5 = *(a2 + 64);
      if (*(a1 + 64) != 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v5 = *(a2 + 64);
      if (*(a1 + 64) != 1)
      {
        goto LABEL_14;
      }
    }

LABEL_10:
    if (v5)
    {
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      v7 = *(a2 + 96);
      v6 = *(a2 + 104);
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 80) = *(a2 + 80);
      v7 = *(a2 + 96);
      v6 = *(a2 + 104);
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_17;
  }

  if (*(a2 + 48))
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 48) = 1;
  }

  v5 = *(a2 + 64);
  if (*(a1 + 64) == 1)
  {
    goto LABEL_10;
  }

LABEL_14:
  if (v5)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 64) = 1;
  }

  *(a1 + 80) = *(a2 + 80);
  v7 = *(a2 + 96);
  v6 = *(a2 + 104);
  if (v6)
  {
LABEL_17:
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_18:
  v8 = *(a1 + 104);
  *(a1 + 96) = v7;
  *(a1 + 104) = v6;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

void sub_1001E9C90(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i -= 80)
  {
    v4 = *(i - 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  *(a1 + 16) = v2;
  *(a1 + 120) = 0;
}

long double sub_1001E9D30(uint64_t a1)
{
  v1 = (a1 + 8);
  if (*(a1 + 8) == *(a1 + 16))
  {
    return 1.0;
  }

  v2 = sub_10021569C(a1 + 32);
  sub_100215554(v1, v5);
  v3 = sub_10021569C(v5);
  return 1.0 / (exp(-(v2 - v3)) + 1.0);
}

void sub_1001E9DBC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (sub_100214EC0((a1 + 8), (a1 + 32), -INFINITY))
  {
    v6 = a4[7];
    sub_1002100C8(a2, a4, &__p);
    v8[10] = 0;
    operator new();
  }

  sub_1000474A4(v9, "");
  sub_1001ECC2C("BEFORE WIFI: ", &v10);
  sub_100383AA4(&v10, v8, v9);
  sub_10003F5D0(v8);
}

void sub_1001EA1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EA274(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 120);
  *(a1 + 120) = 0;
  v4 = *(a2 + 24);
  if (!v4)
  {
    sub_1000DB498();
  }

  (*(*v4 + 48))(__p);
  v6 = *(a1 + 8);
  if (*(a1 + 16) != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      sub_10021569C(v6 + v7);
      v9 = *(__p[0] + v8);
      sub_10021715C((v6 + v7), v9);
      if (v9 != -INFINITY)
      {
        *(a1 + 120) = 1;
      }

      sub_10021569C(v6 + v7);
      ++v8;
      v6 = *(a1 + 8);
      v7 += 80;
    }

    while (v8 < 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - v6) >> 4));
  }

  v10 = *(a2 + 56);
  if (!v10)
  {
    sub_1000DB498();
  }

  v13 = (*(*v10 + 48))(v10);
  sub_10021715C((a1 + 32), v13);
  sub_10021569C(a1 + 32);
  if (v3 != *(a1 + 120))
  {
    if (qword_10045B050 != -1)
    {
      sub_100385AE0();
    }

    v11 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 120);
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "After receiveWifi, hasFeasibleParticles changed to '%d'", buf, 8u);
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1001EA6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (!a16)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_1001EA818(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  if (*(a1 + 8) != *(a1 + 16))
  {
    v5 = sub_10017226C(a2);
    v6 = sub_1002330A0(v2);
    if (!v5 || v6)
    {
      v7 = *(a1 + 96);
      if (!v7)
      {
        sub_1000474A4(buf, "");
        sub_1001EDAE0("Params not populated", &v52);
        sub_100383AA4(&v52, v47, buf);
        sub_1000BA6B0(v47);
      }

      if (sub_100251408(v7))
      {
        sub_1000BFDB0(v2, &v49);
        v8 = (*(*v49 + 40))(v49);
        v9 = *v8;
        v10 = *(v8 + 8);
        v47[7] = *v8;
        v48 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = (*(*v9 + 80))(v9);
        if (v11 > 100.0)
        {
          if (qword_10045B050 != -1)
          {
            sub_100385AE0();
          }

          v12 = qword_10045B058;
          if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            *&buf[4] = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "WARNING: GPS fusion accuracy threshold seems too high - low quality GPS measurements could get fused! Threshold value = %f", buf, 0xCu);
          }
        }

        v13 = sqrt(*(a2 + 136) * *(a2 + 136) + *(a2 + 128) * *(a2 + 128)) * 0.408163265;
        if ((~*(a2 + 192) & 0x1800) != 0)
        {
          v13 = 0.0;
        }

        v14 = v13 <= 0.0;
        if (v13 <= 0.0)
        {
          v13 = *(a2 + 96);
        }

        v15 = *(a2 + 96) * 1.73241161;
        if (v14)
        {
          v16 = *(a2 + 96) * 1.73241161;
        }

        else
        {
          v16 = *(a2 + 128);
        }

        if (v14)
        {
          v17 = *(a2 + 96) * 1.73241161;
        }

        else
        {
          v17 = *(a2 + 136);
        }

        if (v13 < v11 || !v5)
        {
          v19 = (*(*v9 + 96))(v9);
          sub_1002D3DA4(v47, v19);
          v20 = sub_1000BF8B8(v47, v16);
          v21 = sub_1000BF8B8(v47, v17);
          v22 = (*(*v9 + 104))(v9);
          sub_1002D3DA4(v46, v22);
          sub_1000BF8B8(v46, *(a2 + 144));
          v23 = *(a1 + 96);
          if (v5)
          {
            v24 = sub_1002513B0(v23);
          }

          else
          {
            v24 = sub_100251460(v23);
          }

          v25 = v24;
          if (v20 <= v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = v20;
          }

          if (v21 <= v25)
          {
            v21 = v25;
          }

          v27 = log(v26);
          v28 = log(v21);
          v29 = sub_1002513DC(*(a1 + 96));
          v30 = (-1.83787707 - v27 - v28 - v29 * v29) * 0.5;
          __p = 0u;
          v44 = 0u;
          v45 = 1065353216;
          v31 = *(a1 + 8);
          if (*(a1 + 16) != v31)
          {
            v32 = 0;
            v33 = 0;
            do
            {
              v42 = *(v31 + v32 + 56);
              *buf = &v42;
              v34 = sub_1001EDB9C(&__p, &v42);
              *buf = *v2 + v32;
              sub_10003ABD8((v34 + 3), buf);
              ++v33;
              v31 = *(a1 + 8);
              v32 += 80;
            }

            while (v33 < 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - v31) >> 4));
            if (v44)
            {
              v35 = (*(**(v44 + 16) + 56))(*(v44 + 16));
              sub_10011B8B8(v41, v35);
              sub_1000B9540(v41);
            }
          }

          sub_10021715C((a1 + 32), v30);
          v36 = v44;
          if (v44)
          {
            do
            {
              v39 = *v36;
              v40 = v36[3];
              if (v40)
              {
                v36[4] = v40;
                operator delete(v40);
              }

              operator delete(v36);
              v36 = v39;
            }

            while (v39);
          }

          v37 = __p;
          *&__p = 0;
          if (v37)
          {
            operator delete(v37);
          }

          sub_1002D3E48(v46);
          sub_1002D3E48(v47);
          v10 = v48;
        }

        if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        v38 = v50;
        if (v50)
        {
          if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v38->__on_zero_shared)(v38);
            std::__shared_weak_count::__release_weak(v38);
          }
        }
      }
    }
  }
}

void sub_1001EAF4C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x85F]) < 0)
  {
    operator delete(STACK[0x848]);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1001EAFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10011B04C(va);
  sub_1001EDB30(&STACK[0x7E0]);
  sub_1002D3E48(&STACK[0x810]);
  sub_1002D3E48(&STACK[0x848]);
  sub_10002BB1C(&STACK[0x880]);
  sub_10002BB1C(v6 - 256);
  _Unwind_Resume(a1);
}

void sub_1001EB020(_Unwind_Exception *a1)
{
  sub_1001EDB30(&STACK[0x7E0]);
  sub_1002D3E48(&STACK[0x810]);
  sub_1002D3E48(&STACK[0x848]);
  sub_10002BB1C(&STACK[0x880]);
  sub_10002BB1C(v1 - 256);
  _Unwind_Resume(a1);
}

void sub_1001EB028(uint64_t a1, ...)
{
  va_start(va, a1);
  nullsub_76(va);
  JUMPOUT(0x1001EB034);
}

BOOL sub_1001EB084(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 == v6)
  {
    v8 = -INFINITY;
    v7 = INFINITY;
    v10 = *(a2 + 24);
  }

  else
  {
    v7 = INFINITY;
    v8 = -INFINITY;
    do
    {
      v9 = sub_1002AE860(v5, a2, a3);
      a3.n128_f64[0] = sub_10021715C(v5, v9);
      if (v8 < v9)
      {
        v8 = v9;
      }

      if (v9 < v7)
      {
        v7 = v9;
      }

      v5 += 10;
    }

    while (v5 != v6);
    v10 = *(a2 + 24);
  }

  sub_10021715C((a1 + 32), v10);
  sub_10021569C(a1 + 32);
  return v7 < v8;
}

void sub_1001EB1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001EB1E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_10025B310(a2);
  if ((result & 1) == 0)
  {
    v9 = *(a1 + 8);
    for (i = *(a1 + 16); v9 != i; v9 += 80)
    {
      result = (*(*a3 + 24))(a3, v9, a2, a4);
    }
  }

  return result;
}

uint64_t sub_1001EB278(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  for (i = *(result + 16); v3 != i; v3 += 80)
  {
    result = (*(*a2 + 16))(a2, v3, a3);
  }

  return result;
}

BOOL sub_1001EB2EC(uint64_t a1, uint64_t a2, float *a3)
{
  if (*(a1 + 120) != 1)
  {
    return 0;
  }

  *(a1 + 124) = 0;
  v6 = *(a2 + 16) - *(a1 + 112);
  v21 = (a3[7] * v6) / 1000000000.0;
  if (v21 > 0.0)
  {
    sub_1000474A4(v23, "");
    sub_1001EDF78("Deweight amount is not negative or zero:  ", &v25);
    sub_1000DE42C(&v21, &v26);
    sub_1000E661C(v23, &v25, 2);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_18:
        if ((v24 & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

LABEL_22:
        operator delete(v23[0]);
LABEL_19:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v25.__r_.__value_.__l.__data_);
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  v7 = sub_100214E74((a1 + 8), 0);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8 != v9)
  {
    v10 = v6 & ~(v6 >> 63);
    v11 = 0.0;
    while (1)
    {
      v14 = (*(*a3 + 16))(a3, v8, a2, v10);
      if (sub_10021569C(v8) == -INFINITY || (v14 & 1) != 0)
      {
        goto LABEL_7;
      }

      if ((v14 & 0x100) != 0)
      {
        ++*(a1 + 124);
        if (*(v8 + 72) / 1000000000.0 <= a3[6])
        {
          goto LABEL_7;
        }

        v18 = sub_10021569C(v8);
        v19 = exp(v18 - v7);
        v20 = sub_10021569C(v8);
        v13 = exp(v20 + v21 - v7);
        v17 = v21;
        v16 = v19 - v13;
      }

      else
      {
        v15 = sub_10021569C(v8);
        v16 = exp(v15 - v7);
        v17 = -INFINITY;
      }

      sub_10021715C(v8, v17);
      v11 = v11 + v16;
LABEL_7:
      v8 += 80;
      if (v8 == v9)
      {
        goto LABEL_15;
      }
    }
  }

  v11 = 0.0;
LABEL_15:
  *(a1 + 112) = *(a2 + 16);
  return sub_1001EB60C(a1, v7, v11);
}

void sub_1001EB5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001EB60C(uint64_t a1, double a2, double a3)
{
  if (a3 != 0.0)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v4 == v5)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 0.0;
      do
      {
        v9 = sub_10021569C(v4);
        v8 = v8 + exp(v9 - a2);
        v4 += 80;
      }

      while (v4 != v5);
      if (v8 != 0.0 && v8 + a3 != 0.0)
      {
        v10 = log(v8 / (v8 + a3));
        sub_10021715C((a1 + 32), v10);
        sub_10021569C(a1 + 32);
        return a3 != 0.0;
      }
    }

    if (qword_10045B050 != -1)
    {
      sub_100385B08();
    }

    v11 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v14 = a3;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "WARNING: Cannot modify off map weight after deweighting particles due to walls/bounds.  removedOnMapLikelihood: %f, onMapLikelihoodAfterRemoval: %f", buf, 0x16u);
    }
  }

  return a3 != 0.0;
}

void sub_1001EB7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EB804(__n128 *a1, uint64_t a2, uint64_t a3)
{
  if (a1[7].n128_u8[8] == 1)
  {
    v4 = &a1->n128_i64[1];
    if (a1->n128_u64[1] == a1[1].n128_u64[0])
    {
      sub_100385A9C();
      sub_10003F5D0(&__p);
    }

    v5 = (*(a1->n128_u64[0] + 16))(a1, a2, a3);
    sub_100215554(v4, v11);
    v6 = log(1.0 - v5);
    v7 = a1->n128_u64[1];
    v8 = a1[1].n128_u64[0];
    if (v7 != v8)
    {
      v9 = v6;
      do
      {
        sub_10021715C(v7, v9);
        v7 += 10;
      }

      while (v7 != v8);
    }

    v10 = log(v5);
    sub_10021715C(v11, v10);
    sub_1002170B0(v11, a1[2].n128_f64, &v13);
    sub_100217150(a1 + 2, &v13);
    sub_10021569C(&a1[2]);
  }
}

void sub_1001EB9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001EB9F8(uint64_t a1, void *a2)
{
  v4 = sub_100214E74((a1 + 8), 0);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  for (i = 0.0; v5 != v6; v5 += 80)
  {
    v8 = (*(**(v5 + 56) + 64))(*(v5 + 56));
    if (!sub_1001EDFC8(a2, v8))
    {
      v9 = sub_10021569C(v5);
      i = i + exp(v9 - v4);
      sub_10021715C(v5, -INFINITY);
    }
  }

  return sub_1001EB60C(a1, v4, i);
}

BOOL sub_1001EBAE0(uint64_t a1)
{
  result = sub_100214F08((a1 + 8), (a1 + 32));
  *(a1 + 120) &= result;
  return result;
}

void sub_1001EBB18(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, double **a4@<X3>, uint64_t a5@<X8>)
{
  if (qword_10045B050 != -1)
  {
    sub_100385B08();
  }

  v9 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "resampleTo, numParticles=%zu", &buf, 0xCu);
  }

  v10 = (a1 + 8);
  v30 = *(a1 + 8);
  v31 = a2;
  v29 = *(a1 + 16);
  sub_1001EBFB4(v30, v29);
  v11 = *(a1 + 16);
  v12 = *(a1 + 8);
  v13 = v11 - v12;
  v14 = 0xCCCCCCCCCCCCCCCDLL * (v11 - v12);
  if (v11 != v12)
  {
    v15 = 0;
    if (v14 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - *v10) >> 4);
    }

    do
    {
      v17 = (*(*a3 + 88))(a3, v14);
      sub_1001EE0EC(*v10 + v15, *v10 + v15 + 80 * v17);
      v15 += 80;
      --v14;
      --v16;
    }

    while (v16);
    v12 = *(a1 + 8);
    v11 = *(a1 + 16);
    v13 = v11 - v12;
    v14 = 0xCCCCCCCCCCCCCCCDLL * (v11 - v12);
  }

  if (v13 < 1)
  {
    v22 = 0;
    v18 = 0;
  }

  else
  {
    v18 = v14;
    while (1)
    {
      v19 = operator new(80 * v18, &std::nothrow);
      if (v19)
      {
        break;
      }

      v20 = v18 >> 1;
      v21 = v18 > 1;
      v18 >>= 1;
      if (!v21)
      {
        v22 = 0;
        v18 = v20;
        goto LABEL_18;
      }
    }

    v22 = v19;
  }

LABEL_18:
  sub_1001EE2B0(v12, v11, &buf, v14, v22, v18);
  if (v22)
  {
    operator delete(v22);
  }

  if (*a4)
  {
    if (qword_10045B050 != -1)
    {
      sub_100385AE0();
    }

    v23 = qword_10045B058;
    v24 = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG);
    v25 = *a4;
    if (v24)
    {
      sub_1001EC0F8(a1, v25, (a1 + 32), &buf);
      if (v34 >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      *v35 = 136315138;
      v36 = p_buf;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Best particle is %s the reference injection weight, offmap weight", v35, 0xCu);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(buf);
      }

      v25 = *a4;
    }
  }

  else
  {
    v25 = 0;
  }

  sub_10021532C((a1 + 8), v25, a1 + 32);
  v27 = *a4;
  (*(*a3 + 32))(a3);
  sub_100215EB0((a1 + 8), v27, v31, &buf);
  if (buf)
  {
    sub_1001EBFB4(*(a1 + 8), *(a1 + 16));
    if ((v29 - v30) < *(a1 + 16) - *(a1 + 8))
    {
      if (qword_10045B050 != -1)
      {
        sub_100385AE0();
      }

      v28 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "New particles were injected. If you were not isFeasible before, you certainly are now.", v35, 2u);
      }

      *(a1 + 120) = 1;
    }

    *a5 = 0;
    if (buf == 1)
    {
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      if (v34 != *(&buf + 1))
      {
        if (((v34 - *(&buf + 1)) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_10000FC84();
      }

      *a5 = 1;
      if (*(&buf + 1))
      {
        v34 = *(&buf + 1);
        operator delete(*(&buf + 1));
      }
    }
  }

  else
  {
    *a5 = 0;
  }
}

void sub_1001EBF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *__p, uint64_t a17)
{
  if (a15 == 1)
  {
    if (__p)
    {
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EBFB4(double *a1, double *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      sub_10021716C(v3);
      v3 += 10;
    }

    while (v3 != a2);
  }
}

void sub_1001EC0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EC0F8(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 8);
  if (v7 == v6)
  {
    *(a4 + 23) = 3;
    *a4 = 4271950;
    return;
  }

  for (i = v7 + 10; i != v6; i += 10)
  {
    v11 = sub_10021716C(v7);
    if (v11 < sub_10021716C(i))
    {
      v7 = i;
    }
  }

  v12 = sub_10021716C(v7);
  v13 = sub_10021716C(a2);
  v14 = exp(v12 - v13);
  v15 = sub_10021716C(a3);
  __p[0] = *&v14;
  sub_1000C2398(v31, "%1%");
  v16 = sub_1001ECA10(v31, __p);
  sub_1000C15C8(v16, &v27);
  sub_1000C1894(v31);
  v17 = std::string::append(&v27, "x, ");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v30 = exp(v12 - v15);
  sub_1000C2398(v31, "%1%");
  v19 = sub_1001ECA10(v31, &v30);
  sub_1000C15C8(v19, __p);
  sub_1000C1894(v31);
  if ((v26 & 0x80u) == 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v21 = v26;
  }

  else
  {
    v21 = __p[1];
  }

  v22 = std::string::append(&v28, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v29, "x");
  *a4 = *v24;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((v26 & 0x80000000) == 0)
    {
LABEL_14:
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  else if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v27.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(v28.__r_.__value_.__l.__data_);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_1001EC384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      if (a26 < 0)
      {
LABEL_8:
        operator delete(a21);
        if ((a20 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        operator delete(a15);
LABEL_12:
        _Unwind_Resume(a1);
      }

LABEL_10:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  if (a26 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

void sub_1001EC438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000C1894(va);
  _Unwind_Resume(a1);
}

void sub_1001EC44C(void **a1, __n128 *a2, __n128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 4) < a4)
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
          v12 = v10[-1].n128_u64[0];
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 5;
        }

        while (v10 != v8);
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

    if (a4 <= 0x333333333333333)
    {
      v25 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
      v26 = 2 * v25;
      if (2 * v25 <= a4)
      {
        v26 = a4;
      }

      if (v25 >= 0x199999999999999)
      {
        v27 = 0x333333333333333;
      }

      else
      {
        v27 = v26;
      }

      if (v27 <= 0x333333333333333)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v13 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * (v13 - v8) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_100217150(v8, v5);
        v20 = v5[1];
        v21 = v5[2];
        v8[3].n128_u16[0] = v5[3].n128_u16[0];
        v8[1] = v20;
        v8[2] = v21;
        v23 = v5[3].n128_u64[1];
        v22 = v5[4].n128_u64[0];
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        v24 = v8[4].n128_u64[0];
        v8[3].n128_u64[1] = v23;
        v8[4].n128_u64[0] = v22;
        if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v24->__on_zero_shared)(v24);
          std::__shared_weak_count::__release_weak(v24);
        }

        v8[4].n128_u64[1] = v5[4].n128_u64[1];
        v5 += 5;
        v8 += 5;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    for (; v13 != v8; v13 -= 5)
    {
      v33 = v13[-1].n128_u64[0];
      if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v14 = a2 + v13 - v8;
    if (v13 != v8)
    {
      do
      {
        sub_100217150(v8, v5);
        v15 = v5[1];
        v16 = v5[2];
        v8[3].n128_u16[0] = v5[3].n128_u16[0];
        v8[1] = v15;
        v8[2] = v16;
        v18 = v5[3].n128_u64[1];
        v17 = v5[4].n128_u64[0];
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        }

        v19 = v8[4].n128_u64[0];
        v8[3].n128_u64[1] = v18;
        v8[4].n128_u64[0] = v17;
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v8[4].n128_u64[1] = v5[4].n128_u64[1];
        v5 += 5;
        v8 += 5;
      }

      while (v5 != v14);
      v13 = a1[1];
    }

    v34 = v13;
    v28 = v13;
    if (v14 != a3)
    {
      v28 = v13;
      do
      {
        sub_100217150(v28, v14);
        v30 = *(v14 + 16);
        v31 = *(v14 + 32);
        *(v29 + 48) = *(v14 + 48);
        *(v29 + 16) = v30;
        *(v29 + 32) = v31;
        *(v29 + 56) = *(v14 + 56);
        v32 = *(v14 + 64);
        *(v29 + 64) = v32;
        if (v32)
        {
          atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
        }

        *(v29 + 72) = *(v14 + 72);
        v14 += 80;
        v28 = v34 + 5;
        v34 += 5;
      }

      while (v14 != a3);
    }

    a1[1] = v28;
  }
}

void sub_1001EC8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100182230(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1001EC8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100182230(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_1001EC8EC(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 56);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 24);
    if (v4 != a1)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return a1;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 24);
  if (v4 == a1)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

uint64_t sub_1001ECA10(uint64_t a1, uint64_t a2)
{
  v17[0] = a2;
  v17[1] = nullsub_143;
  v17[2] = sub_1001ECB98;
  if (*(a1 + 60) == 1)
  {
    v4 = *a1;
    v3 = *(a1 + 8);
    if (v3 != *a1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (!*(a1 + 32) || (v7 = *(v4 + v5), (v7 & 0x80000000) != 0) || ((*(*(a1 + 24) + ((v7 >> 3) & 0x1FFFFFF8)) >> v7) & 1) == 0)
        {
          std::string::resize((v4 + v5 + 8), 0, 0);
          v4 = *a1;
          v3 = *(a1 + 8);
        }

        ++v6;
        v5 += 120;
      }

      while (v6 < 0xEEEEEEEEEEEEEEEFLL * ((v3 - v4) >> 3));
    }

    *(a1 + 52) = 0;
    *(a1 + 60) = 0;
    if (*(a1 + 32))
    {
      v8 = *(a1 + 56);
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = *(a1 + 24);
        do
        {
          if (((*(v10 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            break;
          }

          *(a1 + 52) = ++v9;
        }

        while (v8 != v9);
      }
    }
  }

  sub_1000C5364(a1, v17);
  v11 = *(a1 + 52);
  v12 = v11 + 1;
  *(a1 + 52) = v11 + 1;
  if (*(a1 + 32))
  {
    v13 = *(a1 + 56);
    if (v12 < v13)
    {
      v14 = *(a1 + 24);
      v15 = v11 + 2;
      do
      {
        if (((*(v14 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          break;
        }

        ++v12;
        *(a1 + 52) = v15++;
      }

      while (v13 != v12);
    }
  }

  return a1;
}

uint64_t sub_1001ECBA0(uint64_t a1)
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

std::string *sub_1001ECC2C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1001ECC60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1001ECCF8(uint64_t a1, uint64_t a2)
{
  *a2 = off_100442970;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001ECD40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN14ParticleFilter15wifiMeasurementERK25PriorProbabilitiesContextRK17WifiMapLikelihoodRK30WifiLikelihoodMeasurementEventE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN14ParticleFilter15wifiMeasurementERK25PriorProbabilitiesContextRK17WifiMapLikelihoodRK30WifiLikelihoodMeasurementEventE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN14ParticleFilter15wifiMeasurementERK25PriorProbabilitiesContextRK17WifiMapLikelihoodRK30WifiLikelihoodMeasurementEventE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN14ParticleFilter15wifiMeasurementERK25PriorProbabilitiesContextRK17WifiMapLikelihoodRK30WifiLikelihoodMeasurementEventE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_1001ECE34(uint64_t a1, uint64_t a2)
{
  *a2 = off_100442A00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001ECE7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN14ParticleFilter15wifiMeasurementERK25PriorProbabilitiesContextRK17WifiMapLikelihoodRK30WifiLikelihoodMeasurementEventE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN14ParticleFilter15wifiMeasurementERK25PriorProbabilitiesContextRK17WifiMapLikelihoodRK30WifiLikelihoodMeasurementEventE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN14ParticleFilter15wifiMeasurementERK25PriorProbabilitiesContextRK17WifiMapLikelihoodRK30WifiLikelihoodMeasurementEventE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN14ParticleFilter15wifiMeasurementERK25PriorProbabilitiesContextRK17WifiMapLikelihoodRK30WifiLikelihoodMeasurementEventE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1001ECF68(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10003BEA8(("PN10purpleslam20tag_unexpected_valueE" & 0x7FFFFFFFFFFFFFFFLL), &v12);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4.__i_ = &v12;
  }

  else
  {
    v4.__i_ = v12.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v12, v4, 91);
  v13 = v12;
  memset(&v12, 0, sizeof(v12));
  v5 = std::string::append(&v13, "] = ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_1001ED1AC((a1 + 8), &__p);
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

  v9 = std::string::append(&v14, p_p, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v15, 10);
  *a2 = v15;
  memset(&v15, 0, sizeof(v15));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  else if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_18:
    operator delete(v12.__r_.__value_.__l.__data_);
    return;
  }

LABEL_17:
  operator delete(v13.__r_.__value_.__l.__data_);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_18;
  }
}

void sub_1001ED0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
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

  operator delete(__p);
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

void sub_1001ED1AC(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  *(&v16.__r_.__value_.__s + 23) = 1;
  LOWORD(v16.__r_.__value_.__l.__data_) = 40;
  sub_1001ED438(a1);
  if ((v15 & 0x80u) == 0)
  {
    v4 = v14;
  }

  else
  {
    v4 = v14[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v5 = v15;
  }

  else
  {
    v5 = v14[1];
  }

  v6 = std::string::append(&v16, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v17, 44);
  v18 = v17;
  memset(&v17, 0, sizeof(v17));
  sub_1001ED438(a1 + 1);
  if ((v13 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v18, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v19, 41);
  *a2 = v19;
  memset(&v19, 0, sizeof(v19));
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v18.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v17.__r_.__value_.__l.__data_);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(v16.__r_.__value_.__l.__data_);
    return;
  }

LABEL_22:
  operator delete(v14[0]);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }
}

void sub_1001ED34C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v33 - 73) & 0x80000000) == 0)
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

  operator delete(__p);
  if ((*(v33 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(v33 - 96));
  if ((a33 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a28);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a16);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1001ED438(uint64_t *a1)
{
  sub_10003BFA8(&v4);
  v2 = *a1;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  std::locale::~locale(v6);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1001ED588(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_1001ED828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001ED9E4(va);
  _Unwind_Resume(a1);
}

void sub_1001ED83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1001ED9E4(va1);
  _Unwind_Resume(a1);
}

void sub_1001ED958(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1001ED99C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1001ED9E4(uint64_t result)
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

std::string *sub_1001EDA90@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1001EDAC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1001EDAE0@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1001EDB14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001EDB30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        v2[4] = v6;
        operator delete(v6);
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

void *sub_1001EDB9C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
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
        if (v10[2] == v2)
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

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_1001EDEFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001EDF10(va);
  _Unwind_Resume(a1);
}

void **sub_1001EDF10(void **a1)
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
        v2[4] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

std::string *sub_1001EDF78@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1001EDFAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void ***sub_1001EDFC8(void *a1, uint64_t ***a2)
{
  v4 = sub_1001183C0(&v15, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v5 - 1;
      while (1)
      {
        v12 = v10[1];
        if (v6 == v12)
        {
          if (sub_1001182C8(v10 + 2, a2))
          {
            return v10;
          }
        }

        else if ((v12 & v11) != v8)
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

    do
    {
      v13 = v10[1];
      if (v6 == v13)
      {
        if (sub_1001182C8(v10 + 2, a2))
        {
          return v10;
        }
      }

      else
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

void sub_1001EE0EC(uint64_t a1, uint64_t a2)
{
  sub_100217150(&v13, a1);
  v4 = *(a1 + 32);
  v14 = *(a1 + 16);
  v15 = v4;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v18 = *(a1 + 72);
  sub_100217150(a1, a2);
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  v7 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v8 = *(a1 + 64);
  *(a1 + 56) = v7;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  *(a1 + 72) = *(a2 + 72);
  sub_100217150(a2, &v13);
  v9 = v15;
  *(a2 + 16) = v14;
  *(a2 + 32) = v9;
  *(a2 + 48) = v16;
  v10 = v17;
  v17 = 0uLL;
  v11 = *(a2 + 64);
  *(a2 + 56) = v10;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(&v17 + 1);
  *(a2 + 72) = v18;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_1001EE2B0(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = &a2[-5];
      v8 = sub_10021569C(&a2[-5]);
      if (v8 < sub_10021569C(a1))
      {

        sub_1001EE0EC(a1, v7);
      }
    }

    else if (a4 <= 0)
    {

      sub_1001EE53C(a1, a2);
    }

    else
    {
      v10 = a4 >> 1;
      v11 = &a1[5 * (a4 >> 1)];
      if (a4 <= a6)
      {
        sub_1001EE7C4(a1, &a1[5 * (a4 >> 1)], a3, a4 >> 1, a5);
        v19 = a4 - v10;
        v20 = a5 + 80 * v10;
        sub_1001EE7C4(v11, a2, a3, v19, v20);
        sub_1001EEA50(a5, v20, v20, a5 + 80 * a4, a1);
        if (a5)
        {
          v21 = 0;
          v22 = (a5 + 64);
          do
          {
            v23 = *v22;
            if (*v22 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v23->__on_zero_shared)(v23);
              std::__shared_weak_count::__release_weak(v23);
            }

            ++v21;
            v22 += 10;
          }

          while (v21 < a4);
        }
      }

      else
      {
        sub_1001EE2B0(a1, &a1[5 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v16 = a4 - v10;
        sub_1001EE2B0(v11, a2, a3, v16, a5, a6);

        sub_1001EEDC8(a1, v11, a2, a3, v10, v16, a5, a6);
      }
    }
  }
}

void sub_1001EE528(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EE53C(__n128 *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    v4 = &a1[5];
    if (&a1[5] != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v4;
        v8 = sub_10021569C(v4);
        if (v8 < sub_10021569C(v6))
        {
          sub_100217150(&v23, v7);
          v9 = *(v6 + 112);
          v24 = *(v6 + 96);
          v25 = v9;
          v26 = *(v6 + 128);
          v27 = *(v6 + 136);
          *(v6 + 136) = 0;
          *(v6 + 144) = 0;
          v10 = v5;
          v28 = *(v6 + 152);
          while (1)
          {
            v11 = a1 + v10;
            sub_100217150((a1 + v10 + 80), (a1 + v10));
            v12 = *(&a1[2] + v10);
            *(v11 + 6) = *(v11 + 1);
            *(v11 + 7) = v12;
            *(v11 + 64) = *(v11 + 24);
            v13 = *(&a1[3] + v10 + 8);
            *(v11 + 7) = 0;
            *(v11 + 8) = 0;
            v14 = *(a1[9].n128_u64 + v10);
            *(v11 + 136) = v13;
            if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v14->__on_zero_shared)(v14);
              std::__shared_weak_count::__release_weak(v14);
            }

            v15 = a1 + v10;
            *(&a1[9].n128_u64[1] + v10) = *(&a1[4].n128_u64[1] + v10);
            if (!v10)
            {
              break;
            }

            v16 = sub_10021569C(&v23);
            v10 -= 80;
            if (v16 >= sub_10021569C((v15 - 80)))
            {
              v17 = (a1 + v10 + 80);
              goto LABEL_14;
            }
          }

          v17 = a1;
LABEL_14:
          sub_100217150(v17, &v23);
          v18 = v24;
          v19 = v25;
          *(v15 + 24) = v26;
          *(v15 + 1) = v18;
          *(v15 + 2) = v19;
          v20 = v27;
          v27 = 0uLL;
          *(v15 + 7) = v20;
          v21 = v17[4].n128_u64[0];
          v17[4].n128_u64[0] = *(&v20 + 1);
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v21->__on_zero_shared)(v21);
            std::__shared_weak_count::__release_weak(v21);
            v22 = *(&v27 + 1);
            v17[4].n128_u64[1] = v28;
            if (v22)
            {
LABEL_17:
              if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v22->__on_zero_shared)(v22);
                std::__shared_weak_count::__release_weak(v22);
              }
            }
          }

          else
          {
            v22 = *(&v27 + 1);
            v17[4].n128_u64[1] = v28;
            if (v22)
            {
              goto LABEL_17;
            }
          }
        }

        v4 = &v7[5];
        v5 += 80;
        v6 = v7;
      }

      while (&v7[5] != a2);
    }
  }
}

void sub_1001EE7C4(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v10 = a2 - 5;
      v11 = sub_10021569C(&a2[-5]);
      if (v11 >= sub_10021569C(a1))
      {
        sub_100217150(a5, a1);
        v22 = *(a1 + 16);
        v23 = *(a1 + 32);
        *(a5 + 48) = *(a1 + 48);
        *(a5 + 16) = v22;
        *(a5 + 32) = v23;
        *(a5 + 56) = *(a1 + 56);
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        *(a5 + 72) = *(a1 + 72);
        sub_100217150((a5 + 80), v10);
        v24 = a2[-4];
        v25 = a2[-3];
        *(a5 + 128) = a2[-2].n128_u16[0];
        *(a5 + 96) = v24;
        *(a5 + 112) = v25;
        *(a5 + 136) = *(a2 - 24);
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        v16 = &a2[-1].n128_u64[1];
      }

      else
      {
        sub_100217150(a5, v10);
        v12 = a2[-4];
        v13 = a2[-3];
        *(a5 + 48) = a2[-2].n128_u16[0];
        *(a5 + 16) = v12;
        *(a5 + 32) = v13;
        *(a5 + 56) = *(a2 - 24);
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        *(a5 + 72) = a2[-1].n128_u64[1];
        sub_100217150((a5 + 80), a1);
        v14 = *(a1 + 16);
        v15 = *(a1 + 32);
        *(a5 + 128) = *(a1 + 48);
        *(a5 + 96) = v14;
        *(a5 + 112) = v15;
        *(a5 + 136) = *(a1 + 56);
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        v16 = (a1 + 72);
      }

      *(a5 + 152) = *v16;
    }

    else if (a4 == 1)
    {
      sub_100217150(a5, a1);
      v7 = *(a1 + 16);
      v8 = *(a1 + 32);
      *(a5 + 48) = *(a1 + 48);
      *(a5 + 16) = v7;
      *(a5 + 32) = v8;
      *(a5 + 56) = *(a1 + 56);
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a5 + 72) = *(a1 + 72);
    }

    else if (a4 > 8)
    {
      v17 = a4 >> 1;
      v18 = 80 * (a4 >> 1);
      sub_1001EE2B0(a1, v18 + a1, a3, v17, a5, v17);
      sub_1001EE2B0(v18 + a1, a2, a3, a4 - v17, a5 + v18, a4 - v17);

      sub_1001EF4FC(a1, v18 + a1, v18 + a1, a2, a5);
    }

    else
    {

      sub_1001EF1EC(a1, a2, a5);
    }
  }
}

void sub_1001EEA3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EEA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a2)
  {
LABEL_14:
    while (a3 != a4)
    {
      sub_100217150(a5, a3);
      v19 = *(a3 + 16);
      v20 = *(a3 + 32);
      *(a5 + 48) = *(a3 + 48);
      *(a5 + 16) = v19;
      *(a5 + 32) = v20;
      v21 = *(a3 + 56);
      *(a3 + 56) = 0;
      *(a3 + 64) = 0;
      v22 = *(a5 + 64);
      *(a5 + 56) = v21;
      if (v22)
      {
        if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }
      }

      *(a5 + 72) = *(a3 + 72);
      a3 += 80;
      a5 += 80;
    }
  }

  else
  {
    v9 = a1;
    while (a3 != a4)
    {
      v10 = sub_10021569C(a3);
      if (v10 >= sub_10021569C(v9))
      {
        sub_100217150(a5, v9);
        v15 = *(v9 + 16);
        v16 = *(v9 + 32);
        *(a5 + 48) = *(v9 + 48);
        *(a5 + 16) = v15;
        *(a5 + 32) = v16;
        v17 = *(v9 + 56);
        *(v9 + 56) = 0;
        *(v9 + 64) = 0;
        v18 = *(a5 + 64);
        *(a5 + 56) = v17;
        if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        *(a5 + 72) = *(v9 + 72);
        v9 += 80;
        a5 += 80;
        if (v9 == a2)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_100217150(a5, a3);
        v11 = *(a3 + 16);
        v12 = *(a3 + 32);
        *(a5 + 48) = *(a3 + 48);
        *(a5 + 16) = v11;
        *(a5 + 32) = v12;
        v13 = *(a3 + 56);
        *(a3 + 56) = 0;
        *(a3 + 64) = 0;
        v14 = *(a5 + 64);
        *(a5 + 56) = v13;
        if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        *(a5 + 72) = *(a3 + 72);
        a3 += 80;
        a5 += 80;
        if (v9 == a2)
        {
          goto LABEL_14;
        }
      }
    }

    for (; v9 != a2; a5 += 80)
    {
      sub_100217150(a5, v9);
      v23 = *(v9 + 16);
      v24 = *(v9 + 32);
      *(a5 + 48) = *(v9 + 48);
      *(a5 + 16) = v23;
      *(a5 + 32) = v24;
      v25 = *(v9 + 56);
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      v26 = *(a5 + 64);
      *(a5 + 56) = v25;
      if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }

      *(a5 + 72) = *(v9 + 72);
      v9 += 80;
    }
  }
}

uint64_t *sub_1001EED10(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 64);
      do
      {
        v6 = *v5;
        if (*v5 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        ++v4;
        v5 += 10;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

void sub_1001EEDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a6;
  if (!a6)
  {
    return;
  }

  while (v49 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return;
    }

    v13 = 0;
    v14 = -a5;
    while (1)
    {
      v15 = a1 + v13;
      v16 = sub_10021569C(a2);
      if (v16 < sub_10021569C(a1 + v13))
      {
        break;
      }

      v13 += 80;
      if (__CFADD__(v14++, 1))
      {
        return;
      }
    }

    v18 = -v14;
    v19 = v49;
    v45 = a8;
    v46 = a3;
    if (-v14 >= v49)
    {
      if (v14 == -1)
      {

        sub_1001EE0EC(a1 + v13, a2);
        return;
      }

      v25 = v18 / 2;
      v22 = a1 + 80 * (v18 / 2) + v13;
      v27 = a3;
      v21 = a2;
      if (a2 != v27)
      {
        v42 = v25;
        v28 = 0xCCCCCCCCCCCCCCCDLL * ((v46 - a2) >> 4);
        v21 = a2;
        do
        {
          v29 = v21 + 80 * (v28 >> 1);
          v30 = sub_10021569C(v29);
          v31 = sub_10021569C(v22);
          if (v30 >= v31)
          {
            v28 >>= 1;
          }

          else
          {
            v28 += ~(v28 >> 1);
          }

          if (v30 < v31)
          {
            v21 = v29 + 80;
          }
        }

        while (v28);
        v19 = v49;
        v25 = v42;
      }

      v20 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - a2) >> 4);
      v26 = v21;
      if (a2 != v22)
      {
LABEL_31:
        v26 = v22;
        if (a2 != v21)
        {
          v43 = v25;
          v44 = v20;
          sub_1001EE0EC(v22, a2);
          v26 = v22 + 80;
          for (i = a2 + 80; i != v21; i += 80)
          {
            if (v26 == a2)
            {
              a2 = i;
            }

            sub_1001EE0EC(v26, i);
            v26 += 80;
          }

          if (v26 != a2)
          {
            v33 = v26;
            v34 = a2;
            while (1)
            {
              sub_1001EE0EC(v33, v34);
              v34 += 80;
              v35 = v33 + 80 == a2;
              if (v34 == v21)
              {
                if (v33 + 80 == a2)
                {
                  break;
                }

                v34 = a2 + 80;
                v33 += 160;
                while (1)
                {
                  sub_1001EE0EC(v33 - 80, a2);
                  v35 = v33 == a2;
                  if (v34 != v21)
                  {
                    break;
                  }

                  v36 = v33 == a2;
                  v33 += 80;
                  if (v36)
                  {
                    goto LABEL_48;
                  }
                }
              }

              else
              {
                v33 += 80;
              }

              if (v35)
              {
                a2 = v34;
              }
            }
          }

LABEL_48:
          v19 = v49;
          v25 = v43;
          v20 = v44;
        }
      }
    }

    else
    {
      v20 = v49 / 2;
      v21 = a2 + 80 * (v49 / 2);
      v22 = a2;
      if (a2 - a1 != v13)
      {
        v23 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1 - v13) >> 4);
        v22 = a1 + v13;
        do
        {
          v24 = sub_10021569C(v21);
          if (v24 < sub_10021569C(v22 + 80 * (v23 >> 1)))
          {
            v23 >>= 1;
          }

          else
          {
            v22 += 80 * (v23 >> 1) + 80;
            v23 += ~(v23 >> 1);
          }
        }

        while (v23);
        v19 = v49;
        v20 = v49 / 2;
      }

      v25 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - a1 - v13) >> 4);
      v26 = a2 + 80 * (v49 / 2);
      if (a2 != v22)
      {
        goto LABEL_31;
      }
    }

    a5 = -v14 - v25;
    v37 = v19 - v20;
    if (v25 + v20 >= v19 - (v25 + v20) - v14)
    {
      v39 = v25;
      v40 = -v14 - v25;
      v41 = v20;
      sub_1001EEDC8(v26, v21, v46, a4, v40, v19 - v20, a7, v45);
      a2 = v22;
      a8 = v45;
      a5 = v39;
      a3 = v26;
      v49 = v41;
      a1 = v15;
      if (!v41)
      {
        return;
      }
    }

    else
    {
      v38 = v22;
      a8 = v45;
      sub_1001EEDC8(a1 + v13, v38, v26, a4, v25, v20, a7, v45);
      a2 = v21;
      a3 = v46;
      v49 = v37;
      a1 = v26;
      if (!v37)
      {
        return;
      }
    }
  }

  sub_1001EF71C(a1, a2, a3, a4, a5, v49, a7);
}

void sub_1001EF1EC(__n128 *a1, __n128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    sub_100217150(a3, a1);
    v6 = v5[1];
    v7 = v5[2];
    *(a3 + 48) = v5[3].n128_u16[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v7;
    *(a3 + 56) = *(v5 + 56);
    v5[3].n128_u64[1] = 0;
    v5[4].n128_u64[0] = 0;
    *(a3 + 72) = v5[4].n128_u64[1];
    v28 = 1;
    v8 = &v5[5];
    if (&v5[5] != a2)
    {
      v9 = 0;
      v10 = a3;
      do
      {
        while (1)
        {
          v11 = v8;
          v12 = sub_10021569C(v8);
          v13 = v10 + 80;
          if (v12 < sub_10021569C(v10))
          {
            break;
          }

          sub_100217150((v10 + 80), v11);
          v22 = v5[6];
          v23 = v5[7];
          *(v10 + 128) = v5[8].n128_u16[0];
          *(v10 + 96) = v22;
          *(v10 + 112) = v23;
          *(v10 + 136) = *(v5 + 136);
          v5[8].n128_u64[1] = 0;
          v5[9].n128_u64[0] = 0;
          *(v10 + 152) = v5[9].n128_u64[1];
          ++v28;
          v8 = &v11[5];
          v9 += 80;
          v10 += 80;
          v5 = v11;
          if (&v11[5] == a2)
          {
            return;
          }
        }

        sub_100217150((v10 + 80), v10);
        v14 = *(v10 + 32);
        *(v10 + 96) = *(v10 + 16);
        *(v10 + 112) = v14;
        *(v10 + 128) = *(v10 + 48);
        *(v10 + 136) = *(v10 + 56);
        *(v10 + 152) = *(v10 + 72);
        ++v28;
        v15 = a3;
        *(v10 + 56) = 0;
        *(v10 + 64) = 0;
        if (v10 != a3)
        {
          v16 = v9;
          do
          {
            v17 = sub_10021569C(v11);
            if (v17 >= sub_10021569C(a3 + v16 - 80))
            {
              v15 = a3 + v16;
              goto LABEL_17;
            }

            sub_100217150((a3 + v16), (a3 + v16 - 80));
            v18 = a3 + v16;
            v19 = *(a3 + v16 - 48);
            *(v18 + 16) = *(a3 + v16 - 64);
            *(v18 + 32) = v19;
            *(v18 + 48) = *(a3 + v16 - 32);
            v20 = *(a3 + v16 - 24);
            *(v18 - 24) = 0;
            *(v18 - 16) = 0;
            v21 = *(a3 + v16 + 64);
            *(v18 + 56) = v20;
            if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v21->__on_zero_shared)(v21);
              std::__shared_weak_count::__release_weak(v21);
            }

            *(v18 + 72) = *(v18 - 8);
            v16 -= 80;
          }

          while (v16);
          v15 = a3;
        }

LABEL_17:
        sub_100217150(v15, v11);
        v24 = v5[6];
        v25 = v5[7];
        *(v15 + 48) = v5[8].n128_u16[0];
        *(v15 + 16) = v24;
        *(v15 + 32) = v25;
        v26 = *(&v5[8] + 8);
        v5[8].n128_u64[1] = 0;
        v5[9].n128_u64[0] = 0;
        v27 = *(v15 + 64);
        *(v15 + 56) = v26;
        if (v27)
        {
          if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v27->__on_zero_shared)(v27);
            std::__shared_weak_count::__release_weak(v27);
          }
        }

        *(v15 + 72) = v5[9].n128_u64[1];
        v8 = &v11[5];
        v9 += 80;
        v10 = v13;
        v5 = v11;
      }

      while (&v11[5] != a2);
    }
  }
}

void sub_1001EF4C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF4D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF4E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = 0;
  if (a1 == a2)
  {
LABEL_2:
    if (a3 != a4)
    {
      v8 = 0;
      do
      {
        v9 = a3 + v8;
        sub_100217150((a5 + v8), (a3 + v8));
        v10 = *(a3 + v8 + 16);
        v11 = *(a3 + v8 + 32);
        *(v12 + 48) = *(a3 + v8 + 48);
        *(v12 + 16) = v10;
        *(v12 + 32) = v11;
        *(v12 + 56) = *(a3 + v8 + 56);
        *(v9 + 56) = 0;
        *(v9 + 64) = 0;
        *(v12 + 72) = *(a3 + v8 + 72);
        ++v25;
        v8 += 80;
      }

      while (a3 + v8 != a4);
    }
  }

  else
  {
    v14 = a1;
    while (a3 != a4)
    {
      v17 = sub_10021569C(a3);
      if (v17 >= sub_10021569C(v14))
      {
        sub_100217150(a5, v14);
        v15 = *(v14 + 16);
        v16 = *(v14 + 32);
        *(a5 + 48) = *(v14 + 48);
        *(a5 + 16) = v15;
        *(a5 + 32) = v16;
        *(a5 + 56) = *(v14 + 56);
        *(v14 + 56) = 0;
        *(v14 + 64) = 0;
        *(a5 + 72) = *(v14 + 72);
        ++v25;
        v14 += 80;
        a5 += 80;
        if (v14 == a2)
        {
          goto LABEL_2;
        }
      }

      else
      {
        sub_100217150(a5, a3);
        v18 = *(a3 + 16);
        v19 = *(a3 + 32);
        *(a5 + 48) = *(a3 + 48);
        *(a5 + 16) = v18;
        *(a5 + 32) = v19;
        *(a5 + 56) = *(a3 + 56);
        *(a3 + 56) = 0;
        *(a3 + 64) = 0;
        *(a5 + 72) = *(a3 + 72);
        ++v25;
        a3 += 80;
        a5 += 80;
        if (v14 == a2)
        {
          goto LABEL_2;
        }
      }
    }

    if (v14 != a2)
    {
      v20 = 0;
      do
      {
        v21 = v14 + v20;
        sub_100217150((a5 + v20), (v14 + v20));
        v22 = *(v14 + v20 + 16);
        v23 = *(v14 + v20 + 32);
        *(v24 + 48) = *(v14 + v20 + 48);
        *(v24 + 16) = v22;
        *(v24 + 32) = v23;
        *(v24 + 56) = *(v14 + v20 + 56);
        *(v21 + 56) = 0;
        *(v21 + 64) = 0;
        *(v24 + 72) = *(v14 + v20 + 72);
        ++v25;
        v20 += 80;
      }

      while (v14 + v20 != a2);
    }
  }
}

void sub_1001EF6E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF6F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF708(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v27 = 0;
  if (a5 > a6)
  {
    v11 = a7;
    if (a2 != a3)
    {
      v12 = 0;
      do
      {
        v13 = a2 + v12;
        sub_100217150((v7 + v12), (a2 + v12));
        v14 = *(a2 + v12 + 16);
        v15 = *(a2 + v12 + 32);
        *(v16 + 48) = *(a2 + v12 + 48);
        *(v16 + 16) = v14;
        *(v16 + 32) = v15;
        *(v16 + 56) = *(a2 + v12 + 56);
        *(v13 + 56) = 0;
        *(v13 + 64) = 0;
        *(v16 + 72) = *(a2 + v12 + 72);
        ++v27;
        v12 += 80;
      }

      while (a2 + v12 != a3);
      v11 = v7 + v12;
    }

    sub_1001EFB94(v11, v11, v7, v7, a2, a2, a1, a1, a3, a3);
    if (!v7)
    {
      return;
    }

LABEL_13:
    if (v27)
    {
      v23 = 0;
      v24 = (v7 + 64);
      do
      {
        v25 = *v24;
        if (*v24)
        {
          if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v25->__on_zero_shared)(v25);
            std::__shared_weak_count::__release_weak(v25);
          }
        }

        ++v23;
        v24 += 10;
      }

      while (v23 < v27);
    }

    return;
  }

  v17 = a7;
  if (a1 != a2)
  {
    v18 = 0;
    do
    {
      v19 = a1 + v18;
      sub_100217150((v7 + v18), (a1 + v18));
      v20 = *(a1 + v18 + 16);
      v21 = *(a1 + v18 + 32);
      *(v22 + 48) = *(a1 + v18 + 48);
      *(v22 + 16) = v20;
      *(v22 + 32) = v21;
      *(v22 + 56) = *(a1 + v18 + 56);
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      *(v22 + 72) = *(a1 + v18 + 72);
      ++v27;
      v18 += 80;
    }

    while (a1 + v18 != a2);
    v17 = v7 + v18;
  }

  sub_1001EF970(v7, v17, a2, a3, a1);
  v7 = a7;
  if (a7)
  {
    goto LABEL_13;
  }
}

void sub_1001EF920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1001EED10(va);
  _Unwind_Resume(a1);
}

void sub_1001EF970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != a2)
  {
    v9 = a1;
    while (a3 != a4)
    {
      v10 = sub_10021569C(a3);
      if (v10 >= sub_10021569C(v9))
      {
        sub_100217150(a5, v9);
        v15 = *(v9 + 16);
        v16 = *(v9 + 32);
        *(a5 + 48) = *(v9 + 48);
        *(a5 + 16) = v15;
        *(a5 + 32) = v16;
        v17 = *(v9 + 56);
        *(v9 + 56) = 0;
        *(v9 + 64) = 0;
        v18 = *(a5 + 64);
        *(a5 + 56) = v17;
        if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        *(a5 + 72) = *(v9 + 72);
        v9 += 80;
        a5 += 80;
        if (v9 == a2)
        {
          return;
        }
      }

      else
      {
        sub_100217150(a5, a3);
        v11 = *(a3 + 16);
        v12 = *(a3 + 32);
        *(a5 + 48) = *(a3 + 48);
        *(a5 + 16) = v11;
        *(a5 + 32) = v12;
        v13 = *(a3 + 56);
        *(a3 + 56) = 0;
        *(a3 + 64) = 0;
        v14 = *(a5 + 64);
        *(a5 + 56) = v13;
        if (v14)
        {
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }
        }

        *(a5 + 72) = *(a3 + 72);
        a3 += 80;
        a5 += 80;
        if (v9 == a2)
        {
          return;
        }
      }
    }

    do
    {
      sub_100217150(a5, v9);
      v19 = *(v9 + 16);
      v20 = *(v9 + 32);
      *(a5 + 48) = *(v9 + 48);
      *(a5 + 16) = v19;
      *(a5 + 32) = v20;
      v21 = *(v9 + 56);
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      v22 = *(a5 + 64);
      *(a5 + 56) = v21;
      if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }

      *(a5 + 72) = *(v9 + 72);
      v9 += 80;
      a5 += 80;
    }

    while (v9 != a2);
  }
}

void sub_1001EFB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 == a4)
  {
    return;
  }

  v13 = a2;
  v14 = a10 - 80;
  while (a6 != a8)
  {
    v16 = v13 - 80;
    v17 = sub_10021569C(v13 - 80);
    if (v17 >= sub_10021569C(a6 - 80))
    {
      sub_100217150(v14, (v13 - 80));
      v22 = *(v13 - 64);
      v23 = *(v13 - 48);
      *(v14 + 48) = *(v13 - 32);
      *(v14 + 16) = v22;
      *(v14 + 32) = v23;
      v24 = *(v13 - 24);
      *(v13 - 24) = 0;
      *(v13 - 16) = 0;
      v21 = *(v14 + 64);
      *(v14 + 56) = v24;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v15 = v13;
        goto LABEL_14;
      }

      v15 = v13;
    }

    else
    {
      sub_100217150(v14, (a6 - 80));
      v18 = *(a6 - 64);
      v19 = *(a6 - 48);
      *(v14 + 48) = *(a6 - 32);
      *(v14 + 16) = v18;
      *(v14 + 32) = v19;
      v20 = *(a6 - 24);
      *(a6 - 24) = 0;
      *(a6 - 16) = 0;
      v21 = *(v14 + 64);
      *(v14 + 56) = v20;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v15 = a6;
        a6 -= 80;
        v16 = v13;
LABEL_14:
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
        goto LABEL_4;
      }

      v15 = a6;
      a6 -= 80;
      v16 = v13;
    }

LABEL_4:
    *(v14 + 72) = *(v15 - 8);
    v14 -= 80;
    v13 = v16;
    if (v16 == a4)
    {
      return;
    }
  }

  if (a4 != v13)
  {
    v25 = 0;
    do
    {
      v26 = v13 + v25;
      v27 = v14 + v25;
      sub_100217150((v14 + v25), (v13 + v25 - 80));
      v28 = *(v13 + v25 - 64);
      v29 = *(v13 + v25 - 48);
      *(v27 + 48) = *(v13 + v25 - 32);
      *(v27 + 16) = v28;
      *(v27 + 32) = v29;
      v30 = *(v13 + v25 - 24);
      *(v26 - 24) = 0;
      *(v26 - 16) = 0;
      v31 = *(v14 + v25 + 64);
      *(v27 + 56) = v30;
      if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
      }

      *(v27 + 72) = *(v26 - 8);
      v25 -= 80;
    }

    while (v13 + v25 != a4);
  }
}

void sub_1001EFDC8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001EFE38()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1001EFEA8(uint64_t a1, uint64_t a2)
{
  memset(v3, 0, sizeof(v3));
  __src[2] = 1;
  __src[0] = 10;
  std::__sort<std::__less<char,char> &,char *>();
  sub_1001F0238(v3, a2 + 32, __src, 0);
}

void sub_1001F01A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  if (a21 >= 0x11)
  {
    if (a19)
    {
      operator delete[]();
    }
  }

  sub_1000D1490(&a16);
  _Unwind_Resume(a1);
}

void sub_1001F0238(uint64_t a1, uint64_t a2, void *__src, int a4)
{
  v7 = __src[2];
  __n = v7;
  __srca[0] = 0;
  if (v7 < 0x11)
  {
    memcpy(__srca, __src, v7);
    v13 = __n;
    v12[0] = 0;
    if (__n < 0x11)
    {
      memcpy(v12, __srca, __n);
      __dst[2] = v13;
      __dst[0] = 0;
      if (v13 <= 0x10)
      {
        memcpy(__dst, v12, v13);
        v11 = a4;
        sub_1001F1620(a1, a2, __dst);
      }

      operator new[]();
    }

    operator new[]();
  }

  operator new[]();
}

void sub_1001F040C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    operator delete[]();
  }

  if (v17 >= 0x11)
  {
    if (a10)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F0464()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  *v19 = 0u;
  v20 = 0u;
  v21 = 1.0;
  v6 = ((v1[1] - *v1) >> 4);
  prime = v6;
  if (v6 == 1)
  {
    prime = 2;
  }

  else
  {
    if ((prime & (v6 - 1)) != 0)
    {
      prime = std::__next_prime(v6);
      v8 = v19[1];
      v9 = prime >= v19[1];
      if (prime > v19[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
      v9 = 1;
      if (prime)
      {
        goto LABEL_17;
      }
    }

    if (v9)
    {
      goto LABEL_18;
    }

    v10 = vcvtps_u32_f32(*(&v20 + 1) / v21);
    if (v8 < 3 || (v11 = vcnt_s8(v8), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
    {
      v10 = std::__next_prime(v10);
    }

    else
    {
      v12 = 1 << -__clz(v10 - 1);
      if (v10 >= 2)
      {
        v10 = v12;
      }
    }

    if (prime <= v10)
    {
      prime = v10;
    }

    if (prime >= v8)
    {
LABEL_18:
      if (*v2 != v2[1])
      {
        sub_1002C699C(*v2, v26);
        if (SHIBYTE(v28) < 0)
        {
          sub_100003228(__p, v27, *(&v27 + 1));
        }

        else
        {
          *__p = v27;
          v23 = v28;
        }

        sub_10011B8B8(&v24, v26);
        sub_10011B04C(v26);
        sub_1001181E4(v25, __p);
      }

      v13 = v19[0];
      v14 = v19[1];
      v19[0] = 0;
      v19[1] = 0;
      v16[0] = v13;
      v16[1] = v14;
      v17 = v20;
      v18 = v21;
      if (*(&v20 + 1))
      {
        v15 = *(v20 + 8);
        if ((v14 & (v14 - 1)) != 0)
        {
          if (v15 >= v14)
          {
            v15 %= v14;
          }
        }

        else
        {
          v15 &= v14 - 1;
        }

        *(v13 + v15) = &v17;
        v20 = 0uLL;
      }

      sub_1001F08E8(v5, v4, v16);
    }
  }

LABEL_17:
  sub_10000FE58(v19, prime);
  goto LABEL_18;
}

void sub_1001F0834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10018408C(va);
  sub_10018408C(va1);
  _Unwind_Resume(a1);
}

void sub_1001F0850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10018408C(va);
  _Unwind_Resume(a1);
}

void sub_1001F0864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10011B04C(&STACK[0xF90]);
  sub_10018408C(va);
  _Unwind_Resume(a1);
}

void sub_1001F0898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_1001F15D4(va1);
  sub_10018408C(va);
  _Unwind_Resume(a1);
}

void sub_1001F08D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10018408C(va);
  _Unwind_Resume(a1);
}

void sub_1001F08E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a3;
  *a3 = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = a3[1];
  a3[1] = 0;
  v5 = a3[2];
  *(a1 + 32) = v5;
  v6 = (a1 + 32);
  v7 = a3[3];
  *(a1 + 40) = v7;
  *(a1 + 48) = *(a3 + 8);
  if (v7)
  {
    v8 = *(v5 + 8);
    v9 = *(a1 + 24);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v4 + 8 * v8) = v6;
    a3[2] = 0;
    a3[3] = 0;
    *(a1 + 56) = 0;
    v10 = *(a1 + 40);
    *(a1 + 64) = 0;
    *(a1 + 72) = v10 == 1;
    if (v10)
    {
      v11 = *v6;
      if (*v6)
      {
        do
        {
          v12 = *(v11 + 486);
          if ((v12 & 1) == 0)
          {
            if ((v12 & 2) == 0)
            {
              sub_1000474A4(v16, "");
              sub_1001F2B44("UID & ID missing from location configuration", &v18);
              sub_1000E661C(v16, &v18, 1);
              if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v18.__r_.__value_.__l.__data_);
              }

              if (v17 < 0)
              {
                operator delete(v16[0]);
              }

              sub_10003F5D0(__p);
            }

            std::string::operator=((v11 + 5), (v11 + 8));
            *(v11 + 486) |= 1u;
          }

          v11 = *v11;
        }

        while (v11);
      }

      memset(&v18, 0, sizeof(v18));
      sub_1001F2B94(&v18, *(a1 + 40));
      v13 = *v6;
      if (*v6)
      {
        size = v18.__r_.__value_.__l.__size_;
        do
        {
          if (size >= v18.__r_.__value_.__r.__words[2])
          {
            size = sub_1001F2D08(&v18, (v13 + 4));
          }

          else
          {
            sub_10011B8B8(size, (v13 + 4));
            size += 1920;
          }

          v18.__r_.__value_.__l.__size_ = size;
          v13 = *v13;
        }

        while (v13);
      }

      operator new();
    }
  }

  else
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  sub_1000474A4(v16, "");
  sub_1001F2AF4("Cannot select an empty universe", &v18);
  sub_1000E661C(v16, &v18, 1);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v16[0]);
LABEL_7:
  sub_1000BC6D8(__p);
}

void sub_1001F0C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10002BB1C(v24);
  sub_10018408C(v23);
  sub_10002BB1C(v22);
  _Unwind_Resume(a1);
}

BOOL sub_1001F0D2C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) != *(a1 + 40))
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    return 1;
  }

  while (1)
  {
    v4 = sub_1001EDFC8((a2 + 16), v2 + 2);
    result = v4 != 0;
    if (!v4)
    {
      break;
    }

    v2 = *v2;
    if (!v2)
    {
      return 1;
    }
  }

  return result;
}

void *sub_1001F0D98@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (!*result)
  {
    sub_1001F3380();
  }

  v3 = result[1];
  *a2 = *result;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1001F0E18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001F0EB8(a1, &__p);
  sub_1001D6724("|", &__p, a2);
  v3 = __p;
  if (__p)
  {
    v4 = v8;
    v5 = __p;
    if (v8 != __p)
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
      v5 = __p;
    }

    v8 = v3;
    operator delete(v5);
  }
}

void sub_1001F0EA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D1490(va);
  _Unwind_Resume(a1);
}

void sub_1001F0EB8(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  for (i = *(a1 + 32); i; i = *i)
  {
    if (*(i + 1015) < 0)
    {
      sub_100003228(__p, i[124], i[125]);
    }

    else
    {
      *__p = *(i + 62);
      v10 = i[126];
    }

    v4 = HIBYTE(v10);
    if (SHIBYTE(v10) < 0)
    {
      v5 = *__p[0];
      if (v5 == 71)
      {
        v6 = a2[1];
        if (v6 < a2[2])
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v5 = LOBYTE(__p[0]);
      if (LOBYTE(__p[0]) == 71)
      {
        v6 = a2[1];
        if (v6 < a2[2])
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }

    if (v5 != 76)
    {
      v6 = a2[1];
      if (v6 < a2[2])
      {
        if ((SHIBYTE(v10) & 0x80000000) == 0)
        {
LABEL_17:
          v7 = *__p;
          *(v6 + 16) = v10;
          *v6 = v7;
          goto LABEL_20;
        }

LABEL_19:
        sub_100003228(v6, __p[0], __p[1]);
LABEL_20:
        v8 = v6 + 24;
LABEL_21:
        a2[1] = v8;
        v4 = HIBYTE(v10);
        goto LABEL_22;
      }

LABEL_18:
      v8 = sub_1001C3E68(a2, __p);
      goto LABEL_21;
    }

LABEL_22:
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1001F0FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 8) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000D1490(v14);
  _Unwind_Resume(a1);
}

std::string *sub_1001F1028@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  p_size = &result[1].__r_.__value_.__l.__size_;
  while (1)
  {
    p_size = *p_size;
    if (!p_size)
    {
      break;
    }

    v4 = *(a2 + 23);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a2 + 8);
    }

    if (v4)
    {
      std::string::push_back(a2, 10);
    }

    v5 = sub_100118234((p_size + 2));
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

    result = std::string::append(a2, v7, v8);
  }

  return result;
}

void sub_1001F10AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F10C8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  for (i = *(a1 + 32); i; i = *i)
  {
    v4 = i[3];
    v6 = i[2];
    v7 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1001E0994(a2, &v6);
    v5 = v7;
    if (v7)
    {
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_1001F1198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100118124(&a9);
  sub_10004D7DC(v9);
  _Unwind_Resume(a1);
}

const void ***sub_1001F11B4(void *a1, uint64_t ***a2)
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

void sub_1001F151C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100184820(va);
  _Unwind_Resume(a1);
}

void sub_1001F1530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100118124(v2);
  sub_100184820(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F154C(uint64_t a1)
{
  sub_10011B04C(a1 + 16);
  result = a1;
  v3 = *(a1 + 8);
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

uint64_t sub_1001F15D4(uint64_t a1)
{
  sub_10011B04C(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001F1620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = *(a3 + 16);
  v9[2] = v7;
  v9[0] = 0;
  if (v7 < 0x11)
  {
    memcpy(v9, a3, v7);
    v10 = *(a3 + 24);
    sub_1001F1B10(v8, v5, v5 + v6, v9);
  }

  operator new[]();
}

void sub_1001F19C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a2)
  {
    sub_10000D388(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void (***sub_1001F1A70(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void (***sub_1001F1AC0(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void sub_1001F1B10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  __n = v6;
  __src[0] = 0;
  if (v6 < 0x11)
  {
    memcpy(__src, a4, v6);
    v7 = *(a4 + 24);
    v10 = v7;
    v12 = __n;
    v11[0] = 0;
    if (__n < 0x11)
    {
      memcpy(v11, __src, __n);
      v13 = v7;
      *a1 = 0;
      v15 = v12;
      v14[0] = 0;
      if (v12 < 0x11)
      {
        memcpy(v14, v11, v12);
        v16 = v7;
        v18 = v15;
        v17[0] = 0;
        if (v15 < 0x11)
        {
          memcpy(v17, v14, v15);
          v19 = v7;
          v20[2] = v18;
          v20[0] = 0;
          if (v18 < 0x11)
          {
            memcpy(v20, v17, v18);
            v21 = v7;
            sub_1001F2460(off_100442B28, v20);
          }

          operator new[]();
        }

        operator new[]();
      }

      operator new[]();
    }

    operator new[]();
  }

  operator new[]();
}

void sub_1001F1E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27)
{
  if (a21)
  {
    operator delete[]();
  }

  if (v29 >= 0x11 && a17)
  {
    operator delete[]();
  }

  if (v28 >= 0x11 && a13)
  {
    operator delete[]();
  }

  if (v27 >= 0x11)
  {
    if (a9)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

void (***sub_1001F1EFC(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void *sub_1001F1F4C(void *result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_1001F1F74(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

void *sub_1001F1F74(void *result, _WORD *a2, int a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v6 = *result;
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      if (result[2] >= 0x11uLL && *result)
      {
        v7 = *a2;
        v8 = *result;
        operator delete[]();
      }

      operator delete();
    }

    goto LABEL_9;
  }

  if (a3 != 3)
  {
LABEL_10:
    a2[4] = 0;
    return result;
  }

  if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != ("N5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    v5 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v4;
    if (v5)
    {
LABEL_9:
      *a2 = 0;
      return result;
    }
  }

  *a2 = *result;
  return result;
}

char *sub_1001F2154(void *__src, char *a2, char *a3)
{
  v6 = __src[2];
  v40 = v6;
  v39[0] = 0;
  if (v6 >= 0x11)
  {
    operator new[]();
  }

  memcpy(v39, __src, v6);
  if (a3 != a2)
  {
    if (v40 > 0x10)
    {
      while (1)
      {
        v14 = *a2;
        v15 = v39[0];
        v16 = v40;
        do
        {
          v17 = v16 >> 1;
          v18 = &v15[v16 >> 1];
          v20 = *v18;
          v19 = v18 + 1;
          v16 += ~(v16 >> 1);
          if (v20 < v14)
          {
            v15 = v19;
          }

          else
          {
            v16 = v17;
          }
        }

        while (v16);
        if (v15 != (v39[0] + v40) && *v15 <= v14)
        {
          break;
        }

        if (++a2 == a3)
        {
LABEL_27:
          a2 = a3;
          break;
        }
      }
    }

    else
    {
      if (!v40)
      {
        return a3;
      }

      while (1)
      {
        v7 = *a2;
        v8 = v39;
        v9 = v40;
        do
        {
          v10 = v9 >> 1;
          v11 = v8 + (v9 >> 1);
          v13 = *v11;
          v12 = v11 + 1;
          v9 += ~(v9 >> 1);
          if (v13 < v7)
          {
            v8 = v12;
          }

          else
          {
            v9 = v10;
          }
        }

        while (v9);
        if (v8 != (v39 + v40) && *v8 <= v7)
        {
          break;
        }

        if (++a2 == a3)
        {
          goto LABEL_27;
        }
      }
    }
  }

  if (v40 >= 0x11 && v39[0])
  {
    operator delete[]();
  }

  if (a2 == a3)
  {
    return a3;
  }

  if (!*(__src + 6))
  {
    v21 = __src[2];
    if (v21 > 0x10)
    {
      v30 = a2;
      do
      {
        v31 = *v30;
        v32 = *__src;
        v33 = __src[2];
        do
        {
          v34 = v33 >> 1;
          v35 = &v32[v33 >> 1];
          v37 = *v35;
          v36 = v35 + 1;
          v33 += ~(v33 >> 1);
          if (v37 < v31)
          {
            v32 = v36;
          }

          else
          {
            v33 = v34;
          }
        }

        while (v33);
        if (v32 == (*__src + v21))
        {
          break;
        }

        if (*v32 > v31)
        {
          break;
        }

        ++v30;
      }

      while (v30 != a3);
    }

    else if (v21)
    {
      v22 = a2;
      do
      {
        v23 = *v22;
        v24 = __src;
        v25 = __src[2];
        do
        {
          v26 = v25 >> 1;
          v27 = &v24[v25 >> 1];
          v29 = *v27;
          v28 = v27 + 1;
          v25 += ~(v25 >> 1);
          if (v29 < v23)
          {
            v24 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
        if (v24 == __src + v21)
        {
          break;
        }

        if (*v24 > v23)
        {
          break;
        }

        ++v22;
      }

      while (v22 != a3);
    }
  }

  return a2;
}

void sub_1001F2460(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  __src[2] = v3;
  __src[0] = 0;
  if (v3 < 0x11)
  {
    memcpy(__src, a2, v3);
    v5 = *(a2 + 24);
    operator new();
  }

  operator new[]();
}

void *sub_1001F2600(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v17 = 0;
  v5 = *a2;
  if (*a2)
  {
    v17 = *a2;
    if (v5)
    {
      v18 = *(a2 + 8);
      v19 = *(a2 + 24);
    }

    else
    {
      v6 = a2;
      (*v5)(a2 + 8, &v18, 0);
      a2 = v6;
    }
  }

  v7 = *(a2 + 48);
  v20 = *(a2 + 32);
  v21 = v7;
  v22 = *(a2 + 64);
  v11 = 0;
  v8 = *a3;
  if (*a3)
  {
    v11 = *a3;
    if (v8)
    {
      v12 = *(a3 + 8);
      v13 = *(a3 + 24);
    }

    else
    {
      (*v8)(a3 + 8, &v12, 0);
    }
  }

  v9 = *(a3 + 48);
  v14 = *(a3 + 32);
  v15 = v9;
  v16 = *(a3 + 64);
  sub_1001F27D0(a1, &v17, &v11);
  if (v11)
  {
    if ((v11 & 1) == 0 && *v11)
    {
      (*v11)(&v12, &v12, 2);
    }

    v11 = 0;
  }

  if (v17 && (v17 & 1) == 0 && *v17)
  {
    (*v17)(&v18, &v18, 2);
  }

  return a1;
}

void sub_1001F2780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_10000D388(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F27B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (**)(void, void, void));
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_1001F1AC0(va);
  sub_1001F1AC0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F27D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v26 = result;
  v27 = 0;
  while (!*a3)
  {
    if ((*a2 == 0) | *(a2 + 64) & 1)
    {
      return result;
    }

LABEL_13:
    v10 = *(a2 + 32);
    v9 = *(a2 + 40);
    v11 = v9 - v10;
    if ((v9 - v10) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    if (v11 > 0x16)
    {
      operator new();
    }

    HIBYTE(v25) = v9 - v10;
    if (v9 != v10)
    {
      memmove(&__dst, v10, v9 - v10);
    }

    *(&__dst + v11) = 0;
    v13 = *(v5 + 8);
    v12 = *(v5 + 16);
    if (v13 >= v12)
    {
      v15 = *v5;
      v16 = v13 - *v5;
      v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3) + 1;
      if (v17 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10000FC84();
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v15) >> 3);
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x555555555555555)
      {
        v19 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_10000D444();
      }

      v20 = 8 * (v16 >> 3);
      *v20 = __dst;
      *(v20 + 16) = v25;
      v14 = v20 + 24;
      v21 = v20 - v16;
      memcpy((v20 - v16), v15, v16);
      *v5 = v21;
      *(v5 + 8) = v14;
      *(v5 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v13 = __dst;
      *(v13 + 16) = v25;
      v14 = v13 + 24;
    }

    *(v5 + 8) = v14;
    v22 = *(a2 + 56);
    if (*a2)
    {
      result = (*((*a2 & 0xFFFFFFFFFFFFFFFELL) + 8))(a2 + 8, *(a2 + 48), v22);
      v22 = *(a2 + 56);
      if (result != v22)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v23 = *(a2 + 56);
      result = v23;
    }

    if (v23 == v22 && *(a2 + 40) == v22)
    {
      *(a2 + 64) = 1;
    }

LABEL_2:
    *(a2 + 32) = *(a2 + 48);
    *(a2 + 40) = result;
    *(a2 + 48) = v23;
  }

  if ((*a2 == 0) | *(a2 + 64) & 1 | *(a3 + 64) & 1)
  {
    if (((((*a2 == 0) | *(a2 + 64)) ^ *(a3 + 64)) & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  v6 = *(a2 + 32);
  v7 = *(a3 + 32);
  v8 = *(a2 + 40) - v6;
  if (v8 != *(a3 + 40) - v7)
  {
    goto LABEL_13;
  }

  result = memcmp(v6, v7, v8);
  if (result || *(a2 + 48) != *(a3 + 48) || *(a2 + 56) != *(a3 + 56))
  {
    goto LABEL_13;
  }

  return result;
}

void sub_1001F2AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void ***a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_10004E764(&a16);
    _Unwind_Resume(a1);
  }

  sub_10004E764(&a16);
  _Unwind_Resume(a1);
}

std::string *sub_1001F2AF4@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1001F2B28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1001F2B44@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1001F2B78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001F2B94(void *result, unint64_t a2)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((result[2] - *result) >> 7) < a2)
  {
    if (a2 < 0x22222222222223)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_1001F2CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v4)
  {
    sub_100385158(v3, v2);
  }

  sub_100120E60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F2D08(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 7);
  v3 = v2 + 1;
  if (v2 + 1 > 0x22222222222222)
  {
    sub_10000FC84();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 7) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 7);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 7) >= 0x11111111111111)
  {
    v5 = 0x22222222222222;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x22222222222222)
    {
      operator new();
    }

    sub_10000D444();
  }

  v16 = (a1[1] - *a1) >> 7 << 7;
  sub_10011B8B8(v16, a2);
  v6 = 1920 * v2 + 1920;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v16 + v9;
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v16 + v9;
    do
    {
      sub_10011B8B8(v13, v12);
      v12 += 1920;
      v13 += 1920;
      v11 -= 1920;
    }

    while (v12 != v8);
    v14 = v7;
    do
    {
      (**v7)(v7);
      v7 += 240;
      v14 += 240;
    }

    while (v7 != v8);
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

void sub_1001F2EA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100120E60(va);
  _Unwind_Resume(a1);
}

void sub_1001F2EB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v4)
  {
    sub_100385158(v3, v2);
  }

  sub_100120E60(va);
  _Unwind_Resume(a1);
}

void sub_1001F2EFC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442B58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001F2F5C(uint64_t a1)
{
  v2 = *(a1 + 272);
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

  v6 = *(a1 + 256);
  *(a1 + 256) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 232);
  if (v7)
  {
    do
    {
      v8 = *v7;
      sub_1001F3118(v7 + 2);
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  sub_1001F324C((a1 + 128));
  if (*(a1 + 120))
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 96))
  {
    operator delete(*(a1 + 80));
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    do
    {
      v11 = *v10;
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 16);
  while (v13)
  {
    v14 = v13;
    v13 = *v13;
    sub_10011B04C(v14 + 4);
    v15 = v14[3];
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    operator delete(v14);
  }

  v16 = *a1;
  *a1 = 0;
  if (v16)
  {
    operator delete(v16);
  }

  return a1;
}

void *sub_1001F3118(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v3 = a1[11];
    v4 = a1[10];
    if (v3 != v2)
    {
      v5 = v3 - 5;
      v6 = v3 - 5;
      v7 = v3 - 5;
      do
      {
        v8 = *v7;
        v7 -= 5;
        (*v8)(v6);
        v5 -= 5;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = a1[10];
    }

    a1[11] = v2;
    operator delete(v4);
  }

  v10 = a1[7];
  if (v10)
  {
    a1[8] = v10;
    operator delete(v10);
  }

  v11 = a1[4];
  if (v11)
  {
    do
    {
      v12 = *v11;
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = a1[2];
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = a1[1];
  if (!v14 || atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  return a1;
}

void *sub_1001F324C(void *a1)
{
  v2 = a1[8];
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[4];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v3;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v3 = v5;
    }

    operator delete(v3);
  }

  v6 = a1[6];
  a1[6] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = a1[3];
  while (v7)
  {
    v8 = v7;
    v7 = *v7;
    v9 = v8[3];
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v8;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v8 = v10;
    }

    operator delete(v8);
  }

  v11 = a1[1];
  a1[1] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return a1;
}

void sub_1001F347C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002BB1C(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_1001F34BC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442BA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001F3538()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001F35A8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1001F3634(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_100442BF8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v11 = *a3;
  if (sub_1002515FC())
  {
    v12 = *a3;
    operator new();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v13 = a4[1];
  *(a1 + 56) = *a4;
  *(a1 + 64) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  v14 = *a3;
  v15 = a3[1];
  *(a1 + 280) = *a3;
  *(a1 + 288) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    v14 = *a3;
  }

  *(a1 + 296) = a5;
  *(a1 + 304) = a6;
  *(a1 + 312) = sub_10025119C(v14);
  sub_100250BA8(*a3, a1 + 320);
  sub_100250E10(*a3);
}

void sub_1001F3830(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v5);
  sub_1001FC978((v1 + 32));
  sub_1001FC91C(v2);
  _Unwind_Resume(a1);
}

void sub_1001F3858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002BB1C(&a9);
  sub_10002BB1C(v9 + 400);
  sub_100048F1C((v9 + 376));
  sub_10002BB1C(v9 + 360);
  sub_10002BB1C(v9 + 280);
  if (*(v9 + 72) == 1)
  {
    sub_10012E8E4(v9 + 80);
    *(v9 + 72) = 0;
  }

  sub_10002BB1C(v11);
  sub_10002BB1C(v9 + 40);
  sub_1001FC978((v9 + 32));
  sub_1001FC91C(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F38EC(uint64_t a1)
{
  *a1 = off_100442BF8;
  v2 = *(a1 + 480);
  v3 = *(a1 + 488);
  if (v3 == v2)
  {
    *(a1 + 512) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(a1 + 504);
    v5 = &v2[v4 >> 7];
    v6 = *(v2 + (((*(a1 + 512) + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 512) + v4) & 0x7F);
    if (*v5 + 32 * (v4 & 0x7F) != v6)
    {
      v7 = (*v5 + 32 * (v4 & 0x7F));
      do
      {
        v8 = *v7;
        v7 += 4;
        (*v8)();
        if (v7 - *v5 == 4096)
        {
          v9 = v5[1];
          ++v5;
          v7 = v9;
        }
      }

      while (v7 != v6);
      v2 = *(a1 + 480);
      v3 = *(a1 + 488);
    }

    *(a1 + 512) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 488);
        v2 = (*(a1 + 480) + 8);
        *(a1 + 480) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 64;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v11 = 128;
LABEL_15:
    *(a1 + 504) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 480);
    v13 = *(a1 + 488);
    if (v13 != v14)
    {
      *(a1 + 488) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v15 = *(a1 + 472);
  if (v15)
  {
    operator delete(v15);
  }

  v16 = *(a1 + 424);
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *(a1 + 408);
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *(a1 + 376);
  if (v18)
  {
    v19 = *(a1 + 384);
    v20 = *(a1 + 376);
    if (v19 != v18)
    {
      do
      {
        v21 = *(v19 - 8);
        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
        }

        v19 -= 16;
      }

      while (v19 != v18);
      v20 = *(a1 + 376);
    }

    *(a1 + 384) = v18;
    operator delete(v20);
  }

  v22 = *(a1 + 368);
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *(a1 + 288);
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    if (*(a1 + 72) != 1)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (*(a1 + 72) == 1)
  {
LABEL_43:
    sub_10012E8E4(a1 + 80);
    *(a1 + 72) = 0;
  }

LABEL_44:
  v24 = *(a1 + 64);
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = *(a1 + 48);
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v26)
  {
    sub_10023590C(v26);
    operator delete();
  }

  v27 = *(a1 + 8);
  if (v27)
  {
    v28 = *(a1 + 16);
    v29 = *(a1 + 8);
    if (v28 != v27)
    {
      do
      {
        v28 = sub_10023590C(v28 - 72);
      }

      while (v28 != v27);
      v29 = *(a1 + 8);
    }

    *(a1 + 16) = v27;
    operator delete(v29);
  }

  return a1;
}

void sub_1001F3D48(uint64_t a1)
{
  sub_1001F38EC(a1);

  operator delete();
}

void sub_1001F4060(_Unwind_Exception *a1)
{
  sub_100118124(v1 + 224);
  sub_1001DF904(v1 + 136);
  sub_1001FE7FC(v1 + 24);
  sub_10002BB1C(v1);
  _Unwind_Resume(a1);
}

double sub_1001F40D4(void *a1, uint64_t a2, uint64_t *a3, int a4)
{
  sub_1001D14CC(a3, a4, &v9);
  v6 = v9;
  sub_1001E9D30(a2);
  sub_1002C15C0(a1, &v9);
  sub_1002C1784(a1, &v9);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return 1.0 - *&v6;
}

uint64_t sub_1001F422C(uint64_t a1)
{
  if (*(a1 + 280) == 1)
  {
    return fmin(1.0 - *(a1 + 256), 0.5) > *(a1 + 272) * *(a1 + 256);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1001F4268(uint64_t a1, double a2)
{
  if (a2 >= 0.5)
  {
    return 0;
  }

  v2 = 1.0 - *(a1 + 264);
  if (v2 <= 0.5)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if (v2 <= a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (*(a1 + 288) == 1)
  {
    if (qword_10045B050 != -1)
    {
      sub_100385B50();
    }

    v5 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      v6 = off_100442D68[v4 - 1];
      v8 = 136315138;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Yield status from probability/confidence is %s but forcing yield to OK", &v8, 0xCu);
    }

    return 0;
  }

  return v4;
}

uint64_t sub_1001F4374(uint64_t a1, double a2)
{
  if (a2 >= 0.5)
  {
    return 0;
  }

  v2 = 1.0 - *(a1 + 16);
  if (v2 <= 0.5)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if (v2 <= a2)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

void sub_1001F43D0(void *a1, uint64_t a2, void *a3, uint64_t **a4)
{
  if (a1[1] == a1[2] || *(*a3 + 8) != *(a1[45] + 8))
  {
    sub_1001F48E4(a1, a2, a3, a4);
  }

  if (qword_10045B050 != -1)
  {
    sub_100385B50();
  }

  v8 = qword_10045B058;
  if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    goto LABEL_23;
  }

  v13 = qword_10045E088;
  if (!qword_10045E088)
  {
LABEL_12:
    sub_10001C6D4("map::at:  key not found");
  }

  v14 = *(*a3 + 8);
  while (1)
  {
    while (1)
    {
      v15 = *(v13 + 32);
      if (v14 >= v15)
      {
        break;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v13 + 8);
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  v16 = *(v13 + 40);
  v17 = strlen(v16);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v18 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  BYTE7(v31) = v17;
  if (v17)
  {
    memmove(__p, v16, v17);
  }

  *(__p + v18) = 0;
  v19 = __p;
  if (SBYTE7(v31) < 0)
  {
    v19 = __p[0];
  }

  *buf = 136315394;
  v34 = v19;
  v35 = 2048;
  v36 = a2;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Updating particle filter %s at timestamp %lld", buf, 0x16u);
  if (SBYTE7(v31) < 0)
  {
    operator delete(__p[0]);
    a1[57] = a2;
    v20 = (a1 + 47);
    if (a1 + 47 == a4)
    {
LABEL_25:
      *__p = 0u;
      v31 = 0u;
      v32 = 1065353216;
      v21 = a1[47];
      for (i = a1[48]; v21 != i; v21 += 2)
      {
        v23 = (*(**v21 + 64))(*v21, v9, v10, v11, v12);
        sub_1001C60C0(__p, v23);
      }

      v24 = a1[1];
      v25 = a1[2];
      if (v24 == v25)
      {
        v28 = a1[4];
        if (!v28)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v26 = 0;
        do
        {
          v27 = sub_100118234(v24);
          v26 |= sub_1001EB9F8(v27, __p);
          v24 += 72;
        }

        while (v24 != v25);
        v28 = a1[4];
        if (!v28)
        {
LABEL_34:
          sub_1001F5C64();
        }
      }

      v29 = sub_100118234(v28);
      sub_1001EB9F8(v29, __p);
      goto LABEL_34;
    }
  }

  else
  {
LABEL_23:
    a1[57] = a2;
    v20 = (a1 + 47);
    if (a1 + 47 == a4)
    {
      goto LABEL_25;
    }
  }

  sub_1001E3D54(v20, *a4, a4[1], (a4[1] - *a4) >> 4);
  goto LABEL_25;
}

void sub_1001F482C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::runtime_error a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a14 < 0)
  {
    operator delete(a9);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001F48E4(void *a1, uint64_t a2, void *a3, uint64_t **a4)
{
  if (qword_10045B050 != -1)
  {
    sub_100385B50();
  }

  v8 = qword_10045B058;
  if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    goto LABEL_20;
  }

  v9 = qword_10045E088;
  if (!qword_10045E088)
  {
LABEL_10:
    sub_10001C6D4("map::at:  key not found");
  }

  v10 = *(*a3 + 8);
  while (1)
  {
    while (1)
    {
      v11 = *(v9 + 32);
      if (v10 >= v11)
      {
        break;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v9 + 8);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  v12 = *(v9 + 40);
  v13 = strlen(v12);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    operator new();
  }

  v25 = v13;
  if (v13)
  {
    memmove(__dst, v12, v13);
  }

  *(__dst + v14) = 0;
  v15 = __dst;
  if (v25 < 0)
  {
    v15 = __dst[0];
  }

  *buf = 136315394;
  v27 = v15;
  v28 = 2048;
  v29 = a2;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Creating new particle filter %s at timestamp %lld", buf, 0x16u);
  if (v25 < 0)
  {
    operator delete(__dst[0]);
    v16 = (a1 + 47);
    if (a1 + 47 == a4)
    {
LABEL_22:
      v18 = *a3;
      v17 = a3[1];
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = a1[46];
      a1[45] = v18;
      a1[46] = v17;
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      v20 = a1[1];
      a1[57] = a2;
        ;
      }

      a1[2] = v20;
      v22 = a1[4];
      a1[4] = 0;
      if (v22)
      {
        sub_10023590C(v22);
        operator delete();
      }

      v23 = a1[35];
      operator new();
    }
  }

  else
  {
LABEL_20:
    v16 = (a1 + 47);
    if (a1 + 47 == a4)
    {
      goto LABEL_22;
    }
  }

  sub_1001E3D54(v16, *a4, a4[1], (a4[1] - *a4) >> 4);
  goto LABEL_22;
}

void sub_1001F576C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(v26 + 16) = v27;
  sub_1001F608C(&a20);
  v31 = a23;
  a23 = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  sub_10002BB1C(&a16);
  v32 = a26;
  a26 = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  sub_10002BB1C(&a18);
  v33 = *v28;
  *v28 = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
    sub_10002BB1C(v29 - 144);
    sub_10002BB1C(v29 - 128);
    _Unwind_Resume(a1);
  }

  sub_10002BB1C(v29 - 144);
  sub_10002BB1C(v29 - 128);
  _Unwind_Resume(a1);
}

void sub_1001F5BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v36 = *(v33 + 48);
  if (v36)
  {
    *(v33 + 56) = v36;
    operator delete(v36);
  }

  std::runtime_error::~runtime_error((v34 - 144));
  if (a33 < 0)
  {
    operator delete(*(v33 + 8));
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001F5FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v16 = a14;
  a14 = 0;
  if (v16)
  {
    sub_100385B64(v16);
  }

  sub_10002BB1C(&a12);
  sub_10002BB1C(v14 - 56);
  _Unwind_Resume(a1);
}

void sub_1001F5FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a11;
  a11 = 0;
  if (v13)
  {
    sub_100385B64(v13);
  }

  sub_10002BB1C(&a9);
  sub_10002BB1C(v11 - 56);
  _Unwind_Resume(a1);
}

void sub_1001F602C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17)
{
  v19 = a17;
  a17 = 0;
  if (v19)
  {
    sub_100385B64(v19);
  }

  sub_10002BB1C(&a15);
  sub_10002BB1C(v17 - 56);
  _Unwind_Resume(a1);
}

void sub_1001F6074(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void **sub_1001F608C(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1001749A4(v2);
    operator delete();
  }

  return a1;
}

void sub_1001F62D8()
{
  if (v0)
  {
    (*(*v0 + 8))(v0);
  }

  operator delete();
}

void sub_1001F6348(uint64_t *a1)
{
  v2 = a1[4];
  if (v2 && a1[1] != a1[2])
  {
    v3 = sub_100118234(v2);
    v4 = sub_100118234(a1[1]);
    sub_1001E9A6C(v3, v4);
    v5 = a1[60];
    v6 = a1[61];
    if (v6 == v5)
    {
      a1[64] = 0;
      v13 = 0;
    }

    else
    {
      v7 = a1[63];
      v8 = &v5[v7 >> 7];
      v9 = *(v5 + (((a1[64] + v7) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[64] + v7) & 0x7F);
      if (*v8 + 32 * (v7 & 0x7F) != v9)
      {
        v10 = (*v8 + 32 * (v7 & 0x7F));
        do
        {
          v11 = *v10;
          v10 += 4;
          (*v11)();
          if (v10 - *v8 == 4096)
          {
            v12 = v8[1];
            ++v8;
            v10 = v12;
          }
        }

        while (v10 != v9);
        v5 = a1[60];
        v6 = a1[61];
      }

      a1[64] = 0;
      v13 = v6 - v5;
      if (v13 >= 3)
      {
        do
        {
          operator delete(*v5);
          v14 = a1[61];
          v5 = (a1[60] + 8);
          a1[60] = v5;
          v13 = (v14 - v5) >> 3;
        }

        while (v13 > 2);
      }
    }

    if (v13 == 1)
    {
      v15 = 64;
    }

    else
    {
      if (v13 != 2)
      {
        return;
      }

      v15 = 128;
    }

    a1[63] = v15;
  }
}

void sub_1001F64B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = sub_100118234(v1);

    sub_1001E9C90(v2);
  }
}

void sub_1001F64EC(uint64_t a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 != v6)
  {
    v7 = 0;
    do
    {
      if ((*(sub_100118234(v6 + 72 * v7) + 120) & 1) == 0)
      {
        if (qword_10045B050 != -1)
        {
          sub_100385B9C();
        }

        v8 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "WARNING: Resetting particle filter #%zu; it is no longer feasible", buf, 0xCu);
        }

        v9 = sub_100118234(*(a1 + 8) + 72 * v7);
        v11 = *(v9 + 8);
        for (i = *(v9 + 16); i != v11; i -= 80)
        {
          v12 = *(i - 16);
          if (v12)
          {
            if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v12->__on_zero_shared)(v12);
              std::__shared_weak_count::__release_weak(v12);
            }
          }
        }

        *(v9 + 16) = v11;
      }

      ++v7;
      v6 = *(a1 + 8);
      v5 = *(a1 + 16);
    }

    while (v7 < 0x8E38E38E38E38E39 * ((v5 - v6) >> 3));
  }

  if (v6 == v5)
  {
    v68 = (a1 + 280);
    v21 = *(a1 + 280);
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = sub_100118234(v6);
      if (!sub_1001EBAE0(v14))
      {
        v13 = 1;
      }

      v6 += 72;
    }

    while (v6 != v5);
    if (v13)
    {
      memset(&v70, 0, sizeof(v70));
      v82 = &buf[2];
      v83 = v81;
      if (a2 >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = -a2;
      }

      v74 = v15;
      v75 = v81;
      v76 = 48;
      v77 = 48;
      v16 = sub_1000E5EB8(&v74);
      v17 = v16;
      if (a2 < 0)
      {
        *(v16 - 1) = 45;
        v17 = (v16 - 1);
        v82 = (v16 - 1);
        v83 = v81;
        v18 = &v81[-v16 + 1];
        if (v18 >= 0x17)
        {
LABEL_27:
          std::string::__grow_by(&v70, 0x16uLL, v18 - 22, 0, 0, 0, 0);
          v70.__r_.__value_.__l.__size_ = 0;
          if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &v70;
          }

          else
          {
            v19 = v70.__r_.__value_.__r.__words[0];
          }

          if (v17 == v81)
          {
            goto LABEL_31;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v82 = v16;
        v83 = v81;
        v18 = &v81[-v16];
        if (&v81[-v16] >= 0x17)
        {
          goto LABEL_27;
        }
      }

      v19 = &v70;
      if (v17 == v81)
      {
LABEL_31:
        v20 = v19;
        goto LABEL_46;
      }

LABEL_38:
      if (v18 < 0x20 || (v19 - v17) < 0x20)
      {
        v20 = v19;
        v23 = v17;
      }

      else
      {
        v20 = (v19 + (v18 & 0xFFFFFFFFFFFFFFE0));
        v23 = &v17[v18 & 0xFFFFFFFFFFFFFFE0];
        v24 = (v17 + 16);
        v25 = &v19->__r_.__value_.__r.__words[2];
        v26 = v18 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 4;
          v26 -= 32;
        }

        while (v26);
        if (v18 == (v18 & 0xFFFFFFFFFFFFFFE0))
        {
          goto LABEL_46;
        }
      }

      do
      {
        v28 = *v23++;
        v20->__r_.__value_.__s.__data_[0] = v28;
        v20 = (v20 + 1);
      }

      while (v23 != v81);
LABEL_46:
      v20->__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        v70.__r_.__value_.__l.__size_ = v18;
      }

      else
      {
        *(&v70.__r_.__value_.__s + 23) = v18 & 0x7F;
      }

      v29 = std::string::insert(&v70, 0, "Precision has been lost at at timestamp ");
      v30 = *&v29->__r_.__value_.__l.__data_;
      v71.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v71.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      v31 = std::string::append(&v71, ". If you get here, your particles probably didn't make it. As long as the OffMapParticle is stable, this will never return false. If it does, inference has failed.");
      v32 = *&v31->__r_.__value_.__l.__data_;
      v73 = v31->__r_.__value_.__r.__words[2];
      *__p = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      if (qword_10045B050 != -1)
      {
        sub_100385B9C();
      }

      v33 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        v34 = __p;
        if (v73 < 0)
        {
          v34 = __p[0];
        }

        *buf = 136315138;
        *&buf[4] = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      }

      sub_1001F48E4(a1, *(a1 + 456), (a1 + 360), (a1 + 376));
    }

    v68 = (a1 + 280);
    v21 = *(a1 + 280);
    v22 = *(a1 + 16) - *(a1 + 8);
    if (v22)
    {
      if (!((0x8E38E38E38E38E39 * (v22 >> 3)) >> 61))
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  if (!sub_10025B310(*a3))
  {
    v35 = a2 - sub_1002511B4(v21);
    if (*(a1 + 456) > v35)
    {
      v35 = *(a1 + 456);
    }

    *(a1 + 456) = v35;
    v36 = *(a1 + 8);
    if (*(a1 + 16) != v36)
    {
      v37 = 0;
      v38 = 0;
      do
      {
        v39 = sub_100118234(v36 + v37);
        *(8 * v38) = (*(*v39 + 16))(v39, *(a1 + 456), a2);
        if (qword_10045B050 != -1)
        {
          sub_100385B9C();
        }

        v40 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          v41 = *(8 * v38) * 100.0;
          *buf = 134218240;
          *&buf[4] = v38;
          v79 = 2048;
          v80 = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "pfilter #%zu going to transition %f%% of our particles during our injection", buf, 0x16u);
        }

        ++v38;
        v36 = *(a1 + 8);
        v37 += 72;
      }

      while (v38 < 0x8E38E38E38E38E39 * ((*(a1 + 16) - v36) >> 3));
    }
  }

  v42 = *(a1 + 456);
  if (v42 <= a2)
  {
    v42 = a2;
  }

  *(a1 + 456) = v42;
  v43 = *(a1 + 8);
  v44 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v44 - v43) >> 3))
  {
    sub_1000474A4(buf, "");
    sub_100383A74(&v74, buf);
    sub_10003F5D0(&v74);
  }

  if (v44 != v43)
  {
    operator new();
  }

  memset(&v70, 0, sizeof(v70));
  sub_1001F7A28(&v70, 0);
  v46 = *(a1 + 8);
  v45 = *(a1 + 16);
  v47 = v45 - v46;
  if (v45 != v46)
  {
    v48 = 0x8E38E38E38E38E39 * (v47 >> 3);
    v49 = 0xC71C71C71C71C748 * (v47 >> 3) - 376;
    do
    {
      if (*(a1 + 72) != 1)
      {
        LOBYTE(v74) = 0;
        sub_1001F7B88(a1, a2, a3, a4, &v74, buf);
        size = v70.__r_.__value_.__l.__size_;
        if (v70.__r_.__value_.__l.__size_ >= v70.__r_.__value_.__r.__words[2])
        {
          goto LABEL_95;
        }

        goto LABEL_94;
      }

      v50 = *(a1 + 88);
      v51 = sub_100251348(*(a1 + 280));
      v52 = sub_1002512E8(*v68);
      v53 = sub_10017226C(a1 + 80);
      v54 = sub_100251434(*v68);
      v55 = sub_100118234(*(a1 + 8) + v47 - 72);
      v56 = sub_1002330A0((v55 + 8));
      v57 = (a2 - v50) / 1000000000.0;
      if (v57 >= v51 || ((v52 ^ 1) & 1) != 0)
      {
        v59 = v57 >= v51 || v53;
        if (v59)
        {
          goto LABEL_93;
        }

        v54 = 0;
      }

      else
      {
        if (!v56)
        {
          v54 = 0;
        }

        if (v53)
        {
          if (v54)
          {
            goto LABEL_91;
          }

          goto LABEL_93;
        }
      }

      if ((sub_10025148C(*v68) | v54))
      {
LABEL_91:
        LOBYTE(v74) = 0;
        sub_1001300D0(&v75, a1 + 80);
        LOBYTE(v74) = 1;
        sub_1001F7B88(a1, a2, a3, a4, &v74, buf);
        size = v70.__r_.__value_.__l.__size_;
        if (v70.__r_.__value_.__l.__size_ >= v70.__r_.__value_.__r.__words[2])
        {
          goto LABEL_95;
        }

        goto LABEL_94;
      }

LABEL_93:
      LOBYTE(v74) = 0;
      sub_1001F7B88(a1, a2, a3, a4, &v74, buf);
      size = v70.__r_.__value_.__l.__size_;
      if (v70.__r_.__value_.__l.__size_ >= v70.__r_.__value_.__r.__words[2])
      {
LABEL_95:
        v60 = sub_1001FD378(&v70, buf);
        goto LABEL_96;
      }

LABEL_94:
      sub_1001FD544(v70.__r_.__value_.__l.__size_, buf);
      v60 = size + 392;
LABEL_96:
      v70.__r_.__value_.__l.__size_ = v60;
      sub_1001F9864(buf);
      if (v74 == 1)
      {
        sub_10012E8E4(&v75);
      }

      v61 = *(a1 + 8);
      if (v48 < 0x8E38E38E38E38E39 * ((*(a1 + 16) - v61) >> 3))
      {
        v62 = v70.__r_.__value_.__r.__words[0];
        *(v62 + v49) = sub_100118234(v61 + v47) + 8;
      }

      v49 -= 392;
      v47 -= 72;
      --v48;
    }

    while (v48);
  }

  v63 = v70.__r_.__value_.__r.__words[0];
  if (v70.__r_.__value_.__r.__words[0])
  {
    v64 = v70.__r_.__value_.__l.__size_;
    v65 = v70.__r_.__value_.__r.__words[0];
    if (v70.__r_.__value_.__l.__size_ != v70.__r_.__value_.__r.__words[0])
    {
      do
      {
        v64 = sub_1001F9864(v64 - 392);
      }

      while (v64 != v63);
      v65 = v70.__r_.__value_.__r.__words[0];
    }

    v70.__r_.__value_.__l.__size_ = v63;
    operator delete(v65);
  }
}

void sub_1001F7720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (a13)
  {
    operator delete(a13);
    if (!a16)
    {
      goto LABEL_8;
    }
  }

  else if (!a16)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  goto LABEL_8;
}

void *sub_1001F7A28(void *result, unint64_t a2)
{
  if (0x7D6343EB1A1F58D1 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xA72F05397829CCLL)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_1001F7B88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v16 = 0;
  v17 = 0;
  v8 = *(a1 + 64);
  v14 = *(a1 + 56);
  v15 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10025DEA8(a6, a3, a2, &v16, &v14, a5);
  v9 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v12 = *a4;
  v11 = a4[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a6[1];
  *a6 = v12;
  a6[1] = v11;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

void sub_1001F7CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002BB1C(&a9);
  sub_10002BB1C(&a11);
  _Unwind_Resume(a1);
}

void sub_1001F7D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6)
{
  sub_100182920(a2, &v32);
  if (v32 == v33)
  {
    if (qword_10045B050 != -1)
    {
      sub_100385B9C();
    }

    v11 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v27[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "No viable locations for positioning", v27, 2u);
    }
  }

  v12 = (v33 - v32) >> 4;
  if (*(a1 + 464) != v12)
  {
    sub_10004DAA4(v27);
    v13 = sub_10003C2E4(&v28, "WiFi measurement on frequencies ", 32);
    sub_1001FA624(a4, &buf);
    sub_1001FD6C4(&buf);
    if (v36 >= 0)
    {
      v14 = &v34;
    }

    else
    {
      v14 = v34;
    }

    if (v36 >= 0)
    {
      v15 = HIBYTE(v36);
    }

    else
    {
      v15 = v35;
    }

    v16 = sub_10003C2E4(v13, v14, v15);
    if (SHIBYTE(v36) < 0)
    {
      v17 = v16;
      operator delete(v34);
      v16 = v17;
    }

    sub_10003C2E4(v16, " that are indicative of ", 24);
    v18 = std::ostream::operator<<();
    sub_10003C2E4(v18, " possible locations", 19);
    if (buf)
    {
      *(&buf + 1) = buf;
      operator delete(buf);
    }

    if (qword_10045B050 != -1)
    {
      sub_100385B9C();
    }

    v19 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      std::stringbuf::str();
      v20 = v36 >= 0 ? &v34 : v34;
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(v34);
      }
    }

    v28 = v21;
    if (v31 < 0)
    {
      operator delete(v30[7].__locale_);
    }

    std::locale::~locale(v30);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    v12 = (v33 - v32) >> 4;
  }

  *(a1 + 464) = v12;
  sub_10021127C(&v32, v27);
  if ((*(**(a1 + 360) + 48))(*(a1 + 360)))
  {
    v22 = *(a1 + 8);
    if (v22 != *(a1 + 16))
    {
      v34 = v27;
      v35 = a1 + 320;
      v36 = a3;
      sub_100235AD8(v22, &v34, a4, a5, a6);
    }
  }

  v23 = v32;
  if (v32)
  {
    v24 = v33;
    v25 = v32;
    if (v33 != v32)
    {
      do
      {
        v26 = *(v24 - 1);
        if (v26)
        {
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
          }
        }

        v24 -= 2;
      }

      while (v24 != v23);
      v25 = v32;
    }

    v33 = v23;
    operator delete(v25);
  }
}

void sub_1001F81A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1001D8FE0(&a9);
  sub_100048F1C((v9 - 160));
  _Unwind_Resume(a1);
}

void sub_1001F823C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  v5 = a1 + 80;
  if (v4 == 1)
  {
    sub_1001300D4(v5, a2);
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v7 == v6)
    {
      return;
    }
  }

  else
  {
    sub_1001300D0(v5, a2);
    *(a1 + 72) = 1;
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v7 == v6)
    {
      return;
    }
  }

  do
  {
    sub_100235DE0(v7, a2);
    v7 += 9;
  }

  while (v7 != v6);
}

uint64_t sub_1001F82BC(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (v1[2])
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1001F82F4(void *a1, void *a2, uint64_t a3)
{
  v6 = a1[1];
  for (i = a1[2]; v6 != i; v6 += 9)
  {
    sub_100235DE8(v6, a2, a3);
  }

  result = a1[4];
  if (result)
  {

    return sub_100235DE8(result, a2, a3);
  }

  return result;
}

uint64_t sub_1001F8388(void *a1, uint64_t a2)
{
  v4 = a1[1];
  for (i = a1[2]; v4 != i; v4 += 72)
  {
    v6 = sub_100118234(v4);
    sub_1001EB804(v6, *(a2 + 16) - 250000000, *(a2 + 16));
  }

  v7 = a1[4];
  if (v7)
  {
    sub_100235DF8(v7, a2);
  }

  v9 = a1[1];
  v8 = a1[2];
  if (v9 == v8)
  {
    return 0;
  }

  v10 = 0;
  do
  {
    v10 |= sub_100235DF8(v9, a2);
    v9 += 72;
  }

  while (v9 != v8);
  return v10 & 1;
}

uint64_t sub_1001F844C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  v10 = *(result + 8);
  for (i = *(result + 16); v10 != i; v10 += 9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v14[2] = a5;
    v14[3] = a4;
    result = sub_100235E04(v10, v14);
  }

  if (*(v9 + 32))
  {
    if (sub_100251290(*(v9 + 280)))
    {
      sub_1001F8538(v9, a2, a3, a4, v14);
    }

    else
    {
      sub_1001233E0(v14, a4);
    }

    v12 = *(v9 + 32);
    v13[0] = a2;
    v13[1] = a3;
    v13[2] = a5;
    v13[3] = v14;
    sub_100235E04(v12, v13);
    return nullsub_66(v14);
  }

  return result;
}

void sub_1001F8524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nullsub_66(va);
  _Unwind_Resume(a1);
}

void sub_1001F8538(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!*(a1 + 512))
  {
    goto LABEL_22;
  }

  v10 = *(*(*(a1 + 480) + ((*(a1 + 504) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 504) & 0x7FLL) + 16);
  sub_10025122C(*(a1 + 280), buf);
  v11 = *&v48[1];
  sub_10014B44C(buf);
  if ((a2 - v10) * 0.000000001 <= v11)
  {
    goto LABEL_22;
  }

  v12 = *(a1 + 480);
  v13 = *(a1 + 488);
  if (v13 == v12)
  {
    *(a1 + 512) = 0;
    v20 = 0;
  }

  else
  {
    v14 = *(a1 + 504);
    v15 = &v12[v14 >> 7];
    v16 = *(v12 + (((*(a1 + 512) + v14) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 512) + v14) & 0x7F);
    if (*v15 + 32 * (v14 & 0x7F) != v16)
    {
      v17 = (*v15 + 32 * (v14 & 0x7F));
      do
      {
        v18 = *v17;
        v17 += 4;
        (*v18)();
        if (v17 - *v15 == 4096)
        {
          v19 = v15[1];
          ++v15;
          v17 = v19;
        }
      }

      while (v17 != v16);
      v12 = *(a1 + 480);
      v13 = *(a1 + 488);
    }

    *(a1 + 512) = 0;
    v20 = v13 - v12;
    if (v20 >= 3)
    {
      do
      {
        operator delete(*v12);
        v21 = *(a1 + 488);
        v12 = (*(a1 + 480) + 8);
        *(a1 + 480) = v12;
        v20 = (v21 - v12) >> 3;
      }

      while (v20 > 2);
    }
  }

  if (v20 == 1)
  {
    v22 = 64;
    goto LABEL_17;
  }

  if (v20 == 2)
  {
    v22 = 128;
LABEL_17:
    *(a1 + 504) = v22;
  }

  if (qword_10045B050 != -1)
  {
    sub_100385B9C();
  }

  v23 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v24 = *(*(*(a1 + 480) + ((*(a1 + 504) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 504) & 0x7FLL) + 16);
    *buf = 134218240;
    v47 = v24;
    LOWORD(v48[0]) = 2048;
    *(v48 + 2) = a2;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Clearing DR floor transition signal buffer because the oldest FloorTransitionState was stashed at %lld and it's %lld now!", buf, 0x16u);
  }

LABEL_22:
  v25 = *(a4 + 12);
  if (v25 <= 1)
  {
    sub_1001233E0(buf, a4);
    v26 = *(a1 + 480);
    v27 = *(a1 + 488);
    v28 = 16 * (v27 - v26) - 1;
    *&v48[1] = a2;
    if (v27 == v26)
    {
      v28 = 0;
    }

    if (v28 == *(a1 + 512) + *(a1 + 504))
    {
      sub_1001FD914((a1 + 472));
      v26 = *(a1 + 480);
      v27 = *(a1 + 488);
    }

    if (v27 == v26)
    {
      v30 = 0;
    }

    else
    {
      v29 = *(a1 + 512) + *(a1 + 504);
      v30 = *(v26 + ((v29 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v29 & 0x7F);
    }

    sub_1001233E0(v30, buf);
    ++*(a1 + 512);
    if (qword_10045B050 != -1)
    {
      sub_100385B9C();
    }

    v31 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      v32 = "DOWN";
      v33 = *(a4 + 16);
      if (!*(a4 + 12))
      {
        v32 = "UP";
      }

      v40 = 136315650;
      v41 = v32;
      v42 = 2048;
      v43 = v33;
      v44 = 2048;
      v45 = a2;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Stashing floor transition signal: %s where the sensor event timestamp is %lld at %lld", &v40, 0x20u);
    }

    nullsub_66(buf);
    v25 = *(a4 + 12);
  }

  v34 = sub_10025D930(a3, *(a4 + 8), v25);
  sub_1001233E0(a5, a4);
  if (v34 && *(a1 + 512))
  {
    sub_1001233E0(buf, *(*(a1 + 480) + ((*(a1 + 504) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 504) & 0x7FLL));
    *(a5 + 12) = v48[0];
    if (qword_10045B050 != -1)
    {
      sub_100385B9C();
    }

    v35 = (a1 + 504);
    v36 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      v37 = "DOWN";
      if (!v48[0])
      {
        v37 = "UP";
      }

      v40 = 136315650;
      v41 = v37;
      v42 = 2048;
      v43 = *&v48[1];
      v44 = 2048;
      v45 = a2;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Popping floor transition signal: %s stashed at %lld and popped at %lld", &v40, 0x20u);
    }

    v38 = (*(*(a1 + 480) + ((*(a1 + 504) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 504) & 0x7FLL));
    (**v38)(v38);
    v39 = vaddq_s64(*v35, xmmword_1003D1DF0);
    *v35 = v39;
    if (v39.i64[0] >= 0x100uLL)
    {
      operator delete(**(a1 + 480));
      *(a1 + 480) += 8;
      *(a1 + 504) -= 128;
    }

    nullsub_66(buf);
  }
}

void sub_1001F8A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nullsub_66(va);
  _Unwind_Resume(a1);
}

void sub_1001F8A8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100251AE0(*(a1 + 280));
  sub_100251AF0(*(a1 + 280));
  sub_1001F3D88(a3, a2);
}

void sub_1001F8B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1001DF830(v14);
    _Unwind_Resume(a1);
  }

  sub_1001DF830(v14);
  _Unwind_Resume(a1);
}

void sub_1001F8B8C(uint64_t *a1, uint64_t a2)
{
  if (a1[1] != a1[2])
  {
    if ((sub_1002517D4(a1[35]) & 1) != 0 || !sub_100232F8C(a2))
    {
      sub_1001F8A8C(a1, a1[1], &v6);
    }

    v4 = a1[1];
    if (0x8E38E38E38E38E39 * ((a1[2] - v4) >> 3) >= 2)
    {
      sub_1001F8A8C(a1, v4 + 72, &v6);
    }

    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v6, "The above for loop always returns. How did we get here?");
    std::runtime_error::runtime_error(&buf, &v6);
    buf.__vftable = &off_1004338D0;
    sub_10010A984(v5);
  }

  __cxa_allocate_exception(0x40uLL);
  sub_1000474A4(&v6, "The caller is requesting configuration state while uninitialized.");
  std::runtime_error::runtime_error(&buf, &v6);
  buf.__vftable = &off_1004336A0;
  sub_10010A984(v7);
}

void sub_1001F8F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 - 104);
  if (v20)
  {
    *(v18 - 96) = v20;
    operator delete(v20);
  }

  std::runtime_error::~runtime_error((v18 - 80));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001F90A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001DF830(va);
  _Unwind_Resume(a1);
}

void *sub_1001F90BC@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = result[1];
  if (result[2] != v4)
  {
    v6 = result;
    v9 = sub_100251AE0(result[35]);
    v8 = sub_100251AF0(v6[35]);
    v7 = 0;
    if (a3[1] < a3[2])
    {
      sub_1001F3D88(a3[1], v4);
    }

    sub_1001FDCDC(a3, v4, a2, &v9, &v8, &v7);
  }

  return result;
}

void sub_1001F91E0(_Unwind_Exception *a1)
{
  v1[1] = v2;
  sub_1001DE8B0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F9220@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(result + 32);
  if (v3)
  {
    v5 = result;
    v9 = sub_100251AE0(*(result + 280));
    v8 = sub_100251AF0(*(v5 + 280));
    v7 = 2;
    if (a3[1] < a3[2])
    {
      sub_1001F3D88(a3[1], v3);
    }

    sub_1001FDFF4(a3, v3, a2, &v9, &v8, &v7);
  }

  return result;
}

void sub_1001F9308(_Unwind_Exception *a1)
{
  v1[1] = v2;
  sub_1001DE8B0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F9348@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v4 = *(result + 8);
  v3 = *(result + 16);
  v18 = v3;
  while (v4 != v3)
  {
    result = sub_100118234(v4);
    v5 = *(result + 8);
    v6 = *(result + 16);
    while (v5 != v6)
    {
      v7 = (*(**(v5 + 56) + 64))(*(v5 + 56));
      if (!sub_1001EDFC8(a2, v7))
      {
        result = sub_1001FC3F4(a2, v7);
        goto LABEL_7;
      }

      v8 = sub_1001183C0(&__p, v7);
      v9 = *(a2 + 8);
      if (!*&v9)
      {
        goto LABEL_36;
      }

      v10 = v8;
      v11 = vcnt_s8(v9);
      v11.i16[0] = vaddlv_u8(v11);
      if (v11.u32[0] > 1uLL)
      {
        v12 = v8;
        if (v8 >= *&v9)
        {
          v12 = v8 % *&v9;
        }
      }

      else
      {
        v12 = (*&v9 - 1) & v8;
      }

      v13 = *(*a2 + 8 * v12);
      if (!v13 || (v14 = *v13) == 0)
      {
LABEL_36:
        sub_10001C6D4("unordered_map::at: key not found");
      }

      if (v11.u32[0] < 2uLL)
      {
        v15 = *&v9 - 1;
        while (1)
        {
          v16 = v14[1];
          if (v16 == v10)
          {
            result = sub_1001182C8(v14 + 2, v7);
            if (result)
            {
              goto LABEL_22;
            }
          }

          else if ((v16 & v15) != v12)
          {
            goto LABEL_36;
          }

          v14 = *v14;
          if (!v14)
          {
            goto LABEL_36;
          }
        }
      }

      while (1)
      {
        v17 = v14[1];
        if (v17 == v10)
        {
          break;
        }

        if (v17 >= *&v9)
        {
          v17 %= *&v9;
        }

        if (v17 != v12)
        {
          goto LABEL_36;
        }

LABEL_29:
        v14 = *v14;
        if (!v14)
        {
          goto LABEL_36;
        }
      }

      result = sub_1001182C8(v14 + 2, v7);
      if ((result & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_22:
      if (*(v5 + 56) != v14[4])
      {
        v21 = 0;
        LOBYTE(v20) = 0;
        sub_1001FC3A4("Two particles with the same floorKey must have the same floorEnv", &__p);
        sub_1000E661C(&v20, &__p, 1);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v21 < 0)
        {
          operator delete(v20);
        }

        sub_10003F5D0(&v19);
      }

LABEL_7:
      v5 += 80;
    }

    v4 += 72;
    v3 = v18;
  }

  return result;
}

void sub_1001F95DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1001E1838(v22);
    _Unwind_Resume(a1);
  }

  sub_1001E1838(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F9648(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return 1;
  }

  do
  {
    result = *(sub_100118234(v1) + 120);
    v1 += 72;
  }

  while (result == 1 && v1 != v2);
  return result;
}

uint64_t sub_1001F969C(uint64_t result)
{
  v1 = *(result + 8);
  for (i = *(result + 16); v1 != i; v1 += 72)
  {
    v3 = sub_100118234(v1);
    result = nullsub_35(v3);
  }

  return result;
}

uint64_t sub_1001F96EC(void *a1, uint64_t a2)
{
  v4 = a1[45];
  if (!v4[2] || ((*(*v4 + 40))(v4) & 1) == 0)
  {
    sub_1003846E0(__p, &v12);
    sub_10003F5D0(__p);
  }

  v6 = a1[1];
  v5 = a1[2];
  if (v6 == v5)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v8 = sub_100118234(v6);
    v7 |= sub_1001EB084(v8, a2, v9);
    v6 += 72;
  }

  while (v6 != v5);
  return v7 & 1;
}

void sub_1001F97CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001F97E8(uint64_t a1, int a2)
{
  result = sub_1001825C0(a1 + 416, a2);
  if (result)
  {

    sub_1001F5C64();
  }

  return result;
}

uint64_t sub_1001F9864(uint64_t a1)
{
  v2 = *(a1 + 368);
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

  v4 = *(a1 + 352);
  *(a1 + 352) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  if (*(a1 + 288) != 1)
  {
    if (*(a1 + 80) != 1)
    {
      goto LABEL_7;
    }

LABEL_25:
    sub_10012E8E4(a1 + 88);
    *(a1 + 80) = 0;
    v5 = *(a1 + 72);
    if (!v5)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v6 = *(a1 + 320);
  if (v6)
  {
    *(a1 + 328) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 296);
  if (v7)
  {
    v8 = *(a1 + 304);
    v9 = *(a1 + 296);
    if (v8 != v7)
    {
      v10 = v8 - 168;
      do
      {
        v13 = *(v8 - 176);
        if (v13 == v13 >> 31)
        {
          if (*(v8 - 128) == 1)
          {
            *(v8 - 128) = 0;
          }
        }

        else
        {
          v11 = *(v8 - 168);
          if (v13 < 0)
          {
            if (v11)
            {
              (*(*v11 + 8))(v11);
            }
          }

          else
          {
            v12 = *(v8 - 168);
            (*v11)(v8 - 168);
          }
        }

        v8 -= 208;
        v10 -= 208;
      }

      while (v8 != v7);
      v9 = *(a1 + 296);
    }

    *(a1 + 304) = v7;
    operator delete(v9);
  }

  *(a1 + 288) = 0;
  if (*(a1 + 80) == 1)
  {
    goto LABEL_25;
  }

LABEL_7:
  v5 = *(a1 + 72);
  if (!v5)
  {
    goto LABEL_28;
  }

LABEL_26:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

LABEL_28:
  v14 = *(a1 + 48);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *(a1 + 32);
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(a1 + 8);
  if (!v16 || atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v16->__on_zero_shared)(v16);
  std::__shared_weak_count::__release_weak(v16);
  return a1;
}

uint64_t sub_1001F9AF8(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1001F9B44(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      *(a1 + 40) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 8);
      if (v4 != v3)
      {
        v6 = v4 - 168;
        do
        {
          v9 = *(v4 - 176);
          if (v9 == v9 >> 31)
          {
            if (*(v4 - 128) == 1)
            {
              *(v4 - 128) = 0;
            }
          }

          else
          {
            v7 = *(v4 - 168);
            if (v9 < 0)
            {
              if (v7)
              {
                (*(*v7 + 8))(v7);
              }
            }

            else
            {
              v8 = *(v4 - 168);
              (*v7)(v4 - 168);
            }
          }

          v4 -= 208;
          v6 -= 208;
        }

        while (v4 != v3);
        v5 = *(a1 + 8);
      }

      *(a1 + 16) = v3;
      operator delete(v5);
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1001F9C4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v7;
  v8 = *(a2 + 72);
  *(a1 + 72) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    sub_1001300D0(a1 + 88, a2 + 88);
    *(a1 + 80) = 1;
  }

  *(a1 + 288) = 0;
  if (*(a2 + 288) == 1)
  {
    sub_1001F9E94(a1 + 288, (a2 + 296));
  }

  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = *(a2 + 384);
  prime = *(a2 + 360);
  if (prime == 1)
  {
    prime = 2;
LABEL_29:
    sub_10000FE58(a1 + 352, prime);
    goto LABEL_30;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 360));
    v10 = *(a1 + 360);
    v11 = prime >= *&v10;
    if (prime > *&v10)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v10 = 0;
    v11 = 1;
    if (prime)
    {
      goto LABEL_29;
    }
  }

  if (!v11)
  {
    v12 = vcvtps_u32_f32(*(a1 + 376) / *(a1 + 384));
    if (*&v10 < 3uLL || (v13 = vcnt_s8(v10), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
    {
      v12 = std::__next_prime(v12);
    }

    else
    {
      v14 = 1 << -__clz(v12 - 1);
      if (v12 >= 2)
      {
        v12 = v14;
      }
    }

    if (prime <= v12)
    {
      prime = v12;
    }

    if (prime < *&v10)
    {
      goto LABEL_29;
    }
  }

LABEL_30:
  for (i = *(a2 + 368); i; i = *i)
  {
    sub_1001F9F8C((a1 + 352), (i + 2));
  }

  return a1;
}

void sub_1001F9E2C(_Unwind_Exception *a1)
{
  if (*(v1 + 80) == 1)
  {
    sub_10012E8E4(v1 + 88);
    *(v1 + 80) = 0;
  }

  sub_10002BB1C(v3);
  sub_10002BB1C(v2);
  sub_10002BB1C(v1 + 24);
  sub_10002BB1C(v1);
  _Unwind_Resume(a1);
}

void sub_1001F9E94(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_1001CFBC8(a1 + 8, *a2, a2[1], 0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 4));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = a2[3];
  v4 = a2[4];
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  *(a1 + 56) = a2[6];
  *a1 = 1;
}

void sub_1001F9F68(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  sub_1001CE6F4(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001F9F8C(void *a1, uint64_t a2)
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

unint64_t sub_1001FA420(uint64_t a1, unsigned __int8 *a2)
{
  v2 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[8]) ^ ((0xC6A4A7935BD1E995 * a2[8]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[7]) ^ ((0xC6A4A7935BD1E995 * a2[7]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[6]) ^ ((0xC6A4A7935BD1E995 * a2[6]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[5]) ^ ((0xC6A4A7935BD1E995 * a2[5]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[4]) ^ ((0xC6A4A7935BD1E995 * a2[4]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[3]) ^ ((0xC6A4A7935BD1E995 * a2[3]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[2]) ^ ((0xC6A4A7935BD1E995 * a2[2]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[1]) ^ ((0xC6A4A7935BD1E995 * a2[1]) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * *a2) ^ ((0xC6A4A7935BD1E995 * *a2) >> 47)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u;
  v3 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[17]) ^ ((0xC6A4A7935BD1E995 * a2[17]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[16]) ^ ((0xC6A4A7935BD1E995 * a2[16]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[15]) ^ ((0xC6A4A7935BD1E995 * a2[15]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[14]) ^ ((0xC6A4A7935BD1E995 * a2[14]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[13]) ^ ((0xC6A4A7935BD1E995 * a2[13]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[12]) ^ ((0xC6A4A7935BD1E995 * a2[12]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[11]) ^ ((0xC6A4A7935BD1E995 * a2[11]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[10]) ^ ((0xC6A4A7935BD1E995 * a2[10]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[9]) ^ ((0xC6A4A7935BD1E995 * a2[9]) >> 47))) ^ v2) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u;
  return 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[19]) ^ ((0xC6A4A7935BD1E995 * a2[19]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[18]) ^ ((0xC6A4A7935BD1E995 * a2[18]) >> 47))) ^ v3) + 3864292196u)) + 3864292196u;
}

uint64_t sub_1001FA624@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *a2 = 0u;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *(v3 + 32);
      if (v5 == v5 >> 31)
      {
        v6 = *(v3 + 120);
      }

      else
      {
        if (v5 >= 0)
        {
          v7 = v3 + 40;
        }

        else
        {
          v7 = *(v3 + 40);
        }

        v6 = *(v7 + 96) + 2402;
      }

      v16 = v6;
      sub_10000A688(a2, &v16);
      v3 += 208;
    }

    while (v3 != v4);
    v8 = *a2;
  }

  result = std::__sort<std::__less<int,int> &,int *>();
  v10 = *(a2 + 8);
  if (*a2 != v10)
  {
    v11 = (*a2 + 4);
    while (v11 != v10)
    {
      v12 = *(v11 - 1);
      v13 = *v11++;
      if (v12 == v13)
      {
        v14 = v11 - 2;
        while (v11 != v10)
        {
          v15 = v12;
          v12 = *v11;
          if (v15 != *v11)
          {
            v14[1] = v12;
            ++v14;
          }

          ++v11;
        }

        if (v14 + 1 != v10)
        {
          *(a2 + 8) = v14 + 1;
        }

        return result;
      }
    }
  }

  return result;
}

void sub_1001FA74C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001FA76C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_10000FE58(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1001FA9FC(a1, i + 2);
  }

  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = *(a2 + 72);
  v11 = *(a2 + 48);
  if (v11 == 1)
  {
    v11 = 2;
LABEL_36:
    sub_10000FE58(a1 + 40, v11);
    goto LABEL_37;
  }

  if ((v11 & (v11 - 1)) != 0)
  {
    v11 = std::__next_prime(*(a2 + 48));
    v12 = *(a1 + 48);
    v13 = v11 >= *&v12;
    if (v11 > *&v12)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v12 = 0;
    v13 = 1;
    if (v11)
    {
      goto LABEL_36;
    }
  }

  if (!v13)
  {
    v14 = vcvtps_u32_f32(*(a1 + 64) / *(a1 + 72));
    if (*&v12 < 3uLL || (v15 = vcnt_s8(v12), v15.i16[0] = vaddlv_u8(v15), v15.u32[0] > 1uLL))
    {
      v14 = std::__next_prime(v14);
    }

    else
    {
      v16 = 1 << -__clz(v14 - 1);
      if (v14 >= 2)
      {
        v14 = v16;
      }
    }

    if (v11 <= v14)
    {
      v11 = v14;
    }

    if (v11 < *&v12)
    {
      goto LABEL_36;
    }
  }

LABEL_37:
  for (j = *(a2 + 56); j; j = *j)
  {
    sub_1001FAFAC((a1 + 40), j + 4);
  }

  sub_1001104E8((a1 + 80), (a2 + 80));
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void sub_1001FA998(_Unwind_Exception *a1)
{
  sub_1001FB82C(v2);
  sub_1001FB8B0(v1);
  _Unwind_Resume(a1);
}

void sub_1001FA9B4(_Unwind_Exception *a1)
{
  sub_1001FB82C(v2);
  sub_1001FB8B0(v1);
  _Unwind_Resume(a1);
}

void *sub_1001FA9FC(void *a1, uint64_t *a2)
{
  v4 = (*(**a2 + 64))();
  v5 = sub_1001183C0(&v15, v4);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v7)
    {
      v9 = v5 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (result = *v10) == 0)
  {
LABEL_23:
    operator new();
  }

  v12 = *a2;
  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = result[1];
      if (v14 == v6)
      {
        if (result[2] == v12)
        {
          return result;
        }
      }

      else if ((v14 & (*&v7 - 1)) != v9)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v13 = result[1];
    if (v13 == v6)
    {
      break;
    }

    if (v13 >= *&v7)
    {
      v13 %= *&v7;
    }

    if (v13 != v9)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (result[2] != v12)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_1001FADD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001FAE10(va);
  _Unwind_Resume(a1);
}

void sub_1001FADE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 32) = v5;
    operator delete(v5);
  }

  sub_1001FAE10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FAE10(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1001FAE64(*(a1 + 8), v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1001FAE64(uint64_t a1, void *a2)
{
  v3 = a2[4];
  if (v3)
  {
    v4 = a2[5];
    v5 = a2[4];
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 16);
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 80;
      }

      while (v4 != v3);
      v5 = a2[4];
    }

    a2[5] = v3;
    operator delete(v5);
  }

  v7 = a2[1];
  if (v7)
  {
    a2[2] = v7;

    operator delete(v7);
  }
}

void **sub_1001FAF44(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1001FAE64(a1, v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_1001FAFAC(void *a1, int *a2)
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
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    v10 = *a2;
    sub_1001FB2C4();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (*(result + 4) == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_1001FB2B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001FB44C(va);
  _Unwind_Resume(a1);
}

void sub_1001FB42C(_Unwind_Exception *a1)
{
  sub_1001F9AF8(v2);
  sub_1001FB44C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FB44C(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[5];
      if (v3)
      {
        do
        {
          v4 = *v3;
          operator delete(v3);
          v3 = v4;
        }

        while (v4);
      }

      v5 = v1[3];
      v1[3] = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *sub_1001FB4C0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
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
        if (v10[2] == v2)
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

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

uint64_t sub_1001FB82C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[5];
      if (v6)
      {
        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        operator delete(v8);
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