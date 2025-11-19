void sub_10033B3D8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10033B400()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10033B470()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_10033B4E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
LABEL_75:
    sub_1000474A4(v59, "");
    sub_1000D36B0("Polygon bounds must never be zero!", v61);
    sub_100382FC4(v61, v58, v59);
    sub_10003F5D0(v58);
  }

  v3 = 0.0;
  while (2)
  {
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    v56 = (*(v1 + 40) - *(v1 + 32)) >> 3;
    v57 = v5 - v4;
    if (v57 != v56)
    {
      sub_1000474A4(v59, "");
      sub_1001D0C58("PolygonBounds objects must have xs.size() == ys.size()! ", v61);
      sub_100181374(&v57, &__p[1]);
      sub_100211558(" ", &v64);
      sub_100181374(&v56, &v65);
      sub_1000E661C(v59, v61, 4);
      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_60:
          if ((SHIBYTE(v63) & 0x80000000) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_71;
        }
      }

      else if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_60;
      }

      operator delete(v64.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v63) & 0x80000000) == 0)
      {
LABEL_61:
        if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_72;
      }

LABEL_71:
      operator delete(__p[1]);
      if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
      {
LABEL_62:
        if ((v60 & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

LABEL_73:
        operator delete(v59[0]);
LABEL_63:
        sub_10003F5D0(v58);
      }

LABEL_72:
      operator delete(v61[0]);
      if ((v60 & 0x80000000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_73;
    }

    if (v5 == v4)
    {
      sub_1000474A4(v59, "");
      sub_100232548("All PolygonBounds must be non-empty!", v61);
      sub_1000E661C(v59, v61, 1);
      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(v61[0]);
      }

      if (v60 < 0)
      {
        operator delete(v59[0]);
      }

      sub_10003F5D0(v58);
    }

    v6 = v5 - v4;
    if (v6 == 2)
    {
      v3 = v3 + hypot(*v4 - v4[1], **(v1 + 32) - *(*(v1 + 32) + 8)) * (*(v1 + 56) + *(v1 + 56)) + *(v1 + 56) * (*(v1 + 56) * 3.14159265);
      goto LABEL_4;
    }

    if (v6 == 1)
    {
      v3 = v3 + *(v1 + 56) * 3.14159265 * *(v1 + 56);
      goto LABEL_4;
    }

    *__p = 0u;
    v63 = 0u;
    *v61 = 0u;
    if (v5 != v4)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v4[v8];
        v10 = *(*(v1 + 32) + 8 * v8);
        if (v7 < __p[0])
        {
          *v7 = v9;
          *(v7 + 1) = v10;
          v7 += 16;
        }

        else
        {
          v11 = v61[0];
          v12 = v7 - v61[0];
          v13 = (v7 - v61[0]) >> 4;
          v14 = v13 + 1;
          if ((v13 + 1) >> 60)
          {
            sub_10000FC84();
          }

          v15 = __p[0] - v61[0];
          if ((__p[0] - v61[0]) >> 3 > v14)
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

          v17 = v13;
          v18 = (16 * v13);
          *v18 = v9;
          *(v18 + 1) = v10;
          v7 = (16 * v13 + 16);
          v19 = &v18[-2 * v17];
          memcpy(v19, v11, v12);
          v61[0] = v19;
          v61[1] = v7;
          __p[0] = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        v61[1] = v7;
        ++v8;
        v4 = *(v1 + 8);
      }

      while (v8 < (*(v1 + 16) - v4) >> 3);
    }

    sub_100027918(v61);
    v20 = v61[0];
    v21 = 0.0;
    if ((v61[1] - v61[0]) < 0x40)
    {
      goto LABEL_35;
    }

    v22 = (v61[0] + 16);
    if (v61[0] + 16 == v61[1])
    {
      goto LABEL_35;
    }

    v23 = v61[1] - v61[0] - 32;
    if (v23 > 0x2F)
    {
      v25 = (v23 >> 4) + 1;
      v26 = 16 * (v25 & 0x1FFFFFFFFFFFFFFCLL);
      v22 = (v22 + v26);
      v24 = (v61[0] + v26);
      v27 = (v61[0] + 32);
      v28 = v25 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v29 = v27 - 4;
        v66 = vld2q_f64(v29);
        v67 = vld2q_f64(v27);
        v30 = v27 - 2;
        v31 = v27 + 2;
        v69 = vld2q_f64(v30);
        v71 = vld2q_f64(v31);
        v66.val[0] = vmulq_f64(vaddq_f64(v66.val[0], v69.val[0]), vsubq_f64(v66.val[1], v69.val[1]));
        v66.val[1] = vmulq_f64(vaddq_f64(v67.val[0], v71.val[0]), vsubq_f64(v67.val[1], v71.val[1]));
        v21 = v21 + v66.val[0].f64[0] + v66.val[0].f64[1] + v66.val[1].f64[0] + v66.val[1].f64[1];
        v27 += 8;
        v28 -= 4;
      }

      while (v28);
      if (v25 == (v25 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v24 = v61[0];
    }

    do
    {
      v32 = *v22;
      v22 += 2;
      v21 = v21 + (*v24 + v32) * (v24[1] - v24[3]);
      v24 += 2;
    }

    while (v22 != v61[1]);
LABEL_34:
    v21 = v21 * 0.5;
LABEL_35:
    v34 = __p[1];
    v33 = v63;
    if (__p[1] == v63)
    {
      v3 = v3 + v21 + 0.0;
      v54 = __p[1];
      if (__p[1])
      {
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    v35 = 0.0;
    v36 = __p[1];
    do
    {
      v39 = *v36;
      v38 = v36[1];
      v40 = v38 - *v36;
      v37 = 0.0;
      if (v40 >= 0x40)
      {
        v41 = v39 + 2;
        if (v39 + 2 != v38)
        {
          v42 = v40 - 32;
          if (v42 > 0x2F)
          {
            v44 = (v42 >> 4) + 1;
            v45 = 2 * (v44 & 0x1FFFFFFFFFFFFFFCLL);
            v41 = (v41 + v45 * 8);
            v43 = &v39[v45];
            v46 = v39 + 4;
            v47 = v44 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v48 = v46 - 4;
              v68 = vld2q_f64(v48);
              v70 = vld2q_f64(v46);
              v49 = v46 - 2;
              v50 = v46 + 2;
              v72 = vld2q_f64(v49);
              v73 = vld2q_f64(v50);
              v68.val[0] = vmulq_f64(vaddq_f64(v68.val[0], v72.val[0]), vsubq_f64(v68.val[1], v72.val[1]));
              v68.val[1] = vmulq_f64(vaddq_f64(v70.val[0], v73.val[0]), vsubq_f64(v70.val[1], v73.val[1]));
              v37 = v37 + v68.val[0].f64[0] + v68.val[0].f64[1] + v68.val[1].f64[0] + v68.val[1].f64[1];
              v46 += 8;
              v47 -= 4;
            }

            while (v47);
            if (v44 == (v44 & 0x1FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_37;
            }
          }

          else
          {
            v43 = *v36;
          }

          do
          {
            v51 = *v41;
            v41 += 2;
            v37 = v37 + (*v43 + v51) * (v43[1] - v43[3]);
            v43 += 2;
          }

          while (v41 != v38);
LABEL_37:
          v37 = v37 * 0.5;
        }
      }

      v35 = v35 + v37;
      v36 += 3;
    }

    while (v36 != v63);
    v3 = v3 + v21 + v35;
    if (!__p[1])
    {
      goto LABEL_56;
    }

    do
    {
      v53 = (v33 - 3);
      v52 = *(v33 - 3);
      if (v52)
      {
        *(v33 - 2) = v52;
        operator delete(v52);
      }

      v33 = v53;
    }

    while (v53 != v34);
    v54 = __p[1];
LABEL_55:
    *&v63 = v34;
    operator delete(v54);
    v20 = v61[0];
LABEL_56:
    if (v20)
    {
      v61[1] = v20;
      operator delete(v20);
    }

LABEL_4:
    v1 += 72;
    if (v1 != v2)
    {
      continue;
    }

    break;
  }

  if (v3 <= 0.0)
  {
    goto LABEL_75;
  }

  return v3;
}

void sub_10033BB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033BC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033BC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033BC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033BC44(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v3 = a1[1];
  if (a1[2] != v3)
  {
    v5 = 0;
    do
    {
      v6 = *(a1[4] + 8 * v5);
      *&v7 = *(v3 + 8 * v5);
      *(&v7 + 1) = v6;
      sub_1000277F8(a2, &v7);
      ++v5;
      v3 = a1[1];
    }

    while (v5 < (a1[2] - v3) >> 3);
  }

  sub_100027918(a2);
}

void sub_10033BCF8(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v4 = a1[2];
  if (a1[3] != v4)
  {
    v5 = 0;
    do
    {
      v6 = *(a1[5] + 8 * v5);
      *&v24 = *(v4 + 8 * v5);
      *(&v24 + 1) = v6;
      sub_1000277F8(a2, &v24);
      ++v5;
      v4 = a1[2];
    }

    while (v5 < (a1[3] - v4) >> 3);
  }

  sub_10033D804((a2 + 24), 0x8E38E38E38E38E39 * ((a1[11] - a1[10]) >> 3));
  v7 = a1[10];
  for (i = a1[11]; v7 != i; v7 += 9)
  {
    v8 = sub_10033D93C((a2 + 24), *(a2 + 32));
    v9 = v7[1];
    if (v7[2] != v9)
    {
      v10 = v8;
      v11 = 0;
      v12 = v8[1];
      do
      {
        v13 = *(v9 + 8 * v11);
        v14 = *(v7[4] + 8 * v11);
        v15 = v10[2];
        if (v12 < v15)
        {
          *v12 = v13;
          *(v12 + 1) = v14;
          v12 += 16;
        }

        else
        {
          v16 = *v10;
          v17 = v12 - *v10;
          v18 = v17 >> 4;
          v19 = (v17 >> 4) + 1;
          if (v19 >> 60)
          {
            sub_10000FC84();
          }

          v20 = v15 - v16;
          if (v20 >> 3 > v19)
          {
            v19 = v20 >> 3;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF0)
          {
            v21 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            if (!(v21 >> 60))
            {
              operator new();
            }

            sub_10000D444();
          }

          v22 = (16 * v18);
          *v22 = v13;
          v22[1] = v14;
          v12 = (16 * v18 + 16);
          memcpy(0, v16, v17);
          *v10 = 0;
          v10[1] = v12;
          v10[2] = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        v10[1] = v12;
        ++v11;
        v9 = v7[1];
      }

      while (v11 < (v7[2] - v9) >> 3);
    }
  }

  sub_100027918(a2);
}

double sub_10033BF80(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v46 = *(a2 + 8);
  v4 = *(a1 + 1800);
  v5 = *(a1 + 1808);
  if (v4 == v5)
  {
    return NAN;
  }

  v6 = INFINITY;
  v7 = NAN;
  do
  {
    *__p = 0u;
    v45 = 0u;
    *v43 = 0u;
    v14 = *(v4 + 8);
    if (*(v4 + 16) != v14)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = *(v14 + 8 * v16);
        v18 = *(*(v4 + 32) + 8 * v16);
        if (v15 < __p[0])
        {
          *v15 = v17;
          *(v15 + 1) = v18;
          v15 += 16;
        }

        else
        {
          v19 = v43[0];
          v20 = v15 - v43[0];
          v21 = (v15 - v43[0]) >> 4;
          v22 = v21 + 1;
          if ((v21 + 1) >> 60)
          {
            sub_10000FC84();
          }

          v23 = __p[0] - v43[0];
          if ((__p[0] - v43[0]) >> 3 > v22)
          {
            v22 = v23 >> 3;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF0)
          {
            v24 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            if (!(v24 >> 60))
            {
              operator new();
            }

            sub_10000D444();
          }

          v25 = v21;
          v26 = (16 * v21);
          *v26 = v17;
          v26[1] = v18;
          v15 = (16 * v21 + 16);
          v27 = &v26[-2 * v25];
          memcpy(v27, v19, v20);
          v43[0] = v27;
          v43[1] = v15;
          __p[0] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        v43[1] = v15;
        ++v16;
        v14 = *(v4 + 8);
      }

      while (v16 < (*(v4 + 16) - v14) >> 3);
    }

    sub_100027918(v43);
    if (v43[0] == v43[1])
    {
      v35 = __p[1];
      if (__p[1] == v45)
      {
LABEL_46:
        v49 = &off_10043FEC8;
        v47.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/throw_on_empty_input.hpp";
        v47.i64[1] = "void boost::geometry::detail::throw_on_empty_input(const Geometry &) [Geometry = boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>]";
        v48 = 54;
        sub_10016B3C8(&v49, &v47);
      }

      while (*v35 == v35[1])
      {
        v35 += 3;
        if (v35 == v45)
        {
          goto LABEL_46;
        }
      }
    }

    v28 = sub_10016BBBC(&v46, v43);
    v29 = __p[1];
    if (__p[1])
    {
      v30 = v45;
      v31 = __p[1];
      if (v45 != __p[1])
      {
        v32 = v45;
        do
        {
          v34 = *(v32 - 3);
          v32 -= 24;
          v33 = v34;
          if (v34)
          {
            *(v30 - 2) = v33;
            operator delete(v33);
          }

          v30 = v32;
        }

        while (v32 != v29);
        v31 = __p[1];
      }

      *&v45 = v29;
      operator delete(v31);
    }

    if (v43[0])
    {
      v43[1] = v43[0];
      operator delete(v43[0]);
    }

    v8 = fabs(v28);
    v9 = *(v4 + 56);
    if (!a3)
    {
      v9 = 0.0;
    }

    v10 = -(v8 - v9);
    if (v28 >= 0.0)
    {
      v10 = v8 - v9;
    }

    v11 = v8 < v9;
    if (v8 >= v9)
    {
      v12 = v8 - v9;
    }

    else
    {
      v12 = 0.0;
    }

    if (v11)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v10;
    }

    if (v12 < v6)
    {
      v6 = v12;
      v7 = v13;
    }

    v4 += 72;
  }

  while (v4 != v5);
  if (v7 <= 0.0 && (a4 & 1) != 0)
  {
    sub_10012D378(v42, a2);
    sub_10033C340(a1, v42);
    v7 = v36;
    nullsub_75(v42);
  }

  return v7;
}

void sub_10033C2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nullsub_75(va);
  _Unwind_Resume(a1);
}

void sub_10033C2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033C2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033C2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033C310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::exception::~exception((v9 - 144));
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033C32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033C340(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1832);
  v67 = *(a1 + 1840);
  if (v2 != v67)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = fabs(v3);
    v6 = fabs(v4);
    do
    {
      v7 = v2;
      v8 = *(v2 + 80);
      v68 = v7;
      v9 = *(v7 + 88);
      v69 = v9;
      while (v8 != v9)
      {
        *__p = 0u;
        v72 = 0u;
        *v70 = 0u;
        v10 = v8[1];
        if (v8[2] != v10)
        {
          v11 = 0;
          v12 = 0;
          do
          {
            v13 = *(v10 + 8 * v12);
            v14 = *(v8[4] + 8 * v12);
            if (v11 < __p[0])
            {
              *v11 = v13;
              *(v11 + 1) = v14;
              v11 += 16;
            }

            else
            {
              v15 = v70[0];
              v16 = v11 - v70[0];
              v17 = (v11 - v70[0]) >> 4;
              v18 = v17 + 1;
              if ((v17 + 1) >> 60)
              {
                sub_10000FC84();
              }

              v19 = __p[0] - v70[0];
              if ((__p[0] - v70[0]) >> 3 > v18)
              {
                v18 = v19 >> 3;
              }

              if (v19 >= 0x7FFFFFFFFFFFFFF0)
              {
                v20 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v20 = v18;
              }

              if (v20)
              {
                if (!(v20 >> 60))
                {
                  operator new();
                }

                sub_10000D444();
              }

              v21 = (16 * v17);
              *v21 = v13;
              v21[1] = v14;
              v11 = (16 * v17 + 16);
              memcpy(0, v15, v16);
              v70[0] = 0;
              v70[1] = v11;
              __p[0] = 0;
              if (v15)
              {
                operator delete(v15);
              }
            }

            v70[1] = v11;
            ++v12;
            v10 = v8[1];
          }

          while (v12 < (v8[2] - v10) >> 3);
        }

        sub_100027918(v70);
        v22 = v70[1];
        v23 = (v70[0] + 16);
        if ((v70[1] - v70[0]) >= 0x40 && v23 != v70[1])
        {
          v31 = 0;
          while (1)
          {
            v34 = v23 - 2;
            v35 = *(v23 - 2);
            if (v35 == v3)
            {
              v36 = 1;
            }

            else
            {
              v36 = 0;
              if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                v37 = fabs(v35);
                v38 = vabdd_f64(v35, v3);
                if (v37 < v5)
                {
                  v37 = v5;
                }

                if (v37 < 1.0)
                {
                  v37 = 1.0;
                }

                v36 = v38 <= v37 * 2.22044605e-16;
              }
            }

            v39 = *v23;
            if (*v23 == v3)
            {
              break;
            }

            if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v45 = fabs(v39);
              v46 = vabdd_f64(v39, v3);
              if (v45 < v5)
              {
                v45 = v5;
              }

              if (v45 < 1.0)
              {
                v45 = 1.0;
              }

              v40 = v46 <= v45 * 2.22044605e-16;
              if (v36 && v40)
              {
LABEL_56:
                v41 = *(v23 - 1);
                v42 = v23[1];
                if (v41 <= v4 && v42 >= v4)
                {
                  goto LABEL_27;
                }

                if (v41 >= v4 && v42 <= v4)
                {
                  goto LABEL_27;
                }

                goto LABEL_44;
              }

LABEL_73:
              if (v36)
              {
                goto LABEL_81;
              }

              if (v40)
              {
                if (v35 <= v3)
                {
                  v47 = 1;
                }

                else
                {
                  v47 = -1;
                }

                v48 = v23[1];
                if (v4 == v48)
                {
                  goto LABEL_27;
                }

LABEL_87:
                if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v48 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  v49 = fabs(v48);
                  v50 = vabdd_f64(v4, v48);
                  if (v6 >= v49)
                  {
                    v49 = v6;
                  }

                  if (v49 < 1.0)
                  {
                    v49 = 1.0;
                  }

                  if (v50 <= v49 * 2.22044605e-16)
                  {
                    goto LABEL_27;
                  }
                }

                if (v4 >= v48)
                {
                  v32 = v47;
                }

                else
                {
                  v32 = -v47;
                }

                goto LABEL_40;
              }

              goto LABEL_95;
            }

            if (v36)
            {
LABEL_81:
              if (v39 <= v3)
              {
                v47 = -1;
              }

              else
              {
                v47 = 1;
              }

              if (!v36)
              {
                v34 = v23;
              }

              v48 = v34[1];
              if (v4 == v48)
              {
                goto LABEL_27;
              }

              goto LABEL_87;
            }

LABEL_95:
            if (v35 >= v3 || v39 <= v3)
            {
              if (v35 <= v3 || v39 >= v3)
              {
                goto LABEL_44;
              }

              v47 = -2;
            }

            else
            {
              v47 = 2;
            }

            v77 = *(v23 - 2);
            v78 = *(v23 - 1);
            v53 = v23[1];
            v76[0] = *v23;
            v76[1] = v53;
            v75[0] = v3;
            v75[1] = v4;
            v54 = v35 - v3;
            *v73.i64 = v35 - v3;
            v55 = v53 - v4;
            v84[0] = v53 - v4;
            v56 = v78 - v4;
            v83[0] = v78 - v4;
            v57 = v76[0] - v3;
            v82[0] = v76[0] - v3;
            v58 = vabdd_f64(v35, v3);
            v59 = vabdd_f64(v53, v4);
            v60 = vabdd_f64(v78, v4);
            v61 = vabdd_f64(v76[0], v3);
            if (v58 < v59)
            {
              v58 = v59;
            }

            if (v58 < v60)
            {
              v58 = v60;
            }

            if (v58 < v61)
            {
              v58 = v61;
            }

            if (v58 >= 1.0)
            {
              v62 = v58;
            }

            else
            {
              v62 = 1.0;
            }

            v63 = v54 * v55;
            v81[0] = v54 * v55;
            v64 = v56 * v57;
            v65 = v54 * v55 - v56 * v57;
            v79 = fabs(v56 * v57) + fabs(v54 * v55);
            v80[0] = v56 * v57;
            if (vabdd_f64(v54 * v55, v56 * v57) < v79 * 3.33066907e-16 && (v63 <= 0.0 || v64 > 0.0) && (v63 >= 0.0 || v64 < 0.0))
            {
              v65 = sub_10016C58C(&v77, v76, v75, v73.i64, v84, v83, v82, v81, v80, &v79);
            }

            if (v65 == 0.0)
            {
              goto LABEL_27;
            }

            if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
            {
              v66 = fabs(v65);
              if (v65 > 0.0)
              {
                v32 = 1;
              }

              else
              {
                v32 = -1;
              }

              if (v66 <= v62 * 2.22044605e-16)
              {
                goto LABEL_27;
              }
            }

            else if (v65 > 0.0)
            {
              v32 = 1;
            }

            else
            {
              v32 = -1;
            }

LABEL_40:
            if (v32 * v47 <= 0)
            {
              v33 = 0;
            }

            else
            {
              v33 = v47;
            }

            v31 += v33;
LABEL_44:
            v23 += 2;
            if (v23 == v22)
            {
              if (v31)
              {
                if (v70[1] != v70[0])
                {
                  if (((v70[1] - v70[0]) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_10000FC84();
                }

                *&v84[0] = &off_10043FEC8;
                v73.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/throw_on_empty_input.hpp";
                v73.i64[1] = "void boost::geometry::detail::throw_on_empty_input(const Geometry &) [Geometry = boost::geometry::model::linestring<boost::geometry::model::d2::point_xy<double>>]";
                v74 = 54;
                sub_10016B3C8(v84, &v73);
              }

              goto LABEL_27;
            }
          }

          v40 = 1;
          if (v36)
          {
            goto LABEL_56;
          }

          goto LABEL_73;
        }

LABEL_27:
        v25 = __p[1];
        if (__p[1])
        {
          v26 = v72;
          v27 = __p[1];
          if (v72 != __p[1])
          {
            v28 = v72;
            do
            {
              v30 = *(v28 - 3);
              v28 -= 24;
              v29 = v30;
              if (v30)
              {
                *(v26 - 2) = v29;
                operator delete(v29);
              }

              v26 = v28;
            }

            while (v28 != v25);
            v27 = __p[1];
          }

          *&v72 = v25;
          operator delete(v27);
        }

        if (v70[0])
        {
          v70[1] = v70[0];
          operator delete(v70[0]);
        }

        v8 += 9;
        v9 = v69;
      }

      v2 = v68 + 112;
    }

    while (v68 + 112 != v67);
  }
}

void sub_10033CC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

double sub_10033CC98(double *a1, double **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == v4)
  {
    v22 = &off_10043FEC8;
    v18.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/throw_on_empty_input.hpp";
    v18.i64[1] = "void boost::geometry::detail::throw_on_empty_input(const Geometry &) [Geometry = boost::geometry::model::linestring<boost::geometry::model::d2::point_xy<double>>]";
    v19 = 54;
    sub_10016B3C8(&v22, &v18);
  }

  v21 = 0;
  v18.i64[0] = 0;
  v22 = 0;
  sub_10016CB60(a1, v3, v4, &v20, &v18, &v22, &v21);
  v6 = *(v22 + 1);
  v7 = *a1;
  v8 = a1[1];
  v9 = *(v18.i64[0] + 8);
  v10 = *v22 - *v18.i64[0];
  v11 = v6 - v9;
  v12 = *a1 - *v18.i64[0];
  v13 = (v8 - v9) * (v6 - v9) + v12 * v10;
  if (v13 <= 0.0)
  {
    return sqrt(v12 * v12 + 0.0 + (v8 - v9) * (v8 - v9));
  }

  v14 = v11 * v11 + v10 * v10;
  if (v14 <= v13)
  {
    v15 = v8 - v6;
    v16 = v7 - *v22;
  }

  else
  {
    v15 = v8 - (v9 + v11 * (v13 / v14));
    v16 = v7 - (*v18.i64[0] + v10 * (v13 / v14));
  }

  return sqrt(v16 * v16 + 0.0 + v15 * v15);
}

double sub_10033CDF4(void *a1, uint64_t a2, int a3, int a4, int a5, double a6)
{
  v44 = *(a2 + 8);
  v7 = a1[225];
  v8 = a1[226];
  if (v7 == v8)
  {
    return NAN;
  }

  v9 = INFINITY;
  do
  {
    *__p = 0u;
    v47 = 0u;
    *v45 = 0u;
    v10 = *(v7 + 8);
    if (*(v7 + 16) != v10)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = *(v10 + 8 * v12);
        v14 = *(*(v7 + 32) + 8 * v12);
        if (v11 < __p[0])
        {
          *v11 = v13;
          *(v11 + 1) = v14;
          v11 += 16;
        }

        else
        {
          v15 = v45[0];
          v16 = v11 - v45[0];
          v17 = (v11 - v45[0]) >> 4;
          v18 = v17 + 1;
          if ((v17 + 1) >> 60)
          {
            sub_10000FC84();
          }

          v19 = __p[0] - v45[0];
          if ((__p[0] - v45[0]) >> 3 > v18)
          {
            v18 = v19 >> 3;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFF0)
          {
            v20 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            if (!(v20 >> 60))
            {
              operator new();
            }

            sub_10000D444();
          }

          v21 = v17;
          v22 = (16 * v17);
          *v22 = v13;
          v22[1] = v14;
          v11 = (16 * v17 + 16);
          v23 = &v22[-2 * v21];
          memcpy(v23, v15, v16);
          v45[0] = v23;
          v45[1] = v11;
          __p[0] = 0;
          if (v15)
          {
            operator delete(v15);
          }
        }

        v45[1] = v11;
        ++v12;
        v10 = *(v7 + 8);
      }

      while (v12 < (*(v7 + 16) - v10) >> 3);
    }

    sub_100027918(v45);
    v24 = *(v7 + 56);
    if (a3)
    {
      v24 = 0.0;
    }

    v25 = sub_10033D150(v45, &v44, a4, v24, a6);
    if (v25 < v9)
    {
      v9 = v25;
    }

    v26 = __p[1];
    if (__p[1])
    {
      v27 = v47;
      v28 = __p[1];
      if (v47 != __p[1])
      {
        v29 = v47;
        do
        {
          v31 = *(v29 - 3);
          v29 -= 24;
          v30 = v31;
          if (v31)
          {
            *(v27 - 2) = v30;
            operator delete(v30);
          }

          v27 = v29;
        }

        while (v29 != v26);
        v28 = __p[1];
      }

      *&v47 = v26;
      operator delete(v28);
    }

    if (v45[0])
    {
      v45[1] = v45[0];
      operator delete(v45[0]);
    }

    v7 += 72;
  }

  while (v7 != v8);
  if (a5)
  {
    if (v9 < 0.0)
    {
      v32 = a1[229];
      v33 = a1[230];
      if (v32 != v33)
      {
        while (1)
        {
          sub_10011A8C8(v45, v32);
          v34 = v48;
          v35 = v49;
          sub_10011A514(v45);
          if (v34 != v35)
          {
            break;
          }

          v32 += 112;
          if (v32 == v33)
          {
            return v9;
          }
        }

        sub_10012D378(v43, a2);
        v37 = sub_10033D634(a1, v43, a3, a4, a6);
        nullsub_75(v43);
        if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v37 >= v9)
        {
          return v37;
        }
      }
    }
  }

  return v9;
}

void sub_10033D0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nullsub_75(va);
  _Unwind_Resume(a1);
}

void sub_10033D100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033D114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033D128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033D13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

double sub_10033D150(double **a1, double *a2, int a3, double a4, double a5)
{
  v11 = *a1;
  v10 = a1[1];
  v59 = 0;
  v60 = 0;
  *&__p = 0.0;
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_117;
  }

  v12 = sub_10033CC98(a2, &__p);
  v57 = a3;
  if (*&__p != 0.0)
  {
    v59 = __p;
    operator delete(__p);
  }

  v14 = *a1;
  v13 = a1[1];
  if ((v13 - *a1) < 0x40)
  {
    goto LABEL_114;
  }

  LODWORD(__p) = 0;
  BYTE4(__p) = 0;
  if (v14 + 2 == v13)
  {
    goto LABEL_114;
  }

  do
  {
    if (!sub_10016C110(a2, v14, v14 + 2, &__p))
    {
      break;
    }

    v15 = v14 + 4;
    v14 += 2;
  }

  while (v15 != v13);
  if ((BYTE4(__p) & 1) != 0 || !__p)
  {
    goto LABEL_114;
  }

  v16 = a1[3];
  v17 = a1[4];
  if (v16 == v17)
  {
    v18 = v12;
LABEL_113:
    v12 = -v18;
    goto LABEL_114;
  }

  v18 = v12;
  while (1)
  {
    v20 = *v16;
    v19 = *(v16 + 1);
    *&__p = 0.0;
    v59 = 0;
    v60 = 0;
    if (v19 != v20)
    {
      if (((v19 - v20) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_117:
      sub_10000FC84();
    }

    v12 = sub_10033CC98(a2, &__p);
    if (*&__p != 0.0)
    {
      v59 = __p;
      operator delete(__p);
    }

    v21 = *(v16 + 1);
    v22 = (*v16 + 16);
    if (v21 - *v16 >= 0x40 && v22 != v21)
    {
      break;
    }

LABEL_15:
    if (v12 < v18)
    {
      v18 = v12;
    }

    v16 += 3;
    if (v16 == v17)
    {
      goto LABEL_113;
    }
  }

  v24 = 0;
  do
  {
    v27 = *(v22 - 2);
    v28 = *a2;
    if (v27 == *a2)
    {
      v29 = 1;
      v30 = *v22;
      if (*v22 == v28)
      {
        goto LABEL_38;
      }
    }

    else if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v38 = fabs(v27);
      v39 = fabs(v28);
      v40 = vabdd_f64(v27, v28);
      if (v38 < v39)
      {
        v38 = v39;
      }

      if (v38 < 1.0)
      {
        v38 = 1.0;
      }

      v29 = v40 <= v38 * 2.22044605e-16;
      v30 = *v22;
      if (*v22 == v28)
      {
LABEL_38:
        v31 = 1;
        if (v29)
        {
          goto LABEL_39;
        }

LABEL_69:
        if (v29)
        {
LABEL_70:
          if (v30 <= v28)
          {
            v44 = -1;
          }

          else
          {
            v44 = 1;
          }

          if (v29)
          {
            v45 = v22 - 2;
          }

          else
          {
            v45 = v22;
          }

          v46 = a2[1];
          v47 = v45[1];
          if (v46 == v47)
          {
            goto LABEL_15;
          }

LABEL_83:
          if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v48 = fabs(v46);
            v49 = fabs(v47);
            v50 = vabdd_f64(v46, v47);
            if (v48 < v49)
            {
              v48 = v49;
            }

            if (v48 < 1.0)
            {
              v48 = 1.0;
            }

            if (v50 <= v48 * 2.22044605e-16)
            {
              goto LABEL_15;
            }
          }

          if (v46 >= v47)
          {
            v25 = v44;
          }

          else
          {
            v25 = -v44;
          }

          goto LABEL_31;
        }

        if (v31)
        {
          if (v27 <= v28)
          {
            v44 = 1;
          }

          else
          {
            v44 = -1;
          }

          v46 = a2[1];
          v47 = v22[1];
          if (v46 == v47)
          {
            goto LABEL_15;
          }

          goto LABEL_83;
        }

        goto LABEL_91;
      }
    }

    else
    {
      v29 = 0;
      v30 = *v22;
      if (*v22 == v28)
      {
        goto LABEL_38;
      }
    }

    if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v41 = fabs(v30);
      v42 = fabs(v28);
      v43 = vabdd_f64(v30, v28);
      if (v41 < v42)
      {
        v41 = v42;
      }

      if (v41 < 1.0)
      {
        v41 = 1.0;
      }

      v31 = v43 <= v41 * 2.22044605e-16;
      if (v29 && v31)
      {
LABEL_39:
        v32 = a2[1];
        v33 = *(v22 - 1);
        v34 = v22[1];
        if (v33 <= v32 && v34 >= v32)
        {
          goto LABEL_15;
        }

        if (v33 >= v32 && v34 <= v32)
        {
          goto LABEL_15;
        }

        goto LABEL_35;
      }

      goto LABEL_69;
    }

    if (v29)
    {
      goto LABEL_70;
    }

LABEL_91:
    if (v27 < v28 && v30 > v28)
    {
      v44 = 2;
LABEL_102:
      *&__p = 1.0;
      v53 = sub_10016C468(v22 - 2, v22, a2, &__p);
      if (v53 == 0.0)
      {
        goto LABEL_15;
      }

      if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v54 = fabs(v53);
        if (v53 > 0.0)
        {
          v25 = 1;
        }

        else
        {
          v25 = -1;
        }

        if (v54 <= *&__p * 2.22044605e-16)
        {
          goto LABEL_15;
        }
      }

      else if (v53 > 0.0)
      {
        v25 = 1;
      }

      else
      {
        v25 = -1;
      }

LABEL_31:
      if (v44 * v25 <= 0)
      {
        v26 = 0;
      }

      else
      {
        v26 = v44;
      }

      v24 += v26;
      goto LABEL_35;
    }

    if (v27 > v28 && v30 < v28)
    {
      v44 = -2;
      goto LABEL_102;
    }

LABEL_35:
    v22 += 2;
  }

  while (v22 != v21);
  if (!v24)
  {
    goto LABEL_15;
  }

LABEL_114:
  v55 = -1.0;
  if (v57 == 1)
  {
    v55 = 1.0;
  }

  return v12 + v55 * (a4 + a5);
}

void sub_10033D614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10033D634(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v29 = *(a2 + 8);
  v6 = *(a1 + 1832);
  v7 = *(a1 + 1840);
  if (v6 == v7)
  {
    return NAN;
  }

  v9 = INFINITY;
  if (a3)
  {
    do
    {
      sub_10033BCF8(v6, &v25);
      v10 = sub_10033D150(&v25, &v29, a4, 0.0, a5);
      if (v10 < v9)
      {
        v9 = v10;
      }

      v11 = __p;
      if (__p)
      {
        v12 = v28;
        v13 = __p;
        if (v28 != __p)
        {
          v14 = v28;
          do
          {
            v16 = *(v14 - 3);
            v14 -= 24;
            v15 = v16;
            if (v16)
            {
              *(v12 - 2) = v15;
              operator delete(v15);
            }

            v12 = v14;
          }

          while (v14 != v11);
          v13 = __p;
        }

        v28 = v11;
        operator delete(v13);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      v6 += 112;
    }

    while (v6 != v7);
  }

  else
  {
    do
    {
      sub_10033BCF8(v6, &v25);
      v17 = sub_10033D150(&v25, &v29, a4, *(v6 + 64), a5);
      if (v17 < v9)
      {
        v9 = v17;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v28;
        v20 = __p;
        if (v28 != __p)
        {
          v21 = v28;
          do
          {
            v23 = *(v21 - 3);
            v21 -= 24;
            v22 = v23;
            if (v23)
            {
              *(v19 - 2) = v22;
              operator delete(v22);
            }

            v19 = v21;
          }

          while (v21 != v18);
          v20 = __p;
        }

        v28 = v18;
        operator delete(v20);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      v6 += 112;
    }

    while (v6 != v7);
  }

  return v9;
}

void *sub_10033D804(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void **sub_10033D93C(uint64_t *a1, void **a2)
{
  v2 = a2;
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v13 = *a1;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3) + 1;
    if (v14 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000FC84();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v13) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v14;
    }

    v27 = a1;
    if (v16)
    {
      if (v16 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10000D444();
    }

    __p = 0;
    v24 = 8 * ((a2 - v13) >> 3);
    v25 = v24;
    v26 = 0;
    sub_10033DBFC(&__p);
    v2 = sub_10033DDF0(a1, &__p, v2);
    v19 = v24;
LABEL_28:
    for (i = v25; i != v19; i -= 24)
    {
      v20 = *(i - 24);
      v25 = i - 24;
      if (v20)
      {
        *(i - 16) = v20;
        operator delete(v20);
        goto LABEL_28;
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (a2 == v4)
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    a1[1] = (v4 + 3);
  }

  else
  {
    v5 = v4 - 3;
    v6 = a1[1];
    if (v4 >= 0x18)
    {
      v6 = v4 + 3;
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      *v4 = *v5;
      v4[2] = *(v4 - 1);
      *v5 = 0;
      *(v4 - 2) = 0;
      *(v4 - 1) = 0;
    }

    a1[1] = v6;
    if (v4 != a2 + 3)
    {
      v7 = 0;
      v8 = a2 - v4 + 24;
      do
      {
        v10 = &v4[v7 / 8];
        v12 = &v4[v7 / 8 - 3];
        v11 = *v12;
        if (*v12)
        {
          *(v10 - 2) = v11;
          operator delete(v11);
          *v12 = 0;
          v4[v7 / 8 - 2] = 0;
          v4[v7 / 8 - 1] = 0;
        }

        v9 = v10 - 6;
        *v12 = *(v10 - 3);
        *(v10 - 1) = *(v10 - 4);
        *v9 = 0;
        v9[1] = 0;
        v9[2] = 0;
        v7 -= 24;
      }

      while (v8 != v7);
    }

    v17 = *v2;
    if (*v2)
    {
      v2[1] = v17;
      operator delete(v17);
      *v2 = 0;
      v2[1] = 0;
      v2[2] = 0;
    }

    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
  }

  return v2;
}

void sub_10033DB78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10033DB8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10033DB8C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 24;
        v4 = *(v2 - 24);
        *(a1 + 16) = v2 - 24;
        if (!v4)
        {
          break;
        }

        *(v2 - 16) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 24;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10033DBFC(void *a1)
{
  v2 = a1[2];
  v3 = v2;
  if (v2 == a1[3])
  {
    v4 = a1[1];
    v5 = v4 - *a1;
    if (v4 <= *a1)
    {
      v8 = 0x5555555555555556 * ((v2 - *a1) >> 3);
      if (v2 == *a1)
      {
        v8 = 1;
      }

      if (v8 < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_10000D444();
    }

    v6 = (0xAAAAAAAAAAAAAAABLL * (v5 >> 3) + 1) / -2;
    v3 = v4 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v5 >> 3) + 1) / 2);
    if (v4 != v2)
    {
      do
      {
        v7 = *v3;
        if (*v3)
        {
          *(v3 + 8) = v7;
          operator delete(v7);
          *v3 = 0;
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *v3 = *v4;
        *(v3 + 16) = *(v4 + 16);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v3 += 24;
      }

      while (v4 != v2);
      v4 = a1[1];
    }

    a1[1] = v4 + 24 * v6;
    a1[2] = v3;
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  a1[2] += 24;
}

uint64_t sub_10033DDF0(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v9;
      v8[2] = *(v9 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      v9 += 24;
      v8 += 3;
    }

    while (v9 != v7);
    v10 = a3;
    do
    {
      v11 = *v10;
      if (*v10)
      {
        *(v10 + 8) = v11;
        operator delete(v11);
      }

      v10 += 24;
    }

    while (v10 != v7);
  }

  v12 = *a1;
  v13 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v14 = v13 + v12 - a3;
  if (v12 != a3)
  {
    v15 = v12;
    v16 = (v13 + v12 - a3);
    do
    {
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      *v16 = *v15;
      v16[2] = *(v15 + 16);
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      v15 += 24;
      v16 += 3;
    }

    while (v15 != a3);
    do
    {
      v17 = *v12;
      if (*v12)
      {
        *(v12 + 8) = v17;
        operator delete(v17);
      }

      v12 += 24;
    }

    while (v12 != a3);
  }

  a2[1] = v14;
  v18 = *a1;
  *a1 = v14;
  a1[1] = v18;
  a2[1] = v18;
  v19 = a1[1];
  a1[1] = a2[2];
  a2[2] = v19;
  v20 = a1[2];
  a1[2] = a2[3];
  a2[3] = v20;
  *a2 = a2[1];
  return v6;
}

void sub_10033DF54()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10033DFC4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10033E1B0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10004A800(va);
  operator delete();
}

void sub_10033E350()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10033E3C0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10033E430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10003BFA8(&v49);
  v14 = sub_10003C2E4(&v49, "dimension mismatch between '", 28);
  v15 = *(a2 + 23);
  if (v15 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  if (v15 >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  v18 = sub_10003C2E4(v14, v16, v17);
  sub_10003C2E4(v18, "' (", 3);
  v19 = std::ostream::operator<<();
  v20 = sub_10003C2E4(v19, ") and '", 7);
  v21 = *(a5 + 23);
  if (v21 >= 0)
  {
    v22 = a5;
  }

  else
  {
    v22 = *a5;
  }

  if (v21 >= 0)
  {
    v23 = *(a5 + 23);
  }

  else
  {
    v23 = *(a5 + 8);
  }

  v24 = sub_10003C2E4(v20, v22, v23);
  sub_10003C2E4(v24, "'(", 2);
  v25 = std::ostream::operator<<();
  sub_10003C2E4(v25, ")", 1);
  v26 = sub_10003C2E4(&v49, ".  ", 3);
  v27 = *(a2 + 23);
  if (v27 >= 0)
  {
    v28 = a2;
  }

  else
  {
    v28 = *a2;
  }

  if (v27 >= 0)
  {
    v29 = *(a2 + 23);
  }

  else
  {
    v29 = *(a2 + 8);
  }

  v30 = sub_10003C2E4(v26, v28, v29);
  v31 = sub_10003C2E4(v30, "=", 1);
  v32 = *(a4 + 23);
  if (v32 >= 0)
  {
    v33 = a4;
  }

  else
  {
    v33 = *a4;
  }

  if (v32 >= 0)
  {
    v34 = *(a4 + 23);
  }

  else
  {
    v34 = *(a4 + 8);
  }

  v35 = sub_10003C2E4(v31, v33, v34);
  v36 = sub_10003C2E4(v35, ", ", 2);
  v37 = *(a5 + 23);
  if (v37 >= 0)
  {
    v38 = a5;
  }

  else
  {
    v38 = *a5;
  }

  if (v37 >= 0)
  {
    v39 = *(a5 + 23);
  }

  else
  {
    v39 = *(a5 + 8);
  }

  v40 = sub_10003C2E4(v36, v38, v39);
  v41 = sub_10003C2E4(v40, "=", 1);
  v42 = *(a7 + 23);
  if (v42 >= 0)
  {
    v43 = a7;
  }

  else
  {
    v43 = *a7;
  }

  if (v42 >= 0)
  {
    v44 = *(a7 + 23);
  }

  else
  {
    v44 = *(a7 + 8);
  }

  sub_10003C2E4(v41, v43, v44);
  std::stringbuf::str();
  if (v52 < 0)
  {
    operator delete(v51[7].__locale_);
  }

  std::locale::~locale(v51);
  std::ostream::~ostream();
  std::ios::~ios();
  std::logic_error::logic_error(a1, &v48);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  *a1 = off_10044A700;
  v45 = *a2;
  *(a1 + 32) = *(a2 + 16);
  *(a1 + 16) = v45;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a1 + 40) = a3;
  v46 = *a5;
  *(a1 + 64) = *(a5 + 16);
  *(a1 + 48) = v46;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  *(a1 + 72) = a6;
  return a1;
}

void sub_10033E768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033E7AC(std::logic_error *this)
{
  this->__vftable = off_10044A700;
  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1].__vftable);
  v2 = this;

LABEL_5:
  std::logic_error::~logic_error(v2);
}

void sub_10033E844(std::logic_error *this)
{
  this->__vftable = off_10044A700;
  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1].__vftable);
  v2 = this;

LABEL_5:
  std::logic_error::~logic_error(v2);
}

void sub_10033E8DC(std::logic_error *this)
{
  this->__vftable = off_10044A700;
  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1].__vftable);
LABEL_3:
  std::logic_error::~logic_error(this);

  operator delete();
}

void sub_10033E96C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10033E9DC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10033EAF0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10033EC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033EE64()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10033EED4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10033EF44()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10033F224()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10033F364()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10033F7CC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10033F95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_10033FDD8(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 32), *(a1 + 40));
  if (*(a1 + 40))
  {
    [*(a1 + 32) onQueueRegisterDevices];
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = 0;
  }

  v3 = [*(a1 + 32) isDisabled] ^ 1;

  return [v2 wifiDidChangeIsPowered:v3];
}

void sub_10033FF9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained wifiDidChangeIsPowered:{objc_msgSend(*(a1 + 32), "isDisabled") ^ 1}];
}

void sub_100340088()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003400F8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100340168()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100340190(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v4 + 20 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  if (v4 + 20 >= 0x17)
  {
    operator new();
  }

  memset(&v8, 0, sizeof(v8));
  *(&v8.__r_.__value_.__s + 23) = v4 + 20;
  if (v4)
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    memmove(&v8, a2, v4);
  }

  strcpy(&v8 + v4, "-%%%%-%%%%-%%%%-%%%%");
  v9 = v8;
  if (*(a1 + 23) < 0)
  {
    sub_100003228(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  sub_1000032E4(&__p, &v9);
  sub_10001C92C(&__p, 0, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(v9.__r_.__value_.__l.__data_);
LABEL_16:
  sub_100007D28(v11, 0, 0);
  sub_100018AFC(0, &v9);
  sub_100017430(v11, &v9, 0, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100003228(a3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  }

  else
  {
    v6 = 0;
    *a3 = __p;
  }

  v7 = *(a3 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  *(a3 + 24) = v7 != 0;
  if (v6)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((v12 & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(v11[0]);
      return;
    }
  }

  else if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v9.__r_.__value_.__l.__data_);
  if (v12 < 0)
  {
    goto LABEL_29;
  }
}

void sub_1003403E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a31 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a26);
      goto LABEL_8;
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_100340490(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100003228(a1, *a2, *(a2 + 1));
    *(a1 + 24) = *(a2 + 24);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = *(a2 + 24);
  if (*(a2 + 23) < 0)
  {
LABEL_3:
    operator delete(*a2);
  }

LABEL_4:
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 24) = 0;
  *(a2 + 2) = 0;
  return a1;
}

void sub_100340514(uint64_t a1)
{
  if (*(a1 + 24) != 1)
  {
    return;
  }

  if (qword_10045B050 == -1)
  {
    v2 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
LABEL_4:
      v3 = a1;
      if (*(a1 + 23) < 0)
      {
        v3 = *a1;
      }

      v4 = 136315138;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Removing temporary path %s", &v4, 0xCu);
    }
  }

  else
  {
    sub_10038793C();
    v2 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }
  }

  sub_100019F68(a1, 0);
  *(a1 + 24) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_100340628(uint64_t a1)
{
  sub_100340514(a1);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003406A4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100340714()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100340784(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  sub_100340E38(&v23, *(a1[3] + 8));
  v4 = std::string::insert(&v23, 0, "Listener ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v24, " for event ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  sub_100340E38(v21, *(*a1 + 8));
  if ((v22 & 0x80u) == 0)
  {
    v8 = v21;
  }

  else
  {
    v8 = v21[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v9 = v22;
  }

  else
  {
    v9 = v21[1];
  }

  v10 = std::string::append(&v25, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v26, " (0x");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000D3958(a1 + 2, &__p) & 1) == 0)
  {
    v19 = std::bad_cast::bad_cast(&v29);
    v29.__vftable = &off_100434090;
    sub_100049F88(v19);
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

  v16 = std::string::append(&v27, p_p, size);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v28, ")");
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v27.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v26.__r_.__value_.__l.__data_);
  if ((v22 & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(v21[0]);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_20:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(v25.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_21:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_30:
    operator delete(v23.__r_.__value_.__l.__data_);
    return;
  }

LABEL_29:
  operator delete(v24.__r_.__value_.__l.__data_);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }
}

void sub_100340A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v47 - 57) < 0)
  {
    operator delete(*(v47 - 80));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v47 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v47 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*(v47 - 112));
  if ((a47 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a16);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_9:
    _Unwind_Resume(exception_object);
  }

LABEL_17:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_100340B74(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  sub_100340F6C();
}

void sub_100340BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100340BEC(uint64_t a1)
{
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_19;
  }

  v3 = *(a1 + 8);
  if (!v3 || *(v3 + 8))
  {
    goto LABEL_19;
  }

  v4 = v2[1];
  if (!v4)
  {
LABEL_9:
    v7 = 0;
    v9 = v2 + 2;
    if (qword_10045B050 != -1)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  v5 = std::__shared_weak_count::lock(v4);
  v6 = *a1;
  if (!v5)
  {
    v2 = *a1;
    goto LABEL_9;
  }

  v7 = v5;
  v8 = *v2;
  if (!v8)
  {
    v9 = v6 + 2;
    if (qword_10045B050 != -1)
    {
LABEL_24:
      sub_100387950();
      v10 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

LABEL_10:
    v10 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

LABEL_11:
    sub_100340784(v9, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v16 = p_p;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "WARNING: Registered listener handle %s still active but event bus is gone", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_16:
    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  std::mutex::lock((v8 + 48));
  sub_1000E7D3C(v8, v6[2], v6[4], v6[5]);
  std::mutex::unlock((v8 + 48));
LABEL_17:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_19:
  v12 = *(a1 + 8);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  return a1;
}

void sub_100340E08(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    std::mutex::unlock((v2 + 48));
    sub_10000D388(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_100340E38(uint64_t a1, uint64_t a2)
{
  v4 = strlen((a2 & 0x7FFFFFFFFFFFFFFFLL));
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
    memmove(&__dst, (a2 & 0x7FFFFFFFFFFFFFFFLL), v4);
  }

  *(&__dst + v5) = 0;
  sub_1000DF33C(&__dst, &v7);
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  return result;
}

void sub_100340F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100341048(_Unwind_Exception *a1)
{
  shared_owners = v1[1].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_weak(shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_10034108C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044A7C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003410E0(void *a1)
{
  v2 = a1[10];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_10034119C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10034120C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10034127C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

const char *sub_1003412A4(uint64_t a1)
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
  if (v3 > 7)
  {
    return "TTransportException: (Invalid exception type)";
  }

  else
  {
    return off_10044A840[v3];
  }
}

void sub_1003412F8(std::exception *this)
{
  this->__vftable = &off_1004341F8;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  operator delete();
}

void sub_10034136C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1003417FC(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_100341788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10034179C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003417B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003417FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045D9B8 & 1) == 0)
  {
    byte_10045D9B8 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/indoor_availability.pb.cc", a4);
    sub_10013E214(v4, v5, v6, v7);
    sub_1001404F8(v8, v9, v10, v11);
    sub_1002E2D40(v12, v13, v14, v15);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n&protobuf/gen/indoor_availability.proto\x12\x12proto.availability\x1A'protobuf/gen/locationd_parameters.proto\x1A\x1Dprotobuf/gen/parameters.proto\x1A\x18protobuf/gen/venue.protoO\n\rLatLonPolygon\x12\x14\n\blatitude\x18\x01 \x03(\x01B\x02\x10\x01\x12\x15\n\tlongitude\x18\x02 \x03(\x01B\x02\x10\x01\x12\x11\n\ttolerance\x18\x03 \x02(\x01A\n\x19TileDownloadConfiguration\x12$\n\x1CfloorIdxsForWifiDownloadOnly\x18\x01 \x03(\r\xC2\x02\n\vVenueBounds\x12\v\n\x03ids\x18\x01 \x03(\t\x124\n\texteriors\x18\x03 \x03(\v2!.proto.availability.LatLonPolygon\x12P\n\x19tileDownloadConfiguration\x18\x05 \x01(\v2-.proto.availability.TileDownloadConfiguration\x12-\n\acontext\x18\x06 \x01(\x0E2\x1C.proto.venue.LocationContext\x12>\n\x13DEPRECATED_exterior\x18\x02 \x01(\v2!.proto.availability.LatLonPolygon\x12/\n'DEPRECATED_floorIdxsForWifiDownloadOnly\x18\x04 \x03(\r\x99\x06\n\x10AvailabilityTile\x12/\n\x06venues\x18\x01 \x03(\v2\x1F.proto.availability.VenueBounds\x12=\n\x12parameterOverrides\x18\x10 \x01(\v2!.proto.params.LocalizerParameters\x122\n$availabilityZScoreConfidenceInterval\x18\x11 \x01(\x01:\x041.96\x12#\n\x16indoorPrefetchRadiusKM\x18\x12 \x01(\r:\x03200\x12%\n\x18regionalPrefetchRadiusKM\x18\x16 \x01(\r:\x03200\x12(\n\x1BindoorPrefetchMaxFloorCount\x18\x13 \x01(\r:\x03200\x12*\n\x1DregionalPrefetchMaxFloorCount\x18\x17 \x01(\r:\x03200\x12.\n\x1BindoorPrefetchMaxTotalBytes\x18\x19 \x01(\r:\t200000000\x120\n\x1DregionalPrefetchMaxTotalBytes\x18\x1A \x01(\r:\t100000000\x121\n%indoorLocationOfInterestMergeRadiusKM\x18\x14 \x01(\r:\x0250\x123\n'regionalLocationOfInterestMergeRadiusKM\x18\x18 \x01(\r:\x0250\x120\n%preferPredictionWithinNActivityCycles\x18\x15 \x01(\r:\x011\x121\n&indoorNumberOfDaysBeforeTileRedownload\x18\x1B \x01(\x02:\x017\x123\n(regionalNumberOfDaysBeforeTileRedownload\x18\x1C \x01(\x02:\x017\x12[\n motionActivityDebounceParameters\x18\x1D \x01(\v21.proto.locationd.MotionActivityDebounceParameters\xC8\x02\n\x18AvailabilityTileMetadata\x12\f\n\x04uuid\x18\x01 \x01(\t\x12\x15\n\rtimeGenerated\x18\x02 \x01(\x01\x12\x10\n\bnumTiles\x18\x03 \x01(\r\x12\x11\n\tnumVenues\x18\x04 \x01(\r\x12\x11\n\tsizeBytes\x18\x05 \x01(\r\x12\x1B\n\x13compressedSizeBytes\x18\x06 \x01(\r\x12\x13\n\vgeneratedBy\x18\a \x01(\t\x12\x17\n\x0FgeneratedReason\x18\b \x01(\t\x12\x1B\n\x13numOverriddenParams\x18\t \x01(\r\x12\f\n\x04sha1\x18\n \x01(\f\x12\x11\n\tnumGroups\x18\v \x01(\r\x12F\n\btileType\x18\f \x01(\x0E2(.proto.availability.AvailabilityTileType:\nIndoorOnlym\n\x1BGroupedAvailabilityLocation\x12\x12\n\nlocationId\x18\x01 \x01(\t\x12\x0F\n\agroupId\x18\x02 \x01(\t\x12\x0F\n\avenueId\x18\x03 \x01(\t\x12\v\n\x03lat\x18\x04 \x01(\x01\x12\v\n\x03lng\x18\x05 \x01(\x01\xB8\x01\n\x17AvailabilityTileDetails\x12\f\n\x04uuid\x18\x01 \x01(\t\x12\x11\n\ttileUuids\x18\x02 \x03(\t\x122\n\x04tile\x18\x03 \x01(\v2$.proto.availability.AvailabilityTile\x12H\n\x0FgroupingDetails\x18\x04 \x03(\v2/.proto.availability.GroupedAvailabilityLocation*>\n\x14AvailabilityTileType\x12\x0E\n\nIndoorOnly\x10\x01\x12\x16\n\x12IndoorPlusRegional\x10\x02B\x1F\n\x1Dcom.apple.indoor.availability", 0x869, v16);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_100341C70()
{
  if (qword_100471CF0)
  {
    (*(*qword_100471CF0 + 8))(qword_100471CF0);
  }

  if (qword_10045D9C8)
  {
    (*(*qword_10045D9C8 + 8))(qword_10045D9C8);
  }

  if (qword_100471CF8)
  {
    (*(*qword_100471CF8 + 8))(qword_100471CF8);
  }

  if (qword_10045D9D8)
  {
    (*(*qword_10045D9D8 + 8))(qword_10045D9D8);
  }

  if (qword_100471D00)
  {
    (*(*qword_100471D00 + 8))(qword_100471D00);
  }

  if (qword_10045D9E8)
  {
    (*(*qword_10045D9E8 + 8))(qword_10045D9E8);
  }

  if (qword_100471D08)
  {
    (*(*qword_100471D08 + 8))(qword_100471D08);
  }

  if (qword_10045D9F8)
  {
    (*(*qword_10045D9F8 + 8))(qword_10045D9F8);
  }

  if (qword_100471D10)
  {
    (*(*qword_100471D10 + 8))(qword_100471D10);
  }

  if (qword_10045DA08)
  {
    (*(*qword_10045DA08 + 8))(qword_10045DA08);
  }

  if (qword_100471D18)
  {
    (*(*qword_100471D18 + 8))(qword_100471D18);
  }

  if (qword_10045DA18)
  {
    (*(*qword_10045DA18 + 8))(qword_10045DA18);
  }

  if (qword_100471D20)
  {
    (*(*qword_100471D20 + 8))(qword_100471D20);
  }

  result = qword_10045DA28;
  if (qword_10045DA28)
  {
    v1 = *(*qword_10045DA28 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_100341F38()
{
  v0 = qword_10045DA38;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v8[1] = sub_10034136C;
    v9 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v8);
  }

  if (!qword_100471CF0)
  {
    (sub_1003417FC)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471CF8)
  {
    sub_1003417FC(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471D00)
  {
    sub_1003417FC(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471D08)
  {
    sub_1003417FC(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471D10)
  {
    sub_1003417FC(v4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471D18)
  {
    sub_1003417FC(v5);
  }

  v6 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471D20)
  {
    sub_1003417FC(v6);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1003420D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1003420E4(void *a1)
{
  *a1 = off_10044A890;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[8] = 0;
  a1[9] = 0;
  return a1;
}

void *sub_100342148(void *a1)
{
  *a1 = off_10044A940;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_1003421A8(uint64_t a1)
{
  *a1 = off_10044A9F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  return a1;
}

uint64_t sub_100342230(uint64_t a1)
{
  *a1 = off_10044AAA0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x3FFF5C28F5C28F5CLL;
  *&v2 = 0xC8000000C8;
  *(&v2 + 1) = 0xC8000000C8;
  *(a1 + 56) = v2;
  *(a1 + 72) = xmmword_1003DEC90;
  *(a1 + 88) = 0x40E0000000000001;
  *(a1 + 96) = 0;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = 1088421888;
  return a1;
}

uint64_t sub_1003422D8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
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

  v10 = *(a2 + 48);
  if (v10)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 52);
    v13 = v11 + v10;
    v14 = *(a1 + 40);
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

      *(a1 + 52) = v15;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 8 * v11), *(a2 + 40), 8 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  if ((*(a2 + 76) & 4) != 0)
  {
    v16 = *(a2 + 64);
    *(a1 + 76) |= 4u;
    *(a1 + 64) = v16;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1003424D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003424EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100342500(void *a1)
{
  *a1 = off_10044A890;
  if (a1[5])
  {
    operator delete[]();
  }

  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100342588(void *a1)
{
  *a1 = off_10044A890;
  if (a1[5])
  {
    operator delete[]();
  }

  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1003426BC(uint64_t a1)
{
  if ((*(a1 + 76) & 0x3FC) != 0)
  {
    *(a1 + 64) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 10) = 0;
  *(result + 17) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1003426E8(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 == 3)
      {
        if (v9 == 1)
        {
          goto LABEL_62;
        }

        goto LABEL_19;
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_19;
      }

      if (v9 == 1)
      {
        result = sub_10009D754(1, 0xAu, this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        if (v16 < v15)
        {
LABEL_41:
          if (*v16 == 18)
          {
            v13 = v16 + 1;
            *(this + 1) = v13;
            v31 = 0;
            if (v13 >= v15)
            {
              goto LABEL_45;
            }

LABEL_43:
            v23 = *v13;
            if ((v23 & 0x80000000) != 0)
            {
LABEL_45:
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
              {
                return 0;
              }

              v23 = v31;
              goto LABEL_47;
            }

            v31 = *v13;
            *(this + 1) = v13 + 1;
LABEL_47:
            v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v23);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
            {
              v32 = 0;
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v32))
              {
                return 0;
              }

              v26 = v32;
              v27 = *(a1 + 48);
              v28 = *(a1 + 40);
              if (v27 == *(a1 + 52))
              {
                if (2 * v27 <= v27 + 1)
                {
                  v29 = v27 + 1;
                }

                else
                {
                  v29 = 2 * v27;
                }

                if (v29 <= 4)
                {
                  v29 = 4;
                }

                *(a1 + 52) = v29;
                operator new[]();
              }

              v25 = *(a1 + 40);
              *(a1 + 48) = v27 + 1;
              *(v25 + 8 * v27) = v26;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
LABEL_59:
            v30 = *(this + 1);
            if (v30 < *(this + 2) && *v30 == 25)
            {
              *(this + 1) = v30 + 1;
LABEL_62:
              v32 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v32) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 64) = v32;
              *(a1 + 76) |= 4u;
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

      else
      {
        if (v9 != 2)
        {
          goto LABEL_19;
        }

        v31 = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
          {
            return 0;
          }

          v11 = v31;
        }

        else
        {
          v31 = *v10;
          *(this + 1) = v10 + 1;
        }

        v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v11);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
        {
          v32 = 0;
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v32))
          {
            return 0;
          }

          v19 = v32;
          v20 = *(a1 + 24);
          v21 = *(a1 + 16);
          if (v20 == *(a1 + 28))
          {
            if (2 * v20 <= v20 + 1)
            {
              v22 = v20 + 1;
            }

            else
            {
              v22 = 2 * v20;
            }

            if (v22 <= 4)
            {
              v22 = 4;
            }

            *(a1 + 28) = v22;
            operator new[]();
          }

          v18 = *(a1 + 16);
          *(a1 + 24) = v20 + 1;
          *(v18 + 8 * v20) = v19;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v17);
        v16 = *(this + 1);
        v15 = *(this + 2);
        if (v16 < v15)
        {
          goto LABEL_41;
        }
      }
    }

    if (v9 == 1)
    {
      result = sub_10009D754(1, 0x12u, this, (a1 + 40));
      if (!result)
      {
        return result;
      }

      goto LABEL_59;
    }

    if (v9 == 2)
    {
      v13 = *(this + 1);
      v12 = *(this + 2);
      v31 = 0;
      if (v13 >= v12)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

LABEL_19:
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

uint64_t sub_100342AD4(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, 0xAu);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, *(v4 + 32));
    if (*(v4 + 24) >= 1)
    {
      v5 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a2, *(*(v4 + 16) + 8 * v5++));
      }

      while (v5 < *(v4 + 24));
    }
  }

  if (*(v4 + 48) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, 0x12u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, *(v4 + 56));
    if (*(v4 + 48) >= 1)
    {
      v6 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a2, *(*(v4 + 40) + 8 * v6++));
      }

      while (v6 < *(v4 + 48));
    }
  }

  if ((*(v4 + 76) & 4) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 64), a3);
  }

  v9 = *(v4 + 8);
  v8 = (v4 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

_BYTE *sub_100342BFC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    *a2 = 10;
    v4 = *(this + 8);
    if (v4 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
      if (*(this + 6) < 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      a2[1] = v4;
      a2 += 2;
      if (*(this + 6) < 1)
      {
        goto LABEL_8;
      }
    }

    v5 = 0;
    do
    {
      *a2 = *(*(this + 2) + 8 * v5);
      a2 += 8;
      ++v5;
    }

    while (v5 < *(this + 6));
  }

LABEL_8:
  if (*(this + 12) <= 0)
  {
    goto LABEL_15;
  }

  *a2 = 18;
  v6 = *(this + 14);
  if (v6 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    if (*(this + 12) < 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
    if (*(this + 12) < 1)
    {
      goto LABEL_15;
    }
  }

  v7 = 0;
  do
  {
    *a2 = *(*(this + 5) + 8 * v7);
    a2 += 8;
    ++v7;
  }

  while (v7 < *(this + 12));
LABEL_15:
  if ((*(this + 76) & 4) != 0)
  {
    v8 = *(this + 8);
    *a2 = 25;
    *(a2 + 1) = v8;
    a2 += 9;
  }

  v11 = *(this + 1);
  v10 = (this + 8);
  v9 = v11;
  if (!v11 || *v9 == v9[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, a2, a3);
}

uint64_t sub_100342D90(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = (*(a1 + 76) << 29 >> 31) & 9;
  v4 = *(a1 + 24);
  v5 = 8 * v4;
  if (v4 >= 1)
  {
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v4), a2) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
  }

  *(a1 + 32) = v5;
  v7 = v3 + v5;
  v8 = *(a1 + 48);
  v9 = 8 * v8;
  if (v8 >= 1)
  {
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v8), a2) + 1;
    }

    else
    {
      v10 = 2;
    }

    v7 += v10;
  }

  v11 = *(a1 + 8);
  *(a1 + 56) = v9;
  v12 = v7 + v9;
  if (v11 && *v11 != v11[1])
  {
    v12 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v12;
  }

  *(a1 + 72) = v12;
  return v12;
}

uint64_t sub_100342E60(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1003422D8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100342F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100342F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100342F68(uint64_t result, uint64_t a2)
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

uint64_t sub_100343000()
{
  v0 = qword_10045DA38;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10034136C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D9C0;
}

void sub_100343090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003430A4(uint64_t a1, uint64_t a2)
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

void sub_1003431D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003431EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_100343200(void *a1, uint64_t a2)
{
  *a1 = off_10044A940;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_1003430A4(a1, a2);
  return a1;
}

void sub_100343270(_Unwind_Exception *a1)
{
  if (*v3)
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_1003432BC(void *a1)
{
  *a1 = off_10044A940;
  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100343330(void *a1)
{
  *a1 = off_10044A940;
  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10034344C(uint64_t a1)
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

uint64_t sub_100343464(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if ((TagFallback & 7) == 0)
      {
        v11 = *(this + 1);
        v10 = *(this + 2);
        v24 = 0;
        if (v11 >= v10)
        {
          goto LABEL_17;
        }

LABEL_15:
        if ((*v11 & 0x80000000) == 0)
        {
          v24 = *v11;
          *(this + 1) = v11 + 1;
          goto LABEL_18;
        }

LABEL_17:
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
        {
LABEL_18:
          v12 = *(a1 + 24);
          v13 = *(a1 + 16);
          if (v12 == *(a1 + 28))
          {
            if (2 * v12 <= v12 + 1)
            {
              v14 = v12 + 1;
            }

            else
            {
              v14 = 2 * v12;
            }

            if (v14 <= 4)
            {
              v14 = 4;
            }

            *(a1 + 28) = v14;
            operator new[]();
          }

          v15 = v24;
          *(a1 + 24) = v12 + 1;
          *(v13 + 4 * v12) = v15;
          v16 = *(a1 + 28) - *(a1 + 24);
          if (v16 >= 1)
          {
            for (i = v16 + 1; i > 1; --i)
            {
              v19 = *(this + 1);
              v20 = *(this + 2);
              if (v19 >= v20 || *v19 != 8)
              {
                break;
              }

              *(this + 1) = v19 + 1;
              if ((v19 + 1) >= v20 || (v21 = v19[1], (v21 & 0x80000000) != 0))
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
                {
                  return 0;
                }

                v21 = v24;
                v13 = *(a1 + 16);
              }

              else
              {
                v24 = v19[1];
                *(this + 1) = v19 + 2;
              }

              v18 = *(a1 + 24);
              *(a1 + 24) = v18 + 1;
              *(v13 + 4 * v18) = v21;
            }
          }

LABEL_35:
          v23 = *(this + 1);
          v22 = *(this + 2);
          if (v23 >= v22 || *v23 != 8)
          {
            if (v23 == v22 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }

            goto LABEL_1;
          }

          v11 = v23 + 1;
          *(this + 1) = v11;
          v24 = 0;
          if (v11 < v22)
          {
            goto LABEL_15;
          }
        }

        return 0;
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

  result = sub_100343714(this, (a1 + 16));
  if (result)
  {
    goto LABEL_35;
  }

  return result;
}

uint64_t sub_100343714(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v15 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
    if (!result)
    {
      return result;
    }

    v5 = v15;
  }

  else
  {
    v15 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v14 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v14 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(a2 + 2);
      v12 = *a2;
      if (v11 == *(a2 + 3))
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

        *(a2 + 3) = v13;
        operator new[]();
      }

      v8 = *a2;
      v9 = v14;
      *(a2 + 2) = v11 + 1;
      *(v8 + 4 * v11) = v9;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t sub_100343898(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 24) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(*(v5 + 16) + 4 * v6++), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100343934(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v6 = *(*(this + 2) + 4 * v5);
        *a2 = 8;
        if (v6 > 0x7F)
        {
          break;
        }

        *(a2 + 1) = v6;
        a2 = (a2 + 2);
        if (++v5 >= *(this + 6))
        {
          goto LABEL_6;
        }
      }

      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
      ++v5;
    }

    while (v5 < *(this + 6));
  }

LABEL_6:
  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9 || *v7 == v7[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, a2, a3);
}

uint64_t sub_100343A00(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 < 1)
  {
    v8 = v3;
    v9 = (a1 + 8);
    v10 = *(a1 + 8);
    if (!v10)
    {
LABEL_7:
      *(a1 + 32) = v8;
      return v8;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      while (1)
      {
        v7 = *(*(a1 + 16) + 4 * v4);
        if (v7 < 0x80)
        {
          break;
        }

        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
        v3 = *(a1 + 24);
        v5 += v6;
        if (++v4 >= v3)
        {
          goto LABEL_6;
        }
      }

      ++v5;
      ++v4;
    }

    while (v4 < v3);
LABEL_6:
    v8 = (v3 + v5);
    v9 = (a1 + 8);
    v10 = *(a1 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  if (*v10 == v10[1])
  {
    goto LABEL_7;
  }

  v12 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v9, a2) + v8;
  *(a1 + 32) = v12;
  return v12;
}

uint64_t sub_100343AD4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1003430A4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100343BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100343BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100343BDC(uint64_t result, uint64_t a2)
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

uint64_t sub_100343C70()
{
  v0 = qword_10045DA38;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10034136C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D9D0;
}

void sub_100343D00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100343D14(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 12);
      }
    }
  }

  if (*a1)
  {
    operator delete[]();
  }

  return a1;
}

uint64_t sub_100343DAC(uint64_t a1, uint64_t a2)
{
  *a1 = off_10044A9F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  sub_100343EB0(a1, a2);
  return a1;
}

void sub_100343E54(_Unwind_Exception *a1)
{
  if (*v5)
  {
    operator delete[]();
  }

  sub_100343D14(v4);
  sub_1000918BC(v3);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100343EB0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v31);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), *(a2 + 24) + *(a1 + 24));
  if (*(a2 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v9 = *(*(a2 + 16) + 8 * v5);
        v10 = *(a1 + 28);
        v11 = *(a1 + 24);
        if (v11 >= v10)
        {
          break;
        }

        v12 = *(a1 + 16);
        *(a1 + 24) = v11 + 1;
        v4 = std::string::operator=(*(v12 + 8 * v11), v9);
        if (++v5 >= *(a2 + 24))
        {
          goto LABEL_11;
        }
      }

      if (v10 == *(a1 + 32))
      {
        v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v10 + 1);
        v10 = *(a1 + 28);
      }

      *(a1 + 28) = v10 + 1;
      v6 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v4);
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      *(a1 + 24) = v8 + 1;
      *(v7 + 8 * v8) = v6;
      v4 = std::string::operator=(v6, v9);
      ++v5;
    }

    while (v5 < *(a2 + 24));
  }

LABEL_11:
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), *(a2 + 48) + *(a1 + 48));
  if (*(a2 + 48) >= 1)
  {
    v13 = 0;
    do
    {
      v15 = *(*(a2 + 40) + 8 * v13);
      v16 = *(a1 + 52);
      v17 = *(a1 + 48);
      if (v17 >= v16)
      {
        if (v16 == *(a1 + 56))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), v16 + 1);
          v16 = *(a1 + 52);
        }

        *(a1 + 52) = v16 + 1;
        operator new();
      }

      v14 = *(a1 + 40);
      *(a1 + 48) = v17 + 1;
      sub_1003422D8(*(v14 + 8 * v17), v15);
      ++v13;
    }

    while (v13 < *(a2 + 48));
  }

  v18 = *(a2 + 88);
  if (v18)
  {
    v19 = *(a1 + 88);
    v20 = *(a1 + 92);
    v21 = v19 + v18;
    v22 = *(a1 + 80);
    if (v20 < v21)
    {
      v23 = 2 * v20;
      if (2 * v20 <= v21)
      {
        v23 = v21;
      }

      if (v23 <= 4)
      {
        v23 = 4;
      }

      *(a1 + 92) = v23;
      operator new[]();
    }

    memcpy((*(a1 + 80) + 4 * v19), *(a2 + 80), 4 * *(a2 + 88));
    *(a1 + 88) += *(a2 + 88);
  }

  v24 = *(a2 + 104);
  if ((v24 & 0x3FC) != 0)
  {
    if ((v24 & 4) != 0)
    {
      *(a1 + 104) |= 4u;
      v25 = *(a1 + 64);
      if (!v25)
      {
        operator new();
      }

      v26 = *(a2 + 64);
      if (!v26)
      {
        v26 = *(qword_100471D00 + 64);
      }

      sub_1003430A4(v25, v26);
      v24 = *(a2 + 104);
    }

    if ((v24 & 8) != 0)
    {
      v27 = *(a2 + 96);
      *(a1 + 104) |= 8u;
      *(a1 + 96) = v27;
      v24 = *(a2 + 104);
    }

    if ((v24 & 0x10) != 0)
    {
      *(a1 + 104) |= 0x10u;
      v28 = *(a1 + 72);
      if (!v28)
      {
        operator new();
      }

      v29 = *(a2 + 72);
      if (!v29)
      {
        v29 = *(qword_100471D00 + 72);
      }

      sub_1003422D8(v28, v29);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100344320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100344334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100344368(uint64_t a1)
{
  *a1 = off_10044A9F0;
  if (qword_100471D00 != a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 72);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  if (*(a1 + 80))
  {
    operator delete[]();
  }

  v4 = *(a1 + 52);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(a1 + 40) + 8 * i);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v4 = *(a1 + 52);
      }
    }
  }

  if (*(a1 + 40))
  {
    operator delete[]();
  }

  if (*(a1 + 28) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(a1 + 16) + 8 * v7);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v7;
    }

    while (v7 < *(a1 + 28));
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100344508(uint64_t a1)
{
  sub_100344368(a1);

  operator delete();
}

uint64_t sub_1003445FC(uint64_t this)
{
  v1 = this;
  v2 = *(this + 104);
  if ((v2 & 0x3FC) != 0)
  {
    if ((v2 & 4) != 0)
    {
      this = *(this + 64);
      if (this)
      {
        v3 = *(this + 8);
        this += 8;
        *(this + 16) = 0;
        *(this + 28) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 96) = 1;
    if ((*(v1 + 104) & 0x10) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        if ((*(this + 76) & 0x3FC) != 0)
        {
          *(this + 64) = 0;
        }

        v4 = *(this + 8);
        this += 8;
        *(this + 16) = 0;
        *(this + 40) = 0;
        *(this + 68) = 0;
        if (v4)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  if (*(v1 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v6 = *(*(v1 + 16) + 8 * v5);
        if (*(v6 + 23) < 0)
        {
          break;
        }

        *v6 = 0;
        *(v6 + 23) = 0;
        if (++v5 >= *(v1 + 24))
        {
          goto LABEL_17;
        }
      }

      **v6 = 0;
      *(v6 + 8) = 0;
      ++v5;
    }

    while (v5 < *(v1 + 24));
  }

LABEL_17:
  *(v1 + 24) = 0;
  if (*(v1 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(v1 + 40) + 8 * v7);
      this = (*(*v8 + 32))(v8);
      ++v7;
    }

    while (v7 < *(v1 + 48));
  }

  v10 = *(v1 + 8);
  v9 = (v1 + 8);
  *(v9 + 10) = 0;
  *(v9 + 20) = 0;
  *(v9 + 24) = 0;
  if (v10)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v9);
  }

  return this;
}

uint64_t sub_100344764(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
  while (1)
  {
    while (1)
    {
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
          if (v7 >> 3 > 3)
          {
            break;
          }

          if (v8 == 1)
          {
            if (v9 != 2)
            {
              goto LABEL_44;
            }

            while (1)
            {
              v16 = *(v5 + 28);
              v17 = *(v5 + 24);
              if (v17 >= v16)
              {
                if (v16 == *(v5 + 32))
                {
                  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 16), v16 + 1);
                  v16 = *(v5 + 28);
                }

                *(v5 + 28) = v16 + 1;
                v20 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
                v21 = *(v5 + 16);
                v22 = *(v5 + 24);
                *(v5 + 24) = v22 + 1;
                *(v21 + 8 * v22) = v20;
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }
              }

              else
              {
                v18 = *(v5 + 16);
                *(v5 + 24) = v17 + 1;
                v19 = *(v18 + 8 * v17);
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }
              }

              v23 = *(this + 1);
              if (v23 >= *(this + 2))
              {
                break;
              }

              v24 = *v23;
              if (v24 != 10)
              {
                if (v24 != 18)
                {
                  goto LABEL_2;
                }

                *(this + 1) = v23 + 1;
                goto LABEL_38;
              }

              *(this + 1) = v23 + 1;
            }
          }

          else
          {
            if (v8 != 2)
            {
              if (v8 == 3 && v9 == 2)
              {
                v10 = *(v5 + 52);
                v11 = *(v5 + 48);
                if (v11 >= v10)
                {
                  goto LABEL_57;
                }

                goto LABEL_13;
              }

              goto LABEL_44;
            }

            if (v9 != 2)
            {
              goto LABEL_44;
            }

LABEL_38:
            *(v5 + 104) |= 0x10u;
            v25 = *(v5 + 72);
            if (!v25)
            {
              operator new();
            }

            v69 = 0;
            v26 = *(this + 1);
            if (v26 >= *(this + 2) || *v26 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69))
              {
                return 0;
              }
            }

            else
            {
              v69 = *v26;
              *(this + 1) = v26 + 1;
            }

            v29 = *(this + 14);
            v30 = *(this + 15);
            *(this + 14) = v29 + 1;
            if (v29 >= v30)
            {
              return 0;
            }

            v31 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69);
            if (!sub_1003426E8(v25, this, v32, v33) || *(this + 36) != 1)
            {
              return 0;
            }

            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v31);
            v34 = *(this + 14);
            v35 = __OFSUB__(v34, 1);
            v36 = v34 - 1;
            if (v36 < 0 == v35)
            {
              *(this + 14) = v36;
            }

            v37 = *(this + 1);
            if (v37 < *(this + 2) && *v37 == 26)
            {
              while (1)
              {
                *(this + 1) = v37 + 1;
                v10 = *(v5 + 52);
                v11 = *(v5 + 48);
                if (v11 >= v10)
                {
LABEL_57:
                  if (v10 == *(v5 + 56))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 40), v10 + 1);
                    v10 = *(v5 + 52);
                  }

                  *(v5 + 52) = v10 + 1;
                  operator new();
                }

LABEL_13:
                v12 = *(v5 + 40);
                *(v5 + 48) = v11 + 1;
                v13 = *(v12 + 8 * v11);
                v69 = 0;
                v38 = *(this + 1);
                if (v38 >= *(this + 2) || *v38 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69))
                  {
                    return 0;
                  }
                }

                else
                {
                  v69 = *v38;
                  *(this + 1) = v38 + 1;
                }

                v39 = *(this + 14);
                v40 = *(this + 15);
                *(this + 14) = v39 + 1;
                if (v39 >= v40)
                {
                  return 0;
                }

                v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69);
                if (!sub_1003426E8(v13, this, v42, v43) || *(this + 36) != 1)
                {
                  return 0;
                }

                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v41);
                v44 = *(this + 14);
                v35 = __OFSUB__(v44, 1);
                v45 = v44 - 1;
                if (v45 < 0 == v35)
                {
                  *(this + 14) = v45;
                }

                v37 = *(this + 1);
                v27 = *(this + 2);
                if (v37 >= v27)
                {
                  break;
                }

                v46 = *v37;
                if (v46 != 26)
                {
                  goto LABEL_71;
                }
              }
            }
          }
        }

        if (v8 == 4)
        {
          break;
        }

        if (v8 == 5)
        {
          if (v9 != 2)
          {
            goto LABEL_44;
          }

LABEL_97:
          *(v5 + 104) |= 4u;
          v57 = *(v5 + 64);
          if (!v57)
          {
            operator new();
          }

          v69 = 0;
          v58 = *(this + 1);
          if (v58 >= *(this + 2) || *v58 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69))
            {
              return 0;
            }
          }

          else
          {
            v69 = *v58;
            *(this + 1) = v58 + 1;
          }

          v59 = *(this + 14);
          v60 = *(this + 15);
          *(this + 14) = v59 + 1;
          if (v59 >= v60)
          {
            return 0;
          }

          v61 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69);
          if (!sub_100343464(v57, this, v62, v63) || *(this + 36) != 1)
          {
            return 0;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v61);
          v64 = *(this + 14);
          v35 = __OFSUB__(v64, 1);
          v65 = v64 - 1;
          if (v65 < 0 == v35)
          {
            *(this + 14) = v65;
          }

          v67 = *(this + 1);
          v66 = *(this + 2);
          if (v67 < v66 && *v67 == 48)
          {
            v15 = v67 + 1;
            *(this + 1) = v15;
            v69 = 0;
            if (v15 >= v66)
            {
              goto LABEL_115;
            }

LABEL_111:
            v68 = *v15;
            if (v68 < 0)
            {
              goto LABEL_115;
            }

            *(this + 1) = v15 + 1;
            result = sub_1002E3580(v68);
            if (result)
            {
              goto LABEL_113;
            }

LABEL_117:
            result = wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((v5 + 8), 6, v68);
            if (*(this + 1) == *(this + 2))
            {
              goto LABEL_118;
            }
          }
        }

        else
        {
          if (v8 != 6 || (v7 & 7) != 0)
          {
            goto LABEL_44;
          }

          v15 = *(this + 1);
          v14 = *(this + 2);
          v69 = 0;
          if (v15 < v14)
          {
            goto LABEL_111;
          }

LABEL_115:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
          if (!result)
          {
            return result;
          }

          v68 = v69;
          result = sub_1002E3580(v69);
          if (!result)
          {
            goto LABEL_117;
          }

LABEL_113:
          *(v5 + 104) |= 8u;
          *(v5 + 96) = v68;
          if (*(this + 1) == *(this + 2))
          {
LABEL_118:
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

      if ((v7 & 7) != 0)
      {
        break;
      }

      v28 = *(this + 1);
      v27 = *(this + 2);
      while (1)
      {
        v69 = 0;
        if (v28 >= v27 || *v28 < 0)
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
          if (!result)
          {
            return 0;
          }
        }

        else
        {
          v69 = *v28;
          *(this + 1) = v28 + 1;
        }

        v47 = *(v5 + 88);
        v48 = *(v5 + 80);
        if (v47 == *(v5 + 92))
        {
          if (2 * v47 <= v47 + 1)
          {
            v49 = v47 + 1;
          }

          else
          {
            v49 = 2 * v47;
          }

          if (v49 <= 4)
          {
            v49 = 4;
          }

          *(v5 + 92) = v49;
          operator new[]();
        }

        v50 = v69;
        *(v5 + 88) = v47 + 1;
        *(v48 + 4 * v47) = v50;
        v51 = *(v5 + 92) - *(v5 + 88);
        if (v51 >= 1)
        {
          for (i = v51 + 1; i > 1; --i)
          {
            v54 = *(this + 1);
            v55 = *(this + 2);
            if (v54 >= v55 || *v54 != 32)
            {
              break;
            }

            *(this + 1) = v54 + 1;
            if ((v54 + 1) >= v55 || (v56 = v54[1], (v56 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v69);
              if (!result)
              {
                return 0;
              }

              v56 = v69;
              v48 = *(v5 + 80);
            }

            else
            {
              v69 = v54[1];
              *(this + 1) = v54 + 2;
            }

            v53 = *(v5 + 88);
            *(v5 + 88) = v53 + 1;
            *(v48 + 4 * v53) = v56;
          }
        }

LABEL_94:
        v37 = *(this + 1);
        v27 = *(this + 2);
        if (v37 >= v27)
        {
          break;
        }

        v46 = *v37;
        if (v46 == 42)
        {
          *(this + 1) = v37 + 1;
          goto LABEL_97;
        }

LABEL_71:
        if (v46 != 32)
        {
          goto LABEL_2;
        }

        v28 = v37 + 1;
        *(this + 1) = v28;
      }
    }

    if (v9 == 2)
    {
      result = sub_100343714(this, (v5 + 80));
      if (!result)
      {
        return result;
      }

      goto LABEL_94;
    }

LABEL_44:
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
}

uint64_t sub_100344F4C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 24) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v5 + 16) + 8 * v6);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v6;
    }

    while (v6 < *(v5 + 24));
  }

  if ((*(v5 + 104) & 0x10) != 0)
  {
    v8 = *(v5 + 72);
    if (!v8)
    {
      v8 = *(qword_100471D00 + 72);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v8, a2, a4);
  }

  if (*(v5 + 48) >= 1)
  {
    v9 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(*(v5 + 40) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 48));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 80) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 88));
  }

  v11 = *(v5 + 104);
  if ((v11 & 4) != 0)
  {
    v15 = *(v5 + 64);
    if (v15)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v15, a2, a4);
      if ((*(v5 + 104) & 8) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, *(qword_100471D00 + 64), a2, a4);
      if ((*(v5 + 104) & 8) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_16:
    v14 = *(v5 + 8);
    v13 = (v5 + 8);
    v12 = v14;
    if (!v14)
    {
      return result;
    }

    goto LABEL_23;
  }

  if ((v11 & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 96), a2, a4);
  v16 = *(v5 + 8);
  v13 = (v5 + 8);
  v12 = v16;
  if (!v16)
  {
    return result;
  }

LABEL_23:
  if (*v12 != v12[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v13, a2, a3);
  }

  return result;
}

_BYTE *sub_1003450E0(uint64_t a1, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(a1 + 24) >= 1)
  {
    v5 = 0;
    result = a2;
    while (1)
    {
      v11 = *(*(a1 + 16) + 8 * v5);
      *result = 10;
      v12 = *(v11 + 23);
      if ((v12 & 0x8000000000000000) != 0)
      {
        v12 = *(v11 + 8);
        if (v12 <= 0x7F)
        {
LABEL_15:
          result[1] = v12;
          v7 = result + 2;
          goto LABEL_4;
        }
      }

      else if (v12 <= 0x7F)
      {
        goto LABEL_15;
      }

      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, result + 1, a3);
LABEL_4:
      v8 = *(v11 + 23);
      if (v8 >= 0)
      {
        v9 = v11;
      }

      else
      {
        v9 = *v11;
      }

      if (v8 >= 0)
      {
        v10 = *(v11 + 23);
      }

      else
      {
        v10 = *(v11 + 8);
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v9, v10, v7, a4);
      if (++v5 >= *(a1 + 24))
      {
        goto LABEL_17;
      }
    }
  }

  result = a2;
LABEL_17:
  if ((*(a1 + 104) & 0x10) != 0)
  {
    v13 = *(a1 + 72);
    if (v13)
    {
      *result = 18;
      v14 = result + 1;
      v15 = v13[18];
      if (v15 <= 0x7F)
      {
LABEL_20:
        result[1] = v15;
        v16 = result + 2;
LABEL_23:
        result = sub_100342BFC(v13, v16, a3);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(qword_100471D00 + 72);
      *result = 18;
      v14 = result + 1;
      v15 = v13[18];
      if (v15 <= 0x7F)
      {
        goto LABEL_20;
      }
    }

    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v14, a3);
    goto LABEL_23;
  }

LABEL_24:
  if (*(a1 + 48) >= 1)
  {
    v17 = 0;
    do
    {
      v19 = *(*(a1 + 40) + 8 * v17);
      *result = 26;
      v20 = *(v19 + 18);
      if (v20 <= 0x7F)
      {
        result[1] = v20;
        v18 = result + 2;
      }

      else
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v19 + 18), result + 1, a3);
      }

      result = sub_100342BFC(v19, v18, a3);
      ++v17;
    }

    while (v17 < *(a1 + 48));
  }

  if (*(a1 + 88) >= 1)
  {
    v21 = 0;
    do
    {
      while (1)
      {
        v22 = *(*(a1 + 80) + 4 * v21);
        *result = 32;
        if (v22 > 0x7F)
        {
          break;
        }

        result[1] = v22;
        result += 2;
        if (++v21 >= *(a1 + 88))
        {
          goto LABEL_35;
        }
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, result + 1, a3);
      ++v21;
    }

    while (v21 < *(a1 + 88));
  }

LABEL_35:
  if ((*(a1 + 104) & 4) != 0)
  {
    v23 = *(a1 + 64);
    if (v23)
    {
      *result = 42;
      v24 = result + 1;
      v25 = *(v23 + 32);
      if (v25 <= 0x7F)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v23 = *(qword_100471D00 + 64);
      *result = 42;
      v24 = result + 1;
      v25 = *(v23 + 32);
      if (v25 <= 0x7F)
      {
LABEL_38:
        result[1] = v25;
        result += 2;
        if (*(v23 + 24) < 1)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }
    }

    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v24, a3);
    if (*(v23 + 24) < 1)
    {
LABEL_46:
      v30 = *(v23 + 8);
      v29 = (v23 + 8);
      v28 = v30;
      if (v30 && *v28 != v28[1])
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v29, result, a3);
      }

      goto LABEL_49;
    }

LABEL_42:
    v26 = 0;
    do
    {
      while (1)
      {
        v27 = *(*(v23 + 16) + 4 * v26);
        *result = 8;
        if (v27 > 0x7F)
        {
          break;
        }

        result[1] = v27;
        result += 2;
        if (++v26 >= *(v23 + 24))
        {
          goto LABEL_46;
        }
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, result + 1, a3);
      ++v26;
    }

    while (v26 < *(v23 + 24));
    goto LABEL_46;
  }

LABEL_49:
  if ((*(a1 + 104) & 8) == 0)
  {
    goto LABEL_55;
  }

  v31 = *(a1 + 96);
  *result = 48;
  v32 = (result + 1);
  if ((v31 & 0x80000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v31, v32, a3);
LABEL_55:
    v36 = *(a1 + 8);
    v34 = (a1 + 8);
    v33 = v36;
    if (!v36)
    {
      return result;
    }

    goto LABEL_56;
  }

  if (v31 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v32, a3);
    v37 = *(a1 + 8);
    v34 = (a1 + 8);
    v33 = v37;
    if (!v37)
    {
      return result;
    }
  }

  else
  {
    result[1] = v31;
    result += 2;
    v35 = *(a1 + 8);
    v34 = (a1 + 8);
    v33 = v35;
    if (!v35)
    {
      return result;
    }
  }

LABEL_56:
  if (*v33 != v33[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v34, result, a3);
  }

  return result;
}

uint64_t sub_100345448(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 104);
  if ((v3 & 0x3FC) == 0)
  {
    v5 = *(a1 + 24);
    v6 = v5;
    if (v5 < 1)
    {
      goto LABEL_61;
    }

    goto LABEL_51;
  }

  if ((v3 & 4) == 0)
  {
    v4 = 0;
    if ((v3 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  v7 = *(a1 + 64);
  if (!v7)
  {
    v7 = *(qword_100471D00 + 64);
    v8 = *(v7 + 24);
    if (v8 >= 1)
    {
      goto LABEL_9;
    }

LABEL_16:
    v13 = v8;
    v14 = (v7 + 8);
    v15 = *(v7 + 8);
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v8 = *(v7 + 24);
  if (v8 < 1)
  {
    goto LABEL_16;
  }

LABEL_9:
  v9 = 0;
  v10 = 0;
  do
  {
    while (1)
    {
      v12 = *(*(v7 + 16) + 4 * v9);
      if (v12 < 0x80)
      {
        break;
      }

      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
      v8 = *(v7 + 24);
      v10 += v11;
      if (++v9 >= v8)
      {
        goto LABEL_13;
      }
    }

    ++v10;
    ++v9;
  }

  while (v9 < v8);
LABEL_13:
  v13 = (v8 + v10);
  v14 = (v7 + 8);
  v15 = *(v7 + 8);
  if (v15)
  {
LABEL_17:
    if (*v15 != v15[1])
    {
      v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v14, a2) + v13;
    }
  }

LABEL_19:
  *(v7 + 32) = v13;
  if (v13 >= 0x80)
  {
    v4 = v13 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(a1 + 104);
    if ((v3 & 8) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v4 = v13 + 2;
    v3 = *(a1 + 104);
    if ((v3 & 8) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_23:
  v16 = *(a1 + 96);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(a1 + 104);
  }

  else
  {
    v17 = 2;
  }

  v4 += v17;
LABEL_29:
  if ((v3 & 0x10) == 0)
  {
    v5 = *(a1 + 24);
    v6 = v5 + v4;
    if (v5 < 1)
    {
      goto LABEL_61;
    }

    goto LABEL_51;
  }

  v18 = *(a1 + 72);
  if (!v18)
  {
    v18 = *(qword_100471D00 + 72);
  }

  v19 = (*(v18 + 76) << 29 >> 31) & 9;
  v20 = *(v18 + 24);
  v21 = 8 * v20;
  if (v20 >= 1)
  {
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v20), a2) + 1;
    }

    else
    {
      v22 = 2;
    }

    v19 += v22;
  }

  *(v18 + 32) = v21;
  v23 = v19 + v21;
  v24 = *(v18 + 48);
  v25 = 8 * v24;
  if (v24 >= 1)
  {
    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v24), a2) + 1;
    }

    else
    {
      v26 = 2;
    }

    v23 += v26;
  }

  v27 = *(v18 + 8);
  *(v18 + 56) = v25;
  v28 = (v23 + v25);
  if (v27 && *v27 != v27[1])
  {
    v28 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v18 + 8), a2) + v28);
  }

  *(v18 + 72) = v28;
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2);
  }

  else
  {
    v29 = 1;
  }

  v5 = *(a1 + 24);
  v6 = v5 + v4 + v28 + v29 + 1;
  if (v5 >= 1)
  {
LABEL_51:
    for (i = 0; i < v5; ++i)
    {
      v33 = *(*(a1 + 16) + 8 * i);
      v32 = *(v33 + 23);
      v34 = v32;
      v35 = *(v33 + 8);
      if ((v32 & 0x80u) == 0)
      {
        v36 = *(v33 + 23);
      }

      else
      {
        v36 = v35;
      }

      if (v36 < 0x80)
      {
        v31 = 1;
      }

      else
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2);
        v32 = *(v33 + 23);
        v35 = *(v33 + 8);
        v5 = *(a1 + 24);
        v34 = *(v33 + 23);
      }

      if (v34 < 0)
      {
        v32 = v35;
      }

      v6 += v31 + v32;
    }
  }

LABEL_61:
  v37 = *(a1 + 48);
  v38 = v37 + v6;
  if (v37 >= 1)
  {
    v39 = 0;
    do
    {
      v41 = *(*(a1 + 40) + 8 * v39);
      v42 = (*(v41 + 76) << 29 >> 31) & 9;
      v43 = *(v41 + 24);
      v44 = 8 * v43;
      if (v43 >= 1)
      {
        if (v44 >= 0x80)
        {
          v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v43), a2) + 1;
        }

        else
        {
          v45 = 2;
        }

        v42 += v45;
      }

      *(v41 + 32) = v44;
      v46 = v42 + v44;
      v47 = *(v41 + 48);
      v48 = 8 * v47;
      if (v47 >= 1)
      {
        if (v48 >= 0x80)
        {
          v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v47), a2) + 1;
        }

        else
        {
          v49 = 2;
        }

        v46 += v49;
      }

      v50 = *(v41 + 8);
      *(v41 + 56) = v48;
      v51 = (v46 + v48);
      if (v50 && *v50 != v50[1])
      {
        v51 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v41 + 8), a2) + v51);
      }

      *(v41 + 72) = v51;
      if (v51 < 0x80)
      {
        v40 = 1;
      }

      else
      {
        v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51, a2);
      }

      v38 += v51 + v40;
      ++v39;
    }

    while (v39 < *(a1 + 48));
  }

  v52 = *(a1 + 88);
  if (v52 < 1)
  {
    v57 = (v38 + v52);
    v58 = (a1 + 8);
    v59 = *(a1 + 8);
    if (!v59)
    {
      goto LABEL_90;
    }

    goto LABEL_88;
  }

  v53 = 0;
  v54 = 0;
  do
  {
    while (1)
    {
      v56 = *(*(a1 + 80) + 4 * v53);
      if (v56 < 0x80)
      {
        break;
      }

      v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56, a2);
      v52 = *(a1 + 88);
      v54 += v55;
      if (++v53 >= v52)
      {
        goto LABEL_85;
      }
    }

    ++v54;
    ++v53;
  }

  while (v53 < v52);
LABEL_85:
  v57 = (v54 + v38 + v52);
  v58 = (a1 + 8);
  v59 = *(a1 + 8);
  if (v59)
  {
LABEL_88:
    if (*v59 != v59[1])
    {
      v57 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v58, a2) + v57;
    }
  }

LABEL_90:
  *(a1 + 100) = v57;
  return v57;
}

uint64_t sub_1003458D0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100343EB0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1003459B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003459C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003459D8(uint64_t result, uint64_t a2)
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

uint64_t sub_100345A64(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();

    return sub_100343EB0(v4, a2);
  }

  return result;
}

uint64_t sub_100345AD0(uint64_t a1)
{
  if (*(a1 + 48) < 1)
  {
LABEL_5:
    if ((*(a1 + 104) & 0x10) != 0)
    {
      v4 = *(a1 + 72);
      if (v4)
      {
        result = (*(*v4 + 40))(v4);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = (*(**(qword_100471D00 + 72) + 40))(*(qword_100471D00 + 72));
        if (!result)
        {
          return result;
        }
      }
    }

    return 1;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(*(a1 + 40) + 8 * v2);
    if (((*(*v3 + 40))(v3) & 1) == 0)
    {
      return 0;
    }

    if (++v2 >= *(a1 + 48))
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_100345BCC()
{
  v0 = qword_10045DA38;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10034136C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D9E0;
}

void sub_100345C5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100345C70(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), *(a2 + 24) + *(a1 + 24));
  if (*(a2 + 24) >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a2 + 16) + 8 * v4);
      v7 = *(a1 + 28);
      v8 = *(a1 + 24);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 32))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v7 + 1);
          v7 = *(a1 + 28);
        }

        *(a1 + 28) = v7 + 1;
        operator new();
      }

      v5 = *(a1 + 16);
      *(a1 + 24) = v8 + 1;
      sub_100343EB0(*(v5 + 8 * v8), v6);
      ++v4;
    }

    while (v4 < *(a2 + 24));
  }

  v9 = *(a2 + 112);
  if ((v9 & 0x1FE) == 0)
  {
    goto LABEL_23;
  }

  if ((v9 & 2) != 0)
  {
    *(a1 + 112) |= 2u;
    v10 = *(a1 + 40);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 40);
    if (!v11)
    {
      v11 = *(qword_100471D08 + 40);
    }

    sub_10014CD00(v10, v11);
    v9 = *(a2 + 112);
  }

  if ((v9 & 4) != 0)
  {
    v22 = *(a2 + 48);
    *(a1 + 112) |= 4u;
    *(a1 + 48) = v22;
    v9 = *(a2 + 112);
    if ((v9 & 8) == 0)
    {
LABEL_18:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_45;
    }
  }

  else if ((v9 & 8) == 0)
  {
    goto LABEL_18;
  }

  v23 = *(a2 + 56);
  *(a1 + 112) |= 8u;
  *(a1 + 56) = v23;
  v9 = *(a2 + 112);
  if ((v9 & 0x10) == 0)
  {
LABEL_19:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_46:
    v25 = *(a2 + 64);
    *(a1 + 112) |= 0x20u;
    *(a1 + 64) = v25;
    v9 = *(a2 + 112);
    if ((v9 & 0x40) == 0)
    {
LABEL_21:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_45:
  v24 = *(a2 + 60);
  *(a1 + 112) |= 0x10u;
  *(a1 + 60) = v24;
  v9 = *(a2 + 112);
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_20:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_47:
  v26 = *(a2 + 68);
  *(a1 + 112) |= 0x40u;
  *(a1 + 68) = v26;
  v9 = *(a2 + 112);
  if ((v9 & 0x80) != 0)
  {
LABEL_22:
    v12 = *(a2 + 72);
    *(a1 + 112) |= 0x80u;
    *(a1 + 72) = v12;
    v9 = *(a2 + 112);
  }

LABEL_23:
  if ((v9 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v9 & 0x100) != 0)
  {
    v13 = *(a2 + 76);
    *(a1 + 112) |= 0x100u;
    *(a1 + 76) = v13;
    v9 = *(a2 + 112);
    if ((v9 & 0x200) == 0)
    {
LABEL_26:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_34;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  v14 = *(a2 + 80);
  *(a1 + 112) |= 0x200u;
  *(a1 + 80) = v14;
  v9 = *(a2 + 112);
  if ((v9 & 0x400) == 0)
  {
LABEL_27:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

LABEL_34:
  v15 = *(a2 + 84);
  *(a1 + 112) |= 0x400u;
  *(a1 + 84) = v15;
  v9 = *(a2 + 112);
  if ((v9 & 0x800) == 0)
  {
LABEL_28:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

LABEL_35:
  v16 = *(a2 + 88);
  *(a1 + 112) |= 0x800u;
  *(a1 + 88) = v16;
  v9 = *(a2 + 112);
  if ((v9 & 0x1000) == 0)
  {
LABEL_29:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

LABEL_37:
    v18 = *(a2 + 104);
    *(a1 + 112) |= 0x2000u;
    *(a1 + 104) = v18;
    if ((*(a2 + 112) & 0x4000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_38;
  }

LABEL_36:
  v17 = *(a2 + 92);
  *(a1 + 112) |= 0x1000u;
  *(a1 + 92) = v17;
  v9 = *(a2 + 112);
  if ((v9 & 0x2000) != 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  if ((v9 & 0x4000) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_38:
  *(a1 + 112) |= 0x4000u;
  v19 = *(a1 + 96);
  if (!v19)
  {
    operator new();
  }

  v20 = *(a2 + 96);
  if (!v20)
  {
    v20 = *(qword_100471D08 + 96);
  }

  sub_10013E4EC(v19, v20);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1003460C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003460D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100346104(uint64_t a1)
{
  *a1 = off_10044AAA0;
  if (qword_100471D08 != a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 96);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = *(a1 + 28);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(a1 + 16) + 8 * i);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v4 = *(a1 + 28);
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

void sub_10034623C(uint64_t a1)
{
  sub_100346104(a1);

  operator delete();
}

uint64_t sub_100346350(uint64_t this)
{
  v1 = this;
  v2 = *(this + 112);
  if ((v2 & 0x1FE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      this = *(this + 40);
      if (this)
      {
        this = sub_10014E4A4(this);
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 48) = 0x3FFF5C28F5C28F5CLL;
    *&v3 = 0xC8000000C8;
    *(&v3 + 1) = 0xC8000000C8;
    *(v1 + 56) = v3;
    *(v1 + 72) = 200000000;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 76) = xmmword_1003DECA0;
    *(v1 + 92) = 1088421888;
    *(v1 + 104) = 1088421888;
    if ((v2 & 0x4000) != 0)
    {
      this = *(v1 + 96);
      if (this)
      {
        this = sub_10013E844(this);
      }
    }
  }

  if (*(v1 + 24) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 16) + 8 * v4);
      this = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 24));
  }

  v7 = *(v1 + 8);
  v6 = (v1 + 8);
  *(v6 + 4) = 0;
  *(v6 + 26) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
  }

  return this;
}

uint64_t sub_100346464(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        do
        {
          while (1)
          {
            while (1)
            {
              do
              {
                while (1)
                {
                  while (1)
                  {
                    do
                    {
                      while (1)
                      {
                        while (1)
                        {
                          do
                          {
                            do
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
                                switch(TagFallback >> 3)
                                {
                                  case 1u:
                                    if (v8 != 2)
                                    {
                                      goto LABEL_89;
                                    }

                                    break;
                                  case 0x10u:
                                    if (v8 == 2)
                                    {
                                      goto LABEL_61;
                                    }

                                    goto LABEL_89;
                                  case 0x11u:
                                    if (v8 != 1)
                                    {
                                      goto LABEL_89;
                                    }

                                    *v77 = 0;
                                    if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v77))
                                    {
                                      goto LABEL_49;
                                    }

                                    return 0;
                                  case 0x12u:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v31 = *(this + 1);
                                    v27 = *(this + 2);
                                    if (v31 < v27)
                                    {
                                      goto LABEL_79;
                                    }

                                    goto LABEL_104;
                                  case 0x13u:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v41 = *(this + 1);
                                    v27 = *(this + 2);
                                    if (v41 >= v27)
                                    {
                                      goto LABEL_112;
                                    }

                                    goto LABEL_109;
                                  case 0x14u:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v32 = *(this + 1);
                                    v27 = *(this + 2);
                                    if (v32 >= v27)
                                    {
                                      goto LABEL_120;
                                    }

                                    goto LABEL_117;
                                  case 0x15u:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v36 = *(this + 1);
                                    v27 = *(this + 2);
                                    if (v36 >= v27)
                                    {
                                      goto LABEL_128;
                                    }

                                    goto LABEL_125;
                                  case 0x16u:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v37 = *(this + 1);
                                    v27 = *(this + 2);
                                    if (v37 >= v27)
                                    {
                                      goto LABEL_136;
                                    }

                                    goto LABEL_133;
                                  case 0x17u:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v43 = *(this + 1);
                                    v27 = *(this + 2);
                                    if (v43 >= v27)
                                    {
                                      goto LABEL_144;
                                    }

                                    goto LABEL_141;
                                  case 0x18u:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v42 = *(this + 1);
                                    v27 = *(this + 2);
                                    if (v42 >= v27)
                                    {
                                      goto LABEL_152;
                                    }

                                    goto LABEL_149;
                                  case 0x19u:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v28 = *(this + 1);
                                    v27 = *(this + 2);
                                    if (v28 >= v27)
                                    {
                                      goto LABEL_160;
                                    }

                                    goto LABEL_157;
                                  case 0x1Au:
                                    if ((TagFallback & 7) != 0)
                                    {
                                      goto LABEL_89;
                                    }

                                    v33 = *(this + 1);
                                    v27 = *(this + 2);
                                    if (v33 >= v27)
                                    {
                                      goto LABEL_168;
                                    }

                                    goto LABEL_165;
                                  case 0x1Bu:
                                    if (v8 != 5)
                                    {
                                      goto LABEL_89;
                                    }

                                    v77[0] = 0;
                                    if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v77))
                                    {
                                      goto LABEL_42;
                                    }

                                    return 0;
                                  case 0x1Cu:
                                    if (v8 != 5)
                                    {
                                      goto LABEL_89;
                                    }

                                    v77[0] = 0;
                                    if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v77))
                                    {
                                      goto LABEL_32;
                                    }

                                    return 0;
                                  case 0x1Du:
                                    if (v8 != 2)
                                    {
                                      goto LABEL_89;
                                    }

                                    *(a1 + 112) |= 0x4000u;
                                    v26 = *(a1 + 96);
                                    if (v26)
                                    {
                                      goto LABEL_74;
                                    }

                                    goto LABEL_36;
                                  default:
LABEL_89:
                                    if (v8 == 4)
                                    {
                                      return 1;
                                    }

                                    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
                                    {
                                      return 0;
                                    }

                                    continue;
                                }

                                while (1)
                                {
                                  v9 = *(a1 + 28);
                                  v10 = *(a1 + 24);
                                  if (v10 >= v9)
                                  {
                                    if (v9 == *(a1 + 32))
                                    {
                                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v9 + 1);
                                      v9 = *(a1 + 28);
                                    }

                                    *(a1 + 28) = v9 + 1;
                                    operator new();
                                  }

                                  v11 = *(a1 + 16);
                                  *(a1 + 24) = v10 + 1;
                                  v12 = *(v11 + 8 * v10);
                                  v77[0] = 0;
                                  v13 = *(this + 1);
                                  if (v13 >= *(this + 2) || *v13 < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v77[0] = *v13;
                                    *(this + 1) = v13 + 1;
                                  }

                                  v14 = *(this + 14);
                                  v15 = *(this + 15);
                                  *(this + 14) = v14 + 1;
                                  if (v14 >= v15)
                                  {
                                    return 0;
                                  }

                                  v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v77[0]);
                                  if (!sub_100344764(v12, this, v17, v18) || *(this + 36) != 1)
                                  {
                                    return 0;
                                  }

                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
                                  v19 = *(this + 14);
                                  v20 = __OFSUB__(v19, 1);
                                  v21 = v19 - 1;
                                  if (v21 < 0 == v20)
                                  {
                                    *(this + 14) = v21;
                                  }

                                  v22 = *(this + 1);
                                  v23 = *(this + 2);
                                  if (v22 >= v23 || *v22 != 10)
                                  {
                                    break;
                                  }

                                  *(this + 1) = v22 + 1;
                                }

                                if (v23 - v22 >= 2 && *v22 == 130 && v22[1] == 1)
                                {
                                  *(this + 1) = v22 + 2;
LABEL_61:
                                  *(a1 + 112) |= 2u;
                                  v34 = *(a1 + 40);
                                  if (!v34)
                                  {
                                    operator new();
                                  }

                                  v77[0] = 0;
                                  v35 = *(this + 1);
                                  if (v35 >= *(this + 2) || *v35 < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v77[0] = *v35;
                                    *(this + 1) = v35 + 1;
                                  }

                                  v69 = *(this + 14);
                                  v70 = *(this + 15);
                                  *(this + 14) = v69 + 1;
                                  if (v69 >= v70)
                                  {
                                    return 0;
                                  }

                                  v71 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v77[0]);
                                  if (!sub_10014EC1C(v34, this, v72, v73) || *(this + 36) != 1)
                                  {
                                    return 0;
                                  }

                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v71);
                                  v74 = *(this + 14);
                                  v20 = __OFSUB__(v74, 1);
                                  v75 = v74 - 1;
                                  if (v75 < 0 == v20)
                                  {
                                    *(this + 14) = v75;
                                  }

                                  v76 = *(this + 1);
                                  if (*(this + 4) - v76 > 1 && *v76 == 137 && v76[1] == 1)
                                  {
                                    *(this + 1) = v76 + 2;
                                    *v77 = 0;
                                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v77) & 1) == 0)
                                    {
                                      return 0;
                                    }

LABEL_49:
                                    *(a1 + 48) = *v77;
                                    *(a1 + 112) |= 4u;
                                    v30 = *(this + 1);
                                    v27 = *(this + 2);
                                    if (v27 - v30 >= 2 && *v30 == 144 && v30[1] == 1)
                                    {
                                      break;
                                    }
                                  }
                                }
                              }

                              v31 = (v30 + 2);
                              *(this + 1) = v31;
                              if (v31 < v27)
                              {
LABEL_79:
                                v39 = *v31;
                                if ((v39 & 0x80000000) == 0)
                                {
                                  *(a1 + 56) = v39;
                                  v40 = (v31 + 1);
                                  *(this + 1) = v40;
                                  *(a1 + 112) |= 8u;
                                  if (v27 - v40 < 2)
                                  {
                                    goto LABEL_1;
                                  }

                                  break;
                                }
                              }

LABEL_104:
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
                              if (!result)
                              {
                                return result;
                              }

                              v40 = *(this + 1);
                              v27 = *(this + 2);
                              *(a1 + 112) |= 8u;
                            }

                            while (v27 - v40 < 2);
                          }

                          while (*v40 != 152 || v40[1] != 1);
                          v41 = (v40 + 2);
                          *(this + 1) = v41;
                          if (v41 < v27)
                          {
                            break;
                          }

LABEL_112:
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
                          if (!result)
                          {
                            return result;
                          }

                          v53 = *(this + 1);
                          v27 = *(this + 2);
                          *(a1 + 112) |= 0x20u;
                          if (v27 - v53 >= 2)
                          {
                            goto LABEL_114;
                          }
                        }

LABEL_109:
                        v52 = *v41;
                        if (v52 < 0)
                        {
                          goto LABEL_112;
                        }

                        *(a1 + 64) = v52;
                        v53 = (v41 + 1);
                        *(this + 1) = v53;
                        *(a1 + 112) |= 0x20u;
                        if (v27 - v53 < 2)
                        {
                          goto LABEL_1;
                        }

LABEL_114:
                        if (*v53 == 160 && v53[1] == 1)
                        {
                          v32 = (v53 + 2);
                          *(this + 1) = v32;
                          if (v32 < v27)
                          {
LABEL_117:
                            v54 = *v32;
                            if ((v54 & 0x80000000) == 0)
                            {
                              *(a1 + 80) = v54;
                              v55 = (v32 + 1);
                              *(this + 1) = v55;
                              *(a1 + 112) |= 0x200u;
                              if (v27 - v55 < 2)
                              {
                                goto LABEL_1;
                              }

                              break;
                            }
                          }

LABEL_120:
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 80));
                          if (!result)
                          {
                            return result;
                          }

                          v55 = *(this + 1);
                          v27 = *(this + 2);
                          *(a1 + 112) |= 0x200u;
                          if (v27 - v55 >= 2)
                          {
                            break;
                          }
                        }
                      }
                    }

                    while (*v55 != 168 || v55[1] != 1);
                    v36 = (v55 + 2);
                    *(this + 1) = v36;
                    if (v36 < v27)
                    {
                      break;
                    }

LABEL_128:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 88));
                    if (!result)
                    {
                      return result;
                    }

                    v57 = *(this + 1);
                    v27 = *(this + 2);
                    *(a1 + 112) |= 0x800u;
                    if (v27 - v57 >= 2)
                    {
                      goto LABEL_130;
                    }
                  }

LABEL_125:
                  v56 = *v36;
                  if (v56 < 0)
                  {
                    goto LABEL_128;
                  }

                  *(a1 + 88) = v56;
                  v57 = (v36 + 1);
                  *(this + 1) = v57;
                  *(a1 + 112) |= 0x800u;
                  if (v27 - v57 < 2)
                  {
                    goto LABEL_1;
                  }

LABEL_130:
                  if (*v57 == 176 && v57[1] == 1)
                  {
                    v37 = (v57 + 2);
                    *(this + 1) = v37;
                    if (v37 < v27)
                    {
LABEL_133:
                      v58 = *v37;
                      if ((v58 & 0x80000000) == 0)
                      {
                        *(a1 + 60) = v58;
                        v59 = (v37 + 1);
                        *(this + 1) = v59;
                        *(a1 + 112) |= 0x10u;
                        if (v27 - v59 < 2)
                        {
                          goto LABEL_1;
                        }

                        break;
                      }
                    }

LABEL_136:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
                    if (!result)
                    {
                      return result;
                    }

                    v59 = *(this + 1);
                    v27 = *(this + 2);
                    *(a1 + 112) |= 0x10u;
                    if (v27 - v59 >= 2)
                    {
                      break;
                    }
                  }
                }
              }

              while (*v59 != 184 || v59[1] != 1);
              v43 = (v59 + 2);
              *(this + 1) = v43;
              if (v43 < v27)
              {
                break;
              }

LABEL_144:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 68));
              if (!result)
              {
                return result;
              }

              v61 = *(this + 1);
              v27 = *(this + 2);
              *(a1 + 112) |= 0x40u;
              if (v27 - v61 >= 2)
              {
                goto LABEL_146;
              }
            }

LABEL_141:
            v60 = *v43;
            if (v60 < 0)
            {
              goto LABEL_144;
            }

            *(a1 + 68) = v60;
            v61 = (v43 + 1);
            *(this + 1) = v61;
            *(a1 + 112) |= 0x40u;
            if (v27 - v61 < 2)
            {
              goto LABEL_1;
            }

LABEL_146:
            if (*v61 == 192 && v61[1] == 1)
            {
              v42 = (v61 + 2);
              *(this + 1) = v42;
              if (v42 < v27)
              {
LABEL_149:
                v62 = *v42;
                if ((v62 & 0x80000000) == 0)
                {
                  *(a1 + 84) = v62;
                  v63 = (v42 + 1);
                  *(this + 1) = v63;
                  *(a1 + 112) |= 0x400u;
                  if (v27 - v63 < 2)
                  {
                    goto LABEL_1;
                  }

                  break;
                }
              }

LABEL_152:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 84));
              if (!result)
              {
                return result;
              }

              v63 = *(this + 1);
              v27 = *(this + 2);
              *(a1 + 112) |= 0x400u;
              if (v27 - v63 >= 2)
              {
                break;
              }
            }
          }
        }

        while (*v63 != 200 || v63[1] != 1);
        v28 = (v63 + 2);
        *(this + 1) = v28;
        if (v28 < v27)
        {
          break;
        }

LABEL_160:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
        if (!result)
        {
          return result;
        }

        v65 = *(this + 1);
        v27 = *(this + 2);
        *(a1 + 112) |= 0x80u;
        if (v27 - v65 >= 2)
        {
          goto LABEL_162;
        }
      }

LABEL_157:
      v64 = *v28;
      if (v64 < 0)
      {
        goto LABEL_160;
      }

      *(a1 + 72) = v64;
      v65 = (v28 + 1);
      *(this + 1) = v65;
      *(a1 + 112) |= 0x80u;
      if (v27 - v65 < 2)
      {
        goto LABEL_1;
      }

LABEL_162:
      if (*v65 == 208 && v65[1] == 1)
      {
        v33 = (v65 + 2);
        *(this + 1) = v33;
        if (v33 < v27)
        {
LABEL_165:
          v66 = *v33;
          if ((v66 & 0x80000000) == 0)
          {
            *(a1 + 76) = v66;
            v67 = (v33 + 1);
            *(this + 1) = v67;
            *(a1 + 112) |= 0x100u;
            if (v27 - v67 < 2)
            {
              goto LABEL_1;
            }

            break;
          }
        }

LABEL_168:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 76));
        if (!result)
        {
          return result;
        }

        v67 = *(this + 1);
        v68 = *(this + 2);
        *(a1 + 112) |= 0x100u;
        if (v68 - v67 >= 2)
        {
          break;
        }
      }
    }

    if (*v67 == 221 && v67[1] == 1)
    {
      *(this + 1) = v67 + 2;
      v77[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v77) & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      *(a1 + 92) = v77[0];
      *(a1 + 112) |= 0x1000u;
      v29 = *(this + 1);
      if (*(this + 4) - v29 >= 2 && *v29 == 229 && v29[1] == 1)
      {
        *(this + 1) = v29 + 2;
        v77[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v77) & 1) == 0)
        {
          return 0;
        }

LABEL_32:
        *(a1 + 104) = v77[0];
        v24 = *(a1 + 112) | 0x2000;
        *(a1 + 112) = v24;
        v25 = *(this + 1);
        if (*(this + 4) - v25 >= 2 && *v25 == 234 && v25[1] == 1)
        {
          *(this + 1) = v25 + 2;
          *(a1 + 112) = v24 | 0x4000;
          v26 = *(a1 + 96);
          if (!v26)
          {
LABEL_36:
            operator new();
          }

LABEL_74:
          v77[0] = 0;
          v38 = *(this + 1);
          if (v38 >= *(this + 2) || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77))
            {
              return 0;
            }
          }

          else
          {
            v77[0] = *v38;
            *(this + 1) = v38 + 1;
          }

          v44 = *(this + 14);
          v45 = *(this + 15);
          *(this + 14) = v44 + 1;
          if (v44 >= v45)
          {
            return 0;
          }

          v46 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v77[0]);
          if (!sub_10013E864(v26, this, v47, v48) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v46);
          v49 = *(this + 14);
          v20 = __OFSUB__(v49, 1);
          v50 = v49 - 1;
          if (v50 < 0 == v20)
          {
            *(this + 14) = v50;
          }

          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            break;
          }
        }
      }
    }
  }

  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_100347054(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  v7 = *(v5 + 112);
  if ((v7 & 2) != 0)
  {
    v11 = *(v5 + 40);
    if (v11)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x10, v11, a2, a4);
      v7 = *(v5 + 112);
      if ((v7 & 4) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x10, *(qword_100471D08 + 40), a2, a4);
      v7 = *(v5 + 112);
      if ((v7 & 4) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_6:
    if ((v7 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

  if ((v7 & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 48), a3);
  v7 = *(v5 + 112);
  if ((v7 & 8) == 0)
  {
LABEL_7:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 56), a2, a4);
  v7 = *(v5 + 112);
  if ((v7 & 0x20) == 0)
  {
LABEL_8:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 64), a2, a4);
  v7 = *(v5 + 112);
  if ((v7 & 0x200) == 0)
  {
LABEL_9:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 80), a2, a4);
  v7 = *(v5 + 112);
  if ((v7 & 0x800) == 0)
  {
LABEL_10:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 88), a2, a4);
  v7 = *(v5 + 112);
  if ((v7 & 0x10) == 0)
  {
LABEL_11:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 60), a2, a4);
  v7 = *(v5 + 112);
  if ((v7 & 0x40) == 0)
  {
LABEL_12:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 68), a2, a4);
  v7 = *(v5 + 112);
  if ((v7 & 0x400) == 0)
  {
LABEL_13:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 84), a2, a4);
  v7 = *(v5 + 112);
  if ((v7 & 0x80) == 0)
  {
LABEL_14:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 72), a2, a4);
  v7 = *(v5 + 112);
  if ((v7 & 0x100) == 0)
  {
LABEL_15:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(v5 + 76), a2, a4);
  v7 = *(v5 + 112);
  if ((v7 & 0x1000) == 0)
  {
LABEL_16:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1B, a2, *(v5 + 92), a3);
  v7 = *(v5 + 112);
  if ((v7 & 0x2000) == 0)
  {
LABEL_17:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1C, a2, *(v5 + 104), a3);
  if ((*(v5 + 112) & 0x4000) == 0)
  {
LABEL_18:
    v10 = *(v5 + 8);
    v9 = (v5 + 8);
    v8 = v10;
    if (!v10)
    {
      return result;
    }

    goto LABEL_40;
  }

LABEL_36:
  v12 = *(v5 + 96);
  if (v12)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1D, v12, a2, a4);
    v13 = *(v5 + 8);
    v9 = (v5 + 8);
    v8 = v13;
    if (!v13)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1D, *(qword_100471D08 + 96), a2, a4);
    v14 = *(v5 + 8);
    v9 = (v5 + 8);
    v8 = v14;
    if (!v14)
    {
      return result;
    }
  }

LABEL_40:
  if (*v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1003472D0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    do
    {
      v8 = *(*(this + 2) + 8 * v6);
      *a2 = 10;
      v9 = *(v8 + 100);
      if (v9 <= 0x7F)
      {
        *(a2 + 1) = v9;
        v7 = a2 + 2;
      }

      else
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, a2 + 1, a3);
      }

      a2 = sub_1003450E0(v8, v7, a3, a4);
      ++v6;
    }

    while (v6 < *(this + 6));
  }

  v10 = *(this + 28);
  if ((v10 & 2) != 0)
  {
    v15 = *(this + 5);
    if (v15)
    {
      *a2 = 386;
      v16 = a2 + 2;
      v17 = v15[74];
      if (v17 <= 0x7F)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v15 = *(qword_100471D08 + 40);
      *a2 = 386;
      v16 = a2 + 2;
      v17 = v15[74];
      if (v17 <= 0x7F)
      {
LABEL_25:
        *(a2 + 2) = v17;
        a2 = sub_100151E10(v15, (a2 + 3), a3);
        v10 = *(this + 28);
        if ((v10 & 4) != 0)
        {
          goto LABEL_29;
        }

LABEL_9:
        if ((v10 & 8) == 0)
        {
          goto LABEL_10;
        }

LABEL_30:
        v21 = *(this + 14);
        *a2 = 400;
        if (v21 > 0x7F)
        {
          a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, a2 + 2, a3);
          if ((*(this + 112) & 0x20) != 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          *(a2 + 2) = v21;
          a2 = (a2 + 3);
          if ((*(this + 112) & 0x20) != 0)
          {
            goto LABEL_34;
          }
        }

LABEL_11:
        if ((*(this + 113) & 2) == 0)
        {
          goto LABEL_12;
        }

LABEL_38:
        v23 = *(this + 20);
        *a2 = 416;
        if (v23 > 0x7F)
        {
          a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, a2 + 2, a3);
          if ((*(this + 113) & 8) != 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          *(a2 + 2) = v23;
          a2 = (a2 + 3);
          if ((*(this + 113) & 8) != 0)
          {
            goto LABEL_42;
          }
        }

LABEL_13:
        if ((*(this + 112) & 0x10) == 0)
        {
          goto LABEL_14;
        }

LABEL_46:
        v25 = *(this + 15);
        *a2 = 432;
        if (v25 > 0x7F)
        {
          a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, a2 + 2, a3);
          if ((*(this + 112) & 0x40) != 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
          *(a2 + 2) = v25;
          a2 = (a2 + 3);
          if ((*(this + 112) & 0x40) != 0)
          {
            goto LABEL_50;
          }
        }

LABEL_15:
        if ((*(this + 113) & 4) == 0)
        {
          goto LABEL_16;
        }

LABEL_54:
        v27 = *(this + 21);
        *a2 = 448;
        if (v27 > 0x7F)
        {
          a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, a2 + 2, a3);
          if ((*(this + 112) & 0x80) != 0)
          {
            goto LABEL_58;
          }
        }

        else
        {
          *(a2 + 2) = v27;
          a2 = (a2 + 3);
          if ((*(this + 112) & 0x80) != 0)
          {
            goto LABEL_58;
          }
        }

LABEL_17:
        if ((*(this + 113) & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_62:
        v29 = *(this + 19);
        *a2 = 464;
        if (v29 > 0x7F)
        {
          a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, a2 + 2, a3);
          v11 = *(this + 28);
          if ((v11 & 0x1000) != 0)
          {
            goto LABEL_66;
          }
        }

        else
        {
          *(a2 + 2) = v29;
          a2 = (a2 + 3);
          v11 = *(this + 28);
          if ((v11 & 0x1000) != 0)
          {
            goto LABEL_66;
          }
        }

LABEL_19:
        if ((v11 & 0x2000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_67;
      }
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v16, a3);
    a2 = sub_100151E10(v15, v18, v19);
    v10 = *(this + 28);
    if ((v10 & 4) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_9;
  }

  if ((v10 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_29:
  v20 = *(this + 6);
  *a2 = 393;
  *(a2 + 2) = v20;
  a2 = (a2 + 10);
  if ((*(this + 28) & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  if ((*(this + 112) & 0x20) == 0)
  {
    goto LABEL_11;
  }

LABEL_34:
  v22 = *(this + 16);
  *a2 = 408;
  if (v22 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, a2 + 2, a3);
    if ((*(this + 113) & 2) != 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    *(a2 + 2) = v22;
    a2 = (a2 + 3);
    if ((*(this + 113) & 2) != 0)
    {
      goto LABEL_38;
    }
  }

LABEL_12:
  if ((*(this + 113) & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_42:
  v24 = *(this + 22);
  *a2 = 424;
  if (v24 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, a2 + 2, a3);
    if ((*(this + 112) & 0x10) != 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    *(a2 + 2) = v24;
    a2 = (a2 + 3);
    if ((*(this + 112) & 0x10) != 0)
    {
      goto LABEL_46;
    }
  }

LABEL_14:
  if ((*(this + 112) & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_50:
  v26 = *(this + 17);
  *a2 = 440;
  if (v26 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, a2 + 2, a3);
    if ((*(this + 113) & 4) != 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    *(a2 + 2) = v26;
    a2 = (a2 + 3);
    if ((*(this + 113) & 4) != 0)
    {
      goto LABEL_54;
    }
  }

LABEL_16:
  if ((*(this + 112) & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_58:
  v28 = *(this + 18);
  *a2 = 456;
  if (v28 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, a2 + 2, a3);
    if (*(this + 113))
    {
      goto LABEL_62;
    }
  }

  else
  {
    *(a2 + 2) = v28;
    a2 = (a2 + 3);
    if (*(this + 113))
    {
      goto LABEL_62;
    }
  }

LABEL_18:
  v11 = *(this + 28);
  if ((v11 & 0x1000) == 0)
  {
    goto LABEL_19;
  }

LABEL_66:
  v30 = *(this + 23);
  *a2 = 477;
  *(a2 + 2) = v30;
  a2 = (a2 + 6);
  v11 = *(this + 28);
  if ((v11 & 0x2000) == 0)
  {
LABEL_20:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }

LABEL_67:
  v31 = *(this + 26);
  *a2 = 485;
  *(a2 + 2) = v31;
  a2 = (a2 + 6);
  if ((*(this + 28) & 0x4000) == 0)
  {
LABEL_21:
    v14 = *(this + 1);
    v13 = (this + 8);
    v12 = v14;
    if (!v14)
    {
      return a2;
    }

    goto LABEL_74;
  }

LABEL_68:
  v32 = *(this + 12);
  if (v32)
  {
    *a2 = 490;
    v33 = a2 + 2;
    v34 = v32[8];
    if (v34 <= 0x7F)
    {
      goto LABEL_70;
    }
  }

  else
  {
    v32 = *(qword_100471D08 + 96);
    *a2 = 490;
    v33 = a2 + 2;
    v34 = v32[8];
    if (v34 <= 0x7F)
    {
LABEL_70:
      *(a2 + 2) = v34;
      a2 = sub_10013EC18(v32, (a2 + 3), a3);
      v35 = *(this + 1);
      v13 = (this + 8);
      v12 = v35;
      if (!v35)
      {
        return a2;
      }

      goto LABEL_74;
    }
  }

  v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v34, v33, a3);
  a2 = sub_10013EC18(v32, v36, v37);
  v38 = *(this + 1);
  v13 = (this + 8);
  v12 = v38;
  if (!v38)
  {
    return a2;
  }

LABEL_74:
  if (*v12 == v12[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v13, a2, a3);
}

uint64_t sub_1003477DC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 112);
  if ((v3 & 0x1FE) == 0)
  {
    v4 = 0;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_45;
  }

  if ((v3 & 2) == 0)
  {
    if ((v3 & 4) != 0)
    {
      v4 = 10;
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 8) == 0)
    {
      goto LABEL_23;
    }

LABEL_19:
    v8 = *(a1 + 56);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 2;
      v3 = *(a1 + 112);
    }

    else
    {
      v9 = 3;
    }

    v4 += v9;
    goto LABEL_23;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = sub_10015321C(v5, a2);
    if (v6 < 0x80)
    {
LABEL_12:
      v7 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v6 = sub_10015321C(*(qword_100471D08 + 40), a2);
    if (v6 < 0x80)
    {
      goto LABEL_12;
    }
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
LABEL_15:
  v3 = *(a1 + 112);
  if ((v3 & 4) != 0)
  {
    v4 = v6 + v7 + 12;
  }

  else
  {
    v4 = v6 + v7 + 2;
  }

  if ((v3 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_23:
  if ((v3 & 0x10) != 0)
  {
    v10 = *(a1 + 60);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
      v3 = *(a1 + 112);
      v4 += v11 + 2;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v4 += 3;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_33;
      }
    }

LABEL_25:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_26;
    }

LABEL_37:
    v14 = *(a1 + 68);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
      v3 = *(a1 + 112);
      v4 += v15 + 2;
      if ((v3 & 0x80) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v4 += 3;
      if ((v3 & 0x80) != 0)
      {
        goto LABEL_41;
      }
    }

LABEL_27:
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_45;
  }

  if ((v3 & 0x20) == 0)
  {
    goto LABEL_25;
  }

LABEL_33:
  v12 = *(a1 + 64);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
    v3 = *(a1 + 112);
    v4 += v13 + 2;
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v4 += 3;
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_37;
    }
  }

LABEL_26:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_27;
  }

LABEL_41:
  v16 = *(a1 + 72);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
    v3 = *(a1 + 112);
    v4 += v17 + 2;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v4 += 3;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_78;
    }
  }

LABEL_45:
  if ((v3 & 0x100) == 0)
  {
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_47;
    }

LABEL_54:
    v20 = *(a1 + 80);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
      v3 = *(a1 + 112);
      v4 += v21 + 2;
      if ((v3 & 0x400) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v4 += 3;
      if ((v3 & 0x400) != 0)
      {
        goto LABEL_58;
      }
    }

LABEL_48:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_62;
  }

  v18 = *(a1 + 76);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
    v3 = *(a1 + 112);
    v4 += v19 + 2;
    if ((v3 & 0x200) != 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v4 += 3;
    if ((v3 & 0x200) != 0)
    {
      goto LABEL_54;
    }
  }

LABEL_47:
  if ((v3 & 0x400) == 0)
  {
    goto LABEL_48;
  }

LABEL_58:
  v22 = *(a1 + 84);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
    v3 = *(a1 + 112);
    v4 += v23 + 2;
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v4 += 3;
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_66;
    }
  }

LABEL_62:
  v24 = *(a1 + 88);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 2;
    v3 = *(a1 + 112);
  }

  else
  {
    v25 = 3;
  }

  v4 += v25;
LABEL_66:
  v26 = v4 + 6;
  if ((v3 & 0x1000) == 0)
  {
    v26 = v4;
  }

  if ((v3 & 0x2000) != 0)
  {
    v4 = v26 + 6;
  }

  else
  {
    v4 = v26;
  }

  if ((v3 & 0x4000) != 0)
  {
    v27 = *(a1 + 96);
    if (v27)
    {
      v28 = sub_10013ED88(v27, a2);
      if (v28 < 0x80)
      {
LABEL_74:
        v29 = 1;
LABEL_77:
        v4 += v28 + v29 + 2;
        goto LABEL_78;
      }
    }

    else
    {
      v28 = sub_10013ED88(*(qword_100471D08 + 96), a2);
      if (v28 < 0x80)
      {
        goto LABEL_74;
      }
    }

    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2);
    goto LABEL_77;
  }

LABEL_78:
  v30 = *(a1 + 24);
  v31 = (v30 + v4);
  if (v30 >= 1)
  {
    v32 = 0;
    do
    {
      v34 = sub_100345448(*(*(a1 + 16) + 8 * v32), a2);
      v35 = v34;
      if (v34 < 0x80)
      {
        v33 = 1;
      }

      else
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2);
      }

      v31 = (v35 + v31 + v33);
      ++v32;
    }

    while (v32 < *(a1 + 24));
  }

  v36 = *(a1 + 8);
  if (v36 && *v36 != v36[1])
  {
    v31 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v31;
  }

  *(a1 + 108) = v31;
  return v31;
}

uint64_t sub_100347B58(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100345C70(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100347C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100347C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100347C60(uint64_t result, uint64_t a2)
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

uint64_t sub_100347CEC(uint64_t a1)
{
  if (*(a1 + 24) < 1)
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = *(*(a1 + 16) + 8 * v2);
    result = (*(*v3 + 40))(v3);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v2;
  }

  while (v2 < *(a1 + 24));
  return result;
}

uint64_t sub_100347D68()
{
  v0 = qword_10045DA38;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10034136C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D9F0;
}

void sub_100347DF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100347E0C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 88);
  if (!v4)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = *(a2 + 16);
    *(a1 + 88) |= 1u;
    v6 = *(a1 + 16);
    if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v6, v5);
    v4 = *(a2 + 88);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 24);
  *(a1 + 88) |= 2u;
  *(a1 + 24) = v7;
  v4 = *(a2 + 88);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a2 + 32);
  *(a1 + 88) |= 4u;
  *(a1 + 32) = v8;
  v4 = *(a2 + 88);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 36);
  *(a1 + 88) |= 8u;
  *(a1 + 36) = v9;
  v4 = *(a2 + 88);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 40);
  *(a1 + 88) |= 0x10u;
  *(a1 + 40) = v10;
  v4 = *(a2 + 88);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 44);
  *(a1 + 88) |= 0x20u;
  *(a1 + 44) = v11;
  v4 = *(a2 + 88);
  if ((v4 & 0x40) != 0)
  {
LABEL_22:
    v12 = *(a2 + 48);
    *(a1 + 88) |= 0x40u;
    v13 = *(a1 + 48);
    if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v13, v12);
    v4 = *(a2 + 88);
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_25;
    }

LABEL_12:
    if ((v4 & 0xFF00) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_28;
  }

LABEL_11:
  if ((v4 & 0x80) == 0)
  {
    goto LABEL_12;
  }

LABEL_25:
  v14 = *(a2 + 56);
  *(a1 + 88) |= 0x80u;
  v15 = *(a1 + 56);
  if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v4 = *(a2 + 88);
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_28:
  if ((v4 & 0x100) != 0)
  {
    v18 = *(a2 + 72);
    *(a1 + 88) |= 0x100u;
    *(a1 + 72) = v18;
    v4 = *(a2 + 88);
    if ((v4 & 0x200) == 0)
    {
LABEL_30:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_31;
      }

LABEL_38:
      v21 = *(a2 + 76);
      *(a1 + 88) |= 0x400u;
      *(a1 + 76) = v21;
      if ((*(a2 + 88) & 0x800) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_30;
  }

  v19 = *(a2 + 64);
  *(a1 + 88) |= 0x200u;
  v20 = *(a1 + 64);
  if (v20 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v20, v19);
  v4 = *(a2 + 88);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  if ((v4 & 0x800) != 0)
  {
LABEL_32:
    v16 = *(a2 + 80);
    *(a1 + 88) |= 0x800u;
    *(a1 + 80) = v16;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}