void sub_1007CDB50(_Unwind_Exception *a1)
{
  v2 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1007CDBA4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1[5];
  if (v4)
  {
    v5 = v1[4];
    v6 = v1[1];
    v7 = *(*(v6 + 8 * ((v4 + v5 - 1) / 0x16)) + 184 * ((v4 + v5 - 1) % 0x16) + 8);
    if (*v2 != v7)
    {
      if (v1[2] == v6)
      {
        v8 = 0;
        v11 = 0;
        v10 = (v6 + ((2 * (((v5 + v4) * 0x2E8BA2E8BA2E8BA3uLL) >> 64)) & 0x7FFFFFFFFFFFFFF8));
      }

      else
      {
        v8 = *(v6 + 8 * (v5 / 0x16)) + 184 * (v5 % 0x16);
        v9 = v5 + v4;
        v10 = (v6 + 8 * (v9 / 0x16));
        v11 = *v10 + 184 * (v9 % 0x16);
      }

      v13 = sub_1007D15F8((v6 + 8 * (v5 / 0x16)), v8, v10, v11);
      if (v13 <= 0.0)
      {
        bzero(__src, 0x404uLL);
        bzero(v20, 0x404uLL);
      }

      else
      {
        sub_1007D1DD4(v12);
        memset(v18, 0, 512);
        sub_1007D1DD4(v14);
        memset(v17, 0, 512);
        sub_1007D1DD4(v15);
        for (i = 0; i != 1028; i += 4)
        {
          *&__src[i] = *(v18 + i) + *(v17 + i);
        }
      }

      *v3 = v7;
      v3[1] = v13;
      memcpy(v3 + 2, __src, 0x404uLL);
      memcpy(v3 + 1044, v20, 0x404uLL);
    }
  }

  else
  {

    bzero(v2, 0x818uLL);
  }
}

BOOL sub_1007CDED4(void *a1, uint64_t a2)
{
  v2 = a1[5];
  if (v2 >= 0x100)
  {
    v53 = a1[5];
    __p = 0;
    v61 = 0;
    v62 = 0;
    v58 = 0;
    v59 = 0.0;
    v4 = a1[4] + v2;
    v5 = a1[1];
    v6 = a1[2];
    v7 = (v5 + 8 * (v4 / 0x49));
    v8 = *v7;
    v9 = *v7 + 56 * (v4 % 0x49);
    if (v6 == v5)
    {
      v9 = 0;
    }

    v10 = v9 - v8;
    v11 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v8) >> 3);
    if (v10 < 14337)
    {
      v15 = 328 - v11;
      v13 = &v7[-(v15 / 0x49)];
      v14 = *v13 + 56 * (73 * (v15 / 0x49) - v15) + 4032;
    }

    else
    {
      v12 = v11 - 256;
      v13 = &v7[v12 / 0x49];
      v14 = *v13 + 56 * (v12 % 0x49);
    }

    while (1)
    {
      if (v6 == v5)
      {
        v17 = 0;
      }

      else
      {
        v16 = a1[5] + a1[4];
        v17 = *(v5 + 8 * (v16 / 0x49)) + 56 * (v16 % 0x49);
      }

      if (v14 == v17)
      {
        break;
      }

      v18 = v61;
      if (v61 >= v62)
      {
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v61 - __p) >> 2);
        v22 = v21 + 1;
        if (v21 + 1 > 0x1555555555555555)
        {
          sub_10028C64C();
        }

        if (0x5555555555555556 * ((v62 - __p) >> 2) > v22)
        {
          v22 = 0x5555555555555556 * ((v62 - __p) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v62 - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v23 = 0x1555555555555555;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          sub_1007D4324(&__p, v23);
        }

        v24 = 4 * ((v61 - __p) >> 2);
        v25 = *(v14 + 28);
        *(v24 + 8) = *(v14 + 36);
        *v24 = v25;
        v20 = 12 * v21 + 12;
        v26 = (12 * v21 - (v61 - __p));
        memcpy((v24 - (v61 - __p)), __p, v61 - __p);
        v27 = __p;
        __p = v26;
        v61 = v20;
        v62 = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        v19 = *(v14 + 28);
        *(v61 + 2) = *(v14 + 36);
        *v18 = v19;
        v20 = v18 + 12;
      }

      v28 = 0;
      v61 = v20;
      do
      {
        v29 = sub_10011AF6C(v14 + 28, v28);
        v30 = sub_10011AF30(&v58, v28);
        *v30 = v29 + *v30;
        ++v28;
      }

      while (v28 != 3);
      v14 += 56;
      if (v14 - *v13 == 4088)
      {
        v31 = v13[1];
        ++v13;
        v14 = v31;
      }

      v5 = a1[1];
      v6 = a1[2];
    }

    v56 = vmul_f32(v58, vdup_n_s32(0x3B800000u));
    v57 = v59 * 0.0039062;
    sub_1007D1C88(&__p, &v56, &v54);
    v32 = a1[4] + a1[5];
    v33 = a1[1];
    v34 = (v33 + 8 * (v32 / 0x49));
    v35 = *v34;
    v36 = *v34 + 56 * (v32 % 0x49);
    if (a1[2] == v33)
    {
      v36 = 0;
    }

    v37 = v36 - v35;
    v38 = 0x6DB6DB6DB6DB6DB7 * ((v36 - v35) >> 3);
    if (v37 < 7169)
    {
      v44 = 200 - v38;
      v45 = (200 - v38) / 0x49uLL;
      v41 = &v34[-v45];
      v42 = *v41;
      v43 = *v41 + 56 * (73 * v45 - v44) + 4032;
    }

    else
    {
      v39 = v38 - 128;
      v40 = (v38 - 128) / 0x49uLL;
      v41 = &v34[v40];
      v42 = *v41;
      v43 = *v41 + 56 * (v39 - 73 * v40);
    }

    v46 = v54;
    v47 = v55;
    v48 = v43 - v42;
    v49 = 0x6DB6DB6DB6DB6DB7 * ((v43 - v42) >> 3);
    if (v48 < -55)
    {
      v50 = v41[-((71 - v49) / 0x49uLL)] + 56 * (73 * ((71 - v49) / 0x49uLL) - (71 - v49)) + 4032;
    }

    else
    {
      v50 = v41[(v49 + 1) / 0x49uLL] + 56 * ((v49 + 1) % 0x49uLL);
    }

    *a2 = (*(v43 + 40) + *(v50 + 40)) * 0.5;
    *(a2 + 8) = v46;
    *(a2 + 16) = v47;
    if (__p)
    {
      v61 = __p;
      operator delete(__p);
    }

    v2 = v53;
  }

  return v2 > 0xFF;
}

void sub_1007CE320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1007CE348(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1007D4C28(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  result = *a2;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  *v8 = result;
  ++a1[5];
  return result;
}

void sub_1007CE3F8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = v8 - **a1;
  v10 = 0x6DB6DB6DB6DB6DB7 * (v9 >> 3);
  if (v9 < -7167)
  {
    v11 = v7[-((-56 - v10) / 0x49uLL)] + 56 * (73 * ((-56 - v10) / 0x49uLL) - (-56 - v10)) + 4032;
  }

  else
  {
    v11 = v7[(v10 + 128) / 0x49uLL] + 56 * ((v10 + 128) % 0x49uLL);
  }

  v12 = 0;
  v18 = *(v11 + 40);
  LODWORD(v19) = 0;
  while (v8 != *(a2 + 8))
  {
    for (i = 0; i != 3; ++i)
    {
      v14 = sub_10011AF6C(v8 + 16, i);
      v15 = *(a3 + 4 * v12);
      v16 = sub_10011AF30(&v18 + 8, i);
      *v16 = *v16 + (v14 * v15);
    }

    v8 += 56;
    if (v8 - *v7 == 4088)
    {
      v17 = v7[1];
      ++v7;
      v8 = v17;
    }

    if (++v12 == 257)
    {
      *a4 = v18;
      *(a4 + 16) = v19;
      return;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
}

__n128 sub_1007CE58C(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1007D4DFC(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  result = *a2;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  *v8 = result;
  ++a1[5];
  return result;
}

void *sub_1007CE63C(void *a1, double *a2, void *a3, double *a4, double *a5)
{
  v5 = a2;
  v6 = a1;
  if (a4 != a2)
  {
    v7 = 170 * (a3 - a1) - 0x5555555555555555 * ((a4 - *a3) >> 3) + 0x5555555555555555 * ((a2 - *a1) >> 3);
    if (v7)
    {
      do
      {
        v9 = v7 >> 1;
        v12 = v6;
        v13 = v5;
        sub_1000C9AF4(&v12, v7 >> 1);
        v10 = v13;
        if (*v13 < *a5)
        {
          v5 = v13 + 3;
          v13 += 3;
          v6 = v12;
          if ((v10 - *v12 + 24) == 4080)
          {
            v6 = v12 + 1;
            v5 = v12[1];
          }

          v9 = v7 + ~v9;
        }

        v7 = v9;
      }

      while (v9);
    }
  }

  return v6;
}

void *sub_1007CE724(void *a1, double *a2, void *a3, double *a4, double *a5)
{
  v5 = a2;
  v6 = a1;
  if (a4 != a2)
  {
    v7 = 170 * (a3 - a1) - 0x5555555555555555 * ((a4 - *a3) >> 3) + 0x5555555555555555 * ((a2 - *a1) >> 3);
    if (v7)
    {
      do
      {
        v9 = v7 >> 1;
        v11 = v6;
        v12 = v5;
        sub_1000C9AF4(&v11, v7 >> 1);
        if (*v12 < *a5)
        {
          v6 = v11;
          v5 = v12 + 3;
          if ((v12 - *v11 + 24) == 4080)
          {
            v6 = v11 + 1;
            v5 = v11[1];
          }

          v9 = v7 + ~v9;
        }

        v7 = v9;
      }

      while (v9);
    }
  }

  return v6;
}

void *sub_1007CE808(void *a1, uint64_t a2, void *a3, uint64_t a4, double *a5)
{
  v5 = a2;
  v6 = a1;
  if (a4 != a2)
  {
    v7 = 73 * (a3 - a1) + 0x6DB6DB6DB6DB6DB7 * ((a4 - *a3) >> 3) - 0x6DB6DB6DB6DB6DB7 * ((a2 - *a1) >> 3);
    if (v7)
    {
      do
      {
        v9 = v7 >> 1;
        v12 = v6;
        v13 = v5;
        sub_1007D4114(&v12, v7 >> 1);
        v10 = v13;
        if (*(v13 + 40) < *a5)
        {
          v5 = v13 + 56;
          v13 += 56;
          v6 = v12;
          if (v10 + 56 - *v12 == 4088)
          {
            v6 = v12 + 1;
            v5 = v12[1];
          }

          v9 = v7 + ~v9;
        }

        v7 = v9;
      }

      while (v9);
    }
  }

  return v6;
}

void *sub_1007CE904(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a4)
  {
    v5 = *result;
    v6 = a2;
    v7 = result;
    while (1)
    {
      v6 += 24;
      if (v6 - v5 == 4080)
      {
        v8 = v7[1];
        ++v7;
        v5 = v8;
        v6 = v8;
      }

      if (v6 == a4)
      {
        return result;
      }

      v9 = *(a2 + 8);
      v10 = *(a5 + 2664);
      if (v10 == 1)
      {
        if (*(a5 + 2668) != 1)
        {
LABEL_10:
          v11 = *(v6 + 8);
          goto LABEL_19;
        }
      }

      else
      {
        if (v10)
        {
          goto LABEL_13;
        }

        if (*(a5 + 2668))
        {
          goto LABEL_10;
        }
      }

      v9 = -v9;
LABEL_13:
      v11 = *(v6 + 8);
      if (v10 == 1)
      {
        if (*(a5 + 2668) == 1)
        {
          goto LABEL_18;
        }
      }

      else if (!v10 && !*(a5 + 2668))
      {
LABEL_18:
        v11 = -v11;
      }

LABEL_19:
      if (v9 <= v11)
      {
        result = v7;
        a2 = v6;
      }
    }
  }

  return result;
}

void *sub_1007CE9B8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a4)
  {
    v5 = *result;
    v6 = a2;
    v7 = result;
    while (1)
    {
      v6 += 24;
      if (v6 - v5 == 4080)
      {
        v8 = v7[1];
        ++v7;
        v5 = v8;
        v6 = v8;
      }

      if (v6 == a4)
      {
        return result;
      }

      v9 = *(v6 + 8);
      v10 = *(a5 + 2664);
      if (v10 == 1)
      {
        if (*(a5 + 2668) != 1)
        {
LABEL_10:
          v11 = *(a2 + 8);
          goto LABEL_19;
        }
      }

      else
      {
        if (v10)
        {
          goto LABEL_13;
        }

        if (*(a5 + 2668))
        {
          goto LABEL_10;
        }
      }

      v9 = -v9;
LABEL_13:
      v11 = *(a2 + 8);
      if (v10 == 1)
      {
        if (*(a5 + 2668) == 1)
        {
          goto LABEL_18;
        }
      }

      else if (!v10 && !*(a5 + 2668))
      {
LABEL_18:
        v11 = -v11;
      }

LABEL_19:
      if (v9 <= v11)
      {
        result = v7;
        a2 = v6;
      }
    }
  }

  return result;
}

BOOL sub_1007CEA6C(uint64_t **a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4 != v5)
  {
    v42 = *(a2 + 8);
    v8 = 0;
    __p = 0;
    v45 = 0;
    v46 = 0;
    v9 = *a1;
    v10 = **a1;
    v11 = 0;
    v12 = 0.0;
    v13 = vdup_n_s32(0x409CE80Au);
    v14 = 0.0;
    v43 = v4;
    v15 = 0;
    do
    {
      v16 = v4 - v10;
      v17 = 0xAAAAAAAAAAAAAAABLL * (v4 - v10);
      if (v16 < 25)
      {
        v18 = v9[-((170 - v17) / 0xAA)] + 24 * (170 * ((170 - v17) / 0xAA) - (170 - v17)) + 4056;
      }

      else
      {
        v18 = v9[(v17 - 1) / 0xAA] + 24 * ((v17 - 1) % 0xAA);
      }

      v19 = *v4 - *v18;
      v15 = vadd_f32(v15, vmul_f32(vmul_n_f32(vadd_f32(*(v18 + 8), v4[1]), v19), v13));
      v12 = v12 + (((*(v18 + 16) + *(v4 + 4)) * v19) * 4.9033);
      if (v8 >= v46)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v8 - __p) >> 2);
        v21 = v20 + 1;
        if (v20 + 1 > 0x1555555555555555)
        {
          sub_10028C64C();
        }

        if (0x5555555555555556 * ((v46 - __p) >> 2) > v21)
        {
          v21 = 0x5555555555555556 * ((v46 - __p) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v46 - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v22 = 0x1555555555555555;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          sub_1007D4324(&__p, v22);
        }

        v23 = 4 * ((v8 - __p) >> 2);
        *v23 = v15;
        *(v23 + 8) = v12;
        v8 = (12 * v20 + 12);
        memcpy((12 * v20 - (v45 - __p)), __p, v45 - __p);
        v24 = __p;
        __p = (12 * v20 - (v45 - __p));
        v45 = v8;
        v46 = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v8 = v15;
        v8[1].f32[0] = v12;
        v8 = (v8 + 12);
      }

      v45 = v8;
      v4 += 3;
      v10 = *v9;
      if ((v4 - *v9) == 4080)
      {
        v25 = v9[1];
        ++v9;
        v10 = v25;
        v4 = v25;
      }

      v11 = vadd_f32(v11, v15);
      v14 = v14 + v12;
    }

    while (v4 != *(a2 + 8));
    v26 = __p;
    if (v8 != __p)
    {
      *&a4 = (0xAAAAAAAAAAAAAAABLL * ((v8 - __p) >> 2));
      v27 = vdiv_f32(v11, vdup_lane_s32(*&a4, 0));
      v28 = v14 / *&a4;
      v29 = *(a3 + 8);
      do
      {
        v30 = vsub_f32(*v26, v27);
        v31 = v26[1].f32[0] - v28;
        v32 = *(a3 + 16);
        if (v29 >= v32)
        {
          v33 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a3) >> 2);
          v34 = v33 + 1;
          if (v33 + 1 > 0x1555555555555555)
          {
            sub_10028C64C();
          }

          v35 = 0xAAAAAAAAAAAAAAABLL * ((v32 - *a3) >> 2);
          if (2 * v35 > v34)
          {
            v34 = 2 * v35;
          }

          if (v35 >= 0xAAAAAAAAAAAAAAALL)
          {
            v36 = 0x1555555555555555;
          }

          else
          {
            v36 = v34;
          }

          if (v36)
          {
            sub_1007D4324(a3, v36);
          }

          v37 = 4 * ((v29 - *a3) >> 2);
          *v37 = v30;
          *(v37 + 8) = v31;
          v29 = 12 * v33 + 12;
          v38 = *(a3 + 8) - *a3;
          v39 = 12 * v33 - v38;
          memcpy((v37 - v38), *a3, v38);
          v40 = *a3;
          *a3 = v39;
          *(a3 + 8) = v29;
          *(a3 + 16) = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v29 = v30;
          *(v29 + 8) = v31;
          v29 += 12;
        }

        *(a3 + 8) = v29;
        v26 = (v26 + 12);
      }

      while (v26 != v8);
      v26 = __p;
    }

    v5 = v42;
    v4 = v43;
    if (v26)
    {
      v45 = v26;
      operator delete(v26);
    }
  }

  return v4 != v5;
}

void sub_1007CEE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007CEE2C(void *a1, double a2, uint64_t a3, double *a4, uint64_t a5)
{
  v5 = a1[1];
  if (v5 == a4)
  {
    return 0;
  }

  v8 = *a1;
  v9 = v5 - **a1;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
  if (v9 < -23)
  {
    v15 = 168 - v10;
    v16 = 168 - v10;
    v12 = &v8[-((168 - v10) / 0xAA)];
    v13 = *v12;
    v14 = (*v12 + 24 * (170 * (v16 / 0xAA) - v15) + 4056);
  }

  else
  {
    v11 = v10 + 1;
    v12 = &v8[(v10 + 1) / 0xAA];
    v13 = *v12;
    v14 = (*v12 + 24 * (v11 % 0xAA));
  }

  if (v14 != a4)
  {
    while (*v14 <= a2)
    {
      v5 = v14;
      v8 = v12;
      v17 = v14 - v13;
      v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3);
      if (v17 < -23)
      {
        v21 = 168 - v18;
        v22 = (168 - v18) / 0xAA;
        v12 = &v8[-v22];
        v13 = *v12;
        v14 = (*v12 + 24 * (170 * v22 - v21) + 4056);
      }

      else
      {
        v19 = v18 + 1;
        v20 = (v18 + 1) / 0xAA;
        v12 = &v8[v20];
        v13 = *v12;
        v14 = (*v12 + 24 * (v19 - 170 * v20));
      }

      if (v14 == a4)
      {
        goto LABEL_14;
      }
    }

    *a1 = v8;
    a1[1] = v5;
    if (*v5 <= a2)
    {
      for (i = 0; i != 3; ++i)
      {
        v26 = *v5;
        v27 = *sub_10011AF30((v5 + 1), i);
        v28 = *v14;
        v29 = sub_10011AF30((v14 + 1), i);
        *&v26 = sub_1000A1DCC(v26, v27, v28, *v29, a2);
        *sub_10011AF30(a5, i) = LODWORD(v26);
      }

      return 1;
    }

    return 0;
  }

LABEL_14:
  *a1 = v8;
  a1[1] = v5;
  v24 = *(v5 + 1);
  *(a5 + 8) = *(v5 + 4);
  *a5 = v24;
  return 1;
}

uint64_t sub_1007CF040(void *a1, void *a2, uint64_t *a3)
{
  v6 = a1[2];
  v7 = a1[1];
  v8 = 170 * ((v6 - v7) >> 3) - 1;
  if (v6 == v7)
  {
    v8 = 0;
  }

  v9 = a1[5] + a1[4];
  if (v8 == v9)
  {
    sub_1007D4FD0(a1);
    v7 = a1[1];
    v9 = a1[5] + a1[4];
  }

  v10 = *(v7 + 8 * (v9 / 0xAA)) + 24 * (v9 % 0xAA);
  v11 = *(a3 + 2);
  v12 = *a3;
  *v10 = *a2;
  *(v10 + 8) = v12;
  *(v10 + 16) = v11;
  v13 = a1[4];
  v14 = a1[5] + 1;
  a1[5] = v14;
  v15 = v13 + v14;
  v16 = a1[1];
  v17 = (v16 + 8 * (v15 / 0xAA));
  v18 = *v17 + 24 * (v15 % 0xAA);
  if (a1[2] == v16)
  {
    v18 = 0;
  }

  if (v18 == *v17)
  {
    v18 = *(v17 - 1) + 4080;
  }

  return v18 - 24;
}

uint64_t sub_1007CF13C(float64_t *a1, double *a2)
{
  v2.f64[0] = *a1;
  if (*a1 == -1.0)
  {
    return 0;
  }

  v3 = a1[1];
  if (v3 == -1.0)
  {
    return 0;
  }

  v4.f64[0] = a1[2];
  if (v4.f64[0] == -1.0)
  {
    return 0;
  }

  v5 = a1[3];
  if (v5 == -1.0)
  {
    return 0;
  }

  v7 = 0;
  v9 = 0xC0013D70A3D70A3DLL;
  v2.f64[1] = v3;
  v4.f64[1] = v5;
  v10 = vmulq_f64(v2, xmmword_101C8E290);
  v11 = vmulq_f64(v4, xmmword_101C8E2A0);
  v8 = 0.0;
  do
  {
    v8 = v8 + *(&v9 + v7);
    v7 += 8;
  }

  while (v7 != 40);
  *a2 = v8;
  return 1;
}

__n128 sub_1007CF1E8(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 85 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1007D51A4(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x55)) + 48 * (v7 % 0x55);
  result = *a2;
  v10 = *(a2 + 32);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 32) = v10;
  *v8 = result;
  ++a1[5];
  return result;
}

uint64_t sub_1007CF298(void *a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 34 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1007D5378(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x22)) + 120 * (v7 % 0x22);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  *(v8 + 32) = a2[2];
  *(v8 + 48) = v11;
  *v8 = v9;
  *(v8 + 16) = v10;
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  *(v8 + 112) = *(a2 + 14);
  *(v8 + 80) = v13;
  *(v8 + 96) = v14;
  *(v8 + 64) = v12;
  v15 = a1[4];
  v16 = a1[5] + 1;
  a1[5] = v16;
  v17 = v15 + v16;
  v18 = a1[1];
  v19 = (v18 + 8 * (v17 / 0x22));
  v20 = *v19 + 120 * (v17 % 0x22);
  if (a1[2] == v18)
  {
    v20 = 0;
  }

  if (v20 == *v19)
  {
    v20 = *(v19 - 1) + 4080;
  }

  return v20 - 120;
}

void sub_1007CF39C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = v8 - **a1;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
  if (v9 < -3071)
  {
    v11 = (v7[-((41 - v10) / 0xAA)] + 24 * (170 * ((41 - v10) / 0xAA) - (41 - v10)) + 4056);
  }

  else
  {
    v11 = (v7[(v10 + 128) / 0xAA] + 24 * ((v10 + 128) % 0xAA));
  }

  v12 = 0;
  v18 = *v11;
  LODWORD(v19) = 0;
  while (v8 != *(a2 + 8))
  {
    for (i = 0; i != 3; ++i)
    {
      v14 = *sub_10011AF30(v8 + 8, i);
      v15 = *(a3 + 4 * v12);
      v16 = sub_10011AF30(&v18 + 8, i);
      *v16 = *v16 + (v14 * v15);
    }

    v8 += 24;
    if (v8 - *v7 == 4080)
    {
      v17 = v7[1];
      ++v7;
      v8 = v17;
    }

    if (++v12 == 257)
    {
      *a4 = v18;
      *(a4 + 16) = v19;
      return;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
}

float sub_1007CF514(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = 0;
    v5 = 0.0;
    do
    {
      v5 = v5 + sub_1007D554C(a1, a2, v4++);
      v6 = *(a1 + 16);
    }

    while (v4 < v6);
    if (v6)
    {
      return v5 + *(a1 + 40);
    }
  }

  else
  {
    v5 = 0.0;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_10193B704();
  }

  v8 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: this->fForestSize > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMRandomForestXGBoostedRegression.h, line 49,fForestSize is 0.", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_10193B718();
    }

    v9 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "float CMRandomForestXGBoostedRegression<22>::evaluateForest(const float (&)[NFeat]) const [NFeat = 22]", "%s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  return v5 + *(a1 + 40);
}

uint64_t sub_1007CF6D8(void *a1, _OWORD *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1007D5718(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  v8 = a1[4];
  v9 = a1[5] + 1;
  a1[5] = v9;
  v10 = v8 + v9;
  v11 = a1[1];
  v12 = (v11 + 8 * (v10 >> 8));
  v13 = *v12 + 16 * v10;
  if (a1[2] == v11)
  {
    v13 = 0;
  }

  if (v13 == *v12)
  {
    v13 = *(v12 - 1) + 4096;
  }

  return v13 - 16;
}

uint64_t sub_1007CF798(uint64_t a1, void *a2)
{
  if (a2[5] < 0x80uLL)
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B454();
    }

    v29 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "[FormController] Has not received enough DeviceMotion samples", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10193B740();
    return 0;
  }

  v4 = (a1 + 2664);
  nullsub_34(a1 + 2615);
  sub_101045080(buf);
  v5 = v109[16];
  if ((v109[16] & 1) == 0)
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B310();
    }

    v31 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "[FormController] GroundContactTime - Classification Failed!", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10193B82C();
    return 0;
  }

  v7 = *buf;
  v6 = *v109;
  v8 = *&v109[8];
  if (![*v109 count])
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B310();
    }

    v32 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "[FormController] Initial contact prediction failed", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10193BC04();
    return 0;
  }

  if (![v8 count])
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B310();
    }

    v33 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "[FormController] Toe off prediction failed", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10193BB18();
    return 0;
  }

  if (![v7 count])
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B310();
    }

    v34 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "[FormController] Ground contact time prediction failed", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10193BA2C();
    return 0;
  }

  [objc_msgSend(v7 objectAtIndexedSubscript:{0), "doubleValue"}];
  v10 = v9;
  [objc_msgSend(v6 objectAtIndexedSubscript:{0), "doubleValue"}];
  v12 = v11;
  [objc_msgSend(v8 objectAtIndexedSubscript:{0), "doubleValue"}];
  v13 = v12 * 0.119790152 + 0.838394225;
  v15 = v14 * 0.10670507 + 1.08953965;
  if (v13 < v15)
  {
    v81[0] = 0;
    v81[1] = 0x3F80000000000000;
    v16 = a2[4];
    v17 = v16 / 0x49;
    v18 = a2[1];
    v19 = a2[2];
    v20 = (v18 + 8 * (v16 / 0x49));
    v21 = v16 % 0x49;
    v22 = 56 * (v16 % 0x49);
    *&v81[5] = v13 + *(*v20 + v22 + 40);
    v81[6] = 0;
    v80[0] = 0;
    v80[1] = 0x3F80000000000000;
    v23 = *v20 + v22;
    *&v80[5] = v15 + *(v23 + 40);
    v80[6] = 0;
    if (v19 == v18)
    {
      v23 = 0;
      v28 = 0;
      LOBYTE(v82) = 0;
    }

    else
    {
      v24 = a2[5] + v16;
      v25 = v24 / 0x49;
      v24 %= 0x49uLL;
      v26 = *(v18 + 8 * v25) + 56 * v24;
      LOBYTE(v82) = 0;
      v27 = 73 * ((8 * v25 - 8 * v17) >> 3) - v21 + v24;
      if (v26 == v23)
      {
        v28 = 0;
      }

      else
      {
        v28 = v27;
      }
    }

    v36 = sub_1007D45EC(v20, v23, v81, v28);
    v38 = v36;
    v39 = v37;
    v40 = a2[4] + a2[5];
    v41 = a2[1];
    v42 = (v41 + 8 * (v40 / 0x49));
    if (a2[2] == v41)
    {
      v43 = 0;
    }

    else
    {
      v43 = *v42 + 56 * (v40 % 0x49);
    }

    v44 = sub_1007D4694(v36, v37, v42, v43, v80);
    v46 = v45;
    v47 = 0.0;
    if (v39 != v45)
    {
      v48 = v44;
      v49 = 0.0;
      v50 = v38;
      v51 = v39;
      do
      {
        sub_101045120(v51, buf);
        v51 += 56;
        if (v51 - *v50 == 4088)
        {
          v52 = v50[1];
          ++v50;
          v51 = v52;
        }

        v49 = v49 + *&v111[6];
      }

      while (v51 != v46);
      v53 = 73 * (v48 - v38) + 0x6DB6DB6DB6DB6DB7 * ((v46 - *v48) >> 3) - 0x6DB6DB6DB6DB6DB7 * ((v39 - *v38) >> 3);
      if (v53)
      {
        v47 = v49 / v53;
      }

      else
      {
        v47 = 0.0;
      }
    }

    v55 = *v4;
    if (*v4 != 2)
    {
      if (v55 == 1)
      {
        if (v47 > 0.0)
        {
          goto LABEL_64;
        }

        goto LABEL_69;
      }

      if (v55)
      {
        v57 = 0;
        v56 = 0;
        goto LABEL_70;
      }
    }

    if (v47 < 0.0)
    {
LABEL_64:
      v56 = 2;
      v57 = 1;
LABEL_70:
      v54 = v10 * 0.0446596108 + 0.251163363;
      v66 = v54;
      v58 = a2[1];
      v59 = a2[4];
      v60 = a2[5];
      v61 = *(*(v58 + 8 * (v59 / 0x49)) + 56 * (v59 % 0x49) + 40);
      v67 = v13 + v61;
      v68 = v15 + v61;
      v69 = v13;
      v70 = v15;
      v62 = *(a1 + 448);
      v71 = v61 + v62;
      v72 = v62 + *(*(v58 + 8 * ((v59 + v60 - 1) / 0x49)) + 56 * ((v59 + v60 - 1) % 0x49) + 40);
      v73 = v47;
      v74 = v56;
      v75 = v5;
      v76 = v57;
      v77 = 1;
      v63 = *(a1 + 2668);
      v78 = v55;
      v79 = v63;
      sub_1007D4024((a1 + 2616), &v66);
      if (qword_1025D44C0 != -1)
      {
        sub_10193B310();
      }

      v64 = qword_1025D44C8;
      if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67112192;
        *&buf[4] = v75;
        *v109 = 2048;
        *&v109[2] = v66;
        *&v109[10] = 2048;
        *&v109[12] = v67;
        v110 = 2048;
        *v111 = v68;
        *&v111[8] = 2048;
        v112 = v69;
        v113 = 2048;
        v114 = v70;
        v115 = 2048;
        v116 = v71;
        v117 = 1024;
        v118 = v74;
        v119 = 1024;
        v120 = v76;
        v121 = 1024;
        v122 = v77;
        v123 = 1024;
        v124 = v78;
        v125 = 1024;
        v126 = v79;
        v127 = 2048;
        v128 = v73;
        _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEBUG, "[FormController] GCT Prediction,isSuccessful,%d,groundContactTime,%.2f,initialContactTime,%.2f,toeOffTime,%.2f,relativeInitialContactTime,%.2f,relativeToeOffTime,%.2f,windowStartTime,%.2f,stepSide,%d,isValidSide,%d,isValidToeOff,%d,wristOrientation,%d,crownOrientation,%d, meanRotationZ, %.2f", buf, 0x6Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D44C0 != -1)
        {
          sub_10193B310();
        }

        v82 = 67112192;
        v83 = v75;
        v84 = 2048;
        v85 = v66;
        v86 = 2048;
        v87 = v67;
        v88 = 2048;
        v89 = v68;
        v90 = 2048;
        v91 = v69;
        v92 = 2048;
        v93 = v70;
        v94 = 2048;
        v95 = v71;
        v96 = 1024;
        v97 = v74;
        v98 = 1024;
        v99 = v76;
        v100 = 1024;
        v101 = v77;
        v102 = 1024;
        v103 = v78;
        v104 = 1024;
        v105 = v79;
        v106 = 2048;
        v107 = v73;
        v65 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRunning::FormModels::calculateGroundContactTime(const DeviceMotionQueue &)", "%s\n", v65);
        if (v65 != buf)
        {
          free(v65);
        }
      }

      if (sub_1007D2134(a1))
      {
        sub_101599404(&v66, buf);
        if (qword_102637F48 != -1)
        {
          sub_10193BA04();
        }

        if (qword_102637F50)
        {
          operator new();
        }

        PB::Base::~Base(buf);
      }

      return 1;
    }

LABEL_69:
    v57 = 1;
    v56 = 1;
    goto LABEL_70;
  }

  if (qword_1025D44C0 != -1)
  {
    sub_10193B310();
  }

  v35 = qword_1025D44C8;
  if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "[FormController] Just rejected a step prediction, TO before IC prediction", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10193B918();
    return 0;
  }

  return result;
}

void sub_1007D01E8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v6 = 0;
LABEL_17:
    v12 = 0.0;
    goto LABEL_18;
  }

  v6 = 0;
  v7 = 0.0;
  do
  {
    v8 = *(v4 + 64);
    if (v8 >= 1)
    {
      v9 = *(v4 + 48) - *(v4 + 8);
      if (v9 > 0.0 && *(v4 + 112) * 5.12 / v9 >= 0.5)
      {
        v7 = v7 + *(v4 + 56) / v8 - *(v4 + 104);
        ++v6;
      }
    }

    v4 += 120;
  }

  while (v4 != v5);
  if (v6 <= 0)
  {
    goto LABEL_17;
  }

  v10 = v7 / v6;
  if (v10 <= 2.0)
  {
    if (v10 >= -2.0)
    {
      v12 = v7 / v6;
    }

    else
    {
      if (qword_1025D44C0 != -1)
      {
        sub_10193B454();
      }

      v16 = qword_1025D44C8;
      if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v19 = v10;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "[FormModels] StrideLength: Below min bias offset (%.2f)", buf, 0xCu);
      }

      v12 = -2.0;
      if (sub_10000A100(121, 0))
      {
        sub_10193BCF0();
      }
    }
  }

  else
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B454();
    }

    v11 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v19 = v10;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "[FormModels] StrideLength: Above max bias offset (%.2f)", buf, 0xCu);
    }

    v12 = 2.0;
    if (sub_10000A100(121, 0))
    {
      sub_10193BDE8();
    }
  }

LABEL_18:
  if (qword_1025D44C0 != -1)
  {
    sub_10193B310();
  }

  v13 = qword_1025D44C8;
  if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 2592);
    v15 = 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 3);
    *buf = 134218752;
    v19 = v14;
    v20 = 2048;
    v21 = v12;
    v22 = 1026;
    v23 = v6;
    v24 = 2050;
    v25 = v15;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "[FormModels] StrideLengthCalibration,prevStrideLengthBiasOffset,%.2f,newStrideLengthBiasOffset,%.2f,validCalibrationsCount,%{public}d,totalCalibrationTracks,%{public}lu,", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44C0 != -1)
    {
      sub_10193B310();
    }

    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLRunning::FormModels::feedCalibrationTracks(const std::vector<CLStrideCalEntry> &)", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  *(a1 + 2592) = v12;
}

void sub_1007D05BC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a2[5];
  if (v5)
  {
    v54 = a4 + -3.1225;
    v53 = a4 + -3.1225 + -5.12;
    v8 = a2[4];
    v9 = v8 / 0x16;
    v10 = a2[1];
    v11 = (v10 + 8 * (v8 / 0x16));
    if (a2[2] == v10)
    {
      v20 = 0;
      v21 = 0;
      buf[0] = 0;
    }

    else
    {
      v12 = 8 * v9;
      v13 = *(v10 + 8 * v9);
      v14 = v8 % 0x16;
      v15 = v13 + 184 * (v8 % 0x16);
      v16 = v8 + v5;
      v17 = v16 / 0x16;
      v16 %= 0x16uLL;
      v18 = *(v10 + 8 * v17) + 184 * v16;
      buf[0] = 0;
      v19 = v16 + 22 * ((8 * v17 - v12) >> 3) - v14;
      v20 = v15;
      if (v18 == v15)
      {
        v21 = 0;
      }

      else
      {
        v21 = v19;
      }
    }

    v22 = sub_1007D41C8(v11, v20, &v53, v21);
    v24 = v22;
    v25 = v23;
    v26 = a2[4] + a2[5];
    v27 = a2[1];
    v28 = (v27 + 8 * (v26 / 0x16));
    if (a2[2] == v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = *v28 + 184 * (v26 % 0x16);
    }

    buf[0] = 0;
    if (v29 == v23)
    {
      v30 = 0;
    }

    else
    {
      v30 = 22 * (v28 - v22) - 0x2C8590B21642C859 * ((v29 - *v28) >> 3) + 0x2C8590B21642C859 * ((v23 - *v22) >> 3);
    }

    v31 = sub_1007D41C8(v22, v23, &v54, v30);
    v33 = v32;
    v34 = a2[4];
    v35 = a2[1];
    v36 = a2[2];
    v37 = (v35 + 8 * (v34 / 0x16));
    if (v36 == v35)
    {
      v38 = 0;
    }

    else
    {
      v38 = *v37 + 184 * (v34 % 0x16);
    }

    if (v38 == v33)
    {
      v42 = &v54;
    }

    else
    {
      v39 = v33 - *v31;
      v40 = 0xD37A6F4DE9BD37A7 * (v39 >> 3);
      if (v39 < 185)
      {
        v41 = v31[-((22 - v40) / 0x16)] + 184 * (22 * ((22 - v40) / 0x16) - (22 - v40)) + 3864;
      }

      else
      {
        v41 = v31[(v40 - 1) / 0x16] + 184 * ((v40 - 1) % 0x16);
      }

      v42 = (v41 + 8);
    }

    if (v36 == v35)
    {
      v43 = 0;
    }

    else
    {
      v43 = *v37 + 184 * (v34 % 0x16);
    }

    v44 = *v42;
    sub_1007D0A1C(a1, v37, v43, v24, v25, v31, v33, (a1 + 248), &v50);
    if ((v52 - 1) < 2)
    {
      v46 = a2[5] + a2[4] - 1;
      v47 = *(a2[1] + 8 * (v46 / 0x16)) + 184 * (v46 % 0x16);
      if (sub_100CDBCEC(*(v47 + 88), *(v47 + 80), *(a1 + 2536)))
      {
        v45 = 1;
      }

      else
      {
        v45 = 3;
      }
    }

    else if (v52 == 3)
    {
      v45 = 2;
    }

    else if (v52 == 4)
    {
      v45 = 512;
    }

    else
    {
      v45 = 0;
    }

    v48 = sub_100BE4D0C(v51, 0.001);
    if (v48 < 0.0 || v48 > 0.25)
    {
      if (qword_1025D44C0 != -1)
      {
        sub_10193B310();
      }

      v49 = qword_1025D44C8;
      if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v56 = v48;
        _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_INFO, "[FormModels] #warning: VerticalOscillation value out of range (%.2f)", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193BEE0();
      }

      v45 |= 8u;
    }

    *a3 = v45;
    *(a3 + 8) = v48;
    *(a3 + 16) = v50;
    *(a3 + 32) = v44;
  }

  else
  {
    *a3 = 32;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
  }
}

void sub_1007D0A1C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v11 = a5;
  v12 = a4;
  if (a4 < a6 || a4 == a6 && a5 < a7)
  {
    if (a8[5])
    {
      *a9 = 0;
      *(a9 + 8) = 0;
      *(a9 + 16) = 0;
      v16 = a8[4];
      v17 = a8[1];
      v18 = (v17 + 8 * (v16 >> 8));
      if (a8[2] == v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = *v18 + 16 * v16;
      }

      if (a5 == a7)
      {
        v22 = a9;
        *a9 = 0;
        *(a9 + 8) = 0;
LABEL_52:
        v45 = 3;
LABEL_53:
        *(v22 + 24) = v45;
        return;
      }

      v23 = 0;
      v24 = 0;
      v47 = 1;
      v48 = 0;
      v25 = 0.0;
      v26 = 0.0;
      v27 = 0.0;
      do
      {
        if (v11 != a3)
        {
          v28 = v11 - *v12;
          v29 = 0xD37A6F4DE9BD37A7 * (v28 >> 3);
          if (v28 < -183)
          {
            v33 = 20 - v29;
            v31 = &v12[-(v33 / 0x16)];
            v32 = *v31 + 184 * (22 * (v33 / 0x16) - v33) + 3864;
          }

          else
          {
            v30 = v29 + 1;
            v31 = &v12[v30 / 0x16];
            v32 = *v31 + 184 * (v30 % 0x16);
          }

          v26 = sub_1007D15F8(a2, a3, v31, v32);
          v34 = *(v11 + 80);
          v27 = v27 + v34;
          ++v24;
          v48 = (*(v11 + 160) & 0xFD) == 1;
          if (sub_100CDBCEC(v26, v34, *(a1 + 2536)))
          {
            sub_1007D2024(v12, v11);
            v36 = a8[1];
            v37 = v19;
            v38 = v18;
LABEL_31:
            v39 = v37;
            while (1)
            {
              v40 = a8[2] == v36 ? 0 : *(v36 + 8 * ((a8[5] + a8[4]) >> 8)) + 16 * (*(a8 + 40) + *(a8 + 32));
              if (v39 == v40)
              {
                break;
              }

              v41 = *v39 + *(a1 + 448);
              if (v41 >= *(v35 + 8) && v41 < *(v11 + 8))
              {
                v25 = v25 + v39[1];
                ++v23;
                v18 = v38;
                v19 = v37;
              }

              v39 += 2;
              v37 += 2;
              if ((*v38 + 4096) == v37)
              {
                v43 = v38[1];
                ++v38;
                v37 = v43;
                goto LABEL_31;
              }
            }

            v47 = 0;
          }
        }

        v11 += 184;
        if (v11 - *v12 == 4048)
        {
          v44 = v12[1];
          ++v12;
          v11 = v44;
        }
      }

      while (v11 != a7);
      v22 = a9;
      *a9 = v26;
      if (v24 <= 0)
      {
        *(a9 + 8) = 0;
      }

      else
      {
        *(a9 + 8) = v27 / v24;
      }

      if (v47)
      {
        goto LABEL_52;
      }

      if (v23 <= 0)
      {
        v45 = 2;
        goto LABEL_53;
      }

      if (v48)
      {
        v45 = 4;
        goto LABEL_53;
      }

      *(a9 + 16) = v25 / v23;
      *(a9 + 24) = 0;
    }

    else
    {
      if (qword_1025D44C0 != -1)
      {
        sub_10193B454();
      }

      v20 = qword_1025D44C8;
      if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "[FormModels] computeMeanBetween - Not enough metrics in window", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193C0C4();
      }

      *a9 = 0;
      *(a9 + 8) = 0;
      *(a9 + 16) = 0;
      *(a9 + 24) = 2;
    }
  }

  else
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B454();
    }

    v21 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_INFO))
    {
      *v51 = 0;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "[FormModels] computeMeanBetween - Invalid pedometer range", v51, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193BFE0();
    }

    *a9 = 0;
    *(a9 + 8) = 0;
    *(a9 + 16) = 0;
    *(a9 + 24) = 1;
  }
}

void sub_1007D0E30(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = a2[5];
  if (!v4)
  {
    *a3 = 32;
    *(a3 + 48) = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0;
    return;
  }

  v94 = a4;
  v93 = a4 + -5.12;
  v6 = a2[4];
  v7 = v6 / 0x16;
  v8 = a2[1];
  v9 = (v8 + 8 * (v6 / 0x16));
  if (a2[2] == v8)
  {
    v19 = 0;
    v20 = 0;
    LOBYTE(v90[0]) = 0;
  }

  else
  {
    v10 = 8 * v7;
    v11 = *(v8 + 8 * v7);
    v12 = v6 % 0x16;
    v13 = v11 + 184 * (v6 % 0x16);
    v14 = v6 + v4;
    v15 = (v6 + v4) / 0x16;
    v16 = v14 - 22 * v15;
    v17 = *(v8 + 8 * v15) + 184 * v16;
    LOBYTE(v90[0]) = 0;
    v18 = v16 + 22 * ((8 * v15 - v10) >> 3) - v12;
    v19 = v13;
    if (v17 == v13)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }
  }

  v21 = sub_1007D41C8(v9, v19, &v93, v20);
  v23 = v21;
  v24 = v22;
  v25 = a2[4] + a2[5];
  v26 = a2[1];
  v27 = (v26 + 8 * (v25 / 0x16));
  if (a2[2] == v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = *v27 + 184 * (v25 % 0x16);
  }

  LOBYTE(v90[0]) = 0;
  if (v28 == v22)
  {
    v29 = 0;
  }

  else
  {
    v29 = 22 * (v27 - v21) - 0x2C8590B21642C859 * ((v28 - *v27) >> 3) + 0x2C8590B21642C859 * ((v22 - *v21) >> 3);
  }

  v30 = sub_1007D41C8(v21, v22, &v94, v29);
  v87 = v31;
  v32 = a2[1];
  if (a2[2] == v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = *(v32 + 8 * (a2[4] / 0x16uLL)) + 184 * (a2[4] % 0x16uLL);
  }

  if (v33 == v31)
  {
    v37 = &v94;
  }

  else
  {
    v34 = v31 - *v30;
    v35 = 0xD37A6F4DE9BD37A7 * (v34 >> 3);
    if (v34 < 185)
    {
      v36 = v30[-((22 - v35) / 0x16)] + 184 * (22 * ((22 - v35) / 0x16) - (22 - v35)) + 3864;
    }

    else
    {
      v36 = v30[(v35 - 1) / 0x16] + 184 * ((v35 - 1) % 0x16);
    }

    v37 = (v36 + 8);
  }

  v38 = *v37;
  if (v24 == v31)
  {
    goto LABEL_24;
  }

  v84 = *v37;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = *v23;
  v45 = 0.0;
  __asm { FMOV            V0.2D, #-1.0 }

  v86 = _Q0;
  v51 = 0.0;
  v52 = 0.0;
  do
  {
    v53 = v24 - v44;
    v54 = 0xD37A6F4DE9BD37A7 * ((v24 - v44) >> 3);
    if (v53 < -183)
    {
      v55 = v23[-((20 - v54) / 0x16)] + 184 * (v54 - 20 + 22 * ((20 - v54) / 0x16)) + 3864;
    }

    else
    {
      v55 = v23[(v54 + 1) / 0x16] + 184 * ((v54 + 1) % 0x16);
    }

    v56 = a2[4];
    v57 = a2[1];
    if (a2[2] == v57)
    {
      if (!v55)
      {
        break;
      }

      v59 = 0;
      v58 = (v57 + ((2 * ((v56 * 0x2E8BA2E8BA2E8BA3uLL) >> 64)) & 0x7FFFFFFFFFFFFFF8));
    }

    else
    {
      if (v55 == *(v57 + 8 * ((a2[5] + v56) / 0x16)) + 184 * ((a2[5] + v56) % 0x16))
      {
        break;
      }

      v58 = (v57 + 8 * (v56 / 0x16));
      v59 = *v58 + 184 * (v56 % 0x16);
    }

    v88 = v45;
    if (v53 < -367)
    {
      v63 = 19 - v54;
      v61 = &v23[-(v63 / 0x16)];
      v62 = *v61 + 184 * (22 * (v63 / 0x16) - v63) + 3864;
    }

    else
    {
      v60 = v54 + 2;
      v61 = &v23[v60 / 0x16];
      v62 = *v61 + 184 * (v60 % 0x16);
    }

    v64 = *(v24 + 8);
    v65 = *(v24 + 80);
    v66 = sub_1007D15F8(v58, v59, v61, v62);
    v91 = 0u;
    v92 = 0u;
    memset(v90, 0, sizeof(v90));
    DWORD2(v91) = 1000;
    LODWORD(v92) = -1082130432;
    v67 = *(a1 + 2600);
    v68 = 0.0;
    v69 = 0.0;
    if (*(v67 + 80) == 1)
    {
      v70 = sub_1007D18D0(v90, v67, *(v24 + 8));
      v71 = v65 > 0.0 ? v70 : 0;
      if (v71 == 1)
      {
        v69 = sub_100CDBE1C(1.0 / v65 * 2.23693991, *&v91 * 2.23693991);
      }
    }

    if (*(v24 + 176) == 3 && v65 > 0.0)
    {
      v72 = 0.0;
      if (v66 > 0.0)
      {
        v68 = 1.0 / v65;
        v72 = 1.0 / v65 / v66 + 1.0 / v65 / v66;
      }
    }

    else
    {
      v72 = 0.0;
    }

    v73 = sub_100CDBC8C(v66, 1.0 / v68, *(a1 + 2536));
    v74 = v73;
    v75 = 0;
    v76 = v66 <= 0.0;
    if (v68 <= 0.0)
    {
      v76 = 1;
    }

    if (!v76 && v72 > 0.0)
    {
      v75 = v73 & (v72 < 6.0);
    }

    *buf = v86;
    v96 = v86;
    v103 = 0u;
    v98 = 0;
    v100 = 0u;
    v101 = v72;
    v102 = v68;
    v104 = v64;
    *&v103 = v66;
    v97 = v69;
    v99 = v72;
    v106 = v75;
    v105 = 1;
    sub_1007D1B38(v73, buf);
    if ((*(v24 + 160) & 0xFD) == 1)
    {
      ++v43;
    }

    v45 = v88;
    if (v75)
    {
      v45 = v88 + v72;
    }

    v24 += 184;
    v44 = *v23;
    if (v24 - *v23 == 4048)
    {
      v77 = v23[1];
      ++v23;
      v44 = v77;
      v24 = v77;
    }

    v40 += v74 ^ 1;
    v51 = v51 + v66;
    v52 = v52 + v68;
    v42 += v75;
    ++v41;
  }

  while (v24 != v87);
  if (v42)
  {
    v78 = v45 / v42;
    if (v41)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v78 = 0.0;
    if (v41)
    {
LABEL_62:
      v79 = v52 / v41;
      if (v79 <= 0.0)
      {
        v80 = 0.0;
      }

      else
      {
        v80 = 1.0 / v79;
      }

      v38 = v84;
      if (v42)
      {
        v81 = v51 / v41;
        goto LABEL_69;
      }

      goto LABEL_24;
    }
  }

  v80 = 0.0;
  v81 = 0.0;
  v38 = v84;
  if (v42)
  {
LABEL_69:
    if (v40)
    {
      v82 = 10;
    }

    else
    {
      v82 = 520;
    }

    if (v40 | v43)
    {
      v78 = 0.0;
    }

    else
    {
      v82 = 8;
      if (v78 > 0.0)
      {
        v39 = a3;
        if (v78 <= 6.0)
        {
          v82 = 0;
LABEL_85:
          *v39 = v82;
          *(v39 + 8) = 0;
          *(v39 + 16) = v78;
          *(v39 + 24) = v81;
          *(v39 + 32) = v80;
          goto LABEL_86;
        }

LABEL_75:
        if (qword_1025D44C0 != -1)
        {
          sub_10193B310();
        }

        v83 = qword_1025D44C8;
        if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          *&buf[4] = v78;
          _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_INFO, "[FormModels] #warning: StrideLength value out of range (%.2f)", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193C1A8();
        }

        v38 = v84;
        goto LABEL_85;
      }
    }

    v39 = a3;
    goto LABEL_75;
  }

LABEL_24:
  v39 = a3;
  *a3 = 1;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
LABEL_86:
  *(v39 + 40) = 0;
  *(v39 + 48) = v38;
}

double sub_1007D15F8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = 0.0;
  if (a4 == a2)
  {
    return v4;
  }

  v9 = a4 - *a3;
  v10 = 0xD37A6F4DE9BD37A7 * (v9 >> 3);
  if ((v10 + 22 * (a3 - a1) + 0x2C8590B21642C859 * ((a2 - *a1) >> 3)) < 4)
  {
    return v4;
  }

  if (v9 <= 184)
  {
    v11 = *(a3[-((22 - v10) / 0x16)] + 184 * (v10 - 22 + 22 * ((22 - v10) / 0x16)) + 3864);
    v12 = v10 - 3;
    goto LABEL_7;
  }

  v11 = *(a3[(v10 - 1) / 0x16] + 184 * ((v10 - 1) % 0x16));
  v12 = v10 - 3;
  if (v9 < 0x229)
  {
LABEL_7:
    v13 = (a3[-((21 - v12) / 0x16)] + 184 * (22 * ((21 - v12) / 0x16) - (21 - v12)) + 3864);
    goto LABEL_8;
  }

  v13 = (a3[v12 / 0x16] + 184 * (v12 % 0x16));
LABEL_8:
  if (v11 - *v13 <= 10.24)
  {
    v14 = sub_1007D1F5C(a1, a2, a3, a4);
    v15 = a4 - *a3;
    v16 = 0xD37A6F4DE9BD37A7 * (v15 >> 3);
    if (v15 < 185)
    {
      v20 = 22 - v16;
      v18 = &a3[-(v20 / 0x16)];
      v19 = *v18 + 184 * (22 * (v20 / 0x16) - v20) + 3864;
    }

    else
    {
      v17 = v16 - 1;
      v18 = &a3[v17 / 0x16];
      v19 = *v18 + 184 * (v17 % 0x16);
    }

    v21 = sub_1007D1F5C(a1, a2, v18, v19);
    v22 = a4 - *a3;
    v23 = 0xD37A6F4DE9BD37A7 * (v22 >> 3);
    if (v22 < 369)
    {
      v27 = 23 - v23;
      v25 = &a3[-(v27 / 0x16)];
      v26 = *v25 + 184 * (22 * (v27 / 0x16) - v27) + 3864;
    }

    else
    {
      v24 = v23 - 2;
      v25 = &a3[v24 / 0x16];
      v26 = *v25 + 184 * (v24 % 0x16);
    }

    v28 = sub_1007D1F5C(a1, a2, v25, v26);
    if (v14 > 0.0 && v21 > 0.0 && v28 > 0.0)
    {
      if (v14 >= v21)
      {
        v29 = v21;
      }

      else
      {
        v29 = v14;
      }

      if (v14 <= v21)
      {
        v30 = v21;
      }

      else
      {
        v30 = v14;
      }

      if (v30 < v28)
      {
        v28 = v30;
      }

      if (v29 <= v28)
      {
        return v28;
      }

      else
      {
        return v29;
      }
    }
  }

  return v4;
}

uint64_t sub_1007D18D0(uint64_t a1, void *a2, double a3)
{
  v5 = (*(*a2 + 24))(a2, a1);
  if ((v5 & 1) == 0)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    DWORD2(v12) = 1000;
    LODWORD(v13) = -1082130432;
    v6 = sub_1007D20C4(a2, &v10);
    if (qword_1025D44C0 != -1)
    {
      sub_10193B310();
    }

    v7 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134350080;
      v25 = a3;
      v26 = 1026;
      v27 = v6;
      v28 = 2050;
      v29 = *(&v10 + 1);
      v30 = 1026;
      v31 = DWORD2(v11);
      v32 = 1026;
      v33 = DWORD2(v12);
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "[FormController] #warning: Elevation lookup failed at t=%{public}.2f. lastEntry={exists,%{public}d,startTime,%{public}.2f,gradeType,%{public}d,source,%{public}d}", buf, 0x28u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D44C0 != -1)
      {
        sub_10193B310();
      }

      v14 = 134350080;
      v15 = a3;
      v16 = 1026;
      v17 = v6;
      v18 = 2050;
      v19 = *(&v10 + 1);
      v20 = 1026;
      v21 = DWORD2(v11);
      v22 = 1026;
      v23 = DWORD2(v12);
      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLRunning::FormModels::elevationLookup(CFAbsoluteTime, CLElevationChangeEntry &, const CLNatalieInput<CLElevationChangeEntry> &)", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  return v5;
}

void sub_1007D1B38(uint64_t a1, int *a2)
{
  if (qword_1025D44C0 != -1)
  {
    sub_10193B454();
  }

  v3 = qword_1025D44C8;
  if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 12);
    v4 = *(a2 + 13);
    v6 = *a2;
    v7 = *(a2 + 1);
    v8 = *(a2 + 2);
    v9 = *(a2 + 3);
    v10 = *(a2 + 7);
    v11 = *(a2 + 8);
    v12 = *(a2 + 4);
    v13 = *(a2 + 10);
    v14 = *(a2 + 11);
    v15 = *(a2 + 9);
    v16 = 134351872;
    v17 = v5;
    v18 = 2050;
    v19 = v4;
    v20 = 2048;
    v21 = v10;
    v22 = 2048;
    v23 = v6;
    v24 = 2048;
    v25 = v7;
    v26 = 2048;
    v27 = v8;
    v28 = 2048;
    v29 = v9;
    v30 = 2048;
    v31 = v15;
    v32 = 2048;
    v33 = v11;
    v34 = 2048;
    v35 = v12;
    v36 = 2048;
    v37 = v14;
    v38 = 2048;
    v39 = v13;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "[FormModels] StrideLengthEvent,startTime,%{public}.2f,endTime,%{public}.2f,strideLengthFormBasedUncal,%.3f,heightCM,%.2f,horizontalAccelMagnitudeMeanSqrt,%.2f,rotationRateMagnitudeMin,%.2f,rotationRateGravityProjectionMax,%.2f,strideLengthSpeedBased,%.3f,strideLengthFormBasedCalibrated,%.3f,grade,%.2f,cadence,%.2f,speed,%.2f", &v16, 0x7Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193C2A8(a2);
  }
}

float32_t sub_1007D1C88(uint64_t *a1, float32x2_t *a2, uint64_t a3)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    do
    {
      v8 = (v4 + 12 * v7);
      v9 = v8[1].f32[0] - a2[1].f32[0];
      v19 = vsub_f32(*v8, *a2);
      v20 = v9;
      sub_1007D5ED8(&v19, v17);
      v10 = 0;
      do
      {
        *(&v14 + v10) = sub_1007D5F60(v17, v10) + *(&v14 + v10);
        ++v10;
      }

      while (v10 != 9);
      ++v7;
      v4 = *a1;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2));
  }

  v17[0] = v14;
  v17[1] = v15;
  v18 = v16;
  v19.i32[0] = sub_1007D5F9C(v17, a3);
  v19.i32[1] = v11;
  v20 = v12;
  *&v17[0] = &v19;
  *(&v17[0] + 1) = a3;
  sub_1007D6564(v17, 0, 1uLL);
  sub_1007D6564(v17, 0, 2uLL);
  sub_1007D6564(v17, 1uLL, 2uLL);
  return v19.f32[0];
}

void sub_1007D1DD4(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v17 = v1 * 0.02;
  v5 = v4 * 0.02;
  bzero(v19, 0x808uLL);
  bzero(v18, 0x808uLL);
  v6 = 0;
  v7 = 0.0;
  v8 = 0.0;
  do
  {
    v9 = ((cosf(v6 * 0.024544) * -0.46) + 0.54);
    v10 = (v6 - 128);
    sub_1010BDB10(v17 * v10);
    v12 = v11 * v9;
    v19[v6] = v12;
    v7 = v7 + v12;
    sub_1010BDB10(v5 * v10);
    v14 = v13 * v9;
    v18[v6] = v14;
    v8 = v8 + v14;
    ++v6;
  }

  while (v6 != 257);
  bzero(v3, 0x404uLL);
  for (i = 0; i != 257; ++i)
  {
    v16 = v18[i] / v8 - v19[i] / v7;
    *(v3 + i) = v16;
  }
}

double sub_1007D1F5C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = 0.0;
  if (a4 != a2 && 22 * (a3 - a1) - 0x2C8590B21642C859 * ((a4 - *a3) >> 3) + 0x2C8590B21642C859 * ((a2 - *a1) >> 3) >= 2)
  {
    v5 = sub_1007D2024(a3, a4);
    v7 = v6;
    sub_1007D2024(v5, v6);
    v9 = *(v7 + 96) - *(v8 + 96);
    if (v9 > 0.0)
    {
      return (*(v7 + 24) - *(v8 + 24)) / v9;
    }
  }

  return v4;
}

void *sub_1007D2024(void *a1, uint64_t a2)
{
  v2 = a2 - *a1;
  v3 = 0xD37A6F4DE9BD37A7 * (v2 >> 3);
  if (v2 < 185)
  {
    return &a1[-((22 - v3) / 0x16)];
  }

  else
  {
    return &a1[(v3 - 1) / 0x16];
  }
}

uint64_t sub_1007D20C4(void *a1, _OWORD *a2)
{
  v2 = a1[4];
  if (a1[5] == v2)
  {
    return 0;
  }

  v3 = a1[7] + a1[8];
  v4 = (v2 + 8 * (v3 >> 6));
  v5 = v3 & 0x3F;
  v6 = *v4 + (v5 << 6);
  if (v6 == *(v2 + ((a1[7] >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((a1[7] & 0x3FLL) << 6))
  {
    return 0;
  }

  if (!v5)
  {
    v6 = *(v4 - 1) + 4096;
  }

  v7 = *(v6 - 64);
  v8 = *(v6 - 48);
  v9 = *(v6 - 16);
  a2[2] = *(v6 - 32);
  a2[3] = v9;
  *a2 = v7;
  a2[1] = v8;
  return 1;
}

uint64_t sub_1007D2134(uint64_t a1)
{
  if ((*(a1 + 2613) & 1) == 0)
  {
    v2 = sub_100011660();
    sub_100185AC0(v2, &v4);
    sub_10001CB4C(v4, "MotionLoggerLogGaitEvents", (a1 + 2614));
    if (v5)
    {
      sub_100008080(v5);
    }

    *(a1 + 2613) = 1;
  }

  return *(a1 + 2614);
}

void sub_1007D21A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D21B8(uint64_t result, uint64_t a2, _DWORD *a3, void *a4)
{
  v5 = *(a2 + 24);
  if ((v5 - 1) < 2)
  {
    *a3 |= 1u;
    v7 = a4[5] + a4[4] - 1;
    v8 = *(a4[1] + 8 * (v7 / 0x16)) + 184 * (v7 % 0x16);
    result = sub_100CDBCEC(*(v8 + 88), *(v8 + 80), *(result + 2536));
    if (result)
    {
      return result;
    }
  }

  else if (v5 != 3)
  {
    if (v5 != 4)
    {
      return result;
    }

    v6 = 512;
    goto LABEL_7;
  }

  v6 = 2;
LABEL_7:
  *a3 |= v6;
  return result;
}

uint64_t sub_1007D226C@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a2[5];
  if (v5)
  {
    v7 = result;
    v102 = a4;
    v101 = a4 + -5.12;
    v8 = a2[4];
    v9 = v8 / 0x16;
    v10 = a2[1];
    v11 = (v10 + 8 * (v8 / 0x16));
    if (a2[2] == v10)
    {
      v20 = 0;
      v21 = 0;
      LOBYTE(v97) = 0;
    }

    else
    {
      v12 = 8 * v9;
      v13 = *(v10 + 8 * v9);
      v14 = v8 % 0x16;
      v15 = v13 + 184 * (v8 % 0x16);
      v16 = v8 + v5;
      v17 = v16 / 0x16;
      v16 %= 0x16uLL;
      v18 = *(v10 + 8 * v17) + 184 * v16;
      LOBYTE(v97) = 0;
      v19 = v16 + 22 * ((8 * v17 - v12) >> 3) - v14;
      v20 = v15;
      if (v18 == v15)
      {
        v21 = 0;
      }

      else
      {
        v21 = v19;
      }
    }

    v22 = sub_1007D41C8(v11, v20, &v101, v21);
    v24 = v22;
    v25 = v23;
    v26 = a2[4] + a2[5];
    v27 = a2[1];
    v28 = (v27 + 8 * (v26 / 0x16));
    if (a2[2] == v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = *v28 + 184 * (v26 % 0x16);
    }

    LOBYTE(v97) = 0;
    if (v29 == v23)
    {
      v30 = 0;
    }

    else
    {
      v30 = 22 * (v28 - v22) - 0x2C8590B21642C859 * ((v29 - *v28) >> 3) + 0x2C8590B21642C859 * ((v23 - *v22) >> 3);
    }

    v31 = sub_1007D41C8(v22, v23, &v102, v30);
    v33 = v32 - *v31;
    v34 = 0xD37A6F4DE9BD37A7 * (v33 >> 3);
    if (v33 < -183)
    {
      v38 = 20 - v34;
      v36 = &v31[-(v38 / 0x16)];
      v37 = *v36 + 184 * (22 * (v38 / 0x16) - v38) + 3864;
    }

    else
    {
      v35 = v34 + 1;
      v36 = &v31[v35 / 0x16];
      v37 = *v36 + 184 * (v35 % 0x16);
    }

    v87 = v37;
    v98 = 0u;
    memset(v99, 0, 28);
    v96 = 0u;
    v97 = 0u;
    v100 = 0uLL;
    memset(v95, 0, sizeof(v95));
    v94 = 0u;
    memset(v93, 0, sizeof(v93));
    v39 = v7[328];
    v40 = v7[331];
    v41 = v40 / 0x33;
    v42 = (v39 + 8 * (v40 / 0x33));
    if (v7[329] == v39)
    {
      v51 = 0;
      v52 = 0;
      LOBYTE(v103) = 0;
    }

    else
    {
      v43 = 8 * v41;
      v44 = *(v39 + 8 * v41);
      v45 = v40 % 0x33;
      v46 = v44 + 80 * (v40 % 0x33);
      v47 = v7[332] + v40;
      v48 = v47 / 0x33;
      v47 %= 0x33uLL;
      v49 = *(v39 + 8 * v48) + 80 * v47;
      LOBYTE(v103) = 0;
      v50 = v47 + 51 * ((8 * v48 - v43) >> 3) - v45;
      v51 = v46;
      if (v49 == v46)
      {
        v52 = 0;
      }

      else
      {
        v52 = v50;
      }
    }

    v53 = sub_1007D437C(v42, v51, &v101, v52);
    v55 = v53;
    v56 = v54;
    v57 = v7[331] + v7[332];
    v58 = v7[328];
    v59 = (v58 + 8 * (v57 / 0x33));
    if (v7[329] == v58)
    {
      v60 = 0;
    }

    else
    {
      v60 = *v59 + 80 * (v57 % 0x33);
    }

    LOBYTE(v103) = 0;
    if (v60 == v54)
    {
      v61 = 0;
    }

    else
    {
      v61 = 51 * ((v59 - v53) >> 3) - 0x3333333333333333 * ((v60 - *v59) >> 4) + 0x3333333333333333 * ((v54 - *v53) >> 4);
    }

    v62 = sub_1007D437C(v53, v54, &v102, v61);
    if (sub_1007D2C40(v7, v95, v93, v55, v56, v62, v63))
    {
      v64 = a2[4];
      v65 = a2[1];
      v66 = (v65 + 8 * (v64 / 0x16));
      if (a2[2] == v65)
      {
        v67 = 0;
      }

      else
      {
        v67 = *v66 + 184 * (v64 % 0x16);
      }

      sub_1007D0A1C(v7, v66, v67, v24, v25, v36, v87, v95, v91);
      v69 = a2[4];
      v70 = a2[1];
      v71 = (v70 + 8 * (v69 / 0x16));
      if (a2[2] == v70)
      {
        v72 = 0;
      }

      else
      {
        v72 = *v71 + 184 * (v69 % 0x16);
      }

      sub_1007D0A1C(v7, v71, v72, v24, v25, v36, v87, v93, v88);
      sub_1007D21B8(v7, v91, &v99[24], a2);
      sub_1007D21B8(v7, v88, &v99[24], a2);
      if ((v99[24] & 1) == 0)
      {
        v73 = v92;
        v74 = v90;
        v75 = (v92 + v90) * 0.5;
        v76 = v92 / (v92 + v90);
        *&v100 = v91[0];
        *(&v100 + 1) = v89;
        v77 = v90 / (v92 + v90);
        if (*(&v96 + 1) | *(&v94 + 1))
        {
          v79 = 0.0;
          if (v89 > 0.0)
          {
            v79 = 1.0 / v89;
          }

          if (v79 >= 4.0 || v75 >= 0.15 || v75 <= 0.05 || v79 <= 0.0)
          {
            if (v75 <= 0.4 && v75 > 0.05)
            {
              v78 = 0;
            }

            else
            {
              v78 = 8;
            }
          }

          else
          {
            v78 = 256;
          }
        }

        else
        {
          v78 = 1;
        }

        *(&v97 + 1) = v92;
        *&v98 = v90;
        *(&v98 + 1) = v92 / (v92 + v90);
        *v99 = v90 / (v92 + v90);
        *&v99[8] = v101;
        *&v99[16] = v102;
        *&v99[24] = v78;
        v81 = sub_100BE4D0C(v75, 0.001);
        *&v97 = v81;
        if (qword_1025D44C0 != -1)
        {
          sub_10193B310();
        }

        v82 = qword_1025D44C8;
        if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67241472;
          v116 = v78;
          v117 = 2048;
          v118 = v73;
          v119 = 2048;
          v120 = v74;
          v121 = 2048;
          v122 = v76;
          v123 = 2048;
          v124 = v77;
          v125 = 2048;
          v126 = v81;
          _os_log_impl(dword_100000000, v82, OS_LOG_TYPE_DEBUG, "[FormController] CLGaitEvents::HealthKitResult, groundContactTimeRejectionStatus,%{public}d,leftGroundContactTime,%.2f,rightGroundContactTime,%.2f,leftGroundContactTimePercentage,%.2f,rightGroundContactTimePercentage,%.2f,groundContactTime,%.2f", buf, 0x3Au);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193B6C0(buf);
          v103 = 67241472;
          v104 = v78;
          v105 = 2048;
          v106 = v73;
          v107 = 2048;
          v108 = v74;
          v109 = 2048;
          v110 = v76;
          v111 = 2048;
          v112 = v77;
          v113 = 2048;
          v114 = v81;
          v86 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "GroundContactTimeHKResult CLRunning::FormModels::aggregatedGroundContactTimeInWindow(const StepQueue &, CFAbsoluteTime)", "%s\n", v86);
          if (v86 != buf)
          {
            free(v86);
          }
        }

        if (sub_1007D2134(v7))
        {
          sub_1015994D4(&v97, buf);
          if (qword_102637F48 != -1)
          {
            sub_10193BA04();
          }

          if (qword_102637F50)
          {
            operator new();
          }

          PB::Base::~Base(buf);
        }
      }

      v83 = *&v99[16];
      *(a3 + 32) = *v99;
      *(a3 + 48) = v83;
      *(a3 + 64) = v100;
      v84 = v98;
      *a3 = v97;
      *(a3 + 16) = v84;
    }

    else
    {
      if (qword_1025D44C0 != -1)
      {
        sub_10193B310();
      }

      v68 = qword_1025D44C8;
      if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_ERROR, "[FormController] step aggregation failed", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193B6C0(buf);
        LOWORD(v103) = 0;
        v85 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "GroundContactTimeHKResult CLRunning::FormModels::aggregatedGroundContactTimeInWindow(const StepQueue &, CFAbsoluteTime)", "%s\n", v85);
        if (v85 != buf)
        {
          free(v85);
        }
      }

      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      *(a3 + 56) = 1;
      *(a3 + 64) = 0;
      *(a3 + 72) = 0;
    }

    sub_100102BC8(v93);
    return sub_100102BC8(v95);
  }

  else
  {
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 56) = 32;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
  }

  return result;
}

void sub_1007D2BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100102BC8(&a21);
  sub_100102BC8(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D2C40(void *a1, void *a2, void *a3, char *a4, unint64_t a5, char *a6, uint64_t a7)
{
  if (a7 == a5 || 51 * ((a6 - a4) >> 3) - 0x3333333333333333 * ((a7 - *a6) >> 4) + 0x3333333333333333 * ((a5 - *a4) >> 4) <= 3)
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B454();
    }

    v7 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[FormController] Insufficient number of samples to aggregate", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193C428();
    }

    return 0;
  }

  else
  {
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v59 = sub_1007D35EC(a1, 0, &v73, &v70, a4, a5, a6, a7);
    if (v59)
    {
      v11 = v70;
      v61 = v71;
      if (v70 != v71)
      {
        v60 = a1;
        do
        {
          v12 = v11[1] + 1;
          v13 = v73;
          v14 = v73 + 48 * v12;
          v15 = v14;
          if (v74 <= v14)
          {
            v15 = (v74 - 48);
          }

          v16 = *v11;
          v17 = v11[2];
          v18 = v15[3];
          __src = 0;
          *v80 = 0;
          *&v80[8] = 0;
          __p = 0;
          v65 = 0;
          v66 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v19 = 0xAAAAAAAAAAAAAAABLL * ((48 * v12 - 48 * v16) >> 4);
          sub_1003E4354(&__src, v19);
          sub_1003E4354(&__p, v19);
          sub_1003E4354(&v76, v19);
          if (v16 != v12)
          {
            v20 = &v13[48 * v16];
            do
            {
              v21 = *v80;
              if (*v80 >= *&v80[8])
              {
                v23 = __src;
                v24 = *v80 - __src;
                v25 = (*v80 - __src) >> 3;
                v26 = v25 + 1;
                if ((v25 + 1) >> 61)
                {
                  goto LABEL_96;
                }

                v27 = *&v80[8] - __src;
                if ((*&v80[8] - __src) >> 2 > v26)
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
                  sub_1000B9708(&__src, v28);
                }

                *(8 * v25) = *v20;
                v22 = 8 * v25 + 8;
                memcpy(0, v23, v24);
                v29 = __src;
                __src = 0;
                *v80 = v22;
                *&v80[8] = 0;
                if (v29)
                {
                  operator delete(v29);
                }
              }

              else
              {
                **v80 = *v20;
                v22 = v21 + 8;
              }

              *v80 = v22;
              v30 = v65;
              if (v65 >= v66)
              {
                v32 = __p;
                v33 = v65 - __p;
                v34 = (v65 - __p) >> 3;
                v35 = v34 + 1;
                if ((v34 + 1) >> 61)
                {
                  goto LABEL_96;
                }

                v36 = v66 - __p;
                if ((v66 - __p) >> 2 > v35)
                {
                  v35 = v36 >> 2;
                }

                if (v36 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v37 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v37 = v35;
                }

                if (v37)
                {
                  sub_1000B9708(&__p, v37);
                }

                *(8 * v34) = *(v20 + 1);
                v31 = (8 * v34 + 8);
                memcpy(0, v32, v33);
                v38 = __p;
                __p = 0;
                v65 = v31;
                v66 = 0;
                if (v38)
                {
                  operator delete(v38);
                }
              }

              else
              {
                *v65 = *(v20 + 1);
                v31 = v30 + 1;
              }

              v65 = v31;
              v39 = v77;
              if (v77 >= v78)
              {
                v41 = v76;
                v42 = v77 - v76;
                v43 = (v77 - v76) >> 3;
                v44 = v43 + 1;
                if ((v43 + 1) >> 61)
                {
LABEL_96:
                  sub_10028C64C();
                }

                v45 = v78 - v76;
                if ((v78 - v76) >> 2 > v44)
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
                  sub_1000B9708(&v76, v46);
                }

                *(8 * v43) = *(v20 + 2);
                v40 = (8 * v43 + 8);
                memcpy(0, v41, v42);
                v47 = v76;
                v76 = 0;
                v77 = v40;
                v78 = 0;
                if (v47)
                {
                  operator delete(v47);
                }
              }

              else
              {
                *v77 = *(v20 + 2);
                v40 = v39 + 1;
              }

              v77 = v40;
              v20 += 48;
            }

            while (v20 != v14);
          }

          *buf = 0.0;
          *v86 = 0;
          *&v86[8] = 0;
          sub_1002EBFD4(buf, __src, *v80, (*v80 - __src) >> 3);
          v49 = sub_1007D452C(*buf, *v86, v48);
          if (*buf != 0.0)
          {
            *v86 = *buf;
            operator delete(*buf);
          }

          *buf = 0.0;
          *v86 = 0;
          *&v86[8] = 0;
          sub_1002EBFD4(buf, __p, v65, (v65 - __p) >> 3);
          v51 = sub_1007D452C(*buf, *v86, v50);
          if (*buf != 0.0)
          {
            *v86 = *buf;
            operator delete(*buf);
          }

          *buf = 0.0;
          *v86 = 0;
          *&v86[8] = 0;
          sub_1002EBFD4(buf, v76, v77, (v77 - v76) >> 3);
          v53 = sub_1007D452C(*buf, *v86, v52);
          if (*buf != 0.0)
          {
            *v86 = *buf;
            operator delete(*buf);
          }

          if (v76)
          {
            v77 = v76;
            operator delete(v76);
          }

          if (__p)
          {
            v65 = __p;
            operator delete(__p);
          }

          if (__src)
          {
            *v80 = __src;
            operator delete(__src);
          }

          __p = *&v53;
          v65 = *&v49;
          v66 = *&v51;
          v67 = v18;
          v68 = v17;
          v69 = 1;
          if (qword_1025D44C0 != -1)
          {
            sub_10193B310();
          }

          v54 = qword_1025D44C8;
          if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67110144;
            *&buf[4] = v69;
            *v86 = 2048;
            *&v86[2] = __p;
            *&v86[10] = 2048;
            *&v86[12] = v65;
            v87 = 2048;
            v88 = v66;
            v89 = 1024;
            v90 = v68;
            _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "[FormController] AggregatedGCT,isSuccessful,%d,groundContactTime,%.2f,initialContactTime,%.2f,toeOffTime,%.2f,stepSide,%d.", buf, 0x2Cu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10193B6C0(buf);
            LODWORD(__src) = 67110144;
            HIDWORD(__src) = v69;
            *v80 = 2048;
            *&v80[2] = __p;
            *&v80[10] = 2048;
            *&v80[12] = v65;
            v81 = 2048;
            v82 = v66;
            v83 = 1024;
            v84 = v68;
            v56 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRunning::FormModels::aggregateEventsOverStride(std::deque<Timeseries> &, std::deque<Timeseries> &, const std::deque<CLGaitEvents::LoggingModelOutput>::const_iterator, const std::deque<CLGaitEvents::LoggingModelOutput>::const_iterator)", "%s\n", v56);
            if (v56 != buf)
            {
              free(v56);
            }
          }

          if (sub_1007D2134(v60))
          {
            sub_101599484(&__p, buf);
            if (qword_102637F48 != -1)
            {
              sub_10193BA04();
            }

            if (qword_102637F50)
            {
              operator new();
            }

            PB::Base::~Base(buf);
          }

          *buf = v18 - *(v60 + 448);
          v55 = a2;
          if (v68 == 2 || (v55 = a3, v68 == 1))
          {
            sub_1007D3F60(v55, buf, &__p);
          }

          v11 += 3;
        }

        while (v11 != v61);
      }
    }

    else
    {
      if (qword_1025D44C0 != -1)
      {
        sub_10193B310();
      }

      v57 = qword_1025D44C8;
      if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "[FormController] Cannot process candidates for aggregation", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193B6C0(buf);
        LOWORD(__src) = 0;
        v58 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRunning::FormModels::aggregateEventsOverStride(std::deque<Timeseries> &, std::deque<Timeseries> &, const std::deque<CLGaitEvents::LoggingModelOutput>::const_iterator, const std::deque<CLGaitEvents::LoggingModelOutput>::const_iterator)", "%s\n", v58);
        if (v58 != buf)
        {
          free(v58);
        }
      }
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    v8 = v59;
    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }
  }

  return v8;
}

void sub_1007D351C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D35EC(void *a1, int a2, void *a3, const void **a4, char *a5, unint64_t a6, char *a7, uint64_t a8)
{
  if (a8 == a6)
  {
    LODWORD(v8) = 0;
LABEL_70:
    if (qword_1025D44C0 != -1)
    {
      sub_10193B454();
    }

    v70 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v120 = v8;
      _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_ERROR, "[FormController] GCT Buffer Overload - numSamples: %d", buf, 8u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_10193C514();
      return 0;
    }

    return result;
  }

  v9 = a5;
  v8 = 51 * ((a7 - a5) >> 3) - 0x3333333333333333 * ((a8 - *a7) >> 4) + 0x3333333333333333 * ((a6 - *a5) >> 4);
  if ((v8 - 1) >= 0x440)
  {
    goto LABEL_70;
  }

  v104 = v8 - 1;
  v10 = a3;
  sub_1007D3EA0(a3, v8);
  v11 = a2;
  v13 = a6;
  v12 = a7;
  v14 = a8;
  v114 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v9;
  v19 = a6;
  v20 = 1;
  v107 = v9;
LABEL_5:
  v106 = 51 * ((v18 - v9) >> 3);
  v21 = v19;
  v112 = v18;
  while (1)
  {
    v22 = v20;
    v23 = v14 - *v12;
    v24 = 0xCCCCCCCCCCCCCCCDLL * (v23 >> 4);
    if (v23 < 81)
    {
      v29 = 51 - v24;
      v30 = (51 - v24) / 0x33;
      v27 = &v12[-8 * v30];
      v28 = *v27 + 80 * (51 * v30 - v29) + 4000;
    }

    else
    {
      v25 = v24 - 1;
      v26 = (v24 - 1) / 0x33;
      v27 = &v12[8 * v26];
      v28 = *v27 + 80 * (v25 - 51 * v26);
    }

    if (v18 >= v27 && (v18 != v27 || v21 >= v28))
    {
      break;
    }

    v32 = v19 - *v18;
    v33 = 0xCCCCCCCCCCCCCCCDLL * (v32 >> 4);
    if (v32 < -79)
    {
      v34 = (*&v18[-8 * ((49 - v33) / 0x33)] + 80 * (v33 - 49 + 51 * ((49 - v33) / 0x33)) + 4000);
    }

    else
    {
      v34 = (*&v18[8 * ((v33 + 1) / 0x33)] + 80 * ((v33 + 1) % 0x33));
    }

    if (v21 == v13)
    {
      v35 = 0;
      if (!v11)
      {
LABEL_23:
        v37 = (v21 + 8);
        ++v34;
        goto LABEL_25;
      }
    }

    else
    {
      v35 = v33 + v106 + 858993459 * ((v13 - *v107) >> 4);
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    if (v11 == 1)
    {
      v37 = (v21 + 16);
      v34 += 2;
    }

    else
    {
      v36 = 0.0;
      v37 = v21;
      if (v11 != 2)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    v36 = *v34 - *v37;
LABEL_26:
    v38 = fabs(v36);
    if (v38 > 0.03)
    {
      ++v20;
    }

    v39 = *(v21 + 64);
    if (v38 <= 0.03)
    {
      ++v17;
      if (v39 == 2)
      {
        v15 = (v15 + 1);
      }

      else if (v39 == 1)
      {
        v16 = (v16 + 1);
      }
    }

    else
    {
      if (v17 >= 1)
      {
        if (v16 > v15)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }

        if (v16 == v15)
        {
          v41 = v15 != 0;
        }

        else
        {
          v41 = v40;
        }

        v43 = a4[1];
        v42 = a4[2];
        if (v43 >= v42)
        {
          v45 = *a4;
          v46 = v43 - *a4;
          v47 = 0xAAAAAAAAAAAAAAABLL * (v46 >> 2) + 1;
          if (v47 > 0x1555555555555555)
          {
            goto LABEL_116;
          }

          v117 = v20;
          v48 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v45) >> 2);
          if (2 * v48 > v47)
          {
            v47 = 2 * v48;
          }

          if (v48 >= 0xAAAAAAAAAAAAAAALL)
          {
            v49 = 0x1555555555555555;
          }

          else
          {
            v49 = v47;
          }

          if (v49)
          {
            sub_1007D4324(a4, v49);
          }

          v50 = (4 * (v46 >> 2));
          *v50 = v114;
          v50[1] = v35;
          v50[2] = v41;
          v44 = v50 + 3;
          v51 = v50 - v46;
          memcpy(v50 - v46, v45, v46);
          v52 = *a4;
          *a4 = v51;
          a4[1] = v44;
          a4[2] = 0;
          if (v52)
          {
            operator delete(v52);
          }

          v12 = a7;
          v14 = a8;
          v13 = a6;
          v11 = a2;
          v10 = a3;
          v18 = v112;
          v20 = v117;
        }

        else
        {
          *v43 = v114;
          v43[1] = v35;
          v44 = v43 + 3;
          v43[2] = v41;
        }

        a4[1] = v44;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      v114 = v35 + 1;
    }

    v53 = *(v21 + 8);
    *&v54 = *v21;
    v55 = *(v21 + 48);
    v56 = *(v10 + 8);
    v57 = *(v10 + 16);
    if (v56 >= v57)
    {
      v59 = 0xAAAAAAAAAAAAAAABLL * ((v56 - *v10) >> 4);
      v60 = v59 + 1;
      if (v59 + 1 > 0x555555555555555)
      {
        goto LABEL_115;
      }

      v118 = v20;
      v115 = v17;
      v61 = v16;
      v62 = 0xAAAAAAAAAAAAAAABLL * ((v57 - *v10) >> 4);
      if (2 * v62 > v60)
      {
        v60 = 2 * v62;
      }

      if (v62 >= 0x2AAAAAAAAAAAAAALL)
      {
        v63 = 0x555555555555555;
      }

      else
      {
        v63 = v60;
      }

      if (v63)
      {
        sub_1007D44D4(v10, v63);
      }

      v64 = v15;
      v65 = 48 * v59;
      *v65 = v53;
      *(v65 + 16) = v54;
      *(v65 + 24) = v55;
      *(v65 + 32) = v39;
      *(v65 + 36) = 0;
      *(v65 + 40) = v22;
      v58 = 48 * v59 + 48;
      v66 = *(v10 + 8) - *v10;
      v67 = (48 * v59 - v66);
      memcpy(v67, *v10, v66);
      v68 = *v10;
      *v10 = v67;
      *(v10 + 8) = v58;
      *(v10 + 16) = 0;
      if (v68)
      {
        operator delete(v68);
      }

      v12 = a7;
      v14 = a8;
      v13 = a6;
      v11 = a2;
      v15 = v64;
      v16 = v61;
      v17 = v115;
      v10 = a3;
      v18 = v112;
      v20 = v118;
    }

    else
    {
      *(&v54 + 1) = *(v21 + 48);
      *v56 = v53;
      *(v56 + 16) = v54;
      *(v56 + 32) = v39;
      *(v56 + 36) = 0;
      *(v56 + 40) = v22;
      v58 = v56 + 48;
    }

    *(v10 + 8) = v58;
    v21 += 80;
    v19 += 80;
    if (*v18 + 4080 == v19)
    {
      v69 = *(v18 + 1);
      v18 += 8;
      v19 = v69;
      v9 = v107;
      goto LABEL_5;
    }
  }

  v72 = a1[328];
  if (a1[329] == v72)
  {
    v74 = 0;
  }

  else
  {
    v73 = a1[332] + a1[331];
    v74 = *(v72 + 8 * (v73 / 0x33)) + 80 * (v73 % 0x33);
  }

  if (v74 != v14)
  {
    v75 = *(v14 + 8);
    *&v76 = *v14;
    v77 = *(v14 + 48);
    v78 = *(v14 + 64);
    v79 = *(v10 + 8);
    v80 = *(v10 + 16);
    if (v79 >= v80)
    {
      v82 = 0xAAAAAAAAAAAAAAABLL * ((v79 - *v10) >> 4);
      v83 = v82 + 1;
      if (v82 + 1 > 0x555555555555555)
      {
LABEL_115:
        sub_10028C64C();
      }

      v84 = v17;
      v85 = 0xAAAAAAAAAAAAAAABLL * ((v80 - *v10) >> 4);
      if (2 * v85 > v83)
      {
        v83 = 2 * v85;
      }

      if (v85 >= 0x2AAAAAAAAAAAAAALL)
      {
        v86 = 0x555555555555555;
      }

      else
      {
        v86 = v83;
      }

      if (v86)
      {
        sub_1007D44D4(v10, v86);
      }

      v87 = 48 * v82;
      *v87 = v75;
      *(v87 + 16) = v76;
      *(v87 + 24) = v77;
      *(v87 + 32) = v78;
      *(v87 + 36) = 1;
      *(v87 + 40) = v20;
      v81 = 48 * v82 + 48;
      v88 = *(v10 + 8) - *v10;
      v89 = 48 * v82 - v88;
      memcpy((v87 - v88), *v10, v88);
      v90 = *v10;
      *v10 = v89;
      *(v10 + 8) = v81;
      *(v10 + 16) = 0;
      if (v90)
      {
        operator delete(v90);
      }

      v17 = v84;
      v10 = a3;
    }

    else
    {
      *(&v76 + 1) = *(v14 + 48);
      *v79 = v75;
      *(v79 + 16) = v76;
      *(v79 + 32) = v78;
      *(v79 + 36) = 1;
      *(v79 + 40) = v20;
      v81 = v79 + 48;
    }

    *(v10 + 8) = v81;
  }

  result = 1;
  if (v17 >= 2)
  {
    if (v16 > v15)
    {
      v91 = 1;
    }

    else
    {
      v91 = 2;
    }

    if (v16 == v15)
    {
      v92 = v15 != 0;
    }

    else
    {
      v92 = v91;
    }

    v94 = a4[1];
    v93 = a4[2];
    if (v94 >= v93)
    {
      v96 = *a4;
      v97 = v94 - *a4;
      v98 = 0xAAAAAAAAAAAAAAABLL * (v97 >> 2) + 1;
      if (v98 > 0x1555555555555555)
      {
LABEL_116:
        sub_10028C64C();
      }

      v99 = 0xAAAAAAAAAAAAAAABLL * ((v93 - v96) >> 2);
      if (2 * v99 > v98)
      {
        v98 = 2 * v99;
      }

      if (v99 >= 0xAAAAAAAAAAAAAAALL)
      {
        v100 = 0x1555555555555555;
      }

      else
      {
        v100 = v98;
      }

      if (v100)
      {
        sub_1007D4324(a4, v100);
      }

      v101 = (4 * (v97 >> 2));
      *v101 = v114;
      v101[1] = v104;
      v101[2] = v92;
      v95 = v101 + 3;
      v102 = v101 - v97;
      memcpy(v101 - v97, v96, v97);
      v103 = *a4;
      *a4 = v102;
      a4[1] = v95;
      a4[2] = 0;
      if (v103)
      {
        operator delete(v103);
      }
    }

    else
    {
      *v94 = v114;
      v94[1] = v104;
      v95 = v94 + 3;
      v94[2] = v92;
    }

    a4[1] = v95;
    return 1;
  }

  return result;
}

void *sub_1007D3EA0(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      sub_1007D44D4(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

uint64_t sub_1007D3F60(void *a1, void *a2, uint64_t *a3)
{
  v6 = a1[2];
  v7 = a1[1];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 32 * (v6 - v7) - 1;
  }

  v9 = a1[4];
  v10 = a1[5];
  v11 = v10 + v9;
  if (v8 == v10 + v9)
  {
    sub_1007D5718(a1);
    v9 = a1[4];
    v10 = a1[5];
    v7 = a1[1];
    v11 = v9 + v10;
  }

  v12 = (*(v7 + ((v11 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v11);
  v13 = *a3;
  *v12 = *a2;
  v12[1] = v13;
  v14 = v10 + 1;
  a1[5] = v14;
  v15 = v9 + v14;
  v16 = (v7 + 8 * (v15 >> 8));
  if (v15)
  {
    v17 = *v16 + 16 * v15;
  }

  else
  {
    v17 = *(v16 - 1) + 4096;
  }

  return v17 - 16;
}

__n128 sub_1007D4024(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 51 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1007D6688(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x33)) + 80 * (v7 % 0x33);
  *v8 = *a2;
  result = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 64);
  *(v8 + 48) = *(a2 + 48);
  *(v8 + 64) = v11;
  *(v8 + 16) = result;
  *(v8 + 32) = v10;
  ++a1[5];
  return result;
}

void *sub_1007D4114(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 + 0x6DB6DB6DB6DB6DB7 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 72 - v3;
      v6 = &v2[-(v5 / 0x49)];
      *result = v6;
      v4 = *v6 + 56 * (73 * (v5 / 0x49) - v5) + 4032;
    }

    else
    {
      *result = &v2[v3 / 0x49];
      v4 = v2[v3 / 0x49] + 56 * (v3 % 0x49);
    }

    result[1] = v4;
  }

  return result;
}

void *sub_1007D41C8(void *a1, uint64_t a2, double *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = a4;
    do
    {
      v8 = v6 >> 1;
      v11 = a1;
      v12 = a2;
      sub_1007D4270(&v11, v6 >> 1);
      v9 = v12;
      if (*(v12 + 8) < *a3)
      {
        a2 = v12 + 184;
        v12 += 184;
        a1 = v11;
        if (v9 + 184 - *v11 == 4048)
        {
          a1 = v11 + 1;
          a2 = v11[1];
        }

        v8 = v6 + ~v8;
      }

      v6 = v8;
    }

    while (v8);
  }

  return a1;
}

void *sub_1007D4270(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x2C8590B21642C859 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 21 - v3;
      v6 = &v2[-(v5 / 0x16)];
      *result = v6;
      v4 = *v6 + 184 * (22 * (v5 / 0x16) - v5) + 3864;
    }

    else
    {
      *result = &v2[v3 / 0x16];
      v4 = v2[v3 / 0x16] + 184 * (v3 % 0x16);
    }

    result[1] = v4;
  }

  return result;
}

void sub_1007D4324(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_1007D437C(void *a1, uint64_t a2, double *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = a4;
    do
    {
      v8 = v6 >> 1;
      v11 = a1;
      v12 = a2;
      sub_1007D4424(&v11, v6 >> 1);
      v9 = v12;
      if (*(v12 + 48) < *a3)
      {
        a2 = v12 + 80;
        v12 += 80;
        a1 = v11;
        if (v9 + 80 - *v11 == 4080)
        {
          a1 = v11 + 1;
          a2 = v11[1];
        }

        v8 = v6 + ~v8;
      }

      v6 = v8;
    }

    while (v8);
  }

  return a1;
}

void *sub_1007D4424(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x3333333333333333 * ((result[1] - **result) >> 4);
    if (v3 < 1)
    {
      v5 = 50 - v3;
      v6 = &v2[-(v5 / 0x33)];
      *result = v6;
      v4 = *v6 + 80 * (51 * (v5 / 0x33) - v5) + 4000;
    }

    else
    {
      *result = &v2[v3 / 0x33];
      v4 = v2[v3 / 0x33] + 80 * (v3 % 0x33);
    }

    result[1] = v4;
  }

  return result;
}

void sub_1007D44D4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

double sub_1007D452C(double *a1, double *a2, double a3)
{
  v3 = a2 - a1;
  if (a2 - a1 <= 7)
  {
    sub_1018B144C();
  }

  v4 = a1;
  v5 = (v3 >> 1) & 0x3FFFFFFFFFFFFFF8;
  v6 = (a1 + v5);
  if ((a1 + v5) != a2)
  {
    sub_1003E3EC0(a1, (a1 + v5), a2, a3);
  }

  if ((v3 & 8) != 0)
  {
    return *v6;
  }

  if (v5)
  {
    v7 = v4 + 1;
    if (v4 + 1 != v6)
    {
      v8 = *v4;
      v9 = v4 + 1;
      do
      {
        v10 = *v9++;
        v11 = v10;
        if (v8 < v10)
        {
          v8 = v11;
          v4 = v7;
        }

        v7 = v9;
      }

      while (v9 != v6);
    }
  }

  return *v4 + (*v6 - *v4) * 0.5;
}

void *sub_1007D45EC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = a4;
    do
    {
      v8 = v6 >> 1;
      v11 = a1;
      v12 = a2;
      sub_1007D4114(&v11, v6 >> 1);
      v9 = v12;
      if (*(v12 + 40) <= *(a3 + 40))
      {
        a2 = v12 + 56;
        v12 += 56;
        a1 = v11;
        if (v9 + 56 - *v11 == 4088)
        {
          a1 = v11 + 1;
          a2 = v11[1];
        }

        v8 = v6 + ~v8;
      }

      v6 = v8;
    }

    while (v8);
  }

  return a1;
}

void *sub_1007D4694(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v6 = a1;
  if (a4 != a2)
  {
    v7 = 73 * (a3 - a1) + 0x6DB6DB6DB6DB6DB7 * ((a4 - *a3) >> 3) - 0x6DB6DB6DB6DB6DB7 * ((a2 - *a1) >> 3);
    if (v7)
    {
      do
      {
        v9 = v7 >> 1;
        v11 = v6;
        v12 = v5;
        sub_1007D4114(&v11, v7 >> 1);
        if (*(a5 + 40) > *(v12 + 40))
        {
          v6 = v11;
          v5 = v12 + 56;
          if (v12 + 56 - *v11 == 4088)
          {
            v6 = v11 + 1;
            v5 = v11[1];
          }

          v9 = v7 + ~v9;
        }

        v7 = v9;
      }

      while (v9);
    }
  }

  return v6;
}

uint64_t sub_1007D47A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 16) <= a3)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10193B704();
    }

    v11 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: false, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMRandomForest.h, line 56,Index exceeds ensemble size.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193C61C();
    }

    if (qword_1025D48A0 != -1)
    {
      sub_10193B718();
    }

    v12 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Error: Index exceeds ensemble size", v22, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193C700();
    }
  }

  else
  {
    v3 = 0;
    v4 = (*(a1 + 8) + 16 * a3);
    while (v3 < v4[1])
    {
      v5 = *v4 + 10 * v3;
      v6 = *(v5 + 4);
      if (v6 >= 0x16)
      {
        if (qword_1025D48A0 != -1)
        {
          sub_10193B704();
        }

        v15 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
        {
          *v21 = 0;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "Assertion failed: false, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMRandomForest.h, line 65,Invalid decision tree, feature index exceeds feature array.", v21, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10193C9AC();
        }

        if (qword_1025D48A0 != -1)
        {
          sub_10193B718();
        }

        v16 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          *v20 = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "Error: Invalid decision tree, feature index exceeds feature array", v20, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193CA90();
        }

        return -1;
      }

      v7 = *(a2 + 4 * v6);
      if (v7 >= *v5)
      {
        v8 = 8;
      }

      else
      {
        v8 = 6;
      }

      if (v7 <= *v5)
      {
        v9 = 6;
      }

      else
      {
        v9 = 8;
      }

      if (!*(a1 + 24))
      {
        v8 = v9;
      }

      v3 = *(v5 + v8);
      if ((v3 & 0x8000000000000000) != 0)
      {
        return ~v3;
      }
    }

    if (qword_1025D48A0 != -1)
    {
      sub_10193B704();
    }

    v13 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v19 = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "Assertion failed: false, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMRandomForest.h, line 91,Invalid decision tree, child index exceeds node array.", v19, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193C7E4();
    }

    if (qword_1025D48A0 != -1)
    {
      sub_10193B718();
    }

    v14 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *v18 = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Error: Invalid decision tree, child index exceeds node array", v18, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193C8C8();
    }
  }

  return -1;
}

uint64_t sub_1007D4AD0(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 17;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 34;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

uint64_t sub_1007D4B7C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 42;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 85;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

void *sub_1007D4C28(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_1007D4DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1007D4DFC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_1007D4F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1007D4FD0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_1007D5158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1007D51A4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x55;
  v3 = v1 - 85;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_1007D532C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1007D5378(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x22;
  v3 = v1 - 34;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_1007D5500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float sub_1007D554C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 16))(a1);
  v6 = 0.0;
  if (v5 != -1)
  {
    v7 = (a1[4] + 16 * a3);
    if (v7[1] <= v5)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_10193B704();
      }

      v8 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: false, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMRandomForestRegression.h, line 58,Invalid decision tree, regression index exceeds array length.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193CB74();
      }

      if (qword_1025D48A0 != -1)
      {
        sub_10193B718();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Error: Invalid decision tree, regression index exceeds array length", v11, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193CC58();
      }
    }

    else
    {
      return *(*v7 + 4 * v5);
    }
  }

  return v6;
}

uint64_t sub_1007D56B8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x22)
  {
    a2 = 1;
  }

  if (v2 < 0x44)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 34;
  }

  return v4 ^ 1u;
}

void *sub_1007D5718(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_1007D58A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007D58EC(uint64_t a1, void *a2, __int128 *a3, void *a4, __int128 *a5)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_1007D5934(a1, a2, a3, a4, a5);
  return a1;
}

void *sub_1007D5934(void *a1, void *a2, __int128 *a3, void *a4, __int128 *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 73 * (a4 - a2) + 0x6DB6DB6DB6DB6DB7 * ((a5 - *a4) >> 3) - 0x6DB6DB6DB6DB6DB7 * ((a3 - *a2) >> 3);
  }

  return sub_1007D5998(a1, a2, a3, v5);
}

void *sub_1007D5998(void *a1, void *a2, __int128 *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 73 * ((v9 - v8) >> 3) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_1007D5B2C(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 / 0x49));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 56 * (v11 % 0x49);
    v15 = v14;
  }

  v26 = v13;
  v27 = v15;
  result = sub_1007D4114(&v26, a4);
  v17 = v27;
  if (v14 != v27)
  {
    v18 = v26;
    do
    {
      if (v13 == v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4088;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = v14;
        do
        {
          v21 = *a3;
          v22 = a3[1];
          v23 = a3[2];
          *(v20 + 48) = *(a3 + 6);
          *(v20 + 16) = v22;
          *(v20 + 32) = v23;
          *v20 = v21;
          a3 = (a3 + 56);
          if ((a3 - *a2) == 4088)
          {
            v24 = a2[1];
            ++a2;
            a3 = v24;
          }

          v20 += 56;
        }

        while (v20 != v19);
      }

      a1[5] += 0x6DB6DB6DB6DB6DB7 * ((v19 - v14) >> 3);
      if (v13 == v18)
      {
        break;
      }

      v25 = v13[1];
      ++v13;
      v14 = v25;
    }

    while (v25 != v17);
  }

  return result;
}

void *sub_1007D5B2C(void *result, unint64_t a2)
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

  if (v4 % 0x49)
  {
    v5 = v4 / 0x49 + 1;
  }

  else
  {
    v5 = v4 / 0x49;
  }

  v6 = result[4];
  if (v5 >= v6 / 0x49)
  {
    v7 = v6 / 0x49;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0x49)
  {
    for (result[4] = v6 - 73 * v7; v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_10045E430(v2, v16);
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
        sub_10045E858(result, v12);
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

    for (result[4] -= 73 * v7; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_10045E430(v2, v16);
    }
  }

  return result;
}

void sub_1007D5E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D5E78(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x33)
  {
    a2 = 1;
  }

  if (v2 < 0x66)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 51;
  }

  return v4 ^ 1u;
}

float *sub_1007D5ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v6 = sub_10011AF6C(a1, v4);
      v7 = v6 * sub_10011AF6C(a1, i);
      result = sub_1004ACF54(a2, v4, i);
      *result = v7;
    }

    ++v4;
  }

  while (v4 != 3);
  return result;
}

float sub_1007D5F60(uint64_t a1, uint8_t *a2)
{
  if (a2 >= 9)
  {
    sub_10193CD3C(a2);
  }

  return *(a1 + 4 * a2);
}

float32_t sub_1007D5F9C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  do
  {
    *sub_1004ACF54(a2, v4, v4) = 1065353216;
    v5 = *sub_1004ACF54(a1, v4, v4);
    *sub_10011AF30(&v70, v4) = v5;
    v6 = *sub_1004ACF54(a1, v4, v4);
    *sub_10011AF30(&v68, v4) = v6;
    *sub_10011AF30(&v66, v4++) = 0;
  }

  while (v4 != 3);
  v7 = 0;
  do
  {
    v8 = 0;
    v9 = 1;
    v10 = 0.0;
    do
    {
      v11 = v9;
      v12 = v8 + 1;
      do
      {
        v13 = sub_1004ACF54(a1, v8, v12);
        v14 = *v13;
        if (*v13 <= 0.0)
        {
          v14 = -*v13;
        }

        v10 = v10 + v14;
        ++v12;
      }

      while (v12 != 3);
      v9 = 0;
      v8 = 1;
    }

    while ((v11 & 1) != 0);
    if (v10 == 0.0)
    {
      break;
    }

    v15 = 0.0;
    if (v7 <= 2)
    {
      v15 = (v10 * 0.2) / 9.0;
    }

    v16 = 0;
    v17 = 0;
    v65 = v7 + 1;
    v18 = 1;
    do
    {
      v19 = v18;
      v20 = (v17 + 1);
      do
      {
        v21 = sub_1004ACF54(a1, v17, v20);
        v22 = *v21;
        if (*v21 <= 0.0)
        {
          v22 = -*v21;
        }

        v23 = v22 * 100.0;
        if (v7 < 4)
        {
          goto LABEL_31;
        }

        v24 = sub_10011AF30(&v70, v17);
        v25 = v23 + *v24;
        if (v25 <= 0.0)
        {
          v26 = -v25;
        }

        else
        {
          v26 = v23 + *v24;
        }

        v27 = sub_10011AF30(&v70, v17);
        v28 = *v27;
        if (*v27 <= 0.0)
        {
          v28 = -*v27;
        }

        if (v26 != v28)
        {
          goto LABEL_31;
        }

        v29 = sub_10011AF30(&v70, v20);
        v30 = v23 + *v29;
        if (v30 <= 0.0)
        {
          v31 = -v30;
        }

        else
        {
          v31 = v23 + *v29;
        }

        v32 = sub_10011AF30(&v70, v20);
        v33 = *v32;
        if (*v32 <= 0.0)
        {
          v33 = -*v32;
        }

        if (v31 == v33)
        {
          *sub_1004ACF54(a1, v17, v20) = 0;
        }

        else
        {
LABEL_31:
          v34 = sub_1004ACF54(a1, v17, v20);
          v35 = *v34;
          if (*v34 <= 0.0)
          {
            v35 = -*v34;
          }

          if (v35 > v15)
          {
            v36 = *sub_10011AF30(&v70, v20);
            v37 = v36 - *sub_10011AF30(&v70, v17);
            v38 = v23 + v37;
            if ((v23 + v37) <= 0.0)
            {
              v38 = -(v23 + v37);
            }

            v39 = -v37;
            if (v37 > 0.0)
            {
              v39 = v37;
            }

            if (v38 == v39)
            {
              v40 = *sub_1004ACF54(a1, v17, v20) / v37;
            }

            else
            {
              v41 = sub_1004ACF54(a1, v17, v20);
              v42 = (v37 * 0.5) / *v41;
              v43 = -v42;
              v44 = v42 < 0.0;
              if (v42 > 0.0)
              {
                v43 = (v37 * 0.5) / *v41;
              }

              v45 = 1.0 / (v43 + sqrtf((v42 * v42) + 1.0));
              if (v44)
              {
                v40 = -v45;
              }

              else
              {
                v40 = v45;
              }
            }

            v46 = 1.0 / sqrtf((v40 * v40) + 1.0);
            v47 = v40 * v46;
            v48 = (v40 * v46) / (v46 + 1.0);
            v49 = v40 * *sub_1004ACF54(a1, v17, v20);
            v50 = sub_10011AF30(&v66, v17);
            *v50 = *v50 - v49;
            v51 = sub_10011AF30(&v66, v20);
            *v51 = v49 + *v51;
            v52 = sub_10011AF30(&v70, v17);
            *v52 = *v52 - v49;
            v53 = sub_10011AF30(&v70, v20);
            *v53 = v49 + *v53;
            *sub_1004ACF54(a1, v17, v20) = 0;
            if (v16)
            {
              v54 = *(a1 + 12);
              v55 = sub_1004ACF54(a1, 0, v20);
              v56 = *v55;
              *(a1 + 12) = v54 - (v47 * (*v55 + (v54 * v48)));
              *sub_1004ACF54(a1, 0, v20) = v56 + (v47 * (v54 - (v56 * v48)));
            }

            if (v17 + 1 < v20)
            {
              do
              {
                v57 = *sub_1004ACF54(a1, v17, 1uLL);
                v58 = *(a1 + 28);
                *sub_1004ACF54(a1, v17, 1uLL) = v57 + (-v47 * (v58 + (v57 * v48)));
                *(a1 + 28) = v58 + (v47 * (v57 - (v58 * v48)));
              }

              while (v20 > 2);
            }

            if (v20 != 2)
            {
              v59 = *sub_1004ACF54(a1, v17, 2uLL);
              v60 = *sub_1004ACF54(a1, v20, 2uLL);
              *sub_1004ACF54(a1, v17, 2uLL) = v59 - (v47 * (v60 + (v59 * v48)));
              *sub_1004ACF54(a1, v20, 2uLL) = v60 + (v47 * (v59 - (v60 * v48)));
            }

            v61 = 0;
            do
            {
              v62 = *sub_1004ACF54(a2, v61, v17);
              v63 = *sub_1004ACF54(a2, v61, v20);
              *sub_1004ACF54(a2, v61, v17) = v62 + (-v47 * (v63 + (v62 * v48)));
              *sub_1004ACF54(a2, v61++, v20) = v63 + (v47 * (v62 - (v63 * v48)));
            }

            while (v61 != 3);
          }
        }

        ++v20;
      }

      while (v20 != 3);
      v18 = 0;
      v16 = 1;
      v17 = 1;
    }

    while ((v19 & 1) != 0);
    v68 = vadd_f32(v66, v68);
    v69 = v67 + v69;
    v70 = v68;
    v71 = v69;
    v67 = 0.0;
    v66 = 0;
    ++v7;
  }

  while (v65 != 10);
  return v70.f32[0];
}

int *sub_1007D6564(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v6 = *sub_10011AF30(*a1, a2);
  result = sub_10011AF30(*a1, a3);
  if (v6 < *result)
  {
    v8 = sub_10011AF30(*a1, a2);
    v9 = sub_10011AF30(*a1, a3);
    v10 = *v8;
    *v8 = *v9;
    *v9 = v10;
    v11 = sub_1004ACF54(a1[1], 0, a2);
    v12 = sub_1004ACF54(a1[1], 0, a3);
    v13 = *v11;
    *v11 = *v12;
    *v12 = v13;
    v14 = sub_1004ACF54(a1[1], 1, a2);
    v15 = sub_1004ACF54(a1[1], 1, a3);
    v16 = *v14;
    *v14 = *v15;
    *v15 = v16;
    v17 = sub_1004ACF54(a1[1], 2, a2);
    result = sub_1004ACF54(a1[1], 2, a3);
    v18 = *v17;
    *v17 = *result;
    *result = v18;
  }

  return result;
}

void *sub_1007D6688(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x33;
  v3 = v1 - 51;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_1007D6810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007D685C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 65793;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0xFFFF;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 136) = _Q0;
  *(a1 + 152) = _Q0;
  *(a1 + 168) = _Q0;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0xBFF0000000000000;
  *(a1 + 204) = 0;
  *(a1 + 196) = 0;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0xBFF0000000000000;
  *(a1 + 224) = 0x7FFFFFFF;
  *(a1 + 244) = 0;
  *(a1 + 228) = 0;
  *(a1 + 236) = 0;
  *(a1 + 252) = 0;
  *(a1 + 256) = 0;
  v20 = 0;
  sub_10001CAF4(&v18);
  v11 = sub_10001CB4C(v18, "HSTUpdateWithGPS", &v20);
  if (v19)
  {
    sub_100008080(v19);
  }

  if (v11)
  {
    *a1 = v20;
  }

  sub_10001CAF4(&v18);
  v12 = sub_10001CB4C(v18, "HSTUpdateWithWifi", &v20);
  if (v19)
  {
    sub_100008080(v19);
  }

  if (v12)
  {
    *(a1 + 1) = v20;
  }

  sub_10001CAF4(&v18);
  v13 = sub_10001CB4C(v18, "HSTUpdateWithCell", &v20);
  if (v19)
  {
    sub_100008080(v19);
  }

  if (v13)
  {
    *(a1 + 2) = v20;
  }

  sub_100175E70((a1 + 24), a3);
  v15 = *a2;
  v14 = a2[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a1 + 16);
  *(a1 + 8) = v15;
  *(a1 + 16) = v14;
  if (v16)
  {
    sub_100008080(v16);
  }

  return a1;
}

void sub_1007D6A00(_Unwind_Exception *a1)
{
  sub_100176170(v1 + 24);
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1007D6A4C(uint64_t a1)
{
  v2 = sub_10000B1F8();
  sub_10000AED4(v2, &v5);
  v3 = v6;
  *(a1 + 56) = 0;
  if (qword_1025D4600 != -1)
  {
    sub_10193CF9C();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5.n128_u32[0] = 134217984;
    *(v5.n128_f64 + 4) = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#HST, Turn Detected at time: %.2f", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193D374(v3);
  }
}

void sub_1007D6B6C(uint64_t a1, void *a2)
{
  v3 = sub_100867168(a1, a2);
  *v3 = off_102471EE0;
  *(a1 + 121) = sub_1007D7CC4(v3);
  *(a1 + 122) = sub_1007D6F28();
  *(a1 + 132) = 0;
  *(a1 + 124) = 0;
  sub_10054B43C(a1 + 144, @"com.apple.nanolifestyle.sessiontrackerapp", 1, @"mobile");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  *(a1 + 300) = 0;
  *(a1 + 304) = 0;
  *(a1 + 308) = 0;
  *(a1 + 312) = 0;
  LODWORD(v13) = 0;
  sub_1004861C8((a1 + 320), "OverrideFitnessTrackingChargerWithType", &v13, 0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_1007D6F84, @"NanoLifestylePrivacyPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v5, a1, sub_1007D71B0, @"NanoLifestyleSessionTrackerAppPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v6, a1, sub_1007D73DC, @"NanoLifestyleEnableFitnessDataCollectionSettingDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v7 = (*(*a1 + 216))(a1);
  sub_1008678F8(a1, v7);
  if (objc_opt_class())
  {
    v8 = objc_alloc_init(PDRRegistry);
    *(a1 + 312) = v8;
    [v8 start];
    v9 = +[NSNotificationCenter defaultCenter];
    v10 = *(a1 + 312);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1007D7608;
    v15[3] = &unk_10245B770;
    v15[4] = a1;
    [(NSNotificationCenter *)v9 addObserverForName:PDRDidSetupNotification object:v10 queue:0 usingBlock:v15];
    v11 = +[NSNotificationCenter defaultCenter];
    v12 = *(a1 + 312);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1007D7780;
    v14[3] = &unk_10245B770;
    v14[4] = a1;
    [(NSNotificationCenter *)v11 addObserverForName:PDRDidUnpairNotification object:v12 queue:0 usingBlock:v14];
  }

  sub_10061F1A0();
}

void sub_1007D6EC4(_Unwind_Exception *a1)
{
  v3 = v1[35];
  v1[35] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_10054B4D4(v1 + 18);
  sub_10086763C(v1);
  _Unwind_Resume(a1);
}

id sub_1007D6F28()
{
  result = objc_opt_class();
  if (result)
  {
    v1 = [+[PDRRegistry sharedInstance](PDRRegistry getActiveDevice];

    return [v1 supportsCapability:3319653853];
  }

  return result;
}

void sub_1007D6F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10193D5C8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLFitnessTrackingNotifier::fitnessTrackingStateChanged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10193D5DC();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFitnessTrackingNotifier::fitnessTrackingStateChanged, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007D9F00;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1007D71B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10193D5C8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLFitnessTrackingNotifierWatch::nanoLifestyleSessionTrackerAppPreferencesChanged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10193D5DC();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFitnessTrackingNotifierWatch::nanoLifestyleSessionTrackerAppPreferencesChanged, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007D9F44;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1007D73DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10193D5C8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLFitnessTrackingNotifierWatch::nanoLifestyleEnableFitnessDataCollectionSettingChanged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10193D5DC();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFitnessTrackingNotifierWatch::nanoLifestyleEnableFitnessDataCollectionSettingChanged, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007D9F4C;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_1007D7608(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007D767C;
  v4[3] = &unk_102449A78;
  v4[4] = v1;
  return [v2 async:v4];
}

id sub_1007D7684(_BYTE *a1)
{
  if (qword_1025D44A0 != -1)
  {
    sub_10193D604();
  }

  v2 = qword_1025D44A8;
  if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#SystemState, Pairing state changed", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193D618();
  }

  a1[121] = (*(*a1 + 208))(a1);
  a1[122] = sub_1007D6F28();
  (*(*a1 + 224))(a1);
  return sub_1007D79C8(a1);
}

id sub_1007D7780(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007D77F4;
  v4[3] = &unk_102449A78;
  v4[4] = v1;
  return [v2 async:v4];
}

void sub_1007D77FC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10193D5C8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFitnessTrackingNotifierWatch::onBatteryNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10193D5DC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFitnessTrackingNotifierWatch::onBatteryNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1007D82C8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_1007D79C8(_DWORD *a1)
{
  result = +[CMFitnessShared isDeviceSatellitePaired];
  if (result)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = a1 + 34;
  if (a1[34] != v3)
  {
    *v4 = v3;
    if (qword_1025D44A0 != -1)
    {
      sub_10193D604();
    }

    v5 = qword_1025D44A8;
    if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *v4;
      v7[0] = 67240192;
      v7[1] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CM Satellite Pairing State,%{public}d", v7, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193D6FC(a1 + 34);
    }

    return sub_1007D7ADC(a1);
  }

  return result;
}

uint64_t sub_1007D7ADC(_DWORD *a1)
{
  if (sub_1007D8520(a1))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_1007D86A0(a1, a1 + 31, v2, 1);
  if (sub_1007D85A8(a1))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  sub_1007D86A0(a1, a1 + 32, v3, 2);
  if (sub_1007D8624(a1))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return sub_1007D86A0(a1, a1 + 33, v4, 7);
}

uint64_t sub_1007D7B6C(void *a1)
{
  *a1 = off_102471EE0;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"NanoLifestylePrivacyPreferencesChangedNotification", 0);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v3, a1, @"NanoLifestyleSessionTrackerAppPreferencesChangedNotification", 0);
  if (objc_opt_class())
  {
    [a1[39] stop];
    v4 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v4 removeObserver:a1[39] forKeyPath:PDRDidSetupNotification];
    v5 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v5 removeObserver:a1[39] forKeyPath:PDRDidUnpairNotification];

    a1[39] = 0;
  }

  v6 = a1[35];
  a1[35] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_10054B4D4(a1 + 18);

  return sub_10086763C(a1);
}

void sub_1007D7C8C(void *a1)
{
  sub_1007D7B6C(a1);

  operator delete();
}

uint64_t sub_1007D7CC4(uint64_t a1)
{
  if (*(a1 + 109) == 1)
  {
    if (qword_1025D44A0 != -1)
    {
      sub_10193D604();
    }

    v1 = qword_1025D44A8;
    if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEFAULT, "#SystemState, Overriding device activation status check.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193D9B8();
    }

    return 1;
  }

  if (!objc_opt_class())
  {
    if (qword_1025D44A0 != -1)
    {
      sub_10193D604();
    }

    v3 = qword_1025D44A8;
    if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "#SystemState, PDRRegistry is unavailable, cannot check activation status", v6, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_10193D8D4();
    return 0;
  }

  if ([+[PDRRegistry pairingID] sharedInstance]
  {
    return 1;
  }

  if (qword_1025D44A0 != -1)
  {
    sub_10193D604();
  }

  v4 = qword_1025D44A8;
  if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#SystemState, Unable to obtain pairing id, suspending activity tracking.", v5, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10193D7F0();
    return 0;
  }

  return result;
}

uint64_t sub_1007D7E70()
{
  v0 = CFPreferencesCopyValue(@"EnableFitnessTracking", @"com.apple.nanolifestyle.privacy", @"mobile", kCFPreferencesAnyHost);
  if (!v0)
  {
    if (qword_1025D44A0 != -1)
    {
      sub_10193D604();
    }

    v5 = qword_1025D44A8;
    if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "#SystemState, Failed to get fitness tracking state in Bridge->Motion&Fitness. It may not have been set yet. Assuming default.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193DB80();
    }

    return 1;
  }

  v1 = v0;
  Value = CFBooleanGetValue(v0);
  CFRelease(v1);
  if (Value)
  {
    return 1;
  }

  if (qword_1025D44A0 != -1)
  {
    sub_10193D604();
  }

  v3 = qword_1025D44A8;
  if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#SystemState, Fitness tracking is disabled, suspending activity tracking.", v6, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10193DA9C();
    return 0;
  }

  return result;
}

void sub_1007D7FC0(uint64_t a1)
{
  v2 = *(a1 + 300);
  v3 = sub_1001A5778(a1);
  v12 = v3;
  v13 = *(a1 + 121);
  v14 = *(a1 + 122);
  if (v13 == 1)
  {
    v4 = sub_1001A5778(a1);
    if (v2 == 3)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  if (qword_1025D44A0 != -1)
  {
    sub_10193D604();
  }

  v6 = qword_1025D44A8;
  if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 300);
    *buf = 67240960;
    v25 = v3;
    v26 = 1026;
    v27 = v13;
    v28 = 1026;
    v29 = v7;
    v30 = 1026;
    v31 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#SystemState, Watch, Enabled, %{public}d, DeviceActivated, %{public}d, OnCharger, %{public}d, allowed, %{public}d", buf, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44A0 != -1)
    {
      sub_10193DC64();
    }

    v10 = *(a1 + 300);
    v16 = 67240960;
    v17 = v3;
    v18 = 1026;
    v19 = v13;
    v20 = 1026;
    v21 = v10;
    v22 = 1026;
    v23 = v5;
    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLFitnessTrackingNotifierWatch::notifyClients()", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  *buf = 0;
  if (sub_10000608C(a1, buf, 1))
  {
    *buf = 0;
    (*(*a1 + 152))(a1, buf, &v12, 1, 0xFFFFFFFFLL, 0);
  }

  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(ALActivityLog);
  [(ALActivityLog *)v9 setTimestamp:CFAbsoluteTimeGetCurrent()];
  [(ALActivityLog *)v9 setFitnessTracking:objc_alloc_init(ALCMFitnessTracking)];
  [(ALCMFitnessTracking *)[(ALActivityLog *)v9 fitnessTracking] setFitnessTrackingEnabled:v12];
  [(ALCMFitnessTracking *)[(ALActivityLog *)v9 fitnessTracking] setPowerSource:v2];
  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
  objc_autoreleasePoolPop(v8);
}

void sub_1007D82C8(int *a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*a3 == 7)
  {
    v5 = a1[81];
    v6 = a1[75];
    if (v6 != *(a4 + 12) || v5 != 0)
    {
      v8 = a1 + 75;
      if (v5)
      {
        v9 = a1[81];
      }

      else
      {
        v9 = *(a4 + 12);
      }

      *v8 = v9;
      if (qword_1025D44A0 != -1)
      {
        sub_10193D604();
      }

      v10 = qword_1025D44A8;
      if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = a1[81];
        v12 = *v8;
        v17 = 67240448;
        v18 = v11;
        v19 = 1026;
        v20 = v12;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#SystemState, OverrideChargerType, %{public}d, NotifyChargerType, %{public}d", &v17, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193DD80(a1 + 81, a1 + 75);
      }

      (*(*a1 + 224))(a1);
      v6 = a1[75];
    }

    if (v6 == 3)
    {
      if (qword_1025D44A0 != -1)
      {
        sub_10193DC64();
      }

      v13 = qword_1025D44A8;
      if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#SystemState, Device on-charger, suspending activity tracking.", &v17, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193DE9C();
      }
    }
  }

  else
  {
    if (qword_1025D44A0 != -1)
    {
      sub_10193D604();
    }

    v15 = qword_1025D44A8;
    if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_ERROR))
    {
      v16 = *a3;
      v17 = 67240192;
      v18 = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "#SystemState, Un-handled notification,%{public}d", &v17, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193DC8C(a3);
    }
  }
}

id sub_1007D8520(uint64_t a1)
{
  v4 = 0;
  if (sub_10001CBC0(a1 + 144, @"NLPredictedActivityStartEnableNotification", &v4))
  {
    v2 = [NSNumber numberWithBool:v4];
  }

  else
  {
    v2 = 0;
  }

  return [CMFitnessShared isWorkoutStartReminderEnabledWhenDeviceIsSatellitePaired:*(a1 + 136) == 2 isInMoveTimeMode:*(a1 + 116) == 2 withCurrentSetting:v2];
}

id sub_1007D85A8(uint64_t a1)
{
  v4 = 0;
  if (sub_10001CBC0(a1 + 144, @"NLPredictedActivityEndEnableNotification", &v4))
  {
    v2 = [NSNumber numberWithBool:v4];
  }

  else
  {
    v2 = 0;
  }

  return [CMFitnessShared isWorkoutEndReminderEnabledWhenDeviceIsInMoveTimeMode:*(a1 + 116) == 2 withCurrentSetting:v2];
}

id sub_1007D8624(uint64_t a1)
{
  v4 = 0;
  if (sub_10001CBC0(a1 + 144, @"NLPredictedActivityResumeEnableNotification", &v4))
  {
    v2 = [NSNumber numberWithBool:v4];
  }

  else
  {
    v2 = 0;
  }

  return [CMFitnessShared isWorkoutResumeReminderEnabledWhenDeviceIsInMoveTimeMode:*(a1 + 116) == 2 withCurrentSetting:v2];
}

uint64_t sub_1007D86A0(uint64_t result, _DWORD *a2, int a3, int a4)
{
  v9 = a4;
  if (*a2 != a3)
  {
    v6 = result;
    *a2 = a3;
    v8 = a3 == 2;
    if (qword_1025D43F0 != -1)
    {
      sub_10193DF80();
    }

    v7 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 1026;
      v15 = a4;
      v16 = 1026;
      v17 = a3 == 2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Workout Alert Flag, notification:%{public}d, enabled:%{public}hhd}", buf, 0x1Eu);
    }

    return (*(*v6 + 152))(v6, &v9, &v8, 1, 0xFFFFFFFFLL, 0);
  }

  return result;
}

uint64_t sub_1007D87F8(int *a1)
{
  sub_100867BA0(a1);

  return sub_1007D7ADC(a1);
}

uint64_t sub_1007D8830()
{
  sub_10001A3E8();
  if (!sub_100328630())
  {
    return 0;
  }

  sub_10054B43C(v3, @"com.apple.nanolifestyle", 1, @"mobile");
  v4 = 0;
  v0 = sub_10001CB4C(v3, "AlwaysOnMotionSensorLogging", &v4);
  v1 = v0 & v4;
  sub_10054B4D4(v3);
  return v1;
}

void sub_1007D88CC(_BYTE *a1, void *a2)
{
  v9 = a2;
  if ((a1[108] & 1) == 0)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = (a1 + 80);
    v6 = a1 + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != a1 + 88 && *(v6 + 8) <= a2)
    {
      while (*(v6 + 7))
      {
        *buf = *(*(v6 + 5) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_10193D5C8();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = a1 + 8;
        if (a1[31] < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193DF94(a1, a2);
      }
    }
  }
}

uint64_t sub_1007D8A70(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_1007D8C28(char *a1, void *a2, int *a3, char *a4)
{
  v32 = a2;
  if (a1[108])
  {
    return 0;
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 8) >= a2)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < a2)];
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 8) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 6);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 7) >= v14)
        {
          v18 = v15;
        }

        v15 = *&v15[8 * (*(v15 + 7) < v14)];
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 7))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 8);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 8) >= v14)
        {
          v20 = v19;
        }

        v19 = *&v19[8 * (*(v19 + 8) < v14)];
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 8))
      {
        v30 = v20;
        v27 = *(v20 + 7);
        v28 = *a4;
        *buf = &v32;
        *(sub_100007FA0((v20 + 40), &v32) + 32) = v28;
        *buf = 0;
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_1007DA8A0();
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = (a1 + 56);
        v30 = a1 + 64;
        v22 = byte_1025D8741;
        v29 = v14;
        *buf = &v29;
        *(sub_100024014((a1 + 56), &v29) + 80) = v22;
        v29 = *a3;
        *buf = &v29;
        v23 = sub_100024014((a1 + 56), &v29);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *buf = &v29;
        v26 = sub_100024014(v21, &v29);
        *buf = &v32;
        *(sub_100007FA0((v26 + 5), &v32) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        *buf = *a3;
        sub_1003C9410((v31 + 40), buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_10193D5C8();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v34 = 1026;
    v35 = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_10193E09C(a1, a2);
    return 0;
  }

  return result;
}

BOOL sub_1007D8FE0(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_10193D5C8();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_10193E1A4(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1007D9174(char *a1, int a2, int *a3)
{
  v23 = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 7) >= v11)
            {
              v12 = v9;
            }

            v9 = *&v9[8 * (*(v9 + 7) < v11)];
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10004E6E0((v15 + 40), &v23);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_10193D5DC();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v33 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v25 = 2082;
                v26 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v33 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10193D5DC();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                (*(*a1 + 160))(buf, a1, a3);
                if (v27 >= 0)
                {
                  v21 = buf;
                }

                else
                {
                  v21 = *buf;
                }

                v28 = 136446466;
                v29 = v20;
                v30 = 2082;
                v31 = v21;
                v22 = _os_log_send_and_compose_impl();
                if (v27 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLFitnessTrackingNotifier_Type::Notification, CLFitnessTrackingNotifier_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLFitnessTrackingNotifier_Type::Notification, NotificationData_T = CLFitnessTrackingNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v22);
                if (v22 != __p)
                {
                  free(v22);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

void sub_1007D9644(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *a2;
    v6 = a1 + 64;
    do
    {
      if (*(v4 + 32) >= v5)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v5));
    }

    while (v4);
    if (v6 == a1 + 64 || v5 < *(v6 + 32))
    {
LABEL_9:
      v9 = v10;
      memset(v10, 0, 32);
      sub_100248B84(buf, a2, &v9);
      sub_10047D8C8();
    }

    if (a4)
    {
      operator new();
    }

    v7 = *(v6 + 72);
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    if (v7)
    {
      sub_100008080(v7);
    }

    if (*(v6 + 56))
    {
      sub_1007DA014();
    }
  }
}

void sub_1007D9B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_1007D9B40(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10193D5C8();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v20 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193E3D0(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10193D5C8();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v20 = v5;
      v21 = 2048;
      v22[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193E2AC(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      do
      {
        v8 = v7[5];
        if (v8 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_10193D5DC();
            }

            v9 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v10 = a1 + 8;
              if (*(a1 + 31) < 0)
              {
                v10 = *(a1 + 8);
              }

              v11 = *(v7 + 8);
              v12 = *(v8 + 7);
              *buf = 136315650;
              v20 = v10;
              v21 = 1024;
              LODWORD(v22[0]) = v11;
              WORD2(v22[0]) = 1024;
              *(v22 + 6) = v12;
              _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_10193D5DC();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLFitnessTrackingNotifier_Type::Notification, CLFitnessTrackingNotifier_Type::NotificationData>::listClients() [Notification_T = CLFitnessTrackingNotifier_Type::Notification, NotificationData_T = CLFitnessTrackingNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v16);
              if (v16 != buf)
              {
                free(v16);
              }
            }

            v13 = v8[1];
            if (v13)
            {
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13);
            }

            else
            {
              do
              {
                v14 = v8[2];
                v15 = *v14 == v8;
                v8 = v14;
              }

              while (!v15);
            }

            v8 = v14;
          }

          while (v14 != v7 + 6);
        }

        v17 = v7[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v7[2];
            v15 = *v18 == v7;
            v7 = v18;
          }

          while (!v15);
        }

        v7 = v18;
      }

      while (v18 != (a1 + 88));
    }
  }
}

uint64_t sub_1007D9F4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(*v1 + 232))(v1))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return sub_100867900(v1, v2);
}

void sub_1007DA0C0(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v37 = v9;
        v10 = sub_100311844(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v36 = v16;
              sub_1007DA47C(a1, &v36, &v37, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v37 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v36 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_10193D5DC();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v43 = v19;
                v44 = 1026;
                v45 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10193D5DC();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v38 = 136446466;
                v39 = v33;
                v40 = 1026;
                v41 = v34;
                v35 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLFitnessTrackingNotifier_Type::Notification, CLFitnessTrackingNotifier_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLFitnessTrackingNotifier_Type::Notification, NotificationData_T = CLFitnessTrackingNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v35 != buf)
                {
                  free(v35);
                }
              }
            }
          }

          while (v11 != (v37 + 48));
        }
      }
    }
  }
}

_BYTE *sub_1007DA47C(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_100311844(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

void sub_1007DA594(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102472060;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007DA5F0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_1007DA610(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_1007DA7E8(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10193E4E4();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101CA72F9 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193E4F8();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10193E4E4();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101CA72F9 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193E600();
    }
  }

  return 0;
}

id sub_1007DA7E8(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254EF78))
  {
    if ([objc_msgSend(a2 "serialized")] != 4)
    {
      sub_10193E918();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

uint64_t sub_1007DA94C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_1007DAC20(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v15[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v15[0] & 0x7F) << v5;
        if ((v15[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((*&v11 & 0x7FFF8) == 8)
      {
        v12 = objc_alloc_init(TRANSITPbLocationFingerprint);
        [a1 addLocationFingerprint:v12];

        v15[0] = 0;
        v15[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = sub_100AF1848(v12, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1007DB254(uint64_t a1)
{
  sub_10018D404(a1);
  *(v2 + 56) = 0;
  v3 = v2 + 56;
  *(v2 + 46) = 0;
  *(v2 + 40) = 0;
  *(v2 + 54) = 1;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  sub_1007E8AD4(v2 + 80);
  sub_1007E882C(a1 + 384);
  sub_1007E8AD4(a1 + 113744);
  *(v3 + 113992) = 0;
  *(v3 + 114104) = 0;
  sub_10000EC00(__p, "CLRouteSmoother");
  sub_100CE1DE4(a1 + 114168, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  *(v3 + 114144) = 0;
  *(v3 + 114152) = 0xBFF0000000000000;
  *(v3 + 114152) = sub_1000081AC();
  *(v3 + 114160) = 0xBFF0000000000000;
  *(v3 + 114160) = sub_1000081AC();
  *(v3 + 114168) = 0;
  *(v3 + 114172) = 0;
  *(a1 + 114232) = 0u;
  *(a1 + 114248) = 0;
  *(v3 + 114200) = 16842753;
  *(v3 + 114204) = 1;
  *(v3 + 114205) = 0;
  *(v3 + 114209) = 65537;
  *(v3 + 114213) = 0;
  *(v3 + 114215) = 1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v3 + 114216) = _Q0;
  *(v3 + 114232) = 256;
  *(v3 + 114240) = 0;
  *(v3 + 114248) = 0;
  *(v3 + 114256) = 0x3FE6666666666666;
  sub_1007DB45C(a1);
  return a1;
}

void sub_1007DB3B8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v21 = v17;
  v24 = *(v21 + 3656);
  if (v24)
  {
    sub_100008080(v24);
  }

  sub_10193EA9C(v16, a1, a2, &__p);
  v25 = __p;
  sub_100CE1E30(v15 + v20);
  sub_1007ECD0C(v15 + v19);
  sub_1007ECDAC(&v18->private_2);
  __p = v18;
  sub_1007ECEBC(&__p);
  _Unwind_Resume(v25);
}

void sub_1007DB45C(uint64_t a1)
{
  if (qword_1025D4690 != -1)
  {
    sub_10193EB08();
  }

  v2 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_INFO))
  {
    LOWORD(v22[0]) = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "CLRS,reset CLRouteSmoother", v22, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193EB1C();
  }

  *(a1 + 48) = 0;
  *(a1 + 53) = 256;
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v3 != v4)
  {
    do
    {
      v5 = v3 - 56;
      v22[0] = (v3 - 40);
      sub_1004CA974(v22);
      v3 = v5;
    }

    while (v5 != v4);
  }

  *(a1 + 64) = v4;
  swan::RouteSmoother::Reset((a1 + 80));
  memset(v38, 0, sizeof(v38));
  v36 = 0u;
  v37 = 0u;
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
  v25 = 0u;
  v23 = 0u;
  memset(__p, 0, sizeof(__p));
  *v22 = 0u;
  sub_1007E8AD4(v22);
  std::string::operator=((a1 + 113752), &v22[1]);
  *(a1 + 113776) = __p[0];
  v6 = (a1 + 113784);
  if (*(a1 + 113807) < 0)
  {
    operator delete(*v6);
  }

  *v6 = *&__p[1];
  *(a1 + 113800) = __p[3];
  HIBYTE(__p[3]) = 0;
  LOBYTE(__p[1]) = 0;
  v7 = v28;
  *(a1 + 113840) = v27;
  *(a1 + 113856) = v7;
  *(a1 + 113872) = v29;
  *(a1 + 113888) = v30;
  v8 = v26;
  *(a1 + 113808) = v25;
  *(a1 + 113824) = v8;
  v9 = a1 + 113904;
  sub_1003C93BC(a1 + 113896, *(a1 + 113904));
  v10 = v31;
  *(a1 + 113896) = *(&v30 + 1);
  *(a1 + 113904) = v10;
  v11 = *(&v31 + 1);
  *(a1 + 113912) = *(&v31 + 1);
  if (v11)
  {
    *(v10 + 16) = v9;
    *(&v30 + 1) = &v31;
    v31 = 0uLL;
  }

  else
  {
    *(a1 + 113896) = v9;
  }

  v12 = a1 + 113928;
  sub_1003C93BC(a1 + 113920, *(a1 + 113928));
  v13 = *(&v32 + 1);
  *(a1 + 113920) = v32;
  *(a1 + 113928) = v13;
  v14 = v33;
  *(a1 + 113936) = v33;
  if (v14)
  {
    *(v13 + 16) = v12;
    *&v32 = &v32 + 8;
    *(&v32 + 1) = 0;
    *&v33 = 0;
  }

  else
  {
    *(a1 + 113920) = v12;
  }

  v15 = a1 + 113952;
  sub_10018F070(a1 + 113944, *(a1 + 113952));
  v16 = v34;
  *(a1 + 113944) = *(&v33 + 1);
  *(a1 + 113952) = v16;
  v17 = *(&v34 + 1);
  *(a1 + 113960) = *(&v34 + 1);
  if (v17)
  {
    v16[2] = v15;
    *(&v33 + 1) = &v34;
    v34 = 0uLL;
    v16 = 0;
  }

  else
  {
    *(a1 + 113944) = v15;
  }

  v18 = v38[0];
  *(a1 + 114000) = v37;
  *(a1 + 114016) = v18;
  *(a1 + 114025) = *(v38 + 9);
  v19 = v36;
  *(a1 + 113968) = v35;
  *(a1 + 113984) = v19;
  v22[0] = off_102472248;
  sub_10018F070(&v33 + 8, v16);
  sub_1003C93BC(&v32, *(&v32 + 1));
  sub_1003C93BC(&v30 + 8, v31);
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  v22[0] = off_1024722A8;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  if (*(a1 + 114160) == 1)
  {
    *(a1 + 114160) = 0;
  }

  *(a1 + 114208) = sub_1000081AC();
  *(a1 + 114216) = sub_1000081AC();
  *(a1 + 40) = 0;
  if (*(a1 + 114228) == 1)
  {
    *(a1 + 114228) = 0;
  }

  *(a1 + 114200) = 0;
  v20 = *(a1 + 114232);
  *(a1 + 114232) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(a1 + 114248);
  *(a1 + 114240) = 0u;
  if (v21)
  {
    sub_100008080(v21);
  }

  sub_10025CAF4((a1 + 114168));
}

void sub_1007DB818(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      v5 = qword_1025D4698;
      if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v6 = a2;
        }

        else
        {
          v6 = *a2;
        }

        v7 = *v2;
        v8 = v2[1];
        v9 = v2[2];
        v10 = v2[3];
        v11 = v2[4];
        v12 = v2[5];
        v13 = v2[8];
        v14 = v2[9];
        v16 = v2[6];
        v15 = v2[7];
        v17 = *(v2 + 104);
        *buf = 134351875;
        v20 = v7;
        v21 = 2082;
        v22 = v6;
        v23 = 2053;
        v24 = v8;
        v25 = 2053;
        v26 = v9;
        v27 = 2049;
        v28 = v11;
        v29 = 2050;
        v30 = v13;
        v31 = 2049;
        v32 = v16;
        v33 = 2050;
        v34 = v10;
        v35 = 2050;
        v36 = v12;
        v37 = 2050;
        v38 = v14;
        v39 = 2050;
        v40 = v15;
        v41 = 1026;
        v42 = v17;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLRS,%{public}.1lf,%{public}s,latitude,%{sensitive}.8lf,longitude,%{sensitive}.8lf,altitude,%{private}.2lf,speed,%{public}.2lf,course,%{private}.2lf,hunc,%{public}.2lf,vunc,%{public}.2lf,speedUnc,%{public}.2lf,courseUnc,%{public}.2lf,signalEnvironment,%{public}d", buf, 0x76u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        v18 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static void CLRouteSmoother::outputPerEpochLog(const std::vector<swan::RouteSmootherEpoch> &, const std::string &)", "%s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      v2 += 14;
    }

    while (v2 != v3);
  }
}

id sub_1007DBAF0(id result, uint64_t *a2)
{
  obj = result;
  if (result)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    result = [result countByEnumeratingWithState:&v58 objects:v114 count:16];
    if (result)
    {
      v3 = result;
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      v5 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      v6 = *v59;
      do
      {
        v7 = 0;
        do
        {
          if (*v59 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v58 + 1) + 8 * v7);
          if (v8)
          {
            if (p_info[210] != -1)
            {
              sub_10193EC08();
            }

            v9 = v5[211];
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              [objc_msgSend(v8 "timestamp")];
              v56 = v10;
              if (*(a2 + 23) >= 0)
              {
                v11 = a2;
              }

              else
              {
                v11 = *a2;
              }

              [v8 latitude];
              v54 = v12;
              [v8 longitude];
              v14 = v13;
              [v8 altitude];
              v16 = v15;
              [v8 speed];
              v18 = v17;
              [v8 course];
              v20 = v19;
              [v8 horizontalAccuracy];
              v22 = v21;
              [v8 altitudeAccuracy];
              v24 = v23;
              [v8 speedAccuracy];
              v26 = v25;
              [v8 courseAccuracy];
              v28 = v27;
              v29 = [v8 signalEnvironmentType];
              v30 = [v8 locType];
              *buf = 134352131;
              v89 = v56;
              v90 = 2082;
              v91 = v11;
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v92 = 2053;
              v93 = v54;
              v94 = 2053;
              v95 = v14;
              v96 = 2049;
              v97 = v16;
              v98 = 2050;
              v99 = v18;
              v100 = 2049;
              v101 = v20;
              v102 = 2050;
              v103 = v22;
              v104 = 2050;
              v105 = v24;
              v106 = 2050;
              v107 = v26;
              v108 = 2050;
              v109 = v28;
              v110 = 1026;
              v111 = v29;
              v5 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v112 = 1026;
              v113 = v30;
              _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CLRS,%{public}.1lf,%{public}s,latitude,%{sensitive}.8lf,longitude,%{sensitive}.8lf,altitude,%{private}.2lf,speed,%{public}.2lf,course,%{private}.2lf,hunc,%{public}.2lf,vunc,%{public}.2lf,speedUnc,%{public}.2lf,courseUnc,%{public}.2lf,signalEnvironment,%{public}d,locType,%{public}d", buf, 0x7Cu);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (p_info[210] != -1)
              {
                sub_10193EC08();
              }

              [objc_msgSend(v8 "timestamp")];
              v57 = v31;
              if (*(a2 + 23) >= 0)
              {
                v32 = a2;
              }

              else
              {
                v32 = *a2;
              }

              [v8 latitude];
              v55 = v33;
              [v8 longitude];
              v35 = v34;
              [v8 altitude];
              v37 = v36;
              [v8 speed];
              v39 = v38;
              [v8 course];
              v41 = v40;
              [v8 horizontalAccuracy];
              v43 = v42;
              [v8 altitudeAccuracy];
              v45 = v44;
              [v8 speedAccuracy];
              v47 = v46;
              [v8 courseAccuracy];
              v49 = v48;
              v50 = [v8 signalEnvironmentType];
              v51 = [v8 locType];
              v62 = 134352131;
              v63 = v57;
              v64 = 2082;
              v65 = v32;
              v66 = 2053;
              v67 = v55;
              v68 = 2053;
              v69 = v35;
              v70 = 2049;
              v71 = v37;
              v72 = 2050;
              v73 = v39;
              v74 = 2049;
              v75 = v41;
              v76 = 2050;
              v77 = v43;
              v78 = 2050;
              v79 = v45;
              v80 = 2050;
              v81 = v47;
              v82 = 2050;
              v83 = v49;
              v84 = 1026;
              v85 = v50;
              v86 = 1026;
              v87 = v51;
              v52 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "static void CLRouteSmoother::outputPerEpochLog(NSArray<CLTripSegmentLocation *> *, const std::string &)", "%s\n", v52);
              if (v52 != buf)
              {
                free(v52);
              }

              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
              v5 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }
          }

          v7 = v7 + 1;
        }

        while (v3 != v7);
        result = [obj countByEnumeratingWithState:&v58 objects:v114 count:16];
        v3 = result;
      }

      while (result);
    }
  }

  return result;
}

void sub_1007DBF80(uint64_t a1)
{
  sub_10001CAF4(buf);
  v2 = a1 + 110592;
  v3 = *(a1 + 114256);
  LOBYTE(v83) = 0;
  v4 = sub_10001CB4C(*buf, "EnablePerEpochSmoothLogOutput", &v83);
  v5 = LOBYTE(v83);
  if (!v4)
  {
    v5 = v3;
  }

  *(v2 + 3664) = v5;
  if (v111)
  {
    sub_100008080(v111);
  }

  sub_10001CAF4(buf);
  v6 = *(v2 + 3665);
  LOBYTE(v83) = 0;
  v7 = sub_10001CB4C(*buf, "EnableMapMatchingBeforeSmoothing", &v83);
  v8 = LOBYTE(v83);
  if (!v7)
  {
    v8 = v6;
  }

  *(v2 + 3665) = v8;
  if (v111)
  {
    sub_100008080(v111);
  }

  sub_10001CAF4(buf);
  v9 = *(v2 + 3666);
  LOBYTE(v83) = 0;
  v10 = sub_10001CB4C(*buf, "CLRSAllowRouteReconstruction", &v83);
  v11 = LOBYTE(v83);
  if (!v10)
  {
    v11 = v9;
  }

  *(v2 + 3666) = v11;
  if (v111)
  {
    sub_100008080(v111);
  }

  sub_10001CAF4(buf);
  v12 = *(v2 + 3696);
  LOBYTE(v83) = 0;
  v13 = sub_10001CB4C(*buf, "fUseTripSegmentProcessorForReconstruction", &v83);
  v14 = LOBYTE(v83);
  if (!v13)
  {
    v14 = v12;
  }

  *(v2 + 3696) = v14;
  if (v111)
  {
    sub_100008080(v111);
  }

  sub_10001CAF4(buf);
  v15 = *(v2 + 3674);
  LOBYTE(v83) = 0;
  v16 = sub_10001CB4C(*buf, "CLRSForceRouteReconstruction", &v83);
  v17 = LOBYTE(v83);
  if (!v16)
  {
    v17 = v15;
  }

  *(v2 + 3674) = v17;
  if (v111)
  {
    sub_100008080(v111);
  }

  sub_10001CAF4(buf);
  v18 = *(v2 + 3679);
  LOBYTE(v83) = 0;
  v19 = sub_10001CB4C(*buf, "CLRSPreferCachedMapData", &v83);
  v20 = LOBYTE(v83);
  if (!v19)
  {
    v20 = v18;
  }

  *(v2 + 3679) = v20;
  if (v111)
  {
    sub_100008080(v111);
  }

  sub_10001CAF4(buf);
  v21 = *(v2 + 3673);
  LOBYTE(v83) = 0;
  v22 = sub_10001CB4C(*buf, "EnableRunningTrackDetectionDuringSmoothing", &v83);
  v23 = LOBYTE(v83);
  if (!v22)
  {
    v23 = v21;
  }

  *(v2 + 3673) = v23;
  if (v111)
  {
    sub_100008080(v111);
  }

  sub_10001CAF4(buf);
  v24 = *(v2 + 3667);
  LOBYTE(v83) = 0;
  v25 = sub_10001CB4C(*buf, "CLRSEnablePTSDuringReconstruction", &v83);
  v26 = LOBYTE(v83);
  if (!v25)
  {
    v26 = v24;
  }

  *(v2 + 3667) = v26;
  if (v111)
  {
    sub_100008080(v111);
  }

  sub_10001CAF4(buf);
  v27 = *(v2 + 3668);
  LOBYTE(v83) = 0;
  v28 = sub_10001CB4C(*buf, "EnableMapMatchingDuringReconstructionOfSparseLocations", &v83);
  v29 = LOBYTE(v83);
  if (!v28)
  {
    v29 = v27;
  }

  *(v2 + 3668) = v29;
  if (v111)
  {
    sub_100008080(v111);
  }

  sub_10001CAF4(buf);
  v30 = *(v2 + 3669);
  LOBYTE(v83) = 0;
  v31 = sub_10001CB4C(*buf, "EnableMapMatchingDuringReconstructionOf1HzLocations", &v83);
  v32 = LOBYTE(v83);
  if (!v31)
  {
    v32 = v30;
  }

  *(v2 + 3669) = v32;
  if (v111)
  {
    sub_100008080(v111);
  }

  sub_10001CAF4(buf);
  v33 = *(v2 + 3697);
  LOBYTE(v83) = 0;
  v34 = sub_10001CB4C(*buf, "CLRSUseXPCServiceForMapQuery", &v83);
  v35 = LOBYTE(v83);
  if (!v34)
  {
    v35 = v33;
  }

  *(v2 + 3697) = v35;
  if (v111)
  {
    sub_100008080(v111);
  }

  if ((*(v2 + 3665) & 1) == 0)
  {
    sub_10001CAF4(buf);
    v36 = *(v2 + 3670);
    LOBYTE(v83) = 0;
    v37 = sub_10001CB4C(*buf, "EnableMapMatchingAfterSmoothing", &v83);
    v38 = LOBYTE(v83);
    if (!v37)
    {
      v38 = v36;
    }

    *(v2 + 3670) = v38;
    if (v111)
    {
      sub_100008080(v111);
    }

    sub_10001CAF4(buf);
    v39 = *(v2 + 3671);
    LOBYTE(v83) = 0;
    v40 = sub_10001CB4C(*buf, "EnableReSmoothingAfterMapMatching", &v83);
    v41 = LOBYTE(v83);
    if (!v40)
    {
      v41 = v39;
    }

    *(v2 + 3671) = v41;
    if (v111)
    {
      sub_100008080(v111);
    }
  }

  v82 = 0x3FF0000000000000;
  sub_10001CAF4(buf);
  v42 = sub_1000B9370(*buf, "CLRSDesiredTimeBetweenReconstructedPointsSeconds", &v82);
  if (v111)
  {
    sub_100008080(v111);
  }

  if (v42)
  {
    *(v2 + 3704) = v82;
    *(v2 + 3712) = 1;
  }

  sub_10001CAF4(buf);
  v43 = *(v2 + 3675);
  LOBYTE(v83) = 0;
  v44 = sub_10001CB4C(*buf, "CLRSAllow1HzGnssIOFusionInSupportedSignalEnvironments", &v83);
  v45 = LOBYTE(v83);
  if (!v44)
  {
    v45 = v43;
  }

  *(v2 + 3675) = v45;
  if (v111)
  {
    sub_100008080(v111);
  }

  sub_10001CAF4(buf);
  v46 = *(v2 + 3676);
  LOBYTE(v83) = 0;
  v47 = sub_10001CB4C(*buf, "CLRSForce1HzGnssIOFusionInAllSignalEnvironments", &v83);
  v48 = LOBYTE(v83);
  if (!v47)
  {
    v48 = v46;
  }

  *(v2 + 3676) = v48;
  if (v111)
  {
    sub_100008080(v111);
  }

  sub_10001CAF4(buf);
  v49 = *(v2 + 3720);
  v83 = 0.0;
  v50 = sub_1000B9370(*buf, "CLRSRouteLinearityThreshold", &v83);
  v51 = v83;
  if (!v50)
  {
    v51 = v49;
  }

  *(v2 + 3720) = v51;
  if (v111)
  {
    sub_100008080(v111);
  }

  if (qword_1025D4690 != -1)
  {
    sub_10193EC08();
  }

  v52 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_INFO))
  {
    v53 = *(v2 + 3665);
    v54 = *(v2 + 3666);
    v55 = *(v2 + 3674);
    v56 = *(v2 + 3670);
    v57 = *(v2 + 3671);
    v58 = *(v2 + 3664);
    v59 = *(v2 + 3672);
    v60 = *(v2 + 3673);
    v61 = *(v2 + 3696);
    v62 = *(v2 + 3667);
    v63 = *(v2 + 3668);
    v64 = *(v2 + 3669);
    v65 = *(v2 + 3697);
    v66 = *(v2 + 3675);
    *buf = 67243520;
    *&buf[4] = v53;
    LOWORD(v111) = 1026;
    *(&v111 + 2) = v54;
    HIWORD(v111) = 1026;
    v112 = v55;
    v113 = 1026;
    v114 = v56;
    v115 = 1026;
    v116 = v57;
    v117 = 1026;
    v118 = v58;
    v119 = 1026;
    v120 = v59;
    v121 = 1026;
    v122 = v60;
    v123 = 1026;
    v124 = v61;
    v125 = 1026;
    v126 = v62;
    v127 = 1026;
    v128 = v63;
    v129 = 1026;
    v130 = v64;
    v131 = 1026;
    v132 = v65;
    v133 = 1026;
    v134 = v66;
    _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_INFO, "CLRS,EnableMapMatchingBeforeSmoothing,%{public}d,AllowRouteReconstruction,%{public}d,ForceRouteReconstruction,%{public}d,EnableMapMatchingAfterSmoothing,%{public}d,EnableReSmoothingAfterMapMatching,%{public}d,EnablePerEpochSmoothLogOutput,%{public}d,EnableCornerDetectionDuringSmoothing,%{public}d,EnableRunningTrackDetectionDuringSmoothing,%{public}d,UseTripSegmentProcessorForReconstruction,%{public}d,EnablePTSDuringReconstruction,%{public}d,EnableMapMatchingDuringReconstructionOfSparseLocations,%{public}d,EnableMapMatchingDuringReconstructionOf1HzLocations,%{public}d,UseXPCServiceForMapQuery,%{public}d,Allow1HzGnssIOFusion,%{public}d", buf, 0x56u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v67 = *(v2 + 3665);
    v68 = *(v2 + 3666);
    v69 = *(v2 + 3674);
    v70 = *(v2 + 3670);
    v71 = *(v2 + 3671);
    v72 = *(v2 + 3664);
    v73 = *(v2 + 3672);
    v74 = *(v2 + 3673);
    v75 = *(v2 + 3696);
    v76 = *(v2 + 3667);
    v77 = *(v2 + 3668);
    v78 = *(v2 + 3669);
    v79 = *(v2 + 3697);
    v80 = *(v2 + 3675);
    LODWORD(v83) = 67243520;
    HIDWORD(v83) = v67;
    v84 = 1026;
    v85 = v68;
    v86 = 1026;
    v87 = v69;
    v88 = 1026;
    v89 = v70;
    v90 = 1026;
    v91 = v71;
    v92 = 1026;
    v93 = v72;
    v94 = 1026;
    v95 = v73;
    v96 = 1026;
    v97 = v74;
    v98 = 1026;
    v99 = v75;
    v100 = 1026;
    v101 = v76;
    v102 = 1026;
    v103 = v77;
    v104 = 1026;
    v105 = v78;
    v106 = 1026;
    v107 = v79;
    v108 = 1026;
    v109 = v80;
    v81 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLRouteSmoother::readDefaultSettings()", "%s\n", v81);
    if (v81 != buf)
    {
      free(v81);
    }
  }
}

void sub_1007DC6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    sub_100008080(a26);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007DC758()
{
  result = objc_opt_class();
  if (result)
  {
    v1 = +[MCProfileConnection sharedConnection];

    return [v1 isHealthDataSubmissionAllowed];
  }

  return result;
}

void sub_1007DC7A8(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 56;
  if (v2 != a2)
  {
    sub_1007ECF68(v2, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  }
}

void sub_1007DC7E0(uint64_t a1, uint64_t a2, int a3, char a4, char a5, char a6)
{
  sub_1007DB45C(a1);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  *(a1 + 53) = a4;
  *(a1 + 54) = a5;
  *(a1 + 52) = a6;
  sub_1007DBF80(a1);
  if (qword_1025D4690 != -1)
  {
    sub_10193EB08();
  }

  v12 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 48);
    v14 = *(a1 + 53);
    v15 = *(a1 + 54);
    v16 = *(a1 + 52);
    *buf = 67240960;
    v19 = v13;
    v20 = 1026;
    v21 = v14;
    v22 = 1026;
    v23 = v15;
    v24 = 1026;
    v25 = v16;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "CLRS,initialize,workoutActivity,%{public}u,shouldReconstructEntireRoute,%{public}d,networkAccessAllowed,%{public}d,isWatch,%{public}d", buf, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLRouteSmoother::initialize(dispatch_queue_t, CLMotionActivity::Type, const BOOL, const BOOL, const BOOL)", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  *(a1 + 114200) = 1;
}

uint64_t sub_1007DCA10(uint64_t a1, uint64_t a2, size_t *a3, uint64_t a4)
{
  v4 = a1 + 110592;
  if (*(a1 + 114200))
  {
    sub_1001B8A14(a1 + 114168);
    v9 = sub_1000081AC();
    v115 = a3;
    if (*(v4 + 3636) == 1)
    {
      v10 = *(v4 + 3632) + 1;
    }

    else
    {
      v10 = 0;
    }

    *(v4 + 3632) = v10;
    *(v4 + 3636) = 1;
    v14 = *a2;
    v13 = *(a2 + 8);
    if (qword_1025D4690 != -1)
    {
      sub_10193EB08();
    }

    v15 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v14) >> 4);
    v16 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
    {
      v17 = "Non-Final";
      if (!a4)
      {
        v17 = "Final";
      }

      v18 = *(a1 + 48);
      v19 = *(a1 + 53);
      v20 = *(a1 + 54);
      v21 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 64) - *(a1 + 56)) >> 3);
      *buf = 136447490;
      *&buf[4] = v17;
      *&buf[12] = 1026;
      *&buf[14] = v18;
      *&buf[18] = 2050;
      *&buf[20] = 0x6DB6DB6DB6DB6DB7 * ((v13 - v14) >> 4);
      v138 = 1026;
      *v139 = v19;
      *&v139[4] = 1026;
      *&v139[6] = v20;
      LOWORD(v140[0]) = 2050;
      *(v140 + 2) = v21;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "CLRS,Smoothing batchType,%{public}s,workoutActivity,%{public}u,batchSize,%{public}zu,shouldReconstructEntireRoute,%{public}d,networkAccessAllowed,%{public}d,reconstructionIntervalData,size,%{public}zu", buf, 0x32u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      v99 = "Non-Final";
      if (!a4)
      {
        v99 = "Final";
      }

      v100 = *(a1 + 48);
      v101 = *(a1 + 53);
      v102 = *(a1 + 54);
      v103 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 64) - *(a1 + 56)) >> 3);
      *v136 = 136447490;
      *&v136[4] = v99;
      *&v136[12] = 1026;
      *&v136[14] = v100;
      *&v136[18] = 2050;
      *&v136[20] = 0x6DB6DB6DB6DB6DB7 * ((v13 - v14) >> 4);
      *&v136[28] = 1026;
      *&v136[30] = v101;
      *&v136[34] = 1026;
      *&v136[36] = v102;
      *&v136[40] = 2050;
      *&v136[42] = v103;
      v104 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::smoothPoints(std::vector<swan::RouteSmootherEpoch> &, std::vector<CLClientLocation> &, const CLSmootherBatchType)", "%s\n", v104);
      if (v104 != buf)
      {
        free(v104);
      }
    }

    v22 = sub_1000081AC();
    sub_10000EC00(&v130, "Input");
    sub_10000EC00(&v128, "PreSmt");
    sub_10000EC00(&v126, "Sparse");
    sub_1007DB818(a2, &v130);
    v116 = v4;
    if ((*(a1 + 53) & 1) == 0 && *(v4 + 3674) != 1 || *(v4 + 3666) != 1)
    {
      v117 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v14) >> 4);
      if (*(a1 + 56) != *(a1 + 64))
      {
        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        v23 = qword_1025D4698;
        if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEBUG))
        {
          v24 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 64) - *(a1 + 56)) >> 3);
          *buf = 134349056;
          *&buf[4] = v24;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "CLRS,reconstructionIntervalInputData,numIntervals,%{public}zu", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193ED1C(buf);
          v105 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 64) - *(a1 + 56)) >> 3);
          *v136 = 134349056;
          *&v136[4] = v105;
          v106 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::smoothPoints(std::vector<swan::RouteSmootherEpoch> &, std::vector<CLClientLocation> &, const CLSmootherBatchType)", "%s\n", v106);
          if (v106 != buf)
          {
            free(v106);
          }
        }

        *(v4 + 3696) = 1;
        memset(v136, 0, 24);
        v25 = *(a1 + 56);
        v26 = 0;
        if (*(a1 + 64) == v25)
        {
          v117 = v15;
        }

        else
        {
          v27 = 0;
          v117 = v15;
          do
          {
            v28 = v25 + 56 * v27;
            if ((*(v28 + 40) & 1) == 0)
            {
              if ([*v28 count])
              {
                if (!a4 || *(a2 + 8) != *a2 && ([objc_msgSend(objc_msgSend(*v28 "lastObject")], v29 < *(*(a2 + 8) - 112)))
                {
                  v30 = [*v28 count];
                  while (0xAAAAAAAAAAAAAAABLL * ((*&v136[8] - *v136) >> 3) <= v27)
                  {
                    memset(buf, 0, 24);
                    sub_1007E0E80(v136, buf);
                    if (*buf)
                    {
                      *&buf[8] = *buf;
                      operator delete(*buf);
                    }
                  }

                  sub_1007E0FC0(a1, v28, v27, (*v136 + 24 * v27));
                  v117 += v30;
                  *(v28 + 40) = 1;
                  v26 += 0x6DB6DB6DB6DB6DB7 * ((*(*v136 + 24 * v27 + 8) - *(*v136 + 24 * v27)) >> 4);
                }
              }
            }

            ++v27;
            v25 = *(a1 + 56);
          }

          while (v27 < 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 64) - v25) >> 3));
        }

        sub_1007ED734(&__p, v26 + 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 4));
        v31 = *a2;
        v32 = *(a2 + 8);
        v33 = *v136;
        if (*a2 == v32)
        {
          v35 = 0;
          v34 = 0;
        }

        else
        {
          v34 = 0;
          v35 = 0;
          do
          {
            if (v35 < 0xAAAAAAAAAAAAAAABLL * ((*&v136[8] - v33) >> 3))
            {
              v36 = *(v33 + 24 * v35 + 8);
              v37 = v36 - *(v33 + 24 * v35);
              if (v37)
              {
                if (*v31 >= *(v36 - 112))
                {
                  sub_1007E1824(&__p, 0x6DB6DB6DB6DB6DB7 * (v37 >> 4) + v34);
                  v33 = *v136;
                  v38 = (*v136 + 24 * v35);
                  v39 = *v38;
                  v40 = v38[1];
                  if (v39 != v40)
                  {
                    v41 = (__p + 112 * v34);
                    do
                    {
                      v42 = *v39;
                      v43 = v39[2];
                      v41[1] = v39[1];
                      v41[2] = v43;
                      *v41 = v42;
                      v44 = v39[3];
                      v45 = v39[4];
                      v46 = v39[5];
                      *(v41 + 89) = *(v39 + 89);
                      v41[4] = v45;
                      v41[5] = v46;
                      v41[3] = v44;
                      ++v34;
                      v39 += 7;
                      v41 += 7;
                    }

                    while (v39 != v40);
                  }

                  ++v35;
                }
              }
            }

            v47 = (__p + 112 * v34);
            v48 = *v31;
            v49 = *(v31 + 1);
            v47[2] = *(v31 + 2);
            v51 = *(v31 + 4);
            v50 = *(v31 + 5);
            v52 = *(v31 + 3);
            *(v47 + 89) = *(v31 + 89);
            v47[4] = v51;
            v47[5] = v50;
            v47[3] = v52;
            *v47 = v48;
            v47[1] = v49;
            ++v34;
            v31 += 14;
          }

          while (v31 != v32);
        }

        for (i = *&v136[8]; v35 < 0xAAAAAAAAAAAAAAABLL * ((*&v136[8] - v33) >> 3); i = *&v136[8])
        {
          sub_1007E1824(&__p, v34 + 0x6DB6DB6DB6DB6DB7 * ((*(v33 + 24 * v35 + 8) - *(v33 + 24 * v35)) >> 4));
          v33 = *v136;
          v54 = (*v136 + 24 * v35);
          v55 = *v54;
          v56 = v54[1];
          if (v55 != v56)
          {
            v57 = (__p + 112 * v34);
            do
            {
              v58 = *v55;
              v59 = v55[2];
              v57[1] = v55[1];
              v57[2] = v59;
              *v57 = v58;
              v60 = v55[3];
              v61 = v55[4];
              v62 = v55[5];
              *(v57 + 89) = *(v55 + 89);
              v57[4] = v61;
              v57[5] = v62;
              v57[3] = v60;
              ++v34;
              v55 += 7;
              v57 += 7;
            }

            while (v55 != v56);
          }

          ++v35;
        }

        if (v34 != 0x6DB6DB6DB6DB6DB7 * ((*(&__p + 1) - __p) >> 4))
        {
          if (qword_1025D4690 != -1)
          {
            sub_10193EC08();
          }

          v63 = qword_1025D4698;
          if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349312;
            *&buf[4] = v34;
            *&buf[12] = 2050;
            *&buf[14] = 0x6DB6DB6DB6DB6DB7 * ((*(&__p + 1) - __p) >> 4);
            _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_ERROR, "CLRS,Unexpected need to resize route_epochs_expanded_vector,new size,%{public}zu,original size,%{public}zu", buf, 0x16u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10193ED1C(buf);
            v132 = 134349312;
            v133 = v34;
            v134 = 2050;
            v135 = 0x6DB6DB6DB6DB6DB7 * ((*(&__p + 1) - __p) >> 4);
            v109 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "CLSmootherErrorCode CLRouteSmoother::smoothPoints(std::vector<swan::RouteSmootherEpoch> &, std::vector<CLClientLocation> &, const CLSmootherBatchType)", "%s\n", v109);
            if (v109 != buf)
            {
              free(v109);
            }
          }

          sub_1007E1A28(&__p, v34);
          v33 = *v136;
          i = *&v136[8];
        }

        if (i != v33)
        {
          v64 = i;
          do
          {
            v66 = *(v64 - 24);
            v64 -= 24;
            v65 = v66;
            if (v66)
            {
              *(i - 16) = v65;
              operator delete(v65);
            }

            i = v64;
          }

          while (v64 != v33);
        }

        *&v136[8] = v33;
        v67 = *a2;
        *a2 = __p;
        v68 = *(a2 + 16);
        *(a2 + 16) = v123;
        *&__p = v67;
        v123 = v68;
        if (SHIBYTE(v131) < 0)
        {
          *(&v130 + 1) = 19;
          v69 = v130;
        }

        else
        {
          HIBYTE(v131) = 19;
          v69 = &v130;
        }

        v4 = v116;
        strcpy(v69, "CombinedPreSmoothed");
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        *buf = v136;
        sub_1002EC52C(buf);
      }

LABEL_95:
      if (*(v4 + 3665) == 1)
      {
        if ((sub_1007E1A6C(a1) & 1) == 0)
        {
          if (qword_1025D4690 != -1)
          {
            sub_10193EC08();
          }

          v74 = qword_1025D4698;
          if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_ERROR, "CLRS,CLMM,could not configure map matcher", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10193ED1C(buf);
            *v136 = 0;
            v108 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "CLSmootherErrorCode CLRouteSmoother::smoothPoints(std::vector<swan::RouteSmootherEpoch> &, std::vector<CLClientLocation> &, const CLSmootherBatchType)", "%s\n", v108);
            if (v108 != buf)
            {
              free(v108);
            }
          }
        }

        if (SHIBYTE(v129) < 0)
        {
          sub_100007244(&v120, v128, *(&v128 + 1));
        }

        else
        {
          v120 = v128;
          v121 = v129;
        }

        sub_1007E1DE0(a1, &v120, a2, a4);
        if (SHIBYTE(v121) < 0)
        {
          operator delete(v120);
        }

        if (SHIBYTE(v131) < 0)
        {
          *(&v130 + 1) = 6;
          v75 = v130;
        }

        else
        {
          HIBYTE(v131) = 6;
          v75 = &v130;
        }

        strcpy(v75, "PostMM");
      }

      if (SHIBYTE(v131) < 0)
      {
        sub_100007244(&v118, v130, *(&v130 + 1));
      }

      else
      {
        v118 = v130;
        v119 = v131;
      }

      v12 = sub_1007E269C(a1, &v118, a2, a4);
      if (SHIBYTE(v119) < 0)
      {
        operator delete(v118);
      }

      v76 = *(a1 + 56);
      for (j = *(a1 + 64); v76 != j; v76 += 56)
      {
        if ((*(v76 + 41) & 1) == 0)
        {
          v78 = *a2;
          v79 = *(a2 + 8);
          while (v78 != v79)
          {
            if ([*(v76 + 8) count] >= 2)
            {
              v80 = *v78;
              [objc_msgSend(objc_msgSend(*(v76 + 8) "firstObject")];
              if (v80 >= v81)
              {
                v82 = *v78;
                [objc_msgSend(objc_msgSend(*(v76 + 8) "lastObject")];
                if (v82 <= v83)
                {
                  *(v78 + 2) = xmmword_101C76220;
                }
              }
            }

            if ([*v76 count] >= 2)
            {
              v84 = *v78;
              [objc_msgSend(objc_msgSend(*v76 "firstObject")];
              if (v84 >= v85)
              {
                v86 = *v78;
                [objc_msgSend(objc_msgSend(*v76 "lastObject")];
                if (v86 <= v87)
                {
                  *(v78 + 2) = xmmword_101C76220;
                }
              }
            }

            v78 += 14;
          }
        }
      }

      v88 = v116;
      if ((*(v116 + 3664) & 1) != 0 && (sub_10000EC00(buf, "Smoothed"), sub_1007DB818(a2, buf), (buf[23] & 0x80000000) != 0))
      {
        operator delete(*buf);
        if (v12)
        {
LABEL_134:
          v89 = 0.0;
          if (v22 >= 0.0)
          {
            v89 = vabdd_f64(sub_1000081AC(), v22) * 1000.0;
          }

          if (qword_1025D4690 != -1)
          {
            sub_10193EC08();
          }

          v90 = qword_1025D4698;
          if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2050;
            *&buf[20] = v12;
            v138 = 1026;
            *v139 = v89;
            _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLRS,warning,smoother returned error, smootherErrorCode:%{public, location:CLSmootherErrorCode}lld, elapsedTime,msec:%{public}d}", buf, 0x22u);
          }

          if (!sub_1007DC758())
          {
            goto LABEL_165;
          }

          goto LABEL_164;
        }
      }

      else if (v12)
      {
        goto LABEL_134;
      }

      sub_1007E38BC(a2, v115);
      v91 = 0.0;
      if (v9 >= 0.0)
      {
        v91 = vabdd_f64(sub_1000081AC(), v9) * 1000.0;
      }

      if (qword_1025D4690 != -1)
      {
        sub_10193EC08();
      }

      v92 = qword_1025D4698;
      if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v116 + 3636) == 1)
        {
          v93 = *(v116 + 3632);
        }

        else
        {
          v93 = -1;
        }

        v94 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 4);
        *buf = 67241216;
        *&buf[4] = v93;
        *&buf[8] = 2050;
        *&buf[10] = v117;
        *&buf[18] = 2050;
        *&buf[20] = v94;
        v138 = 2048;
        *v139 = 0;
        *&v139[8] = 2050;
        v140[0] = v91;
        _os_log_impl(dword_100000000, v92, OS_LOG_TYPE_DEFAULT, "CLRS,Finished smoothing batch,%{public}d,inputCount,%{public}zu,outputCount,%{public}zu,returnCode,%ld,elapsedTime,%{public}.0f,msec", buf, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        if (*(v116 + 3636) == 1)
        {
          v107 = *(v116 + 3632);
        }

        else
        {
          v107 = -1;
        }

        v111 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 4);
        *v136 = 67241216;
        *&v136[4] = v107;
        *&v136[8] = 2050;
        *&v136[10] = v117;
        *&v136[18] = 2050;
        *&v136[20] = v111;
        *&v136[28] = 2048;
        *&v136[30] = 0;
        *&v136[38] = 2050;
        *&v136[40] = v91;
        v112 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::smoothPoints(std::vector<swan::RouteSmootherEpoch> &, std::vector<CLClientLocation> &, const CLSmootherBatchType)", "%s\n", v112);
        if (v112 != buf)
        {
          free(v112);
        }

        v88 = v116;
      }

      if (!a4)
      {
        v95 = 0.0;
        if (*(v88 + 3624) >= 0.0)
        {
          v95 = vabdd_f64(sub_1000081AC(), *(v88 + 3624)) * 1000.0;
        }

        if (qword_1025D4690 != -1)
        {
          sub_10193EC08();
        }

        v96 = qword_1025D4698;
        if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v88 + 3636) == 1)
          {
            v97 = *(v88 + 3632) + 1;
          }

          else
          {
            v97 = 0;
          }

          *buf = 67240448;
          *&buf[4] = v97;
          *&buf[8] = 2050;
          *&buf[10] = v95;
          _os_log_impl(dword_100000000, v96, OS_LOG_TYPE_DEFAULT, "CLRS,Finished smoothing all batches,numBatches,%{public}d,elapsedTime,%{public}.0f,msec", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4690 != -1)
          {
            sub_10193EC08();
          }

          if (*(v116 + 3636) == 1)
          {
            v113 = *(v116 + 3632) + 1;
          }

          else
          {
            v113 = 0;
          }

          *v136 = 67240448;
          *&v136[4] = v113;
          *&v136[8] = 2050;
          *&v136[10] = v95;
          v114 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "CLSmootherErrorCode CLRouteSmoother::smoothPoints(std::vector<swan::RouteSmootherEpoch> &, std::vector<CLClientLocation> &, const CLSmootherBatchType)", "%s\n", v114);
          if (v114 != buf)
          {
            free(v114);
          }
        }
      }

LABEL_164:
      AnalyticsSendEventLazy();
LABEL_165:
      if (SHIBYTE(v127) < 0)
      {
        operator delete(v126);
      }

      if (SHIBYTE(v129) < 0)
      {
        operator delete(v128);
      }

      if (SHIBYTE(v131) < 0)
      {
        operator delete(v130);
      }

      return v12;
    }

    *(v4 + 3696) = 0;
    *&v136[48] = 0;
    memset(v136, 0, 42);
    if (SHIBYTE(v127) < 0)
    {
      sub_100007244(&__dst, v126, *(&v126 + 1));
    }

    else
    {
      __dst = v126;
      v125 = v127;
    }

    v70 = sub_1007DE178(a1, &__dst, a2, v136);
    v71 = v70;
    if (SHIBYTE(v125) < 0)
    {
      operator delete(__dst);
      if (v71)
      {
        goto LABEL_83;
      }
    }

    else if (v70)
    {
LABEL_83:
      if (SHIBYTE(v131) < 0)
      {
        *(&v130 + 1) = 13;
        v72 = v130;
      }

      else
      {
        HIBYTE(v131) = 13;
        v72 = &v130;
      }

      strcpy(v72, "Reconstructed");
LABEL_94:
      *buf = &v136[16];
      sub_1004CA974(buf);
      v117 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v14) >> 4);
      goto LABEL_95;
    }

    if (qword_1025D4690 != -1)
    {
      sub_10193EC08();
    }

    v73 = qword_1025D4698;
    if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_ERROR, "CLRS,Route Reconstruction before smoothing failed", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193ED1C(buf);
      LOWORD(__p) = 0;
      v110 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CLSmootherErrorCode CLRouteSmoother::smoothPoints(std::vector<swan::RouteSmootherEpoch> &, std::vector<CLClientLocation> &, const CLSmootherBatchType)", "%s\n", v110);
      if (v110 != buf)
      {
        free(v110);
      }
    }

    sub_1016B1A70(*(a1 + 40), "routesmoother", "pasture_reconstruction_failure", 0);
    goto LABEL_94;
  }

  if (qword_1025D4690 != -1)
  {
    sub_10193EB08();
  }

  v11 = qword_1025D4698;
  if (os_log_type_enabled(qword_1025D4698, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "CLRS,smoother not initialized. Cannot proceed", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10193EC30();
  }

  return 5;
}