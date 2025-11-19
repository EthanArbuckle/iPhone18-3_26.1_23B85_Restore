void sub_1001C71CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1001BEF1C(va);
  sub_1001C8488((v9 - 144));
  _Unwind_Resume(a1);
}

uint64_t sub_1001C723C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v69 = 0;
  v70 = 0;
  v71 = 0;
  *v66 = 0;
  memset(&v66[8], 0, 32);
  v67 = 0u;
  memset(v68, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_69:
    v50 = 0;
    v51 = v68[0];
    if (!v68[0])
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  *&v64 = a3;
  *(&v64 + 1) = a3;
  v65 = 0;
  *v61 = 0;
  memset(&v61[8], 0, 48);
  *__p = 0uLL;
  memset(v63, 0, 21);
  v70 = sub_1001BF094(&v69, v61);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v61[32])
  {
    *&v61[40] = *&v61[32];
    operator delete(*&v61[32]);
  }

  v13 = v70;
  *(v70 - 24) = 0;
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
    sub_1001BF3C0(v13 - 8, v15 - v16, &v64);
    v13 = v70;
  }

  v17 = *(v13 - 5);
  v18 = *(a1 + 32);
  v19 = (*(v13 - 4) - v17) >> 4;
  v58 = a4;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(v13 - 4) = v17 + 16 * v18;
    }
  }

  else
  {
    sub_1001BF58C(v13 - 40, v18 - v19);
    v13 = v70;
  }

  v20 = 0;
  v60 = 0;
  v21 = 0;
  *(v13 - 2) = v6;
  v59 = a3;
  v22 = a3 - a2;
  *(v13 - 2) = a5;
  *(v13 - 4) = a6;
  do
  {
    v23 = (++v21 & 0xFFF) != 0 || (v21 >> 12) < v22;
    if (!v23)
    {
      sub_1001BEF60();
    }

    v25 = v13 - 1;
    v24 = *(v13 - 2);
    v26 = v13 - 6;
    if (v24)
    {
      (*(*v24 + 16))(v24, v13 - 6);
    }

    v27 = *v26;
    if (*v26 <= -994)
    {
      if ((v27 + 995) < 2)
      {
        goto LABEL_16;
      }

      if (v27 != -1000)
      {
LABEL_84:
        sub_1001BEFB8();
      }

      v28 = *(v13 - 10);
      if ((a5 & 0x20) != 0 && v28 == a2 || (a5 & 0x1000) != 0 && v28 != v59)
      {
LABEL_34:
        v29 = v70;
        v30 = *(v70 - 5);
        if (v30)
        {
          *(v70 - 4) = v30;
          operator delete(v30);
        }

        v31 = *(v29 - 8);
        if (v31)
        {
          *(v29 - 7) = v31;
          operator delete(v31);
        }

        v70 = v29 - 6;
        goto LABEL_16;
      }

      v35 = v28 - *(v13 - 11);
      if ((v60 & (v20 >= v35)) == 0)
      {
        v36 = *v26;
        *&v66[16] = *(v13 - 5);
        *v66 = v36;
        if (v66 != v26)
        {
          sub_1001C8500(&v66[32], *(v13 - 8), *(v13 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - *(v13 - 8)) >> 3));
          sub_1001C8714(v68, *(v13 - 5), *(v13 - 4), (*(v13 - 4) - *(v13 - 5)) >> 4);
        }

        v37 = *v25;
        *(&v68[3] + 5) = *(v13 - 11);
        v68[3] = v37;
        v20 = v35;
      }

      v38 = v70;
      if (v20 == v22)
      {
        v39 = v69;
        while (v38 != v39)
        {
          v40 = *(v38 - 5);
          if (v40)
          {
            *(v38 - 4) = v40;
            operator delete(v40);
          }

          v41 = *(v38 - 8);
          if (v41)
          {
            *(v38 - 7) = v41;
            operator delete(v41);
          }

          v38 -= 6;
        }

        v70 = v39;
        v60 = 1;
        v20 = v22;
      }

      else
      {
        v42 = *(v70 - 5);
        if (v42)
        {
          *(v70 - 4) = v42;
          operator delete(v42);
        }

        v43 = *(v38 - 8);
        if (v43)
        {
          *(v38 - 7) = v43;
          operator delete(v43);
        }

        v70 = v38 - 6;
        v60 = 1;
      }
    }

    else
    {
      switch(v27)
      {
        case -993:
          goto LABEL_34;
        case -992:
          sub_1001BF6E0(v61, v13 - 6);
          (*(**v25 + 24))(*v25, 1, v13 - 6);
          (*(*v63[1] + 24))(v63[1], 0, v61);
          v32 = v70;
          if (v70 >= v71)
          {
            v70 = sub_1001BF094(&v69, v61);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            v33 = *&v61[16];
            *v70 = *v61;
            v32[1] = v33;
            *(v32 + 6) = 0;
            *(v32 + 7) = 0;
            *(v32 + 4) = 0;
            *(v32 + 5) = 0;
            v32[2] = *&v61[32];
            *(v32 + 6) = *&v61[48];
            *&v61[32] = 0;
            *&v61[40] = 0;
            *(v32 + 8) = 0;
            *(v32 + 9) = 0;
            *(v32 + 56) = *__p;
            *(v32 + 9) = v63[0];
            *&v61[48] = 0;
            __p[0] = 0;
            __p[1] = 0;
            v63[0] = 0;
            v34 = v63[1];
            *(v32 + 85) = *(&v63[1] + 5);
            *(v32 + 10) = v34;
            v70 = v32 + 6;
          }

          if (*&v61[32])
          {
            *&v61[40] = *&v61[32];
            operator delete(*&v61[32]);
          }

          break;
        case -991:
          break;
        default:
          goto LABEL_84;
      }
    }

LABEL_16:
    v13 = v70;
  }

  while (v69 != v70);
  if ((v60 & 1) == 0)
  {
    goto LABEL_69;
  }

  v44 = *v58;
  *v44 = a2;
  *(v44 + 8) = a2 + v20;
  *(v44 + 16) = 1;
  if (v67 != *&v66[32])
  {
    v45 = 0xAAAAAAAAAAAAAAABLL * ((v67 - *&v66[32]) >> 3);
    v46 = (*&v66[32] + 16);
    v47 = 1;
    do
    {
      v48 = v44 + 24 * v47;
      *v48 = *(v46 - 1);
      v49 = *v46;
      v46 += 24;
      *(v48 + 16) = v49;
      v23 = v45 > v47++;
    }

    while (v23);
  }

  v50 = 1;
  v51 = v68[0];
  if (v68[0])
  {
LABEL_70:
    v68[1] = v51;
    operator delete(v51);
  }

LABEL_71:
  if (*&v66[32])
  {
    *&v67 = *&v66[32];
    operator delete(*&v66[32]);
  }

  v52 = v69;
  if (v69)
  {
    v53 = v70;
    v54 = v69;
    if (v70 != v69)
    {
      do
      {
        v55 = *(v53 - 5);
        if (v55)
        {
          *(v53 - 4) = v55;
          operator delete(v55);
        }

        v56 = *(v53 - 8);
        if (v56)
        {
          *(v53 - 7) = v56;
          operator delete(v56);
        }

        v53 -= 6;
      }

      while (v53 != v52);
      v54 = v69;
    }

    v70 = v52;
    operator delete(v54);
  }

  return v50;
}

void sub_1001C77F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1001BEF1C(&a27);
  sub_1001BF010((v27 - 120));
  _Unwind_Resume(a1);
}

void sub_1001C7844(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v11 = v3 - v2;
    if (v11 < 3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v4 = a1[4];
  v5 = &v2[v4 / 0x2A];
  v6 = *v5 + 96 * (v4 % 0x2A);
  v7 = v2[(a1[5] + v4) / 0x2A] + 96 * ((a1[5] + v4) % 0x2A);
  if (v6 != v7)
  {
    do
    {
      v8 = *(v6 + 7);
      if (v8)
      {
        *(v6 + 8) = v8;
        operator delete(v8);
      }

      v9 = *(v6 + 4);
      if (v9)
      {
        *(v6 + 5) = v9;
        operator delete(v9);
      }

      v6 += 96;
      if (v6 - *v5 == 4032)
      {
        v10 = v5[1];
        ++v5;
        v6 = v10;
      }
    }

    while (v6 != v7);
    v2 = a1[1];
    v3 = a1[2];
  }

  a1[5] = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
LABEL_13:
      operator delete(*v2);
      v12 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = (v12 - v2) >> 3;
    }

    while (v11 > 2);
  }

LABEL_14:
  if (v11 == 1)
  {
    v13 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      return;
    }

    v13 = 42;
  }

  a1[4] = v13;
}

void *sub_1001C79A4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_1001C7D6C(a1, &v11);
}

void sub_1001C7D14(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1001C7D6C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_10000D444();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **sub_1001C7EF8(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10000D444();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

const void **sub_1001C8090(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x2A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  *(a1 + 32) = v5 + 42;
  v11 = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_1001C7EF8(a1, &v11);
}

void sub_1001C844C(_Unwind_Exception *a1)
{
  operator delete(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void **sub_1001C8488(void **a1)
{
  sub_1001C7844(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *sub_1001C8500(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v4 = a2;
  v6 = *(a1 + 16);
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v12 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v4 != a3)
    {
      *result = *v4;
      result[16] = *(v4 + 16);
      v4 += 24;
      result += 24;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v4;
        result[16] = *(v4 + 16);
        v4 += 24;
        result += 24;
      }

      while (v4 != v13);
    }

    if (v13 == a3)
    {
      *(a1 + 8) = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
      *(a1 + 8) = v14;
    }
  }

  return result;
}

char *sub_1001C8714(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = *(a1 + 16);
  result = *a1;
  if (a4 > (v5 - result) >> 4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v7 = a4;
      operator delete(result);
      a4 = v7;
      v5 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 60))
    {
      v8 = v5 >> 3;
      if (v5 >> 3 <= a4)
      {
        v8 = a4;
      }

      v27 = v5 >= 0x7FFFFFFFFFFFFFF0;
      v9 = 0xFFFFFFFFFFFFFFFLL;
      if (!v27)
      {
        v9 = v8;
      }

      if (!(v9 >> 60))
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v10 = *(a1 + 8);
  if (a4 <= (v10 - result) >> 4)
  {
    if (a2 == a3)
    {
      *(a1 + 8) = result;
      return result;
    }

    v19 = a3 - a2 - 16;
    if (v19 < 0xF0 || ((v39 = v19 & 0xFFFFFFFFFFFFFFF0 | 8, v40 = &result[v39], v41 = a2 + v39, v42 = (v19 & 0xFFFFFFFFFFFFFFF0) + 16, (result + 8) < a2 + v42) ? (v43 = a2 + 8 >= &result[v42]) : (v43 = 1), v43 ? (v44 = 0) : (v44 = 1), v40 > a2 ? (v45 = result >= v41) : (v45 = 1), !v45 || (v44 & 1) != 0))
    {
      v10 = result;
      v20 = a2;
    }

    else
    {
      v46 = (v19 >> 4) + 1;
      v47 = 16 * (v46 & 0x1FFFFFFFFFFFFFFCLL);
      v10 = &result[v47];
      v20 = (a2 + v47);
      v48 = (a2 + 32);
      v49 = result + 32;
      v50 = v46 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v52 = *(v48 - 2);
        v51 = *(v48 - 1);
        v54 = *v48;
        v53 = v48[1];
        v48 += 4;
        *(v49 - 2) = v52;
        *(v49 - 1) = v51;
        *v49 = v54;
        v49[1] = v53;
        v49 += 4;
        v50 -= 4;
      }

      while (v50);
      if (v46 == (v46 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_24;
      }
    }

    do
    {
      v21 = *v20;
      v22 = v20[1];
      v20 += 2;
      *v10 = v21;
      *(v10 + 1) = v22;
      v10 += 16;
    }

    while (v20 != a3);
LABEL_24:
    *(a1 + 8) = v10;
    return result;
  }

  v11 = (a2 + v10 - result);
  if (v10 != result)
  {
    v12 = v10 - result - 16;
    if (v12 < 0xF0 || ((v23 = v12 & 0xFFFFFFFFFFFFFFF0 | 8, v24 = &result[v23], v25 = a2 + v23, v26 = (v12 & 0xFFFFFFFFFFFFFFF0) + 16, (result + 8) < a2 + v26) ? (v27 = a2 + 8 >= &result[v26]) : (v27 = 1), v27 ? (v28 = 0) : (v28 = 1), v24 > a2 ? (v29 = result >= v25) : (v29 = 1), !v29 || (v28 & 1) != 0))
    {
      v13 = result;
      v14 = a2;
    }

    else
    {
      v30 = (v12 >> 4) + 1;
      v31 = 16 * (v30 & 0x1FFFFFFFFFFFFFFCLL);
      v13 = &result[v31];
      v14 = (a2 + v31);
      v32 = (a2 + 32);
      v33 = result + 32;
      v34 = v30 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v36 = *(v32 - 2);
        v35 = *(v32 - 1);
        v38 = *v32;
        v37 = v32[1];
        v32 += 4;
        *(v33 - 2) = v36;
        *(v33 - 1) = v35;
        *v33 = v38;
        v33[1] = v37;
        v33 += 4;
        v34 -= 4;
      }

      while (v34);
      if (v30 == (v30 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_16;
      }
    }

    do
    {
      v15 = *v14;
      v16 = v14[1];
      v14 += 2;
      *v13 = v15;
      *(v13 + 1) = v16;
      v13 += 16;
    }

    while (v14 != v11);
  }

LABEL_16:
  if (v11 == a3)
  {
    goto LABEL_24;
  }

  v17 = v10;
  do
  {
    v18 = *v11++;
    *v10 = v18;
    v10 += 16;
    v17 += 16;
  }

  while (v11 != a3);
  *(a1 + 8) = v17;
  return result;
}

void sub_1001C89F4(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3) >= a2)
  {
    if (a2)
    {
      v8 = v2 + 24 * a2;
      v9 = 24 * a2;
      do
      {
        *v2 = 0;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        v2 += 24;
        v9 -= 24;
      }

      while (v9);
      v2 = v8;
    }

    a1[1] = v2;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v5 = v4 + a2;
    if (v4 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000FC84();
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v7 = v5;
    }

    if (v7)
    {
      if (v7 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10000D444();
    }

    v10 = 24 * a2;
    v11 = 24 * v4;
    do
    {
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      v11 += 24;
      v10 -= 24;
    }

    while (v10);
    v12 = *a1;
    v13 = a1[1];
    v14 = 24 * v4 + *a1 - v13;
    if (v13 != *a1)
    {
      v15 = 24 * v4 + *a1 - v13;
      do
      {
        v16 = *v12;
        *(v15 + 16) = v12[2];
        *v15 = v16;
        v15 += 24;
        v12 += 3;
      }

      while (v12 != v13);
      v12 = *a1;
    }

    *a1 = v14;
    a1[1] = 24 * v4 + 24 * a2;
    a1[2] = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t **sub_1001C8BA4(void *a1, uint64_t a2)
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

void sub_1001C8FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001C900C(va);
  _Unwind_Resume(a1);
}

void sub_1001C8FF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001C900C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001C900C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_1001C9068(v1 + 40);
      if (*(v1 + 39) < 0)
      {
        operator delete(*(v1 + 16));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_1001C9068(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 128);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(a1 + 112);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    nullsub_76(a1 + 72);
    *(a1 + 64) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 40);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 24);
        if (v7)
        {
          v8 = *(v5 - 16);
          v9 = *(v5 - 24);
          if (v8 != v7)
          {
            v10 = *(v5 - 16);
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
            v9 = *(v5 - 24);
          }

          *(v5 - 16) = v7;
          operator delete(v9);
        }

        v13 = v5 - 48;
        v14 = *(v5 - 48);
        if (v14)
        {
          *(v5 - 40) = v14;
          operator delete(v14);
        }

        v5 -= 48;
      }

      while (v13 != v4);
      v6 = *(a1 + 40);
    }

    *(a1 + 48) = v4;
    operator delete(v6);
  }

  v15 = *(a1 + 16);
  while (v15)
  {
    v16 = v15;
    v15 = *v15;
    v17 = v16[3];
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v16;
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
      v16 = v18;
    }

    operator delete(v16);
  }

  v19 = *a1;
  *a1 = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return a1;
}

uint64_t sub_1001C925C(uint64_t *a1, uint64_t a2)
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

void sub_1001C93F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100120E60(va);
  _Unwind_Resume(a1);
}

void sub_1001C940C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v4)
  {
    sub_100385158(v3, v2);
  }

  sub_100120E60(va);
  _Unwind_Resume(a1);
}

void sub_1001C9430()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001C94A0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1001C9574(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v10 = sub_1000DD620();
    v11 = v9;
    if (sub_100008F80(&v10, &v11 + 1))
    {
      sub_100010CF4(a2, a3, a4, a5);
    }
  }
}

void sub_1001C95F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if ((a11 & 1) == 0)
  {
    JUMPOUT(0x1001C95D8);
  }

  JUMPOUT(0x1001C95C4);
}

BOOL sub_1001C9608(_DWORD *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = (a1 + 2);
  v4 = v3 ^ (v3 >> 31);
  if (v4 <= 2)
  {
    if (!v4)
    {

      sub_1001C9774();
    }

    if (v4 == 1)
    {
      v6 = *v2;
      sub_1001C98F8(*v2);
      return v6 != 0;
    }

    else
    {
      v8 = *v2;
      sub_1001C9988(*v2);
      return v8 != 0;
    }
  }

  else
  {
    if (v4 > 4)
    {
      if (v4 == 5)
      {
        v7 = *v2;

        sub_1001C9CFC();
      }

      v12 = *v2;

      sub_1001C9E80();
    }

    if (v4 == 3)
    {

      return sub_1001C9A18(a2, v2);
    }

    else
    {
      v9 = *v2;
      sub_1001C9C64(*v2);
      v10 = ceil(v9);
      v11 = floor(v9);
      if (v9 >= 0.0)
      {
        v10 = v11;
      }

      return v10 != 0.0;
    }
  }
}

void sub_1001C9858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

void sub_1001C98C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1001C98B0);
}

uint64_t sub_1001C98F8(uint64_t result)
{
  v1 = 2 * (result > 1);
  if (result < 0)
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

  return result;
}

uint64_t sub_1001C9988(uint64_t result)
{
  v1 = 2 * (result > 1);
  if (result < 0)
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

  return result;
}

BOOL sub_1001C9A18(uint64_t a1, uint64_t a2)
{
  std::locale::locale(&v18);
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 < 0)
  {
    v3 = *(a2 + 8);
  }

  sub_100004198(&__p, v4, &v18, &v4[v3]);
  std::locale::~locale(&v18);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (__p.__r_.__value_.__l.__size_ == 4 && *__p.__r_.__value_.__l.__data_ == 1702195828)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      return 1;
    }

    if (__p.__r_.__value_.__l.__size_ == 5)
    {
      v8 = *__p.__r_.__value_.__l.__data_ != 1936482662 || *(__p.__r_.__value_.__r.__words[0] + 4) != 101;
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v8)
      {
        return 0;
      }
    }

    else
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 4)
  {
    if (LODWORD(__p.__r_.__value_.__l.__data_) == 1702195828)
    {
      return 1;
    }
  }

  else if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 5)
  {
    v5 = LODWORD(__p.__r_.__value_.__l.__data_) == 1936482662 && __p.__r_.__value_.__s.__data_[4] == 101;
    if (v5)
    {
      return 0;
    }
  }

  v9 = *(a2 + 23);
  v10 = *a2;
  if (v9 >= 0)
  {
    v10 = a2;
  }

  if (v9 < 0)
  {
    v9 = *(a2 + 8);
  }

  if (!v9)
  {
    goto LABEL_54;
  }

  v11 = &v10[v9 - 1];
  v12 = *v11;
  result = v12 == 49;
  if ((v12 & 0xFE) != 0x30)
  {
    goto LABEL_54;
  }

  if (v10 != v11)
  {
    v5 = v12 == 49;
    v13 = *v10;
    v14 = !v5 && v13 == 45;
    v15 = v14 || v13 == 43;
    v16 = v15;
    if (v15)
    {
      ++v10;
    }

    if (v10 != v11)
    {
      v17 = ~v16 + v9;
      while (*v10 == 48)
      {
        ++v10;
        if (!--v17)
        {
          return result;
        }
      }

LABEL_54:
      std::bad_cast::bad_cast(&__p);
      __p.__r_.__value_.__r.__words[0] = &off_100434090;
      sub_100049F88(&__p);
    }
  }

  return result;
}

void sub_1001C9C64(double a1)
{
  v1 = 2 * (a1 >= 2.0);
  if (a1 <= -1.0)
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

void sub_1001C9DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

void sub_1001C9E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1001C9E38);
}

void sub_1001C9F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

void sub_1001C9FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1001C9FBCLL);
}

void sub_1001CA034()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001CA0A4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_1001CA148(unint64_t a1)
{
  v2 = *&qword_10045D1C8;
  if (*&qword_10045D1C8 == 0.0)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&qword_10045D1C8 = v2;
  }

  return v2 * a1;
}

double sub_1001CA208()
{
  v0 = mach_absolute_time();
  v1 = *&qword_10045D1C8;
  if (*&qword_10045D1C8 == 0.0)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v4 = denom;
        denom = numer % denom;
        numer = v4;
      }

      while (denom);
    }

    else
    {
      v4 = info.numer;
    }

    v5 = 1000000000;
    v6 = info.numer / v4;
    do
    {
      v7 = v6;
      v6 = v5;
      v5 = v7 % v5;
    }

    while (v5);
    v1 = (info.numer / v4 / v6) / (0x3B9ACA00 / v6 * (info.denom / v4));
    *&qword_10045D1C8 = v1;
  }

  return v1 * v0;
}

double sub_1001CA2CC()
{
  v0 = mach_continuous_time();
  v1 = *&qword_10045D1C8;
  if (*&qword_10045D1C8 == 0.0)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v4 = denom;
        denom = numer % denom;
        numer = v4;
      }

      while (denom);
    }

    else
    {
      v4 = info.numer;
    }

    v5 = 1000000000;
    v6 = info.numer / v4;
    do
    {
      v7 = v6;
      v6 = v5;
      v5 = v7 % v5;
    }

    while (v5);
    v1 = (info.numer / v4 / v6) / (0x3B9ACA00 / v6 * (info.denom / v4));
    *&qword_10045D1C8 = v1;
  }

  return v1 * v0;
}

void sub_1001CA390()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1001CA3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    sub_100383B28(__p, v6);
    sub_1000BA6B0(__p);
  }

  *a1 = a2;
  if (!a3)
  {
    sub_100383B28(__p, v6);
    sub_1000BA6B0(__p);
  }

  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 850045863;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1018212795;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  sub_10031E448((a1 + 144), "Event generator finalization");
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_1001CA4D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001CA4F8(uint64_t a1)
{
  if (qword_10045B050 == -1)
  {
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1003851EC();
  v2 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Waiting for finalizers to finish running", buf, 2u);
  }

LABEL_4:
  *buf = 0;
  v11 = buf;
  v12 = 0x3002000000;
  v13 = nullsub_110;
  v14 = nullsub_111;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = nullsub_112;
  v9[3] = &unk_100441E78;
  v9[4] = buf;
  sub_10000AE28((a1 + 144), v9);
  _Block_object_dispose(buf, 8);
  v3 = *(a1 + 152);
  if (v3)
  {
    v4 = *(a1 + 160);
    v5 = *(a1 + 152);
    if (v4 != v3)
    {
      v6 = v4 - 32;
      do
      {
        v7 = *(v4 - 8);
        v4 -= 32;
        if (v4 == v7)
        {
          (*(*v7 + 32))(v7);
        }

        else if (v7)
        {
          (*(*v7 + 40))(v7);
        }

        v6 -= 32;
      }

      while (v4 != v3);
      v5 = *(a1 + 152);
    }

    *(a1 + 160) = v3;
    operator delete(v5);
  }

  sub_10031E47C((a1 + 144));
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  return a1;
}

uint64_t sub_1001CA6F0(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v4 = (a2 + 24);
  v3 = *(a2 + 24);
  if (!v3)
  {
    v4 = &v10;
    goto LABEL_5;
  }

  if (v3 != a2)
  {
    v10 = *(a2 + 24);
LABEL_5:
    *v4 = 0;
    v5 = a1;
    goto LABEL_7;
  }

  v10 = v9;
  (*(*v3 + 24))(v3, v9);
  v5 = v8;
LABEL_7:
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x5002000000;
  v11[3] = sub_1001CC844;
  v11[4] = sub_1001CC8C4;
  v11[5] = v5;
  if (v10)
  {
    if (v10 == v9)
    {
      v13 = v12;
      (*(*v10 + 24))();
    }

    else
    {
      v13 = v10;
      v10 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1001CC924;
  v7[3] = &unk_100441EA0;
  v7[4] = v11;
  sub_10031E4A8((a1 + 144), v7);
  _Block_object_dispose(v11, 8);
  if (v13 != v12)
  {
    if (v13)
    {
      (*(*v13 + 40))();
    }

    result = v10;
    if (v10 != v9)
    {
      goto LABEL_16;
    }

    return (*(*result + 32))(result);
  }

  (*(*v13 + 32))(v13);
  result = v10;
  if (v10 == v9)
  {
    return (*(*result + 32))(result);
  }

LABEL_16:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_1001CA96C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000D388(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1001CA984(uint64_t a1)
{
  if (qword_10045B050 != -1)
  {
    sub_1003851EC();
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Finished playing back events", buf, 2u);
  }

LABEL_4:
  std::mutex::lock((a1 + 24));
  *(a1 + 17) = 0;
  std::condition_variable::notify_all((a1 + 88));
  *buf = 0;
  v5 = buf;
  v6 = 0x3002000000;
  v7 = sub_1001CCE30;
  v8 = nullsub_113;
  v9 = a1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1001CCE40;
  v3[3] = &unk_100441EC8;
  v3[4] = buf;
  sub_10031E4A8((a1 + 144), v3);
  _Block_object_dispose(buf, 8);
  std::mutex::unlock((a1 + 24));
}

void sub_1001CAAD8(uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  *(a1 + 17) = 1;
  std::mutex::unlock((a1 + 24));
  if (qword_10045B050 == -1)
  {
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1003851EC();
  v2 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Apply event queue in batch", buf, 2u);
  }

LABEL_4:
  v3 = _os_activity_create(&_mh_execute_header, "applying localizer events", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &v9);
  v4 = sub_1001CAD14(*a1);
  v5 = atomic_load((a1 + 16));
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    do
    {
      v7 = *a1;
      v10 = 0;
      *buf = 0;
      v13 = buf;
      v14 = 0x3802000000;
      v15 = sub_1001CCEB8;
      v16 = nullsub_114;
      v17 = &v10;
      v18 = v7;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 0x40000000;
      v11[2] = sub_1001CCEC8;
      v11[3] = &unk_100441EF0;
      v11[4] = buf;
      sub_10000AE28((v7 + 32), v11);
      _Block_object_dispose(buf, 8);
      if (v10)
      {
        break;
      }

      sub_1001CAF0C(a1, v6);
      (*(**(a1 + 8) + 248))(*(a1 + 8), v6);
      v6 += 250000000;
      v8 = atomic_load((a1 + 16));
    }

    while ((v8 & 1) == 0);
  }

  sub_1001CA984(a1);
  os_activity_scope_leave(&v9);
}

void *sub_1001CAD14(uint64_t a1)
{
  v8.__r_.__value_.__r.__words[0] = 0;
  v8.__r_.__value_.__l.__size_ = &v8;
  v8.__r_.__value_.__r.__words[2] = 0x3802000000;
  v9 = sub_1001CE268;
  v10 = nullsub_121;
  v11 = a1;
  v12 = &v3;
  v3 = 0;
  v4.__vftable = _NSConcreteStackBlock;
  v4.__imp_.__imp_ = 0x40000000;
  v5 = sub_1001CE278;
  v6 = &unk_100442048;
  v7 = &v8;
  sub_10000AE28((a1 + 32), &v4);
  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v8, "No events in queue");
    std::runtime_error::runtime_error(&v4, &v8);
    v4.__vftable = &off_1004338D0;
    sub_10010A984(v2);
  }

  return sub_10004FF1C(*v3);
}

void sub_1001CAE90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, std::runtime_error a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a13);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001CAF0C(uint64_t *a1, std::string::size_type a2)
{
  if (qword_10045B050 != -1)
  {
    sub_1003851EC();
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a1;
    __p = 0;
    buf.__r_.__value_.__r.__words[0] = 0;
    buf.__r_.__value_.__l.__size_ = &buf;
    buf.__r_.__value_.__r.__words[2] = 0x3802000000;
    v27 = sub_1001CDADC;
    v28 = nullsub_117;
    p_p = &__p;
    v30 = v5;
    *v32 = _NSConcreteStackBlock;
    *&v32[8] = 0x40000000;
    *&v32[16] = sub_1001CDAEC;
    v33 = &unk_100441FA8;
    p_buf = &buf;
    sub_10000AE28((v5 + 32), v32);
    _Block_object_dispose(&buf, 8);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
    *(buf.__r_.__value_.__r.__words + 4) = a2;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = __p;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Applying until timestamp %lld with queue size %zu", &buf, 0x16u);
  }

  v6 = *a1;
  v25 = a2;
  buf.__r_.__value_.__r.__words[0] = 0;
  v23 = 0;
  v24 = 0;
  __p = 0;
  buf.__r_.__value_.__l.__size_ = &buf;
  buf.__r_.__value_.__r.__words[2] = 0x4002000000;
  v27 = sub_1001CE298;
  v28 = nullsub_122;
  p_p = v6;
  v30 = &v25;
  v31 = &__p;
  *v32 = _NSConcreteStackBlock;
  *&v32[8] = 0x40000000;
  *&v32[16] = sub_1001CE2B0;
  v33 = &unk_100442070;
  p_buf = &buf;
  sub_10000AE28((v6 + 32), v32);
  _Block_object_dispose(&buf, 8);
  v7 = __p;
  v8 = v23;
  if (__p != v23)
  {
    do
    {
      if (qword_10045B050 != -1)
      {
        sub_100385200();
      }

      v9 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        sub_1001CC534(&buf, *v7);
        v10 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        v25 = sub_10004FF1C(*v7);
        v11 = sub_10010C730(&v25);
        *v32 = 136315394;
        *&v32[4] = v10;
        *&v32[12] = 2048;
        *&v32[14] = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Applying event %s @ %f", v32, 0x16u);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      buf.__r_.__value_.__r.__words[0] = a1[1];
      sub_1001CCF38(*v7, &buf);
      v7 += 2;
    }

    while (v7 != v8);
  }

  if (qword_10045B050 != -1)
  {
    sub_100385200();
  }

  v12 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v14 = __p;
    v13 = v23;
    v15 = *a1;
    v25 = 0;
    buf.__r_.__value_.__r.__words[0] = 0;
    buf.__r_.__value_.__l.__size_ = &buf;
    buf.__r_.__value_.__r.__words[2] = 0x3802000000;
    v27 = sub_1001CDADC;
    v28 = nullsub_117;
    p_p = &v25;
    v30 = v15;
    *v32 = _NSConcreteStackBlock;
    *&v32[8] = 0x40000000;
    *&v32[16] = sub_1001CDAEC;
    v33 = &unk_100441FA8;
    p_buf = &buf;
    sub_10000AE28((v15 + 32), v32);
    _Block_object_dispose(&buf, 8);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
    *(buf.__r_.__value_.__r.__words + 4) = (v13 - v14) >> 4;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v25;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Applied %zu, %zu events remaining to be applied", &buf, 0x16u);
  }

  v17 = __p;
  v16 = v23;
  if (__p)
  {
    v18 = __p;
    if (v23 != __p)
    {
      v19 = v23;
      do
      {
        v20 = *(v19 - 1);
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v19 -= 2;
      }

      while (v19 != v17);
      v18 = __p;
    }

    v23 = v17;
    operator delete(v18);
  }

  return (v16 - v17) >> 4;
}

void sub_1001CB3FC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10000D388(exception_object);
}

uint64_t sub_1001CB458(std::string::size_type a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4)
{
  v8 = sub_10004FF1C(*a4);
  v9 = v8;
  if (*a3 != 1)
  {
    *a3 = 1;
    goto LABEL_11;
  }

  if (v8 == *(a3 + 1))
  {
LABEL_11:
    *(a3 + 1) = v8;
    goto LABEL_12;
  }

  if (*a2)
  {
    v10 = *(a2 + 8);
    if (v8 - v10 >= 2500000000000)
    {
      sub_1000474A4(&__p, "");
      sub_1001CCEE8("Unreasonably large gap the data, likely corrupt", &v21);
      sub_100382FC4(&v21, buf, &__p);
      sub_10003F5D0(buf);
    }

    if (v8 - v10 > 249999999)
    {
      v11 = v8 - v10;
      v12 = v10 + 250000000;
      do
      {
        (*(*a1 + 248))(a1, v12);
        if ((*a2 & 1) == 0)
        {
          *a2 = 1;
        }

        *(a2 + 8) = v12;
        v11 -= 250000000;
        v12 += 250000000;
      }

      while (v11 > 249999999);
    }
  }

  else
  {
    (*(*a1 + 248))(a1);
    v16 = *a3;
    if (*a2 == 1)
    {
      if (*a3)
      {
        *(a2 + 8) = *(a3 + 1);
      }

      else
      {
        *a2 = 0;
      }
    }

    else if (*a3)
    {
      *(a2 + 8) = *(a3 + 1);
      *a2 = 1;
    }
  }

LABEL_12:
  if (qword_10045B050 != -1)
  {
    sub_100385200();
  }

  v13 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    sub_1001CC534(&__p, *a4);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    buf[0] = 136315394;
    *&buf[1] = p_p;
    v19 = 2048;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Applying event %s @ %lld", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  __p.__r_.__value_.__r.__words[0] = a1;
  return sub_1001CCF38(*a4, &__p);
}

void sub_1001CB730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001CB774(uint64_t a1)
{
  v2[0] = off_100441F20;
  v3 = v2;
  sub_1001CB864(a1, v2);
  result = v3;
  if (v3 == v2)
  {
    return (*(*v3 + 32))(v3);
  }

  if (v3)
  {
    return (*(*v3 + 40))();
  }

  return result;
}

void sub_1001CB850(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001CDA50(va);
  _Unwind_Resume(a1);
}

void sub_1001CB864(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    sub_100383B28(&__p, buf);
    sub_10003F5D0(&__p);
  }

  std::mutex::lock((a1 + 24));
  *(a1 + 17) = 1;
  std::mutex::unlock((a1 + 24));
  if (qword_10045B050 != -1)
  {
    sub_100385200();
  }

  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Apply event queue in real time", buf, 2u);
  }

  v27 = sub_10010C670();
  v4 = atomic_load((a1 + 16));
  if ((v4 & 1) == 0)
  {
    v5 = 0;
    while (1)
    {
      v7 = *(a1 + 136);
      if (!v7)
      {
        break;
      }

      sub_1002AEC20(v7);
      v8 = sub_1002AEC14(*(a1 + 136));
      v9 = v27 + 250000000;
      v27 += 250000000;
      if (v8 > 0.0)
      {
        goto LABEL_14;
      }

LABEL_15:
      *buf = v9;
      v11 = *(a2 + 24);
      if (!v11)
      {
        sub_1000DB498();
      }

      if ((*(*v11 + 48))(v11, buf) == 1)
      {
        if (qword_10045B050 != -1)
        {
          sub_100385200();
        }

        v25 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Finished playing back events", buf, 2u);
        }

        goto LABEL_42;
      }

      if (qword_10045B050 != -1)
      {
        sub_100385200();
      }

      v12 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        v13 = *a1;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3802000000;
        v35 = sub_1001CDADC;
        v36 = nullsub_117;
        v37 = &v28;
        v38 = v13;
        v28 = 0;
        __p = _NSConcreteStackBlock;
        v30 = 0x40000000;
        v31 = sub_1001CDAEC;
        v32 = &unk_100441FA8;
        v33 = buf;
        sub_10000AE28((v13 + 32), &__p);
        _Block_object_dispose(buf, 8);
        *buf = 134217984;
        *&buf[4] = v28;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "We have %zu events in queue", buf, 0xCu);
      }

      v14 = sub_1001CBF6C(a1, v5);
      if (v14)
      {
        if (qword_10045B050 != -1)
        {
          sub_100385200();
        }

        v15 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          v16 = *a1;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3802000000;
          v35 = sub_1001CDADC;
          v36 = nullsub_117;
          v37 = &v28;
          v38 = v16;
          v28 = 0;
          __p = _NSConcreteStackBlock;
          v30 = 0x40000000;
          v31 = sub_1001CDAEC;
          v32 = &unk_100441FA8;
          v33 = buf;
          sub_10000AE28((v16 + 32), &__p);
          _Block_object_dispose(buf, 8);
          *buf = 134218240;
          *&buf[4] = v14;
          *&buf[12] = 2048;
          *&buf[14] = v28;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "WARNING: We have dropped %zu events.  %zu remaining", buf, 0x16u);
        }
      }

      v5 = (v27 - 100000000);
      v17 = sub_1001CAF0C(a1, v27 - 100000000);
      if (qword_10045B050 != -1)
      {
        sub_100385200();
      }

      v18 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *&buf[4] = v17;
        *&buf[12] = 2048;
        *&buf[14] = v5;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Applied %zu events - simulating motion until %lld ns", buf, 0x16u);
        if (qword_10045B050 != -1)
        {
          sub_100385200();
        }
      }

      v19 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        v20 = sub_10010C730(&v27);
        *buf = 134217984;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Applying update motion event at %f", buf, 0xCu);
      }

      (*(**(a1 + 8) + 248))(*(a1 + 8), v5);
      v21 = sub_10010C670();
      v22 = v21 - v27;
      if ((v21 - v27) >= 3000000001)
      {
        if (qword_10045B050 != -1)
        {
          sub_100385200();
        }

        v23 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *a1;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3802000000;
          v35 = sub_1001CDADC;
          v36 = nullsub_117;
          v37 = &v28;
          v38 = v24;
          v28 = 0;
          __p = _NSConcreteStackBlock;
          v30 = 0x40000000;
          v31 = sub_1001CDAEC;
          v32 = &unk_100441FA8;
          v33 = buf;
          sub_10000AE28((v24 + 32), &__p);
          _Block_object_dispose(buf, 8);
          *buf = 134218240;
          *&buf[4] = v22 / 1000000000.0;
          *&buf[12] = 2048;
          *&buf[14] = v28;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "WARNING: Lag (%f) too high, dropping %zu events", buf, 0x16u);
        }

        sub_1001CC34C(a1);
        v27 = v21;
      }

      v6 = atomic_load((a1 + 16));
      if (v6)
      {
        goto LABEL_42;
      }
    }

    v9 = v27 + 250000000;
    v27 += 250000000;
    v8 = 1.0;
LABEL_14:
    v10 = sub_10010C758();
    sub_10010C7F4((v8 * (v9 - v10)));
    v9 = v27;
    goto LABEL_15;
  }

LABEL_42:
  sub_1001CA984(a1);
}

void sub_1001CBF34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001CBF50(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000D388(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001CBF6C(uint64_t *a1, char *a2)
{
  v4 = *a1;
  v19 = 0;
  v20 = 0;
  __p = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x4002000000;
  v30 = sub_1001CDB0C;
  v31 = nullsub_118;
  v32 = v4;
  v33 = &v22;
  p_p = &__p;
  v22 = a2;
  v23 = _NSConcreteStackBlock;
  v24 = 0x40000000;
  v25 = sub_1001CDB24;
  v26 = &unk_100441FD0;
  p_buf = &buf;
  sub_10000AE28((v4 + 32), &v23);
  _Block_object_dispose(&buf, 8);
  v5 = __p;
  v6 = v19;
  if (__p == v19)
  {
    v7 = 0;
    if (!__p)
    {
      return v7;
    }

    goto LABEL_23;
  }

  *&buf = a2;
  while (!sub_1001CDF5C(&buf, v5))
  {
    v5 += 16;
    if (v5 == v6)
    {
      v5 = v6;
      goto LABEL_17;
    }
  }

  if (v5 != v6)
  {
    for (i = v5 + 16; i != v6; i += 16)
    {
      if (!sub_1001CDF5C(&buf, i))
      {
        v9 = *i;
        *i = 0;
        *(i + 1) = 0;
        v10 = *(v5 + 1);
        *v5 = v9;
        if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        v5 += 16;
      }
    }
  }

LABEL_17:
  v11 = *a1;
  v21 = v19;
  v22 = v5;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x4002000000;
  v30 = sub_1001CE0C0;
  v31 = nullsub_119;
  v32 = &v22;
  v33 = &v21;
  p_p = v11;
  v23 = _NSConcreteStackBlock;
  v24 = 0x40000000;
  v25 = sub_1001CE0D8;
  v26 = &unk_100441FF8;
  p_buf = &buf;
  sub_10000AE28((v11 + 32), &v23);
  _Block_object_dispose(&buf, 8);
  v12 = (v19 - __p) >> 4;
  v7 = v12 - ((v19 - v5) >> 4);
  if (v12 != (v19 - v5) >> 4)
  {
    if (qword_10045B050 != -1)
    {
      sub_100385200();
    }

    v13 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "WARNING: Dropping %zu events", &buf, 0xCu);
    }
  }

  v5 = __p;
  if (__p)
  {
LABEL_23:
    v14 = v19;
    v15 = v5;
    if (v19 != v5)
    {
      do
      {
        v16 = *(v14 - 1);
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        v14 -= 16;
      }

      while (v14 != v5);
      v15 = __p;
    }

    v19 = v5;
    operator delete(v15);
  }

  return v7;
}

void sub_1001CC308(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10000D388(exception_object);
}

void sub_1001CC34C(uint64_t *a1)
{
  if (qword_10045B050 != -1)
  {
    sub_1003851EC();
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "WARNING: Dropping all events", buf, 2u);
  }

LABEL_4:
  v3 = *a1;
  *buf = 0;
  v6 = buf;
  v7 = 0x3002000000;
  v8 = sub_1001CE190;
  v9 = nullsub_120;
  v10 = v3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1001CE1A0;
  v4[3] = &unk_100442020;
  v4[4] = buf;
  sub_10000AE28((v3 + 32), v4);
  _Block_object_dispose(buf, 8);
}

void sub_1001CC498(uint64_t a1)
{
  v2.__m_ = (a1 + 24);
  v2.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  if (*(a1 + 17) != 1)
  {
    goto LABEL_4;
  }

  do
  {
    std::condition_variable::wait((a1 + 88), &v2);
  }

  while ((*(a1 + 17) & 1) != 0);
  if (v2.__owns_)
  {
LABEL_4:
    std::mutex::unlock(v2.__m_);
  }
}

void sub_1001CC534(std::string *a1@<X8>, _DWORD *a2@<X0>)
{
  v4 = *a2;
  v2 = a2 + 2;
  v3 = v4;
  switch(v4 ^ (v4 >> 31))
  {
    case 1:
      if (v3 < 0)
      {
        v8 = *v2;
      }

      sub_10032492C(a1);
      break;
    case 2:
      sub_100324628(v2, a1);
      break;
    case 3:
      if (v3 < 0)
      {
        v2 = *v2;
      }

      sub_100324398(v2, a1);
      break;
    case 4:
      if (v3 < 0)
      {
        v5 = *v2;
      }

      sub_10032481C(a1);
      break;
    case 5:
      if (v3 < 0)
      {
        v11 = *v2;
      }

      sub_1003248A0(a1);
      break;
    case 6:
      if (v3 < 0)
      {
        v13 = *v2;
      }

      sub_100324974();
    case 7:
      if (v3 < 0)
      {
        v7 = *v2;
      }

      sub_100324600(a1);
      break;
    case 8:
      if (v3 < 0)
      {
        v2 = *v2;
      }

      sub_10032402C(v2, a1);
      break;
    case 9:
      strcpy(a1, "OutdoorPosInputEvent");
      *(&a1->__r_.__value_.__s + 23) = 20;
      break;
    case 0xA:
      if (v3 < 0)
      {
        v15 = *v2;
      }

      sub_1003248E4(a1);
      break;
    case 0xB:
      sub_100324878(a1);
      break;
    case 0xC:
      strcpy(a1, "UserLocationInput");
      *(&a1->__r_.__value_.__s + 23) = 17;
      break;
    case 0xD:
      sub_1001CC6B4(v2);
      break;
    case 0xE:
      *(&a1->__r_.__value_.__s + 23) = 14;
      strcpy(a1, "WifiInputEvent");
      break;
    case 0xF:
      if (v3 < 0)
      {
        v6 = *v2;
      }

      sub_1003249D8(a1);
      break;
    case 0x10:
      sub_100324A7C(a1);
      break;
    case 0x11:
      if (v3 < 0)
      {
        v9 = *v2;
      }

      sub_100324B80();
    case 0x12:
      if (v3 < 0)
      {
        v14 = *v2;
      }

      sub_100324CEC();
    case 0x13:
      if (v3 < 0)
      {
        v16 = *v2;
      }

      sub_100324E58();
    case 0x14:
      if (v3 < 0)
      {
        v10 = *v2;
      }

      sub_100324FD4();
    case 0x15:
      if (v3 < 0)
      {
        v12 = *v2;
      }

      sub_100325114();
    default:
      strcpy(a1, "ActivityState");
      *(&a1->__r_.__value_.__s + 23) = 13;
      break;
  }
}

uint64_t sub_1001CC6B4(uint64_t a1)
{
  sub_10003BFA8(&v5);
  v2 = sub_10003C2E4(&v5, "VideoFrameInputEvent(", 21);
  v3 = sub_100323CFC(v2, *(a1 + 8));
  sub_10003C2E4(v3, ")", 1);
  std::stringbuf::str();
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  std::locale::~locale(v7);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1001CC824(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001CC844(uint64_t result, uint64_t a2)
{
  v2 = a2 + 72;
  v3 = *(a2 + 72);
  *(result + 40) = *(a2 + 40);
  if (!v3)
  {
    v2 = result + 72;
    goto LABEL_5;
  }

  if (v3 != a2 + 48)
  {
    *(result + 72) = v3;
LABEL_5:
    *v2 = 0;
    return result;
  }

  *(result + 72) = result + 48;
  return (*(**v2 + 24))();
}

uint64_t sub_1001CC8C4(uint64_t a1)
{
  v1 = a1 + 48;
  result = *(a1 + 72);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_1001CC924(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  if ((*(v2 + 176) & 1) == 0)
  {
    v6 = v1 + 48;
    v7 = *(v2 + 160);
    if (v7 >= *(v2 + 168))
    {
      result = sub_1001CCA34((v2 + 152), v6);
      *(v2 + 160) = result;
      return result;
    }

    v10 = *(v1 + 72);
    v8 = (v1 + 72);
    v9 = v10;
    if (v10)
    {
      if (v9 == v6)
      {
        *(v7 + 24) = v7;
        (*(**v8 + 24))(*v8, v7);
        result = v7 + 32;
        *(v2 + 160) = v7 + 32;
        return result;
      }

      *(v7 + 24) = v9;
    }

    else
    {
      v8 = (v7 + 24);
    }

    *v8 = 0;
    result = v7 + 32;
    *(v2 + 160) = v7 + 32;
    return result;
  }

  v3 = *(v1 + 72);
  if (!v3)
  {
    sub_1000DB498();
  }

  v4 = *(*v3 + 48);

  return v4();
}

uint64_t sub_1001CCA34(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_10000FC84();
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

  v20 = a1;
  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_10000D444();
  }

  v8 = 32 * v2;
  __p = 0;
  v17 = 32 * v2;
  v18 = 32 * v2;
  v19 = 0;
  v10 = (a2 + 24);
  v9 = *(a2 + 24);
  if (v9)
  {
    if (v9 == a2)
    {
      *(32 * v2 + 0x18) = 32 * v2;
      (*(*v9 + 24))(v9);
      v8 = v18;
      goto LABEL_16;
    }

    *(32 * v2 + 0x18) = v9;
  }

  else
  {
    v10 = (v8 + 24);
  }

  *v10 = 0;
LABEL_16:
  v18 = v8 + 32;
  sub_1001CCBF8(a1, &__p);
  v11 = a1[1];
  v12 = v17;
  while (1)
  {
    v13 = v18;
    if (v18 == v12)
    {
      break;
    }

    v18 -= 32;
    v14 = *(v13 - 8);
    if (v14 == v13 - 32)
    {
      (*(*v14 + 32))(v14);
    }

    else if (v14)
    {
      (*(*v14 + 40))(v14);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_1001CCBE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001CCD78(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001CCBF8(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v6 = *result;
  v5 = result[1];
  v7 = v5 - *result;
  if (v5 == *result)
  {
    goto LABEL_15;
  }

  v8 = (v4 - 32 * ((v5 - *result) >> 5) + 24);
  v9 = *result;
  do
  {
    v11 = v9[3];
    v10 = v8;
    if (!v11)
    {
      goto LABEL_4;
    }

    if (v9 != v11)
    {
      *v8 = v11;
      v10 = v9 + 3;
LABEL_4:
      *v10 = 0;
      goto LABEL_5;
    }

    *v8 = (v8 - 3);
    (*(*v9[3] + 24))();
LABEL_5:
    v9 += 4;
    v8 += 4;
  }

  while (v9 != v5);
  v12 = v6;
  do
  {
    result = v6[3];
    if (v6 == result)
    {
      result = (*(*result + 32))(result);
    }

    else if (result)
    {
      result = (*(*result + 40))(result);
    }

    v6 += 4;
    v12 += 4;
  }

  while (v6 != v5);
LABEL_15:
  a2[1] = v4 - v7;
  v13 = *v3;
  *v3 = v4 - v7;
  v3[1] = v13;
  a2[1] = v13;
  v14 = v3[1];
  v3[1] = a2[2];
  a2[2] = v14;
  v15 = v3[2];
  v3[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

uint64_t sub_1001CCD78(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    while (1)
    {
      *(a1 + 16) = i - 32;
      v4 = *(i - 8);
      if (v4 != i - 32)
      {
        break;
      }

      (*(*v4 + 32))(v4);
      i = *(a1 + 16);
      if (i == v3)
      {
        goto LABEL_8;
      }
    }

    if (v4)
    {
      (*(*v4 + 40))(v4);
    }
  }

LABEL_8:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1001CCE40(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  *(v1 + 176) = 1;
  v2 = *(v1 + 152);
  for (i = *(v1 + 160); v2 != i; v2 += 32)
  {
    v4 = *(v2 + 24);
    if (!v4)
    {
      sub_1000DB498();
    }

    result = (*(*v4 + 48))(v4);
  }

  return result;
}

__n128 sub_1001CCEB8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1001CCEC8(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 48);
  **(*(*(result + 32) + 8) + 40) = *v1 == v1[1];
  return result;
}

std::string *sub_1001CCEE8@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1001CCF1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001CCF38(uint64_t result, uint64_t *a2)
{
  v3 = result + 8;
  v4 = *result;
  switch(v4 ^ (v4 >> 31))
  {
    case 1:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 40))(*a2, v3);
      break;
    case 2:
      result = (*(**a2 + 48))(*a2, *(result + 16));
      break;
    case 3:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 56))(*a2, v3, *(v3 + 96));
      break;
    case 4:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 64))(*a2, v3);
      break;
    case 5:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 72))(*a2, v3);
      break;
    case 6:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 88))(*a2, v3);
      break;
    case 7:
      return result;
    case 8:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = sub_1001CD394(v3, *a2);
      break;
    case 9:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 120))(*a2, v3);
      break;
    case 0xA:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 128))(*a2, v3);
      break;
    case 0xB:
      result = (*(**a2 + 16))(*a2, *(result + 8), *(result + 16), result + 24);
      break;
    case 0xC:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 168))(*a2, *v3, v3 + 24, v3 + 8);
      break;
    case 0xD:
      result = (*(**a2 + 160))(*a2, *(result + 8), *(result + 16), *(result + 24));
      break;
    case 0xE:
      result = (*(**a2 + 176))(*a2, *(result + 8), *(result + 16), result + 32);
      break;
    case 0xF:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 184))(*a2, v3);
      break;
    case 0x10:
      result = (*(**a2 + 192))(*a2, *(result + 8), result + 16, *(result + 40), *(result + 48), *(result + 56));
      break;
    case 0x11:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 200))(*a2, v3 + 16, v3 + 8);
      break;
    case 0x12:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 208))(*a2, v3 + 112, v3 + 8);
      break;
    case 0x13:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 216))(*a2, v3 + 80, v3 + 8);
      break;
    case 0x14:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = sub_1001CD768(v3, *a2);
      break;
    case 0x15:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 240))(*a2, v3 + 104, v3 + 8);
      break;
    default:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 32))(*a2, v3 + 8);
      break;
  }

  return result;
}

uint64_t sub_1001CD394(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 96);
  v3 = *(a1 + 96);
  if (v3 <= 9)
  {
    switch(v3)
    {
      case 2:
        v5 = *(*a2 + 24);
        v6 = a2;
        v7 = a1;

        break;
      case 3:
        v5 = *(*a2 + 104);
        v6 = a2;
        v7 = a1;

        break;
      case 4:
        v5 = *(*a2 + 136);
        v6 = a2;
        v7 = a1;

        break;
      default:
        goto LABEL_31;
    }
  }

  else if (v3 > 12)
  {
    if (v3 == 13)
    {
      v5 = *(*a2 + 144);
      v6 = a2;
      v7 = a1;
    }

    else
    {
      if (v3 != 15)
      {
        goto LABEL_31;
      }

      v5 = *(*a2 + 112);
      v6 = a2;
      v7 = a1;
    }
  }

  else
  {
    if (v3 != 10)
    {
      if (v3 == 12)
      {
        v5 = *(*a2 + 80);
        v6 = a2;
        v7 = a1;

        return v5(v6, v7);
      }

LABEL_31:
      __cxa_allocate_exception(0x40uLL);
      sub_1000D448C(v4, &v12);
      v9 = std::string::insert(&v12, 0, "Illegal state - how is the thrift type enum = ");
      v10 = *&v9->__r_.__value_.__l.__data_;
      v13.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v13.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v14, &v13);
      v14.__vftable = &off_1004338D0;
      sub_10010A984(v11);
    }

    v5 = *(*a2 + 96);
    v6 = a2;
    v7 = a1;
  }

  return v5(v6, v7);
}

void sub_1001CD6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error((v23 - 48));
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

uint64_t sub_1001CD768(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 == 2)
  {
    v4 = *(*a2 + 232);
    v5 = a1 + 176;
    v6 = a1 + 16;
    v7 = a2;
  }

  else
  {
    if (v3 != 1)
    {
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v10, "Unsupported ProviderPositionDataFlow");
      std::runtime_error::runtime_error(&v11, &v10);
      v11.__vftable = &off_1004336A0;
      sub_10010A984(v9);
    }

    v4 = *(*a2 + 224);
    v5 = a1 + 176;
    v6 = a1 + 16;
    v7 = a2;
  }

  return v4(v7, v5, v6);
}

void sub_1001CD8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

uint64_t sub_1001CD9D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN14EventGenerator15applyInRealTimeEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN14EventGenerator15applyInRealTimeEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN14EventGenerator15applyInRealTimeEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN14EventGenerator15applyInRealTimeEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1001CDA50(uint64_t a1)
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

__n128 sub_1001CDADC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

__n128 sub_1001CDB0C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

void sub_1001CDB24(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = v1[5];
  v3 = *v2;
  if (*v2 != v2[1])
  {
    do
    {
      v4 = v1[6];
      if (sub_10004FF1C(*v3) >= *v4)
      {
        break;
      }

      v5 = v1[7];
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_100182F0C(v1[7], v3);
      }

      else
      {
        v7 = *(v3 + 1);
        *v6 = *v3;
        v6[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
        }

        v8 = (v6 + 2);
      }

      *(v5 + 8) = v8;
      sub_1001CDC48(*v2, v2[1], &v11, (v2[1] - *v2) >> 4);
      v9 = v2[1];
      v10 = *(v9 - 8);
      if (v10)
      {
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      v2[1] = v9 - 16;
      v3 = *v2;
    }

    while (*v2 != v9 - 16);
  }
}

void sub_1001CDC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    *&v18 = *a1;
    *(&v18 + 1) = v6;
    *a1 = 0;
    *(a1 + 8) = 0;
    v9 = sub_1001CDE4C(a1, a3, a4);
    if ((a2 - 16) == v9)
    {
      v19 = 0uLL;
      v17 = *(v9 + 1);
      *v9 = v5;
      *(v9 + 1) = v6;
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }
    }

    else
    {
      v10 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v11 = *(v9 + 1);
      *v9 = v10;
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v12 = v9;
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v9 = v12;
      }

      v13 = (v9 + 1);
      v14 = v18;
      v19 = 0uLL;
      v15 = *(a2 - 8);
      *(a2 - 16) = v14;
      if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v16 = v9 + 1;
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
        v13 = v16;
      }

      sub_100051018(a1, v13, a3, (v13 - a1) >> 4);
    }

    if (*(&v19 + 1))
    {
      if (!atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(**(&v19 + 1) + 16))(*(&v19 + 1));
        std::__shared_weak_count::__release_weak(*(&v19 + 1));
      }
    }
  }
}

__int128 *sub_1001CDE4C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    a1 += v5 + 1;
    v8 = 2 * v5;
    v5 = (2 * v5) | 1;
    v9 = v8 + 2;
    if (v8 + 2 < a3)
    {
      v10 = sub_10004FF1C(*a1);
      v11 = sub_10004FF1C(*(a1 + 2));
      a1 += v11 < v10;
      if (v11 < v10)
      {
        v5 = v9;
      }
    }

    v12 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(v7 + 1);
    *v7 = v12;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  while (v5 <= v6);
  return a1;
}

BOOL sub_1001CDF5C(uint64_t *a1, int **a2)
{
  v3 = (**a2 ^ (**a2 >> 31)) - 11;
  if (v3 >= 2)
  {
    v5 = sub_10004FF1C(*a2);
    v6 = *a1;
    if (qword_10045B050 == -1)
    {
      v7 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        return v3 < 2;
      }
    }

    else
    {
      sub_100385200();
      v7 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        return v3 < 2;
      }
    }

    v8 = v5 - v6 - 100000000;
    sub_1001CC534(&__p, *a2);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v13 = p_p;
    v14 = 2048;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Dropping event '%s' from %lld ns (in the past), too out-of-sync", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return v3 < 2;
}

__n128 sub_1001CE0C0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

void sub_1001CE0D8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *v1[5];
  if (*v1[6] != v2)
  {
    v3 = v1[7];
    do
    {
      v5 = v3[1];
      if (v5 >= v3[2])
      {
        v4 = sub_100182F0C(v3, v2);
      }

      else
      {
        v6 = *(v2 + 8);
        *v5 = *v2;
        v5[1] = v6;
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
        }

        v4 = (v5 + 2);
      }

      v3[1] = v4;
      sub_100051018(*v3, v4, &v7, (v4 - *v3) >> 4);
      v2 += 16;
    }

    while (v2 != *v1[6]);
  }
}

void sub_1001CE1A0(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = *v1;
  v3 = v1[1];
  v1[1] = 0;
  v1[2] = 0;
  *v1 = 0;
  if (v2)
  {
    for (; v3 != v2; v3 -= 16)
    {
      v4 = *(v3 - 1);
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    operator delete(v2);
  }
}

__n128 sub_1001CE268(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1001CE278(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  if (*v3 == v3[1])
  {
    v4 = 0;
  }

  else
  {
    v4 = *v3;
  }

  *v2 = v4;
  return result;
}

__n128 sub_1001CE298(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

void sub_1001CE2B0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = v1[5];
  v3 = *v2;
  if (*v2 != v2[1])
  {
    while (1)
    {
      v4 = v1[6];
      if (*v4 < sub_10004FF1C(*v3))
      {
        break;
      }

      v5 = v1[7];
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_100182F0C(v1[7], v3);
      }

      else
      {
        *v6 = *v3;
        v7 = *(v3 + 1);
        v6[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
        }

        v8 = (v6 + 2);
      }

      *(v5 + 8) = v8;
      sub_1001CDC48(*v2, v2[1], &v14, (v2[1] - *v2) >> 4);
      v9 = v2[1];
      v10 = *(v9 - 8);
      if (v10)
      {
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      v2[1] = v9 - 16;
      v3 = *v2;
      if (*v2 == v9 - 16)
      {
        return;
      }
    }

    if (qword_10045B050 != -1)
    {
      sub_100385200();
    }

    v11 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      v12 = sub_10004FF1C(*v3);
      v13 = *v4;
      v14 = 134218240;
      v15 = v12;
      v16 = 2048;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Next %lld is after %lld, we're done", &v14, 0x16u);
    }
  }
}

void sub_1001CE49C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001CE50C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t *sub_1001CE57C(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  sub_1002069A4(a3, a1);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v7 = a2[1] - *a2;
  if (v7)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  a1[6] = a4;
  if (0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 4))
  {
    sub_1000474A4(v10, "");
    sub_100383A74(__p, v10);
    sub_10003F5D0(__p);
  }

  return a1;
}

void sub_1001CE694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    v17 = *v15;
    if (!*v15)
    {
LABEL_3:
      sub_1001CE6F4(v14);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v17 = *v15;
    if (!*v15)
    {
      goto LABEL_3;
    }
  }

  *(v14 + 32) = v17;
  operator delete(v17);
  sub_1001CE6F4(v14);
  _Unwind_Resume(a1);
}

void **sub_1001CE6F4(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 168;
      do
      {
        v8 = *(v3 - 44);
        if (v8 == v8 >> 31)
        {
          if (*(v3 - 128) == 1)
          {
            *(v3 - 128) = 0;
          }
        }

        else
        {
          v6 = *(v3 - 21);
          if (v8 < 0)
          {
            if (v6)
            {
              (*(*v6 + 8))(v6);
            }
          }

          else
          {
            v7 = *(v3 - 21);
            (*v6)(v3 - 168);
          }
        }

        v3 -= 208;
        v5 -= 208;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_1001CE7E0(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1001CFBC8(a1, *a3, a3[1], 0x4EC4EC4EC4EC4EC5 * ((a3[1] - *a3) >> 4));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v7 = a2[1] - *a2;
  if (v7)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  a1[6] = a4;
  if (0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 4))
  {
    sub_1000474A4(v10, "");
    sub_100383A74(__p, v10);
    sub_10003F5D0(__p);
  }

  return a1;
}

void sub_1001CE910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    v17 = *v15;
    if (!*v15)
    {
LABEL_3:
      sub_1001CE6F4(v14);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v17 = *v15;
    if (!*v15)
    {
      goto LABEL_3;
    }
  }

  *(v14 + 32) = v17;
  operator delete(v17);
  sub_1001CE6F4(v14);
  _Unwind_Resume(a1);
}

void sub_1001CE974(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *v69 = 0u;
  *v70 = 0u;
  v71 = 1065353216;
  v3 = *a1;
  if (a1[1] == *a1)
  {
    *a2 = 0uLL;
    *(a2 + 16) = 0uLL;
    *(a2 + 32) = 1065353216;
    goto LABEL_64;
  }

  v5 = 0;
LABEL_6:
  v7 = a1[3];
  if (v5 < (a1[4] - v7) >> 3)
  {
    v8 = v3 + 208 * v5;
    v9 = *(v8 + 32);
    if (v9 == v9 >> 31)
    {
      v10 = *(v8 + 120);
      v11 = *(v7 + 8 * v5);
      v68 = v10;
      v12 = v69[1];
      if (!v69[1])
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v9 >= 0)
      {
        v13 = v8 + 40;
      }

      else
      {
        v13 = *(v8 + 40);
      }

      v10 = *(v13 + 96) + 2402;
      v11 = *(v7 + 8 * v5);
      v68 = v10;
      v12 = v69[1];
      if (!v69[1])
      {
        goto LABEL_33;
      }
    }

    v14 = vcnt_s8(v12);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      v15 = v10;
      if (v12 <= v10)
      {
        v15 = v10 % v12;
      }
    }

    else
    {
      v15 = (v12 - 1) & v10;
    }

    v16 = *(v69[0] + v15);
    if (!v16 || (v17 = *v16) == 0)
    {
LABEL_33:
      *__p = 0u;
      v67 = 0u;
      *v65 = 0u;
      operator new();
    }

    if (v14.u32[0] < 2uLL)
    {
      v18 = v12 - 1;
      while (1)
      {
        v20 = v17[1];
        if (v20 == v10)
        {
          if (*(v17 + 4) == v10)
          {
            goto LABEL_34;
          }
        }

        else if ((v20 & v18) != v15)
        {
          goto LABEL_33;
        }

        v17 = *v17;
        if (!v17)
        {
          goto LABEL_33;
        }
      }
    }

    while (1)
    {
      v19 = v17[1];
      if (v19 == v10)
      {
        if (*(v17 + 4) == v10)
        {
LABEL_34:
          v22 = v17[4];
          v21 = v17[5];
          if (v22 >= v21)
          {
            v24 = v17[3];
            v25 = v22 - v24;
            v26 = (v22 - v24) >> 3;
            v27 = v26 + 1;
            if ((v26 + 1) >> 61)
            {
              sub_10000FC84();
            }

            v28 = v21 - v24;
            if (v28 >> 2 > v27)
            {
              v27 = v28 >> 2;
            }

            if (v28 >= 0x7FFFFFFFFFFFFFF8)
            {
              v29 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v27;
            }

            if (v29)
            {
              if (!(v29 >> 61))
              {
                operator new();
              }

              sub_10000D444();
            }

            v30 = (v22 - v24) >> 3;
            v31 = (8 * v26);
            v32 = (8 * v26 - 8 * v30);
            *v31 = v11;
            v23 = v31 + 1;
            memcpy(v32, v24, v25);
            v17[3] = v32;
            v17[4] = v23;
            v17[5] = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v22 = v11;
            v23 = v22 + 8;
          }

          v17[4] = v23;
          v33 = v17[7];
          if (v33 >= v17[8])
          {
            sub_1001D01B0(v17 + 6, v8);
          }

          else
          {
            v35 = (v8 + 8);
            v34 = *v8;
            if (v34 == v34 >> 31)
            {
              *(v33 + 8) = *v35;
              v36 = v34;
            }

            else
            {
              v37 = *v35;
              *(v33 + 24) = *(v8 + 24);
              *(v33 + 8) = v37;
              v36 = *v8;
              v34 = *v8 >> 31;
            }

            *v33 = v36 ^ v34;
            v38 = *(v8 + 32);
            v39 = (v8 + 40);
            if (v38 == v38 >> 31)
            {
              v40 = *(v8 + 40);
              if (v40 == v40 >> 31)
              {
                *(v33 + 48) = *(v8 + 48);
                v41 = v40;
              }

              else
              {
                v43 = *(v8 + 48);
                *(v33 + 64) = *(v8 + 64);
                *(v33 + 48) = v43;
                v41 = *v39;
                v40 = v41 >> 31;
              }

              *(v33 + 40) = v41 ^ v40;
              *(v33 + 72) = *(v8 + 72);
              *(v33 + 80) = 0;
              if (*(v8 + 80) == 1)
              {
                *(v33 + 84) = *(v8 + 84);
                *(v33 + 80) = 1;
              }

              v44 = *(v8 + 88);
              v45 = *(v8 + 104);
              *(v33 + 120) = *(v8 + 120);
              *(v33 + 104) = v45;
              *(v33 + 88) = v44;
            }

            else
            {
              if (v38 >= 0)
              {
                v42 = v8 + 40;
              }

              else
              {
                v42 = *v39;
              }

              sub_100131324(v33 + 40, v42);
            }

            *(v33 + 32) = *(v8 + 32) ^ (*(v8 + 32) >> 31);
            v6 = v33 + 208;
            v17[7] = v33 + 208;
          }

          v17[7] = v6;
          ++v5;
          v3 = *a1;
          if (v5 >= 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 4))
          {
            break;
          }

          goto LABEL_6;
        }
      }

      else
      {
        if (v19 >= v12)
        {
          v19 %= v12;
        }

        if (v19 != v15)
        {
          goto LABEL_33;
        }
      }

      v17 = *v17;
      if (!v17)
      {
        goto LABEL_33;
      }
    }
  }

  v46 = v70[0];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  for (*(a2 + 32) = 1065353216; v46; v46 = *v46)
  {
    sub_1001CE7E0(v65, v46 + 3, v46 + 6, a1[6]);
    sub_1001D0E20(a2, v46 + 4);
    if (__p[1])
    {
      *&v67 = __p[1];
      operator delete(__p[1]);
    }

    v59 = v65[0];
    if (v65[0])
    {
      v60 = v65[1];
      v58 = v65[0];
      if (v65[1] != v65[0])
      {
        v61 = v65[1] - 168;
        do
        {
          v64 = *(v60 - 44);
          if (v64 == v64 >> 31)
          {
            if (*(v60 - 128) == 1)
            {
              *(v60 - 128) = 0;
            }
          }

          else
          {
            v62 = *(v60 - 21);
            if (v64 < 0)
            {
              if (v62)
              {
                (*(*v62 + 8))(v62);
              }
            }

            else
            {
              v63 = *(v60 - 21);
              (*v62)(v60 - 168);
            }
          }

          v60 -= 208;
          v61 -= 208;
        }

        while (v60 != v59);
        v58 = v65[0];
      }

      v65[1] = v59;
      operator delete(v58);
    }
  }

LABEL_64:
  v47 = v70[0];
  if (v70[0])
  {
    do
    {
      v49 = *v47;
      v50 = v47[6];
      if (v50)
      {
        v51 = v47[7];
        v52 = v47[6];
        if (v51 != v50)
        {
          v53 = v51 - 168;
          do
          {
            v56 = *(v51 - 176);
            if (v56 == v56 >> 31)
            {
              if (*(v51 - 128) == 1)
              {
                *(v51 - 128) = 0;
              }
            }

            else
            {
              v54 = *(v51 - 168);
              if (v56 < 0)
              {
                if (v54)
                {
                  (*(*v54 + 8))(v54);
                }
              }

              else
              {
                v55 = *(v51 - 168);
                (*v54)(v51 - 168);
              }
            }

            v51 -= 208;
            v53 -= 208;
          }

          while (v51 != v50);
          v52 = v47[6];
        }

        v47[7] = v50;
        operator delete(v52);
      }

      v57 = v47[3];
      if (v57)
      {
        v47[4] = v57;
        operator delete(v57);
      }

      operator delete(v47);
      v47 = v49;
    }

    while (v49);
  }

  v48 = v69[0];
  v69[0] = 0;
  if (v48)
  {
    operator delete(v48);
  }
}

void sub_1001CF244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
    sub_1001CF9A8(&a9);
    sub_1001D0038(&a17);
    _Unwind_Resume(a1);
  }

  sub_1001CF9A8(&a9);
  sub_1001D0038(&a17);
  _Unwind_Resume(a1);
}

void sub_1001CF344(uint64_t *a1@<X0>, void *a2@<X8>)
{
  __p = 0;
  v33 = 0;
  v34 = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    v24 = 0;
    v23 = 0;
  }

  else
  {
    do
    {
      if (sub_1001CF788(v3))
      {
        v5 = *(v3 + 32);
        if (v5 == v5 >> 31)
        {
          v6 = *(v3 + 72);
        }

        else
        {
          if (v5 >= 0)
          {
            v11 = v3 + 40;
          }

          else
          {
            v11 = *(v3 + 40);
          }

          v12 = *(v11 + 92);
        }

        operator new();
      }

      v7 = v33;
      if (v33 >= v34)
      {
        sub_1001D01B0(&__p, v3);
      }

      else
      {
        v9 = (v3 + 8);
        v8 = *v3;
        if (v8 == v8 >> 31)
        {
          *(v33 + 1) = *v9;
          v10 = v8;
        }

        else
        {
          v14 = *v9;
          *(v33 + 6) = *(v3 + 24);
          *(v7 + 8) = v14;
          v10 = *v3;
          v8 = *v3 >> 31;
        }

        *v7 = v10 ^ v8;
        v15 = *(v3 + 32);
        v16 = (v3 + 40);
        if (v15 == v15 >> 31)
        {
          v17 = *(v3 + 40);
          if (v17 == v17 >> 31)
          {
            *(v7 + 6) = *(v3 + 48);
            v18 = v17;
          }

          else
          {
            v20 = *(v3 + 48);
            *(v7 + 16) = *(v3 + 64);
            *(v7 + 3) = v20;
            v18 = *v16;
            v17 = v18 >> 31;
          }

          *(v7 + 10) = v18 ^ v17;
          *(v7 + 9) = *(v3 + 72);
          v7[80] = 0;
          if (*(v3 + 80) == 1)
          {
            *(v7 + 21) = *(v3 + 84);
            v7[80] = 1;
          }

          v21 = *(v3 + 88);
          v22 = *(v3 + 104);
          *(v7 + 30) = *(v3 + 120);
          *(v7 + 104) = v22;
          *(v7 + 88) = v21;
        }

        else
        {
          if (v15 >= 0)
          {
            v19 = v3 + 40;
          }

          else
          {
            v19 = *v16;
          }

          sub_100131324(v7 + 40, v19);
        }

        *(v7 + 8) = *(v3 + 32) ^ (*(v3 + 32) >> 31);
        v13 = v7 + 208;
      }

      v33 = v13;
      v3 += 208;
    }

    while (v3 != v4);
    v23 = __p;
    v24 = v33;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1001CFBC8(a2, v23, v24, 0x4EC4EC4EC4EC4EC5 * ((v24 - v23) >> 4));
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  v25 = __p;
  if (__p)
  {
    v26 = v33;
    v27 = __p;
    if (v33 != __p)
    {
      v28 = v33 - 168;
      do
      {
        v31 = *(v26 - 44);
        if (v31 == v31 >> 31)
        {
          if (*(v26 - 128) == 1)
          {
            *(v26 - 128) = 0;
          }
        }

        else
        {
          v29 = *(v26 - 21);
          if (v31 < 0)
          {
            if (v29)
            {
              (*(*v29 + 8))(v29);
            }
          }

          else
          {
            v30 = *(v26 - 21);
            (*v29)(v26 - 168);
          }
        }

        v26 -= 208;
        v28 -= 208;
      }

      while (v26 != v25);
      v27 = __p;
    }

    v33 = v25;
    operator delete(v27);
  }
}

void sub_1001CF730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  sub_1001CE6F4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1001CF788(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != v2 >> 31)
  {
    if (v2 >= 0)
    {
      v8 = a1 + 40;
    }

    else
    {
      v8 = *(a1 + 40);
    }

    v9 = *(v8 + 92);
    goto LABEL_21;
  }

  if (*(a1 + 80) != 1)
  {
    v9 = *(a1 + 72);
LABEL_21:
    v10 = v9 == 0.0;
    if (v9 == 2000000000)
    {
      v10 = 1;
    }

    if (v9 == -1.0)
    {
      v10 = 1;
    }

    if (v9 > -20.0)
    {
      v10 = 1;
    }

    return v9 < -120.0 || v10;
  }

  if ((*(a1 + 85) & 0x10) != 0)
  {
    return 1;
  }

  v3 = *(a1 + 72);
  if (v3 >= -120.0 && v3 <= -20.0 && v3 != -1.0 && v3 != 0.0 && v3 != 2000000000)
  {
    return 0;
  }

  if (qword_10045B050 != -1)
  {
    sub_100385228();
  }

  v11 = qword_10045B058;
  v12 = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO);
  result = 1;
  if (v12)
  {
    v13 = *(a1 + 32);
    if (v13 == v13 >> 31)
    {
      v14 = *(a1 + 72);
    }

    else
    {
      v17 = *(a1 + 40);
      v16 = a1 + 40;
      v15 = v17;
      if (v13 >= 0)
      {
        v18 = v16;
      }

      else
      {
        v18 = v15;
      }

      v14 = *(v18 + 92);
    }

    v19 = 134217984;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "WARNING: WiFi chip reported OK RSSI but %f seems invalid", &v19, 0xCu);
    return 1;
  }

  return result;
}

uint64_t sub_1001CF958(double a1)
{
  v1 = a1 == 0.0;
  if (2000000000 == a1)
  {
    v1 = 1;
  }

  if (a1 == -1.0)
  {
    v1 = 1;
  }

  if (a1 > -20.0)
  {
    v1 = 1;
  }

  return a1 < -120.0 || v1;
}

uint64_t sub_1001CF9A8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      v5 = v3 - 168;
      do
      {
        v8 = *(v3 - 176);
        if (v8 == v8 >> 31)
        {
          if (*(v3 - 128) == 1)
          {
            *(v3 - 128) = 0;
          }
        }

        else
        {
          v6 = *(v3 - 168);
          if (v8 < 0)
          {
            if (v6)
            {
              (*(*v6 + 8))(v6);
            }
          }

          else
          {
            v7 = *(v3 - 168);
            (*v6)(v3 - 168);
          }
        }

        v3 -= 208;
        v5 -= 208;
      }

      while (v3 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  v9 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v9;
    operator delete(v9);
  }

  return a1;
}

void **sub_1001CFAA0(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
    v5 = *a1;
    if (v4 != v3)
    {
      v6 = v4 - 168;
      do
      {
        v9 = *(v4 - 44);
        if (v9 == v9 >> 31)
        {
          if (*(v4 - 128) == 1)
          {
            *(v4 - 128) = 0;
          }
        }

        else
        {
          v7 = *(v4 - 21);
          if (v9 < 0)
          {
            if (v7)
            {
              (*(*v7 + 8))(v7);
            }
          }

          else
          {
            v8 = *(v4 - 21);
            (*v7)(v4 - 168);
          }
        }

        v4 -= 208;
        v6 -= 208;
      }

      while (v4 != v3);
      v5 = *a1;
    }

    a1[1] = v3;
    operator delete(v5);
  }

  return a1;
}

void sub_1001CFBC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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

void sub_1001CFDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_1001CFDE4(&a11);
  *(v11 + 8) = v12;
  sub_1001CFEC4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1001CFDE4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
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

      while (v4 != v5);
    }
  }

  return a1;
}

void ***sub_1001CFEC4(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v4 - 168;
        do
        {
          v9 = *(v4 - 44);
          if (v9 == v9 >> 31)
          {
            if (*(v4 - 128) == 1)
            {
              *(v4 - 128) = 0;
            }
          }

          else
          {
            v7 = *(v4 - 21);
            if (v9 < 0)
            {
              if (v7)
              {
                (*(*v7 + 8))(v7);
              }
            }

            else
            {
              v8 = *(v4 - 21);
              (*v7)(v4 - 168);
            }
          }

          v4 -= 208;
          v6 -= 208;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

BOOL sub_1001CFFC4(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void **sub_1001D0038(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1001D00A0(a1, v2 + 2);
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

void sub_1001D00A0(uint64_t a1, void *a2)
{
  v3 = a2[4];
  if (v3)
  {
    v4 = a2[5];
    v5 = a2[4];
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
      v5 = a2[4];
    }

    a2[5] = v3;
    operator delete(v5);
  }

  v10 = a2[1];
  if (v10)
  {
    a2[2] = v10;

    operator delete(v10);
  }
}

double sub_1001D01B0(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x13B13B13B13B13BLL)
  {
    sub_10000FC84();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 4);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 4)) >= 0x9D89D89D89D89DLL)
  {
    v5 = 0x13B13B13B13B13BLL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x13B13B13B13B13BLL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *(&v21 + 1) = 0;
  v8 = (a2 + 8);
  v7 = *a2;
  v9 = *a2 >> 31;
  if (v7 >> 31 == v7)
  {
    *(16 * ((a1[1] - *a1) >> 4) + 8) = *v8;
    v9 = v7;
  }

  else
  {
    *(16 * ((a1[1] - *a1) >> 4) + 8) = *v8;
    *(v6 + 24) = *(a2 + 24);
  }

  *v6 = v9 ^ v7;
  v10 = *(a2 + 32);
  v11 = v10 >> 31;
  if (v10 >> 31 == v10)
  {
    v12 = *(a2 + 40);
    v13 = v12 >> 31;
    if (v12 >> 31 == v12)
    {
      *(v6 + 48) = *(a2 + 48);
      v13 = v12;
    }

    else
    {
      *(v6 + 48) = *(a2 + 48);
      *(v6 + 64) = *(a2 + 64);
    }

    *(v6 + 40) = v13 ^ v12;
    *(v6 + 72) = *(a2 + 72);
    *(v6 + 80) = 0;
    if (*(a2 + 80) == 1)
    {
      *(v6 + 84) = *(a2 + 84);
      *(v6 + 80) = 1;
    }

    *(v6 + 88) = *(a2 + 88);
    *(v6 + 104) = *(a2 + 104);
    *(v6 + 120) = *(a2 + 120);
    v15 = v6;
    v16 = v6;
  }

  else
  {
    if (v10 >= 0)
    {
      v14 = a2 + 40;
    }

    else
    {
      v14 = *(a2 + 40);
    }

    sub_100131324(v6 + 40, v14);
    v10 = *(a2 + 32);
    v15 = v6;
    v16 = v6;
    v11 = v10 >> 31;
  }

  *(v6 + 32) = v11 ^ v10;
  *&v21 = v16 + 208;
  v17 = a1[1];
  v18 = v15 + *a1 - v17;
  sub_1001D03F8(a1, *a1, v17, v18);
  v19 = *a1;
  *a1 = v18;
  result = *&v21;
  *(a1 + 1) = v21;
  if (v19)
  {
    operator delete(v19);
    return *&v21;
  }

  return result;
}

void sub_1001D03E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001D06E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D03F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v7 = a2;
    do
    {
      v12 = (v7 + 8);
      v11 = *v7;
      if (v11 == v11 >> 31)
      {
        *(v4 + 8) = *v12;
        v13 = v11;
      }

      else
      {
        v14 = *v12;
        *(v4 + 24) = *(v7 + 24);
        *(v4 + 8) = v14;
        v13 = *v7;
        v11 = *v7 >> 31;
      }

      *v4 = v13 ^ v11;
      result = v4 + 40;
      v15 = *(v7 + 32);
      v16 = (v7 + 40);
      if (v15 == v15 >> 31)
      {
        v17 = *(v7 + 40);
        if (v17 == v17 >> 31)
        {
          *(v4 + 48) = *(v7 + 48);
          v18 = v17;
        }

        else
        {
          v20 = *(v7 + 48);
          *(v4 + 64) = *(v7 + 64);
          *(v4 + 48) = v20;
          v18 = *v16;
          v17 = v18 >> 31;
        }

        *(v4 + 40) = v18 ^ v17;
        *(v4 + 72) = *(v7 + 72);
        *(v4 + 80) = 0;
        if (*(v7 + 80) == 1)
        {
          *(v4 + 84) = *(v7 + 84);
          *(v4 + 80) = 1;
        }

        v8 = *(v7 + 88);
        v9 = *(v7 + 104);
        *(v4 + 120) = *(v7 + 120);
        *(v4 + 104) = v9;
        *(v4 + 88) = v8;
        v10 = v4;
      }

      else
      {
        if (v15 >= 0)
        {
          v19 = v7 + 40;
        }

        else
        {
          v19 = *v16;
        }

        result = sub_100131324(result, v19);
        v10 = v26;
      }

      *(v4 + 32) = *(v7 + 32) ^ (*(v7 + 32) >> 31);
      v7 += 208;
      v4 = v10 + 208;
      v26 = v10 + 208;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v21 = a2 + 40;
      v22 = a2 + 40;
      do
      {
        v25 = *(v22 - 8);
        if (v25 == v25 >> 31)
        {
          if (*(v22 + 40) == 1)
          {
            *(v22 + 40) = 0;
          }
        }

        else
        {
          result = *v22;
          if (v25 < 0)
          {
            if (result)
            {
              result = (*(*result + 8))(result);
            }
          }

          else
          {
            v23 = *v22;
            result = (*result)(v22);
          }
        }

        v24 = v22 + 168;
        v22 += 208;
        v21 += 208;
      }

      while (v24 != a3);
    }
  }

  return result;
}

uint64_t sub_1001D06E4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 208;
    v4 = *(v2 - 176);
    if (v4 == v4 >> 31)
    {
      if (*(v2 - 128) != 1)
      {
        goto LABEL_2;
      }

      *(v2 - 128) = 0;
      v2 = *(a1 + 16);
    }

    else
    {
      v7 = *(v2 - 168);
      v6 = v2 - 168;
      v5 = v7;
      if (v4 < 0)
      {
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }

LABEL_2:
        v2 = *(a1 + 16);
      }

      else
      {
        (*v5)(v6);
        v2 = *(a1 + 16);
      }
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_1001D07B8(void *a1, int *a2)
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
    operator new();
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

void sub_1001D0B00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D0B28(va);
  _Unwind_Resume(a1);
}

void sub_1001D0B14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D0B28(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D0B28(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1001D00A0(*(a1 + 8), v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1001D0B7C(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_1001CFBC8((a1 + 3), a2[3], a2[4], 0x4EC4EC4EC4EC4EC5 * ((a2[4] - a2[3]) >> 4));
  return a1;
}

void sub_1001D0C38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1001D0C58@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1001D0C8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_1001D0CA8(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1001D0D10(a1, v2 + 2);
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

void sub_1001D0D10(uint64_t a1, void *a2)
{
  v3 = a2[4];
  if (v3)
  {
    a2[5] = v3;
    operator delete(v3);
  }

  v4 = a2[1];
  if (v4)
  {
    v5 = a2[2];
    v6 = a2[1];
    if (v5 != v4)
    {
      v7 = v5 - 168;
      do
      {
        v10 = *(v5 - 176);
        if (v10 == v10 >> 31)
        {
          if (*(v5 - 128) == 1)
          {
            *(v5 - 128) = 0;
          }
        }

        else
        {
          v8 = *(v5 - 168);
          if (v10 < 0)
          {
            if (v8)
            {
              (*(*v8 + 8))(v8);
            }
          }

          else
          {
            v9 = *(v5 - 168);
            (*v8)(v5 - 168);
          }
        }

        v5 -= 208;
        v7 -= 208;
      }

      while (v5 != v4);
      v6 = a2[1];
    }

    a2[2] = v4;

    operator delete(v6);
  }
}

uint64_t *sub_1001D0E20(void *a1, int *a2)
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

void sub_1001D1178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D118C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D118C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1001D0D10(*(a1 + 8), v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1001D11E0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001D1250()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void *sub_1001D12C0(void *result, void *a2, void *a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  v4 = a3[1] - *a3;
  if (v4)
  {
    if (0xCCCCCCCCCCCCCCCDLL * (v4 >> 5) < 0x19999999999999ALL)
    {
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_1001D1454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    v17 = *v15;
    if (!*v15)
    {
LABEL_3:
      v18 = *v14;
      if (!*v14)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v17 = *v15;
    if (!*v15)
    {
      goto LABEL_3;
    }
  }

  *(v14 + 32) = v17;
  operator delete(v17);
  v18 = *v14;
  if (!*v14)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  *(v14 + 8) = v18;
  operator delete(v18);
  goto LABEL_5;
}

void sub_1001D14B8()
{
  if (!*v0)
  {
    JUMPOUT(0x1001D1478);
  }

  JUMPOUT(0x1001D1470);
}

void sub_1001D14CC(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (a1[1] == *a1)
  {
    v9 = 0;
    goto LABEL_26;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    if (sub_100232884(*(v4 + 8 * v8)) == a2)
    {
      v11 = (a1[3] + v7);
      v12 = v10 - v9;
      v13 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v9) >> 5);
      v14 = v13 + 1;
      if (v13 + 1 > 0x199999999999999)
      {
        sub_10000FC84();
      }

      if (0x999999999999999ALL * (-v9 >> 5) > v14)
      {
        v14 = 0x999999999999999ALL * (-v9 >> 5);
      }

      if (0xCCCCCCCCCCCCCCCDLL * (-v9 >> 5) >= 0xCCCCCCCCCCCCCCLL)
      {
        v15 = 0x199999999999999;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        if (v15 <= 0x199999999999999)
        {
          operator new();
        }

        sub_10000D444();
      }

      v16 = 160 * v13;
      v17 = v11[1];
      *v16 = *v11;
      *(v16 + 16) = v17;
      v18 = v11[2];
      v19 = v11[3];
      v20 = v11[5];
      *(v16 + 64) = v11[4];
      *(v16 + 80) = v20;
      *(v16 + 32) = v18;
      *(v16 + 48) = v19;
      v21 = v11[6];
      v22 = v11[7];
      v23 = v11[9];
      *(v16 + 128) = v11[8];
      *(v16 + 144) = v23;
      *(v16 + 96) = v21;
      *(v16 + 112) = v22;
      v10 = 160 * v13 + 160;
      v24 = (v16 + 160 * (v12 / -160));
      memcpy(v24, v9, v12);
      if (v9)
      {
        operator delete(v9);
      }

      v9 = v24;
    }

    ++v8;
    v4 = *a1;
    v7 += 160;
  }

  while (v8 < (a1[1] - *a1) >> 3);
  if (v9 == v10)
  {
LABEL_26:
    *a3 = xmmword_1003D7F40;
    *(a3 + 16) = xmmword_1003D7F40;
    *(a3 + 32) = xmmword_1003D7F40;
    *(a3 + 48) = xmmword_1003D7F40;
    *(a3 + 64) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 104) = 0;
    *(a3 + 112) = 0;
    *(a3 + 128) = 0;
    *(a3 + 136) = 0;
    *(a3 + 152) = 0;
    if (!v9)
    {
      return;
    }

    goto LABEL_27;
  }

  v25 = (v9 + 160);
  v26 = v9;
  if (v9 + 160 != v10)
  {
    v26 = v9;
    do
    {
      if (*(v26 + 8) < v25[1])
      {
        v26 = v25;
      }

      v25 += 20;
    }

    while (v25 != v10);
  }

  v27 = *(v26 + 16);
  *a3 = *v26;
  *(a3 + 16) = v27;
  v28 = *(v26 + 32);
  v29 = *(v26 + 48);
  v30 = *(v26 + 80);
  *(a3 + 64) = *(v26 + 64);
  *(a3 + 80) = v30;
  *(a3 + 32) = v28;
  *(a3 + 48) = v29;
  v31 = *(v26 + 96);
  v32 = *(v26 + 112);
  v33 = *(v26 + 144);
  *(a3 + 128) = *(v26 + 128);
  *(a3 + 144) = v33;
  *(a3 + 96) = v31;
  *(a3 + 112) = v32;
  if (v9)
  {
LABEL_27:

    operator delete(v9);
  }
}

void sub_1001D1770(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001D178C(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v4 = (a1[1] - *a1);
  prime = v4;
  if (v4 == 1)
  {
    prime = 2;
LABEL_17:
    sub_10000FE58(a2, prime);
    goto LABEL_18;
  }

  if ((prime & (v4 - 1)) != 0)
  {
    prime = std::__next_prime(v4);
    v6 = *(a2 + 8);
    v7 = prime >= *&v6;
    if (prime > *&v6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
    v7 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v7)
  {
    v8 = vcvtps_u32_f32(*(a2 + 24) / *(a2 + 32));
    if (*&v6 < 3uLL || (v9 = vcnt_s8(v6), v9.i16[0] = vaddlv_u8(v9), v9.u32[0] > 1uLL))
    {
      v8 = std::__next_prime(v8);
    }

    else
    {
      v10 = 1 << -__clz(v8 - 1);
      if (v8 >= 2)
      {
        v8 = v10;
      }
    }

    if (prime <= v8)
    {
      prime = v8;
    }

    if (prime < *&v6)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  if (a1[1] != *a1)
  {
    v11 = **a1;
    v12 = a1[3];
    sub_1001D1900();
  }
}

const void ***sub_1001D1B1C(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v4);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    if (v4 <= a2)
    {
      v8 = a2 % v4;
    }

    else
    {
      v8 = a2;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = (v4 - 1) & a2;
    v9 = *(*a1 + 8 * v8);
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v10 = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      while (1)
      {
        v11 = v10[1];
        if (v11 == a2)
        {
          if (sub_1001182C8(v10 + 2, a3))
          {
            return v10;
          }
        }

        else if ((v11 & (v4 - 1)) != v8)
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

    do
    {
      v12 = v10[1];
      if (v12 == a2)
      {
        if (sub_1001182C8(v10 + 2, a3))
        {
          return v10;
        }
      }

      else
      {
        if (v12 >= v4)
        {
          v12 %= v4;
        }

        if (v12 != v8)
        {
          break;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

LABEL_23:
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (v4 && (v14 * v4) >= v13)
  {
    return 0;
  }

  v15 = 1;
  if (v4 >= 3)
  {
    v15 = (v4 & (v4 - 1)) != 0;
  }

  v16 = v15 | (2 * v4);
  v17 = vcvtps_u32_f32(v13 / v14);
  if (v16 <= v17)
  {
    prime = v17;
  }

  else
  {
    prime = v16;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v19 = *(a1 + 8);
  if (prime <= *&v19)
  {
    if (prime >= *&v19)
    {
      return 0;
    }

    v20 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v19 < 3uLL || (v21 = vcnt_s8(v19), v21.i16[0] = vaddlv_u8(v21), v21.u32[0] > 1uLL))
    {
      v23 = prime;
      v24 = std::__next_prime(v20);
      if (v23 <= v24)
      {
        prime = v24;
      }

      else
      {
        prime = v23;
      }

      if (prime >= *&v19)
      {
        return 0;
      }
    }

    else
    {
      v22 = 1 << -__clz(v20 - 1);
      if (v20 >= 2)
      {
        v20 = v22;
      }

      if (prime <= v20)
      {
        prime = v20;
      }

      if (prime >= *&v19)
      {
        return 0;
      }
    }
  }

  sub_10000FE58(a1, prime);
  return 0;
}

void sub_1001D1D50()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001D1DC0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

_BYTE *sub_1001D1E30(uint64_t a1)
{
  if (*(a1 + 456) == 1)
  {
    v1 = a1 + 456;
    if (*(a1 + 304) == 1 && *(a1 + 472) <= *(a1 + 320))
    {
      v1 = a1 + 304;
    }

    v2 = (a1 + 152);
    if (*v1 != 1)
    {
      return v2;
    }
  }

  else
  {
    v1 = a1 + 304;
    v2 = (a1 + 152);
    if (*(a1 + 304) != 1)
    {
      return v2;
    }
  }

  if (*v2 != 1)
  {
    return v1;
  }

  if (*(v1 + 16) > *(a1 + 168))
  {
    return v1;
  }

  return v2;
}

uint64_t sub_1001D1EB8(uint64_t result)
{
  if (*(result + 456) != 1)
  {
    v1 = result + 304;
    v2 = result + 152;
    if (*(result + 304) == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_4;
  }

  v1 = result + 456;
  if (*(result + 304) == 1)
  {
    if (*(result + 472) <= *(result + 320))
    {
      v1 = result + 304;
    }

    v2 = result + 152;
    if (*v1 == 1)
    {
      goto LABEL_14;
    }

LABEL_4:
    if (*v2 != 1)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = result + 152;
  if (*v1 != 1)
  {
    goto LABEL_4;
  }

LABEL_14:
  if (*v2 != 1)
  {
    v2 = v1;
    if (*v1 != 1)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (*(v1 + 16) > *(result + 168))
  {
    v2 = v1;
  }

  if (*v2 == 1)
  {
LABEL_5:
    if (*result == 1)
    {
      if (*(v2 + 16) > *(result + 16))
      {
        return v2;
      }
    }

    else
    {
      return v2;
    }
  }

  return result;
}

void sub_1001D1F94(_BYTE *a1, uint64_t a2)
{
  if ((*(a2 + 136) & 0x10) == 0)
  {
    goto LABEL_33;
  }

  v4 = (a2 + 64);
  std::to_string(&v27, 1u);
  v5 = *(a2 + 87);
  if (v5 >= 0)
  {
    v6 = *(a2 + 87);
  }

  else
  {
    v6 = *(a2 + 72);
  }

  size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  v8 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v27.__r_.__value_.__l.__size_;
  }

  if (v6 != size || (v5 >= 0 ? (v9 = (a2 + 64)) : (v9 = *v4), (v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v10 = &v27) : (v10 = v27.__r_.__value_.__r.__words[0]), memcmp(v9, v10, v6)))
  {
    std::to_string(&__p, 9u);
    v11 = *(a2 + 87);
    if (v11 >= 0)
    {
      v12 = *(a2 + 87);
    }

    else
    {
      v12 = *(a2 + 72);
    }

    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = __p.__r_.__value_.__l.__size_;
    }

    if (v12 == v13)
    {
      if (v11 >= 0)
      {
        v15 = (a2 + 64);
      }

      else
      {
        v15 = *v4;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v17 = memcmp(v15, p_p, v12) == 0;
      if ((v14 & 0x80000000) == 0)
      {
LABEL_31:
        if ((*(&v27.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_32;
        }

LABEL_39:
        operator delete(v27.__r_.__value_.__l.__data_);
        if (v17)
        {
          goto LABEL_33;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v17 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_31;
  }

  v17 = 1;
  if (v8 < 0)
  {
    goto LABEL_39;
  }

LABEL_32:
  if (v17)
  {
LABEL_33:
    if (a1[152] != 1)
    {
      sub_10013DFD8(a1 + 160, a2);
      a1[152] = 1;
      return;
    }

    v18 = (a1 + 160);
LABEL_35:
    sub_10013DFDC(v18, a2);
    return;
  }

LABEL_40:
  if ((*(a2 + 136) & 0x10) == 0)
  {
    return;
  }

  std::to_string(&v27, 4u);
  v19 = *(a2 + 87);
  if (v19 >= 0)
  {
    v20 = *(a2 + 87);
  }

  else
  {
    v20 = *(a2 + 72);
  }

  v21 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  v22 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = v27.__r_.__value_.__l.__size_;
  }

  if (v20 != v21)
  {
    v25 = 0;
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (v19 >= 0)
  {
    v23 = (a2 + 64);
  }

  else
  {
    v23 = *v4;
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v27;
  }

  else
  {
    v24 = v27.__r_.__value_.__r.__words[0];
  }

  v25 = memcmp(v23, v24, v20) == 0;
  if (v22 < 0)
  {
LABEL_56:
    operator delete(v27.__r_.__value_.__l.__data_);
  }

LABEL_57:
  if (v25)
  {
    v18 = (a1 + 8);
    if (*a1 != 1)
    {
      sub_10013DFD8(v18, a2);
      *a1 = 1;
      return;
    }

    goto LABEL_35;
  }
}

void sub_1001D21DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001D21F8(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = off_1004420E0;
  a1[1] = off_1004421F8;
  a1[2] = sub_10025182C(*a3);
  if (a2)
  {
    a1[4] = 0;
    a1[3] = a2;
    a1[5] = 0;
    sub_10031D5E4((a1 + 7));
    v6 = *a3;
    operator new();
  }

  sub_1003846E0(__p, buf);
  sub_1000BA6B0(__p);
}

void sub_1001D2974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1001E05C4(v20);
  sub_1001D2E70(v18 + 184);
  v22 = *(v18 + 176);
  *(v18 + 176) = 0;
  if (v22)
  {
    (*(*v22 + 16))(v22);
  }

  sub_1001DF4C4((v18 + 168));
  sub_10002BB1C(v18 + 152);
  sub_10002BB1C(v18 + 136);
  sub_10002BB1C(v18 + 120);
  nullsub_73(v19 + 24);
  sub_10002BB1C(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D2E70(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      v5 = v3 - 95;
      v6 = v3 - 95;
      do
      {
        (**v6)(v6);
        v5 -= 95;
        v7 = v6 == v2;
        v6 -= 95;
      }

      while (!v7);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1001D2F08(uint64_t a1)
{
  *a1 = off_1004420E0;
  *(a1 + 8) = off_1004421F8;
  sub_1000456A8(*(a1 + 2528), a1 + 8);
  v2 = *(a1 + 2536);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 2440);
  if (v3)
  {
    do
    {
      v25 = *v3;
      sub_1001C9068((v3 + 5));
      if (*(v3 + 39) < 0)
      {
        operator delete(v3[2]);
      }

      operator delete(v3);
      v3 = v25;
    }

    while (v25);
  }

  v4 = *(a1 + 2424);
  *(a1 + 2424) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  sub_100127BE8(a1 + 2240);
  v5 = *(a1 + 2224);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (*(a1 + 2160) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*(a1 + 2160) == 1)
  {
LABEL_10:
    *(a1 + 2160) = 0;
  }

LABEL_11:
  v6 = *(a1 + 2152);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (*(a1 + 2072) != 1)
    {
      goto LABEL_21;
    }
  }

  else if (*(a1 + 2072) != 1)
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 2136);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(a1 + 2120);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  nullsub_76(a1 + 2080);
  *(a1 + 2072) = 0;
LABEL_21:
  v9 = *(a1 + 2048);
  if (v9)
  {
    do
    {
      v10 = *v9;
      nullsub_75(v9 + 3);
      operator delete(v9);
      v9 = v10;
    }

    while (v10);
  }

  v11 = *(a1 + 2032);
  *(a1 + 2032) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  if (*(a1 + 2016) == 1)
  {
    *(a1 + 2016) = 0;
    if (*(a1 + 2000) != 1)
    {
LABEL_27:
      if (*(a1 + 1984) != 1)
      {
        goto LABEL_28;
      }

      goto LABEL_99;
    }
  }

  else if (*(a1 + 2000) != 1)
  {
    goto LABEL_27;
  }

  *(a1 + 2000) = 0;
  if (*(a1 + 1984) != 1)
  {
LABEL_28:
    if (*(a1 + 1968) != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(a1 + 1984) = 0;
  if (*(a1 + 1968) != 1)
  {
LABEL_29:
    v12 = *(a1 + 1944);
    if (!v12)
    {
      goto LABEL_30;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(a1 + 1968) = 0;
  v12 = *(a1 + 1944);
  if (!v12)
  {
LABEL_30:
    v13 = *(a1 + 1920);
    if (!v13)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_101:
  v42 = *(a1 + 1952);
  v43 = v12;
  if (v42 != v12)
  {
    do
    {
      v44 = *(v42 - 1);
      if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v44->__on_zero_shared)(v44);
        std::__shared_weak_count::__release_weak(v44);
      }

      v42 -= 16;
    }

    while (v42 != v12);
    v43 = *(a1 + 1944);
  }

  *(a1 + 1952) = v12;
  operator delete(v43);
  v13 = *(a1 + 1920);
  if (v13)
  {
LABEL_31:
    *(a1 + 1928) = v13;
    operator delete(v13);
  }

LABEL_32:
  std::mutex::~mutex((a1 + 1856));
  v14 = *(a1 + 1832);
  if (v14)
  {
    *(a1 + 1840) = v14;
    operator delete(v14);
  }

  std::mutex::~mutex((a1 + 1768));
  v15 = *(a1 + 1744);
  if (v15)
  {
    *(a1 + 1752) = v15;
    operator delete(v15);
  }

  std::mutex::~mutex((a1 + 1680));
  v16 = *(a1 + 1656);
  if (v16)
  {
    *(a1 + 1664) = v16;
    operator delete(v16);
  }

  std::mutex::~mutex((a1 + 1592));
  if (*(a1 + 1536) == 1)
  {
    v17 = *(a1 + 1568);
    if (v17)
    {
      *(a1 + 1576) = v17;
      operator delete(v17);
    }

    v18 = *(a1 + 1544);
    if (v18)
    {
      *(a1 + 1552) = v18;
      operator delete(v18);
    }

    *(a1 + 1536) = 0;
  }

  v19 = *(a1 + 1528);
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = *(a1 + 1512);
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    if (*(a1 + 1352) != 1)
    {
LABEL_50:
      if (*(a1 + 1200) != 1)
      {
        goto LABEL_51;
      }

      goto LABEL_131;
    }
  }

  else if (*(a1 + 1352) != 1)
  {
    goto LABEL_50;
  }

  sub_10013CFA4(a1 + 1360);
  *(a1 + 1352) = 0;
  if (*(a1 + 1200) != 1)
  {
LABEL_51:
    if (*(a1 + 1048) != 1)
    {
      goto LABEL_52;
    }

    goto LABEL_132;
  }

LABEL_131:
  sub_10013CFA4(a1 + 1208);
  *(a1 + 1200) = 0;
  if (*(a1 + 1048) != 1)
  {
LABEL_52:
    if (*(a1 + 896) != 1)
    {
      goto LABEL_53;
    }

    goto LABEL_133;
  }

LABEL_132:
  sub_10013CFA4(a1 + 1056);
  *(a1 + 1048) = 0;
  if (*(a1 + 896) != 1)
  {
LABEL_53:
    if (*(a1 + 688) != 1)
    {
      goto LABEL_54;
    }

    goto LABEL_134;
  }

LABEL_133:
  sub_10013CFA4(a1 + 904);
  *(a1 + 896) = 0;
  if (*(a1 + 688) != 1)
  {
LABEL_54:
    sub_10017E864((a1 + 680));
    if (*(a1 + 664) != 1)
    {
      goto LABEL_55;
    }

    goto LABEL_135;
  }

LABEL_134:
  sub_10012E8E4(a1 + 696);
  *(a1 + 688) = 0;
  sub_10017E864((a1 + 680));
  if (*(a1 + 664) != 1)
  {
LABEL_55:
    if (*(a1 + 648) != 1)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_135:
  *(a1 + 664) = 0;
  if (*(a1 + 648) == 1)
  {
LABEL_56:
    *(a1 + 648) = 0;
  }

LABEL_57:
  sub_1002332B4(a1 + 528);
  sub_1001DF3E8(a1 + 328);
  v21 = *(a1 + 296);
  *(a1 + 296) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v22)
  {
    sub_100213A34();
    operator delete();
  }

  v23 = *(a1 + 264);
  if (v23)
  {
    for (i = *(a1 + 272); i != v23; i -= 88)
    {
      if (*(i - 64) == 1)
      {
        *(i - 64) = 0;
      }
    }

    *(a1 + 272) = v23;
    operator delete(v23);
  }

  v26 = *(a1 + 256);
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (*(a1 + 224))
  {
    sub_1001DD2F0((a1 + 224));
    operator delete(*(a1 + 224));
  }

  v27 = *(a1 + 192);
  if (v27)
  {
    v28 = *(a1 + 200);
    v29 = *(a1 + 192);
    if (v28 != v27)
    {
      v30 = v28 - 95;
      v31 = v28 - 95;
      do
      {
        (**v31)(v31);
        v30 -= 95;
        v32 = v31 == v27;
        v31 -= 95;
      }

      while (!v32);
      v29 = *(a1 + 192);
    }

    *(a1 + 200) = v27;
    operator delete(v29);
  }

  v33 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v33)
  {
    (*(*v33 + 16))(v33);
  }

  v34 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v34)
  {
    v35 = *(v34 + 8);
    if (v35)
    {
      v36 = *(v34 + 16);
      v37 = *(v34 + 8);
      if (v36 != v35)
      {
        v38 = v36 - 168;
        do
        {
          v41 = *(v36 - 176);
          if (v41 == v41 >> 31)
          {
            if (*(v36 - 128) == 1)
            {
              *(v36 - 128) = 0;
            }
          }

          else
          {
            v39 = *(v36 - 168);
            if (v41 < 0)
            {
              if (v39)
              {
                (*(*v39 + 8))(v39);
              }
            }

            else
            {
              v40 = *(v36 - 168);
              (*v39)(v36 - 168);
            }
          }

          v36 -= 208;
          v38 -= 208;
        }

        while (v36 != v35);
        v37 = *(v34 + 8);
      }

      *(v34 + 16) = v35;
      operator delete(v37);
    }

    operator delete();
  }

  v45 = *(a1 + 160);
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

  v46 = *(a1 + 144);
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  v47 = *(a1 + 128);
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  nullsub_73(a1 + 56);
  v48 = *(a1 + 40);
  if (!v48 || atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v48->__on_zero_shared)(v48);
  std::__shared_weak_count::__release_weak(v48);
  return a1;
}

void sub_1001D3894(uint64_t a1)
{
  sub_1001D2F08(a1);

  operator delete();
}

void sub_1001D38CC(uint64_t a1)
{
  sub_1001D2F08(a1 - 8);

  operator delete();
}

void sub_1001D3D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1001D3DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1001D3DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  sub_1001D3E18(va1);
  sub_10002BB1C(va2);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1001D3DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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
  sub_10002BB1C(va1);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1001D3E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D3E18(uint64_t a1)
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

uint64_t sub_1001D3EA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = result;
  if (*(result + 2160))
  {
    v4 = *(result + 2168) == a2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    sub_1001D9AB0(result);
    v5 = *(v3 + 24);
    v6 = nullsub_35(v3 + 1544);
    (*(*v5 + 32))(&v65, v5, v6);
    v7 = *(v3 + 48);
    if (v7 == 1)
    {
      v9 = v65;
      v10 = v66;
      if (v65 != v66)
      {
        v11 = *(v3 + 1952);
        do
        {
          v12 = *(v3 + 1944);
          v13 = *v9;
          if (v12 == v11)
          {
            goto LABEL_22;
          }

          v14 = *(v3 + 1944);
          while (*v14 != v13)
          {
            v14 += 16;
            if (v14 == v11)
            {
              goto LABEL_22;
            }
          }

          if (v14 == v11)
          {
LABEL_22:
            v15 = *(v3 + 1960);
            if (v11 >= v15)
            {
              v17 = (v11 - v12) >> 4;
              if ((v17 + 1) >> 60)
              {
                sub_10000FC84();
              }

              v18 = v15 - v12;
              v19 = v18 >> 3;
              if (v18 >> 3 <= (v17 + 1))
              {
                v19 = v17 + 1;
              }

              if (v18 >= 0x7FFFFFFFFFFFFFF0)
              {
                v20 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v20 = v19;
              }

              if (v20)
              {
                if (!(v20 >> 60))
                {
                  operator new();
                }

                sub_10000D444();
              }

              v24 = (16 * v17);
              *v24 = v13;
              v25 = v9[1];
              v24[1] = v25;
              if (v25)
              {
                atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
              }

              v11 = (v24 + 2);
              v21 = *(v3 + 1944);
              v22 = *(v3 + 1952) - v21;
              v23 = v24 - v22;
              memcpy(v24 - v22, v21, v22);
              *(v3 + 1944) = v23;
              *(v3 + 1952) = v11;
              *(v3 + 1960) = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              *v11 = v13;
              v16 = v9[1];
              *(v11 + 1) = v16;
              if (v16)
              {
                atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
              }

              v11 += 16;
            }

            *(v3 + 1952) = v11;
          }

          v9 += 2;
        }

        while (v9 != v10);
      }
    }

    else if (!v7 && (v3 + 1944) != &v65)
    {
      sub_1001E3D54(v3 + 1944, v65, v66, (v66 - v65) >> 4);
    }

    *a3 = 0;
    a3[1] = 0;
    if ((sub_100251B2C(*(v3 + 248)) & 1) == 0)
    {
      sub_1001D178C((v3 + 1544), &v54);
      operator new();
    }

    (*(**(v3 + 120) + 16))(&v63);
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v26 = v64;
    if (v63 == v64)
    {
LABEL_84:
      sub_1001D178C((v3 + 1544), &v54);
      operator new();
    }

    v27 = 0;
    v28 = v63 + 40;
    while (1)
    {
      while (1)
      {
        v30 = *(v28 - 8);
        if (v30 == v30 >> 31)
        {
          v31 = *(v28 + 32);
        }

        else
        {
          v32 = v30 >= 0 ? v28 : *v28;
          v31 = *(v32 + 92);
        }

        v33 = v61;
        if (sub_1001CF958(v31))
        {
          break;
        }

        if (v61 >= v62)
        {
          v41 = v60;
          v42 = v61 - v60;
          v43 = (v61 - v60) >> 3;
          v44 = v43 + 1;
          if ((v43 + 1) >> 61)
          {
            sub_10000FC84();
          }

          v45 = v62 - v60;
          if ((v62 - v60) >> 2 > v44)
          {
            v44 = v45 >> 2;
          }

          if (v45 >= 0x7FFFFFFFFFFFFFF8)
          {
            v46 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v46 = v44;
          }

          if (v46)
          {
            if (!(v46 >> 61))
            {
              operator new();
            }

            sub_10000D444();
          }

          v49 = (8 * v43);
          v50 = &v49[-((v61 - v60) >> 3)];
          *v49 = 0x3FF0000000000000;
          v40 = v49 + 1;
          memcpy(v50, v41, v42);
          v60 = v50;
          v61 = v40;
          v62 = 0;
          if (v41)
          {
            operator delete(v41);
          }
        }

        else
        {
          *v61 = 0x3FF0000000000000;
          v40 = v33 + 1;
        }

        v61 = v40;
        ++v27;
        v28 += 208;
        if (v28 - 40 == v26)
        {
LABEL_78:
          if (v27)
          {
            sub_1001CE970(&v55, &v60, &v63, a2);
            memset(v53, 0, 24);
            sub_1001CFBC8(v53, v55, v56, 0x4EC4EC4EC4EC4EC5 * ((v56 - v55) >> 4));
            memset(&v53[3], 0, 24);
            if (v58 != v57)
            {
              if (((v58 - v57) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              sub_10000FC84();
            }

            v53[6] = v59;
            sub_100225DBC(&v54, v53, 0, 1.0);
            operator new();
          }

          goto LABEL_84;
        }
      }

      if (v61 >= v62)
      {
        v34 = v60;
        v35 = v61 - v60;
        v36 = (v61 - v60) >> 3;
        v37 = v36 + 1;
        if ((v36 + 1) >> 61)
        {
          sub_10000FC84();
        }

        v38 = v62 - v60;
        if ((v62 - v60) >> 2 > v37)
        {
          v37 = v38 >> 2;
        }

        if (v38 >= 0x7FFFFFFFFFFFFFF8)
        {
          v39 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v39 = v37;
        }

        if (v39)
        {
          if (!(v39 >> 61))
          {
            operator new();
          }

          sub_10000D444();
        }

        v47 = (8 * v36);
        v48 = &v47[-((v61 - v60) >> 3)];
        *v47 = 0;
        v29 = v47 + 1;
        memcpy(v48, v34, v35);
        v60 = v48;
        v61 = v29;
        v62 = 0;
        if (!v34)
        {
          goto LABEL_42;
        }

        operator delete(v34);
        v61 = v29;
        v28 += 208;
        if (v28 - 40 == v26)
        {
          goto LABEL_78;
        }
      }

      else
      {
        *v61 = 0;
        v29 = v33 + 1;
LABEL_42:
        v61 = v29;
        v28 += 208;
        if (v28 - 40 == v26)
        {
          goto LABEL_78;
        }
      }
    }
  }

  v8 = *(result + 2152);
  *a3 = *(result + 2144);
  a3[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1001D4A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  std::__shared_weak_count::~__shared_weak_count(v27);
  operator delete(v30);
  sub_1001CFAA0(&a18);
  sub_1001CFAA0(&a11);
  sub_1001CFAA0(&a27);
  v31 = *(v28 - 168);
  if (v31)
  {
    *(v28 - 160) = v31;
    operator delete(v31);
  }

  sub_1001CE6F4((v28 - 144));
  sub_10002BB1C(a10);
  sub_100048F1C((v28 - 120));
  _Unwind_Resume(a1);
}

uint64_t sub_1001D4BF8(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 648) != 1 || a2 - *(result + 656) >= *(result + 16))
  {
    if (*(result + 1984) != 1)
    {
LABEL_5:
      *(result + 2176) = 0;
      if ((*(result + 2000) & 1) == 0)
      {
        *(result + 2177) = 0;
        goto LABEL_56;
      }

      v4 = *(result + 2008);
      *(result + 2177) = v4 < a2;
      if (v4 >= a2)
      {
LABEL_56:
        sub_1001DA02C(v3, a2);
      }

      goto LABEL_12;
    }

LABEL_9:
    v5 = *(result + 1992);
    *(result + 2176) = v5 < a2;
    if (*(result + 2000))
    {
      v6 = *(result + 2008);
      *(result + 2177) = v6 < a2;
      if (v5 >= a2)
      {
        if (v6 >= a2)
        {
          goto LABEL_56;
        }

LABEL_12:
        v7 = *(result + 2008);
        v8 = sub_100339AC4();
        v9 = atomic_load(v8 + 26);
        if ((v9 & 1) == 0 && (v8[2] & 1) == 0)
        {
          v10 = v8;
          v11 = sub_100005C94(v8, v8 + 3);
          v8 = v10;
          *(v10 + 5) = v11;
          *(v10 + 16) = 1;
          atomic_store(1u, v10 + 26);
        }

        v12 = (a2 - v7 + 1000000000 * *(v8 + 5)) / 1000000000.0;
        if (0xEEEEEEEEEEEEEEEFLL * v12 + 0x888888888888888 <= 0x1111111111111110)
        {
          if (v12 >= 30.0)
          {
            v13 = 1;
          }

          else
          {
            v13 = 3;
          }

          if (v12 < 60.0)
          {
            v14 = v13;
          }

          else
          {
            v14 = 2;
          }

          if (v12 < 90.0)
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          std::to_string(&v41, v12);
          v16 = std::string::append(&v41, "s since we had wifi data last");
          v17 = *&v16->__r_.__value_.__l.__data_;
          *&__p[16] = *(&v16->__r_.__value_.__l + 2);
          *__p = v17;
          v16->__r_.__value_.__l.__size_ = 0;
          v16->__r_.__value_.__r.__words[2] = 0;
          v16->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v41.__r_.__value_.__l.__data_);
          }

          v18 = sub_1003397E8();
          v19 = atomic_load(v18 + 20);
          if ((v19 & 1) != 0 || *(v18 + 16) == 1)
          {
            v20 = *(v18 + 17);
          }

          else
          {
            v37 = v18;
            v20 = sub_100008F80(v18, v18 + 9);
            *(v37 + 17) = v20 & 1;
            *(v37 + 16) = 1;
            atomic_store(1u, v37 + 20);
          }

          if (__p[23] >= 0)
          {
            v38 = __p;
          }

          else
          {
            v38 = *__p;
          }

          sub_1001C9574(v20 & 1, v15, "No WiFi data!", v38, 5000000000);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        if (qword_10045B050 != -1)
        {
          sub_100385280();
        }

        v39 = qword_10045B058;
        if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          goto LABEL_56;
        }

        *__p = 134217984;
        *&__p[4] = v12;
        v34 = "WARNING: no Wi-Fi data in %f";
        v35 = v39;
        v36 = 12;
        goto LABEL_55;
      }
    }

    else
    {
      *(result + 2177) = 0;
      if (v5 >= a2)
      {
        goto LABEL_56;
      }
    }

    v21 = *(result + 1992);
    v22 = sub_100339AC4();
    v23 = atomic_load(v22 + 26);
    if ((v23 & 1) == 0 && (v22[2] & 1) == 0)
    {
      v24 = v22;
      v25 = sub_100005C94(v22, v22 + 3);
      v22 = v24;
      *(v24 + 5) = v25;
      *(v24 + 16) = 1;
      atomic_store(1u, v24 + 26);
    }

    v26 = *(v22 + 5);
    if (*(v3 + 2000) == 1)
    {
      v27 = *(v3 + 2008);
      v28 = sub_100339AC4();
      v29 = atomic_load(v28 + 26);
      if ((v29 & 1) == 0 && (v28[2] & 1) == 0)
      {
        v30 = v28;
        v31 = sub_100005C94(v28, v28 + 3);
        v28 = v30;
        *(v30 + 5) = v31;
        *(v30 + 16) = 1;
        atomic_store(1u, v30 + 26);
      }

      v32 = (a2 - v27 + 1000000000 * *(v28 + 5));
    }

    else
    {
      v32 = -1000000000.0;
    }

    if (qword_10045B050 != -1)
    {
      sub_1003852A8();
    }

    v33 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_56;
    }

    *__p = 134218240;
    *&__p[4] = (a2 - v21 + 1000000000 * v26) / 1000000000.0;
    *&__p[12] = 2048;
    *&__p[14] = v32 / 1000000000.0;
    v34 = "WARNING: no Wi-Fi scans in %f, no Wi-Fi data in %f";
    v35 = v33;
    v36 = 22;
LABEL_55:
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, v34, __p, v36);
    goto LABEL_56;
  }

  if ((*(result + 2179) & 1) == 0)
  {
    if (*(result + 1984) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

void sub_1001D5214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v15 = *(v14 + 9);
    __cxa_end_catch();
    JUMPOUT(0x1001D4F74);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001D5330(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    if (!(v2 >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  if (*(a2 + 32))
  {
    operator new();
  }

  (*(**(a1 + 24) + 32))(*(a1 + 24), &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_1001D54FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001D5528(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_10045B050 != -1)
  {
    sub_1003852A8();
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    buf = 134218240;
    buf_4 = a2;
    buf_12 = 1024;
    buf_14 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Getting a forceReset at timestamp %lld, localizerType %d", &buf, 0x12u);
  }

  sub_1002C50B4((a1 + 2184));
  sub_10017E818();
}

void sub_1001D5C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, std::bad_cast a24)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v25 = *(v24 + 12);
    __cxa_end_catch();
    JUMPOUT(0x1001D5B08);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001D5DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_100118124(va);
  JUMPOUT(0x1001D5DBCLL);
}

void sub_1001D5DD4(uint64_t a1, void *a2)
{
  if (qword_10045B050 != -1)
  {
    sub_1003852A8();
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v5 = a2[1];
    v6 = a2[2];
    v7 = a2[12];
    v8 = a2[5];
    v9 = a2[6];
    v12 = 134219009;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    v18 = 2053;
    v19 = v8;
    v20 = 2053;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "receiveOutdoorPos = {timestampNanos=%lld,systemTimestampNanos=%lld,horizontalAccuracy=%f,latlon={ lat=%{sensitive}.18f,lon=%{sensitive}.18f }}", &v12, 0x34u);
  }

  std::mutex::lock((a1 + 1680));
  v10 = *(a1 + 1744);
  for (i = *(a1 + 1752); v10 != i; ++v10)
  {
    (*(**v10 + 16))(*v10, a2[1], a2);
  }

  std::mutex::unlock((a1 + 1680));
  sub_1001D5F4C(a1, a2);
}

void sub_1001D5F4C(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 136) & 0x10) == 0)
  {
    goto LABEL_87;
  }

  std::to_string(&v61, 1u);
  v4 = (a2 + 64);
  v5 = *(a2 + 87);
  if (v5 >= 0)
  {
    v6 = *(a2 + 87);
  }

  else
  {
    v6 = *(a2 + 72);
  }

  size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  v8 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v61.__r_.__value_.__l.__size_;
  }

  if (v6 != size || (v5 >= 0 ? (v9 = (a2 + 64)) : (v9 = *v4), (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v10 = &v61) : (v10 = v61.__r_.__value_.__r.__words[0]), memcmp(v9, v10, v6)))
  {
    std::to_string(&v60, 9u);
    v11 = *(a2 + 87);
    if (v11 >= 0)
    {
      v12 = *(a2 + 87);
    }

    else
    {
      v12 = *(a2 + 72);
    }

    v13 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
    v14 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v60.__r_.__value_.__l.__size_;
    }

    if (v12 == v13)
    {
      v15 = v11 >= 0 ? (a2 + 64) : *v4;
      v16 = (v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v60 : v60.__r_.__value_.__r.__words[0];
      if (!memcmp(v15, v16, v12))
      {
        v35 = 0;
        if ((v14 & 0x80) == 0)
        {
LABEL_76:
          if ((*(&v61.__r_.__value_.__s + 23) & 0x80) == 0)
          {
            goto LABEL_77;
          }

LABEL_86:
          operator delete(v61.__r_.__value_.__l.__data_);
          if (v35)
          {
            goto LABEL_78;
          }

          goto LABEL_87;
        }

LABEL_75:
        operator delete(v60.__r_.__value_.__l.__data_);
        goto LABEL_76;
      }
    }

    std::to_string(&v59, 0x80u);
    v17 = *(a2 + 87);
    if (v17 >= 0)
    {
      v18 = *(a2 + 87);
    }

    else
    {
      v18 = *(a2 + 72);
    }

    v19 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    v20 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = v59.__r_.__value_.__l.__size_;
    }

    if (v18 == v19)
    {
      v21 = v17 >= 0 ? (a2 + 64) : *v4;
      v22 = (v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v59 : v59.__r_.__value_.__r.__words[0];
      if (!memcmp(v21, v22, v18))
      {
        v35 = 0;
        if ((v20 & 0x80) == 0)
        {
LABEL_74:
          if ((*(&v60.__r_.__value_.__s + 23) & 0x80) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        }

LABEL_73:
        operator delete(v59.__r_.__value_.__l.__data_);
        goto LABEL_74;
      }
    }

    std::to_string(&v58, 0x81u);
    v23 = *(a2 + 87);
    if (v23 >= 0)
    {
      v24 = *(a2 + 87);
    }

    else
    {
      v24 = *(a2 + 72);
    }

    v25 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    v26 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = v58.__r_.__value_.__l.__size_;
    }

    if (v24 == v25)
    {
      v27 = v23 >= 0 ? (a2 + 64) : *v4;
      v28 = (v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v58 : v58.__r_.__value_.__r.__words[0];
      if (!memcmp(v27, v28, v24))
      {
        v35 = 0;
        if ((v26 & 0x80) == 0)
        {
LABEL_72:
          if ((*(&v59.__r_.__value_.__s + 23) & 0x80) == 0)
          {
            goto LABEL_74;
          }

          goto LABEL_73;
        }

LABEL_71:
        operator delete(v58.__r_.__value_.__l.__data_);
        goto LABEL_72;
      }
    }

    std::to_string(&__p, 4u);
    v29 = *(a2 + 87);
    if (v29 >= 0)
    {
      v30 = *(a2 + 87);
    }

    else
    {
      v30 = *(a2 + 72);
    }

    v31 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v32 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = __p.__r_.__value_.__l.__size_;
    }

    if (v30 == v31)
    {
      if (v29 >= 0)
      {
        v33 = (a2 + 64);
      }

      else
      {
        v33 = *v4;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v35 = memcmp(v33, p_p, v30) != 0;
      if ((v32 & 0x80000000) == 0)
      {
LABEL_70:
        if ((*(&v58.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_71;
      }
    }

    else
    {
      v35 = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_70;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_70;
  }

  v35 = 0;
  if (v8 < 0)
  {
    goto LABEL_86;
  }

LABEL_77:
  if (v35)
  {
LABEL_78:
    if (qword_10045B050 != -1)
    {
      sub_100385280();
    }

    v36 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 87) >= 0)
      {
        v37 = a2 + 64;
      }

      else
      {
        v37 = *(a2 + 64);
      }

      LODWORD(v61.__r_.__value_.__l.__data_) = 136315138;
      *(v61.__r_.__value_.__r.__words + 4) = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "dropped a measurement with provider %s", &v61, 0xCu);
    }

    return;
  }

LABEL_87:
  std::to_string(&v61, 0x80u);
  v38 = (a2 + 64);
  v39 = *(a2 + 87);
  if (v39 >= 0)
  {
    v40 = *(a2 + 87);
  }

  else
  {
    v40 = *(a2 + 72);
  }

  v41 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  v42 = SHIBYTE(v61.__r_.__value_.__r.__words[2]);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v41 = v61.__r_.__value_.__l.__size_;
  }

  if (v40 != v41)
  {
    v45 = 0;
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_105;
    }

LABEL_102:
    if (!v45)
    {
      goto LABEL_106;
    }

    goto LABEL_103;
  }

  if (v39 >= 0)
  {
    v43 = (a2 + 64);
  }

  else
  {
    v43 = *v38;
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v61;
  }

  else
  {
    v44 = v61.__r_.__value_.__r.__words[0];
  }

  v45 = memcmp(v43, v44, v40) == 0;
  if ((v42 & 0x80000000) == 0)
  {
    goto LABEL_102;
  }

LABEL_105:
  operator delete(v61.__r_.__value_.__l.__data_);
  if (!v45)
  {
LABEL_106:
    std::to_string(&v61, 0x81u);
    v46 = *(a2 + 87);
    if (v46 >= 0)
    {
      v47 = *(a2 + 87);
    }

    else
    {
      v47 = *(a2 + 72);
    }

    v48 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    v49 = SHIBYTE(v61.__r_.__value_.__r.__words[2]);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v48 = v61.__r_.__value_.__l.__size_;
    }

    if (v47 == v48)
    {
      if (v46 >= 0)
      {
        v50 = (a2 + 64);
      }

      else
      {
        v50 = *v38;
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v61;
      }

      else
      {
        v51 = v61.__r_.__value_.__r.__words[0];
      }

      v52 = memcmp(v50, v51, v47) == 0;
      if (v49 < 0)
      {
LABEL_126:
        operator delete(v61.__r_.__value_.__l.__data_);
        if (!v52)
        {
          goto LABEL_127;
        }

        goto LABEL_124;
      }
    }

    else
    {
      v52 = 0;
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_126;
      }
    }

    if (!v52)
    {
LABEL_127:
      sub_1001D1F94((a1 + 896), a2);
      goto LABEL_128;
    }

LABEL_124:
    if (*(a1 + 1352) != 1)
    {
      sub_10013DFD8(a1 + 1360, a2);
      *(a1 + 1352) = 1;
      if (qword_10045B050 == -1)
      {
        goto LABEL_129;
      }

      goto LABEL_139;
    }

    sub_10013DFDC(a1 + 1360, a2);
LABEL_128:
    if (qword_10045B050 == -1)
    {
      goto LABEL_129;
    }

LABEL_139:
    sub_100385280();
    goto LABEL_129;
  }

LABEL_103:
  if (*(a1 + 1200) == 1)
  {
    sub_10013DFDC(a1 + 1208, a2);
    goto LABEL_128;
  }

  sub_10013DFD8(a1 + 1208, a2);
  *(a1 + 1200) = 1;
  if (qword_10045B050 != -1)
  {
    goto LABEL_139;
  }

LABEL_129:
  v53 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v54 = *(a2 + 96);
    LODWORD(v61.__r_.__value_.__l.__data_) = 134217984;
    *(v61.__r_.__value_.__r.__words + 4) = v54;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "fRegionalCLLocationTracker with horizontalAccuracy %f", &v61, 0xCu);
  }

  if (*(a1 + 1536) == 1)
  {
    v55 = *(a1 + 1568);
    if (v55)
    {
      *(a1 + 1576) = v55;
      operator delete(v55);
    }

    v56 = *(a1 + 1544);
    if (v56)
    {
      *(a1 + 1552) = v56;
      operator delete(v56);
    }

    *(a1 + 1536) = 0;
  }
}

void sub_1001D64DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a29 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  if ((a29 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v29 - 57) & 0x80000000) == 0)
    {
LABEL_10:
      _Unwind_Resume(exception_object);
    }

LABEL_9:
    operator delete(*(v29 - 80));
    _Unwind_Resume(exception_object);
  }

LABEL_8:
  operator delete(a24);
  if ((*(v29 - 57) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_1001D6580(uint64_t a1, void *a2)
{
  if (qword_10045B050 != -1)
  {
    sub_1003852A8();
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v5 = a2[1];
    v7 = a2[3];
    v6 = a2[4];
    sub_1001D6724(",", a2 + 6, __p);
    v8 = v12 >= 0 ? __p : __p[0];
    *buf = 134218755;
    v14 = v5;
    v15 = 2053;
    v16 = v7;
    v17 = 2053;
    v18 = v6;
    v19 = 2081;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "receiveLocalizerUniverseState = {timestampNanos=%lld,latlon={ lat=%{sensitive}.18f,lon=%{sensitive}.18f }, locationGroupIds={%{private}s} }", buf, 0x2Au);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::mutex::lock((a1 + 1680));
  v9 = *(a1 + 1744);
  for (i = *(a1 + 1752); v9 != i; ++v9)
  {
    (*(**v9 + 24))(*v9, a2);
  }

  std::mutex::unlock((a1 + 1680));
}

unint64_t *sub_1001D6724@<X0>(char *__s@<X1>, unint64_t *result@<X0>, uint64_t a3@<X8>)
{
  v5 = *result;
  v6 = result[1];
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v5 == v6)
  {
    goto LABEL_10;
  }

  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = *v5;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  for (result = sub_100026F84(a3, a3, v8, (v8 + v9), v9); ; result = sub_100026F84(a3, v15 + v14, v17, (v17 + v18), v18))
  {
    v5 += 24;
LABEL_10:
    if (v5 == v6)
    {
      break;
    }

    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (v10 >= 0)
    {
      v12 = *(a3 + 23);
    }

    else
    {
      v12 = *(a3 + 8);
    }

    v13 = strlen(__s);
    sub_1000272BC(a3, v11 + v12, __s, &__s[v13], v13);
    v14 = *(a3 + 23);
    if ((v14 & 0x80u) == 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a3 + 8);
    }

    v16 = *(v5 + 23);
    if (v16 >= 0)
    {
      v17 = v5;
    }

    else
    {
      v17 = *v5;
    }

    if (v16 >= 0)
    {
      v18 = *(v5 + 23);
    }

    else
    {
      v18 = *(v5 + 8);
    }
  }

  return result;
}

void sub_1001D6824(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_1001D6844(uint64_t a1, uint64_t a2)
{
  if (qword_10045B050 != -1)
  {
    sub_1003852A8();
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v7 = *(a2 + 96);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v20 = 134219009;
    v21 = v5;
    v22 = 2048;
    v23 = v6;
    v24 = 2048;
    v25 = v7;
    v26 = 2053;
    v27 = v8;
    v28 = 2053;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "receiveGPS = {timestampNanos=%lld,systemTiemstampNanos=%lld,horizontalAccuracy=%f,latlon={ lat=%{sensitive}.18f, lon=%{sensitive}.18f} }", &v20, 0x34u);
  }

  sub_1002AED7C(a2, &v20);
  sub_1001D5F4C(a1, &v20);
  sub_10013CFA4(&v20);
  if (!sub_10017226C(a2))
  {
    if (qword_10045B050 != -1)
    {
      sub_100385280();
    }

    v12 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a2 + 64);
      v14 = a2 + 64;
      v13 = v15;
      if (*(v14 + 23) >= 0)
      {
        v13 = v14;
      }

      v20 = 136315138;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "dropped a measurement with provider %s", &v20, 0xCu);
    }

    return;
  }

  if (**(a1 + 248) == 1 && *(a1 + 2178) != 1)
  {
    return;
  }

  if (*(a2 + 124) < 90)
  {
    if (qword_10045B050 != -1)
    {
      sub_100385280();
    }

    v10 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      v11 = "Ignoring GPS-coarse.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, v11, &v20, 2u);
      return;
    }

    return;
  }

  if (*(a1 + 688) != 1)
  {
    sub_1001300D0(a1 + 696, a2);
    *(a1 + 688) = 1;
    goto LABEL_24;
  }

  if (*(a2 + 8) > *(a1 + 704))
  {
    sub_1001300D4(a1 + 696, a2);
LABEL_24:
    if (qword_10045B050 != -1)
    {
      sub_100385280();
    }

    v16 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 792);
      v20 = 134217984;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "fLastGpsLikePreciseLocation gps with accuracy %f", &v20, 0xCu);
    }

    if (*(a1 + 1536) == 1)
    {
      v18 = *(a1 + 1568);
      if (v18)
      {
        *(a1 + 1576) = v18;
        operator delete(v18);
      }

      v19 = *(a1 + 1544);
      if (v19)
      {
        *(a1 + 1552) = v19;
        operator delete(v19);
      }

      *(a1 + 1536) = 0;
    }

    if (sub_1002512E8(*(a1 + 248)))
    {
      sub_1001F823C(*(a1 + 176), a2);
      *(a1 + 304) = 1;
    }

    return;
  }

  if (qword_10045B050 != -1)
  {
    sub_100385280();
  }

  v10 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v20) = 0;
    v11 = "Ignoring GPS because older than last precise location";
    goto LABEL_13;
  }
}

uint64_t sub_1001D6BB4(uint64_t a1, uint64_t a2)
{
  result = sub_100339598();
  v5 = atomic_load((result + 20));
  if ((v5 & 1) != 0 || *(result + 16) == 1)
  {
    if ((*(result + 17) & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v6 = result;
    result = sub_100008F80(result, (result + 9));
    v6[17] = result;
    v6[16] = 1;
    atomic_store(1u, v6 + 20);
    if (!result)
    {
      return result;
    }
  }

  result = sub_100321A9C(a2);
  if (result)
  {
    sub_100206964(&v39, a2);
    v7 = (v43 + 8);
    if (v42 >= 0)
    {
      v7 = &v44;
    }

    if (v42 == v42 >> 31)
    {
      v8 = v49 + 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = *v8;
    v10 = sub_100339474();
    v11 = atomic_load(v10 + 26);
    if ((v11 & 1) == 0 && (v10[2] & 1) == 0)
    {
      v12 = v10;
      v13 = sub_100005C94(v10, v10 + 3);
      v10 = v12;
      *(v12 + 5) = v13;
      *(v12 + 16) = 1;
      atomic_store(1u, v12 + 26);
    }

    v14 = v9 + 1000000000 * *(v10 + 5);
    if ((*(a1 + 2016) & 1) == 0)
    {
      *(a1 + 2016) = 1;
    }

    *(a1 + 2024) = v14;
    v15 = v39 >> 31;
    if (v39 >> 31 == v39)
    {
      *&v27 = v40;
      v15 = v39;
    }

    else
    {
      v27 = v40;
      v28 = v41;
    }

    v26 = v15 ^ v39;
    v16 = v42;
    v17 = v42 >> 31;
    if (v42 >> 31 == v42)
    {
      v18 = v43 >> 31;
      if (v43 >> 31 == v43)
      {
        *&v31 = v44;
        v18 = v43;
      }

      else
      {
        v31 = v44;
        v32 = v45;
      }

      LODWORD(v30) = v18 ^ v43;
      v33 = v46;
      v34 = 0;
      if (v47 == 1)
      {
        v35 = v48;
        v34 = 1;
      }

      v36 = v49[0];
      v37 = v49[1];
      v38 = v50;
    }

    else
    {
      if (v42 >= 0)
      {
        v19 = &v43;
      }

      else
      {
        v19 = v43;
      }

      sub_100131324(&v30, v19);
      v16 = v42;
      v17 = v42 >> 31;
    }

    v29 = v17 ^ v16;
    memset(__p, 0, sizeof(__p));
    sub_1001E13CC(__p, &v26, &v39, 1uLL);
    v20 = (v43 + 8);
    if (v42 >= 0)
    {
      v20 = &v44;
    }

    if (v42 == v42 >> 31)
    {
      v21 = v49 + 1;
    }

    else
    {
      v21 = v20;
    }

    v22 = *v21;
    v23 = *(a1 + 144);
    v24[0] = *(a1 + 136);
    v24[1] = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1001D7118(a1, __p, 0, v22, v24);
  }

  return result;
}

void sub_1001D7060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v41 = *(v40 + 12);
    __cxa_end_catch();
    JUMPOUT(0x1001D6CA8);
  }

  _Unwind_Resume(exception_object);
}