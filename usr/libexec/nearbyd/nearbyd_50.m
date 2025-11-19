double sub_1003DA304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 + 368);
  v7 = *(a1 + 368);
  if (v6 < v7 || v6 <= v7 && (result = *(a2 + 360), result < *(a1 + 360)))
  {
    v8 = *(a3 + 368);
    if (v8 >= v6 && (v8 > v6 || *(a3 + 360) >= *(a2 + 360)))
    {
      sub_1003D8FB8(a1, a2);
      v14 = *(a3 + 368);
      v15 = *(a2 + 368);
      if (v14 >= v15)
      {
        if (v14 > v15)
        {
          return result;
        }

        result = *(a3 + 360);
        if (result >= *(a2 + 360))
        {
          return result;
        }
      }

      a1 = a2;
    }

    v13 = a3;
    goto LABEL_14;
  }

  v10 = *(a3 + 368);
  if (v10 < v6 || v10 <= v6 && (result = *(a3 + 360), result < *(a2 + 360)))
  {
    sub_1003D8FB8(a2, a3);
    v11 = *(a2 + 368);
    v12 = *(v5 + 368);
    if (v11 < v12 || v11 <= v12 && (result = *(a2 + 360), result < *(v5 + 360)))
    {
      a1 = v5;
      v13 = a2;
LABEL_14:

      sub_1003D8FB8(a1, v13);
    }
  }

  return result;
}

double sub_1003DA43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1003DA304(a1, a2, a3);
  v11 = *(a4 + 368);
  v12 = *(a3 + 368);
  if (v11 < v12 || v11 <= v12 && (result = *(a4 + 360), result < *(a3 + 360)))
  {
    sub_1003D8FB8(a3, a4);
    v13 = *(a3 + 368);
    v14 = *(a2 + 368);
    if (v13 < v14 || v13 <= v14 && (result = *(a3 + 360), result < *(a2 + 360)))
    {
      sub_1003D8FB8(a2, a3);
      v15 = *(a2 + 368);
      v16 = *(a1 + 368);
      if (v15 < v16 || v15 <= v16 && (result = *(a2 + 360), result < *(a1 + 360)))
      {
        sub_1003D8FB8(a1, a2);
      }
    }
  }

  v17 = *(a5 + 368);
  v18 = *(a4 + 368);
  if (v17 < v18 || v17 <= v18 && (result = *(a5 + 360), result < *(a4 + 360)))
  {
    sub_1003D8FB8(a4, a5);
    v19 = *(a4 + 368);
    v20 = *(a3 + 368);
    if (v19 < v20 || v19 <= v20 && (result = *(a4 + 360), result < *(a3 + 360)))
    {
      sub_1003D8FB8(a3, a4);
      v21 = *(a3 + 368);
      v22 = *(a2 + 368);
      if (v21 < v22 || v21 <= v22 && (result = *(a3 + 360), result < *(a2 + 360)))
      {
        sub_1003D8FB8(a2, a3);
        v23 = *(a2 + 368);
        v24 = *(a1 + 368);
        if (v23 < v24 || v23 <= v24 && (result = *(a2 + 360), result < *(a1 + 360)))
        {

          sub_1003D8FB8(a1, a2);
        }
      }
    }
  }

  return result;
}

BOOL sub_1003DA608(uint64_t a1, uint64_t a2)
{
  v4 = 0x51B3BEA3677D46CFLL * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 8);
        v6 = *(a1 + 368);
        if (v5 >= v6 && (v5 > v6 || *(a2 - 16) >= *(a1 + 360)))
        {
          return 1;
        }

        v7 = (a2 - 376);
        goto LABEL_32;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_1003DA304(a1, a1 + 376, a2 - 376);
      return 1;
    case 4:
      sub_1003DA304(a1, a1 + 376, a1 + 752);
      v17 = *(a2 - 8);
      v18 = *(a1 + 1120);
      if (v17 >= v18 && (v17 > v18 || *(a2 - 16) >= *(a1 + 1112)))
      {
        return 1;
      }

      sub_1003D8FB8((a1 + 752), (a2 - 376));
      v19 = *(a1 + 1120);
      v20 = *(a1 + 744);
      if (v19 >= v20 && (v19 > v20 || *(a1 + 1112) >= *(a1 + 736)))
      {
        return 1;
      }

      sub_1003D8FB8((a1 + 376), (a1 + 752));
      v21 = *(a1 + 744);
      v22 = *(a1 + 368);
      if (v21 >= v22 && (v21 > v22 || *(a1 + 736) >= *(a1 + 360)))
      {
        return 1;
      }

      v7 = (a1 + 376);
LABEL_32:
      sub_1003D8FB8(a1, v7);
      return 1;
    case 5:
      sub_1003DA43C(a1, a1 + 376, a1 + 752, a1 + 1128, a2 - 376);
      return 1;
  }

LABEL_11:
  v8 = a1 + 752;
  sub_1003DA304(a1, a1 + 376, a1 + 752);
  v9 = a1 + 1128;
  if (a1 + 1128 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(v9 + 368);
    v13 = *(v8 + 368);
    if (v12 < v13 || v12 <= v13 && *(v9 + 360) < *(v8 + 360))
    {
      v24 = *v9;
      sub_1003BBC24(v25, v9 + 8);
      sub_1003BBC24(v26, v9 + 72);
      sub_1003BBDB4(v27, v9 + 136);
      sub_1003BBDB4(v28, v9 + 248);
      v29 = *(v9 + 360);
      v30 = *(v9 + 368);
      for (i = v10; ; i -= 376)
      {
        v15 = a1 + i;
        *(a1 + i + 1128) = *(a1 + i + 752);
        sub_1003A8CFC(a1 + i + 1136, a1 + i + 760);
        sub_1003A8CFC(v15 + 1200, v15 + 824);
        sub_1003A8CFC(v15 + 1264, v15 + 888);
        sub_1003A8CFC(v15 + 1376, v15 + 1000);
        *(v15 + 1488) = *(v15 + 1112);
        *(v15 + 1496) = *(v15 + 1120);
        if (i == -752)
        {
          break;
        }

        v16 = *(v15 + 744);
        if (v30 >= v16)
        {
          if (v30 > v16)
          {
            v8 = a1 + i + 752;
            goto LABEL_25;
          }

          if (v29 >= *(a1 + i + 736))
          {
            goto LABEL_25;
          }
        }

        v8 -= 376;
      }

      v8 = a1;
LABEL_25:
      *v8 = v24;
      sub_1003A8CFC(v15 + 760, v25);
      sub_1003A8CFC(v15 + 824, v26);
      sub_1003A8CFC(v15 + 888, v27);
      sub_1003A8CFC(v15 + 1000, v28);
      *(v15 + 1112) = v29;
      *(v15 + 1120) = v30;
      if (++v11 == 8)
      {
        return v9 + 376 == a2;
      }
    }

    v8 = v9;
    v10 += 376;
    v9 += 376;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_1003DA968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, int *a7, uint64_t a8)
{
  v13 = *(a1 + 8);
  v14 = *a6;
  v15 = *a7;
  sub_1003BBC24(v17, a8);
  result = sub_1003DABB8(v13, a2, a3, a4, a5, v15, v17, v14);
  *(a1 + 8) = v13 + 432;
  return result;
}

uint64_t sub_1003DAA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, int *a7, uint64_t a8)
{
  v8 = 0x84BDA12F684BDA13 * ((*(a1 + 8) - *a1) >> 4);
  v9 = v8 + 1;
  if (v8 + 1 > 0x97B425ED097B42)
  {
    sub_100019B38();
  }

  if (0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 4) > v9)
  {
    v9 = 0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0x84BDA12F684BDA13 * ((*(a1 + 16) - *a1) >> 4) >= 0x4BDA12F684BDA1)
  {
    v15 = 0x97B425ED097B42;
  }

  else
  {
    v15 = v9;
  }

  v27 = a1;
  if (v15)
  {
    sub_1003DACDC(a1, v15);
  }

  v24 = 0;
  v25 = 432 * v8;
  v26 = 432 * v8;
  v16 = *a6;
  v17 = *a7;
  sub_1003BBC24(v28, a8);
  sub_1003DABB8(432 * v8, a2, a3, a4, a5, v17, v28, v16);
  *&v26 = 432 * v8 + 432;
  v18 = *(a1 + 8);
  v19 = 432 * v8 + *a1 - v18;
  sub_1003DAD38(a1, *a1, v18, v19);
  v20 = *a1;
  *a1 = v19;
  v21 = *(a1 + 16);
  v23 = v26;
  *(a1 + 8) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  sub_1003DB0AC(&v24);
  return v23;
}

void sub_1003DABA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003DB0AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003DABB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, double a8)
{
  sub_1003BBC24(a1, a2);
  sub_1003BBC24(v15 + 64, a3);
  sub_1003BBDB4(a1 + 128, a4);
  sub_1003BBDB4(a1 + 240, a5);
  *(a1 + 352) = a8;
  *(a1 + 360) = a6;
  sub_1003BBC24(a1 + 368, a7);
  return a1;
}

void sub_1003DAC5C(_Unwind_Exception *a1)
{
  *v4 = off_1009991A0;
  *v3 = off_1009991A0;
  *v2 = off_1009991A0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_1003DACDC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x97B425ED097B43)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_1003DAD38(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v7 = a4;
    v8 = a2;
    do
    {
      sub_1003BBC24(v7, v8);
      sub_1003BBC24(v7 + 64, v8 + 64);
      sub_1003BBDB4(v7 + 128, v8 + 128);
      sub_1003BBDB4(v7 + 240, v8 + 240);
      v9 = *(v8 + 352);
      *(v7 + 360) = *(v8 + 360);
      *(v7 + 352) = v9;
      sub_1003BBC24(v7 + 368, v8 + 368);
      v8 += 432;
      v7 = v14 + 432;
      v14 += 432;
    }

    while (v8 != a3);
  }

  v12 = 1;
  sub_1003DAEE0(a1, a2, a3);
  return sub_1003DAF9C(v11);
}

void sub_1003DAEE0(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      a2[46] = off_1009991A0;
      a2[30] = off_1009991A0;
      a2[16] = off_1009991A0;
      a2[8] = off_1009991A0;
      *a2 = off_1009991A0;
      a2 += 54;
      v3 += 54;
    }

    while (a2 != a3);
  }
}

uint64_t sub_1003DAF9C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1003DAFE8(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1003DAFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v5 = 0;
    do
    {
      v6 = a3 + v5;
      *(v6 - 64) = off_1009991A0;
      *(v6 - 192) = off_1009991A0;
      *(a3 + v5 - 304) = off_1009991A0;
      *(a3 + v5 - 368) = off_1009991A0;
      *(a3 + v5 - 432) = off_1009991A0;
      v5 -= 432;
    }

    while (a3 + v5 != a5);
  }
}

uint64_t sub_1003DB0AC(uint64_t a1)
{
  sub_1003DB0E4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1003DB0E4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = 0;
    do
    {
      v4 = v2 + v3;
      *(v4 - 64) = off_1009991A0;
      *(v4 - 192) = off_1009991A0;
      *(v2 + v3 - 304) = off_1009991A0;
      *(v2 + v3 - 368) = off_1009991A0;
      *(v2 + v3 - 432) = off_1009991A0;
      v3 -= 432;
    }

    while (v2 + v3 != a2);
    *(result + 16) = v2 + v3;
  }

  return result;
}

void sub_1003DB1B0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003DB208(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      sub_1003DB2E8(a1, (a4 + v8), v9);
      v9 += 12;
      v8 += 192;
    }

    while (v9 != a3);
    if (v6 != a3)
    {
      v10 = v6 + 104;
      do
      {
        *(v6 + 13) = off_1009991A0;
        *(v6 + 2) = off_1009991A0;
        v6 += 12;
        v10 += 192;
      }

      while (v6 != a3);
    }
  }
}

void sub_1003DB2CC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_1004CB544(v1 + v2);
  }

  _Unwind_Resume(exception_object);
}

double sub_1003DB2E8(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  *a2 = *a3;
  sub_1003DB358((a2 + 1), (a3 + 1));
  *&result = sub_1003DB4E8(a2 + 104, a3 + 104).n128_u64[0];
  return result;
}

__n128 sub_1003DB358(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x300000002;
  *(a1 + 24) = 0x300000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A9E98;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 2)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 4)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 2u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 3u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

__n128 sub_1003DB4E8(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x200000003;
  *(a1 + 24) = 0x200000003;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A9EE0;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 3)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 3)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 3u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 2u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1003DB678(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 176;
    do
    {
      *(v3 - 88) = off_1009991A0;
      *(v3 - 176) = off_1009991A0;
      v3 -= 192;
      v4 -= 192;
    }

    while (v3 != v2);
    *(a1 + 16) = v3;
  }

  v5 = *a1;
  if (*a1)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_1003DB708(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    sub_100019B38();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v8 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    sub_1003D6DC8(a1, v8);
  }

  v15 = 0;
  v16 = 136 * v4;
  v17 = 136 * v4;
  sub_1003DB850((136 * v4), a3, a4, *a2);
  *&v17 = 136 * v4 + 136;
  v9 = *(a1 + 8);
  v10 = 136 * v4 + *a1 - v9;
  sub_1003D6E1C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1003D70FC(&v15);
  return v14;
}

void sub_1003DB83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003D70FC(va);
  _Unwind_Resume(a1);
}

double *sub_1003DB850(double *a1, uint64_t a2, uint64_t a3, double a4)
{
  *a1 = a4;
  v6 = (a1 + 9);
  sub_1003D6F6C((a1 + 1), a2);
  sub_1003BBC24(v6, a3);
  return a1;
}

uint64_t sub_1003DB8C0(uint64_t a1, double *a2, double *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 6);
  v6 = v5 + 1;
  if (v5 + 1 > 0x155555555555555)
  {
    sub_100019B38();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 6) > v6)
  {
    v6 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v9 = 0x155555555555555;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    sub_1003DB1B0(a1, v9);
  }

  v16 = 0;
  v17 = 192 * v5;
  v18 = 192 * v5;
  sub_1003DBA10((192 * v5), a4, a5, *a2, *a3);
  *&v18 = 192 * v5 + 192;
  v10 = *(a1 + 8);
  v11 = 192 * v5 + *a1 - v10;
  sub_1003DB208(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1003DB678(&v16);
  return v15;
}

void sub_1003DB9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003DB678(va);
  _Unwind_Resume(a1);
}

double *sub_1003DBA10(double *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *a1 = a4;
  a1[1] = a5;
  sub_1003DB358((a1 + 2), a2);
  sub_1003DB4E8((a1 + 13), a3);
  return a1;
}

uint64_t sub_1003DBA7C(uint64_t a1, _OWORD *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x13B13B13B13B13BLL)
  {
    sub_100019B38();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 4)) >= 0x9D89D89D89D89DLL)
  {
    v6 = 0x13B13B13B13B13BLL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1003DBC38(a1, v6);
  }

  v13 = 0;
  v14 = 208 * v2;
  sub_1003DBBC8(a1, (208 * v2), a2);
  v15 = (208 * v2 + 208);
  v7 = *(a1 + 8);
  v8 = 208 * v2 + *a1 - v7;
  sub_1003DBC94(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003DBD74(&v13);
  return v12;
}

void sub_1003DBBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003DBD74(va);
  _Unwind_Resume(a1);
}

double sub_1003DBBC8(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v5 = a3[1];
  *a2 = *a3;
  a2[1] = v5;
  sub_1003BBC24((a2 + 2), (a3 + 2));
  *&result = sub_1003BBDB4((a2 + 6), (a3 + 6)).n128_u64[0];
  return result;
}

void sub_1003DBC38(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x13B13B13B13B13CLL)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003DBC94(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      sub_1003DBBC8(a1, (a4 + v8), v9);
      v9 += 13;
      v8 += 208;
    }

    while (v9 != a3);
    if (v6 != a3)
    {
      v10 = v6 + 6;
      do
      {
        *(v6 + 12) = off_1009991A0;
        *(v6 + 4) = off_1009991A0;
        v6 += 13;
        v10 += 13;
      }

      while (v6 != a3);
    }
  }
}

void sub_1003DBD58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1004CB594();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003DBD74(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 176;
    do
    {
      *(v3 - 112) = off_1009991A0;
      *(v3 - 176) = off_1009991A0;
      v3 -= 208;
      v4 -= 208;
    }

    while (v3 != v2);
    *(a1 + 16) = v3;
  }

  v5 = *a1;
  if (*a1)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_1003DBE24()
{
  v1 = xmmword_10056FB00;
  v2[0] = unk_10056FB10;
  v2[1] = xmmword_10056FB20;
  v2[2] = unk_10056FB30;
  qword_1009F83B0 = 0;
  unk_1009F83B8 = 0;
  qword_1009F83A8 = 0;
  sub_10004EEB8(&qword_1009F83A8, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F83A8, &_mh_execute_header);
  v1 = xmmword_10056FB40;
  qword_1009F83C8 = 0;
  unk_1009F83D0 = 0;
  qword_1009F83C0 = 0;
  sub_10004EEB8(&qword_1009F83C0, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F83C0, &_mh_execute_header);
}

uint64_t sub_1003DBF28(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 272) = 0;
  sub_1003FBC84(a1 + 304);
  *(a1 + 848) = 0;
  *(a1 + 864) = 0;
  *(a1 + 992) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1024) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 1040) = xmmword_10056FBC0;
  *(a1 + 1056) = 0x3FF47AE147AE147BLL;
  *(a1 + 288) = 0u;
  return a1;
}

void sub_1003DBFAC(float32x4_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, float32x4_t a5@<Q1>)
{
  v5 = *a5.i64;
  sub_1003FC0A8(&a1[19], a2, &v132, a4, a5);
  sub_1003B3610(&a1[42], &v132, v130, v5);
  v83 = *&v130[32];
  v84 = *&v130[48];
  v9 = *&v130[64];
  v10 = v133;
  if (v133 == 1)
  {
    v81 = *v130;
    v11 = v130[16];
    v12 = sub_1003FBC7C(&a1[19]);
    v10 = v133;
    if (v12 == 4)
    {
      if (v133)
      {
        v13 = vaddq_f32(v132, a1[18]);
        _Q1 = v137;
        _KR00_8 = *(v137.i64 + 4);
        __asm { FMLS            S4, S5, V1.S[2] }

        _S7 = v137.i32[3];
        __asm { FMLA            S4, S7, V1.S[3] }

        v23 = vmuls_lane_f32(_Q1.f32[2], _Q1, 3);
        v24.f32[0] = vmuls_lane_f32(v137.f32[1], v137, 3);
        HIDWORD(v25) = 0;
        HIDWORD(v26) = 0;
        LODWORD(v26) = _S4;
        *(&v26 + 1) = (v23 + (_Q1.f32[0] * *&_KR00_8)) + (v23 + (_Q1.f32[0] * *&_KR00_8));
        *(&v26 + 2) = -(v24.f32[0] - (_Q1.f32[0] * _Q1.f32[2])) - (v24.f32[0] - (_Q1.f32[0] * _Q1.f32[2]));
        v27 = -(v23 - (_Q1.f32[0] * *&_KR00_8)) - (v23 - (_Q1.f32[0] * *&_KR00_8));
        __asm
        {
          FMLA            S6, S2, V1.S[1]
          FMLA            S6, S7, V1.S[3]
          FMLA            S16, S5, V1.S[1]
        }

        *&v25 = v27;
        *(&v25 + 1) = _S6 - (_Q1.f32[0] * _Q1.f32[0]);
        *(&v25 + 2) = _S16 + _S16;
        v24.f32[1] = -(v137.f32[0] * v137.f32[3]);
        a1[18] = v13;
        v31 = vmla_laneq_f32(v24, *_Q1.f32, _Q1, 2);
        *&v32 = vadd_f32(v31, v31);
        __asm
        {
          FMLA            S6, S5, V1.S[2]
          FMLS            S5, S2, V1.S[1]
        }

        *(&v32 + 1) = _S5;
        v13.i32[3] = 1.0;
        *v130 = v138;
        *&v130[16] = v26;
        *&v130[32] = v25;
        *&v130[48] = v32;
        *&v130[64] = v13;
        *&v130[80] = 2;
        *&v130[84] = 0;
        v130[88] = 0;
        v130[96] = 0;
        v131[15] = 0;
        v131[19] = 0;
        *&v131[7] = 1;
        v131[11] = 1;
        sub_1003B3824(&a1[42], v130, v128, v5);
        v124 = *&v128[49];
        v123 = *&v128[33];
        v122 = *&v128[17];
        v120 = *&v128[1];
        *&v127[15] = *&v129[15];
        v126 = *&v128[81];
        *v127 = *v129;
        v125 = *&v128[65];
        v116 = *&v130[49];
        v115 = *&v130[33];
        v114 = *&v130[17];
        v112 = *&v130[1];
        *&v119[15] = *&v131[15];
        *v119 = *v131;
        v118 = *&v130[81];
        v117 = *&v130[65];
        if (v133)
        {
          v35 = *(a2 + 32);
          if (v35)
          {
            v36 = *(a2 + 48);
            if (v36)
            {
              v37 = *(a2 + 64);
              if (v37)
              {
                v38 = v11;
                v39 = *(a2 + 80);
                if (v39 & 1) != 0 && (*(a2 + 96) & 1) != 0 && (*(a2 + 112))
                {
                  v67 = v130[0];
                  v69 = v128[0];
                  v77 = *(a2 + 96);
                  v79 = *(a2 + 112);
                  v73 = *a2;
                  v71 = *(a2 + 8);
                  v75 = *(a2 + 16);
                  v40 = *(a2 + 152);
                  *v93 = *(a2 + 9);
                  *&v93[3] = *(a2 + 12);
                  *v92 = *(a2 + 17);
                  *&v92[3] = *(a2 + 20);
                  *v91 = *(a2 + 33);
                  *&v91[3] = *(a2 + 36);
                  *&v90[3] = *(a2 + 52);
                  *v90 = *(a2 + 49);
                  *&v89[3] = *(a2 + 68);
                  *v89 = *(a2 + 65);
                  *v88 = *(a2 + 81);
                  *&v88[3] = *(a2 + 84);
                  *v87 = *(a2 + 97);
                  *&v87[3] = *(a2 + 100);
                  *v86 = *(a2 + 113);
                  *&v86[3] = *(a2 + 116);
                  *&v85[3] = *(a2 + 156);
                  *v85 = *(a2 + 153);
                  if (v38)
                  {
                    v66 = v132.f32[0];
                    *v107 = *(a2 + 9);
                    v59 = v132.f32[1];
                    v60 = v132.f32[2];
                    *&v107[3] = *(a2 + 12);
                    v61 = v134;
                    v62 = v135;
                    *v105 = *(a2 + 17);
                    if (*(a2 + 152))
                    {
                      v41 = *(a2 + 152);
                    }

                    else
                    {
                      v41 = 1;
                    }

                    v64 = v136;
                    v65 = v137.f32[2];
                    *&v105[3] = *(a2 + 20);
                    v63 = v137.f32[3];
                    LODWORD(v103) = *(a2 + 33);
                    *(&v103 + 3) = *(a2 + 36);
                    v42 = *&v83;
                    *(&v101 + 3) = *(a2 + 52);
                    v43 = *(&v83 + 1);
                    LODWORD(v101) = *(a2 + 49);
                    *(&v99 + 3) = *(a2 + 68);
                    LODWORD(v99) = *(a2 + 65);
                    LODWORD(v97) = *(a2 + 81);
                    *(&v97 + 3) = *(a2 + 84);
                    LODWORD(v96) = *(a2 + 97);
                    *(&v96 + 3) = *(a2 + 100);
                    LODWORD(v95) = *(a2 + 113);
                    *(&v95 + 3) = *(a2 + 116);
                    *(&v94 + 3) = *(a2 + 156);
                    LODWORD(v94) = *(a2 + 153);
                    *&v83 = v137.i64[0];
                    v44 = sub_1003FBC7C(&a1[19]);
                    *(a3 + 65) = v125;
                    *(a3 + 81) = v126;
                    *(a3 + 97) = *v127;
                    *(a3 + 112) = *&v127[15];
                    *(a3 + 1) = v120;
                    *(a3 + 17) = v122;
                    *(a3 + 33) = v123;
                    *a3 = v69;
                    *(a3 + 49) = v124;
                    *(a3 + 128) = 1;
                    *(a3 + 144) = v67;
                    *(a3 + 209) = v117;
                    *(a3 + 225) = v118;
                    *(a3 + 241) = *v119;
                    *(a3 + 256) = *&v119[15];
                    *(a3 + 145) = v112;
                    *(a3 + 161) = v114;
                    *(a3 + 177) = v115;
                    *(a3 + 193) = v116;
                    *(a3 + 272) = 1;
                    *(a3 + 288) = v73;
                    *(a3 + 296) = v71;
                    *(a3 + 300) = *&v107[3];
                    *(a3 + 297) = *v107;
                    *(a3 + 304) = v75;
                    *(a3 + 308) = *&v105[3];
                    *(a3 + 305) = *v105;
                    *(a3 + 312) = *&v81;
                    *(a3 + 320) = v35;
                    *(a3 + 324) = *(&v103 + 3);
                    *(a3 + 321) = v103;
                    *(a3 + 328) = *(&v81 + 1);
                    *(a3 + 336) = v36;
                    *(a3 + 340) = *(&v101 + 3);
                    *(a3 + 337) = v101;
                    *(a3 + 344) = *(&v81 + 2);
                    *(a3 + 352) = v37;
                    *(a3 + 356) = *(&v99 + 3);
                    *(a3 + 353) = v99;
                    *(a3 + 360) = v42;
                    *(a3 + 368) = v39;
                    *(a3 + 372) = *(&v97 + 3);
                    *(a3 + 369) = v97;
                    *(a3 + 376) = v43;
                    *(a3 + 384) = v77;
                    *(a3 + 388) = *(&v96 + 3);
                    *(a3 + 385) = v96;
                    *(a3 + 392) = *(&v83 + 2);
                    *(a3 + 400) = v79;
                    *(a3 + 404) = *(&v95 + 3);
                    *(a3 + 401) = v95;
                    *(a3 + 408) = *(&v84 + 3);
                    *(a3 + 416) = vcvtq_f64_f32(*&v84);
                    *(a3 + 432) = *(&v84 + 2);
                    *(a3 + 440) = v41;
                    *(a3 + 444) = *(&v94 + 3);
                    *(a3 + 441) = v94;
                    *(a3 + 448) = v73;
                    *(a3 + 456) = v71;
                    *(a3 + 460) = *&v93[3];
                    *(a3 + 457) = *v93;
                    *(a3 + 464) = v75;
                    *(a3 + 468) = *&v92[3];
                    *(a3 + 465) = *v92;
                    *(a3 + 472) = v66;
                    *(a3 + 480) = v35;
                    *(a3 + 484) = *&v91[3];
                    *(a3 + 481) = *v91;
                    *(a3 + 488) = v59;
                    *(a3 + 496) = v36;
                    *(a3 + 500) = *&v90[3];
                    *(a3 + 497) = *v90;
                    *(a3 + 504) = v60;
                    *(a3 + 512) = v37;
                    *(a3 + 516) = *&v89[3];
                    *(a3 + 513) = *v89;
                    *(a3 + 520) = v61;
                    *(a3 + 528) = v39;
                    *(a3 + 532) = *&v88[3];
                    *(a3 + 529) = *v88;
                    *(a3 + 536) = v62;
                    *(a3 + 544) = v77;
                    *(a3 + 548) = *&v87[3];
                    *(a3 + 545) = *v87;
                    *(a3 + 552) = v64;
                    *(a3 + 560) = v79;
                    *(a3 + 564) = *&v86[3];
                    *(a3 + 561) = *v86;
                    *(a3 + 568) = v63;
                    *(a3 + 576) = vcvtq_f64_f32(*&v83);
                    *(a3 + 592) = v65;
                    *(a3 + 600) = v41;
                    *(a3 + 604) = *&v85[3];
                    *(a3 + 601) = *v85;
                    *(a3 + 608) = v44;
                    *(a3 + 620) = v111;
                    *(a3 + 612) = v109;
LABEL_24:
                    *(a3 + 624) = 1;
                    return;
                  }
                }
              }
            }
          }
        }
      }

      goto LABEL_26;
    }
  }

  if ((v10 & 1) == 0 && sub_1003FBC7C(&a1[19]) == 1)
  {
    v45 = *(a2 + 80);
    if (v45)
    {
      v46 = *(a2 + 96);
      if (v46)
      {
        v47 = *(a2 + 112);
        if (v47)
        {
          v48 = *a2;
          v72 = *(a2 + 8);
          v74 = *(a2 + 16);
          v49 = *(a2 + 152);
          v80 = *v137.f32;
          v50 = v134;
          v76 = v135;
          v78 = v136;
          v82 = v137.f32[2];
          if ((v49 & 1) == 0)
          {
            v49 = 1;
          }

          v68 = v49;
          LODWORD(v106) = *(a2 + 9);
          *(&v106 + 3) = *(a2 + 12);
          v51 = *(a2 + 33);
          *v128 = *(a2 + 17);
          *&v128[16] = v51;
          *&v128[32] = *(a2 + 49);
          *&v128[47] = *(a2 + 64);
          *(&v104 + 3) = *(a2 + 84);
          LODWORD(v104) = *(a2 + 81);
          *(&v102 + 3) = *(a2 + 100);
          LODWORD(v102) = *(a2 + 97);
          *(&v100 + 3) = *(a2 + 116);
          LODWORD(v100) = *(a2 + 113);
          v52 = v137.f32[3];
          v70 = COERCE_UNSIGNED_INT64(v137.f32[3]) >> 8;
          *(&v98 + 3) = *(a2 + 156);
          LODWORD(v98) = *(a2 + 153);
          v53 = *(a2 + 17);
          v54 = *(a2 + 33);
          v55 = *(a2 + 49);
          *&v130[47] = *(a2 + 64);
          *&v130[16] = v54;
          *&v130[32] = v55;
          *v130 = v53;
          *(&v121 + 3) = *(a2 + 84);
          LODWORD(v121) = *(a2 + 81);
          *(&v113 + 3) = *(a2 + 100);
          LODWORD(v113) = *(a2 + 97);
          *(&v110 + 3) = *(a2 + 116);
          LODWORD(v110) = *(a2 + 113);
          *(&v108 + 3) = *(a2 + 156);
          LODWORD(v108) = *(a2 + 153);
          v56 = sub_1003FBC7C(&a1[19]);
          *a3 = 0;
          *(a3 + 128) = 0;
          *(a3 + 144) = 0;
          *(a3 + 272) = 0;
          *(a3 + 288) = v48;
          *(a3 + 296) = v9;
          *(a3 + 304) = 1;
          v57 = *&v130[16];
          *(a3 + 305) = *v130;
          *(a3 + 321) = v57;
          *(a3 + 337) = *&v130[32];
          *(a3 + 352) = *&v130[47];
          *(a3 + 360) = *&v83;
          *(a3 + 368) = v45;
          *(a3 + 372) = *(&v121 + 3);
          *(a3 + 369) = v121;
          *(a3 + 376) = *(&v83 + 1);
          *(a3 + 384) = v46;
          *(a3 + 388) = *(&v113 + 3);
          *(a3 + 385) = v113;
          *(a3 + 392) = *(&v83 + 2);
          *(a3 + 400) = v47;
          *(a3 + 404) = *(&v110 + 3);
          *(a3 + 401) = v110;
          *(a3 + 408) = *(&v84 + 3);
          *(a3 + 416) = vcvtq_f64_f32(*&v84);
          *(a3 + 432) = *(&v84 + 2);
          *(a3 + 440) = v68;
          *(a3 + 444) = *(&v108 + 3);
          *(a3 + 441) = v108;
          *(a3 + 448) = v48;
          *(a3 + 456) = v72;
          *(a3 + 460) = *(&v106 + 3);
          *(a3 + 457) = v106;
          *(a3 + 464) = v74;
          *(a3 + 512) = *&v128[47];
          v58 = *&v128[16];
          *(a3 + 465) = *v128;
          *(a3 + 481) = v58;
          *(a3 + 497) = *&v128[32];
          *(a3 + 520) = v50;
          *(a3 + 528) = v45;
          *(a3 + 529) = v104;
          *(a3 + 532) = *(&v104 + 3);
          *(a3 + 536) = v76;
          *(a3 + 544) = v46;
          *(a3 + 545) = v102;
          *(a3 + 548) = *(&v102 + 3);
          *(a3 + 552) = v78;
          *(a3 + 560) = v47;
          *(a3 + 561) = v100;
          *(a3 + 564) = *(&v100 + 3);
          *(a3 + 568) = LOBYTE(v52);
          *(a3 + 575) = HIBYTE(v52);
          *(a3 + 573) = HIDWORD(v52) >> 8;
          *(a3 + 569) = v70;
          *(a3 + 576) = vcvtq_f64_f32(v80);
          *(a3 + 592) = v82;
          *(a3 + 600) = v68;
          *(a3 + 604) = *(&v98 + 3);
          *(a3 + 601) = v98;
          *(a3 + 608) = v56;
          goto LABEL_24;
        }
      }
    }

LABEL_26:
    sub_1000195BC();
  }

  *a3 = 0;
  *(a3 + 624) = 0;
}

uint64_t sub_1003DCB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1003FCA04(a1 + 304, a2, &v55);
  if (v60 == 2)
  {
    v5.n128_f64[0] = *&v55 - *(a1 + 1056);
    sub_1003FC038((a1 + 304), &v47, v5);
    v6 = v54;
    if (v54 == 1)
    {
      if (*(a1 + 128) == 1)
      {
        *(a1 + 288) = vaddq_f32(*(a1 + 288), vsubq_f32(v51, *(a1 + 64)));
      }

      v7 = *&v53[16];
      *(a1 + 96) = *v53;
      *(a1 + 112) = v7;
      *(a1 + 128) = v54;
      v8 = v50;
      *(a1 + 32) = v49;
      *(a1 + 48) = v8;
      v9 = v52;
      *(a1 + 64) = v51;
      *(a1 + 80) = v9;
      v10 = v48;
      *a1 = v47;
      *(a1 + 16) = v10;
    }

    v43 = v47;
    v44 = v48;
    v45 = v49;
    v46 = v50;
    v32 = v52;
    v33 = *v53;
    v11 = *&v53[8];
    v12 = v53[12];
    *(v42 + 15) = *&v53[28];
    v13 = *(a1 + 288);
    v13.i32[3] = 1.0;
    v38 = v55;
    v39 = v56;
    v40 = v57;
    v41 = v58;
    v42[0] = *&v53[13];
    v30 = v60;
    v31 = v61;
    v37[0] = *v62;
    *(v37 + 15) = *&v62[15];
    if (v6)
    {
      v11 = 0;
      v14 = v13;
      v15 = vaddq_f32(v13, vsubq_f32(v59, v51));
      v12 = 1;
    }

    else
    {
      v28 = v13;
      v29 = v51;
      sub_1003FBDB0((a1 + 304), v34);
      v15 = v28;
      if (v36 == 1)
      {
        v20 = *(a1 + 288);
        v20.i32[3] = 1.0;
        v15 = vaddq_f32(vsubq_f32(v59, v35), v20);
      }

      v14 = v29;
    }

    *(a3 + 288) = 0;
    *(a3 + 296) = 0;
    *(a3 + 304) = 0;
    *(a3 + 408) = 0;
    *(a3 + 312) = 0u;
    *(a3 + 328) = 0u;
    *(a3 + 344) = 0u;
    *(a3 + 360) = 0u;
    *(a3 + 376) = 0u;
    *(a3 + 392) = 0u;
    *(a3 + 440) = 0;
    *(a3 + 448) = 0;
    *(a3 + 456) = 0;
    *(a3 + 464) = 0;
    *(a3 + 568) = 0;
    *(a3 + 472) = 0u;
    *(a3 + 488) = 0u;
    *(a3 + 504) = 0u;
    *(a3 + 520) = 0u;
    *(a3 + 536) = 0u;
    *(a3 + 552) = 0u;
    *(a3 + 600) = 0;
    v21 = v39;
    *a3 = v38;
    *(a3 + 16) = v21;
    v22 = v41;
    *(a3 + 32) = v40;
    *(a3 + 48) = v22;
    *(a3 + 64) = v15;
    *(a3 + 80) = v30;
    *(a3 + 96) = v31;
    *(a3 + 104) = 0;
    *(a3 + 108) = 1;
    v23 = v37[0];
    *(a3 + 124) = *(v37 + 15);
    *(a3 + 109) = v23;
    *(a3 + 128) = 1;
    v24 = v46;
    *(a3 + 176) = v45;
    *(a3 + 192) = v24;
    v25 = v44;
    *(a3 + 144) = v43;
    *(a3 + 160) = v25;
    *(a3 + 240) = v33;
    *(a3 + 208) = v14;
    *(a3 + 224) = v32;
    *(a3 + 248) = v11;
    *(a3 + 252) = v12;
    v26 = v42[0];
    *(a3 + 268) = *(v42 + 15);
    *(a3 + 253) = v26;
    *(a3 + 272) = v6;
  }

  else
  {
    if (*(a1 + 128) == 1)
    {
      *(a1 + 128) = 0;
    }

    v51 = v59;
    v52 = v60;
    *v53 = v61;
    v47 = v55;
    v48 = v56;
    v49 = v57;
    v50 = v58;
    *(a3 + 109) = *v62;
    *(a3 + 111) = v62[2];
    *(a3 + 117) = *&v62[8];
    *(a3 + 124) = *&v62[15];
    v16 = sub_1003FBC7C(a1 + 304);
    *(a3 + 144) = 0;
    *(a3 + 272) = 0;
    *(a3 + 288) = 0;
    *(a3 + 296) = 0;
    *(a3 + 304) = 0;
    *(a3 + 312) = 0u;
    *(a3 + 328) = 0u;
    *(a3 + 344) = 0u;
    *(a3 + 360) = 0u;
    *(a3 + 376) = 0u;
    *(a3 + 392) = 0u;
    *(a3 + 408) = 0;
    *(a3 + 440) = 0;
    *(a3 + 448) = 0;
    *(a3 + 456) = 0;
    *(a3 + 464) = 0;
    *(a3 + 472) = 0u;
    *(a3 + 488) = 0u;
    *(a3 + 504) = 0u;
    *(a3 + 520) = 0u;
    *(a3 + 536) = 0u;
    *(a3 + 552) = 0u;
    *(a3 + 568) = 0;
    *(a3 + 600) = 0;
    v17 = v52;
    *(a3 + 64) = v51;
    *(a3 + 80) = v17;
    *(a3 + 96) = *v53;
    v18 = v48;
    *a3 = v47;
    *(a3 + 16) = v18;
    v19 = v50;
    *(a3 + 32) = v49;
    *(a3 + 48) = v19;
    *(a3 + 104) = 0;
    *(a3 + 108) = 1;
    *(a3 + 112) = v16;
    *(a3 + 116) = 1;
    *(a3 + 128) = 1;
  }

  result = sub_1003FBC7C(a1 + 304);
  *(a3 + 608) = result;
  return result;
}

__n128 sub_1003DCF00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  v7[6] = *(a2 + 96);
  v7[7] = v2;
  v8 = *(a2 + 128);
  v3 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v3;
  v4 = *(a2 + 80);
  v7[4] = *(a2 + 64);
  v7[5] = v4;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  sub_1003B349C(a1 + 672, v7);
  return result;
}

uint64_t sub_1003DCF50(uint64_t result, void *a2, void *a3, double a4, double a5)
{
  *(result + 8) = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *result = off_1009A9F28;
  *(result + 16) = v6;
  v7 = result + 16;
  v8 = a2[2];
  *(result + 24) = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *(result + 8) = v7;
  }

  *(result + 32) = *a3;
  v9 = a3 + 1;
  v10 = a3[1];
  *(result + 40) = v10;
  v11 = result + 40;
  v12 = a3[2];
  *(result + 48) = v12;
  if (v12)
  {
    *(v10 + 16) = v11;
    *a3 = v9;
    *v9 = 0;
    a3[2] = 0;
  }

  else
  {
    *(result + 32) = v11;
  }

  *(result + 56) = a4;
  *(result + 64) = a5;
  return result;
}

void sub_1003DCFE8(uint64_t a1@<X0>, uint64_t *a2@<X1>, BOOL *a3@<X8>, double a4@<D0>)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    *a3 = 0;
    a3[8] = 0;
    a3[16] = 0;
    return;
  }

  v9 = 0;
  __src = 0;
  v36 = 0;
  v37 = 0;
  do
  {
    v10 = *(v5 + 16);
    if (*(a1 + 56) <= v10 && *(a1 + 64) >= v10)
    {
      if (v9 >= v37)
      {
        v11 = __src;
        v12 = v9 - __src;
        v13 = (v9 - __src) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          sub_100019B38();
        }

        v15 = v37 - __src;
        if ((v37 - __src) >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          sub_100012564(&__src, v16);
        }

        v17 = (v9 - __src) >> 3;
        v18 = (8 * v13);
        v19 = (8 * v13 - 8 * v17);
        *v18 = v10;
        v9 = v18 + 1;
        memcpy(v19, v11, v12);
        v20 = __src;
        __src = v19;
        v36 = v9;
        v37 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v9++ = v10;
      }

      v36 = v9;
    }

    v5 += 232;
  }

  while (v5 != v6);
  if (__src != v9)
  {
    v21 = sub_1003DD360((a1 + 32), a4);
    v22 = sub_1003DD360((a1 + 8), a4);
    if (v22 > 0.0)
    {
      v23 = log(v21 / v22);
      v24 = __src;
      if (__src == v36)
      {
        v27 = 0.0;
        v26 = 0.0;
      }

      else
      {
        v25 = v23;
        v26 = 0.0;
        v27 = 0.0;
        do
        {
          v28 = sub_1003DD360((a1 + 32), *v24);
          v29 = sub_1003DD360((a1 + 8), *v24);
          if (v29 <= 0.0)
          {
            v30 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
            {
              v31 = *v24;
              *buf = 134283521;
              v39 = v31;
              _os_log_fault_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "#hist-unlock, WRTT: Range %{private}f resulted in 0 unlock probability, skipping range", buf, 0xCu);
            }
          }

          else
          {
            v26 = v26 + log(v28 / v29);
            v27 = v25 + v27;
          }

          ++v24;
        }

        while (v24 != v36);
      }

      v34 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v39 = v26;
        v40 = 2048;
        v41 = v27;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#hist-unlock, WRTT: CLHistogramHypothesisTestUnlockEstimator result: logRatio: %f, scaledLogRatio: %f", buf, 0x16u);
      }

      v33 = v26 < v27;
      goto LABEL_37;
    }

    v32 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004CB5DC(v32, a4);
    }
  }

  v33 = 0;
LABEL_37:
  *a3 = v33;
  a3[8] = 0;
  a3[16] = 0;
  if (__src)
  {
    v36 = __src;
    operator delete(__src);
  }
}

double sub_1003DD360(void *a1, double a2)
{
  v4 = (a1 + 1);
  for (i = a1[1]; i; i = *&i[v5 <= a2])
  {
    v5 = i[4];
    if (v5 > a2)
    {
      v4 = i;
    }
  }

  if (v4 == *a1)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004CB658(v7, a2);
    }
  }

  else
  {
    v6 = *v4;
    if (*v4)
    {
      do
      {
        v4 = v6;
        v6 = *(v6 + 1);
      }

      while (v6);
    }

    else
    {
      v8 = v4;
      do
      {
        v4 = *(v8 + 2);
        v9 = *v4 == v8;
        v8 = v4;
      }

      while (v9);
    }
  }

  return v4[5];
}

uint64_t sub_1003DD418(uint64_t a1)
{
  *a1 = off_1009A9F28;
  sub_10002074C(a1 + 32, *(a1 + 40));
  sub_10002074C(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_1003DD470(uint64_t a1)
{
  *a1 = off_1009A9F28;
  sub_10002074C(a1 + 32, *(a1 + 40));
  sub_10002074C(a1 + 8, *(a1 + 16));

  operator delete();
}

void *sub_1003DD514(uint64_t a1, double a2, double a3)
{
  result = sub_1003CA8F4(a1, -5.0, 10.0, a2, a3);
  *result = off_1009A9F78;
  return result;
}

void sub_1003DD558()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#decision-proc,WRTT, Using CLHistogramHypothesisTestUnlockEstimator with phone unlock histograms", buf, 2u);
  }

  sub_1003DD5F4();
}

void sub_1003DD6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13)
{
  sub_10002074C(&a9, a10);
  sub_10002074C(&a12, a13);
  operator delete();
}

void *sub_1003DD760(void *a1, double *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_1003DD7E0(a1, v4, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1003DD7E0(void *a1, double *a2, double *a3)
{
  v3 = *sub_1003DD878(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

double *sub_1003DD878(void *a1, double *a2, double **a3, double *a4, double *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = *(v13 + 2);
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v16;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v16 + 1;
        v16 = *(v16 + 1);
      }

      while (v16);
      goto LABEL_43;
    }

LABEL_42:
    v17 = (a1 + 1);
LABEL_43:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    v12 = *(a2 + 1);
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = *(v19 + 2);
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v20;
          v21 = v20[4];
          if (v6 >= v21)
          {
            break;
          }

          v20 = *v20;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v21 >= v6)
        {
          break;
        }

        v5 = v20 + 1;
        v20 = *(v20 + 1);
      }

      while (v20);
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v11)
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

void *sub_1003DDA14(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1003DDA6C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1003DDA6C(uint64_t result, double *a2, double *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1003DD7E0(v5, (v5 + 8), v4 + 4);
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

uint64_t sub_1003DDAF4()
{
  memcpy(__dst, &unk_10056FC50, sizeof(__dst));
  sub_1003DD760(qword_1009F83D8, __dst, 150);
  __cxa_atexit(sub_1003DD4E8, qword_1009F83D8, &_mh_execute_header);
  memcpy(__dst, &unk_1005705B0, sizeof(__dst));
  sub_1003DD760(qword_1009F83F0, __dst, 150);
  return __cxa_atexit(sub_1003DD4E8, qword_1009F83F0, &_mh_execute_header);
}

uint64_t sub_1003DDCFC(unsigned int *a1, uint64_t a2)
{
  if (a1[14])
  {
    v2 = *(a2 + 8);
    if ((v2 - 1) < 2)
    {
LABEL_5:
      v3 = 0;
      v4 = *a2;
      a1[12] = *(a2 + 8);
      *(a1 + 5) = v4;
      goto LABEL_10;
    }

    if (v2)
    {
      goto LABEL_9;
    }

    if (a1[12])
    {
      goto LABEL_5;
    }

    if (*a2 - *(a1 + 5) <= 0.2)
    {
LABEL_9:
      v3 = 0;
    }

    else
    {
      v5 = *a2;
      a1[12] = *(a2 + 8);
      *(a1 + 5) = v5;
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
    *(a1 + 10) = *a2;
    *(a1 + 56) = 1;
  }

LABEL_10:
  if (*(a2 + 64) == 1 && *(a2 + 32) == 1)
  {
    if ((a1[36] & 1) != 0 && *(a2 + 16) - *(a1 + 16) <= 0.2)
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      *(a1 + 8) = v9;
      *(a1 + 9) = v10;
      v11 = *(a2 + 56);
      *(a1 + 10) = v11;
      v12 = *(a1 + 12);
      v13 = v9 - *(a1 + 11);
      v14 = *(a2 + 24);
      *(a1 + 17) = v14;
      if (sqrt((v10 - v12) * (v10 - v12) + v13 * v13 + (v11 - *(a1 + 13)) * (v11 - *(a1 + 13))) >= 0.5)
      {
        *(a1 + 22) = *(a1 + 4);
        *(a1 + 13) = *(a1 + 10);
        *(a1 + 15) = v14;
        *(a1 + 112) = 0;
      }

      else
      {
        *(a1 + 112) = v14 - *(a1 + 15) >= 1.0;
      }

      v7 = 1;
    }

    else
    {
      *(a1 + 14) = 0;
      *(a1 + 5) = 0u;
      *(a1 + 6) = 0u;
      *(a1 + 4) = 0u;
      v7 = 1;
      *(a1 + 144) = 1;
      *(a1 + 4) = *(a2 + 40);
      *(a1 + 10) = *(a2 + 56);
      *(a1 + 22) = *(a1 + 4);
      *(a1 + 13) = *(a1 + 10);
      v8 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 17) = v8;
      *(a1 + 15) = v8;
    }
  }

  else
  {
    v7 = *(a1 + 144);
    if (v7 == 1)
    {
      v7 = 0;
      *(a1 + 144) = 0;
    }
  }

  if ((a1[8] & 1) == 0)
  {
    v19 = *(a1 + 5);
    v20 = a1[12];
    if (v7)
    {
      if (v20)
      {
        if (a1[28])
        {
          v15 = 1;
          v19 = *(a1 + 15);
          v21 = 1;
          v20 = 1;
LABEL_45:
          *a1 = v15;
          a1[2] = v20;
          *(a1 + 2) = v19;
          *(a1 + 24) = v21;
          *(a1 + 32) = 1;
          return v15;
        }

LABEL_38:
        v15 = 0;
        v21 = 0;
        v20 = 0;
        goto LABEL_45;
      }

      v20 = a1[28] & (v19 > *(a1 + 15));
      if ((a1[28] & (v19 > *(a1 + 15))) != 0)
      {
        v19 = *(a1 + 15);
      }
    }

    else if (v20)
    {
      goto LABEL_38;
    }

    v15 = 1;
    v21 = 1;
    goto LABEL_45;
  }

  v15 = *a1;
  if (v15 == 2)
  {
    v15 = 1;
    *a1 = 1;
  }

  v16 = *(a1 + 5);
  v17 = a1[12];
  if (v7)
  {
    if (v17)
    {
      if (a1[28])
      {
        v18 = 1;
        v16 = *(a1 + 15);
        goto LABEL_47;
      }

LABEL_35:
      if (v15 != 1)
      {
        return v15;
      }

      v22 = 0;
      v15 = 0;
      *a1 = 0;
      a1[2] = 0;
LABEL_57:
      *(a1 + 24) = v22;
      return v15;
    }

    v18 = a1[28] & (v16 > *(a1 + 15));
    if ((a1[28] & (v16 > *(a1 + 15))) != 0)
    {
      v16 = *(a1 + 15);
    }
  }

  else
  {
    if (v17)
    {
      goto LABEL_35;
    }

    v18 = 0;
  }

LABEL_47:
  if (v15 != 1)
  {
    v22 = 1;
    *a1 = 1;
    a1[2] = v18;
    *(a1 + 2) = v16;
    v15 = 1;
    goto LABEL_57;
  }

  if (v3)
  {
    v22 = 1;
    if (v18)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    *a1 = v15;
    a1[2] = v18;
    goto LABEL_56;
  }

  v15 = 1;
  if (v16 > *(a1 + 2))
  {
    *a1 = 1;
    a1[2] = v18;
    v22 = 1;
LABEL_56:
    *(a1 + 2) = v16;
    goto LABEL_57;
  }

  return v15;
}

void sub_1003DEA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1003DEB64(&a34);
  sub_1003DEB64(&a50);
  sub_1003DEB64(&a66);

  _Unwind_Resume(a1);
}

uint64_t sub_1003DEB64(uint64_t a1)
{
  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003DEE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
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

void sub_1003DF684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  __cxa_guard_abort(&qword_1009F8500);

  _Unwind_Resume(a1);
}

void sub_1003DFC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003E0378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v21 = v19;

  _Unwind_Resume(a1);
}

void sub_1003E0B88(_Unwind_Exception *a1)
{
  *(v1 - 192) = v1 - 168;
  sub_1003E2700((v1 - 192));
  _Unwind_Resume(a1);
}

void sub_1003E16D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003E1928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1003E1EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_1003E24B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = NeuralNetworkModelWithDataTransformer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

char *sub_1003E2530(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_1000056BC(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  *(__dst + 12) = *(a2 + 12);
  sub_10029F2B8((__dst + 56), (a2 + 56));
  sub_10029F2B8((__dst + 88), (a2 + 88));
  return __dst;
}

void sub_1003E25C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003E2620(uint64_t a1)
{
  if (*a1)
  {
    sub_1003E2660(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_1003E2660(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 8) == 1 && *(v3 - 9) < 0)
      {
        operator delete(*(v3 - 4));
      }

      if (*(v3 - 40) == 1 && *(v3 - 41) < 0)
      {
        operator delete(*(v3 - 8));
      }

      if (*(v3 - 73) < 0)
      {
        operator delete(*(v3 - 12));
      }

      v4 = v3 - 15;
      if (*(v3 - 97) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 15;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

void sub_1003E2700(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1003E2660(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1003E2754(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003E27DC(result, a4);
  }

  return result;
}

void sub_1003E27BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1003E2700(&a9);
  _Unwind_Resume(a1);
}

void sub_1003E27DC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    sub_1003E2828(a1, a2);
  }

  sub_100019B38();
}

void sub_1003E2828(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  sub_100013B04();
}

char *sub_1003E2880(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1003E2530(v4, v6);
      v6 = (v6 + 120);
      v4 = v11 + 120;
      v11 += 120;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1003E2924(v8);
  return v4;
}

uint64_t sub_1003E2924(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1003E2970(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1003E2970(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 8) == 1 && *(v6 - 9) < 0)
      {
        operator delete(*(v6 - 4));
      }

      if (*(v6 - 40) == 1 && *(v6 - 41) < 0)
      {
        operator delete(*(v6 - 8));
      }

      if (*(v6 - 73) < 0)
      {
        operator delete(*(v6 - 12));
      }

      v7 = v6 - 15;
      if (*(v6 - 97) < 0)
      {
        operator delete(*v7);
      }

      v6 -= 15;
    }

    while (v7 != a5);
  }
}

uint64_t sub_1003E2A10(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003E27DC(result, a4);
  }

  return result;
}

void sub_1003E2A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1003E2700(&a9);
  _Unwind_Resume(a1);
}

char *sub_1003E2A98(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1003E2530(v4, v6);
      v6 = (v6 + 120);
      v4 = v11 + 120;
      v11 += 120;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1003E2924(v8);
  return v4;
}

uint64_t sub_1003E2B3C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10004EF2C(result, a4);
  }

  return result;
}

void sub_1003E2B9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1003E2BB8(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_100019B38();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      sub_10004EF68(a1, v15);
    }

    v33 = 16 * v16;
    v34 = 16 * a5;
    v35 = (16 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 16;
    }

    while (v34);
    memcpy((v33 + 16 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 16 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (16 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 4;
  if (v18 >= a5)
  {
    v29 = &__dst[16 * a5];
    v30 = (v10 - 16 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v29);
    }

    v28 = 16 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[16 * a5];
    v23 = v10 + v20;
    if (&v21[-16 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -16 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 16;
        v24 += 16;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[16 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void sub_1003E2DE4(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_1003E2E00()
{
  v0 = objc_autoreleasePoolPush();
  v5 = "AntennaMask_1_NN_V5_Model_DeviceType_201.mlmodelc/fp16_model.espresso";
  v6 = "net";
  v1 = sub_1002EB624(&xmmword_1009F8408, &v5);
  v3 = "AntennaMask_2_NN_V5_Model_DeviceType_201.mlmodelc/fp16_model.espresso";
  v4 = "net";
  sub_1002EB624(v1 + 48, &v3);
  __cxa_atexit(sub_1002D901C, &xmmword_1009F8408, &_mh_execute_header);
  v5 = "AntennaMask_1_NN_V5_ScalingModel_DeviceType_201";
  v6 = "mlmodelc";
  v2 = sub_1002EB624(&xmmword_1009F8468, &v5);
  v3 = "AntennaMask_2_NN_V5_ScalingModel_DeviceType_201";
  v4 = "mlmodelc";
  sub_1002EB624(v2 + 48, &v3);
  __cxa_atexit(sub_1002D901C, &xmmword_1009F8468, &_mh_execute_header);
  sub_100004A08(&qword_1009F84C8, "input_1");
  __cxa_atexit(&std::string::~string, &qword_1009F84C8, &_mh_execute_header);
  sub_100004A08(&qword_1009F84E0, "Identity");
  __cxa_atexit(&std::string::~string, &qword_1009F84E0, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_1003E2FD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  if (v3 < 2 || v3 == 2 && *(a2 + 84) == 1)
  {

    sub_1003E31F4(a1);
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 64);
    v7.i32[0] = vextq_s8(v6, v6, 8uLL).u32[0];
    v7.i32[1] = v6.i32[0];
    v26 = vcvtq_f64_f32(v7);
    v25 = v5;
    v27 = *&v6.i32[1];
    v28 = 0;
    v29 = 0;
    sub_1003E32C4(a1, &v25);
    LOBYTE(v17) = 0;
    v24 = 0;
    for (i = *(a1 + 56); i != a1 + 48; i = *(i + 8))
    {
      if ((*(i + 120) & 1) == 0)
      {
        sub_1003E3374(a1, v15, *(i + 16));
        if (v16 == 1)
        {
          v9 = *(i + 120);
          v10 = v15[1];
          *(i + 72) = v15[0];
          *(i + 88) = v10;
          *(i + 104) = v15[2];
          if ((v9 & 1) == 0)
          {
            *(i + 120) = 1;
          }

          v11 = *(i + 40);
          v12 = *(i + 24);
          v13 = *(i + 56);
          v17 = *(i + 16);
          v20 = v13;
          v18 = v12;
          v19 = v11;
          v21 = *(i + 72);
          v22 = *(i + 88);
          v23 = *(i + 104);
          v24 = 1;
          sub_1003E4BC0();
        }
      }
    }

    if (*(a1 + 112) == 1 && *a2 - *(a1 + 72) >= 120.0)
    {
      *(a1 + 112) = 0;
      sub_1003A8984(a1 + 168);
      *(a1 + 424) = 0;
    }

    v14 = *(a1 + 40);
    if (v14 >= 6)
    {
      do
      {
        ++*(a1 + 32);
        *(a1 + 40) = v14 - 1;
        sub_1003E4C60(a1, 1);
        v14 = *(a1 + 40);
      }

      while (v14 > 5);
    }
  }
}

void sub_1003E31F4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 42;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 85;
  }

  *(a1 + 32) = v6;
LABEL_8:
  sub_1001B3D00((a1 + 48));
  if (*(a1 + 112) == 1)
  {
    *(a1 + 112) = 0;
  }

  sub_1003A8984(a1 + 168);
  *(a1 + 424) = 0;
  sub_10002074C(a1 + 120, *(a1 + 128));
  *(a1 + 120) = a1 + 128;
  *(a1 + 128) = 0;
  v8 = *(a1 + 152);
  v7 = (a1 + 152);
  *(v7 - 2) = 0;
  sub_10002074C((v7 - 1), v8);
  *v7 = 0;
  v7[1] = 0;
  *(v7 - 1) = v7;
}

__n128 sub_1003E32C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 85 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_1003E49EC(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x55)) + 48 * (v8 % 0x55);
  result = *a2;
  v11 = *(a2 + 32);
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 32) = v11;
  *v9 = result;
  ++*(a1 + 40);
  return result;
}

void *sub_1003E3374@<X0>(void *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = result[5];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = result[1];
  v5 = result[4];
  v6 = *(v4 + 8 * (v5 / 0x55)) + 48 * (v5 % 0x55);
  if (*v6 > a3)
  {
    goto LABEL_4;
  }

  v7 = v3 - 1;
  if (*(*(v4 + 8 * ((v5 + v3 - 1) / 0x55)) + 48 * ((v5 + v3 - 1) % 0x55)) < a3)
  {
    goto LABEL_4;
  }

  if (v3 != 1)
  {
    v9 = v5 - 1;
    while (v7)
    {
      v10 = *(v4 + 8 * ((v9 + 2) / 0x55)) + 48 * ((v9 + 2) % 0x55);
      v11 = *v10;
      ++v9;
      --v7;
      if (*v10 >= a3)
      {
        v12 = *(v4 + 8 * (v9 / 0x55)) + 48 * (v9 % 0x55);
        v13 = *v12;
        if (*v12 > a3)
        {
          sub_1004CBD38();
        }

        if (v11 < a3)
        {
          sub_1004CBD0C();
        }

        v14 = v11 - v13;
        if (v14 != 0.0)
        {
          v15 = *(v12 + 24);
          v16 = (a3 - v13) / v14;
          v17 = *(v10 + 24) - v15;
          *a2 = a3;
          *(a2 + 8) = vmlaq_n_f64(*(v12 + 8), vsubq_f64(*(v10 + 8), *(v12 + 8)), v16);
          *(a2 + 24) = v15 + v17 * v16;
          *(a2 + 32) = 0;
          *(a2 + 40) = 0;
          goto LABEL_16;
        }

        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

  if (*v6 != a3)
  {
LABEL_4:
    *a2 = 0;
    *(a2 + 48) = 0;
    return result;
  }

  v8 = *(v6 + 16);
  *a2 = *v6;
  *(a2 + 16) = v8;
  *(a2 + 32) = *(v6 + 32);
LABEL_16:
  *(a2 + 48) = 1;
  return result;
}

void sub_1003E34FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 424))
  {
    sub_1003A7928(a1 + 168, a2);
    sub_1003A8988((a1 + 168), &v6);
    if ((v7[24] & 1) == 0)
    {
      sub_1004CBD64();
    }

    v3 = *v7;
    *(a1 + 72) = v6;
    *(a1 + 88) = v3;
    *(a1 + 97) = *&v7[9];
  }

  else
  {
    sub_1003E3924(a1, &v6);
    if (v7[24] == 1)
    {
      v4 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        v9 = *(&v6 + 1);
        v10 = 2048;
        v11 = *v7;
        v12 = 2048;
        v13 = *&v7[8];
        v14 = 2048;
        v15 = *&v7[16];
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#loc-vca,initial alignment obtained, rotation %.3f, translation x: %.1f, y: %.1f, z: %.1f", buf, 0x2Au);
      }

      v5 = *v7;
      *(a1 + 72) = v6;
      *(a1 + 88) = v5;
      *(a1 + 97) = *&v7[9];
      sub_1003A773C(a1 + 168, &v6);
      *(a1 + 424) = 1;
    }
  }
}

void sub_1003E364C(void *a1, double *a2)
{
  v5 = *a2;
  v2 = *(a2 + 1);
  v6 = *a2;
  v7[0] = v2;
  v7[1] = *(a2 + 2);
  LOBYTE(v8) = 0;
  v10 = 0;
  sub_1003E3374(a1, v3, v5);
  if (v4 == 1)
  {
    v8 = v3[0];
    v9[0] = v3[1];
    v9[1] = v3[2];
    v10 = v4;
  }

  operator new();
}

__n128 sub_1003E38AC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  *a2 = *(a1 + 72);
  *(a2 + 16) = v2;
  result = *(a1 + 104);
  *(a2 + 32) = result;
  return result;
}

void *sub_1003E38C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[5];
  if (v2)
  {
    v2 = (*(result[1] + 8 * ((v2 + result[4] - 1) / 0x55)) + 48 * ((v2 + result[4] - 1) % 0x55));
    v3 = v2[1];
    *a2 = *v2;
    *(a2 + 16) = v3;
    *(a2 + 32) = v2[2];
    LOBYTE(v2) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 48) = v2;
  return result;
}

void sub_1003E3924(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + 6;
  v4 = a1[7];
  if (v4 == a1 + 6)
  {
    goto LABEL_36;
  }

  v5 = 0;
  v6 = a1[7];
  do
  {
    if (*(v6 + 120) == 1 && *(v6 + 64) == 1 && *(v6 + 56) < 2.0)
    {
      ++v5;
    }

    v6 = *(v6 + 8);
  }

  while (v6 != v3);
  if (v5 <= 9)
  {
    goto LABEL_36;
  }

  if (v5 >= 0x3D)
  {
    sub_1004CBE00();
  }

  if (!sub_1003E3E20(a1))
  {
LABEL_36:
    *a2 = 0;
    *(a2 + 40) = 0;
    return;
  }

  v7 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v8 = -1.0;
  v47 = 0;
  v48 = 0;
  v9 = 0.0;
  v49 = 0;
  do
  {
    if ((*(v4 + 120) & 1) == 0)
    {
      break;
    }

    if ((*(v4 + 64) & 1) == 0)
    {
      __assert_rtn("_estimateTransformation", "VIOCoordinateAligner.mm", 494, "it->abs_pos.uncertainty.has_value()");
    }

    if (*(v4 + 56) < 2.0)
    {
      v44 = *(v4 + 32);
      sub_10017158C(&v50, &v44);
      v35 = 0uLL;
      if ((*(v4 + 120) & 1) == 0 || (v35 = *(v4 + 80), sub_10017158C(&v47, &v35), *(v4 + 120) != 1))
      {
        sub_1000195BC();
      }

      v9 = v9 + *(v4 + 48) - *(v4 + 96);
      v8 = *(v4 + 16);
      ++v7;
    }

    v4 = *(v4 + 8);
  }

  while (v4 != v3);
  if (v7)
  {
    sub_1003E3FAC(&v50, &v47, &v44);
    if (v46)
    {
      v41 = 0;
      v42 = 0;
      v43 = 0;
      __p = 0;
      v39 = 0;
      v40 = 0;
      v12 = v50;
      v11 = v51;
      if (v51 != v50)
      {
        v13 = __sincos_stret(*&v44);
        v14 = 0;
        v15 = 0;
        v16 = *(&v44 + 1);
        v17 = v45;
        do
        {
          v35 = *&v12[v14];
          *buf = *(v47 + v14);
          v18 = v16 + *&buf[8] * -v13.__sinval + v13.__cosval * *buf - *&v35;
          v19 = v13.__cosval * *&buf[8] + v13.__sinval * *buf + v17 - *(&v35 + 1);
          if (sqrt(v19 * v19 + v18 * v18) < 0.75)
          {
            sub_10017158C(&v41, &v35);
            sub_10017158C(&__p, buf);
            v12 = v50;
            v11 = v51;
          }

          ++v15;
          v14 += 16;
        }

        while (v15 < (v11 - v12) >> 4);
      }

      sub_1003E41B8(v10, &v41, &__p);
      if (v37 == 1)
      {
        v20 = v50;
        v21 = (v51 - v50) >> 4;
        if (v51 == v50)
        {
          v24 = 0;
        }

        else
        {
          v22 = v47;
          v23 = __sincos_stret(*&v35);
          v24 = 0;
          if (v21 <= 1)
          {
            v25 = 1;
          }

          else
          {
            v25 = v21;
          }

          v26 = (v22 + 8);
          v27 = (v20 + 8);
          do
          {
            v28 = *(v26 - 1);
            v29 = *(&v35 + 1) + *v26 * -v23.__sinval + v23.__cosval * v28 - *(v27 - 1);
            v30 = v36 + *v26 * v23.__cosval + v23.__sinval * v28 - *v27;
            if (sqrt(v30 * v30 + v29 * v29) < 0.75)
            {
              ++v24;
            }

            v26 += 2;
            v27 += 2;
            --v25;
          }

          while (v25);
        }

        if (v24 / v21 >= 0.9)
        {
          v34 = v36;
          *a2 = v8;
          *(a2 + 8) = v35;
          *(a2 + 24) = v34;
          *(a2 + 32) = v9 / v7;
          v33 = 1;
          goto LABEL_47;
        }

        v32 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          *&buf[4] = v24 / v21;
          *&buf[12] = 1024;
          *&buf[14] = v24;
          v54 = 2048;
          v55 = (v51 - v50) >> 4;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#loc-vca,inlier ratio %.2f, %d inliers out of %zu", buf, 0x1Cu);
        }
      }

      v33 = 0;
      *a2 = 0;
LABEL_47:
      *(a2 + 40) = v33;
      if (__p)
      {
        v39 = __p;
        operator delete(__p);
      }

      if (v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      goto LABEL_51;
    }
  }

  else
  {
    v31 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CBDBC(v31);
    }
  }

  *a2 = 0;
  *(a2 + 40) = 0;
LABEL_51:
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }
}

void sub_1003E3DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1003E3E20(void *a1)
{
  v1 = a1[17];
  if (v1)
  {
    v2 = a1 + 16;
    v3 = a1[16];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *(v3 + 8);
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (v5);
    }

    v6 = *(a1[15] + 32);
    v7 = *(v4 + 32);
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  if (!a1[20])
  {
    return 0;
  }

  v10 = a1[19];
  v8 = a1 + 19;
  v9 = v10;
  if (v10)
  {
    do
    {
      v11 = v9;
      v9 = *(v9 + 8);
    }

    while (v9);
  }

  else
  {
    v12 = v8;
    do
    {
      v11 = v12[2];
      v5 = *v11 == v12;
      v12 = v11;
    }

    while (v5);
  }

  return v1 && sqrt((*(v11 + 32) - *(*(v8 - 1) + 32)) * (*(v11 + 32) - *(*(v8 - 1) + 32)) + (v7 - v6) * (v7 - v6)) > 5.0;
}

double sub_1003E3EE4(uint64_t a1, double *a2, double *a3, double *a4, double *a5)
{
  v5 = atan2((*a3 - *a2) * (a5[1] - a4[1]) - (a3[1] - a2[1]) * (*a5 - *a4), (a3[1] - a2[1]) * (a5[1] - a4[1]) + (*a5 - *a4) * (*a3 - *a2));
  __sincos_stret(v5);
  return v5;
}

void sub_1003E3FAC(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v5 = a1[1] - *a1;
  if (v5 != a2[1] - *a2)
  {
    sub_1004CBE2C();
  }

  v6 = v5 >> 4;
  if ((v5 >> 4) < 0xA)
  {
    sub_1004CBE84();
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v39 = 0;
  v13 = 0.0;
  do
  {
    v14 = 11;
    while (--v14)
    {
      v15 = rand() % v6;
      v16 = rand();
      v17 = v16 % v6;
      v18 = *a2;
      v19 = (*a2 + 16 * v15);
      v20 = (*a2 + 16 * v17);
      if (sqrt((v19[1] - v20[1]) * (v19[1] - v20[1]) + (*v19 - *v20) * (*v19 - *v20)) >= 1.5)
      {
        v21 = *a1;
        v22 = sub_1003E3EE4(v16, v19, v20, (*a1 + 16 * v15), (*a1 + 16 * v17));
        v24 = v23;
        v26 = v25;
        v27 = __sincos_stret(v22);
        v28 = 0;
        v29 = (v21 + 8);
        v30 = (v18 + 8);
        v31 = v6;
        do
        {
          v32 = *(v30 - 1);
          v33 = v24 + *v30 * -v27.__sinval + v27.__cosval * v32 - *(v29 - 1);
          v34 = v26 + v27.__cosval * *v30 + v27.__sinval * v32 - *v29;
          if (sqrt(v34 * v34 + v33 * v33) < 0.75)
          {
            ++v28;
          }

          v29 += 2;
          v30 += 2;
          --v31;
        }

        while (v31);
        if ((v12 & 1) == 0)
        {
          v12 = 1;
        }

        if ((v12 & 1) == 0)
        {
          sub_1004CBE58();
        }

        ++v10;
        if (v28 > v11)
        {
          v39 = v12;
          v3 = v26;
          v4 = v24;
          v13 = v22;
          v11 = v28;
        }

        break;
      }
    }

    if (v10 > 49)
    {
      break;
    }
  }

  while (v9++ < 0x3B);
  if (v10 == 50)
  {
    v36 = a3;
    *a3 = v13;
    *(a3 + 1) = v4;
    *(a3 + 2) = v3;
    v37 = v39;
  }

  else
  {
    v37 = 0;
    v36 = a3;
    *a3 = 0;
  }

  *(v36 + 24) = v37;
}

void sub_1003E41B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __chkstk_darwin(a1, a2, a3);
  v6 = v5;
  v7 = v3[1] - *v3;
  if (v7 != v4[1] - *v4)
  {
    sub_1004CBEB0();
  }

  v8 = v7 >> 4;
  if ((v7 >> 4) > 9)
  {
    v9 = v4;
    v10 = v3;
    v85 = 0x3C00000002;
    v83 = off_1009A9FD8;
    v84 = xmmword_100571070;
    v86 = &v87;
    sub_1003A8C00(&v83, 2, 60);
    sub_1003A8C50(&v83, 0.0);
    v80 = 0x3C00000002;
    v79 = xmmword_100571070;
    v78 = off_1009A9FD8;
    v81 = &v82;
    sub_1003A8C00(&v78, 2, 60);
    sub_1003A8C50(&v78, 0.0);
    v75 = 0x100000002;
    v74 = xmmword_10056F230;
    v73 = off_1009A9730;
    v76 = &v77;
    sub_1003A8C00(&v73, 2, 1);
    sub_1003A8C50(&v73, 0.0);
    v70 = 0x100000002;
    v69 = xmmword_10056F230;
    v68 = off_1009A9730;
    v71 = &v72;
    sub_1003A8C00(&v68, 2, 1);
    sub_1003A8C50(&v68, 0.0);
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(*v10 + v11);
      *sub_1003A8DB0(&v83, 0, v12) = v13;
      v14 = *(*v10 + v11 + 8);
      *sub_1003A8DB0(&v83, 1, v12) = v14;
      v15 = *(*v10 + v11);
      v16 = sub_1003A8DB0(&v73, 0, 0);
      *v16 = v15 + *v16;
      v17 = *(*v10 + v11 + 8);
      v18 = sub_1003A8DB0(&v73, 1, 0);
      *v18 = v17 + *v18;
      v19 = *(*v9 + v11);
      *sub_1003A8DB0(&v78, 0, v12) = v19;
      v20 = *(*v9 + v11 + 8);
      *sub_1003A8DB0(&v78, 1, v12) = v20;
      v21 = *(*v9 + v11);
      v22 = sub_1003A8DB0(&v68, 0, 0);
      *v22 = v21 + *v22;
      v23 = *(*v9 + v11 + 8);
      v24 = sub_1003A8DB0(&v68, 1, 0);
      *v24 = v23 + *v24;
      ++v12;
      v11 += 16;
    }

    while (v8 != v12);
    v25 = *sub_1003A8DB0(&v73, 0, 0);
    *sub_1003A8DB0(&v73, 0, 0) = v25 / v8;
    v26 = *sub_1003A8DB0(&v73, 1, 0);
    *sub_1003A8DB0(&v73, 1, 0) = v26 / v8;
    v27 = *sub_1003A8DB0(&v68, 0, 0);
    *sub_1003A8DB0(&v68, 0, 0) = v27 / v8;
    v28 = *sub_1003A8DB0(&v68, 1, 0);
    v29 = 0;
    *sub_1003A8DB0(&v68, 1, 0) = v28 / v8;
    do
    {
      v30 = *sub_1003A8DB0(&v83, 0, v29);
      v31 = *sub_1003A8DB0(&v73, 0, 0);
      *sub_1003A8DB0(&v83, 0, v29) = v30 - v31;
      v32 = *sub_1003A8DB0(&v83, 1, v29);
      v33 = *sub_1003A8DB0(&v73, 1, 0);
      *sub_1003A8DB0(&v83, 1, v29) = v32 - v33;
      v34 = *sub_1003A8DB0(&v78, 0, v29);
      v35 = *sub_1003A8DB0(&v68, 0, 0);
      *sub_1003A8DB0(&v78, 0, v29) = v34 - v35;
      v36 = *sub_1003A8DB0(&v78, 1, v29);
      v37 = *sub_1003A8DB0(&v68, 1, 0);
      *sub_1003A8DB0(&v78, 1, v29++) = v36 - v37;
    }

    while (v8 != v29);
    sub_1003E4D4C(&v88, DWORD1(v84), v84);
    sub_1003A9464(&v83, &v88);
    v65 = 0x200000002;
    v64 = xmmword_10056F250;
    v63 = off_1009A97C0;
    v66 = &v67;
    sub_1003A90A8(&v78, &v88, &v63);
    v60 = 0x200000002;
    v59 = xmmword_10056F250;
    v58 = off_1009A97C0;
    v61 = &v62;
    v55 = 0x200000002;
    v54 = xmmword_10056F250;
    v53 = off_1009A97C0;
    v56 = &v57;
    v50 = 0x200000002;
    v48 = off_1009A97C0;
    v49 = xmmword_10056F250;
    v51 = &v52;
    sub_1003C106C(&v93, v64, DWORD1(v64));
    v90 = 0x100000134;
    v89 = xmmword_10056EEA0;
    v88 = off_1009A9168;
    v91 = v92;
    sub_1003E4EA4(&v63, &v93, &v88, &v58, &v53, &v48);
    sub_1003C106C(&v93, DWORD1(v59), v59);
    sub_1003A9464(&v58, &v93);
    v90 = 0x200000002;
    v89 = xmmword_10056F250;
    v88 = off_1009A97C0;
    v91 = v92;
    sub_1003A90A8(&v48, &v93, &v88);
    v38 = *sub_1003A8DB0(&v88, 1, 0);
    v39 = sub_1003A8DB0(&v88, 0, 0);
    v40 = atan2(v38, *v39);
    v45 = 0x100000002;
    v43 = off_1009A9730;
    v44 = xmmword_10056F230;
    v46 = &v47;
    sub_1003A90A8(&v88, &v68, &v43);
    v95 = 0x100000002;
    v93 = off_1009A9730;
    v94 = xmmword_10056F230;
    v96 = &v97;
    sub_1003A920C(&v73, &v43, &v93);
    v41 = sub_1002EB6B8(&v93, 0, 0);
    v42 = sub_1002EB6B8(&v93, 1, 0);
    *v6 = v40;
    *(v6 + 8) = v41;
    *(v6 + 16) = v42;
    *(v6 + 24) = 1;
  }

  else
  {
    *v6 = 0;
    *(v6 + 24) = 0;
  }
}

void *sub_1003E49EC(void *a1)
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
    sub_10016F098(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10016EC70(a1, &v10);
}

void sub_1003E4B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003E4C60(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x55)
  {
    a2 = 1;
  }

  if (v2 < 0xAA)
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
    *(a1 + 32) -= 85;
  }

  return v4 ^ 1u;
}

uint64_t sub_1003E4D4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x20000003CLL;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009AA020;
  if (a2 > 0x3C)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 3)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

_DWORD *sub_1003E4EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 12);
  if (v7 <= v8)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = *(a1 + 12);
  }

  if (v7 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (a1 == a2)
  {
    sub_1004CC354();
  }

  if (a1 == a3)
  {
    sub_1004CC328();
  }

  if (a1 == a4)
  {
    sub_1004CC2FC();
  }

  if (a1 == a5)
  {
    sub_1004CC2D0();
  }

  if (a1 == a6)
  {
    sub_1004CC2A4();
  }

  if (a2 == a3)
  {
    sub_1004CC278();
  }

  if (a2 == a4)
  {
    sub_1004CC24C();
  }

  if (a2 == a5)
  {
    sub_1004CC220();
  }

  if (a2 == a6)
  {
    sub_1004CC1F4();
  }

  if (a3 == a4)
  {
    sub_1004CC1C8();
  }

  if (a3 == a5)
  {
    sub_1004CC19C();
  }

  if (a3 == a6)
  {
    sub_1004CC170();
  }

  if (a4 == a5)
  {
    sub_1004CC144();
  }

  if (a4 == a6)
  {
    sub_1004CC118();
  }

  if (a5 == a6)
  {
    sub_1004CC0EC();
  }

  v15 = *(a3 + 28) * *(a3 + 24);
  if (!v15)
  {
    sub_1004CC0C0();
  }

  if (v15 < 3 * v10 + v9)
  {
    sub_1004CC094();
  }

  if (v15 < 5 * v10)
  {
    sub_1004CC068();
  }

  if (*(a2 + 24) < v8)
  {
    sub_1004CC03C();
  }

  if (*(a2 + 28) < v7)
  {
    sub_1004CC010();
  }

  if (*(a4 + 24) < v8)
  {
    sub_1004CBFE4();
  }

  if (*(a4 + 28) < v8)
  {
    sub_1004CBFB8();
  }

  if (*(a5 + 24) < v8)
  {
    sub_1004CBF8C();
  }

  if (*(a5 + 28) < v7)
  {
    sub_1004CBF60();
  }

  if (*(a6 + 24) < v7)
  {
    sub_1004CBF34();
  }

  if (*(a6 + 28) < v7)
  {
    sub_1004CBF08();
  }

  sub_1003A8CFC(a2, a1);
  v16 = *(a2 + 32);
  v17 = *(a5 + 32);
  v18 = *(a4 + 32);
  v19 = *(a6 + 32);
  v20 = *(a3 + 32);
  v30 = *(a2 + 8);
  v29 = *(a2 + 12);
  v21 = dgesvd_NEWLAPACK();
  if (v15 < **(a3 + 32) && cnprint::CNPrinter::GetLogLevel(v21) <= 1)
  {
    cnprint::CNPrinter::Print();
  }

  sub_1003A8C00(a3, *(a3 + 24), *(a3 + 28));
  sub_1003A8C00(a4, v8, v8);
  sub_1003A8C00(a5, v8, v7);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v23 = *(*(a5 + 32) + 8 * i);
      *sub_1003A8DB0(a5, i, i) = v23;
    }
  }

  if (v7)
  {
    v24 = 0;
    do
    {
      v25 = v24;
      if (v8 < v24)
      {
        v24 = v8;
      }

      if (v24)
      {
        for (j = 0; j != v24; ++j)
        {
          *sub_1003A8DB0(a5, j, v25) = 0;
        }
      }

      v24 = v25 + 1;
      v27 = v25 + 1;
      if (v25 + 1 < v8)
      {
        do
        {
          *sub_1003A8DB0(a5, v27++, v25) = 0;
        }

        while (v8 != v27);
      }
    }

    while (v24 != v7);
  }

  sub_1003A8C00(a6, v7, v7);
  return sub_1003E5278(a6);
}

_DWORD *sub_1003E5278(_DWORD *a1)
{
  if (a1[6] < a1[3])
  {
    sub_1004CC3AC();
  }

  if (a1[7] < a1[2])
  {
    sub_1004CC380();
  }

  (*(*a1 + 24))(a1);
  v3 = a1[2];
  v2 = a1[3];

  return sub_1003A8C00(a1, v2, v3);
}

uint64_t sub_1003E5300(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = xmmword_1005710D0;
  *(a1 + 112) = xmmword_1005710E0;
  *(a1 + 128) = xmmword_1005710F0;
  *(a1 + 144) = 0x3FD3333333333333;
  *(a1 + 152) = 257;
  *(a1 + 160) = xmmword_100571100;
  *(a1 + 176) = xmmword_100571110;
  *(a1 + 192) = 0;
  v3 = 1;
  *(a1 + 200) = 1;
  *(a1 + 208) = xmmword_100571120;
  *(a1 + 224) = xmmword_100571130;
  *(a1 + 240) = xmmword_100571140;
  *(a1 + 256) = xmmword_100571150;
  *(a1 + 272) = xmmword_100571160;
  *(a1 + 288) = xmmword_100571170;
  *(a1 + 304) = xmmword_100571180;
  *(a1 + 320) = xmmword_100571190;
  *(a1 + 336) = 0x4008000000000000;
  *(a1 + 344) = 1;
  *(a1 + 346) = 1;
  *(a1 + 352) = 0x4024000000000000;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = xmmword_1005711A0;
  *(a1 + 392) = 0x403E000000000000;
  *(a1 + 400) = 1;
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 424) = a2[1];
  *(a1 + 440) = v5;
  *(a1 + 408) = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  *(a1 + 504) = *(a2 + 12);
  *(a1 + 472) = v7;
  *(a1 + 488) = v8;
  *(a1 + 456) = v6;
  *(a1 + 512) = 0;
  *(a1 + 688) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 720) = 0;
  *(a1 + 848) = 0;
  *(a1 + 864) = 0;
  *(a1 + 992) = 0;
  v9 = 5489;
  v10 = 253;
  *(a1 + 1008) = 5489;
  do
  {
    v11 = 1812433253 * (v9 ^ (v9 >> 30));
    v9 = v11 + v3;
    *(a1 + 4 * v10) = v10 + v11 - 252;
    ++v3;
    ++v10;
  }

  while (v10 != 876);
  *(a1 + 3528) = 0;
  *(a1 + 3536) = 0;
  *(a1 + 3504) = 0u;
  *(a1 + 3520) = 0;
  *(a1 + 3544) = 0xBFF0000000000000;
  *(a1 + 3552) = 0;
  *(a1 + 3560) = 0;
  *(a1 + 3568) = 0;
  *(a1 + 3576) = 0;
  *(a1 + 3584) = 0;
  *(a1 + 3592) = 0;
  *(a1 + 3600) = 0;
  *(a1 + 3608) = 0;
  *(a1 + 3616) = xmmword_1005711B0;
  *(a1 + 3632) = 2;
  *(a1 + 3640) = 0;
  *(a1 + 3648) = 0;
  *(a1 + 3704) = 0;
  *(a1 + 3656) = 0u;
  *(a1 + 3672) = 0u;
  *(a1 + 3688) = 0u;
  *(a1 + 3712) = 0x3FF0000000000000;
  *(a1 + 3720) = 0;
  *(a1 + 3728) = 0;
  *(a1 + 3736) = 0;
  *(a1 + 3744) = 0;
  *(a1 + 3752) = 0;
  *(a1 + 3760) = 0;
  *(a1 + 3768) = 0;
  *(a1 + 3928) = 0;
  *(a1 + 3936) = 0;
  *(a1 + 3944) = 0;
  *(a1 + 3952) = 0;
  *(a1 + 3960) = 0;
  *(a1 + 3968) = xmmword_1005711C0;
  *(a1 + 4096) = 0;
  *(a1 + 4104) = 0;
  *(a1 + 3984) = 0u;
  *(a1 + 4000) = 0u;
  *(a1 + 4016) = 0u;
  *(a1 + 4032) = 0u;
  *(a1 + 4048) = 0u;
  *(a1 + 4064) = 0u;
  *(a1 + 4073) = 0u;
  *(a1 + 4112) = 0x4014000000000000;
  *(a1 + 4120) = 0;
  *(a1 + 4128) = 0;
  *(a1 + 4136) = 0;
  *(a1 + 4144) = 0;
  *(a1 + 4224) = 0;
  *(a1 + 4232) = 0;
  *(a1 + 4312) = 0;
  *(a1 + 4376) = 0;
  *(a1 + 4408) = 0;
  *(a1 + 4368) = 0;
  *(a1 + 4320) = 0u;
  *(a1 + 4336) = 0u;
  *(a1 + 4352) = 0u;
  *(a1 + 4416) = xmmword_10056F8D0;
  *(a1 + 4440) = 0;
  *(a1 + 4448) = 0;
  *(a1 + 4456) = 0u;
  *(a1 + 4472) = 0u;
  *(a1 + 4488) = 0u;
  *(a1 + 112) = *(a2 + 1);
  *(a1 + 136) = *(a2 + 72);
  *(a1 + 384) = *(a2 + 6);
  if ((*(a2 + 88) & 1) == 0)
  {
    *(a1 + 296) = 0x3FECCCCCCCCCCCCDLL;
  }

  v12 = 1;
  LODWORD(__src[0]) = 1;
  for (i = 1; i != 624; ++i)
  {
    v12 = i + 1812433253 * (v12 ^ (v12 >> 30));
    *(__src + i) = v12;
  }

  __src[312] = 0;
  memcpy((a1 + 1008), __src, 0x9C8uLL);
  sub_1003E5668(a1);
  return a1;
}

uint64_t sub_1003E5668(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,particle filter reinitialized", v20, 2u);
  }

  if (*(a1 + 688) == 1)
  {
    *(a1 + 688) = 0;
  }

  if (*(a1 + 24) == 1)
  {
    v3 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v3;
      operator delete(v3);
    }

    *(a1 + 24) = 0;
  }

  if (*(a1 + 712) == 1)
  {
    *(a1 + 712) = 0;
  }

  if (*(a1 + 848) == 1)
  {
    *(a1 + 848) = 0;
  }

  *(a1 + 3512) = 0;
  *(a1 + 3520) = 0;
  if (*(a1 + 3536) == 1)
  {
    *(a1 + 3536) = 0;
  }

  *(a1 + 3544) = 0xBFF0000000000000;
  *(a1 + 400) = 1;
  *(a1 + 3632) = 2;
  if (*(a1 + 3648) == 1)
  {
    *(a1 + 3648) = 0;
  }

  v4 = *(a1 + 3664);
  v5 = *(a1 + 3672);
  if (v5 == v4)
  {
    v8 = (a1 + 3696);
    v5 = *(a1 + 3664);
  }

  else
  {
    v6 = *(a1 + 3688);
    v7 = &v4[v6 / 0x49];
    v8 = (a1 + 3696);
    v9 = v4[(*(a1 + 3696) + v6) / 0x49] + 56 * ((*(a1 + 3696) + v6) % 0x49);
    if (*v7 + 56 * (v6 % 0x49) != v9)
    {
      v10 = (*v7 + 56 * (v6 % 0x49));
      do
      {
        v11 = *v10;
        v10 += 7;
        (*v11)();
        if (v10 - *v7 == 4088)
        {
          v12 = v7[1];
          ++v7;
          v10 = v12;
        }
      }

      while (v10 != v9);
      v5 = *(a1 + 3672);
      v4 = *(a1 + 3664);
    }
  }

  *v8 = 0;
  v13 = v5 - v4;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v4);
      v4 = (*(a1 + 3664) + 8);
      *(a1 + 3664) = v4;
      v13 = (*(a1 + 3672) - v4) >> 3;
    }

    while (v13 > 2);
  }

  if (v13 == 1)
  {
    v14 = 36;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_32;
    }

    v14 = 73;
  }

  *(a1 + 3688) = v14;
LABEL_32:
  *(a1 + 3704) = 0;
  if (*(a1 + 3744) == 1)
  {
    *(a1 + 3744) = 0;
  }

  if (*(a1 + 3760) == 1)
  {
    *(a1 + 3760) = 0;
  }

  if (*(a1 + 3944) == 1)
  {
    *(a1 + 3944) = 0;
  }

  if (*(a1 + 3960) == 1)
  {
    *(a1 + 3960) = 0;
  }

  if (*(a1 + 4408) == 1)
  {
    *(a1 + 4408) = 0;
  }

  v15 = *(a1 + 4000);
  v16 = *(a1 + 4008);
  *(a1 + 4032) = 0;
  v17 = (v16 - v15) >> 3;
  if (v17 >= 3)
  {
    do
    {
      operator delete(*v15);
      v15 = (*(a1 + 4000) + 8);
      *(a1 + 4000) = v15;
      v17 = (*(a1 + 4008) - v15) >> 3;
    }

    while (v17 > 2);
  }

  if (v17 == 1)
  {
    v18 = 25;
  }

  else
  {
    if (v17 != 2)
    {
      goto LABEL_49;
    }

    v18 = 51;
  }

  *(a1 + 4024) = v18;
LABEL_49:
  *(a1 + 4368) = 0;
  *(a1 + 3616) = xmmword_1005711B0;
  *(a1 + 3600) = 0;
  memset(v20, 0, sizeof(v20));
  sub_1003EB744((a1 + 4456), v20);
  result = sub_10004EDBC(v20);
  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 0;
  }

  return result;
}

void sub_1003E59A0(uint64_t a1, double a2, double a3, double a4)
{
  if ((*(a1 + 3704) & 1) == 0 && (*(a1 + 3728) != 1 || a4 - *(a1 + 3720) > 0.5))
  {
    v81 = 0x100000002;
    v80 = xmmword_10056F230;
    v79 = off_1009A9730;
    v82 = &v83;
    sub_1003A8C00(&v79, 2, 1);
    sub_1003A8C50(&v79, 0.0);
    *sub_1003AFDBC(&v79, 1u) = a2;
    *sub_1003AFDBC(&v79, 0) = a3;
    sub_1003E6194((a1 + 3656), &v79);
    *(a1 + 3720) = a4;
    *(a1 + 3728) = 1;
    v8 = *(a1 + 3696);
    if (v8 + v8 > 100.0)
    {
      sub_1003E624C((a1 + 3656));
      v8 = *(a1 + 3696);
    }

    v76 = 0;
    v77 = 0;
    v78 = 0;
    sub_1003BB4E4(&v76, v8);
    v73 = 0x100000002;
    v72 = xmmword_10056F230;
    v71 = off_1009A9730;
    v74 = &v75;
    v9 = *(a1 + 3664);
    if (*(a1 + 3672) != v9)
    {
      v10 = *(a1 + 3688);
      v11 = *(v9 + 8 * (v10 / 0x49)) + 56 * (v10 % 0x49);
      v12 = *(v9 + 8 * ((*(a1 + 3696) + v10) / 0x49)) + 56 * ((*(a1 + 3696) + v10) % 0x49);
      if (v11 != v12)
      {
        v13 = (v9 + 8 * (v10 / 0x49));
        do
        {
          v14 = sub_1002EB67C(v11, 0);
          *sub_1003AFDBC(&v71, 0) = v14;
          v15 = sub_1002EB67C(v11, 1u);
          *sub_1003AFDBC(&v71, 1u) = v15;
          v16 = v77;
          if (v77 >= v78)
          {
            v17 = sub_1003C0E70(&v76, &v71);
          }

          else
          {
            sub_1003C0C14(v77, &v71);
            v17 = v16 + 56;
          }

          v77 = v17;
          v11 += 56;
          if (v11 - *v13 == 4088)
          {
            v18 = v13[1];
            ++v13;
            v11 = v18;
          }
        }

        while (v11 != v12);
      }
    }

    v68 = 0x100000002;
    v67 = xmmword_10056F230;
    v66 = off_1009A9730;
    v69 = &v70;
    sub_1003A8C00(&v66, 2, 1);
    sub_1003A8C50(&v66, 0.0);
    v19 = *(a1 + 3664);
    if (*(a1 + 3672) != v19)
    {
      v20 = *(a1 + 3688);
      v21 = *(v19 + 8 * (v20 / 0x49)) + 56 * (v20 % 0x49);
      v22 = *(v19 + 8 * ((*(a1 + 3696) + v20) / 0x49)) + 56 * ((*(a1 + 3696) + v20) % 0x49);
      if (v21 != v22)
      {
        v23 = (v19 + 8 * (v20 / 0x49));
        do
        {
          v63 = 0x100000002;
          v61 = off_1009A9730;
          v62 = xmmword_10056F230;
          v64 = v65;
          sub_1003A8EBC(&v66, v21, &v61);
          sub_1003A8CFC(&v66, &v61);
          v21 += 56;
          if (v21 - *v23 == 4088)
          {
            v24 = v23[1];
            ++v23;
            v21 = v24;
          }
        }

        while (v21 != v22);
      }
    }

    v25 = *(a1 + 3696);
    v63 = 0x100000002;
    v62 = xmmword_10056F230;
    v61 = off_1009A9730;
    v64 = v65;
    sub_1003C07A0(&v66, &v61, 1.0 / v25);
    sub_1003A8CFC(&v66, &v61);
    v26 = v76;
    if (v77 != v76)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        v63 = 0x100000002;
        v61 = off_1009A9730;
        v62 = xmmword_10056F230;
        v64 = v65;
        sub_1003A920C(v26 + v27, &v66, &v61);
        sub_1003A8CFC(v76 + v27, &v61);
        ++v28;
        v26 = v76;
        v27 += 56;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((v77 - v76) >> 3) > v28);
    }

    v63 = 0x200000002;
    v62 = xmmword_10056F250;
    v61 = off_1009A97C0;
    v64 = v65;
    sub_1003A8C00(&v61, 2, 2);
    sub_1003A8C50(&v61, 0.0);
    v29 = v76;
    for (i = v77; v29 != i; v29 += 56)
    {
      sub_1003C1194(v50, *(v29 + 12), *(v29 + 8));
      sub_1003A9464(v29, v50);
      v53 = 0x200000002;
      v52 = xmmword_10056F250;
      v51 = off_1009A97C0;
      v54 = v55;
      sub_1003A90A8(v29, v50, &v51);
      v58 = 0x200000002;
      v57 = xmmword_10056F250;
      v56 = off_1009A97C0;
      v59 = v60;
      sub_1003A8EBC(&v61, &v51, &v56);
      sub_1003A8CFC(&v61, &v56);
    }

    v58 = 0x200000002;
    v57 = xmmword_10056F250;
    v56 = off_1009A97C0;
    v59 = v60;
    v53 = 0x200000002;
    v52 = xmmword_10056F250;
    v51 = off_1009A97C0;
    v54 = v55;
    sub_1003BB62C(&v61, &v56, &v51);
    sub_1003C106C(v50, DWORD1(v57), v57);
    sub_1003A9464(&v56, v50);
    v31 = v76;
    v32 = v77;
    if (v76 == v77)
    {
      v40 = 0.0;
      v41 = 0.0;
    }

    else
    {
      v33 = 0.0;
      v34 = 0.0;
      v35 = 0.0;
      v36 = 0.0;
      do
      {
        v47 = 0x100000002;
        v45 = off_1009A9730;
        v46 = xmmword_10056F230;
        v48 = &v49;
        sub_1003A90A8(v50, v31, &v45);
        v37 = sub_1002EB67C(&v45, 0);
        v38 = sub_1002EB67C(&v45, 1u);
        if (v37 < v33)
        {
          v39 = v37;
        }

        else
        {
          v39 = v33;
        }

        if (v37 <= v34)
        {
          v33 = v39;
        }

        else
        {
          v34 = v37;
        }

        if (v38 <= v35)
        {
          if (v38 < v36)
          {
            v36 = v38;
          }
        }

        else
        {
          v35 = v38;
        }

        v31 += 56;
      }

      while (v31 != v32);
      v40 = v34 - v33;
      v41 = v35 - v36;
    }

    if (v41 >= v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = v41;
    }

    v43 = *(a1 + 3712);
    if (v42 >= v43)
    {
      v44 = 0;
      *(a1 + 3704) = 1;
    }

    else
    {
      if (v40 < v41)
      {
        v40 = v41;
      }

      if (v40 < v43)
      {
        goto LABEL_51;
      }

      v44 = 1;
    }

    *(a1 + 3705) = v44;
LABEL_51:
    v61 = &v76;
    sub_1003C0A30(&v61);
  }
}

void sub_1003E611C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void **a48)
{
  a48 = (v48 - 208);
  sub_1003C0A30(&a48);
  _Unwind_Resume(a1);
}

void sub_1003E6194(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 73 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_1003EB960(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x49)) + 56 * (v7 % 0x49);
  }

  sub_1003C0C14(v8, a2);
  ++a1[5];
}

uint64_t sub_1003E624C(int64x2_t *a1)
{
  (**(*(a1->i64[1] + 8 * (a1[2].i64[0] / 0x49uLL)) + 56 * (a1[2].i64[0] % 0x49uLL)))();
  a1[2] = vaddq_s64(a1[2], xmmword_100561EC0);

  return sub_1003EBB34(a1, 1);
}

void sub_1003E6304(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, 0x1B0uLL);
  if ((*(a1 + 848) & 1) == 0)
  {
    sub_1000195BC();
  }

  v3 = *(a1 + 800);
  v10[4] = *(a1 + 784);
  v10[5] = v3;
  v4 = *(a1 + 832);
  v10[6] = *(a1 + 816);
  v10[7] = v4;
  v5 = *(a1 + 736);
  v10[0] = *(a1 + 720);
  v10[1] = v5;
  v6 = *(a1 + 768);
  v10[2] = *(a1 + 752);
  v10[3] = v6;
  sub_1003E63C4(__dst, v10, v8);
  v7 = v9;
  if (!v9)
  {
    v7 = 1;
  }

  v9 = v7;
  v8[8] = 0x4034000000000000;
  sub_1003E65C0(a1, v8);
}

void sub_1003E63C4(uint64_t a1@<X1>, float32x4_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2->i64[0];
  v29 = a2[1];
  v30 = a2[2];
  v27 = a2[4];
  v28 = a2[3];
  v7 = a2[5].i32[0];
  v8 = a2[5].i8[4];
  v9 = a2[5].i8[5];
  *&v10 = sub_1003B3E3C(xmmword_1005713F0);
  v11 = 0;
  v31[0] = v10;
  v31[1] = v12;
  v31[2] = v13;
  v31[3] = v14;
  do
  {
    *(&v32 + v11 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(v31[v11])), v30, *&v31[v11], 1), v28, v31[v11], 2), v27, v31[v11], 3);
    ++v11;
  }

  while (v11 != 4);
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v32.i64[0] = v6;
  v33 = v15;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v7;
  v38 = v8;
  v39 = v9;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  if ((*(a1 + 256) & 1) == 0 || (*(a1 + 240) & 1) == 0 || (v19 = *(a1 + 248), v20 = *(a1 + 24), v46.columns[0] = sub_1003AF418(&v32), v21 = __invert_f2(v46), *a3 = v20, (*(a1 + 240) & 1) == 0))
  {
    sub_1000195BC();
  }

  v22 = __sincos_stret(v19 * 3.14159265 / 180.0);
  v23 = v22.__sinval * v20;
  v24 = v22.__cosval * v20;
  v25 = vmla_n_f32(vmul_n_f32(v21.columns[0], v24), v21.columns[1], v23);
  *(a3 + 8) = *(a1 + 16);
  v26 = a2[4];
  *(a3 + 32) = COERCE_FLOAT(a2[4].i64[1]);
  *(a3 + 16) = vcvtq_f64_f32(*v26.f32);
  *(a3 + 48) = (atan2f(v25.f32[0], v25.f32[1]) * 180.0) / 3.14159265;
  *(a3 + 56) = 1;
  *(a3 + 64) = *(a1 + 368);
  *(a3 + 72) = *(a1 + 376);
}

void sub_1003E65C0(uint64_t a1, uint64_t a2)
{
  sub_1003EC2CC(__p, *(a1 + 32));
  sub_1003E9F88(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *(a1 + 4368) = 0;
  v4 = *(a1 + 176);
  v78[0] = 0.0;
  v78[1] = v4;
  v79 = 0;
  *v76 = *(a1 + 136);
  v77 = 0;
  v74 = xmmword_10056F8D0;
  v75 = 0;
  if (*(a2 + 72) == 1)
  {
    *(&v74 + 1) = *(a2 + 64) * 3.14159265 / 180.0;
    *(a1 + 4368) = 1;
  }

  v5 = *a2;
  if (*a2 >= 10.0)
  {
    if (v5 >= 20.0)
    {
      v8 = 0.65;
      if (v5 >= 30.0)
      {
        if (v5 >= 40.0)
        {
          if (v5 >= 50.0)
          {
            v6 = 7.64;
            v7 = 9.58;
            v8 = 1.08;
          }

          else
          {
            v6 = 2.36;
            v7 = 2.91;
            v8 = 0.85;
          }
        }

        else
        {
          v6 = 2.32;
          v7 = 2.64;
        }
      }

      else
      {
        v6 = 1.13;
        v7 = 1.41;
      }
    }

    else
    {
      v6 = 0.646;
      v7 = 0.76;
      v8 = 0.43;
    }
  }

  else
  {
    v6 = 0.48;
    v7 = 0.57;
    v8 = 0.3;
  }

  v9 = pow(v8 * (v5 - v6) / v7 + 1.0, -1.0 / v8);
  v57 = exp(-v9);
  if (*(a1 + 32) >= 1)
  {
    v10 = 0;
    v11 = 0;
    __y = -v8;
    v55 = v6;
    v53 = v7;
    v54 = v8;
    do
    {
      v12 = sub_10018290C(a1 + 1008);
      v13 = sub_10018290C(a1 + 1008);
      v14 = log(v57 * (((v12 + v13 * 4294967300.0) * 5.42101086e-20 * 6.28318 + 0.0) / 6.28318531));
      v15 = pow(-v14, __y);
      if (*(a2 + 56) == 1)
      {
        v16 = *(a2 + 48) * 3.14159265 / 180.0;
        v17 = sub_1003EBB94(&v74, a1 + 1008, &v74) + v16;
      }

      else
      {
        v18 = sub_10018290C(a1 + 1008);
        v17 = (v18 + sub_10018290C(a1 + 1008) * 4294967300.0) * 5.42101086e-20 * 6.28318 + 0.0;
      }

      v19 = v6 + v7 * (v15 + -1.0) / v8;
      if (v19 >= *a2)
      {
        v19 = *a2;
      }

      v20 = *a2 - v19;
      v21 = sub_1003EBB94(v78, a1 + 1008, v78);
      if (fabs(v21) > v20)
      {
        if (v20 <= 10.0)
        {
          v22 = v20;
        }

        else
        {
          v22 = 10.0;
        }

        v23 = sub_10018290C(a1 + 1008);
        v21 = -(v22 - (v22 + v22) * ((v23 + sub_10018290C(a1 + 1008) * 4294967300.0) * 5.42101086e-20));
      }

      v24 = 0.0;
      v25 = 0.0;
      if (v20 != 0.0)
      {
        v25 = asin(v21 / v20);
      }

      v61 = *(a2 + 16);
      v62 = v21;
      v26 = __sincos_stret(v17);
      v27 = cos(v25);
      v59 = *(a2 + 24);
      v60 = *(a2 + 32);
      v58 = *(a1 + 32);
      v28 = *(a1 + 3632);
      v29 = 0.5;
      if (v28 != 1)
      {
        v29 = 0.0;
      }

      if (v28)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0.9;
      }

      v31 = sub_10018290C(a1 + 1008);
      if ((v31 + sub_10018290C(a1 + 1008) * 4294967300.0) * 5.42101086e-20 <= v30)
      {
        v34 = 0;
      }

      else
      {
        v32 = *(a1 + 208);
        v33 = sub_10018290C(a1 + 1008);
        v24 = v32 + ((v33 + sub_10018290C(a1 + 1008) * 4294967300.0) * 5.42101086e-20 * 6.28318 + 0.0) / 6.28318 * *(a1 + 216);
        v34 = 1;
      }

      v35 = sub_1003EBB94(v76, a1 + 1008, v76);
      v36 = sub_10018290C(a1 + 1008);
      v37 = sub_10018290C(a1 + 1008);
      v38 = sub_10018290C(a1 + 1008);
      v39 = sub_10018290C(a1 + 1008);
      v40 = sub_1003EBB94(v76, a1 + 1008, v76);
      v41 = sub_10018290C(a1 + 1008);
      v42 = sub_10018290C(a1 + 1008);
      if ((*(a1 + 24) & 1) == 0)
      {
        sub_1000195BC();
      }

      v43 = __sincos_stret((v41 + v42 * 4294967300.0) * 5.42101086e-20 * 6.28318 + 0.0);
      v44 = exp(v40);
      v45 = exp(v35);
      v46 = *a1 + v10;
      *v46 = v61 + v26.__cosval * v20 * v27;
      *(v46 + 8) = v62 + v59;
      *(v46 + 16) = v60 + v26.__sinval * v20 * v27;
      *(v46 + 24) = v24 * v43.__cosval;
      *(v46 + 32) = v24 * v43.__sinval;
      *(v46 + 40) = v24;
      *(v46 + 48) = (v36 + v37 * 4294967300.0) * 5.42101086e-20 * 6.28318 + 0.0;
      *(v46 + 56) = (v38 + v39 * 4294967300.0) * 5.42101086e-20 * 6.28318 + 0.0;
      *(v46 + 64) = v45;
      *(v46 + 72) = v44;
      *(v46 + 80) = v34;
      *(v46 + 88) = 1.0 / v58;
      ++v11;
      v10 += 96;
      v8 = v54;
      v6 = v55;
      v7 = v53;
    }

    while (*(a1 + 32) > v11);
    v5 = *a2;
  }

  sub_1003E88A0(a1, __p, v5, *(a2 + 16), *(a2 + 24), *(a2 + 32));
  v47 = *(a1 + 688);
  v48 = v72;
  *(a1 + 640) = v71;
  *(a1 + 656) = v48;
  *(a1 + 672) = v73;
  v49 = v68;
  *(a1 + 576) = v67;
  *(a1 + 592) = v49;
  v50 = v70;
  *(a1 + 608) = v69;
  *(a1 + 624) = v50;
  v51 = v64;
  *(a1 + 512) = *__p;
  *(a1 + 528) = v51;
  v52 = v66;
  *(a1 + 544) = v65;
  *(a1 + 560) = v52;
  if ((v47 & 1) == 0)
  {
    *(a1 + 688) = 1;
  }
}

void sub_1003E6C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003E6C20(uint64_t a1, void *__src)
{
  v4 = a1 + 4096;
  if (*(a1 + 4312) == 1 && *(a1 + 4288) == 1 && *(a1 + 688) == 1 && (*(a1 + 4104) != 1 || *(a1 + 584) <= *(a1 + 296)))
  {
    v5 = *(a1 + 4280);
    __dst[2] = *(a1 + 4264);
    __dst[3] = v5;
    __dst[4] = *(a1 + 4296);
    v6 = *(a1 + 4248);
    __dst[0] = *(a1 + 4232);
    __dst[1] = v6;
    sub_1003E65C0(a1, __dst);
    *(v4 + 272) = 1;
  }

  if (*(__src + 256) == 1 && (*(__src + 376) & 1) != 0)
  {
    if (*(a1 + 848) == 1)
    {
      memcpy(__dst, __src, sizeof(__dst));
      v7 = *(a1 + 800);
      v15[4] = *(a1 + 784);
      v15[5] = v7;
      v8 = *(a1 + 832);
      v15[6] = *(a1 + 816);
      v15[7] = v8;
      v9 = *(a1 + 736);
      v15[0] = *(a1 + 720);
      v15[1] = v9;
      v10 = *(a1 + 768);
      v15[2] = *(a1 + 752);
      v15[3] = v10;
      sub_1003E63C4(__dst, v15, v14);
      v11 = *(v4 + 128);
      v12 = v14[0];
      *(a1 + 4160) = v14[1];
      v13 = v14[3];
      *(a1 + 4176) = v14[2];
      *(a1 + 4192) = v13;
      *(a1 + 4208) = v14[4];
      *(a1 + 4144) = v12;
      if ((v11 & 1) == 0)
      {
        *(v4 + 128) = 1;
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CC3D8();
  }
}

void sub_1003E6DB4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 320) = 0;
  *(a2 + 336) = 0;
  *(a2 + 352) = 0;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  *(a2 + 404) = 0;
  *(a2 + 408) = 0;
  *(a2 + 412) = 0;
  *(a2 + 416) = 0;
  *(a2 + 420) = 0;
  *(a2 + 424) = 0;
  *(a2 + 428) = 0;
  if (*(a1 + 688) != 1 || *(a1 + 848) != 1)
  {
    return;
  }

  *(a2 + 412) = 5;
  *(a2 + 416) = 1;
  if (*(a1 + 3744))
  {
    v4 = *(a1 + 3736);
    if (*(a1 + 712) == 1 && v4 - *(a1 + 704) > *(a1 + 352) + 1.38)
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,PF reset due to timeout calculated from current time during getFilterSolution", buf, 2u);
      }

      sub_1003E5668(a1);
      return;
    }

    v6 = *(a1 + 608);
    if (*(a1 + 3960) == 1)
    {
      v7 = atan2((v4 - *(a1 + 3952)) * 0.65, *(a1 + 584)) * 180.0 / 3.14159265;
      v8 = sqrt(v7 * v7 + v6 * v6);
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        *&buf[4] = v8;
        *&buf[12] = 2048;
        *&buf[14] = v6;
        *&buf[22] = 2048;
        *&buf[24] = fabs(v7);
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#sa_algo_particlefilter,total arrow unc: %f, estimator arrow unc: %f, arrow unc from gap between current time and last motion update: %f", buf, 0x20u);
      }
    }

    else
    {
      v8 = *(a1 + 608);
    }

    *(a2 + 368) = v8;
    *(a2 + 376) = 1;
    v10 = *(a1 + 288);
    if (*(a1 + 4104) == 1)
    {
      v10 = v10 + *(a1 + 4112);
    }

    *(a1 + 4104) = v8 <= v10;
    if (v8 > v10)
    {
      v26 = 0;
    }

    else
    {
      if ((*(a1 + 688) & 1) == 0)
      {
        goto LABEL_59;
      }

      if (*(a1 + 584) > *(a1 + 296))
      {
        if ((*(a1 + 848) & 1) == 0)
        {
          goto LABEL_59;
        }

        v11 = *(a1 + 520);
        v46 = *(a1 + 784);
        v12 = *(a1 + 512);
        *(a2 + 248) = atan2(v11 - v46.f32[2], v12 - v46.f32[0]) * 180.0 / 3.14159265;
        *(a2 + 256) = 1;
        v47 = *&v12;
        v48 = v11;
        v13 = *(a1 + 720);
        v44 = *(a1 + 752);
        v45 = *(a1 + 736);
        v43 = *(a1 + 768);
        v14 = *(a1 + 800);
        v15 = *(a1 + 804);
        v16 = *(a1 + 805);
        *&v17 = sub_1003B3E3C(xmmword_1005713F0);
        v18 = 0;
        v49 = v17;
        v50 = v19;
        v51 = v20;
        v52 = v21;
        do
        {
          *&buf[v18] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, COERCE_FLOAT(*(&v49 + v18))), v44, *(&v49 + v18), 1), v43, *(&v49 + v18), 2), v46, *(&v49 + v18), 3);
          v18 += 16;
        }

        while (v18 != 64);
        v22 = *buf;
        v23 = *&buf[16];
        v24 = v54;
        v25 = v55;
        *buf = v13;
        *&buf[16] = v22;
        v54 = v23;
        v55 = v24;
        v56 = v25;
        v57 = v14;
        v58 = v15;
        v59 = v16;
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v49 = 0uLL;
        LODWORD(v50) = 0;
        sub_1003AD82C(&v47, buf, &v49);
        *(a2 + 248) = (*(&v49 + 1) * 180.0) / 3.14159265;
        *(a2 + 256) = 1;
        goto LABEL_29;
      }

      v26 = 1;
    }

    v27 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 688) & 1) == 0)
      {
        goto LABEL_59;
      }

      v28 = *(a1 + 584);
      v29 = *(a1 + 296);
      *buf = 67109632;
      *&buf[4] = v26;
      *&buf[8] = 2048;
      *&buf[10] = v28;
      *&buf[18] = 2048;
      *&buf[20] = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,solution rejected, %d, %f, %f", buf, 0x1Cu);
    }

LABEL_29:
    if ((*(a1 + 848) & 1) == 0)
    {
      goto LABEL_59;
    }

    *&v30 = COERCE_DOUBLE(sub_1003E73F8(a1, (a1 + 720)));
    if (v31)
    {
      v32 = *&v30;
    }

    else
    {
      if ((*(a1 + 688) & 1) == 0)
      {
        goto LABEL_59;
      }

      v32 = *(a1 + 584);
    }

    if (*(a1 + 848) & 1) != 0 && (*(a1 + 688))
    {
      v33 = *(a1 + 640);
      if (*(a2 + 256) == 1)
      {
        *a2 = 1;
      }

      else if (*(a1 + 3705) == 1)
      {
        *(a2 + 5) = 1;
      }

      else if ((*(a1 + 3704) & 1) == 0)
      {
        *(a2 + 4) = 1;
      }

      v34 = *(a1 + 720);
      v35 = v32;
      v36 = sqrt(v33);
      v37 = *(a1 + 788);
      v38 = *(a1 + 680) - v37;
      if (v38 > 10.0)
      {
        v38 = 10.0;
      }

      if (*(a1 + 616) >= v38 || *(a1 + 3632) == 2)
      {
        goto LABEL_55;
      }

      v39 = *(a1 + 672);
      if (v39 <= 0.95)
      {
        if (v39 >= 0.05)
        {
          goto LABEL_55;
        }

        *(a2 + 280) = 1;
        *(a2 + 288) = *(a1 + 528) - v37;
      }

      else
      {
        v40 = *(a1 + 528) - v37;
        if (v40 <= 2.5)
        {
          if (v40 >= -2.5)
          {
            *(a2 + 280) = 4;
LABEL_55:
            v42 = *(a2 + 240);
            *(a2 + 8) = 0;
            *(a2 + 16) = v34;
            *(a2 + 24) = v35;
            *(a2 + 28) = 1;
            *(a2 + 56) = 0;
            *(a2 + 32) = 0;
            *(a2 + 40) = 0;
            *(a2 + 60) = 0;
            *(a2 + 64) = 0;
            *(a2 + 68) = 0;
            *(a2 + 72) = 0;
            *(a2 + 80) = 0;
            *(a2 + 88) = 0;
            *(a2 + 96) = 0;
            *(a2 + 104) = 0;
            *(a2 + 112) = v36;
            *(a2 + 136) = 0;
            *(a2 + 120) = 1;
            *(a2 + 128) = 0;
            *(a2 + 160) = 0;
            *(a2 + 168) = 0u;
            *(a2 + 184) = 0u;
            *(a2 + 200) = 0u;
            *(a2 + 216) = 0u;
            *(a2 + 232) = 0;
            if ((v42 & 1) == 0)
            {
              *(a2 + 240) = 1;
            }

            return;
          }

          v41 = 3;
        }

        else
        {
          v41 = 2;
        }

        *(a2 + 280) = v41;
        *(a2 + 288) = v40;
      }

      *(a2 + 296) = 1;
      goto LABEL_55;
    }

LABEL_59:
    sub_1000195BC();
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004CC418();
  }
}

uint64_t sub_1003E73F8(uint64_t a1, uint64_t *a2)
{
  v2 = 0.1;
  if (*(a1 + 4448))
  {
    v2 = 0.2;
  }

  if (*(a1 + 24) == 1 && (byte_1009F8550 != 1 || byte_1009F8540 != 1 || *a2 - *&qword_1009F8538 > v2))
  {
    if ((*(a1 + 848) & 1) == 0)
    {
      sub_1000195BC();
    }

    v3 = *a1;
    v4 = *(a1 + 8);
    if (*a1 == v4)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 0.0;
      do
      {
        v5 = v5 + sqrt((v3[1] - COERCE_FLOAT(HIDWORD(*(a1 + 784)))) * (v3[1] - COERCE_FLOAT(HIDWORD(*(a1 + 784)))) + (*v3 - COERCE_FLOAT(*(a1 + 784))) * (*v3 - COERCE_FLOAT(*(a1 + 784))) + (v3[2] - COERCE_FLOAT(*(a1 + 792))) * (v3[2] - COERCE_FLOAT(*(a1 + 792)))) * v3[11];
        v3 += 12;
      }

      while (v3 != v4);
    }

    qword_1009F8548 = *&v5;
    byte_1009F8550 = 1;
    qword_1009F8538 = *a2;
    byte_1009F8540 = 1;
  }

  return qword_1009F8548;
}

BOOL sub_1003E7508(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 4120);
  *(a1 + 4120) = *(a2 + 20);
  v4 = a2[11];
  *(a1 + 4136) = *(a2 + 96);
  *(a1 + 4128) = v4;
  v5 = *(a2 + 20);
  if (v3 != v5)
  {
    if (v5 == 2)
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *a2;
        v17 = 134217984;
        v18 = v10;
        v8 = "#sa_algo_particlefilter,VIO Tracking State changed to Normal at %f s";
        goto LABEL_11;
      }
    }

    else
    {
      if (v5 != 1)
      {
        if (v5)
        {
          return 0;
        }

        v6 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        v7 = *a2;
        v17 = 134217984;
        v18 = v7;
        v8 = "#sa_algo_particlefilter,VIO Tracking State changed to Not Available at %f s";
        goto LABEL_11;
      }

      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *a2;
        v17 = 134217984;
        v18 = v9;
        v8 = "#sa_algo_particlefilter,VIO Tracking State changed to Limited at %f s";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &v17, 0xCu);
      }
    }

LABEL_12:
    v3 = *(a2 + 20);
  }

  if (v3 != 2)
  {
    return 0;
  }

  if (*(a2 + 84) == 1)
  {
    v11 = qword_1009F9820;
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v13 = *a2;
    if (*(a2 + 85))
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    v17 = 134218498;
    v18 = v13;
    v19 = 2080;
    v20 = "YES";
    v21 = 2080;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,VIO reported relocalization event at %f s, MAJOR: %s, MINOR: %s - resetting", &v17, 0x20u);
    return 0;
  }

  if (*(a2 + 85) == 1)
  {
    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *a2;
      v17 = 134217984;
      v18 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,VIO reported MINOR relocalization event at %f s", &v17, 0xCu);
    }
  }

  return 1;
}

void sub_1003E7784(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (*(a1 + 24) != 1 || (*(a1 + 153) & 1) == 0)
  {
    *(a1 + 3752) = a4;
    *(a1 + 3760) = 1;
    return;
  }

  if (*(a1 + 4408) == 1)
  {
    *(a1 + 4408) = 0;
  }

  v10 = *(a1 + 4048);
  v11 = *(a1 + 4056);
  *(a1 + 4080) = 0;
  v12 = (v11 - v10) >> 3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v10);
      v10 = (*(a1 + 4048) + 8);
      *(a1 + 4048) = v10;
      v12 = (*(a1 + 4056) - v10) >> 3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 64;
    goto LABEL_13;
  }

  if (v12 == 2)
  {
    v13 = 128;
LABEL_13:
    *(a1 + 4072) = v13;
  }

  if (*(a1 + 3632) == 2)
  {
    v14 = 1;
    *(a1 + 3988) = 1;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 3984) = v14;
  v15 = qword_1009F9820;
  v16 = a3 / a5;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    *&buf[4] = a5;
    *&buf[12] = 2048;
    *&buf[14] = a2;
    *&buf[22] = 2048;
    *&buf[24] = a3;
    *v26 = 2048;
    *&v26[2] = a2 / a5;
    *&v26[10] = 2048;
    *&v26[12] = a3 / a5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,ingesting peer kinematic data: deltaT: %f, delta Vh1: %f, delta Vh2: %f, accel H1: %f, accel H2: %f ", buf, 0x34u);
  }

  v17 = *(a1 + 232);
  v23[0] = 0.0;
  v23[1] = v17;
  v24 = 0;
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000195BC();
  }

  v18 = *a1;
  v19 = *(a1 + 8);
  while (v18 != v19)
  {
    if (*(a1 + 3632) == 2)
    {
      sub_1003E7AB8(a1, v18, buf, a5, a2 / a5, v16);
LABEL_27:
      v18[2] = *v26;
      v18[3] = *&v26[16];
      v18[4] = v27;
      v18[5] = v28;
      *v18 = *buf;
      v18[1] = *&buf[16];
      goto LABEL_29;
    }

    if (*(v18 + 20))
    {
      if (*(a1 + 3944) != 1)
      {
        goto LABEL_29;
      }

      sub_1003E7C34(a1, v18, buf, a4 - *(a1 + 3936));
      goto LABEL_27;
    }

    v20 = *v18;
    *v18 = v20 + sub_1003EBB94(v23, a1 + 1008, v23);
    v21 = *(v18 + 2);
    *(v18 + 2) = v21 + sub_1003EBB94(v23, a1 + 1008, v23);
LABEL_29:
    v18 += 6;
  }

  v22 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,peer kinematic data ingested", buf, 2u);
  }

  *(a1 + 3936) = a4;
  *(a1 + 3944) = 1;
  *(a1 + 3952) = a4;
  *(a1 + 3960) = 1;
  *(a1 + 3752) = a4;
  *(a1 + 3760) = 1;
  if (*(a1 + 4408) == 1)
  {
    *(a1 + 4408) = 0;
  }
}

double sub_1003E7AB8@<D0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v12 = sqrt(a4 / 0.1);
  v28[1] = a1[31];
  v26[1] = v12 * a1[33];
  v13 = *(a2 + 48);
  *(a3 + 32) = *(a2 + 32);
  *(a3 + 48) = v13;
  v14 = *(a2 + 80);
  *(a3 + 64) = *(a2 + 64);
  *(a3 + 80) = v14;
  v15 = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = v15;
  *&v13 = *(a2 + 16);
  v16 = *a2 + a4 * *(a2 + 24);
  v28[0] = 0.0;
  v29 = 0;
  v26[0] = 0.0;
  v27 = 0;
  *a3 = v16;
  *(a3 + 16) = *&v13 + a4 * *(a2 + 32);
  v17 = sub_1003EBB94(v28, (a1 + 126), v28) + a5;
  v18 = sub_1003EBB94(v28, (a1 + 126), v28) + a6;
  v19 = __sincos_stret(*(a2 + 56));
  v20 = *(a2 + 24) + a4 * (v19.__cosval * v18 - v19.__sinval * v17);
  v21 = *(a2 + 32) + a4 * (v17 * v19.__cosval + v19.__sinval * v18);
  *(a3 + 24) = v20;
  *(a3 + 32) = v21;
  v22 = sqrt(v21 * v21 + v20 * v20);
  if (v22 >= a1[32])
  {
    *(a3 + 24) = v20 / v22;
    *(a3 + 32) = v21 / v22;
  }

  *(a3 + 56) = sub_1003EBB94(v26, (a1 + 126), v26) + *(a3 + 56);
  v23 = v12 * a1[13];
  v30[0] = 0.0;
  v30[1] = v23;
  v31 = 0;
  v24 = *(a3 + 8);
  result = v24 + sub_1003EBB94(v30, (a1 + 126), v30);
  *(a3 + 8) = result;
  return result;
}

uint64_t sub_1003E7C34@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = a1[30];
  v27[0] = 0.0;
  v27[1] = v8;
  v28 = 0;
  v9 = a1[33];
  v25[0] = 0.0;
  v25[1] = v9;
  v26 = 0;
  v24 = 0x200000000;
  v10 = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = v10;
  v11 = *(a2 + 48);
  *(a3 + 32) = *(a2 + 32);
  *(a3 + 48) = v11;
  v12 = *(a2 + 80);
  *(a3 + 64) = *(a2 + 64);
  *(a3 + 80) = v12;
  v13 = *a2;
  v14 = *(a2 + 40) * a4;
  v15 = __sincos_stret(*(a2 + 48));
  *a3 = v13 + v14 * v15.__cosval;
  *(a3 + 16) = *(a2 + 16) + v14 * v15.__sinval;
  v16 = sqrt(a4 / 0.1) * a1[13];
  v29[0] = 0.0;
  v29[1] = v16;
  v30 = 0;
  v17 = *(a3 + 8);
  *(a3 + 8) = v17 + sub_1003EBB94(v29, (a1 + 126), v29);
  v23 = sub_1003EBB94(v27, (a1 + 126), v27);
  v18 = sub_1003EBB94(v25, (a1 + 126), v25);
  v19.f64[0] = v23;
  v19.f64[1] = v18;
  *(a3 + 40) = vaddq_f64(v19, *(a2 + 40));
  v20 = sub_10018290C((a1 + 126));
  result = sub_10018290C((a1 + 126));
  if ((v20 + result * 4294967300.0) * 5.42101086e-20 < a1[34])
  {
    result = sub_10019EC0C(&v24, (a1 + 126), &v24);
    v22 = 0.0;
    if (result <= 2)
    {
      v22 = dbl_1005713D0[result];
    }

    *(a3 + 48) = v22 + *(a2 + 48);
  }

  return result;
}

void sub_1003E7DD0(uint64_t a1, __int128 *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CC458();
  }

  sub_1003FBE08((a1 + 4456), a2);
}

double sub_1003E7E34(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CC494(a2);
    }

    if ((*(a2 + 152) & 1) == 0)
    {
      goto LABEL_8;
    }

    v4 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a2 + 120)), *(a2 + 136));
    *&v5 = sub_1003B3E3C(vextq_s8(v4, v4, 4uLL));
    *(a1 + 736) = v5;
    *(a1 + 752) = v6;
    *(a1 + 768) = v7;
    *(a1 + 832) = 1;
    *(a1 + 836) = 1;
    *(a1 + 824) = 1;
    *(a1 + 828) = 1;
    if ((*(a2 + 16) & 1) == 0)
    {
LABEL_8:
      sub_1000195BC();
    }

    result = *(a2 + 8);
    *(a1 + 720) = result;
  }

  return result;
}

void sub_1003E7EE8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    v3 = (a2 + 80);
    if (*(a2 + 80) == 1 && *(a2 + 96) == 1 && *(a2 + 112) == 1)
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CC50C(a2, v5, v3);
      }

      if ((*(a2 + 112) & 1) == 0)
      {
        goto LABEL_21;
      }

      v6 = *(a2 + 72);
      v7 = *(a2 + 104);
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CC59C();
      }

      v8 = *(a1 + 248);
      v19[0] = 0.0;
      v19[1] = v8;
      v20 = 0;
      if ((*(a1 + 24) & 1) == 0)
      {
LABEL_21:
        sub_1000195BC();
      }

      v9 = *(a1 + 8);
      if (*a1 != v9)
      {
        v10 = v6 / 0.1;
        v11 = (*a1 + 32);
        v12 = v7 / 0.1;
        do
        {
          if (*(a1 + 80) == 1 && (*(a1 + 88) & 1) == 0)
          {
            v13 = *(a1 + 56);
            v14 = *v11;
            *(v11 - 1) = *(v11 - 1) - *v13;
            *v11 = v14 - v13[2];
          }

          v15 = v11 - 4;
          v16 = *(v11 - 2);
          *(v11 - 4) = *(v11 - 4) + *(v11 - 1) * 0.1;
          *(v11 - 2) = v16 + *v11 * 0.1;
          v17 = v10 + sub_1003EBB94(v19, a1 + 1008, v19);
          v18 = *v11 + (v12 + sub_1003EBB94(v19, a1 + 1008, v19)) * -0.1;
          *(v11 - 1) = *(v11 - 1) + v17 * -0.1;
          *v11 = v18;
          v11 += 12;
        }

        while (v15 + 12 != v9);
      }

      if ((*(a1 + 80) & 1) != 0 && (*(a1 + 88) & 1) == 0)
      {
        *(a1 + 88) = 1;
      }
    }
  }
}

void sub_1003E80D0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 128) == 1)
  {
    sub_1003E8354(a1, *a2);
    if ((*(a2 + 128) & 1) == 0)
    {
      goto LABEL_32;
    }

    sub_1003E8684(a1, a2);
    if ((v4 & 1) == 0 && (*(a2 + 116) & 1) != 0 && !*(a2 + 112))
    {

      sub_1003E5668(a1);
      return;
    }

    if (v4)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CC634();
      }

      *(a1 + 40) = *a2;
      *(a1 + 48) = 1;
      if (*(a1 + 848) == 1 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CC670(a1);
      }
    }
  }

  if (*(a2 + 272) == 1)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CC6F4(v5, (a2 + 272));
    }

    sub_1003E7DD0(a1, (a2 + 144));
  }

  if ((*(a2 + 128) & 1) == 0 && (*(a2 + 272) & 1) == 0)
  {
    if (*(a1 + 48) != 1)
    {
LABEL_27:
      if (*(a1 + 848) == 1)
      {
        v7 = *(a2 + 400);
        v23 = *(a2 + 384);
        v24 = v7;
        v8 = *(a2 + 432);
        v25 = *(a2 + 416);
        v26 = v8;
        v9 = *(a2 + 336);
        v19 = *(a2 + 320);
        v20 = v9;
        v10 = *(a2 + 368);
        v21 = *(a2 + 352);
        v22 = v10;
        v11 = *(a2 + 304);
        v17 = *(a2 + 288);
        v18 = v11;
        sub_1003E7E34(a1, &v17);
        v12 = *(a2 + 560);
        v23 = *(a2 + 544);
        v24 = v12;
        v13 = *(a2 + 592);
        v25 = *(a2 + 576);
        v26 = v13;
        v14 = *(a2 + 496);
        v19 = *(a2 + 480);
        v20 = v14;
        v15 = *(a2 + 528);
        v21 = *(a2 + 512);
        v22 = v15;
        v16 = *(a2 + 464);
        v17 = *(a2 + 448);
        v18 = v16;
        sub_1003E7EE8(a1, &v17);
        if (*(a1 + 848) == 1 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004CC748(a1);
        }
      }

      return;
    }

    if (*(a1 + 3744))
    {
      if (*(a1 + 3736) - *(a1 + 40) > 7.0)
      {
        v6 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,reinitializing PF due to finder delta V timeout", &v17, 2u);
        }

        sub_1003E5668(a1);
      }

      goto LABEL_27;
    }

LABEL_32:
    sub_1000195BC();
  }
}

void sub_1003E8354(uint64_t a1, double a2)
{
  if (*(a1 + 3744) != 1 || *(a1 + 3736) < a2)
  {
    *(a1 + 3736) = a2;
    *(a1 + 3744) = 1;
    v4 = *(a1 + 4032);
    if (v4)
    {
      v5 = *(a1 + 4024);
      v6 = *(*(a1 + 4000) + 8 * (v5 / 0x33)) + 80 * (v5 % 0x33);
      v7 = *(v6 + 8);
      if (a2 - v7 > 1.38)
      {
        v8 = *v6;
        v20 = *(v6 + 16);
        v9 = *(v6 + 32);
        v10 = *(v6 + 40);
        v11 = *(v6 + 60);
        v28 = *(v6 + 44);
        v29 = v11;
        v30 = *(v6 + 76);
        *(a1 + 4032) = v4 - 1;
        *(a1 + 4024) = v5 + 1;
        sub_10017B9B4(a1 + 3992, 1);
        v12 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v32 = v8;
          v33 = 2048;
          v34 = v7;
          v35 = 2048;
          v36 = a2;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,ingesting measurement,  range: %f, range time: %f, current time: %f", buf, 0x20u);
        }

        v13.n128_f64[0] = v7;
        sub_1003FBEF4((a1 + 4456), buf, v13);
        if (v45 == 1 && v44 == 1 && v43 == 1)
        {
          v10 = 0;
          v14 = vcvtq_f64_f32(v41);
          v9 = v42;
        }

        else if (*(a1 + 3560) == 1)
        {
          v14 = v20;
          if (*(a1 + 3592) == 1 && *(a1 + 3576))
          {
            v10 = 1;
          }
        }

        else
        {
          v14 = v20;
        }

        v21.f64[0] = v8;
        v21.f64[1] = v7;
        v22 = v14;
        v23 = v9;
        v24 = v10;
        v25 = v28;
        v26 = v29;
        v27 = v30;
        sub_1003E9238(a1, &v21);
      }
    }

    v15 = *(a1 + 4080);
    if (v15)
    {
      v16 = *(a1 + 4072);
      v17 = (*(*(a1 + 4048) + ((v16 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v16 & 0x7F));
      if (a2 - v17->f64[0] > 1.38)
      {
        v18 = v17[1];
        v21 = *v17;
        v22 = v18;
        *(a1 + 4080) = v15 - 1;
        *(a1 + 4072) = v16 + 1;
        sub_1003EC368(a1 + 4040, 1);
        v19 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134219008;
          v32 = v21.f64[1];
          v33 = 2048;
          v34 = v22.f64[0];
          v35 = 2048;
          v36 = v22.f64[1];
          v37 = 2048;
          v38 = v21.f64[0];
          v39 = 2048;
          v40 = a2;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,ingesting peer vio,  x: %f, y: %f, z: %f, range time: %f, current time: %f", buf, 0x34u);
        }

        sub_1003EB010(a1, &v21);
      }
    }
  }
}

__n128 sub_1003E8684(uint64_t a1, __int128 *a2)
{
  sub_1003E8354(a1, *a2);
  v4 = *(a1 + 368);
  if ((v4 & 1) == 0)
  {
    *(a1 + 360) = *a2;
    v4 = 1;
    *(a1 + 368) = 1;
  }

  if (*(a1 + 3536) == 1 && *(a1 + 24) == 1 && *(a1 + 712) == 1)
  {
    v5 = *a2;
    if (*a2 - *(a1 + 704) > 1.58)
    {
      if ((v4 & 1) == 0)
      {
        sub_1000195BC();
      }

      if (v5 - *(a1 + 360) > 0.1)
      {
        *(a1 + 360) = v5;
        *(a1 + 368) = 1;
        sub_1003E88A0(a1, v22, *(a1 + 3528), COERCE_FLOAT(a2[4]), COERCE_FLOAT(HIDWORD(*(a2 + 8))), COERCE_FLOAT(*(a2 + 9)));
        v6 = *(a1 + 688);
        v7 = v22[9];
        *(a1 + 640) = v22[8];
        *(a1 + 656) = v7;
        *(a1 + 672) = v22[10];
        v8 = v22[5];
        *(a1 + 576) = v22[4];
        *(a1 + 592) = v8;
        v9 = v22[7];
        *(a1 + 608) = v22[6];
        *(a1 + 624) = v9;
        v10 = v22[1];
        *(a1 + 512) = v22[0];
        *(a1 + 528) = v10;
        v11 = v22[3];
        *(a1 + 544) = v22[2];
        *(a1 + 560) = v11;
        if ((v6 & 1) == 0)
        {
          *(a1 + 688) = 1;
        }

        *(a1 + 600) = *(a1 + 160);
      }
    }
  }

  if (*(a1 + 712) == 1 && *a2 - *(a1 + 704) > *(a1 + 352) + 1.38)
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,PF reset due to timeout calculated from current pose", v22, 2u);
    }

    sub_1003E5668(a1);
  }

  if (sub_1003E7508(a1, a2))
  {
    v14 = (a1 + 720);
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[3];
    if (*(a1 + 848) == 1)
    {
      *(a1 + 752) = a2[2];
      *(a1 + 768) = v17;
      *v14 = v15;
      *(a1 + 736) = v16;
      result = a2[4];
      v18 = a2[5];
      v19 = a2[6];
      *(a1 + 832) = *(a2 + 14);
      *(a1 + 800) = v18;
      *(a1 + 816) = v19;
      *(a1 + 784) = result;
    }

    else
    {
      *(a1 + 752) = a2[2];
      *(a1 + 768) = v17;
      *v14 = v15;
      *(a1 + 736) = v16;
      result = a2[4];
      v20 = a2[5];
      v21 = a2[7];
      *(a1 + 816) = a2[6];
      *(a1 + 832) = v21;
      *(a1 + 784) = result;
      *(a1 + 800) = v20;
      *(a1 + 848) = 1;
    }
  }

  return result;
}

double sub_1003E88A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000195BC();
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  if (*a1 == v9)
  {
    v57 = 0.0;
    v58 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    v20 = 0.0;
    v16 = 0.0;
    v12 = 0.0;
    v10 = 0.0;
LABEL_47:
    v14 = 0.0;
LABEL_48:
    v51 = 0.0;
    v52 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
    v25 = 0.0;
LABEL_49:
    v54 = 0.0;
    goto LABEL_50;
  }

  v10 = 0.0;
  v11 = *a1;
  do
  {
    v10 = v10 + *v11 * v11[11];
    v11 += 12;
  }

  while (v11 != v9);
  if (v8 == v9)
  {
    v57 = 0.0;
    v58 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    v20 = 0.0;
    v16 = 0.0;
    v12 = 0.0;
    goto LABEL_47;
  }

  v12 = 0.0;
  v13 = *a1;
  do
  {
    v12 = v12 + v13[2] * v13[11];
    v13 += 12;
  }

  while (v13 != v9);
  if (v8 == v9)
  {
    v57 = 0.0;
    v58 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    v20 = 0.0;
    v16 = 0.0;
    goto LABEL_47;
  }

  v14 = 0.0;
  v15 = *a1;
  do
  {
    v14 = v14 + v15[1] * v15[11];
    v15 += 12;
  }

  while (v15 != v9);
  if (v8 == v9)
  {
    v57 = 0.0;
    v58 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    v20 = 0.0;
    v16 = 0.0;
    goto LABEL_48;
  }

  v16 = 0.0;
  v17 = *a1;
  do
  {
    v16 = v16 + v17[5] * v17[11];
    v17 += 12;
  }

  while (v17 != v9);
  if (v8 == v9)
  {
    v57 = 0.0;
    v58 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    v20 = 0.0;
    goto LABEL_48;
  }

  v18 = 0.0;
  v19 = *a1;
  do
  {
    v18 = v18 + v19[6] * v19[11];
    v19 += 12;
  }

  while (v19 != v9);
  if (v8 == v9)
  {
    v57 = 0.0;
    v58 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    v20 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
    v25 = 0.0;
    v51 = 0.0;
    v52 = v18;
    goto LABEL_49;
  }

  v20 = 0.0;
  v21 = 0.0;
  v22 = *a1;
  do
  {
    v23 = sqrt((v22[2] - a6) * (v22[2] - a6) + (*v22 - a4) * (*v22 - a4));
    v24 = v22[11];
    v20 = v20 + v23 * v24;
    v21 = v21 + v23 * v23 * v24;
    v22 += 12;
  }

  while (v22 != v9);
  v52 = v18;
  if (v8 == v9)
  {
    v57 = 0.0;
    v58 = 0.0;
    v55 = v21;
    v56 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
    v25 = 0.0;
    v51 = 0.0;
    goto LABEL_49;
  }

  v25 = 0.0;
  v26 = 0.0;
  v27 = *a1;
  do
  {
    v28 = sqrt((v27[1] - a5) * (v27[1] - a5) + (*v27 - a4) * (*v27 - a4) + (v27[2] - a6) * (v27[2] - a6));
    v29 = v27[11];
    v25 = v25 + v28 * v29;
    v26 = v26 + v28 * v28 * v29;
    v27 += 12;
  }

  while (v27 != v9);
  v55 = v21;
  if (v8 == v9)
  {
    v57 = 0.0;
    v58 = 0.0;
    v56 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
    v54 = 0.0;
    v49 = v26;
    goto LABEL_50;
  }

  v30 = 0.0;
  v31 = *a1;
  do
  {
    v30 = v30 + (*v31 - v10) * (*v31 - v10) * v31[11];
    v31 += 12;
  }

  while (v31 != v9);
  v49 = v26;
  if (v8 == v9)
  {
    v57 = 0.0;
    v58 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
    v54 = 0.0;
    v56 = v30;
    goto LABEL_50;
  }

  v32 = 0.0;
  v33 = *a1;
  do
  {
    v32 = v32 + (v33[2] - v12) * (v33[2] - v12) * v33[11];
    v33 += 12;
  }

  while (v33 != v9);
  v56 = v30;
  if (v8 == v9)
  {
    v57 = 0.0;
    v58 = 0.0;
    v50 = 0.0;
    v51 = v32;
    goto LABEL_49;
  }

  v34 = 0.0;
  v35 = *a1;
  do
  {
    v34 = v34 + (v35[1] - v14) * (v35[1] - v14) * v35[11];
    v35 += 12;
  }

  while (v35 != v9);
  v51 = v32;
  if (v8 == v9)
  {
    v57 = v34;
    v58 = 0.0;
    v50 = 0.0;
    goto LABEL_49;
  }

  v36 = 0.0;
  v37 = *a1;
  do
  {
    v36 = v36 + (*v37 - v10) * (v37[2] - v12) * v37[11];
    v37 += 12;
  }

  while (v37 != v9);
  v57 = v34;
  if (v8 == v9)
  {
    v58 = 0.0;
    v54 = 0.0;
    v50 = v36;
  }

  else
  {
    v38 = 0.0;
    v39 = *a1;
    do
    {
      v40 = v38 + v39[11];
      if (vabdd_f64(v39[1], a5) > 2.5)
      {
        v38 = v38 + v39[11];
      }

      v39 += 12;
    }

    while (v39 != v9);
    v50 = v36;
    if (v8 == v9)
    {
      v54 = 0.0;
      v58 = v38;
    }

    else
    {
      v41 = 0.0;
      do
      {
        v41 = v41 + fabs(v8[1]) * v8[11];
        v8 += 12;
      }

      while (v8 != v9);
      v58 = v38;
      v54 = v41;
    }
  }

LABEL_50:
  v43 = atan2(v14 - a5, v20);
  v48 = a5 + v25 * sin(v43);
  v44 = atan2(v12 - a6, v10 - a4);
  v45 = __sincos_stret(v44);
  v46 = atan2(sqrt(v56 + v51), v20);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x408F400000000000;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;
  *(a2 + 32) = v52;
  *(a2 + 40) = v56;
  *(a2 + 48) = v51;
  *(a2 + 56) = v57;
  *(a2 + 64) = v50;
  *(a2 + 72) = a3;
  *(a2 + 96) = v46 * 180.0 / 3.14159265;
  *(a2 + 104) = v20;
  *(a2 + 112) = v55 - v20 * v20;
  *(a2 + 120) = v25;
  *(a2 + 128) = v49 - v25 * v25;
  *(a2 + 136) = a4 + v20 * v45.__cosval;
  *(a2 + 144) = v48;
  *(a2 + 152) = a6 + v20 * v45.__sinval;
  result = v54;
  *(a2 + 160) = v58;
  *(a2 + 168) = v54;
  return result;
}

uint64_t sub_1003E8DE0(uint64_t result, double a2)
{
  if (*(result + 24) == 1)
  {
    v2 = result;
    v3 = *result;
    v4 = *(result + 8);
    if (*result != v4)
    {
      do
      {
        v6 = sub_10018290C(v2 + 1008);
        result = sub_10018290C(v2 + 1008);
        *(v3 + 80) = (v6 + result * 4294967300.0) * 5.42101086e-20 >= a2;
        v3 += 96;
      }

      while (v3 != v4);
    }
  }

  return result;
}

void sub_1003E8E80(uint64_t a1, int a2, double a3)
{
  sub_1003E8354(a1, a3);
  v6 = *(a1 + 3632);
  switch(v6)
  {
    case 0:
      if (a2 == 1)
      {
LABEL_12:
        v7 = 0.5;
        goto LABEL_13;
      }

LABEL_10:
      if (a2 == 2)
      {
        v7 = 0.0;
        goto LABEL_13;
      }

      break;
    case 1:
      if (!a2)
      {
LABEL_8:
        v7 = 0.9;
LABEL_13:
        sub_1003E8DE0(a1, v7);
        break;
      }

      goto LABEL_10;
    case 2:
      if (a2)
      {
        if (a2 != 1)
        {
          break;
        }

        goto LABEL_12;
      }

      goto LABEL_8;
  }

  *(a1 + 3632) = a2;
  *(a1 + 3640) = a3;
  *(a1 + 3648) = 1;
}

void sub_1003E8F20(uint64_t a1, int a2, double a3, double a4)
{
  v8 = a1 + 4096;
  sub_1003E8354(a1, a4);
  *(v8 + 352) = a2;
  if (*(a1 + 848) != 1)
  {
    return;
  }

  LOBYTE(v24) = 0;
  v25 = 0;
  LOBYTE(v26) = 0;
  v27 = 0;
  *v20 = a3;
  *&v20[1] = a4;
  v9 = *(a1 + 784);
  v22 = COERCE_FLOAT(*(a1 + 792));
  v21 = vcvtq_f64_f32(*&v9);
  if (*(a1 + 828) == 1)
  {
    v10 = *(a1 + 824);
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_8;
      }

      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    v23 = v11;
  }

LABEL_8:
  if (*(a1 + 836) == 1 && *(a1 + 832) == 1)
  {
    v23 = 1;
  }

  if (*(v8 + 128) == 1 && a4 - *(a1 + 4152) < 1.0)
  {
    v24 = *(a1 + 4192);
    v25 = *(a1 + 4200);
    v26 = *(a1 + 4208);
    v27 = *(a1 + 4216);
  }

  if (*(a1 + 3648) == 1)
  {
    v12 = 0.1;
    if (a2)
    {
      v12 = 0.2;
    }

    v13 = a4 - *(a1 + 3640) < v12;
  }

  else
  {
    v13 = 0;
  }

  if (*(a1 + 496) != 1 || v13)
  {
    sub_1003E9178(a1 + 3992, v20);
    v18 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v19 = *(a1 + 4032);
    *buf = 134218496;
    v29 = a4;
    v30 = 2048;
    v31 = a3;
    v32 = 2048;
    v33 = v19;
    v15 = "#sa_algo_particlefilter,measurement queued, time: %f, range: %f, queue size: %lu";
    v16 = v18;
    v17 = 32;
  }

  else
  {
    v14 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v15 = "#sa_algo_particlefilter,measurement not queued due to lack of recent motion data";
    v16 = v14;
    v17 = 2;
  }

  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
}

__n128 sub_1003E9178(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 51 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_1003EBCA8(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x33)) + 80 * (v8 % 0x33);
  *v9 = *a2;
  result = *(a2 + 16);
  v11 = *(a2 + 32);
  v12 = *(a2 + 64);
  *(v9 + 48) = *(a2 + 48);
  *(v9 + 64) = v12;
  *(v9 + 16) = result;
  *(v9 + 32) = v11;
  ++*(a1 + 40);
  return result;
}

void sub_1003E9238(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  v6 = *(a2 + 16);
  *(a1 + 3584) = v5;
  *(a1 + 3592) = 1;
  if (*(a1 + 848) != 1)
  {
    return;
  }

  v95 = v6;
  v96 = v4;
  v9 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CC7CC(v9, (a1 + 848));
  }

  if (*(a1 + 712) == 1 && v3 - *(a1 + 704) > *(a1 + 352))
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,PF reset due to timeout calculated from current range", buf, 2u);
    }

    sub_1003E5668(a1);
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    v22 = *(a2 + 48);
    *v112 = *(a2 + 32);
    *&v112[16] = v22;
    *&v112[32] = *(a2 + 64);
    v23 = *(a2 + 16);
    *buf = *a2;
    *&buf[16] = v23;
    sub_1003E65C0(a1, buf);
    *(a1 + 704) = v3;
    *(a1 + 712) = 1;
    *(a1 + 3528) = *a2;
    *(a1 + 3536) = 1;
    v24 = *(a1 + 4312);
    *(a1 + 4232) = *a2;
    v25 = *(a2 + 64);
    v27 = *(a2 + 16);
    v26 = *(a2 + 32);
    *(a1 + 4280) = *(a2 + 48);
    *(a1 + 4296) = v25;
    *(a1 + 4248) = v27;
    *(a1 + 4264) = v26;
    if ((v24 & 1) == 0)
    {
      *(a1 + 4312) = 1;
    }

    return;
  }

  v11 = *(a1 + 232);
  v109[0] = 0.0;
  v109[1] = v11;
  v110 = 0;
  v12 = 3968;
  if (*(a1 + 4448))
  {
    v12 = 3976;
  }

  v13 = *(a1 + v12);
  if (*(a1 + 3944) == 1)
  {
    v14 = *(a1 + 3936);
    if (v3 - v14 <= v13)
    {
      goto LABEL_37;
    }

    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = v3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,time of last pdr update: %f, current time: %f", buf, 0x16u);
    }
  }

  if (*(a1 + 3960) != 1)
  {
LABEL_36:
    *(a1 + 3952) = v3;
    *(a1 + 3960) = 1;
LABEL_37:
    sub_1003E88A0(a1, v106, v2, v95, v5, v96);
    v28 = v108;
    v29 = v2 - v107;
    v105 = v2 - v107;
    if (v2 >= 10.0)
    {
      if (v2 >= 20.0)
      {
        if (v2 >= 30.0)
        {
          if (v2 >= 40.0)
          {
            if (v2 >= 50.0)
            {
              if (v2 >= 60.0)
              {
                v30 = 3.02;
              }

              else
              {
                v30 = 2.37;
              }
            }

            else
            {
              v30 = 1.8;
            }
          }

          else
          {
            v30 = 1.56;
          }
        }

        else
        {
          v30 = 0.89;
        }
      }

      else
      {
        v30 = 0.69;
      }
    }

    else
    {
      v30 = 0.433;
    }

    v31 = *(a1 + 432);
    v32 = *(a1 + 440);
    sub_100013A08(a1 + 4320, &v105);
    v33 = *(a1 + 4360);
    if (v33 >= 0xB)
    {
      v34 = *(a1 + 4352);
      *(a1 + 4360) = v33 - 1;
      *(a1 + 4352) = v34 + 1;
      sub_1000139A8(a1 + 4320, 1);
    }

    v35 = (v29 - v30) / sqrt(v28 * v31 + v32 * v32);
    if (*(a1 + 3520))
    {
      v36 = *(a1 + 376);
      if (v35 < v36)
      {
        *(a1 + 3520) = 0;
      }

      if ((*(a1 + 4368) & 1) != 0 || *(a1 + 3632) == 2)
      {
        v37 = (a1 + 464);
      }

      else
      {
        v37 = (a1 + 384);
      }

      if (v3 - *(a1 + 3544) <= *v37)
      {
        if (v35 >= v36)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      v61 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
LABEL_90:
        sub_1003E5668(a1);
        return;
      }

      *buf = 0;
      v62 = "#sa_algo_particlefilter,PF reset due to nlos timeout";
LABEL_89:
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, v62, buf, 2u);
      goto LABEL_90;
    }

    if (*(a1 + 3536) == 1)
    {
      v38 = *(a1 + 376);
      if (v35 > v38)
      {
        *(a1 + 3520) = 1;
        *(a1 + 3544) = v3;
        *(a1 + 400) = 0;
        goto LABEL_65;
      }

      v76 = *(a1 + 400);
      if (v35 >= -v38)
      {
        if (*(a1 + 400))
        {
          *(a1 + 400) = 0;
        }
      }

      else if (*(a1 + 400))
      {
        *(a1 + 400) = 0;
        v61 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_90;
        }

        *buf = 0;
        v62 = "#sa_algo_particlefilter,PF reset due to transition from los to nlos detected";
        goto LABEL_89;
      }
    }

LABEL_64:
    sub_1003E59A0(a1, *(a2 + 16), *(a2 + 32), *(a2 + 8));
LABEL_65:
    *(a1 + 3528) = v2;
    *(a1 + 3536) = 1;
    v39 = *(a1 + 4312);
    *(a1 + 4232) = *a2;
    v40 = *(a2 + 64);
    v42 = *(a2 + 16);
    v41 = *(a2 + 32);
    *(a1 + 4280) = *(a2 + 48);
    *(a1 + 4296) = v40;
    *(a1 + 4248) = v42;
    *(a1 + 4264) = v41;
    if ((v39 & 1) == 0)
    {
      *(a1 + 4312) = 1;
    }

    v43 = v95;
    v44 = v96;
    if (*(a1 + 3560) == 1 && *(a1 + 3592) == 1 && *(a1 + 3576) == 1 && !*(a2 + 40))
    {
      v45 = *(a1 + 112);
      *buf = 0;
      *&buf[8] = v45;
      buf[24] = 0;
      if ((*(a1 + 712) & 1) == 0)
      {
        sub_1000195BC();
      }

      if ((*(a1 + 24) & 1) == 0)
      {
        sub_1000195BC();
      }

      v46 = v95 - *(a1 + 3552);
      v93 = *(a2 + 8);
      v94 = v96 - *(a1 + 3568);
      v92 = *(a1 + 704);
      v47 = *a1;
      v48 = *(a1 + 8);
      if (*a1 != v48)
      {
        do
        {
          v49 = sub_1003EBB94(buf, a1 + 1008, buf);
          v50 = v47[9];
          v51 = v46 * v50 - v46;
          v52 = v94 * v50 - v94;
          v53 = __sincos_stret(v49);
          *v47 = *v47 + v53.__sinval * v52 - v53.__cosval * v51;
          v47[2] = v47[2] + -(v52 * v53.__cosval) - v53.__sinval * v51;
          if (*(a1 + 88) == 1 && *(a1 + 80) == 1)
          {
            v54 = *(a1 + 56);
            v55 = v47[4];
            v47[3] = *v54 + v47[3];
            v47[4] = v54[2] + v55;
          }

          v47 += 12;
        }

        while (v47 != v48);
      }

      *&v121 = v46 / (v93 - v92);
      *(&v121 + 1) = 0;
      *&v122 = v94 / (v93 - v92);
      __p[1] = 0;
      *&v98 = 0;
      __p[0] = 0;
      sub_100019AC4(__p, &v121, &v122 + 8, 3uLL);
      sub_1003E9F88(a1 + 56, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *(a1 + 88) = 0;
      v43 = v95;
      v44 = v96;
    }

    v121 = 0u;
    v122 = 0u;
    v123 = 0;
    v102 = 0u;
    v103 = 0u;
    v104 = 0;
    if (*(a1 + 848) == 1)
    {
      if (*(a1 + 3520))
      {
        if ((*(a1 + 688) & 1) == 0)
        {
          sub_1000195BC();
        }

        if ((*(a1 + 3536) & 1) == 0)
        {
          sub_1000195BC();
        }

        sub_1003E88A0(a1, buf, *(a1 + 3528), v43, v5, v44);
      }

      else
      {
        v63 = *(a1 + 4328);
        if (*(a1 + 4336) == v63)
        {
          v68 = *(a1 + 4360);
        }

        else
        {
          v64 = *(a1 + 4352);
          v65 = (v63 + 8 * (v64 >> 9));
          v66 = *v65;
          v67 = &(*v65)[v64 & 0x1FF];
          v68 = *(a1 + 4360);
          v69 = *(v63 + (((v68 + v64) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v68 + v64) & 0x1FF);
          if (v67 != v69)
          {
            v70 = v68;
            v71 = 0.0;
            v72 = 0.0;
            do
            {
              v73 = *v67++;
              v74 = v73;
              if (v67 - v66 == 4096)
              {
                v75 = v65[1];
                ++v65;
                v66 = v75;
                v67 = v75;
              }

              v71 = v71 + v74 / v70;
              v72 = v72 + v74 * v74 / v70;
            }

            while (v67 != v69);
          }
        }

        if (v68 >= 4)
        {
          v77 = *(a1 + 448);
        }

        sub_1003E9FEC(a1, buf, v2, v43, v44, v5);
        if ((v120 & 1) == 0)
        {
          v87 = *(a2 + 48);
          v99 = *(a2 + 32);
          v100 = v87;
          v101 = *(a2 + 64);
          v88 = *(a2 + 16);
          *__p = *a2;
          v98 = v88;
          sub_1003E65C0(a1, __p);
          *(a1 + 704) = v3;
          *(a1 + 712) = 1;
          v89 = 160;
          if (*(a1 + 3520))
          {
            v89 = 392;
          }

          v90 = *(a1 + v89);
          v91 = *(a1 + 688);
          *(a1 + 512) = 0u;
          *(a1 + 528) = 0u;
          *(a1 + 544) = 0;
          *(a1 + 552) = 0x408F400000000000;
          *(a1 + 560) = vdupq_n_s64(0x408F400000000000uLL);
          *(a1 + 576) = xmmword_1005690E0;
          *(a1 + 592) = v3;
          *(a1 + 600) = v90;
          *(a1 + 608) = xmmword_1005690E0;
          *(a1 + 624) = xmmword_1005690E0;
          *(a1 + 640) = 0x408F400000000000;
          *(a1 + 680) = 0;
          *(a1 + 648) = 0u;
          *(a1 + 664) = 0u;
          if ((v91 & 1) == 0)
          {
            *(a1 + 688) = 1;
          }

          return;
        }
      }

      v121 = *buf;
      v122 = *&buf[16];
      v123 = *v112;
      v57 = *&v112[8];
      v59 = *&v112[24];
      v56 = v114;
      v60 = v115;
      v58 = v116;
      v102 = v117;
      v103 = v118;
      v104 = v119;
    }

    else
    {
      v56 = xmmword_1005690E0;
      v57 = vdupq_n_s64(0x408F400000000000uLL);
      v58 = 0x408F400000000000;
      v59 = v57;
      v60 = xmmword_1005690E0;
    }

    *(a1 + 704) = v3;
    *(a1 + 712) = 1;
    v78 = 160;
    if (*(a1 + 3520))
    {
      v78 = 392;
    }

    v79 = *(a1 + v78);
    v80 = *(a1 + 688);
    v81 = v122;
    *(a1 + 512) = v121;
    *(a1 + 528) = v81;
    *(a1 + 544) = v123;
    *(a1 + 552) = v57;
    *(a1 + 568) = v59;
    *(a1 + 584) = v2;
    *(a1 + 592) = v3;
    *(a1 + 600) = v79;
    *(a1 + 608) = v56;
    *(a1 + 624) = v60;
    *(a1 + 640) = v58;
    v82 = v103;
    *(a1 + 648) = v102;
    *(a1 + 664) = v82;
    *(a1 + 680) = v104;
    if ((v80 & 1) == 0)
    {
      *(a1 + 688) = 1;
    }

    v83 = *(a1 + 832);
    *(a1 + 960) = *(a1 + 816);
    *(a1 + 976) = v83;
    *(a1 + 992) = *(a1 + 848);
    v84 = *(a1 + 768);
    *(a1 + 896) = *(a1 + 752);
    *(a1 + 912) = v84;
    v85 = *(a1 + 800);
    *(a1 + 928) = *(a1 + 784);
    *(a1 + 944) = v85;
    v86 = *(a1 + 736);
    *(a1 + 864) = *(a1 + 720);
    *(a1 + 880) = v86;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CC880();
    }

    *(a1 + 3552) = *(a2 + 16);
    *(a1 + 3560) = 1;
    *(a1 + 3568) = *(a2 + 32);
    *(a1 + 3576) = 1;
    return;
  }

  v16 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v3 - *(a1 + 3952);
    *buf = 134217984;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,time since process model update: %f", buf, 0xCu);
    v16 = qword_1009F9820;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,using random motion model", buf, 2u);
  }

  if (*(a1 + 3944) != 1 || v3 - *(a1 + 3936) <= v13 + v13)
  {
    if ((*(a1 + 24) & 1) == 0)
    {
      sub_1000195BC();
    }

    v18 = *a1;
    v19 = *(a1 + 8);
    while (1)
    {
      if (v18 == v19)
      {
        goto LABEL_36;
      }

      if (!*(v18 + 80))
      {
        v20 = *v18;
        *v18 = v20 + sub_1003EBB94(v109, a1 + 1008, v109);
        v21 = *(v18 + 16);
        *(v18 + 16) = v21 + sub_1003EBB94(v109, a1 + 1008, v109);
        goto LABEL_33;
      }

      if (*(a1 + 3944) == 1)
      {
        sub_1003E7C34(a1, v18, buf, v3 - *(a1 + 3936));
      }

      else
      {
        if (*(a1 + 712) != 1)
        {
          goto LABEL_33;
        }

        sub_1003E7C34(a1, v18, buf, v3 - *(a1 + 704));
      }

      *(v18 + 32) = *v112;
      *(v18 + 48) = *&v112[16];
      *(v18 + 64) = *&v112[32];
      *(v18 + 80) = v113;
      *v18 = *buf;
      *(v18 + 16) = *&buf[16];
      *(a1 + 3984) = 0;
LABEL_33:
      v18 += 96;
    }
  }
}

void sub_1003E9D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003E9F88(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_10016D9A8(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1003E9FEC(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004CC8BC();
  }

  *(a1 + 3512) = *(a1 + 3512) + 1.0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 == v13)
  {
    v53 = 0;
    v54 = 0;
    v55 = 0;
  }

  else
  {
    do
    {
      *buf = a3 - sqrt((v12[2] - a5) * (v12[2] - a5) + (*v12 - a4) * (*v12 - a4) + (v12[1] - a6) * (v12[1] - a6));
      sub_100009734(&v56, buf);
      v12 += 12;
    }

    while (v12 != v13);
    v14 = v56;
    v15 = v57;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    while (v14 != v15)
    {
      sub_1003EA6A4(a3, *v14);
      *buf = v16;
      sub_100009734(&v53, buf);
      ++v14;
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5) != (v54 - v53) >> 3)
  {
    __assert_rtn("measurementUpdate", "ParticleFilter.cpp", 1187, "likelihoods.size() == _particles.value().size()");
  }

  v17 = 0;
  __p = 0;
  v51 = 0;
  v18 = 88;
  v52 = 0;
  while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5) > v17)
  {
    *buf = *(*a1 + v18) * *(v53 + v17) + 1.0e-50;
    sub_100009734(&__p, buf);
    ++v17;
    v18 += 96;
    if ((*(a1 + 24) & 1) == 0)
    {
      sub_1000195BC();
    }
  }

  v19 = __p;
  v20 = 0.0;
  while (v19 != v51)
  {
    v21 = *v19++;
    v20 = v20 + v21;
  }

  v22 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v46 = v56;
    v47 = 0.0;
    while (v46 != v57)
    {
      v48 = *v46++;
      v47 = v47 + v48;
    }

    v49 = *(a1 + 32);
    *buf = 134218496;
    *&buf[4] = v47 / v49;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2048;
    *&buf[24] = v20;
    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "#sa_algo_particlefilter,average error: %f, measurement: %f m, total likelihood: %f", buf, 0x20u);
  }

  if (v20 >= 0.009)
  {
    v26 = __p;
    v27 = v51;
    if (__p != v51)
    {
      v28 = __p;
      do
      {
        *v28 = *v28 / v20;
        ++v28;
      }

      while (v28 != v27);
    }

    if (*(a1 + 24) != 1)
    {
      sub_1000195BC();
    }

    v29 = *(a1 + 8) - *a1;
    if (v29)
    {
      v30 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 5);
      v31 = (*a1 + 88);
      do
      {
        v32 = *v26++;
        *v31 = v32;
        v31 += 12;
        --v30;
      }

      while (v30);
    }

    sub_1003E88A0(a1, buf, a3, a4, a6, a5);
    if ((*(a1 + 24) & 1) == 0)
    {
      sub_1000195BC();
    }

    v33 = *a1;
    v34 = 0.0;
    while (v33 != *(a1 + 8))
    {
      v34 = v34 + v33[11] * v33[11];
      v33 += 12;
    }

    v39 = 0.05;
    if (*(a1 + 3984) == 1)
    {
      v39 = 0.25;
    }

    *(a1 + 280) = v39;
    if (1.0 / v34 / *(a1 + 32) < v39 && *(a1 + 3512) > *(a1 + 320))
    {
      sub_1003EA758(a1, &__p, a3, a4, a5);
      *(a1 + 3512) = 0;
    }

    v40 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 134218240;
      v60 = a3;
      v61 = 2048;
      v62 = v68;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,measurement: %f, uncertainty: %f", v59, 0x16u);
    }

    v41 = v71;
    *(a2 + 128) = v70;
    *(a2 + 144) = v41;
    *(a2 + 160) = v72;
    v42 = v67;
    *(a2 + 64) = v66;
    *(a2 + 80) = v42;
    v43 = v69;
    *(a2 + 96) = v68;
    *(a2 + 112) = v43;
    v44 = *&buf[16];
    *a2 = *buf;
    *(a2 + 16) = v44;
    v45 = v65;
    *(a2 + 32) = v64;
    *(a2 + 48) = v45;
    *(a2 + 176) = 1;
  }

  else
  {
    v23 = v56;
    v24 = 0.0;
    while (v23 != v57)
    {
      v25 = *v23++;
      v24 = v24 + v25;
    }

    v35 = *(a1 + 32);
    v36 = std::ostream::operator<<();
    std::ios_base::getloc((v36 + *(*v36 - 24)));
    v37 = std::locale::use_facet(buf, &std::ctype<char>::id);
    (v37->__vftable[2].~facet_0)(v37, 10);
    std::locale::~locale(buf);
    std::ostream::put();
    std::ostream::flush();
    v38 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,PF reset due to minimum likelihood threshold fail", buf, 2u);
    }

    *a2 = 0;
    *(a2 + 176) = 0;
  }

  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }
}

void sub_1003EA620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::locale a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003EA6A4(double a1, double a2)
{
  sub_1003E9D7C();
  v6 = v3 * (a2 - v4) / v5;
  v7 = v6 + 1.0;
  if (v6 + 1.0 > 0.0)
  {
    v8 = -1.0 / v3;
    v9 = pow(v6 + 1.0, -1.0 / v3);
    exp(-v9);
    pow(v7, v8 + -1.0);
  }
}

void sub_1003EA758(uint64_t a1, double **a2, double a3, double a4, double a5)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004CC8E8();
  }

  v9 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#sa_algo_particlefilter,resampling with systematic resample method", buf, 2u);
  }

  sub_1003C671C(&v63, *(a1 + 32));
  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    v12 = v63;
    v14 = *v10;
    v13 = v10 + 1;
    v15 = v14;
    *v63 = v14;
    if (v13 != v11)
    {
      v16 = (v12 + 8);
      do
      {
        v17 = *v13++;
        v15 = v15 + v17;
        *v16++ = v15;
      }

      while (v13 != v11);
    }
  }

  v18 = sub_10018290C(a1 + 1008);
  v19 = sub_10018290C(a1 + 1008);
  v20 = *(a1 + 32);
  v60 = 0;
  v61 = 0;
  v62 = 0;
  if (v20 < 1)
  {
    __p = 0;
    v58 = 0;
    v59 = 0;
  }

  else
  {
    v21 = 0;
    v22 = ((v18 + v19 * 4294967300.0) * 5.42101086e-20 + 0.0) / v20;
    do
    {
      *buf = v22 + v21 / v20;
      sub_100009734(&v60, buf);
      ++v21;
      v20 = *(a1 + 32);
    }

    while (v20 > v21);
    __p = 0;
    v58 = 0;
    v59 = 0;
    if (v20 >= 1)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = *(v60 + v23);
        v26 = v24;
        if (v25 > *(v63 + v24))
        {
          v27 = (v64 - v63) >> 3;
          if (v27 <= v24)
          {
            v27 = v24;
          }

          while (v27 != v26)
          {
            v28 = v26 + 1;
            v29 = *(v63 + ++v26);
            if (v25 <= v29)
            {
              goto LABEL_20;
            }
          }

          v28 = v27;
LABEL_20:
          v24 = v28;
          v26 = v28;
        }

        if ((*(a1 + 24) & 1) == 0)
        {
          sub_1000195BC();
        }

        v30 = *a1;
        v31 = *a1 + 96 * v26;
        v32 = *(v31 + 16);
        *buf = *v31;
        v52 = v32;
        v33 = *(v31 + 32);
        v34 = *(v31 + 48);
        v35 = *(v31 + 64);
        v55 = *(v31 + 80);
        *&v53[16] = v34;
        v54 = v35;
        *v53 = v33;
        v56 = 1.0 / v20;
        if ((*(a1 + 345) & 1) == 0)
        {
          LODWORD(v55) = *(v30 + 96 * v23 + 80);
        }

        v36 = v30 + 96 * v23;
        v54 = *(v36 + 64);
        *&v53[8] = *(v36 + 40);
        if ((*(a1 + 344) & 1) == 0)
        {
          *&v53[24] = *(v36 + 56);
        }

        if ((*(a1 + 200) & 1) == 0)
        {
          *&buf[8] = *(v36 + 8);
        }

        v37 = sub_10018290C(a1 + 1008);
        if ((v37 + sub_10018290C(a1 + 1008) * 4294967300.0) * 5.42101086e-20 < 0.5 && *(a1 + 3592) == 1 && (*(a1 + 3600) & 1) == 0)
        {
          *&buf[8] = *(a1 + 3584) - (*&buf[8] - *(a1 + 3584));
        }

        v38 = sub_10018290C(a1 + 1008);
        if ((v38 + sub_10018290C(a1 + 1008) * 4294967300.0) * 5.42101086e-20 < *(a1 + 312) && (*(a1 + 3520) & 1) == 0)
        {
          v39 = sub_10018290C(a1 + 1008);
          v40 = sub_10018290C(a1 + 1008);
          v41 = sub_10018290C(a1 + 1008);
          v42 = sub_10018290C(a1 + 1008);
          v43 = sub_10018290C(a1 + 1008);
          v44 = sub_10018290C(a1 + 1008);
          v45 = (v39 + v40 * 4294967300.0) * 5.42101086e-20 + 0.0;
          v46 = (v41 + v42 * 4294967300.0) * 5.42101086e-20 + 0.0;
          v47 = (v46 + v46) * 3.14159265;
          v48 = ((v43 + v44 * 4294967300.0) * 5.42101086e-20 + 0.0) * 2.0 + -1.0 + a3;
          v49 = __sincos_stret((v45 + v45) * 3.14159265);
          *buf = a4 + v48 * v49.__cosval;
          *&v52 = a5 + v48 * v49.__sinval;
          *&v53[16] = v47;
        }

        sub_1003EAC44(&__p, buf);
        ++v23;
        v20 = *(a1 + 32);
      }

      while (v20 > v23);
    }
  }

  sub_1003EAD5C(a1, &__p);
  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }
}

void sub_1003EABE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003EAC44(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    v12 = v11 + 1;
    if (v11 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_100019B38();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x155555555555555)
    {
      v14 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_1003EBE7C(a1, v14);
    }

    v15 = 96 * v11;
    v16 = a2[1];
    *v15 = *a2;
    *(v15 + 16) = v16;
    v17 = a2[2];
    v18 = a2[3];
    v19 = a2[5];
    *(v15 + 64) = a2[4];
    *(v15 + 80) = v19;
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    v10 = 96 * v11 + 96;
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[5];
    v4[4] = a2[4];
    v4[5] = v9;
    v4[2] = v7;
    v4[3] = v8;
    v10 = (v4 + 6);
  }

  *(a1 + 8) = v10;
}

uint64_t sub_1003EAD5C(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1003EBED4(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5));
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1003EC07C(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5));
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_1003EADF0(void *a1)
{
  v2 = a1[506];
  v3 = a1[507];
  a1[510] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v2 = (a1[506] + 8);
      a1[506] = v2;
      v4 = (a1[507] - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 64;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v5 = 128;
  }

  a1[509] = v5;
LABEL_8:

  return sub_1003EAE88(a1);
}

uint64_t sub_1003EAE88(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result;
    v2 = *result;
    v3 = *(result + 8);
    if (*result != v3)
    {
      do
      {
        v4 = sub_10018290C(v1 + 1008);
        result = sub_10018290C(v1 + 1008);
        *(v2 + 56) = (v4 + result * 4294967300.0) * 5.42101086e-20 * 6.28318531 + 0.0;
        v2 += 96;
      }

      while (v2 != v3);
    }
  }

  return result;
}

void sub_1003EAF3C(uint64_t a1, uint64_t a2)
{
  sub_1003EAF80(a1 + 4040, a2);
  if (*(a1 + 3988) != 3 && *(a1 + 3944) == 1)
  {
    *(a1 + 3944) = 0;
  }
}

__n128 sub_1003EAF80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 16 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_1003EC0F8(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = (*(v6 + ((v8 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v8 & 0x7F));
  result = *a2;
  v11 = *(a2 + 16);
  *v9 = *a2;
  v9[1] = v11;
  ++*(a1 + 40);
  return result;
}

void sub_1003EB010(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 3988) != 3 && *(a1 + 4408) == 1)
  {
    sub_1003EAE88(a1);
  }

  v4 = (a1 + 4376);
  if (*(a1 + 4408) != 1)
  {
    v11 = *(a2 + 1);
    *v4 = *a2;
    *(a1 + 4392) = v11;
    goto LABEL_8;
  }

  v5 = *(a2 + 3) - *(a1 + 4400);
  v6 = *a2;
  v7 = *a2 - *(a1 + 4376);
  v8 = *(a1 + 3988) != 3;
  v12 = vsubq_f64(*(a2 + 1), *(a1 + 4384));
  v13 = v5;
  v14 = 1;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  sub_1003EB100(a1, &v12);
  *(a1 + 3988) = 3;
  v9 = *(a1 + 4408);
  v10 = *(a2 + 1);
  *v4 = *a2;
  *(a1 + 4392) = v10;
  if ((v9 & 1) == 0)
  {
LABEL_8:
    *(a1 + 4408) = 1;
  }
}

void sub_1003EB100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 > 0.0 && *(a1 + 24) == 1)
  {
    v5 = *(a2 + 32);
    v6 = sqrt(v2 / 0.1);
    v7 = v6 * *(a1 + 96);
    v35 = 0;
    v36 = v7;
    v37 = 0;
    if (*(a2 + 48) == 1 && !*(a2 + 24))
    {
      v36 = 1.0;
    }

    v8 = v6 * *(a1 + 112);
    v32 = 0;
    v33 = v8;
    v34 = 0;
    *(a1 + 3936) = v5;
    *(a1 + 3944) = 1;
    *(a1 + 3952) = v5;
    *(a1 + 3960) = 1;
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a2 + 40);
      v18 = *(a2 + 16);
      v19 = *(*a1 + 64);
      v20 = sub_1003EBB94(&v35, a1 + 1008, &v35);
      if ((*(a1 + 24) & 1) == 0)
      {
        goto LABEL_28;
      }

      v21 = v20;
      v22 = *a2;
      v23 = *(*a1 + 64);
      v24 = sub_1003EBB94(&v35, a1 + 1008, &v35);
      if ((*(a1 + 24) & 1) == 0)
      {
        goto LABEL_28;
      }

      v25 = **a1;
      v26 = *(*a1 + 56);
      v27 = *(*a1 + 64);
      v28 = *(*a1 + 16);
      v29 = *(*a1 + 24);
      v30 = *(*a1 + 32);
      v31 = *(*a1 + 40);
      *buf = 134220544;
      v39 = v17;
      v40 = 2048;
      v41 = v8;
      v42 = 2048;
      v43 = v21 + v18 * v19;
      v44 = 2048;
      v45 = v24 + v22 * v23;
      v46 = 2048;
      v47 = v25;
      v48 = 2048;
      v49 = v28;
      v50 = 2048;
      v51 = v26;
      v52 = 2048;
      v53 = v27;
      v54 = 2048;
      v55 = v31;
      v56 = 2048;
      v57 = v29;
      v58 = 2048;
      v59 = v30;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#sa_algo_particlefilter,example deltaT: %f, frameRotNoise: %f, deltaZ: %f, deltaX: %f, px: %f, pz: %f, framerot: %f, stepscale: %f, vel: %f, vx: %f, vz: %f", buf, 0x70u);
    }

    v10 = *(a2 + 8) + *(a1 + 3608);
    *(a1 + 3608) = v10;
    v11 = *(a1 + 3616);
    if (v10 < v11)
    {
      *(a1 + 3616) = v10;
      v11 = v10;
    }

    v12 = *(a1 + 3624);
    if (v10 > v12)
    {
      *(a1 + 3624) = v10;
      v12 = v10;
    }

    if (v12 - v11 > 1.0)
    {
      *(a1 + 3600) = 1;
    }

    if (*(a2 + 24))
    {
      v32 = 0;
      v33 = v6 * 0.01;
      v34 = 0;
      if (*(a1 + 24))
      {
        v13 = *a1;
        v14 = *(a1 + 8);
        while (v13 != v14)
        {
          sub_1003EB55C(a1, a2, v13, &v35, &v32, 0);
          v13 += 12;
        }

LABEL_22:
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004CC880();
        }

        return;
      }
    }

    else if (*(a1 + 24))
    {
      v15 = *a1;
      v16 = *(a1 + 8);
      while (v15 != v16)
      {
        sub_1003EB55C(a1, a2, v15, &v35, &v32, 1);
        v15 += 12;
      }

      goto LABEL_22;
    }

LABEL_28:
    sub_1000195BC();
  }
}

void sub_1003EB428(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  if (*(a1 + 4408) == 1)
  {
    *(a1 + 4408) = 0;
  }

  v12 = *(a1 + 4048);
  v13 = *(a1 + 4056);
  *(a1 + 4080) = 0;
  v14 = (v13 - v12) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v12 = (*(a1 + 4048) + 8);
      *(a1 + 4048) = v12;
      v14 = (*(a1 + 4056) - v12) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v15 = 64;
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v15 = 128;
  }

  *(a1 + 4072) = v15;
LABEL_10:
  if (*(a1 + 3988) == 3)
  {
    sub_1003EAE88(a1);
    v16 = *(a1 + 4408);
    a3 = 0.0;
    a2 = 0.3;
    if (v16 == 1)
    {
      *(a1 + 4408) = 0;
    }

    else
    {
      LOBYTE(v16) = 1;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  *(a1 + 3984) = 0x200000002;
  *v17 = a3;
  *&v17[1] = a4;
  *&v17[2] = a2;
  v18 = 0;
  v19 = a5;
  v20 = a6;
  v21 = v16;
  sub_1003EB100(a1, v17);
}

void sub_1003EB55C(uint64_t a1, double *a2, double *a3, double *a4, double *a5, int a6)
{
  v11 = *(a3 + 8);
  if (a6)
  {
    v12 = a3[8];
  }

  else
  {
    v12 = 1.0;
  }

  v13 = a2[2];
  v14 = sub_1003EBB94(a4, a1 + 1008, a4) + v13 * v12;
  v15 = *a2;
  v16 = sub_1003EBB94(a4, a1 + 1008, a4) + v15 * v12;
  v17 = __sincos_stret(a3[7]);
  *a3 = *a3 + v17.__cosval * v16 - v17.__sinval * v14;
  a3[2] = a3[2] + v14 * v17.__cosval + v17.__sinval * v16;
  a3[7] = sub_1003EBB94(a5, a1 + 1008, a5) + a3[7];
  v18 = a2[1] + a3[1];
  a3[1] = v18;
  v19 = sqrt(a2[5] / 0.1);
  v20 = *(a1 + 104);
  v23[0] = 0.0;
  v23[1] = v19 * v20;
  v24 = 0;
  a3[1] = v18 + sub_1003EBB94(v23, a1 + 1008, v23);
  v21 = a2[5];
  if (v21 > 0.01)
  {
    v22 = __sincos_stret(a3[7]);
    a3[3] = (v22.__cosval * v16 - v22.__sinval * v14) / v21;
    a3[4] = (v14 * v22.__cosval + v22.__sinval * v16) / v21;
  }
}

void sub_1003EB6C8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 16;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 32;
  }

  a1[4] = v6;
}

uint64_t sub_1003EB744(void **a1, uint64_t a2)
{
  sub_1003EB6C8(a1);
  sub_1003EB794(a1);
  result = sub_1003EB8F8(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_1003EB794(void **a1)
{
  if (a1[5])
  {
    sub_10017B5B8(a1, 0);
    sub_1003B068C(a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  sub_1003EB818(a1);
}

void sub_1003EB818(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_10016F098(a1, (v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_1003EB8F8(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_1003EB818(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

void *sub_1003EB960(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x49;
  v3 = v1 - 73;
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
    sub_10016F098(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10016EC70(a1, &v10);
}

void sub_1003EBAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003EBB34(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x49)
  {
    a2 = 1;
  }

  if (v2 < 0x92)
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
    *(a1 + 32) -= 73;
  }

  return v4 ^ 1u;
}

double sub_1003EBB94(uint64_t a1, uint64_t a2, double *a3)
{
  if (*(a1 + 24))
  {
    *(a1 + 24) = 0;
    v5 = *(a1 + 16);
  }

  else
  {
    do
    {
      do
      {
        v7 = sub_10018290C(a2);
        v8 = (v7 + sub_10018290C(a2) * 4294967300.0) * 5.42101086e-20 * 2.0 + -1.0;
        v9 = sub_10018290C(a2);
        v10 = (v9 + sub_10018290C(a2) * 4294967300.0) * 5.42101086e-20 * 2.0 + -1.0;
        v11 = v10 * v10 + v8 * v8;
      }

      while (v11 > 1.0);
    }

    while (v11 == 0.0);
    v12 = sqrt(log(v10 * v10 + v8 * v8) * -2.0 / v11);
    *(a1 + 16) = v10 * v12;
    *(a1 + 24) = 1;
    v5 = v8 * v12;
  }

  return *a3 + v5 * a3[1];
}

void *sub_1003EBCA8(void *a1)
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
    sub_10016F098(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10016EC70(a1, &v10);
}

void sub_1003EBE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003EBE7C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013B04();
}

void *sub_1003EBED4(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 5) < a4)
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

    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 5);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x155555555555555)
      {
        v11 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_1003EC030(v6, v11);
    }

    sub_100019B38();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 5) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_1003EC030(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_1003EBE7C(a1, a2);
  }

  sub_100019B38();
}

uint64_t sub_1003EC07C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003EC030(result, a4);
  }

  return result;
}

void sub_1003EC0DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003EC0F8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
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
    sub_10016F098(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10016EC70(a1, &v10);
}

void sub_1003EC280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1003EC2CC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1003EC030(result, a2);
  }

  return result;
}

void sub_1003EC34C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003EC368(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x80)
  {
    a2 = 1;
  }

  if (v2 < 0x100)
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
    *(a1 + 32) -= 128;
  }

  return v4 ^ 1u;
}

void sub_1003EC408(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x2Au);
}

uint64_t sub_1003EC428()
{
  v1 = xmmword_100571340;
  v2[0] = unk_100571350;
  v2[1] = xmmword_100571360;
  v2[2] = unk_100571370;
  qword_1009F8510 = 0;
  unk_1009F8518 = 0;
  qword_1009F8508 = 0;
  sub_10004EEB8(&qword_1009F8508, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F8508, &_mh_execute_header);
  v1 = xmmword_100571380;
  qword_1009F8528 = 0;
  unk_1009F8530 = 0;
  qword_1009F8520 = 0;
  sub_10004EEB8(&qword_1009F8520, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F8520, &_mh_execute_header);
}

uint64_t sub_1003EC52C(uint64_t a1, uint64_t a2, _OWORD *a3, double a4, double a5)
{
  v17 = a4;
  if (*(a1 + 72) != 1)
  {
    v9 = 0;
    v8 = 0.0;
    goto LABEL_5;
  }

  v8 = a5 - *(a1 + 64);
  v9 = 1;
  if (v8 > 0.0)
  {
LABEL_5:
    *(a1 + 64) = a5;
    *(a1 + 72) = 1;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 8);
  sub_1003EC63C((a1 + 16), &v17);
  if (v10 >= v11)
  {
    --*(a1 + 56);
    sub_1001FC820((a1 + 16), 1);
  }

  v12 = a3[3];
  v16[2] = a3[2];
  v16[3] = v12;
  v13 = a3[5];
  v16[4] = a3[4];
  v16[5] = v13;
  v14 = a3[1];
  v16[0] = *a3;
  v16[1] = v14;
  return (*(*a1 + 40))(a1, COERCE_DOUBLE(*&v8), v9, a2, v16, v17);
}

double sub_1003EC63C(void *a1, double *a2)
{
  v4 = a1[4];
  if (!v4)
  {
    sub_1003EF978(a1);
    v4 = a1[4];
  }

  v5 = a1[1];
  v6 = (v5 + 8 * (v4 >> 9));
  if (a1[2] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 8 * (v4 & 0x1FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  result = *a2;
  *(v7 - 8) = *a2;
  v9 = a1[5] + 1;
  a1[4] = v4 - 1;
  a1[5] = v9;
  return result;
}

double sub_1003EC6C8(void *a1, double result)
{
  v2 = a1[7];
  if (v2 >= 2)
  {
    v3 = a1[3];
    if (a1[4] == v3)
    {
      v11 = 0.0;
    }

    else
    {
      v4 = a1[6];
      v5 = (v3 + 8 * (v4 >> 9));
      v6 = *v5;
      v7 = v4 + v2;
      v8 = *(v3 + (((v4 + v2) >> 6) & 0x3FFFFFFFFFFFFF8));
      v9 = &(*v5)[v4 & 0x1FF];
      v10 = (v8 + 8 * (v7 & 0x1FF));
      v11 = 0.0;
      v12 = 0.0;
      if (v9 != v10)
      {
        v13 = &(*v5)[a1[6] & 0x1FFLL];
        v14 = v5;
        do
        {
          v15 = *v13++;
          v16 = v15;
          if (v13 - v6 == 4096)
          {
            v17 = v14[1];
            ++v14;
            v6 = v17;
            v13 = v17;
          }

          v12 = v12 + v16;
        }

        while (v13 != v10);
      }

      if (v9 != v10)
      {
        v18 = v12 / v2;
        v19 = *v5;
        v11 = 0.0;
        do
        {
          v20 = *v9++;
          v21 = v20;
          if (v9 - v19 == 4096)
          {
            v22 = v5[1];
            ++v5;
            v19 = v22;
            v9 = v22;
          }

          v11 = v11 + (v21 - v18) * (v21 - v18);
        }

        while (v9 != v10);
      }
    }

    return sqrt(v11 / (v2 - 1));
  }

  return result;
}

uint64_t sub_1003EC7BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 160);
  *(a1 + 16) = 0u;
  *(a1 + 8) = v3;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *a1 = off_1009AA160;
  v4 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v4;
  v12 = *(a2 + 160);
  v5 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v5;
  v6 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v6;
  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v8 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v8;
  v9 = sub_1003EC904(v11, a1 + 80);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0x4059000000000000;
  (*(*a1 + 32))(a1, v9);
  return a1;
}

void sub_1003EC8BC(_Unwind_Exception *a1)
{
  v4 = v1[37];
  if (v4)
  {
    v1[38] = v4;
    operator delete(v4);
  }

  *v1 = off_1009AA220;
  sub_100188E54(v2);
  _Unwind_Resume(a1);
}

__n128 sub_1003EC904@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 32) >= 0.0 || *(a1 + 24) <= 0.0 || *(a1 + 16) < 0.0 || *(a1 + 8) < 0.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid OneStateKalmanFilterParams parameter: innovNegThresholdStd must be negative, innovPosThresholdStd must be positive, measStd cannot be negative, processStd cannot be negative.");
    goto LABEL_8;
  }

  if (!*(a1 + 64))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid nStartupMeasurements paramter: must be greater than 0");
LABEL_8:
  }

  v2 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v2;
  *(a2 + 160) = *(a1 + 160);
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  v4 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v4;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

unint64_t sub_1003EC9F8(uint64_t a1, uint64_t a2, char a3, int a4, double a5)
{
  v6 = a5;
  v46 = a5;
  if (a3)
  {
    if (*&a2 >= 0.0)
    {
      if (*&a2 > *(a1 + 152))
      {
        v8 = *(a1 + 144);
        v9 = qword_1009F9820;
        v10 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
        if (v8 >= 2)
        {
          if (v10)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Filter reset after timeout, gathering startup measurements", buf, 2u);
          }

          *(a1 + 304) = *(a1 + 296);
          v11 = *(a1 + 24);
          v12 = *(a1 + 32);
          *(a1 + 56) = 0;
          v13 = (v12 - v11) >> 3;
          if (v13 >= 3)
          {
            do
            {
              operator delete(*v11);
              v14 = *(a1 + 32);
              v11 = (*(a1 + 24) + 8);
              *(a1 + 24) = v11;
              v13 = (v14 - v11) >> 3;
            }

            while (v13 > 2);
          }

          if (v13 == 1)
          {
            v15 = 256;
          }

          else
          {
            if (v13 != 2)
            {
              goto LABEL_36;
            }

            v15 = 512;
          }

          *(a1 + 48) = v15;
LABEL_36:
          *(a1 + 320) = 1;
          sub_100009734((a1 + 296), &v46);
          if (*(a1 + 256) == 1)
          {
            *(a1 + 256) = 0;
          }

          goto LABEL_52;
        }

        if (!v10)
        {
LABEL_32:
          *(a1 + 264) = *(a1 + 328);
          *(a1 + 272) = 1;
          *(a1 + 248) = v6;
          *(a1 + 256) = 1;
          v17 = v6;
LABEL_53:
          v18 = *&v17 & 0xFFFFFFFFFFFFFF00;
          return v18 | LOBYTE(v17);
        }

        *buf = 0;
        v20 = "Filter reset after timeout, startup filtering not enabled";
        v21 = v9;
        v22 = 2;
LABEL_31:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
        v6 = v46;
        goto LABEL_32;
      }

      if (*(a1 + 320) != 1)
      {
        sub_1003ECE34(a1, *&a2);
        sub_1003ECECC(a1, v6);
LABEL_52:
        v17 = *(a1 + 248);
        v44 = *(a1 + 256);
        goto LABEL_53;
      }

      v23 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "acquiring startup measurements", buf, 2u);
      }

      sub_100009734((a1 + 296), &v46);
      v24 = *(a1 + 296);
      v25 = *(a1 + 304);
      v26 = v25 - v24;
      if (v26 < *(a1 + 144) && !a4)
      {
        goto LABEL_52;
      }

      v27 = 0.0;
      if (v24 != v25)
      {
        v28 = *(a1 + 296);
        do
        {
          v29 = *v28++;
          v27 = v27 + v29;
        }

        while (v28 != v25);
      }

      std::__sort<std::__less<double,double> &,double *>();
      v31 = *(a1 + 296);
      v30 = *(a1 + 304);
      v32 = &v31[(v30 - v31) >> 4];
      if (((v30 - v31) & 8) != 0)
      {
        v33 = *v32;
      }

      else
      {
        v33 = (*(v32 - 1) + *v32) * 0.5;
      }

      v34 = v30 - v31;
      if (v31 == v30)
      {
        v35 = 0.0;
      }

      else
      {
        v35 = 0.0;
        do
        {
          v36 = *v31++;
          v35 = v35 + (v36 - v27 / v26) * (v36 - v27 / v26);
        }

        while (v31 != v30);
      }

      v37 = v35 / (v34 - 1);
      if ((a4 & 1) != 0 && (v38 = *(a1 + 144), v34 < v38))
      {
        v39 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v48 = v38;
          v40 = "filter initialized by override before all %llu startup measurements were received";
          v41 = v39;
          v42 = 12;
LABEL_50:
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v40, buf, v42);
        }
      }

      else
      {
        v43 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v40 = "filter initialized with startup measurements";
          v41 = v43;
          v42 = 2;
          goto LABEL_50;
        }
      }

      *(a1 + 304) = *(a1 + 296);
      *(a1 + 320) = 0;
      *(a1 + 248) = v33;
      *(a1 + 256) = 1;
      *(a1 + 264) = v37;
      *(a1 + 272) = 1;
      goto LABEL_52;
    }
  }

  else
  {
    v16 = *(a1 + 144);
    if (v16 < 2 || (a4 & 1) != 0)
    {
      if (!a4)
      {
        goto LABEL_32;
      }

      v19 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 134217984;
      v48 = v16;
      v20 = "filter initialized by override before all %llu startup measurements were received";
      v21 = v19;
      v22 = 12;
      goto LABEL_31;
    }

    *(a1 + 304) = *(a1 + 296);
    *(a1 + 320) = 1;
    sub_100009734((a1 + 296), &v46);
  }

  LOBYTE(v17) = 0;
  v18 = 0;
  return v18 | LOBYTE(v17);
}

void sub_1003ECE34(uint64_t a1, double a2)
{
  if (*(a1 + 272) == 1 && (*(a1 + 256) & 1) != 0)
  {
    v2 = *(a1 + 120);
    *(a1 + 248) = v2 * *(a1 + 248);
    *(a1 + 256) = 1;
    *(a1 + 264) = *(a1 + 88) * (*(a1 + 88) * a2) + v2 * *(a1 + 264) * v2;
    *(a1 + 272) = 1;
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CC9EC();
  }
}

void sub_1003ECECC(uint64_t a1, double a2)
{
  if (*(a1 + 272) == 1 && (*(a1 + 256) & 1) != 0)
  {
    v2 = *(a1 + 128);
    v3 = *(a1 + 264);
    v4 = v2 * v3;
    v5 = *(a1 + 96) * *(a1 + 96) + v2 * v3 * v2;
    if (v5 <= 0.0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004CCA20();
      }
    }

    else
    {
      v6 = *(a1 + 248);
      v7 = a2 - v2 * v6;
      v8 = v7 * v7 / v5;
      if (v7 < 0.0)
      {
        v8 = -v8;
      }

      if (v8 <= -(*(a1 + 112) * *(a1 + 112)) || v8 >= *(a1 + 104) * *(a1 + 104) || *(a1 + 136) >= a2)
      {
        v9 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Estimator: Measurement failed innovation check and will be rejected", v10, 2u);
        }
      }

      else
      {
        *(a1 + 248) = v6 + v4 / v5 * v7;
        *(a1 + 256) = 1;
        *(a1 + 264) = v3 * (1.0 - v4 / v5 * v2);
        *(a1 + 272) = 1;
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CC9EC();
  }
}