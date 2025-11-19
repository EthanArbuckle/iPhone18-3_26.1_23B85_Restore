uint64_t sub_10045DE80(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3)
{
  result = *sub_10045DF04(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10045E068();
  }

  return result;
}

uint64_t *sub_10045DF04(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, unsigned __int8 *a5)
{
  if (a1 + 1 == a2)
  {
    goto LABEL_3;
  }

  v5 = *a5;
  v6 = *(a2 + 32);
  if (v5 < v6)
  {
    goto LABEL_3;
  }

  if (v6 < v5)
  {
LABEL_9:
    v10 = a2[1];
    if (v10)
    {
      v11 = a2[1];
      do
      {
        a4 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v18 = a2;
      do
      {
        a4 = v18[2];
        v13 = *a4 == v18;
        v18 = a4;
      }

      while (!v13);
    }

    if (a4 != a1 + 1)
    {
      v19 = *(a4 + 32);
      if (v5 >= v19 && (v19 < v5 || a5[1] >= *(a4 + 33)))
      {
        return sub_10045E110(a1, a3, a5);
      }
    }

    if (v10)
    {
      *a3 = a4;
    }

    else
    {
      *a3 = a2;
      return a2 + 1;
    }

    return a4;
  }

  v16 = a5[1];
  v17 = *(a2 + 33);
  if (v16 >= v17)
  {
    if (v17 >= v16)
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    goto LABEL_9;
  }

LABEL_3:
  v7 = *a2;
  if (*a1 == a2)
  {
    v9 = a2;
  }

  else
  {
    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v12 = a2;
      do
      {
        v9 = v12[2];
        v13 = *v9 == v12;
        v12 = v9;
      }

      while (v13);
    }

    v14 = *(v9 + 32);
    v15 = *a5;
    if (v14 >= v15 && (v15 < v14 || *(v9 + 33) >= a5[1]))
    {
      return sub_10045E110(a1, a3, a5);
    }
  }

  if (v7)
  {
    *a3 = v9;
    return v9 + 1;
  }

  else
  {
    *a3 = a2;
    return a2;
  }
}

void sub_10045E0F4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10045E1F4(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045E110(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 32);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 33);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t sub_10045E178(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10026AB58(result, a4);
  }

  return result;
}

void sub_10045E1D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10045E1F4(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_10045E258(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    sub_10045E2C4(a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_10045E2A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_10022E1CC(v1, *(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void *sub_10045E2C4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10045E31C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10045E31C(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10045E3A4(v5, (v5 + 8), v4 + 32);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_10045E3A4(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3)
{
  result = *sub_10045DF04(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10045E428();
  }

  return result;
}

void sub_10045E4B4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10045E1F4(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10045E4D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10026AB58(result, a4);
  }

  return result;
}

void sub_10045E530(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10045E54C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10019A05C(result, a4);
  }

  return result;
}

void sub_10045E5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10019A240(&a9);
  _Unwind_Resume(a1);
}

char *sub_10045E5D4(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1000056BC(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_10019A1C0(v9);
  return v4;
}

uint64_t **sub_10045E694(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_10045E74C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 32);
    if (v8 >= v5)
    {
      if (v5 >= v8)
      {
        v9 = *(v3 + 33);
        v10 = v9 >= v6;
        v11 = v9 < v6;
        if (v10)
        {
          v7 = v3;
        }

        v3 += v11;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 32);
  if (v5 < v12 || v12 >= v5 && v6 < *(v7 + 33))
  {
    return v2;
  }

  return v7;
}

uint64_t sub_10045E7DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100009AC4(result, a4);
  }

  return result;
}

void sub_10045E834(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10045E874@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 23);
  return result;
}

uint64_t sub_10045E884@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 23);
  return result;
}

void sub_10045E890()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F9200 = os_log_create("com.apple.nearbyd", "Regulatory");
  qword_1009F9210 = 0;
  unk_1009F9218 = 0;
  qword_1009F9208 = 0;
  __cxa_atexit(sub_1004573A8, &qword_1009F9208, &_mh_execute_header);
  qword_1009F9228 = 0;
  unk_1009F9230 = 0;
  qword_1009F9220 = 0;
  __cxa_atexit(sub_1004573DC, &qword_1009F9220, &_mh_execute_header);
  qword_1009F9240 = 0;
  unk_1009F9248 = 0;
  qword_1009F9238 = 0;
  __cxa_atexit(sub_100457410, &qword_1009F9238, &_mh_execute_header);
  xmmword_1009F9250 = 0u;
  unk_1009F9260 = 0u;
  dword_1009F9270 = 1065353216;
  __cxa_atexit(sub_100457444, &xmmword_1009F9250, &_mh_execute_header);
  sub_100004A08(v5, "0100000000000000434E000000000000");
  v6 = 1;
  sub_100004A08(v7, "010000000000000043484E0000000000");
  v8 = 1;
  sub_100004A08(v9, "00000001000000005757474D00000000");
  v10 = 0;
  sub_100004A08(v11, "00000001000000000057574700000000");
  v12 = 1;
  sub_100004A08(v13, "00000001000000000053524700000000");
  v14 = 1;
  sub_100004A08(v15, "00000001000000000000535200000000");
  v16 = 1;
  sub_100004A08(v17, "000000010000000053524D5500000000");
  v18 = 1;
  sub_100004A08(v19, "0000000100000000004E484300000000");
  v20 = 1;
  sub_100004A08(v21, "01000000000000004D47575700000000");
  v22 = 0;
  sub_100004A08(v23, "01000000000000004757570000000000");
  v24 = 1;
  sub_100004A08(v25, "01000000000000004752530000000000");
  v26 = 1;
  sub_100004A08(v27, "01000000000000005253000000000000");
  v28 = 1;
  sub_100004A08(v29, "0100000000000000554D525300000000");
  v30 = 1;
  sub_100004A08(v31, "0100000000000000524F570000000000");
  v32 = 1;
  sub_100004A08(v33, "01000000000000005757000000000000");
  v34 = 1;
  sub_100004A08(v35, "01000000000000004D57574A00000000");
  v36 = 0;
  sub_100004A08(v37, "01000000000000004450450000000000");
  v38 = 1;
  sub_100004A08(v39, "01000000000000004450000000000000");
  v40 = 1;
  sub_100004A08(v41, "01000000000000004D57570000000000");
  v42 = 0;
  sub_100004A08(v43, "01000000000000004D44500000000000");
  v44 = 0;
  sub_10045CD6C(qword_1009FA128, v5, 20);
  v1 = 80;
  do
  {
    if (*(&v5[v1 - 1] - 1) < 0)
    {
      operator delete(v5[v1 - 4]);
    }

    v1 -= 4;
  }

  while (v1 * 8);
  __cxa_atexit(sub_100457448, qword_1009FA128, &_mh_execute_header);
  v2 = sub_1000054A8();
  sub_10042B4C4(v2[144], v3, v4);
  __cxa_atexit(sub_100459A98, qword_1009FA150, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_10045EC78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 631);
  v13 = -640;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 32;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_10045ED24()
{
  if (qword_1009F9308 != -1)
  {
    sub_1004D06D4();
  }

  return dword_1009EC4F8;
}

void sub_10045ED5C(id a1)
{
  if (MGGetBoolAnswer())
  {
    v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 10000000000;
    while (1)
    {
      v9 = MGCopyAnswer();
      if (v9)
      {
        v10 = v9;
        v11 = CFGetTypeID(v9);
        if (v11 != CFNumberGetTypeID())
        {
          v28 = "ChipID has unexpected type";
LABEL_22:
          sub_100428B48(v28, v12, v13, v14, v15, v16, v17, v18, v29);
          CFRelease(v10);
          return;
        }

        valuePtr = 0;
        if (!CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr))
        {
          v28 = "Failed to extract ChipID as a number";
          goto LABEL_22;
        }

        if (valuePtr == 8198)
        {
          v19 = 0;
          v20 = "Chip type 1";
        }

        else
        {
          if (valuePtr != 8228)
          {
            v29 = valuePtr;
            v28 = "Unrecognized ChipID 0x%x";
            goto LABEL_22;
          }

          v19 = 1;
          v20 = "Chip type 2";
        }

        dword_1009EC4F8 = v19;
        sub_100005D28(v20, v12, v13, v14, v15, v16, v17, v18, v29);
        CFRelease(v10);
      }

      else
      {
        __ns.__rep_ = 100000000;
        std::this_thread::sleep_for (&__ns);
      }

      if (dword_1009EC4F8 != 2)
      {
        return;
      }

      if (std::chrono::steady_clock::now().__d_.__rep_ >= v8.__d_.__rep_)
      {
        if (dword_1009EC4F8 == 2)
        {
          sub_100428B48("Timed out attempting to get ChipID", v21.__d_.__rep_, v22.__d_.__rep_, v23.__d_.__rep_, v24.__d_.__rep_, v25.__d_.__rep_, v26.__d_.__rep_, v27.__d_.__rep_, v29);
        }

        return;
      }
    }
  }

  sub_100005D28("UWB not supported", v1, v2, v3, v4, v5, v6, v7, v33);
}

void sub_10045EF14(char **a1@<X1>, uint64_t a2@<X8>)
{
  __dst = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  sub_10046F95C(*a1, 2uLL, &__dst, 1);
  sub_10046F95C(*a1 + 2, 1uLL, &v62, 1);
  sub_10046F95C(*a1 + 3, 2uLL, &v61, 1);
  sub_10046F95C(*a1 + 5, 1uLL, &v60, 1);
  sub_10046F95C(*a1 + 6, 2uLL, &v59, 1);
  v66 = 0;
  sub_10046F95C(*a1 + 8, 1uLL, &v58, 1);
  sub_10045F8C4(v57, v58);
  if (v58)
  {
    v45 = 0;
    v10 = 9;
    do
    {
      LOWORD(v48) = 0;
      __p[32] = 0;
      v53[0] = 0;
      v53[8] = 0;
      v53[16] = 0;
      v53[24] = 0;
      v55 = 0;
      v56 = 0;
      v54 = 0;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      memset(__p, 0, 25);
      v11 = &(*a1)[v10];
      v47 = 0;
      sub_10046F95C(v11, 1uLL, &v47, 1);
      v12 = sub_100428610(v47);
      if ((v12 & 0x10000) == 0)
      {
        __assert_rtn("decodeRangeCIREventVersion1", "roseCIRDataDecoderV1.cpp", 61, "packetType.has_value()");
      }

      LOWORD(v48) = v12;
      sub_10046F95C(&(*a1)[v10 + 1], 1uLL, &v48 + 2, 1);
      v13 = sub_10041D690();
      v14 = v13;
      LOBYTE(__src[0]) = 0;
      v15 = v49;
      if (v13 <= *(&v49 + 1) - v49)
      {
        if (v13 < *(&v49 + 1) - v49)
        {
          *(&v49 + 1) = v49 + v13;
        }
      }

      else
      {
        sub_100250E48(&v49, v13 - (*(&v49 + 1) - v49), __src);
        v15 = v49;
      }

      v16 = v10 + 2;
      sub_10046F95C(&(*a1)[v16], v14, v15, 1);
      v17 = sub_10041D79C();
      v18 = v17;
      v19 = v17;
      LOBYTE(__src[0]) = 0;
      v20 = *(&v50 + 1);
      if (v17 <= v51 - *(&v50 + 1))
      {
        if (v17 < v51 - *(&v50 + 1))
        {
          *&v51 = *(&v50 + 1) + v17;
        }
      }

      else
      {
        sub_100250E48(&v50 + 1, v17 - (v51 - *(&v50 + 1)), __src);
        v20 = *(&v50 + 1);
      }

      v21 = v14 + v16;
      sub_10046F95C(&(*a1)[v21], v19, v20, 1);
      v22 = 0;
      v10 = v18 + v21;
      do
      {
        if ((BYTE2(v48) >> v22))
        {
          bzero(__src, 0x400uLL);
          for (i = 0; i != 1024; i += 4)
          {
            LOWORD(v64) = 0;
            v46 = 0;
            sub_10046F95C(&(*a1)[v10 + i], 2uLL, &v64, 1);
            sub_10046F95C(&(*a1)[v10 + 2 + i], 2uLL, &v46, 1);
            v24 = v64;
            v25 = (__src + i);
            *v25 = v46;
            v25[1] = v24;
          }

          v26 = *&__p[8];
          if (*&__p[8] >= *&__p[16])
          {
            v28 = *__p;
            v29 = *&__p[8] - *__p;
            v30 = ((*&__p[8] - *__p) >> 10) + 1;
            if (v30 >> 54)
            {
              sub_100019B38();
            }

            v31 = *&__p[16] - *__p;
            if ((*&__p[16] - *__p) >> 9 > v30)
            {
              v30 = v31 >> 9;
            }

            if (v31 >= 0x7FFFFFFFFFFFFC00)
            {
              v32 = 0x3FFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v30;
            }

            if (v32)
            {
              sub_10018997C(__p, v32);
            }

            v33 = ((*&__p[8] - *__p) >> 10 << 10);
            memcpy(v33, __src, 0x400uLL);
            v27 = v33 + 1024;
            v34 = &v33[-1024 * (v29 >> 10)];
            memcpy(v34, v28, v29);
            v35 = *__p;
            *__p = v34;
            *&__p[8] = v27;
            *&__p[16] = 0;
            if (v35)
            {
              operator delete(v35);
            }
          }

          else
          {
            memcpy(*&__p[8], __src, 0x400uLL);
            v27 = (v26 + 1024);
          }

          v10 += 1024;
          *&__p[8] = v27;
        }

        ++v22;
      }

      while (v22 != 3);
      v36 = v57[0] + 152 * v45;
      v37 = v48;
      *(v36 + 2) = BYTE2(v48);
      *v36 = v37;
      if (v36 == &v48)
      {
        v40 = *&__p[24];
        v41 = *v53;
        *(v36 + 105) = *&v53[9];
        *(v36 + 80) = v40;
        *(v36 + 96) = v41;
      }

      else
      {
        sub_1000134D0((v36 + 8), v49, *(&v49 + 1), *(&v49 + 1) - v49);
        sub_1000134D0((v36 + 32), *(&v50 + 1), v51, v51 - *(&v50 + 1));
        sub_10045F5A0((v36 + 56), *__p, *&__p[8], (*&__p[8] - *__p) >> 10);
        v38 = *&__p[24];
        v39 = *v53;
        *(v36 + 105) = *&v53[9];
        *(v36 + 80) = v38;
        *(v36 + 96) = v39;
        sub_10045F6CC((v36 + 128), v54, v55, (v55 - v54) >> 5);
      }

      *&__src[0] = &v54;
      sub_100189A94(__src);
      if (*__p)
      {
        *&__p[8] = *__p;
        operator delete(*__p);
      }

      if (*(&v50 + 1))
      {
        *&v51 = *(&v50 + 1);
        operator delete(*(&v50 + 1));
      }

      if (v49)
      {
        *(&v49 + 1) = v49;
        operator delete(v49);
      }

      ++v45;
    }

    while (v45 < v58);
  }

  v42 = __dst;
  v43 = sub_100427658(v62, v3, v4, v5, v6, v7, v8, v9);
  v48 = 0;
  v49 = 0uLL;
  sub_100425488(__src, v42, v43, v61, v60, &v66, v57, &v48);
  *a2 = __src[0];
  *(a2 + 16) = *&__src[1];
  *(a2 + 24) = *(&__src[1] + 8);
  *(a2 + 40) = *(&__src[2] + 1);
  *(&__src[1] + 1) = 0;
  *&__src[2] = 0;
  *(a2 + 48) = __src[3];
  *(a2 + 64) = *&__src[4];
  *(&__src[2] + 1) = 0;
  memset(&__src[3], 0, 24);
  *(a2 + 72) = 1;
  v64 = &__src[3];
  sub_100189A94(&v64);
  v64 = &__src[1] + 1;
  sub_100189B38(&v64);
  v64 = &v48;
  sub_100189A94(&v64);
  *&__src[0] = v57;
  sub_100189B38(__src);
}

void sub_10045F4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void **a39, void **a40)
{
  sub_100189A94(&a39);
  a40 = &a34;
  sub_100189B38(&a40);
  _Unwind_Resume(a1);
}

void *sub_10045F5A0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 10)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 54))
    {
      v9 = v7 >> 9;
      if (v7 >> 9 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFC00)
      {
        v10 = 0x3FFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100189940(v6, v10);
    }

    sub_100019B38();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 10)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_10045F6CC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    sub_10045F810(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_100189CA4(a1, v11);
    }

    sub_100019B38();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 5)
  {
    sub_10045F850(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 24);
        if (v16)
        {
          *(v15 - 16) = v16;
          operator delete(v16);
        }

        v15 -= 32;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    sub_10045F850(&v17, a2, a2 + v12, v8);
    a1[1] = sub_100189D28(a1, a2 + v12, a3, a1[1]);
  }
}

void sub_10045F810(uint64_t *a1)
{
  if (*a1)
  {
    sub_100189AE8(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_10045F850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (v5 != a4)
      {
        sub_1000134D0((a4 + 8), *(v5 + 8), *(v5 + 16), *(v5 + 16) - *(v5 + 8));
      }

      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_10045F8C4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100189658(result, a2);
  }

  return result;
}

uint64_t sub_10045F970(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 213) = 0;
  *(a1 + 216) = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = 999;
  *(a1 + 584) = 850045863;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 648) = 850045863;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0;
  *(a1 + 736) = 0;
  sub_10045FA48(a1);
  v2 = sub_10045ED24();
  *(a1 + 744) = v2;
  if (v2 <= 2)
  {
    *(a1 + 748) = dword_100572BC8[v2];
  }

  return a1;
}

void sub_10045FA14(_Unwind_Exception *a1)
{
  sub_1000197C8(v1 + 712);
  std::mutex::~mutex((v1 + 648));
  std::mutex::~mutex((v1 + 584));
  sub_100460BC0(v2);
  sub_100017E34(v1);
  _Unwind_Resume(a1);
}

void sub_10045FA48(uint64_t a1)
{
  v2 = MGGetProductType();
  if (v2 > 2390434177)
  {
    if (v2 <= 3564012491)
    {
      if (v2 > 2941181570)
      {
        if (v2 <= 3001488777)
        {
          switch(v2)
          {
            case 2941181571:
              v10 = 18;
              goto LABEL_143;
            case 2943112657:
              v10 = 100;
              goto LABEL_143;
            case 2979575960:
              v10 = 106;
              goto LABEL_143;
          }
        }

        else if (v2 > 3143587591)
        {
          if (v2 == 3143587592)
          {
            v10 = 118;
            goto LABEL_143;
          }

          if (v2 == 3348380076)
          {
            v10 = 200;
            goto LABEL_143;
          }
        }

        else
        {
          if (v2 == 3001488778)
          {
            v10 = 5;
            goto LABEL_143;
          }

          if (v2 == 3048527336)
          {
            v10 = 24;
            goto LABEL_143;
          }
        }
      }

      else if (v2 <= 2722529671)
      {
        switch(v2)
        {
          case 2390434178:
            v10 = 126;
            goto LABEL_143;
          case 2625074843:
            v10 = 114;
            goto LABEL_143;
          case 2688879999:
            v10 = 14;
            goto LABEL_143;
        }
      }

      else if (v2 > 2795618602)
      {
        if (v2 == 2795618603)
        {
          v10 = 21;
          goto LABEL_143;
        }

        if (v2 == 2940697645)
        {
          v10 = 13;
          goto LABEL_143;
        }
      }

      else
      {
        if (v2 == 2722529672)
        {
          v10 = 2;
          goto LABEL_143;
        }

        if (v2 == 2793418701)
        {
          v10 = 15;
          goto LABEL_143;
        }
      }
    }

    else if (v2 <= 3819635029)
    {
      if (v2 <= 3591055298)
      {
        switch(v2)
        {
          case 3564012492:
            v10 = 122;
            goto LABEL_143;
          case 3571532206:
            v10 = 102;
            goto LABEL_143;
          case 3585085679:
            v10 = 8;
            goto LABEL_143;
        }
      }

      else if (v2 > 3742999857)
      {
        if (v2 == 3742999858)
        {
          v10 = 110;
          goto LABEL_143;
        }

        if (v2 == 3767261006)
        {
          v10 = 104;
          goto LABEL_143;
        }
      }

      else
      {
        if (v2 == 3591055299)
        {
          v10 = 25;
          goto LABEL_143;
        }

        if (v2 == 3663011141)
        {
          v10 = 109;
          goto LABEL_143;
        }
      }
    }

    else if (v2 > 3885279869)
    {
      if (v2 > 4068102501)
      {
        if (v2 == 4068102502)
        {
          v10 = 120;
          goto LABEL_143;
        }

        if (v2 == 4201643249)
        {
          v10 = 6;
          goto LABEL_143;
        }
      }

      else
      {
        if (v2 == 3885279870)
        {
          v10 = 3;
          goto LABEL_143;
        }

        if (v2 == 4018315120)
        {
          v10 = 123;
          goto LABEL_143;
        }
      }
    }

    else if (v2 > 3839750254)
    {
      if (v2 == 3839750255)
      {
        v10 = 117;
        goto LABEL_143;
      }

      if (v2 == 3867318491)
      {
        v10 = 113;
        goto LABEL_143;
      }
    }

    else
    {
      if (v2 == 3819635030)
      {
        v10 = 112;
        goto LABEL_143;
      }

      if (v2 == 3825599860)
      {
        v10 = 16;
        goto LABEL_143;
      }
    }

LABEL_142:
    v10 = 997;
    goto LABEL_143;
  }

  if (v2 <= 1371389548)
  {
    if (v2 > 749116820)
    {
      if (v2 <= 877582974)
      {
        switch(v2)
        {
          case 749116821:
            v10 = 119;
            goto LABEL_143;
          case 851437781:
            v10 = 19;
            goto LABEL_143;
          case 861924853:
            v10 = 125;
            goto LABEL_143;
        }
      }

      else if (v2 > 1169082143)
      {
        if (v2 == 1169082144)
        {
          v10 = 4;
          goto LABEL_143;
        }

        if (v2 == 1280909812)
        {
          v10 = 105;
          goto LABEL_143;
        }
      }

      else
      {
        if (v2 == 877582975)
        {
          v10 = 23;
          goto LABEL_143;
        }

        if (v2 == 1060988941)
        {
          v10 = 7;
          goto LABEL_143;
        }
      }
    }

    else if (v2 <= 347088859)
    {
      switch(v2)
      {
        case -1:
          v10 = 999;
          goto LABEL_143;
        case 133314240:
          v10 = 17;
          goto LABEL_143;
        case 330877086:
          v10 = 22;
          goto LABEL_143;
      }
    }

    else if (v2 > 574536382)
    {
      if (v2 == 574536383)
      {
        v10 = 20;
        goto LABEL_143;
      }

      if (v2 == 689804742)
      {
        v10 = 9;
        goto LABEL_143;
      }
    }

    else
    {
      if (v2 == 347088860)
      {
        v10 = 124;
        goto LABEL_143;
      }

      if (v2 == 425046865)
      {
        v10 = 108;
        goto LABEL_143;
      }
    }

    goto LABEL_142;
  }

  if (v2 <= 1781728946)
  {
    if (v2 <= 1540760352)
    {
      switch(v2)
      {
        case 1371389549:
          v10 = 1;
          goto LABEL_143;
        case 1408738134:
          v10 = 103;
          goto LABEL_143;
        case 1434404433:
          v10 = 11;
          goto LABEL_143;
      }
    }

    else if (v2 > 1602181455)
    {
      if (v2 == 1602181456)
      {
        v10 = 107;
        goto LABEL_143;
      }

      if (v2 == 1770142589)
      {
        v10 = 116;
        goto LABEL_143;
      }
    }

    else
    {
      if (v2 == 1540760353)
      {
        v10 = 201;
        goto LABEL_143;
      }

      if (v2 == 1554479185)
      {
        v10 = 121;
        goto LABEL_143;
      }
    }

    goto LABEL_142;
  }

  if (v2 > 2084894488)
  {
    if (v2 > 2132302343)
    {
      if (v2 == 2132302344)
      {
        v10 = 101;
        goto LABEL_143;
      }

      if (v2 == 2309863438)
      {
        v10 = 10;
        goto LABEL_143;
      }
    }

    else
    {
      if (v2 == 2084894489)
      {
        v10 = 115;
        goto LABEL_143;
      }

      if (v2 == 2085054105)
      {
        v10 = 111;
        goto LABEL_143;
      }
    }

    goto LABEL_142;
  }

  if (v2 > 2021146988)
  {
    if (v2 == 2021146989)
    {
      v10 = 12;
      goto LABEL_143;
    }

    if (v2 == 2080700391)
    {
      v10 = 0;
      goto LABEL_143;
    }

    goto LABEL_142;
  }

  if (v2 == 1781728947)
  {
    v10 = 26;
    goto LABEL_143;
  }

  if (v2 != 1872992317)
  {
    goto LABEL_142;
  }

  v10 = 27;
LABEL_143:
  *(a1 + 576) = v10;
  sub_100005D28("RoseParameterCache: device type %d", v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_100460188(uint64_t a1, __int128 *a2)
{
  std::mutex::lock((a1 + 648));
  sub_1004601FC(a1, a2);
  sub_100005D28("RoseParameterCache::cacheHelloResponse", v4, v5, v6, v7, v8, v9, v10, v18);
  sub_1004602D8(a1, v11, v12, v13, v14, v15, v16, v17);

  std::mutex::unlock((a1 + 648));
}

void **sub_1004601FC(void **__dst, __int128 *a2)
{
  if (*(__dst + 112) == 1)
  {
    if (*(__dst + 96) == 1)
    {
      if (*(__dst + 95) < 0)
      {
        operator delete(__dst[9]);
      }

      if (*(__dst + 63) < 0)
      {
        operator delete(__dst[5]);
      }
    }

    if (*(__dst + 23) < 0)
    {
      operator delete(*__dst);
    }

    *(__dst + 112) = 0;
  }

  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 6) = *(a2 + 6);
  sub_1000199E0((__dst + 4), a2 + 8);
  __dst[13] = *(a2 + 13);
  *(__dst + 112) = 1;
  return __dst;
}

void sub_1004602BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004602D8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[112])
  {
    v9 = "cached";
  }

  else
  {
    v9 = "not cached";
  }

  sub_100005D28("RoseParameterCache: HelloResponse %s", a2, a3, a4, a5, a6, a7, a8, v9);
  if (a1[213])
  {
    v17 = "cached";
  }

  else
  {
    v17 = "not cached";
  }

  sub_100005D28("RoseParameterCache: AlishaCapabilities %s", v10, v11, v12, v13, v14, v15, v16, v17);
  if (a1[568])
  {
    v25 = "cached";
  }

  else
  {
    v25 = "not cached";
  }

  sub_100005D28("RoseParameterCache: RoseCalFileParser %s", v18, v19, v20, v21, v22, v23, v24, v25);
  if (a1[568] == 1)
  {
    v26 = sub_100004A08(__p, "AOAtoPDOAMapping_CV_Ch5");
    sub_1004607E0(v26, (a1 + 280), __p, v27, v28, v29, v30, v31);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    if ((a1[568] & 1) == 0)
    {
      goto LABEL_23;
    }

    v32 = sub_100004A08(__p, "AOAtoPDOAMapping_CH_Ch5");
    sub_1004607E0(v32, (a1 + 344), __p, v33, v34, v35, v36, v37);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    if ((a1[568] & 1) == 0)
    {
      goto LABEL_23;
    }

    v38 = sub_100004A08(__p, "AOAtoPDOAMapping_CV_Ch9");
    sub_1004607E0(v38, (a1 + 408), __p, v39, v40, v41, v42, v43);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    if ((a1[568] & 1) == 0)
    {
LABEL_23:
      sub_1000195BC();
    }

    v44 = sub_100004A08(__p, "AOAtoPDOAMapping_CH_Ch9");
    sub_1004607E0(v44, (a1 + 472), __p, v45, v46, v47, v48, v49);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100460444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046046C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 213) == 1)
  {
    *(a1 + 213) = 0;
  }

  v9 = *a2;
  *(a1 + 136) = a2[1];
  *(a1 + 120) = v9;
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  *(a1 + 197) = *(a2 + 77);
  *(a1 + 184) = v12;
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  *(a1 + 213) = 1;
  sub_100005D28("RoseParameterCache::cacheAlishaCapabilities", a2, a3, a4, a5, a6, a7, a8, v20);

  sub_1004602D8(a1, v13, v14, v15, v16, v17, v18, v19);
}

void sub_1004604EC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 568) == 1)
  {

    sub_100005D28("RoseParameterCache::cacheRoseCalFileParser: returning because roseCalFileParser is already cached", a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    sub_1004605C4(a1 + 216, a2);
    sub_100005D28("RoseParameterCache::cacheRoseCalFileParser", v10, v11, v12, v13, v14, v15, v16, v32);
    sub_1004602D8(a1, v17, v18, v19, v20, v21, v22, v23);
    std::mutex::lock((a1 + 584));
    if (*(a1 + 736))
    {
      sub_100005D28("RoseParameterCache::cacheRoseCalFileParser: start executing CalFileParsingDone callback function", v24, v25, v26, v27, v28, v29, v30, v33);
      v31 = *(a1 + 568) == 1 && sub_1001F41D4((a1 + 272));
      sub_10003229C(a1 + 712, v31);
    }

    std::mutex::unlock((a1 + 584));
  }
}

uint64_t sub_1004605C4(uint64_t a1, __int128 *a2)
{
  sub_100460920(a1);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  sub_100460C78(a1 + 56, a2 + 56);
  *(a1 + 320) = *(a2 + 160);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 328) = *(a2 + 41);
  *(a1 + 336) = a2[21];
  *(a2 + 41) = 0;
  *(a2 + 42) = 0;
  *(a2 + 43) = 0;
  *(a1 + 352) = 1;
  return a1;
}

void sub_100460644(id a1)
{
  v25 = 1;
  v8 = container_system_group_path_for_identifier();
  if (!v8)
  {
    sub_1004D0760(&v25, v1, v2, v3, v4, v5, v6, v7);
  }

  sub_100004A08(&v24, v8);
  sub_100004A08(__p, "/Library/");
  if ((v23 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v10 = v23;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&v24, v9, v10);
  v19 = v11->__r_.__value_.__r.__words[0];
  v26[0] = v11->__r_.__value_.__l.__size_;
  *(v26 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
  v20 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (byte_1009F9337 < 0)
  {
    operator delete(xmmword_1009F9320);
  }

  *&xmmword_1009F9320 = v19;
  *(&xmmword_1009F9320 + 1) = v26[0];
  *(&xmmword_1009F9320 + 15) = *(v26 + 7);
  byte_1009F9337 = v20;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (byte_1009F9337 >= 0)
  {
    v21 = &xmmword_1009F9320;
  }

  else
  {
    v21 = xmmword_1009F9320;
  }

  sub_100005D28("system group container path: %s", v12, v13, v14, v15, v16, v17, v18, v21);
  free(v8);
}

void sub_1004607A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004607E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 23) >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (*(a2 + 56) == 1)
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    sub_100005D28("RoseParameterCache: mapping %s cached (%zu x %zu)", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  else
  {
    sub_100005D28("RoseParameterCache: mapping %s not cached", a2, a3, a4, a5, a6, a7, a8, v8);
  }
}

void sub_100460840(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 584));
  sub_100005D28("RoseParameterCache: CalFileParsingDone callback function is registered", v4, v5, v6, v7, v8, v9, v10, v11);
  sub_1004608AC((a1 + 712), a2);

  std::mutex::unlock((a1 + 584));
}

void *sub_1004608AC(void *a1, uint64_t a2)
{
  sub_10003735C(v4, a2);
  sub_100460DB4(v4, a1);
  sub_1000197C8(v4);
  return a1;
}

void sub_100460920(uint64_t a1)
{
  if (*(a1 + 352) == 1)
  {
    v8[3] = v1;
    v8[4] = v2;
    v8[0] = (a1 + 328);
    sub_100019848(v8);
    if (*(a1 + 312) == 1)
    {
      v4 = *(a1 + 288);
      if (v4)
      {
        *(a1 + 296) = v4;
        operator delete(v4);
      }
    }

    if (*(a1 + 248) == 1)
    {
      v5 = *(a1 + 224);
      if (v5)
      {
        *(a1 + 232) = v5;
        operator delete(v5);
      }
    }

    if (*(a1 + 184) == 1)
    {
      v6 = *(a1 + 160);
      if (v6)
      {
        *(a1 + 168) = v6;
        operator delete(v6);
      }
    }

    if (*(a1 + 120) == 1)
    {
      v7 = *(a1 + 96);
      if (v7)
      {
        *(a1 + 104) = v7;
        operator delete(v7);
      }
    }

    *(a1 + 352) = 0;
  }
}

uint64_t sub_1004609DC(uint64_t a1)
{
  std::mutex::lock((a1 + 648));
  if (*(a1 + 112) == 1)
  {
    v2 = *(a1 + 26) & 0xFF00;
    v3 = *(a1 + 26);
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2 = 0;
  }

  std::mutex::unlock((a1 + 648));
  return v3 | v4 | v2;
}

uint64_t sub_100460A68(uint64_t a1)
{
  result = sub_10041C6C8(*(a1 + 576));
  if (result)
  {
    v3 = sub_1004609DC(a1);
    return (v3 & 0x10000) != 0 && v3 == 6;
  }

  return result;
}

uint64_t sub_100460AC0(uint64_t a1)
{
  if (*(a1 + 744) == 1)
  {
    return sub_10041C854(*(a1 + 576));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100460AF8(uint64_t a1)
{
  v2 = *(a1 + 744);
  if (v2 == 1)
  {
    if (sub_100003AA8(*(a1 + 576)))
    {
      return 1;
    }

    else
    {
      v5 = *(a1 + 576);

      return sub_10041C748(v5);
    }
  }

  else if (v2)
  {
    return 0;
  }

  else
  {
    v3 = *(a1 + 576);

    return sub_100003AA8(v3);
  }
}

uint64_t sub_100460B80(uint64_t a1)
{
  v1 = sub_1004609DC(a1);
  if (v1 - 5 >= 2)
  {
    v2 = 39;
  }

  else
  {
    v2 = 54;
  }

  return v2 & (v1 << 15 >> 31) | ((v1 & 0x10000u) >> 8);
}

uint64_t sub_100460BC0(uint64_t a1)
{
  if (*(a1 + 352) == 1)
  {
    v7 = (a1 + 328);
    sub_100019848(&v7);
    if (*(a1 + 312) == 1)
    {
      v2 = *(a1 + 288);
      if (v2)
      {
        *(a1 + 296) = v2;
        operator delete(v2);
      }
    }

    if (*(a1 + 248) == 1)
    {
      v3 = *(a1 + 224);
      if (v3)
      {
        *(a1 + 232) = v3;
        operator delete(v3);
      }
    }

    if (*(a1 + 184) == 1)
    {
      v4 = *(a1 + 160);
      if (v4)
      {
        *(a1 + 168) = v4;
        operator delete(v4);
      }
    }

    if (*(a1 + 120) == 1)
    {
      v5 = *(a1 + 96);
      if (v5)
      {
        *(a1 + 104) = v5;
        operator delete(v5);
      }
    }
  }

  return a1;
}

__n128 sub_100460C78(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    v2 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v2;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    result = *(a2 + 40);
    *(a1 + 40) = result;
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a1 + 64) = 1;
  }

  *(a1 + 72) = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v4 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v4;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 104) = 0;
    result = *(a2 + 104);
    *(a1 + 104) = result;
    *(a1 + 120) = *(a2 + 120);
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a1 + 128) = 1;
  }

  *(a1 + 136) = 0;
  *(a1 + 192) = 0;
  if (*(a2 + 192) == 1)
  {
    v5 = *(a2 + 152);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = v5;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = 0;
    result = *(a2 + 168);
    *(a1 + 168) = result;
    *(a1 + 184) = *(a2 + 184);
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a1 + 192) = 1;
  }

  *(a1 + 200) = 0;
  *(a1 + 256) = 0;
  if (*(a2 + 256) == 1)
  {
    v6 = *(a2 + 216);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = v6;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 232) = 0;
    result = *(a2 + 232);
    *(a1 + 232) = result;
    *(a1 + 248) = *(a2 + 248);
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a1 + 256) = 1;
  }

  return result;
}

void *sub_100460DB4(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_10046100C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

uint64_t sub_100461018(uint64_t result, void *a2, uint64_t a3, int a4)
{
  *result = 850045863;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0;
  v4 = a2[1];
  *(result + 64) = *a2;
  *(result + 72) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(result + 80) = a3;
  *(result + 88) = a4;
  return result;
}

uint64_t sub_10046105C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 72);
  if (v9)
  {
    v12 = std::__shared_weak_count::lock(v9);
    if (v12)
    {
      v13 = *(a1 + 64);
      if (v13)
      {
        v14 = sub_100426398(a2);
        if (v14 == 2)
        {
          v32 = sub_10042679C(a2) - 19;
          if (v32 > 0x3B || ((1 << v32) & 0x800000000000081) == 0)
          {
            sub_100005D28("got factory test response packet with  0x%02x", v25, v26, v27, v28, v29, v30, v31, *(a2 + 1));
            goto LABEL_15;
          }

          __dst = 0;
          sub_10046F95C((*a3 + 4), 2uLL, &__dst, 1);
          v33 = sub_10042679C(a2);
          switch(v33)
          {
            case 78:
              v34 = "TEST_NB_TX";
              break;
            case 26:
              v34 = "TEST_TX2";
              break;
            case 19:
              v34 = "TEST_UWB_TX";
              break;
            default:
              __assert_rtn("factoryTestMsgIdToString", "roseResponseHandler.cpp", 55, "false");
          }

          sub_100004A08(&v80, v34);
          v46 = SHIBYTE(v81);
          v47 = v80;
          v48 = *(a2 + 1);
          sub_1004279E4(__dst, v78);
          v56 = &v80;
          if (v46 < 0)
          {
            v56 = v47;
          }

          sub_100005D28("got factory %s response packet with  0x%02x, status %s", v49, v50, v51, v52, v53, v54, v55, v56);
          if (v79 < 0)
          {
            operator delete(v78[0]);
          }
        }

        else
        {
          if (v14 == 1)
          {
            v24 = sub_1004266E8(a2);
            if (v24 == 84)
            {
              sub_100463608(a3, v15, v16, v17, v18, v19, v20, v21);
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              operator new();
            }

            if (v24 == 82)
            {
              sub_1004634A4(a3, v15, v16, v17, v18, v19, v20, v21, &v80);
              v68 = v13;
              v69 = v12;
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              v70 = v80;
              if (SHIBYTE(v82) < 0)
              {
                sub_1000056BC(__p, v81, *(&v81 + 1));
              }

              else
              {
                *__p = v81;
                __p[2] = v82;
              }

              operator new();
            }

            v35 = *(a2 + 2);
            v36 = "got debug command response with unknown message ID 0x%02x";
            goto LABEL_38;
          }

          if (v14)
          {
            v35 = *(a2 + 1);
            v36 = "got response packet with unknown groupID 0x%02x";
LABEL_38:
            sub_100428B48(v36, v15, v16, v17, v18, v19, v20, v21, v35);
            goto LABEL_15;
          }

          v22 = sub_10042640C(a2);
          if (v22 <= 20)
          {
            if (v22 > 3)
            {
              if (v22 > 8)
              {
                if (v22 == 9)
                {
                  sub_100463270(a3, &v72);
                  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                  operator new();
                }

                if (v22 == 13)
                {
                  sub_1004628E0(a3);
                  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                  operator new();
                }
              }

              else
              {
                if (v22 == 4)
                {
                  sub_100462A8C(a3, &v80);
                  v74 = v13;
                  v75 = v12;
                  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                  v76 = v80;
                  memset(v77, 0, sizeof(v77));
                  sub_10026B35C(v77, v81, *(&v81 + 1), (*(&v81 + 1) - v81) >> 5);
                  sub_100462D0C(v78);
                }

                if (v22 == 5)
                {
                  sub_100462E10(a3);
                  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                  operator new();
                }
              }
            }

            else
            {
              if (v22 > 1)
              {
                if (v22 != 2)
                {
                  sub_1004629C8(a3);
                  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                  operator new();
                }

                sub_1004626B8(a3);
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                operator new();
              }

              if (!v22)
              {
                sub_100461FC8(a3);
              }

              if (v22 == 1)
              {
                sub_1004625F4(a3);
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                operator new();
              }
            }

            goto LABEL_79;
          }

          if (v22 > 81)
          {
            if (v22 > 95)
            {
              if (v22 == 96)
              {
                sub_10046277C(a3);
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                operator new();
              }

              if (v22 == 112)
              {
                sub_100462840(a3);
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                operator new();
              }
            }

            else
            {
              if (v22 == 82)
              {
                sub_100463190(a3);
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                operator new();
              }

              if (v22 == 83)
              {
                sub_100463000(a3, &v73);
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                operator new();
              }
            }

            goto LABEL_79;
          }

          if (v22 > 79)
          {
            if (v22 != 80)
            {
              sub_100463190(a3);
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              operator new();
            }

            sub_100463204(a3);
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            operator new();
          }

          if (v22 == 21)
          {
            v57 = sub_100462EFC(a3, v15, v16, v17, v18, v19, v20, v21);
            sub_1004279E4(v57, &v80);
            if (v81 >= 0)
            {
              v65 = &v80;
            }

            else
            {
              v65 = v80;
            }

            sub_100005D28("got tx power backoff response packet with status: %s", v58, v59, v60, v61, v62, v63, v64, v65);
          }

          else
          {
            if (v22 != 22)
            {
LABEL_79:
              v35 = *(a2 + 2);
              v36 = "got ranging response with unknown message ID 0x%02x";
              goto LABEL_38;
            }

            v37 = sub_100462F64(a3, v15, v16, v17, v18, v19, v20, v21);
            sub_1004279E4(v37, &v80);
            if (v81 >= 0)
            {
              v45 = &v80;
            }

            else
            {
              v45 = v80;
            }

            sub_100005D28("got measure temperature response packet with status: %s, temperature (%f degree Celsius)", v38, v39, v40, v41, v42, v43, v44, v45);
          }
        }

        if (SHIBYTE(v81) < 0)
        {
          operator delete(v80);
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  sub_100005D28("No response listener, ignoring response packet", a2, a3, a4, a5, a6, a7, a8, v66);
  if (v12)
  {
LABEL_15:
    sub_10000AD84(v12);
  }

  return 0;
}

void sub_100461CE8(_Unwind_Exception *a1)
{
  sub_1001B3E54(v2 - 248);
  sub_1001B3E54(v2 - 216);
  sub_100019608(v2 - 184);
  sub_10000AD84(v1);
  _Unwind_Resume(a1);
}

void sub_100461FC8(uint64_t *a1)
{
  if (*(sub_1000054A8() + 187) == 1)
  {

    sub_1004636A4(a1);
  }

  v9 = *a1;
  if ((a1[1] - *a1) <= 0x48)
  {
    sub_100428B48("Not enough bytes in Hello Response (%zu < %u)", v2, v3, v4, v5, v6, v7, v8, a1[1] - *a1);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Not enough bytes in Hello Response");
  }

  else
  {
    __dst[0] = 0;
    sub_10046F95C((v9 + 4), 2uLL, __dst, 1);
    if (!__dst[0])
    {
      v17 = *a1;
      operator new();
    }

    sub_100428B48("Error status in Hello Response: 0x%x", v10, v11, v12, v13, v14, v15, v16, __dst[0]);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Error status in Hello Response");
  }
}

void sub_100462550(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100462588(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

uint64_t sub_1004625F4(void *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 != 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Range config response not of expected size");
  }

  __dst = 0;
  sub_10046F95C((v1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*a1 + 6), 2uLL, &__dst, 1);
  v10 = sub_100427984(HIWORD(__dst), v3, v4, v5, v6, v7, v8, v9);
  return v10 | (__dst << 16);
}

uint64_t sub_1004626B8(void *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 != 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Range enable response not of expected size");
  }

  __dst = 0;
  sub_10046F95C((v1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*a1 + 6), 2uLL, &__dst, 1);
  v10 = sub_100427984(HIWORD(__dst), v3, v4, v5, v6, v7, v8, v9);
  return v10 | (__dst << 16);
}

uint64_t sub_10046277C(void *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 != 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Test NMI range enable response not of expected size");
  }

  __dst = 0;
  sub_10046F95C((v1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*a1 + 6), 2uLL, &__dst, 1);
  v10 = sub_100427984(HIWORD(__dst), v3, v4, v5, v6, v7, v8, v9);
  return v10 | (__dst << 16);
}

uint64_t sub_100462840(uint64_t *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 != 6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "GPIO power switch disable response not of expected size");
  }

  __dst = 0;
  sub_10046F95C((v1 + 4), 2uLL, &__dst, 1);
  return sub_100427984(__dst, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1004628E0(void *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 != 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "SAR state response not of expected size");
  }

  __dst = 0;
  v13 = 0;
  sub_10046F95C((v1 + 4), 2uLL, &__dst, 1);
  sub_10046F95C((*a1 + 6), 1uLL, &v13 + 1, 1);
  sub_10046F95C((*a1 + 7), 1uLL, &v13, 1);
  v10 = sub_100427984(__dst, v3, v4, v5, v6, v7, v8, v9);
  return v10 | (HIBYTE(v13) << 16) | (v13 << 24);
}

uint64_t sub_1004629C8(void *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 != 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Range disable response not of expected size");
  }

  __dst = 0;
  sub_10046F95C((v1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*a1 + 6), 2uLL, &__dst, 1);
  v10 = sub_100427984(HIWORD(__dst), v3, v4, v5, v6, v7, v8, v9);
  return v10 | (__dst << 16);
}

void sub_100462A8C(void *a1@<X0>, uint64_t a2@<X8>)
{
  __dst = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst, 1);
  v18 = sub_100427984(__dst, v4, v5, v6, v7, v8, v9, v10);
  v19 = *(*a1 + 6);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  if (v19)
  {
    LODWORD(v20) = 7;
    do
    {
      v21 = v20 + 2;
      v22 = *a1;
      if (a1[1] - *a1 < (v20 + 2))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Get config response not of expected size");
      }

      __p[0] = 0;
      __p[1] = 0;
      v33 = 0;
      LOBYTE(v31) = sub_100427844(*(v22 + v20), v11, v12, v13, v14, v15, v16, v17);
      v23 = *a1;
      v24 = *(*a1 + v20 + 1);
      v20 = v21 + v24;
      if (a1[1] - *a1 < v20)
      {
        v28 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v28, "Get config response not of expected size");
      }

      v29 = 0uLL;
      v30 = 0;
      sub_100296B98(&v29, v23 + v21, v23 + v21 + v24, v24);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = v29;
      v33 = v30;
      sub_100463DC8(&v34, &v31);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      --v19;
    }

    while (v19);
    v25 = v34;
    v26 = v35;
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  *a2 = v18;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  sub_10026B35C(a2 + 8, v25, v26, (v26 - v25) >> 5);
  v31 = &v34;
  sub_100189A94(&v31);
}

void sub_100462CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  a13 = &a17;
  sub_100189A94(&a13);
  _Unwind_Resume(a1);
}

void sub_100462DA8(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100462DC8(uint64_t a1)
{
  v4 = (a1 + 24);
  sub_100189A94(&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

unint64_t sub_100462E10(void *a1)
{
  v1 = *a1;
  if ((a1[1] - *a1 - 7) >= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "Set config response not of expected size");
  }

  __dst = 0;
  sub_10046F95C((v1 + 4), 2uLL, &__dst, 1);
  v10 = sub_100427984(__dst, v3, v4, v5, v6, v7, v8, v9);
  if (a1[1] - *a1 == 8)
  {
    v11 = *(*a1 + 7);
    v12 = 256;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  sub_1004640CC(&v16, v10, *(*a1 + 6), v12 | v11);
  return v16 | (v17 << 32);
}

uint64_t sub_100462EFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __dst = 0;
  if (a1[1] - *a1 == 6)
  {
    sub_10046F95C((*a1 + 4), 2uLL, &__dst, 1);
    return sub_100427984(__dst, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    v16 = a1[1] - *a1;
    sub_100428B48("got tx power backoff response packet with wrong size: expect %d, actual %zu", a2, a3, a4, a5, a6, a7, a8, 6);
    return 5;
  }
}

unint64_t sub_100462F64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __dst = 0;
  v19 = 0;
  if (a1[1] - *a1 == 10)
  {
    sub_10046F95C((*a1 + 4), 2uLL, &__dst, 1);
    sub_10046F95C((*a1 + 6), 4uLL, &v19, 1);
    v16 = sub_100427984(__dst, v9, v10, v11, v12, v13, v14, v15);
    return v16 | (v19 << 32);
  }

  else
  {
    v18 = a1[1] - *a1;
    sub_100428B48("got measure temperature response packet with wrong size: expect %d, actual %zu", a2, a3, a4, a5, a6, a7, a8, 10);
    return 5;
  }
}

uint64_t sub_100463000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __dst = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst, 1);
  sub_10046F95C((*a1 + 6), 1uLL, &v27, 1);
  sub_10046F95C((*a1 + 7), 2uLL, &v26, 1);
  sub_10046F95C((*a1 + 9), 2uLL, &v25, 1);
  sub_10046F95C((*a1 + 27), 1uLL, &v24, 1);
  sub_10046F95C((*a1 + 28), 4uLL, &v23, 1);
  sub_10046F95C((*a1 + 32), 1uLL, &v22 + 1, 1);
  sub_10046F95C((*a1 + 33), 1uLL, &v22, 1);
  sub_10046F95C((*a1 + 34), 1uLL, &v21 + 1, 1);
  sub_10046F95C((*a1 + 35), 1uLL, &v21, 1);
  result = sub_100427984(__dst, v4, v5, v6, v7, v8, v9, v10);
  v12 = v27;
  v13 = v26;
  v14 = v25;
  v15 = v24;
  v16 = v23;
  v17 = HIBYTE(v22);
  v18 = v22;
  v19 = HIBYTE(v21);
  v20 = v21;
  *a2 = result;
  *(a2 + 2) = v12;
  *(a2 + 4) = v13;
  *(a2 + 6) = v14;
  *(a2 + 8) = v15;
  *(a2 + 12) = v16;
  *(a2 + 16) = v17;
  *(a2 + 17) = v18;
  *(a2 + 18) = v19;
  *(a2 + 19) = v20;
  return result;
}

unint64_t sub_100463190(uint64_t a1)
{
  __dst = 0;
  v11 = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst, 1);
  sub_10046F95C((*a1 + 6), 4uLL, &v11, 1);
  v9 = sub_100427984(__dst, v2, v3, v4, v5, v6, v7, v8);
  return v9 | (v11 << 32);
}

uint64_t sub_100463204(uint64_t a1)
{
  __dst = 0;
  sub_10046F95C((*a1 + 4), 2uLL, &__dst + 2, 1);
  sub_10046F95C((*a1 + 6), 2uLL, &__dst, 1);
  v9 = sub_100427984(HIWORD(__dst), v2, v3, v4, v5, v6, v7, v8);
  return v9 | (__dst << 16);
}

uint64_t sub_100463270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = 0;
  __dst = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  sub_10046F95C((*a1 + 4), 4uLL, &__dst + 4, 1);
  sub_10046F95C((*a1 + 8), 4uLL, &__dst, 1);
  sub_10046F95C((*a1 + 12), 4uLL, &v28 + 4, 1);
  sub_10046F95C((*a1 + 16), 4uLL, &v28, 1);
  sub_10046F95C((*a1 + 20), 4uLL, &v27, 1);
  sub_10046F95C((*a1 + 24), 4uLL, &v26, 1);
  sub_10046F95C((*a1 + 28), 4uLL, &v25 + 4, 1);
  sub_10046F95C((*a1 + 32), 4uLL, &v25, 1);
  sub_10046F95C((*a1 + 36), 4uLL, &v24, 1);
  sub_10046F95C((*a1 + 40), 2uLL, &v23 + 2, 1);
  sub_10046F95C((*a1 + 42), 2uLL, &v23, 1);
  sub_10046F95C((*a1 + 44), 4uLL, &v22 + 4, 1);
  sub_10046F95C((*a1 + 48), 4uLL, &v22, 1);
  v4 = sub_1000054A8();
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (v4[187] == 2)
  {
    sub_10046F95C((*a1 + 52), 4uLL, &v21 + 4, 1);
    sub_10046F95C((*a1 + 56), 4uLL, &v21, 1);
    sub_10046F95C((*a1 + 60), 4uLL, &v20, 1);
    v6 = v21;
    v7 = HIDWORD(v21);
    v5 = v20;
  }

  v8 = __dst;
  v10 = v28;
  v9 = HIDWORD(v28);
  v11 = v27;
  v13 = HIDWORD(v25);
  v12 = v26;
  v15 = v24;
  result = v25;
  v16 = HIWORD(v23);
  v17 = v23;
  v19 = v22;
  v18 = HIDWORD(v22);
  *a2 = HIDWORD(__dst);
  *(a2 + 4) = v8;
  *(a2 + 8) = v9;
  *(a2 + 12) = v10;
  *(a2 + 16) = v11;
  *(a2 + 20) = v12;
  *(a2 + 24) = v13;
  *(a2 + 28) = result;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 38) = v17;
  *(a2 + 40) = v18;
  *(a2 + 44) = v19;
  *(a2 + 48) = v7;
  *(a2 + 52) = v6;
  *(a2 + 56) = v5;
  return result;
}

void sub_1004634A4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = *a1;
  if (a1[1] - *a1 == 10)
  {
    __dst = 0;
    sub_10046F95C((v10 + 4), 2uLL, &__dst, 1);
    v19 = sub_100427984(__dst, v12, v13, v14, v15, v16, v17, v18);
    memset(&v23, 0, sizeof(v23));
    std::string::resize(&v23, 4uLL, 0);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v23;
    }

    else
    {
      v20 = v23.__r_.__value_.__r.__words[0];
    }

    sub_10046F95C((*a1 + 6), 4uLL, v20, 1);
    *a9 = v19;
    v21 = (a9 + 8);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000056BC(v21, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *v21 = v23;
    }
  }

  else
  {
    v22 = a1[1] - *a1;
    sub_100428B48("got log request response packet with wrong size: expect %d, actual %zu", a2, a3, a4, a5, a6, a7, a8, 10);
    *a9 = 0;
    *(a9 + 16) = 0;
    *(a9 + 24) = 0;
    *(a9 + 8) = 0;
  }
}

void sub_1004635AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004635C8(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

uint64_t sub_100463608(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __dst = 0;
  if (a1[1] - *a1 == 7)
  {
    sub_10046F95C((*a1 + 4), 2uLL, &__dst, 1);
    v16 = sub_100427984(__dst, v9, v10, v11, v12, v13, v14, v15);
    v19 = 0;
    sub_10046F95C((*a1 + 6), 1uLL, &v19, 1);
    return v16 | (v19 << 16);
  }

  else
  {
    v18 = a1[1] - *a1;
    sub_100428B48("got log config response packet with wrong size: expect %d, actual %zu", a2, a3, a4, a5, a6, a7, a8, 7);
    return 0x40000;
  }
}

void sub_1004636A4(void *a1)
{
  if (a1[1] - *a1 > 0x27uLL)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_1004211BC(exception, "Not enough bytes in Hello Response");
}

void sub_100463C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((v33 & 1) == 0)
    {
LABEL_6:
      std::ios::~ios();
      sub_100019668(v34 - 192);
      if (*(v34 - 97) < 0)
      {
        operator delete(*(v34 - 120));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v32);
  goto LABEL_6;
}

uint64_t sub_100463DC8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100466970(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void *sub_100463E30(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 6) = *(a2 + 6);
  sub_1000199E0((__dst + 4), a2 + 8);
  __dst[13] = *(a2 + 13);
  return __dst;
}

void sub_100463E9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100463EB8(void *__dst, __int128 *a2, char a3, char a4, __int16 a5, int *a6, int a7)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v13 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v13;
  }

  *(__dst + 24) = a3;
  *(__dst + 25) = a4;
  *(__dst + 13) = a5;
  sub_100463F6C((__dst + 4), a6);
  *(__dst + 26) = a7;
  *(__dst + 108) = 1;
  return __dst;
}

void sub_100463F50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100463F6C(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 31) < 0)
  {
    sub_1000056BC((a1 + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v5 = *(a2 + 2);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 8) = v5;
  }

  *(a1 + 32) = *(a2 + 4);
  if (*(a2 + 63) < 0)
  {
    sub_1000056BC((a1 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 10);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 40) = v6;
  }

  *(a1 + 64) = 1;
  return a1;
}

void sub_100464004(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void *sub_100464020(void *__dst, __int128 *a2, char a3, char a4, __int16 a5, int *a6)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v11;
  }

  *(__dst + 24) = a3;
  *(__dst + 25) = a4;
  *(__dst + 13) = a5;
  sub_100463F6C((__dst + 4), a6);
  *(__dst + 104) = 0;
  *(__dst + 108) = 0;
  return __dst;
}

void sub_1004640B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004640CC(uint64_t result, int a2, int a3, __int16 a4)
{
  *result = a2;
  *(result + 2) = a3;
  *(result + 3) = a4;
  if (a2 == 1)
  {
    if (a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1004211BC(exception, "expect numConfigsSetSuccessfully == 0 when status == INVALID_CMD_PARAM");
    }
  }

  return result;
}

uint64_t sub_10046414C(uint64_t a1)
{
  *a1 = off_1009ABF28;
  if (*(a1 + 120) == 1)
  {
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1004641D4(uint64_t a1)
{
  *a1 = off_1009ABF28;
  if (*(a1 + 120) == 1)
  {
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete();
}

void sub_100464334(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10046436C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_1009ABF28;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    sub_1000056BC((a2 + 24), *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v6 = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
    *(a2 + 24) = v6;
  }

  *(a2 + 48) = *(a1 + 48);
  result = sub_1000199E0(a2 + 56, (a1 + 56));
  *(a2 + 128) = *(a1 + 128);
  return result;
}

void sub_100464408(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100464438(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {

    sub_10000AD84(v2);
  }
}

void sub_1004644B8(void **__p)
{
  if (*(__p + 120) == 1)
  {
    if (*(__p + 119) < 0)
    {
      operator delete(__p[12]);
    }

    if (*(__p + 87) < 0)
    {
      operator delete(__p[8]);
    }
  }

  if (*(__p + 47) < 0)
  {
    operator delete(__p[3]);
  }

  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100464564(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004645B0(void *a1)
{
  *a1 = off_1009ABFA8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1004645FC(void *a1)
{
  *a1 = off_1009ABFA8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_1004646DC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009ABFA8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void sub_10046471C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_10046472C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_10046479C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004647E8(void *a1)
{
  *a1 = off_1009AC028;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100464834(void *a1)
{
  *a1 = off_1009AC028;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100464914(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AC028;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void sub_100464954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100464964(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_1004649D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100464A20(void *a1)
{
  *a1 = off_1009AC0A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100464A6C(void *a1)
{
  *a1 = off_1009AC0A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100464B4C(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AC0A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void sub_100464B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100464B9C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100464C0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100464C58(void *a1)
{
  *a1 = off_1009AC128;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100464CA4(void *a1)
{
  *a1 = off_1009AC128;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100464D8C(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AC128;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(result + 24);
  *(a2 + 26) = 0;
  *(a2 + 30) = 0;
  return result;
}

void sub_100464DD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100464DE4(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100464E54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100464EA0(void *a1)
{
  *a1 = off_1009AC1A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100464EEC(void *a1)
{
  *a1 = off_1009AC1A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100464FCC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AC1A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void sub_10046500C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_10046501C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_10046508C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004650D8(void *a1)
{
  *a1 = off_1009AC228;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100465124(void *a1)
{
  *a1 = off_1009AC228;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100465204(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AC228;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void sub_100465244(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100465254(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_1004652C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100465310(uint64_t a1)
{
  *a1 = off_1009AC2A8;
  v4 = (a1 + 32);
  sub_100189A94(&v4);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100465374(uint64_t a1)
{
  *a1 = off_1009AC2A8;
  v3 = (a1 + 32);
  sub_100189A94(&v3);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete();
}

void sub_100465484(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1004654A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AC2A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 24);
  *(a2 + 32) = 0;
  *(a2 + 24) = v4;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return sub_10026B35C(a2 + 32, *(a1 + 32), *(a1 + 40), (*(a1 + 40) - *(a1 + 32)) >> 5);
}

void sub_100465520(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100465540(void *a1)
{
  sub_1004655F8(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1004655AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004655F8(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_100189A94(&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000AD84(v2);
  }
}

void *sub_10046563C(void *a1)
{
  *a1 = off_1009AC328;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100465688(void *a1)
{
  *a1 = off_1009AC328;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100465774(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AC328;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 24);
  *(a2 + 28) = *(result + 28);
  *(a2 + 24) = v4;
  *(a2 + 30) = 0;
  return result;
}

void sub_1004657C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_1004657D0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100465840(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10046588C(void *a1)
{
  *a1 = off_1009AC3A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1004658D8(void *a1)
{
  *a1 = off_1009AC3A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

__n128 sub_1004659C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AC3A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  v5 = *(a1 + 40);
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  return result;
}

void sub_100465A08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100465A18(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100465A88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100465AD4(void *a1)
{
  *a1 = off_1009AC428;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100465B20(void *a1)
{
  *a1 = off_1009AC428;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

void *sub_100465C00(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_1009AC428;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_100465C40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100465C50(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100465CC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100465D0C(void *a1)
{
  *a1 = off_1009AC4A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100465D58(void *a1)
{
  *a1 = off_1009AC4A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

void *sub_100465E38(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_1009AC4A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_100465E78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100465E88(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100465EF8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100465F44(void *a1)
{
  *a1 = off_1009AC528;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100465F90(void *a1)
{
  *a1 = off_1009AC528;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100466070(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AC528;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void sub_1004660B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_1004660C0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100466130(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10046617C(void *a1)
{
  *a1 = off_1009AC5A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1004661C8(void *a1)
{
  *a1 = off_1009AC5A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

__n128 sub_1004662C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_1009AC5A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *(a2 + 68) = *(a1 + 68);
  *(a2 + 56) = v6;
  *(a2 + 40) = v5;
  *(a2 + 24) = result;
  *(a2 + 84) = 0;
  return result;
}

void sub_100466320(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_100466330(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_1004663A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004663EC(uint64_t a1)
{
  *a1 = off_1009AC628;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100466448(uint64_t a1)
{
  *a1 = off_1009AC628;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete();
}

void sub_100466568(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_10000AD84(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_100466588(char *result, uint64_t a2)
{
  v3 = *(result + 1);
  v2 = *(result + 2);
  *a2 = off_1009AC628;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(result + 12);
  if (result[55] < 0)
  {
    return sub_1000056BC((a2 + 32), *(result + 4), *(result + 5));
  }

  v4 = *(result + 2);
  *(a2 + 48) = *(result + 6);
  *(a2 + 32) = v4;
  return result;
}

void sub_10046660C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046662C(void *a1)
{
  sub_1004666E4(a1 + 8);

  operator delete(a1);
}

uint64_t sub_100466698(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004666E4(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    sub_10000AD84(v2);
  }
}

void *sub_100466738(void *a1)
{
  *a1 = off_1009AC6A8;
  v2 = a1[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_100466784(void *a1)
{
  *a1 = off_1009AC6A8;
  v1 = a1[2];
  if (v1)
  {
    sub_10000AD84(v1);
  }

  operator delete();
}

uint64_t sub_100466864(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_1009AC6A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void sub_1004668A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

void sub_1004668B4(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_10000AD84(v2);
  }

  operator delete(__p);
}

uint64_t sub_100466924(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100466970(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_100019B38();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_10026B420(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  sub_100466A98(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100425CB4(&v15);
  return v14;
}

void sub_100466A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100425CB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100466A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return sub_10026B520(v9);
}

uint64_t sub_100466B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = a2;
  sub_10046CE84(a1 + 56, a3);
  sub_10046CF1C(a1 + 88, a4);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (!*(a1 + 80))
  {
    __assert_rtn("RoseDebugManager", "roseDebugManager.cpp", 47, "fClientCallback");
  }

  return a1;
}

void sub_100466BE4(_Unwind_Exception *a1)
{
  sub_10026B684(v1 + 56);
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_100466C24(uint64_t a1, int a2)
{
  v18 = a2;
  LODWORD(v19) = 0;
  sub_100004A08(v20, "Idle");
  v21 = 1;
  sub_100004A08(v22, "ClientTriggeredFatal");
  v23 = 2;
  sub_100004A08(v24, "ClientTriggeredNonFatal");
  sub_10046CFB4(v17, &v19, 3);
  for (i = 0; i != -96; i -= 32)
  {
    if (v24[i + 23] < 0)
    {
      operator delete(*&v24[i]);
    }
  }

  if (!a2)
  {
    if (*(a1 + 47) < 0)
    {
      **(a1 + 24) = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      *(a1 + 24) = 0;
      *(a1 + 47) = 0;
    }
  }

  v5 = (a1 + 4);
  v19 = v5;
  v6 = sub_100003FF0(v17, v5);
  v7 = v6 + 5;
  if (*(v6 + 63) < 0)
  {
    v7 = *v7;
  }

  v19 = &v18;
  v8 = sub_100003FF0(v17, &v18);
  if (*(v8 + 63) < 0)
  {
    v16 = v8[5];
  }

  sub_100005D28("DebugLogState transition from: %s to: %s", v9, v10, v11, v12, v13, v14, v15, v7);
  *v5 = v18;
  sub_10022E954(v17, v17[1]);
}

void sub_100466DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v18 = v16 + 72;
  v19 = -96;
  while (1)
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    v18 -= 32;
    v19 += 32;
    if (!v19)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_100466E40(uint64_t a1, NSObject *a2, char a3, char a4)
{
  os_unfair_lock_lock((a1 + 8));
  if (*a1 == 1)
  {
    os_unfair_lock_unlock((a1 + 8));
    return 1;
  }

  else if (a2)
  {
    *(a1 + 120) = a2;
    *(a1 + 129) = a3;
    *(a1 + 128) = a4;
    v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2);
    *(a1 + 16) = v15;
    if (v15)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 0x40000000;
      v25[2] = sub_100467104;
      v25[3] = &unk_1009AC718;
      v25[4] = a1;
      dispatch_source_set_event_handler(v15, v25);
      *(a1 + 1) = 1;
      v23 = *(a1 + 48);
      operator new();
    }

    sub_100428B48("Unable to create the timer", v16, v17, v18, v19, v20, v21, v22, v25[0]);
    *(a1 + 120) = 0;
    os_unfair_lock_unlock((a1 + 8));
    return 0;
  }

  else
  {
    sub_100428B48("RoseDebugManager: queue shouldn't be null", v8, v9, v10, v11, v12, v13, v14, v25[0]);
    os_unfair_lock_unlock((a1 + 8));
  }

  return a2;
}

void sub_1004670C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10042AB50(va);
  _Unwind_Resume(a1);
}

void sub_100467104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  sub_100428B48("Crashlog callback timer expired", a2, a3, a4, a5, a6, a7, a8, v19[0]);
  os_unfair_lock_lock((v8 + 8));
  sub_100005D28("RoseDebugManager: Suspending the crashlog timer", v9, v10, v11, v12, v13, v14, v15, v19[0]);
  dispatch_suspend(*(v8 + 16));
  *(v8 + 1) = 1;
  v16 = *(v8 + 4);
  if (v16 == 2)
  {
    sub_100004A08(v19, "Crashlog callback timer expired");
    sub_100467238(v8, v8 + 24, 0);
    v17 = 3;
    if (v20 < 0)
    {
      v18 = v19;
      goto LABEL_7;
    }

LABEL_8:
    sub_100466C24(v8, 0);
    sub_100468528(v8 + 56, v17);
    goto LABEL_9;
  }

  if (v16 == 1)
  {
    sub_100004A08(v21, "Crashlog callback timer expired");
    sub_100467238(v8, v8 + 24, 0);
    v17 = 1;
    if ((v21[23] & 0x80000000) != 0)
    {
      v18 = v21;
LABEL_7:
      operator delete(*v18);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  os_unfair_lock_unlock((v8 + 8));
}

void sub_100467204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100467238(_BYTE *a1, std::string::size_type a2, uint64_t a3)
{
  sub_100004A08(&v185, "/private/var/mobile/Library/Logs/CrashReporter/Rose/");
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v183 = std::chrono::system_clock::to_time_t(&__t);
  sub_100193120(v178);
  v6 = localtime(&v183);
  strftime(__s, 0x32uLL, "%Y-%m-%d-%H-%M-%S", v6);
  memset(&pn, 0, sizeof(pn));
  if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v185;
  }

  else
  {
    v7 = v185.__r_.__value_.__r.__words[0];
  }

  if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v185.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v185.__r_.__value_.__l.__size_;
  }

  v9 = sub_10000EA44(&v179, v7, size);
  v10 = sub_10000EA44(v9, "Rose-", 5);
  sub_100004A08(__p, __s);
  if ((v187 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v187 & 0x80u) == 0)
  {
    v12 = v187;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = sub_10000EA44(v10, v11, v12);
  v14 = sub_10000EA44(v13, ".", 1);
  LOBYTE(v188) = 48;
  v15 = sub_100193BA0(v14, &v188);
  *(v15 + *(*v15 - 24) + 24) = 3;
  v16 = std::ostream::operator<<();
  sub_10000EA44(v16, "/", 1);
  if (v187 < 0)
  {
    operator delete(__p[0]);
  }

  v160 = a3;
  std::stringbuf::str();
  memset(&v175, 0, sizeof(v175));
  sub_10046BB2C(v174);
  sub_10046BB2C(v173);
  v191 = 0;
  *(&v189[-1] + *(v188 - 3)) = v17;
  v18 = (&v189[-1] + *(v188 - 3));
  std::ios_base::init(v18, v189);
  v18[1].__vftable = 0;
  v18[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  sub_10046E0D8(v172, 2uLL);
  bzero(__p, 0x400uLL);
  v161 = getpwnam("mobile");
  v19 = 0;
  v171 = 0;
  if (*a1)
  {
    if (confstr(65537, __p, 0x400uLL) - 1024 > 0xFFFFFFFFFFFFFC00)
    {
      sub_100193120(&__from);
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::operator=();
      __from.__pn_.__r_.__value_.__r.__words[2] = v27;
      if (v170 < 0)
      {
        operator delete(v169[7].__locale_);
      }

      std::locale::~locale(v169);
      std::iostream::~basic_iostream();
      std::ios::~ios();
      v28 = strlen(__p);
      v29 = sub_10000EA44(&v179, __p, v28);
      v30 = sub_10000EA44(v29, "/Rose-", 6);
      sub_100004A08(&__from, __s);
      if ((__from.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_from = &__from;
      }

      else
      {
        p_from = __from.__pn_.__r_.__value_.__r.__words[0];
      }

      if ((__from.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = __from.__pn_.__r_.__value_.__l.__size_;
      }

      v33 = sub_10000EA44(v30, p_from, v32);
      v34 = sub_10000EA44(v33, ".", 1);
      v162.__r_.__value_.__s.__data_[0] = 48;
      v35 = sub_100193BA0(v34, &v162);
      *(v35 + *(*v35 - 24) + 24) = 3;
      v36 = std::ostream::operator<<();
      sub_10000EA44(v36, "/", 1);
      if (SHIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__from.__pn_.__r_.__value_.__l.__data_);
      }

      std::stringbuf::str();
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }

      pn = __from.__pn_;
      if ((__from.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = HIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v37 = pn.__r_.__value_.__l.__size_;
      }

      v38 = &__from;
      sub_100175C6C(&__from, v37 + 12);
      if ((__from.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = __from.__pn_.__r_.__value_.__r.__words[0];
      }

      if (v37)
      {
        if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_pn = &pn;
        }

        else
        {
          p_pn = pn.__r_.__value_.__r.__words[0];
        }

        memmove(v38, p_pn, v37);
      }

      strcpy(v38 + v37, "summary.json");
      if (SHIBYTE(v175.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v175.__pn_.__r_.__value_.__l.__data_);
      }

      v175 = __from;
      if ((a1[128] & 1) == 0 && a1[129] != 1)
      {
        if ((sub_10046AE08(a1, &pn.__r_.__value_.__l.__data_, v173, &v171 + 1, &v171, v39, v40, v41) & 1) == 0)
        {
          sub_100428B48("Error collecting firmware logs.", v95, v96, v97, v98, v99, v100, v101, v156);
        }

        v19 = sub_1004692B4(a1, &pn.__r_.__value_.__l.__data_, v160, v172, v173, &v171 + 1, &v171);
        if (v19 == 2)
        {
          if (sub_10046A6E4(a1, &pn.__r_.__value_.__l.__data_, v172, v173, &v171 + 1, &v171, v102, v103))
          {
            v19 = 2;
          }

          else
          {
            v19 = 3;
          }
        }

        sub_10046E17C(v164, v173);
        v104 = sub_100469F40(v174, "Files Collected");
        sub_10046A120(v104, v164);
        sub_10046CC60(v164);
        sub_10046BB64(v174, 4);
        if ((__from.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v105 = &__from;
        }

        else
        {
          v105 = __from.__pn_.__r_.__value_.__r.__words[0];
        }

        if ((__from.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v106 = HIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v106 = __from.__pn_.__r_.__value_.__l.__size_;
        }

        v107 = sub_10000EA44(&v188, v105, v106);
        std::ios_base::getloc((v107 + *(*v107 - 24)));
        v108 = std::locale::use_facet(&v162, &std::ctype<char>::id);
        (v108->__vftable[2].~facet_0)(v108, 10);
        std::locale::~locale(&v162);
        std::ostream::put();
        std::ostream::flush();
        if (SHIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__from.__pn_.__r_.__value_.__l.__data_);
        }

        if (!std::filebuf::close())
        {
          std::ios_base::clear((&v189[-1] + *(v188 - 3)), *(&v189[3] + *(v188 - 3)) | 4);
        }

        if ((a1[128] & 1) == 0 && a1[129] != 1)
        {
          goto LABEL_51;
        }

        v109 = &v185;
        if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v109 = v185.__r_.__value_.__r.__words[0];
        }

        v163 = v109;
        sub_1003030B0(&__from.__pn_, &v163);
        std::__fs::filesystem::__status(&__from, 0);
        v110 = v162.__r_.__value_.__s.__data_[0];
        if (SHIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__from.__pn_.__r_.__value_.__l.__data_);
        }

        if (v110 == 255 || !v110)
        {
          if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v111 = &v185;
          }

          else
          {
            v111 = v185.__r_.__value_.__r.__words[0];
          }

          if (mkdir(v111, 0x1F8u) && *__error() != 17)
          {
            v124 = __error();
            sub_100428B48("Unable to create the parent directory for debug logs: %d", v125, v126, v127, v128, v129, v130, v131, *v124);
            goto LABEL_50;
          }

          if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v112 = &v185;
          }

          else
          {
            v112 = v185.__r_.__value_.__r.__words[0];
          }

          if (chmod(v112, 0x1F8u))
          {
            v113 = SHIBYTE(v185.__r_.__value_.__r.__words[2]);
            v114 = v185.__r_.__value_.__r.__words[0];
            v115 = __error();
            v123 = &v185;
            if (v113 < 0)
            {
              v123 = v114;
            }

            v159 = *v115;
            sub_100428B48("Unable to chmod '%s': %d", v116, v117, v118, v119, v120, v121, v122, v123);
            goto LABEL_50;
          }

          if (v161)
          {
            v132 = (v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v185 : v185.__r_.__value_.__r.__words[0];
            if (chown(v132, v161->pw_uid, 0xFFFFFFFF))
            {
              v133 = __error();
              sub_100428B48("Error changing the ownership of parent directory to _nearbyd: %d", v134, v135, v136, v137, v138, v139, v140, *v133);
              goto LABEL_50;
            }
          }
        }

        if (sub_10046B678(&v185))
        {
          sub_1001B9424(&__from.__pn_, &pn);
          sub_1001B9424(&v162, &v176);
          std::__fs::filesystem::__copy(&__from, &v162, recursive, 0);
          if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v162.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__from.__pn_.__r_.__value_.__l.__data_);
          }

          v155 = &v176;
          if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v155 = v176.__r_.__value_.__r.__words[0];
          }

          sub_100005D28("Logs can be found in this directory: %s", v148, v149, v150, v151, v152, v153, v154, v155);
          sub_1001B9424(&__from.__pn_, &pn);
          std::__fs::filesystem::__remove_all(&__from, 0);
          if (SHIBYTE(__from.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__from.__pn_.__r_.__value_.__l.__data_);
          }

          goto LABEL_51;
        }

        sub_100428B48("Unable to make room for new logs", v141, v142, v143, v144, v145, v146, v147, v156);
LABEL_50:
        LOBYTE(v171) = 1;
LABEL_51:
        if (HIBYTE(v171) == 1)
        {
          sub_100468528((a1 + 56), 5);
        }

        if (v171 == 1)
        {
          sub_100468528((a1 + 56), 6);
        }

        goto LABEL_55;
      }

      if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &pn;
      }

      else
      {
        v43 = pn.__r_.__value_.__r.__words[0];
      }

      if (mkdir(v43, 0x1F8u))
      {
        v44 = __error();
        sub_100428B48("Unable to create a temp directory location: %d", v45, v46, v47, v48, v49, v50, v51, *v44);
      }

      else
      {
        if (v161)
        {
          v54 = (pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &pn : pn.__r_.__value_.__r.__words[0];
          if (chown(v54, v161->pw_uid, 0xFFFFFFFF))
          {
            v55 = __error();
            sub_100428B48("Error changing the ownership of the temp directory to _nearbyd: %d", v56, v57, v58, v59, v60, v61, v62, *v55);
            LOBYTE(v171) = 1;
          }
        }

        if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = &pn;
        }

        else
        {
          v63 = pn.__r_.__value_.__r.__words[0];
        }

        if (chmod(v63, 0x1F8u))
        {
          v64 = SHIBYTE(pn.__r_.__value_.__r.__words[2]);
          v65 = pn.__r_.__value_.__r.__words[0];
          v66 = __error();
          v74 = &pn;
          if (v64 < 0)
          {
            v74 = v65;
          }

          v157 = *v66;
          sub_100428B48("Unable to chmod '%s': %d", v67, v68, v69, v70, v71, v72, v73, v74);
          LOBYTE(v171) = 1;
        }

        std::ofstream::open();
        if ((v175.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v82 = &v175;
        }

        else
        {
          v82 = v175.__pn_.__r_.__value_.__r.__words[0];
        }

        if (v189[15])
        {
          if (chmod(v82, 0x1B0u))
          {
            v83 = SHIBYTE(v175.__pn_.__r_.__value_.__r.__words[2]);
            v84 = v175.__pn_.__r_.__value_.__r.__words[0];
            v85 = __error();
            v93 = &v175;
            if (v83 < 0)
            {
              v93 = v84;
            }

            v158 = *v85;
            sub_100428B48("Unable to chmod '%s': %d", v86, v87, v88, v89, v90, v91, v92, v93);
            LOBYTE(v171) = 1;
          }

          if (*(a2 + 23) >= 0)
          {
            v94 = a2;
          }

          else
          {
            v94 = *a2;
          }

          v166 = 0;
          __from.__pn_.__r_.__value_.__r.__words[0] = v94;
          v165[0] = 0;
          sub_10046D694(v165, &__from.__pn_.__r_.__value_.__l.__data_);
        }

        sub_100428B48("Error trying to open file: %s", v75, v76, v77, v78, v79, v80, v81, v82);
      }
    }

    else
    {
      sub_100428B48("failed to get process temp directory path", v20, v21, v22, v23, v24, v25, v26, v156);
    }

    v19 = 0;
    goto LABEL_50;
  }

LABEL_55:
  __p[0] = v172;
  sub_1001674A8(__p);
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  sub_10046CC60(v173);
  sub_10046CC60(v174);
  if (SHIBYTE(v175.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v176.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  v179 = v52;
  if (v182 < 0)
  {
    operator delete(v181[7].__locale_);
  }

  std::locale::~locale(v181);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v185.__r_.__value_.__l.__data_);
  }

  return v19;
}

uint64_t sub_100468528(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100037B10();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_10046857C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005D28("crashReceived", a2, a3, a4, a5, a6, a7, a8, __p);
  os_unfair_lock_lock((a1 + 8));
  if (*a1)
  {
    if (a2)
    {
      if (!*(a1 + 4))
      {
        sub_100004A08(&v29, "FW Generated");
        if (*(a1 + 47) < 0)
        {
          operator delete(*(a1 + 24));
        }

        *(a1 + 24) = v29;
        *(a1 + 40) = v30;
      }

      sub_100004A08(&__p, "");
      v24 = sub_100467238(a1, a1 + 24, a2);
      if (v28 < 0)
      {
        operator delete(__p);
      }

      if (v24 <= 1)
      {
        if (v24)
        {
          if (v24 != 1 || *(a1 + 4) != 2)
          {
            goto LABEL_28;
          }

          sub_100005D28("RoseDebugManager: Suspending the crashlog timer", v17, v18, v19, v20, v21, v22, v23, __p);
          dispatch_suspend(*(a1 + 16));
          *(a1 + 1) = 1;
          sub_100466C24(a1, 0);
          v25 = a1 + 56;
          v26 = 4;
          goto LABEL_27;
        }

        sub_100428B48("No crashlogs were available to dequeue", v17, v18, v19, v20, v21, v22, v23, __p);
LABEL_28:
        os_unfair_lock_unlock((a1 + 8));
        return;
      }

      if (v24 == 2)
      {
        if (*(a1 + 4))
        {
          sub_100005D28("RoseDebugManager: Suspending the crashlog timer", v17, v18, v19, v20, v21, v22, v23, __p);
          dispatch_suspend(*(a1 + 16));
          *(a1 + 1) = 1;
          sub_100466C24(a1, 0);
        }

        v25 = a1 + 56;
        v26 = 2;
      }

      else
      {
        if (v24 != 3)
        {
          goto LABEL_28;
        }

        if (*(a1 + 4))
        {
          sub_100005D28("RoseDebugManager: Suspending the crashlog timer", v17, v18, v19, v20, v21, v22, v23, __p);
          dispatch_suspend(*(a1 + 16));
          *(a1 + 1) = 1;
          sub_100466C24(a1, 0);
        }

        v25 = a1 + 56;
        v26 = 1;
      }

LABEL_27:
      sub_100468528(v25, v26);
      goto LABEL_28;
    }

    sub_100428B48("descriptor is null", v10, v11, v12, v13, v14, v15, v16, __p);
    sub_100468528(a1 + 56, 5);
  }

  os_unfair_lock_unlock((a1 + 8));
}

void sub_100468768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100468784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

      v10 = "fwStateChangeReceived: FW is in FirmwareRunning";
      goto LABEL_11;
    }

    sub_100005D28("fwStateChangeReceived: FW is in SecureROM", a2, a3, a4, a5, a6, a7, a8, v20);
    os_unfair_lock_lock((a1 + 8));
    if (*(a1 + 4) == 2)
    {
      sub_100005D28("RoseDebugManager: Suspending the crashlog timer", v13, v14, v15, v16, v17, v18, v19, v21);
      dispatch_suspend(*(a1 + 16));
      *(a1 + 1) = 1;
      sub_100466C24(a1, 0);
    }

    os_unfair_lock_unlock((a1 + 8));
    v11 = a1 + 56;
    v12 = 7;
  }

  else
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v10 = "fwStateChangeReceived: FW is in FirmwareCrashed";
      }

      else
      {
        if (a2 != 4)
        {
          return;
        }

        v10 = "fwStateChangeReceived: Unable to decode the FW state.";
      }

LABEL_11:

      sub_100005D28(v10, a2, a3, a4, a5, a6, a7, a8, a9);
      return;
    }

    sub_100005D28("fwStateChangeReceived: FW is in FirmwareLogCollectionInProgress", a2, a3, a4, a5, a6, a7, a8, v20);
    v11 = a1 + 56;
    v12 = 0;
  }

  sub_100468528(v11, v12);
}

void sub_100468898(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v10 = a4;
    if (a4)
    {
      if (a4 >= 0x101)
      {
        sub_100428B48("Received error packet of size %zu, truncating to %d", a2, a3, a4, a5, a6, a7, a8, a4);
        v10 = 256;
      }

      if (a2 == 4 || a2 == 2)
      {
        sub_100004A08(v17, "Error Reporting Packet:\n");
        sub_100004A08(__p, "\n");
        sub_10046FF5C(v17, a3, v10, 4u, __p);
      }

      else
      {
        sub_100004A08(v17, "Error Reporting Packet Header:\n");
        sub_100004A08(__p, "\n");
        if (v10 > 0x13)
        {
          sub_10046FF5C(v17, a3, 0x14uLL, 4u, __p);
        }

        else
        {
          sub_10046FF5C(v17, a3, v10, 4u, __p);
        }
      }

      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }
    }
  }

  switch(a2)
  {
    case 0:
      sub_100428B48("errorReportReceived: FWPktSeqMismatch", a2, a3, a4, a5, a6, a7, a8, v14);
      v12 = a1 + 56;
      v13 = 8;
      goto LABEL_30;
    case 1:
      sub_100428B48("errorReportReceived: FWPktDroppedMagicMismatch", a2, a3, a4, a5, a6, a7, a8, v14);
      v12 = a1 + 56;
      v13 = 9;
      goto LABEL_30;
    case 2:
      sub_100428B48("errorReportReceived: FWPktDroppedTooLarge", a2, a3, a4, a5, a6, a7, a8, v14);
      v12 = a1 + 56;
      v13 = 10;
      goto LABEL_30;
    case 3:
      sub_100428B48("errorReportReceived: FWPktDroppedFWFailure", a2, a3, a4, a5, a6, a7, a8, v14);
      v12 = a1 + 56;
      v13 = 11;
      goto LABEL_30;
    case 4:
      sub_100428B48("errorReportReceived: FWPktDroppedCRCMismatch", a2, a3, a4, a5, a6, a7, a8, v14);
      v12 = a1 + 56;
      v13 = 12;
      goto LABEL_30;
    case 5:
      sub_100428B48("errorReportReceived: FWPktDroppedRespSeqMismatch", a2, a3, a4, a5, a6, a7, a8, v14);
      v12 = a1 + 56;
      v13 = 13;
      goto LABEL_30;
    case 6:
      sub_100428B48("errorReportReceived: FWPktDroppedUnhandledType", a2, a3, a4, a5, a6, a7, a8, v14);
      v12 = a1 + 56;
      v13 = 14;
      goto LABEL_30;
    case 7:
      sub_100428B48("errorReportReceived: FWPktDroppedUnhandledInterface", a2, a3, a4, a5, a6, a7, a8, v14);
      v12 = a1 + 56;
      v13 = 15;
      goto LABEL_30;
    case 8:
      sub_100428B48("errorReportReceived: FWPktDroppedUnknownError", a2, a3, a4, a5, a6, a7, a8, v14);
      v12 = a1 + 56;
      v13 = 16;
      goto LABEL_30;
    case 9:
      sub_100428B48("errorReportReceived: DriverCrashlogPktError", a2, a3, a4, a5, a6, a7, a8, v14);
      v12 = a1 + 56;
      v13 = 17;
      goto LABEL_30;
    case 10:
      sub_100428B48("errorReportReceived: RKOSPktError", a2, a3, a4, a5, a6, a7, a8, v14);
      v12 = a1 + 56;
      v13 = 18;
      goto LABEL_30;
    case 11:
      sub_100428B48("errorReportReceived: InvalidEventParameter", a2, a3, a4, a5, a6, a7, a8, v14);
      v12 = a1 + 56;
      v13 = 19;
      goto LABEL_30;
    case 12:
      sub_100428B48("errorReportReceived: UnknownError", a2, a3, a4, a5, a6, a7, a8, v14);
      v12 = a1 + 56;
      v13 = 20;
LABEL_30:
      sub_100468528(v12, v13);
      break;
    default:
      sub_100428B48("errorReportReceived: Error Undefined (%d)", a2, a3, a4, a5, a6, a7, a8, a2);
      break;
  }
}

void sub_100468B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_100468B94(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100468C10;
    block[3] = &unk_1009AC738;
    block[4] = a1;
    dispatch_sync(v2, block);
  }
}

void sub_100468C10(uint64_t a1)
{
  v1 = *(a1 + 32);
  os_unfair_lock_lock((v1 + 8));
  if (*v1 == 1)
  {
    if (*(v1 + 1) == 1)
    {
      dispatch_resume(*(v1 + 16));
    }

    dispatch_source_cancel(*(v1 + 16));
    dispatch_release(*(v1 + 16));
    v2 = *(v1 + 48);
    v4 = 0;
    sub_10042A2A4(v2, v3);
    sub_10042AA50(v3);
    *v1 = 0;
    *(v1 + 16) = 0;
    *(v1 + 120) = 0;
  }

  os_unfair_lock_unlock((v1 + 8));
}

void sub_100468CC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10042AA50(va);
  _Unwind_Resume(a1);
}

void sub_100468CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005D28("RoseDebugManager: Resuming the crashlog timer", a2, a3, a4, a5, a6, a7, a8, v11);
  v9 = *(a1 + 16);
  v10 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  dispatch_resume(*(a1 + 16));
  *(a1 + 1) = 0;
}

void sub_100468D44(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3 - 32;
  if (a3 - 32 < 0x31)
  {
    return;
  }

  v12 = 32;
  while (1)
  {
    v13 = a2 + v12;
    v14 = *(a2 + v12 + 12);
    v15 = *(a2 + v12);
    if (v14 <= 0xF)
    {
      v32 = *(v13 + 8);
      v33 = *(a2 + v12 + 12);
      sub_100428B48("crashlog section is too small. Section signature: 0x%x version: 0x%x size: %d", a2, a3, a4, a5, a6, a7, a8, v15);
      return;
    }

    if (v15 == 1130587248)
    {
      break;
    }

LABEL_7:
    v12 += v14;
    if (v12 + 16 >= v8)
    {
      return;
    }
  }

  if (*(v13 + 8) != 512)
  {
    v31 = *(v13 + 8);
    sub_100428B48("CoredumpRegions version mismatch. Expected: 0x%x Version in Crashlog: 0x%x", a2, a3, a4, a5, a6, a7, a8, 512);
    LODWORD(v14) = *(v13 + 12);
    goto LABEL_7;
  }

  if (v12 + v14 <= a3)
  {
    if (v14 >= 0x24)
    {
      v16 = 0;
      v17 = a2 + v12;
      while (1)
      {
        v18 = *(v17 + v16 + 32);
        if (v18 > 0x200000)
        {
          sub_100428B48("Coredump region size is too large: %d", a2, a3, a4, a5, a6, a7, a8, *(v17 + v16 + 32));
          goto LABEL_33;
        }

        v19 = *(a4 + 8);
        v20 = v19 - *a4;
        if (v20 == 1280)
        {
          break;
        }

        v21 = *(a4 + 16);
        if (v19 >= v21)
        {
          v23 = 0xCCCCCCCCCCCCCCCDLL * (v20 >> 2) + 1;
          if (v23 > 0xCCCCCCCCCCCCCCCLL)
          {
            sub_100019B38();
          }

          if (0x999999999999999ALL * ((v21 - *a4) >> 2) > v23)
          {
            v23 = 0x999999999999999ALL * ((v21 - *a4) >> 2);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v21 - *a4) >> 2) >= 0x666666666666666)
          {
            v24 = 0xCCCCCCCCCCCCCCCLL;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            sub_10046D4FC(a4, v24);
          }

          v25 = 4 * (v20 >> 2);
          *v25 = *(v17 + v16 + 16);
          *(v25 + 16) = v18;
          v22 = v25 + 20;
          v26 = *(a4 + 8) - *a4;
          v27 = v25 - v26;
          memcpy((v25 - v26), *a4, v26);
          v28 = *a4;
          *a4 = v27;
          *(a4 + 8) = v22;
          *(a4 + 16) = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v19 = *(v17 + v16 + 16);
          *(v19 + 16) = v18;
          v22 = v19 + 20;
        }

        *(a4 + 8) = v22;
        v29 = v16 + 56;
        v16 += 20;
        if (v29 > *(v13 + 12))
        {
          return;
        }
      }

      sub_100428B48("There are more coredump regions than expected in the crashlog", a2, a3, a4, a5, a6, a7, a8, v30);
LABEL_33:
      *(a4 + 8) = *a4;
    }
  }

  else
  {
    sub_100428B48("Parsing error while extracting the coredump regions. crashlog size: %zu offset and section size: %lu", a2, a3, a4, a5, a6, a7, a8, a3);
  }
}

void sub_100468F7C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, std::string *__str, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3 <= 0x1F)
  {

    sub_100428B48("crashLogSize is too small", a2, a3, a4, __str, a6, a7, a8, a9);
    return;
  }

  v9 = a6;
  v11 = a4;
  v14 = *(a2 + 12);
  if (a3 - 32 < 0x31)
  {
LABEL_12:
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v15 = 32;
    while (1)
    {
      v16 = a2 + v15;
      v17 = *(a2 + v15 + 12);
      v18 = *(a2 + v15);
      if (v17 <= 0xF)
      {
        v27 = *(v16 + 8);
        sub_100428B48("crashlog section is too small. Section signature: 0x%x version: 0x%x size: %d", a2, a3, a4, __str, a6, a7, a8, v18);
        goto LABEL_12;
      }

      if (v18 == 1131639922)
      {
        break;
      }

      v15 += v17;
      if (v15 + 16 >= a3 - 32)
      {
        goto LABEL_12;
      }
    }

    if (*(v16 + 8) == 257)
    {
      if (v15 + v17 <= a3)
      {
        v24 = v17 - 20;
        if (v17 - 20 < 0)
        {
          sub_100013AEC();
        }

        v25 = v24;
        if (v24 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v17 - 20;
        if (v17 != 20)
        {
          memcpy(&__dst, (v16 + 20), v24);
        }

        __dst.__r_.__value_.__s.__data_[v25] = 0;
        if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str->__r_.__value_.__l.__data_);
        }

        *__str = __dst;
        if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = __str;
        }

        else
        {
          v26 = __str->__r_.__value_.__r.__words[0];
        }

        sub_100005D28("CrashString is: %s", a2, a3, a4, __str, a6, a7, a8, v26);
      }

      else
      {
        sub_100428B48("Parsing error while extracting the crash string reason. crashlog size: %zu offset and section size: %lu", a2, a3, a4, __str, a6, a7, a8, a3);
      }

      v19 = 1;
    }

    else
    {
      sub_100428B48("Crash string section version mismatch. Expected: 0x%x Version in Crashlog: 0x%x", a2, a3, a4, __str, a6, a7, a8, 257);
      v19 = 0;
    }

    v20 = 1;
  }

  v21 = v14 - 1;
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v23 = *(a1 + 112);
    if (v23 && v9)
    {
      memset(&__dst, 0, sizeof(__dst));
      std::string::operator=(&__dst, __str);
      v29 = *(a2 + 12);
      v30 = v21 < 0x3F;
      v31 = v11;
      sub_100469258(a1 + 88, 0, &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      return;
    }
  }

  else
  {
    v23 = *(a1 + 112);
  }

  if (v23 && v9)
  {
    __dst.__r_.__value_.__s.__data_[0] = v20;
    __dst.__r_.__value_.__s.__data_[1] = v19;
    HIDWORD(__dst.__r_.__value_.__r.__words[0]) = *(a2 + 12);
    __dst.__r_.__value_.__s.__data_[8] = v21 < 0x3F;
    __dst.__r_.__value_.__s.__data_[9] = v11;
    sub_100469258(a1 + 88, 1, &__dst);
  }
}

void sub_10046923C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100469258(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100037B10();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_1004692B4(uint64_t a1, const void **a2, uint64_t a3, void *a4, uint64_t a5, _BYTE *a6, _BYTE *a7)
{
  v132 = 0;
  *v133 = 0;
  sub_100004A08(&v129, "");
  v14 = 0;
  v110 = 0;
  v15 = &v131;
  v16 = &v128;
  v17 = 1;
  do
  {
    v18 = v17;
    v116 = v15;
    *v15 = 1;
    v112 = v16;
    *v16 = 0;
    v19 = a3 + 30 * v14;
    v20 = 1;
    while (sub_100469CE0(a1, v14, &v132, a6, v10, v11, v12, v13))
    {
      memset(v126, 0, 15);
      v24 = v132;
      v134.__r_.__value_.__s.__data_[0] = 0;
      sub_100025100(v125, v132);
      v27 = sub_100429FF0(*(a1 + 48), v14, v126, v125[0], v125[2] - v125[0], v133, v25, v26);
      if (*v133 == v24)
      {
        v35 = v27;
      }

      else
      {
        v35 = 0;
      }

      if (v35)
      {
        if (BYTE4(v126[1]))
        {
          std::string::assign(&v129, "Corrupted");
          v134.__r_.__value_.__s.__data_[0] = v14;
          if (*(a1 + 112))
          {
            sub_100469258(a1 + 88, 2, &v134);
          }

LABEL_18:
          if (v18)
          {
            goto LABEL_19;
          }

LABEL_35:
          if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v129.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v129.__r_.__value_.__l.__size_;
          }

          sub_100175C6C(&v134, size + 4);
          if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v67 = &v134;
          }

          else
          {
            v67 = v134.__r_.__value_.__r.__words[0];
          }

          if (size)
          {
            if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v68 = &v129;
            }

            else
            {
              v68 = v129.__r_.__value_.__r.__words[0];
            }

            memmove(v67, v68, size);
          }

          strcpy(v67 + size, "-DSP");
        }

        else
        {
          if (*(v125[0] + 3) > 0x3Fu)
          {
            std::string::assign(&v129, "NonFatal");
            goto LABEL_18;
          }

          std::string::assign(&v129, "Fatal");
          if (a3)
          {
            *(v134.__r_.__value_.__r.__words + 7) = 0;
            v134.__r_.__value_.__r.__words[0] = 0;
            if (sub_10042A08C(*(a1 + 48), v14, &v134, v39, v40, v41, v42, v43))
            {
              if (*(v19 + 15) == v134.__r_.__value_.__r.__words[0])
              {
                sub_100005D28("Crashlog's log_id matches the coredump's log_id. Extracting the coredump regions.", v44, v45, v46, v47, v48, v49, v50, v106);
                sub_100468D44(v51, v125[0], *v133, *a4 + 24 * v14, v52, v53, v54, v55);
              }

              else
              {
                sub_100428B48("The coredump log_id does not match with the crashlog log_id", v44, v45, v46, v47, v48, v49, v50, v106);
              }
            }

            else
            {
              sub_100428B48("No coredump to be dequeued for core: %d", v44, v45, v46, v47, v48, v49, v50, v14);
            }
          }

          else
          {
            sub_100428B48("No crashlog descriptor available.", v37, v38, v39, v40, v41, v42, v43, v106);
          }

          v110 = 1;
          if ((v18 & 1) == 0)
          {
            goto LABEL_35;
          }

LABEL_19:
          if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v56 = v129.__r_.__value_.__l.__size_;
          }

          sub_100175C6C(&v134, v56 + 3);
          if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v64 = &v134;
          }

          else
          {
            v64 = v134.__r_.__value_.__r.__words[0];
          }

          if (v56)
          {
            if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v65 = &v129;
            }

            else
            {
              v65 = v129.__r_.__value_.__r.__words[0];
            }

            memmove(v64, v65, v56);
          }

          *(&v64->__r_.__value_.__l.__data_ + v56) = 5259565;
        }

        if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v129.__r_.__value_.__l.__data_);
        }

        v129 = v134;
        v69 = &v129;
        if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v69 = v134.__r_.__value_.__r.__words[0];
        }

        sub_100005D28("Received %s crash log", v57, v58, v59, v60, v61, v62, v63, v69);
        memset(&__str, 0, sizeof(__str));
        v72 = *(a1 + 47);
        if (v72 < 0)
        {
          if (*(a1 + 32) != 12)
          {
            goto LABEL_62;
          }

          v73 = *(a1 + 24);
        }

        else
        {
          v73 = a1 + 24;
          if (v72 != 12)
          {
LABEL_62:
            v77 = 0;
            goto LABEL_63;
          }
        }

        v74 = *v73;
        v75 = *(v73 + 8);
        v77 = v74 == 0x72656E6547205746 && v75 == 1684370529;
LABEL_63:
        if (BYTE4(v126[1]))
        {
          v78 = 0;
        }

        else
        {
          v78 = v77;
        }

        sub_100468F7C(a1, v125[0], *v133, v14, &__str, v78, v70, v71, v107);
        if (*(a1 + 128) == 1)
        {
          std::operator+<char>();
          v86 = std::string::append(&v120, "-");
          v87 = *&v86->__r_.__value_.__l.__data_;
          v121.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
          *&v121.__r_.__value_.__l.__data_ = v87;
          v86->__r_.__value_.__l.__size_ = 0;
          v86->__r_.__value_.__r.__words[2] = 0;
          v86->__r_.__value_.__r.__words[0] = 0;
          *v116 = v20 + 1;
          std::to_string(&v119, v20);
          if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v88 = &v119;
          }

          else
          {
            v88 = v119.__r_.__value_.__r.__words[0];
          }

          if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v89 = HIBYTE(v119.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v89 = v119.__r_.__value_.__l.__size_;
          }

          v90 = std::string::append(&v121, v88, v89);
          v91 = *&v90->__r_.__value_.__l.__data_;
          v134.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
          *&v134.__r_.__value_.__l.__data_ = v91;
          v90->__r_.__value_.__l.__size_ = 0;
          v90->__r_.__value_.__r.__words[2] = 0;
          v90->__r_.__value_.__r.__words[0] = 0;
          v92 = std::string::append(&v134, ".bin");
          v93 = *&v92->__r_.__value_.__l.__data_;
          v123 = v92->__r_.__value_.__r.__words[2];
          *__p = v93;
          v92->__r_.__value_.__l.__size_ = 0;
          v92->__r_.__value_.__r.__words[2] = 0;
          v92->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v134.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v119.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v121.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v120.__r_.__value_.__l.__data_);
          }

          sub_100175684(a2, __p, &v121);
          sub_100469D74(&v134, &v121);
          if (v135)
          {
            p_str = &__str;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            v120.__r_.__value_.__r.__words[0] = p_str;
            v117[0] = 0;
            v118 = 0;
            sub_10046D694(v117, &v120.__r_.__value_.__l.__data_);
          }

          v102 = &v121;
          if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v102 = v121.__r_.__value_.__r.__words[0];
          }

          sub_100428B48("Error trying to open file: %s", v94, v95, v96, v97, v98, v99, v100, v102);
          *a7 = 1;
          v134.__r_.__value_.__r.__words[0] = v114;
          *(v134.__r_.__value_.__r.__words + *(v114 - 24)) = v113;
          std::filebuf::~filebuf();
          std::ostream::~ostream();
          std::ios::~ios();
          if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v121.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v123) < 0)
          {
            operator delete(__p[0]);
          }

          ++v20;
          if (a3)
          {
LABEL_94:
            if (v126[0] == *v19)
            {
              *v112 = 1;
              if (LODWORD(v126[1]) != *(v19 + 8))
              {
                sub_100428B48("Size of the dequeued crash log does not match the size in descriptor", v21, v22, v23, v10, v11, v12, v13, v106);
                *a6 = 1;
              }

              if (BYTE5(v126[1]) != *(v19 + 13))
              {
                sub_100428B48("core type of the dequeued crash log does not match the core type in descriptor", v21, v22, v23, v10, v11, v12, v13, v106);
                *a6 = 1;
              }

              if (BYTE6(v126[1]) != *(v19 + 14))
              {
                sub_100428B48("log type of the dequeued crash log does not match the log type in descriptor", v21, v22, v23, v10, v11, v12, v13, v106);
                *a6 = 1;
              }

              if (BYTE4(v126[1]) == *(v19 + 12))
              {
                v36 = 0;
              }

              else
              {
                sub_100428B48("is_corrupted flag of the dequeued crash log does not match the flag in descriptor", v21, v22, v23, v10, v11, v12, v13, v106);
                v36 = 0;
                *a6 = 1;
              }

              goto LABEL_104;
            }
          }
        }

        else
        {
          sub_100005D28("Crash log saving is disabled", v79, v80, v81, v82, v83, v84, v85, v108);
          if (a3)
          {
            goto LABEL_94;
          }
        }

        v36 = 1;
LABEL_104:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_106;
      }

      sub_100428B48("DequeueCrashLog for core: %d failed. Buffer Size: %zu, received Size: %zu", v28, v29, v30, v31, v32, v33, v34, v14);
      v36 = 0;
      *a6 = 1;
LABEL_106:
      if (v125[0])
      {
        v125[1] = v125[0];
        operator delete(v125[0]);
      }

      if ((v36 & 1) == 0)
      {
        break;
      }
    }

    v17 = 0;
    v15 = &v130;
    v16 = &v127;
    v14 = 1;
  }

  while ((v18 & 1) != 0);
  if (a3)
  {
    if (*(a3 + 8) && (v128 & 1) == 0)
    {
      sub_100428B48("No AP crashlog available with ID that matches the descriptor", v21, v22, v23, v10, v11, v12, v13, v106);
      *a6 = 1;
    }

    if (*(a3 + 38) && (v127 & 1) == 0)
    {
      sub_100428B48("No DSP crashlog available with ID that matches the descriptor", v21, v22, v23, v10, v11, v12, v13, v106);
      *a6 = 1;
    }
  }

  if (v110)
  {
    v103 = 2;
  }

  else
  {
    v103 = v131 > 1 || v130 > 1;
  }

  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
  }

  return v103;
}

void sub_100469BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100469CE0(uint64_t a1, uint64_t a2, unint64_t *a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = 0;
  v10 = sub_100429FF0(*(a1 + 48), a2, 0, 0, 0, &v20, a7, a8);
  if (v10)
  {
    v18 = v20 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    if (v10)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (v20 > 0x200000)
  {
    sub_100428B48("Unexpectedly large crashlog of size:%zu is available", v11, v12, v13, v14, v15, v16, v17, v20);
LABEL_10:
    result = 0;
    *a4 = 1;
    return result;
  }

  *a3 = v20;
  return 1;
}

void (__cdecl ***sub_100469D74(void (__cdecl ***a1)(std::ofstream *__hidden this), uint64_t *a2))(std::ofstream *__hidden this)
{
  a1[58] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 1);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_100469F08(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100469F40(uint64_t a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_10046D550(a1, &v9);
    v7 = std::string::insert(&v9, 0, "cannot use operator[] with ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(exception, &__p);
  }

  v3 = *(a1 + 8);
  sub_100004A08(&__p, __s);
  v9.__r_.__value_.__r.__words[0] = &__p;
  v4 = sub_10046D580(v3, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4 + 56;
}

void sub_10046A0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
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

uint64_t sub_10046A120(uint64_t a1, uint64_t a2)
{
  sub_10046CCF0(a2);
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  sub_10046CCF0(a1);
  return a1;
}

void *sub_10046A17C(void *a1)
{
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_10046A248(uint64_t a1, void *a2)
{
  v3 = -51 * ((a2[1] - *a2) >> 2);
  v34 = xmmword_100573DC0;
  v4 = v3;
  v5 = v3;
  v6 = v3 << 6;
  v7 = 56 * v3;
  v35 = v3 + 1;
  v36 = v7 + 84;
  v37 = 0;
  v33 = 0x5400000004;
  v32 = 0x1100000001;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  sub_10046D78C(&__p, v3);
  v15 = __p;
  if (v26 - __p >= 1)
  {
    v16 = (v26 - __p) / 0x38uLL + 1;
    do
    {
      v15[6] = 0;
      *(v15 + 1) = 0uLL;
      *(v15 + 2) = 0uLL;
      *v15 = 0uLL;
      v15 += 7;
      --v16;
    }

    while (v16 > 1);
  }

  sub_100005D28("Number of coredump sections available for AP is: %d", v8, v9, v10, v11, v12, v13, v14, v4);
  if (v4)
  {
    v17 = 0;
    v18 = 0;
    v19 = v7 + 112;
    v20 = __p;
    do
    {
      v21 = &v20[v18];
      *v21 = 0x3800000001;
      v21[8] = 95;
      *(__p + v18 + 9) = 95;
      *(__p + v18 + 10) = 84;
      *(__p + v18 + 11) = 69;
      *(__p + v18 + 12) = 88;
      *(__p + v18 + 13) = 84;
      v22 = *a2 + v17;
      v23 = *v22;
      v20 = __p;
      v24 = __p + v18;
      LODWORD(v22) = *(v22 + 16);
      v24[6] = v23;
      v24[7] = v22;
      v24[8] = v19;
      v24[9] = v22;
      v19 += v22;
      v18 += 56;
      v17 += 20;
    }

    while (v6 - 8 * v5 != v18);
  }

  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }
}

void sub_10046A460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046A480(uint64_t a1, void *a2)
{
  v3 = (a2[1] - *a2) >> 2;
  v47 = 0;
  v44 = xmmword_100573DD0;
  v4 = (-51 * v3);
  v45 = v4 + 1;
  v46 = (72 * v4 + 288);
  v43 = 0x12000000004;
  v42 = 0x4400000001;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  sub_10046D8DC(&__p, v4);
  v12 = __p;
  if (v24 - __p >= 1)
  {
    v13 = (v24 - __p) / 0x48uLL + 1;
    do
    {
      v12[8] = 0;
      *(v12 + 2) = 0uLL;
      *(v12 + 3) = 0uLL;
      *v12 = 0uLL;
      *(v12 + 1) = 0uLL;
      v12 += 9;
      --v13;
    }

    while (v13 > 1);
  }

  sub_100005D28("Number of coredump sections available for DSP is: %d", v5, v6, v7, v8, v9, v10, v11, v4);
  if (v4)
  {
    v14 = 0;
    v15 = 0;
    v16 = 72 * v4 + 320;
    v17 = __p;
    do
    {
      v18 = &v17[v15];
      *v18 = 0x4800000019;
      v18[8] = 95;
      *(__p + v15 + 9) = 95;
      *(__p + v15 + 10) = 84;
      *(__p + v15 + 11) = 69;
      *(__p + v15 + 12) = 88;
      *(__p + v15 + 13) = 84;
      v19 = (*a2 + v14);
      v20 = *v19;
      v17 = __p;
      v21 = __p + v15;
      v22 = *(v19 + 4);
      v21[3] = v20;
      v21[4] = v22;
      v21[5] = v16;
      v21[6] = v22;
      v16 += v22;
      v15 += 72;
      v14 += 20;
    }

    while (72 * v4 != v15);
  }

  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }
}

void sub_10046A6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10046A6E4(uint64_t a1, const void **a2, void *a3, uint64_t a4, _BYTE *a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 128) & 1) == 0)
  {
    sub_100005D28("Core dump saving is disabled", a2, a3, a4, a5, a6, a7, a8, v77);
    v18 = 1;
    return v18 & 1;
  }

  v92.__r_.__value_.__s.__data_[0] = 0;
  sub_100025100(v91, 4096);
  sub_100004A08(&v90, "");
  v16 = 0;
  v17 = 1;
  v18 = 1;
  while (1)
  {
    v19 = v17;
    *(v89 + 7) = 0;
    v89[0] = 0;
    if (!sub_10042A08C(*(a1 + 48), v16, v89, v11, v12, v13, v14, v15))
    {
      v27 = v16;
      v75 = "Unable to get the coredump info for core: %d";
LABEL_75:
      sub_100428B48(v75, v20, v21, v22, v23, v24, v25, v26, v27);
      goto LABEL_76;
    }

    v27 = LODWORD(v89[1]);
    if (LODWORD(v89[1]))
    {
      break;
    }

    sub_100005D28("No coredumps to read for core: %d", v20, v21, v22, v23, v24, v25, v26, v16);
    v17 = 0;
    v16 = 1;
    if ((v19 & 1) == 0)
    {
      goto LABEL_77;
    }
  }

  if (LODWORD(v89[1]) > 0x200000)
  {
    v75 = "Coredump size is unexpectedly large: %d";
    goto LABEL_75;
  }

  if (v16 != BYTE5(v89[1]))
  {
    sub_100428B48("Descriptor core: %d doesn't match the requested core: %d", v20, v21, v22, v23, v24, v25, v26, BYTE5(v89[1]));
LABEL_76:
    v18 = 0;
    *a5 = 1;
    goto LABEL_77;
  }

  v27 = BYTE6(v89[1]);
  if (BYTE6(v89[1]) != 1)
  {
    v75 = "Invalid log type: %d in the coredump descriptor";
    goto LABEL_75;
  }

  if (v19)
  {
    v28 = "AP";
  }

  else
  {
    v28 = "DSP";
  }

  std::string::assign(&v90, v28);
  if (BYTE4(v89[1]))
  {
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v90.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v90.__r_.__value_.__l.__size_;
    }

    sub_100175C6C(&v92, size + 10);
    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v92;
    }

    else
    {
      v37 = v92.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = &v90;
      }

      else
      {
        v38 = v90.__r_.__value_.__r.__words[0];
      }

      memmove(v37, v38, size);
    }

    strcpy(v37 + size, "-Corrupted");
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    v90 = v92;
  }

  if (*(*a3 + 24 * v16) == *(*a3 + 24 * v16 + 8))
  {
    sub_100428B48("No coredump regions available for core %d. Saving the raw coredump.", v29, v30, v31, v32, v33, v34, v35, v16);
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = v90.__r_.__value_.__l.__size_;
    }

    sub_100175C6C(&v92, v39 + 4);
    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &v92;
    }

    else
    {
      v40 = v92.__r_.__value_.__r.__words[0];
    }

    if (v39)
    {
      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v90;
      }

      else
      {
        v41 = v90.__r_.__value_.__r.__words[0];
      }

      memmove(v40, v41, v39);
    }

    strcpy(v40 + v39, "-Raw");
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    v90 = v92;
    *a5 = 1;
  }

  v42 = &v90;
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v42 = v90.__r_.__value_.__r.__words[0];
  }

  sub_100005D28("Received %s coredump", v29, v30, v31, v32, v33, v34, v35, v42);
  std::operator+<char>();
  v43 = std::string::append(&v92, ".bin");
  v44 = *&v43->__r_.__value_.__l.__data_;
  v88 = v43->__r_.__value_.__r.__words[2];
  *v87 = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  sub_100175684(a2, v87, __p);
  sub_100469D74(&v92, __p);
  if (v86 >= 0)
  {
    v52 = __p;
  }

  else
  {
    v52 = __p[0];
  }

  if (v93)
  {
    if (chmod(v52, 0x1B0u))
    {
      v60 = v86;
      v61 = __p[0];
      v62 = __error();
      v70 = __p;
      if (v60 < 0)
      {
        v70 = v61;
      }

      v78 = *v62;
      sub_100428B48("Unable to chmod file '%s': %d", v63, v64, v65, v66, v67, v68, v69, v70);
      *a6 = 1;
    }

    v71 = v87;
    if (v88 < 0)
    {
      v71 = v87[0];
    }

    sub_100005D28("Writing coredump to %s", v53, v54, v55, v56, v57, v58, v59, v71);
    v73 = *a3;
    if (v19)
    {
      if (*v73 != v73[1])
      {
        sub_10046A248(v72, v73);
      }
    }

    else
    {
      v74 = &v73[3 * v16];
      if (*v74 != v74[1])
      {
        sub_10046A480(v72, v74);
      }
    }

    v83[0] = 0;
    v84 = 0;
    sub_10046DA2C(v83, "");
  }

  sub_100428B48("Error trying to open file: %s", v45, v46, v47, v48, v49, v50, v51, v52);
  *a6 = 1;
  v92.__r_.__value_.__r.__words[0] = v80;
  *(v92.__r_.__value_.__r.__words + *(v80 - 24)) = v79;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  if (v86 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v88) < 0)
  {
    operator delete(v87[0]);
  }

  v18 = 0;
LABEL_77:
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (v91[0])
  {
    v91[1] = v91[0];
    operator delete(v91[0]);
  }

  return v18 & 1;
}

void sub_10046AD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a42)
  {
    operator delete(a42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10046AE08(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 129))
  {
    v49 = 0;
    sub_100004A08(v47, "RoseFirmwareLogs.bin");
    sub_100175684(a2, v47, v45);
    sub_100469D74(v50, v45);
    v43 = 0;
    sub_100025100(__p, 4096);
    if (v46 >= 0)
    {
      v17 = v45;
    }

    else
    {
      v17 = v45[0];
    }

    if (v50[16])
    {
      if (chmod(v17, 0x1B0u))
      {
        v25 = v46;
        v26 = v45[0];
        v27 = __error();
        v35 = v45;
        if (v25 < 0)
        {
          v35 = v26;
        }

        v40 = *v27;
        sub_100428B48("Unable to chmod file '%s': %d", v28, v29, v30, v31, v32, v33, v34, v35);
        *a5 = 1;
      }

      v36 = v47;
      if (v48 < 0)
      {
        v36 = v47[0];
      }

      sub_100005D28("Writing firmware logs to %s", v18, v19, v20, v21, v22, v23, v24, v36);
      v41[0] = 0;
      v42 = 0;
      sub_10046DA2C(v41, "");
    }

    sub_100428B48("Error trying to open file: %s", v10, v11, v12, v13, v14, v15, v16, v17);
    v37 = 0;
    *a5 = 1;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    std::filebuf::~filebuf();
    std::ostream::~ostream();
    std::ios::~ios();
    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    if (v48 < 0)
    {
      operator delete(v47[0]);
    }
  }

  else
  {
    sub_100005D28("Firmware logs are disabled", a2, a3, a4, a5, a6, a7, a8, v39);
    return 1;
  }

  return v37;
}

void sub_10046B168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31)
{
  sub_10046CC60(&a12);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  sub_10046A17C(&a31);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10046B1E0(uint64_t a1, uint64_t a2, std::string::size_type a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  if (*(a3 + 23) < 0)
  {
    if (!*(a3 + 8))
    {
LABEL_9:
      sub_100428B48("reason can't be empty", a2, a3, a4, a5, a6, a7, a8, v56);
      return 4;
    }

    v11 = *a3;
  }

  else
  {
    v11 = a3;
    if (!*(a3 + 23))
    {
      goto LABEL_9;
    }
  }

  sub_100005D28("Request to dump logs for reason: %s", a2, a3, a4, a5, a6, a7, a8, v11);
  os_unfair_lock_lock((a1 + 8));
  if ((*a1 & 1) == 0)
  {
    os_unfair_lock_unlock((a1 + 8));
    return 5;
  }

  v19 = *(a1 + 4);
  if (v19 != 1)
  {
    if (v9 && v19 == 2)
    {
      os_unfair_lock_unlock((a1 + 8));
      return 2;
    }

    v22 = v9 == 0;
    if (!v9 && v19 == 2)
    {
      sub_100005D28("Promoting crashlog trigger from NonFatal to Fatal. Cancel the existing timer.", v12, v13, v14, v15, v16, v17, v18, v57);
      sub_100005D28("RoseDebugManager: Suspending the crashlog timer", v23, v24, v25, v26, v27, v28, v29, v58);
      dispatch_suspend(*(a1 + 16));
      v30 = 1;
      *(a1 + 1) = 1;
      std::string::operator=((a1 + 24), a3);
      v22 = 1;
LABEL_30:
      sub_100466C24(a1, v30);
      if (!sub_10042A4C0(*(a1 + 48), v22, v36, v37, v38, v39, v40, v41))
      {
        sub_100428B48("Triggering crashlog failed", v42, v43, v44, v45, v46, v47, v48, v57);
        sub_100004A08(&v59, "Triggering crashlog failed");
        sub_100467238(a1, a3, 0);
        if (v60 < 0)
        {
          operator delete(v59);
        }

        sub_100466C24(a1, 0);
        v20 = 1;
        goto LABEL_36;
      }

      sub_100005D28("Successfully triggered a crashlog. Start timer.", v42, v43, v44, v45, v46, v47, v48, v57);
      sub_100468CDC(a1, v49, v50, v51, v52, v53, v54, v55);
LABEL_32:
      v20 = 0;
LABEL_36:
      os_unfair_lock_unlock((a1 + 8));
      return v20;
    }

    if (v9 == 2)
    {
      if ((sub_100469CE0(a1, 0, &v64, &v63, v15, v16, v17, v18) & 1) == 0 && !sub_100469CE0(a1, 1, &v64, &v63, v32, v33, v34, v35))
      {
        goto LABEL_32;
      }

      sub_100004A08(&__p, "");
      sub_100467238(a1, a3, 0);
      if ((v62 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      v31 = __p;
    }

    else
    {
      if (v9 != 3)
      {
        std::string::operator=((a1 + 24), a3);
        if (v9)
        {
          v30 = 2;
        }

        else
        {
          v30 = 1;
        }

        goto LABEL_30;
      }

      sub_100004A08(&v65, "");
      sub_100467238(a1, a3, 0);
      if ((v66 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      v31 = v65;
    }

    operator delete(v31);
    goto LABEL_32;
  }

  os_unfair_lock_unlock((a1 + 8));
  return 3;
}

void sub_10046B45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uintmax_t sub_10046B4A0(std::string *a1)
{
  sub_1001B9424(&v8.__pn_, a1);
  std::__fs::filesystem::__status(&v8, 0);
  if (SHIBYTE(v8.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__pn_.__r_.__value_.__l.__data_);
  }

  if (__p.__pn_.__r_.__value_.__s.__data_[0] == 2)
  {
    sub_1001B9424(&__p.__pn_, a1);
    std::__fs::filesystem::recursive_directory_iterator::recursive_directory_iterator(&v8, &__p, skip_permission_denied, 0);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    v2 = *&v8.__pn_.__r_.__value_.__l.__data_;
    if (v8.__pn_.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v8.__pn_.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      size = v8.__pn_.__r_.__value_.__l.__size_;
      *&__p.__pn_.__r_.__value_.__l.__data_ = v2;
      __p.__pn_.__r_.__value_.__s.__data_[16] = v8.__pn_.__r_.__value_.__s.__data_[16];
      if (v8.__pn_.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v8.__pn_.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        sub_10000AD84(size);
      }
    }

    else
    {
      *&__p.__pn_.__r_.__value_.__l.__data_ = v8.__pn_.__r_.__value_.__r.__words[0];
      __p.__pn_.__r_.__value_.__s.__data_[16] = v8.__pn_.__r_.__value_.__s.__data_[16];
    }

    v4 = 0;
    while (__p.__pn_.__r_.__value_.__r.__words[0])
    {
      v5 = std::__fs::filesystem::recursive_directory_iterator::__dereference(&__p);
      std::__fs::filesystem::__status(&v5->__p_, 0);
      if (v9 != 2)
      {
        v4 += std::__fs::filesystem::__file_size(&v5->__p_, 0);
      }

      std::__fs::filesystem::recursive_directory_iterator::__increment(&__p, 0);
    }

    if (__p.__pn_.__r_.__value_.__l.__size_)
    {
      sub_10000AD84(__p.__pn_.__r_.__value_.__l.__size_);
    }

    if (v8.__pn_.__r_.__value_.__l.__size_)
    {
      sub_10000AD84(v8.__pn_.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    sub_1001B9424(&v8.__pn_, a1);
    v4 = std::__fs::filesystem::__file_size(&v8, 0);
    if (SHIBYTE(v8.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__pn_.__r_.__value_.__l.__data_);
    }
  }

  return v4;
}

void sub_10046B620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10046B678(std::string *a1)
{
  __ec.__val_ = 0;
  __ec.__cat_ = std::system_category();
  v2 = sub_10046B4A0(a1);
  if ((v2 + 0x200000) >> 26)
  {
    v11 = v2;
    v76[0] = off_1009AC990;
    v76[3] = v76;
    v73 = 0;
    v74 = 0;
    sub_10046DC74(v75, v76);
    v72 = &v73;
    sub_1001B9424(&__dst.__pn_, a1);
    std::__fs::filesystem::directory_iterator::directory_iterator(&v70, &__dst, 0, none);
    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }

    ptr = v70.__imp_.__ptr_;
    cntrl = v70.__imp_.__cntrl_;
    if (v70.__imp_.__cntrl_)
    {
      atomic_fetch_add_explicit(&v70.__imp_.__cntrl_->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = v70.__imp_.__cntrl_;
      v69.__imp_.__ptr_ = ptr;
      v69.__imp_.__cntrl_ = cntrl;
      if (v70.__imp_.__cntrl_)
      {
        atomic_fetch_add_explicit(&v70.__imp_.__cntrl_->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_10000AD84(v21);
      }
    }

    else
    {
      v69.__imp_.__ptr_ = v70.__imp_.__ptr_;
      v69.__imp_.__cntrl_ = 0;
    }

    while (v69.__imp_.__ptr_)
    {
      v22 = std::__fs::filesystem::directory_iterator::__dereference(&v69);
      v23.__d_.__rep_ = std::__fs::filesystem::__last_write_time(&v22->__p_, &__ec).__d_.__rep_;
      if (__ec.__val_)
      {
        std::error_code::message(&__dst.__pn_, &__ec);
        if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__pn_.__r_.__value_.__r.__words[0];
        }

        if ((v22->__p_.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v54 = v22->__p_.__pn_.__r_.__value_.__r.__words[0];
        }

        sub_100428B48("Error: %s while getting the last write time of %s", v46, v47, v48, v49, v50, v51, v52, p_dst);
        if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
        }

        if (v69.__imp_.__cntrl_)
        {
          sub_10000AD84(v69.__imp_.__cntrl_);
        }

        if (v70.__imp_.__cntrl_)
        {
          sub_10000AD84(v70.__imp_.__cntrl_);
        }

        goto LABEL_57;
      }

      if (SHIBYTE(v22->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_1000056BC(&__dst, v22->__p_.__pn_.__r_.__value_.__l.__data_, v22->__p_.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = v22->__p_;
      }

      rep = v23.__d_.__rep_;
      sub_10046DD0C(&v72, &__dst);
      if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
      }

      std::__fs::filesystem::directory_iterator::__increment(&v69, 0);
    }

    if (v69.__imp_.__cntrl_)
    {
      sub_10000AD84(v69.__imp_.__cntrl_);
    }

    if (v70.__imp_.__cntrl_)
    {
      sub_10000AD84(v70.__imp_.__cntrl_);
    }

    if (v74)
    {
      v24 = v72;
      if (v72 == &v73)
      {
LABEL_37:
        v10 = 1;
        goto LABEL_58;
      }

      while (1)
      {
        v25 = (v24 + 4);
        v33 = sub_10046B4A0((v24 + 4));
        v34 = (v24 + 4);
        if (*(v24 + 55) < 0)
        {
          v34 = *v25;
        }

        sub_100005D28("removing directory: %s of size: %ju", v26, v27, v28, v29, v30, v31, v32, v34);
        sub_1001B9424(&__dst.__pn_, (v24 + 4));
        std::__fs::filesystem::__remove_all(&__dst, &__ec);
        if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
        }

        if (__ec.__val_)
        {
          break;
        }

        v42 = v11 >= v33;
        v11 -= v33;
        if (!v42)
        {
          sub_100428B48("Error while deleting the oldest directory", v35, v36, v37, v38, v39, v40, v41, v66);
          goto LABEL_57;
        }

        if (v11 - 65011712 <= 0xFFFFFFFFFBFFFFFFLL)
        {
          v43 = v24[1];
          if (v43)
          {
            do
            {
              v44 = v43;
              v43 = *v43;
            }

            while (v43);
          }

          else
          {
            do
            {
              v44 = v24[2];
              v45 = *v44 == v24;
              v24 = v44;
            }

            while (!v45);
          }

          v24 = v44;
          if (v44 != &v73)
          {
            continue;
          }
        }

        goto LABEL_37;
      }

      std::error_code::message(&__dst.__pn_, &__ec);
      if ((__dst.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = &__dst;
      }

      else
      {
        v62 = __dst.__pn_.__r_.__value_.__r.__words[0];
      }

      if (*(v24 + 55) < 0)
      {
        v63 = *v25;
      }

      sub_100428B48("Error: %s while deleting the directory: %s", v55, v56, v57, v58, v59, v60, v61, v62);
      if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      sub_100428B48("Unable to iterate through the directory", v12, v13, v14, v15, v16, v17, v18, v65);
    }

LABEL_57:
    v10 = 0;
LABEL_58:
    sub_1001B93C0(&v72, v73);
    sub_10046DBF4(v75);
    sub_10046DBF4(v76);
  }

  else
  {
    sub_100005D28("Rose logging directory usage is below the maximum threshold", v3, v4, v5, v6, v7, v8, v9, v65);
    return 1;
  }

  return v10;
}

void sub_10046BA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_10046BAF8(&a26);
  sub_10046DBF4(v26 - 120);
  _Unwind_Resume(a1);
}

uint64_t sub_10046BAF8(uint64_t a1)
{
  sub_1001B93C0(a1, *(a1 + 8));
  sub_10046DBF4(a1 + 24);
  return a1;
}

unsigned __int8 *sub_10046BB2C(unsigned __int8 *a1)
{
  *a1 = 0;
  sub_10046CCF0(a1);
  sub_10046CCF0(a1);
  return a1;
}

uint64_t sub_10046BB64(unsigned __int8 *a1, int a2)
{
  sub_100193120(v6);
  sub_10046BDA8(a1, &v7, a2 >= 0, a2 & ~(a2 >> 31), 0);
  std::stringbuf::str();
  v7 = v4;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10046BD04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100193C68(va);
  _Unwind_Resume(a1);
}

std::runtime_error *sub_10046BD2C(std::runtime_error *a1, uint64_t a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result[1] = *(a2 + 16);
  v4 = *(a2 + 40);
  result[2].__vftable = *(a2 + 32);
  result[2].__imp_.__imp_ = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10046BDA8(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  if (v7 > 3)
  {
    if (*a1 > 5u)
    {
      if (v7 == 6)
      {
        v52 = *(a1 + 1);
        *__b = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        sub_10046C988(__b, v52);
        v53 = strlen(__b);
        sub_10000EA44(a2, __b, v53);
        return;
      }

      if (v7 == 7)
      {
        v54 = *(a1 + 1);
        *__b = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        sub_10046CA18(__b, v54);
        v55 = strlen(__b);
        sub_10000EA44(a2, __b, v55);
        return;
      }

      if (v7 != 8)
      {
        return;
      }

      v8 = "<discarded>";
      v9 = a2;
      v10 = 11;
      goto LABEL_123;
    }

    if (v7 != 4)
    {
      if (v7 == 5)
      {
        v41 = *(a1 + 1);
        *__b = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        sub_10046C8B8(__b, v41);
        v42 = strlen(__b);
        sub_10000EA44(a2, __b, v42);
      }

      return;
    }

    if (a1[8])
    {
      v8 = "true";
    }

    else
    {
      v8 = "false";
    }

    if (a1[8])
    {
      v10 = 4;
    }

    else
    {
      v10 = 5;
    }

    v9 = a2;
LABEL_123:

    sub_10000EA44(v9, v8, v10);
    return;
  }

  if (*a1 > 1u)
  {
    if (v7 == 2)
    {
      if (**(a1 + 1) == *(*(a1 + 1) + 8))
      {
        v8 = "[]";
        goto LABEL_122;
      }

      sub_10000EA44(a2, "[", 1);
      if (a3)
      {
        a5 = (a5 + a4);
        sub_10000EA44(a2, "\n", 1);
      }

      v43 = *(a1 + 1);
      v44 = *v43;
      if (*v43 != v43[1])
      {
        if (a3)
        {
          v45 = ",\n";
        }

        else
        {
          v45 = ",";
        }

        if (a3)
        {
          v46 = 2;
        }

        else
        {
          v46 = 1;
        }

        do
        {
          if (v44 != *v43)
          {
            sub_10000EA44(a2, v45, v46);
          }

          sub_10046C508(__b, a5, 32);
          if ((SBYTE7(v60) & 0x80u) == 0)
          {
            v47 = __b;
          }

          else
          {
            v47 = __b[0];
          }

          if ((SBYTE7(v60) & 0x80u) == 0)
          {
            v48 = BYTE7(v60);
          }

          else
          {
            v48 = __b[1];
          }

          sub_10000EA44(a2, v47, v48);
          if (SBYTE7(v60) < 0)
          {
            operator delete(__b[0]);
          }

          sub_10046BDA8(v44, a2, a3, a4, a5);
          v44 += 16;
          v43 = *(a1 + 1);
        }

        while (v44 != v43[1]);
      }

      if (a3)
      {
        sub_10000EA44(a2, "\n", 1);
        LODWORD(a5) = a5 - a4;
      }

      sub_10046C508(__b, a5, 32);
      if ((SBYTE7(v60) & 0x80u) == 0)
      {
        v49 = __b;
      }

      else
      {
        v49 = __b[0];
      }

      if ((SBYTE7(v60) & 0x80u) == 0)
      {
        v50 = BYTE7(v60);
      }

      else
      {
        v50 = __b[1];
      }

      v51 = sub_10000EA44(a2, v49, v50);
      sub_10000EA44(v51, "]", 1);
    }

    else
    {
      if (v7 != 3)
      {
        return;
      }

      sub_100004A08(__b, "");
      if ((SBYTE7(v60) & 0x80u) == 0)
      {
        v35 = __b;
      }

      else
      {
        v35 = __b[0];
      }

      if ((SBYTE7(v60) & 0x80u) == 0)
      {
        v36 = BYTE7(v60);
      }

      else
      {
        v36 = __b[1];
      }

      v37 = sub_10000EA44(a2, v35, v36);
      sub_10046C5B8(*(a1 + 1), &__p);
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

      v40 = sub_10000EA44(v37, p_p, size);
      sub_10000EA44(v40, "", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if ((SBYTE7(v60) & 0x80000000) == 0)
    {
      return;
    }

    v34 = __b[0];
LABEL_109:
    operator delete(v34);
    return;
  }

  if (!*a1)
  {
    v8 = "null";
    v9 = a2;
    v10 = 4;
    goto LABEL_123;
  }

  if (!*(*(a1 + 1) + 16))
  {
    v8 = "{}";
LABEL_122:
    v9 = a2;
    v10 = 2;
    goto LABEL_123;
  }

  sub_10000EA44(a2, "{", 1);
  if (a3)
  {
    a5 = (a5 + a4);
    sub_10000EA44(a2, "\n", 1);
  }

  v14 = *(a1 + 1);
  v15 = *v14;
  if (*v14 != (v14 + 1))
  {
    if (a3)
    {
      v16 = ",\n";
    }

    else
    {
      v16 = ",";
    }

    v17 = 1;
    if (a3)
    {
      v17 = 2;
    }

    v56 = v17;
    v57 = v16;
    if (a3)
    {
      v18 = " ";
    }

    else
    {
      v18 = "";
    }

    do
    {
      if (v15 != *v14)
      {
        sub_10000EA44(a2, v57, v56);
      }

      sub_10046C508(__b, a5, 32);
      if ((SBYTE7(v60) & 0x80u) == 0)
      {
        v19 = __b;
      }

      else
      {
        v19 = __b[0];
      }

      if ((SBYTE7(v60) & 0x80u) == 0)
      {
        v20 = BYTE7(v60);
      }

      else
      {
        v20 = __b[1];
      }

      v21 = sub_10000EA44(a2, v19, v20);
      v22 = sub_10000EA44(v21, "", 1);
      sub_10046C5B8(v15 + 32, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &__p;
      }

      else
      {
        v23 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = __p.__r_.__value_.__l.__size_;
      }

      v25 = sub_10000EA44(v22, v23, v24);
      v26 = sub_10000EA44(v25, ":", 2);
      sub_10000EA44(v26, v18, a3);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v60) < 0)
      {
        operator delete(__b[0]);
      }

      sub_10046BDA8(v15 + 56, a2, a3, a4, a5);
      v27 = *(v15 + 1);
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = *(v15 + 2);
          v29 = *v28 == v15;
          v15 = v28;
        }

        while (!v29);
      }

      v14 = *(a1 + 1);
      v15 = v28;
    }

    while (v28 != v14 + 1);
  }

  if (a3)
  {
    sub_10000EA44(a2, "\n", 1);
    LODWORD(a5) = a5 - a4;
  }

  sub_10046C508(&__p, a5, 32);
  v30 = std::string::append(&__p, "}");
  v31 = *&v30->__r_.__value_.__l.__data_;
  *&v60 = *(&v30->__r_.__value_.__l + 2);
  *__b = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if ((SBYTE7(v60) & 0x80u) == 0)
  {
    v32 = __b;
  }

  else
  {
    v32 = __b[0];
  }

  if ((SBYTE7(v60) & 0x80u) == 0)
  {
    v33 = BYTE7(v60);
  }

  else
  {
    v33 = __b[1];
  }

  sub_10000EA44(a2, v32, v33);
  if (SBYTE7(v60) < 0)
  {
    operator delete(__b[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v34 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_109;
  }
}

void sub_10046C488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10046C508(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100013AEC();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

uint64_t sub_10046C5B8@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10046C81C(a1);
  v5 = a1[23];
  if (result)
  {
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a1 + 1);
    }

    result = sub_10046C508(a2, v5 + result, 92);
    v6 = a1[23];
    v7 = v6 < 0;
    if (v6 >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    if (v7)
    {
      v9 = *(a1 + 1);
    }

    else
    {
      v9 = a1[23];
    }

    if (v9)
    {
      v10 = 0;
      v11 = &v8[v9];
      result = 114;
      do
      {
        v12 = *v8;
        if (*v8 <= 0xBu)
        {
          switch(v12)
          {
            case 8:
              if (*(a2 + 23) >= 0)
              {
                v16 = a2;
              }

              else
              {
                v16 = *a2;
              }

              *(v16 + v10 + 1) = 98;
              break;
            case 9:
              if (*(a2 + 23) >= 0)
              {
                v20 = a2;
              }

              else
              {
                v20 = *a2;
              }

              *(v20 + v10 + 1) = 116;
              break;
            case 0xA:
              if (*(a2 + 23) >= 0)
              {
                v14 = a2;
              }

              else
              {
                v14 = *a2;
              }

              *(v14 + v10 + 1) = 110;
              break;
            default:
              goto LABEL_37;
          }
        }

        else if (*v8 > 0x21u)
        {
          if (v12 != 92)
          {
            if (v12 != 34)
            {
LABEL_37:
              if (v12 > 0x1F)
              {
                if (*(a2 + 23) >= 0)
                {
                  v21 = a2;
                }

                else
                {
                  v21 = *a2;
                }

                *(v21 + v10) = v12;
              }

              else
              {
                v17 = 0;
                qmemcpy(v24, "u00", sizeof(v24));
                v25 = byte_100573DE0[v12 >> 4];
                v26 = byte_100573DE0[v12 & 0xF];
                do
                {
                  if (*(a2 + 23) >= 0)
                  {
                    v18 = a2;
                  }

                  else
                  {
                    v18 = *a2;
                  }

                  *(v18 + v10 + v17 + 1) = v24[v17];
                  ++v17;
                }

                while (v17 != 5);
                v10 += 5;
              }

              ++v10;
              goto LABEL_53;
            }

            if (*(a2 + 23) >= 0)
            {
              v15 = a2;
            }

            else
            {
              v15 = *a2;
            }

            *(v15 + v10 + 1) = 34;
          }
        }

        else if (v12 == 12)
        {
          if (*(a2 + 23) >= 0)
          {
            v19 = a2;
          }

          else
          {
            v19 = *a2;
          }

          *(v19 + v10 + 1) = 102;
        }

        else
        {
          if (v12 != 13)
          {
            goto LABEL_37;
          }

          if (*(a2 + 23) >= 0)
          {
            v13 = a2;
          }

          else
          {
            v13 = *a2;
          }

          *(v13 + v10 + 1) = 114;
        }

        v10 += 2;
LABEL_53:
        ++v8;
      }

      while (v8 != v11);
    }
  }

  else if ((v5 & 0x80) != 0)
  {
    v22 = *a1;
    v23 = *(a1 + 1);

    return sub_1000056BC(a2, v22, v23);
  }

  else
  {
    *a2 = *a1;
    a2[2] = *(a1 + 2);
  }

  return result;
}

uint64_t sub_10046C81C(unsigned __int8 *a1)
{
  v1 = a1[23];
  v2 = *(a1 + 1);
  if ((v1 & 0x80u) != 0)
  {
    a1 = *a1;
    v1 = v2;
  }

  return sub_10046C858(a1, &a1[v1], 0);
}

uint64_t sub_10046C858(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  for (; a1 != a2; ++a1)
  {
    v4 = *a1;
    v5 = v4 > 0x22 || ((1 << v4) & 0x400003700) == 0;
    if (!v5 || v4 == 92)
    {
      ++a3;
    }

    else if (v4 < 0x20)
    {
      a3 += 5;
    }
  }

  return a3;
}

_BYTE *sub_10046C8B8(_BYTE *result, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = a2;
    do
    {
      if (v2 == 63)
      {
        sub_1004D07CC();
      }

      v4 = v3 % 10;
      if (v3 % 10 < 0)
      {
        LOBYTE(v4) = 10 * (v3 / 10) - v3;
      }

      v5 = v4 + 48;
      v6 = v2 + 1;
      result[v2] = v5;
      v7 = v3 + 9;
      v3 /= 10;
      ++v2;
    }

    while (v7 >= 0x13);
    if (a2 < 0)
    {
      if ((v6 - 1) >= 0x3D)
      {
        sub_1004D07A0();
      }

      result[v6++] = 45;
    }

    v8 = &result[v6 - 1];
    if (v8 > result)
    {
      v9 = result + 1;
      do
      {
        v10 = *(v9 - 1);
        *(v9 - 1) = *v8;
        *v8-- = v10;
      }

      while (v9++ < v8);
    }
  }

  else
  {
    *result = 48;
  }

  return result;
}

_BYTE *sub_10046C988(_BYTE *result, unint64_t a2)
{
  if (a2)
  {
    v2 = result - 1;
    v3 = 63;
    do
    {
      if (!v3)
      {
        sub_1004D07CC();
      }

      *++v2 = (a2 % 0xA) | 0x30;
      --v3;
      v4 = a2 >= 0xA;
      a2 /= 0xAuLL;
    }

    while (v4);
    if (v2 > result)
    {
      v5 = result + 1;
      do
      {
        v6 = *(v5 - 1);
        *(v5 - 1) = *v2;
        *v2-- = v6;
        v4 = v5++ >= v2;
      }

      while (!v4);
    }
  }

  else
  {
    *result = 48;
  }

  return result;
}

void sub_10046CA18(char *__str, double a2)
{
  if (a2 == 0.0)
  {
    if ((*&a2 & 0x8000000000000000) != 0)
    {
      *__str = 45;
      v3 = 1;
    }

    else
    {
      v3 = 0;
    }

    v9 = &__str[v3];
    *v9 = 11824;
    v9[2] = 48;
    return;
  }

  v4 = snprintf(__str, 0x40uLL, "%.*g", 15, a2);
  if (v4 <= 0)
  {
    sub_1004D08D4();
  }

  v5 = v4;
  if (v4 >= 0x40)
  {
    sub_1004D07F8();
  }

  v6 = localeconv();
  if (!v6)
  {
    sub_1004D08A8();
  }

  thousands_sep = v6->thousands_sep;
  if (thousands_sep)
  {
    LODWORD(thousands_sep) = *thousands_sep;
  }

  v16 = thousands_sep;
  if (!v6->decimal_point)
  {
    v8 = 0;
    if (!thousands_sep)
    {
      goto LABEL_18;
    }

LABEL_16:
    v10 = sub_10046CBF8(__str, &__str[v5], &v16);
    v11 = __str - v10 + 64;
    if (v11 >= 1)
    {
      bzero(v10, v11);
    }

    goto LABEL_18;
  }

  v8 = *v6->decimal_point;
  if (thousands_sep)
  {
    goto LABEL_16;
  }

LABEL_18:
  if (v8 && v8 != 46)
  {
    v12 = 0;
    while (v8 != __str[v12])
    {
      if (++v12 == 64)
      {
        goto LABEL_25;
      }
    }

    __str[v12] = 46;
  }

LABEL_25:
  v13 = *__str;
  if (*__str)
  {
    v14 = 0;
    LOBYTE(v15) = 1;
    while (1)
    {
      if ((v15 & 1) != 0 && ((v13 - 46) > 0x37 || ((1 << (v13 - 46)) & 0x80000000800001) == 0))
      {
        if (++v14 == 64)
        {
          goto LABEL_46;
        }

        v15 = 1;
      }

      else
      {
        if (++v14 == 64)
        {
          return;
        }

        v15 = 0;
      }

      v13 = __str[v14];
      if (!__str[v14])
      {
        goto LABEL_37;
      }
    }
  }

  v14 = 0;
  v15 = 1;
LABEL_37:
  if (v15)
  {
    if (v14 >= 0x3E)
    {
LABEL_46:
      sub_1004D0824();
    }

    if (!__str[v14 - 1])
    {
      sub_1004D087C();
    }

    *&__str[v14] = 12334;
    if (__str[v14 + 2])
    {
      sub_1004D0850();
    }
  }
}

unsigned __int8 *sub_10046CBF8(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = memchr(a1, *a3, a2 - a1);
  if (!result)
  {
    result = a2;
  }

  v6 = result + 1;
  if (result != a2 && v6 != a2)
  {
    do
    {
      v8 = *v6;
      if (v8 != *a3)
      {
        *result++ = v8;
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

unsigned __int8 *sub_10046CC60(unsigned __int8 *a1)
{
  sub_10046CCF0(a1);
  v2 = *a1;
  switch(v2)
  {
    case 3:
      v3 = *(a1 + 1);
      if ((v3[23] & 0x80000000) == 0)
      {
LABEL_9:
        operator delete(v3);
        return a1;
      }

      operator delete(*v3);
LABEL_8:
      v3 = *(a1 + 1);
      goto LABEL_9;
    case 2:
      v5 = *(a1 + 1);
      sub_10046CE00(&v5);
      goto LABEL_8;
    case 1:
      sub_10046CD44(*(a1 + 1), *(*(a1 + 1) + 8));
      goto LABEL_8;
  }

  return a1;
}

unsigned __int8 *sub_10046CCF0(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 == 3)
  {
    if (!*(result + 1))
    {
      sub_1004D0900();
    }
  }

  else if (v1 == 2)
  {
    if (!*(result + 1))
    {
      sub_1004D092C();
    }
  }

  else if (v1 == 1 && !*(result + 1))
  {
    sub_1004D0958();
  }

  return result;
}

void sub_10046CD44(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10046CD44(a1, *a2);
    sub_10046CD44(a1, *(a2 + 1));
    sub_10046CC60(a2 + 56);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_10046CDB0(uint64_t a1, uint64_t a2)
{
  sub_10046CC60((a2 + 24));
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_10046CE00(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10046CC60(v4 - 16);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10046CE84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10046CF1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10046CFB4(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_10046D034(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_10046D034(void *a1, uint64_t *a2, int *a3)
{
  result = *sub_10026D040(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10046D0B8();
  }

  return result;
}

void sub_10046D154(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10029F6D0(v3, v2);
  _Unwind_Resume(a1);
}

__n128 sub_10046D1EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009AC768;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10046D224(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

uint64_t sub_10046D250(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10046D318(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009AC828;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10046D350(void *a1, unsigned int *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

uint64_t sub_10046D37C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10046D444(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009AC8E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10046D47C(void *a1, unsigned int *a2, void *a3, void *a4)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = (a1[3] + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  return v5(v6, *a2, *a3, *a4);
}

uint64_t sub_10046D4B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10046D4FC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_100013B04();
}

_BYTE *sub_10046D550@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  if (v4 > 8)
  {
    v5 = "number";
  }

  else
  {
    v5 = off_1009ACA30[v4];
  }

  return sub_100004A08(a2, v5);
}

uint64_t sub_10046D580(uint64_t a1, const void **a2)
{
  v2 = *sub_10029FC14(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_10046D634(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_10046CDB0(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void sub_10046D694(_BYTE *a1, char **a2)
{
  sub_100004A08(&__p, *a2);
  *a1 = 3;
  sub_10046D710();
}

void sub_10046D6F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10046D78C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10046D830(result, a2);
  }

  return result;
}

void sub_10046D814(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046D830(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_10046D880(a1, a2);
  }

  sub_100019B38();
}

void sub_10046D880(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013B04();
}

void *sub_10046D8DC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10046D980(result, a2);
  }

  return result;
}

void sub_10046D964(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046D980(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_10046D9D0(a1, a2);
  }

  sub_100019B38();
}

void sub_10046D9D0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_10046DA2C(_BYTE *a1, char *a2)
{
  sub_100004A08(&__p, a2);
  *a1 = 3;
  sub_10046D710();
}

void sub_10046DA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10046DB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  v7 = *a3;
  v8 = *(a3 + 23);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v10 = *(a3 + 32);
  v9 = *(a3 + 40);
  if (v8 < 0)
  {
    operator delete(v7);
    if ((v4 & 0x80000000) == 0)
    {
      return __PAIR128__(v5, v6) < __PAIR128__(v9, v10);
    }

LABEL_5:
    operator delete(v3);
    return __PAIR128__(v5, v6) < __PAIR128__(v9, v10);
  }

  if (v4 < 0)
  {
    goto LABEL_5;
  }

  return __PAIR128__(v5, v6) < __PAIR128__(v9, v10);
}

uint64_t sub_10046DBA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10046DBF4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10046DC74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10046DD0C(uint64_t a1, uint64_t a2)
{
  result = *sub_10046DD8C(a1, &v3, a2);
  if (!result)
  {
    sub_10046E020();
  }

  return result;
}

uint64_t *sub_10046DD8C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v8 = v4;
        if (*(a3 + 23) < 0)
        {
          sub_1000056BC(__dst, *a3, *(a3 + 8));
        }

        else
        {
          *__dst = *a3;
          v24 = *(a3 + 16);
        }

        v25 = *(a3 + 32);
        if (*(v8 + 55) < 0)
        {
          sub_1000056BC(__p, v8[4], v8[5]);
        }

        else
        {
          *__p = *(v8 + 2);
          v21 = v8[6];
        }

        v22 = *(v8 + 4);
        v9 = *(a1 + 48);
        if (!v9)
        {
          sub_100037B10();
        }

        v10 = (*(*v9 + 48))(v9, __dst, __p);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        if ((SHIBYTE(v24) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(__dst[0]);
        if (v10)
        {
          goto LABEL_13;
        }

LABEL_16:
        if (*(v8 + 55) < 0)
        {
          sub_1000056BC(v17, v8[4], v8[5]);
        }

        else
        {
          *v17 = *(v8 + 2);
          v18 = v8[6];
        }

        v19 = *(v8 + 4);
        if (*(a3 + 23) < 0)
        {
          sub_1000056BC(v14, *a3, *(a3 + 8));
        }

        else
        {
          *v14 = *a3;
          v15 = *(a3 + 16);
        }

        v16 = *(a3 + 32);
        v11 = *(a1 + 48);
        if (!v11)
        {
          sub_100037B10();
        }

        v12 = (*(*v11 + 48))(v11, v17, v14);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }

        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (v12)
        {
          v5 = v8 + 1;
          v4 = v8[1];
          if (v4)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

      if (!v10)
      {
        goto LABEL_16;
      }

LABEL_13:
      v4 = *v8;
      v5 = v8;
      if (!*v8)
      {
        goto LABEL_31;
      }
    }
  }

  v8 = (a1 + 8);
LABEL_31:
  *a2 = v8;
  return v5;
}