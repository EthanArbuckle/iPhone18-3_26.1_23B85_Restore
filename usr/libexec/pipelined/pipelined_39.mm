void sub_1002703CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error((v29 - 48));
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void sub_100270504(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v7 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v10 = *a7;
  v11 = v7;
  *a7 = 0;
  *(a7 + 1) = 0;
  (*(*a1 + 72))(a1, &v11, a3, a4, a5, a6, &v10);
  v8 = *(&v10 + 1);
  if (*(&v10 + 1) && !atomic_fetch_add((*(&v10 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(&v11 + 1);
  if (*(&v11 + 1))
  {
    if (!atomic_fetch_add((*(&v11 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void sub_100270608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002BB1C(&a9);
  sub_10002BB1C(&a11);
  _Unwind_Resume(a1);
}

void sub_100270644(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100445180;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002707C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_10002BB1C(&a15);
  sub_10014C254(&a9);
  operator delete();
}

void *sub_1002708FC(void *a1)
{
  *a1 = off_100438CA0;
  v1 = a1[8];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  v3 = a1;
  sub_10014C254((a1 + 1));
  return v3;
}

void sub_100270994(void *a1)
{
  *a1 = off_100438CA0;
  v1 = a1[8];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  sub_10014C254((a1 + 1));

  operator delete();
}

void sub_100270A78(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100445298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100270B14(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004452E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100270E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002BB1C(&a9);
  sub_10002BB1C(&a11);
  operator delete();
}

void sub_100270ECC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004453B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10027139C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002713E0(va);
  _Unwind_Resume(a1);
}

void sub_1002713B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1002713E0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002713E0(uint64_t result)
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

void sub_10027148C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002714FC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10027156C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = off_10043D6F8;
  *(a4 + 8) = 0u;
  v31 = (a4 + 8);
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 64) &= 0xF8u;
  *(a4 + 56) = a3[7];
  v5 = a3[1];
  if (a3[2] != v5)
  {
    v7 = result;
    for (i = 0; i < (a3[2] - v5) >> 3; ++i)
    {
      v39 = 0;
      v40 = 0;
      v41 &= 0xFCu;
      v10 = *(v5 + 8 * i);
      v38 = off_10043DB08;
      v39 = v10;
      v40 = *(a3[4] + 8 * i);
      sub_10012D378(v33, &v38);
      sub_1000B90F4(a2, v33, v34);
      sub_10012DA9C(v42, v34);
      sub_1000B9228(v7 + 72, v42, v43);
      sub_1000B93B4(v43, v35);
      nullsub_76(v42);
      nullsub_76(v34);
      nullsub_75(v33);
      v12 = *(a4 + 16);
      v11 = *(a4 + 24);
      if (v12 >= v11)
      {
        v14 = *v31;
        v15 = v12 - *v31;
        v16 = v15 >> 3;
        v17 = (v15 >> 3) + 1;
        if (v17 >> 61)
        {
          goto LABEL_31;
        }

        v18 = v11 - v14;
        if (v18 >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (!(v19 >> 61))
          {
            operator new();
          }

LABEL_32:
          sub_10000D444();
        }

        *(8 * v16) = v36;
        v13 = 8 * v16 + 8;
        memcpy(0, v14, v15);
        *(a4 + 8) = 0;
        *(a4 + 16) = v13;
        *(a4 + 24) = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v12 = v36;
        v13 = (v12 + 8);
      }

      *(a4 + 16) = v13;
      v21 = *(a4 + 40);
      v20 = *(a4 + 48);
      if (v21 < v20)
      {
        *v21 = v37;
        v9 = v21 + 8;
      }

      else
      {
        v22 = *(a4 + 32);
        v23 = v21 - v22;
        v24 = (v21 - v22) >> 3;
        v25 = v24 + 1;
        if ((v24 + 1) >> 61)
        {
LABEL_31:
          sub_10000FC84();
        }

        v26 = v20 - v22;
        if (v26 >> 2 > v25)
        {
          v25 = v26 >> 2;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          if (!(v27 >> 61))
          {
            operator new();
          }

          goto LABEL_32;
        }

        v28 = (v21 - v22) >> 3;
        v29 = (8 * v24);
        v30 = (8 * v24 - 8 * v28);
        *v29 = v37;
        v9 = v29 + 1;
        memcpy(v30, v22, v23);
        *(a4 + 32) = v30;
        *(a4 + 40) = v9;
        *(a4 + 48) = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      *(a4 + 40) = v9;
      nullsub_75(v35);
      result = nullsub_75(&v38);
      v5 = a3[1];
    }
  }

  return result;
}

void sub_100271878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  nullsub_75(va);
  nullsub_75(va1);
  sub_100119E80(v11);
  _Unwind_Resume(a1);
}

double sub_1002718E8(uint64_t a1, uint64_t a2)
{
  sub_10012DA9C(&v15, a2);
  sub_1000B9228(a1 + 72, &v15, v17);
  sub_1000B93B4(v17, v14);
  nullsub_76(&v15);
  *v17 = *&v14[8];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v4 == v3)
  {
LABEL_24:
    v18 = &off_10043FEC8;
    v15.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/throw_on_empty_input.hpp";
    v15.i64[1] = "void boost::geometry::detail::throw_on_empty_input(const Geometry &) [Geometry = boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>>]";
    v16 = 54;
    sub_10016B3C8(&v18, &v15);
  }

  v5 = *(a1 + 40);
  while (1)
  {
    if (*v5 != v5[1])
    {
      goto LABEL_10;
    }

    v6 = v5[3];
    v7 = v5[4];
    if (v6 != v7)
    {
      break;
    }

LABEL_3:
    v5 += 6;
    if (v5 == v3)
    {
      goto LABEL_24;
    }
  }

  while (*v6 == v6[1])
  {
    v6 += 3;
    if (v6 == v7)
    {
      goto LABEL_3;
    }
  }

  do
  {
LABEL_10:
    if ((sub_100272884(v17, v4) & 0x80000000) == 0)
    {
      v8 = 0.0;
      goto LABEL_13;
    }

    v4 += 48;
  }

  while (v4 != *(a1 + 48));
  v8 = sub_100272638(v17, (a1 + 40));
  v9 = 0.0;
  if (v8 > 0.0)
  {
    goto LABEL_21;
  }

LABEL_13:
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  if (v10 == v11)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8;
    do
    {
      if (sub_100272884(v17, v10) >= 1)
      {
        v12 = v10[1];
        if (v12 != *v10)
        {
          if (((v12 - *v10) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_10000FC84();
        }

        v18 = &off_10043FEC8;
        v15.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/throw_on_empty_input.hpp";
        v15.i64[1] = "void boost::geometry::detail::throw_on_empty_input(const Geometry &) [Geometry = boost::geometry::model::linestring<boost::geometry::model::d2::point_xy<double>>]";
        v16 = 54;
        sub_10016B3C8(&v18, &v15);
      }

      v10 += 6;
    }

    while (v10 != v11);
  }

LABEL_21:
  nullsub_75(v14);
  return v9;
}

void sub_100271EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nullsub_76(va);
  _Unwind_Resume(a1);
}

void sub_100271EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::exception::~exception((v9 - 88));
  nullsub_75(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_100271F80(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 1;
  }

  v3 = (a1 + 16);
  while (1)
  {
    v3 = *v3;
    result = v3 != 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_1001EDFC8(a2, v3 + 2);
    if (!v5 || !sub_1001182C8(v3 + 2, v5 + 2))
    {
      return 1;
    }
  }

  return result;
}

void sub_100271FF8(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    while (v4)
    {
      v5 = v4;
      v4 = *v4;
      v6 = v5[3];
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = v5;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        v5 = v7;
      }

      operator delete(v5);
    }

    *(a1 + 16) = 0;
    v8 = *(a1 + 8);
    if (v8)
    {
      bzero(*a1, 8 * v8);
    }

    *(a1 + 24) = 0;
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  if (v10 != v9)
  {
    do
    {
      v11 = *(v10 - 24);
      if (v11)
      {
        v12 = *(v10 - 16);
        v13 = *(v10 - 24);
        if (v12 != v11)
        {
          v14 = *(v10 - 16);
          do
          {
            v16 = *(v14 - 24);
            v14 -= 24;
            v15 = v16;
            if (v16)
            {
              *(v12 - 16) = v15;
              operator delete(v15);
            }

            v12 = v14;
          }

          while (v14 != v11);
          v13 = *(v10 - 24);
        }

        *(v10 - 16) = v11;
        operator delete(v13);
      }

      v17 = v10 - 48;
      v18 = *(v10 - 48);
      if (v18)
      {
        *(v10 - 40) = v18;
        operator delete(v18);
      }

      v10 -= 48;
    }

    while (v17 != v9);
  }

  *(a1 + 48) = v9;
  if (*a2 != a2[1])
  {
    sub_100273F34();
  }
}

void sub_100272514(_Unwind_Exception *a1)
{
  sub_1000B9C50(&STACK[0x7D0]);
  sub_10011B04C(&STACK[0x860]);
  _Unwind_Resume(a1);
}

void sub_100272544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10011B04C(va);
  sub_100273E68(&STACK[0x848]);
  _Unwind_Resume(a1);
}

void sub_100272594(_Unwind_Exception *a1)
{
  sub_1002725B0(&STACK[0x818]);
  sub_100273E68(&STACK[0x848]);
  _Unwind_Resume(a1);
}

uint64_t sub_1002725B0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      v5 = *(a1 + 32);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

double sub_100272638(double *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v36 = 0;
  *&v37 = v4;
  *(&v37 + 1) = v5;
  *&v38 = 0;
  BYTE8(v38) = 0;
  *v39 = 0;
  v39[8] = 0;
  memset(&v39[16], 0, 25);
  memset(&v39[48], 0, 25);
  sub_100273164(&v37);
  v40[4] = *&v39[32];
  v40[5] = *&v39[48];
  v40[6] = *&v39[64];
  v40[0] = v37;
  v40[1] = v38;
  v40[2] = *v39;
  v40[3] = *&v39[16];
  memset(&v42[7], 0, 25);
  *&v39[9] = *v42;
  v6 = a2[1];
  memset(&v41[7], 0, 25);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v31 = 0;
  v30 = 0;
  v32 = 0;
  v33 = 0;
  v35 = 0;
  v34 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v25 = 0;
  v24 = 0;
  *&v37 = v6;
  *(&v37 + 1) = v6;
  *&v38 = 0;
  BYTE8(v38) = 0;
  *v39 = 0;
  v39[8] = 0;
  *&v39[25] = 0u;
  *&v39[41] = *v41;
  *&v39[57] = 0u;
  sub_100272C34(a1, v40, &v37, &v22, v23, &v36);
  v7 = v24;
  if (v24 == v26)
  {
    v8 = v35;
    v7 = v34;
  }

  else
  {
    v8 = v25;
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 + 2;
  }

  v10 = v7[1];
  v11 = v9[1];
  v12 = *a1;
  v13 = a1[1];
  v14 = *v9 - *v7;
  v15 = v11 - v10;
  v16 = *a1 - *v7;
  v17 = (v11 - v10) * (v13 - v10) + v16 * v14;
  if (v17 <= 0.0)
  {
    v20 = v16 * v16 + 0.0 + (v13 - v10) * (v13 - v10);
  }

  else
  {
    v18 = v15 * v15 + v14 * v14;
    if (v18 <= v17)
    {
      v20 = (v12 - *v9) * (v12 - *v9) + 0.0 + (v13 - v11) * (v13 - v11);
    }

    else
    {
      v19 = v12 - (*v7 + v14 * (v17 / v18));
      v20 = v19 * v19 + 0.0 + (v13 - (v10 + v15 * (v17 / v18))) * (v13 - (v10 + v15 * (v17 / v18)));
    }
  }

  return sqrt(v20);
}

uint64_t sub_100272884(double *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (v3 - *a2 < 0x40)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v45) = 0;
  BYTE4(v45) = 0;
  if (v2 + 2 == v3)
  {
    return 0xFFFFFFFFLL;
  }

  do
  {
    if (!sub_10016C110(a1, v2, v2 + 2, &v45))
    {
      break;
    }

    v6 = v2 + 4;
    v2 += 2;
  }

  while (v6 != v3);
  if (LODWORD(v45))
  {
    result = 1;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if (BYTE4(v45))
  {
    return 0;
  }

  if (!LODWORD(v45))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (v9 == v8)
  {
    return 1;
  }

  v44 = result;
  while (1)
  {
    v10 = v9[1];
    v11 = (*v9 + 16);
    if (v10 - *v9 >= 0x40 && v11 != v10)
    {
      break;
    }

LABEL_13:
    v9 += 3;
    if (v9 == v8)
    {
      return result;
    }
  }

  v13 = 0;
  do
  {
    v16 = v11 - 2;
    v17 = *(v11 - 2);
    v18 = *a1;
    if (v17 == *a1)
    {
      v19 = 1;
      v20 = *v11;
      if (*v11 == v18)
      {
        goto LABEL_29;
      }
    }

    else if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v28 = fabs(v17);
      v29 = fabs(v18);
      v30 = vabdd_f64(v17, v18);
      if (v28 < v29)
      {
        v28 = v29;
      }

      if (v28 < 1.0)
      {
        v28 = 1.0;
      }

      v19 = v30 <= v28 * 2.22044605e-16;
      v20 = *v11;
      if (*v11 == v18)
      {
LABEL_29:
        v21 = 1;
        if (v19)
        {
          goto LABEL_30;
        }

LABEL_60:
        if (v19)
        {
LABEL_61:
          if (v20 <= v18)
          {
            v34 = -1;
          }

          else
          {
            v34 = 1;
          }

          if (!v19)
          {
            v16 = v11;
          }

          v35 = a1[1];
          v36 = v16[1];
          if (v35 == v36)
          {
            return 0;
          }

          goto LABEL_73;
        }

        if (v21)
        {
          if (v17 <= v18)
          {
            v34 = 1;
          }

          else
          {
            v34 = -1;
          }

          v35 = a1[1];
          v36 = v11[1];
          if (v35 == v36)
          {
            return 0;
          }

LABEL_73:
          if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v36 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v37 = fabs(v35);
            v38 = fabs(v36);
            v39 = vabdd_f64(v35, v36);
            if (v37 < v38)
            {
              v37 = v38;
            }

            if (v37 < 1.0)
            {
              v37 = 1.0;
            }

            if (v39 <= v37 * 2.22044605e-16)
            {
              return 0;
            }
          }

          if (v35 >= v36)
          {
            v14 = v34;
          }

          else
          {
            v14 = -v34;
          }

          goto LABEL_22;
        }

        goto LABEL_81;
      }
    }

    else
    {
      v19 = 0;
      v20 = *v11;
      if (*v11 == v18)
      {
        goto LABEL_29;
      }
    }

    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v31 = fabs(v20);
      v32 = fabs(v18);
      v33 = vabdd_f64(v20, v18);
      if (v31 < v32)
      {
        v31 = v32;
      }

      if (v31 < 1.0)
      {
        v31 = 1.0;
      }

      v21 = v33 <= v31 * 2.22044605e-16;
      if (v19 && v21)
      {
LABEL_30:
        v22 = a1[1];
        v23 = *(v11 - 1);
        v24 = v11[1];
        if (v23 <= v22 && v24 >= v22)
        {
          return 0;
        }

        if (v23 >= v22 && v24 <= v22)
        {
          return 0;
        }

        goto LABEL_26;
      }

      goto LABEL_60;
    }

    if (v19)
    {
      goto LABEL_61;
    }

LABEL_81:
    if (v17 < v18 && v20 > v18)
    {
      v34 = 2;
LABEL_92:
      v45 = 1.0;
      v42 = sub_10016C468(v11 - 2, v11, a1, &v45);
      if (v42 == 0.0)
      {
        return 0;
      }

      if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v43 = fabs(v42);
        if (v42 > 0.0)
        {
          v14 = 1;
        }

        else
        {
          v14 = -1;
        }

        if (v43 <= v45 * 2.22044605e-16)
        {
          return 0;
        }

        result = v44;
      }

      else
      {
        if (v42 > 0.0)
        {
          v14 = 1;
        }

        else
        {
          v14 = -1;
        }

        result = v44;
      }

LABEL_22:
      if (v34 * v14 <= 0)
      {
        v15 = 0;
      }

      else
      {
        v15 = v34;
      }

      v13 += v15;
      goto LABEL_26;
    }

    if (v17 > v18 && v20 < v18)
    {
      v34 = -2;
      goto LABEL_92;
    }

LABEL_26:
    v11 += 2;
  }

  while (v11 != v10);
  if (!v13)
  {
    v8 = *(a2 + 32);
    goto LABEL_13;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100272C34(double *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double *a6)
{
  *a5 = *a2;
  v11 = *(a2 + 8);
  *(a5 + 8) = v11;
  if (*a2 != v11)
  {
    v12 = *(a2 + 16);
    *(a5 + 25) = *(a2 + 25);
    *(a5 + 16) = v12;
    *(a5 + 48) = *(a2 + 48);
    v13 = *(a2 + 56);
    *(a5 + 56) = v13;
    if (*(a2 + 48) != v13)
    {
      v14 = *(a2 + 64);
      *(a5 + 72) = *(a2 + 72);
      *(a5 + 64) = v14;
    }

    *(a5 + 80) = *(a2 + 80);
    v15 = *(a2 + 88);
    *(a5 + 88) = v15;
    if (*(a2 + 80) != v15)
    {
      v16 = *(a2 + 96);
      *(a5 + 104) = *(a2 + 104);
      *(a5 + 96) = v16;
    }
  }

  v18 = (a5 + 16);
  v17 = *(a5 + 16);
  if (v17 == *(a5 + 32))
  {
    v19 = *(a5 + 104);
    v17 = *(a5 + 96);
  }

  else
  {
    v19 = *(a5 + 24);
  }

  if (v19)
  {
    v20 = v17;
  }

  else
  {
    v20 = v17 + 2;
  }

  v21 = v17[1];
  v22 = v20[1];
  v23 = *a1;
  v24 = a1[1];
  v25 = *v20 - *v17;
  v26 = v22 - v21;
  v27 = *a1 - *v17;
  v28 = (v22 - v21) * (v24 - v21) + v27 * v25;
  if (v28 <= 0.0)
  {
    v30 = v27 * v27 + 0.0 + (v24 - v21) * (v24 - v21);
  }

  else
  {
    v29 = v26 * v26 + v25 * v25;
    if (v29 <= v28)
    {
      v30 = (v23 - *v20) * (v23 - *v20) + 0.0 + (v24 - v22) * (v24 - v22);
    }

    else
    {
      v30 = (v23 - (*v17 + v25 * (v28 / v29))) * (v23 - (*v17 + v25 * (v28 / v29))) + 0.0 + (v24 - (v21 + v26 * (v28 / v29))) * (v24 - (v21 + v26 * (v28 / v29)));
    }
  }

  *a6 = v30;
  result = sub_10027303C(a2);
  v32 = *(a2 + 80);
  v60 = *(a2 + 64);
  v61 = v32;
  v62 = *(a2 + 96);
  v33 = *(a2 + 16);
  v57 = *a2;
  *v58 = v33;
  v34 = *(a2 + 48);
  *&v58[16] = *(a2 + 32);
  v59 = v34;
  while (1)
  {
    v35 = v57;
    if (v57 == *a3)
    {
      if (v57 == *(&v57 + 1))
      {
        return result;
      }

      v36 = *v58;
      if (*v58 == a3[2] && v61 == a3[10] && (v61 == *(&v61 + 1) || v62 == a3[12]))
      {
        return result;
      }
    }

    else
    {
      v36 = *v58;
    }

    if (v36 == *&v58[16])
    {
      v37 = BYTE8(v62);
      v36 = v62;
    }

    else
    {
      v37 = v58[8];
    }

    v38 = v37 ? v36 : v36 + 2;
    v39 = v36[1];
    v40 = v38[1];
    v41 = *a1;
    v42 = a1[1];
    v43 = *v38 - *v36;
    v44 = v40 - v39;
    v45 = *a1 - *v36;
    v46 = (v40 - v39) * (v42 - v39) + v45 * v43;
    if (v46 <= 0.0)
    {
      v48 = v45 * v45 + 0.0 + (v42 - v39) * (v42 - v39);
      if (v48 == 0.0)
      {
        break;
      }
    }

    else
    {
      v47 = v44 * v44 + v43 * v43;
      if (v47 <= v46)
      {
        v48 = (v41 - *v38) * (v41 - *v38) + 0.0 + (v42 - v40) * (v42 - v40);
        if (v48 == 0.0)
        {
          break;
        }
      }

      else
      {
        v48 = (v41 - (*v36 + v43 * (v46 / v47))) * (v41 - (*v36 + v43 * (v46 / v47))) + 0.0 + (v42 - (v39 + v44 * (v46 / v47))) * (v42 - (v39 + v44 * (v46 / v47)));
        if (v48 == 0.0)
        {
          break;
        }
      }
    }

    if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v49 = fabs(v48);
      v50 = v49 >= 1.0 ? v49 : 1.0;
      if (v49 <= v50 * 2.22044605e-16)
      {
        break;
      }
    }

    if (v48 < *a6)
    {
      *a6 = v48;
      v51 = *(&v57 + 1);
      *a5 = v35;
      *(a5 + 8) = v51;
      if (v51 != v35)
      {
        *v18 = *v58;
        *(a5 + 25) = *&v58[9];
        v52 = v59;
        *(a5 + 48) = v59;
        if (v52 != *(&v52 + 1))
        {
          *(a5 + 64) = v60;
          *(a5 + 72) = BYTE8(v60);
        }

        v53 = v61;
        *(a5 + 80) = v61;
        if (v53 != *(&v53 + 1))
        {
          *(a5 + 96) = v62;
          *(a5 + 104) = BYTE8(v62);
        }
      }
    }

    result = sub_10027303C(&v57);
  }

  *a6 = v48;
  v54 = *(&v57 + 1);
  *a5 = v35;
  *(a5 + 8) = v54;
  if (v54 != v35)
  {
    *v18 = *v58;
    *(a5 + 25) = *&v58[9];
    v55 = v59;
    *(a5 + 48) = v59;
    if (v55 != *(&v55 + 1))
    {
      *(a5 + 64) = v60;
      *(a5 + 72) = BYTE8(v60);
    }

    v56 = v61;
    *(a5 + 80) = v61;
    if (v56 != *(&v56 + 1))
    {
      *(a5 + 96) = v62;
      *(a5 + 104) = BYTE8(v62);
    }
  }

  return result;
}

uint64_t sub_10027303C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == *(result + 32))
  {
    v2 = *(result + 96) + 16;
    *(result + 96) = v2;
    v3 = *(result + 80);
    v4 = v3[1];
    v5 = -16;
    if ((v4 - *v3) < 0x11)
    {
      v5 = 0;
    }

    if (v2 == v4 + v5)
    {
      v15 = v3 + 3;
      *(result + 80) = v15;
      v16 = *(result + 88);
      if (v15 != v16)
      {
        while (1)
        {
          v17 = *v15;
          v18 = v15[1];
          v19 = v18 - *v15;
          v20 = v19 >= 0x11 ? -16 : 0;
          if (v17 != v18 + v20)
          {
            break;
          }

          v15 += 3;
          *(result + 80) = v15;
          if (v15 == v16)
          {
            goto LABEL_6;
          }
        }

        *(result + 96) = v17;
        *(result + 104) = v19 < 0x11;
      }
    }
  }

  else
  {
    v1 += 16;
    *(result + 16) = v1;
  }

LABEL_6:
  v6 = *(*result + 8);
  v8 = *(*result + 24);
  v7 = *(*result + 32);
  if (v8 != v7)
  {
    do
    {
      v9 = *v8;
      v10 = v8[1];
      v8 += 3;
      if ((v10 - v9) >= 0x11)
      {
        v11 = -16;
      }

      else
      {
        v11 = 0;
      }
    }

    while (v9 == v10 + v11 && v8 != v7);
  }

  v13 = -16;
  if ((v6 - **result) < 0x11)
  {
    v13 = 0;
  }

  v14 = v1 == v6 + v13 && *(result + 80) == v7;
  if (v14 && (v7 == *(result + 88) || !*(result + 96)))
  {
    *result += 48;
    return sub_100273164(result);
  }

  return result;
}

uint64_t sub_100273164(uint64_t result)
{
  v2 = *result;
  v1 = *(result + 8);
  if (*result == v1)
  {
    return result;
  }

  while (1)
  {
    v4 = *v2;
    v3 = v2[1];
    v6 = v2[3];
    v5 = v2[4];
    v7 = v6;
    if (v6 != v5)
    {
      break;
    }

    if ((v3 - v4) >= 0x11)
    {
      v22 = -16;
    }

    else
    {
      v22 = 0;
    }

    v23 = v3 + v22;
    v12 = v2[3];
    if (v4 != v23)
    {
      goto LABEL_39;
    }

LABEL_36:
    if (v12 != v5)
    {
      goto LABEL_39;
    }

    v2 += 6;
    *result = v2;
    if (v2 == v1)
    {
      return result;
    }
  }

  do
  {
    v8 = *v7;
    v9 = v7[1];
    v7 += 3;
    if ((v9 - v8) >= 0x11)
    {
      v10 = -16;
    }

    else
    {
      v10 = 0;
    }
  }

  while (v8 == v9 + v10 && v7 != v5);
  v12 = v2[3];
  while (1)
  {
    v13 = v12[1];
    v14 = (v13 - *v12) >= 0x11 ? -16 : 0;
    if (*v12 != v13 + v14)
    {
      break;
    }

    v12 += 3;
    if (v12 == v5)
    {
      v12 = v2[4];
      break;
    }
  }

  if ((v3 - v4) >= 0x11)
  {
    v15 = -16;
  }

  else
  {
    v15 = 0;
  }

  v16 = v3 + v15;
  v17 = v2[3];
  do
  {
    v18 = *v17;
    v19 = v17[1];
    v17 += 3;
    if ((v19 - v18) >= 0x11)
    {
      v20 = -16;
    }

    else
    {
      v20 = 0;
    }
  }

  while (v18 == v19 + v20 && v17 != v5);
  if (v4 == v16)
  {
    goto LABEL_36;
  }

LABEL_39:
  if (v6 == v5)
  {
    v29 = 0;
    v25 = 0;
    v30 = 0;
    v31 = 0;
    v24 = v6;
  }

  else
  {
    v24 = v2[3];
    while (1)
    {
      v25 = *v24;
      v26 = v24[1];
      v27 = v26 - *v24;
      v28 = v27 >= 0x11 ? -16 : 0;
      if (v25 != v26 + v28)
      {
        break;
      }

      v24 += 3;
      if (v24 == v5)
      {
        v25 = 0;
        v29 = 0;
        v24 = v5;
        goto LABEL_49;
      }
    }

    v29 = v27 < 0x11;
LABEL_49:
    while (1)
    {
      v31 = *v6;
      v32 = v6[1];
      v33 = v32 - *v6;
      v34 = v33 >= 0x11 ? -16 : 0;
      if (v31 != v32 + v34)
      {
        break;
      }

      v6 += 3;
      if (v6 == v5)
      {
        v30 = 0;
        v31 = 0;
        v6 = v5;
        goto LABEL_56;
      }
    }

    v30 = v33 < 0x11;
  }

LABEL_56:
  v35 = (v3 - v4) < 0x11;
  *(result + 16) = v4;
  *(result + 24) = v35;
  if ((v3 - v4) >= 0x11)
  {
    v36 = -16;
  }

  else
  {
    v36 = 0;
  }

  *(result + 32) = v3 + v36;
  *(result + 40) = v35;
  *(result + 48) = v24;
  *(result + 56) = v5;
  if (v24 != v5)
  {
    *(result + 64) = v25;
    *(result + 72) = v29;
  }

  *(result + 80) = v6;
  *(result + 88) = v5;
  if (v6 != v5)
  {
    *(result + 96) = v31;
    *(result + 104) = v30;
  }

  return result;
}

void sub_10027334C(void **a1, char ***a2, char ***a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4) < a4)
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
          v12 = *(v10 - 3);
          if (v12)
          {
            v13 = *(v10 - 2);
            v14 = *(v10 - 3);
            if (v13 != v12)
            {
              v15 = *(v10 - 2);
              do
              {
                v17 = *(v15 - 3);
                v15 -= 3;
                v16 = v17;
                if (v17)
                {
                  *(v13 - 2) = v16;
                  operator delete(v16);
                }

                v13 = v15;
              }

              while (v15 != v12);
              v14 = *(v10 - 3);
            }

            *(v10 - 2) = v12;
            operator delete(v14);
          }

          v18 = v10 - 6;
          v19 = *(v10 - 6);
          if (v19)
          {
            *(v10 - 5) = v19;
            operator delete(v19);
          }

          v10 -= 6;
        }

        while (v18 != v8);
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

    if (a4 <= 0x555555555555555)
    {
      v23 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v24 = 2 * v23;
      if (2 * v23 <= a4)
      {
        v24 = a4;
      }

      if (v23 >= 0x2AAAAAAAAAAAAAALL)
      {
        v25 = 0x555555555555555;
      }

      else
      {
        v25 = v24;
      }

      if (v25 <= 0x555555555555555)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v20 = a1[1];
  v21 = v20 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v20 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          sub_100273AA0(v8, *v5, v5[1], (v5[1] - *v5) >> 4);
          sub_100273BFC(v8 + 3, v5[3], v5[4], 0xAAAAAAAAAAAAAAABLL * (v5[4] - v5[3]));
        }

        v5 += 6;
        v8 += 6;
      }

      while (v5 != a3);
      v20 = a1[1];
    }

    if (v20 != v8)
    {
      do
      {
        v27 = *(v20 - 3);
        if (v27)
        {
          v28 = *(v20 - 2);
          v29 = *(v20 - 3);
          if (v28 != v27)
          {
            v30 = *(v20 - 2);
            do
            {
              v32 = *(v30 - 24);
              v30 -= 24;
              v31 = v32;
              if (v32)
              {
                *(v28 - 16) = v31;
                operator delete(v31);
              }

              v28 = v30;
            }

            while (v30 != v27);
            v29 = *(v20 - 3);
          }

          *(v20 - 2) = v27;
          operator delete(v29);
        }

        v33 = (v20 - 48);
        v34 = *(v20 - 6);
        if (v34)
        {
          *(v20 - 5) = v34;
          operator delete(v34);
        }

        v20 -= 48;
      }

      while (v33 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    v22 = (a2 + v21);
    if (v20 != v8)
    {
      do
      {
        if (v5 != v8)
        {
          sub_100273AA0(v8, *v5, v5[1], (v5[1] - *v5) >> 4);
          sub_100273BFC(v8 + 3, v5[3], v5[4], 0xAAAAAAAAAAAAAAABLL * (v5[4] - v5[3]));
        }

        v5 += 6;
        v8 += 6;
        v21 -= 48;
      }

      while (v21);
      v20 = a1[1];
    }

    v35 = v20;
    v26 = v20;
    if (v22 != a3)
    {
      v26 = v20;
      do
      {
        sub_1002737CC(v26, v22);
        v22 += 6;
        v26 = v35 + 48;
        v35 += 48;
      }

      while (v22 != a3);
    }

    a1[1] = v26;
  }
}

void sub_1002736DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10027370C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1002736F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10027370C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_10027370C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v7 = *(v4 - 24);
        if (v7)
        {
          v8 = *(v4 - 16);
          v9 = *(v4 - 24);
          if (v8 != v7)
          {
            v10 = *(v4 - 16);
            do
            {
              v12 = *(v10 - 24);
              v10 -= 24;
              v11 = v12;
              if (v12)
              {
                *(v8 - 16) = v11;
                operator delete(v11);
              }

              v8 = v10;
            }

            while (v10 != v7);
            v9 = *(v4 - 24);
          }

          *(v4 - 16) = v7;
          operator delete(v9);
        }

        v13 = v4 - 48;
        v14 = *(v4 - 48);
        if (v14)
        {
          *(v4 - 40) = v14;
          operator delete(v14);
        }

        v4 -= 48;
      }

      while (v13 != v5);
    }
  }

  return a1;
}

void *sub_1002737CC(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  v4 = a2[3];
  v3 = a2[4];
  if (v3 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_1002738EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 32) = v10;
  sub_100209B28(&a9);
  v12 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void *sub_100273924(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          v7 = v6 - *v5;
          operator new();
        }

        sub_10000FC84();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_100273A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_100273A30(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100273A30(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

char *sub_100273AA0(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 4)
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

void sub_100273BFC(char ***a1, char **a2, char **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 3;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
          }

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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 == a3)
    {
      if (v15 == v8)
      {
LABEL_37:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          sub_100273AA0(v8, *v5, v5[1], (v5[1] - *v5) >> 4);
        }

        v5 += 3;
        v8 += 3;
      }

      while (v5 != a3);
      v15 = a1[1];
      if (v15 == v8)
      {
        goto LABEL_37;
      }
    }

    v22 = v15;
    do
    {
      v24 = *(v22 - 3);
      v22 -= 24;
      v23 = v24;
      if (v24)
      {
        *(v15 - 2) = v23;
        operator delete(v23);
      }

      v15 = v22;
    }

    while (v22 != v8);
    goto LABEL_37;
  }

  if (v15 != v8)
  {
    v17 = v15 - v8;
    v18 = a2;
    do
    {
      if (v18 != v8)
      {
        sub_100273AA0(v8, *v18, v18[1], (v18[1] - *v18) >> 4);
      }

      v18 += 3;
      v8 += 3;
      v17 -= 24;
    }

    while (v17);
    v15 = a1[1];
  }

  a1[1] = sub_100273924(a1, (v5 + v16), a3, v15);
}

void **sub_100273E68(void **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            v8 = *(v3 - 2);
            do
            {
              v10 = *(v8 - 24);
              v8 -= 24;
              v9 = v10;
              if (v10)
              {
                *(v6 - 16) = v9;
                operator delete(v9);
              }

              v6 = v8;
            }

            while (v8 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v11 = v3 - 48;
        v12 = *(v3 - 6);
        if (v12)
        {
          *(v3 - 5) = v12;
          operator delete(v12);
        }

        v3 -= 48;
      }

      while (v11 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_100274144(double **a1@<X0>, int8x16_t ***a2@<X1>, uint64_t a3@<X8>, float64x2_t a4@<Q0>, int8x16_t a5@<Q1>, int64x2_t a6@<Q2>, int8x16_t a7@<Q3>, float64x2_t a8@<Q4>, int8x16_t a9@<Q5>, int64x2_t a10@<Q6>, int64x2_t a11@<Q7>)
{
  v14 = *a1;
  v15 = a1[1];
  if (*a1 == v15)
  {
    v17 = a1[3];
    v18 = a1[4];
    if (v17 == v18)
    {
      v16 = 1;
    }

    else
    {
      do
      {
        v19 = *v17;
        v20 = *(v17 + 1);
        v17 += 3;
        v21 = v19 == v20;
        v16 = v19 == v20;
        v21 = !v21 || v17 == v18;
      }

      while (!v21);
    }
  }

  else
  {
    v16 = 0;
  }

  for (i = *a2; ; i += 6)
  {
    if (i == a2[1])
    {
      if (v16)
      {
        v26 = 0.0;
        goto LABEL_123;
      }

      if (v14 != v15)
      {
        v32 = *v14;
        v31 = v14 + 2;
        a11.i64[0] = v32.i64[0];
        v78 = v32;
        v79 = v32;
        v11 = *&v32.i64[1];
        v25 = *&v32.i64[1];
        *&v12.f64[0] = v32.i64[0];
        while (1)
        {
          if (v31 == v15)
          {
            goto LABEL_109;
          }

          v33 = *v31;
          if (*v31 < *a11.i64)
          {
            v78.i64[0] = *v31;
            *a11.i64 = v33;
            if (v33 <= v12.f64[0])
            {
LABEL_42:
              v34 = v31[1];
              if (v34 < v11)
              {
                goto LABEL_47;
              }

              goto LABEL_43;
            }
          }

          else if (v33 <= v12.f64[0])
          {
            goto LABEL_42;
          }

          v79.f64[0] = v33;
          v12.f64[0] = v33;
          v34 = v31[1];
          if (v34 < v11)
          {
LABEL_47:
            *&v78.i64[1] = v34;
            v11 = v34;
            if (v34 <= v25)
            {
              goto LABEL_38;
            }

            goto LABEL_48;
          }

LABEL_43:
          if (v34 <= v25)
          {
            goto LABEL_38;
          }

LABEL_48:
          v79.f64[1] = v34;
          v25 = v34;
LABEL_38:
          v31 += 2;
        }
      }

      v47 = a1[3];
      v48 = a1[4];
      if (v47 == v48)
      {
        goto LABEL_107;
      }

      v49 = 0;
      while (1)
      {
        v57 = *v47;
        v58 = v47[1];
        if (*v47 != v58)
        {
          v60 = *v57;
          v59 = v57 + 1;
          v61 = v60;
          v62 = v60;
          if (v59 == v58)
          {
            v64 = v61;
            if (v49)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v63 = v61;
            v64 = v61;
            do
            {
              v65 = *v59++;
              v66 = vcgtq_f64(v63, v65);
              v67 = vcgtq_f64(v65, v61);
              v64 = vbslq_s8(v66, v65, v64);
              v63 = vbslq_s8(v66, v65, v63);
              v62 = vbslq_s8(v67, v65, v62);
              v61 = vbslq_s8(v67, v65, v61);
            }

            while (v59 != v58);
            if (v49)
            {
LABEL_69:
              v50 = vcgtq_f64(a11, v64);
              if (vmovn_s64(vcgtq_f64(v64, v12)).u8[0])
              {
                v51 = v64.f64[0];
              }

              else
              {
                v51 = v12.f64[0];
              }

              v52.f64[0] = v62.f64[0];
              v52.f64[1] = v64.f64[1];
              v12.f64[0] = v51;
              v53 = vbslq_s8(vcgtq_f64(v52, v12), v52, v12);
              v54 = vbslq_s8(v50, v64, a11);
              a11 = vbslq_s8(vcgtq_f64(v54, v62), v62, v54);
              v55.i64[0] = *&v53.f64[0];
              v55.i64[1] = *&v62.f64[1];
              if (vmovn_s64(vcgtq_f64(v62, v53)).i32[1])
              {
                v56 = -1;
              }

              else
              {
                v56 = 0;
              }

              v12 = vbslq_s8(vdupq_n_s64(v56), v55, v53);
              v49 = 1;
              goto LABEL_76;
            }
          }

          v49 = 1;
          a11 = v64;
          v12 = v62;
        }

LABEL_76:
        v47 += 3;
        if (v47 == v48)
        {
          if ((v49 & 1) == 0)
          {
LABEL_107:
            v12 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
            a11 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
          }

          v78 = a11;
          v79 = v12;
          v11 = *&a11.i64[1];
          v25 = v12.f64[1];
          goto LABEL_109;
        }
      }
    }

    if (*i != i[1])
    {
      goto LABEL_19;
    }

    v23 = i[3];
    v24 = i[4];
    if (v23 != v24)
    {
      break;
    }

LABEL_12:
    ;
  }

  while (v23->i64[0] == v23->i64[1])
  {
    v23 = (v23 + 24);
    if (v23 == v24)
    {
      goto LABEL_12;
    }
  }

LABEL_19:
  if (v16)
  {
    sub_100274740(a2, &v78, a4.f64[0], *a5.i64, a6, *a7.i64, a8.f64[0], a9, a10);
    v25 = v79.f64[1];
    v12.f64[0] = v79.f64[0];
    v11 = *&v78.i64[1];
    a11.i64[0] = v78.i64[0];
    goto LABEL_109;
  }

  if (v14 != v15)
  {
    v28 = *v14;
    v27 = v14 + 2;
    a11.i64[0] = v28.i64[0];
    v78 = v28;
    v79 = v28;
    v11 = *&v28.i64[1];
    if (v27 == v15)
    {
      v29 = v11;
      *&v12.f64[0] = a11.i64[0];
      goto LABEL_89;
    }

    *&v12.f64[0] = a11.i64[0];
    v29 = v11;
    while (2)
    {
      v30 = *v27;
      if (*v27 < *a11.i64)
      {
        v78.i64[0] = *v27;
        *a11.i64 = v30;
        if (v30 > v12.f64[0])
        {
          goto LABEL_33;
        }

LABEL_29:
        a4.f64[0] = v27[1];
        if (a4.f64[0] >= v11)
        {
          goto LABEL_30;
        }

LABEL_34:
        v78.i64[1] = *&a4.f64[0];
        v11 = a4.f64[0];
        if (a4.f64[0] > v29)
        {
LABEL_35:
          v79.f64[1] = a4.f64[0];
          v29 = a4.f64[0];
        }
      }

      else
      {
        if (v30 <= v12.f64[0])
        {
          goto LABEL_29;
        }

LABEL_33:
        v79.f64[0] = v30;
        v12.f64[0] = v30;
        a4.f64[0] = v27[1];
        if (a4.f64[0] < v11)
        {
          goto LABEL_34;
        }

LABEL_30:
        if (a4.f64[0] > v29)
        {
          goto LABEL_35;
        }
      }

      v27 += 2;
      if (v27 == v15)
      {
        goto LABEL_89;
      }

      continue;
    }
  }

  v35 = a1[3];
  v36 = a1[4];
  if (v35 == v36)
  {
    goto LABEL_87;
  }

  v37 = 0;
  while (2)
  {
    v42 = *v35;
    v43 = v35[1];
    if (*v35 != v43)
    {
      v45 = *v42;
      v44 = v42 + 1;
      a6 = v45;
      a4 = v45;
      if (v44 == v43)
      {
        a5 = a6;
        if ((v37 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        a7 = a6;
        a5 = a6;
        do
        {
          v46 = *v44++;
          a8.f64[0] = v46.f64[0];
          a9 = vcgtq_f64(a7, v46);
          a10 = vcgtq_f64(v46, a6);
          a5 = vbslq_s8(a9, v46, a5);
          a7 = vbslq_s8(a9, v46, a7);
          a4 = vbslq_s8(a10, v46, a4);
          a6 = vbslq_s8(a10, v46, a6);
        }

        while (v44 != v43);
        if ((v37 & 1) == 0)
        {
LABEL_66:
          v37 = 1;
          a11 = a5;
          v12 = a4;
          goto LABEL_58;
        }
      }

      v38 = vcgtq_f64(a11, a5);
      if (vmovn_s64(vcgtq_f64(a5, v12)).u8[0])
      {
        v39 = *a5.i64;
      }

      else
      {
        v39 = v12.f64[0];
      }

      a8.f64[0] = a4.f64[0];
      *&a8.f64[1] = a5.i64[1];
      v12.f64[0] = v39;
      a7 = vbslq_s8(vcgtq_f64(a8, v12), a8, v12);
      v40 = vbslq_s8(v38, a5, a11);
      a6 = vcgtq_f64(v40, a4);
      a11 = vbslq_s8(a6, a4, v40);
      a5.i64[0] = a7.i64[0];
      a5.i64[1] = *&a4.f64[1];
      if (vmovn_s64(vcgtq_f64(a4, *&a7)).i32[1])
      {
        v41 = -1;
      }

      else
      {
        v41 = 0;
      }

      a4 = vdupq_n_s64(v41);
      v12 = vbslq_s8(a4, a5, a7);
      v37 = 1;
    }

LABEL_58:
    v35 += 3;
    if (v35 != v36)
    {
      continue;
    }

    break;
  }

  if ((v37 & 1) == 0)
  {
LABEL_87:
    v12 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    a11 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  v78 = a11;
  v79 = v12;
  v11 = *&a11.i64[1];
  v29 = v12.f64[1];
LABEL_89:
  v76 = v12.f64[0];
  v77 = *a11.i64;
  sub_100274740(a2, &v80, a4.f64[0], *a5.i64, a6, *a7.i64, a8.f64[0], a9, a10);
  *a11.i64 = v77;
  if (v80 < v77)
  {
    *v78.i64 = v80;
    *a11.i64 = v80;
    v68 = v81;
    v12.f64[0] = v76;
    if (v80 > v76)
    {
      goto LABEL_99;
    }

LABEL_91:
    if (v68 >= v11)
    {
      goto LABEL_92;
    }

LABEL_100:
    *&v78.i64[1] = v68;
    v11 = v68;
    v69 = v82;
    if (v68 > v29)
    {
      goto LABEL_101;
    }

LABEL_93:
    if (v69 >= *a11.i64)
    {
      goto LABEL_94;
    }

LABEL_102:
    *v78.i64 = v69;
    *a11.i64 = v69;
    v25 = v83;
    if (v69 > v12.f64[0])
    {
      goto LABEL_103;
    }

LABEL_95:
    if (v25 >= v11)
    {
      goto LABEL_96;
    }

LABEL_104:
    *&v78.i64[1] = v25;
    v11 = v25;
    if (v25 <= v29)
    {
      goto LABEL_105;
    }

LABEL_97:
    v79.f64[1] = v25;
  }

  else
  {
    v68 = v81;
    v12.f64[0] = v76;
    if (v80 <= v76)
    {
      goto LABEL_91;
    }

LABEL_99:
    v79.f64[0] = v80;
    v12.f64[0] = v80;
    if (v68 < v11)
    {
      goto LABEL_100;
    }

LABEL_92:
    v69 = v82;
    if (v68 <= v29)
    {
      goto LABEL_93;
    }

LABEL_101:
    v79.f64[1] = v68;
    v29 = v68;
    if (v69 < *a11.i64)
    {
      goto LABEL_102;
    }

LABEL_94:
    v25 = v83;
    if (v69 <= v12.f64[0])
    {
      goto LABEL_95;
    }

LABEL_103:
    v79.f64[0] = v69;
    v12.f64[0] = v69;
    if (v25 < v11)
    {
      goto LABEL_104;
    }

LABEL_96:
    if (v25 > v29)
    {
      goto LABEL_97;
    }

LABEL_105:
    v25 = v29;
  }

LABEL_109:
  v70 = vabdd_f64(v25, v11);
  v71 = vabdd_f64(v12.f64[0], *a11.i64);
  if (v70 >= v71)
  {
    v71 = v70;
  }

  v26 = 1.0;
  if (v71 != 0.0)
  {
    v72 = v71 == INFINITY;
    if (v71 >= 1.0)
    {
      v73 = v71;
    }

    else
    {
      v73 = 1.0;
    }

    if (v71 > v73 * 2.22044605e-16)
    {
      v72 = 1;
    }

    if (v71 != INFINITY && v71 < 10000000.0 && v72)
    {
      v75 = 10000000.0 / v71 + 0.5;
      sub_100274990(v75);
      v26 = floor(v75);
      v11 = *&v78.i64[1];
      a11.i64[0] = v78.i64[0];
    }
  }

LABEL_123:
  *a3 = a11.i64[0];
  *(a3 + 8) = v11;
  *(a3 + 16) = vdupq_n_s64(0xFFFFFFFFFFB3B4C0);
  *(a3 + 32) = v26;
}

double sub_100274740(int8x16_t ***a1, uint64_t a2, double result, double a4, int8x16_t a5, double a6, double a7, int8x16_t i, int64x2_t a9)
{
  v9 = *a1;
  v10 = a1[1];
  if (*a1 == v10)
  {
    goto LABEL_47;
  }

  v11 = 0;
  v12 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v13 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  do
  {
    while (1)
    {
      v14 = *v9;
      v15 = v9[1];
      if (*v9 == v15)
      {
        break;
      }

      v44 = *v14;
      v43 = v14 + 1;
      a9 = vextq_s8(v44, v44, 8uLL);
      v40 = a9;
      v45 = a9;
      for (i = a9; v43 != v15; v45 = vbslq_s8(v49, v47, v45))
      {
        v46 = *v43++;
        v47 = vextq_s8(v46, v46, 8uLL);
        v48 = vcgtq_f64(a9, v47);
        v49 = vcgtq_f64(v47, v45);
        v40 = vbslq_s8(v48, v47, v40);
        a9 = vbslq_s8(v48, v47, a9);
        i = vbslq_s8(v49, v47, i);
      }

LABEL_29:
      a9.i64[0] = i.i64[1];
      if (v11)
      {
        v41 = vcgtq_f64(a5, v40);
        if (v40.f64[1] > result)
        {
          result = v40.f64[1];
        }

        if (v40.f64[0] > a4)
        {
          a4 = v40.f64[0];
        }

        if (*&i.i64[1] > result)
        {
          result = *&i.i64[1];
        }

        v42 = vbslq_s8(v41, v40, a5);
        a9 = vcgtq_f64(v42, i);
        a5 = vbslq_s8(a9, i, v42);
        if (*i.i64 > a4)
        {
          a4 = *i.i64;
        }

        v9 += 6;
        v11 = 1;
        if (v9 == v10)
        {
          goto LABEL_46;
        }
      }

      else
      {
        result = *&i.i64[1];
        a4 = *i.i64;
        a5 = v40;
        v9 += 6;
        v11 = 1;
        if (v9 == v10)
        {
          goto LABEL_46;
        }
      }
    }

    v16 = v9[3];
    v17 = v9[4];
    v18 = v16;
    if (v16 != v17)
    {
      while (v18->i64[0] == v18->i64[1])
      {
        v18 = (v18 + 24);
        if (v18 == v17)
        {
          goto LABEL_3;
        }
      }

      v19 = 0;
      while (1)
      {
        v27 = v16->i64[0];
        v28 = v16->i64[1];
        if (v16->i64[0] != v28)
        {
          v30 = *v27;
          v29 = v27 + 1;
          v31 = vextq_s8(v30, v30, 8uLL);
          v25 = v31;
          if (v29 == v28)
          {
            v33 = v31;
            if (v19)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v32 = v31;
            v33 = v31;
            do
            {
              v34 = *v29++;
              v35 = vextq_s8(v34, v34, 8uLL);
              v36 = vcgtq_f64(v32, v35);
              v37 = vcgtq_f64(v35, v31);
              v33 = vbslq_s8(v36, v35, v33);
              v32 = vbslq_s8(v36, v35, v32);
              v25 = vbslq_s8(v37, v35, v25);
              v31 = vbslq_s8(v37, v35, v31);
            }

            while (v29 != v28);
            if (v19)
            {
LABEL_10:
              v20 = vcgtq_f64(i, v33);
              v21 = v33.f64[1];
              if (v33.f64[1] <= *&a9.i64[1])
              {
                v21 = *&a9.i64[1];
              }

              v22 = vbslq_s8(v20, v33, i);
              v33.f64[1] = v25.f64[1];
              *&a9.i64[1] = v21;
              v23 = vbslq_s8(vcgtq_f64(v33, a9), v33, a9);
              i = vbslq_s8(vcgtq_f64(v22, v25), v25, v22);
              v24 = vmovn_s64(vcgtq_f64(v25, v23)).u8[0];
              v25.f64[1] = v23.f64[1];
              if (v24)
              {
                v26 = -1;
              }

              else
              {
                v26 = 0;
              }

              a9 = vbslq_s8(vdupq_n_s64(v26), v25, v23);
              v19 = 1;
              goto LABEL_16;
            }
          }

          v19 = 1;
          i = v33;
          a9 = v25;
        }

LABEL_16:
        v16 = (v16 + 24);
        if (v16 == v17)
        {
          if (v19)
          {
            v38 = -1;
          }

          else
          {
            v38 = 0;
          }

          v39 = vdupq_n_s64(v38);
          v40 = vbslq_s8(v39, i, v12);
          i = vbslq_s8(v39, a9, v13);
          goto LABEL_29;
        }
      }
    }

LABEL_3:
    v9 += 6;
  }

  while (v9 != v10);
  if (v11)
  {
LABEL_46:
    *a2 = a5.i64[1];
    *(a2 + 8) = a5.i64[0];
    *(a2 + 16) = result;
    *(a2 + 24) = a4;
    return result;
  }

LABEL_47:
  result = -1.79769313e308;
  *a2 = 0x7FEFFFFFFFFFFFFFLL;
  *(a2 + 8) = 0x7FEFFFFFFFFFFFFFLL;
  *(a2 + 16) = 0xFFEFFFFFFFFFFFFFLL;
  *(a2 + 24) = 0xFFEFFFFFFFFFFFFFLL;
  return result;
}

void sub_100274990(double a1)
{
  v1 = 2 * (a1 >= 9.22337204e18);
  if (a1 <= -9.22337204e18)
  {
    v1 = 1;
  }

  if (v1 == 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_1000D8810(exception);
  }

  if (v1 == 1)
  {
    v4 = __cxa_allocate_exception(8uLL);
    v4->__vftable = 0;
    v5 = sub_1000D87D8(v4);
  }
}

uint64_t *sub_100274A30(uint64_t *a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  v7 = a4;
  if (*a1 == a1[1])
  {
    v12 = a1[3];
    v13 = a1[4];
    if (v12 == v13)
    {
      v11 = 1;
    }

    else
    {
      do
      {
        v14 = *v12;
        v15 = v12[1];
        v12 += 3;
        v16 = v14 == v15;
        v11 = v14 == v15;
        v16 = !v16 || v12 == v13;
      }

      while (!v16);
    }
  }

  else
  {
    v11 = 0;
  }

  for (i = *a2; ; i += 6)
  {
    if (i == a2[1])
    {
      if (v11)
      {
        return v7;
      }

      goto LABEL_33;
    }

    if (*i != i[1])
    {
      goto LABEL_19;
    }

    v18 = i[3];
    v19 = i[4];
    if (v18 != v19)
    {
      break;
    }

LABEL_12:
    ;
  }

  while (*v18 == v18[1])
  {
    v18 += 3;
    if (v18 == v19)
    {
      goto LABEL_12;
    }
  }

LABEL_19:
  if (v11)
  {
LABEL_33:

    return sub_100275348(a1, a2, a4, a5);
  }

  v80 = 0u;
  v81 = 0u;
  __p = 0u;
  sub_100277FC4(0, a1, 1, a2, a5, a3, &__p, &v78);
  if (*(&v81 + 1))
  {
    if (a1[4] != a1[3])
    {
      sub_100280A3C(a1, a5, a3, &__p, &v78, 0, 0);
    }

    v21 = a2[1] - *a2;
    if (0xAAAAAAAAAAAAAAABLL * (v21 >> 4) > 1 || v21 == 48 && *(*a2 + 32) != *(*a2 + 24))
    {
      sub_100284288(a2, a5, a3, &__p, &v78, 1, 0);
    }
  }

  v77[0] = 0;
  v77[1] = 0;
  v75[1] = 0;
  v76 = v77;
  v74 = v75;
  v75[0] = 0;
  sub_100275500(&__p, &v76, a1, a2, a3);
  v72 = 0u;
  v73 = 0u;
  v71 = 0u;
  sub_100275D5C(a1, a2, a5, a3, &__p, &v71, &v74, &v76, a6);
  sub_100275F28(&v74, &__p, &v76);
  v70[0] = 0;
  v70[1] = 0;
  v69 = v70;
  v83[0] = 0;
  v83[1] = 0;
  v82 = v83;
  *&v84[0] = 0;
  *(&v84[0] + 1) = -1;
  *&v84[1] = -1;
  sub_1002A5C5C(a1, a2, v84, &v82);
  v22 = *a2;
  if (*a2 != a2[1])
  {
    v23 = 0;
    do
    {
      *&v84[0] = 1;
      *(&v84[0] + 1) = v23;
      *&v84[1] = -1;
      sub_1002A62FC(v22, a1, v84, &v82);
      ++v23;
      v22 += 48;
    }

    while (v22 != a2[1]);
  }

  sub_1002A5FF8(a1, a2, &v74, &v82, &v69);
  sub_1002A6A9C(&v82, v83[0]);
  v24 = *(&v71 + 1);
  v25 = v72;
  v26 = (*(&v71 + 1) + 8 * (v73 / 0xAA));
  v67 = v7;
  v65 = a1;
  v66 = a2;
  if (v72 == *(&v71 + 1))
  {
    v27 = 0;
  }

  else
  {
    v27 = (*v26 + 24 * (v73 % 0xAA));
  }

  v29 = 0;
LABEL_39:
  if (v25 == v24)
  {
    if (!v27)
    {
      goto LABEL_85;
    }

LABEL_43:
    memset(v84 + 6, 255, 24);
    v30 = *v27;
    v31 = v27[1];
    v32 = v31 - *v27;
    v33 = 0.0;
    if (v32 < 0x40 || (v34 = v30 + 2, v30 + 2 == v31))
    {
LABEL_52:
      if (v30 != v31)
      {
        v68 = *v30;
      }

      v46 = v30 != v31;
      v47 = v70[0];
      if (!v70[0])
      {
LABEL_66:
        operator new();
      }

      while (1)
      {
        v49 = v47;
        v50 = v47[4];
        if (v50 != 2)
        {
          break;
        }

        v51 = v49[5];
        if (v29 == v51)
        {
          v48 = v49[6];
          if ((v48 & 0x8000000000000000) == 0)
          {
            goto LABEL_57;
          }

          if (v48 == -1)
          {
            v53 = v49 + 16;
            v52 = v49[16];
            *(v49 + 56) = v46;
            *(v49 + 4) = v68;
            *(v49 + 10) = v33;
            *(v49 + 44) = 0;
            *(v49 + 90) = v84[0];
            *(v49 + 13) = *(v84 + 14);
            v49[15] = 0xBFF0000000000000;
            if (v52)
            {
              v49[17] = v52;
              operator delete(v52);
              *v53 = 0;
              v49[17] = 0;
              v49[18] = 0;
            }

            *v53 = 0;
            v49[17] = 0;
            v49[18] = 0;
            v54 = v70[0];
            if (!v70[0])
            {
LABEL_81:
              operator new();
            }

            while (1)
            {
              v56 = v54;
              v57 = v54[4];
              if (v57 == 2)
              {
                v58 = v56[5];
                if (v29 == v58)
                {
                  v55 = v56[6];
                  if ((v55 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_72;
                  }

                  if (v55 == -1)
                  {
                    *(v56 + 88) = 0;
                    v27 += 3;
                    if ((v27 - *v26) == 4080)
                    {
                      v59 = v26[1];
                      ++v26;
                      v27 = v59;
                    }

                    ++v29;
                    v24 = *(&v71 + 1);
                    v25 = v72;
                    goto LABEL_39;
                  }
                }

                else if (v29 < v58)
                {
                  goto LABEL_72;
                }
              }

              else if (v57 > 2)
              {
LABEL_72:
                v54 = *v56;
                if (!*v56)
                {
                  goto LABEL_81;
                }

                continue;
              }

              v54 = v56[1];
              if (!v54)
              {
                goto LABEL_81;
              }
            }
          }

LABEL_65:
          v47 = v49[1];
          if (!v47)
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v29 >= v51)
          {
            goto LABEL_65;
          }

LABEL_57:
          v47 = *v49;
          if (!*v49)
          {
            goto LABEL_66;
          }
        }
      }

      if (v50 <= 2)
      {
        goto LABEL_65;
      }

      goto LABEL_57;
    }

    v35 = v32 - 32;
    if (v35 > 0x2F)
    {
      v38 = (v35 >> 4) + 1;
      v39 = 2 * (v38 & 0x1FFFFFFFFFFFFFFCLL);
      v34 = (v34 + v39 * 8);
      v37 = &v30[v39];
      v40 = v30 + 4;
      v36 = 0.0;
      v41 = v38 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v42 = v40 - 4;
        v86 = vld2q_f64(v42);
        v87 = vld2q_f64(v40);
        v43 = v40 - 2;
        v44 = v40 + 2;
        v88 = vld2q_f64(v43);
        v89 = vld2q_f64(v44);
        v86.val[0] = vmulq_f64(vaddq_f64(v86.val[0], v88.val[0]), vsubq_f64(v86.val[1], v88.val[1]));
        v86.val[1] = vmulq_f64(vaddq_f64(v87.val[0], v89.val[0]), vsubq_f64(v87.val[1], v89.val[1]));
        v36 = v36 + v86.val[0].f64[0] + v86.val[0].f64[1] + v86.val[1].f64[0] + v86.val[1].f64[1];
        v40 += 8;
        v41 -= 4;
      }

      while (v41);
      if (v38 == (v38 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v36 = 0.0;
      v37 = *v27;
    }

    do
    {
      v45 = *v34;
      v34 += 2;
      v36 = v36 + (*v37 + v45) * (v37[1] - v37[3]);
      v37 += 2;
    }

    while (v34 != v31);
LABEL_51:
    v33 = v36 * 0.5;
    goto LABEL_52;
  }

  if (v27 != (*(v24 + 8 * ((*(&v73 + 1) + v73) / 0xAAuLL)) + 24 * ((*(&v73 + 1) + v73) % 0xAAuLL)))
  {
    goto LABEL_43;
  }

LABEL_85:
  sub_100276D48(v65, v66, &v71, &v69, a5);
  v7 = sub_10027746C(&v69, v65, v66, &v71, v67, a5, 0);
  sub_1002A6A9C(&v69, v70[0]);
  sub_100277E30(&v71);
  sub_1000275F4(&v74, v75[0]);
  sub_1002AABB8(&v76, v77[0]);
  v60 = *(&__p + 1);
  v61 = v80;
  *(&v81 + 1) = 0;
  v62 = (v80 - *(&__p + 1)) >> 3;
  if (v62 >= 3)
  {
    do
    {
      operator delete(*v60);
      v61 = v80;
      v60 = (*(&__p + 1) + 8);
      *(&__p + 1) = v60;
      v62 = (v80 - v60) >> 3;
    }

    while (v62 > 2);
  }

  if (v62 == 1)
  {
    v63 = 8;
LABEL_91:
    *&v81 = v63;
  }

  else if (v62 == 2)
  {
    v63 = 16;
    goto LABEL_91;
  }

  if (v60 != v61)
  {
    do
    {
      v64 = *v60++;
      operator delete(v64);
    }

    while (v60 != v61);
    if (v80 != *(&__p + 1))
    {
      *&v80 = v80 + ((*(&__p + 1) - v80 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_1002752C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, void *a29, uint64_t a30, char a31, void *a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_1000275F4(&a28, a29);
  sub_1002AABB8(&a31, a32);
  sub_1002AAC1C(&a35);
  _Unwind_Resume(a1);
}

uint64_t *sub_100275348(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[0] = 0;
  v18[1] = 0;
  v16[1] = 0;
  v17 = v18;
  v15 = v16;
  v16[0] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  *&v12 = 0;
  *(&v12 + 1) = -1;
  *&v13 = -1;
  sub_1002A5C5C(a1, a2, &v12, &v19);
  v8 = *a2;
  if (*a2 != *(a2 + 8))
  {
    v9 = 0;
    do
    {
      *&v12 = 1;
      *(&v12 + 1) = v9;
      *&v13 = -1;
      sub_1002A62FC(v8, a1, &v12, &v19);
      ++v9;
      v8 += 6;
    }

    while (v8 != *(a2 + 8));
  }

  sub_1002A5FF8(a1, a2, &v17, &v19, &v15);
  sub_1002A6A9C(&v19, v20[0]);
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  sub_100276D48(a1, a2, &v12, &v15, a4);
  v10 = sub_10027746C(&v15, a1, a2, &v12, a3, a4, 0);
  sub_100277E30(&v12);
  sub_1002A6A9C(&v15, v16[0]);
  sub_1000275F4(&v17, v18[0]);
  return v10;
}

void sub_1002754BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, char a19, void *a20)
{
  sub_100277E30(&a9);
  sub_1002A6A9C(&a16, a17);
  sub_1000275F4(&a19, a20);
  _Unwind_Resume(a1);
}

void sub_100275500(void *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  sub_100287B0C(a1);
  sub_1002896FC(a1, a2, a5, v10);
  v11 = a2[2];
  v12 = a1[4];
  v13 = a1[1];
  v14 = a1[2];
  if (v11)
  {
    if (v14 != v13)
    {
      v15 = (v13 + 8 * (v12 >> 4));
      v16 = *v15;
      v17 = *v15 + 376 * (a1[4] & 0xFLL);
      v18 = *(v13 + (((a1[5] + v12) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(a1 + 10) + v12) & 0xF);
      while (v17 != v18)
      {
        *(v17 + 24) = -1;
        v17 += 376;
        if (v17 - v16 == 6016)
        {
          v19 = v15[1];
          ++v15;
          v16 = v19;
          v17 = v19;
        }
      }
    }

    v20 = a2 + 1;
    v21 = *a2;
    if (*a2 != a2 + 1)
    {
      v22 = *a2;
      do
      {
        v23 = v22[5];
        if (v23 != v22 + 6)
        {
          v24 = v22[4];
          do
          {
            *(*(v13 + (((v23[4] + v12) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(v23 + 8) + v12) & 0xF) + 24) = v24;
            v25 = v23[1];
            if (v25)
            {
              do
              {
                v26 = v25;
                v25 = *v25;
              }

              while (v25);
            }

            else
            {
              do
              {
                v26 = v23[2];
                v27 = *v26 == v23;
                v23 = v26;
              }

              while (!v27);
            }

            v23 = v26;
          }

          while (v26 != v22 + 6);
        }

        v28 = v22[1];
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = v22[2];
            v27 = *v29 == v22;
            v22 = v29;
          }

          while (!v27);
        }

        v22 = v29;
      }

      while (v29 != v20);
      v12 = a1[4];
      v13 = a1[1];
      do
      {
        v30 = v21[5];
        v31 = v21 + 6;
        if (v30 != v21 + 6)
        {
          v32 = v21[5];
          while (1)
          {
            v33 = *(v13 + (((v32[4] + v12) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(v32 + 8) + v12) & 0xF);
            if (*(v33 + 40) == 1 && *(v33 + 208) == 1)
            {
              break;
            }

            v34 = v32[1];
            if (v34)
            {
              do
              {
                v35 = v34;
                v34 = *v34;
              }

              while (v34);
            }

            else
            {
              do
              {
                v35 = v32[2];
                v27 = *v35 == v32;
                v32 = v35;
              }

              while (!v27);
            }

            v32 = v35;
            if (v35 == v31)
            {
              goto LABEL_46;
            }
          }

          do
          {
            *(*(v13 + (((v30[4] + v12) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(v30 + 8) + v12) & 0xF) + 33) = 1;
            v36 = v30[1];
            if (v36)
            {
              do
              {
                v37 = v36;
                v36 = *v36;
              }

              while (v36);
            }

            else
            {
              do
              {
                v37 = v30[2];
                v27 = *v37 == v30;
                v30 = v37;
              }

              while (!v27);
            }

            v30 = v37;
          }

          while (v37 != v31);
        }

LABEL_46:
        v38 = v21[1];
        if (v38)
        {
          do
          {
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          do
          {
            v39 = v21[2];
            v27 = *v39 == v21;
            v21 = v39;
          }

          while (!v27);
        }

        v21 = v39;
      }

      while (v39 != v20);
    }
  }

  v40 = (v13 + 8 * (v12 >> 4));
  if (v14 == v13)
  {
    v41 = 0;
  }

  else
  {
    v41 = *v40 + 376 * (v12 & 0xF);
  }

  v42 = 0;
  v43 = (v13 + 8 * (v12 >> 4));
  v79 = v11;
LABEL_56:
  v44 = v41 - 6016;
  while (v14 != v13)
  {
    if (v41 == *(v13 + (((a1[5] + v12) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(a1 + 10) + v12) & 0xF))
    {
      v47 = *v40 + 376 * (v12 & 0xF);
      goto LABEL_82;
    }

LABEL_63:
    v45 = *(v41 + 40);
    if (v45 == 3)
    {
      if (*(v41 + 208) == 3)
      {
        goto LABEL_57;
      }
    }

    else if (v45 == 2)
    {
      if (*(v41 + 208) == 2)
      {
        goto LABEL_57;
      }
    }

    else if (!v45 && !*(v41 + 208))
    {
      goto LABEL_57;
    }

    if (*(v41 + 48) != *(v41 + 216) || *(v41 + 24) > 0)
    {
      if (v45 == 4 && (*(v41 + 32) & 1) == 0)
      {
        v42 |= *(v41 + 208) == 4;
      }

      goto LABEL_58;
    }

    if (v45 != 1 || *(v41 + 208) != 1)
    {
LABEL_57:
      *(v41 + 32) = 1;
      *(v41 + 24) = -1;
    }

LABEL_58:
    v41 += 376;
    v44 += 376;
    if (*v43 == v44)
    {
      v46 = v43[1];
      ++v43;
      v41 = v46;
      goto LABEL_56;
    }
  }

  if (v41)
  {
    goto LABEL_63;
  }

  v47 = 0;
LABEL_82:
  while (v14 != v13)
  {
    v48 = a1[5] + a1[4];
    if (v47 == *(v13 + ((v48 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * (v48 & 0xF))
    {
      goto LABEL_99;
    }

LABEL_86:
    if ((*(v47 + 32) & 1) == 0)
    {
      v49 = *(v47 + 48);
      if (v49 == *(v47 + 216))
      {
        if (v49)
        {
          if (sub_100272884(v47, a3) <= 0)
          {
            goto LABEL_91;
          }

LABEL_90:
          *(v47 + 32) = 1;
          goto LABEL_91;
        }

        v51 = *a4;
        if (*a4 != a4[1])
        {
          while (1)
          {
            v52 = sub_100272884(v47, v51);
            if ((v52 & 0x80000000) == 0)
            {
              break;
            }

            v51 += 48;
            if (v51 == a4[1])
            {
              goto LABEL_91;
            }
          }

          if (v52)
          {
            goto LABEL_90;
          }
        }
      }
    }

LABEL_91:
    v47 += 376;
    if (v47 - *v40 == 6016)
    {
      v50 = v40[1];
      ++v40;
      v47 = v50;
    }

    v13 = a1[1];
    v14 = a1[2];
  }

  if (v47)
  {
    goto LABEL_86;
  }

LABEL_99:
  v82[0] = 0;
  v82[1] = 0;
  v81 = v82;
  sub_100288264(a1, &v81);
  v53 = v81;
  if (v81 != v82)
  {
    do
    {
      v54 = v53[7];
      v55 = v53[8];
      v56 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * (&v55[-v54] >> 3));
      v83[0] = a1;
      v83[1] = a3;
      v83[2] = a4;
      v83[3] = a5;
      v83[4] = &v80;
      if (v55 == v54)
      {
        v57 = 0;
      }

      else
      {
        v57 = v56;
      }

      sub_10028C408(v54, v55, v83, v57, 1);
      v58 = v53[1];
      if (v58)
      {
        do
        {
          v59 = v58;
          v58 = *v58;
        }

        while (v58);
      }

      else
      {
        do
        {
          v59 = v53[2];
          v27 = *v59 == v53;
          v53 = v59;
        }

        while (!v27);
      }

      v53 = v59;
    }

    while (v59 != v82);
  }

  if (v79)
  {
    sub_10028873C(a2, a1, 1, a3, a4);
    sub_100288C60(a1, a2);
  }

  v60 = v81;
  if (v81 != v82)
  {
    do
    {
      sub_100288EC8((v60 + 7), a1, 1);
      v66 = v60[1];
      if (v66)
      {
        do
        {
          v67 = v66;
          v66 = *v66;
        }

        while (v66);
      }

      else
      {
        do
        {
          v67 = v60[2];
          v27 = *v67 == v60;
          v60 = v67;
        }

        while (!v27);
      }

      v60 = v67;
    }

    while (v67 != v82);
  }

  if (v42)
  {
    v61 = a1[4];
    v62 = a1[1];
    v63 = a1[2];
    v64 = (v62 + 8 * (v61 >> 4));
    if (v63 == v62)
    {
      v65 = 0;
    }

    else
    {
      v65 = *v64 + 376 * (a1[4] & 0xFLL);
    }

    v68 = a1[5] + v61;
    v69 = v68 >> 4;
    v70 = v68 & 0xF;
    while (2)
    {
      v71 = v65 - 6016;
LABEL_128:
      if (v63 == v62)
      {
        if (!v65)
        {
          break;
        }
      }

      else if (v65 == *(v62 + 8 * v69) + 376 * v70)
      {
        break;
      }

      if (*(v65 + 112) == 0.0 && *(v65 + 280) == 0.0)
      {
        v72 = *(v65 + 136);
        if (v72 == -1)
        {
          v72 = *(v65 + 128);
          v73 = *(v65 + 304);
          if (v73 == -1)
          {
            goto LABEL_139;
          }

LABEL_136:
          if ((v72 & 0x8000000000000000) == 0)
          {
LABEL_140:
            if ((v73 & 0x8000000000000000) == 0 && v72 != v73)
            {
              v74 = (*(v62 + (((v72 + v61) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((v72 + v61) & 0xF));
              v75 = *v65;
              v76 = *(v65 + 8);
              *(v65 + 112) = (v76 - v74[1]) * (v76 - v74[1]) + (*v65 - *v74) * (*v65 - *v74);
              v77 = (*(v62 + (((v73 + v61) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((v73 + v61) & 0xF));
              *(v65 + 280) = (v76 - v77[1]) * (v76 - v77[1]) + (v75 - *v77) * (v75 - *v77);
            }
          }
        }

        else
        {
          v73 = *(v65 + 304);
          if (v73 != -1)
          {
            goto LABEL_136;
          }

LABEL_139:
          v73 = *(v65 + 296);
          if ((v72 & 0x8000000000000000) == 0)
          {
            goto LABEL_140;
          }
        }
      }

      v65 += 376;
      v71 += 376;
      if (*v64 == v71)
      {
        v78 = v64[1];
        ++v64;
        v65 = v78;
        continue;
      }

      goto LABEL_128;
    }
  }

  sub_1002927C8(&v81, v82[0]);
}

void sub_100275D5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v26[0] = a1;
  v26[1] = a2;
  v26[2] = a5;
  v26[3] = a8;
  v27 = v28;
  v28[0] = 0;
  v30[0] = 0;
  v30[1] = 0;
  v28[1] = 0;
  v29 = v30;
  v30[2] = a4;
  v30[3] = a9;
  sub_10029282C(v26);
  v17 = a5[1];
  if (a5[2] != v17)
  {
    v18 = a5[4];
    v19 = (v17 + 8 * (v18 >> 4));
    v20 = *v19;
    v21 = *v19 + 376 * (v18 & 0xF);
    v22 = *(v17 + (((a5[5] + v18) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(a5 + 10) + v18) & 0xF);
    while (v21 != v22)
    {
      *(v21 + 200) = 0;
      *(v21 + 204) = 0;
      *(v21 + 368) = 0;
      *(v21 + 372) = 0;
      v21 += 376;
      if (v21 - v20 == 6016)
      {
        v23 = v19[1];
        ++v19;
        v20 = v23;
        v21 = v23;
      }
    }
  }

  v31[0] = a1;
  v31[1] = a2;
  v31[2] = a5;
  v31[3] = a8;
  v31[4] = a4;
  v31[6] = a9;
  v31[7] = a1;
  v31[8] = a2;
  v31[9] = a5;
  v31[10] = a7;
  v31[11] = a8;
  v31[12] = a3;
  v31[13] = a4;
  v31[14] = a9;
  v25 = a6[5];
  v24 = 257;
  sub_100292E64(v31, a6, &v25, &v24);
  sub_1002941F4(&v29, v30[0]);
  sub_100294190(&v27, v28[0]);
}

void sub_100275F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002A5C20(va);
  _Unwind_Resume(a1);
}

void sub_100275F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002A5C20(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100275F28(uint64_t *result, void *a2, uint64_t a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = (v3 + 8 * (a2[4] >> 4));
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5 + 376 * (a2[4] & 0xFLL);
  }

  v7 = (result + 1);
  v46 = (a3 + 8);
  while (v4 != v3)
  {
    v8 = a2[5] + a2[4];
    if (v6 == *(v3 + ((v8 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * (v8 & 0xF))
    {
      return result;
    }

LABEL_10:
    v45 = v5;
    if (*(v6 + 48) != *(v6 + 216) || (*(v6 + 32) & 1) == 0)
    {
      v48 = 0;
      v50 = 0;
      v9 = v6 + 40;
      v47 = (v6 + 40);
      v10 = 40;
      v49 = v6;
      do
      {
        v12 = *(v9 + 8);
        v11 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (*(v6 + 48) != *(v6 + 216) && *(v9 + 112))
        {
          v14 = *v7;
          if (!*v7)
          {
LABEL_33:
            operator new();
          }

          while (1)
          {
            v15 = v14;
            v16 = v14[4];
            if (v12 == v16)
            {
              v17 = v15[5];
              if (v11 == v17)
              {
                v18 = v15[6];
                if (v13 < v18)
                {
                  goto LABEL_21;
                }

                if (v18 >= v13)
                {
                  goto LABEL_134;
                }
              }

              else
              {
                if (v11 < v17)
                {
LABEL_21:
                  v14 = *v15;
                  if (!*v15)
                  {
                    goto LABEL_33;
                  }

                  continue;
                }

                if (v17 >= v11)
                {
                  goto LABEL_134;
                }
              }
            }

            else
            {
              if (v12 < v16)
              {
                goto LABEL_21;
              }

              if (v16 >= v12)
              {
                goto LABEL_134;
              }
            }

            v14 = v15[1];
            if (!v14)
            {
              goto LABEL_33;
            }
          }
        }

        if (*v47 != 3 && *(v6 + 208) != 3)
        {
          v23 = *v7;
          if (*v7)
          {
            goto LABEL_56;
          }

LABEL_67:
          operator new();
        }

        v19 = *v7;
        if (!*v7)
        {
LABEL_50:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            result = v19;
            v20 = v19[4];
            if (v12 != v20)
            {
              if (v12 >= v20)
              {
                if (v20 >= v12)
                {
                  goto LABEL_53;
                }

                goto LABEL_49;
              }

              goto LABEL_38;
            }

            v21 = result[5];
            if (v11 != v21)
            {
              break;
            }

            v22 = result[6];
            if (v13 >= v22)
            {
              if (v22 >= v13)
              {
                goto LABEL_53;
              }

              goto LABEL_49;
            }

LABEL_38:
            v19 = *result;
            if (!*result)
            {
              goto LABEL_50;
            }
          }

          if (v11 < v21)
          {
            goto LABEL_38;
          }

          if (v21 >= v11)
          {
            break;
          }

LABEL_49:
          v19 = result[1];
          if (!v19)
          {
            goto LABEL_50;
          }
        }

LABEL_53:
        *(result + 57) = 1;
        v23 = *v7;
        if (!*v7)
        {
          goto LABEL_67;
        }

LABEL_56:
        while (2)
        {
          while (2)
          {
            v24 = v23;
            v25 = v23[4];
            if (v12 != v25)
            {
              if (v12 < v25)
              {
                goto LABEL_55;
              }

              if (v25 >= v12)
              {
                goto LABEL_68;
              }

              goto LABEL_66;
            }

            v26 = v24[5];
            if (v11 == v26)
            {
              v27 = v24[6];
              if (v13 < v27)
              {
                goto LABEL_55;
              }

              if (v27 >= v13)
              {
                goto LABEL_68;
              }

LABEL_66:
              v23 = v24[1];
              if (!v23)
              {
                goto LABEL_67;
              }

              continue;
            }

            break;
          }

          if (v11 < v26)
          {
LABEL_55:
            v23 = *v24;
            if (!*v24)
            {
              goto LABEL_67;
            }

            continue;
          }

          break;
        }

        if (v26 < v11)
        {
          goto LABEL_66;
        }

LABEL_68:
        if (v24[7])
        {
          v6 = v49;
          goto LABEL_16;
        }

        v28 = *v7;
        if (!*v7)
        {
LABEL_84:
          operator new();
        }

        while (2)
        {
          while (2)
          {
            v29 = v28;
            v30 = v28[4];
            if (v12 != v30)
            {
              if (v12 < v30)
              {
                goto LABEL_72;
              }

              if (v30 >= v12)
              {
                goto LABEL_85;
              }

              goto LABEL_83;
            }

            v31 = v29[5];
            if (v11 == v31)
            {
              v32 = v29[6];
              if (v13 < v32)
              {
                goto LABEL_72;
              }

              if (v32 >= v13)
              {
                goto LABEL_85;
              }

LABEL_83:
              v28 = v29[1];
              if (!v28)
              {
                goto LABEL_84;
              }

              continue;
            }

            break;
          }

          if (v11 < v31)
          {
LABEL_72:
            v28 = *v29;
            if (!*v29)
            {
              goto LABEL_84;
            }

            continue;
          }

          break;
        }

        if (v31 < v11)
        {
          goto LABEL_83;
        }

LABEL_85:
        v6 = v49;
        if (*(v29 + 57))
        {
          goto LABEL_16;
        }

        if (v48)
        {
LABEL_87:
          v48 = 1;
          if (v50)
          {
LABEL_88:
            v50 = 1;
            v33 = *v7;
            if (*v7)
            {
              goto LABEL_122;
            }

            goto LABEL_133;
          }

LABEL_112:
          if (*v9 == 2)
          {
            goto LABEL_113;
          }

LABEL_15:
          v50 = 0;
          goto LABEL_16;
        }

        v34 = *(v49 + 24);
        if (v34 < 1)
        {
          v48 = 0;
          if (v50)
          {
            goto LABEL_88;
          }

          goto LABEL_112;
        }

        v35 = (a3 + 8);
        v36 = *v46;
        if (*v46)
        {
          do
          {
            if (v36[4] >= v34)
            {
              v35 = v36;
            }

            v36 = v36[v36[4] < v34];
          }

          while (v36);
          if (v35 != v46 && v35[4] <= v34)
          {
            v37 = v35[5];
            if (v37 != v35 + 6)
            {
              v50 = 0;
              do
              {
                v38 = *(a2[1] + (((v37[4] + a2[4]) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(v37 + 8) + a2[4]) & 0xF);
                if (*(v38 + 40) == 3 || *(v38 + 208) == 3)
                {
                  v50 = 1;
                }

                v39 = v37[1];
                if (v39)
                {
                  do
                  {
                    v40 = v39;
                    v39 = *v39;
                  }

                  while (v39);
                }

                else
                {
                  do
                  {
                    v40 = v37[2];
                    v41 = *v40 == v37;
                    v37 = v40;
                  }

                  while (!v41);
                }

                v37 = v40;
              }

              while (v40 != v35 + 6);
              goto LABEL_87;
            }
          }
        }

        v48 = 1;
        if (*v9 != 2)
        {
          goto LABEL_15;
        }

LABEL_113:
        if (*(v49 + 33))
        {
          goto LABEL_15;
        }

        if (*v47 == 2 && *(v49 + 208) == 2)
        {
          v50 = 0;
          if (*(v49 + 48) == *(v49 + 216))
          {
            goto LABEL_16;
          }

          v33 = *v7;
          if (*v7)
          {
            goto LABEL_122;
          }

LABEL_133:
          operator new();
        }

        v50 = 0;
        v33 = *v7;
        if (!*v7)
        {
          goto LABEL_133;
        }

LABEL_122:
        while (2)
        {
          while (2)
          {
            v15 = v33;
            v42 = v33[4];
            if (v12 != v42)
            {
              if (v12 < v42)
              {
                goto LABEL_121;
              }

              if (v42 >= v12)
              {
                goto LABEL_135;
              }

              goto LABEL_132;
            }

            v43 = v15[5];
            if (v11 == v43)
            {
              v44 = v15[6];
              if (v13 < v44)
              {
                goto LABEL_121;
              }

              if (v44 >= v13)
              {
                goto LABEL_135;
              }

LABEL_132:
              v33 = v15[1];
              if (!v33)
              {
                goto LABEL_133;
              }

              continue;
            }

            break;
          }

          if (v11 < v43)
          {
LABEL_121:
            v33 = *v15;
            if (!*v15)
            {
              goto LABEL_133;
            }

            continue;
          }

          break;
        }

        if (v43 < v11)
        {
          goto LABEL_132;
        }

LABEL_135:
        v6 = v49;
LABEL_134:
        *(v15 + 57) = 1;
LABEL_16:
        v10 += 168;
        v9 = v6 + v10;
      }

      while (v10 != 376);
    }

    v6 += 376;
    v5 = v45;
    if (v6 - *v45 == 6016)
    {
      v5 = v45 + 1;
      v6 = v45[1];
    }

    v3 = a2[1];
    v4 = a2[2];
  }

  if (v6)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_100276D48(float64_t **a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v9 = a4[2];
  __p = 0;
  v83 = 0;
  v84 = 0;
  if (v9)
  {
    if (v9 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v10 = 0;
  v12 = (a4 + 1);
  v11 = *a4;
  if (*a4 == a4 + 1)
  {
    v64 = 1;
    goto LABEL_75;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v17 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  __asm { FMOV            V2.2D, #1.0 }

  v23 = vdupq_n_s64(0x3CB0000000000000uLL);
  do
  {
    v24 = v11[10];
    v25 = -v24;
    if (!*(v11 + 88))
    {
      v25 = v11[10];
    }

    v26 = &v10[9 * v15];
    v27 = *(v11 + 2);
    v26[2] = *(v11 + 6);
    *v26 = v27;
    *(v26 + 3) = v25;
    *(v26 + 4) = fabs(v24);
    v28 = v78;
    *(v26 + 7) = v79;
    *(v26 + 5) = v28;
    v10 = __p;
    v29 = __p + 72 * v15;
    v30 = *(v11 + 4);
    if (v30)
    {
      if (v30 != 1)
      {
        if (v30 != 2)
        {
          v41 = *(v29 + 56);
          v40 = *(v29 + 40);
          goto LABEL_64;
        }

        v31 = a3[4];
        v32 = a3[1];
        v33 = (v32 + 8 * (v31 / 0xAA));
        if (a3[2] == v32)
        {
          v34 = 0;
          v35 = *(v11 + 5);
          if (!v35)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v34 = (*v33 + 24 * (v31 % 0xAA));
          v35 = *(v11 + 5);
          if (!v35)
          {
            goto LABEL_50;
          }
        }

        v54 = v35 - 0x5555555555555555 * ((v34 - *v33) >> 3);
        if (v54 < 1)
        {
          v34 = (v33[-((169 - v54) / 0xAAuLL)] + 24 * (170 * ((169 - v54) / 0xAAuLL) - (169 - v54)) + 4056);
        }

        else
        {
          v34 = (v33[v54 / 0xAAuLL] + 24 * (v54 % 0xAAuLL));
        }

LABEL_50:
        v40 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v56 = *v34;
        v55 = v34[1];
        *(v29 + 40) = v40;
        v41 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        *(v29 + 56) = v41;
        if (v56 == v55)
        {
          goto LABEL_64;
        }

        v40.f64[0] = *v56;
        *(v29 + 5) = *v56;
        v42 = v56[1];
        *(v29 + 6) = v42;
        v41.f64[0] = *v56;
        *(v29 + 7) = *v56;
        v43 = v56[1];
        *(v29 + 8) = v43;
        v57 = v56 + 2;
        if (v56 + 2 == v55)
        {
          goto LABEL_52;
        }

        while (1)
        {
          v58 = *v57;
          if (*v57 >= v40.f64[0])
          {
            if (v58 <= v41.f64[0])
            {
LABEL_56:
              v59 = v57[1];
              if (v59 < v42)
              {
                goto LABEL_57;
              }

              goto LABEL_61;
            }
          }

          else
          {
            *(v29 + 5) = v58;
            v40.f64[0] = v58;
            if (v58 <= v41.f64[0])
            {
              goto LABEL_56;
            }
          }

          *(v29 + 7) = v58;
          v41.f64[0] = v58;
          v59 = v57[1];
          if (v59 < v42)
          {
LABEL_57:
            *(v29 + 6) = v59;
            v42 = v59;
            if (v59 > v43)
            {
              goto LABEL_62;
            }

            goto LABEL_53;
          }

LABEL_61:
          if (v59 > v43)
          {
LABEL_62:
            *(v29 + 8) = v59;
            v43 = v59;
          }

LABEL_53:
          v57 += 2;
          if (v57 == v55)
          {
            goto LABEL_63;
          }
        }
      }

      v36 = *(v11 + 6);
      v37 = (*a2 + 48 * *(v11 + 5));
      if ((v36 & 0x8000000000000000) == 0)
      {
        v37 = &v37[3][3 * v36];
      }

      v39 = *v37;
      v38 = v37[1];
      *(v29 + 40) = v16;
      *(v29 + 56) = v17;
      v40 = v16;
      v41 = v17;
      if (v39 != v38)
      {
        v40.f64[0] = *v39;
        *(v29 + 5) = *v39;
        v42 = v39[1];
        *(v29 + 6) = v42;
        v41.f64[0] = *v39;
        *(v29 + 7) = *v39;
        v43 = v39[1];
        *(v29 + 8) = v43;
        v44 = v39 + 2;
        if (v44 == v38)
        {
LABEL_52:
          v40.f64[1] = v42;
          v41.f64[1] = v43;
          goto LABEL_64;
        }

        while (2)
        {
          v45 = *v44;
          if (*v44 >= v40.f64[0])
          {
            if (v45 > v41.f64[0])
            {
              goto LABEL_27;
            }

LABEL_23:
            v46 = v44[1];
            if (v46 < v42)
            {
              goto LABEL_24;
            }

LABEL_28:
            if (v46 > v43)
            {
LABEL_29:
              *(v29 + 8) = v46;
              v43 = v46;
            }
          }

          else
          {
            *(v29 + 5) = v45;
            v40.f64[0] = v45;
            if (v45 <= v41.f64[0])
            {
              goto LABEL_23;
            }

LABEL_27:
            *(v29 + 7) = v45;
            v41.f64[0] = v45;
            v46 = v44[1];
            if (v46 >= v42)
            {
              goto LABEL_28;
            }

LABEL_24:
            *(v29 + 6) = v46;
            v42 = v46;
            if (v46 > v43)
            {
              goto LABEL_29;
            }
          }

          v44 += 2;
          if (v44 == v38)
          {
            goto LABEL_63;
          }

          continue;
        }
      }
    }

    else
    {
      v47 = *(v11 + 6);
      v48 = a1;
      if ((v47 & 0x8000000000000000) == 0)
      {
        v48 = &a1[3][3 * v47];
      }

      v50 = *v48;
      v49 = v48[1];
      *(v29 + 40) = v16;
      *(v29 + 56) = v17;
      v40 = v16;
      v41 = v17;
      if (v50 != v49)
      {
        v40.f64[0] = *v50;
        *(v29 + 5) = *v50;
        v42 = v50[1];
        *(v29 + 6) = v42;
        v41.f64[0] = *v50;
        *(v29 + 7) = *v50;
        v43 = v50[1];
        *(v29 + 8) = v43;
        v51 = v50 + 2;
        if (v51 == v49)
        {
          goto LABEL_52;
        }

        while (2)
        {
          v52 = *v51;
          if (*v51 >= v40.f64[0])
          {
            if (v52 > v41.f64[0])
            {
              goto LABEL_42;
            }

LABEL_38:
            v53 = v51[1];
            if (v53 < v42)
            {
              goto LABEL_39;
            }

LABEL_43:
            if (v53 > v43)
            {
LABEL_44:
              *(v29 + 8) = v53;
              v43 = v53;
            }
          }

          else
          {
            *(v29 + 5) = v52;
            v40.f64[0] = v52;
            if (v52 <= v41.f64[0])
            {
              goto LABEL_38;
            }

LABEL_42:
            *(v29 + 7) = v52;
            v41.f64[0] = v52;
            v53 = v51[1];
            if (v53 >= v42)
            {
              goto LABEL_43;
            }

LABEL_39:
            *(v29 + 6) = v53;
            v42 = v53;
            if (v53 > v43)
            {
              goto LABEL_44;
            }
          }

          v51 += 2;
          if (v51 == v49)
          {
LABEL_63:
            v41.f64[1] = v43;
            v40.f64[1] = v42;
            break;
          }

          continue;
        }
      }
    }

LABEL_64:
    v60 = vabsq_f64(v40);
    v61 = vabsq_f64(v41);
    *(v29 + 40) = vsubq_f64(v40, vmulq_f64(vbslq_s8(vcgtq_f64(_Q2, v60), _Q2, v60), v23));
    *(v29 + 56) = vaddq_f64(v41, vmulq_f64(vbslq_s8(vcgtq_f64(_Q2, v61), _Q2, v61), v23));
    if (*(v29 + 3) > 0.0)
    {
      v14 = v15;
      ++v13;
    }

    v62 = *(v11 + 1);
    if (v62)
    {
      do
      {
        v63 = v62;
        v62 = *v62;
      }

      while (v62);
    }

    else
    {
      do
      {
        v63 = *(v11 + 2);
        _ZF = *v63 == v11;
        v11 = v63;
      }

      while (!_ZF);
    }

    ++v15;
    v11 = v63;
  }

  while (v63 != v12);
  if (!v13)
  {
    goto LABEL_73;
  }

  if (v13 == 1)
  {
    v71 = &v10[9 * v14];
    v72 = *v71;
    *&v79 = v71[2];
    v78 = v72;
    v85 = &v78;
    v73 = sub_1002A6E6C(a4, &v78);
    v74 = v83;
    if (v10 != v83)
    {
      v75 = v73;
      do
      {
        if (v14)
        {
          v85 = v10;
          v76 = sub_1002A6E6C(a4, v10);
          *(v76 + 6) = v78;
          v76[14] = v79;
          sub_1002A6FD8((v75 + 16), v10);
          v74 = v83;
        }

        v10 += 9;
        --v14;
      }

      while (v10 != v74);
    }

LABEL_73:
    v64 = 1;
    v65 = __p;
    if (__p)
    {
LABEL_74:
      v83 = v65;
      operator delete(v65);
    }
  }

  else
  {
    *&v78 = a1;
    *(&v78 + 1) = a2;
    *&v79 = a3;
    *(&v79 + 1) = a4;
    v80 = a5;
    v81 = 0;
    v85 = a5;
    v77 = a5;
    sub_1002A7124(&__p, &v78, &v85, &v77, 0x10uLL);
    v64 = 0;
    v65 = __p;
    if (__p)
    {
      goto LABEL_74;
    }
  }

LABEL_75:
  v66 = *a4;
  if (*a4 == v12)
  {
    v67 = 1;
  }

  else
  {
    v67 = v64;
  }

  if ((v67 & 1) == 0)
  {
    do
    {
      if ((v66[12] & 0x8000000000000000) == 0)
      {
        *&v78 = v66 + 12;
        v68 = sub_1002A6E6C(a4, v66 + 12);
        sub_1002A6FD8((v68 + 16), v66 + 2);
      }

      v69 = *(v66 + 1);
      if (v69)
      {
        do
        {
          v70 = v69;
          v69 = *v69;
        }

        while (v69);
      }

      else
      {
        do
        {
          v70 = *(v66 + 2);
          _ZF = *v70 == v66;
          v66 = v70;
        }

        while (!_ZF);
      }

      v66 = v70;
    }

    while (v70 != v12);
  }
}

void sub_100277448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10027746C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t a6, int a7)
{
  v8 = a1 + 1;
  v9 = *a1;
  if (*a1 != a1 + 1)
  {
    while ((*(v9 + 89) & 1) != 0 || v9[12] != -1)
    {
LABEL_133:
      v110 = v9[1];
      if (v110)
      {
        do
        {
          v111 = v110;
          v110 = *v110;
        }

        while (v110);
      }

      else
      {
        do
        {
          v111 = v9[2];
          v30 = *v111 == v9;
          v9 = v111;
        }

        while (!v30);
      }

      v9 = v111;
      if (v111 == v8)
      {
        return a5;
      }
    }

    *__p = 0u;
    v125 = 0u;
    *v123 = 0u;
    v11 = v9[4];
    v12 = v9[5];
    v13 = *(v9 + 88);
    if (v11 != 2)
    {
      v14 = v9[6];
      if (v11 == 1)
      {
        v15 = *a3 + 48 * v12;
        if ((v14 & 0x8000000000000000) == 0)
        {
          v15 = *(v15 + 24) + 24 * v14;
          if (v123 == v15)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      else
      {
        if (v11)
        {
          goto LABEL_25;
        }

        v15 = a2;
        if ((v14 & 0x8000000000000000) == 0)
        {
          v15 = *(a2 + 24) + 24 * v14;
          if (v123 == v15)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      goto LABEL_17;
    }

    v16 = a4[4];
    v17 = a4[1];
    v18 = (v17 + 8 * (v16 / 0xAA));
    if (a4[2] == v17)
    {
      v15 = 0;
      if (!v12)
      {
LABEL_17:
        if (v123 == v15)
        {
LABEL_19:
          if (v13)
          {
            if (v123[0] != v123[1])
            {
              v19 = v123[1] - 16;
              if (v123[1] - 16 > v123[0])
              {
                v20 = v123[0] + 16;
                do
                {
                  v21 = *(v20 - 1);
                  *(v20 - 1) = *v19;
                  *v19 = v21;
                  v19 -= 16;
                  v22 = v20 >= v19;
                  v20 += 16;
                }

                while (!v22);
              }
            }
          }

LABEL_25:
          v23 = v9[16];
          if (v23 != v9[17])
          {
            v24 = *v8;
            if (*v8)
            {
LABEL_27:
              v26 = *v23;
              v25 = v23[1];
              v27 = v8;
              v28 = v23[2];
              do
              {
                v32 = v24[4];
                v33 = v32 < v26;
                if (v32 == v26)
                {
                  v34 = v24[5];
                  v33 = v34 < v25;
                  if (v34 == v25)
                  {
                    v33 = v24[6] < v28;
                  }
                }

                v29 = v33;
                v30 = v29 == 0;
                if (v29)
                {
                  v31 = 1;
                }

                else
                {
                  v31 = 0;
                }

                if (v30)
                {
                  v27 = v24;
                }

                v24 = v24[v31];
              }

              while (v24);
              if (v27 != v8)
              {
                v35 = v27[4];
                v36 = v26 < v35;
                if (v26 == v35)
                {
                  v37 = v27[5];
                  v36 = v25 < v37;
                  if (v25 == v37)
                  {
                    v36 = v28 < v27[6];
                  }
                }

                if (!v36 && (*(v27 + 89) & 1) == 0)
                {
                  v38 = *(v27 + 88);
                  if (v26 == 2)
                  {
                    v40 = a4[4];
                    v41 = a4[1];
                    v42 = (v41 + 8 * (v40 / 0xAA));
                    if (a4[2] == v41)
                    {
                      v39 = 0;
                      if (!v25)
                      {
                        goto LABEL_58;
                      }
                    }

                    else
                    {
                      v39 = *v42 + 24 * (v40 % 0xAA);
                      if (!v25)
                      {
                        goto LABEL_58;
                      }
                    }

                    v57 = v25 - 0x5555555555555555 * ((v39 - *v42) >> 3);
                    if (v57 < 1)
                    {
                      v58 = 169 - v57;
                      v59 = v58 / 0xAA;
                      v39 = v42[-v59] + 24 * (170 * v59 - v58) + 4056;
                      if (*(v42[-v59] + 24 * (170 * v59 - v58) + 4064) - *v39 < 0x31uLL)
                      {
                        goto LABEL_84;
                      }
                    }

                    else
                    {
                      v39 = v42[v57 / 0xAAuLL] + 24 * (v57 % 0xAAuLL);
                      if (*(v39 + 8) - *v39 < 0x31uLL)
                      {
                        goto LABEL_84;
                      }
                    }

                    goto LABEL_59;
                  }

                  if (v26 != 1)
                  {
                    if (v26)
                    {
                      goto LABEL_84;
                    }

                    v39 = a2;
                    if ((v28 & 0x8000000000000000) == 0)
                    {
                      v39 = *(a2 + 24) + 24 * v28;
                      if (*(v39 + 8) - *v39 < 0x31uLL)
                      {
                        goto LABEL_84;
                      }

                      goto LABEL_59;
                    }

LABEL_58:
                    if (*(v39 + 8) - *v39 < 0x31uLL)
                    {
                      goto LABEL_84;
                    }

                    goto LABEL_59;
                  }

                  v39 = *a3 + 48 * v25;
                  if (v28 < 0)
                  {
                    goto LABEL_58;
                  }

                  v39 = *(v39 + 24) + 24 * v28;
                  if (*(v39 + 8) - *v39 < 0x31uLL)
                  {
                    goto LABEL_84;
                  }

LABEL_59:
                  v43 = a2;
                  v44 = a5;
                  v46 = __p[1];
                  v45 = v125;
                  if (v125 - __p[1] == -24)
                  {
                    if (v125 != __p[1])
                    {
                      v47 = v125;
                      do
                      {
                        v49 = *(v47 - 3);
                        v47 -= 24;
                        v48 = v49;
                        if (v49)
                        {
                          *(v45 - 2) = v48;
                          operator delete(v48);
                        }

                        v45 = v47;
                      }

                      while (v47 != v46);
                    }

                    *&v125 = v46;
                    v50 = (v46 - 24);
                    if (v46 - 24 != v39)
                    {
LABEL_68:
                      sub_100273AA0(v50, *v39, *(v39 + 8), (*(v39 + 8) - *v39) >> 4);
                    }
                  }

                  else
                  {
                    sub_1002A9F14(&__p[1], 1uLL);
                    v50 = (v125 - 24);
                    if (v125 - 24 != v39)
                    {
                      goto LABEL_68;
                    }
                  }

                  a5 = v44;
                  a2 = v43;
                  if (v38)
                  {
                    v51 = *(v125 - 24);
                    v52 = *(v125 - 16);
                    v53 = (v52 - 16);
                    if (v51 != v52 && v53 > v51)
                    {
                      v55 = v51 + 16;
                      do
                      {
                        v56 = *(v55 - 16);
                        *(v55 - 16) = *v53;
                        *v53-- = v56;
                        v22 = v55 >= v53;
                        v55 += 16;
                      }

                      while (!v22);
                    }
                  }
                }
              }

LABEL_84:
              while (1)
              {
                v23 += 3;
                if (v23 == v9[17])
                {
                  break;
                }

                v24 = *v8;
                if (*v8)
                {
                  goto LABEL_27;
                }
              }
            }
          }

          v60 = v123[1] - v123[0];
          v61 = (v123[1] - v123[0]) >> 4;
          v62 = __p[1];
          if (__p[1] != v125)
          {
            v63 = v125 - __p[1] - 24;
            v64 = __p[1];
            if (v63 >= 0x60)
            {
              v65 = v63 / 0x18 + 1;
              v66 = v65 & 3;
              if ((v65 & 3) == 0)
              {
                v66 = 4;
              }

              v67 = v65 - v66;
              v64 = (__p[1] + 24 * v67);
              v68 = 0uLL;
              v69 = ((v123[1] - v123[0]) >> 4);
              v70 = __p[1];
              do
              {
                v71 = v70;
                v70 += 12;
                v134 = vld3q_f64(v71);
                v71 += 6;
                v69 = vsraq_n_s64(v69, vsubq_s64(v134.val[1], v134.val[0]), 4uLL);
                v135 = vld3q_f64(v71);
                v68 = vsraq_n_s64(v68, vsubq_s64(v135.val[1], v135.val[0]), 4uLL);
                v67 -= 4;
              }

              while (v67);
              v61 = vaddvq_s64(vaddq_s64(v68, v69));
            }

            do
            {
              v72 = *v64;
              v73 = v64[1];
              v64 += 3;
              v61 += (v73 - v72) >> 4;
            }

            while (v64 != v125);
          }

          if (v61 < 4)
          {
LABEL_123:
            if (v62)
            {
              v105 = v125;
              v106 = v62;
              if (v125 != v62)
              {
                v107 = v125;
                do
                {
                  v109 = *(v107 - 3);
                  v107 -= 24;
                  v108 = v109;
                  if (v109)
                  {
                    *(v105 - 2) = v108;
                    operator delete(v108);
                  }

                  v105 = v107;
                }

                while (v107 != v62);
                v106 = __p[1];
              }

              *&v125 = v62;
              operator delete(v106);
            }

            if (v123[0])
            {
              v123[1] = v123[0];
              operator delete(v123[0]);
            }

            goto LABEL_133;
          }

          v74 = 0.0;
          v75 = 0.0;
          if (v60 < 0x40 || (v76 = (v123[0] + 16), v123[0] + 16 == v123[1]))
          {
LABEL_109:
            if (__p[1] != v125)
            {
              v74 = 0.0;
              v88 = __p[1];
              while (2)
              {
                v91 = *v88;
                v90 = v88[1];
                v92 = v90 - *v88;
                v89 = 0.0;
                if (v92 < 0x40)
                {
                  goto LABEL_112;
                }

                v93 = v91 + 2;
                if (v91 + 2 == v90)
                {
                  goto LABEL_112;
                }

                v94 = v92 - 32;
                if (v94 <= 0x2F)
                {
                  v95 = *v88;
                  goto LABEL_120;
                }

                v96 = (v94 >> 4) + 1;
                v97 = 2 * (v96 & 0x1FFFFFFFFFFFFFFCLL);
                v93 = (v93 + v97 * 8);
                v95 = &v91[v97];
                v98 = v91 + 4;
                v99 = v96 & 0x1FFFFFFFFFFFFFFCLL;
                do
                {
                  v100 = v98 - 4;
                  v127 = vld2q_f64(v100);
                  v129 = vld2q_f64(v98);
                  v101 = v98 - 2;
                  v102 = v98 + 2;
                  v132 = vld2q_f64(v101);
                  v133 = vld2q_f64(v102);
                  v127.val[0] = vmulq_f64(vaddq_f64(v127.val[0], v132.val[0]), vsubq_f64(v127.val[1], v132.val[1]));
                  v127.val[1] = vmulq_f64(vaddq_f64(v129.val[0], v133.val[0]), vsubq_f64(v129.val[1], v133.val[1]));
                  v89 = v89 + v127.val[0].f64[0] + v127.val[0].f64[1] + v127.val[1].f64[0] + v127.val[1].f64[1];
                  v98 += 8;
                  v99 -= 4;
                }

                while (v99);
                if (v96 != (v96 & 0x1FFFFFFFFFFFFFFCLL))
                {
                  do
                  {
LABEL_120:
                    v103 = *v93;
                    v93 += 2;
                    v89 = v89 + (*v95 + v103) * (v95[1] - v95[3]);
                    v95 += 2;
                  }

                  while (v93 != v90);
                }

                v89 = v89 * 0.5;
LABEL_112:
                v74 = v74 + v89;
                v88 += 3;
                if (v88 == v125)
                {
                  break;
                }

                continue;
              }
            }

            v104 = v75 + v74;
            if (v104 != 0.0)
            {
              if ((*&v104 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || ((v112 = fabs(v104), v112 >= 1.0) ? (v113 = v112) : (v113 = 1.0), v112 > v113 * 2.22044605e-16))
              {
                if (a7 == 1 || v104 > 0.0)
                {
                  v114 = a5[1];
                  if (v114 >= a5[2])
                  {
                    v115 = sub_1002AA110(a5, v123);
                  }

                  else
                  {
                    sub_1002737CC(a5[1], v123);
                    v115 = v114 + 48;
                    a5[1] = v114 + 48;
                  }

                  a5[1] = v115;
                  v62 = __p[1];
                }

                else if (a7 == 2)
                {
                  v122 = &off_100445760;
                  v120.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/overlay/add_rings.hpp";
                  v120.i64[1] = "OutputIterator boost::geometry::detail::overlay::add_rings(const SelectionMap &, const Geometry1 &, const Geometry2 &, const RingCollection &, OutputIterator, const Strategy &, add_rings_error_handling) [GeometryOut = boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>, SelectionMap = std::map<boost::geometry::ring_identifier, boost::geometry::detail::overlay::ring_properties<boost::geometry::model::d2::point_xy<double>, double>>, Geometry1 = boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>, Geometry2 = boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>>, RingCollection = std::deque<boost::geometry::model::ring<boost::geometry::model::d2::point_xy<double>>>, OutputIterator = boost::geometry::range::back_insert_iterator<boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>>>, Strategy = boost::geometry::strategies::relate::cartesian<>]";
                  v121 = 157;
                  sub_1002A9EA8(&v122, &v120);
                }
              }
            }

            goto LABEL_123;
          }

          v77 = v60 - 32;
          if (v77 > 0x2F)
          {
            v80 = (v77 >> 4) + 1;
            v81 = 16 * (v80 & 0x1FFFFFFFFFFFFFFCLL);
            v76 = (v76 + v81);
            v78 = (v123[0] + v81);
            v82 = (v123[0] + 32);
            v83 = v80 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v84 = v82 - 4;
              v126 = vld2q_f64(v84);
              v128 = vld2q_f64(v82);
              v85 = v82 - 2;
              v86 = v82 + 2;
              v130 = vld2q_f64(v85);
              v131 = vld2q_f64(v86);
              v126.val[0] = vmulq_f64(vaddq_f64(v126.val[0], v130.val[0]), vsubq_f64(v126.val[1], v130.val[1]));
              v126.val[1] = vmulq_f64(vaddq_f64(v128.val[0], v131.val[0]), vsubq_f64(v128.val[1], v131.val[1]));
              v75 = v75 + v126.val[0].f64[0] + v126.val[0].f64[1] + v126.val[1].f64[0] + v126.val[1].f64[1];
              v82 += 8;
              v83 -= 4;
            }

            while (v83);
            if (v80 == (v80 & 0x1FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_108;
            }
          }

          else
          {
            v78 = v123[0];
          }

          do
          {
            v87 = *v76;
            v76 += 2;
            v75 = v75 + (*v78 + v87) * (v78[1] - v78[3]);
            v78 += 2;
          }

          while (v76 != v123[1]);
LABEL_108:
          v75 = v75 * 0.5;
          goto LABEL_109;
        }

LABEL_18:
        sub_100273AA0(v123, *v15, *(v15 + 8), (*(v15 + 8) - *v15) >> 4);
        goto LABEL_19;
      }
    }

    else
    {
      v15 = *v18 + 24 * (v16 % 0xAA);
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    v79 = v12 - 0x5555555555555555 * ((v15 - *v18) >> 3);
    if (v79 < 1)
    {
      v15 = v18[-((169 - v79) / 0xAAuLL)] + 24 * (170 * ((169 - v79) / 0xAAuLL) - (169 - v79)) + 4056;
      if (v123 == v15)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v15 = v18[v79 / 0xAAuLL] + 24 * (v79 % 0xAAuLL);
      if (v123 == v15)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

  return a5;
}

void sub_100277DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_100277DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v9 + 8) = v10;
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_100277DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::exception a16, char a17)
{
  std::exception::~exception(&a16);
  sub_1002725B0(&a17);
  _Unwind_Resume(a1);
}

void sub_100277E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_100277E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100277E30(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 / 0xAA];
    v6 = *v5;
    v7 = *v5 + 24 * (v4 % 0xAA);
    v8 = v2[(*(a1 + 40) + v4) / 0xAA] + 24 * ((*(a1 + 40) + v4) % 0xAA);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        if (*v7)
        {
          *(v7 + 8) = v9;
          operator delete(v9);
          v6 = *v5;
        }

        v7 += 24;
        if (v7 - v6 == 4080)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 85;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 170;
LABEL_17:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100277FC4(int a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = 0;
  v49 = 0;
  v50 = 0;
  __p = 0;
  v46 = 0;
  v47 = 0;
  v16 = *a2;
  v17 = *(a2 + 8);
  if ((v17 - v16) >= 0x11)
  {
    *&v38 = 0;
    *(&v38 + 1) = -1;
    v39 = -1;
    sub_100278258(&v48, v16, v17, a6, a5, &v38, 0xAuLL);
  }

  v32 = a1;
  v33 = a3;
  v34 = a7;
  v35 = a8;
  v19 = *(a2 + 24);
  v18 = *(a2 + 32);
  if (v19 != v18)
  {
    v20 = 0;
    do
    {
      v21 = *v19;
      v22 = v19[1];
      if ((v22 - *v19) >= 0x11)
      {
        v38 = xmmword_1003C6FC0;
        v39 = v20;
        sub_100278258(&v48, v21, v22, a6, a5, &v38, 0xAuLL);
        v18 = *(a2 + 32);
      }

      v19 += 3;
      ++v20;
    }

    while (v19 != v18);
  }

  v46 = 0;
  v23 = *a4;
  if (*a4 != a4[1])
  {
    v24 = 0;
    do
    {
      v25 = *v23;
      v26 = *(v23 + 8);
      if (v26 - *v23 >= 0x11)
      {
        *&v38 = 1;
        *(&v38 + 1) = v24;
        v39 = -1;
        sub_100278258(&__p, v25, v26, a6, a5, &v38, 0xAuLL);
      }

      v28 = *(v23 + 24);
      v27 = *(v23 + 32);
      if (v28 != v27)
      {
        v29 = 0;
        do
        {
          v30 = *v28;
          v31 = v28[1];
          if ((v31 - *v28) >= 0x11)
          {
            *&v38 = 1;
            *(&v38 + 1) = v24;
            v39 = v29;
            sub_100278258(&__p, v30, v31, a6, a5, &v38, 0xAuLL);
            v27 = *(v23 + 32);
          }

          v28 += 3;
          ++v29;
        }

        while (v28 != v27);
      }

      v23 += 48;
      ++v24;
    }

    while (v23 != a4[1]);
  }

  LODWORD(v38) = v32;
  *(&v38 + 1) = a2;
  LODWORD(v39) = v33;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = v34;
  v44 = v35;
  v36 = a5;
  v37 = a5;
  sub_1002788AC(&v48, &__p, &v38, &v37, &v36, &v37, &v36, 0x10uLL);
  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }
}

void sub_10027820C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
    v29 = *(v27 - 112);
    if (!v29)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v29 = *(v27 - 112);
    if (!v29)
    {
      goto LABEL_3;
    }
  }

  *(v27 - 104) = v29;
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

void sub_100278258(void *a1, double *a2, double *a3, uint64_t a4, uint64_t a5, __int128 *a6, unint64_t a7)
{
  v7 = a3 - a2;
  if (a3 == a2)
  {
    return;
  }

  *(&v56 + 1) = -1;
  v57 = -1;
  v60 = -1;
  v61 = -1;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = -1;
  v66 = 0;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v43 = vnegq_f64(0);
  v44 = vnegq_f64(v12);
  v58 = v44;
  v59 = v43;
  v55 = 0;
  *&v56 = -1;
  v13 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v14 = *(a4 + 24) + (a2[1] - *(a4 + 8)) * *(a4 + 32);
  if (v14 >= 0.0)
  {
    v15 = 0.5;
  }

  else
  {
    v15 = -0.5;
  }

  v53 = v14 + v15;
  sub_100274990(v14 + v15);
  v17 = *(a4 + 16) + (*a2 - *a4) * *(a4 + 32);
  if (v17 >= 0.0)
  {
    v18 = 0.5;
  }

  else
  {
    v18 = -0.5;
  }

  v50 = v17 + v18;
  sub_100274990(v17 + v18);
  v19 = a2 + 2;
  if (a2 + 2 == a3)
  {
    goto LABEL_56;
  }

  v20 = 0;
  v21 = 0;
  v22.f64[0] = v50;
  v22.f64[1] = v53;
  v23 = vcvtq_s64_f64(vbslq_s8(vcltzq_f64(v22), vrndpq_f64(v22), vrndmq_f64(v22)));
  v41 = v13;
  v45 = 1;
  do
  {
    v54 = v23;
    v25 = *(a4 + 24) + (v19[1] - *(a4 + 8)) * *(a4 + 32);
    if (v25 >= 0.0)
    {
      v26 = 0.5;
    }

    else
    {
      v26 = -0.5;
    }

    v51 = v25 + v26;
    sub_100274990(v25 + v26);
    v27 = *(a4 + 16) + (*v19 - *a4) * *(a4 + 32);
    if (v27 >= 0.0)
    {
      v28 = 0.5;
    }

    else
    {
      v28 = -0.5;
    }

    v48 = v27 + v28;
    sub_100274990(v27 + v28);
    v29.f64[0] = v48;
    v29.f64[1] = v51;
    v30 = vbslq_s8(vcltzq_f64(v29), vrndpq_f64(v29), vrndmq_f64(v29));
    v31 = v54;
    v23 = vcvtq_s64_f64(v30);
    v32 = vmovn_s64(vcgtq_s64(v23, v54));
    v33 = vmovn_s64(vcgtq_s64(v54, v23));
    v34 = vbsl_s8(v32, 0x100000001, v33);
    if (v34.i32[0])
    {
      v35 = 0;
      v36 = v62;
      if (!v62)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v37 = vmovn_s64(vceqq_s64(v54, v23));
      v34.i32[0] = 0;
      v35 = v37.i8[0] & v37.i8[4];
      if (v37.i32[0] & v37.i32[1])
      {
        v38 = -1;
      }

      else
      {
        v38 = 0;
      }

      v34 = vbsl_s8(vdup_n_s32(v38), 0x9D0000009DLL, v34);
      v36 = v62;
      if (!v62)
      {
        goto LABEL_36;
      }
    }

    if (v55.i32[0] != v34.i8[0] || v36 > a7 || v55.i32[1] != v34.i8[4])
    {
      v46 = v34;
      v47 = v33;
      v49 = v32;
      v52 = v23;
      if ((v64 & 1) == 0)
      {
        v41 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
      }

      sub_100278730(a1, &v55);
      *(&v56 + 1) = -1;
      v57 = -1;
      *&v56 = -1;
      v60 = -1;
      v61 = -1;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v55 = 0;
      v58 = v44;
      v59 = v43;
      v65 = -1;
      v66 = 0;
      v23 = v52;
      v31 = v54;
      v33 = v47;
      v32 = v49;
      v34 = v46;
LABEL_36:
      v56 = *a6;
      v57 = *(a6 + 2);
      v64 = v35 & 1;
      v65 = v20;
      v60 = v21;
      v63 = v7 >> 4;
      if (v35 & 1 | ((v45 & 1) == 0))
      {
        v55 = vshr_n_s32(vshl_n_s32(v34, 0x18uLL), 0x18uLL);
        v58 = v31;
        v59 = v31;
        if ((v33.i8[0] & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v45 = 0;
        LOBYTE(v66) = 1;
        v55 = vshr_n_s32(vshl_n_s32(v34, 0x18uLL), 0x18uLL);
        v58 = v31;
        v59 = v31;
        if ((v33.i8[0] & 1) == 0)
        {
LABEL_38:
          if ((v32.i8[0] & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_44;
        }
      }

      *&v58.f64[0] = v23.i64[0];
      if ((v32.i8[0] & 1) == 0)
      {
LABEL_39:
        if ((v33.i8[4] & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_45:
        *&v58.f64[1] = v23.i64[1];
        v36 = 0;
        if (v32.i8[4])
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }

LABEL_44:
      *&v59.f64[0] = v23.i64[0];
      if ((v33.i8[4] & 1) == 0)
      {
LABEL_40:
        v36 = 0;
        if (v32.i8[4])
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }

      goto LABEL_45;
    }

    if (*&v58.f64[0] > v23.i64[0])
    {
      *&v58.f64[0] = v23.i64[0];
      if (*&v59.f64[0] < v23.i64[0])
      {
LABEL_48:
        v39 = v23.i64[1];
        *&v59.f64[0] = v23.i64[0];
        if (*&v58.f64[1] <= v23.i64[1])
        {
LABEL_34:
          if (*&v59.f64[1] < v39)
          {
            goto LABEL_10;
          }

          goto LABEL_11;
        }

        goto LABEL_49;
      }
    }

    else if (*&v59.f64[0] < v23.i64[0])
    {
      goto LABEL_48;
    }

    v39 = v23.i64[1];
    if (*&v58.f64[1] <= v23.i64[1])
    {
      goto LABEL_34;
    }

LABEL_49:
    *&v58.f64[1] = v39;
    if (*&v59.f64[1] < v39)
    {
LABEL_10:
      *&v59.f64[1] = v23.i64[1];
    }

LABEL_11:
    ++v21;
    v24 = v36 + 1;
    v61 = v21;
    v62 = v24;
    v20 += (v35 & 1) == 0;
    v19 += 2;
  }

  while (v19 != a3);
  if (v24)
  {
    v13 = v41;
    if ((v64 & 1) == 0)
    {
      v13 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
    }

    sub_100278730(a1, &v55);
  }

  else
  {
    v13 = v41;
  }

LABEL_56:
  if (v13 < 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3))
  {
    v40 = *a1 + 120 * v13;
    if ((*(v40 + 96) & 1) == 0)
    {
      *(v40 + 113) = 1;
    }
  }
}

void sub_100278730(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    *(v3 + 32) = a2[2];
    *(v3 + 48) = v7;
    *v3 = v5;
    *(v3 + 16) = v6;
    v8 = a2[4];
    v9 = a2[5];
    v10 = a2[6];
    *(v3 + 112) = *(a2 + 14);
    *(v3 + 80) = v9;
    *(v3 + 96) = v10;
    *(v3 + 64) = v8;
    v11 = v3 + 120;
LABEL_3:
    *(a1 + 8) = v11;
    return;
  }

  v12 = *a1;
  v13 = 0xEEEEEEEEEEEEEEEFLL * ((v3 - *a1) >> 3);
  v14 = v13 + 1;
  if (v13 + 1 > 0x222222222222222)
  {
    sub_10000FC84();
  }

  v15 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - v12) >> 3);
  if (2 * v15 > v14)
  {
    v14 = 2 * v15;
  }

  if (v15 >= 0x111111111111111)
  {
    v16 = 0x222222222222222;
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    if (v16 <= 0x222222222222222)
    {
      operator new();
    }

    sub_10000D444();
  }

  v17 = a2[5];
  v18 = 8 * ((v3 - *a1) >> 3);
  *(v18 + 64) = a2[4];
  *(v18 + 80) = v17;
  *(v18 + 96) = a2[6];
  *(v18 + 112) = *(a2 + 14);
  v19 = a2[1];
  *v18 = *a2;
  *(v18 + 16) = v19;
  v20 = a2[3];
  v11 = 120 * v13 + 120;
  v21 = 120 * v13 - (v3 - v12);
  *(v18 + 32) = a2[2];
  *(v18 + 48) = v20;
  memcpy((v18 - (v3 - v12)), v12, v3 - v12);
  *a1 = v21;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  *(a1 + 8) = v11;
}

uint64_t sub_1002788AC(uint64_t *a1, int **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v12 = *a1;
  v11 = a1[1];
  if (0xEEEEEEEEEEEEEEEFLL * ((v11 - *a1) >> 3) <= a8 || (v14 = *a2, v13 = a2[1], 0xEEEEEEEEEEEEEEEFLL * ((v13 - *a2) >> 3) <= a8))
  {
    if (v12 != v11)
    {
      v24 = a2[1];
      if (*a2 != v24)
      {
        do
        {
          v26 = *a2;
          if (*a2 != v24)
          {
            do
            {
              if (*(v12 + 48) >= *(v26 + 4) && *(v12 + 32) <= *(v26 + 6) && *(v12 + 56) >= *(v26 + 5) && *(v12 + 40) <= *(v26 + 7))
              {
                v38 = *(a3 + 56);
                result = sub_10027A9E0(*a3, *(a3 + 8), v12, *(a3 + 16), *(a3 + 24), v26, 0, 0, *(a3 + 32), *(a3 + 40), *(a3 + 48));
                if (!result)
                {
                  return result;
                }

                v24 = a2[1];
              }

              v26 += 30;
            }

            while (v26 != v24);
            v11 = a1[1];
          }

          v12 += 120;
        }

        while (v12 != v11);
      }
    }

    return 1;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    __p = 0;
    v42 = 0;
    v43 = 0;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v39 = vnegq_f64(v15);
    v40 = vnegq_f64(0);
    if (v12 != v11)
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      v17 = 0x8000000000000000;
      v18 = 0x8000000000000000;
      v19 = 0x7FFFFFFFFFFFFFFFLL;
      v20 = *(v12 + 32);
      if (v20 != 0x7FFFFFFFFFFFFFFFLL && (v39.f64[0] = *(v12 + 32), v19 = v20, v20 == 0x8000000000000000))
      {
        v21 = *(v12 + 40);
        if (v21 == NAN)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *&v40.f64[0] = v20;
        v18 = v20;
        v21 = *(v12 + 40);
        if (v21 == NAN)
        {
          goto LABEL_16;
        }
      }

      v39.f64[1] = v21;
      v16 = *&v21;
      if (v21 == -0.0)
      {
        v22 = *(v12 + 48);
        if (*&v22 < v19)
        {
          goto LABEL_17;
        }

        goto LABEL_9;
      }

LABEL_16:
      v40.f64[1] = v21;
      v17 = *&v21;
      v22 = *(v12 + 48);
      if (*&v22 < v19)
      {
LABEL_17:
        v39.f64[0] = v22;
        if (*&v22 > v18)
        {
LABEL_18:
          v40.f64[0] = v22;
          v23 = *(v12 + 56);
          if (*&v23 < v16)
          {
LABEL_19:
            v39.f64[1] = v23;
            if (*&v23 > v17)
            {
              goto LABEL_20;
            }

            goto LABEL_21;
          }

LABEL_11:
          if (*&v23 > v17)
          {
LABEL_20:
            v40.f64[1] = v23;
          }

LABEL_21:
          operator new();
        }

LABEL_10:
        v23 = *(v12 + 56);
        if (*&v23 < v16)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

LABEL_9:
      if (*&v22 > v18)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    v28 = 0x7FFFFFFFFFFFFFFFLL;
    v29 = 0x8000000000000000;
    v30 = 0x8000000000000000;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    if (v14 != v13)
    {
      v32 = *(v14 + 4);
      if (v32 != 0x7FFFFFFFFFFFFFFFLL && (v39.f64[0] = v14[4], v31 = v32, v32 == 0x8000000000000000))
      {
        v33 = v14[5];
        if (v33 == NAN)
        {
          goto LABEL_52;
        }
      }

      else
      {
        *&v40.f64[0] = v32;
        v30 = v32;
        v33 = v14[5];
        if (v33 == NAN)
        {
          goto LABEL_52;
        }
      }

      v39.f64[1] = v33;
      v28 = *&v33;
      if (v33 == -0.0)
      {
        v34 = v14[6];
        if (*&v34 < v31)
        {
          goto LABEL_53;
        }

        goto LABEL_45;
      }

LABEL_52:
      v40.f64[1] = v33;
      v29 = *&v33;
      v34 = v14[6];
      if (*&v34 < v31)
      {
LABEL_53:
        v39.f64[0] = v34;
        if (*&v34 > v30)
        {
LABEL_54:
          v40.f64[0] = v34;
          v35 = v14[7];
          if (*&v35 < v28)
          {
LABEL_55:
            v39.f64[1] = v35;
            if (*&v35 > v29)
            {
              goto LABEL_56;
            }

            goto LABEL_57;
          }

LABEL_47:
          if (*&v35 > v29)
          {
LABEL_56:
            v40.f64[1] = v35;
          }

LABEL_57:
          operator new();
        }

LABEL_46:
        v35 = v14[7];
        if (*&v35 < v28)
        {
          goto LABEL_55;
        }

        goto LABEL_47;
      }

LABEL_45:
      if (*&v34 > v30)
      {
        goto LABEL_54;
      }

      goto LABEL_46;
    }

    result = sub_100278F1C(&v39, &v44, &__p, 0, a8, a3, a4, a5, a6, a7, v47);
    if (__p)
    {
      v42 = __p;
      v36 = result;
      operator delete(__p);
      result = v36;
    }

    if (v44)
    {
      v45 = v44;
      v37 = result;
      operator delete(v44);
      return v37;
    }
  }

  return result;
}

void sub_100278EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
    v30 = *(v28 - 120);
    if (!v30)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v30 = *(v28 - 120);
    if (!v30)
    {
      goto LABEL_3;
    }
  }

  *(v28 - 112) = v30;
  operator delete(v30);
  _Unwind_Resume(exception_object);
}

uint64_t sub_100278F1C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a1[2];
  v16 = *(a1 + 1);
  v17 = *a1 / 2;
  v190 = *a1;
  v192 = *(&v16 + 1);
  v188.n128_u64[1] = v190.n128_u64[1];
  v189 = v16;
  v18 = v15 % 2 + v190.n128_u32[0] - 2 * v17;
  v19 = v15 / 2 + v17 + ((v18 + ((v18 & 0x80) >> 7)) << 24 >> 25);
  v191 = v19;
  v187 = 0;
  v188.n128_u64[0] = v19;
  v185 = 0;
  v186 = 0;
  v182 = 0;
  v183 = 0;
  v184 = 0;
  v179 = 0;
  v180 = 0;
  v181 = 0;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  __p = 0;
  v171 = 0;
  v172 = 0;
  v21 = *a2;
  v20 = *(a2 + 8);
  if (*a2 != v20)
  {
    do
    {
      v23 = *v21;
      v24 = *(*v21 + 32);
      if (v191 >= v24 && v190.n128_i64[0] <= v23[6])
      {
        v25 = v192 >= v23[5] && v190.n128_u64[1] <= v23[7];
        if (v189 < v24)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v25 = 0;
        if (v189 < v24)
        {
          goto LABEL_16;
        }
      }

      if (v19 <= v23[6])
      {
        v28 = v23[5];
        v29 = v23[7];
        v30 = *(&v189 + 1) >= v28 && v188.n128_u64[1] <= v29;
        v31 = v30;
        v32 = v30 || v25;
        if ((v25 & v31) != 0)
        {
          v33 = &v179;
        }

        else
        {
          v33 = &v185;
        }

        if (v25)
        {
          v27 = v33;
        }

        else
        {
          v27 = &v182;
        }

        if ((v32 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_34;
      }

LABEL_16:
      if (v25)
      {
        v27 = &v185;
LABEL_34:
        sub_100279BF0(v27, v21);
        v20 = *(a2 + 8);
      }

LABEL_3:
      ++v21;
    }

    while (v21 != v20);
  }

  v35 = *a3;
  v34 = *(a3 + 8);
  if (*a3 != v34)
  {
    do
    {
      v36 = *v35;
      v37 = *(*v35 + 32);
      if (v191 >= v37 && v190.n128_i64[0] <= v36[6])
      {
        v38 = v192 >= v36[5] && v190.n128_u64[1] <= v36[7];
        if (v189 < v37)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v38 = 0;
        if (v189 < v37)
        {
          goto LABEL_50;
        }
      }

      if (v19 <= v36[6])
      {
        v41 = v36[5];
        v42 = v36[7];
        v43 = *(&v189 + 1) >= v41 && v188.n128_u64[1] <= v42;
        v44 = v43;
        v45 = v43 || v38;
        if ((v38 & v44) != 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = &v176;
        }

        if (v38)
        {
          v40 = p_p;
        }

        else
        {
          v40 = &v173;
        }

        if ((v45 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_68;
      }

LABEL_50:
      if (v38)
      {
        v40 = &v176;
LABEL_68:
        sub_100279BF0(v40, v35);
        v34 = *(a3 + 8);
      }

LABEL_37:
      ++v35;
    }

    while (v35 != v34);
  }

  v48 = v179;
  v47 = v180;
  if (v179 == v180)
  {
    goto LABEL_142;
  }

  v50 = __p;
  v49 = v171;
  if (a5 > (v180 - v179) >> 3 || a4 > 0x63 || (v171 - __p) >> 3 < a5)
  {
    if (__p != v171)
    {
      do
      {
        v51 = __p;
        if (__p != v49)
        {
          do
          {
            v52 = *v48;
            v53 = *v51;
            if (*(*v48 + 48) >= *(*v51 + 32) && *(v52 + 32) <= *(v53 + 48) && *(v52 + 56) >= *(v53 + 40) && *(v52 + 40) <= *(v53 + 56))
            {
              v159 = *(a6 + 56);
              if (!sub_10027A9E0(*a6, *(a6 + 8), v52, *(a6 + 16), *(a6 + 24), v53, 0, 0, *(a6 + 32), *(a6 + 40), *(a6 + 48)))
              {
                goto LABEL_227;
              }

              v49 = v171;
            }

            v51 += 8;
          }

          while (v51 != v49);
          v47 = v180;
        }

        v48 += 8;
      }

      while (v48 != v47);
    }
  }

  else
  {
    v168 = 0u;
    v169 = 0u;
    v55 = vnegq_f64(0);
    v56.f64[0] = NAN;
    v56.f64[1] = NAN;
    v57 = vnegq_f64(v56);
    v58 = v57;
    v59 = v55;
    do
    {
      v60 = *v48;
      v48 += 8;
      v61 = v60[2];
      v62 = v60[3];
      v63 = vcgtq_s64(v57, v61);
      v64 = vbslq_s8(v63, v61, v58);
      v65 = vbslq_s8(v63, v61, v57);
      v66 = vcgtq_s64(v65, v62);
      v58 = vbslq_s8(v66, v62, v64);
      v57 = vbslq_s8(v66, v62, v65);
      v67 = vcgtq_s64(v61, v55);
      v68 = vbslq_s8(v67, v61, v59);
      v69 = vbslq_s8(v67, v61, v55);
      v70 = vcgtq_s64(v62, v69);
      v59 = vbslq_s8(v70, v62, v68);
      v55 = vbslq_s8(v70, v62, v69);
    }

    while (v48 != v180);
    v168 = v58;
    v169 = v59;
    if (__p != v171)
    {
      v71 = v58;
      v72 = v59;
      do
      {
        v73 = *v50++;
        v74 = v73[2];
        v75 = v73[3];
        v76 = vcgtq_s64(v58, v74);
        v77 = vbslq_s8(v76, v74, v71);
        v78 = vbslq_s8(v76, v74, v58);
        v79 = vcgtq_s64(v78, v75);
        v71 = vbslq_s8(v79, v75, v77);
        v58 = vbslq_s8(v79, v75, v78);
        v80 = vcgtq_s64(v74, v59);
        v81 = vbslq_s8(v80, v74, v72);
        v82 = vbslq_s8(v80, v74, v59);
        v83 = vcgtq_s64(v75, v82);
        v72 = vbslq_s8(v83, v75, v81);
        v59 = vbslq_s8(v83, v75, v82);
      }

      while (v50 != v171);
      v168 = v71;
      v169 = v72;
    }

    if ((sub_100279D08(&v168, &v179, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
    {
      goto LABEL_227;
    }
  }

  v84 = v177;
  if (a5 <= (v177 - v176) >> 3)
  {
    v86 = v179;
    v85 = v180;
    if (a5 <= (v174 - v173) >> 3 && a4 <= 0x63 && (v180 - v179) >> 3 >= a5)
    {
      v96.f64[0] = NAN;
      v96.f64[1] = NAN;
      v97 = vnegq_f64(v96);
      v98 = vnegq_f64(0);
      v168 = v97;
      v169 = v98;
      if (v179 != v180)
      {
        v99 = v97;
        v100 = v98;
        do
        {
          v101 = *v86;
          v86 += 8;
          v102 = v101[2];
          v103 = v101[3];
          v104 = vcgtq_s64(v97, v102);
          v105 = vbslq_s8(v104, v102, v99);
          v106 = vbslq_s8(v104, v102, v97);
          v107 = vcgtq_s64(v106, v103);
          v99 = vbslq_s8(v107, v103, v105);
          v97 = vbslq_s8(v107, v103, v106);
          v108 = vcgtq_s64(v102, v98);
          v109 = vbslq_s8(v108, v102, v100);
          v110 = vbslq_s8(v108, v102, v98);
          v111 = vcgtq_s64(v103, v110);
          v100 = vbslq_s8(v111, v103, v109);
          v98 = vbslq_s8(v111, v103, v110);
        }

        while (v86 != v180);
        v168 = v99;
        v169 = v100;
      }

      if (!sub_100279D08(&v168, &v179, &v176, a4 + 1, a5, a6, a7, a8, a9, a10, a11) || (sub_100279D08(&v168, &v179, &v173, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_227;
      }

      goto LABEL_142;
    }
  }

  else
  {
    v86 = v179;
    v85 = v180;
  }

  if (v86 == v85 || v176 == v177)
  {
    if (v86 == v85)
    {
      goto LABEL_142;
    }

    goto LABEL_102;
  }

  do
  {
    v88 = v176;
    if (v176 != v84)
    {
      do
      {
        v89 = *v86;
        v90 = *v88;
        if (*(*v86 + 48) >= *(*v88 + 32) && *(v89 + 32) <= *(v90 + 48) && *(v89 + 56) >= *(v90 + 40) && *(v89 + 40) <= *(v90 + 56))
        {
          v160 = *(a6 + 56);
          if (!sub_10027A9E0(*a6, *(a6 + 8), v89, *(a6 + 16), *(a6 + 24), v90, 0, 0, *(a6 + 32), *(a6 + 40), *(a6 + 48)))
          {
            goto LABEL_227;
          }

          v84 = v177;
        }

        v88 += 8;
      }

      while (v88 != v84);
      v85 = v180;
    }

    v86 += 8;
  }

  while (v86 != v85);
  v86 = v179;
  if (v179 != v85)
  {
LABEL_102:
    v87 = v174;
    if (v173 != v174)
    {
      do
      {
        v92 = v173;
        if (v173 != v87)
        {
          do
          {
            v93 = *v86;
            v94 = *v92;
            if (*(*v86 + 48) >= *(*v92 + 32) && *(v93 + 32) <= *(v94 + 48) && *(v93 + 56) >= *(v94 + 40) && *(v93 + 40) <= *(v94 + 56))
            {
              v161 = *(a6 + 56);
              if (!sub_10027A9E0(*a6, *(a6 + 8), v93, *(a6 + 16), *(a6 + 24), v94, 0, 0, *(a6 + 32), *(a6 + 40), *(a6 + 48)))
              {
                goto LABEL_227;
              }

              v87 = v174;
            }

            v92 += 8;
          }

          while (v92 != v87);
          v85 = v180;
        }

        v86 += 8;
      }

      while (v86 != v85);
    }
  }

LABEL_142:
  v113 = __p;
  v112 = v171;
  if (__p != v171)
  {
    v115 = v185;
    v114 = v186;
    if (a5 > (v186 - v185) >> 3 || a5 > (v183 - v182) >> 3 || a4 > 0x63 || (v171 - __p) >> 3 < a5)
    {
      while (v115 != v114)
      {
        v132 = __p;
        if (__p != v112)
        {
          do
          {
            v133 = *v115;
            v134 = *v132;
            if (*(*v115 + 48) >= *(*v132 + 32) && *(v133 + 32) <= *(v134 + 48) && *(v133 + 56) >= *(v134 + 40) && *(v133 + 40) <= *(v134 + 56))
            {
              v162 = *(a6 + 56);
              if (!sub_10027A9E0(*a6, *(a6 + 8), v133, *(a6 + 16), *(a6 + 24), v134, 0, 0, *(a6 + 32), *(a6 + 40), *(a6 + 48)))
              {
                goto LABEL_227;
              }

              v112 = v171;
            }

            v132 += 8;
          }

          while (v132 != v112);
          v114 = v186;
        }

        v115 += 8;
      }

      v137 = v182;
      v136 = v183;
      if (v182 != v183 && __p != v112)
      {
        do
        {
          v145 = __p;
          if (__p != v112)
          {
            do
            {
              v146 = *v137;
              v147 = *v145;
              if (*(*v137 + 48) >= *(*v145 + 32) && *(v146 + 32) <= *(v147 + 48) && *(v146 + 56) >= *(v147 + 40) && *(v146 + 40) <= *(v147 + 56))
              {
                v164 = *(a6 + 56);
                if (!sub_10027A9E0(*a6, *(a6 + 8), v146, *(a6 + 16), *(a6 + 24), v147, 0, 0, *(a6 + 32), *(a6 + 40), *(a6 + 48)))
                {
                  goto LABEL_227;
                }

                v112 = v171;
              }

              v145 += 8;
            }

            while (v145 != v112);
            v136 = v183;
          }

          v137 += 8;
        }

        while (v137 != v136);
      }
    }

    else
    {
      v168 = 0u;
      v169 = 0u;
      v116 = vnegq_f64(0);
      v117.f64[0] = NAN;
      v117.f64[1] = NAN;
      v118 = vnegq_f64(v117);
      v119 = v118;
      v120 = v116;
      do
      {
        v121 = *v113++;
        v122 = v121[2];
        v123 = v121[3];
        v124 = vcgtq_s64(v118, v122);
        v125 = vbslq_s8(v124, v122, v119);
        v126 = vbslq_s8(v124, v122, v118);
        v127 = vcgtq_s64(v126, v123);
        v119 = vbslq_s8(v127, v123, v125);
        v118 = vbslq_s8(v127, v123, v126);
        v128 = vcgtq_s64(v122, v116);
        v129 = vbslq_s8(v128, v122, v120);
        v130 = vbslq_s8(v128, v122, v116);
        v131 = vcgtq_s64(v123, v130);
        v120 = vbslq_s8(v131, v123, v129);
        v116 = vbslq_s8(v131, v123, v130);
      }

      while (v113 != v171);
      v168 = v119;
      v169 = v120;
      if (!sub_100279D08(&v168, &v185, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) || (sub_100279D08(&v168, &v182, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_227;
      }
    }
  }

  v139 = v185;
  v138 = v186;
  if (a5 > (v186 - v185) >> 3 || a4 > 0x63 || (v177 - v176) >> 3 < a5)
  {
    if (v185 != v186)
    {
      v140 = v177;
      if (v176 != v177)
      {
        do
        {
          v141 = v176;
          if (v176 != v140)
          {
            do
            {
              v142 = *v139;
              v143 = *v141;
              if (*(*v139 + 48) >= *(*v141 + 32) && *(v142 + 32) <= *(v143 + 48) && *(v142 + 56) >= *(v143 + 40) && *(v142 + 40) <= *(v143 + 56))
              {
                v163 = *(a6 + 56);
                if (!sub_10027A9E0(*a6, *(a6 + 8), v142, *(a6 + 16), *(a6 + 24), v143, 0, 0, *(a6 + 32), *(a6 + 40), *(a6 + 48)))
                {
                  goto LABEL_227;
                }

                v140 = v177;
              }

              v141 += 8;
            }

            while (v141 != v140);
            v138 = v186;
          }

          v139 += 8;
        }

        while (v139 != v138);
      }
    }
  }

  else if ((sub_100279D08(&v190, &v185, &v176, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
  {
    goto LABEL_227;
  }

  v150 = v182;
  v149 = v183;
  if (a5 <= (v183 - v182) >> 3 && a4 <= 0x63 && (v174 - v173) >> 3 >= a5)
  {
    if (sub_100279D08(&v188, &v182, &v173, a4 + 1, a5, a6, a7, a8, a9, a10, a11))
    {
      goto LABEL_225;
    }

LABEL_227:
    v156 = 0;
    v157 = __p;
    if (!__p)
    {
      goto LABEL_229;
    }

    goto LABEL_228;
  }

  if (v182 != v183)
  {
    v151 = v174;
    if (v173 != v174)
    {
      do
      {
        v152 = v173;
        if (v173 != v151)
        {
          do
          {
            v153 = *v150;
            v154 = *v152;
            if (*(*v150 + 48) >= *(*v152 + 32) && *(v153 + 32) <= *(v154 + 48) && *(v153 + 56) >= *(v154 + 40) && *(v153 + 40) <= *(v154 + 56))
            {
              v165 = *(a6 + 56);
              if (!sub_10027A9E0(*a6, *(a6 + 8), v153, *(a6 + 16), *(a6 + 24), v154, 0, 0, *(a6 + 32), *(a6 + 40), *(a6 + 48)))
              {
                goto LABEL_227;
              }

              v151 = v174;
            }

            v152 += 8;
          }

          while (v152 != v151);
          v149 = v183;
        }

        v150 += 8;
      }

      while (v150 != v149);
    }
  }

LABEL_225:
  v156 = 1;
  v157 = __p;
  if (__p)
  {
LABEL_228:
    v171 = v157;
    operator delete(v157);
  }

LABEL_229:
  if (v173)
  {
    v174 = v173;
    operator delete(v173);
  }

  if (v176)
  {
    v177 = v176;
    operator delete(v176);
  }

  if (v179)
  {
    v180 = v179;
    operator delete(v179);
  }

  if (v182)
  {
    v183 = v182;
    operator delete(v182);
  }

  if (v185)
  {
    v186 = v185;
    operator delete(v185);
  }

  return v156;
}

void sub_100279B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a22;
    if (!a22)
    {
LABEL_3:
      v35 = a25;
      if (!a25)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v34);
  v35 = a25;
  if (!a25)
  {
LABEL_4:
    v36 = a28;
    if (!a28)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  v36 = a28;
  if (!a28)
  {
LABEL_5:
    v37 = a31;
    if (!a31)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a31;
  if (!a31)
  {
LABEL_6:
    v38 = *(v32 - 184);
    if (!v38)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = *(v32 - 184);
  if (!v38)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  *(v32 - 176) = v38;
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

void sub_100279BF0(uint64_t a1, void *a2)
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
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_10000FC84();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
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

uint64_t sub_100279D08(__n128 *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a1[1].n128_i64[1];
  v16 = *a1;
  v17 = a1[1];
  v194 = v17;
  v195 = v16;
  v18 = a1->n128_i64[1];
  v19 = v15 / 2 + v18 / 2;
  v193[0] = v16.n128_u64[0];
  LODWORD(v15) = v15 % 2 + v18 % 2;
  v20 = v19 + ((v15 + ((v15 & 0x80) >> 7)) << 24 >> 25);
  v196 = v17.n128_u64[0];
  v197 = v20;
  v193[1] = v20;
  v190 = 0;
  v191 = 0;
  v192 = 0;
  v187 = 0;
  v188 = 0;
  v189 = 0;
  v184 = 0;
  v185 = 0;
  v186 = 0;
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v178 = 0;
  v179 = 0;
  v180 = 0;
  __p = 0;
  v176 = 0;
  v177 = 0;
  v22 = *a2;
  v21 = *(a2 + 8);
  if (*a2 != v21)
  {
    do
    {
      v24 = *v22;
      v25 = *(*v22 + 32);
      if (v196 >= v25 && v195.n128_i64[0] <= v24[6])
      {
        v26 = v197 >= v24[5] && v195.n128_u64[1] <= v24[7];
        if (v194.n128_i64[0] < v25)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v26 = 0;
        if (v194.n128_i64[0] < v25)
        {
          goto LABEL_16;
        }
      }

      if (v193[0] <= v24[6])
      {
        v29 = v24[5];
        v30 = v24[7];
        v31 = v194.n128_i64[1] >= v29 && v20 <= v30;
        v32 = v31;
        v33 = v31 || v26;
        if ((v26 & v32) != 0)
        {
          v34 = &v184;
        }

        else
        {
          v34 = &v190;
        }

        if (v26)
        {
          v28 = v34;
        }

        else
        {
          v28 = &v187;
        }

        if ((v33 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_34;
      }

LABEL_16:
      if (v26)
      {
        v28 = &v190;
LABEL_34:
        sub_100279BF0(v28, v22);
        v21 = *(a2 + 8);
      }

LABEL_3:
      ++v22;
    }

    while (v22 != v21);
  }

  v36 = *a3;
  v35 = *(a3 + 8);
  if (*a3 != v35)
  {
    do
    {
      v37 = *v36;
      v38 = *(*v36 + 32);
      if (v196 >= v38 && v195.n128_i64[0] <= v37[6])
      {
        v39 = v197 >= v37[5] && v195.n128_u64[1] <= v37[7];
        if (v194.n128_i64[0] < v38)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v39 = 0;
        if (v194.n128_i64[0] < v38)
        {
          goto LABEL_50;
        }
      }

      if (v193[0] <= v37[6])
      {
        v42 = v37[5];
        v43 = v37[7];
        v44 = v194.n128_i64[1] >= v42 && v20 <= v43;
        v45 = v44;
        v46 = v44 || v39;
        if ((v39 & v45) != 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = &v181;
        }

        if (v39)
        {
          v41 = p_p;
        }

        else
        {
          v41 = &v178;
        }

        if ((v46 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_68;
      }

LABEL_50:
      if (v39)
      {
        v41 = &v181;
LABEL_68:
        sub_100279BF0(v41, v36);
        v35 = *(a3 + 8);
      }

LABEL_37:
      ++v36;
    }

    while (v36 != v35);
  }

  v49 = v184;
  v48 = v185;
  if (v184 == v185)
  {
    goto LABEL_142;
  }

  v51 = __p;
  v50 = v176;
  if (a5 > (v185 - v184) >> 3 || a4 > 0x63 || (v176 - __p) >> 3 < a5)
  {
    if (__p != v176)
    {
      do
      {
        v52 = __p;
        if (__p != v50)
        {
          do
          {
            v53 = *v49;
            v54 = *v52;
            if (*(*v49 + 48) >= *(*v52 + 32) && *(v53 + 32) <= *(v54 + 48) && *(v53 + 56) >= *(v54 + 40) && *(v53 + 40) <= *(v54 + 56))
            {
              v164 = *(a6 + 56);
              if (!sub_10027A9E0(*a6, *(a6 + 8), v53, *(a6 + 16), *(a6 + 24), v54, 0, 0, *(a6 + 32), *(a6 + 40), *(a6 + 48)))
              {
                goto LABEL_227;
              }

              v50 = v176;
            }

            v52 += 8;
          }

          while (v52 != v50);
          v48 = v185;
        }

        v49 += 8;
      }

      while (v49 != v48);
    }
  }

  else
  {
    v173 = 0u;
    v174 = 0u;
    v56 = vnegq_f64(0);
    v57.f64[0] = NAN;
    v57.f64[1] = NAN;
    v58 = vnegq_f64(v57);
    v59 = v58;
    v60 = v56;
    do
    {
      v61 = *v49;
      v49 += 8;
      v62 = v61[2];
      v63 = v61[3];
      v64 = vcgtq_s64(v58, v62);
      v65 = vbslq_s8(v64, v62, v59);
      v66 = vbslq_s8(v64, v62, v58);
      v67 = vcgtq_s64(v66, v63);
      v59 = vbslq_s8(v67, v63, v65);
      v58 = vbslq_s8(v67, v63, v66);
      v68 = vcgtq_s64(v62, v56);
      v69 = vbslq_s8(v68, v62, v60);
      v70 = vbslq_s8(v68, v62, v56);
      v71 = vcgtq_s64(v63, v70);
      v60 = vbslq_s8(v71, v63, v69);
      v56 = vbslq_s8(v71, v63, v70);
    }

    while (v49 != v185);
    v173 = v59;
    v174 = v60;
    if (__p != v176)
    {
      v72 = v59;
      v73 = v60;
      do
      {
        v74 = *v51++;
        v75 = v74[2];
        v76 = v74[3];
        v77 = vcgtq_s64(v59, v75);
        v78 = vbslq_s8(v77, v75, v72);
        v79 = vbslq_s8(v77, v75, v59);
        v80 = vcgtq_s64(v79, v76);
        v72 = vbslq_s8(v80, v76, v78);
        v59 = vbslq_s8(v80, v76, v79);
        v81 = vcgtq_s64(v75, v60);
        v82 = vbslq_s8(v81, v75, v73);
        v83 = vbslq_s8(v81, v75, v60);
        v84 = vcgtq_s64(v76, v83);
        v73 = vbslq_s8(v84, v76, v82);
        v60 = vbslq_s8(v84, v76, v83);
      }

      while (v51 != v176);
      v173 = v72;
      v174 = v73;
    }

    if ((sub_100278F1C(&v173, &v184, &__p, a4 + 1, a5, a6, a7, a8, v59, v60, a9, a10, a11) & 1) == 0)
    {
      goto LABEL_227;
    }
  }

  v85 = v182;
  if (a5 <= (v182 - v181) >> 3)
  {
    v87 = v184;
    v86 = v185;
    if (a5 <= (v179 - v178) >> 3 && a4 <= 0x63 && (v185 - v184) >> 3 >= a5)
    {
      v97.f64[0] = NAN;
      v97.f64[1] = NAN;
      v98 = vnegq_f64(v97);
      v99 = vnegq_f64(0);
      v173 = v98;
      v174 = v99;
      if (v184 != v185)
      {
        v100 = v98;
        v101 = v99;
        do
        {
          v102 = *v87;
          v87 += 8;
          v103 = v102[2];
          v104 = v102[3];
          v105 = vcgtq_s64(v98, v103);
          v106 = vbslq_s8(v105, v103, v100);
          v107 = vbslq_s8(v105, v103, v98);
          v108 = vcgtq_s64(v107, v104);
          v100 = vbslq_s8(v108, v104, v106);
          v98 = vbslq_s8(v108, v104, v107);
          v109 = vcgtq_s64(v103, v99);
          v110 = vbslq_s8(v109, v103, v101);
          v111 = vbslq_s8(v109, v103, v99);
          v112 = vcgtq_s64(v104, v111);
          v101 = vbslq_s8(v112, v104, v110);
          v99 = vbslq_s8(v112, v104, v111);
        }

        while (v87 != v185);
        v173 = v100;
        v174 = v101;
      }

      if (!sub_100278F1C(&v173, &v184, &v181, a4 + 1, a5, a6, a7, a8, v98, v99, a9, a10, a11) || (sub_100278F1C(&v173, &v184, &v178, a4 + 1, a5, a6, a7, a8, v113, v114, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_227;
      }

      goto LABEL_142;
    }
  }

  else
  {
    v87 = v184;
    v86 = v185;
  }

  if (v87 == v86 || v181 == v182)
  {
    if (v87 == v86)
    {
      goto LABEL_142;
    }

    goto LABEL_102;
  }

  do
  {
    v89 = v181;
    if (v181 != v85)
    {
      do
      {
        v90 = *v87;
        v91 = *v89;
        if (*(*v87 + 48) >= *(*v89 + 32) && *(v90 + 32) <= *(v91 + 48) && *(v90 + 56) >= *(v91 + 40) && *(v90 + 40) <= *(v91 + 56))
        {
          v165 = *(a6 + 56);
          if (!sub_10027A9E0(*a6, *(a6 + 8), v90, *(a6 + 16), *(a6 + 24), v91, 0, 0, *(a6 + 32), *(a6 + 40), *(a6 + 48)))
          {
            goto LABEL_227;
          }

          v85 = v182;
        }

        v89 += 8;
      }

      while (v89 != v85);
      v86 = v185;
    }

    v87 += 8;
  }

  while (v87 != v86);
  v87 = v184;
  if (v184 != v86)
  {
LABEL_102:
    v88 = v179;
    if (v178 != v179)
    {
      do
      {
        v93 = v178;
        if (v178 != v88)
        {
          do
          {
            v94 = *v87;
            v95 = *v93;
            if (*(*v87 + 48) >= *(*v93 + 32) && *(v94 + 32) <= *(v95 + 48) && *(v94 + 56) >= *(v95 + 40) && *(v94 + 40) <= *(v95 + 56))
            {
              v166 = *(a6 + 56);
              if (!sub_10027A9E0(*a6, *(a6 + 8), v94, *(a6 + 16), *(a6 + 24), v95, 0, 0, *(a6 + 32), *(a6 + 40), *(a6 + 48)))
              {
                goto LABEL_227;
              }

              v88 = v179;
            }

            v93 += 8;
          }

          while (v93 != v88);
          v86 = v185;
        }

        v87 += 8;
      }

      while (v87 != v86);
    }
  }

LABEL_142:
  v116 = __p;
  v115 = v176;
  if (__p != v176)
  {
    v118 = v190;
    v117 = v191;
    if (a5 > (v191 - v190) >> 3 || a5 > (v188 - v187) >> 3 || a4 > 0x63 || (v176 - __p) >> 3 < a5)
    {
      while (v118 != v117)
      {
        v137 = __p;
        if (__p != v115)
        {
          do
          {
            v138 = *v118;
            v139 = *v137;
            if (*(*v118 + 48) >= *(*v137 + 32) && *(v138 + 32) <= *(v139 + 48) && *(v138 + 56) >= *(v139 + 40) && *(v138 + 40) <= *(v139 + 56))
            {
              v167 = *(a6 + 56);
              if (!sub_10027A9E0(*a6, *(a6 + 8), v138, *(a6 + 16), *(a6 + 24), v139, 0, 0, *(a6 + 32), *(a6 + 40), *(a6 + 48)))
              {
                goto LABEL_227;
              }

              v115 = v176;
            }

            v137 += 8;
          }

          while (v137 != v115);
          v117 = v191;
        }

        v118 += 8;
      }

      v142 = v187;
      v141 = v188;
      if (v187 != v188 && __p != v115)
      {
        do
        {
          v150 = __p;
          if (__p != v115)
          {
            do
            {
              v151 = *v142;
              v152 = *v150;
              if (*(*v142 + 48) >= *(*v150 + 32) && *(v151 + 32) <= *(v152 + 48) && *(v151 + 56) >= *(v152 + 40) && *(v151 + 40) <= *(v152 + 56))
              {
                v169 = *(a6 + 56);
                if (!sub_10027A9E0(*a6, *(a6 + 8), v151, *(a6 + 16), *(a6 + 24), v152, 0, 0, *(a6 + 32), *(a6 + 40), *(a6 + 48)))
                {
                  goto LABEL_227;
                }

                v115 = v176;
              }

              v150 += 8;
            }

            while (v150 != v115);
            v141 = v188;
          }

          v142 += 8;
        }

        while (v142 != v141);
      }
    }

    else
    {
      v173 = 0u;
      v174 = 0u;
      v119 = vnegq_f64(0);
      v120.f64[0] = NAN;
      v120.f64[1] = NAN;
      v121 = vnegq_f64(v120);
      v122 = v121;
      v123 = v119;
      do
      {
        v124 = *v116++;
        v125 = v124[2];
        v126 = v124[3];
        v127 = vcgtq_s64(v121, v125);
        v128 = vbslq_s8(v127, v125, v122);
        v129 = vbslq_s8(v127, v125, v121);
        v130 = vcgtq_s64(v129, v126);
        v122 = vbslq_s8(v130, v126, v128);
        v121 = vbslq_s8(v130, v126, v129);
        v131 = vcgtq_s64(v125, v119);
        v132 = vbslq_s8(v131, v125, v123);
        v133 = vbslq_s8(v131, v125, v119);
        v134 = vcgtq_s64(v126, v133);
        v123 = vbslq_s8(v134, v126, v132);
        v119 = vbslq_s8(v134, v126, v133);
      }

      while (v116 != v176);
      v173 = v122;
      v174 = v123;
      if (!sub_100278F1C(&v173, &v190, &__p, a4 + 1, a5, a6, a7, a8, v119, v121, a9, a10, a11) || (sub_100278F1C(&v173, &v187, &__p, a4 + 1, a5, a6, a7, a8, v135, v136, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_227;
      }
    }
  }

  v144 = v190;
  v143 = v191;
  if (a5 > (v191 - v190) >> 3 || a4 > 0x63 || (v182 - v181) >> 3 < a5)
  {
    if (v190 != v191)
    {
      v145 = v182;
      if (v181 != v182)
      {
        do
        {
          v146 = v181;
          if (v181 != v145)
          {
            do
            {
              v147 = *v144;
              v148 = *v146;
              if (*(*v144 + 48) >= *(*v146 + 32) && *(v147 + 32) <= *(v148 + 48) && *(v147 + 56) >= *(v148 + 40) && *(v147 + 40) <= *(v148 + 56))
              {
                v168 = *(a6 + 56);
                if (!sub_10027A9E0(*a6, *(a6 + 8), v147, *(a6 + 16), *(a6 + 24), v148, 0, 0, *(a6 + 32), *(a6 + 40), *(a6 + 48)))
                {
                  goto LABEL_227;
                }

                v145 = v182;
              }

              v146 += 8;
            }

            while (v146 != v145);
            v143 = v191;
          }

          v144 += 8;
        }

        while (v144 != v143);
      }
    }
  }

  else if ((sub_100278F1C(&v195, &v190, &v181, a4 + 1, a5, a6, a7, a8, v16, v17, a9, a10, a11) & 1) == 0)
  {
    goto LABEL_227;
  }

  v155 = v187;
  v154 = v188;
  if (a5 <= (v188 - v187) >> 3 && a4 <= 0x63 && (v179 - v178) >> 3 >= a5)
  {
    if (sub_100278F1C(v193, &v187, &v178, a4 + 1, a5, a6, a7, a8, v16, v17, a9, a10, a11))
    {
      goto LABEL_225;
    }

LABEL_227:
    v161 = 0;
    v162 = __p;
    if (!__p)
    {
      goto LABEL_229;
    }

    goto LABEL_228;
  }

  if (v187 != v188)
  {
    v156 = v179;
    if (v178 != v179)
    {
      do
      {
        v157 = v178;
        if (v178 != v156)
        {
          do
          {
            v158 = *v155;
            v159 = *v157;
            if (*(*v155 + 48) >= *(*v157 + 32) && *(v158 + 32) <= *(v159 + 48) && *(v158 + 56) >= *(v159 + 40) && *(v158 + 40) <= *(v159 + 56))
            {
              v170 = *(a6 + 56);
              if (!sub_10027A9E0(*a6, *(a6 + 8), v158, *(a6 + 16), *(a6 + 24), v159, 0, 0, *(a6 + 32), *(a6 + 40), *(a6 + 48)))
              {
                goto LABEL_227;
              }

              v156 = v179;
            }

            v157 += 8;
          }

          while (v157 != v156);
          v154 = v188;
        }

        v155 += 8;
      }

      while (v155 != v154);
    }
  }

LABEL_225:
  v161 = 1;
  v162 = __p;
  if (__p)
  {
LABEL_228:
    v176 = v162;
    operator delete(v162);
  }

LABEL_229:
  if (v178)
  {
    v179 = v178;
    operator delete(v178);
  }

  if (v181)
  {
    v182 = v181;
    operator delete(v181);
  }

  if (v184)
  {
    v185 = v184;
    operator delete(v184);
  }

  if (v187)
  {
    v188 = v187;
    operator delete(v187);
  }

  if (v190)
  {
    v191 = v190;
    operator delete(v190);
  }

  return v161;
}

void sub_10027A914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a22;
    if (!a22)
    {
LABEL_3:
      v35 = a25;
      if (!a25)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v34);
  v35 = a25;
  if (!a25)
  {
LABEL_4:
    v36 = a28;
    if (!a28)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  v36 = a28;
  if (!a28)
  {
LABEL_5:
    v37 = a31;
    if (!a31)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a31;
  if (!a31)
  {
LABEL_6:
    v38 = *(v32 - 184);
    if (!v38)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = *(v32 - 184);
  if (!v38)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  *(v32 - 176) = v38;
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

uint64_t sub_10027A9E0(int a1, double **a2, int *a3, int a4, void *a5, int *a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (*(a3 + 96) == 1 && (*(a3 + 10) + 1) < *(a3 + 11) || *(a6 + 96) == 1 && (*(a6 + 10) + 1) < *(a6 + 11))
  {
    return 1;
  }

  v12 = *(a3 + 3);
  if ((v12 & 0x8000000000000000) == 0)
  {
    a2 = &a2[3][3 * v12];
  }

  v13 = *a2;
  v14 = *(a6 + 3);
  v15 = (*a5 + 48 * *(a6 + 2));
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = &v15[3][3 * v14];
  }

  v16 = a2[1];
  v17 = *v15;
  v124 = v15[1];
  v18 = *a3;
  v123 = *a6;
  v19 = *(a3 + 13);
  v20 = *(a3 + 8);
  v21 = &v13[2 * v20];
  v22 = 2 * *(a3 + 9);
  v117 = &v13[v22 + 2];
  v111 = v16;
  v112 = *a2;
  v113 = *a3;
  v120 = v19;
  if (2 * v20 == v22)
  {
    v36 = &v13[2 * v20];
    v37 = v21 + 2;
    if (v37 != v117)
    {
      goto LABEL_33;
    }

    return 1;
  }

  v23 = 0;
  v24 = v21 + 2;
  v126 = &v13[2 * v20];
  v25 = *(a3 + 8);
  while (1)
  {
    v27 = v20;
    v28 = *(a10 + 24) + (v24[1] - *(a10 + 8)) * *(a10 + 32);
    if (v28 >= 0.0)
    {
      v29 = 0.5;
    }

    else
    {
      v29 = -0.5;
    }

    sub_100274990(v28 + v29);
    v30 = *(a10 + 16) + (*v24 - *a10) * *(a10 + 32);
    if (v30 >= 0.0)
    {
      v31 = 0.5;
    }

    else
    {
      v31 = -0.5;
    }

    v32 = v30 + v31;
    sub_100274990(v30 + v31);
    v33 = ceil(v32);
    v34 = floor(v32);
    if (v32 >= 0.0)
    {
      v33 = v34;
    }

    v35 = v33;
    if (v18 == 1)
    {
      break;
    }

    if (v18 != -1)
    {
      v16 = v111;
      v13 = v112;
      v20 = v27;
      v36 = v126;
      v37 = v126 + 2;
      if (v126 + 2 != v117)
      {
        goto LABEL_33;
      }

      return 1;
    }

    v20 = v27;
    if (*(a6 + 6) >= v35)
    {
      v36 = v24 - 2;
      v120 += v23;
      v20 += v23;
      goto LABEL_28;
    }

LABEL_12:
    v26 = v24 + 2;
    ++v25;
    ++v19;
    ++v23;
    v21 = v24;
    v24 = v26;
    if (v26 == v117)
    {
      v36 = v26 - 2;
      v120 = v19;
      v20 = v25;
LABEL_28:
      v16 = v111;
      v13 = v112;
      v37 = v36 + 2;
      if (v36 + 2 != v117)
      {
        goto LABEL_33;
      }

      return 1;
    }
  }

  v20 = v27;
  if (*(a6 + 4) > v35)
  {
    goto LABEL_12;
  }

  v120 = v19;
  v20 = v25;
  v16 = v111;
  v13 = v112;
  v36 = v21;
  v37 = v21 + 2;
  if (v37 == v117)
  {
    return 1;
  }

LABEL_33:
  v38 = &v13[2 * (v36 != v13)];
  if (v37 != v16)
  {
    v38 = v37;
  }

  v39 = v38 != v13;
  v40 = v38 + 2;
  v41 = &v13[2 * v39];
  if (v40 == v16)
  {
    v42 = v41;
  }

  else
  {
    v42 = v40;
  }

  do
  {
    v127 = v20;
    v43 = *(a10 + 24) + (v36[1] - *(a10 + 8)) * *(a10 + 32);
    if (v43 >= 0.0)
    {
      v44 = 0.5;
    }

    else
    {
      v44 = -0.5;
    }

    sub_100274990(v43 + v44);
    v45 = *(a10 + 16) + (*v36 - *a10) * *(a10 + 32);
    if (v45 >= 0.0)
    {
      v46 = 0.5;
    }

    else
    {
      v46 = -0.5;
    }

    v47 = v45 + v46;
    sub_100274990(v45 + v46);
    v48 = ceil(v47);
    v49 = floor(v47);
    if (v47 >= 0.0)
    {
      v48 = v49;
    }

    v50 = v48;
    if (v113 == -1)
    {
      v51 = v124;
      v52 = a3;
      v53 = v123;
      v54 = v127;
      if (*(a6 + 4) > v50)
      {
        return 1;
      }
    }

    else
    {
      v51 = v124;
      v52 = a3;
      v53 = v123;
      v54 = v127;
      if (v113 == 1 && *(a6 + 6) < v50)
      {
        return 1;
      }
    }

    v55 = *(a10 + 16);
    v184 = *a10;
    v181[0] = v52;
    v181[1] = v54;
    v118 = v42;
    v119 = v36;
    v181[2] = v36;
    v181[3] = v37;
    v181[4] = v42;
    v56 = v13;
    v181[5] = v13;
    v181[6] = v16;
    v182 = 1;
    v183 = 0;
    v185 = v55;
    v58 = *(a6 + 8);
    v57 = *(a6 + 9);
    v59 = &v17[2 * v58];
    v186 = *(a10 + 32);
    v60 = &v17[2 * v57 + 2];
    v61 = v59 + 2;
    v62 = *(a6 + 13);
    if (v59 + 2 == v60)
    {
LABEL_82:
      v65 = &v17[2 * v58];
      v81 = v59 + 2;
      if (v81 != v60)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v63 = 0;
      v64 = *(a10 + 32);
      v65 = &v17[2 * v58];
      v66 = *(a6 + 13);
      v67 = v58;
      do
      {
        v69 = *(a10 + 24) + (v61[1] - *(a10 + 8)) * v64;
        if (v69 >= 0.0)
        {
          v70 = 0.5;
        }

        else
        {
          v70 = -0.5;
        }

        v71 = v69 + v70;
        v72 = 2 * (v71 >= 9.22337204e18);
        if (v71 <= -9.22337204e18)
        {
          v72 = 1;
        }

        if (v72 == 2)
        {
          goto LABEL_138;
        }

        if (v72 == 1)
        {
          goto LABEL_137;
        }

        v73 = *(a10 + 16) + (*v61 - *a10) * v64;
        if (v73 >= 0.0)
        {
          v74 = 0.5;
        }

        else
        {
          v74 = -0.5;
        }

        v75 = v73 + v74;
        v76 = 2 * (v75 >= 9.22337204e18);
        if (v75 <= -9.22337204e18)
        {
          v76 = 1;
        }

        if (v76 == 2)
        {
LABEL_138:
          exception = __cxa_allocate_exception(8uLL);
          exception->__vftable = 0;
          v110 = sub_1000D8810(exception);
        }

        if (v76 == 1)
        {
LABEL_137:
          v107 = __cxa_allocate_exception(8uLL);
          v107->__vftable = 0;
          v108 = sub_1000D87D8(v107);
        }

        v77 = ceil(v75);
        v78 = floor(v75);
        if (v75 >= 0.0)
        {
          v79 = v78;
        }

        else
        {
          v79 = v77;
        }

        v80 = v79;
        if (v53 == 1)
        {
          if (v52[4] <= v80)
          {
            goto LABEL_134;
          }
        }

        else
        {
          if (v53 != -1)
          {
            goto LABEL_82;
          }

          if (v52[6] >= v80)
          {
            v65 = v61 - 2;
            v62 += v63;
            v58 += v63;
            v81 = v61;
            if (v61 == v60)
            {
              goto LABEL_135;
            }

LABEL_83:
            v114 = v37;
            if (v81 == v51)
            {
              v81 = &v17[2 * (v65 != v17)];
            }

            v82 = v81 != v17;
            v83 = v81 + 2;
            v84 = &v17[2 * v82];
            if (v83 == v51)
            {
              v85 = v84;
            }

            else
            {
              v85 = v83;
            }

            v86 = ++v120 - v62;
            while (2)
            {
              v87 = *(a10 + 32);
              v88 = *(a10 + 24) + (v65[1] - *(a10 + 8)) * v87;
              if (v88 >= 0.0)
              {
                v89 = 0.5;
              }

              else
              {
                v89 = -0.5;
              }

              v90 = v88 + v89;
              v91 = 2 * (v90 >= 9.22337204e18);
              if (v90 <= -9.22337204e18)
              {
                v91 = 1;
              }

              if (v91 == 2)
              {
                goto LABEL_138;
              }

              if (v91 == 1)
              {
                goto LABEL_137;
              }

              v92 = *(a10 + 16) + (*v65 - *a10) * v87;
              if (v92 >= 0.0)
              {
                v93 = 0.5;
              }

              else
              {
                v93 = -0.5;
              }

              v94 = v92 + v93;
              v95 = 2 * (v94 >= 9.22337204e18);
              if (v94 <= -9.22337204e18)
              {
                v95 = 1;
              }

              if (v95 == 2)
              {
                goto LABEL_138;
              }

              if (v95 == 1)
              {
                goto LABEL_137;
              }

              v96 = ceil(v94);
              v97 = floor(v94);
              if (v94 >= 0.0)
              {
                v98 = v97;
              }

              else
              {
                v98 = v96;
              }

              v99 = v98;
              if (v53 == -1)
              {
                if (v52[4] > v99)
                {
                  goto LABEL_38;
                }
              }

              else if (v53 == 1 && v52[6] < v99)
              {
                goto LABEL_38;
              }

              v100 = v52[2];
              if (a1 != a4)
              {
                v101 = v52[3];
                v103 = *(a6 + 2);
                v102 = *(a6 + 3);
                goto LABEL_120;
              }

              v101 = v52[3];
              v103 = *(a6 + 2);
              v102 = *(a6 + 3);
              if (v100 != v103)
              {
LABEL_120:
                v104 = *(a10 + 16);
                v178 = *a10;
                v175[0] = a6;
                v175[1] = v58;
                v175[2] = v65;
                v175[3] = v65 + 2;
                v175[4] = v85;
                v175[5] = v17;
                v175[6] = v51;
                v176 = 0;
                v177 = 0;
                v179 = v104;
                v180 = *(a10 + 32);
                v129 = 0;
                v130 = 0;
                v131 = -1;
                v132 = 0;
                v133 = 0;
                v139 = xmmword_1003D8180;
                v140 = 0;
                v141 = 0;
                v142 = -1;
                v143 = -1;
                v144 = -1;
                v145 = 257;
                v146 = 0;
                v147 = 0;
                v148 = -1;
                v149 = -1;
                v150 = -1;
                v151 = 0;
                v152 = 0;
                v153 = 0;
                v154 = 0;
                v160 = xmmword_1003D8180;
                v161 = 0;
                v162 = 0;
                v163 = -1;
                v164 = -1;
                v165 = -1;
                v166 = 257;
                v167 = 0;
                v168 = 0;
                v169 = -1;
                v170 = -1;
                v171 = -1;
                v172 = 0;
                v173 = 0;
                v174 = 0;
                v134 = a1;
                v135 = v100;
                v136 = v101;
                v137 = v54;
                v138 = -1;
                v155 = a4;
                v156 = v103;
                v157 = v102;
                v158 = v58;
                v159 = -1;
                sub_10027B30C(v181, v175, v128, a9, a10, a11);
                v52 = a3;
                v54 = v127;
                v53 = v123;
                v51 = v124;
                goto LABEL_121;
              }

              if (v101 != v102)
              {
                v103 = v52[2];
                goto LABEL_120;
              }

              if (a7)
              {
                if (v54 >= v58 || (a8 & 1) == 0)
                {
                  v102 = v52[3];
                  v103 = v52[2];
                  if (v54 >= v58)
                  {
LABEL_121:
                    v105 = v65 + 4;
                    v65 += 2;
                    ++v58;
                    if (v85 + 2 == v51)
                    {
                      v85 = &v17[2 * (v85 != v17)];
                    }

                    else
                    {
                      v85 += 2;
                    }

                    --v86;
                    if (v105 == v60)
                    {
LABEL_38:
                      v16 = v111;
                      v13 = v112;
                      v37 = v114;
                      goto LABEL_39;
                    }

                    continue;
                  }

                  goto LABEL_120;
                }

LABEL_128:
                if (!v86)
                {
                  goto LABEL_121;
                }

                if (!v54)
                {
                  v102 = v52[3];
                  v103 = v52[2];
                  if (v52[11] - 2 <= v58)
                  {
                    goto LABEL_121;
                  }

                  goto LABEL_120;
                }
              }

              else if (a8)
              {
                goto LABEL_128;
              }

              break;
            }

            v102 = v52[3];
            v103 = v52[2];
            goto LABEL_120;
          }
        }

        v68 = v61 + 2;
        ++v67;
        ++v66;
        ++v63;
        v65 = v61;
        v61 = v68;
      }

      while (v68 != v60);
      v65 = v68 - 2;
LABEL_134:
      v62 = v66;
      v58 = v67;
      v81 = v65 + 2;
      if (v65 + 2 != v60)
      {
        goto LABEL_83;
      }
    }

LABEL_135:
    ++v120;
    v13 = v56;
LABEL_39:
    v36 = v119 + 2;
    v37 += 2;
    v20 = v54 + 1;
    if (v118 + 2 == v16)
    {
      v42 = &v13[2 * (v118 != v13)];
    }

    else
    {
      v42 = v118 + 2;
    }
  }

  while (v37 != v117);
  return 1;
}

void *sub_10027B30C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v39 = a6;
  v42[0] = a1;
  v42[1] = a2;
  v11 = sub_10027CC2C(&v43, a1, a2, a5);
  v47[0] = a1;
  v47[1] = a5;
  v47[2] = v11;
  v47[3] = &v44;
  v48 = 0;
  v49[0] = a2;
  v49[1] = a5;
  v49[2] = &v45;
  v49[3] = &v46;
  v50 = 0;
  v51[1] = v47;
  v51[2] = v49;
  v52[1] = v49;
  v52[2] = v47;
  v12 = *(a1 + 24);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v41[0] = *(a1 + 16);
  v41[1] = v12;
  v40[0] = v13;
  v40[1] = v14;
  v38[2] = xmmword_1003D8180;
  v38[3] = 0uLL;
  v38[4] = 1uLL;
  *v38 = *v12 - *v41[0];
  *&v38[1] = *v14 - *v13;
  *(v38 + 1) = *(v12 + 8) - *(v41[0] + 1);
  *(&v38[1] + 1) = *(v14 + 8) - *(v13 + 8);
  sub_10027D14C(v38, v41, v40, v47, v49, v53);
  v62 = a4;
  v63 = a5;
  if (LOBYTE(v58[0]) == 100)
  {
    return v39;
  }

  memcpy(v38, a3, 0x178uLL);
  if (LOBYTE(v58[0]) <= 0x68u)
  {
    if (LOBYTE(v58[0]) == 99)
    {
      if ((v58[0] & 0x100) != 0)
      {
        sub_10028073C(a1, a2, v38, &v39, v42, v51, nullsub_185);
        return v39;
      }

      if (v60)
      {
        sub_10027C70C(a1, a2, v38, v53, v58, v51);
        v15 = v39;
        v28 = *(v39 + 1);
        v29 = v39[2];
        v18 = v39[1];
        v30 = 2 * (v29 - v18) - 1;
        if (v29 == v18)
        {
          v30 = 0;
        }

        v20 = v39[5] + v39[4];
        if (v30 != v20)
        {
          goto LABEL_40;
        }

LABEL_38:
        sub_10028017C(v39);
LABEL_39:
        v18 = v15[1];
        v20 = v15[5] + v15[4];
LABEL_40:
        memcpy((*(v18 + ((v20 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * (v20 & 0xF)), v38, 0x178uLL);
        ++v15[5];
        return v39;
      }

      sub_10027C9B8(a1, a2, v38, v53, v58, v51);
      LODWORD(v38[1]) = 5;
    }

    else
    {
      if (LOBYTE(v58[0]) != 101 || (v58[0] & 0x100) != 0)
      {
        return v39;
      }

      sub_10027C9B8(a1, a2, v38, v53, v58, v51);
    }

    v15 = v39;
    v34 = *(v39 + 1);
    v35 = v39[2];
    v18 = v39[1];
    v36 = 2 * (v35 - v18) - 1;
    if (v35 == v18)
    {
      v36 = 0;
    }

    v20 = v39[5] + v39[4];
    if (v36 != v20)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  switch(LOBYTE(v58[0]))
  {
    case 'i':
      v38[0] = *&v53[8];
      *(&v38[6] + 1) = v55;
      *(&v38[5] + 8) = v54;
      *&v38[17] = v57;
      v38[16] = v56;
      v15 = v39;
      v21 = *(v39 + 1);
      v22 = v39[2];
      v18 = v39[1];
      v23 = 2 * (v22 - v18) - 1;
      LODWORD(v38[1]) = 2;
      if (v22 == v18)
      {
        v23 = 0;
      }

      v24 = v59 == 1;
      *(&v38[2] + 42 * (v59 != 1) + 2) = 1;
      *(&v38[2] + 42 * v24 + 2) = 2;
      v20 = v15[5] + v15[4];
      if (v23 != v20)
      {
        goto LABEL_40;
      }

      sub_10028017C(v15);
      goto LABEL_39;
    case 't':
      sub_10027C068(a1, a2, v38, v53, v58, v51);
      v15 = v39;
      v25 = *(v39 + 1);
      v26 = v39[2];
      v18 = v39[1];
      v27 = 2 * (v26 - v18) - 1;
      if (v26 == v18)
      {
        v27 = 0;
      }

      v20 = v39[5] + v39[4];
      if (v27 != v20)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    case 'm':
      if (v61 == 1)
      {
        sub_10027B82C(a1, a2, v38, v53, v58, v51);
        v15 = v39;
        v16 = *(v39 + 1);
        v17 = v39[2];
        v18 = v39[1];
        v19 = 2 * (v17 - v18) - 1;
        if (v17 == v18)
        {
          v19 = 0;
        }

        v20 = v39[5] + v39[4];
        if (v19 != v20)
        {
          goto LABEL_40;
        }
      }

      else
      {
        sub_10027BC48(a2, a1, v38, v53, v58, v52);
        v15 = v39;
        v31 = *(v39 + 1);
        v32 = v39[2];
        v18 = v39[1];
        v33 = 2 * (v32 - v18) - 1;
        if (v32 == v18)
        {
          v33 = 0;
        }

        v20 = v39[5] + v39[4];
        if (v33 != v20)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_38;
  }

  return v39;
}

void sub_10027B82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  *(a3 + 16) = 4;
  *a3 = *(a4 + 8);
  v8 = a5[9];
  if (v8 == -1)
  {
    *(a3 + 88) = xmmword_1003D8180;
    *(a3 + 104) = 0;
    v9 = a5[10];
    if (v9 == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v8 == 1)
    {
      *(a3 + 88) = vdupq_n_s64(1uLL);
      *(a3 + 104) = 0x412E848000000000;
      v9 = a5[10];
      if (v9 != 1)
      {
        goto LABEL_4;
      }

LABEL_7:
      *(a3 + 256) = vdupq_n_s64(1uLL);
      *(a3 + 272) = 0x412E848000000000;
      goto LABEL_11;
    }

    v10 = *(a4 + 40);
    *(a3 + 104) = *(a4 + 56);
    *(a3 + 88) = v10;
    v9 = a5[10];
    if (v9 == 1)
    {
      goto LABEL_7;
    }
  }

LABEL_4:
  if (v9 == -1)
  {
    *(a3 + 256) = xmmword_1003D8180;
    *(a3 + 272) = 0;
  }

  else
  {
    v11 = *(a4 + 64);
    *(a3 + 272) = *(a4 + 80);
    *(a3 + 256) = v11;
  }

LABEL_11:
  v12 = a5[7];
  v13 = *(a6 + 8);
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  v16 = sub_10027D8FC(*(a6 + 16), 2);
  v41 = 1.0;
  v17 = sub_10027E098(v14, v15, v16, &v41);
  if (v17 == 0.0)
  {
LABEL_12:
    v18 = 0;
    goto LABEL_21;
  }

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v19 = fabs(v17);
    if (v17 > 0.0)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v19 <= v41 * 2.22044605e-16)
    {
      goto LABEL_12;
    }
  }

  else if (v17 > 0.0)
  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

LABEL_21:
  if (!(v12 + v18))
  {
    v20 = a3 + 40;
    *(v20 + 168 * (v18 != -1)) = 1;
    *(v20 + 168 * (v18 == -1)) = 2;
    return;
  }

  v21 = *(a6 + 16);
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  v24 = sub_10027D8FC(v21, 2);
  v41 = 1.0;
  v25 = sub_10027E098(v22, v23, v24, &v41);
  if (v25 == 0.0)
  {
    goto LABEL_24;
  }

  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v27 = fabs(v25);
    if (v25 > 0.0)
    {
      v26 = 1;
    }

    else
    {
      v26 = -1;
    }

    if (v27 <= v41 * 2.22044605e-16)
    {
LABEL_24:
      v26 = 0;
    }
  }

  else if (v25 > 0.0)
  {
    v26 = 1;
  }

  else
  {
    v26 = -1;
  }

  v28 = *(a6 + 16);
  v29 = *(v28 + 24);
  v30 = sub_10027D8FC(v28, 2);
  v31 = *(*(a6 + 8) + 24);
  v41 = 1.0;
  v32 = sub_10027E098(v29, v30, v31, &v41);
  if (v32 == 0.0)
  {
LABEL_34:
    v33 = 0;
    goto LABEL_43;
  }

  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v34 = fabs(v32);
    if (v32 > 0.0)
    {
      v33 = 1;
    }

    else
    {
      v33 = -1;
    }

    if (v34 <= v41 * 2.22044605e-16)
    {
      goto LABEL_34;
    }
  }

  else if (v32 > 0.0)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

LABEL_43:
  if ((v18 & v12) == 0xFFFFFFFF && v26 == 1)
  {
    *(a3 + 40) = 2;
    *(a3 + 208) = 2;
    *(a3 + 20) = 1;
  }

  else if (v12 == 1 && v18 == 1 && v26 == -1)
  {
    *(a3 + 40) = 1;
    if (v33 == -1)
    {
      v35 = 1;
    }

    else
    {
      v35 = 3;
    }

    *(a3 + 208) = v35;
    *(a3 + 20) = 1;
  }

  else if (v12 == v18 && v12 == v26)
  {
    v36 = (v26 == 1) ^ (v33 == 0);
    if (v33 * v12 == -1)
    {
      v37 = sub_100280544(a6);
      if (sub_1002805E0(a6) * v37 == 1 && sub_1002806A0(a6) * v33 == -1)
      {
        v36 ^= 1u;
      }
    }

    v38 = a3 + 40;
    *(v38 + 168 * v36) = 1;
    *(v38 + 168 * (v36 ^ 1)) = 2;
    *(a3 + 20) = 1;
  }

  else if (v18)
  {
    *(a3 + 16) = 8;
  }

  else
  {
    if (v12 == v26)
    {
      v39 = 4;
      *(a3 + 40) = 4;
    }

    else
    {
      if (v26 == 1)
      {
        v40 = 2;
      }

      else
      {
        v40 = 1;
      }

      *(a3 + 40) = v40;
      v39 = 3;
    }

    *(a3 + 208) = v39;
  }
}