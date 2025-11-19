void sub_1002A5080(void *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 170 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  v9 = v6 - v8;
  v10 = a2 > v9;
  v11 = a2 - v9;
  if (v10)
  {
    sub_1002A54FC(a1, v11);
    v7 = a1[5];
    v4 = a1[1];
    v5 = a1[2];
    v8 = a1[4] + v7;
  }

  v12 = (v4 + 8 * (v8 / 0xAA));
  if (v5 != v4)
  {
    v13 = (*v12 + 24 * (v8 % 0xAA));
    v14 = v13;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_13:
    v16 = (v4 + 8 * (v8 / 0xAA));
    if (v13 != v14)
    {
      goto LABEL_16;
    }

    return;
  }

  v13 = 0;
  v14 = 0;
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_9:
  v15 = a2 - 0x5555555555555555 * ((v14 - *v12) >> 3);
  if (v15 < 1)
  {
    v17 = 169 - v15;
    v16 = &v12[-(v17 / 0xAA)];
    v14 = *v16 + 24 * (170 * (v17 / 0xAA) - v17) + 4056;
    if (v13 != v14)
    {
      do
      {
LABEL_16:
        v18 = v14;
        if (v12 != v16)
        {
          v18 = *v12 + 4080;
        }

        if (v13 == v18)
        {
          a1[5] = v7;
          if (v12 == v16)
          {
            return;
          }
        }

        else
        {
          v19 = 24 * ((v18 - v13 - 24) / 0x18uLL) + 24;
          bzero(v13, v19);
          v7 = a1[5] - 0x5555555555555555 * (v19 >> 3);
          a1[5] = v7;
          if (v12 == v16)
          {
            return;
          }
        }

        v20 = v12[1];
        ++v12;
        v13 = v20;
      }

      while (v20 != v14);
    }
  }

  else
  {
    v16 = &v12[v15 / 0xAAuLL];
    v14 = *v16 + 24 * (v15 % 0xAAuLL);
    if (v13 != v14)
    {
      goto LABEL_16;
    }
  }
}

void sub_1002A5288(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v4 = a1[5];
  v7 = a1[1];
  v6 = a1[2];
  v8 = (v7 + 8 * ((v5 + v4) / 0xAA));
  if (v6 == v7)
  {
    v9 = 0;
    if (!a3)
    {
      return;
    }
  }

  else
  {
    v9 = *v8 + 24 * ((v5 + v4) % 0xAA);
    if (v9 == a3)
    {
      return;
    }
  }

  v10 = 170 * (v8 - a2) - 0x5555555555555555 * ((v9 - *v8) >> 3);
  v11 = (a3 - *a2) >> 3;
  v12 = v10 + 0x5555555555555555 * v11;
  if (v12 < 1)
  {
    return;
  }

  v13 = (v7 + 8 * (v5 / 0xAA));
  if (v6 == v7)
  {
    v14 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = *v13 + 24 * (v5 % 0xAA);
    if (a3 == v14)
    {
LABEL_13:
      if (v14 == v9)
      {
        goto LABEL_23;
      }

      do
      {
LABEL_18:
        v20 = *v14;
        if (*v14)
        {
          *(v14 + 8) = v20;
          operator delete(v20);
        }

        v14 += 24;
        if (v14 - *v13 == 4080)
        {
          v21 = v13[1];
          ++v13;
          v14 = v21;
        }
      }

      while (v14 != v9);
      v7 = a1[1];
      v6 = a1[2];
      v5 = a1[4];
      v4 = a1[5];
      goto LABEL_23;
    }
  }

  v15 = 170 * (a2 - v13) - 0x5555555555555555 * v11;
  v16 = (v14 - *v13) >> 3;
  v17 = v15 + 0x5555555555555555 * v16;
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17 - 0x5555555555555555 * v16;
  if (v18 >= 1)
  {
    v13 += v18 / 0xAAuLL;
    v14 = *v13 + 24 * (v18 % 0xAAuLL);
    goto LABEL_13;
  }

  v19 = 169 - v18;
  v13 -= v19 / 0xAA;
  v14 = *v13 + 24 * (170 * (v19 / 0xAA) - v19) + 4056;
  if (v14 != v9)
  {
    goto LABEL_18;
  }

LABEL_23:
  if (v6 == v7)
  {
    v22 = 0;
  }

  else
  {
    v22 = 170 * ((v6 - v7) >> 3) - 1;
  }

  v23 = v4 - v12;
  a1[5] = v23;
  if (v22 - (v23 + v5) >= 0x154)
  {
    do
    {
      operator delete(*(v6 - 8));
      v6 = a1[2] - 8;
      v24 = v6 == a1[1];
      v25 = 170 * ((v6 - a1[1]) >> 3) - 1;
      a1[2] = v6;
      if (v24)
      {
        v25 = 0;
      }
    }

    while ((v25 - (a1[5] + a1[4])) > 0x153);
  }
}

void *sub_1002A54FC(void *result, unint64_t a2)
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

  if (v4 % 0xAA)
  {
    v5 = v4 / 0xAA + 1;
  }

  else
  {
    v5 = v4 / 0xAA;
  }

  v6 = result[4];
  if (v5 >= v6 / 0xAA)
  {
    v7 = v6 / 0xAA;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0xAA)
  {
    for (result[4] = v6 - 170 * v7; v7; --v7)
    {
      v12 = v2[1];
      v14 = *v12;
      v2[1] = v12 + 1;
      result = sub_1001C7D6C(v2, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        sub_10000D444();
      }

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

    for (result[4] -= 170 * v7; v7; --v7)
    {
      v13 = v2[1];
      v14 = *v13;
      v2[1] = v13 + 1;
      result = sub_1001C7D6C(v2, &v14);
    }
  }

  return result;
}

void sub_1002A5BB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A5C20(uint64_t a1)
{
  sub_1002941F4(a1 + 56, *(a1 + 64));
  sub_100294190(a1 + 32, *(a1 + 40));
  return a1;
}

void sub_1002A5C5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = v8 - *a1;
  if (v8 == *a1)
  {
    goto LABEL_14;
  }

  memset(&v51[6], 255, 24);
  v10 = 0.0;
  if (v9 >= 0x40)
  {
    v11 = v7 + 2;
    if (v7 + 2 != v8)
    {
      v12 = v9 - 32;
      if (v12 > 0x2F)
      {
        v15 = (v12 >> 4) + 1;
        v16 = 2 * (v15 & 0x1FFFFFFFFFFFFFFCLL);
        v11 = (v11 + v16 * 8);
        v14 = &v7[v16];
        v17 = v7 + 4;
        v13 = 0.0;
        v18 = v15 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v19 = v17 - 4;
          v52 = vld2q_f64(v19);
          v54 = vld2q_f64(v17);
          v20 = v17 - 2;
          v21 = v17 + 2;
          v56 = vld2q_f64(v20);
          v58 = vld2q_f64(v21);
          v52.val[0] = vmulq_f64(vaddq_f64(v52.val[0], v56.val[0]), vsubq_f64(v52.val[1], v56.val[1]));
          v52.val[1] = vmulq_f64(vaddq_f64(v54.val[0], v58.val[0]), vsubq_f64(v54.val[1], v58.val[1]));
          v13 = v13 + v52.val[0].f64[0] + v52.val[0].f64[1] + v52.val[1].f64[0] + v52.val[1].f64[1];
          v17 += 8;
          v18 -= 4;
        }

        while (v18);
        if (v15 == (v15 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = 0.0;
        v14 = *a1;
      }

      do
      {
        v22 = *v11;
        v11 += 2;
        v13 = v13 + (*v14 + v22) * (v14[1] - v14[3]);
        v14 += 2;
      }

      while (v11 != v8);
LABEL_10:
      v10 = v13 * 0.5;
    }
  }

  v24 = *v7;
  v23 = *(v7 + 1);
  v25 = sub_1002A6E6C(a4, a3);
  *(v25 + 56) = 1;
  v25[8] = v24;
  v25[9] = v23;
  *(v25 + 10) = v10;
  *(v25 + 44) = 0;
  *(v25 + 90) = *v51;
  *(v25 + 13) = *&v51[14];
  v25[15] = 0xBFF0000000000000;
  v27 = v25 + 16;
  v26 = v25[16];
  if (v26)
  {
    v25[17] = v26;
    operator delete(v26);
  }

  *v27 = 0;
  v27[1] = 0;
  v27[2] = 0;
LABEL_14:
  v29 = *(a1 + 24);
  v28 = *(a1 + 32);
  if (v29 != v28)
  {
    while (1)
    {
      ++a3[2];
      v30 = *v29;
      v31 = v29[1];
      v32 = v31 - *v29;
      if (v31 != *v29)
      {
        break;
      }

LABEL_17:
      v29 += 3;
      if (v29 == v28)
      {
        return;
      }
    }

    v33 = 0.0;
    memset(&v51[6], 255, 24);
    if (v32 < 0x40 || (v34 = v30 + 2, v30 + 2 == v31))
    {
LABEL_28:
      v47 = *v30;
      v46 = *(v30 + 1);
      v48 = sub_1002A6E6C(a4, a3);
      *(v48 + 56) = 1;
      v48[8] = v47;
      v48[9] = v46;
      *(v48 + 10) = v33;
      *(v48 + 44) = 0;
      *(v48 + 90) = *v51;
      *(v48 + 13) = *&v51[14];
      v48[15] = 0xBFF0000000000000;
      v50 = v48 + 16;
      v49 = v48[16];
      if (v49)
      {
        v48[17] = v49;
        operator delete(v49);
      }

      *v50 = 0;
      v50[1] = 0;
      v50[2] = 0;
      v28 = *(a1 + 32);
      goto LABEL_17;
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
        v53 = vld2q_f64(v42);
        v55 = vld2q_f64(v40);
        v43 = v40 - 2;
        v44 = v40 + 2;
        v57 = vld2q_f64(v43);
        v59 = vld2q_f64(v44);
        v53.val[0] = vmulq_f64(vaddq_f64(v53.val[0], v57.val[0]), vsubq_f64(v53.val[1], v57.val[1]));
        v53.val[1] = vmulq_f64(vaddq_f64(v55.val[0], v59.val[0]), vsubq_f64(v55.val[1], v59.val[1]));
        v36 = v36 + v53.val[0].f64[0] + v53.val[0].f64[1] + v53.val[1].f64[0] + v53.val[1].f64[1];
        v40 += 8;
        v41 -= 4;
      }

      while (v41);
      if (v38 == (v38 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v36 = 0.0;
      v37 = *v29;
    }

    do
    {
      v45 = *v34;
      v34 += 2;
      v36 = v36 + (*v37 + v45) * (v37[1] - v37[3]);
      v37 += 2;
    }

    while (v34 != v31);
LABEL_27:
    v33 = v36 * 0.5;
    goto LABEL_28;
  }
}

void sub_1002A5FF8(uint64_t *a1, uint64_t **a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = (a5 + 8);
  sub_1002A6A9C(a5, *(a5 + 8));
  *a5 = v9;
  v35 = a5;
  *(a5 + 16) = 0;
  *v9 = 0;
  v12 = *a4;
  v10 = a4 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    v13 = (a3 + 8);
    do
    {
      v14 = v11[4];
      v15 = *v13;
      if (!*v13)
      {
        goto LABEL_25;
      }

      v17 = v11[5];
      v16 = v11[6];
      v18 = v13;
      do
      {
        v22 = v15[4];
        v23 = v22 < v14;
        if (v22 == v14)
        {
          v24 = v15[5];
          v23 = v24 < v17;
          if (v24 == v17)
          {
            v23 = v15[6] < v16;
          }
        }

        v19 = v23;
        v20 = v19 == 0;
        if (v19)
        {
          v21 = 1;
        }

        else
        {
          v21 = 0;
        }

        if (v20)
        {
          v18 = v15;
        }

        v15 = v15[v21];
      }

      while (v15);
      if (v18 == v13)
      {
        goto LABEL_25;
      }

      v25 = v18[4];
      v26 = v14 < v25;
      if (v14 == v25)
      {
        v27 = v18[5];
        v26 = v17 < v27;
        if (v17 == v27)
        {
          v26 = v16 < v18[6];
        }
      }

      if (v26)
      {
LABEL_25:
        v28 = 0;
        if (v14 == 1)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v18[7] & 1) != 0 || (*(v18 + 57))
        {
          goto LABEL_39;
        }

        v28 = *(v18 + 58);
        if (v14 == 1)
        {
LABEL_33:
          v29 = sub_1002A6898(v11 + 8, a2, a1);
          goto LABEL_34;
        }
      }

      if (v14)
      {
        if ((v28 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_39;
      }

      v29 = sub_1002A6698(v11 + 8, a1, a2);
LABEL_34:
      if (v29 <= 0)
      {
LABEL_35:
        v37 = *(v11 + 7);
        v38 = *(v11 + 9);
        v39 = *(v11 + 89);
        *v40 = *(v11 + 105);
        v30 = v11[16];
        *&v40[15] = v11[15];
        v31 = v11[17];
        if (v31 != v30)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3) < 0xAAAAAAAAAAAAAABLL)
          {
            operator new();
          }

          sub_10000FC84();
        }

        v32 = sub_1002A6E6C(v35, v11 + 4);
        *(v32 + 7) = v37;
        *(v32 + 9) = v38;
        *(v32 + 88) = 0;
        *(v32 + 89) = v39;
        *(v32 + 105) = *v40;
        v32[15] = *&v40[15];
        sub_1002A6CDC(v32 + 16, 0, 0, 0);
      }

LABEL_39:
      v33 = v11[1];
      if (v33)
      {
        do
        {
          v34 = v33;
          v33 = *v33;
        }

        while (v33);
      }

      else
      {
        do
        {
          v34 = v11[2];
          v20 = *v34 == v11;
          v11 = v34;
        }

        while (!v20);
      }

      v11 = v34;
    }

    while (v34 != v10);
  }
}

void sub_1002A62D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A62FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = v8 - *a1;
  if (v8 == *a1)
  {
    goto LABEL_14;
  }

  memset(&v51[6], 255, 24);
  v10 = 0.0;
  if (v9 >= 0x40)
  {
    v11 = v7 + 2;
    if (v7 + 2 != v8)
    {
      v12 = v9 - 32;
      if (v12 > 0x2F)
      {
        v15 = (v12 >> 4) + 1;
        v16 = 2 * (v15 & 0x1FFFFFFFFFFFFFFCLL);
        v11 = (v11 + v16 * 8);
        v14 = &v7[v16];
        v17 = v7 + 4;
        v13 = 0.0;
        v18 = v15 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v19 = v17 - 4;
          v52 = vld2q_f64(v19);
          v54 = vld2q_f64(v17);
          v20 = v17 - 2;
          v21 = v17 + 2;
          v56 = vld2q_f64(v20);
          v58 = vld2q_f64(v21);
          v52.val[0] = vmulq_f64(vaddq_f64(v52.val[0], v56.val[0]), vsubq_f64(v52.val[1], v56.val[1]));
          v52.val[1] = vmulq_f64(vaddq_f64(v54.val[0], v58.val[0]), vsubq_f64(v54.val[1], v58.val[1]));
          v13 = v13 + v52.val[0].f64[0] + v52.val[0].f64[1] + v52.val[1].f64[0] + v52.val[1].f64[1];
          v17 += 8;
          v18 -= 4;
        }

        while (v18);
        if (v15 == (v15 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = 0.0;
        v14 = *a1;
      }

      do
      {
        v22 = *v11;
        v11 += 2;
        v13 = v13 + (*v14 + v22) * (v14[1] - v14[3]);
        v14 += 2;
      }

      while (v11 != v8);
LABEL_10:
      v10 = v13 * 0.5;
    }
  }

  v24 = *v7;
  v23 = *(v7 + 1);
  v25 = sub_1002A6E6C(a4, a3);
  *(v25 + 56) = 1;
  v25[8] = v24;
  v25[9] = v23;
  *(v25 + 10) = v10;
  *(v25 + 44) = 0;
  *(v25 + 90) = *v51;
  *(v25 + 13) = *&v51[14];
  v25[15] = 0xBFF0000000000000;
  v27 = v25 + 16;
  v26 = v25[16];
  if (v26)
  {
    v25[17] = v26;
    operator delete(v26);
  }

  *v27 = 0;
  v27[1] = 0;
  v27[2] = 0;
LABEL_14:
  v29 = *(a1 + 24);
  v28 = *(a1 + 32);
  if (v29 != v28)
  {
    while (1)
    {
      ++a3[2];
      v30 = *v29;
      v31 = v29[1];
      v32 = v31 - *v29;
      if (v31 != *v29)
      {
        break;
      }

LABEL_17:
      v29 += 3;
      if (v29 == v28)
      {
        return;
      }
    }

    v33 = 0.0;
    memset(&v51[6], 255, 24);
    if (v32 < 0x40 || (v34 = v30 + 2, v30 + 2 == v31))
    {
LABEL_28:
      v47 = *v30;
      v46 = *(v30 + 1);
      v48 = sub_1002A6E6C(a4, a3);
      *(v48 + 56) = 1;
      v48[8] = v47;
      v48[9] = v46;
      *(v48 + 10) = v33;
      *(v48 + 44) = 0;
      *(v48 + 90) = *v51;
      *(v48 + 13) = *&v51[14];
      v48[15] = 0xBFF0000000000000;
      v50 = v48 + 16;
      v49 = v48[16];
      if (v49)
      {
        v48[17] = v49;
        operator delete(v49);
      }

      *v50 = 0;
      v50[1] = 0;
      v50[2] = 0;
      v28 = *(a1 + 32);
      goto LABEL_17;
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
        v53 = vld2q_f64(v42);
        v55 = vld2q_f64(v40);
        v43 = v40 - 2;
        v44 = v40 + 2;
        v57 = vld2q_f64(v43);
        v59 = vld2q_f64(v44);
        v53.val[0] = vmulq_f64(vaddq_f64(v53.val[0], v57.val[0]), vsubq_f64(v53.val[1], v57.val[1]));
        v53.val[1] = vmulq_f64(vaddq_f64(v55.val[0], v59.val[0]), vsubq_f64(v55.val[1], v59.val[1]));
        v36 = v36 + v53.val[0].f64[0] + v53.val[0].f64[1] + v53.val[1].f64[0] + v53.val[1].f64[1];
        v40 += 8;
        v41 -= 4;
      }

      while (v41);
      if (v38 == (v38 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v36 = 0.0;
      v37 = *v29;
    }

    do
    {
      v45 = *v34;
      v34 += 2;
      v36 = v36 + (*v37 + v45) * (v37[1] - v37[3]);
      v37 += 2;
    }

    while (v34 != v31);
LABEL_27:
    v33 = v36 * 0.5;
    goto LABEL_28;
  }
}

uint64_t sub_1002A6698(double *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3 == a3[1])
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    result = sub_100272884(a1, v3);
    if ((result & 0x80000000) == 0)
    {
      break;
    }

    v3 += 48;
    if (v3 == a3[1])
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (!result)
  {
    v8 = a2[1];
    v9 = a2[3];
    v10 = a2[4];
    if (v9 == v10)
    {
      v20 = 0;
      v15 = *a2;
      if (*a2 != v8)
      {
LABEL_23:
        v15 += 16;
        goto LABEL_24;
      }
    }

    else
    {
      v11 = a2[3];
      do
      {
        v12 = *v11;
        v13 = v11[1];
        v11 += 3;
      }

      while (v12 == v13 && v11 != v10);
      v15 = *a2;
      v16 = a2[3];
      do
      {
        v17 = *v16;
        v18 = v16[1];
        v16 += 3;
      }

      while (v17 == v18 && v16 != v10);
      do
      {
        v20 = *v9;
        if (*v9 != v9[1])
        {
          if (v15 == v8)
          {
            goto LABEL_45;
          }

          goto LABEL_23;
        }

        v9 += 3;
      }

      while (v9 != v10);
      v20 = 0;
      if (v15 != v8)
      {
        goto LABEL_23;
      }
    }

LABEL_45:
    if (v9 == v10)
    {
      return 0;
    }

    v20 += 16;
    if (v20 == v9[1])
    {
      while (1)
      {
        v9 += 3;
        if (v9 == v10)
        {
          break;
        }

        if (*v9 != v9[1])
        {
          v20 = *v9;
          break;
        }
      }
    }

LABEL_24:
    v21 = v15 == v8;
    if (v9 != v10 || v15 != v8)
    {
      while (1)
      {
        v23 = (v21 ? v20 : v15);
        v22 = *a3;
        if (*a3 == a3[1])
        {
          return 0xFFFFFFFFLL;
        }

        while (1)
        {
          result = sub_100272884(v23, v22);
          if ((result & 0x80000000) == 0)
          {
            break;
          }

          v22 += 48;
          if (v22 == a3[1])
          {
            return 0xFFFFFFFFLL;
          }
        }

        if (!result)
        {
          if (v21)
          {
            v20 += 16;
            if (v20 == v9[1])
            {
              while (1)
              {
                v9 += 3;
                if (v9 == v10)
                {
                  break;
                }

                if (*v9 != v9[1])
                {
                  v20 = *v9;
                  break;
                }
              }
            }
          }

          else
          {
            v15 += 16;
          }

          v21 = v15 == v8;
          if (v15 != v8)
          {
            continue;
          }

          result = 0;
          if (v9 != v10)
          {
            continue;
          }
        }

        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1002A6898(double *a1, uint64_t **a2, uint64_t a3)
{
  result = sub_100272884(a1, a3);
  if (result)
  {
    return result;
  }

  v6 = *a2;
  v7 = a2[1];
  while (1)
  {
    if (v6 == v7)
    {
      v16 = 0;
      v24 = 0;
      v9 = 0;
      v22 = 0;
      v10 = 0;
      v23 = 0;
      v17 = 0;
      goto LABEL_43;
    }

    v10 = v6[3];
    v9 = v6[4];
    v11 = v10;
    if (v10 != v9)
    {
      v12 = v6[3];
      do
      {
        v13 = *v12;
        v14 = v12[1];
        v12 += 3;
      }

      while (v13 == v14 && v12 != v9);
      v11 = v6[3];
      while (*v11 == v11[1])
      {
        v11 += 3;
        if (v11 == v9)
        {
          v11 = v6[4];
          break;
        }
      }
    }

    v17 = *v6;
    v16 = v6[1];
    if (v10 != v9)
    {
      break;
    }

    if (v17 != v16 || v11 != v10)
    {
      v22 = 0;
      v23 = 0;
      v24 = v6[3];
      goto LABEL_39;
    }

LABEL_9:
    v6 += 6;
  }

  v18 = v6[3];
  do
  {
    v19 = *v18;
    v20 = v18[1];
    v18 += 3;
  }

  while (v19 == v20 && v18 != v9);
  if (v17 == v16 && v11 == v9)
  {
    goto LABEL_9;
  }

  v24 = v6[3];
  do
  {
    v22 = *v24;
    if (*v24 != v24[1])
    {
      goto LABEL_35;
    }

    v24 += 3;
  }

  while (v24 != v9);
  v22 = 0;
  v24 = v6[4];
LABEL_35:
  while (1)
  {
    v23 = *v10;
    if (*v10 != v10[1])
    {
      break;
    }

    v10 += 3;
    if (v10 == v9)
    {
      v23 = 0;
      v10 = v6[4];
      break;
    }
  }

LABEL_39:
  if (v24 == v9)
  {
    v22 = 0;
  }

  if (v10 == v9)
  {
    v23 = 0;
  }

LABEL_43:
  v27 = v6;
  v28 = v7;
  v29 = v17;
  v30 = v16;
  v31 = v24;
  v32 = v9;
  v33 = v22;
  v34 = v10;
  v35 = v9;
  v36 = v23;
  if (v6 == v7)
  {
    return 0;
  }

  do
  {
    sub_1002A6B00(&v27);
    if (v27 == v7)
    {
      if (v7 == v28)
      {
        return 0;
      }

      v25 = v29;
      if (!v29)
      {
        if (!v34)
        {
          result = 0;
          if (!v35 || !v36)
          {
            return result;
          }
        }

        v25 = 0;
      }
    }

    else
    {
      v25 = v29;
    }

    if (v25 == v30)
    {
      v26 = v36;
    }

    else
    {
      v26 = v25;
    }

    result = sub_100272884(v26, a3);
  }

  while (!result);
  return result;
}

void sub_1002A6A9C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002A6A9C(a1, *a2);
    sub_1002A6A9C(a1, a2[1]);
    v4 = a2[16];
    if (v4)
    {
      a2[17] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t **sub_1002A6B00(uint64_t **result)
{
  v1 = result[2];
  if (v1 == result[3])
  {
    v2 = (result[9] + 2);
    result[9] = v2;
    v3 = result[7];
    if (v2 == v3[1])
    {
      v26 = v3 + 3;
      result[7] = v26;
      v27 = result[8];
      if (v26 != v27)
      {
        while (*v26 == v26[1])
        {
          v26 += 3;
          result[7] = v26;
          if (v26 == v27)
          {
            goto LABEL_4;
          }
        }

        result[9] = *v26;
      }
    }
  }

  else
  {
    v1 += 2;
    result[2] = v1;
  }

LABEL_4:
  v4 = *result;
  v6 = (*result)[3];
  v5 = (*result)[4];
  if (v6 != v5)
  {
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v6 += 3;
    }

    while (v7 == v8 && v6 != v5);
  }

  if (v1 == (*result)[1] && result[7] == v5 && (v5 == result[8] || !result[9]))
  {
    v10 = v4 + 6;
    *result = v4 + 6;
    v11 = result[1];
    while (1)
    {
      if (v10 == v11)
      {
        return result;
      }

      v14 = v10[3];
      v13 = v10[4];
      v15 = v14;
      if (v14 != v13)
      {
        v16 = v10[3];
        do
        {
          v17 = *v16;
          v18 = v16[1];
          v16 += 3;
        }

        while (v17 == v18 && v16 != v13);
        v15 = v10[3];
        while (*v15 == v15[1])
        {
          v15 += 3;
          if (v15 == v13)
          {
            v15 = v10[4];
            break;
          }
        }
      }

      v20 = *v10;
      v21 = v10[1];
      if (v14 == v13)
      {
        if (v20 != v21 || v15 != v14)
        {
          v28 = 0;
          v29 = 0;
          v30 = v10[3];
LABEL_55:
          result[2] = v20;
          result[3] = v21;
          result[4] = v30;
          result[5] = v13;
          if (v30 != v13)
          {
            result[6] = v28;
          }

          result[7] = v14;
          result[8] = v13;
          if (v14 != v13)
          {
            result[9] = v29;
          }

          return result;
        }
      }

      else
      {
        v22 = v10[3];
        do
        {
          v23 = *v22;
          v24 = v22[1];
          v22 += 3;
        }

        while (v23 == v24 && v22 != v13);
        if (v20 != v21 || v15 != v13)
        {
          v30 = v10[3];
          do
          {
            v28 = *v30;
            if (*v30 != v30[1])
            {
              goto LABEL_47;
            }

            v30 += 3;
          }

          while (v30 != v13);
          v28 = 0;
          v30 = v13;
LABEL_47:
          while (1)
          {
            v29 = *v14;
            if (*v14 != v14[1])
            {
              goto LABEL_55;
            }

            v14 += 3;
            if (v14 == v13)
            {
              v29 = 0;
              v14 = v13;
              goto LABEL_55;
            }
          }
        }
      }

      v10 += 6;
      *result = v10;
    }
  }

  return result;
}

char *sub_1002A6CDC(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
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

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
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

void *sub_1002A6E6C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_15:
    operator new();
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  while (1)
  {
    while (1)
    {
      v6 = v2;
      v7 = v2[4];
      if (v3 != v7)
      {
        if (v3 >= v7)
        {
          if (v7 >= v3)
          {
            return v6;
          }

          goto LABEL_14;
        }

        goto LABEL_3;
      }

      v8 = v6[5];
      if (v4 != v8)
      {
        break;
      }

      v9 = v6[6];
      if (v5 >= v9)
      {
        if (v9 >= v5)
        {
          return v6;
        }

        goto LABEL_14;
      }

LABEL_3:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_15;
      }
    }

    if (v4 < v8)
    {
      goto LABEL_3;
    }

    if (v8 >= v4)
    {
      return v6;
    }

LABEL_14:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_15;
    }
  }
}

void sub_1002A6FD8(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10000FC84();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v12 = 8 * ((v3 - *a1) >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = 24 * v8 + 24;
  v13 = 24 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t sub_1002A7124(double **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = *a1;
  v7 = a1[1];
  if (0x8E38E38E38E38E39 * (v7 - *a1) <= a5)
  {
    if (v8 == v7)
    {
      return 1;
    }

    else
    {
      while (1)
      {
        v21 = v8;
        v8 += 9;
        v22 = v8;
        if (v8 != v7)
        {
          break;
        }

LABEL_25:
        result = 1;
        if (v8 == v7)
        {
          return result;
        }
      }

      while ((sub_1002A7A5C(a2, v21, v22, 1) & 1) != 0)
      {
        v22 += 9;
        v7 = a1[1];
        if (v22 == v7)
        {
          goto LABEL_25;
        }
      }

      return 0;
    }
  }

  else
  {
    __p = 0;
    v26 = 0;
    v27 = 0;
    v9 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v10 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v23 = v9;
    v24 = v10;
    if (v8 != v7)
    {
      v11 = 1.79769313e308;
      v12 = -1.79769313e308;
      v13 = -1.79769313e308;
      v14 = 1.79769313e308;
      v15 = v8[5];
      if (v15 < 1.79769313e308)
      {
        v23.i64[0] = v8[5];
        v14 = v15;
        if (v15 <= -1.79769313e308)
        {
LABEL_5:
          v16 = v8[6];
          if (v16 >= 1.79769313e308)
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }
      }

      else if (v15 <= -1.79769313e308)
      {
        goto LABEL_5;
      }

      *v24.i64 = v15;
      v13 = v15;
      v16 = v8[6];
      if (v16 >= 1.79769313e308)
      {
LABEL_6:
        if (v16 <= -1.79769313e308)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }

LABEL_14:
      *&v23.i64[1] = v16;
      v11 = v16;
      if (v16 <= -1.79769313e308)
      {
LABEL_7:
        v17 = v8[7];
        if (v17 >= v14)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }

LABEL_15:
      *&v24.i64[1] = v16;
      v12 = v16;
      v17 = v8[7];
      if (v17 >= v14)
      {
LABEL_8:
        if (v17 <= v13)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }

LABEL_16:
      *v23.i64 = v17;
      if (v17 <= v13)
      {
LABEL_9:
        v18 = v8[8];
        if (v18 >= v11)
        {
          goto LABEL_10;
        }

        goto LABEL_18;
      }

LABEL_17:
      *v24.i64 = v17;
      v18 = v8[8];
      if (v18 >= v11)
      {
LABEL_10:
        if (v18 <= v12)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_18:
      *&v23.i64[1] = v18;
      if (v18 <= v12)
      {
LABEL_20:
        operator new();
      }

LABEL_19:
      *&v24.i64[1] = v18;
      goto LABEL_20;
    }

    result = sub_1002A748C(v23.i64, &__p, 0, a5, a2, a3, a4, &v28, *v9.i64, v10);
    if (__p)
    {
      v26 = __p;
      v20 = result;
      operator delete(__p);
      return v20;
    }
  }

  return result;
}

void sub_1002A7464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A748C(double *a1, double ***a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int64x2_t a10)
{
  a10.i64[0] = 0.5;
  v16 = (*a1 + a1[2]) * 0.5;
  v18 = *(a1 + 1);
  v73 = *a1;
  *&v17.f64[0] = v73;
  v75 = *(&v18 + 1);
  v71 = *(&v73 + 1);
  v72 = v18;
  v74 = v16;
  v70 = v16;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  __p = 0;
  v62 = 0;
  v63 = 0;
  v20 = *a2;
  v19 = a2[1];
  if (*a2 == v19)
  {
LABEL_55:
    v50 = v67;
    v49 = v68;
    if (a3 > 0x63 || (v68 - v67) >> 3 < a4)
    {
LABEL_69:
      while (v50 != v49)
      {
        v53 = v50++;
        v54 = v50;
        if (v50 != v49)
        {
          while ((sub_1002A7A5C(a5, *v53, *v54, 1) & 1) != 0)
          {
            ++v54;
            v49 = v68;
            if (v54 == v68)
            {
              goto LABEL_69;
            }
          }

          goto LABEL_58;
        }
      }
    }

    else if (!sub_1002A7D60(&v73, &v67, a3 + 1, a4, a5, a6, a7, a8, v17.f64[0], a10))
    {
      goto LABEL_58;
    }

    v56 = v64;
    v55 = v65;
    if (a3 > 0x63 || (v65 - v64) >> 3 < a4)
    {
      if (v64 != v65)
      {
        while (1)
        {
          v57 = v56++;
          v58 = v56;
          if (v56 != v55)
          {
            break;
          }

LABEL_75:
          v51 = 1;
          if (v56 == v55)
          {
            goto LABEL_59;
          }
        }

        while ((sub_1002A7A5C(a5, *v57, *v58, 1) & 1) != 0)
        {
          ++v58;
          v55 = v65;
          if (v58 == v65)
          {
            goto LABEL_75;
          }
        }

        goto LABEL_58;
      }

      v51 = 1;
    }

    else
    {
      v51 = sub_1002A7D60(&v70, &v64, a3 + 1, a4, a5, a6, a7, a8, v17.f64[0], a10);
    }

    goto LABEL_59;
  }

  do
  {
    v22 = *v20;
    v17.f64[0] = (*v20)[5];
    if (v16 >= v17.f64[0] && *&v73 <= v22[7] && v75 >= v22[6])
    {
      v23 = *(&v73 + 1) <= v22[8];
      a10.i64[0] = v72;
      if (*&v72 < v17.f64[0])
      {
        goto LABEL_15;
      }
    }

    else
    {
      v23 = 0;
      a10.i64[0] = v72;
      if (*&v72 < v17.f64[0])
      {
        goto LABEL_15;
      }
    }

    v17.f64[0] = v22[7];
    if (v16 <= v17.f64[0])
    {
      v17.f64[0] = *(&v72 + 1);
      a10.i64[0] = v22[6];
      if (*(&v72 + 1) >= *a10.i64)
      {
        v17.f64[0] = v71;
        a10.i64[0] = v22[8];
        if (v71 <= *a10.i64)
        {
          if (v23)
          {
            p_p = &__p;
          }

          else
          {
            p_p = &v64;
          }

          goto LABEL_17;
        }
      }
    }

LABEL_15:
    if (!v23)
    {
      goto LABEL_3;
    }

    p_p = &v67;
LABEL_17:
    sub_100279BF0(p_p, v20);
    v19 = a2[1];
LABEL_3:
    ++v20;
  }

  while (v20 != v19);
  v26 = __p;
  v25 = v62;
  if (__p == v62)
  {
    goto LABEL_55;
  }

  v59 = 0u;
  v60 = 0u;
  v17 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  a10 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v27 = __p;
  v28 = a10;
  v29 = v17;
  do
  {
    v30 = *v27++;
    v31 = *(v30 + 40);
    v32 = vcgtq_f64(a10, v31);
    v33 = vbslq_s8(v32, v31, v28);
    v34 = vbslq_s8(v32, v31, a10);
    v35 = *(v30 + 56);
    v36 = vcgtq_f64(v34, v35);
    v28 = vbslq_s8(v36, v35, v33);
    a10 = vbslq_s8(v36, v35, v34);
    v37 = vcgtq_f64(v31, v17);
    v38 = vbslq_s8(v37, v31, v29);
    v39 = vbslq_s8(v37, v31, v17);
    v40 = vcgtq_f64(v35, v39);
    v29 = vbslq_s8(v40, v35, v38);
    v17 = vbslq_s8(v40, v35, v39);
  }

  while (v27 != v62);
  v59 = v28;
  v60 = v29;
  if (a3 > 0x63 || (v62 - __p) >> 3 < a4)
  {
    while (1)
    {
      v43 = v26 + 1;
      v44 = v26 + 1;
      if (v26 + 1 != v25)
      {
        break;
      }

LABEL_29:
      ++v26;
      if (v43 == v25)
      {
        goto LABEL_25;
      }
    }

    while ((sub_1002A7A5C(a5, *v26, *v44, 1) & 1) != 0)
    {
      ++v44;
      v25 = v62;
      if (v44 == v62)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_58;
  }

  if (!sub_1002A7D60(v59.i64, &__p, a3 + 1, a4, a5, a6, a7, a8, v17.f64[0], a10))
  {
    goto LABEL_58;
  }

  v25 = v62;
LABEL_25:
  v41 = __p;
  if (a4 > (v25 - __p) >> 3 || a3 > 0x63 || (v68 - v67) >> 3 < a4)
  {
    if (__p != v25)
    {
      v42 = v68;
      if (v67 != v68)
      {
        while (1)
        {
          v45 = v67;
          if (v67 != v42)
          {
            break;
          }

LABEL_34:
          if (++v41 == v25)
          {
            goto LABEL_43;
          }
        }

        while ((sub_1002A7A5C(a5, *v41, *v45, 1) & 1) != 0)
        {
          ++v45;
          v42 = v68;
          if (v45 == v68)
          {
            v25 = v62;
            goto LABEL_34;
          }
        }

        goto LABEL_58;
      }
    }

LABEL_43:
    v46 = __p;
    if (a4 > (v25 - __p) >> 3 || a3 > 0x63 || (v65 - v64) >> 3 < a4)
    {
      if (__p != v25)
      {
        v47 = v65;
        if (v64 != v65)
        {
          while (1)
          {
            v48 = v64;
            if (v64 != v47)
            {
              break;
            }

LABEL_47:
            if (++v46 == v25)
            {
              goto LABEL_55;
            }
          }

          while ((sub_1002A7A5C(a5, *v46, *v48, 1) & 1) != 0)
          {
            ++v48;
            v47 = v65;
            if (v48 == v65)
            {
              v25 = v62;
              goto LABEL_47;
            }
          }

          goto LABEL_58;
        }
      }
    }

    else if ((sub_1002A8D8C(v59.i64, &__p, &v64, a3 + 1, a4, a5, a6, a7, v17.f64[0], a10, a6, a7, a8) & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  if (sub_1002A8D8C(v59.i64, &__p, &v67, a3 + 1, a4, a5, a6, a7, v17.f64[0], a10, a6, a7, a8))
  {
    v25 = v62;
    goto LABEL_43;
  }

LABEL_58:
  v51 = 0;
LABEL_59:
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  return v51;
}

void sub_1002A79EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
    v26 = a21;
    if (!a21)
    {
LABEL_3:
      v27 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v26 = a21;
    if (!a21)
    {
      goto LABEL_3;
    }
  }

  operator delete(v26);
  v27 = a24;
  if (!a24)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v27);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A7A5C(uint64_t a1, double *a2, double *a3, int a4)
{
  if (a4 && (v7 = a3 + 4, a2[4] < a3[4]))
  {
    if (*(a1 + 40))
    {
      goto LABEL_14;
    }

    v37 = a3[3];
    if (v37 > 0.0)
    {
      if (v37 == INFINITY)
      {
        goto LABEL_51;
      }

      v38 = 1.0;
      if (v37 >= 1.0)
      {
        v38 = a3[3];
      }

      if (v37 > v38 * 2.22044605e-16)
      {
LABEL_51:
        v39 = a2[3];
        if (v39 < 0.0)
        {
          if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_14;
          }

          v40 = fabs(v39);
          v41 = vabdd_f64(0.0, v39);
          if (v40 < 1.0)
          {
            v40 = 1.0;
          }

          if (v41 > v40 * 2.22044605e-16)
          {
LABEL_14:
            v8 = sub_1002A6E6C(*(a1 + 24), a2);
            v9 = v8[8];
            if (v9 >= a3[5] && v9 <= a3[7])
            {
              v11 = v8[9];
              if (v11 >= a3[6] && v11 <= a3[8])
              {
                v13 = *a1;
                v14 = *(a1 + 16);
                v15 = *(a1 + 32);
                v16 = **(a1 + 8);
                v17 = v8;
                if (sub_1002A97E4((v8 + 7), a2, a3, v13, v16, v14))
                {
                  v18 = v17;
                  if (*(v17 + 12) == -1 || *v7 < v17[15])
                  {
                    v19 = *a3;
                    v17[14] = a3[2];
                    *(v17 + 6) = v19;
LABEL_29:
                    v18[15] = *v7;
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    if (*(a1 + 40))
    {
      goto LABEL_27;
    }

    v32 = a2[3];
    if (v32 > 0.0)
    {
      if (v32 == INFINITY)
      {
        goto LABEL_39;
      }

      v33 = 1.0;
      if (v32 >= 1.0)
      {
        v33 = a2[3];
      }

      if (v32 > v33 * 2.22044605e-16)
      {
LABEL_39:
        v34 = a3[3];
        if (v34 < 0.0)
        {
          if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_27;
          }

          v35 = fabs(v34);
          v36 = vabdd_f64(0.0, v34);
          if (v35 < 1.0)
          {
            v35 = 1.0;
          }

          if (v36 > v35 * 2.22044605e-16)
          {
LABEL_27:
            v20 = sub_1002A6E6C(*(a1 + 24), a3);
            v21 = v20[8];
            if (v21 >= a2[5] && v21 <= a2[7])
            {
              v23 = v20[9];
              if (v23 >= a2[6] && v23 <= a2[8])
              {
                v25 = *a1;
                v26 = *(a1 + 16);
                v27 = *(a1 + 32);
                v28 = **(a1 + 8);
                v29 = v20;
                if (sub_1002A97E4((v20 + 7), a3, a2, v25, v28, v26))
                {
                  v18 = v29;
                  if (*(v29 + 12) == -1 || a2[4] < v29[15])
                  {
                    v30 = *a2;
                    v29[14] = a2[2];
                    *(v29 + 6) = v30;
                    v7 = a2 + 4;
                    goto LABEL_29;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 1;
}

uint64_t sub_1002A7D60(double *a1, double ***a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int64x2_t a10)
{
  v16 = a1[1];
  v17 = a1[3];
  v75 = *a1;
  v18 = v16 + v17;
  a10.i64[0] = 0.5;
  v19 = v18 * 0.5;
  v76 = a1[2];
  v20 = *(a1 + 2);
  *&v73[0] = v75;
  v74 = v20;
  v77 = v19;
  v73[1] = v19;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  __p = 0;
  v65 = 0;
  v66 = 0;
  v22 = *a2;
  v21 = a2[1];
  if (*a2 == v21)
  {
LABEL_55:
    v53 = v70;
    v52 = v71;
    if (a3 > 0x63 || (v71 - v70) >> 3 < a4)
    {
LABEL_69:
      while (v53 != v52)
      {
        v56 = v53++;
        v57 = v53;
        if (v53 != v52)
        {
          while ((sub_1002A7A5C(a5, *v56, *v57, 1) & 1) != 0)
          {
            ++v57;
            v52 = v71;
            if (v57 == v71)
            {
              goto LABEL_69;
            }
          }

          goto LABEL_58;
        }
      }
    }

    else if (!sub_1002A748C(&v75, &v70, a3 + 1, a4, a5, a6, a7, a8, v20, a10))
    {
      goto LABEL_58;
    }

    v59 = v67;
    v58 = v68;
    if (a3 > 0x63 || (v68 - v67) >> 3 < a4)
    {
      if (v67 != v68)
      {
        while (1)
        {
          v60 = v59++;
          v61 = v59;
          if (v59 != v58)
          {
            break;
          }

LABEL_75:
          v54 = 1;
          if (v59 == v58)
          {
            goto LABEL_59;
          }
        }

        while ((sub_1002A7A5C(a5, *v60, *v61, 1) & 1) != 0)
        {
          ++v61;
          v58 = v68;
          if (v61 == v68)
          {
            goto LABEL_75;
          }
        }

        goto LABEL_58;
      }

      v54 = 1;
    }

    else
    {
      v54 = sub_1002A748C(v73, &v67, a3 + 1, a4, a5, a6, a7, a8, v20, a10);
    }

    goto LABEL_59;
  }

  v24 = v76;
  do
  {
    v25 = *v22;
    v20.n128_f64[0] = (*v22)[5];
    if (v24 >= v20.n128_f64[0] && *&v75 <= v25[7] && v19 >= v25[6])
    {
      v26 = *(&v75 + 1) <= v25[8];
      a10.i64[0] = v74.n128_u64[0];
      if (v74.n128_f64[0] < v20.n128_f64[0])
      {
        goto LABEL_15;
      }
    }

    else
    {
      v26 = 0;
      a10.i64[0] = v74.n128_u64[0];
      if (v74.n128_f64[0] < v20.n128_f64[0])
      {
        goto LABEL_15;
      }
    }

    v20.n128_f64[0] = v73[0];
    a10.i64[0] = v25[7];
    if (v73[0] <= *a10.i64)
    {
      v20.n128_u64[0] = v74.n128_u64[1];
      a10.i64[0] = v25[6];
      if (v74.n128_f64[1] >= *a10.i64)
      {
        v20.n128_f64[0] = v25[8];
        if (v19 <= v20.n128_f64[0])
        {
          if (v26)
          {
            p_p = &__p;
          }

          else
          {
            p_p = &v67;
          }

          goto LABEL_17;
        }
      }
    }

LABEL_15:
    if (!v26)
    {
      goto LABEL_3;
    }

    p_p = &v70;
LABEL_17:
    sub_100279BF0(p_p, v22);
    v21 = a2[1];
LABEL_3:
    ++v22;
  }

  while (v22 != v21);
  v29 = __p;
  v28 = v65;
  if (__p == v65)
  {
    goto LABEL_55;
  }

  v62 = 0u;
  v63 = 0u;
  v20 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  a10 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v30 = __p;
  v31 = a10;
  v32 = v20;
  do
  {
    v33 = *v30++;
    v34 = *(v33 + 40);
    v35 = vcgtq_f64(a10, v34);
    v36 = vbslq_s8(v35, v34, v31);
    v37 = vbslq_s8(v35, v34, a10);
    v38 = *(v33 + 56);
    v39 = vcgtq_f64(v37, v38);
    v31 = vbslq_s8(v39, v38, v36);
    a10 = vbslq_s8(v39, v38, v37);
    v40 = vcgtq_f64(v34, v20);
    v41 = vbslq_s8(v40, v34, v32);
    v42 = vbslq_s8(v40, v34, v20);
    v43 = vcgtq_f64(v38, v42);
    v32 = vbslq_s8(v43, v38, v41);
    v20 = vbslq_s8(v43, v38, v42);
  }

  while (v30 != v65);
  v62 = v31;
  v63 = v32;
  if (a3 > 0x63 || (v65 - __p) >> 3 < a4)
  {
    while (1)
    {
      v46 = v29 + 1;
      v47 = v29 + 1;
      if (v29 + 1 != v28)
      {
        break;
      }

LABEL_29:
      ++v29;
      if (v46 == v28)
      {
        goto LABEL_25;
      }
    }

    while ((sub_1002A7A5C(a5, *v29, *v47, 1) & 1) != 0)
    {
      ++v47;
      v28 = v65;
      if (v47 == v65)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_58;
  }

  if (!sub_1002A748C(&v62, &__p, a3 + 1, a4, a5, a6, a7, a8, v20, a10))
  {
    goto LABEL_58;
  }

  v28 = v65;
LABEL_25:
  v44 = __p;
  if (a4 > (v28 - __p) >> 3 || a3 > 0x63 || (v71 - v70) >> 3 < a4)
  {
    if (__p != v28)
    {
      v45 = v71;
      if (v70 != v71)
      {
        while (1)
        {
          v48 = v70;
          if (v70 != v45)
          {
            break;
          }

LABEL_34:
          if (++v44 == v28)
          {
            goto LABEL_43;
          }
        }

        while ((sub_1002A7A5C(a5, *v44, *v48, 1) & 1) != 0)
        {
          ++v48;
          v45 = v71;
          if (v48 == v71)
          {
            v28 = v65;
            goto LABEL_34;
          }
        }

        goto LABEL_58;
      }
    }

LABEL_43:
    v49 = __p;
    if (a4 > (v28 - __p) >> 3 || a3 > 0x63 || (v68 - v67) >> 3 < a4)
    {
      if (__p != v28)
      {
        v50 = v68;
        if (v67 != v68)
        {
          while (1)
          {
            v51 = v67;
            if (v67 != v50)
            {
              break;
            }

LABEL_47:
            if (++v49 == v28)
            {
              goto LABEL_55;
            }
          }

          while ((sub_1002A7A5C(a5, *v49, *v51, 1) & 1) != 0)
          {
            ++v51;
            v50 = v68;
            if (v51 == v68)
            {
              v28 = v65;
              goto LABEL_47;
            }
          }

          goto LABEL_58;
        }
      }
    }

    else if ((sub_1002A833C(v62.i64, &__p, &v67, a3 + 1, a4, a5, a6, a7, v20.n128_f64[0], a10, a6, a7, a8) & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  if (sub_1002A833C(v62.i64, &__p, &v70, a3 + 1, a4, a5, a6, a7, v20.n128_f64[0], a10, a6, a7, a8))
  {
    v28 = v65;
    goto LABEL_43;
  }

LABEL_58:
  v54 = 0;
LABEL_59:
  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  return v54;
}

void sub_1002A82CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
    v26 = a21;
    if (!a21)
    {
LABEL_3:
      v27 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v26 = a21;
    if (!a21)
    {
      goto LABEL_3;
    }
  }

  operator delete(v26);
  v27 = a24;
  if (!a24)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v27);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A833C(double *a1, double ***a2, double ***a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, __n128 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a10.n128_u64[0] = 0.5;
  v18 = (*a1 + a1[2]) * 0.5;
  v20 = *(a1 + 1);
  v148 = *a1;
  v19 = *&v148;
  v150 = *(&v20 + 1);
  v146 = *(&v148 + 1);
  v147 = v20;
  v149 = v18;
  v145 = v18;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  __p = 0;
  v128 = 0;
  v129 = 0;
  v22 = *a2;
  v21 = a2[1];
  if (*a2 != v21)
  {
    do
    {
      v24 = *v22;
      v19 = (*v22)[5];
      if (v149 >= v19 && *&v148 <= v24[7] && v150 >= v24[6])
      {
        v25 = *(&v148 + 1) <= v24[8];
        a10.n128_u64[0] = v147;
        if (*&v147 < v19)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v25 = 0;
        a10.n128_u64[0] = v147;
        if (*&v147 < v19)
        {
          goto LABEL_15;
        }
      }

      v19 = v24[7];
      if (v18 <= v19)
      {
        v19 = *(&v147 + 1);
        a10.n128_f64[0] = v24[6];
        if (*(&v147 + 1) >= a10.n128_f64[0])
        {
          v19 = v146;
          a10.n128_f64[0] = v24[8];
          if (v146 <= a10.n128_f64[0])
          {
            if (v25)
            {
              v26 = &v136;
            }

            else
            {
              v26 = &v139;
            }

            goto LABEL_17;
          }
        }
      }

LABEL_15:
      if (v25)
      {
        v26 = &v142;
LABEL_17:
        sub_100279BF0(v26, v22);
        v21 = a2[1];
      }

      ++v22;
    }

    while (v22 != v21);
  }

  v28 = *a3;
  v27 = a3[1];
  if (*a3 != v27)
  {
    do
    {
      v29 = *v28;
      v19 = (*v28)[5];
      if (v149 >= v19 && *&v148 <= v29[7] && v150 >= v29[6])
      {
        v30 = *(&v148 + 1) <= v29[8];
        a10.n128_u64[0] = v147;
        if (*&v147 < v19)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v30 = 0;
        a10.n128_u64[0] = v147;
        if (*&v147 < v19)
        {
          goto LABEL_32;
        }
      }

      v19 = v29[7];
      if (v18 <= v19)
      {
        v19 = *(&v147 + 1);
        a10.n128_f64[0] = v29[6];
        if (*(&v147 + 1) >= a10.n128_f64[0])
        {
          v19 = v146;
          a10.n128_f64[0] = v29[8];
          if (v146 <= a10.n128_f64[0])
          {
            if (v30)
            {
              p_p = &__p;
            }

            else
            {
              p_p = &v130;
            }

            goto LABEL_34;
          }
        }
      }

LABEL_32:
      if (v30)
      {
        p_p = &v133;
LABEL_34:
        sub_100279BF0(p_p, v28);
        v27 = a3[1];
      }

      ++v28;
    }

    while (v28 != v27);
  }

  v33 = v136;
  v32 = v137;
  if (v136 == v137)
  {
    goto LABEL_61;
  }

  v35 = __p;
  v34 = v128;
  if (a5 > (v137 - v136) >> 3 || a4 > 0x63 || (v128 - __p) >> 3 < a5)
  {
    if (__p != v128)
    {
      while (1)
      {
        v36 = __p;
        if (__p != v34)
        {
          break;
        }

LABEL_39:
        if (++v33 == v32)
        {
          goto LABEL_54;
        }
      }

      while ((sub_1002A7A5C(a6, *v33, *v36, 1) & 1) != 0)
      {
        ++v36;
        v34 = v128;
        if (v36 == v128)
        {
          v32 = v137;
          goto LABEL_39;
        }
      }

      goto LABEL_129;
    }
  }

  else
  {
    v37 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v125 = 0u;
    v126 = 0u;
    v38 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v39 = v38;
    v40 = v37;
    do
    {
      v41 = *v33++;
      v42 = *(v41 + 5);
      v43 = vcgtq_f64(v38, v42);
      v44 = vbslq_s8(v43, v42, v39);
      v45 = vbslq_s8(v43, v42, v38);
      v46 = *(v41 + 7);
      v47 = vcgtq_f64(v45, v46);
      v39 = vbslq_s8(v47, v46, v44);
      v38 = vbslq_s8(v47, v46, v45);
      v48 = vcgtq_f64(v42, v37);
      v49 = vbslq_s8(v48, v42, v40);
      v50 = vbslq_s8(v48, v42, v37);
      v51 = vcgtq_f64(v46, v50);
      v40 = vbslq_s8(v51, v46, v49);
      v37 = vbslq_s8(v51, v46, v50);
    }

    while (v33 != v137);
    if (__p == v128)
    {
      v52 = v39;
      v53 = v40;
    }

    else
    {
      v52 = v39;
      v53 = v40;
      do
      {
        v54 = *v35++;
        v55 = *(v54 + 40);
        v56 = vcgtq_f64(v39, v55);
        v57 = vbslq_s8(v56, v55, v52);
        v58 = vbslq_s8(v56, v55, v39);
        v59 = *(v54 + 56);
        v60 = vcgtq_f64(v58, v59);
        v52 = vbslq_s8(v60, v59, v57);
        v39 = vbslq_s8(v60, v59, v58);
        v61 = vcgtq_f64(v55, v40);
        v62 = vbslq_s8(v61, v55, v53);
        v63 = vbslq_s8(v61, v55, v40);
        v64 = vcgtq_f64(v59, v63);
        v53 = vbslq_s8(v64, v59, v62);
        v40 = vbslq_s8(v64, v59, v63);
      }

      while (v35 != v128);
    }

    v125 = v52;
    v126 = v53;
    if ((sub_1002A8D8C(v125.i64, &v136, &__p, a4 + 1, a5, a6, a7, a8, v40.f64[0], v39, a11, a12, a13) & 1) == 0)
    {
      goto LABEL_129;
    }
  }

LABEL_54:
  v65 = v134;
  if (a5 <= (v134 - v133) >> 3)
  {
    v67 = v136;
    v66 = v137;
    if (a5 <= (v131 - v130) >> 3 && a4 <= 0x63 && (v137 - v136) >> 3 >= a5)
    {
      v125 = 0u;
      v126 = 0u;
      if (v136 == v137)
      {
        v109 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        v108 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      }

      else
      {
        v106 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        v107 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v108 = v107;
        v109 = v106;
        do
        {
          v110 = *v67++;
          v111 = *(v110 + 5);
          v112 = vcgtq_f64(v107, v111);
          v113 = vbslq_s8(v112, v111, v108);
          v114 = vbslq_s8(v112, v111, v107);
          v115 = *(v110 + 7);
          v116 = vcgtq_f64(v114, v115);
          v108 = vbslq_s8(v116, v115, v113);
          v107 = vbslq_s8(v116, v115, v114);
          v117 = vcgtq_f64(v111, v106);
          v118 = vbslq_s8(v117, v111, v109);
          v119 = vbslq_s8(v117, v111, v106);
          v120 = vcgtq_f64(v115, v119);
          v109 = vbslq_s8(v120, v115, v118);
          v106 = vbslq_s8(v120, v115, v119);
        }

        while (v67 != v137);
      }

      v125 = v108;
      v126 = v109;
      if (!sub_1002A8D8C(v125.i64, &v136, &v133, a4 + 1, a5, a6, a7, a8, *v109.i64, v108, a11, a12, a13) || (sub_1002A8D8C(v125.i64, &v136, &v130, a4 + 1, a5, a6, a7, a8, v121, v122, a11, a12, a13) & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_61;
    }
  }

  else
  {
    v67 = v136;
    v66 = v137;
  }

  if (v67 == v66 || v133 == v134)
  {
    if (v67 != v66)
    {
LABEL_60:
      v68 = v131;
      if (v130 != v131)
      {
        while (1)
        {
          v92 = v130;
          if (v130 != v68)
          {
            break;
          }

LABEL_82:
          if (++v67 == v66)
          {
            goto LABEL_61;
          }
        }

        while ((sub_1002A7A5C(a6, *v67, *v92, 1) & 1) != 0)
        {
          ++v92;
          v68 = v131;
          if (v92 == v131)
          {
            v66 = v137;
            goto LABEL_82;
          }
        }

        goto LABEL_129;
      }
    }
  }

  else
  {
    do
    {
      v91 = v133;
      if (v133 != v65)
      {
        while ((sub_1002A7A5C(a6, *v67, *v91, 1) & 1) != 0)
        {
          ++v91;
          v65 = v134;
          if (v91 == v134)
          {
            v66 = v137;
            goto LABEL_77;
          }
        }

        goto LABEL_129;
      }

LABEL_77:
      ++v67;
    }

    while (v67 != v66);
    v67 = v136;
    if (v136 != v66)
    {
      goto LABEL_60;
    }
  }

LABEL_61:
  v70 = __p;
  v69 = v128;
  if (__p != v128)
  {
    v72 = v142;
    v71 = v143;
    if (a5 > (v143 - v142) >> 3 || a5 > (v140 - v139) >> 3 || a4 > 0x63 || (v128 - __p) >> 3 < a5)
    {
      while (v72 != v71)
      {
        v90 = __p;
        if (__p != v69)
        {
          while ((sub_1002A7A5C(a6, *v72, *v90, 1) & 1) != 0)
          {
            ++v90;
            v69 = v128;
            if (v90 == v128)
            {
              v71 = v143;
              goto LABEL_71;
            }
          }

          goto LABEL_129;
        }

LABEL_71:
        ++v72;
      }

      v94 = v139;
      v93 = v140;
      if (v139 == v140 || __p == v69)
      {
        goto LABEL_89;
      }

      while (1)
      {
        v103 = __p;
        if (__p != v69)
        {
          break;
        }

LABEL_110:
        if (++v94 == v93)
        {
          goto LABEL_89;
        }
      }

      while ((sub_1002A7A5C(a6, *v94, *v103, 1) & 1) != 0)
      {
        ++v103;
        v69 = v128;
        if (v103 == v128)
        {
          v93 = v140;
          goto LABEL_110;
        }
      }

      goto LABEL_129;
    }

    v73 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v125 = 0u;
    v126 = 0u;
    v74 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v75 = v74;
    v76 = v73;
    do
    {
      v77 = *v70++;
      v78 = *(v77 + 40);
      v79 = vcgtq_f64(v74, v78);
      v80 = vbslq_s8(v79, v78, v75);
      v81 = vbslq_s8(v79, v78, v74);
      v82 = *(v77 + 56);
      v83 = vcgtq_f64(v81, v82);
      v75 = vbslq_s8(v83, v82, v80);
      v74 = vbslq_s8(v83, v82, v81);
      v84 = vcgtq_f64(v78, v73);
      v85 = vbslq_s8(v84, v78, v76);
      v86 = vbslq_s8(v84, v78, v73);
      v87 = vcgtq_f64(v82, v86);
      v76 = vbslq_s8(v87, v82, v85);
      v73 = vbslq_s8(v87, v82, v86);
    }

    while (v70 != v128);
    v125 = v75;
    v126 = v76;
    if (!sub_1002A8D8C(v125.i64, &v142, &__p, a4 + 1, a5, a6, a7, a8, v73.f64[0], v74, a11, a12, a13) || (sub_1002A8D8C(v125.i64, &v139, &__p, a4 + 1, a5, a6, a7, a8, v88, v89, a11, a12, a13) & 1) == 0)
    {
      goto LABEL_129;
    }
  }

LABEL_89:
  v96 = v142;
  v95 = v143;
  if (a5 > (v143 - v142) >> 3 || a4 > 0x63 || (v134 - v133) >> 3 < a5)
  {
    if (v142 != v143)
    {
      v97 = v134;
      if (v133 != v134)
      {
        while (1)
        {
          v98 = v133;
          if (v133 != v97)
          {
            break;
          }

LABEL_93:
          if (++v96 == v95)
          {
            goto LABEL_101;
          }
        }

        while ((sub_1002A7A5C(a6, *v96, *v98, 1) & 1) != 0)
        {
          ++v98;
          v97 = v134;
          if (v98 == v134)
          {
            v95 = v143;
            goto LABEL_93;
          }
        }

        goto LABEL_129;
      }
    }
  }

  else if ((sub_1002A8D8C(&v148, &v142, &v133, a4 + 1, a5, a6, a7, a8, v19, a10, a11, a12, a13) & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_101:
  v100 = v139;
  v99 = v140;
  if (a5 > (v140 - v139) >> 3 || a4 > 0x63 || (v131 - v130) >> 3 < a5)
  {
    if (v139 == v140)
    {
      goto LABEL_118;
    }

    v101 = v131;
    if (v130 == v131)
    {
      goto LABEL_118;
    }

    while (1)
    {
      v102 = v130;
      if (v130 != v101)
      {
        break;
      }

LABEL_105:
      if (++v100 == v99)
      {
        goto LABEL_118;
      }
    }

    while ((sub_1002A7A5C(a6, *v100, *v102, 1) & 1) != 0)
    {
      ++v102;
      v101 = v131;
      if (v102 == v131)
      {
        v99 = v140;
        goto LABEL_105;
      }
    }

LABEL_129:
    v104 = 0;
    v105 = __p;
    if (!__p)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

  if ((sub_1002A8D8C(&v145, &v139, &v130, a4 + 1, a5, a6, a7, a8, v19, a10, a11, a12, a13) & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_118:
  v104 = 1;
  v105 = __p;
  if (__p)
  {
LABEL_130:
    v128 = v105;
    operator delete(v105);
  }

LABEL_131:
  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }

  if (v136)
  {
    v137 = v136;
    operator delete(v136);
  }

  if (v139)
  {
    v140 = v139;
    operator delete(v139);
  }

  if (v142)
  {
    v143 = v142;
    operator delete(v142);
  }

  return v104;
}

void sub_1002A8CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a20;
    if (!a20)
    {
LABEL_3:
      v35 = a23;
      if (!a23)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = a20;
    if (!a20)
    {
      goto LABEL_3;
    }
  }

  operator delete(v34);
  v35 = a23;
  if (!a23)
  {
LABEL_4:
    v36 = a26;
    if (!a26)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  v36 = a26;
  if (!a26)
  {
LABEL_5:
    v37 = a29;
    if (!a29)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a29;
  if (!a29)
  {
LABEL_6:
    v38 = a32;
    if (!a32)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = a32;
  if (!a32)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A8D8C(double *a1, double ***a2, double ***a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, __n128 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a10.n128_u64[0] = 0.5;
  v18 = (a1[1] + a1[3]) * 0.5;
  v147 = a1[2];
  v19 = *(a1 + 2);
  v144 = *a1;
  v145 = v19;
  v146 = v144;
  v148 = v18;
  *(&v144 + 1) = v18;
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v138 = 0;
  v139 = 0;
  v140 = 0;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  __p = 0;
  v127 = 0;
  v128 = 0;
  v21 = *a2;
  v20 = a2[1];
  if (*a2 != v20)
  {
    do
    {
      v23 = *v21;
      v19.n128_f64[0] = (*v21)[5];
      if (v147 >= v19.n128_f64[0] && *&v146 <= v23[7] && v148 >= v23[6])
      {
        v24 = *(&v146 + 1) <= v23[8];
        a10.n128_u64[0] = v145.n128_u64[0];
        if (v145.n128_f64[0] < v19.n128_f64[0])
        {
          goto LABEL_15;
        }
      }

      else
      {
        v24 = 0;
        a10.n128_u64[0] = v145.n128_u64[0];
        if (v145.n128_f64[0] < v19.n128_f64[0])
        {
          goto LABEL_15;
        }
      }

      v19.n128_u64[0] = v144;
      a10.n128_f64[0] = v23[7];
      if (*&v144 <= a10.n128_f64[0])
      {
        v19.n128_u64[0] = v145.n128_u64[1];
        a10.n128_f64[0] = v23[6];
        if (v145.n128_f64[1] >= a10.n128_f64[0])
        {
          v19.n128_f64[0] = v23[8];
          if (v18 <= v19.n128_f64[0])
          {
            if (v24)
            {
              v25 = &v135;
            }

            else
            {
              v25 = &v138;
            }

            goto LABEL_17;
          }
        }
      }

LABEL_15:
      if (v24)
      {
        v25 = &v141;
LABEL_17:
        sub_100279BF0(v25, v21);
        v20 = a2[1];
      }

      ++v21;
    }

    while (v21 != v20);
  }

  v27 = *a3;
  v26 = a3[1];
  if (*a3 != v26)
  {
    do
    {
      v28 = *v27;
      v19.n128_f64[0] = (*v27)[5];
      if (v147 >= v19.n128_f64[0] && *&v146 <= v28[7] && v148 >= v28[6])
      {
        v29 = *(&v146 + 1) <= v28[8];
        a10.n128_u64[0] = v145.n128_u64[0];
        if (v145.n128_f64[0] < v19.n128_f64[0])
        {
          goto LABEL_32;
        }
      }

      else
      {
        v29 = 0;
        a10.n128_u64[0] = v145.n128_u64[0];
        if (v145.n128_f64[0] < v19.n128_f64[0])
        {
          goto LABEL_32;
        }
      }

      v19.n128_u64[0] = v144;
      a10.n128_f64[0] = v28[7];
      if (*&v144 <= a10.n128_f64[0])
      {
        v19.n128_u64[0] = v145.n128_u64[1];
        a10.n128_f64[0] = v28[6];
        if (v145.n128_f64[1] >= a10.n128_f64[0])
        {
          v19.n128_f64[0] = v28[8];
          if (v18 <= v19.n128_f64[0])
          {
            if (v29)
            {
              p_p = &__p;
            }

            else
            {
              p_p = &v129;
            }

            goto LABEL_34;
          }
        }
      }

LABEL_32:
      if (v29)
      {
        p_p = &v132;
LABEL_34:
        sub_100279BF0(p_p, v27);
        v26 = a3[1];
      }

      ++v27;
    }

    while (v27 != v26);
  }

  v32 = v135;
  v31 = v136;
  if (v135 == v136)
  {
    goto LABEL_61;
  }

  v34 = __p;
  v33 = v127;
  if (a5 > (v136 - v135) >> 3 || a4 > 0x63 || (v127 - __p) >> 3 < a5)
  {
    if (__p != v127)
    {
      while (1)
      {
        v35 = __p;
        if (__p != v33)
        {
          break;
        }

LABEL_39:
        if (++v32 == v31)
        {
          goto LABEL_54;
        }
      }

      while ((sub_1002A7A5C(a6, *v32, *v35, 1) & 1) != 0)
      {
        ++v35;
        v33 = v127;
        if (v35 == v127)
        {
          v31 = v136;
          goto LABEL_39;
        }
      }

      goto LABEL_129;
    }
  }

  else
  {
    v36 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v124 = 0u;
    v125 = 0u;
    v37 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v38 = v37;
    v39 = v36;
    do
    {
      v40 = *v32++;
      v41 = *(v40 + 5);
      v42 = vcgtq_f64(v37, v41);
      v43 = vbslq_s8(v42, v41, v38);
      v44 = vbslq_s8(v42, v41, v37);
      v45 = *(v40 + 7);
      v46 = vcgtq_f64(v44, v45);
      v38 = vbslq_s8(v46, v45, v43);
      v37 = vbslq_s8(v46, v45, v44);
      v47 = vcgtq_f64(v41, v36);
      v48 = vbslq_s8(v47, v41, v39);
      v49 = vbslq_s8(v47, v41, v36);
      v50 = vcgtq_f64(v45, v49);
      v39 = vbslq_s8(v50, v45, v48);
      v36 = vbslq_s8(v50, v45, v49);
    }

    while (v32 != v136);
    if (__p == v127)
    {
      v51 = v38;
      v52 = v39;
    }

    else
    {
      v51 = v38;
      v52 = v39;
      do
      {
        v53 = *v34++;
        v54 = *(v53 + 40);
        v55 = vcgtq_f64(v38, v54);
        v56 = vbslq_s8(v55, v54, v51);
        v57 = vbslq_s8(v55, v54, v38);
        v58 = *(v53 + 56);
        v59 = vcgtq_f64(v57, v58);
        v51 = vbslq_s8(v59, v58, v56);
        v38 = vbslq_s8(v59, v58, v57);
        v60 = vcgtq_f64(v54, v39);
        v61 = vbslq_s8(v60, v54, v52);
        v62 = vbslq_s8(v60, v54, v39);
        v63 = vcgtq_f64(v58, v62);
        v52 = vbslq_s8(v63, v58, v61);
        v39 = vbslq_s8(v63, v58, v62);
      }

      while (v34 != v127);
    }

    v124 = v51;
    v125 = v52;
    if ((sub_1002A833C(&v124, &v135, &__p, a4 + 1, a5, a6, a7, a8, v39, v38, a11, a12, a13) & 1) == 0)
    {
      goto LABEL_129;
    }
  }

LABEL_54:
  v64 = v133;
  if (a5 <= (v133 - v132) >> 3)
  {
    v66 = v135;
    v65 = v136;
    if (a5 <= (v130 - v129) >> 3 && a4 <= 0x63 && (v136 - v135) >> 3 >= a5)
    {
      v124 = 0u;
      v125 = 0u;
      if (v135 == v136)
      {
        v108 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        v107 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      }

      else
      {
        v105 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        v106 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v107 = v106;
        v108 = v105;
        do
        {
          v109 = *v66++;
          v110 = *(v109 + 5);
          v111 = vcgtq_f64(v106, v110);
          v112 = vbslq_s8(v111, v110, v107);
          v113 = vbslq_s8(v111, v110, v106);
          v114 = *(v109 + 7);
          v115 = vcgtq_f64(v113, v114);
          v107 = vbslq_s8(v115, v114, v112);
          v106 = vbslq_s8(v115, v114, v113);
          v116 = vcgtq_f64(v110, v105);
          v117 = vbslq_s8(v116, v110, v108);
          v118 = vbslq_s8(v116, v110, v105);
          v119 = vcgtq_f64(v114, v118);
          v108 = vbslq_s8(v119, v114, v117);
          v105 = vbslq_s8(v119, v114, v118);
        }

        while (v66 != v136);
      }

      v124 = v107;
      v125 = v108;
      if (!sub_1002A833C(&v124, &v135, &v132, a4 + 1, a5, a6, a7, a8, v108, v107, a11, a12, a13) || (sub_1002A833C(&v124, &v135, &v129, a4 + 1, a5, a6, a7, a8, v120, v121, a11, a12, a13) & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_61;
    }
  }

  else
  {
    v66 = v135;
    v65 = v136;
  }

  if (v66 == v65 || v132 == v133)
  {
    if (v66 != v65)
    {
LABEL_60:
      v67 = v130;
      if (v129 != v130)
      {
        while (1)
        {
          v91 = v129;
          if (v129 != v67)
          {
            break;
          }

LABEL_82:
          if (++v66 == v65)
          {
            goto LABEL_61;
          }
        }

        while ((sub_1002A7A5C(a6, *v66, *v91, 1) & 1) != 0)
        {
          ++v91;
          v67 = v130;
          if (v91 == v130)
          {
            v65 = v136;
            goto LABEL_82;
          }
        }

        goto LABEL_129;
      }
    }
  }

  else
  {
    do
    {
      v90 = v132;
      if (v132 != v64)
      {
        while ((sub_1002A7A5C(a6, *v66, *v90, 1) & 1) != 0)
        {
          ++v90;
          v64 = v133;
          if (v90 == v133)
          {
            v65 = v136;
            goto LABEL_77;
          }
        }

        goto LABEL_129;
      }

LABEL_77:
      ++v66;
    }

    while (v66 != v65);
    v66 = v135;
    if (v135 != v65)
    {
      goto LABEL_60;
    }
  }

LABEL_61:
  v69 = __p;
  v68 = v127;
  if (__p != v127)
  {
    v71 = v141;
    v70 = v142;
    if (a5 > (v142 - v141) >> 3 || a5 > (v139 - v138) >> 3 || a4 > 0x63 || (v127 - __p) >> 3 < a5)
    {
      while (v71 != v70)
      {
        v89 = __p;
        if (__p != v68)
        {
          while ((sub_1002A7A5C(a6, *v71, *v89, 1) & 1) != 0)
          {
            ++v89;
            v68 = v127;
            if (v89 == v127)
            {
              v70 = v142;
              goto LABEL_71;
            }
          }

          goto LABEL_129;
        }

LABEL_71:
        ++v71;
      }

      v93 = v138;
      v92 = v139;
      if (v138 == v139 || __p == v68)
      {
        goto LABEL_89;
      }

      while (1)
      {
        v102 = __p;
        if (__p != v68)
        {
          break;
        }

LABEL_110:
        if (++v93 == v92)
        {
          goto LABEL_89;
        }
      }

      while ((sub_1002A7A5C(a6, *v93, *v102, 1) & 1) != 0)
      {
        ++v102;
        v68 = v127;
        if (v102 == v127)
        {
          v92 = v139;
          goto LABEL_110;
        }
      }

      goto LABEL_129;
    }

    v72 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v124 = 0u;
    v125 = 0u;
    v73 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v74 = v73;
    v75 = v72;
    do
    {
      v76 = *v69++;
      v77 = *(v76 + 40);
      v78 = vcgtq_f64(v73, v77);
      v79 = vbslq_s8(v78, v77, v74);
      v80 = vbslq_s8(v78, v77, v73);
      v81 = *(v76 + 56);
      v82 = vcgtq_f64(v80, v81);
      v74 = vbslq_s8(v82, v81, v79);
      v73 = vbslq_s8(v82, v81, v80);
      v83 = vcgtq_f64(v77, v72);
      v84 = vbslq_s8(v83, v77, v75);
      v85 = vbslq_s8(v83, v77, v72);
      v86 = vcgtq_f64(v81, v85);
      v75 = vbslq_s8(v86, v81, v84);
      v72 = vbslq_s8(v86, v81, v85);
    }

    while (v69 != v127);
    v124 = v74;
    v125 = v75;
    if (!sub_1002A833C(&v124, &v141, &__p, a4 + 1, a5, a6, a7, a8, v72, v73, a11, a12, a13) || (sub_1002A833C(&v124, &v138, &__p, a4 + 1, a5, a6, a7, a8, v87, v88, a11, a12, a13) & 1) == 0)
    {
      goto LABEL_129;
    }
  }

LABEL_89:
  v95 = v141;
  v94 = v142;
  if (a5 > (v142 - v141) >> 3 || a4 > 0x63 || (v133 - v132) >> 3 < a5)
  {
    if (v141 != v142)
    {
      v96 = v133;
      if (v132 != v133)
      {
        while (1)
        {
          v97 = v132;
          if (v132 != v96)
          {
            break;
          }

LABEL_93:
          if (++v95 == v94)
          {
            goto LABEL_101;
          }
        }

        while ((sub_1002A7A5C(a6, *v95, *v97, 1) & 1) != 0)
        {
          ++v97;
          v96 = v133;
          if (v97 == v133)
          {
            v94 = v142;
            goto LABEL_93;
          }
        }

        goto LABEL_129;
      }
    }
  }

  else if ((sub_1002A833C(&v146, &v141, &v132, a4 + 1, a5, a6, a7, a8, v19, a10, a11, a12, a13) & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_101:
  v99 = v138;
  v98 = v139;
  if (a5 > (v139 - v138) >> 3 || a4 > 0x63 || (v130 - v129) >> 3 < a5)
  {
    if (v138 == v139)
    {
      goto LABEL_118;
    }

    v100 = v130;
    if (v129 == v130)
    {
      goto LABEL_118;
    }

    while (1)
    {
      v101 = v129;
      if (v129 != v100)
      {
        break;
      }

LABEL_105:
      if (++v99 == v98)
      {
        goto LABEL_118;
      }
    }

    while ((sub_1002A7A5C(a6, *v99, *v101, 1) & 1) != 0)
    {
      ++v101;
      v100 = v130;
      if (v101 == v130)
      {
        v98 = v139;
        goto LABEL_105;
      }
    }

LABEL_129:
    v103 = 0;
    v104 = __p;
    if (!__p)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

  if ((sub_1002A833C(&v144, &v138, &v129, a4 + 1, a5, a6, a7, a8, v19, a10, a11, a12, a13) & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_118:
  v103 = 1;
  v104 = __p;
  if (__p)
  {
LABEL_130:
    v127 = v104;
    operator delete(v104);
  }

LABEL_131:
  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  if (v135)
  {
    v136 = v135;
    operator delete(v135);
  }

  if (v138)
  {
    v139 = v138;
    operator delete(v138);
  }

  if (v141)
  {
    v142 = v141;
    operator delete(v141);
  }

  return v103;
}

void sub_1002A9718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a20;
    if (!a20)
    {
LABEL_3:
      v35 = a23;
      if (!a23)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = a20;
    if (!a20)
    {
      goto LABEL_3;
    }
  }

  operator delete(v34);
  v35 = a23;
  if (!a23)
  {
LABEL_4:
    v36 = a26;
    if (!a26)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  v36 = a26;
  if (!a26)
  {
LABEL_5:
    v37 = a29;
    if (!a29)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a29;
  if (!a29)
  {
LABEL_6:
    v38 = a32;
    if (!a32)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = a32;
  if (!a32)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

BOOL sub_1002A97E4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = *a2;
  if (*a2 != 2)
  {
    if (v6 == 1)
    {
      v10 = a2[2];
      v8 = a5 + 48 * a2[1];
      if ((v10 & 0x8000000000000000) == 0)
      {
        v8 = *(v8 + 24) + 24 * v10;
      }

      v9 = *a3;
      if (*a3 != 2)
      {
        if (v9 == 1)
        {
          goto LABEL_30;
        }

        goto LABEL_13;
      }
    }

    else
    {
      if (v6)
      {
        return 0;
      }

      v7 = a2[2];
      v8 = a4;
      if ((v7 & 0x8000000000000000) == 0)
      {
        v8 = *(a4 + 24) + 24 * v7;
      }

      v9 = *a3;
      if (*a3 != 2)
      {
        if (v9 == 1)
        {
LABEL_30:
          v24 = a3[2];
          v21 = a5 + 48 * a3[1];
          if ((v24 & 0x8000000000000000) == 0)
          {
            v21 = *(v21 + 24) + 24 * v24;
          }

          return sub_1002A9AF0((a1 + 8), v8, v21) >= 0;
        }

LABEL_13:
        if (!v9)
        {
          goto LABEL_14;
        }

        return 0;
      }
    }

    v18 = a3[1];
    v19 = a6[4];
    v20 = a6[1];
    v17 = (v20 + 8 * (v19 / 0xAA));
    if (a6[2] == v20)
    {
      v21 = 0;
      if (!v18)
      {
        return sub_1002A9AF0((a1 + 8), v8, v21) >= 0;
      }
    }

    else
    {
      v21 = *v17 + 24 * (v19 % 0xAA);
      if (!v18)
      {
        return sub_1002A9AF0((a1 + 8), v8, v21) >= 0;
      }
    }

    v26 = v18 - 0x5555555555555555 * ((v21 - *v17) >> 3);
    if (v26 >= 1)
    {
LABEL_38:
      v21 = v17[v26 / 0xAAuLL] + 24 * (v26 % 0xAAuLL);
      return sub_1002A9AF0((a1 + 8), v8, v21) >= 0;
    }

LABEL_41:
    v21 = v17[-((169 - v26) / 0xAAuLL)] + 24 * (170 * ((169 - v26) / 0xAAuLL) - (169 - v26)) + 4056;
    return sub_1002A9AF0((a1 + 8), v8, v21) >= 0;
  }

  v13 = a2[1];
  v14 = a6[4];
  v15 = a6[1];
  v16 = a6[2];
  v17 = (v15 + 8 * (v14 / 0xAA));
  if (v16 == v15)
  {
    v8 = 0;
    if (!v13)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v8 = *v17 + 24 * (v14 % 0xAA);
    if (!v13)
    {
LABEL_26:
      v23 = *a3;
      if (*a3 != 2)
      {
        goto LABEL_27;
      }

LABEL_33:
      v25 = a3[1];
      if (v16 == v15)
      {
        v21 = 0;
        if (!v25)
        {
          return sub_1002A9AF0((a1 + 8), v8, v21) >= 0;
        }
      }

      else
      {
        v21 = *v17 + 24 * (v14 % 0xAA);
        if (!v25)
        {
          return sub_1002A9AF0((a1 + 8), v8, v21) >= 0;
        }
      }

      v26 = v25 - 0x5555555555555555 * ((v21 - *v17) >> 3);
      if (v26 >= 1)
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }
  }

  v22 = v13 - 0x5555555555555555 * ((v8 - *v17) >> 3);
  if (v22 >= 1)
  {
    v8 = v17[v22 / 0xAAuLL] + 24 * (v22 % 0xAAuLL);
    goto LABEL_26;
  }

  v8 = v17[-((169 - v22) / 0xAAuLL)] + 24 * (170 * ((169 - v22) / 0xAAuLL) - (169 - v22)) + 4056;
  v23 = *a3;
  if (*a3 == 2)
  {
    goto LABEL_33;
  }

LABEL_27:
  if (v23 == 1)
  {
    goto LABEL_30;
  }

  if (v23)
  {
    return 0;
  }

LABEL_14:
  v11 = a3[2];
  if ((v11 & 0x8000000000000000) == 0)
  {
    a4 = *(a4 + 24) + 24 * v11;
  }

  return sub_1002A9AF0((a1 + 8), v8, a4) >= 0;
}

uint64_t sub_1002A9AF0(double *a1, double **a2, double **a3)
{
  v3 = *a3;
  v4 = a3[1];
  if ((v4 - *a3) < 0x40)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v49) = 0;
  BYTE4(v49) = 0;
  if (v3 + 2 == v4)
  {
    return 0xFFFFFFFFLL;
  }

  do
  {
    if (!sub_10016C110(a1, v3, v3 + 2, &v49))
    {
      break;
    }

    v8 = v3 + 4;
    v3 += 2;
  }

  while (v8 != v4);
  if (LODWORD(v49))
  {
    result = 1;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if (BYTE4(v49))
  {
    v10 = *a2;
    v11 = a2[1];
    v12 = (*a2 + 2);
    if (*a2 != v11 && v12 != v11)
    {
      while (1)
      {
        v14 = v10;
        v10 = v12;
        v15 = *a3;
        v16 = a3[1];
        if ((v16 - *a3) < 0x40)
        {
          return 0xFFFFFFFFLL;
        }

        v17 = v15 + 2;
        if (v15 + 2 == v16)
        {
          return 0xFFFFFFFFLL;
        }

        v18 = 0;
        while (1)
        {
          v21 = *(v17 - 2);
          v22 = *v10;
          if (v21 == *v10)
          {
            v23 = 1;
            v24 = *v17;
            if (*v17 == v22)
            {
              goto LABEL_29;
            }
          }

          else if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v32 = fabs(v21);
            v33 = fabs(v22);
            v34 = vabdd_f64(v21, v22);
            if (v32 < v33)
            {
              v32 = v33;
            }

            if (v32 < 1.0)
            {
              v32 = 1.0;
            }

            v23 = v34 <= v32 * 2.22044605e-16;
            v24 = *v17;
            if (*v17 == v22)
            {
LABEL_29:
              v25 = 1;
              if (!v23)
              {
                break;
              }

              goto LABEL_30;
            }
          }

          else
          {
            v23 = 0;
            v24 = *v17;
            if (*v17 == v22)
            {
              goto LABEL_29;
            }
          }

          if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v23)
            {
LABEL_61:
              if (v24 <= v22)
              {
                v38 = -1;
              }

              else
              {
                v38 = 1;
              }

              if (v23)
              {
                v39 = v17 - 2;
              }

              else
              {
                v39 = v17;
              }

              v40 = v14[3];
              v41 = v39[1];
              if (v40 == v41)
              {
                goto LABEL_15;
              }

              goto LABEL_74;
            }

LABEL_82:
            if (v21 >= v22 || v24 <= v22)
            {
              if (v21 <= v22 || v24 >= v22)
              {
                goto LABEL_26;
              }

              v38 = -2;
            }

            else
            {
              v38 = 2;
            }

            v49 = 1.0;
            v47 = sub_10016C468(v17 - 2, v17, v10, &v49);
            if (v47 == 0.0)
            {
              goto LABEL_15;
            }

            if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
            {
              v48 = fabs(v47);
              if (v47 > 0.0)
              {
                v19 = 1;
              }

              else
              {
                v19 = -1;
              }

              if (v48 <= v49 * 2.22044605e-16)
              {
                goto LABEL_15;
              }
            }

            else if (v47 > 0.0)
            {
              v19 = 1;
            }

            else
            {
              v19 = -1;
            }

LABEL_22:
            if (v38 * v19 <= 0)
            {
              v20 = 0;
            }

            else
            {
              v20 = v38;
            }

            v18 += v20;
            goto LABEL_26;
          }

          v35 = fabs(v24);
          v36 = fabs(v22);
          v37 = vabdd_f64(v24, v22);
          if (v35 < v36)
          {
            v35 = v36;
          }

          if (v35 < 1.0)
          {
            v35 = 1.0;
          }

          v25 = v37 <= v35 * 2.22044605e-16;
          if (!v23 || !v25)
          {
            break;
          }

LABEL_30:
          v26 = v14[3];
          v27 = *(v17 - 1);
          v28 = v17[1];
          if (v27 <= v26 && v28 >= v26)
          {
            goto LABEL_15;
          }

          if (v27 >= v26 && v28 <= v26)
          {
            goto LABEL_15;
          }

LABEL_26:
          v17 += 2;
          if (v17 == v16)
          {
            if (v18)
            {
              return 1;
            }

            else
            {
              return 0xFFFFFFFFLL;
            }
          }
        }

        if (v23)
        {
          goto LABEL_61;
        }

        if (!v25)
        {
          goto LABEL_82;
        }

        if (v21 <= v22)
        {
          v38 = 1;
        }

        else
        {
          v38 = -1;
        }

        v40 = v14[3];
        v41 = v17[1];
        if (v40 == v41)
        {
          goto LABEL_15;
        }

LABEL_74:
        if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_19;
        }

        v42 = fabs(v40);
        v43 = fabs(v41);
        v44 = vabdd_f64(v40, v41);
        if (v42 < v43)
        {
          v42 = v43;
        }

        if (v42 < 1.0)
        {
          v42 = 1.0;
        }

        if (v44 > v42 * 2.22044605e-16)
        {
LABEL_19:
          if (v40 >= v41)
          {
            v19 = v38;
          }

          else
          {
            v19 = -v38;
          }

          goto LABEL_22;
        }

LABEL_15:
        result = 0;
        v12 = (v10 + 2);
        if (v10 + 2 == v11)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_1002A9EA8(uint64_t a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1002AA430(exception, a1, a2);
}

void sub_1002A9F14(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000FC84();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10000D444();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    if (v5 != v4)
    {
      v15 = v5;
      v16 = v14;
      do
      {
        *v16 = *v15;
        *(v16 + 2) = *(v15 + 2);
        *v15 = 0;
        *(v15 + 1) = 0;
        *(v15 + 2) = 0;
        v15 += 24;
        v16 += 24;
      }

      while (v15 != v4);
      do
      {
        v17 = *v5;
        if (*v5)
        {
          *(v5 + 1) = v17;
          operator delete(v17);
        }

        v5 += 24;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_1002AA110(uint64_t *a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_10000FC84();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_10000D444();
  }

  v11 = (16 * ((a1[1] - *a1) >> 4));
  sub_1002737CC(v11, a2);
  v6 = 48 * v2 + 48;
  v7 = a1[1];
  v8 = (v11 + *a1 - v7);
  sub_1002AA24C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_1002AA238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002AA348(va);
  _Unwind_Resume(a1);
}

void sub_1002AA24C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v6 + 24);
      a4[5] = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v6 += 48;
      a4 += 6;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v7 = *(v5 + 24);
      if (v7)
      {
        v8 = *(v5 + 32);
        v9 = *(v5 + 24);
        if (v8 != v7)
        {
          v10 = *(v5 + 32);
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
          v9 = *(v5 + 24);
        }

        *(v5 + 32) = v7;
        operator delete(v9);
      }

      v13 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v13;
        operator delete(v13);
      }

      v5 += 48;
    }
  }
}

void **sub_1002AA348(void **a1)
{
  sub_1002AA37C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002AA37C(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    v4 = (i - 48);
    *(a1 + 16) = i - 48;
    v5 = *(i - 24);
    if (v5)
    {
      v6 = *(i - 16);
      v7 = *(i - 24);
      if (v6 != v5)
      {
        v8 = *(i - 16);
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
        v7 = *(i - 24);
      }

      *(i - 16) = v5;
      operator delete(v7);
    }

    v11 = *v4;
    if (*v4)
    {
      *(i - 40) = v11;
      operator delete(v11);
    }
  }
}

int8x16_t sub_1002AA430(uint64_t a1, uint64_t a2, int8x16_t *a3)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &off_1004456E8;
  *(a1 + 8) = off_100445718;
  *(a1 + 16) = off_100445740;
  *(a1 + 48) = a3[1].i32[0];
  result = vextq_s8(*a3, *a3, 8uLL);
  *(a1 + 32) = result;
  return result;
}

std::exception *sub_1002AA4AC(std::exception *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);
  return a1;
}

void sub_1002AA6D0(__n128 *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1002AAA84(exception, a1);
}

void sub_1002AA72C(std::exception *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);

  operator delete();
}

void sub_1002AA7D0(std::exception *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::exception::~exception(a1);
}

void sub_1002AA864(std::exception *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::exception::~exception(a1);

  operator delete();
}

void sub_1002AA920(std::exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 1);
}

void sub_1002AA9A8(std::exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 1);

  operator delete();
}

void sub_1002AAA4C(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

__n128 sub_1002AAA84(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = &off_100431F30;
  a1->n128_u64[1] = &off_100445760;
  v3 = a2[1].n128_u64[1];
  a1[1].n128_u64[0] = &off_100431E10;
  a1[1].n128_u64[1] = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = a2[2];
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  a1[2] = result;
  a1->n128_u64[0] = &off_1004456E8;
  a1->n128_u64[1] = off_100445718;
  a1[1].n128_u64[0] = off_100445740;
  return result;
}

void sub_1002AABB8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002AABB8(a1, *a2);
    sub_1002AABB8(a1, a2[1]);
    sub_1000275F4((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t sub_1002AAC1C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 8;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 16;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002AAD08()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002AAD78()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1002AADE8(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, __int128 *a5)
{
  sub_100251AB4(a3, v14);
  v10 = *a2;
  v11 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  *a1 = off_100438CA0;
  sub_10014C1B4((a1 + 8), v14);
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  sub_10014C254(v14);
  *a1 = off_100445788;
  sub_100250BA8(a3, v14);
  sub_100259EAC(a1 + 72, v14, 0.25);
  v12 = *a5;
  *(a1 + 120) = *a5;
  *a5 = 0;
  *(a5 + 1) = 0;
  if (a4 == 1)
  {
    *&v12 = sub_1002519D8(a3);
  }

  else if (!a4)
  {
    *&v12 = sub_1002519CC(a3);
  }

  *(a1 + 136) = sqrt(*&v12 * 0.25);
  return a1;
}

void sub_1002AAF04(_Unwind_Exception *a1)
{
  sub_10002BB1C(v2);
  sub_1000BE7D4(v1);
  _Unwind_Resume(a1);
}

void sub_1002AAF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002BB1C(&a9);
  sub_10014C254(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AAF58(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 + 56;
  sub_100259ED8(a1 + 72, *(a1 + 56), a2[5]);
  *(a2 + 5) = v8;
  v9 = a2[2];
  v10 = a2[3];
  v11 = v9 + (*(**v7 + 56))() * *(v7 + 80);
  v12 = v10 + (*(**v7 + 56))() * *(v7 + 80);
  v13 = *(a3 + 16);

  return sub_1001E8DB8(a2, v11, v12, v13, a4, v7, v7 - 48, (v7 + 64));
}

void *sub_1002AB038(void *a1)
{
  *a1 = off_100445788;
  v2 = a1[16];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = off_100438CA0;
  v3 = a1[8];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    sub_10014C254((a1 + 1));
    return a1;
  }

  else
  {
    sub_10014C254((a1 + 1));
    return a1;
  }
}

void sub_1002AB144(void *a1)
{
  *a1 = off_100445788;
  v2 = a1[16];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = off_100438CA0;
  v3 = a1[8];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_10014C254((a1 + 1));

  operator delete();
}

void sub_1002AB258()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002AB2C8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002AB338(void *a1, char **a2, sqlite3_blob **a3)
{
  if (qword_10045B080 != -1)
  {
    sub_100386898();
  }

  v6 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = sub_10011823C(a2);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "building offset map and inserting into map, locationId=%s", buf, 0xCu);
  }

  sub_10024B60C(v11, *a3);
  v7 = v12;
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(buf, v11, -1);
  sub_100219904(buf, v7, v10);
  if (qword_10045B080 != -1)
  {
    sub_1003868AC();
  }

  v8 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_10011823C(a2);
    *v13 = 136315138;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "inserting offset map, locationId=%s", v13, 0xCu);
  }

  sub_1002AB988(a1, a2);
  if (v10[5])
  {
    operator delete(v10[3]);
  }

  if (v10[2])
  {
    operator delete(v10[0]);
  }

  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(buf);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(v11);
}

void sub_1002AB4E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  sub_1002AB944(va);
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(va2);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(va1);
  _Unwind_Resume(a1);
}

void sub_1002AB518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002AB530(uint64_t *a1, uint64_t ***a2)
{
  result = sub_10024A8AC(a1, a2);
  if (result)
  {

    return sub_1002ABDD4(a1, result);
  }

  return result;
}

void sub_1002AB57C(uint64_t a1, sqlite3_blob **a2, uint64_t a3)
{
  sub_10024B60C(v7, *a2);
  v4 = v8;
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(v6, v7, -1);
  v5 = *(a3 + 24);
  if (!v5)
  {
    goto LABEL_4;
  }

  if (v5 != a3)
  {
    v5 = (*(*v5 + 16))(v5);
LABEL_4:
    v10 = v5;
    goto LABEL_6;
  }

  v10 = v9;
  (*(*v5 + 24))(v5, v9);
LABEL_6:
  sub_10021A7CC(v6, v4);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(v6);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(v7);
}

void sub_1002AB6E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(va);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(va1);
  _Unwind_Resume(a1);
}

void sub_1002AB70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(va);
  _Unwind_Resume(a1);
}

void sub_1002AB724(void *a1@<X0>, uint64_t ***a2@<X1>, uint64_t *a3@<X2>, sqlite3_blob **a4@<X3>, uint64_t *a5@<X8>)
{
  if (sub_1001EDFC8(a1, a2))
  {
    sub_10024B60C(v16, *a4);
    wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(&v14, v16, -1);
    v10 = sub_1001EDFC8(a1, a2);
    if (!v10)
    {
      sub_10001C6D4("unordered_map::at: key not found");
    }

    sub_100219CB0(a3, v10 + 4, a5);
    wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(&v14);
    wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(v16);
  }

  else
  {
    v12 = *a3;
    v11 = a3[1];
    v16[0] = 0;
    v16[1] = 0;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    v14 = a5;
    v15 = 0;
    v13 = v11 - v12;
    if (v13)
    {
      if (!((v13 >> 5) >> 60))
      {
        operator new();
      }

      sub_10000FC84();
    }
  }
}

void sub_1002AB858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_1001811E8(&a9);
  sub_10002BB1C(&a16);
  _Unwind_Resume(a1);
}

void sub_1002AB874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(va);
  _Unwind_Resume(a1);
}

void sub_1002AB888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(&a9);
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(&a16);
  _Unwind_Resume(a1);
}

const void ***sub_1002AB8A4(void *a1, uint64_t ***a2, uint64_t *a3)
{
  result = sub_1001EDFC8(a1, a2);
  if (result)
  {
    v5 = *a3;
    v6 = a3[1];
    if (v5 == v6)
    {
      return 0;
    }

    else
    {
      v7 = result;
      do
      {
        result = sub_1002192AC(v7 + 4, v5);
        if (result)
        {
          break;
        }

        v5 += 32;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_1002AB944(uint64_t a1)
{
  if (*(a1 + 40))
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 16))
  {
    operator delete(*a1);
  }

  return a1;
}

const void ***sub_1002AB988(void *a1, uint64_t ***a2)
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

void sub_1002ABD0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002ABD20(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002ABD20(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 72))
      {
        operator delete(*(v2 + 56));
      }

      if (*(v2 + 48))
      {
        operator delete(*(v2 + 32));
      }

      v3 = *(v2 + 24);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1002ABDD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100010A88(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v7 == 1)
    {
      if (*(v3 + 9))
      {
        operator delete(*(v3 + 7));
      }

      if (*(v3 + 6))
      {
        operator delete(*(v3 + 4));
      }

      v4 = *(v3 + 3);
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    operator delete(v3);
  }

  return v2;
}

void sub_1002ABE98()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002ABF08()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002ABF78(void *a1, uint64_t a2)
{
  *a1 = off_100445810;
  a1[1] = 0x7FF8000000000000;
  sub_10020958C((a1 + 2), a2);
  sub_1002B18B0((a1 + 5));
}

double sub_1002AC008(uint64_t a1, uint64_t **a2)
{
  v4 = sub_100258548((a1 + 16));
  v5 = (*(**(a1 + 80) + 24))(*(a1 + 80));
  sub_1002AC1E0(v4, v5, "mean", (a1 + 16), "LL");
  v6 = sub_100258548(a2);
  sub_1002AC618(v4, v6, "mean", (a1 + 16), "y", a2);
  sub_1002ACA58(a2, (a1 + 16));
  return (*(**(a1 + 80) + 48))(*(a1 + 80), a2) * -0.5;
}

double sub_1002AC0F4(uint64_t a1, uint64_t **a2)
{
  v4 = sub_100258548((a1 + 16));
  v5 = (*(**(a1 + 80) + 24))(*(a1 + 80));
  sub_1002AC1E0(v4, v5, "mean", (a1 + 16), "LL");
  v6 = sub_100258548(a2);
  sub_1002AC618(v4, v6, "mean", (a1 + 16), "y", a2);
  sub_1002ACA58(a2, (a1 + 16));
  return (*(**(a1 + 80) + 48))(*(a1 + 80), a2) * -0.5;
}

uint64_t sub_1002AC1E0(uint64_t result, uint64_t a2, char *a3, uint64_t **a4, char *a5)
{
  if (result != a2)
  {
    v9 = result;
    sub_10003BFA8(v25);
    sub_100258A10(v25, a4);
    sub_1000474A4(v22, a3);
    std::stringbuf::str();
    sub_1000474A4(v20, a5);
    sub_1000474A4(__p, "unavailable");
    sub_10033E7A8(&v24, v22, v9, v16, v20, a2, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v21 & 0x80000000) == 0)
    {
LABEL_4:
      if (SHIBYTE(v17) < 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

    operator delete(v20[0]);
    if (SHIBYTE(v17) < 0)
    {
LABEL_5:
      operator delete(v16[0]);
      if ((v23 & 0x80000000) == 0)
      {
LABEL_11:
        if (sub_1000E6528())
        {
          sub_10004DAA4(v16);
          sub_1000E0784(0);
          if ((v19 & 0x80u) == 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = __p[0];
          }

          if ((v19 & 0x80u) == 0)
          {
            v11 = v19;
          }

          else
          {
            v11 = __p[1];
          }

          sub_10003C2E4(&v17, v10, v11);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }

          if (qword_10045B050 != -1)
          {
            sub_1003868D4();
          }

          v12 = qword_10045B058;
          if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
          {
            v13 = std::logic_error::what(&v24);
            std::stringbuf::str();
            if ((v19 & 0x80u) == 0)
            {
              v14 = __p;
            }

            else
            {
              v14 = __p[0];
            }

            *buf = 136315394;
            v27 = v13;
            v28 = 2080;
            v29 = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Precondition failure: %s\n%s\n", buf, 0x16u);
            if (v19 < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_1001D8FE0(v16);
        }

        __cxa_allocate_exception(0x80uLL);
        sub_10010A984(v15);
      }

LABEL_10:
      operator delete(v22[0]);
      goto LABEL_11;
    }

LABEL_9:
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return result;
}

void sub_1002AC490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::logic_error a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1001D8FE0(&a12);
  sub_10033E844(&a56);
  sub_10003C1C4(&a65);
  _Unwind_Resume(a1);
}

void sub_1002AC4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::logic_error a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10033E844(&a56);
  sub_10003C1C4(&a65);
  _Unwind_Resume(a1);
}

void sub_1002AC540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a55 < 0)
  {
    operator delete(__p);
    if (a61 < 0)
    {
LABEL_5:
      operator delete(a56);
      if (a17 < 0)
      {
LABEL_8:
        operator delete(a12);
        if (a67 < 0)
        {
LABEL_11:
          operator delete(a62);
          sub_10003C1C4(&a72);
          _Unwind_Resume(a1);
        }

LABEL_12:
        sub_10003C1C4(&a72);
        _Unwind_Resume(a1);
      }

LABEL_10:
      if (a67 < 0)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }
  }

  else if (a61 < 0)
  {
    goto LABEL_5;
  }

  if (a17 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

uint64_t sub_1002AC618(uint64_t result, uint64_t a2, char *a3, uint64_t **a4, char *a5, uint64_t **a6)
{
  if (result != a2)
  {
    v11 = result;
    sub_10003BFA8(v28);
    sub_100258A10(v28, a4);
    sub_10003BFA8(v27);
    sub_100258A10(v27, a6);
    sub_1000474A4(v24, a3);
    std::stringbuf::str();
    sub_1000474A4(v22, a5);
    std::stringbuf::str();
    sub_10033E7A8(&v26, v24, v11, v18, v22, a2, __p);
    if (v21 < 0)
    {
      operator delete(__p[0]);
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v23 & 0x80000000) == 0)
    {
LABEL_4:
      if (SHIBYTE(v19) < 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

    operator delete(v22[0]);
    if (SHIBYTE(v19) < 0)
    {
LABEL_5:
      operator delete(v18[0]);
      if ((v25 & 0x80000000) == 0)
      {
LABEL_11:
        if (sub_1000E6528())
        {
          sub_10004DAA4(v18);
          sub_1000E0784(0);
          if ((v21 & 0x80u) == 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          if ((v21 & 0x80u) == 0)
          {
            v13 = v21;
          }

          else
          {
            v13 = __p[1];
          }

          sub_10003C2E4(&v19, v12, v13);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          if (qword_10045B050 != -1)
          {
            sub_1003868D4();
          }

          v14 = qword_10045B058;
          if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
          {
            v15 = std::logic_error::what(&v26);
            std::stringbuf::str();
            if ((v21 & 0x80u) == 0)
            {
              v16 = __p;
            }

            else
            {
              v16 = __p[0];
            }

            *buf = 136315394;
            v30 = v15;
            v31 = 2080;
            v32 = v16;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Precondition failure: %s\n%s\n", buf, 0x16u);
            if (v21 < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_1001D8FE0(v18);
        }

        __cxa_allocate_exception(0x80uLL);
        sub_10010A984(v17);
      }

LABEL_10:
      operator delete(v24[0]);
      goto LABEL_11;
    }

LABEL_9:
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return result;
}

void sub_1002AC8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, std::logic_error a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1001D8FE0(&a13);
  sub_10033E844(&a57);
  sub_10003C1C4(&a66);
  sub_10003C1C4(&STACK[0x2D8]);
  _Unwind_Resume(a1);
}

void sub_1002AC964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a56 < 0)
  {
    operator delete(__p);
    if (a62 < 0)
    {
LABEL_5:
      operator delete(a57);
      if (a18 < 0)
      {
LABEL_8:
        operator delete(a13);
        if ((a68 & 0x80000000) == 0)
        {
LABEL_12:
          sub_10003C1C4(&a72);
          sub_10003C1C4(&STACK[0x2D8]);
          _Unwind_Resume(a1);
        }

LABEL_11:
        operator delete(a63);
        sub_10003C1C4(&a72);
        sub_10003C1C4(&STACK[0x2D8]);
        _Unwind_Resume(a1);
      }

LABEL_10:
      if ((a68 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (a62 < 0)
  {
    goto LABEL_5;
  }

  if (a18 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

unint64_t *sub_1002ACA58(unint64_t *a1, unint64_t *a2)
{
  v4 = sub_100258548(a2);
  if (v4 != sub_100258548(a1))
  {
    sub_100385A9C();
    sub_1000BC6D8(__p);
  }

  v5 = *a1;
  v6 = a1[1];
  v7 = v6 - *a1;
  if (a2[1] - *a2 != v7)
  {
    sub_100385A9C();
    sub_10003F5D0(__p);
  }

  if (v6 != v5)
  {
    v8 = v7 >> 3;
    v9 = *a2;
    if ((v7 >> 3) <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7 >> 3;
    }

    if (v8 <= 5 || (v5 < v9 + 8 * v10 ? (v11 = v9 >= v5 + 8 * v10) : (v11 = 1), !v11))
    {
      v12 = 0;
LABEL_18:
      v17 = v10 - v12;
      v18 = (v9 + 8 * v12);
      v19 = (v5 + 8 * v12);
      do
      {
        v20 = *v18++;
        *v19 = *v19 - v20;
        ++v19;
        --v17;
      }

      while (v17);
      return a1;
    }

    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = (v9 + 16);
    v14 = (v5 + 16);
    v15 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v16 = vsubq_f64(*v14, *v13);
      v14[-1] = vsubq_f64(v14[-1], v13[-1]);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 4;
    }

    while (v15);
    if (v8 != v12)
    {
      goto LABEL_18;
    }
  }

  return a1;
}

void sub_1002ACBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002ACCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_100385CC0(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002ACCC8(void *a1)
{
  *a1 = off_100445810;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    a1[3] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_1002ACD58(void *a1)
{
  *a1 = off_100445810;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    a1[3] = v4;
    operator delete(v4);
  }

  operator delete();
}

void sub_1002ACE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002ACF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002ACF40(uint64_t a1, void *a2)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  (*(*a1 + 16))(a1, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_1002AD00C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002AD078(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004458D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002AD114()
{
  __cxa_allocate_exception(0x40uLL);
  *(&v1.__r_.__value_.__s + 23) = 15;
  strcpy(&v1, "not implemented");
  std::runtime_error::runtime_error(&v2, &v1);
  v2.__vftable = &off_100444338;
  sub_10010A984(v0);
}

void sub_1002AD1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

void sub_1002AD240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1002AD230);
}

void sub_1002AD264(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  sub_1002AE460(&v10, a1);
  v15 = &off_100431F30;
  sub_1002ADA18(&v12, &v10);
  v12.__vftable = &off_100445A00;
  v13[0] = off_100445A38;
  v15 = &off_100445A70;
  sub_10000D87C(v13, &v11);
  v13[2] = a2;
  v13[3] = a3;
  v14 = a4;
  v9 = a5[1] - *a5;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1002AD738();
}

void sub_1002AD550(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_1002AD578(std::logic_error *a1)
{
  a1[5].__vftable = &off_100431E10;
  imp = a1[5].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[5].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[5].__imp_.__imp_ = 0;
    }
  }

  sub_10033E7AC(a1);
}

void *sub_1002AD60C(uint64_t a1, uint64_t a2)
{
  *(a1 + 120) = &off_100431F30;
  result = sub_1002ADA18(a1, a2);
  *result = &off_100445A00;
  result[10] = off_100445A38;
  result[15] = &off_100445A70;
  return result;
}

void sub_1002AD6A4(std::logic_error *a1)
{
  a1[5].__vftable = &off_100431E10;
  imp = a1[5].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[5].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[5].__imp_.__imp_ = 0;
    }
  }

  sub_10033E7AC(a1);
}

void sub_1002AD9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_1002AD9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002ADA18(uint64_t a1, uint64_t a2)
{
  v4 = std::logic_error::logic_error(a1, a2);
  v4->__vftable = off_10044A700;
  if (*(a2 + 39) < 0)
  {
    sub_100003228(&v4[1], *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    v4[2].__vftable = *(a2 + 32);
    v4[1] = v5;
  }

  *(a1 + 40) = *(a2 + 40);
  if (*(a2 + 71) < 0)
  {
    sub_100003228((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 80) = &off_100431E10;
  *(a1 + 88) = v7;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v8;
  *a1 = &off_100445AA0;
  *(a1 + 80) = off_100445AC8;
  return a1;
}

void sub_1002ADB60(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
    std::logic_error::~logic_error(v1);
    _Unwind_Resume(a1);
  }

  std::logic_error::~logic_error(v1);
  _Unwind_Resume(a1);
}

void sub_1002ADBAC(std::logic_error *a1)
{
  a1[5].__vftable = &off_100431E10;
  imp = a1[5].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[5].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[5].__imp_.__imp_ = 0;
    }
  }

  sub_10033E7AC(a1);
}

void sub_1002ADC40(std::logic_error *this)
{
  this[5].__vftable = &off_100431E10;
  imp = this[5].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[5].__imp_.__imp_ = 0;
  }

  sub_10033E7AC(this);

  operator delete();
}

void sub_1002ADD60(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x80uLL);
  sub_1002AD60C(exception, a1);
}

void sub_1002ADDBC(std::logic_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  sub_10033E7AC(a1 - 5);
}

void sub_1002ADE44(std::logic_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  sub_10033E7AC(a1 - 5);

  operator delete();
}

void sub_1002AE010(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x80uLL);
  sub_1002AD60C(exception, a1 + v2);
}

void sub_1002AE084(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[5].__vftable = &off_100431E10;
  imp = v1[5].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[5].__imp_.__imp_ = 0;
  }

  sub_10033E7AC(v1);
}

void sub_1002AE124(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[5].__vftable = &off_100431E10;
  imp = v1[5].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[5].__imp_.__imp_ = 0;
  }

  sub_10033E7AC(v1);

  operator delete();
}

void sub_1002AE1D8(std::logic_error *this)
{
  this[5].__vftable = &off_100431E10;
  imp = this[5].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[5].__imp_.__imp_ = 0;
  }

  sub_10033E7AC(this);

  operator delete();
}

void sub_1002AE278(std::logic_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  sub_10033E7AC(a1 - 5);
}

void sub_1002AE300(std::logic_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  sub_10033E7AC(a1 - 5);

  operator delete();
}

uint64_t sub_1002AE39C(uint64_t a1, uint64_t a2)
{
  *(a1 + 120) = &off_100431F30;
  v4 = sub_1002ADA18(a1, a2);
  *v4 = &off_100445A00;
  *(a1 + 80) = off_100445A38;
  *(a1 + 120) = &off_100445A70;
  sub_10000D87C((v4 + 10), a2 + 80);
  return a1;
}

uint64_t sub_1002AE460(uint64_t a1, uint64_t a2)
{
  v4 = std::logic_error::logic_error(a1, a2);
  v4->__vftable = off_10044A700;
  if (*(a2 + 39) < 0)
  {
    sub_100003228(&v4[1], *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    v4[2].__vftable = *(a2 + 32);
    v4[1] = v5;
  }

  *(a1 + 40) = *(a2 + 40);
  if (*(a2 + 71) < 0)
  {
    sub_100003228((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  v7 = *(a2 + 72);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = -1;
  *a1 = &off_100445AA0;
  *(a1 + 72) = v7;
  *(a1 + 80) = off_100445AC8;
  return a1;
}

void sub_1002AE55C(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
    std::logic_error::~logic_error(v1);
    _Unwind_Resume(a1);
  }

  std::logic_error::~logic_error(v1);
  _Unwind_Resume(a1);
}

void sub_1002AE594()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002AE604()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_1002AE718(uint64_t **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0.0;
  }

  v3 = 0.0;
  v4 = 0.0;
  do
  {
    v10 = *v1;
    sub_10012A31C(v11, (v1 + 1));
    v5 = sub_100218070(&v10);
    sub_10012A31C(v7, v5);
    v3 = v3 + v8;
    v4 = v4 + v9;
    nullsub_68(v7);
    nullsub_68(v11);
    v1 += 5;
  }

  while (v1 != v2);
  return v3;
}

double sub_1002AE7DC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = NAN;
  *(a1 + 24) = xmmword_1003DB3E0;
  return result;
}

void sub_1002AE7F4(void **a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x7FF8000000000000;
  *(a2 + 32) = a3;
  if (a2 != a1)
  {
    sub_10026F2A4(a2, *a1, a1[1], 0xCCCCCCCCCCCCCCCDLL * (a1[1] - *a1));
  }
}

double sub_1002AE860(uint64_t a1, uint64_t a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  if (*(a2 + 32) != 0.0)
  {
    (*(**(a1 + 56) + 48))(&v14, a3);
    if (v14)
    {
      sub_10031C1E8(*(a1 + 32) - *(v14 + 80));
      sub_10031C1E8(1.57079633 - (v5 + -1.57079633));
      v7 = v6;
      v8 = sub_1002AE718(a2);
      v10 = atan2(v9, v8);
      sub_10031C1E8(v7 - v10);
      a3.n128_f64[0] = *(a2 + 32) * ((*&qword_100471C00 + (a3.n128_f64[0] * a3.n128_f64[0] / 0.822467033 + 1.64243019) * -0.5) * (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 3)));
      v11 = v15;
      if (!v15)
      {
        return a3.n128_f64[0];
      }
    }

    else
    {
      a3.n128_u64[0] = *(a2 + 24);
      v11 = v15;
      if (!v15)
      {
        return a3.n128_f64[0];
      }
    }

    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = a3.n128_u64[0];
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      a3.n128_u64[0] = v12;
    }
  }

  return a3.n128_f64[0];
}

void sub_1002AEA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002AEA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1002AEA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1002AEA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

double sub_1002AEA84(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 != 1 || !sub_10037F9F0(a1) || sub_10037FAD4(a1) > *(a3 + 96))
  {
    return 0.0;
  }

  return sub_10023FAEC(a3);
}

void sub_1002AEAF0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002AEB60()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

long double sub_1002AEBD0()
{
  *&qword_100471BF8 = 0.99978988 - sub_10023FB90(-3.46410162);
  result = -log(*&qword_100471BF8);
  qword_100471C00 = *&result;
  return result;
}

void sub_1002AEC20(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = atomic_load((a1 + 8));
  if (v2)
  {
    v6.__m_ = (a1 + 16);
    v6.__owns_ = 1;
    std::mutex::lock((a1 + 16));
    v4 = atomic_load(v1);
    if (v4)
    {
      do
      {
        std::condition_variable::wait((a1 + 80), &v6);
        v5 = atomic_load((a1 + 8));
      }

      while ((v5 & 1) != 0);
    }

    if (v6.__owns_)
    {
      std::mutex::unlock(v6.__m_);
    }
  }
}

void sub_1002AEC9C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002AED0C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002AED7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = off_10043DF18;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = off_10043DB28;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) &= 0xFCu;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  *(a2 + 136) &= 0xF800u;
  sub_100126648(a2, *(a1 + 8));
  sub_10012A88C(a2, *(a1 + 16));
  sub_10012E9CC(a2, *(a1 + 24));
  sub_10012E9D4(a2, a1 + 32);
  v4 = *(a1 + 192);
  if ((v4 & 0x10) != 0)
  {
    sub_10013D08C(a2, (a1 + 64));
    v4 = *(a1 + 192);
  }

  if ((v4 & 0x100) != 0)
  {
    sub_10013D0E8(a2, *(a1 + 112));
    v4 = *(a1 + 192);
  }

  if ((v4 & 0x20) != 0)
  {
    sub_10013D0C0(a2, *(a1 + 88));
    v4 = *(a1 + 192);
  }

  if ((v4 & 0x40) != 0)
  {
    sub_10013D0D4(a2, *(a1 + 96));
    v4 = *(a1 + 192);
  }

  if ((v4 & 0x800) != 0)
  {
    sub_10013D0FC(a2, *(a1 + 128));
    v4 = *(a1 + 192);
  }

  if ((v4 & 0x1000) != 0)
  {
    sub_10013D110(a2, *(a1 + 136));
    v4 = *(a1 + 192);
  }

  if ((v4 & 0x2000) != 0)
  {
    sub_10013D124(a2, *(a1 + 144));
  }
}

uint64_t sub_1002AEED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[1] = 0;
  v9[2] = 0;
  v9[0] = off_10043DB28;
  v10 = 0;
  sub_1001294D4(v9, *(a1 + 24));
  sub_1001294DC(v9, *(a1 + 32));
  *a2 = off_10043DBE8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = off_10043DB28;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) &= 0xFCu;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = off_10043DBC8;
  *(a2 + 184) = 0;
  *(a2 + 188) &= ~1u;
  *(a2 + 192) = 0;
  *(a2 + 194) &= 0xFCu;
  sub_10012EA24(a2, *(a1 + 72));
  sub_10012E9D4(a2, v9);
  v4 = *(a1 + 16);
  if (!v4)
  {
    v4 = *(qword_10045DD98 + 16);
  }

  sub_100126648(a2, *(v4 + 40));
  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = *(qword_10045DD98 + 16);
  }

  sub_10012A88C(a2, ((*(v5 + 16) + 978307200.0) * 1000000000.0));
  sub_10012EA60(a2, *(a1 + 116));
  std::to_string(&v8, *(a1 + 48));
  sub_10012E9DC(a2, &v8);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  sub_10012EA68(a2, *(a1 + 120));
  sub_10012EA7C(a2, *(a1 + 128));
  sub_10012EA90(a2, *(a1 + 136));
  sub_10012EA4C(a2, *(a1 + 96));
  sub_10012EAA4(a2, *(a1 + 104));
  sub_10012EA38(a2, *(a1 + 80));
  sub_10012EAB8(a2, *(a1 + 88));
  sub_10012EA10(a2, *(a1 + 56));
  sub_10012EACC(a2, *(a1 + 64));
  v8.__r_.__value_.__r.__words[0] = off_10043DBC8;
  LODWORD(v8.__r_.__value_.__r.__words[1]) = 0;
  v8.__r_.__value_.__s.__data_[12] = 0;
  v6 = *(a1 + 144);
  if (!v6)
  {
    v6 = *(qword_10045DD98 + 144);
  }

  sub_10012E4F8(&v8, *(v6 + 16));
  sub_10012EAE0(a2, &v8);
  nullsub_79(&v8);
  return nullsub_76(v9);
}

void sub_1002AF170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_10012E8E4(v16);
    nullsub_76(&a16);
    _Unwind_Resume(a1);
  }

  sub_10012E8E4(v16);
  nullsub_76(&a16);
  _Unwind_Resume(a1);
}

void sub_1002AF214(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000AB69C(a2);
  *(a2 + 156) |= 1u;
  v4 = *(a2 + 16);
  if (!v4)
  {
    operator new();
  }

  v5 = *(a1 + 8);
  *(v4 + 52) |= 8u;
  *(v4 + 40) = v5;
  v6 = *(a1 + 16) / 1000000000.0 + -978307200.0;
  *(a2 + 156) |= 1u;
  v7 = *(a1 + 96);
  *(v4 + 52) |= 1u;
  *(v4 + 16) = v6;
  LODWORD(v5) = *(a2 + 156);
  *(a2 + 24) = *(a1 + 40);
  *(a2 + 72) = v7;
  v8 = *(a1 + 124);
  *(a2 + 156) = v5 | 0x4106;
  *(a2 + 116) = v8;
  v9 = std::stoi((a1 + 64), 0, 10);
  v10 = *(a2 + 156);
  *(a2 + 48) = v9;
  *(a2 + 120) = *(a1 + 128);
  v11 = *(a1 + 152);
  *(a2 + 136) = *(a1 + 144);
  v12 = *(a1 + 104);
  *(a2 + 96) = *(a1 + 112);
  *(a2 + 104) = v11;
  v13 = *(a1 + 160);
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  v14 = *(a1 + 88);
  *(a2 + 156) = v10 | 0x39E28;
  *(a2 + 56) = v14;
  std::to_string(&v26, 4u);
  v15 = *(a1 + 87);
  if (v15 >= 0)
  {
    v16 = *(a1 + 87);
  }

  else
  {
    v16 = *(a1 + 72);
  }

  size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  v18 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  if (v16 != size)
  {
    v21 = 0;
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v15 >= 0)
  {
    v19 = (a1 + 64);
  }

  else
  {
    v19 = *(a1 + 64);
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v26;
  }

  else
  {
    v20 = v26.__r_.__value_.__r.__words[0];
  }

  v21 = memcmp(v19, v20, v16) == 0;
  if (v18 < 0)
  {
LABEL_18:
    operator delete(v26.__r_.__value_.__l.__data_);
  }

LABEL_19:
  v22 = *(a2 + 156);
  *(a2 + 52) = v21;
  v23 = *(a1 + 168);
  *(a2 + 156) = v22 | 0xC0;
  *(a2 + 64) = v23;
  if ((*(a1 + 194) & 2) != 0)
  {
    *(a2 + 156) = v22 | 0x400C0;
    v24 = *(a2 + 144);
    if (!v24)
    {
      operator new();
    }

    v25 = *(a1 + 184);
    *(v24 + 24) |= 1u;
    *(v24 + 16) = v25;
  }
}

uint64_t sub_1002AF4BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100232678(a1, a2);
  *(a1 + 16) = sub_1002326D0(v3, 2) + 1;
  return a1;
}

void sub_1002AF4FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10012E160(a1, 0);
  sub_1002AF6B8(a1, &__p);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __p;
  v5 = v17;
  if ((v17 - __p) >= 5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v4[2 * v7 + 1];
      if (v8)
      {
        v9 = v4[2 * v7];
        do
        {
          v10 = *(a2 + 16);
          if (v6 < v10)
          {
            *v6++ = v9;
          }

          else
          {
            v11 = *a2;
            v12 = &v6[-*a2];
            v13 = (v12 + 1);
            if ((v12 + 1) < 0)
            {
              sub_10000FC84();
            }

            v14 = v10 - v11;
            if (2 * v14 > v13)
            {
              v13 = 2 * v14;
            }

            if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v15 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v13;
            }

            if (v15)
            {
              operator new();
            }

            *v12 = v9;
            v6 = v12 + 1;
            memcpy(0, v11, v12);
            *a2 = 0;
            *(a2 + 16) = 0;
            if (v11)
            {
              operator delete(v11);
            }
          }

          *(a2 + 8) = v6;
          --v8;
        }

        while (v8);
        v4 = __p;
        v5 = v17;
      }

      ++v7;
    }

    while (v7 < ((v5 - v4) >> 2) >> 1);
  }

  sub_1002AF750(a2);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }
}

void sub_1002AF678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v12)
  {
    *(v11 + 8) = v12;
    operator delete(v12);
    v14 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_1002AF6B8(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  sub_10012E160(a1, 0);
  sub_100232704(a1, 2);
  if (sub_100232684(a1, 1))
  {
    sub_10017EEC0(v4, *a1, *(a1 + 8), *(a1 + 16));
    sub_100218554(v4, a2);
  }

  else
  {
    sub_10017EEC0(v4, *a1, *(a1 + 8), *(a1 + 16));
    sub_10017EECC(v4, a2);
  }
}

void sub_1002AF750(char **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = (v1 - *a1);
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      v6 = (v1 - *a1);
      operator new();
    }

    if (v4 < v3)
    {
      v7 = (v1 - *a1);
      v8 = a1[1];
      v9 = &v4[v2 - v8];
      memcpy(v9, v2, v8 - v2);
      *a1 = v9;
      a1[1] = v7;
      a1[2] = v7;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

__n128 *sub_1002AF838(__n128 *a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  sub_100217150(a1, a4);
  *(v8 + 16) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_1001FD544(v8 + 32, a3);
  sub_10021569C(a4);
  return a1;
}

void sub_1002AF950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1001F9864(v20 + 16);
    sub_10002BB1C(v20);
    _Unwind_Resume(a1);
  }

  sub_1001F9864(v20 + 16);
  sub_10002BB1C(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AF9C4(uint64_t a1)
{
  sub_1001F9864(a1 + 32);
  result = a1;
  v3 = *(a1 + 24);
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

void sub_1002AFA4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a7 - a6;
  if (a7 - a6 > a3)
  {
    sub_1000474A4(v42, "");
    sub_1002B0628("For now this is not allowed. You can't have more output particles than siblings.", &v44);
    sub_100382FC4(&v44, &v39, v42);
    sub_1000BC6D8(&v39);
  }

  v11 = *(a1 + 48);
  if (!v11 || ((*(***(a1 + 16) + 32))(**(a1 + 16)), sub_1002156D4(v11, 0, a3, v42), v42[0].__r_.__value_.__s.__data_[0] != 1))
  {
    v12 = *(a1 + 16);
    v27 = v12[3];
    v28 = v12[2];
    v29 = *v12;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    if (a7 == a6)
    {
      goto LABEL_14;
    }

LABEL_27:
    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  if (v42[0].__r_.__value_.__r.__words[2] != v42[0].__r_.__value_.__l.__size_)
  {
    if (((v42[0].__r_.__value_.__r.__words[2] - v42[0].__r_.__value_.__l.__size_) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  if (v42[0].__r_.__value_.__l.__size_)
  {
    v42[0].__r_.__value_.__r.__words[2] = v42[0].__r_.__value_.__l.__size_;
    operator delete(v42[0].__r_.__value_.__l.__size_);
  }

  v13 = *(a1 + 16);
  v29 = *v13;
  if (!v13[4])
  {
    sub_1000474A4(&v39, "");
    sub_1000BBEAC("Asking for auxiliary injection but you never defined an auxiliary ParticleGenerator in particle_generator.cpp:newParticleGeneratorImpl!!", v42);
    sub_1000E661C(&v39, v42, 1);
    if (SHIBYTE(v42[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v39);
    }

    sub_10003F5D0(v38);
  }

  v14 = *(a1 + 48);
  if (v10)
  {
    sub_1000474A4(v42, "");
    sub_100383A74(&v39, v42);
    sub_10003F5D0(&v39);
  }

  v28 = *(*(a1 + 16) + 32);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (a7 != a6)
  {
    goto LABEL_27;
  }

LABEL_14:
  if (*(a1 + 112))
  {
    sub_1001300D0(v42, a1 + 120);
    sub_1000BF8EC(a1 + 32, &v33);
    v15 = 1.0;
    if (sub_10017226C(v42))
    {
      v16 = (*(*v33 + 40))(v33);
      v18 = *v16;
      v17 = *(v16 + 8);
      v39 = *v16;
      v40 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = (*(*v18 + 88))(v18);
      v19 = v43;
      if (v19 >= (*(*v18 + 80))(v18))
      {
        v15 = 0.0;
      }

      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }

      if (v15 < 0.0)
      {
        sub_1000474A4(&v39, "");
        sub_100383A74(v38, &v39);
        sub_10003F5D0(v38);
      }
    }

    v20 = vcvtmd_s64_f64(v15 * v10);
    v40 = 0;
    v41 = 0;
    v39 = 0;
    if (v20)
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }

    memset(v38, 0, sizeof(v38));
    if (v36 != v35)
    {
      if (((v36 - v35) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }

    v21 = v10;
    v22 = v34;
    if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
      sub_10012E8E4(v42);
      if (a7 == a6)
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_10012E8E4(v42);
      if (a7 == a6)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    (*(*v28 + 16))(v28, v29, a1 + 32, &v35, a8);
    v21 = v10;
    if (a7 == a6)
    {
      goto LABEL_37;
    }
  }

  v23 = 0;
  do
  {
    v24 = *(v35 + v23);
    v25 = v24[2];
    v26 = v24[3];
    if (!v24[7])
    {
      sub_1000474A4(v42, "");
      sub_100385DC8(&v39, v42, &v42[0].__r_.__value_.__r.__words[2] + 7);
      sub_10003F5D0(&v39);
    }

    ++v23;
  }

  while (v21 != v23);
LABEL_37:
  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void sub_1002B0468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, _Unwind_Exception *exception_objecta, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, void *a41, int a42, __int16 a43, char a44, char a45)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (!a17)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a17);
  _Unwind_Resume(exception_object);
}

std::string *sub_1002B0628@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002B065C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002B0678(uint64_t *a1, double *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_10000FC84();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    sub_10000D444();
  }

  v11 = (16 * ((a1[1] - *a1) >> 4));
  sub_1001E8650(v11, a2);
  v6 = 80 * v2 + 80;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_1001E9438(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_1002B07A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001E95F0(va);
  _Unwind_Resume(a1);
}

void sub_1002B07B4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002B0824()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1002B0894(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  v2 = a2 + a2 * a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  if (v2 >= 2)
  {
    if (!(v2 >> 62))
    {
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_1002B0938(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002B0980(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = *a3;
  *(result + 16) = 0;
  *(result + 8) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  if (*(a3 + 8) != a2)
  {
    sub_1000474A4(v6, "");
    sub_1002B218C("Size of matrix doesn't match expected size!", &__p);
    sub_1000E661C(v6, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v7 < 0)
    {
      operator delete(v6[0]);
    }

    sub_1000BC6D8(&v5);
  }

  return result;
}

void sub_1002B0AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v23 = *v21;
  if (*v21)
  {
    *(v20 + 24) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002B0B24(uint64_t result, uint64_t a2, _DWORD *a3)
{
  *result = *a3;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1002B0B38(uint64_t result, double a2)
{
  v2 = *(result + 16);
  v3 = *(result + 24) - v2;
  v4 = v3 >> 3;
  if (v3 >> 3 >= 1)
  {
    if (v4 >= 4)
    {
      v5 = (v3 >> 3) & 3;
      v6 = &v2->i64[v4 & 0x7FFFFFFFFFFFFFFCLL];
      v7 = vdupq_lane_s64(*&a2, 0);
      v8 = v2 + 1;
      v9 = v4 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v8[-1] = v7;
        *v8 = v7;
        v8 += 2;
        v9 -= 4;
      }

      while (v9);
      if (v4 == (v4 & 0x7FFFFFFFFFFFFFFCLL))
      {
        return result;
      }
    }

    else
    {
      v5 = v3 >> 3;
      v6 = *(result + 16);
    }

    *v6 = a2;
    if (v5 >= 2)
    {
      v6[1] = a2;
      if (v5 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6[2] = a2;
      }
    }
  }

  return result;
}

double sub_1002B0BB4(uint64_t a1, unint64_t *a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = (v2 - v3) >> 3;
  if (v4 != (a2[1] - *a2) >> 4)
  {
    sub_100385A9C();
    sub_1000BC6D8(__p);
  }

  if (*a1)
  {
    sub_100385A9C();
    sub_10003F5D0(__p);
  }

  if (v2 != v3)
  {
    v5 = *a2;
    v6 = *(a1 + 16);
    if (v4 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = (v2 - v3) >> 3;
    }

    if (v4 <= 9 || (v6 < v5 + 16 * v7 - 8 ? (v8 = v5 >= v6 + 8 * v7) : (v8 = 1), !v8))
    {
      v9 = 0;
LABEL_18:
      v17 = v7 - v9;
      v18 = (v5 + 16 * v9);
      v19 = (v6 + 8 * v9);
      do
      {
        v20 = *v18;
        v18 += 2;
        *&v14 = v20;
        *v19++ = v20;
        --v17;
      }

      while (v17);
      return *&v14;
    }

    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (v6 + 16);
    v11 = (v5 + 32);
    v12 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v13 = v11 + 2;
      *&v14 = *(v11 - 4);
      *(&v14 + 1) = *(v11 - 2);
      v15 = *v11;
      v11 += 8;
      *&v16 = v15;
      *(&v16 + 1) = *v13;
      *(v10 - 1) = v14;
      *v10 = v16;
      v10 += 2;
      v12 -= 4;
    }

    while (v12);
    if (v4 != v9)
    {
      goto LABEL_18;
    }
  }

  return *&v14;
}

void sub_1002B0D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1002B0D48(char *result, uint64_t a2)
{
  if (*(a2 + 8) != *(result + 1))
  {
    sub_100385A9C();
    sub_1000BC6D8(&__p);
  }

  *result = *a2;
  if (result != a2)
  {
    return sub_10011DD68(result + 2, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  }

  return result;
}

void sub_1002B0DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1002B0E00(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 <= a2)
  {
    sub_100385A9C();
    sub_1000BC6D8(__p);
  }

  if (v3 <= a3)
  {
    sub_100385A9C();
    sub_1000BC6D8(__p);
  }

  if (a3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a3;
  }

  v5 = 2 * v3;
  if (a3 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  return v6 - v4 + ((v4 + v4 * (v5 - v4)) >> 1);
}

void sub_1002B0F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002B0F38(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  if (v2 == v1)
  {
    return *a1 != 1;
  }

  v3 = v2 + 8;
  do
  {
    v4 = *(v3 - 8);
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v3 == v1;
    v3 += 8;
  }

  while (!v5);
  return (v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *a1 != 1;
}

double sub_1002B0F94(uint64_t a1, unint64_t a2)
{
  v7 = a2;
  v3 = (a1 + 8);
  if (*(a1 + 8) < a2)
  {
    sub_1000474A4(v9, "");
    sub_1002B21DC("Trace dimension of ", &v11);
    sub_100181374(&v7, &v12);
    sub_100211ECC(" exceeds range of matrix ", &v13);
    sub_100181374(v3, &v14);
    sub_1000E661C(v9, &v11, 4);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_12:
        if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }
    }

    else if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    operator delete(v13.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_13:
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }

LABEL_18:
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_14:
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_20:
      operator delete(v9[0]);
LABEL_15:
      sub_1000BC6D8(&__p);
    }

LABEL_19:
    operator delete(v11.__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (*a1 == 1)
  {
    return INFINITY;
  }

  if (!v7)
  {
    v7 = *v3;
    if (!v7)
    {
      return 0.0;
    }
  }

  v5 = 0;
  v4 = 0.0;
  do
  {
    v4 = v4 + *(*(a1 + 16) + 8 * sub_1002B0E00(a1, v5, v5));
    ++v5;
  }

  while (v5 < v7);
  return v4;
}

void sub_1002B11A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002B1214(uint64_t a1)
{
  sub_10004DAA4(v9);
  if (*(a1 + 8))
  {
    v2 = 0;
    v3 = 1;
    do
    {
      sub_10003C2E4(&v10, "[", 1);
      v4 = 0;
      do
      {
        sub_10003C2E4(&v10, " ", 1);
        v5 = v10;
        *(&v12[0].__locale_ + *(v10 - 24)) = 16;
        *(&v12[-1].__locale_ + *(v5 - 24)) = *(&v12[-1].__locale_ + *(v5 - 24)) & 0xFFFFFEFB | 0x100;
        v6 = *(*(a1 + 16) + 8 * sub_1002B0E00(a1, v2, v4));
        std::ostream::operator<<();
        sub_10003C2E4(&v10, " ", 1);
        ++v4;
      }

      while (v3 != v4);
      sub_10003C2E4(&v10, "]\n", 2);
      ++v2;
      ++v3;
    }

    while (v2 < *(a1 + 8));
  }

  std::stringbuf::str();
  v10 = v7;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1002B14B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_1002B14EC(uint64_t *a1, uint64_t a2)
{
  sub_10003C2E4(a1, "SymmetricMatrix64F(fDim:", 24);
  v4 = *(a2 + 8);
  v5 = std::ostream::operator<<();
  v6 = sub_10003C2E4(v5, ", fSentinel:", 12);
  if (*a2 == 1)
  {
    v7 = 16;
    v20 = 16;
    *__p = *"InfiniteVariance";
  }

  else
  {
    if (*a2)
    {
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v22, "Unrecognized SentinelMatrix value to do toString on");
      std::runtime_error::runtime_error(&v23, &v22);
      v23.__vftable = &off_1004338D0;
      sub_10010A984(v21);
    }

    v7 = 7;
    v20 = 7;
    qmemcpy(__p, "Default", 7);
  }

  *(__p + v7) = 0;
  v8 = sub_10003C2E4(v6, __p, v7);
  sub_10003C2E4(v8, ", fAp:[", 7);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 8))
  {
    v9 = 0;
    v10 = a1 + 2;
    v11 = a1 + 1;
    v12 = 1;
    do
    {
      if (v9)
      {
        sub_10003C2E4(a1, " ", 1);
      }

      sub_10003C2E4(a1, "[", 1);
      v13 = *a1;
      *(v10 + *(*a1 - 24)) = 16;
      *(v11 + *(v13 - 24)) = *(v11 + *(v13 - 24)) & 0xFFFFFEFB | 0x100;
      v14 = *(*(a2 + 16) + 8 * sub_1002B0E00(a2, v9, 0));
      std::ostream::operator<<();
      if (v12 != 1)
      {
        v15 = 0;
        do
        {
          ++v15;
          sub_10003C2E4(a1, ",", 1);
          v16 = *a1;
          *(v10 + *(*a1 - 24)) = 16;
          *(v11 + *(v16 - 24)) = *(v11 + *(v16 - 24)) & 0xFFFFFEFB | 0x100;
          v17 = *(*(a2 + 16) + 8 * sub_1002B0E00(a2, v9, v15));
          std::ostream::operator<<();
        }

        while (v9 != v15);
      }

      sub_10003C2E4(a1, "]", 1);
      ++v9;
      ++v12;
    }

    while (v9 < *(a2 + 8));
  }

  return sub_10003C2E4(a1, "])", 2);
}

void sub_1002B1824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::runtime_error a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a25);
  if (a24 < 0)
  {
    operator delete(a19);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1002B18B0(uint64_t a1)
{
  sub_1002B1A34(a1, v1);
  if (v1[0] == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1002B1A08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10023FC58(va);
  _Unwind_Resume(a1);
}

void sub_1002B1A1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10023FC58(va);
  _Unwind_Resume(a1);
}

void sub_1002B1A34(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*a1)
  {
    sub_1000474A4(v6, "");
    sub_1000E04D8("Only normal SymmetricMatrix64F objects can be decomposed.", &v15);
    sub_100383AA4(&v15, &v16, v6);
    sub_10003F5D0(&v16);
  }

  v4 = *(a1 + 8);
  v6[0] = off_10043FFE0;
  v6[1] = "L";
  v8 = 0;
  v9 = 0;
  __p = 0;
  v10 = 0;
  v11 = v4;
  sub_1001724D8(v6);
  if (v6 != a1)
  {
    sub_10011DD68(&__p, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 3);
  }

  dpptrf_NEWLAPACK();
  if (v10 < 0)
  {
    sub_1000474A4(v13, "");
    sub_100218D04("Cannot LL factorize matrix. info = ", &v16);
    sub_10024C4BC(&v10, &v17);
    sub_1000E661C(v13, &v16, 2);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_12:
        if ((v14 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

LABEL_18:
        operator delete(v13[0]);
LABEL_13:
        sub_10003F5D0(&v12);
      }
    }

    else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    operator delete(v16.__r_.__value_.__l.__data_);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (v10 > 0)
  {
    *a2 = 0;
    v6[0] = off_10043FFE0;
    v5 = __p;
    if (!__p)
    {
      return;
    }

    goto LABEL_7;
  }

  *a2 = 0;
  sub_1001723EC((a2 + 8), v6);
  *a2 = 1;
  v6[0] = off_10043FFE0;
  v5 = __p;
  if (__p)
  {
LABEL_7:
    v8 = v5;
    operator delete(v5);
  }
}

void sub_1002B1C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (!a12)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a12);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002B1D28(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 8);
  v6 = *nullsub_35(a2);
  v7 = *(a1 + 16);
  v8.n128_f64[0] = a3;

  return _cblas_dspr_NEWLAPACK(102, 122, v5, v6, 1, v7, v8);
}

uint64_t sub_1002B1D8C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v4 = *(result + 16);
  v3 = *(result + 24);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v5 = v3 - v4;
  if (v5)
  {
    if (!((v5 >> 3) >> 60))
    {
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

unint64_t *sub_1002B1E14(unint64_t *result, uint64_t a2, double a3)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v5 = (v3 - v4) >> 3;
  if (v5 != (result[1] - *result) >> 4)
  {
    sub_100385A9C();
    sub_1000BC6D8(&__p);
  }

  if (v3 != v4)
  {
    v6 = *result;
    v7 = (result[1] - *result) >> 4;
    v8 = *(a2 + 16);
    if (v5 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = (v3 - v4) >> 3;
    }

    v10 = v9 - 1;
    if (v7 < v9 - 1)
    {
      v10 = (result[1] - *result) >> 4;
    }

    if (v10 > 0xD && ((v11 = v6 + 16 * v10, v11 >= v6) ? (v12 = v6 + 8 + 16 * v10 >= v6 + 8) : (v12 = 0), v12 ? (v13 = v10 >> 60 == 0) : (v13 = 0), v13 && ((v14 = v11 + 16, v6 < v8 + 8 * v10 + 8) ? (v15 = v8 >= v14) : (v15 = 1), v15)))
    {
      v16 = v10 & 0xFFFFFFFFFFFFFFELL;
      v17 = v16;
      v18 = *result;
      v19 = *(a2 + 16);
      do
      {
        v20 = *v19++;
        v30 = vld2q_f64(v18);
        v21 = vsubq_f64(vmulq_n_f64(v20, a3), v30.val[1]);
        v31.val[0] = vaddq_f64(v30.val[0], v21);
        v31.val[1] = vsubq_f64(vsubq_f64(v31.val[0], v30.val[0]), v21);
        vst2q_f64(v18, v31);
        v18 += 4;
        v17 -= 2;
      }

      while (v17);
    }

    else
    {
      v16 = 0;
    }

    v22 = v7 - v16;
    v23 = v9 - v16;
    v24 = (v8 + 8 * v16);
    v25 = (v6 + 16 * v16 + 8);
    do
    {
      if (!v22)
      {
        sub_1000BFF58();
      }

      v26 = *v24++;
      v27 = *(v25 - 1);
      v28 = v26 * a3 - *v25;
      *(v25 - 1) = v27 + v28;
      *v25 = v27 + v28 - v27 - v28;
      --v22;
      v25 += 2;
      --v23;
    }

    while (v23);
  }

  return result;
}

void sub_1002B1FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002B20EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

void sub_1002B2154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1002B2144);
}

std::string *sub_1002B218C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002B21C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1002B21DC@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002B2210(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002B222C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002B229C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1002B230C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((*(result + 16) & 1) != 0 || *(result + 224) && *(result + 384) != *(result + 376))
  {
    sub_1002B2484(result + 8, v13);
    sub_1002AF214(v13, v11);
    sub_1000A82F0(v7);
    v4 = v12;
    if (!v12)
    {
      v4 = *(qword_10045DD98 + 16);
    }

    v9 = *(v4 + 40);
    v5 = *(v4 + 16);
    v10 |= 9u;
    v8 = v5;
    sub_100324F84(&v6, 1, v7, v11);
    sub_1002BB1A4();
  }

  v3 = qword_100471CC0;
  *a2 = qword_100471CB8;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002B2434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  sub_1000A8524(v45 + 176);
  sub_1000B7124((v45 + 16));
  sub_1000A8524(&a38);
  sub_1000B7124(&a45);
  sub_10012E8E4(v46 - 240);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B2484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = off_10043DBE8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = off_10043DB28;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) &= 0xFCu;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = off_10043DBC8;
  *(a2 + 184) = 0;
  *(a2 + 188) &= ~1u;
  *(a2 + 192) = 0;
  *(a2 + 194) &= 0xFCu;
  if (*(a1 + 8))
  {
    result = sub_1001300D4(a2, a1 + 16);
    if (*(a1 + 8) == 1)
    {
      result = sub_10012E8E4(a1 + 16);
      *(a1 + 8) = 0;
    }
  }

  else
  {
    result = sub_10012EB00(a2, *(a1 + 232));
    *(a1 + 376) += result;
  }

  return result;
}

uint64_t sub_1002B25AC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((*(result + 16) & 1) != 0 || *(result + 224) && *(result + 384) != *(result + 376))
  {
    sub_1002B2484(result + 8, v5);
    sub_1002AED7C(v5, v4);
    sub_1003245E4();
    operator new();
  }

  v3 = qword_100471CC0;
  *a2 = qword_100471CB8;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002B26BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  std::__shared_weak_count::~__shared_weak_count(v28);
  operator delete(v31);
  sub_10013CFA4(&a10);
  sub_10013CFA4(&a28);
  sub_10012E8E4(v29 - 232);
  _Unwind_Resume(a1);
}

void sub_1002B2708(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 280);
  if (!v3)
  {
    sub_1000474A4(v5, "");
    sub_1002BB27C("expected SensorLog to be valid, since that's what we created initially", &v6);
    sub_100383AA4(&v6, __p, v5);
    sub_10003F5D0(__p);
  }

  sub_10017F9C8(v3, *(a1 + 128), (a1 + 272), a2);
}

void sub_1002B27C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002B280C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 112);
  std::istream::read();
  *(a1 + 272) += 24;
  *a2 = off_10043D988;
  *(a2 + 80) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a2 + 72) = 0;
  *(a2 + 88) &= 0xFC00u;
  sub_1001294EC(a2, bswap64(v6));
  sub_1001294D4(a2, COERCE_FLOAT(bswap32(v7)));
  sub_1001294DC(a2, COERCE_FLOAT(bswap32(v8)));
  return sub_1001294E4(a2, COERCE_FLOAT(bswap32(v9)));
}

uint64_t sub_1002B2908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_100445B78;
  v6 = a1 + 8;
  *(a1 + 8) = off_100445CC8;
  *(a1 + 16) = 0;
  if (*(a2 + 8) == 1)
  {
    sub_100133E54(a1 + 24, a2 + 16);
    *(a1 + 16) = 1;
  }

  *(a1 + 184) = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v7 = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a1 + 200) = v7;
  *(a1 + 208) = *(a2 + 200);
  v8 = *(a2 + 216);
  v9 = *(a2 + 232);
  v10 = *(a2 + 264);
  *(a1 + 256) = *(a2 + 248);
  *(a1 + 272) = v10;
  *(a1 + 224) = v8;
  *(a1 + 240) = v9;
  v11 = *(a2 + 280);
  v12 = *(a2 + 296);
  v13 = *(a2 + 328);
  *(a1 + 320) = *(a2 + 312);
  *(a1 + 336) = v13;
  *(a1 + 288) = v11;
  *(a1 + 304) = v12;
  *(a1 + 352) = 0;
  if ((*(a1 + 16) & 1) != 0 || *(a1 + 184) && *(a1 + 344) != *(a1 + 336))
  {
    sub_1002B2A98(v6, v19);
    sub_1002C6260(v17, a3, v20);
    v14 = *(a1 + 352);
    *(a1 + 392) = v18;
    v15 = v17[1];
    *(a1 + 360) = v17[0];
    *(a1 + 376) = v15;
    if ((v14 & 1) == 0)
    {
      *(a1 + 352) = 1;
    }

    sub_10013338C(v19);
  }

  return a1;
}

void sub_1002B2A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10013338C(va);
  if (*(v7 + 352) == 1)
  {
    *(v7 + 352) = 0;
  }

  sub_1002B2BB8(v8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B2A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = off_10043DC98;
  *(a2 + 8) = 0;
  *(a2 + 32) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = a2 + 24;
  *(a2 + 140) = 0;
  *(a2 + 40) = off_10043DC78;
  *(a2 + 48) = 0;
  *(a2 + 54) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *(a2 + 88) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 135) = 0;
  *(a2 + 144) &= 0x80u;
  *(a2 + 152) &= 0xF8u;
  if (*(a1 + 8))
  {
    v4 = a1 + 16;
    v5 = a2;
    return sub_100133E58(v5, v4);
  }

  *(a1 + 336) += sub_1001334C4(a2, *(a1 + 192));
  v5 = a1 + 16;
  if (*(a1 + 8) == 1)
  {
    v4 = a2;
    return sub_100133E58(v5, v4);
  }

  result = sub_100133E54(v5, a2);
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_1002B2BB8(uint64_t a1)
{
  *a1 = off_100445CC8;
  v2 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 184);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 8) != 1)
    {
      return a1;
    }

    goto LABEL_6;
  }

  if (*(a1 + 8) == 1)
  {
LABEL_6:
    sub_10013338C(a1 + 16);
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_1002B2C98(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, __int16 a5)
{
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v8 = qword_100471CB8;
  v9 = qword_100471CC0;
  *(a1 + 144) = qword_100471CB8;
  *(a1 + 152) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v10 = qword_100471CC0;
    *(a1 + 160) = v8;
    *(a1 + 168) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v11 = qword_100471CC0;
      *(a1 + 176) = v8;
      *(a1 + 184) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        v12 = qword_100471CC0;
        *(a1 + 192) = v8;
        *(a1 + 200) = v12;
        if (v12)
        {
          atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
          v13 = qword_100471CC0;
          *(a1 + 208) = v8;
          *(a1 + 216) = v13;
          if (v13)
          {
            atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
            v14 = qword_100471CC0;
            *(a1 + 224) = v8;
            *(a1 + 232) = v14;
            if (v14)
            {
              atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
              v15 = qword_100471CC0;
              *(a1 + 240) = v8;
              *(a1 + 248) = v15;
              if (v15)
              {
                atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
                v16 = qword_100471CC0;
                *(a1 + 256) = v8;
                *(a1 + 264) = v16;
                if (v16)
                {
                  atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
                  v17 = qword_100471CC0;
                  *(a1 + 272) = v8;
                  *(a1 + 280) = v17;
                  if (v17)
                  {
                    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
                    v18 = qword_100471CC0;
                    *(a1 + 288) = v8;
                    *(a1 + 296) = v18;
                    if (v18)
                    {
                      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
                      v19 = qword_100471CC0;
                      *(a1 + 304) = v8;
                      *(a1 + 312) = v19;
                      if (v19)
                      {
                        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
                        v20 = qword_100471CC0;
                        *(a1 + 320) = v8;
                        *(a1 + 328) = v20;
                        if (v20)
                        {
                          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
                          v21 = qword_100471CC0;
                          *(a1 + 336) = v8;
                          *(a1 + 344) = v21;
                          if (v21)
                          {
                            atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
                            v22 = qword_100471CC0;
                            *(a1 + 352) = v8;
                            *(a1 + 360) = v22;
                            if (v22)
                            {
                              atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
                              v23 = qword_100471CC0;
                              *(a1 + 368) = v8;
                              *(a1 + 376) = v23;
                              if (v23)
                              {
                                atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
                                v24 = qword_100471CC0;
                                *(a1 + 384) = v8;
                                *(a1 + 392) = v24;
                                if (v24)
                                {
                                  atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
                                  v25 = qword_100471CC0;
                                  *(a1 + 400) = v8;
                                  *(a1 + 408) = v25;
                                  if (v25)
                                  {
                                    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
                                    v26 = qword_100471CC0;
                                    *(a1 + 416) = v8;
                                    *(a1 + 424) = v26;
                                    if (v26)
                                    {
                                      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
                                    }

LABEL_37:
                                    v27 = (a1 + 440);
                                    if (*(a3 + 23) < 0)
                                    {
                                      sub_100003228((a1 + 440), *a3, *(a3 + 1));
                                    }

                                    else
                                    {
                                      v28 = *a3;
                                      *(a1 + 456) = *(a3 + 2);
                                      *v27 = v28;
                                    }

                                    *(a1 + 464) = 0;
                                    if (*a2 != a2[1])
                                    {
                                      if (qword_10045B080 != -1)
                                      {
                                        sub_100386950();
                                      }

                                      v29 = qword_10045B088;
                                      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
                                      {
                                        *buf = 0;
                                        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "You are loading userpoints into your localizer.", buf, 2u);
                                      }

                                      sub_1002B9868(buf, a2);
                                      operator new();
                                    }

                                    *buf = sub_1000DD49C();
                                    LOWORD(__p) = v30;
                                    if ((sub_100008F80(buf, &__p + 1) & 1) == 0)
                                    {
                                      *buf = sub_1000DD48C();
                                      LOWORD(__p) = v32;
                                      if (sub_100008F80(buf, &__p + 1))
                                      {
                                        HIBYTE(v38[2]) = 16;
                                        strcpy(v38, "beacon.thriftbin");
                                        if (*(a1 + 463) < 0)
                                        {
                                          sub_100003228(&v39, *(a1 + 440), *(a1 + 448));
                                        }

                                        else
                                        {
                                          *&v39.__r_.__value_.__l.__data_ = *v27;
                                          v39.__r_.__value_.__r.__words[2] = *(a1 + 456);
                                        }

                                        sub_1000032E4(&v39, v38);
                                        sub_1002BAA3C(&v52, &v39, (a5 & 4) != 0);
                                        v33 = v53;
                                        v36 = v53;
                                        v65 = v58;
                                        v66 = v59;
                                        v67 = v60;
                                        v68 = v61;
                                        v62[0] = v54;
                                        v62[1] = v55;
                                        v63 = v56;
                                        v64 = v57;
                                        if (v52)
                                        {
                                          if (v53)
                                          {
                                            atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
                                            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
                                          }

                                          sub_10033E034();
                                        }

                                        memset(v51, 0, sizeof(v51));
                                        v50 = 0u;
                                        v49 = 0u;
                                        v48 = 0u;
                                        v47 = 0u;
                                        v46 = 0u;
                                        v45 = 0u;
                                        v44 = 0u;
                                        v43 = 0u;
                                        v42 = 0u;
                                        __p = 0u;
                                        *buf = off_100445D90;
                                        if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                        {
                                          (v36->__on_zero_shared)(v36);
                                          std::__shared_weak_count::__release_weak(v36);
                                        }

                                        operator new();
                                      }

                                      HIBYTE(v38[2]) = 18;
                                      strcpy(v38, "altitude.thriftbin");
                                      if (*(a1 + 463) < 0)
                                      {
                                        sub_100003228(&v39, *(a1 + 440), *(a1 + 448));
                                      }

                                      else
                                      {
                                        *&v39.__r_.__value_.__l.__data_ = *v27;
                                        v39.__r_.__value_.__r.__words[2] = *(a1 + 456);
                                      }

                                      sub_1000032E4(&v39, v38);
                                      sub_1002BAA3C(&v52, &v39, (a5 & 0x400) != 0);
                                      v34 = v53;
                                      v37 = v53;
                                      v65 = v58;
                                      v66 = v59;
                                      v67 = v60;
                                      v68 = v61;
                                      v62[0] = v54;
                                      v62[1] = v55;
                                      v63 = v56;
                                      v64 = v57;
                                      if (v52)
                                      {
                                        if (v53)
                                        {
                                          atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
                                          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
                                        }

                                        sub_10033E034();
                                      }

                                      v44 = 0u;
                                      v43 = 0u;
                                      v42 = 0u;
                                      __p = 0u;
                                      v45 = 0u;
                                      v46 = 0u;
                                      v47 = 0u;
                                      v48 = 0u;
                                      v49 = 0u;
                                      v50 = 0u;
                                      memset(v51, 0, 72);
                                      *buf = off_100445DC8;
                                      if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                      {
                                        (v37->__on_zero_shared)(v37);
                                        std::__shared_weak_count::__release_weak(v37);
                                      }

                                      operator new();
                                    }

                                    HIBYTE(v38[2]) = 14;
                                    strcpy(v38, "wifi.thriftbin");
                                    if (*(a1 + 463) < 0)
                                    {
                                      sub_100003228(&v39, *(a1 + 440), *(a1 + 448));
                                    }

                                    else
                                    {
                                      *&v39.__r_.__value_.__l.__data_ = *v27;
                                      v39.__r_.__value_.__r.__words[2] = *(a1 + 456);
                                    }

                                    sub_1000032E4(&v39, v38);
                                    sub_1002BAA3C(&v52, &v39, a5 & 1);
                                    v31 = v53;
                                    v35 = v53;
                                    v65 = v58;
                                    v66 = v59;
                                    v67 = v60;
                                    v68 = v61;
                                    v62[0] = v54;
                                    v62[1] = v55;
                                    v63 = v56;
                                    v64 = v57;
                                    if (v52)
                                    {
                                      if (v53)
                                      {
                                        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
                                        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
                                      }

                                      sub_10033E034();
                                    }

                                    memset(v51, 0, 176);
                                    v50 = 0u;
                                    v49 = 0u;
                                    v48 = 0u;
                                    v47 = 0u;
                                    v46 = 0u;
                                    v45 = 0u;
                                    v44 = 0u;
                                    v43 = 0u;
                                    v42 = 0u;
                                    __p = 0u;
                                    *buf = off_100445CC8;
                                    if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                    {
                                      (v35->__on_zero_shared)(v35);
                                      std::__shared_weak_count::__release_weak(v35);
                                      if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                      {
LABEL_58:
                                        if ((SHIBYTE(v38[2]) & 0x80000000) == 0)
                                        {
                                          goto LABEL_59;
                                        }

LABEL_70:
                                        operator delete(v38[0]);
LABEL_59:
                                        operator new();
                                      }
                                    }

                                    else if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                    {
                                      goto LABEL_58;
                                    }

                                    operator delete(v39.__r_.__value_.__l.__data_);
                                    if ((SHIBYTE(v38[2]) & 0x80000000) == 0)
                                    {
                                      goto LABEL_59;
                                    }

                                    goto LABEL_70;
                                  }

LABEL_36:
                                  *(a1 + 416) = v8;
                                  *(a1 + 424) = 0;
                                  goto LABEL_37;
                                }

LABEL_35:
                                *(a1 + 400) = v8;
                                *(a1 + 408) = 0;
                                goto LABEL_36;
                              }

LABEL_34:
                              *(a1 + 384) = v8;
                              *(a1 + 392) = 0;
                              goto LABEL_35;
                            }

LABEL_33:
                            *(a1 + 368) = v8;
                            *(a1 + 376) = 0;
                            goto LABEL_34;
                          }

LABEL_32:
                          *(a1 + 352) = v8;
                          *(a1 + 360) = 0;
                          goto LABEL_33;
                        }

LABEL_31:
                        *(a1 + 336) = v8;
                        *(a1 + 344) = 0;
                        goto LABEL_32;
                      }

LABEL_30:
                      *(a1 + 320) = v8;
                      *(a1 + 328) = 0;
                      goto LABEL_31;
                    }

LABEL_29:
                    *(a1 + 304) = v8;
                    *(a1 + 312) = 0;
                    goto LABEL_30;
                  }

LABEL_28:
                  *(a1 + 288) = v8;
                  *(a1 + 296) = 0;
                  goto LABEL_29;
                }

LABEL_27:
                *(a1 + 272) = v8;
                *(a1 + 280) = 0;
                goto LABEL_28;
              }

LABEL_26:
              *(a1 + 256) = v8;
              *(a1 + 264) = 0;
              goto LABEL_27;
            }

LABEL_25:
            *(a1 + 240) = v8;
            *(a1 + 248) = 0;
            goto LABEL_26;
          }

LABEL_24:
          *(a1 + 224) = v8;
          *(a1 + 232) = 0;
          goto LABEL_25;
        }

LABEL_23:
        *(a1 + 208) = v8;
        *(a1 + 216) = 0;
        goto LABEL_24;
      }

LABEL_22:
      *(a1 + 192) = v8;
      *(a1 + 200) = 0;
      goto LABEL_23;
    }
  }

  else
  {
    *(a1 + 160) = v8;
    *(a1 + 168) = 0;
  }

  *(a1 + 176) = v8;
  *(a1 + 184) = 0;
  goto LABEL_22;
}