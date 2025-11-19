uint64_t **sub_1007EED00(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_10047CC44(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 32) = *(v9 + 32);
          v8[5] = v9[5];
          sub_1007EEE6C(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_10047CC44(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10047CC98(&v12);
  }

  if (a2 != a3)
  {
    sub_1007EEEDC();
  }

  return result;
}

void sub_1007EEE58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10047CC98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007EEE6C(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 32))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_10002393C(a1, v3, v5, a2);
  return a2;
}

uint64_t **sub_1007EEF80(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_10047CC44(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 28) = *(v9 + 28);
          *(v8 + 8) = *(v9 + 8);
          sub_1007EF0EC(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_10047CC44(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10047CC98(&v12);
  }

  if (a2 != a3)
  {
    sub_1007EF15C();
  }

  return result;
}

void sub_1007EF0D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10047CC98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007EF0EC(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 28))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_10002393C(a1, v3, v5, a2);
  return a2;
}

uint64_t *sub_1007EF200(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1007EF340(uint64_t a1, uint64_t **a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1024723D0;
  sub_100C2EC04(a1 + 24, a2);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 288) = a1 + 296;
  *(a1 + 296) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = a1 + 320;
  *(a1 + 336) = 0xBFF0000000000000;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  return a1;
}

void sub_1007EF3F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024723D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007EF444(uint64_t a1)
{
  v3 = (a1 + 352);
  sub_1004CA974(&v3);
  sub_1007EF670(a1 + 312, *(a1 + 320));
  sub_1007EF6E0(a1 + 288, *(a1 + 296));
  sub_1007EF6E0(a1 + 264, *(a1 + 272));
  sub_100D8D8D0(a1 + 256);
  return sub_1007EF4B4(a1 + 24);
}

uint64_t sub_1007EF4B4(uint64_t a1)
{
  if (*(a1 + 88))
  {
    if (qword_1025D46B0 != -1)
    {
      sub_1019401D8();
    }

    v2 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGCZ,destroy geocodec malloc zone,~CLGeoMapGeometry()", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194013C(buf);
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLGeoMapGeometry::~CLGeoMapGeometry()", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    GEOResetGeoCodecsAllocator();

    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 96);
  if (v3)
  {

    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 104);
  if (v4)
  {

    *(a1 + 104) = 0;
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  sub_10053700C(a1);
  return a1;
}

void sub_1007EF664(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1007EF670(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1007EF670(a1, *a2);
    sub_1007EF670(a1, *(a2 + 1));
    v4 = (a2 + 80);
    sub_1004CA974(&v4);
    v4 = (a2 + 56);
    sub_1004CA974(&v4);
    operator delete(a2);
  }
}

void sub_1007EF6E0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1007EF6E0(a1, *a2);
    sub_1007EF6E0(a1, a2[1]);
    v4 = a2[7];
    if (v4)
    {
      sub_100008080(v4);
    }

    operator delete(a2);
  }
}

void sub_1007EF790(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102472440;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007EF858(uint64_t a1, char *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_102472490;
  v3 = *a2;
  sub_100FF77B0(a1 + 24);
  *(a1 + 24) = &off_1024D54C0;
  *(a1 + 2672) = v3;
  return a1;
}

void sub_1007EF8F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102472490;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007EF974(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10118E5EC(a1, &v5);
  if (v6)
  {
    sub_100008080(v6);
  }

  *a1 = off_1024D4280;
  sub_10018D404(a1 + 2208);
  *(a1 + 2264) = 0;
  *(a1 + 2248) = 0u;
  *(a1 + 2272) = 0xBFF0000000000000;
  return a1;
}

uint64_t sub_1007EFA34(uint64_t a1)
{
  *a1 = off_1024724E0;
  v2 = *(a1 + 2176);
  if (v2)
  {
    *(a1 + 2184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 2088);
  *(a1 + 2088) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 2080);
  *(a1 + 2080) = 0;
  if (v4)
  {
    v15 = (v4 + 232);
    sub_1004CA974(&v15);
    sub_1007EF4B4(v4);
    operator delete();
  }

  v15 = (a1 + 1928);
  sub_1002540F4(&v15);
  v15 = (a1 + 1904);
  sub_1002540F4(&v15);
  v15 = (a1 + 1880);
  sub_1007EFC3C(&v15);
  v5 = *(a1 + 1840);
  if (v5)
  {
    *(a1 + 1848) = v5;
    operator delete(v5);
  }

  sub_10004FF5C((a1 + 1808));
  sub_10004FF5C((a1 + 1784));
  if (*(a1 + 1431) < 0)
  {
    operator delete(*(a1 + 1408));
  }

  v6 = *(a1 + 1176);
  if (v6)
  {
    *(a1 + 1184) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 1096);
  if (v7)
  {
    sub_100008080(v7);
  }

  sub_1001FB750((a1 + 1040));
  v8 = *(a1 + 1000);
  if (v8)
  {
    sub_100008080(v8);
  }

  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  v9 = *(a1 + 472);
  if (v9)
  {
    *(a1 + 480) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 392);
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = *(a1 + 352);
  if (v11)
  {
    *(a1 + 360) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 272);
  if (v12)
  {
    sub_100008080(v12);
  }

  v15 = (a1 + 240);
  sub_100253CCC(&v15);
  v13 = *(a1 + 216);
  if (v13)
  {
    sub_100008080(v13);
  }

  return a1;
}

void sub_1007EFBF0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 264)
  {
    v4 = *(i - 48);
    if (v4)
    {
      sub_100008080(v4);
    }
  }

  a1[1] = v2;
}

void sub_1007EFC3C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1002540A8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1007EFC90(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {

    sub_100008080(v3);
  }
}

uint64_t sub_1007EFD40(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_102472578;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 32) = sub_1000081AC();
  return a1;
}

void sub_1007EFDC8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102472578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

BOOL sub_1007EFE24(float32x2_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  sub_1007EFEAC(a1, a2, a3);
  v7 = a1->u16[3];
  if (v7 >= 0x100)
  {
    v8 = *(a2 + 48);
    *a4 = v8;
    memset(v10, 0, sizeof(v10));
    sub_1007F0080(a1, v10, v8);
    *(a4 + 8) = sub_100D09EE4(&a1[407], v10);
    *(a4 + 12) = sub_100D0A54C(v10);
  }

  return v7 > 0xFF;
}

float32_t sub_1007EFEAC(float32x2_t *a1, uint64_t a2, _DWORD *a3)
{
  v6 = sub_10011E6AC(a2);
  v8 = v7;
  v10 = v9;
  v29 = *(a2 + 16);
  v30 = *(a2 + 24);
  sub_100AEA7C8(a2, v25);
  v26 = sub_1010BD498(v25);
  v27 = v11;
  v28 = v12;
  v13 = v29;
  v14 = v30;
  v15 = sub_1007F0208(a1, a2);
  v16 = 0;
  v17 = 0.0;
  do
  {
    v17 = v17 + (*(&v29 + v16) * *(&v29 + v16));
    v16 += 4;
  }

  while (v16 != 12);
  v18 = sqrtf(v17);
  v19 = -v6;
  if (*a3 == a3[1])
  {
    v19 = v6;
  }

  v24 = v19;
  v20 = ((v8 * *(&v13 + 1)) + (v6 * *&v13)) + (v10 * v14);
  sub_10065CF38(a1 + 2, &v26);
  LODWORD(v21) = v27;
  a1[386].f32[0] = v26 + a1[386].f32[0];
  ++*&a1[387];
  a1[388].f32[0] = *&v21 + a1[388].f32[0];
  ++*&a1[389];
  a1[390].f32[0] = v28 + a1[390].f32[0];
  ++*&a1[391];
  a1[392].f32[0] = v18 + a1[392].f32[0];
  ++*&a1[393];
  a1[396].f32[0] = fabsf(v15) + a1[396].f32[0];
  ++*&a1[397];
  a1[394].f32[0] = fabsf(v20) + a1[394].f32[0];
  ++*&a1[395];
  *&v22 = v15;
  sub_1007F02B0(a1 + 400, v22, -v20, v21);
  result = v24 + a1[398].f32[0];
  a1[398].f32[0] = result;
  ++*&a1[399];
  return result;
}

void sub_1007F0080(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  sub_1007F048C();
  v22 = __PAIR64__(v6, v5);
  v23 = v7;
  v8 = sub_1007F035C((a1 + 4), &v22, v25);
  v10 = 0;
  *v24 = v8;
  v24[1] = v11;
  *&v24[2] = v9;
  v12 = 0.0;
  do
  {
    v13 = *&v24[v10];
    if (v13 < 0.0)
    {
      v13 = -v13;
    }

    v12 = v12 + v13;
    ++v10;
  }

  while (v10 != 3);
  *(a2 + 24) = (1.0 - (fabsf(v9) / v12)) * 100.0;
  *(a1 + 4) = 0;
  *(a1 + 3088) = 0;
  *(a1 + 3096) = 0;
  *(a1 + 3104) = 0;
  *(a1 + 3112) = 0;
  *(a1 + 3120) = 0;
  *(a1 + 3128) = 0;
  v14 = *(a1 + 3144);
  v15 = 0.0;
  v16 = 0.0;
  if (v14)
  {
    v16 = *(a1 + 3136) / v14;
  }

  *(a2 + 8) = v16;
  *(a1 + 3136) = 0;
  *(a1 + 3144) = 0;
  v17 = *(a1 + 3176);
  if (v17)
  {
    v15 = *(a1 + 3168) / v17;
  }

  *(a2 + 16) = v15;
  *(a1 + 3168) = 0;
  *(a1 + 3176) = 0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = *(a1 + 3160);
  if (v20)
  {
    v19 = *(a1 + 3152) / v20;
  }

  *(a2 + 12) = v19;
  *(a1 + 3152) = 0;
  *(a1 + 3160) = 0;
  *(a2 + 20) = fabsf(sub_1007F04DC(a1 + 3200));
  *(a1 + 3248) = 0;
  *(a1 + 3200) = 0u;
  *(a1 + 3216) = 0u;
  *(a1 + 3228) = 0u;
  v21 = *(a1 + 3192);
  if (v21)
  {
    v18 = *(a1 + 3184) / v21;
  }

  *(a2 + 28) = v18;
  *(a1 + 3184) = 0;
  *(a1 + 3192) = 0;
}

float sub_1007F0208(float *a1, float *a2)
{
  if ((atomic_load_explicit(&qword_102659FE8, memory_order_acquire) & 1) == 0)
  {
    v14 = a2;
    sub_1019401EC();
    a2 = v14;
  }

  v4 = a2[8];
  v3 = a2[9];
  v5 = a2[7];
  v6 = (v4 * *&dword_102659FF8) - (v3 * *(&qword_102659FF0 + 1));
  v7 = (v3 * *&qword_102659FF0) - (v5 * *&dword_102659FF8);
  v8 = (v5 * *(&qword_102659FF0 + 1)) - (v4 * *&qword_102659FF0);
  v9 = sub_10011E6AC(a2);
  v12 = -(((v7 * v10) + (v9 * v6)) + (v11 * v8));
  result = v12 - *a1;
  *a1 = v12;
  return result;
}

float32_t sub_1007F02B0(float32x2_t *a1, double a2, float a3, double a4)
{
  LODWORD(a4) = a1[1].i32[0];
  v4 = *&a2 - *&a4;
  v5 = *a1 + 1;
  *&a4 = *&a4 + ((*&a2 - *&a4) / v5);
  v6 = a1[1].f32[1] + (v4 * (*&a2 - *&a4));
  v7 = a1[3].f32[0];
  v8 = a3 - v7;
  v9 = *&a1[2] + 1;
  v10 = v7 + ((a3 - v7) / v9);
  v11 = a1[3].f32[1] + (v8 * (a3 - v10));
  *a1 = v5;
  a1[1].i32[0] = LODWORD(a4);
  a1[1].f32[1] = v6;
  a1[2] = v9;
  a1[3].f32[0] = v10;
  a1[3].f32[1] = v11;
  v12 = *&a1[6] + 1;
  a1[6] = v12;
  *&a4 = v12;
  v13 = a1[4];
  *(&a2 + 1) = a3;
  _D0 = vdiv_f32(vsub_f32(*&a2, v13), vdup_lane_s32(*&a4, 0));
  a1[4] = vadd_f32(v13, _D0);
  _S1 = (v12 + -1.0) * _D0.f32[0];
  __asm { FMLA            S2, S1, V0.S[1] }

  result = a1[5].f32[0] + _S2;
  a1[5].f32[0] = result;
  return result;
}

float32_t sub_1007F035C(unsigned __int16 *a1, float32x2_t *a2, uint64_t a3)
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  if (a1[1])
  {
    v6 = 0;
    do
    {
      v7 = sub_10065D088(a1, v6);
      v8 = v7[1].f32[0] - a2[1].f32[0];
      v18 = vsub_f32(*v7, *a2);
      v19 = v8;
      sub_1007D5ED8(&v18, v16);
      v9 = 0;
      do
      {
        *(&v13 + v9) = sub_1007D5F60(v16, v9) + *(&v13 + v9);
        ++v9;
      }

      while (v9 != 9);
      ++v6;
    }

    while (v6 < a1[1]);
  }

  v16[0] = v13;
  v16[1] = v14;
  v17 = v15;
  v18.i32[0] = sub_1007D5F9C(v16, a3);
  v18.i32[1] = v10;
  v19 = v11;
  *&v16[0] = &v18;
  *(&v16[0] + 1) = a3;
  sub_1007D6564(v16, 0, 1uLL);
  sub_1007D6564(v16, 0, 2uLL);
  sub_1007D6564(v16, 1uLL, 2uLL);
  return v18.f32[0];
}

float sub_1007F04DC(uint64_t a1)
{
  v1 = 0.0;
  v2 = 0.0;
  if (*a1 >= 2uLL)
  {
    v2 = *(a1 + 12) / (*a1 - 1);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2)
  {
    v1 = *(a1 + 28) / (v3 - 1);
  }

  v4 = v2 * v1;
  result = 0.0;
  if (v4 > 0.0)
  {
    v6 = *(a1 + 48);
    if (v6 >= 2)
    {
      result = (v6 / (v6 + -1.0)) * *(a1 + 40);
    }

    return result / sqrtf(v4);
  }

  return result;
}

void *sub_1007F055C(void *a1)
{
  *a1 = 0;
  v2 = dispatch_queue_create("com.apple.CoreMotion.CLPressureBiasProxy", 0);
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = v2;
  return a1;
}

uint64_t sub_1007F059C(uint64_t a1)
{
  dispatch_release(*(a1 + 8));
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    _Block_release(v3);
  }

  sub_1007F08A8(a1, 0);
  return a1;
}

void sub_1007F05F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007F0668;
  block[3] = &unk_102449A78;
  block[4] = a1;
  dispatch_sync(v1, block);
}

uint64_t sub_1007F0668(uint64_t result)
{
  if (!**(result + 32))
  {
    operator new();
  }

  return result;
}

void sub_1007F0838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a18)
  {
    sub_100008080(a18);
  }

  _Unwind_Resume(exception_object);
}

CLConnectionClient *sub_1007F08A8(CLConnectionClient **a1, CLConnectionClient *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CLConnectionClient::~CLConnectionClient(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1007F08F4(uint64_t a1, CLConnectionMessage **a2)
{
  v2 = *(a1 + 32);
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  sub_100005548(v11, Dictionary);
  if (*(v2 + 16) && *(v2 + 24) && !sub_1004FEEE8(v11) && sub_100C71A60(v10, v11))
  {
    v4 = *(v2 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007F0B18;
    block[3] = &unk_1024725B8;
    block[4] = v2;
    v9[0] = *v10;
    *(v9 + 13) = *&v10[13];
    dispatch_async(v4, block);
  }

  else
  {
    if (qword_1025D4310 != -1)
    {
      sub_10194024C();
    }

    v5 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "Bad pressure bias from daemon.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101940274(buf);
      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLPressureBiasProxy::start()_block_invoke", "%s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return sub_100005DA4(v11);
}

void sub_1007F0AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

void sub_1007F0B34(uint64_t a1)
{
  v1 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007F0BA8;
  block[3] = &unk_102449A78;
  block[4] = a1;
  dispatch_sync(v1, block);
}

void sub_1007F0BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007F0C2C;
  block[3] = &unk_1024725E0;
  block[5] = a3;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(v3, block);
}

void sub_1007F0C2C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 24);
  if (v3)
  {
    _Block_release(v3);
  }

  *(v2 + 24) = _Block_copy(*(a1 + 40));
  v4 = *(v2 + 16);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 32);
  *(v2 + 16) = v5;

  dispatch_retain(v5);
}

void *sub_1007F0D30(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_1007F0D8C((a1 + 3), a2);
  return a1;
}

uint64_t sub_1007F0D8C(uint64_t a1, char *a2)
{
  sub_10000EC00(&__p, a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_1007F0DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F0E00(void *a1, void *a2)
{
  *a1 = off_102472630;
  a1[3] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  sub_1007F2DF8((a1 + 11), 0, 0);
  a1[17] = 0;
  a1[18] = 0;
  a1[4] = a2;
  if (qword_1025D4270 != -1)
  {
    sub_1019402B8();
  }

  v4 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "CMEllipticalAlgorithm: Calculating coefficients", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019402CC(buf);
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CMEllipticalAlgorithm::CMEllipticalAlgorithm(dispatch_queue_t, std::function<void (CMPedEntry)>)", "%s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  sub_1007F10C0(buf);
  operator new();
}

void sub_1007F1038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  sub_1003EE180(v14 + 11);
  v16 = v14[10];
  if (v16)
  {
    sub_100008080(v16);
  }

  sub_1004F80B4((v14 + 5));
  v17 = v14[3];
  v14[3] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1007F10C0(const void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  v2 = 0.0;
  v3 = -62;
  a1[2] = 0;
  do
  {
    sub_1010BDB10(v3 * 0.14);
    v5 = v4 * ((cosf((v3 + 62) * 0.050671) * -0.46) + 0.54);
    v6 = v5;
    v8 = a1[1];
    v7 = a1[2];
    if (v8 >= v7)
    {
      v10 = *a1;
      v11 = v8 - *a1;
      v12 = v11 >> 2;
      v13 = (v11 >> 2) + 1;
      if (v13 >> 62)
      {
        sub_10028C64C();
      }

      v14 = v7 - v10;
      if (v14 >> 1 > v13)
      {
        v13 = v14 >> 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v15 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        sub_1000B85D0(a1, v15);
      }

      *(4 * v12) = v6;
      v9 = 4 * v12 + 4;
      memcpy(0, v10, v11);
      v16 = *a1;
      *a1 = 0;
      a1[1] = v9;
      a1[2] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v8 = v6;
      v9 = (v8 + 1);
    }

    a1[1] = v9;
    v2 = v2 + v5;
    ++v3;
  }

  while (v3 != 63);
  v17 = 0;
  v18 = *a1;
  do
  {
    v19 = *&v18[v17] / v2;
    *&v18[v17] = v19;
    v17 += 4;
  }

  while (v17 != 500);
}

void sub_1007F1260(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007F1288(uint64_t a1)
{
  *a1 = off_102472630;

  sub_1003EE180((a1 + 88));
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100008080(v2);
  }

  sub_1004F80B4(a1 + 40);
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1007F1324(uint64_t a1)
{
  sub_1007F1288(a1);

  operator delete();
}

uint64_t sub_1007F135C(uint64_t result)
{
  if (!*(result + 24))
  {
    if (qword_1025D4270 != -1)
    {
      sub_1019402B8();
    }

    v1 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_INFO, "CMEllipticalAlgorithm: Algorithm Started", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101940310();
    }

    v3 = 19;
    strcpy(__p, "EllipticalAlgorithm");
    operator new();
  }

  return result;
}

void *sub_1007F14F4(void *result)
{
  if (result[3])
  {
    v1 = result;
    sub_1007F3374(result + 11, 0, 0);
    v1[17] = 0;
    *(v1 + 36) = 0;
    if (qword_1025D4270 != -1)
    {
      sub_1019402B8();
    }

    v2 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "CMEllipticalAlgorithm: Algorithm Stopped and hard reset of all values", v3, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019403F4();
    }

    *(v1 + 37) = 0;
    result = v1[3];
    v1[3] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_1007F15E4(uint64_t a1, double a2, double a3)
{
  sub_1000A69D8(*(a1 + 24), 0, &v63, a2 + -2.55999994, a2);
  *buf = 4;
  sub_1003DD9F8(v63, buf);
  *buf = 4;
  v5 = sub_1003DD9F8(v63, buf);
  v6 = *v5;
  v7 = v5[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v66;
  if (v66)
  {
    if (v66 == 1 && (*(v5 + 33) & 1) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (qword_1025D45A0 != -1)
    {
      sub_1019405E4();
    }

    v12 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      *&buf[4] = 4;
      *&buf[8] = 1024;
      *&buf[10] = v66;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019405A0(buf);
      v67 = 67109376;
      *v68 = 4;
      *&v68[4] = 1024;
      *&v68[6] = v66;
      v50 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::AccessoryFitnessDM, T = CMEllipticalAlgorithm::AccessoryDMType, Strategy = AccessoryDMConverter]", "%s\n", v50);
      if (v50 != buf)
      {
        free(v50);
      }
    }

    __src = 0;
    v61 = 0;
    v62 = 0;
    goto LABEL_70;
  }

  if ((v5[4] & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v6)
  {
    v10 = v9;
    v11 = 0;
    if (v7 && v9)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = v66;
      v11 = v7;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v14 = v64;
  v13 = v65;
  if (v65 < v64)
  {
    __src = 0;
    v61 = 0;
    v62 = 0;
    if (v11)
    {
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  v15 = vabdd_f64(v65, v64);
  v16 = v15 * 1.00999999 * 50.0;
  if (v16 >= 0x200)
  {
    v17 = 512;
  }

  else
  {
    v17 = v16;
  }

  __src = 0;
  v61 = 0;
  v62 = 0;
  sub_1007F36C0(&__src, v17);
  if (!v10[49])
  {
    goto LABEL_68;
  }

  v56 = v11;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  while (1)
  {
    v23 = (v8 ? sub_1004F7CF0(v10 + 48, v18) + 8 : sub_1004F7CF0(v10 + 48, v18));
    v24 = *v23;
    if (*v23 >= v14)
    {
      break;
    }

LABEL_50:
    ++v18;
    v43 = v10[49];
    if (v18 >= v43)
    {
      goto LABEL_53;
    }
  }

  if (v24 <= v13)
  {
    if (v24 >= v14 && v24 < v13)
    {
      if ((v19 & 1) == 0)
      {
        v20 = v18;
        v19 = 1;
      }

      v26 = sub_1004F7CF0(v10 + 48, v18);
      v27.i64[0] = *v26;
      v28 = *(v26 + 16);
      v29 = *(v26 + 48);
      HIDWORD(v28) = v29.i32[0];
      *&buf[8] = v28;
      *buf = v27.i64[0];
      *&buf[24] = vext_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL), 4uLL);
      *v77 = v29.i32[3];
      sub_10011E648(&buf[20], v27);
      v30 = v61;
      if (v61 >= v62)
      {
        v34 = __src;
        v35 = v61 - __src;
        v36 = 0xCCCCCCCCCCCCCCCDLL * ((v61 - __src) >> 3);
        v37 = v36 + 1;
        if (v36 + 1 > 0x666666666666666)
        {
          sub_10028C64C();
        }

        if (0x999999999999999ALL * ((v62 - __src) >> 3) > v37)
        {
          v37 = 0x999999999999999ALL * ((v62 - __src) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v62 - __src) >> 3) >= 0x333333333333333)
        {
          v37 = 0x666666666666666;
        }

        if (v37)
        {
          sub_100400700(&__src, v37);
        }

        v38 = 8 * ((v61 - __src) >> 3);
        v39 = *buf;
        v40 = *&buf[16];
        *(v38 + 32) = *v77;
        *v38 = v39;
        *(v38 + 16) = v40;
        v33 = (40 * v36 + 40);
        v41 = (v38 - v35);
        memcpy((v38 - v35), v34, v35);
        v42 = __src;
        __src = v41;
        v61 = v33;
        v62 = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        v31 = *buf;
        v32 = *&buf[16];
        *(v61 + 4) = *v77;
        *v30 = v31;
        v30[1] = v32;
        v33 = (v30 + 40);
      }

      v61 = v33;
      v21 = 1;
      v22 = v18;
    }

    goto LABEL_50;
  }

  LODWORD(v43) = v10[49];
LABEL_53:
  v11 = v56;
  if (!v43)
  {
    goto LABEL_68;
  }

  v44 = (v15 * 50.0) + 858993459 * ((v61 - __src) >> 3);
  if (v44 < 0)
  {
    v44 = -v44;
  }

  if (v44 <= (v15 * 0.0500000007 * 50.0))
  {
    goto LABEL_68;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1019405E4();
  }

  v45 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
  {
    if (v19)
    {
      v46 = v20;
    }

    else
    {
      v46 = 0;
    }

    v47 = *sub_1004F7CF0(v10 + 48, v46);
    if (v21)
    {
      v48 = v22;
    }

    else
    {
      v48 = 0;
    }

    v49 = *sub_1004F7CF0(v10 + 48, v48);
    *buf = 134219008;
    *&buf[4] = v14;
    *&buf[12] = 2048;
    *&buf[14] = v13;
    *&buf[22] = 2048;
    *&buf[24] = v47;
    *v77 = 2048;
    *&v77[2] = v49;
    v78 = 2048;
    v79 = 0xCCCCCCCCCCCCCCCDLL * ((v61 - __src) >> 3);
    _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "#Warning, accessory dm returning unexpected size, requested, start, %f, end, %f, returned, start, %f, end, %f, size, %ld", buf, 0x34u);
  }

  v11 = v56;
  if (sub_10000A100(121, 2))
  {
    sub_1019405A0(buf);
    if (v19)
    {
      v51 = v20;
    }

    else
    {
      v51 = 0;
    }

    v52 = *sub_1004F7CF0(v10 + 48, v51);
    if (v21)
    {
      v53 = v22;
    }

    else
    {
      v53 = 0;
    }

    v54 = *sub_1004F7CF0(v10 + 48, v53);
    v67 = 134219008;
    *v68 = v14;
    *&v68[8] = 2048;
    v69 = v13;
    v70 = 2048;
    v71 = v52;
    v72 = 2048;
    v73 = v54;
    v74 = 2048;
    v75 = 0xCCCCCCCCCCCCCCCDLL * ((v61 - __src) >> 3);
    v55 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "const std::vector<T> CMDataProviderFactoryAccessoryFitnessDM::getDataInRange(CFTimeInterval, CFTimeInterval, TimeBase, Strategy) const [T = CMEllipticalAlgorithm::AccessoryDMType, Strategy = AccessoryDMConverter]", "%s\n", v55);
    if (v55 != buf)
    {
      free(v55);
    }

    v11 = v56;
    if (v56)
    {
LABEL_69:
      sub_100008080(v11);
    }
  }

  else
  {
LABEL_68:
    if (v11)
    {
      goto LABEL_69;
    }
  }

LABEL_70:
  if (v7)
  {
    sub_100008080(v7);
  }

  __p = 0;
  v58 = 0;
  v59 = 0;
  sub_1007F2D30(&__p, __src, v61, 0xCCCCCCCCCCCCCCCDLL * ((v61 - __src) >> 3));
  sub_1007F1F08(a1, &__p, a3);
  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v61 = __src;
    operator delete(__src);
  }
}

void sub_1007F1D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  if (v32)
  {
    sub_100008080(v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F1F08(uint64_t a1, uint64_t *a2, double a3)
{
  v4 = *a2;
  v5 = a2[1];
  if (v5 == v4)
  {
    if (qword_1025D4270 != -1)
    {
      sub_1019402B8();
    }

    v15 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CMEllipticalAlgorithm: No data", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101940718();
    }
  }

  else
  {
    v9 = *(a1 + 136);
    if (v9 > 0.0 && *v4 > v9 + 5.0)
    {
      if (qword_1025D4270 != -1)
      {
        sub_1019402B8();
      }

      v10 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "CMEllipticalAlgorithm: History expired since kDurationExpired was hit", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194060C();
      }

      sub_1007F3374((a1 + 88), 0, 0);
      v5 = a2[1];
      *(a1 + 136) = *(v5 - 40);
      v4 = *a2;
    }

    v42 = 0;
    v43 = 0;
    __p = 0;
    sub_1007F2D30(&__p, v4, v5, 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3));
    sub_1007F25C0(&__p, &v44);
    if (__p)
    {
      v42 = __p;
      operator delete(__p);
    }

    v11 = v44;
    if (v45 == v44)
    {
      v14 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      do
      {
        if (*(a1 + 128) > 0x7CuLL)
        {
          break;
        }

        sub_100023E4C((a1 + 88), &v11[v12]);
        ++v13;
        v11 = v44;
        v12 += 4;
      }

      while (v13 < (v45 - v44) >> 2);
      v14 = v13;
    }

    v16 = 0;
    __src = 0;
    v39 = 0;
    v40 = 0;
    if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) > v14)
    {
      v17 = 4 * v14;
      do
      {
        *(a1 + 120) = vaddq_s64(*(a1 + 120), xmmword_101C66230);
        sub_1000A6D68(a1 + 88, 1);
        sub_100023E4C((a1 + 88), (v44 + v17));
        v18 = sub_1007F2748(a1);
        v19 = v39;
        if (v39 >= v40)
        {
          v20 = __src;
          v21 = v39 - __src;
          v22 = (v39 - __src) >> 2;
          v23 = v22 + 1;
          if ((v22 + 1) >> 62)
          {
            sub_10028C64C();
          }

          v24 = v40 - __src;
          if ((v40 - __src) >> 1 > v23)
          {
            v23 = v24 >> 1;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v25 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            sub_1000B85D0(&__src, v25);
          }

          *(4 * v22) = v18;
          v16 = (4 * v22 + 4);
          memcpy(0, v20, v21);
          v26 = __src;
          __src = 0;
          v39 = v16;
          v40 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v39 = v18;
          v16 = v19 + 1;
        }

        v39 = v16;
        ++v14;
        v17 += 4;
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) > v14);
    }

    if (*(a1 + 128) < 0x7DuLL || v16 == __src)
    {
      if (qword_1025D4270 != -1)
      {
        sub_1019406F0();
      }

      v28 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "CMEllipticalAlgorithm: Not enough data", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019402CC(buf);
        v37 = 0;
        v29 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CMEllipticalAlgorithm::feedAccessorySamples(std::vector<AccessoryDMType>, CFAbsoluteTime)", "%s\n", v29);
        if (v29 != buf)
        {
          free(v29);
        }
      }
    }

    else
    {
      if (qword_1025D4270 != -1)
      {
        sub_1019406F0();
      }

      v27 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "CMEllipticalAlgorithm: Filtered data and detecting crossings", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019402CC(buf);
        v37 = 0;
        v30 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CMEllipticalAlgorithm::feedAccessorySamples(std::vector<AccessoryDMType>, CFAbsoluteTime)", "%s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      v34 = 0;
      v35 = 0;
      v36 = 0;
      sub_10038EB38(&v34, __src, v39, (v39 - __src) >> 2);
      v31 = 0;
      v32 = 0;
      v33 = 0;
      sub_1007F2D30(&v31, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
      sub_1007F27F0(a1, &v34, &v31, a3);
      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }
    }

    if (__src)
    {
      v39 = __src;
      operator delete(__src);
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }
  }
}

void sub_1007F252C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F25C0(uint64_t *a1@<X1>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2;
      v6 = *(v2 + 16);
      v24 = *(v2 + 32);
      v22 = v5;
      v23 = v6;
      v21[0] = sub_100AEA718((&v23 + 4), v5);
      v21[1] = v7;
      v21[2] = v8;
      v21[3] = v9;
      sub_100AEA7D0(v21, -v22.f32[2], -v22.f32[3], -*&v23);
      v12 = a2[1];
      v11 = a2[2];
      if (v12 >= v11)
      {
        v14 = *a2;
        v15 = v12 - *a2;
        v16 = v15 >> 2;
        v17 = (v15 >> 2) + 1;
        if (v17 >> 62)
        {
          sub_10028C64C();
        }

        v18 = v11 - v14;
        if (v18 >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          sub_1000B85D0(a2, v19);
        }

        *(4 * v16) = v10;
        v13 = 4 * v16 + 4;
        memcpy(0, v14, v15);
        v20 = *a2;
        *a2 = 0;
        a2[1] = v13;
        a2[2] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v12 = v10;
        v13 = (v12 + 4);
      }

      a2[1] = v13;
      v2 += 40;
    }

    while (v2 != v3);
  }
}

void sub_1007F2724(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float sub_1007F2748(uint64_t a1)
{
  v1 = *(a1 + 96);
  result = 0.0;
  if (*(a1 + 104) != v1)
  {
    v3 = *(a1 + 120);
    v4 = (v1 + 8 * (v3 >> 10));
    v5 = (*v4 + 4 * (v3 & 0x3FF));
    v6 = *(v1 + (((*(a1 + 128) + v3) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 128) + v3) & 0x3FF);
    if (v5 != v6)
    {
      v7 = **(a1 + 72);
      v8 = 124;
      do
      {
        if ((*(*(a1 + 72) + 8) - v7) >> 2 <= v8)
        {
          sub_10046F324();
        }

        v9 = *v5++;
        v10 = v9;
        if ((v5 - *v4) == 4096)
        {
          v11 = v4[1];
          ++v4;
          v5 = v11;
        }

        result = result + (v10 * *(v7 + 4 * v8--));
      }

      while (v5 != v6);
    }
  }

  return result;
}

void sub_1007F27F0(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 < *(a1 + 144))
  {
    v5 = *(a1 + 144);
  }

  *(a1 + 144) = v5;
  if (*(a2 + 8) - v4 >= 5uLL)
  {
    v9 = 0;
    v10 = 40;
    v11 = a4 + -2.55999994;
    do
    {
      v12 = &v4[v9];
      v13 = v12[1];
      if (v13 < *(a1 + 144))
      {
        v13 = *(a1 + 144);
      }

      *(a1 + 144) = v13;
      if (*v12 < 0.0 && v12[1] > 0.0)
      {
        v14 = *(*a3 + v10);
        v15 = v14 - *(a1 + 136);
        v16 = v15 > 0.300000012 && v15 < 1.0;
        if (v16 && v13 > 0.15)
        {
          if (qword_1025D4270 != -1)
          {
            sub_1019406F0();
          }

          v17 = qword_1025D4278;
          if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
          {
            v18 = *(*a3 + v10);
            *buf = 134217984;
            *&buf[4] = v18;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "CMEllipticalAlgorithm: Step Detected at timestamp: %f", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4270 != -1)
            {
              sub_1019406F0();
            }

            v30 = *(*a3 + v10);
            v34 = 134217984;
            v35 = v30;
            v31 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CMEllipticalAlgorithm::detectCrossing(std::vector<scalar_32>, std::vector<AccessoryDMType>, CFAbsoluteTime)", "%s\n", v31);
            if (v31 != buf)
            {
              free(v31);
            }
          }

          v19 = *(*a3 + v10);
          *(a1 + 8) = v19;
          *(a1 + 16) = *(a1 + 144);
          *(a1 + 136) = v19;
          *(a1 + 144) = 0;
          v20 = *(a1 + 148);
          if (v20 >= 1000001)
          {
            if (qword_1025D4270 != -1)
            {
              sub_1019406F0();
            }

            v21 = qword_1025D4278;
            if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "CMEllipticalAlgorithm: Way too many steps, must be a bug", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1019407FC(&v32, v33);
            }

            v20 = 1;
          }

          *(a1 + 148) = v20 + 1;
          *buf = v11 + ((v9 + 1) / 50.0);
          *&buf[8] = 0;
          LOBYTE(v39) = 1;
          *&v40[2] = 0;
          v22 = *(a1 + 64);
          if (!v22)
          {
            sub_1000CF05C();
          }

          (*(*v22 + 48))(v22, buf);
        }

        else
        {
          *(a1 + 136) = v14;
          if (qword_1025D4270 != -1)
          {
            sub_1019406F0();
          }

          v23 = qword_1025D4278;
          if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
          {
            v24 = *(*a3 + v10) - *(a1 + 136);
            v25 = *(a1 + 144);
            *buf = 134218240;
            *&buf[4] = v24;
            v39 = 2048;
            *v40 = v25;
            _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_INFO, "CMEllipticalAlgorithm: Duration or amplitude threshold not met, time delta: %f, amplitude: %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4270 != -1)
            {
              sub_1019406F0();
            }

            v27 = *(*a3 + v10) - *(a1 + 136);
            v28 = *(a1 + 144);
            v34 = 134218240;
            v35 = v27;
            v36 = 2048;
            v37 = v28;
            v29 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CMEllipticalAlgorithm::detectCrossing(std::vector<scalar_32>, std::vector<AccessoryDMType>, CFAbsoluteTime)", "%s\n", v29);
            if (v29 != buf)
            {
              free(v29);
            }
          }
        }
      }

      v4 = *a2;
      v10 += 40;
      v26 = v9 + 2;
      ++v9;
    }

    while (v26 < (*(a2 + 8) - *a2) >> 2);
  }
}

uint64_t sub_1007F2D30(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1007F2DAC(result, a4);
  }

  return result;
}

void sub_1007F2D90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F2DAC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_100400700(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_1007F2DF8(uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_1007F2E44(a1, a2, (4 * a3) >> 2);
  return a1;
}

void *sub_1007F2E44(void *a1, int *a2, unint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 7) - 1;
  }

  v9 = a1[5] + a1[4];
  v10 = v8 - v9;
  if (a3 > v10)
  {
    sub_1007F2F68(a1, a3 - v10);
    v6 = a1[1];
    v7 = a1[2];
    v9 = a1[4] + a1[5];
  }

  v11 = (v6 + 8 * (v9 >> 10));
  if (v7 == v6)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = *v11 + 4 * (v9 & 0x3FF);
    v13 = v12;
  }

  v21[0] = v11;
  v21[1] = v13;
  result = sub_1007F3280(v21, a3);
  if (v12 != v15)
  {
    v16 = a1[5];
    do
    {
      if (v11 == result)
      {
        v17 = v15;
      }

      else
      {
        v17 = *v11 + 4096;
      }

      if (v12 == v17)
      {
        v17 = v12;
      }

      else
      {
        v18 = v12;
        do
        {
          v19 = *a2++;
          *v18++ = v19;
        }

        while (v18 != v17);
      }

      v16 += (v17 - v12) >> 2;
      if (v11 == result)
      {
        break;
      }

      v20 = v11[1];
      ++v11;
      v12 = v20;
    }

    while (v20 != v15);
    a1[5] = v16;
  }

  return result;
}

void *sub_1007F2F68(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x3FF) != 0)
  {
    v5 = (v4 >> 10) + 1;
  }

  else
  {
    v5 = v4 >> 10;
  }

  v6 = result[4];
  if (v5 >= v6 >> 10)
  {
    v7 = v6 >> 10;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 10)
  {
    for (result[4] = v6 - (v7 << 10); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_1003112A0(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_1003EE744(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 10; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_1003112A0(v2, v16);
    }
  }

  return result;
}

void sub_1007F320C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007F3280(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 2);
    if (v4 < 1)
    {
      result -= (1023 - v4) >> 10;
    }

    else
    {
      result += v4 >> 10;
    }
  }

  return result;
}

void sub_1007F3304(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102472698;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1007F3358(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_1007F3374(void *a1, char *__src, unint64_t a3)
{
  v5 = a1[5];
  if (v5 >= a3)
  {
    v10 = a1[1];
    v11 = (v10 + 8 * (a1[4] >> 10));
    if (a1[2] == v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = *v11 + 4 * (a1[4] & 0x3FFLL);
    }

    sub_1007F3554(__src, v12, &__src[4 * a3], v11, v14);
    return sub_1007F3458(a1, v14[1], v14[2]);
  }

  else
  {
    v6 = &__src[4 * v5];
    v7 = a1[1];
    v8 = (v7 + 8 * (a1[4] >> 10));
    if (a1[2] == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = *v8 + 4 * (a1[4] & 0x3FFLL);
    }

    sub_1007F3554(__src, v9, v6, v8, v14);
    return sub_1007F2E44(a1, v6, a3 - a1[5]);
  }
}

uint64_t sub_1007F3458(uint64_t result, char *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 >> 10));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 4 * (v5 & 0x3FF);
  }

  if (v9 != a3)
  {
    v10 = ((v9 - *v8) >> 2) + ((v8 - a2) << 7);
    v11 = a3 - *a2;
    v12 = v10 - (v11 >> 2);
    if (v12 >= 1)
    {
      v13 = (v6 + 8 * (v4 >> 10));
      if (v7 == v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = *v13 + 4 * (*(result + 32) & 0x3FFLL);
      }

      v16[0] = v13;
      v16[1] = v14;
      if (a3 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = (v11 >> 2) + ((a2 - v13) << 7) - ((v14 - *v13) >> 2);
      }

      sub_1007F3280(v16, v15);
      v3[5] -= v12;
      do
      {
        result = sub_1007F3620(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

char *sub_1007F3554@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 2 >= v11 >> 2 ? v11 >> 2 : (a3 - v9) >> 2;
      if (v12)
      {
        __src = memmove(__dst, v9, 4 * v12);
      }

      v9 += 4 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 4 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

uint64_t sub_1007F3620(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 7) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x400)
  {
    a2 = 1;
  }

  if (v5 < 0x800)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *sub_1007F36C0(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      sub_100400700(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

void sub_1007F3780()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

uint64_t sub_1007F37F8()
{
  v1 = 4;
  qword_10265A008 = 0;
  unk_10265A010 = 0;
  qword_10265A000 = 0;
  sub_1004579D4(&qword_10265A000, &v1, &v2, 1uLL);
  return __cxa_atexit(sub_1004F4E20, &qword_10265A000, dword_100000000);
}

uint64_t sub_1007F386C(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_101CA7B18;
  *(a1 + 32) = unk_101CA7B28;
  *(a1 + 80) = xmmword_101CA7AF0;
  v4 = (a1 + 80);
  *(a1 + 48) = xmmword_101CA7B38;
  *(a1 + 96) = 0x415BAF8000000000;
  v5 = (a1 + 96);
  *(a1 + 60) = *(&xmmword_101CA7B38 + 12);
  *(a1 + 104) = xmmword_101CA7B00;
  v6 = (a1 + 104);
  v7 = sub_100011660();
  sub_100185AC0(v7, buf);
  sub_1000B9370(*buf, "VO2MaxAlertBlackoutDuration", v4);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v8 = sub_100011660();
  sub_100185AC0(v8, buf);
  sub_1000B9370(*buf, "VO2MaxRepeatAlertWindow", (a1 + 88));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v9 = sub_100011660();
  sub_100185AC0(v9, buf);
  sub_1000B9370(*buf, "VO2MaxAlertHistoricalEstimateWindow", v5);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v10 = sub_100011660();
  sub_100185AC0(v10, buf);
  sub_10005BBE4(*buf, "VO2MaxAlertMaxHistoricalEstimates", v6);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v11 = sub_100011660();
  sub_100185AC0(v11, buf);
  sub_10005BBE4(*buf, "VO2MaxAlertMinDaysWithEstimate", (a1 + 108));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v12 = sub_100011660();
  sub_100185AC0(v12, buf);
  sub_10005BBE4(*buf, "VO2MaxAlertMinWorkoutsContrToEstimate", (a1 + 112));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v13 = sub_100011660();
  sub_100185AC0(v13, buf);
  sub_10005BBE4(*buf, "VO2MaxAlertMinEstimatesSinceAlgChange", (a1 + 116));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if (qword_1025D4230 != -1)
  {
    sub_10194090C();
  }

  v14 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v15 = *v4;
    v16 = *(a1 + 88);
    v17 = *v5;
    v18 = *v6;
    v19 = *(a1 + 108);
    v20 = *(a1 + 116);
    *buf = 134284801;
    *&buf[4] = v15;
    *&buf[12] = 2049;
    *&buf[14] = v16;
    v27 = 2049;
    v28 = v17;
    v29 = 1025;
    v30 = v18;
    v31 = 1025;
    v32 = v19;
    v33 = 1025;
    v34 = v20;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "VO2MaxAlert,fAlertBlackoutDuration,%{private}.3f,fRepeatAlertWindow,%{private}.3f,fHistoricalEstimateWindow,%{private}.3f,fMaxHistoricalEstimatesForAlert,%{private}d,fMinDaysWithEstimate,%{private}d,fMinEstimatesSinceAlgChange,%{private}d", buf, 0x32u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101940934(buf);
    v25 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLVO2MaxAlertEvaluator::CLVO2MaxAlertEvaluator(std::shared_ptr<CLVO2MaxAlertRecorderDb>)", "%s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  v22 = *a2;
  v21 = a2[1];
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = *(a1 + 8);
  *a1 = v22;
  *(a1 + 8) = v21;
  if (v23)
  {
    sub_100008080(v23);
  }

  return a1;
}

void sub_1007F3C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 + 8);
  if (v22)
  {
    sub_100008080(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F3CB8(_OWORD *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(a1 + 60) = *(a2 + 44);
  a1[2] = v4;
  a1[3] = v5;
  a1[1] = v3;
  if (qword_1025D4230 != -1)
  {
    sub_101940978();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v7 = *(a2 + 5);
    v8 = *a2;
    v9 = *(a2 + 1);
    v10[0] = 67175169;
    v10[1] = v8;
    v11 = 2049;
    v12 = v7;
    v13 = 1025;
    v14 = v9;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "VO2MaxAlert,gender,%{private}d,age,%{private}f,biologicalSex,%{private}d", v10, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194098C(a2);
  }
}

void sub_1007F3DC8(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v54 = sub_100C42080(*(a1 + 36));
  v7 = sub_1007F4568(*a1, v62);
  v8 = v7 && v63 + *(a1 + 80) > a3;
  v9 = *(a1 + 96);
  __p = 0;
  v60 = 0;
  v61 = 0;
  v10 = sub_10104516C();
  v11 = a3 - v9;
  sub_101045984(v10, &__p, 1, *(a1 + 104));
  v13 = sub_1007F464C(v12, 0);
  v15 = sub_1007F464C(v14, 1);
  v16 = sub_10121C65C(*(a1 + 20), *(a1 + 36));
  v56 = v7;
  v17 = __p;
  v18 = v60;
  if (v60 == __p)
  {
    v21 = 0;
    v20 = 0;
  }

  else
  {
    v19 = v16;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = *(v18 - 16);
      v24 = vcvtmd_s64_f64((v23 + a4) / 86400.0);
      v25 = v22 < v24;
      if (v22 <= v24)
      {
        v22 = v24;
      }

      if (v25)
      {
        ++v21;
      }

      if (v23 >= v13)
      {
        ++v20;
      }

      if (v19 > 0.0 && v23 < v15)
      {
        if (qword_1025D4230 != -1)
        {
          sub_10194090C();
        }

        v26 = qword_1025D4238;
        if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
        {
          v27 = *(v18 - 16);
          v28 = *(v18 - 15);
          *buf = 134349568;
          *&buf[4] = v27;
          *&buf[12] = 2050;
          *&buf[14] = v28;
          *&buf[22] = 2050;
          *v100 = v19;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "VO2MaxAlert,HistoricalEstimateBiasAdjustment,startTime,%{public}.3f,estimatedVO2Max,%{public}.3f,biasAdjustment,%{public}.3f", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101940934(buf);
          v29 = *(v18 - 16);
          v30 = *(v18 - 15);
          v64 = 134349568;
          *v65 = v29;
          *&v65[8] = 2050;
          *&v65[10] = v30;
          *&v65[18] = 2050;
          *v66 = v19;
          v31 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "VO2MaxAlertResult CLVO2MaxAlertEvaluator::evaluateForAlert(CFAbsoluteTime, CFTimeInterval)", "%s\n", v31);
          if (v31 != buf)
          {
            free(v31);
          }
        }

        *(v18 - 15) = v19 + *(v18 - 15);
        v17 = __p;
      }

      v18 -= 19;
    }

    while (v18 != v17);
    v18 = v60;
  }

  v32 = !v54;
  if (v17 == v18)
  {
    v53 = 0;
  }

  else
  {
    v53 = *(v17 + 28);
  }

  v33 = 0;
  v34 = *(a1 + 108);
  v35 = *(a1 + 116);
  if (((v32 | v8) & 1) == 0)
  {
    v36 = v21 >= v34 && v53 >= *(a1 + 112);
    if (v36 && v20 >= v35)
    {
      v33 = sub_1007F4740(a1, &__p);
    }
  }

  v57 = v56 && v63 + *(a1 + 88) > a3;
  if (__p == v60)
  {
    v38 = 0xBFF0000000000000;
  }

  else
  {
    v38 = *(__p + 4);
  }

  v55 = v38;
  sub_100C41F40(v58);
  v39 = sub_100C42184(v58, *(a1 + 20), *(a1 + 36));
  if (qword_1025D4230 != -1)
  {
    sub_10194090C();
  }

  v40 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v41 = v63;
    v42 = *(a1 + 36);
    if (!v56)
    {
      v41 = 0.0;
    }

    v43 = *(a1 + 80);
    v44 = *(a1 + 88);
    *buf = 67245057;
    *&buf[4] = v32;
    *&buf[8] = 2049;
    *&buf[10] = v42;
    *&buf[18] = 1026;
    *&buf[20] = v8;
    *v100 = 2049;
    *&v100[2] = v41;
    v101 = 2049;
    v102 = v43;
    v103 = 2050;
    v104 = a3;
    v105 = 1026;
    v106 = v21 >= v34;
    v107 = 2050;
    v108 = v11;
    v109 = 2050;
    v110 = 0x86BCA1AF286BCA1BLL * ((v60 - __p) >> 3);
    v111 = 1026;
    v112 = v21;
    v113 = 1026;
    v114 = v53;
    v115 = 1026;
    v116 = v20 >= v35;
    v117 = 2050;
    v118 = v13;
    v119 = 1026;
    v120 = v20;
    v121 = 2050;
    v122 = v15;
    v123 = 2049;
    v124 = v55;
    v125 = 2049;
    v126 = v39;
    v127 = 1025;
    v128 = v33;
    v129 = 1025;
    v130 = v57;
    v131 = 2049;
    v132 = v44;
    _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "VO2MaxAlert,ageOutOfRange,%{public}d,age,%{private}.3f,inBlackoutPeriod,%{public}d,mostRecentAlertStartTime,%{private}.3f,alertBlackoutDuration,%{private}.3f,estimateTime,%{public}.3f, sufficientDaysWithEstimate,%{public}d,queryFromTime,%{public}.3f,numberOfEstimates,%{public}lu,countDaysWithEstimate,%{public}d,numWorkoutsContrToLatestEstimate,%{public}d,sufficientEstimatesSinceAdaptiveModel,%{public}d, earliestTimestampSinceAdaptiveModel,%{public}.3f,countEstimatesSinceAdaptiveModel,%{public}d,earliestTimestampSinceHunterC,%{public}.3f,latestVO2Max,%{private}.3f,lowClassificationThreshold,%{private}.3f, shouldTriggerAlert,%{private}d,isRepeatAlert,%{private}d,repeatAlertWindow,%{private}.3f", buf, 0xA6u);
  }

  if (sub_10000A100(121, 2))
  {
    v46 = v21 >= v34;
    sub_101940934(buf);
    v47 = *(a1 + 36);
    v48 = v63;
    if (!v56)
    {
      v48 = 0.0;
    }

    v49 = *(a1 + 80);
    v50 = *(a1 + 88);
    v64 = 67245057;
    *v65 = v32;
    *&v65[4] = 2049;
    *&v65[6] = v47;
    *&v65[14] = 1026;
    *&v65[16] = v8;
    *v66 = 2049;
    *&v66[2] = v48;
    v67 = 2049;
    v68 = v49;
    v69 = 2050;
    v70 = a3;
    v71 = 1026;
    v72 = v46;
    v73 = 2050;
    v74 = v11;
    v75 = 2050;
    v76 = 0x86BCA1AF286BCA1BLL * ((v60 - __p) >> 3);
    v77 = 1026;
    v78 = v21;
    v79 = 1026;
    v80 = v53;
    v81 = 1026;
    v82 = v20 >= v35;
    v83 = 2050;
    v84 = v13;
    v85 = 1026;
    v86 = v20;
    v87 = 2050;
    v88 = v15;
    v89 = 2049;
    v90 = v55;
    v91 = 2049;
    v92 = v39;
    v93 = 1025;
    v94 = v33;
    v95 = 1025;
    v96 = v57;
    v97 = 2049;
    v98 = v50;
    v51 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "VO2MaxAlertResult CLVO2MaxAlertEvaluator::evaluateForAlert(CFAbsoluteTime, CFTimeInterval)", "%s\n", v51);
    if (v51 != buf)
    {
      free(v51);
    }
  }

  *a2 = v33;
  *(a2 + 8) = v55;
  *(a2 + 16) = v39;
  v45 = a3;
  if (__p != v60)
  {
    v45 = *(v60 - 16);
  }

  *(a2 + 24) = v45;
  *(a2 + 32) = a3;
  *(a2 + 40) = v57;
  *buf = v58;
  sub_1002EC52C(buf);
  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }
}

void sub_1007F450C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char *a47)
{
  a47 = &a17;
  sub_1002EC52C(&a47);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1007F4568(void *a1, uint64_t a2)
{
  v4 = a1 + 14;
  (*(a1[14] + 16))(a1 + 14);
  LODWORD(a2) = (*(*a1 + 104))(a1, a2);
  (*(*v4 + 24))(v4);
  return a2 == 0;
}

void sub_1007F4638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

double sub_1007F464C(uint64_t a1, int a2)
{
  v3 = sub_10104516C();
  if ((sub_101045E68(v3) & 1) == 0)
  {
    if (qword_1025D4230 != -1)
    {
      sub_10194090C();
    }

    v4 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v7 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "VO2MaxAlert,Unexpectedly not able to retrieve a session record since algorithm version %{public}.3d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101940AC8(a2);
    }
  }

  return 1.79769313e308;
}

BOOL sub_1007F4740(uint64_t a1, void *a2)
{
  sub_100C41F40(v28);
  v4 = sub_100C42090(v28, *(a1 + 20), *(a1 + 36));
  v24 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v25 = xmmword_101C7C490;
  v26 = _Q0;
  v27 = 0.0;
  v10 = *a2;
  v11 = a2[1];
  v12 = 0.0;
  if (v11 == *a2)
  {
    goto LABEL_7;
  }

  do
  {
    v13 = v11 - 152;
    sub_100502850(&v24, *(v11 - 120));
    v10 = *a2;
    v11 = v13;
  }

  while (v13 != *a2);
  if (v24 < 1)
  {
LABEL_7:
    v14 = 0.0;
  }

  else
  {
    v14 = *(&v25 + 1);
    if (v24 != 1)
    {
      v15 = *&v26 * *&v26 - *(&v26 + 1);
      if (v15 > 0.0)
      {
        v12 = sqrt(*&v26 * *&v26 / v15 * v27);
      }
    }
  }

  v16 = *(v10 + 32);
  if (qword_1025D4230 != -1)
  {
    sub_10194090C();
  }

  v17 = v14 + v12;
  v18 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*a2 + 24);
    *buf = 134350337;
    *&buf[4] = v19;
    v42 = 1025;
    v43 = v16 < v4;
    v44 = 1025;
    v45 = v17 < v4;
    v46 = 2049;
    v47 = v14;
    v48 = 2049;
    v49 = v12;
    v50 = 2049;
    v51 = v4;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "VO2MaxAlert,estimateTime,%{public}.3f,isCurrentEstimateLow,%{private}d,isRecentActivityLow,%{private}d,weightedAvg,%{private}.3f,std,%{private}.3f,lowAlertThreshold,%{private}.3f", buf, 0x36u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101940934(buf);
    v22 = *(*a2 + 24);
    v29 = 134350337;
    v30 = v22;
    v31 = 1025;
    v32 = v16 < v4;
    v33 = 1025;
    v34 = v17 < v4;
    v35 = 2049;
    v36 = v14;
    v37 = 2049;
    v38 = v12;
    v39 = 2049;
    v40 = v4;
    v23 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLVO2MaxAlertEvaluator::assessWhetherLow(const std::vector<VO2MaxOutput> &) const", "%s\n", v23);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  v20 = v17 < v4 && v16 < v4;
  *buf = v28;
  sub_1002EC52C(buf);
  return v20;
}

void sub_1007F4A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = &a18;
  sub_1002EC52C(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F4A94(uint64_t a1, const char *a2, uint64_t *a3, double a4)
{
  v13 = a4;
  sub_1006525CC(a1, a3, &v13);
  *a1 = off_102472728;
  v6 = strlen(a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 255) = v6;
  v8 = (a1 + 232);
  if (v6)
  {
    memmove(v8, a2, v6);
  }

  *(v8 + v7) = 0;
  sub_100DD42E4((a1 + 256), a1 + 64, 0);
  if (sub_100023B68(a1 + 64))
  {
    v9 = (a1 + 232);
    if (*(a1 + 255) < 0)
    {
      v9 = *(a1 + 232);
    }

    sub_100608EC8(a1 + 64, v9, &qword_10265A018, 0, 0);
    sub_100652718(a1);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101940BDC();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning Database is not valid; not initializing", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101940C04(buf);
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLNrCellLocationDatabase::CLNrCellLocationDatabase(const char *, const CLSqliteDatabase::SqliteProperties &, double)", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  return a1;
}

void sub_1007F4D08(_Unwind_Exception *a1)
{
  if (*(v1 + 255) < 0)
  {
    operator delete(*v2);
  }

  sub_1006526BC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F4D44(uint64_t a1)
{
  *a1 = off_102472728;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  return sub_1006526BC(a1);
}

void sub_1007F4DA8(uint64_t a1)
{
  sub_1007F4D44(a1);

  operator delete();
}

char *sub_1007F4DE0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[255] < 0)
  {
    return sub_100007244(a2, *(result + 29), *(result + 30));
  }

  *a2 = *(result + 232);
  *(a2 + 16) = *(result + 31);
  return result;
}

void sub_1007F4E84(uint64_t a1)
{
  sub_10003848C(&v21);
  v2 = sub_100038730(v22, "SELECT ", 7);
  v3 = strlen("ROWID");
  v4 = sub_100038730(v2, "ROWID", v3);
  v5 = sub_100038730(v4, " FROM ", 6);
  v6 = (a1 + 232);
  if (*(a1 + 255) < 0)
  {
    v6 = *v6;
  }

  v7 = strlen(v6);
  v8 = sub_100038730(v5, v6, v7);
  v9 = sub_100038730(v8, " WHERE ", 7);
  v10 = sub_100038730(v9, "MCC", 3);
  v11 = sub_100038730(v10, "=? AND ", 7);
  v12 = sub_100038730(v11, "MNC", 3);
  v13 = sub_100038730(v12, "=? AND ", 7);
  v14 = sub_100038730(v13, "TAC", 3);
  v15 = sub_100038730(v14, "=? AND ", 7);
  v16 = sub_100038730(v15, "CI", 2);
  sub_100038730(v16, "=?", 2);
  if ((v25 & 0x10) != 0)
  {
    v18 = v24;
    if (v24 < v23)
    {
      v24 = v23;
      v18 = v23;
    }

    v19 = v22[6];
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v17 = 0;
      v27 = 0;
      goto LABEL_16;
    }

    v19 = v22[3];
    v18 = v22[5];
  }

  v17 = v18 - v19;
  if ((v18 - v19) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v17 >= 0x17)
  {
    operator new();
  }

  v27 = v18 - v19;
  if (v17)
  {
    memmove(&__dst, v19, v17);
  }

LABEL_16:
  *(&__dst + v17) = 0;
  if (v27 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_1000388D8(a1 + 64, p_dst);
}

void sub_1007F5490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1007F551C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = 0;
  if (sub_100DD42EC((a1 + 256)))
  {
LABEL_48:
    sub_100144CA0((a1 + 256), v64);
    v34 = sub_100008880(v64[0]);
    if (sub_100073700(v34, 1, *a2) && (v35 = sub_100008880(v64[0]), sub_100073700(v35, 2, *(a2 + 4))) && (v36 = sub_100008880(v64[0]), sub_100073700(v36, 3, *(a2 + 8))) && (v37 = sub_100008880(v64[0]), sub_1000728E4(v37, 4, *(a2 + 16))) && (v38 = sub_100008880(v64[0]), sub_100073700(v38, 5, *(a2 + 24))) && (v39 = sub_100008880(v64[0]), sub_100073700(v39, 6, *(a2 + 28))))
    {
      v40 = sub_100008880(v64[0]);
      sub_1001A3DEC(a1 + 64, v40);
      v41 = sub_100616934(a1 + 64);
      v59 = v41;
      if (qword_1025D48A0 != -1)
      {
        sub_101940BDC();
      }

      v42 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        sub_10062233C(&__dst);
        v43 = v66 >= 0 ? &__dst : __dst;
        *v67 = 136315394;
        *&v67[4] = v43;
        v68 = 2048;
        *v69 = v41;
        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "CELL_CEN: adding cell, %s, rowid, %lld", v67, 0x16u);
        if (v66 < 0)
        {
          operator delete(__dst);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101940C04(&__dst);
        sub_10062233C(v67);
        if (v69[9] >= 0)
        {
          v57 = v67;
        }

        else
        {
          v57 = *v67;
        }

        *buf = 136315394;
        *&buf[4] = v57;
        v61 = 2048;
        v62 = v41;
        v58 = _os_log_send_and_compose_impl();
        if ((v69[9] & 0x80000000) != 0)
        {
          operator delete(*v67);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLNrCellLocationDatabase::setLocation(const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &)", "%s\n", v58);
        if (v58 != &__dst)
        {
          free(v58);
        }
      }

      v44 = sub_100653624(a1, &v59, a3);
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101940BDC();
      }

      v45 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        sub_10062233C(&__dst);
        v46 = v66 >= 0 ? &__dst : __dst;
        *v67 = 136315138;
        *&v67[4] = v46;
        _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_FAULT, "CELL_LOC: failed to bind %s", v67, 0xCu);
        if (v66 < 0)
        {
          operator delete(__dst);
        }
      }

      if (sub_10000A100(121, 0))
      {
        sub_101940C04(&__dst);
        sub_10062233C(v67);
        if (v69[9] >= 0)
        {
          v52 = v67;
        }

        else
        {
          v52 = *v67;
        }

        *buf = 136315138;
        *&buf[4] = v52;
        v53 = _os_log_send_and_compose_impl();
        if ((v69[9] & 0x80000000) != 0)
        {
          operator delete(*v67);
        }

        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLNrCellLocationDatabase::setLocation(const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &)", "%s\n", v53);
        if (v53 != &__dst)
        {
          free(v53);
        }
      }

      v47 = sub_100008880(v64[0]);
      sqlite3_reset(v47);
      v44 = 0;
    }

    v48 = v64[0];
    v64[0] = 0;
    if (v48)
    {
      (*(*v48 + 8))(v48);
    }

    return v44;
  }

  sub_10003848C(v67);
  v6 = sub_100038730(&v69[2], "INSERT OR REPLACE INTO ", 23);
  v7 = (a1 + 232);
  if (*(a1 + 255) < 0)
  {
    v7 = *v7;
  }

  v8 = strlen(v7);
  v9 = sub_100038730(v6, v7, v8);
  v10 = sub_100038730(v9, " (", 2);
  v11 = sub_100038730(v10, "MCC", 3);
  v12 = sub_100038730(v11, ", ", 2);
  v13 = sub_100038730(v12, "MNC", 3);
  v14 = sub_100038730(v13, ", ", 2);
  v15 = sub_100038730(v14, "TAC", 3);
  v16 = sub_100038730(v15, ", ", 2);
  v17 = sub_100038730(v16, "CI", 2);
  v18 = sub_100038730(v17, ", ", 2);
  v19 = sub_100038730(v18, "NRARFCN", 7);
  v20 = sub_100038730(v19, ", ", 2);
  v21 = sub_100038730(v20, "PID", 3);
  sub_100038730(v21, ") VALUES (?, ?, ?, ?, ?, ?)", 27);
  if (qword_1025D48A0 != -1)
  {
    sub_101940BDC();
  }

  v22 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    if ((v79 & 0x10) != 0)
    {
      v25 = v78;
      if (v78 < v75)
      {
        v78 = v75;
        v25 = v75;
      }

      v26 = __src;
    }

    else
    {
      if ((v79 & 8) == 0)
      {
        v23 = a3;
        v24 = 0;
        v66 = 0;
LABEL_20:
        *(&__dst + v24) = 0;
        p_dst = &__dst;
        if (v66 < 0)
        {
          p_dst = __dst;
        }

        *buf = 136315138;
        *&buf[4] = p_dst;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "CELL_LOC: fInsertStatement [%s]", buf, 0xCu);
        if (v66 < 0)
        {
          operator delete(__dst);
        }

        a3 = v23;
        goto LABEL_25;
      }

      v26 = v72;
      v25 = v73;
    }

    v24 = v25 - v26;
    if (v25 - v26 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    v23 = a3;
    if (v24 >= 0x17)
    {
      operator new();
    }

    v66 = v25 - v26;
    if (v24)
    {
      memmove(&__dst, v26, v24);
    }

    goto LABEL_20;
  }

LABEL_25:
  if (sub_10000A100(121, 2))
  {
    sub_101940C04(&__dst);
    sub_10003DD04(&v70, buf);
    if (v63 >= 0)
    {
      v54 = buf;
    }

    else
    {
      v54 = *buf;
    }

    LODWORD(v64[0]) = 136315138;
    *(v64 + 4) = v54;
    v55 = _os_log_send_and_compose_impl();
    if (v63 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLNrCellLocationDatabase::setLocation(const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &)", "%s\n", v55);
    if (v55 != &__dst)
    {
      free(v55);
    }
  }

  if ((v79 & 0x10) != 0)
  {
    v29 = v78;
    if (v78 < v75)
    {
      v78 = v75;
      v29 = v75;
    }

    v30 = __src;
  }

  else
  {
    if ((v79 & 8) == 0)
    {
      v28 = 0;
      v66 = 0;
      goto LABEL_39;
    }

    v30 = v72;
    v29 = v73;
  }

  v28 = v29 - v30;
  if (v29 - v30 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v28 >= 0x17)
  {
    operator new();
  }

  v66 = v29 - v30;
  if (v28)
  {
    memmove(&__dst, v30, v28);
  }

LABEL_39:
  *(&__dst + v28) = 0;
  if (v66 >= 0)
  {
    v31 = &__dst;
  }

  else
  {
    v31 = __dst;
  }

  *(a1 + 256) = sub_100614C1C(a1 + 64, v31);
  *(a1 + 264) = v32;
  if (v66 < 0)
  {
    operator delete(__dst);
  }

  if (sub_100DD42EC((a1 + 256)))
  {
    *&v69[2] = v33;
    if (v77 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v71);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    goto LABEL_48;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_101940BDC();
  }

  v49 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    LOWORD(__dst) = 0;
    _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_FAULT, "Could not prepare cached insert statement", &__dst, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101940C04(&__dst);
    *buf = 0;
    v56 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLNrCellLocationDatabase::setLocation(const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &)", "%s\n", v56);
    if (v56 != &__dst)
    {
      free(v56);
    }
  }

  *&v69[2] = v50;
  if (v77 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v71);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return 0;
}

void sub_1007F6184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  _Unwind_Resume(a1);
}

void sub_1007F6274(uint64_t a1)
{
  sub_10003848C(&v21);
  v2 = sub_100038730(v22, "SELECT ", 7);
  v3 = sub_100038730(v2, "MCC", 3);
  v4 = sub_100038730(v3, ", ", 2);
  v5 = sub_100038730(v4, "MNC", 3);
  v6 = sub_100038730(v5, ", ", 2);
  v7 = sub_100038730(v6, "TAC", 3);
  v8 = sub_100038730(v7, ", ", 2);
  v9 = sub_100038730(v8, "CI", 2);
  v10 = sub_100038730(v9, " FROM ", 6);
  v11 = (a1 + 232);
  if (*(a1 + 255) < 0)
  {
    v11 = *v11;
  }

  v12 = strlen(v11);
  v13 = sub_100038730(v10, v11, v12);
  v14 = sub_100038730(v13, " WHERE ", 7);
  v15 = strlen("ROWID");
  v16 = sub_100038730(v14, "ROWID", v15);
  sub_100038730(v16, "=?", 2);
  if ((v25 & 0x10) != 0)
  {
    v18 = v24;
    if (v24 < v23)
    {
      v24 = v23;
      v18 = v23;
    }

    v19 = v22[6];
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v17 = 0;
      v27 = 0;
      goto LABEL_16;
    }

    v19 = v22[3];
    v18 = v22[5];
  }

  v17 = v18 - v19;
  if ((v18 - v19) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v17 >= 0x17)
  {
    operator new();
  }

  v27 = v18 - v19;
  if (v17)
  {
    memmove(&__dst, v19, v17);
  }

LABEL_16:
  *(&__dst + v17) = 0;
  if (v27 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_1000388D8(a1 + 64, p_dst);
}

void sub_1007F67F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1007F687C()
{
  qword_10265A018 = "MCC";
  dword_10265A020 = 1;
  word_10265A024 = 1;
  byte_10265A028 = 0;
  byte_10265A040 = 0;
  qword_10265A048 = "MNC";
  dword_10265A050 = 1;
  word_10265A054 = 1;
  byte_10265A058 = 0;
  byte_10265A070 = 0;
  qword_10265A078 = "TAC";
  dword_10265A080 = 1;
  word_10265A084 = 1;
  byte_10265A088 = 0;
  byte_10265A0A0 = 0;
  qword_10265A0A8 = "CI";
  dword_10265A0B0 = 1;
  word_10265A0B4 = 1;
  byte_10265A0B8 = 0;
  byte_10265A0D0 = 0;
  qword_10265A0D8 = "NRARFCN";
  dword_10265A0E0 = 1;
  word_10265A0E4 = 1;
  byte_10265A0E8 = 0;
  byte_10265A100 = 0;
  qword_10265A108 = "PID";
  dword_10265A110 = 1;
  word_10265A114 = 1;
  byte_10265A118 = 0;
  byte_10265A130 = 0;
  qword_10265A138 = "Timestamp";
  dword_10265A140 = 2;
  word_10265A144 = 0;
  byte_10265A148 = 0;
  byte_10265A160 = 0;
  qword_10265A168 = "Latitude";
  dword_10265A170 = 2;
  word_10265A174 = 0;
  byte_10265A178 = 0;
  byte_10265A190 = 0;
  qword_10265A198 = "Longitude";
  dword_10265A1A0 = 2;
  word_10265A1A4 = 0;
  byte_10265A1A8 = 0;
  byte_10265A1C0 = 0;
  qword_10265A1C8 = "HorizontalAccuracy";
  dword_10265A1D0 = 2;
  word_10265A1D4 = 0;
  byte_10265A1D8 = 0;
  byte_10265A1F0 = 0;
  qword_10265A1F8 = "Altitude";
  dword_10265A200 = 2;
  word_10265A204 = 0;
  byte_10265A208 = 0;
  byte_10265A220 = 0;
  qword_10265A228 = "VerticalAccuracy";
  dword_10265A230 = 2;
  word_10265A234 = 0;
  byte_10265A238 = 0;
  byte_10265A250 = 0;
  qword_10265A258 = "Speed";
  dword_10265A260 = 2;
  word_10265A264 = 0;
  byte_10265A268 = 0;
  byte_10265A280 = 0;
  qword_10265A288 = "Course";
  dword_10265A290 = 2;
  word_10265A294 = 0;
  byte_10265A298 = 0;
  byte_10265A2B0 = 0;
  qword_10265A2B8 = "Confidence";
  dword_10265A2C0 = 1;
  word_10265A2C4 = 0;
  byte_10265A2C8 = 0;
  byte_10265A2E0 = 0;
  qword_10265A2E8 = 0;
  dword_10265A2F0 = 5;
  word_10265A2F4 = 0;
  byte_10265A2F8 = 0;
  byte_10265A310 = 0;
}

void sub_1007F6A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __chkstk_darwin(a1);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 12) = 0x20000000000;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0;
  *(v16 + 120) = 1;
  *(v16 + 128) = 0u;
  *(v16 + 144) = 0u;
  *(v16 + 160) = 0u;
  *(v16 + 176) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(v16 + 184) = _Q1;
  *(v16 + 200) = 0;
  *(v16 + 208) = _Q1;
  *(v16 + 224) = 0;
  *(v16 + 232) = _Q1;
  *(v16 + 248) = 0;
  *(v16 + 304) = 0;
  *(v16 + 272) = 0u;
  *(v16 + 288) = 0u;
  *(v16 + 256) = 0u;
  *(v16 + 312) = 1065353216;
  *(v16 + 320) = 0x100000005;
  *(v16 + 328) = 0;
  sub_1008076E4(v16 + 336, v23);
  sub_10080777C(v17 + 368, v13);
  sub_1008076E4(v17 + 400, v11);
  sub_1001B6020(v17 + 432, a9);
  sub_100807814(v17 + 464, a10);
  *(v17 + 520) = 0;
  *(v17 + 552) = 0;
  *(v17 + 560) = 0;
  *(v17 + 608) = 0;
  *(v17 + 568) = 0;
  *(v17 + 576) = 0;
  *(v17 + 688) = 0;
  *(v17 + 640) = 0u;
  *(v17 + 656) = 0;
  *(v17 + 720) = 0;
  *(v17 + 744) = 0;
  *(v17 + 728) = 0u;
  *(v17 + 748) = 1;
  *(v17 + 752) = 0;
  *(v17 + 760) = v15;
  *(v17 + 768) = 0;
  *(v17 + 772) = 0;
  *(v17 + 776) = 0;
  *(v17 + 784) = 0xBFF0000000000000;
  *(v17 + 792) = 5;
  *(v17 + 800) = 0;
  *(v17 + 808) = sub_100804DAC;
  *(v17 + 816) = 0;
  *(v17 + 824) = sub_100804EF8;
  *(v17 + 972) = 0u;
  *(v17 + 944) = 0u;
  *(v17 + 960) = 0u;
  *(v17 + 912) = 0u;
  *(v17 + 928) = 0u;
  *(v17 + 880) = 0u;
  *(v17 + 896) = 0u;
  *(v17 + 848) = 0u;
  *(v17 + 864) = 0u;
  *(v17 + 832) = 0u;
  *(v17 + 992) = 0u;
  *(v17 + 1008) = 0u;
  *(v17 + 1024) = 0u;
  *(v17 + 1040) = 0u;
  *(v17 + 1056) = 0u;
  *(v17 + 1096) = 0u;
  *(v17 + 1112) = 0u;
  *(v17 + 1128) = 0u;
  *(v17 + 1144) = 0u;
  *(v17 + 1160) = 0u;
  *(v17 + 1176) = 0u;
  *(v17 + 1192) = 0u;
  *(v17 + 1208) = 0u;
  *(v17 + 1224) = 0;
  *(v17 + 1228) = 255;
  *(v17 + 1248) = 0;
  *(v17 + 1232) = 0u;
  sub_100805044(v17 + 1256);
  *(v17 + 2496) = 0;
  *(v17 + 2552) = 0;
  *(v17 + 2504) = 0u;
  *(v17 + 2520) = 0u;
  *(v17 + 2536) = 0u;
  *(v17 + 2560) = 1065353216;
  *(v17 + 2568) = 0;
  *(v17 + 2570) = 0;
  sub_10000EC00(&__p, "#GnssController state machine");
  *buf = v17;
  operator new();
}

void sub_1007FB274()
{
  if (STACK[0x968])
  {
    sub_100008080(STACK[0x968]);
  }

  JUMPOUT(0x1007FB294);
}

void sub_1007FB290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *a25, uint64_t *a26, uint64_t *a27, uint64_t *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  sub_10080CC48(&STACK[0x720]);
  sub_10080C9CC(&STACK[0x740]);
  sub_100807BD4(&STACK[0x8E0]);
  sub_1008087DC(&STACK[0x900]);
  sub_10080875C(&STACK[0x920]);
  if (a56 < 0)
  {
    operator delete(__p);
  }

  v58 = v56[389];
  v56[389] = 0;
  if (v58)
  {
    operator delete();
  }

  v59 = *a13;
  *a13 = 0;
  if (v59)
  {
    operator delete();
  }

  v60 = v56[386];
  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  v61 = v56[384];
  if (v61)
  {
    sub_100008080(v61);
  }

  sub_1006DF878((v56 + 344));
  v62 = v56[339];
  v56[339] = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  sub_10080841C((v56 + 322));
  sub_10080839C((v56 + 316));
  v63 = v56[315];
  v56[315] = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  v64 = v56[314];
  v56[314] = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  sub_1006F7EA8(a28, 0);
  sub_1008060A0((v56 + 157));
  v65 = v56 + 147;
  v66 = v56[151];
  v56[151] = 0;
  if (v66)
  {
    operator delete();
  }

  sub_100808350(a32, 0);
  sub_100808304(v56 + 149, 0);
  sub_1008082B8(v56 + 148, 0);
  v67 = *v65;
  *v65 = 0;
  if (v67)
  {
    sub_1004949C8((v56 + 147), v67);
  }

  v68 = v56[146];
  v56[146] = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  sub_10080826C(v56 + 145, 0);
  v69 = v56[144];
  v56[144] = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  v70 = v56[143];
  v56[143] = 0;
  if (v70)
  {
    operator delete();
  }

  sub_100808220(a25, 0);
  sub_1008081D4(a26, 0);
  sub_100808188(a12, 0);
  sub_10080813C(v56 + 139, 0);
  sub_1008080DC(a14, 0);
  sub_10080805C((v56 + 134));
  v71 = v56[133];
  v56[133] = 0;
  if (v71)
  {
    operator delete();
  }

  sub_100808010(v56 + 132, 0);
  sub_100807FC4(v56 + 131, 0);
  sub_100807F78(v56 + 130, 0);
  sub_100807F2C(v56 + 129, 0);
  sub_100807EE0(v56 + 128, 0);
  sub_100807E94(a27, 0);
  sub_100807E48(v56 + 126, 0);
  sub_100807DB8(v56 + 125, 0);
  sub_100807D6C(v56 + 124, 0);
  sub_100807D20(v56 + 121, 0);
  v72 = v56[120];
  if (v72)
  {
    sub_100008080(v72);
  }

  sub_100807D20(v56 + 118, 0);
  v73 = v56[117];
  if (v73)
  {
    sub_100008080(v73);
  }

  sub_100807D20(v56 + 115, 0);
  v74 = v56[114];
  if (v74)
  {
    sub_100008080(v74);
  }

  sub_100807D20(v56 + 112, 0);
  v75 = v56[111];
  if (v75)
  {
    sub_100008080(v75);
  }

  sub_100807D20(v56 + 109, 0);
  v76 = v56[108];
  if (v76)
  {
    sub_100008080(v76);
  }

  sub_100807D20(v56 + 106, 0);
  v77 = v56[105];
  if (v77)
  {
    sub_100008080(v77);
  }

  v78 = v56[102];
  v56[102] = 0;
  if (v78)
  {
    (v56[103])();
  }

  v79 = v56[100];
  v56[100] = 0;
  if (v79)
  {
    (v56[101])();
  }

  sub_100807CD4(v56 + 91, 0);
  sub_1001C5560((v56 + 87));
  sub_1001C5560((v56 + 83));
  sub_1001C5560((v56 + 77));
  sub_1001C5560((v56 + 73));
  sub_100807C54((v56 + 66));
  sub_100807BD4((v56 + 62));
  sub_10067940C((v56 + 58));
  sub_1001C5560((v56 + 54));
  sub_100807AD4((v56 + 50));
  sub_100807B54((v56 + 46));
  sub_100807AD4((v56 + 42));
  sub_100134860((v56 + 35));
  v80 = *v56;
  *v56 = 0;
  if (v80)
  {
    (*(*v80 + 8))(v80);
  }

  _Unwind_Resume(a1);
}

void sub_1007FB734(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1007FB750(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  if (a4 & 1 | a3)
  {
    v4 = a4;
    v5 = a3;
    v7 = a2;
    v6 = a1;
    if (qword_1025D4650 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_101941190(qword_1025D4650 == -1);
    __break(1u);
  }

  sub_10194117C();
LABEL_3:
  v8 = qword_1025D4658;
  v9 = *(v6 + 120);
  if (os_log_type_enabled(qword_1025D4658, v9))
  {
    v10 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v10 = *v10;
    }

    if (v7 > 2)
    {
      v11 = "StateUnknown";
    }

    else
    {
      v11 = (&off_102474410)[v7];
    }

    sub_10000EC00(__p, v11);
    if (SBYTE3(v25) >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = *__p;
    }

    *buf = 136315650;
    *&buf[4] = v10;
    v27 = 1024;
    v28 = v7;
    v29 = 2080;
    v30 = v12;
    _os_log_impl(dword_100000000, v8, v9, "%sstate,%d,%s", buf, 0x1Cu);
    if (SBYTE3(v25) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v14 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v14 = *v14;
    }

    if (v7 > 2)
    {
      v15 = "StateUnknown";
    }

    else
    {
      v15 = (&off_102474410)[v7];
    }

    sub_10000EC00(v18, v15);
    if (v19 >= 0)
    {
      v16 = v18;
    }

    else
    {
      v16 = v18[0];
    }

    *__p = 136315650;
    *&__p[4] = v14;
    v22 = 1024;
    v23 = v7;
    v24 = 2080;
    v25 = v16;
    v17 = _os_log_send_and_compose_impl();
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLStateMachine<CLGnssController>::setStateHandler(State, StateHandler) [T = CLGnssController]", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  *buf = &v20;
  result = sub_1001B58E4(v6 + 8, &v20);
  result[5] = v5;
  result[6] = v4;
  return result;
}

uint64_t sub_1007FBA38(void *a1, int a2)
{
  v2 = 2;
  switch(a2)
  {
    case 0:
      sub_1007FD7B4(a1);
      return v2;
    case 1:
      sub_1007FD838(a1);
      return v2;
    case 4:
    case 6:
    case 8:
    case 10:
      return 0;
    case 5:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v8 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning,CLGnssController,Unexpected device connect event in NilrOnly state", v13, 2u);
      }

      v2 = 2;
      if (sub_10000A100(121, 2))
      {
        sub_101941CC0();
      }

      return v2;
    case 7:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v6 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning,CLGnssController,Unexpected Ap Wake event in NilrOnly state", v12, 2u);
      }

      v2 = 2;
      if (sub_10000A100(121, 2))
      {
        sub_101941BE4();
      }

      return v2;
    case 11:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#Warning,CLGnssController,Unexpected Emergency start in NilrOnly state", v11, 2u);
      }

      v2 = 2;
      if (sub_10000A100(121, 2))
      {
        sub_101941B08();
      }

      return v2;
    case 13:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning,CLGnssController,Unexpected Nilr Begin event in NilrOnly state", buf, 2u);
      }

      v2 = 2;
      if (sub_10000A100(121, 2))
      {
        sub_101941950();
      }

      return v2;
    case 14:
    case 17:

      return sub_1001BCEDC(a1);
    case 15:
      sub_1007FD0BC(a1);
      return v2;
    case 16:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v5 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning,CLGnssController,Unexpected Debounce Timeout event in NilrOnly state", v9, 2u);
      }

      v2 = 2;
      if (sub_10000A100(121, 2))
      {
        sub_101941A2C();
      }

      return v2;
    default:
      return v2;
  }
}

void sub_1007FBD10(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 760) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101941E94();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssController::onClientManagerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101941EA8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssController::onClientManagerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100800DFC(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_1007FBEDC(uint64_t a1)
{
  v2 = 0;
  v6[0] = kCTDaemonReadyNotification;
  v6[1] = kCTConnectionInvalidatedNotification;
  v6[2] = @"kCLTelephonyServiceDisconnectedNotification";
  v6[3] = @"kHandsetInfoNotification";
  v6[4] = @"kCLTelephonyServiceConnectedNotification";
  v6[5] = @"kCellRefreshNotification";
  v6[6] = @"kSuplInitPayloadNotification";
  v6[7] = @"kSimStatusChangeNotification";
  v6[8] = @"kCLCellularTransmitStateNotification";
  v6[9] = @"kCellInfoNotification";
  v6[10] = @"kUplinkFreqBwNotification";
  v6[11] = @"kSubscriberMccAndMncNotification";
  v6[12] = @"kDataStatusNotification";
  v6[13] = @"kSubscriptionChangeNotification";
  v6[14] = @"kPrefDataSimChangedNotification";
  v6[15] = @"kTandemCapabilityNotification";
  v6[16] = @"kAltAccountConfiguredNotification";
  v6[17] = @"kAtLeastOneVoiceCallInProgress";
  v6[18] = @"kNoVoiceCallInProgress";
  do
  {
    v3 = *(a1 + 2512);
    sub_1001CBE2C(&v5, v6[v2]);
    result = [*(v3 + 16) register:*(v3 + 8) forNotification:sub_10006E830(&v5) registrationInfo:0];
    ++v2;
  }

  while (v2 != 19);
  return result;
}

void *sub_1007FC090(void *a1, uint64_t a2)
{
  sub_10080A318(v4, a2);
  sub_100809398(v4, a1);
  sub_100807BD4(v4);
  return a1;
}

void *sub_1007FC104(void *a1, uint64_t a2)
{
  sub_1008096EC(v4, a2);
  sub_100809784(v4, a1);
  sub_100807C54(v4);
  return a1;
}

void sub_1007FC178(uint64_t *a1)
{
  v47 = sub_1008033E0();
  sub_10001CAF4(buf);
  v48 = 0;
  v2 = sub_10001CB4C(*buf, "GnssForceEnableGps", &v48);
  v3 = v48;
  if (*v50)
  {
    sub_100008080(*v50);
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v46 = v4;
  sub_10001CAF4(buf);
  v48 = 0;
  v5 = sub_10001CB4C(*buf, "GnssForceEnableBeidou", &v48);
  v6 = v48;
  if (*v50)
  {
    sub_100008080(*v50);
  }

  if ((v5 & v6) != 0)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v45 = v7;
  sub_10001CAF4(buf);
  v48 = 0;
  v8 = sub_10001CB4C(*buf, "GnssForceEnableGalileo", &v48);
  v9 = v48;
  if (*v50)
  {
    sub_100008080(*v50);
  }

  if ((v8 & v9) != 0)
  {
    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  v44 = v10;
  sub_10001CAF4(buf);
  v48 = 0;
  v11 = sub_10001CB4C(*buf, "GnssForceEnableGlonass", &v48);
  v12 = v48;
  if (*v50)
  {
    sub_100008080(*v50);
  }

  if ((v11 & v12) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  sub_10001CAF4(buf);
  v48 = 0;
  v14 = sub_10001CB4C(*buf, "GnssForceEnableQzss", &v48);
  v15 = v48;
  if (*v50)
  {
    sub_100008080(*v50);
  }

  if ((v14 & v15) != 0)
  {
    v16 = 16;
  }

  else
  {
    v16 = 0;
  }

  sub_10001CAF4(buf);
  v48 = 0;
  v17 = sub_10001CB4C(*buf, "GnssForceEnableNavic", &v48);
  v18 = v48;
  if (*v50)
  {
    sub_100008080(*v50);
  }

  if ((v17 & v18) != 0)
  {
    v19 = 32;
  }

  else
  {
    v19 = 0;
  }

  sub_10001CAF4(buf);
  v48 = 0;
  v20 = sub_10001CB4C(*buf, "GnssForceDisableGps", &v48);
  v21 = v48;
  if (*v50)
  {
    sub_100008080(*v50);
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  sub_10001CAF4(buf);
  v48 = 0;
  v23 = sub_10001CB4C(*buf, "GnssForceDisableBeidou", &v48);
  v24 = v48;
  if (*v50)
  {
    sub_100008080(*v50);
  }

  if ((v23 & v24) != 0)
  {
    v25 = 4;
  }

  else
  {
    v25 = 0;
  }

  sub_10001CAF4(buf);
  v48 = 0;
  v26 = sub_10001CB4C(*buf, "GnssForceDisableGalileo", &v48);
  v27 = v48;
  if (*v50)
  {
    sub_100008080(*v50);
  }

  if ((v26 & v27) != 0)
  {
    v28 = 8;
  }

  else
  {
    v28 = 0;
  }

  sub_10001CAF4(buf);
  v48 = 0;
  v29 = sub_10001CB4C(*buf, "GnssForceDisableGlonass", &v48);
  v30 = v48;
  if (*v50)
  {
    sub_100008080(*v50);
  }

  if ((v29 & v30) != 0)
  {
    v31 = 2;
  }

  else
  {
    v31 = 0;
  }

  sub_10001CAF4(buf);
  v48 = 0;
  v32 = sub_10001CB4C(*buf, "GnssForceDisableQzss", &v48);
  v33 = v48;
  if (*v50)
  {
    sub_100008080(*v50);
  }

  if ((v32 & v33) != 0)
  {
    v34 = 16;
  }

  else
  {
    v34 = 0;
  }

  sub_10001CAF4(buf);
  v48 = 0;
  v35 = sub_10001CB4C(*buf, "GnssForceDisableNavic", &v48);
  v36 = v25 | v22 | v28 | v31 | v34;
  v37 = v48;
  if (*v50)
  {
    sub_100008080(*v50);
  }

  if ((v35 & v37) != 0)
  {
    v38 = 32;
  }

  else
  {
    v38 = 0;
  }

  v39 = v36 | v38;
  v40 = v47;
  *(a1 + 304) = (v39 | v47) & ~(v45 | v46 | v44 | v13 | v16 | v19);
  if (qword_1025D4650 != -1)
  {
    sub_101940C48();
    v40 = v47;
  }

  v41 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v42 = *(a1 + 304);
    *buf = 68290051;
    *&buf[4] = 0;
    *v50 = 2082;
    *&v50[2] = "";
    v51 = 1025;
    v52 = v40;
    v53 = 1025;
    v54 = v45 | v46 | v44 | v13 | v16 | v19;
    v55 = 1025;
    v56 = v39;
    v57 = 1025;
    v58 = v42;
    _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setDefaultBlockedGnssConstellationSetting, platformDefaultBlockedConstellations:0x%{private}04X, forceEnabledConstellations:0x%{private}04X, forceBlockedConstellations:0x%{private}04X, defaultBlockedConstellations:0x%{private}04X}", buf, 0x2Au);
  }

  v43 = *a1;
  if (*a1)
  {
    *(v43 + 1328) = *(a1 + 304);
    if (*(a1 + 1223) == 1)
    {
      *(v43 + 1336) = 1;
    }
  }
}

void sub_1007FC62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100008080(a14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007FC678(void *a1, uint64_t *a2)
{
  sub_10080A6BC(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_100008080(v3);
  }

  return a1;
}

void sub_1007FC7B0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10067940C(&a15);
  operator delete();
}

void sub_1007FC7F0(uint64_t a1, _DWORD *a2, char *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 760) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101941E94();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssController::onDaemonStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101941EA8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssController::onDaemonStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1008032C4(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t *sub_1007FC9C8(uint64_t *a1)
{
  [*(a1[315] + 16) unregister:*(a1[315] + 8) forNotification:4];
  [*(a1[315] + 16) unregister:*(a1[315] + 8) forNotification:0];
  sub_1016CBED8(a1[140]);
  v2 = a1[339];
  if (v2)
  {
    [*(v2 + 16) unregister:*(v2 + 8) forNotification:15];
    v3 = a1[339];
    a1[339] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#GnssController,deconstructed", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101940C70(buf);
    v28 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLGnssController::~CLGnssController()", "%s\n", v28);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  v5 = a1[389];
  a1[389] = 0;
  if (v5)
  {
    operator delete();
  }

  v6 = a1[388];
  a1[388] = 0;
  if (v6)
  {
    operator delete();
  }

  v7 = a1[386];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[384];
  if (v8)
  {
    sub_100008080(v8);
  }

  sub_1003C93BC((a1 + 374), a1[375]);
  sub_1003C93BC((a1 + 345), a1[346]);
  v9 = a1[339];
  a1[339] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  sub_10080841C((a1 + 322));
  sub_10080839C((a1 + 316));
  v10 = a1[315];
  a1[315] = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = a1[314];
  a1[314] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  sub_1006F7EA8(a1 + 313, 0);
  if (*(a1 + 2455) < 0)
  {
    operator delete(a1[304]);
  }

  if (*(a1 + 2431) < 0)
  {
    operator delete(a1[301]);
  }

  if (*(a1 + 2263) < 0)
  {
    operator delete(a1[280]);
  }

  if (*(a1 + 2239) < 0)
  {
    operator delete(a1[277]);
  }

  v12 = a1[151];
  a1[151] = 0;
  if (v12)
  {
    operator delete();
  }

  sub_100808350(a1 + 150, 0);
  sub_100808304(a1 + 149, 0);
  sub_1008082B8(a1 + 148, 0);
  v13 = a1[147];
  a1[147] = 0;
  if (v13)
  {
    sub_1004949C8((a1 + 147), v13);
  }

  v14 = a1[146];
  a1[146] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  sub_10080826C(a1 + 145, 0);
  v15 = a1[144];
  a1[144] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = a1[143];
  a1[143] = 0;
  if (v16)
  {
    operator delete();
  }

  sub_100808220(a1 + 142, 0);
  sub_1008081D4(a1 + 141, 0);
  sub_100808188(a1 + 140, 0);
  sub_10080813C(a1 + 139, 0);
  sub_1008080DC(a1 + 138, 0);
  sub_10080805C((a1 + 134));
  v17 = a1[133];
  a1[133] = 0;
  if (v17)
  {
    operator delete();
  }

  sub_100808010(a1 + 132, 0);
  sub_100807FC4(a1 + 131, 0);
  sub_100807F78(a1 + 130, 0);
  sub_100807F2C(a1 + 129, 0);
  sub_100807EE0(a1 + 128, 0);
  sub_100807E94(a1 + 127, 0);
  sub_100807E48(a1 + 126, 0);
  sub_100807DB8(a1 + 125, 0);
  sub_100807D6C(a1 + 124, 0);
  sub_100807D20(a1 + 121, 0);
  v18 = a1[120];
  if (v18)
  {
    sub_100008080(v18);
  }

  sub_100807D20(a1 + 118, 0);
  v19 = a1[117];
  if (v19)
  {
    sub_100008080(v19);
  }

  sub_100807D20(a1 + 115, 0);
  v20 = a1[114];
  if (v20)
  {
    sub_100008080(v20);
  }

  sub_100807D20(a1 + 112, 0);
  v21 = a1[111];
  if (v21)
  {
    sub_100008080(v21);
  }

  sub_100807D20(a1 + 109, 0);
  v22 = a1[108];
  if (v22)
  {
    sub_100008080(v22);
  }

  sub_100807D20(a1 + 106, 0);
  v23 = a1[105];
  if (v23)
  {
    sub_100008080(v23);
  }

  v24 = a1[102];
  a1[102] = 0;
  if (v24)
  {
    (a1[103])();
  }

  v25 = a1[100];
  a1[100] = 0;
  if (v25)
  {
    (a1[101])();
  }

  sub_100807CD4(a1 + 91, 0);
  sub_1001C5560((a1 + 87));
  sub_1001C5560((a1 + 83));
  sub_1001C5560((a1 + 77));
  sub_1001C5560((a1 + 73));
  sub_100807C54((a1 + 66));
  sub_100807BD4((a1 + 62));
  sub_10067940C((a1 + 58));
  sub_1001C5560((a1 + 54));
  sub_100807AD4((a1 + 50));
  sub_100807B54((a1 + 46));
  sub_100807AD4((a1 + 42));
  sub_100134860((a1 + 35));
  v26 = *a1;
  *a1 = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  return a1;
}

void sub_1007FCFF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1007FD014(uint64_t a1, int a2)
{
  result = *(a1 + 2504);
  if (result)
  {
    if (a2)
    {
      return sub_100930AB4(result);
    }

    else
    {
      return sub_100930BC4(result);
    }
  }

  return result;
}

void sub_1007FD02C(uint64_t a1)
{
  if ((*(a1 + 744) & 1) == 0)
  {
    if (sub_10071ADE0())
    {
      current_queue = dispatch_get_current_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1007FDEB0;
      block[3] = &unk_102449A78;
      block[4] = a1;
      dispatch_async(current_queue, block);
    }
  }
}

uint64_t sub_1007FD0BC(uint64_t a1)
{
  if (*(a1 + 736))
  {
    if ((*(**a1 + 40))())
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v2 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssController::applyDeviceOperatingContext,device restart initiated", v10, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101941FC4();
      }

      sub_1001B6020(v12, a1 + 696);
      sub_1007FD590(a1, v12);
      sub_1001C5560(v12);
      sub_1001B6020(v11, a1 + 584);
      sub_1001B60DC(a1, v11);
      sub_1001C5560(v11);
    }

    else
    {
      v4 = *(a1 + 652);
      v5 = *(a1 + 572);
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v6 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10[0] = 67240192;
        v10[1] = v4 != v5;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLGnssController::applyDeviceOperatingContext,device restart not initiated,assistance restart needed,%{public}d", v10, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101941ED0(v4 != v5);
      }

      if (v4 != v5)
      {
        v7 = *(a1 + 720);
        if (v7)
        {
          (*(*v7 + 48))(v7);
        }

        v8 = *(a1 + 608);
        if (v8)
        {
          (*(*v8 + 48))(v8);
        }
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLGnssController::applyDeviceOperatingContext invoked when gps is not running ", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019420A8();
    }
  }

  result = *a1;
  if (*a1)
  {
    return (*(*result + 296))(result, a1 + 572);
  }

  return result;
}

void sub_1007FD3AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001C5560(va);
  _Unwind_Resume(a1);
}

void sub_1007FD3D4(int *a1)
{
  v9 = 0;
  time(&v9);
  p_tm_yday = &localtime(&v9)->tm_yday;
  if (*p_tm_yday != *a1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *a1;
      v5 = *p_tm_yday;
      *buf = 67240448;
      *v11 = v4;
      *&v11[4] = 1026;
      *&v11[6] = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#raven,resetRuntime,startYearDay,old,%{public}d,new,%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194218C();
    }

    *a1 = *p_tm_yday;
    *(a1 + 1) = 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101940C48();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 1);
    v8 = a1[4];
    *buf = 134349312;
    *v11 = v7;
    *&v11[8] = 1026;
    v12 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#raven,todayRuntime,%{public}.1f,budget,%{public}d,sec", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101942284();
  }
}

void sub_1007FD590(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    (*(*v3 + 48))(v3);
  }

  (*(**a1 + 24))();
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 68289282;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "deviceStop";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v9, 0x1Cu);
  }

  v5 = a1[57];
  if (v5)
  {
    (*(*v5 + 48))(v5);
  }

  if (a1[142])
  {
    v6 = a1[131];
    if (v6)
    {
      sub_10167EFDC(v6, (*a1 + 844));
      sub_10167EFE8(a1[131], (*a1 + 848));
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#gnssawd fGnssInterference == nullptr", v9, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101942468();
      }
    }

    sub_1016C1B28(a1[142], *a1 + 8, (*a1 + 1272));
    v8 = a1[142];
    if (v8)
    {
      sub_1001BD68C(v8, 4, 0);
    }
  }
}

void sub_1007FD7B4(uint64_t a1)
{
  v2 = *(a1 + 728);
  if (v2 && (*(a1 + 2569) & 1) == 0)
  {
    sub_10168A7F8(v2);
  }

  sub_1001BEAA4(a1);
  v3 = *(a1 + 1000);
  if (v3)
  {
    sub_1001BEE98(v3);
  }

  v4 = *(a1 + 1048);
  if (v4)
  {
    sub_1001BA05C(v4);
  }

  v5 = *(a1 + 992);
  if (v5)
  {
    sub_1001BA0FC(v5);
  }

  v6 = *(a1 + 1024);
  if (v6)
  {

    sub_101754E14(v6);
  }
}

uint64_t sub_1007FD838(void *a1)
{
  sub_1007FDF94(a1);
  v2 = a1[124];
  if (v2)
  {
    sub_100E0DE2C(v2);
  }

  v3 = a1[131];
  if (v3)
  {
    sub_10167EAAC(v3);
  }

  result = a1[125];
  if (result)
  {

    return sub_101221B5C();
  }

  return result;
}

uint64_t sub_1007FD898(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "shutdown";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  *(a1 + 744) = 0;
  return sub_1001BF630(a1 + 2576, 4);
}

uint64_t sub_1007FD984(uint64_t result, int a2)
{
  v2 = result;
  *(result + 568) = a2;
  if (a2 != 11)
  {
    if (a2 == 10)
    {
      result = sub_1007FDDF0(result);
      v3 = 1;
      goto LABEL_6;
    }

    if (a2)
    {
      return result;
    }
  }

  result = sub_1007FDD30(result);
  v3 = 0;
LABEL_6:
  *(v2 + 572) = v3;
  return result;
}

uint64_t sub_1007FD9DC(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssController::handleDeviceDisconnect,disconnected", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194309C();
  }

  *(a1 + 8) = 0;
  return sub_1001BF630(a1 + 2576, 6);
}

uint64_t sub_1007FDA84(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssController::handleDeviceConnect,connected", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101943178();
  }

  *(a1 + 8) = 1;
  return sub_1001BF630(a1 + 2576, 5);
}

uint64_t sub_1007FDB30(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "CLGnssController::handleApSleep", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101943330();
  }

  *(a1 + 1224) = 1;
  return sub_1001BF630(a1 + 2576, 8);
}

uint64_t sub_1007FDBDC(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssController::handleNilrBegin", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194340C();
  }

  *(a1 + 1249) = 1;
  return sub_1001BF630(a1 + 2576, 13);
}

uint64_t sub_1007FDC88(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssController::handleNilrEnd", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019434E8();
  }

  *(a1 + 1249) = 0;
  return sub_1001BF630(a1 + 2576, 14);
}

uint64_t sub_1007FDD30(uint64_t a1)
{
  v3 = off_102474048;
  v4 = a1;
  v5 = &v3;
  sub_100806178(&v3, (a1 + 584));
  sub_1001C5560(&v3);
  v3 = off_1024740C8;
  v4 = a1;
  v5 = &v3;
  sub_100806178(&v3, (a1 + 616));
  return sub_1001C5560(&v3);
}

uint64_t sub_1007FDDF0(uint64_t a1)
{
  v3 = off_102474148;
  v4 = a1;
  v5 = &v3;
  sub_100806178(&v3, (a1 + 584));
  sub_1001C5560(&v3);
  v3 = off_1024741C8;
  v4 = a1;
  v5 = &v3;
  sub_100806178(&v3, (a1 + 616));
  return sub_1001C5560(&v3);
}

void sub_1007FDEB8(uint64_t a1)
{
  v2 = *(a1 + 1000);
  if (v2)
  {
    sub_101221ABC(v2);
  }

  v3 = *(a1 + 992);
  if (v3)
  {

    sub_100E0DD48(v3);
  }
}

void sub_1007FDF08(void *a1)
{
  v2 = a1[145];
  if (v2)
  {
    sub_1016AD088(v2);
  }

  v3 = a1[91];
  if (v3)
  {
    sub_10168A7F8(v3);
  }

  v4 = a1[124];
  if (v4)
  {
    sub_100E0DE2C(v4);
  }

  v5 = a1[131];
  if (v5)
  {
    sub_10167EAAC(v5);
  }

  if (a1[125])
  {
    sub_101221B5C();
  }

  v6 = a1[150];
  if (v6)
  {
    sub_100EAC584(v6);
  }

  v7 = a1[128];
  if (v7)
  {

    sub_101754E14(v7);
  }
}

void sub_1007FDF94(uint64_t a1)
{
  v2 = *(a1 + 1184);
  if (v2)
  {
    sub_100D09384(v2);
  }

  v3 = *(a1 + 1192);
  if (v3)
  {
    sub_1010C043C(v3);
  }

  sub_1001B9940(a1);
}

void sub_1007FDFE0(uint64_t *a1, _DWORD *a2)
{
  v4 = a1 + 1228;
  v5 = sub_100265700(a1 + 1228);
  v6 = sub_100265700(a2);
  v7 = *(a1 + 2496);
  *(a1 + 2496) = sub_100C3DA80(a2);
  *(a1 + 2498) = sub_100C3DAB0(a2);
  if (qword_1025D4660 != -1)
  {
    sub_1019435C4();
  }

  v8 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 2496);
    *buf = 68289538;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *v24 = v7;
    *&v24[4] = 1026;
    *&v24[6] = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#thumper, Updating emergency state, wasInWifiEmergency:%{public}d, fInWifiEmergency:%{public}d}", buf, 0x1Eu);
    if (qword_1025D4660 != -1)
    {
      sub_1019435D8();
    }
  }

  v10 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    sub_100C3D494(a2, &__p);
    v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *v24 = v11;
    *&v24[8] = 1026;
    v25 = v5;
    v26 = 1026;
    v27 = v6;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, state:%{public, location:escape_only}s, wasInEmergency:%{public}hhd, inEmergencyNow:%{public}hhd}", buf, 0x28u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (!sub_100C3DAB0(v4) && sub_100C3DAB0(a2))
  {
    if (qword_1025D4660 != -1)
    {
      sub_1019435D8();
    }

    v12 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 1221);
      v14 = *(a1 + 1222);
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1026;
      *v24 = v13;
      *&v24[4] = 1026;
      *&v24[6] = v14;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#EmgContext, SimulationMode:%{public}d, ConformanceMode:%{public}d}", buf, 0x1Eu);
    }

    v15 = a1[141];
    if (v15)
    {
      sub_1016AAC40(v15);
    }

    v16 = a1[142];
    if (v16)
    {
      sub_1016C4C80(v16);
    }
  }

  v17 = *a2;
  *(v4 + 16) = a2[4];
  *v4 = v17;
  v18 = a1[124];
  if (v18)
  {
    *buf = *a2;
    *&buf[16] = a2[4];
    sub_100E10D4C(v18, buf);
  }

  if (v5 || !v6)
  {
    v19 = *a1;
    if (v6 || !v5)
    {
      *buf = *a2;
      *&buf[16] = a2[4];
      (*(*v19 + 304))(v19, buf);
      if (!v7)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *buf = *a2;
      *&buf[16] = a2[4];
      (*(*v19 + 304))(v19, buf);
      sub_1001BF630((a1 + 322), 12);
      *(a1 + 2497) = 0;
      if (!v7)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    sub_1001BF630((a1 + 322), 11);
    v20 = *a1;
    *buf = *a2;
    *&buf[16] = a2[4];
    (*(*v20 + 304))();
    *(*a1 + 1144) = 1;
    *(a1 + 2497) = 1;
    if (!v7)
    {
      goto LABEL_36;
    }
  }

  if ((a1[312] & 1) == 0 && *(a1 + 336) == 3 && *(a1 + 1296) == 1 && a1[141])
  {
    sub_101751B14((a1 + 157));
    sub_1016AA218(a1[141], (a1 + 157));
    sub_101752A9C((a1 + 157));
  }

LABEL_36:
  v21 = a1[128];
  if (v21)
  {
    sub_101754F64(v21, v6);
  }
}

void sub_1007FE440(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (sub_1000735F4(a1 + 316, a2))
  {
    *buf = a2;
    v6 = sub_10080DE84(a1 + 316, a2);
    sub_1007FE7B0((v6 + 3), a2);
    *(a1 + 1248) = *(a2 + 4);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 1248);
      *buf = 68289282;
      *&buf[4] = 0;
      v21 = 2082;
      v22 = "";
      v23 = 1026;
      v24 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Emergency Settings, HELO state:%{public}hhd}", buf, 0x18u);
    }

    v9 = a1[124];
    if (v9)
    {
      sub_100E11D00(v9, *(a2 + 4));
    }

    if (sub_10001CF04())
    {
      v10 = *(a1 + 2568) ^ 1;
      *buf = a2;
      *(sub_10080DE84(a1 + 316, a2) + 29) = v10;
      v11 = *(a1 + 2568);
      *buf = a2;
      *(sub_10080DE84(a1 + 316, a2) + 128) = v11;
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v12 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v13 = *a2;
        *buf = a2;
        v14 = *(sub_10080DE84(a1 + 316, a2) + 29);
        *buf = a2;
        v15 = *(sub_10080DE84(a1 + 316, a2) + 128);
        *buf = 68289794;
        *&buf[4] = 0;
        v21 = 2082;
        v22 = "";
        v23 = 1026;
        v24 = v13;
        v25 = 1026;
        v26 = v14;
        v27 = 1026;
        v28 = v15;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Emergency Settings, sim:%{public}d, enableEarlyReturnDuringEmergencyMode:%{public}hhd, configureVerticalUncertainty:%{public}hhd}", buf, 0x24u);
      }
    }

    v16 = *a1;
    *buf = a2;
    v17 = sub_10080DE84(a1 + 316, a2);
    (*(*v16 + 312))(v16, v17 + 3, a3);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v18 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v19 = *a2;
      *buf = 67240192;
      *&buf[4] = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#Warning, Unexpected SimInstance,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101943600(a2);
    }
  }
}

uint64_t sub_1007FE7B0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  v6 = *(a2 + 5);
  v5 = *(a2 + 6);
  v7 = *(a2 + 4);
  *(a1 + 112) = a2[14];
  *(a1 + 80) = v6;
  *(a1 + 96) = v5;
  *(a1 + 64) = v7;
  v8 = *(a2 + 1);
  v9 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = v9;
  *(a1 + 16) = v8;
  sub_10080640C(a1 + 120, (a2 + 15));
  std::string::operator=((a1 + 944), (a2 + 118));
  std::string::operator=((a1 + 968), (a2 + 121));
  v10 = a2[124];
  *(a1 + 1000) = *(a2 + 250);
  *(a1 + 992) = v10;
  v11 = a2[132];
  v12 = *(a2 + 65);
  v13 = *(a2 + 64);
  *(a1 + 1008) = *(a2 + 63);
  *(a1 + 1024) = v13;
  *(a1 + 1040) = v12;
  *(a1 + 1056) = v11;
  *(a1 + 1064) = *(a2 + 1064);
  std::string::operator=((a1 + 1072), (a2 + 134));
  v14 = *(a2 + 1108);
  *(a1 + 1096) = *(a2 + 137);
  *(a1 + 1108) = v14;
  if (a1 == a2)
  {
    *(a1 + 1152) = *(a2 + 1152);
    std::string::operator=((a1 + 1160), (a2 + 145));
    v16 = *(a2 + 1196);
    *(a1 + 1184) = *(a2 + 74);
    *(a1 + 1196) = v16;
  }

  else
  {
    sub_100806B38(a1 + 1128, a2[141], a2[142], 0xAAAAAAAAAAAAAAABLL * ((a2[142] - a2[141]) >> 4));
    *(a1 + 1152) = *(a2 + 1152);
    std::string::operator=((a1 + 1160), (a2 + 145));
    v15 = *(a2 + 74);
    *(a1 + 1196) = *(a2 + 1196);
    *(a1 + 1184) = v15;
    sub_100806B38(a1 + 1216, a2[152], a2[153], 0xAAAAAAAAAAAAAAABLL * ((a2[153] - a2[152]) >> 4));
  }

  std::string::operator=((a1 + 1240), (a2 + 155));
  std::string::operator=((a1 + 1264), (a2 + 158));
  std::string::operator=((a1 + 1288), (a2 + 161));
  std::string::operator=((a1 + 1312), (a2 + 164));
  return a1;
}

uint64_t sub_1007FE964(_BYTE *a1, uint64_t a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:NILR lockout status, locked:%{public}hhd}", v6, 0x18u);
  }

  a1[2499] = a2;
  (*(**a1 + 320))(*a1, a2);
  return sub_1001BF630((a1 + 2576), 17);
}

uint64_t sub_1007FEA8C(uint64_t a1, double *a2)
{
  __asm { FMOV            V0.2D, #-1.0 }

  sub_100021ED8(&v11);
  v9 = sub_1002A9660(a1, a2);
  if (v12)
  {
    sub_100008080(v12);
  }

  return v9;
}

void sub_1007FEB48(_Unwind_Exception *a1)
{
  if (STACK[0x2B8])
  {
    sub_100008080(STACK[0x2B8]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007FEB60(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_1007FEBA8(uint64_t *a1, double a2)
{
  v2 = a1 + 383;
  if (a1[383])
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v4 = *v2;
      *v21 = 134349056;
      *&v21[4] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "constructRavenCtrl,fRavenController,exists,%{public}p,abort", v21, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101943E10();
    }
  }

  else
  {
    v7 = (a1 + 387);
    v8 = *(a1 + 387);
    if (v8 >= 0.0)
    {
      if (v8 < a2)
      {
        if (qword_1025D4650 != -1)
        {
          sub_10194117C();
        }

        v11 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *v7;
          *v21 = 134349312;
          *&v21[4] = a2;
          *&v21[12] = 2050;
          *&v21[14] = v12;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "constructRavenCtrl,start,now,%{public}.3f,toEnable,%{public}.3f", v21, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101943EFC();
        }

        sub_100C03784(a1[95], (a1 + 385), v21);
        v14 = *v21;
        v13 = *&v21[8];
        *v21 = 0;
        *&v21[8] = 0;
        a1[383] = v14;
        v15 = a1[384];
        a1[384] = v13;
        if (v15)
        {
          sub_100008080(v15);
          if (*&v21[8])
          {
            sub_100008080(*&v21[8]);
          }

          v13 = a1[384];
        }

        v16 = *v2;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
        }

        a1[385] = v16;
        v17 = a1[386];
        a1[386] = v13;
        if (v17)
        {
          std::__shared_weak_count::__release_weak(v17);
        }

        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v18 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *v2;
          *v21 = 134349056;
          *&v21[4] = v19;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "constructRavenCtrl,finish,%{public}p", v21, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101944008();
        }

        if (*v2)
        {
          sub_100C04344(*v2);
          if (*a1)
          {
            (*(**a1 + 232))(*a1);
          }

          v20 = a1[388];
          if (v20)
          {
            *(v20 + 24) = a2;
            *(v20 + 32) = 1;
          }
        }

        else
        {
          *v7 = 1.79769313e308;
        }

        sub_1007FEF34(a1);
      }
    }

    else
    {
      *v7 = a2 + 10.0;
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v7;
        *v21 = 134349312;
        *&v21[4] = a2;
        *&v21[12] = 2050;
        *&v21[14] = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "constructRavenCtrl,deferred,now,%{public}.3f,toEnable,%{public}.3f", v21, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019440F4();
      }
    }
  }
}

void sub_1007FEF34(uint64_t *a1)
{
  v1 = a1[116];
  if (v1)
  {
    v10 = 0xBFF0000000000000;
    sub_1016B0E50(v1 + 24, &v10, &__p);
    if (a1[383])
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v4 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          *&buf[4] = 0;
          v12 = 2082;
          v13 = "";
          v14 = 2082;
          v15 = "#rof,injectRavenOrbitFile";
          _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", buf, 0x1Cu);
        }

        sub_100C09260(a1[383]);
      }
    }

    v5 = *a1;
    if (*a1)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v6 = __p.__r_.__value_.__l.__size_;
      }

      v7 = a1[116];
      v8 = (v7 + 24);
      if (*(v7 + 47) < 0)
      {
        v8 = *v8;
      }

      sub_10000EC00(buf, v8);
      sub_1016C3E0C(v5 + 8, buf, v6 == 0, 4, &v10);
      if (SBYTE3(v15) < 0)
      {
        operator delete(*buf);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1007FF0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007FF118(uint64_t a1)
{
  v2 = sub_1000081AC();
  if (*(a1 + 32) == 1)
  {
    v3 = *(a1 + 24);
    if (v2 > v3)
    {
      *(a1 + 8) = v2 - v3 + *(a1 + 8);
    }

    *(a1 + 32) = 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 8);
    v6 = 134349056;
    v7 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#raven,runtime,%{public}.1f,sec", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101944200();
  }
}

void sub_1007FF220(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1200);
  if (v4)
  {
    sub_100EABEF8(v4, a2);
  }

  v5 = *(a1 + 1208);
  if (v5)
  {
    sub_1009BA79C(v5, a2);
  }

  if (*(a2 + 96) == 19)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a2 + 16);
      *buf = 67240192;
      *&buf[4] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "handleHkWorkoutCallback,swimming,ignored,event,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101944940();
    }

    return;
  }

  v10 = *(a2 + 16);
  v9 = (a2 + 16);
  v8 = v10;
  if (v10 <= 2)
  {
    if (!v8)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v17 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "handleHkWorkoutCallback,DidStart", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194467C();
      }

      goto LABEL_57;
    }

    if (v8 != 1)
    {
      goto LABEL_79;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "handleHkWorkoutCallback,DidStop", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019442EC();
    }

LABEL_42:
    if (**(a1 + 3112) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v15 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "handleHkWorkoutCallback,deconstructRavenController", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019444B4();
      }

      sub_1001C55E4(a1);
    }

    v16 = 0;
    goto LABEL_58;
  }

  switch(v8)
  {
    case 3:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v13 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "handleHkWorkoutCallback,WillResume", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101944598();
      }

      goto LABEL_57;
    case 15:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v14 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "handleHkWorkoutCallback,DidEnd", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019443D0();
      }

      goto LABEL_42;
    case 13:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v11 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "handleHkWorkoutCallback,SessionDidBegin", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101944760();
      }

LABEL_57:
      v16 = 1;
LABEL_58:
      **(a1 + 3112) = v16;
      v18 = *(a1 + 896);
      if (v18)
      {
        sub_1002546D0(v18, v16);
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v19 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289538;
          *&buf[4] = 0;
          *v30 = 2082;
          *&v30[2] = "";
          v31 = 2082;
          v32 = "#rti,updateRtiDownloadRateOnWorkoutOrFocusedNav";
          v33 = 1026;
          v34 = v16;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isHkWorkoutSession:%{public}hhd}", buf, 0x22u);
        }
      }

      if (*(a1 + 872))
      {
        sub_10001CAF4(buf);
        v28 = 0;
        v20 = sub_10001CB4C(*buf, "EnableRteUpdateOnHkWorkoutSession", &v28);
        v21 = v20 ^ 1 | v28;
        if (*v30)
        {
          sub_100008080(*v30);
        }

        if (v21)
        {
          sub_1002568F8(*(a1 + 872), v16, 0);
          if (qword_1025D4650 != -1)
          {
            sub_101940C48();
          }

          v22 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *v30 = 2082;
            *&v30[2] = "";
            v31 = 2082;
            v32 = "#rte,updateRteRofFileDownloadRateOnWorkoutOrFocusedNav";
            v33 = 1026;
            v34 = v16;
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isHkWorkoutSession:%{public}hhd}", buf, 0x22u);
          }
        }
      }

      if (*(a1 + 944))
      {
        sub_10001CAF4(buf);
        v28 = 0;
        v23 = sub_10001CB4C(*buf, "EnableRteUpdateOnHkWorkoutSession", &v28);
        v24 = v23 ^ 1 | v28;
        if (*v30)
        {
          sub_100008080(*v30);
        }

        if (v24)
        {
          sub_1002568F8(*(a1 + 944), v16, 1);
          if (qword_1025D4650 != -1)
          {
            sub_101940C48();
          }

          v25 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *v30 = 2082;
            *&v30[2] = "";
            v31 = 2082;
            v32 = "#rof,updateRteRofFileDownloadRateOnWorkoutOrFocusedNav";
            v33 = 1026;
            v34 = v16;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isHkWorkoutSession:%{public}hhd}", buf, 0x22u);
          }
        }
      }

      return;
  }

LABEL_79:
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v26 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v27 = *v9;
    *buf = 67240192;
    *&buf[4] = v27;
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "handleHkWorkoutCallback,Unhandled,eventType,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101944844();
  }
}

void sub_1007FF8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007FF918(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssController::handleSleep,treat as a device disconnect event", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101944A3C();
  }

  *(a1 + 8) = 0;
  return sub_1001BF630(a1 + 2576, 6);
}

void sub_1007FF9C0(uint64_t *a1, uint64_t *a2)
{
  if (*a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "injectassistancefile";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v5 = *a1;
    v6 = *a2;
    if (*(*a2 + 47) < 0)
    {
      sub_100007244(__p, *(v6 + 24), *(v6 + 32));
    }

    else
    {
      *__p = *(v6 + 24);
      v10 = *(v6 + 40);
    }

    (*(*v5 + 56))(v5, __p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = a1[142];
    if (v8)
    {
      sub_1016C57A8(v8, 2);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "assistanceFile,null,invalid parameter", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101944B18();
    }
  }
}

void sub_1007FFB94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007FFBB8(uint64_t *a1, uint64_t *a2)
{
  if (*a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "injectRealTimeEphemerisFile";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v5 = *a1;
    v6 = *a2;
    if (*(*a2 + 47) < 0)
    {
      sub_100007244(__p, *(v6 + 24), *(v6 + 32));
    }

    else
    {
      *__p = *(v6 + 24);
      v10 = *(v6 + 40);
    }

    (*(*v5 + 144))(v5, __p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = a1[142];
    if (v8)
    {
      sub_1016C57A8(v8, 1);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "rteFile,null,invalid parameter", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101944C04();
    }
  }
}

void sub_1007FFD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007FFDB0(uint64_t *a1, void *a2)
{
  if (*a2)
  {
    sub_1007FEF34(a1);
    if (*a1)
    {
      (*(**a1 + 168))(*a1, *a2 + 24);
    }

    v4 = a1[142];
    if (v4)
    {

      sub_1016C57A8(v4, 4);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "#rof,null,invalid file parameter", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101944CF0();
    }
  }
}

void sub_1007FFEB8(uint64_t *a1, uint64_t *a2)
{
  if (*a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "injectrtifile";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v5 = *a1;
    v6 = *a2;
    if (*(*a2 + 47) < 0)
    {
      sub_100007244(__p, *(v6 + 24), *(v6 + 32));
    }

    else
    {
      *__p = *(v6 + 24);
      v10 = *(v6 + 40);
    }

    (*(*v5 + 160))(v5, __p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = a1[142];
    if (v8)
    {
      sub_1016C57A8(v8, 3);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "rtiFile,null,invalid parameter", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101944DD4();
    }
  }
}

void sub_10080008C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008000B0(void *a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "injectbroadcastephemerisfile";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  (*(**a1 + 184))();
  v3 = a1[142];
  if (v3)
  {
    sub_1016C57A8(v3, 1);
  }
}

uint64_t sub_1008001C4(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "handleMeasurementFeatures";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  result = *(a1 + 520);
  if (result)
  {
    if ((*(a1 + 560) & 1) == 0)
    {
      return (*(*result + 48))(result, a2);
    }
  }

  return result;
}

void sub_1008002E4(uint64_t *a1, int a2, __int128 *a3)
{
  if (a2 > 1)
  {
    if ((a2 - 2) < 2 || a2 == 6)
    {
      return;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    if (a2 != 1)
    {
LABEL_18:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = a2;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Warning Unsupported notification, notification:%{public, location:CLGpsAssistant_Type::Notification}lld}", buf, 0x1Cu);
      }

      return;
    }

    v10 = *a3;
    v12 = a3[1];
    v14 = a3[2];
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68291330;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "MMP";
      *&buf[28] = 2050;
      *&buf[30] = v10;
      *&buf[38] = 1040;
      *&buf[40] = LocationLogEncryptionDataSize();
      *&buf[44] = 2098;
      *&buf[46] = LocationLogEncryptionEncryptData();
      *&buf[54] = 1040;
      *&buf[56] = LocationLogEncryptionDataSize();
      *&buf[60] = 2098;
      *&buf[62] = LocationLogEncryptionEncryptData();
      *&buf[70] = 2050;
      *&buf[72] = *(&v12 + 1);
      *v21 = 2050;
      *&v21[2] = v14;
      *&v21[10] = 2050;
      *&v21[12] = *(&v14 + 1);
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, timestamp:%{public}f, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, uncEllipseSemiMajor:%{public}f, uncEllipseSemiMinor:%{public}f, uncEllipseAzimuth:%{public}f}", buf, 0x64u);
    }

    v6 = *a1;
    *buf = v10;
    *&buf[16] = v12;
    *&buf[32] = v14;
    (*(*v6 + 72))(v6, buf);
  }

  else
  {
    v17 = a3[4];
    v18 = a3[5];
    v19 = *(a3 + 12);
    v11 = *a3;
    v13 = a3[1];
    v15 = a3[2];
    v16 = a3[3];
    if (v18 == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68292355;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "DOT";
        *&buf[28] = 2050;
        *&buf[30] = v11;
        *&buf[38] = 1040;
        *&buf[40] = LocationLogEncryptionDataSize();
        *&buf[44] = 2098;
        *&buf[46] = LocationLogEncryptionEncryptData();
        *&buf[54] = 1040;
        *&buf[56] = LocationLogEncryptionDataSize();
        *&buf[60] = 2098;
        *&buf[62] = LocationLogEncryptionEncryptData();
        *&buf[70] = 2050;
        *&buf[72] = v16;
        *v21 = 2050;
        *&v21[2] = *(&v16 + 1);
        *&v21[10] = 2050;
        *&v21[12] = v17;
        *&v21[20] = 2053;
        *&v21[22] = *(&v11 + 1);
        v22 = 2053;
        v23 = v13;
        v24 = 2050;
        v25 = *(&v15 + 1);
        v26 = 2050;
        v27 = *(&v18 + 1);
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, timestamp:%{public}f, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, directionOfTravel:%{public}f, directionOfTravelUnc:%{public}f, roadWidth:%{public}f, startLatitude:%{sensitive}.08f, startLongitude:%{sensitive}.08f, lengthOfLinearSegment:%{public}f, machtime:%{public}f}", buf, 0x8Cu);
      }

      v8 = *a1;
      *buf = v11;
      *&buf[16] = v13;
      *&buf[32] = v15;
      *&buf[48] = v16;
      *&v21[16] = v19;
      *&buf[64] = v17;
      *v21 = v18;
      (*(*v8 + 64))(v8, buf);
    }
  }
}

uint64_t sub_10080073C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (*a1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134350080;
      v27 = a5;
      v28 = 2050;
      v29 = a6;
      v30 = 2050;
      v31 = a2;
      v32 = 2050;
      v33 = a3;
      v34 = 2050;
      v35 = a4;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning,GNSS_SEN,StartingSensorWhenAlreadyRunning,StoppingExisting,SampleRate,%{public}lf,ReportRate,%{public}lf,Callback,%{public}p,silo,%{public}p,context,%{public}p", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v25 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssSensorAdapter<CLGyro, 0>::start(double, double, DataHandler, CLSilo *, void *) [SensorType = CLGyro, notification = 0]", "%s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  v21 = (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v22 = ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a5 >= 0.0)
  {
    v22 = 0;
    v21 = 0;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v21 = 1;
  }

  v23 = (*&a5 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v21;
  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v23 = 1;
  }

  if (a6 > a5 || ((v23 | v22) & 1) != 0 || a6 <= 0.0)
  {
LABEL_8:
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349312;
      v27 = a5;
      v28 = 2050;
      v29 = a6;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "GNSS_SEN,InvalidParameters,sampleRate,%{public}lf,reportRate,%{public}lf", buf, 0x16u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101945370(result, v14, v15, v16, v17, v18, v19, v20);
      return 0;
    }
  }

  else
  {
    if (sub_10098EAD4())
    {
      operator new();
    }

    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "GNSS_SEN,Could not get the sensor controller", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101945284();
      return 0;
    }
  }

  return result;
}

void sub_100800B38(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100800B68(uint64_t a1)
{
  if (*a1)
  {
    *a1 = 0;
    (*(a1 + 8))();
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v1 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *v2 = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_FAULT, "GNSS_SEN,Tried stopping when not running", v2, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101945490();
    }
  }
}

void sub_100800C1C(uint64_t a1)
{
  if (*a1)
  {
    *a1 = 0;
    (*(a1 + 8))();
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v1 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *v2 = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_FAULT, "GNSS_SEN,Tried stopping when not running", v2, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194557C();
    }
  }
}

uint64_t sub_100800CD0(void *a1, int a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289538;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "sendAllowGnssDwellDutyCycling";
    v11 = 1026;
    v12 = a2 == 1;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, allow:%{public}hhd}", v6, 0x22u);
  }

  return (*(**a1 + 248))(*a1, a2 == 1);
}

void sub_100800DFC(void *a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v8 = *a3;
    v11 = 67240192;
    v12 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Settings Notification,%{public}d", &v11, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019460CC(a3);
  }

  if (*a3)
  {
    if (*a3 == 4)
    {
      sub_100800F94(a1, *(a4 + 188));
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *a3;
        v11 = 67240192;
        v12 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,unhandled notification,%{public}d", &v11, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019461B8(a3);
      }
    }
  }

  else
  {
    sub_100800FBC(a1);
  }
}

void sub_100800F94(void *a1, int a2)
{
  if (*(a1 + 187) != a2)
  {
    *(a1 + 187) = a2;
    if (a2)
    {
      if (a2 == 1)
      {
        sub_1008010C8(a1);
      }
    }

    else
    {
      sub_1008012BC(a1);
    }
  }
}

uint64_t sub_100800FBC(void *a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "resetprivacyinfo";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  return (*(**a1 + 280))(*a1);
}

void sub_1008010C8(void *a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 68289282;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "enablelocationservice";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v10, 0x1Cu);
  }

  (*(**a1 + 264))(*a1);
  sub_1001BF630((a1 + 322), 9);
  if (*(a1 + 1221) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning,fIsSimulatorMode,1,cannot trigger assistance download", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019462A4();
    }
  }

  else
  {
    v4 = a1[106];
    if (v4)
    {
      sub_1016DA050(v4, 1);
    }

    v5 = a1[109];
    if (v5)
    {
      sub_1016DA050(v5, 1);
    }

    v6 = a1[118];
    if (v6)
    {
      sub_1016DA050(v6, 1);
    }

    v7 = a1[112];
    if (v7)
    {
      sub_1016DA050(v7, 1);
    }

    v8 = a1[115];
    if (v8)
    {
      sub_1016DA050(v8, 1);
    }

    v9 = a1[121];
    if (v9)
    {
      sub_1016DA050(v9, 1);
    }
  }
}

uint64_t sub_1008012BC(void *a1)
{
  sub_1001BF630((a1 + 322), 10);
  v2 = a1[124];
  if (v2)
  {
    sub_100E12710(v2);
  }

  sub_10170BFB0();
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = "disablelocationservice";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  return (*(**a1 + 272))(*a1);
}

void sub_1008013E8(void *a1)
{
  if (*a1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v4[0] = 68289282;
      v4[1] = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "resetcontrolplanestatus";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v4, 0x1Cu);
    }

    (*(**a1 + 328))(*a1);
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_1019435C4();
    }

    v3 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v4[0]) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "NilrDbg,device not created yet", v4, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101946380();
    }
  }
}

void sub_100801570(uint64_t a1, uint64_t a2)
{
  *(a1 + 1280) = *(a2 + 4);
  *(a1 + 1296) = 1;
  *(a1 + 1304) = vextq_s8(*(a2 + 20), *(a2 + 20), 8uLL);
  *(a1 + 1320) = *(a2 + 36);
  *(a1 + 1344) = 3;
  *(a1 + 1404) = 0;
  *(a1 + 1352) = 12;
  v4 = *(a2 + 96);
  v5 = v4 == 10;
  v6 = (v4 & 0xFFFFFFF7) == 1;
  if (v4 == 11 || v4 == 4)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 1336) |= (v5 << 6) | v6 | v8;
  if (qword_1025D4660 != -1)
  {
    sub_1019435C4();
  }

  v9 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    v10 = LocationLogEncryptionDataSize();
    v11 = LocationLogEncryptionEncryptData();
    v12 = LocationLogEncryptionDataSize();
    v13 = LocationLogEncryptionEncryptData();
    v14 = *(a2 + 28);
    v15 = *(a2 + 20);
    v16 = *(a1 + 1336);
    v17[0] = 68290819;
    v17[1] = 0;
    v18 = 2082;
    v19 = "";
    v20 = 1040;
    v21 = v10;
    v22 = 2098;
    v23 = v11;
    v24 = 1040;
    v25 = v12;
    v26 = 2098;
    v27 = v13;
    v28 = 2049;
    v29 = v14;
    v30 = 2049;
    v31 = v15;
    v32 = 1025;
    v33 = v16;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#awd #thumper location log, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, alt:%{private}f, accuracy:%{private}f, source:%{private}u}", v17, 0x4Cu);
  }
}

void sub_10080175C(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 1136);
  if (v2)
  {
    sub_1016C4D5C(v2, a2);
  }
}

double sub_10080176C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 992);
  if (v2)
  {
    *&result = sub_100E12608(v2, a2).n128_u64[0];
  }

  return result;
}

uint64_t sub_10080177C(void *a1, uint64_t a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 68289282;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = "controlplanestatusreport";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v8, 0x1Cu);
  }

  if (*a1)
  {
    return (*(**a1 + 336))(*a1, a2);
  }

  if (qword_1025D4660 != -1)
  {
    sub_1019435D8();
  }

  v6 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "NilrDbg,device not created yet", v8, 2u);
  }

  v7 = sub_10000A100(121, 0);
  result = 0;
  if (v7)
  {
    sub_101946464();
    return 0;
  }

  return result;
}

void sub_10080191C(int *a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67240192;
    v5[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLGC,L5Context,Update,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101946AC4(a2);
  }

  a1[3] = a2;
  sub_1001B9940(a1);
}

void sub_100801A08(int *a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67240192;
    v5[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLGC,L1Context,Update,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101946BB4(a2);
  }

  a1[4] = a2;
  sub_1001B9940(a1);
}

void sub_100801AF4(void *a1, void *a2)
{
  *(a1 + 752) = a2;
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67240192;
    v10[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLGC,isAirborne,%{public}d", v10, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101946F80(a2);
  }

  if (*a1)
  {
    (*(**a1 + 256))(*a1, a2);
  }

  v5 = a1[132];
  if (v5)
  {
    sub_1016FF278(v5, a2);
  }

  v6 = a1[127];
  if (v6)
  {
    sub_1009BA6C0(v6, a2);
  }

  v7 = a1[130];
  if (v7)
  {
    sub_100746340(v7, a2);
  }

  v8 = a1[124];
  if (v8)
  {
    sub_100E1262C(v8, a2);
  }

  v9 = a1[138];
  if (v9)
  {
    sub_101753DF8(v9, a2);
  }
}

void sub_100801C60(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 1221);
    v4 = *(a1 + 1222);
    v6[0] = 67109376;
    v6[1] = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssController::handleOTADeleteRequest,fIsSimulatorMode,%d,fIsConformanceMode,%d", v6, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194706C();
  }

  if ((*(a1 + 1221) & 1) != 0 || *(a1 + 1222) == 1)
  {
    if (*(a1 + 736))
    {
      *(a1 + 648) = *(a1 + 568);
      *(a1 + 656) = *(a1 + 576);
      sub_100806104((a1 + 664), a1 + 584);
      sub_100806104((a1 + 696), a1 + 616);
      *(a1 + 577) = 1;
      sub_1001BF630(a1 + 2576, 15);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLGnssController::handleOTADeleteRequest,simulator/conformance mode not enabled,do nothing", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101947164();
    }
  }
}

uint64_t sub_100801E14(int *a1, void *a2)
{
  v4 = sub_1001BED94(a1);
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109376;
    v7[1] = a2;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#clgda,handleGnssDisablementAssertRsp,status,%d,band,%d", v7, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101947240(a2, v4);
  }

  return sub_100801F1C((a1 + 132), v4, a2);
}

uint64_t sub_100801F1C(uint64_t a1, int a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000CF05C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_100801F78(void *a1, void *a2)
{
  v2 = a2;
  v4 = a1[148];
  if (v4)
  {
    sub_100D09194(v4, a2);
  }

  v5 = a1[112];
  if (v5)
  {
    sub_1002546D0(v5, v2);
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "#rti,updateRtiDownloadRateOnWorkoutOrFocusedNav";
      v20 = 1026;
      v21 = v2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isFitnessSession:%{public}hhd}", buf, 0x22u);
    }
  }

  v7 = a1[106];
  if (v7)
  {
    sub_100256634(v7, v2);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "#ee,updateEeFileDownloadRateOnWorkoutOrFocusedNav";
      v20 = 1026;
      v21 = v2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isFitnessSession:%{public}hhd}", buf, 0x22u);
    }
  }

  sub_10001CAF4(buf);
  v15 = 0;
  v9 = sub_10001CB4C(*buf, "EnableRteUpdateOnFitnessSession", &v15);
  v10 = v9 ^ 1 | v15;
  if (*v17)
  {
    sub_100008080(*v17);
  }

  if (v10)
  {
    v11 = a1[109];
    if (v11)
    {
      sub_1002568F8(v11, v2, 0);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v12 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        *v17 = 2082;
        *&v17[2] = "";
        v18 = 2082;
        v19 = "#rte,updateRteRofFileDownloadRateOnWorkoutOrFocusedNav";
        v20 = 1026;
        v21 = v2;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isFitnessSession:%{public}hhd}", buf, 0x22u);
      }
    }

    v13 = a1[118];
    if (v13)
    {
      sub_1002568F8(v13, v2, 1);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v14 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        *v17 = 2082;
        *&v17[2] = "";
        v18 = 2082;
        v19 = "#rof,updateRteRofFileDownloadRateOnWorkoutOrFocusedNav";
        v20 = 1026;
        v21 = v2;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isFitnessSession:%{public}hhd}", buf, 0x22u);
      }
    }
  }
}

void sub_1008022B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008022D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 2569) == 1)
    {
      sub_10080250C(a1, 0);
      *(a1 + 560) = 1;
    }

    if (sub_1001B9B0C() && (a2 & 1) != 0)
    {
      v4 = 3;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 560) == 1)
    {
      *(a1 + 560) = 0;
      sub_10080250C(a1, 1);
    }

    sub_1001B9B0C();
  }

  if (sub_1001B9B0C() | a2 ^ 1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

LABEL_13:
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 2704);
    v7 = *(a1 + 560);
    v10[0] = 67109632;
    v10[1] = v6;
    v11 = 1024;
    v12 = v4;
    v13 = 1026;
    v14 = v7;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#clgda,gnss,setAnyClientRegisteredForBasebandCausesL1Interference,curBand,%d,reqBand,%d,fIsBBL1InterferenceModePausedFrequencyAssertion,%{public}d", v10, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194733C(a1, v4);
  }

  v8 = *a1;
  if (*a1)
  {
    if (v4 != *(a1 + 2704))
    {
      *(a1 + 2704) = v4;
      sub_1001B9940(a1);
      v8 = *a1;
    }

    (*(*v8 + 344))(v8, a2);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#clgda,gnss,setAnyClientRegisteredForBasebandCausesL1Interference,device does not exist", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101947448();
    }
  }
}

void sub_10080250C(uint64_t a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#tt,gnss,setAnyClientRegisteredWithBasebandTimeFreqTransferAssert,%d", v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101947524(a2);
  }

  if (*(a1 + 2569) != a2 && *(a1 + 728) && *(a1 + 736) && (sub_100718DD0() || sub_10013485C()))
  {
    sub_10168A7F8(*(a1 + 728));
    sub_1001C4404(*(a1 + 728), a2);
  }

  *(a1 + 2569) = a2;
  if ((a2 & 1) == 0)
  {
    *(a1 + 560) = 0;
  }

  v5 = *(a1 + 1024);
  if (v5)
  {
    sub_101755070(v5, a2);
  }
}

uint64_t sub_10080267C(uint64_t a1)
{
  result = *(a1 + 2504);
  if (result)
  {
    return sub_100930F84(result);
  }

  return result;
}

uint64_t sub_10080268C(uint64_t *a1, char a2)
{
  v4 = a1[132];
  if (v4)
  {
    sub_1016FF654(v4, a2);
  }

  return sub_1008026D8(a1, a2);
}

uint64_t sub_1008026D8(uint64_t *a1, char a2)
{
  *(a1 + 2568) = a2;
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 2568);
    *buf = 68289282;
    *&buf[4] = 0;
    v23 = 2082;
    v24 = "";
    v25 = 1026;
    v26 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:issueEmergencySettingsUpdate, isInDEMDeweightArea:%{public}hhd}", buf, 0x18u);
  }

  v5 = *(a1 + 2568) ^ 1;
  v21 = 0;
  *buf = &v21;
  *(sub_10080DE84(a1 + 316, &v21) + 29) = v5;
  v6 = *(a1 + 2568);
  v21 = 0;
  *buf = &v21;
  *(sub_10080DE84(a1 + 316, &v21) + 128) = v6;
  if (qword_1025D4650 != -1)
  {
    sub_101940C48();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v21 = 0;
    *buf = &v21;
    v8 = *(sub_10080DE84(a1 + 316, &v21) + 29);
    v20 = 0;
    *buf = &v20;
    v9 = *(sub_10080DE84(a1 + 316, &v20) + 128);
    *buf = 68289794;
    *&buf[4] = 0;
    v23 = 2082;
    v24 = "";
    v25 = 1026;
    v26 = 0;
    v27 = 1026;
    v28 = v8;
    v29 = 1026;
    v30 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Update Emergency Settings, sim:%{public}d, enableEarlyReturnDuringEmergencyMode:%{public}hhd, configureVerticalUncertainty:%{public}hhd}", buf, 0x24u);
  }

  v10 = *a1;
  v21 = 0;
  *buf = &v21;
  v11 = sub_10080DE84(a1 + 316, &v21);
  (*(*v10 + 312))(v10, v11 + 3, 5);
  result = sub_1000649A0();
  if (result)
  {
    v13 = *(a1 + 2568) ^ 1;
    v21 = 1;
    *buf = &v21;
    *(sub_10080DE84(a1 + 316, &v21) + 29) = v13;
    v14 = *(a1 + 2568);
    v21 = 1;
    *buf = &v21;
    *(sub_10080DE84(a1 + 316, &v21) + 128) = v14;
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v15 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v21 = 1;
      *buf = &v21;
      v16 = *(sub_10080DE84(a1 + 316, &v21) + 29);
      v20 = 1;
      *buf = &v20;
      v17 = *(sub_10080DE84(a1 + 316, &v20) + 128);
      *buf = 68289794;
      *&buf[4] = 0;
      v23 = 2082;
      v24 = "";
      v25 = 1026;
      v26 = 1;
      v27 = 1026;
      v28 = v16;
      v29 = 1026;
      v30 = v17;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Update Emergency Settings, sim:%{public}d, enableEarlyReturnDuringEmergencyMode:%{public}hhd, configureVerticalUncertainty:%{public}hhd}", buf, 0x24u);
    }

    v18 = *a1;
    v21 = 1;
    *buf = &v21;
    v19 = sub_10080DE84(a1 + 316, &v21);
    return (*(*v18 + 312))(v18, v19 + 3, 5);
  }

  return result;
}

void sub_100802B48(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 4);
    v6 = *(a2 + 12);
    v8 = 134545921;
    v9 = v5;
    v10 = 2053;
    v11 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "forwardRelayedLocation location,lat,%{sensitive}+.6f,lon,%{sensitive}.6f>", &v8, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101947610();
  }

  v7 = *(a1 + 992);
  if (v7)
  {
    sub_100E10AD8(v7, a2);
  }
}

void sub_100802C4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2504);
  if (v2)
  {
    sub_100931190(v2, a2);
  }
}

void sub_100802C5C(_DWORD *a1, uint64_t a2)
{
  buf[0] = 0;
  v3 = sub_10001CB4C(a2, "IsBeidouDisabled", buf);
  if ((v3 & buf[0]) != 0)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  buf[0] = 0;
  v5 = sub_10001CB4C(a2, "IsGalileoDisabled", buf);
  if ((v5 & buf[0]) != 0)
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  buf[0] = 0;
  v7 = sub_10001CB4C(a2, "IsGlonassDisabled", buf);
  if ((v7 & buf[0]) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  buf[0] = 0;
  if (sub_10001CB4C(a2, "IsGpsDisabled", buf))
  {
    v9 = buf[0];
  }

  else
  {
    v9 = 0;
  }

  buf[0] = 0;
  v10 = sub_10001CB4C(a2, "IsQzssDisabled", buf);
  if ((v10 & buf[0]) != 0)
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  buf[0] = 0;
  v12 = sub_10001CB4C(a2, "IsNavicDisabled", buf);
  if ((v12 & buf[0]) != 0)
  {
    v13 = 32;
  }

  else
  {
    v13 = 0;
  }

  sub_10001CAF4(buf);
  LOBYTE(v50[0]) = 0;
  v14 = sub_10001CB4C(*buf, "GnssForceEnableGps", v50);
  v15 = LOBYTE(v50[0]);
  if (v56)
  {
    sub_100008080(v56);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v48 = v16;
  sub_10001CAF4(buf);
  LOBYTE(v50[0]) = 0;
  v17 = sub_10001CB4C(*buf, "GnssForceEnableBeidou", v50);
  v18 = LOBYTE(v50[0]);
  if (v56)
  {
    sub_100008080(v56);
  }

  if ((v17 & v18) != 0)
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  v47 = v19;
  sub_10001CAF4(buf);
  LOBYTE(v50[0]) = 0;
  v20 = sub_10001CB4C(*buf, "GnssForceEnableGalileo", v50);
  v21 = LOBYTE(v50[0]);
  if (v56)
  {
    sub_100008080(v56);
  }

  if ((v20 & v21) != 0)
  {
    v22 = 8;
  }

  else
  {
    v22 = 0;
  }

  sub_10001CAF4(buf);
  LOBYTE(v50[0]) = 0;
  v23 = sub_10001CB4C(*buf, "GnssForceEnableGlonass", v50);
  v24 = LOBYTE(v50[0]);
  if (v56)
  {
    sub_100008080(v56);
  }

  if ((v23 & v24) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  sub_10001CAF4(buf);
  LOBYTE(v50[0]) = 0;
  v26 = sub_10001CB4C(*buf, "GnssForceEnableQzss", v50);
  v27 = LOBYTE(v50[0]);
  if (v56)
  {
    sub_100008080(v56);
  }

  if ((v26 & v27) != 0)
  {
    v28 = 16;
  }

  else
  {
    v28 = 0;
  }

  v46 = v28;
  sub_10001CAF4(buf);
  v29 = v13;
  v30 = v11;
  v31 = v9;
  v32 = v8;
  v33 = v6;
  v34 = v4;
  LOBYTE(v50[0]) = 0;
  v35 = sub_10001CB4C(*buf, "GnssForceEnableNavic", v50);
  v36 = LOBYTE(v50[0]);
  if (v56)
  {
    sub_100008080(v56);
  }

  if ((v35 & v36) != 0)
  {
    v37 = 32;
  }

  else
  {
    v37 = 0;
  }

  if (*a1)
  {
    v38 = v47 | v48 | v22 | v25;
    v39 = v33 | v34 | v32 | v31 | v30 | v29;
    v40 = v38 | v46 | v37;
    *(*a1 + 1328) = (a1[304] | v39) & ~v40;
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v41 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v42 = *(*a1 + 1328);
      *buf = 67240704;
      *&buf[4] = v33 | v34 | v32 | v31 | v30 | v29;
      LOWORD(v56) = 1026;
      *(&v56 + 2) = v40;
      HIWORD(v56) = 1026;
      v57 = v42;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEFAULT, "#GnssConstControl,setGnssConstellationSettingsFromMobileAssets,maBlocked,0x%{public}x,defaultForceEnable,0x%{public}x,result,0x%{public}x", buf, 0x14u);
    }

    v43 = a1;
    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
        v43 = a1;
      }

      v44 = *(*v43 + 1328);
      v50[0] = 67240704;
      v50[1] = v39;
      v51 = 1026;
      v52 = v40;
      v53 = 1026;
      v54 = v44;
      v45 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssController::setGnssConstellationSettingsFromMobileAssets(const CLNameValuePair &)", "%s\n", v45);
      if (v45 != buf)
      {
        free(v45);
      }
    }
  }
}

void sub_100803148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100008080(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10080317C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    *(v2 + 1352) = a2;
    *(v2 + 1360) = 1;
  }

  return result;
}

void sub_100803194(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 968))
  {
    v3 = sub_10170C3FC(a1 + 2752, a2);
    if ((v3 & 0x100) != 0)
    {
      if (v3)
      {
        if (qword_1025D4650 != -1)
        {
          sub_10194117C();
        }

        v4 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "knownACFileConfig,force download by MA", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019477F4();
        }

        sub_1016DA050(*(a1 + 968), 1);
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_10194117C();
        }

        v5 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *v6 = 0;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "knownACFileConfig,stop download by MA", v6, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101947718();
        }

        sub_1016DA7B4(*(a1 + 968));
      }
    }
  }
}

void sub_1008032C4(void *a1, uint64_t a2, _DWORD *a3, char *a4)
{
  if (*a3 == 15)
  {
    v6 = a1[148];
    if (v6)
    {
      sub_100D085FC(v6, *a4);
    }

    v7 = a1[150];
    if (v7)
    {
      sub_100EAC37C(v7, *a4);
    }

    v8 = a1[132];
    if (v8)
    {
      sub_1016FF368(v8, *a4);
    }

    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v10 = *a4;
      v11[0] = 68289282;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 1026;
      v15 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onDaemonStatusNotification, isBatterySaverModeEnabled:%{public}hhd}", v11, 0x18u);
    }
  }
}

uint64_t sub_1008033E0()
{
  if (sub_10024CA2C())
  {
    v0 = 0;
  }

  else
  {
    v0 = 2;
  }

  if (sub_10024CA2C())
  {
    v1 = 0;
  }

  else
  {
    v1 = 16;
  }

  v2 = v1 | v0;
  if (sub_10024CA2C())
  {
    v3 = 0;
  }

  else
  {
    v3 = 8;
  }

  if (sub_10071B74C())
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  v5 = v2 | v3 | v4;
  if (sub_10071B7A4())
  {
    v6 = 0;
  }

  else
  {
    v6 = 32;
  }

  return v5 | v6;
}

void sub_10080345C(uint64_t a1)
{
  v1 = *(a1 + 2504);
  if (v1)
  {
    sub_10093152C(v1);
  }
}

void sub_10080346C(uint64_t a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67240192;
    v5[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#timingadvance,isTimingAdvanceFeatureEnabled,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019478D0(a2);
  }

  if (*a1)
  {
    *(*a1 + 1338) = a2;
  }
}

void sub_100803558(uint64_t *a1, uint64_t a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "GnssAssistanceFileSettings,MA-OTA,received notification", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019479BC();
  }

  sub_100803B54(a1 + 109, a2, "EnableGnssAssistanceRte");
  sub_100803B54(a1 + 115, a2, "EnableGnssAssistanceBce");
  sub_100803B54(a1 + 118, a2, "EnableGnssAssistanceRof");
  if (a1[112])
  {
    sub_10000EC00(&__p, "ConfigureGnssAssistanceRti");
    sub_10004FD18(v20);
    if (v23 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (sub_100185ADC(a2, p_p, v20))
    {
      v18 = 0.0;
      v19 = 0.0;
      sub_100254968(a1[112], &v19, &v18, 0);
      if (v23 < 0)
      {
        v22 = 21;
        v6 = __p;
      }

      else
      {
        v23 = 21;
        v6 = &__p;
      }

      strcpy(v6, "UpdateRateCellSeconds");
      if (v23 >= 0)
      {
        v11 = &__p;
      }

      else
      {
        v11 = __p;
      }

      if (sub_1000B9370(v20, v11, &v19))
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v12 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          v27 = v19;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "GnssAssistanceFileSettings,MA-OTA,obtained RTI config rate,updateRateCellSec,%{public}.2f", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101940C70(buf);
          v24 = 134349056;
          v25 = v19;
          v16 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssController::setGnssAssistanceFileSettingsFromMobileAssets(const CLNameValuePair &)", "%s\n", v16);
          if (v16 != buf)
          {
            free(v16);
          }
        }
      }

      if (v23 < 0)
      {
        v22 = 21;
        v13 = __p;
      }

      else
      {
        v23 = 21;
        v13 = &__p;
      }

      strcpy(v13, "UpdateRateWifiSeconds");
      if (v23 >= 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p;
      }

      if (sub_1000B9370(v20, v14, &v18))
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v15 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          v27 = v18;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "GnssAssistanceFileSettings,MA-OTA,obtained RTI config rate,updateRateWifiSec,%{public}.2f", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101940C70(buf);
          v24 = 134349056;
          v25 = v18;
          v17 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssController::setGnssAssistanceFileSettingsFromMobileAssets(const CLNameValuePair &)", "%s\n", v17);
          if (v17 != buf)
          {
            free(v17);
          }
        }
      }

      sub_1016DBC68(a1[112], v19, v18);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v8 = &__p;
        if (v23 < 0)
        {
          v8 = __p;
        }

        *buf = 136446210;
        v27 = *&v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "GnssAssistanceFileSettings,MA-OTA,missing key,%{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101940C70(buf);
        v9 = &__p;
        if (v23 < 0)
        {
          v9 = __p;
        }

        v24 = 136446210;
        v25 = *&v9;
        v10 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssController::setGnssAssistanceFileSettingsFromMobileAssets(const CLNameValuePair &)", "%s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }
    }

    sub_100005DA4(v20);
    if (v23 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_100803B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_100005DA4(&a14);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100803B54(uint64_t *a1, uint64_t a2, void *a3)
{
  if (*a1)
  {
    v6 = 1;
    if ((sub_10001CB4C(a2, a3, &v6) & 1) == 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v5 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v8 = a3;
        v9 = 1026;
        v10 = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "GnssAssistanceFileSettings,MA-OTA,missing key,%{public}s,doEnable,%{public}d", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101947AA0(a3, &v6);
      }
    }

    sub_1016DB944(*a1, v6);
  }
}

void sub_100803C7C(uint64_t a1)
{
  v1 = *(a1 + 1024);
  if (v1)
  {
    sub_101754EB8(v1);
  }
}

uint64_t sub_100803C8C(uint64_t a1)
{
  memset(&v43, 0, sizeof(v43));
  sub_10001CAF4(buf);
  v2 = sub_100175094(buf[0].__r_.__value_.__l.__data_, "GnssKnownACFileUrl", &v43);
  if (buf[0].__r_.__value_.__l.__size_)
  {
    sub_100008080(buf[0].__r_.__value_.__l.__size_);
  }

  if (v2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v4 = &v43;
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v4 = v43.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
      *(buf[0].__r_.__value_.__r.__words + 4) = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "knownACFile,user defined url %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101940C70(buf);
      v30 = &v43;
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v30 = v43.__r_.__value_.__r.__words[0];
      }

      LODWORD(v48[0]) = 136315138;
      *(v48 + 4) = v30;
      v31 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::didKnownACSourceUrlChange()", "%s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v43.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v6 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "knownACFile,using on device file", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101940C70(buf);
        LOWORD(v48[0]) = 0;
        v38 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::didKnownACSourceUrlChange()", "%s\n", v38);
        if (v38 != buf)
        {
          free(v38);
        }
      }

      v7 = *(a1 + 960);
      *(a1 + 952) = 0u;
      if (v7)
      {
        sub_100008080(v7);
      }

      sub_10170B188(a1 + 2752);
      goto LABEL_85;
    }

LABEL_31:
    v12 = sub_1000206B4();
    sub_100021668(v12, buf);
    v13 = std::string::append(buf, "ligl.bin", 8uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v49 = v13->__r_.__value_.__r.__words[2];
    *v48 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    v15 = *(a1 + 952);
    if (!v15)
    {
      sub_10080EB20();
    }

    if (*(v15 + 23) < 0)
    {
      sub_100007244(__p, *v15, *(v15 + 1));
    }

    else
    {
      v16 = *v15;
      v42 = *(v15 + 2);
      *__p = v16;
    }

    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v43.__r_.__value_.__l.__size_;
    }

    v19 = HIBYTE(v42);
    if (v42 < 0)
    {
      v19 = __p[1];
    }

    if (v18 == v19)
    {
      v20 = (v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v43 : v43.__r_.__value_.__r.__words[0];
      v21 = v42 >= 0 ? __p : __p[0];
      if (!memcmp(v20, v21, v18))
      {
        goto LABEL_81;
      }
    }

    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v22 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v23 = __p;
      if (v42 < 0)
      {
        v23 = __p[0];
      }

      v24 = &v43;
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = v43.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
      *(buf[0].__r_.__value_.__r.__words + 4) = v23;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v24;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "knownACFile,url changed from, %s,to, %s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101940C70(buf);
      v33 = __p;
      if (v42 < 0)
      {
        v33 = __p[0];
      }

      v34 = &v43;
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v34 = v43.__r_.__value_.__r.__words[0];
      }

      v44 = 136315394;
      v45 = *&v33;
      v46 = 2080;
      v47 = v34;
      v35 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::didKnownACSourceUrlChange()", "%s\n", v35);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (vabdd_f64(Current, *(a1 + 976)) >= 86400.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v28 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 134217984;
        *(buf[0].__r_.__value_.__r.__words + 4) = Current;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "knownACFile,first url change at,%.1f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101940C70(buf);
        v44 = 134217984;
        v45 = Current;
        v39 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::didKnownACSourceUrlChange()", "%s\n", v39);
        if (v39 != buf)
        {
          free(v39);
        }
      }

      *(a1 + 976) = Current;
      *(a1 + 984) = 1;
    }

    else
    {
      v26 = *(a1 + 984) + 1;
      *(a1 + 984) = v26;
      if (v26 >= 3)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v27 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "knownACFile,url change limit hit", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101940C70(buf);
          LOWORD(v44) = 0;
          v40 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::didKnownACSourceUrlChange()", "%s\n", v40);
          if (v40 != buf)
          {
            free(v40);
          }
        }

LABEL_81:
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v49) < 0)
        {
          operator delete(v48[0]);
        }

        goto LABEL_85;
      }
    }

    sub_10080EB20();
  }

  v8 = GEOURLString();
  v9 = v8;
  if (v8 && [v8 length])
  {
    sub_100006044(&v43, [v9 UTF8String]);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v11 = &v43;
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v11 = v43.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
      *(buf[0].__r_.__value_.__r.__words + 4) = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "knownACFile,source url is %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101940C70(buf);
      v36 = &v43;
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = v43.__r_.__value_.__r.__words[0];
      }

      LODWORD(v48[0]) = 136315138;
      *(v48 + 4) = v36;
      v37 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::didKnownACSourceUrlChange()", "%s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    goto LABEL_31;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101940C48();
  }

  v17 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "knownACFile, URL is nil or empty", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101940C70(buf);
    LOWORD(v48[0]) = 0;
    v32 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGnssController::didKnownACSourceUrlChange()", "%s\n", v32);
    if (v32 != buf)
    {
      free(v32);
    }
  }

LABEL_85:
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  return 0;
}