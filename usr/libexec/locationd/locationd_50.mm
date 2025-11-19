double *sub_100387FE8(uint64_t a1, double *a2, double *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        sub_1003881A8(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (v13[1] < *(a1 + 8))
        {
          v14 = *v13;
          *v13 = *a1;
          *a1 = v14;
          v15 = *(v13 + 1);
          v13[1] = *(a1 + 8);
          *(a1 + 8) = v15;
          v16 = *(v13 + 2);
          v13[2] = *(a1 + 16);
          *(a1 + 16) = v16;
          sub_1003881A8(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = a2 - 3;
      do
      {
        v19 = *a1;
        v20 = *(a1 + 8);
        v21 = *(a1 + 16);
        v22 = sub_1003882A0(a1, a4, v17);
        if (v18 == v22)
        {
          *v22 = v19;
          *(v22 + 1) = v20;
          *(v22 + 2) = v21;
        }

        else
        {
          *v22 = *v18;
          v22[1] = v18[1];
          v22[2] = v18[2];
          *v18 = v19;
          *(v18 + 1) = v20;
          *(v18 + 2) = v21;
          sub_100388320(a1, (v22 + 3), a4, 0xAAAAAAAAAAAAAAABLL * ((v22 - a1 + 24) >> 3));
        }

        v18 -= 3;
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_1003881A8(uint64_t result, uint64_t a2, uint64_t a3, double *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      v6 = (result + 24 * v5);
      if (0x5555555555555556 * ((a4 - result) >> 3) + 2 < a3 && v6[1] < v6[4])
      {
        v6 += 3;
        v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
      }

      v7 = a4[1];
      if (v6[1] >= v7)
      {
        v8 = *a4;
        v9 = *(a4 + 2);
        do
        {
          v10 = a4;
          a4 = v6;
          *v10 = *v6;
          v10[1] = v6[1];
          v10[2] = v6[2];
          if (v4 < v5)
          {
            break;
          }

          v11 = 2 * v5;
          v5 = (2 * v5) | 1;
          v6 = (result + 24 * v5);
          v12 = v11 + 2;
          if (v12 < a3 && v6[1] < v6[4])
          {
            v6 += 3;
            v5 = v12;
          }
        }

        while (v6[1] >= v7);
        *a4 = v8;
        a4[1] = v7;
        *(a4 + 2) = v9;
      }
    }
  }

  return result;
}

void *sub_1003882A0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[3 * v3];
    v5 = v4 + 3;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v7 = *(v4 + 4);
      v8 = *(v4 + 7);
      v9 = v4 + 6;
      if (v7 >= v8)
      {
        v3 = v6;
      }

      else
      {
        v5 = v9;
      }
    }

    *a1 = *v5;
    a1[1] = v5[1];
    a1[2] = v5[2];
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t sub_100388320(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 24 * v4);
    v6 = *(a2 - 16);
    if (v5[1] < v6)
    {
      v9 = *(a2 - 24);
      v7 = (a2 - 24);
      v8 = v9;
      v10 = *(v7 + 2);
      do
      {
        v11 = v7;
        v7 = v5;
        *v11 = *v5;
        v11[1] = v5[1];
        v11[2] = v5[2];
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 24 * v4);
      }

      while (v5[1] < v6);
      *v7 = v8;
      v7[1] = v6;
      *(v7 + 2) = v10;
    }
  }

  return result;
}

uint64_t sub_10038839C(uint64_t a1, char **a2, uint64_t a3, uint64_t *a4, void *a5, _DWORD *a6)
{
  v6 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v7 = v6 + 1;
  if ((v6 + 1) > 0x492492492492492)
  {
    sub_10028C64C();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v7)
  {
    v7 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v14 = 0x492492492492492;
  }

  else
  {
    v14 = v7;
  }

  v26 = a1;
  if (v14)
  {
    sub_10038851C(a1, v14);
  }

  v23 = 0;
  v24 = 56 * v6;
  v25 = (56 * v6);
  v15 = sub_10000EC00((56 * v6), *a2);
  v16 = *a4;
  *(v15 + 3) = a3;
  *(v15 + 4) = v16;
  *(v15 + 5) = *a5;
  *(v15 + 12) = *a6;
  *&v25 = v25 + 56;
  v17 = *(a1 + 8);
  v18 = v24 + *a1 - v17;
  sub_100388578(a1, *a1, v17, v18);
  v19 = *a1;
  *a1 = v18;
  v20 = *(a1 + 16);
  v22 = v25;
  *(a1 + 8) = v25;
  *&v25 = v19;
  *(&v25 + 1) = v20;
  v23 = v19;
  v24 = v19;
  sub_1003886C4(&v23);
  return v22;
}

void sub_100388508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003886C4(va);
  _Unwind_Resume(a1);
}

void sub_10038851C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_100388578(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 48) = *(v6 + 12);
      v6 = (v6 + 56);
      a4 += 56;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 56);
    }
  }

  return sub_100388644(v9);
}

uint64_t sub_100388644(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10038867C(a1);
  }

  return a1;
}

void sub_10038867C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 33);
    v1 -= 7;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_1003886C4(uint64_t a1)
{
  sub_1003886FC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003886FC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 7;
      *(a1 + 16) = v2 - 7;
      if (*(v2 - 33) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_100388758(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1003887AC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1003887AC(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 33);
    v3 -= 7;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_1003887FC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100388844(double *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 5;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        if (*(a2 - 3) < v9[1])
        {
          v21 = *v9;
          *v9 = *(a2 - 4);
          *(a2 - 4) = v21;
          v22 = *(v9 + 1);
          *(v9 + 1) = *(a2 - 3);
          *(a2 - 3) = v22;
          v23 = *(v9 + 2);
          *(v9 + 2) = *(a2 - 2);
          *(a2 - 2) = v23;
          LODWORD(v23) = *(v9 + 6);
          *(v9 + 6) = *(a2 - 2);
          *(a2 - 2) = v23;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      sub_100388CF8(v9, v9 + 4, v9 + 8);
      if (*(a2 - 3) < v9[9])
      {
        v24 = *(v9 + 8);
        *(v9 + 8) = *(a2 - 4);
        *(a2 - 4) = v24;
        v25 = *(v9 + 9);
        *(v9 + 9) = *(a2 - 3);
        *(a2 - 3) = v25;
        v26 = *(v9 + 10);
        *(v9 + 10) = *(a2 - 2);
        *(a2 - 2) = v26;
        LODWORD(v26) = *(v9 + 22);
        *(v9 + 22) = *(a2 - 2);
        *(a2 - 2) = v26;
        v27 = v9[9];
        v28 = v9[5];
        if (v27 < v28)
        {
          v29 = *(v9 + 4);
          v30 = *(v9 + 8);
          *(v9 + 4) = v30;
          *(v9 + 8) = v29;
          v9[5] = v27;
          v9[9] = v28;
          v31 = *(v9 + 6);
          v32 = *(v9 + 10);
          *(v9 + 6) = v32;
          *(v9 + 10) = v31;
          v33 = *(v9 + 14);
          v34 = *(v9 + 22);
          *(v9 + 14) = v34;
          v35 = v9[1];
          *(v9 + 22) = v33;
          if (v27 < v35)
          {
            v36 = *v9;
            *v9 = v30;
            *(v9 + 4) = v36;
            v9[1] = v27;
            v9[5] = v35;
            v37 = *(v9 + 2);
            *(v9 + 2) = v32;
            *(v9 + 6) = v37;
            LODWORD(v37) = *(v9 + 6);
            *(v9 + 6) = v34;
            *(v9 + 14) = v37;
          }
        }
      }

      return;
    }

    if (v12 == 5)
    {

      sub_100388E7C(v9, (v9 + 4), (v9 + 8), v9 + 12, a2 - 4);
      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        sub_1003890F4(v9, a2);
      }

      else
      {

        sub_1003891A4(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        sub_100389750(v9, a2, a2, a3);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = &v9[4 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      sub_100388CF8(&v9[4 * (v12 >> 1)], v9, a2 - 4);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_100388CF8(v9, &v9[4 * (v12 >> 1)], a2 - 4);
      sub_100388CF8(v9 + 4, v14 - 4, a2 - 8);
      sub_100388CF8(v9 + 8, &v9[4 * v13 + 4], a2 - 12);
      sub_100388CF8(v14 - 4, v14, &v9[4 * v13 + 4]);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      v16 = *(v9 + 1);
      v9[1] = v14[1];
      *(v14 + 1) = v16;
      v17 = *(v9 + 2);
      v9[2] = v14[2];
      *(v14 + 2) = v17;
      LODWORD(v17) = *(v9 + 6);
      *(v9 + 6) = *(v14 + 6);
      *(v14 + 6) = v17;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if (*(v9 - 3) >= v9[1])
    {
      v9 = sub_100389238(v9, a2);
      goto LABEL_22;
    }

LABEL_17:
    v18 = sub_100389364(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_20;
    }

    v20 = sub_100389494(v9, v18);
    v9 = (v18 + 4);
    if (sub_100389494((v18 + 4), a2))
    {
      a4 = -v11;
      a2 = v18;
      if (v20)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v20)
    {
LABEL_20:
      sub_100388844(a1, v18, a3, -v11, a5 & 1);
      v9 = (v18 + 4);
LABEL_22:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  sub_100388CF8(v9, v9 + 4, a2 - 4);
}

uint64_t sub_100388CF8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a2 + 1);
  v4 = *(a3 + 1);
  if (v3 < *(a1 + 1))
  {
    v5 = (a1 + 3);
    v6 = *a1;
    if (v4 < v3)
    {
      *a1 = *a3;
      *a3 = v6;
      v7 = a1[1];
      a1[1] = a3[1];
      a3[1] = v7;
      v8 = a1[2];
      a1[2] = a3[2];
LABEL_9:
      a3[2] = v8;
      v10 = (a3 + 3);
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v6;
    v16 = *(a1 + 1);
    a1[1] = a2[1];
    *(a2 + 1) = v16;
    v17 = a1[2];
    a1[2] = a2[2];
    v5 = (a2 + 3);
    v18 = *(a2 + 6);
    a2[2] = v17;
    LODWORD(v17) = *(a1 + 6);
    *(a1 + 6) = v18;
    *(a2 + 6) = v17;
    if (*(a3 + 1) < v16)
    {
      v19 = *a2;
      *a2 = *a3;
      *a3 = v19;
      v20 = a2[1];
      a2[1] = a3[1];
      a3[1] = v20;
      v8 = a2[2];
      a2[2] = a3[2];
      goto LABEL_9;
    }

    return 1;
  }

  if (v4 < v3)
  {
    v9 = *a2;
    *a2 = *a3;
    *a3 = v9;
    v10 = (a2 + 3);
    LODWORD(v9) = *(a2 + 6);
    v11 = a2[1];
    a2[1] = a3[1];
    a3[1] = v11;
    v12 = a2[2];
    a2[2] = a3[2];
    a3[2] = v12;
    *(a2 + 6) = *(a3 + 6);
    *(a3 + 6) = LODWORD(v9);
    if (*(a2 + 1) < *(a1 + 1))
    {
      v13 = *a1;
      *a1 = *a2;
      *a2 = v13;
      v14 = a1[1];
      a1[1] = a2[1];
      a2[1] = v14;
      v15 = a1[2];
      a1[2] = a2[2];
      a2[2] = v15;
      v5 = (a1 + 3);
LABEL_10:
      v21 = *v5;
      *v5 = *v10;
      *v10 = v21;
      return 1;
    }

    return 1;
  }

  return 0;
}

double sub_100388E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double *a5)
{
  sub_100388CF8(a1, a2, a3);
  if (*(a4 + 1) < *(a3 + 8))
  {
    v10 = *a3;
    *a3 = *a4;
    *a4 = v10;
    v11 = *(a3 + 8);
    *(a3 + 8) = a4[1];
    a4[1] = v11;
    v12 = *(a3 + 16);
    *(a3 + 16) = a4[2];
    a4[2] = v12;
    LODWORD(v12) = *(a3 + 24);
    *(a3 + 24) = *(a4 + 6);
    *(a4 + 6) = v12;
    if (*(a3 + 8) < *(a2 + 8))
    {
      v13 = *a2;
      *a2 = *a3;
      *a3 = v13;
      v14 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v14;
      v15 = *(a2 + 16);
      *(a2 + 16) = *(a3 + 16);
      *(a3 + 16) = v15;
      LODWORD(v15) = *(a2 + 24);
      *(a2 + 24) = *(a3 + 24);
      *(a3 + 24) = v15;
      if (*(a2 + 8) < *(a1 + 8))
      {
        v16 = *a1;
        *a1 = *a2;
        *a2 = v16;
        v17 = *(a1 + 8);
        *(a1 + 8) = *(a2 + 8);
        *(a2 + 8) = v17;
        v18 = *(a1 + 16);
        *(a1 + 16) = *(a2 + 16);
        *(a2 + 16) = v18;
        LODWORD(v18) = *(a1 + 24);
        *(a1 + 24) = *(a2 + 24);
        *(a2 + 24) = v18;
      }
    }
  }

  result = a5[1];
  if (result < *(a4 + 1))
  {
    v20 = *a4;
    *a4 = *a5;
    *a5 = v20;
    v21 = a4[1];
    a4[1] = *(a5 + 1);
    *(a5 + 1) = v21;
    v22 = a4[2];
    a4[2] = *(a5 + 2);
    *(a5 + 2) = v22;
    LODWORD(v22) = *(a4 + 6);
    *(a4 + 6) = *(a5 + 6);
    *(a5 + 6) = v22;
    result = *(a4 + 1);
    if (result < *(a3 + 8))
    {
      v23 = *a3;
      *a3 = *a4;
      *a4 = v23;
      v24 = *(a3 + 8);
      *(a3 + 8) = a4[1];
      a4[1] = v24;
      v25 = *(a3 + 16);
      *(a3 + 16) = a4[2];
      a4[2] = v25;
      LODWORD(v25) = *(a3 + 24);
      *(a3 + 24) = *(a4 + 6);
      *(a4 + 6) = v25;
      result = *(a3 + 8);
      if (result < *(a2 + 8))
      {
        v26 = *a2;
        *a2 = *a3;
        *a3 = v26;
        v27 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v27;
        v28 = *(a2 + 16);
        *(a2 + 16) = *(a3 + 16);
        *(a3 + 16) = v28;
        LODWORD(v28) = *(a2 + 24);
        *(a2 + 24) = *(a3 + 24);
        *(a3 + 24) = v28;
        result = *(a2 + 8);
        if (result < *(a1 + 8))
        {
          v29 = *a1;
          *a1 = *a2;
          *a2 = v29;
          result = *(a1 + 8);
          *(a1 + 8) = *(a2 + 8);
          *(a2 + 8) = result;
          v30 = *(a1 + 16);
          *(a1 + 16) = *(a2 + 16);
          *(a2 + 16) = v30;
          LODWORD(v30) = *(a1 + 24);
          *(a1 + 24) = *(a2 + 24);
          *(a2 + 24) = v30;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1003890F4(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v2 = (result + 32);
    if ((result + 32) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[5];
        if (v6 < v4[1])
        {
          v7 = *v2;
          v8 = *(v4 + 6);
          v9 = v3;
          v10 = *(v4 + 14);
          while (1)
          {
            v11 = result + v9;
            *(v11 + 32) = *(result + v9);
            *(v11 + 40) = *(result + v9 + 8);
            *(v11 + 48) = *(result + v9 + 16);
            *(v11 + 56) = *(result + v9 + 24);
            if (!v9)
            {
              break;
            }

            v9 -= 32;
            if (v6 >= *(v11 - 24))
            {
              v12 = result + v9 + 32;
              goto LABEL_10;
            }
          }

          v12 = result;
LABEL_10:
          *v12 = v7;
          *(v12 + 8) = v6;
          *(v12 + 16) = v8;
          *(v12 + 24) = v10;
        }

        v2 = v5 + 4;
        v3 += 32;
        v4 = v5;
      }

      while (v5 + 4 != a2);
    }
  }

  return result;
}

void *sub_1003891A4(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      v3 = (result + 7);
      do
      {
        v4 = v2;
        v5 = *(result + 5);
        if (v5 < *(result + 1))
        {
          v6 = *v2;
          v7 = result[6];
          v8 = v3;
          v9 = *(result + 14);
          do
          {
            v10 = v8;
            *(v8 - 3) = *(v8 - 7);
            *(v8 - 2) = *(v8 - 6);
            *(v8 - 1) = *(v8 - 5);
            v11 = *(v8 - 8);
            v8 -= 4;
            *v10 = v11;
          }

          while (v5 < *(v10 - 10));
          *(v8 - 3) = v6;
          *(v8 - 2) = v5;
          *(v8 - 1) = v7;
          *v8 = v9;
        }

        v2 = v4 + 4;
        v3 += 4;
        result = v4;
      }

      while (v4 + 4 != a2);
    }
  }

  return result;
}

double *sub_100389238(uint64_t *a1, unint64_t a2)
{
  v2 = *(a1 + 1);
  if (v2 >= *(a2 - 24))
  {
    v6 = (a1 + 4);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = v6[1];
      v6 += 4;
    }

    while (v2 >= v7);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3 + 4;
      v5 = v3[5];
      v3 += 4;
    }

    while (v2 >= v5);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 32;
      v9 = *(a2 - 24);
      a2 -= 32;
    }

    while (v2 < v9);
  }

  v10 = *a1;
  v11 = a1[2];
  v12 = *(a1 + 6);
  while (v4 < v8)
  {
    v13 = *v4;
    *v4 = *v8;
    *v8 = v13;
    v14 = *(v4 + 1);
    v4[1] = *(v8 + 8);
    *(v8 + 8) = v14;
    v15 = *(v4 + 2);
    v4[2] = *(v8 + 16);
    *(v8 + 16) = v15;
    LODWORD(v15) = *(v4 + 6);
    *(v4 + 6) = *(v8 + 24);
    *(v8 + 24) = v15;
    do
    {
      v16 = v4[5];
      v4 += 4;
    }

    while (v2 >= v16);
    do
    {
      v17 = *(v8 - 24);
      v8 -= 32;
    }

    while (v2 < v17);
  }

  if (v4 - 4 != a1)
  {
    *a1 = *(v4 - 4);
    a1[1] = *(v4 - 3);
    a1[2] = *(v4 - 2);
    *(a1 + 6) = *(v4 - 2);
  }

  *(v4 - 4) = v10;
  *(v4 - 3) = v2;
  *(v4 - 2) = v11;
  *(v4 - 2) = v12;
  return v4;
}

uint64_t *sub_100389364(double *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 2);
  v6 = *(a1 + 6);
  do
  {
    v7 = a1[v2 + 5];
    v2 += 4;
  }

  while (v7 < v4);
  v8 = &a1[v2];
  if (v2 == 4)
  {
    while (v8 < a2)
    {
      v9 = a2 - 32;
      v11 = *(a2 - 24);
      a2 -= 32;
      if (v11 < v4)
      {
        goto LABEL_9;
      }
    }

    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 32;
      v10 = *(a2 - 24);
      a2 -= 32;
    }

    while (v10 >= v4);
  }

LABEL_9:
  v12 = &a1[v2];
  if (v8 < v9)
  {
    v13 = v9;
    do
    {
      v14 = *v12;
      *v12 = *v13;
      *v13 = v14;
      v15 = v12[1];
      v12[1] = *(v13 + 8);
      *(v13 + 8) = v15;
      v16 = v12[2];
      v12[2] = *(v13 + 16);
      *(v13 + 16) = v16;
      LODWORD(v16) = *(v12 + 6);
      *(v12 + 6) = *(v13 + 24);
      *(v13 + 24) = v16;
      do
      {
        v17 = *(v12 + 5);
        v12 += 4;
      }

      while (v17 < v4);
      do
      {
        v18 = *(v13 - 24);
        v13 -= 32;
      }

      while (v18 >= v4);
    }

    while (v12 < v13);
  }

  if (v12 - 4 != a1)
  {
    *a1 = *(v12 - 4);
    *(a1 + 1) = *(v12 - 3);
    *(a1 + 2) = *(v12 - 2);
    *(a1 + 6) = *(v12 - 2);
  }

  *(v12 - 4) = v3;
  *(v12 - 3) = v4;
  *(v12 - 2) = v5;
  *(v12 - 2) = v6;
  return v12 - 4;
}

BOOL sub_100389494(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_100388CF8(a1, (a1 + 32), (a2 - 32));
        break;
      case 4:
        sub_100388CF8(a1, (a1 + 32), (a1 + 64));
        if (*(a2 - 24) < *(a1 + 72))
        {
          v19 = *(a1 + 64);
          *(a1 + 64) = *(a2 - 32);
          *(a2 - 32) = v19;
          v20 = *(a1 + 72);
          *(a1 + 72) = *(a2 - 24);
          *(a2 - 24) = v20;
          v21 = *(a1 + 80);
          *(a1 + 80) = *(a2 - 16);
          *(a2 - 16) = v21;
          LODWORD(v21) = *(a1 + 88);
          *(a1 + 88) = *(a2 - 8);
          *(a2 - 8) = v21;
          v22 = *(a1 + 72);
          v23 = *(a1 + 40);
          if (v22 < v23)
          {
            v24 = *(a1 + 32);
            v25 = *(a1 + 64);
            *(a1 + 32) = v25;
            *(a1 + 64) = v24;
            *(a1 + 40) = v22;
            *(a1 + 72) = v23;
            v26 = *(a1 + 48);
            v27 = *(a1 + 80);
            *(a1 + 48) = v27;
            *(a1 + 80) = v26;
            v28 = *(a1 + 56);
            v29 = *(a1 + 88);
            *(a1 + 56) = v29;
            v30 = *(a1 + 8);
            *(a1 + 88) = v28;
            if (v22 < v30)
            {
              v31 = *a1;
              *a1 = v25;
              *(a1 + 32) = v31;
              *(a1 + 8) = v22;
              *(a1 + 40) = v30;
              v32 = *(a1 + 16);
              *(a1 + 16) = v27;
              *(a1 + 48) = v32;
              LODWORD(v32) = *(a1 + 24);
              *(a1 + 24) = v29;
              result = 1;
              *(a1 + 56) = v32;
              return result;
            }
          }
        }

        return 1;
      case 5:
        sub_100388E7C(a1, a1 + 32, a1 + 64, (a1 + 96), (a2 - 32));
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 24) < *(a1 + 8))
    {
      v5 = *a1;
      *a1 = *(a2 - 32);
      *(a2 - 32) = v5;
      v6 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 24);
      *(a2 - 24) = v6;
      v7 = *(a1 + 16);
      *(a1 + 16) = *(a2 - 16);
      *(a2 - 16) = v7;
      LODWORD(v7) = *(a1 + 24);
      *(a1 + 24) = *(a2 - 8);
      *(a2 - 8) = v7;
    }

    return 1;
  }

LABEL_11:
  v8 = a1 + 64;
  sub_100388CF8(a1, (a1 + 32), (a1 + 64));
  v9 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(v9 + 8);
    if (v12 < *(v8 + 8))
    {
      v13 = *v9;
      v14 = *(v9 + 16);
      v15 = v10;
      v16 = *(v9 + 24);
      while (1)
      {
        v17 = a1 + v15;
        *(v17 + 96) = *(a1 + v15 + 64);
        *(v17 + 104) = *(a1 + v15 + 72);
        *(v17 + 112) = *(a1 + v15 + 80);
        *(v17 + 120) = *(a1 + v15 + 88);
        if (v15 == -64)
        {
          break;
        }

        v15 -= 32;
        if (v12 >= *(v17 + 40))
        {
          v18 = a1 + v15 + 96;
          goto LABEL_19;
        }
      }

      v18 = a1;
LABEL_19:
      *v18 = v13;
      *(v18 + 8) = v12;
      *(v18 + 16) = v14;
      *(v18 + 24) = v16;
      if (++v11 == 8)
      {
        return v9 + 32 == a2;
      }
    }

    v8 = v9;
    v10 += 32;
    v9 += 32;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_100389750(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 32 * v9);
      do
      {
        sub_10038990C(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (*(v12 + 1) < *(a1 + 8))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = v12[1];
          v12[1] = *(a1 + 8);
          *(a1 + 8) = v14;
          v15 = v12[2];
          v12[2] = *(a1 + 16);
          *(a1 + 16) = v15;
          LODWORD(v15) = *(v12 + 6);
          *(v12 + 6) = *(a1 + 24);
          *(a1 + 24) = v15;
          sub_10038990C(a1, a4, v8, a1);
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 4;
      do
      {
        v17 = *a1;
        v18 = *(a1 + 8);
        v19 = *(a1 + 16);
        v20 = *(a1 + 24);
        v21 = sub_1003899F8(a1, a4, v8);
        if (v16 == v21)
        {
          *v21 = v17;
          *(v21 + 8) = v18;
          *(v21 + 16) = v19;
          *(v21 + 24) = v20;
        }

        else
        {
          *v21 = *v16;
          *(v21 + 8) = v16[1];
          *(v21 + 16) = v16[2];
          *(v21 + 24) = *(v16 + 6);
          *v16 = v17;
          v16[1] = v18;
          v16[2] = v19;
          *(v16 + 6) = v20;
          sub_100389A7C(a1, v21 + 32, a4, (v21 + 32 - a1) >> 5);
        }

        v16 -= 4;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_10038990C(uint64_t result, uint64_t a2, uint64_t a3, double *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 5)
    {
      v6 = v4 >> 4;
      v7 = (v4 >> 4) + 1;
      v8 = (result + 32 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && v8[1] < v8[5])
      {
        v8 += 4;
        v7 = v9;
      }

      v10 = a4[1];
      if (v8[1] >= v10)
      {
        v11 = *a4;
        v12 = *(a4 + 2);
        v13 = *(a4 + 6);
        do
        {
          v14 = a4;
          a4 = v8;
          *v14 = *v8;
          v14[1] = v8[1];
          v14[2] = v8[2];
          *(v14 + 6) = *(v8 + 6);
          if (v5 < v7)
          {
            break;
          }

          v15 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 32 * v7);
          v16 = v15 + 2;
          if (v16 < a3 && v8[1] < v8[5])
          {
            v8 += 4;
            v7 = v16;
          }
        }

        while (v8[1] >= v10);
        *a4 = v11;
        a4[1] = v10;
        *(a4 + 2) = v12;
        *(a4 + 6) = v13;
      }
    }
  }

  return result;
}

uint64_t sub_1003899F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1 + 32 * v3;
    v5 = v4 + 32;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v7 = *(v4 + 40);
      v8 = *(v4 + 72);
      v9 = v4 + 64;
      if (v7 >= v8)
      {
        v3 = v6;
      }

      else
      {
        v5 = v9;
      }
    }

    *a1 = *v5;
    *(a1 + 8) = *(v5 + 8);
    *(a1 + 16) = *(v5 + 16);
    *(a1 + 24) = *(v5 + 24);
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t sub_100389A7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 32 * v4;
    v6 = *(a2 - 24);
    if (*(v5 + 8) < v6)
    {
      v9 = *(a2 - 32);
      v7 = a2 - 32;
      v8 = v9;
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      do
      {
        v12 = v7;
        v7 = v5;
        *v12 = *v5;
        *(v12 + 8) = *(v5 + 8);
        *(v12 + 16) = *(v5 + 16);
        *(v12 + 24) = *(v5 + 24);
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 32 * v4;
      }

      while (*(v5 + 8) < v6);
      *v7 = v8;
      *(v7 + 8) = v6;
      *(v7 + 16) = v10;
      *(v7 + 24) = v11;
    }
  }

  return result;
}

void sub_100389B00(uint64_t a1)
{
  if (*a1)
  {
    sub_1003887AC(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t sub_100389B40(uint64_t a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_10028C64C();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10038851C(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  sub_100389C88((56 * v2), a2);
  v15 = (56 * v2 + 56);
  v7 = *(a1 + 8);
  v8 = 56 * v2 + *a1 - v7;
  sub_100388578(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003886C4(&v13);
  return v12;
}

void sub_100389C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003886C4(va);
  _Unwind_Resume(a1);
}

char *sub_100389C88(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = *(a2 + 24);
  *(__dst + 5) = *(a2 + 5);
  *(__dst + 12) = *(a2 + 12);
  return __dst;
}

uint64_t sub_100389CF0(std::string *this, uint64_t a2, std::string::value_type *a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = a2 - this->__r_.__value_.__r.__words[0];
    if (__n_add)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    return v9 + v8;
  }

  v8 = a2 - this;
  if (!__n_add)
  {
    v9 = this;
    return v9 + v8;
  }

  v9 = this;
LABEL_6:
  if (v9 <= a3 && &v9->__r_.__value_.__l.__data_ + size + 1 > a3)
  {
    sub_100389F2C(&__p, a3, a4);
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = __p.__r_.__value_.__l.__size_;
    }

    v12 = sub_100389E1C(this, __n_add, v8, p_p, p_p + v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return v12;
  }

  return sub_100389E1C(this, __n_add, v8, a3, a4);
}

void sub_100389E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100389E1C(std::string *this, std::string::size_type __n_add, std::string::size_type __n_copy, _BYTE *a4, _BYTE *a5)
{
  v9 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size >= __n_add)
    {
      v12 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 22;
    v12 = this;
    if (22 - size >= __n_add)
    {
LABEL_7:
      v13 = size - __n_copy;
      if (size == __n_copy)
      {
        size = __n_copy;
      }

      else
      {
        memmove(v12 + __n_copy + __n_add, v12 + __n_copy, v13);
      }

      goto LABEL_10;
    }
  }

  std::string::__grow_by(this, v11, size + __n_add - v11, size, __n_copy, 0, __n_add);
  v9->__r_.__value_.__l.__size_ = size + __n_add;
  v12 = v9->__r_.__value_.__r.__words[0];
LABEL_10:
  v14 = size + __n_add;
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&v9->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v14] = 0;
  if (a5 != a4)
  {
    memmove(v12 + __n_copy, a4, a5 - a4);
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  return v9 + __n_copy;
}

void sub_100389F2C(std::string *this, std::string::value_type *a2, std::string::value_type *a3)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      std::string::push_back(this, *v4++);
    }

    while (v4 != a3);
  }
}

void sub_100389F84(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

uint64_t sub_100389FB4(uint64_t a1)
{
  sub_100389FF0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100389FF0(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      if (*(v2 + 40) == 1)
      {
        *(v2 + 40) = 0;
      }

      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **sub_10038A04C(void *a1, const void **a2)
{
  v4 = sub_100007070(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100019DF4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_10038A2CC(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 40) == 1)
    {
      *(__p + 40) = 0;
    }

    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_10038A340@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 52) = v2;
  *(a2 + 14) = result;
  return result;
}

BOOL sub_10038A394()
{
  v2 = *(v0 + 1576);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

BOOL sub_10038A3C0()
{
  v2 = *(v0 + 1576);

  return os_signpost_enabled(v2);
}

void sub_10038A3E4()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_10038A4A8()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

const char *sub_10038A560(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "running";
  }

  else
  {
    return off_102446CC0[a1 - 1];
  }
}

uint64_t sub_10038A588(CLMotionActivity *a1)
{
  if (CLMotionActivity::isRunning(a1))
  {
    return 0;
  }

  if (CLMotionActivity::isCycling(a1))
  {
    return 1;
  }

  if (a1->type == 3)
  {
    return 2;
  }

  return 3;
}

uint64_t sub_10038A5DC(uint64_t a1, _OWORD *a2)
{
  *a1 = 4;
  *(a1 + 8) = 0;
  v3 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 32) = v3;
  if (qword_1025D4600 != -1)
  {
    sub_101870488();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v16 = 134349824;
    v17 = v5;
    v18 = 2050;
    v19 = v6;
    v20 = 2050;
    v21 = v7;
    v22 = 2050;
    v23 = v8;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#indoor-fitness-classifier, debounce params initialized (secs), cyclingToNonFitness, %{public}lld, runningToNonFitness, %{public}lld, nonFitnessToCycling, %{public}lld, notFitnessToRunning, %{public}lld", &v16, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187049C((a1 + 16), a1, v9, v10, v11, v12, v13, v14);
  }

  return a1;
}

void sub_10038A6F8(uint64_t a1, CLMotionActivity *a2, uint64_t a3)
{
  v6 = sub_10038A588(a2);
  if (qword_1025D4600 != -1)
  {
    sub_101870488();
  }

  v7 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v8 = CLMotionActivity::activityTypeToString();
    v9 = off_102446CF0[v6];
    v16 = 136380931;
    v17 = v8;
    v18 = 2081;
    v19 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#indoor-fitness-classifier, motion activity, %{private}s, internal activity, %{private}s", &v16, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018706A8(a2, v6, v10, v11, v12, v13, v14, v15);
  }

  sub_10038A824(a1, v6, a3);
}

void sub_10038A824(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1 <= 2)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        if (v6 != 2)
        {
          return;
        }

        v10 = 2;
        v11 = 1;
        if (a2 > 1)
        {
          if (a2 == 3)
          {
            if (a3 - *(a1 + 8) <= 1000000000 * *(a1 + 24))
            {
              v10 = 2;
            }

            else
            {
              v10 = 4;
            }

            goto LABEL_62;
          }

          if (a2 != 2)
          {
            goto LABEL_62;
          }
        }

        else if (a2)
        {
          v11 = 1;
          if (a2 == 1)
          {
            v10 = 1;
          }

          else
          {
            v10 = 2;
          }

          goto LABEL_62;
        }

        v10 = 0;
        goto LABEL_62;
      }

      v11 = 1;
      if (a2 == 3)
      {
        v10 = 3;
      }

      else
      {
        v10 = a2 != 0;
      }
    }

    else
    {
      v11 = 1;
      if (a2 == 3)
      {
        v10 = 2;
      }

      else
      {
        v10 = a2 == 1;
      }
    }
  }

  else
  {
    if (v6 <= 4)
    {
      if (v6 != 3)
      {
        if (v6 != 4)
        {
          return;
        }

        v7 = 5;
        if (a2)
        {
          v8 = 4;
        }

        else
        {
          v8 = 6;
        }

        v9 = a2 == 1;
        goto LABEL_35;
      }

      if (a2 != 3)
      {
        v11 = 1;
        if (a2)
        {
          v10 = 3;
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_62;
      }

      if (a3 - *(a1 + 8) <= 1000000000 * *(a1 + 16))
      {
        v10 = 3;
      }

      else
      {
        v10 = 4;
      }

LABEL_53:
      v11 = 1;
      goto LABEL_62;
    }

    if (v6 == 5)
    {
      v8 = 5;
      if ((a2 - 1) < 2)
      {
        if (a3 - *(a1 + 8) > 1000000000 * *(a1 + 32))
        {
          v10 = 1;
        }

        else
        {
          v10 = 5;
        }

        goto LABEL_53;
      }

      if (a2)
      {
        v9 = a2 == 3;
        v7 = 4;
LABEL_35:
        v11 = 1;
        if (v9)
        {
          v10 = v7;
        }

        else
        {
          v10 = v8;
        }

        goto LABEL_62;
      }

      v15 = a3 - *(a1 + 8);
      v16 = 1000000000 * *(a1 + 40);
      v14 = v15 <= v16;
      v11 = v15 > v16;
    }

    else
    {
      if (v6 != 6)
      {
        return;
      }

      v10 = 6;
      v11 = 1;
      if (a2 > 1)
      {
        if (a2 == 3)
        {
          v10 = 4;
          goto LABEL_62;
        }

        if (a2 != 2)
        {
          goto LABEL_62;
        }
      }

      else if (a2)
      {
        if (a2 == 1)
        {
          v12 = a3 - *(a1 + 8);
          v13 = 1000000000 * *(a1 + 32);
          v11 = v12 > v13;
          if (v12 > v13)
          {
            v10 = 1;
          }

          else
          {
            v10 = 5;
          }
        }

        goto LABEL_62;
      }

      v14 = a3 - *(a1 + 8) <= 1000000000 * *(a1 + 40);
    }

    if (v14)
    {
      v10 = 6;
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_62:
  if (v10 != v6)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101870488();
    }

    v17 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      if ((a2 - 1) > 2)
      {
        v18 = "running";
      }

      else
      {
        v18 = off_102446D10[a2 - 1];
      }

      v19 = sub_10038A560(*a1);
      *buf = 136381187;
      v22 = v18;
      v23 = 2081;
      v24 = v19;
      v25 = 2081;
      v26 = sub_10038A560(v10);
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "#indoor-fitness-classifier state change, activity, %{private}s, current, %{private}s, updated, %{private}s", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1018707DC();
      }

      sub_10038A560(*a1);
      sub_10038A560(v10);
      v20 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLIndoorFitnessModeStateMachine::updateWithMotionActivity(CLIndoorFitnessModeStateMachine::Activity, std::chrono::steady_clock::time_point)", "%s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    *a1 = v10;
    if (v11)
    {
      *(a1 + 8) = a3;
    }
  }
}

uint64_t sub_10038AF08(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *(result + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *(result + 40) = *(a2 + 40);
    *(result + 32) = 1;
  }

  *(result + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    *(result + 56) = *(a2 + 56);
    *(result + 48) = 1;
  }

  *(result + 64) = *(a2 + 64);
  *(result + 68) = *(a2 + 68);
  return result;
}

uint64_t sub_10038AF6C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    if (*(result + 48) == 1)
    {
      *(result + 48) = 0;
    }

    if (*(result + 32) == 1)
    {
      *(result + 32) = 0;
    }

    operator delete();
  }

  return result;
}

void sub_10038AFD8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

char **sub_10038B028(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_1002EC400(a4, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_10038B098(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100187DB8(result, a2);
  }

  return result;
}

void sub_10038B0F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10038B16C(uint64_t a1, _BYTE *a2)
{
  for (i = 0; i != 16; ++i)
  {
    v3 = a2;
    if (*(a1 + i) >= 0xA0u)
    {
      v4 = (*(a1 + i) >> 4) + 87;
    }

    else
    {
      v4 = (*(a1 + i) >> 4) | 0x30;
    }

    *a2 = v4;
    a2 += 2;
    v5 = *(a1 + i) & 0xF;
    v6 = v5 + 87;
    if (v5 < 0xA)
    {
      v6 = *(a1 + i) & 0xF | 0x30;
    }

    v3[1] = v6;
    if (i <= 9 && ((1 << i) & 0x2A8) != 0)
    {
      a2 = v3 + 3;
      v3[2] = 45;
    }
  }

  return a2;
}

BOOL sub_10038B1EC(uint64_t a1, uint64_t *a2, uint64_t a3, const char *a4)
{
  result = sub_10060A6D8(a1, a4);
  if (result)
  {
    if (a3)
    {
      v9 = *a2;
      v10 = 5;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      sub_100611268(a1, a4, v9, &v9);
    }
  }

  return result;
}

void sub_10038B75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10038B82C(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4A00))
  {
    sub_10038C430(&xmmword_1025D49E8);
    __cxa_atexit(&std::string::~string, &xmmword_1025D49E8, dword_100000000);
    __cxa_guard_release(&qword_1025D4A00);
  }

  if (byte_1025D49FF < 0)
  {
    sub_100007244(a1, xmmword_1025D49E8, *(&xmmword_1025D49E8 + 1));
  }

  else
  {
    *a1 = xmmword_1025D49E8;
    *(a1 + 16) = unk_1025D49F8;
  }
}

void sub_10038B900(char *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4A20, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    sub_1018709A0();
    a1 = v4;
  }

  if (byte_1025D4A1F < 0)
  {
    v2 = *aValues_16;
    v3 = *&aValues_16[8];

    sub_100007244(a1, v2, v3);
  }

  else
  {
    strcpy(a1, "VALUES (?, ?, ?, ?, ?)");
    a1[23] = byte_1025D4A1F;
  }
}

uint64_t sub_10038B978(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    goto LABEL_31;
  }

  v5 = (a2 + 1);
  v6 = *a2;
  if (v6 == 123)
  {
    if (v5 == a3)
    {
      goto LABEL_31;
    }

    v5 = (a2 + 2);
    v7 = a2[1];
  }

  else
  {
    v7 = *a2;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    do
    {
      if (v8 == 4)
      {
        if (v7 != 45)
        {
          v9 = 0;
          goto LABEL_23;
        }
      }

      else
      {
        v12 = v8 == 6 || (v8 & 0x7FFFFFFD) == 8;
        if ((v12 & v9) != 1)
        {
          goto LABEL_23;
        }

        if (v7 != 45)
        {
          goto LABEL_31;
        }
      }

      if (v5 == a3)
      {
        goto LABEL_31;
      }

      v13 = *v5++;
      v7 = v13;
      v9 = 1;
LABEL_23:
      v14 = sub_10038BB78(a1, v7);
      *(&v18 + v8) = v14;
      if (v5 == a3)
      {
        goto LABEL_31;
      }

      v15 = *v5++;
      v7 = v15;
      *(&v18 + v8++) = sub_10038BB78(a1, v15) | (16 * v14);
    }

    while (!v8);
    if (v8 == 16)
    {
      break;
    }

    if (v5 == a3)
    {
      goto LABEL_31;
    }

    v10 = *v5++;
    v7 = v10;
  }

  if (v6 == 123 && (v5 == a3 || (v16 = *v5, ++v5, v16 != 125)) || v5 != a3)
  {
LABEL_31:
    sub_10038BB10();
  }

  return v18;
}

void sub_10038BB10()
{
  std::runtime_error::runtime_error(&v2, "invalid uuid string");
  v0.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAp7ugDzm-cwFlW3bBf_08EPw2Z3BX3LQ8cQKPM/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/uuid/string_generator.hpp";
  v0.i64[1] = "void boost::uuids::string_generator::throw_invalid() const";
  v1 = 192;
  sub_10038BC14(&v2, &v0);
}

uint64_t sub_10038BB78(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(&qword_1025D49E0, memory_order_acquire) & 1) == 0)
  {
    v7 = a2;
    sub_101870A08();
    a2 = v7;
  }

  v2 = qword_1025D49D8;
  v3 = memchr("0123456789abcdefABCDEF", a2, qword_1025D49D8 - "0123456789abcdefABCDEF");
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4 - "0123456789abcdefABCDEF";
  if (v5 >= off_1025D49D0)
  {
    sub_10038BB10();
  }

  return byte_101C653CF[v5];
}

void sub_10038BC14(const std::runtime_error *a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10038BC7C(exception, a1, a2);
}

uint64_t sub_10038BC80(uint64_t a1)
{
  *(a1 + 24) = &off_102446ED8;
  sub_10038C21C((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

uint64_t sub_10038BCD4(uint64_t a1, const std::runtime_error *a2, int8x16_t *a3)
{
  *a1 = &off_102446EA8;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &off_102446E30;
  *(a1 + 8) = off_102446E60;
  *(a1 + 24) = off_102446E88;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3[1].i32[0];
  *(a1 + 40) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

void sub_10038BF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10038C21C(&a9);
  sub_10038C21C(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_10038BFAC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10038C278(exception, a1);
}

void sub_10038C008(uint64_t a1)
{
  *(a1 + 24) = &off_102446ED8;
  sub_10038C21C((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  operator delete();
}

void sub_10038C07C(uint64_t a1)
{
  *(a1 + 16) = &off_102446ED8;
  sub_10038C21C((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

void sub_10038C0D8(uint64_t a1)
{
  *(a1 + 16) = &off_102446ED8;
  sub_10038C21C((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

void sub_10038C150(void *a1)
{
  *a1 = &off_102446ED8;
  v1 = (a1 - 2);
  sub_10038C21C(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void sub_10038C1A8(void *a1)
{
  *a1 = &off_102446ED8;
  v1 = (a1 - 2);
  sub_10038C21C(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  operator delete();
}

uint64_t *sub_10038C21C(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_10038C278(uint64_t a1, uint64_t a2)
{
  *a1 = &off_102446EA8;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_102446ED8;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_102446E30;
  *(a1 + 8) = off_102446E60;
  *(a1 + 24) = off_102446E88;
  return a1;
}

uint64_t sub_10038C398(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

double sub_10038C430@<D0>(std::string *a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  sub_10038C494(&v3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_10038C478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10038C494(std::string *a1)
{
  sub_10038C4E4(a1);
  sub_10038C5BC(a1);
  sub_10038C6A0(a1);
  sub_10038C784(a1);

  return sub_10038C868(a1);
}

uint64_t sub_10038C4E4(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 0;
  v7.__r_.__value_.__s.__data_[0] = 0;
  v2 = std::string::append(&v7, "TriggerUUID", 0xBuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_10038C588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10038C5BC(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "ClientID", 8uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_10038C66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10038C6A0(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "LabelUUID", 9uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_10038C750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10038C784(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "ReceivedTimestamp", 0x11uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_10038C834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10038C868(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "RowId", 5uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_10038C918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10038C94C(uint64_t a1)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_10038CC40(a1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = off_102446EF8;
  *(a1 + 160) = 0;
  std::ios_base::init((a1 + 112), a1);
  *(a1 + 248) = 0;
  *(a1 + 256) = -1;
  *(a1 + 272) = a1 + 264;
  *(a1 + 280) = a1 + 266;
  return a1;
}

uint64_t sub_10038CA30(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10038CAA4(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  std::locale::~locale((a1 + 8));

  operator delete();
}

void *sub_10038CB38(void *result, uint64_t a2, uint64_t a3)
{
  result[2] = a2;
  result[3] = a2;
  result[4] = a2 + a3;
  return result;
}

double sub_10038CB48@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x10) != 0)
  {
    v7 = -1;
    goto LABEL_19;
  }

  v5 = a1[2];
  v6 = a1[4] - v5;
  if (!a3)
  {
    v7 = -1;
    if (a2 < 0 || v6 < a2)
    {
      goto LABEL_19;
    }

    v9 = v5 + a2;
LABEL_15:
    v8 = a1[4];
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v7 = -1;
    v10 = a1[3] - v5 + a2;
    if (v10 < 0 || v10 > v6)
    {
      goto LABEL_19;
    }

    v9 = a1[3] + a2;
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    v9 = a1[3];
    goto LABEL_18;
  }

  v7 = -1;
  if ((a2 & 0x8000000000000000) == 0 && v6 >= a2)
  {
    v8 = a1[4];
    v9 = v8 - a2;
LABEL_16:
    a1[3] = v9;
    a1[4] = v8;
LABEL_18:
    v7 = v9 - v5;
  }

LABEL_19:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

double sub_10038CBF8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x10) == 0)
  {
    v4 = a1[2];
    v5 = *(a2 + 128);
    if (v5 <= a1[4] - v4)
    {
      v6 = v4 + v5;
      v7 = a1[4];
      a1[3] = v6;
      a1[4] = v7;
    }
  }

  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = -1;
  return result;
}

uint64_t sub_10038CC40(uint64_t a1)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_100038AF8(a1);
  return a1;
}

void sub_10038CCD4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

__n128 sub_10038CCFC(__n128 *a1)
{
  v2 = &a1[6].n128_i64[1];
  v3 = &a1[6].n128_i8[*(a1[6].n128_u64[1] - 24) + 8];
  v3->__exceptions_ = 1;
  std::ios_base::clear(v3, v3->__rdstate_);
  sub_10038CDC8(v2);
  result = *(*(v2 + *(a1[6].n128_u64[1] - 24) + 40) + 40);
  a1[17] = result;
  return result;
}

uint64_t *sub_10038CDC8(uint64_t *a1)
{
  v2 = (a1 + *(*a1 - 24));
  fmtflags = v2->__fmtflags_;
  v30 = v2;
  v4 = v2[1].__fmtflags_;
  if (v4 == -1)
  {
    std::ios_base::getloc(v2);
    v5 = std::locale::use_facet(&v29, &std::ctype<char>::id);
    v4 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v29);
    v2[1].__fmtflags_ = v4;
  }

  v31 = v4;
  std::ostream::sentry::sentry();
  if (LOBYTE(v29.__locale_) == 1)
  {
    v28 = fmtflags;
    v27 = v2;
    v6 = *a1;
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 3);
    *(v7 + 3) = 0;
    v9 = a1 + *(v6 - 24);
    v10 = *(v9 + 2);
    v11 = *(v9 + 36);
    if (v11 == -1)
    {
      std::ios_base::getloc((a1 + *(v6 - 24)));
      v12 = std::locale::use_facet(&v32, &std::ctype<char>::id);
      v11 = (v12->__vftable[2].~facet_0)(v12, 32);
      std::locale::~locale(&v32);
      *(v9 + 36) = v11;
    }

    if ((v10 & 0x90) != 0 && v8 >= 37)
    {
      v13 = v8 - 36;
      do
      {
        LOBYTE(v32.__locale_) = v11;
        sub_100038730(a1, &v32, 1);
        --v13;
      }

      while (v13);
    }

    v14 = *a1;
    *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFFB5 | 8;
    *(a1 + *(v14 - 24) + 8) = *(a1 + *(v14 - 24) + 8) & 0xFFFFFF4F | 0x80;
    v15 = (a1 + *(v14 - 24));
    std::ios_base::getloc(v15);
    v25 = v10;
    v26 = v8;
    v16 = std::locale::use_facet(&v32, &std::ctype<char>::id);
    v17 = (v16->__vftable[2].~facet_0)(v16, 48);
    std::locale::~locale(&v32);
    if (v15[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(v15);
      v18 = std::locale::use_facet(&v32, &std::ctype<char>::id);
      v19 = (v18->__vftable[2].~facet_0)(v18, 32);
      std::locale::~locale(&v32);
      v15[1].__fmtflags_ = v19;
    }

    v20 = 0;
    v15[1].__fmtflags_ = v17;
    do
    {
      *(a1 + *(*a1 - 24) + 24) = 2;
      std::ostream::operator<<();
      if (v20 <= 9 && ((1 << v20) & 0x2A8) != 0)
      {
        std::ios_base::getloc((a1 + *(*a1 - 24)));
        v21 = std::locale::use_facet(&v32, &std::ctype<char>::id);
        v22 = (v21->__vftable[2].~facet_0)(v21, 45);
        std::locale::~locale(&v32);
        LOBYTE(v32.__locale_) = v22;
        sub_100038730(a1, &v32, 1);
      }

      ++v20;
    }

    while (v20 != 16);
    fmtflags = v28;
    if ((v25 & 0x20) != 0 && v26 >= 37)
    {
      v23 = v26 - 36;
      do
      {
        LOBYTE(v32.__locale_) = v11;
        sub_100038730(a1, &v32, 1);
        --v23;
      }

      while (v23);
    }

    *(a1 + *(*a1 - 24) + 24) = 0;
    v2 = v27;
  }

  std::ostream::sentry::~sentry();
  sub_10038D2A4(&v30);
  v2->__fmtflags_ = fmtflags;
  return a1;
}

void sub_10038D21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, std::locale a15, uint64_t a16, char a17, uint64_t a18, std::locale a19)
{
  std::locale::~locale(&a19);
  std::ostream::sentry::~sentry();
  sub_10038D2A4(&a17);
  *(a12 + 8) = a14;
  _Unwind_Resume(a1);
}

uint64_t sub_10038D2A4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(*a1 + 144) == -1)
  {
    std::ios_base::getloc(*a1);
    v4 = std::locale::use_facet(&v6, &std::ctype<char>::id);
    (v4->__vftable[2].~facet_0)(v4, 32);
    std::locale::~locale(&v6);
  }

  v2[1].__fmtflags_ = v3;
  return a1;
}

void sub_10038D358(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

uint64_t sub_10038D424(uint64_t a1)
{
  std::ostream::~ostream();
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10038D4A0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_10038D500(exception, a1);
}

__n128 sub_10038D500(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &off_102446EA8;
  a1->n128_u64[1] = &off_1024470A0;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &off_102447028;
  a1->n128_u64[1] = off_102447058;
  a1[2].n128_u64[0] = off_102447080;
  a1[2].n128_u64[1] = 0;
  return result;
}

uint64_t sub_10038D5AC(uint64_t a1)
{
  *(a1 + 32) = &off_102446ED8;
  sub_10038C21C((a1 + 40));
  std::bad_cast::~bad_cast((a1 + 8));
  return a1;
}

void sub_10038D7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10038C21C(&a9);
  sub_10038C21C(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_10038D838(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_10038DAEC(exception, a1);
}

void sub_10038D894(uint64_t a1)
{
  *(a1 + 32) = &off_102446ED8;
  sub_10038C21C((a1 + 40));
  std::bad_cast::~bad_cast((a1 + 8));

  operator delete();
}

void sub_10038D908(uint64_t a1)
{
  *(a1 + 24) = &off_102446ED8;
  sub_10038C21C((a1 + 32));

  std::bad_cast::~bad_cast(a1);
}

void sub_10038D964(uint64_t a1)
{
  *(a1 + 24) = &off_102446ED8;
  sub_10038C21C((a1 + 32));
  std::bad_cast::~bad_cast(a1);

  operator delete();
}

void sub_10038D9E8(void *a1)
{
  *a1 = &off_102446ED8;
  v1 = (a1 - 3);
  sub_10038C21C(a1 + 1);

  std::bad_cast::~bad_cast(v1);
}

void sub_10038DA40(void *a1)
{
  *a1 = &off_102446ED8;
  v1 = (a1 - 3);
  sub_10038C21C(a1 + 1);
  std::bad_cast::~bad_cast(v1);

  operator delete();
}

void sub_10038DAB4(std::bad_cast *a1)
{
  std::bad_cast::~bad_cast(a1);

  operator delete();
}

uint64_t sub_10038DAEC(uint64_t a1, uint64_t a2)
{
  *a1 = &off_102446EA8;
  *(a1 + 8) = &off_1024470A0;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = &off_102446ED8;
  *(a1 + 40) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *a1 = &off_102447028;
  *(a1 + 8) = off_102447058;
  *(a1 + 32) = off_102447080;
  return a1;
}

void sub_10038DE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 25) < 0)
  {
    operator delete(*(v40 - 48));
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10038DEE4(ssize_t a1)
{
  sub_10038E80C(a1, &v2, 0x10uLL);
  BYTE6(v2) = BYTE6(v2) & 0xF | 0x40;
  return v2;
}

int *sub_10038DF5C(int *a1)
{
  *a1 = -1;
  v2 = open("/dev/urandom", 0x1000000);
  *a1 = v2;
  if (v2 == -1)
  {
    v4 = *__error();
    std::string::__init(&v8, "open /dev/urandom", 0x11uLL);
    v5 = std::runtime_error::runtime_error(&v9, &v8);
    v9.__vftable = &off_1024471A8;
    v10 = v4;
    v6.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAp7ugDzm-cwFlW3bBf_08EPw2Z3BX3LQ8cQKPM/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/uuid/detail/random_provider_posix.ipp";
    v6.i64[1] = "boost::uuids::detail::random_provider_base::random_provider_base()";
    v7 = 60;
    sub_10038E050(v5, &v6);
  }

  return a1;
}

void sub_10038E024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::runtime_error::~runtime_error((v18 - 40));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10038E050(const std::runtime_error *a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_10038E0BC(exception, a1, a2);
}

uint64_t sub_10038E0C0(uint64_t a1)
{
  *(a1 + 32) = &off_102446ED8;
  sub_10038C21C((a1 + 40));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

uint64_t sub_10038E114(uint64_t a1, const std::runtime_error *a2, int8x16_t *a3)
{
  *a1 = &off_102446EA8;
  std::runtime_error::runtime_error((a1 + 8), a2);
  v6 = a2[1].__vftable;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *a1 = &off_102447128;
  *(a1 + 8) = off_102447158;
  *(a1 + 24) = v6;
  *(a1 + 32) = off_102447188;
  *(a1 + 64) = a3[1].i32[0];
  *(a1 + 48) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

void sub_10038E3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10038C21C(&a9);
  sub_10038C21C(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_10038E420(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_10038E6C8(exception, a1);
}

void sub_10038E47C(uint64_t a1)
{
  *(a1 + 32) = &off_102446ED8;
  sub_10038C21C((a1 + 40));
  std::runtime_error::~runtime_error((a1 + 8));

  operator delete();
}

void sub_10038E4F0(uint64_t a1)
{
  *(a1 + 24) = &off_102446ED8;
  sub_10038C21C((a1 + 32));

  std::runtime_error::~runtime_error(a1);
}

void sub_10038E54C(uint64_t a1)
{
  *(a1 + 24) = &off_102446ED8;
  sub_10038C21C((a1 + 32));
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

void sub_10038E5C4(void *a1)
{
  *a1 = &off_102446ED8;
  v1 = (a1 - 3);
  sub_10038C21C(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void sub_10038E61C(void *a1)
{
  *a1 = &off_102446ED8;
  v1 = (a1 - 3);
  sub_10038C21C(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  operator delete();
}

void sub_10038E690(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_10038E6C8(uint64_t a1, uint64_t a2)
{
  *a1 = &off_102446EA8;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &off_1024471A8;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = &off_102446ED8;
  *(a1 + 40) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *a1 = &off_102447128;
  *(a1 + 8) = off_102447158;
  *(a1 + 32) = off_102447188;
  return a1;
}

ssize_t sub_10038E80C(ssize_t result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = read(*v5, (a2 + v6), a3 - v6);
      if (result < 0)
      {
        result = __error();
        if (*result != 4)
        {
          v7 = *result;
          std::string::__init(&v10, "read", 4uLL);
          std::runtime_error::runtime_error(&v11, &v10);
          v11.__vftable = &off_1024471A8;
          v12 = v7;
          v8.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAp7ugDzm-cwFlW3bBf_08EPw2Z3BX3LQ8cQKPM/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/uuid/detail/random_provider_posix.ipp";
          v8.i64[1] = "void boost::uuids::detail::random_provider_base::get_random_bytes(void *, std::size_t)";
          v9 = 98;
          sub_10038E050(&v11, &v8);
        }
      }

      else
      {
        v6 += result;
      }
    }

    while (v6 < a3);
  }

  return result;
}

void sub_10038E8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::runtime_error a19)
{
  std::runtime_error::~runtime_error(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10038E924(unsigned int *a1)
{
  result = *a1;
  if ((result & 0x80000000) == 0)
  {
    return close(result);
  }

  return result;
}

void *sub_10038E948(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100187DB8(result, a2);
  }

  return result;
}

void sub_10038EA04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10038EA20(uint64_t a1, uint64_t a2)
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

uint64_t sub_10038EAB8(uint64_t a1)
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

uint64_t sub_10038EB38(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10038EBB4(result, a4);
  }

  return result;
}

void sub_10038EB98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10038EBB4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_1000B85D0(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_10038EBF0(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10038EC34@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, double *a4@<X3>, _BYTE *a5@<X8>, __n128 a6@<Q0>)
{
  v74 = 0;
  v75 = &v74;
  a6.n128_u64[0] = 0x7812000000;
  v76 = 0x7812000000;
  v77 = sub_100047380;
  v78 = sub_10004837C;
  v79 = &unk_10238AE8B;
  sub_10039A28C(v80, a6);
  v10 = v75;
  *(v75 + 29) |= 0x20u;
  v11 = v10[13];
  if (!v11)
  {
    operator new();
  }

  sub_1003A8ED0(v11, a3);
  v12 = v75;
  v13 = [objc_msgSend(a2 "status")];
  *(v12 + 29) |= 4u;
  *(v12 + 17) = v13;
  v14 = v75;
  v15 = [objc_msgSend(a2 "track")];
  *(v14 + 29) |= 8u;
  v16 = v14[9];
  if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  sub_100006044(v16, v15);
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10038F46C;
  v73[3] = &unk_102447220;
  v73[4] = &v74;
  [objc_msgSend(a2 "outputDeviceIDs")];
  memset(&v72, 0, sizeof(v72));
  v17 = *(v75 + 22);
  if (v17)
  {
    v18 = v75[10];
    v19 = 8 * v17;
    do
    {
      v20 = *v18;
      std::to_string(&v68, *(*v18 + 8));
      v21 = std::string::append(&v68, ",", 1uLL);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v69.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v69.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v67, *(v20 + 12));
      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v67;
      }

      else
      {
        v23 = v67.__r_.__value_.__r.__words[0];
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v67.__r_.__value_.__l.__size_;
      }

      v25 = std::string::append(&v69, v23, size);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v70.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v70.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      v27 = std::string::append(&v70, ",", 1uLL);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v71.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v71.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      v29 = *(v20 + 16);
      v30 = *(v29 + 23);
      if (v30 >= 0)
      {
        v31 = *(v20 + 16);
      }

      else
      {
        v31 = *v29;
      }

      if (v30 >= 0)
      {
        v32 = *(v29 + 23);
      }

      else
      {
        v32 = *(v29 + 8);
      }

      v33 = std::string::append(&v71, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v66.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v66.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v66, ";", 1uLL);
      v36 = *&v35->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v35->__r_.__value_.__l + 2);
      *buf = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      if (buf[23] >= 0)
      {
        v37 = buf;
      }

      else
      {
        v37 = *buf;
      }

      if (buf[23] >= 0)
      {
        v38 = buf[23];
      }

      else
      {
        v38 = *&buf[8];
      }

      std::string::append(&v72, v37, v38);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      ++v18;
      v19 -= 8;
    }

    while (v19);
  }

  if (qword_1025D46D0 != -1)
  {
    sub_101870A70();
  }

  v39 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    v40 = *(v75 + 17);
    v41 = v75[9];
    if (*(v41 + 23) < 0)
    {
      v41 = *v41;
    }

    v42 = &v72;
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v42 = v72.__r_.__value_.__r.__words[0];
    }

    *buf = 68289795;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = v40;
    v82 = 2081;
    v83 = v41;
    v84 = 2081;
    v85 = v42;
    _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Now Playing, status:%{public}d, track:%{private, location:escape_only}s, outputDeviceIDs:%{private, location:escape_only}s}", buf, 0x2Cu);
  }

  v43 = v75;
  v44 = v75[13];
  if (!v44)
  {
    v44 = *(qword_102635FB0 + 56);
  }

  v45 = *(v44 + 8);
  if (*(a1 + 72) == 1)
  {
    v46 = *(a1 + 20) != 1 && *(v75 + 17) == 1;
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    v48 = *(a1 + 40);
    if (v48)
    {
      v49 = *(a1 + 32);
      v50 = 8 * v48;
      do
      {
        sub_1000F2BC4(buf, *(*v49 + 16));
        v49 += 8;
        v50 -= 8;
      }

      while (v50);
      v43 = v75;
    }

    *&v66.__r_.__value_.__r.__words[1] = 0uLL;
    v66.__r_.__value_.__r.__words[0] = &v66.__r_.__value_.__l.__size_;
    v51 = *(v43 + 22);
    if (v51)
    {
      v52 = v43[10];
      v53 = 8 * v51;
      do
      {
        sub_1000F2BC4(&v66, *(*v52 + 16));
        v52 += 8;
        v53 -= 8;
      }

      while (v53);
      v54 = v66.__r_.__value_.__r.__words[2];
    }

    else
    {
      v54 = 0;
    }

    if (*&buf[16] == v54)
    {
      v55 = *buf;
      if (*buf == &buf[8])
      {
        v63 = 0;
      }

      else
      {
        v56 = v66.__r_.__value_.__r.__words[0];
        do
        {
          v57 = sub_100019DF4(&v71, v55 + 4, (v56 + 32));
          if (!v57)
          {
            break;
          }

          v58 = v55[1];
          v59 = v55;
          if (v58)
          {
            do
            {
              v55 = v58;
              v58 = *v58;
            }

            while (v58);
          }

          else
          {
            do
            {
              v55 = v59[2];
              v60 = *v55 == v59;
              v59 = v55;
            }

            while (!v60);
          }

          v61 = *(v56 + 8);
          if (v61)
          {
            do
            {
              v62 = v61;
              v61 = *v61;
            }

            while (v61);
          }

          else
          {
            do
            {
              v62 = *(v56 + 16);
              v60 = *v62 == v56;
              v56 = v62;
            }

            while (!v60);
          }

          v56 = v62;
        }

        while (v55 != &buf[8]);
        v63 = !v57;
      }
    }

    else
    {
      v63 = 1;
    }

    sub_10001AF44(&v66, v66.__r_.__value_.__l.__size_);
    sub_10001AF44(buf, *&buf[8]);
    v47 = v46 & v45 | v63;
    v43 = v75;
  }

  else
  {
    v47 = (*(v75 + 17) == 1) & v45;
  }

  sub_10038F68C(a1, (v43 + 6));
  sub_10038F6D0((v75 + 6), 0, 0, 3u, &v66, *a4);
  buf[0] = v47;
  sub_1003C0494(&buf[8], &v66);
  *a5 = buf[0];
  sub_1003C0494((a5 + 8), &buf[8]);
  sub_1003C0708(&buf[8]);
  sub_1003C0708(&v66);
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v74, 8);
  return sub_1003B041C(v80);
}

id sub_10038F46C(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10038F4E4;
  v5[3] = &unk_1024471F8;
  v3 = *(a1 + 32);
  v5[4] = a2;
  v5[5] = v3;
  return [a3 enumerateKeysAndObjectsUsingBlock:v5];
}

id sub_10038F4E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10038F560;
  v6[3] = &unk_1024471D0;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[5] = a2;
  v6[6] = v3;
  v6[4] = v4;
  return [a3 enumerateObjectsUsingBlock:v6];
}

std::string *sub_10038F560(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 48) + 8);
  v5 = v4[23];
  v6 = v4[22];
  if (v6 >= v5)
  {
    if (v5 == v4[24])
    {
      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 20), v5 + 1);
      v5 = v4[23];
    }

    v4[23] = v5 + 1;
    sub_10038F7CC();
  }

  v7 = *(v4 + 10);
  v4[22] = v6 + 1;
  v8 = *(v7 + 8 * v6);
  v9 = [*(a1 + 32) intValue];
  *(v8 + 28) |= 1u;
  *(v8 + 8) = v9;
  v10 = [*(a1 + 40) intValue];
  *(v8 + 28) |= 2u;
  *(v8 + 12) = v10;
  v11 = [a2 UTF8String];
  *(v8 + 28) |= 4u;
  v12 = *(v8 + 16);
  if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return sub_100006044(v12, v11);
}

uint64_t sub_10038F68C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == 1)
  {
    sub_1003B0EC0(a1, a2);
  }

  else
  {
    sub_1003B02C4(a1, a2);
    *(a1 + 72) = 1;
  }

  return a1;
}

void sub_10038F6D0(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  sub_10039A380(a5);
  v12 = *(a1 + 16);
  if (!sub_10039A928(v12))
  {
    v14 = "::CLMicroLocationProto::EventType_IsValid(value)";
    v15 = 19803;
    v16 = "set_eventtype";
    goto LABEL_6;
  }

  v13 = *(a5 + 128);
  *(a5 + 72) = v12;
  *(a5 + 8) = a6;
  *(a5 + 77) = a2;
  *(a5 + 128) = v13 | 0x2803;
  *(a5 + 76) = a3;
  if ((sub_10039A8F8(a4) & 1) == 0)
  {
    v14 = "::CLMicroLocationProto::ConfidenceLevel_IsValid(value)";
    v15 = 20312;
    v16 = "set_confidencelevel";
LABEL_6:
    __assert_rtn(v16, "microlocation.pb.h", v15, v14);
  }

  *(a5 + 128) |= 0x4000u;
  *(a5 + 120) = a4;
  sub_1003CC43C(a5, a1);
}

void sub_10038F860(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 57) < 0)
    {
      operator delete(*(v1 - 80));
    }

    v1 -= 88;
  }
}

uint64_t sub_10038F8A8(uint64_t a1, const char *a2)
{
  if (sub_100023B68(a1 + 72))
  {
    if (sub_10060A6D8(a1 + 72, a2))
    {
      *(&v25.__r_.__value_.__s + 23) = 7;
      strcpy(&v25, "SELECT ");
      v4 = strlen("Count");
      v5 = std::string::append(&v25, "Count", v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v26.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v26.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      v7 = std::string::append(&v26, " FROM ", 6uLL);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v27.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v27.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      v9 = strlen(a2);
      v10 = std::string::append(&v27, a2, v9);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v28.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v28.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = strlen("Counts");
      v13 = std::string::append(&v28, "Counts", v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      v15 = std::string::append(&v31, " WHERE rowid=", 0xDuLL);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v32.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v32.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v24, 1);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v24;
      }

      else
      {
        v17 = v24.__r_.__value_.__r.__words[0];
      }

      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v24.__r_.__value_.__l.__size_;
      }

      v19 = std::string::append(&v32, v17, size);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v30 = v19->__r_.__value_.__r.__words[2];
      *__p = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (v30 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      sub_1000388D8(a1 + 72, v21);
    }
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_101870A98();
    }

    v22 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "#Warning Attempt to call numEntriesFromTriggerTable without a backing database", &v32, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101870AAC();
    }
  }

  return 0;
}

void sub_10038FE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  if (a49 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10038FF98(uint64_t a1)
{
  v2 = sub_100390524(a1);
  if (sub_1003905F8() > v2)
  {
    return 1;
  }

  v4 = sub_100390524(a1);
  v5 = sub_1003905F8();
  v6 = sub_1003904DC();
  if (qword_1025D46D0 != -1)
  {
    sub_101870A98();
  }

  v7 = v4 - v5 + v6;
  v8 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_INFO))
  {
    v10[0] = 68289538;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2050;
    v14 = v7;
    v15 = 2082;
    v16 = "MicroLocationLoggedEvents";
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Free up database space, Rows to delete:%{public}llu, Table name:%{public, location:escape_only}s}", v10, 0x26u);
  }

  v9 = *(a1 + 248);
  if (!v9)
  {
    operator new();
  }

  return sub_1003CFC58(v9, v7);
}

uint64_t sub_100390144(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100386A38(result, a4);
  }

  return result;
}

void sub_1003901AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001E56E8(&a9);
  _Unwind_Resume(a1);
}

char *sub_1003901CC(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
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
        sub_100007244(v4, *v6, *(v6 + 1));
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
  sub_100386B44(v9);
  return v4;
}

void sub_1003902BC(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_1003902F4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      v8 += 24;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_100390364(&v12, a2, v7, v6);
}

uint64_t sub_100390364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_1003903E4(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_10060941C(*(a1 + 8));
  }

  return a1;
}

void sub_100390420()
{
  sub_10001CAF4(&v2);
  v1 = 0;
  v0 = CFStringCreateWithCStringNoCopy(0, "MicroLocationsDatabaseFreeSpacePercentage", 0x8000100u, kCFAllocatorNull);
  sub_1004FBECC(v2, v0, &v1);
  CFRelease(v0);
  if (v3)
  {
    sub_100008080(v3);
  }
}

void sub_1003904C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003904DC()
{
  v0 = sub_1003905F8();
  sub_100390420();
  if (v1 < 0.0 || v1 > 1.0)
  {
    sub_101870C6C();
  }

  return (v1 * v0);
}

uint64_t sub_100390524(uint64_t a1)
{
  if (sub_100023B68(a1 + 72))
  {

    return sub_10038F8A8(a1, "MicroLocationLoggedEvents");
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_101870A98();
    }

    v3 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning Attempt to get numEntries without a backing database", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101870DD8();
    }

    return 0;
  }
}

uint64_t sub_1003905F8()
{
  sub_10001CAF4(&v5);
  v4 = 0;
  v0 = CFStringCreateWithCStringNoCopy(0, "MicroLocationsLoggedEventsTableMaxRows", 0x8000100u, kCFAllocatorNull);
  v1 = sub_1004FB850(v5, v0, &v4);
  CFRelease(v0);
  v2 = v4;
  if (v6)
  {
    sub_100008080(v6);
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 25000;
  }
}

void sub_10039068C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003906A8(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &buf, 0x2Cu);
}

void sub_1003906D4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x2Cu);
}

void sub_1003906F4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x2Cu);
}

BOOL sub_100390714()
{
  v2 = *(v0 + 1752);

  return os_signpost_enabled(v2);
}

uint64_t sub_100390740()
{
  *(&v237.__r_.__value_.__s + 23) = 7;
  strcpy(&v237, " WHERE ");
  v0 = std::string::append(&v237, "RecordingTimestamp", 0x12uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v238.__r_.__value_.__r.__words[2] = v0->__r_.__value_.__r.__words[2];
  *&v238.__r_.__value_.__l.__data_ = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  v2 = std::string::append(&v238, " < ? OR ", 8uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v239.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v239.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v239, "RecordingTimestamp", 0x12uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v240, " > ?", 4uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  qword_102655DA8 = v6->__r_.__value_.__r.__words[2];
  xmmword_102655D98 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_102655D98, dword_100000000);
  *(&v236.__r_.__value_.__s + 23) = 12;
  strcpy(&v236, "DELETE FROM ");
  v8 = std::string::append(&v236, "MicroLocationMeasurements", 0x19uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v237.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v237.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v237, " WHERE RecordingUUID in(SELECT RecordingUUID FROM ", 0x34uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v238.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v238.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v238, "MicroLocationRecordingEvents", 0x1CuLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v239.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v239.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (qword_102655DA8 >= 0)
  {
    v14 = &xmmword_102655D98;
  }

  else
  {
    v14 = xmmword_102655D98;
  }

  if (qword_102655DA8 >= 0)
  {
    v15 = HIBYTE(qword_102655DA8);
  }

  else
  {
    v15 = *(&xmmword_102655D98 + 1);
  }

  v16 = std::string::append(&v239, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v240, ")", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  qword_102655DC0 = v18->__r_.__value_.__r.__words[2];
  xmmword_102655DB0 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_102655DB0, dword_100000000);
  *(&v239.__r_.__value_.__s + 23) = 12;
  strcpy(&v239, "DELETE FROM ");
  v20 = std::string::append(&v239, "MicroLocationRecordingEvents", 0x1CuLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (qword_102655DA8 >= 0)
  {
    v22 = &xmmword_102655D98;
  }

  else
  {
    v22 = xmmword_102655D98;
  }

  if (qword_102655DA8 >= 0)
  {
    v23 = HIBYTE(qword_102655DA8);
  }

  else
  {
    v23 = *(&xmmword_102655D98 + 1);
  }

  v24 = std::string::append(&v240, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  qword_102655DD8 = v24->__r_.__value_.__r.__words[2];
  xmmword_102655DC8 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_102655DC8, dword_100000000);
  *(&v235.__r_.__value_.__s + 23) = 12;
  strcpy(&v235, "DELETE FROM ");
  v26 = std::string::append(&v235, "MicroLocationModels", 0x13uLL);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v236.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v236.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v236, " WHERE ", 7uLL);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v237.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v237.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v237, "GenerationTimestamp", 0x13uLL);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v238.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v238.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v238, " < ? OR ", 8uLL);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v239.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v239.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v239, "GenerationTimestamp", 0x13uLL);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v240, " > ?", 4uLL);
  v37 = *&v36->__r_.__value_.__l.__data_;
  qword_102655DF0 = v36->__r_.__value_.__r.__words[2];
  xmmword_102655DE0 = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_102655DE0, dword_100000000);
  *(&v235.__r_.__value_.__s + 23) = 12;
  strcpy(&v235, "DELETE FROM ");
  v38 = std::string::append(&v235, "MicroLocationConfiguration", 0x1AuLL);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v236.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v236.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = std::string::append(&v236, " WHERE ", 7uLL);
  v41 = *&v40->__r_.__value_.__l.__data_;
  v237.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
  *&v237.__r_.__value_.__l.__data_ = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  v42 = std::string::append(&v237, "GenerationTimestamp", 0x13uLL);
  v43 = *&v42->__r_.__value_.__l.__data_;
  v238.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
  *&v238.__r_.__value_.__l.__data_ = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  v44 = std::string::append(&v238, " < ? OR ", 8uLL);
  v45 = *&v44->__r_.__value_.__l.__data_;
  v239.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&v239.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  v46 = std::string::append(&v239, "GenerationTimestamp", 0x13uLL);
  v47 = *&v46->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  v48 = std::string::append(&v240, " > ?", 4uLL);
  v49 = *&v48->__r_.__value_.__l.__data_;
  qword_102655E08 = v48->__r_.__value_.__r.__words[2];
  xmmword_102655DF8 = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_102655DF8, dword_100000000);
  *(&v235.__r_.__value_.__s + 23) = 12;
  strcpy(&v235, "DELETE FROM ");
  v50 = std::string::append(&v235, "MicroLocationRapport", 0x14uLL);
  v51 = *&v50->__r_.__value_.__l.__data_;
  v236.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
  *&v236.__r_.__value_.__l.__data_ = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  v52 = std::string::append(&v236, " WHERE ", 7uLL);
  v53 = *&v52->__r_.__value_.__l.__data_;
  v237.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
  *&v237.__r_.__value_.__l.__data_ = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  v54 = std::string::append(&v237, "GenerationTimestamp", 0x13uLL);
  v55 = *&v54->__r_.__value_.__l.__data_;
  v238.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
  *&v238.__r_.__value_.__l.__data_ = v55;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  v56 = std::string::append(&v238, " < ? OR ", 8uLL);
  v57 = *&v56->__r_.__value_.__l.__data_;
  v239.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
  *&v239.__r_.__value_.__l.__data_ = v57;
  v56->__r_.__value_.__l.__size_ = 0;
  v56->__r_.__value_.__r.__words[2] = 0;
  v56->__r_.__value_.__r.__words[0] = 0;
  v58 = std::string::append(&v239, "GenerationTimestamp", 0x13uLL);
  v59 = *&v58->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v59;
  v58->__r_.__value_.__l.__size_ = 0;
  v58->__r_.__value_.__r.__words[2] = 0;
  v58->__r_.__value_.__r.__words[0] = 0;
  v60 = std::string::append(&v240, " > ?", 4uLL);
  v61 = *&v60->__r_.__value_.__l.__data_;
  qword_102655E20 = v60->__r_.__value_.__r.__words[2];
  xmmword_102655E10 = v61;
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_102655E10, dword_100000000);
  *(&v235.__r_.__value_.__s + 23) = 12;
  strcpy(&v235, "DELETE FROM ");
  v62 = std::string::append(&v235, "MicroLocationLabels", 0x13uLL);
  v63 = *&v62->__r_.__value_.__l.__data_;
  v236.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
  *&v236.__r_.__value_.__l.__data_ = v63;
  v62->__r_.__value_.__l.__size_ = 0;
  v62->__r_.__value_.__r.__words[2] = 0;
  v62->__r_.__value_.__r.__words[0] = 0;
  v64 = std::string::append(&v236, " WHERE ", 7uLL);
  v65 = *&v64->__r_.__value_.__l.__data_;
  v237.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
  *&v237.__r_.__value_.__l.__data_ = v65;
  v64->__r_.__value_.__l.__size_ = 0;
  v64->__r_.__value_.__r.__words[2] = 0;
  v64->__r_.__value_.__r.__words[0] = 0;
  v66 = std::string::append(&v237, "ReceivedTimestamp", 0x11uLL);
  v67 = *&v66->__r_.__value_.__l.__data_;
  v238.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
  *&v238.__r_.__value_.__l.__data_ = v67;
  v66->__r_.__value_.__l.__size_ = 0;
  v66->__r_.__value_.__r.__words[2] = 0;
  v66->__r_.__value_.__r.__words[0] = 0;
  v68 = std::string::append(&v238, " < ? OR ", 8uLL);
  v69 = *&v68->__r_.__value_.__l.__data_;
  v239.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
  *&v239.__r_.__value_.__l.__data_ = v69;
  v68->__r_.__value_.__l.__size_ = 0;
  v68->__r_.__value_.__r.__words[2] = 0;
  v68->__r_.__value_.__r.__words[0] = 0;
  v70 = std::string::append(&v239, "ReceivedTimestamp", 0x11uLL);
  v71 = *&v70->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v71;
  v70->__r_.__value_.__l.__size_ = 0;
  v70->__r_.__value_.__r.__words[2] = 0;
  v70->__r_.__value_.__r.__words[0] = 0;
  v72 = std::string::append(&v240, " > ?", 4uLL);
  v73 = *&v72->__r_.__value_.__l.__data_;
  qword_102655E38 = v72->__r_.__value_.__r.__words[2];
  xmmword_102655E28 = v73;
  v72->__r_.__value_.__l.__size_ = 0;
  v72->__r_.__value_.__r.__words[2] = 0;
  v72->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_102655E28, dword_100000000);
  *(&v235.__r_.__value_.__s + 23) = 12;
  strcpy(&v235, "DELETE FROM ");
  v74 = std::string::append(&v235, "MicroLocationLoggedEvents", 0x19uLL);
  v75 = *&v74->__r_.__value_.__l.__data_;
  v236.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
  *&v236.__r_.__value_.__l.__data_ = v75;
  v74->__r_.__value_.__l.__size_ = 0;
  v74->__r_.__value_.__r.__words[2] = 0;
  v74->__r_.__value_.__r.__words[0] = 0;
  v76 = std::string::append(&v236, " WHERE ", 7uLL);
  v77 = *&v76->__r_.__value_.__l.__data_;
  v237.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
  *&v237.__r_.__value_.__l.__data_ = v77;
  v76->__r_.__value_.__l.__size_ = 0;
  v76->__r_.__value_.__r.__words[2] = 0;
  v76->__r_.__value_.__r.__words[0] = 0;
  v78 = std::string::append(&v237, "ReceivedTimestamp", 0x11uLL);
  v79 = *&v78->__r_.__value_.__l.__data_;
  v238.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
  *&v238.__r_.__value_.__l.__data_ = v79;
  v78->__r_.__value_.__l.__size_ = 0;
  v78->__r_.__value_.__r.__words[2] = 0;
  v78->__r_.__value_.__r.__words[0] = 0;
  v80 = std::string::append(&v238, " < ? OR ", 8uLL);
  v81 = *&v80->__r_.__value_.__l.__data_;
  v239.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
  *&v239.__r_.__value_.__l.__data_ = v81;
  v80->__r_.__value_.__l.__size_ = 0;
  v80->__r_.__value_.__r.__words[2] = 0;
  v80->__r_.__value_.__r.__words[0] = 0;
  v82 = std::string::append(&v239, "ReceivedTimestamp", 0x11uLL);
  v83 = *&v82->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v83;
  v82->__r_.__value_.__l.__size_ = 0;
  v82->__r_.__value_.__r.__words[2] = 0;
  v82->__r_.__value_.__r.__words[0] = 0;
  v84 = std::string::append(&v240, " > ?", 4uLL);
  v85 = *&v84->__r_.__value_.__l.__data_;
  qword_102655E50 = v84->__r_.__value_.__r.__words[2];
  xmmword_102655E40 = v85;
  v84->__r_.__value_.__l.__size_ = 0;
  v84->__r_.__value_.__r.__words[2] = 0;
  v84->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_102655E40, dword_100000000);
  *(&v235.__r_.__value_.__s + 23) = 12;
  strcpy(&v235, "DELETE FROM ");
  v86 = std::string::append(&v235, "MiLoServices", 0xCuLL);
  v87 = *&v86->__r_.__value_.__l.__data_;
  v236.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
  *&v236.__r_.__value_.__l.__data_ = v87;
  v86->__r_.__value_.__l.__size_ = 0;
  v86->__r_.__value_.__r.__words[2] = 0;
  v86->__r_.__value_.__r.__words[0] = 0;
  v88 = std::string::append(&v236, " WHERE ", 7uLL);
  v89 = *&v88->__r_.__value_.__l.__data_;
  v237.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
  *&v237.__r_.__value_.__l.__data_ = v89;
  v88->__r_.__value_.__l.__size_ = 0;
  v88->__r_.__value_.__r.__words[2] = 0;
  v88->__r_.__value_.__r.__words[0] = 0;
  v90 = std::string::append(&v237, "LastActiveTimestamp", 0x13uLL);
  v91 = *&v90->__r_.__value_.__l.__data_;
  v238.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
  *&v238.__r_.__value_.__l.__data_ = v91;
  v90->__r_.__value_.__l.__size_ = 0;
  v90->__r_.__value_.__r.__words[2] = 0;
  v90->__r_.__value_.__r.__words[0] = 0;
  v92 = std::string::append(&v238, " < ? OR ", 8uLL);
  v93 = *&v92->__r_.__value_.__l.__data_;
  v239.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
  *&v239.__r_.__value_.__l.__data_ = v93;
  v92->__r_.__value_.__l.__size_ = 0;
  v92->__r_.__value_.__r.__words[2] = 0;
  v92->__r_.__value_.__r.__words[0] = 0;
  v94 = std::string::append(&v239, "LastActiveTimestamp", 0x13uLL);
  v95 = *&v94->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v95;
  v94->__r_.__value_.__l.__size_ = 0;
  v94->__r_.__value_.__r.__words[2] = 0;
  v94->__r_.__value_.__r.__words[0] = 0;
  v96 = std::string::append(&v240, " > ?", 4uLL);
  v97 = *&v96->__r_.__value_.__l.__data_;
  qword_102655E68 = v96->__r_.__value_.__r.__words[2];
  xmmword_102655E58 = v97;
  v96->__r_.__value_.__l.__size_ = 0;
  v96->__r_.__value_.__r.__words[2] = 0;
  v96->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_102655E58, dword_100000000);
  *(&v235.__r_.__value_.__s + 23) = 12;
  strcpy(&v235, "DELETE FROM ");
  v98 = std::string::append(&v235, "MicroLocationAssociatedState", 0x1CuLL);
  v99 = *&v98->__r_.__value_.__l.__data_;
  v236.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
  *&v236.__r_.__value_.__l.__data_ = v99;
  v98->__r_.__value_.__l.__size_ = 0;
  v98->__r_.__value_.__r.__words[2] = 0;
  v98->__r_.__value_.__r.__words[0] = 0;
  v100 = std::string::append(&v236, " WHERE ", 7uLL);
  v101 = *&v100->__r_.__value_.__l.__data_;
  v237.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
  *&v237.__r_.__value_.__l.__data_ = v101;
  v100->__r_.__value_.__l.__size_ = 0;
  v100->__r_.__value_.__r.__words[2] = 0;
  v100->__r_.__value_.__r.__words[0] = 0;
  v102 = std::string::append(&v237, "Timestamp", 9uLL);
  v103 = *&v102->__r_.__value_.__l.__data_;
  v238.__r_.__value_.__r.__words[2] = v102->__r_.__value_.__r.__words[2];
  *&v238.__r_.__value_.__l.__data_ = v103;
  v102->__r_.__value_.__l.__size_ = 0;
  v102->__r_.__value_.__r.__words[2] = 0;
  v102->__r_.__value_.__r.__words[0] = 0;
  v104 = std::string::append(&v238, " < ? OR ", 8uLL);
  v105 = *&v104->__r_.__value_.__l.__data_;
  v239.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
  *&v239.__r_.__value_.__l.__data_ = v105;
  v104->__r_.__value_.__l.__size_ = 0;
  v104->__r_.__value_.__r.__words[2] = 0;
  v104->__r_.__value_.__r.__words[0] = 0;
  v106 = std::string::append(&v239, "Timestamp", 9uLL);
  v107 = *&v106->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v107;
  v106->__r_.__value_.__l.__size_ = 0;
  v106->__r_.__value_.__r.__words[2] = 0;
  v106->__r_.__value_.__r.__words[0] = 0;
  v108 = std::string::append(&v240, " > ?", 4uLL);
  v109 = *&v108->__r_.__value_.__l.__data_;
  qword_102655E80 = v108->__r_.__value_.__r.__words[2];
  xmmword_102655E70 = v109;
  v108->__r_.__value_.__l.__size_ = 0;
  v108->__r_.__value_.__r.__words[2] = 0;
  v108->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_102655E70, dword_100000000);
  *(&v235.__r_.__value_.__s + 23) = 12;
  strcpy(&v235, "DELETE FROM ");
  v110 = std::string::append(&v235, "MiLoLoiTable", 0xCuLL);
  v111 = *&v110->__r_.__value_.__l.__data_;
  v236.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
  *&v236.__r_.__value_.__l.__data_ = v111;
  v110->__r_.__value_.__l.__size_ = 0;
  v110->__r_.__value_.__r.__words[2] = 0;
  v110->__r_.__value_.__r.__words[0] = 0;
  v112 = std::string::append(&v236, " WHERE ", 7uLL);
  v113 = *&v112->__r_.__value_.__l.__data_;
  v237.__r_.__value_.__r.__words[2] = v112->__r_.__value_.__r.__words[2];
  *&v237.__r_.__value_.__l.__data_ = v113;
  v112->__r_.__value_.__l.__size_ = 0;
  v112->__r_.__value_.__r.__words[2] = 0;
  v112->__r_.__value_.__r.__words[0] = 0;
  v114 = std::string::append(&v237, "LastSeenTimeStamp", 0x11uLL);
  v115 = *&v114->__r_.__value_.__l.__data_;
  v238.__r_.__value_.__r.__words[2] = v114->__r_.__value_.__r.__words[2];
  *&v238.__r_.__value_.__l.__data_ = v115;
  v114->__r_.__value_.__l.__size_ = 0;
  v114->__r_.__value_.__r.__words[2] = 0;
  v114->__r_.__value_.__r.__words[0] = 0;
  v116 = std::string::append(&v238, " < ? OR ", 8uLL);
  v117 = *&v116->__r_.__value_.__l.__data_;
  v239.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
  *&v239.__r_.__value_.__l.__data_ = v117;
  v116->__r_.__value_.__l.__size_ = 0;
  v116->__r_.__value_.__r.__words[2] = 0;
  v116->__r_.__value_.__r.__words[0] = 0;
  v118 = std::string::append(&v239, "LastSeenTimeStamp", 0x11uLL);
  v119 = *&v118->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v118->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v119;
  v118->__r_.__value_.__l.__size_ = 0;
  v118->__r_.__value_.__r.__words[2] = 0;
  v118->__r_.__value_.__r.__words[0] = 0;
  v120 = std::string::append(&v240, " > ?", 4uLL);
  v121 = *&v120->__r_.__value_.__l.__data_;
  qword_102655E98 = v120->__r_.__value_.__r.__words[2];
  xmmword_102655E88 = v121;
  v120->__r_.__value_.__l.__size_ = 0;
  v120->__r_.__value_.__r.__words[2] = 0;
  v120->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_102655E88, dword_100000000);
  *(&v235.__r_.__value_.__s + 23) = 12;
  strcpy(&v235, "DELETE FROM ");
  v122 = std::string::append(&v235, "MiLoCustomLoiTable", 0x12uLL);
  v123 = *&v122->__r_.__value_.__l.__data_;
  v236.__r_.__value_.__r.__words[2] = v122->__r_.__value_.__r.__words[2];
  *&v236.__r_.__value_.__l.__data_ = v123;
  v122->__r_.__value_.__l.__size_ = 0;
  v122->__r_.__value_.__r.__words[2] = 0;
  v122->__r_.__value_.__r.__words[0] = 0;
  v124 = std::string::append(&v236, " WHERE ", 7uLL);
  v125 = *&v124->__r_.__value_.__l.__data_;
  v237.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
  *&v237.__r_.__value_.__l.__data_ = v125;
  v124->__r_.__value_.__l.__size_ = 0;
  v124->__r_.__value_.__r.__words[2] = 0;
  v124->__r_.__value_.__r.__words[0] = 0;
  v126 = std::string::append(&v237, "LastSeenTimeStamp", 0x11uLL);
  v127 = *&v126->__r_.__value_.__l.__data_;
  v238.__r_.__value_.__r.__words[2] = v126->__r_.__value_.__r.__words[2];
  *&v238.__r_.__value_.__l.__data_ = v127;
  v126->__r_.__value_.__l.__size_ = 0;
  v126->__r_.__value_.__r.__words[2] = 0;
  v126->__r_.__value_.__r.__words[0] = 0;
  v128 = std::string::append(&v238, " < ? OR ", 8uLL);
  v129 = *&v128->__r_.__value_.__l.__data_;
  v239.__r_.__value_.__r.__words[2] = v128->__r_.__value_.__r.__words[2];
  *&v239.__r_.__value_.__l.__data_ = v129;
  v128->__r_.__value_.__l.__size_ = 0;
  v128->__r_.__value_.__r.__words[2] = 0;
  v128->__r_.__value_.__r.__words[0] = 0;
  v130 = std::string::append(&v239, "LastSeenTimeStamp", 0x11uLL);
  v131 = *&v130->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v130->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v131;
  v130->__r_.__value_.__l.__size_ = 0;
  v130->__r_.__value_.__r.__words[2] = 0;
  v130->__r_.__value_.__r.__words[0] = 0;
  v132 = std::string::append(&v240, " > ?", 4uLL);
  v133 = *&v132->__r_.__value_.__l.__data_;
  qword_102655EB0 = v132->__r_.__value_.__r.__words[2];
  xmmword_102655EA0 = v133;
  v132->__r_.__value_.__l.__size_ = 0;
  v132->__r_.__value_.__r.__words[2] = 0;
  v132->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_102655EA0, dword_100000000);
  *(&v235.__r_.__value_.__s + 23) = 12;
  strcpy(&v235, "DELETE FROM ");
  v134 = std::string::append(&v235, "MicroLocationBluetoothIdentityTable", 0x23uLL);
  v135 = *&v134->__r_.__value_.__l.__data_;
  v236.__r_.__value_.__r.__words[2] = v134->__r_.__value_.__r.__words[2];
  *&v236.__r_.__value_.__l.__data_ = v135;
  v134->__r_.__value_.__l.__size_ = 0;
  v134->__r_.__value_.__r.__words[2] = 0;
  v134->__r_.__value_.__r.__words[0] = 0;
  v136 = std::string::append(&v236, " WHERE ", 7uLL);
  v137 = *&v136->__r_.__value_.__l.__data_;
  v237.__r_.__value_.__r.__words[2] = v136->__r_.__value_.__r.__words[2];
  *&v237.__r_.__value_.__l.__data_ = v137;
  v136->__r_.__value_.__l.__size_ = 0;
  v136->__r_.__value_.__r.__words[2] = 0;
  v136->__r_.__value_.__r.__words[0] = 0;
  v138 = std::string::append(&v237, "LastSeenTimeStamp", 0x11uLL);
  v139 = *&v138->__r_.__value_.__l.__data_;
  v238.__r_.__value_.__r.__words[2] = v138->__r_.__value_.__r.__words[2];
  *&v238.__r_.__value_.__l.__data_ = v139;
  v138->__r_.__value_.__l.__size_ = 0;
  v138->__r_.__value_.__r.__words[2] = 0;
  v138->__r_.__value_.__r.__words[0] = 0;
  v140 = std::string::append(&v238, " < ? OR ", 8uLL);
  v141 = *&v140->__r_.__value_.__l.__data_;
  v239.__r_.__value_.__r.__words[2] = v140->__r_.__value_.__r.__words[2];
  *&v239.__r_.__value_.__l.__data_ = v141;
  v140->__r_.__value_.__l.__size_ = 0;
  v140->__r_.__value_.__r.__words[2] = 0;
  v140->__r_.__value_.__r.__words[0] = 0;
  v142 = std::string::append(&v239, "LastSeenTimeStamp", 0x11uLL);
  v143 = *&v142->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v142->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v143;
  v142->__r_.__value_.__l.__size_ = 0;
  v142->__r_.__value_.__r.__words[2] = 0;
  v142->__r_.__value_.__r.__words[0] = 0;
  v144 = std::string::append(&v240, " > ?", 4uLL);
  v145 = *&v144->__r_.__value_.__l.__data_;
  qword_102655EC8 = v144->__r_.__value_.__r.__words[2];
  xmmword_102655EB8 = v145;
  v144->__r_.__value_.__l.__size_ = 0;
  v144->__r_.__value_.__r.__words[2] = 0;
  v144->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_102655EB8, dword_100000000);
  v146 = sub_10000EC00(&v239, "MicroLocationLabels");
  v147 = std::string::append(v146, ".", 1uLL);
  v148 = *&v147->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v147->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v148;
  v147->__r_.__value_.__l.__size_ = 0;
  v147->__r_.__value_.__r.__words[2] = 0;
  v147->__r_.__value_.__r.__words[0] = 0;
  v149 = std::string::append(&v240, "ClientID", 8uLL);
  v150 = *&v149->__r_.__value_.__l.__data_;
  qword_102655EE0 = v149->__r_.__value_.__r.__words[2];
  xmmword_102655ED0 = v150;
  v149->__r_.__value_.__l.__size_ = 0;
  v149->__r_.__value_.__r.__words[2] = 0;
  v149->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_102655ED0, dword_100000000);
  v151 = sub_10000EC00(&v239, "MiLoServices");
  v152 = std::string::append(v151, ".", 1uLL);
  v153 = *&v152->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v152->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v153;
  v152->__r_.__value_.__l.__size_ = 0;
  v152->__r_.__value_.__r.__words[2] = 0;
  v152->__r_.__value_.__r.__words[0] = 0;
  v154 = std::string::append(&v240, "ServiceUUID", 0xBuLL);
  v155 = *&v154->__r_.__value_.__l.__data_;
  qword_102655EF8 = v154->__r_.__value_.__r.__words[2];
  xmmword_102655EE8 = v155;
  v154->__r_.__value_.__l.__size_ = 0;
  v154->__r_.__value_.__r.__words[2] = 0;
  v154->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_102655EE8, dword_100000000);
  v156 = sub_10000EC00(&v239, "MiLoServices");
  v157 = std::string::append(v156, ".", 1uLL);
  v158 = *&v157->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v157->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v158;
  v157->__r_.__value_.__l.__size_ = 0;
  v157->__r_.__value_.__r.__words[2] = 0;
  v157->__r_.__value_.__r.__words[0] = 0;
  v159 = std::string::append(&v240, "ServiceType", 0xBuLL);
  v160 = *&v159->__r_.__value_.__l.__data_;
  qword_102655F10 = v159->__r_.__value_.__r.__words[2];
  xmmword_102655F00 = v160;
  v159->__r_.__value_.__l.__size_ = 0;
  v159->__r_.__value_.__r.__words[2] = 0;
  v159->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_102655F00, dword_100000000);
  *(&v219.__r_.__value_.__s + 23) = 12;
  strcpy(&v219, "DELETE FROM ");
  v161 = std::string::append(&v219, "MicroLocationLabels", 0x13uLL);
  v162 = *&v161->__r_.__value_.__l.__data_;
  v220.__r_.__value_.__r.__words[2] = v161->__r_.__value_.__r.__words[2];
  *&v220.__r_.__value_.__l.__data_ = v162;
  v161->__r_.__value_.__l.__size_ = 0;
  v161->__r_.__value_.__r.__words[2] = 0;
  v161->__r_.__value_.__r.__words[0] = 0;
  v163 = std::string::append(&v220, " WHERE (", 8uLL);
  v164 = *&v163->__r_.__value_.__l.__data_;
  v221.__r_.__value_.__r.__words[2] = v163->__r_.__value_.__r.__words[2];
  *&v221.__r_.__value_.__l.__data_ = v164;
  v163->__r_.__value_.__l.__size_ = 0;
  v163->__r_.__value_.__r.__words[2] = 0;
  v163->__r_.__value_.__r.__words[0] = 0;
  v165 = std::string::append(&v221, "ReceivedTimestamp", 0x11uLL);
  v166 = *&v165->__r_.__value_.__l.__data_;
  v222.__r_.__value_.__r.__words[2] = v165->__r_.__value_.__r.__words[2];
  *&v222.__r_.__value_.__l.__data_ = v166;
  v165->__r_.__value_.__l.__size_ = 0;
  v165->__r_.__value_.__r.__words[2] = 0;
  v165->__r_.__value_.__r.__words[0] = 0;
  v167 = std::string::append(&v222, " < ? OR ", 8uLL);
  v168 = *&v167->__r_.__value_.__l.__data_;
  v223.__r_.__value_.__r.__words[2] = v167->__r_.__value_.__r.__words[2];
  *&v223.__r_.__value_.__l.__data_ = v168;
  v167->__r_.__value_.__l.__size_ = 0;
  v167->__r_.__value_.__r.__words[2] = 0;
  v167->__r_.__value_.__r.__words[0] = 0;
  v169 = std::string::append(&v223, "ReceivedTimestamp", 0x11uLL);
  v170 = *&v169->__r_.__value_.__l.__data_;
  v224.__r_.__value_.__r.__words[2] = v169->__r_.__value_.__r.__words[2];
  *&v224.__r_.__value_.__l.__data_ = v170;
  v169->__r_.__value_.__l.__size_ = 0;
  v169->__r_.__value_.__r.__words[2] = 0;
  v169->__r_.__value_.__r.__words[0] = 0;
  v171 = std::string::append(&v224, " > ?) AND ", 0xBuLL);
  v172 = *&v171->__r_.__value_.__l.__data_;
  v225.__r_.__value_.__r.__words[2] = v171->__r_.__value_.__r.__words[2];
  *&v225.__r_.__value_.__l.__data_ = v172;
  v171->__r_.__value_.__l.__size_ = 0;
  v171->__r_.__value_.__r.__words[2] = 0;
  v171->__r_.__value_.__r.__words[0] = 0;
  if (qword_102655EE0 >= 0)
  {
    v173 = &xmmword_102655ED0;
  }

  else
  {
    v173 = xmmword_102655ED0;
  }

  if (qword_102655EE0 >= 0)
  {
    v174 = HIBYTE(qword_102655EE0);
  }

  else
  {
    v174 = *(&xmmword_102655ED0 + 1);
  }

  v175 = std::string::append(&v225, v173, v174);
  v176 = *&v175->__r_.__value_.__l.__data_;
  v226.__r_.__value_.__r.__words[2] = v175->__r_.__value_.__r.__words[2];
  *&v226.__r_.__value_.__l.__data_ = v176;
  v175->__r_.__value_.__l.__size_ = 0;
  v175->__r_.__value_.__r.__words[2] = 0;
  v175->__r_.__value_.__r.__words[0] = 0;
  v177 = std::string::append(&v226, " IN (SELECT ", 0xCuLL);
  v178 = *&v177->__r_.__value_.__l.__data_;
  v227.__r_.__value_.__r.__words[2] = v177->__r_.__value_.__r.__words[2];
  *&v227.__r_.__value_.__l.__data_ = v178;
  v177->__r_.__value_.__l.__size_ = 0;
  v177->__r_.__value_.__r.__words[2] = 0;
  v177->__r_.__value_.__r.__words[0] = 0;
  if (qword_102655EE0 >= 0)
  {
    v179 = &xmmword_102655ED0;
  }

  else
  {
    v179 = xmmword_102655ED0;
  }

  if (qword_102655EE0 >= 0)
  {
    v180 = HIBYTE(qword_102655EE0);
  }

  else
  {
    v180 = *(&xmmword_102655ED0 + 1);
  }

  v181 = std::string::append(&v227, v179, v180);
  v182 = *&v181->__r_.__value_.__l.__data_;
  v228.__r_.__value_.__r.__words[2] = v181->__r_.__value_.__r.__words[2];
  *&v228.__r_.__value_.__l.__data_ = v182;
  v181->__r_.__value_.__l.__size_ = 0;
  v181->__r_.__value_.__r.__words[2] = 0;
  v181->__r_.__value_.__r.__words[0] = 0;
  v183 = std::string::append(&v228, " FROM ", 6uLL);
  v184 = *&v183->__r_.__value_.__l.__data_;
  v229.__r_.__value_.__r.__words[2] = v183->__r_.__value_.__r.__words[2];
  *&v229.__r_.__value_.__l.__data_ = v184;
  v183->__r_.__value_.__l.__size_ = 0;
  v183->__r_.__value_.__r.__words[2] = 0;
  v183->__r_.__value_.__r.__words[0] = 0;
  v185 = std::string::append(&v229, "MicroLocationLabels", 0x13uLL);
  v186 = *&v185->__r_.__value_.__l.__data_;
  v230.__r_.__value_.__r.__words[2] = v185->__r_.__value_.__r.__words[2];
  *&v230.__r_.__value_.__l.__data_ = v186;
  v185->__r_.__value_.__l.__size_ = 0;
  v185->__r_.__value_.__r.__words[2] = 0;
  v185->__r_.__value_.__r.__words[0] = 0;
  v187 = std::string::append(&v230, " INNER JOIN ", 0xCuLL);
  v188 = *&v187->__r_.__value_.__l.__data_;
  v231.__r_.__value_.__r.__words[2] = v187->__r_.__value_.__r.__words[2];
  *&v231.__r_.__value_.__l.__data_ = v188;
  v187->__r_.__value_.__l.__size_ = 0;
  v187->__r_.__value_.__r.__words[2] = 0;
  v187->__r_.__value_.__r.__words[0] = 0;
  v189 = std::string::append(&v231, "MiLoServices", 0xCuLL);
  v190 = *&v189->__r_.__value_.__l.__data_;
  v232.__r_.__value_.__r.__words[2] = v189->__r_.__value_.__r.__words[2];
  *&v232.__r_.__value_.__l.__data_ = v190;
  v189->__r_.__value_.__l.__size_ = 0;
  v189->__r_.__value_.__r.__words[2] = 0;
  v189->__r_.__value_.__r.__words[0] = 0;
  v191 = std::string::append(&v232, " ON ", 4uLL);
  v192 = *&v191->__r_.__value_.__l.__data_;
  v233.__r_.__value_.__r.__words[2] = v191->__r_.__value_.__r.__words[2];
  *&v233.__r_.__value_.__l.__data_ = v192;
  v191->__r_.__value_.__l.__size_ = 0;
  v191->__r_.__value_.__r.__words[2] = 0;
  v191->__r_.__value_.__r.__words[0] = 0;
  if (qword_102655EE0 >= 0)
  {
    v193 = &xmmword_102655ED0;
  }

  else
  {
    v193 = xmmword_102655ED0;
  }

  if (qword_102655EE0 >= 0)
  {
    v194 = HIBYTE(qword_102655EE0);
  }

  else
  {
    v194 = *(&xmmword_102655ED0 + 1);
  }

  v195 = std::string::append(&v233, v193, v194);
  v196 = *&v195->__r_.__value_.__l.__data_;
  v234.__r_.__value_.__r.__words[2] = v195->__r_.__value_.__r.__words[2];
  *&v234.__r_.__value_.__l.__data_ = v196;
  v195->__r_.__value_.__l.__size_ = 0;
  v195->__r_.__value_.__r.__words[2] = 0;
  v195->__r_.__value_.__r.__words[0] = 0;
  v197 = std::string::append(&v234, " LIKE '%--' || ", 0xFuLL);
  v198 = *&v197->__r_.__value_.__l.__data_;
  v235.__r_.__value_.__r.__words[2] = v197->__r_.__value_.__r.__words[2];
  *&v235.__r_.__value_.__l.__data_ = v198;
  v197->__r_.__value_.__l.__size_ = 0;
  v197->__r_.__value_.__r.__words[2] = 0;
  v197->__r_.__value_.__r.__words[0] = 0;
  if (qword_102655EF8 >= 0)
  {
    v199 = &xmmword_102655EE8;
  }

  else
  {
    v199 = xmmword_102655EE8;
  }

  if (qword_102655EF8 >= 0)
  {
    v200 = HIBYTE(qword_102655EF8);
  }

  else
  {
    v200 = *(&xmmword_102655EE8 + 1);
  }

  v201 = std::string::append(&v235, v199, v200);
  v202 = *&v201->__r_.__value_.__l.__data_;
  v236.__r_.__value_.__r.__words[2] = v201->__r_.__value_.__r.__words[2];
  *&v236.__r_.__value_.__l.__data_ = v202;
  v201->__r_.__value_.__l.__size_ = 0;
  v201->__r_.__value_.__r.__words[2] = 0;
  v201->__r_.__value_.__r.__words[0] = 0;
  v203 = std::string::append(&v236, " WHERE ", 7uLL);
  v204 = *&v203->__r_.__value_.__l.__data_;
  v237.__r_.__value_.__r.__words[2] = v203->__r_.__value_.__r.__words[2];
  *&v237.__r_.__value_.__l.__data_ = v204;
  v203->__r_.__value_.__l.__size_ = 0;
  v203->__r_.__value_.__r.__words[2] = 0;
  v203->__r_.__value_.__r.__words[0] = 0;
  if (qword_102655F10 >= 0)
  {
    v205 = &xmmword_102655F00;
  }

  else
  {
    v205 = xmmword_102655F00;
  }

  if (qword_102655F10 >= 0)
  {
    v206 = HIBYTE(qword_102655F10);
  }

  else
  {
    v206 = *(&xmmword_102655F00 + 1);
  }

  v207 = std::string::append(&v237, v205, v206);
  v208 = *&v207->__r_.__value_.__l.__data_;
  v238.__r_.__value_.__r.__words[2] = v207->__r_.__value_.__r.__words[2];
  *&v238.__r_.__value_.__l.__data_ = v208;
  v207->__r_.__value_.__l.__size_ = 0;
  v207->__r_.__value_.__r.__words[2] = 0;
  v207->__r_.__value_.__r.__words[0] = 0;
  v209 = std::string::append(&v238, " = ", 3uLL);
  v210 = *&v209->__r_.__value_.__l.__data_;
  v239.__r_.__value_.__r.__words[2] = v209->__r_.__value_.__r.__words[2];
  *&v239.__r_.__value_.__l.__data_ = v210;
  v209->__r_.__value_.__l.__size_ = 0;
  v209->__r_.__value_.__r.__words[2] = 0;
  v209->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, 4uLL);
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

  v213 = std::string::append(&v239, p_p, size);
  v214 = *&v213->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v213->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v214;
  v213->__r_.__value_.__l.__size_ = 0;
  v213->__r_.__value_.__r.__words[2] = 0;
  v213->__r_.__value_.__r.__words[0] = 0;
  v215 = std::string::append(&v240, ")", 1uLL);
  v216 = *&v215->__r_.__value_.__l.__data_;
  qword_102655F28 = v215->__r_.__value_.__r.__words[2];
  xmmword_102655F18 = v216;
  v215->__r_.__value_.__l.__size_ = 0;
  v215->__r_.__value_.__r.__words[2] = 0;
  v215->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v234.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v233.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v233.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v232.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v231.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v230.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v229.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v228.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v227.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v226.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v225.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v224.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v223.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v222.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v221.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v220.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v219.__r_.__value_.__l.__data_);
  }

  return __cxa_atexit(&std::string::~string, &xmmword_102655F18, dword_100000000);
}

void sub_1003923E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, void *a63)
{
  if (*(v85 - 57) < 0)
  {
    operator delete(*(v85 - 80));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v85 - 89) < 0)
  {
    operator delete(*(v85 - 112));
  }

  if (*(v85 - 121) < 0)
  {
    operator delete(*(v85 - 144));
  }

  if (*(v85 - 153) < 0)
  {
    operator delete(*(v85 - 176));
  }

  if (*(v85 - 185) < 0)
  {
    operator delete(*(v85 - 208));
  }

  if (*(v85 - 217) < 0)
  {
    operator delete(*(v85 - 240));
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a85);
  }

  if (a84 < 0)
  {
    operator delete(a83);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a70);
  }

  if (a68 < 0)
  {
    operator delete(a63);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1003927B8()
{
  if (*(v0 - 57) < 0)
  {
    operator delete(*(v0 - 80));
  }

  if (*(v0 - 89) < 0)
  {
    operator delete(*(v0 - 112));
  }

  if (*(v0 - 121) < 0)
  {
    operator delete(*(v0 - 144));
  }

  if (*(v0 - 153) < 0)
  {
    operator delete(*(v0 - 176));
  }

  if (*(v0 - 185) < 0)
  {
    JUMPOUT(0x100392780);
  }

  JUMPOUT(0x100392784);
}

void sub_10039282C()
{
  if (*(v0 - 57) < 0)
  {
    operator delete(*(v0 - 80));
  }

  if (*(v0 - 89) < 0)
  {
    operator delete(*(v0 - 112));
  }

  if (*(v0 - 121) < 0)
  {
    operator delete(*(v0 - 144));
  }

  if (*(v0 - 153) < 0)
  {
    JUMPOUT(0x100392780);
  }

  JUMPOUT(0x100392784);
}

void sub_100392888(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4A40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4A40))
  {
    sub_1003929D4(&xmmword_1025D4A28);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4A28, dword_100000000);
    __cxa_guard_release(&qword_1025D4A40);
  }

  if (byte_1025D4A3F < 0)
  {
    sub_100007244(a1, xmmword_1025D4A28, *(&xmmword_1025D4A28 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4A28;
    *(a1 + 16) = unk_1025D4A38;
  }
}

void sub_10039295C(char *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4A60, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    sub_101870EB8();
    a1 = v4;
  }

  if (byte_1025D4A5F < 0)
  {
    v2 = *aValues_17;
    v3 = *&aValues_17[8];

    sub_100007244(a1, v2, v3);
  }

  else
  {
    strcpy(a1, "VALUES (?, ?, ?, ?, ?)");
    a1[23] = byte_1025D4A5F;
  }
}

double sub_1003929D4@<D0>(std::string *a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  sub_100392A38(&v3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_100392A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100392A38(std::string *a1)
{
  sub_100392A88(a1);
  sub_100392B60(a1);
  sub_100392C44(a1);
  sub_10038C868(a1);

  return sub_100392D28(a1);
}

uint64_t sub_100392A88(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 0;
  v7.__r_.__value_.__s.__data_[0] = 0;
  v2 = std::string::append(&v7, "GenerationTimestamp", 0x13uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_100392B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100392B60(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "RTLOIType", 9uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_100392C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100392C44(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "Device", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_100392CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100392D28(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "RtLoiGroupId", 0xCuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_100392DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100393020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 25) < 0)
  {
    operator delete(*(v40 - 48));
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double sub_100393110(double *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  switch(v4)
  {
    case 6:
      return a1[3];
    case 5:
      return a1[2];
    case 1:
      return a1[1];
  }

  v9 = v2;
  v10 = v3;
  if (qword_1025D46D0 != -1)
  {
    sub_101870F20();
  }

  v6 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Datatype not supported", v8, 2u);
  }

  v7 = sub_10000A100(121, 0);
  result = 0.0;
  if (v7)
  {
    sub_101870F34();
    return 0.0;
  }

  return result;
}

void sub_1003931E4(uint64_t *a1, __int128 *a2)
{
  sub_10001CAF4(&v12);
  v11 = 0;
  v4 = CFStringCreateWithCStringNoCopy(0, "MicroLocationsEnableEventLogging", 0x8000100u, kCFAllocatorNull);
  v5 = sub_10001CBC0(v12, v4, &v11);
  CFRelease(v4);
  v6 = v11;
  if (v13)
  {
    sub_100008080(v13);
  }

  if (!v5 || v6)
  {
    v7 = a1[1];
    if (v7 >= a1[2])
    {
      v9 = sub_100393800(a1, a2);
    }

    else
    {
      v8 = *a2;
      *(v7 + 12) = *(a2 + 12);
      *v7 = v8;
      sub_1003BA8F0(v7 + 2, a2 + 2);
      v9 = (v7 + 21);
      a1[1] = (v7 + 21);
    }

    a1[1] = v9;
    v10 = 0xCF3CF3CF3CF3CF3DLL * ((v9 - *a1) >> 4);
    if (v10 >= sub_100393324())
    {
      sub_1003933D4(a1);
    }
  }
}

uint64_t sub_100393324()
{
  sub_10001CAF4(&v5);
  v4 = 0;
  v0 = CFStringCreateWithCStringNoCopy(0, "MicroLocationsEventLoggerMaxBufferSize", 0x8000100u, kCFAllocatorNull);
  v1 = sub_1004FB850(v5, v0, &v4);
  CFRelease(v0);
  v2 = v4;
  if (v6)
  {
    sub_100008080(v6);
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 32;
  }
}

void sub_1003933B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003933D4(uint64_t *a1)
{
  if (*a1 == a1[1])
  {
    return 1;
  }

  v10 = v1;
  v11 = v2;
  if (sub_10039354C(a1[3]))
  {
    sub_100393680(a1);
    return 1;
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_101871030();
    }

    v5 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "EventLogger, failed to flush to disk", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101871044();
    }

    v6 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 4);
    if (v6 >= sub_100393324())
    {
      if (qword_1025D46D0 != -1)
      {
        sub_101871128();
      }

      v7 = qword_1025D46D8;
      if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "EventLogger, Max buffer reached after failing to flush to disk. Clearing event logger buffer", v8, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101871150();
      }

      sub_100393680(a1);
    }

    return 0;
  }
}

uint64_t sub_10039354C(uint64_t a1)
{
  if (sub_100023B68(a1 + 72))
  {
    v2 = *(a1 + 248);
    if (!v2)
    {
      operator new();
    }

    v3 = sub_1003CF5C8(v2);
    sub_100393AF0(a1);
    return v3;
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_101871030();
    }

    v5 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Can't insert because the database is invalid", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101871234();
    }

    return 0;
  }
}

uint64_t *sub_100393680(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    do
    {
      v4 = v2 - 336;
      sub_1003BAF40((v2 - 304));
      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;

  return sub_1003936E4(a1);
}

uint64_t *sub_1003936E4(uint64_t *result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = 0xCF3CF3CF3CF3CF3DLL * (v4 >> 4);
    v15 = result;
    if (v1 != v2)
    {
      sub_100393958(result, 0xCF3CF3CF3CF3CF3DLL * (v4 >> 4));
    }

    v7 = 16 * (v4 >> 4);
    v12 = 0;
    v13 = 336 * v6;
    v14 = 336 * v6;
    if (0xCF3CF3CF3CF3CF3DLL * (v3 >> 4))
    {
      v8 = result[1];
      v9 = v7 + v2 - v8;
      sub_1003939B4(result, v2, v8, v9);
      v10 = *v5;
      *v5 = v9;
      v11 = v5[2];
      *(v5 + 1) = v14;
      *&v14 = v10;
      *(&v14 + 1) = v11;
      v12 = v10;
      v13 = v10;
    }

    return sub_100393A6C(&v12);
  }

  return result;
}

void sub_1003937D8(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100393A6C(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1003937C4);
}

uint64_t sub_100393800(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xC30C30C30C30C3)
  {
    sub_10028C64C();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 4) >= 0x61861861861861)
  {
    v6 = 0xC30C30C30C30C3;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100393958(a1, v6);
  }

  v7 = 336 * v2;
  v15 = 0;
  v16 = v7;
  v17 = 336 * v2;
  v8 = *a2;
  *(v7 + 12) = *(a2 + 12);
  *v7 = v8;
  sub_1003BA8F0(336 * v2 + 32, a2 + 2);
  *&v17 = v17 + 336;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_1003939B4(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100393A6C(&v15);
  return v14;
}

void sub_100393944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100393A6C(va);
  _Unwind_Resume(a1);
}

void sub_100393958(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xC30C30C30C30C4)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1003939B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = *(v6 + v7);
      *(v8 + 12) = *(v6 + v7 + 12);
      *v8 = v9;
      sub_1003BA8F0(a4 + v7 + 32, v6 + v7 + 32);
      v7 += 336;
    }

    while (v6 + v7 != a3);
    while (v6 != a3)
    {
      sub_1003BAF40((v6 + 32));
      v6 += 336;
    }
  }
}

void sub_100393A44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 304);
    do
    {
      sub_1003BAF40(v5);
      v5 = (v6 - 336);
      v4 += 336;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100393A6C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 336;
    sub_1003BAF40((i - 304));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100393AF0(uint64_t a1)
{
  v2 = sub_100390524(a1);
  if (sub_100393C04() > v2)
  {
    return 1;
  }

  if (qword_1025D46D0 != -1)
  {
    sub_101871030();
  }

  v3 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "MicroLocationLoggedEvents";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s has been written to more than expected. Clearing up disk space. If this log is seen often that indicates a serious problem", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101871320();
  }

  result = sub_10038FF98(a1);
  if (result)
  {
    if (*(a1 + 160) <= 0)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = *(a1 + 160);
    }

    sub_1001B16EC(a1 + 72, v5);
    return 1;
  }

  return result;
}

uint64_t sub_100393C04()
{
  sub_10001CAF4(&v5);
  v4 = 0;
  v0 = CFStringCreateWithCStringNoCopy(0, "MicroLocationsLoggedEventsTableMaxRows", 0x8000100u, kCFAllocatorNull);
  v1 = sub_1004FB850(v5, v0, &v4);
  CFRelease(v0);
  v2 = v4;
  if (v6)
  {
    sub_100008080(v6);
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 25000;
  }
}

void sub_100393C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100393CB4(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4A80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4A80))
  {
    sub_100393E00(&xmmword_1025D4A68);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4A68, dword_100000000);
    __cxa_guard_release(&qword_1025D4A80);
  }

  if (byte_1025D4A7F < 0)
  {
    sub_100007244(a1, xmmword_1025D4A68, *(&xmmword_1025D4A68 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4A68;
    *(a1 + 16) = unk_1025D4A78;
  }
}

void sub_100393D88(char *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4AA0, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    sub_101871444();
    a1 = v4;
  }

  if (byte_1025D4A9F < 0)
  {
    v2 = *aValues_18;
    v3 = *&aValues_18[8];

    sub_100007244(a1, v2, v3);
  }

  else
  {
    strcpy(a1, "VALUES (?, ?, ?, ?, ?)");
    a1[23] = byte_1025D4A9F;
  }
}

double sub_100393E00@<D0>(std::string *a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  sub_100393E64(&v3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_100393E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100393E64(std::string *a1)
{
  sub_100393EB4(a1);
  sub_100393F8C(a1);
  sub_100394070(a1);
  sub_100394154(a1);

  return sub_100394238(a1);
}

uint64_t sub_100393EB4(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 0;
  v7.__r_.__value_.__s.__data_[0] = 0;
  v2 = std::string::append(&v7, "RowId", 5uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_100393F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100393F8C(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "LastSeenTimeStamp", 0x11uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_10039403C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100394070(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "BluetoothId", 0xBuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_100394120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100394154(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "DeviceName", 0xAuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_100394204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100394238(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "StableIdentifier", 0x10uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003942E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100394530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 25) < 0)
  {
    operator delete(*(v40 - 48));
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003945DC(uint64_t result, int a2)
{
  v2 = *(result + 12);
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    *(result + 12) = v3;
    operator new[]();
  }

  return result;
}

_OWORD *sub_10039468C(_OWORD *__dst, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = __dst;
    if (*(a2 + 23) < 0)
    {
      __dst = sub_100007244(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v3;
    }

    v2[24] = 1;
  }

  return __dst;
}

void sub_1003947B8(uint64_t a1, uint64_t **a2)
{
  [*(a1 + 16) silo];
  sub_10039485C(a2, v5);
  Current_2 = j__CFAbsoluteTimeGetCurrent_2();
  (*(**(a1 + 24) + 16))(*(a1 + 24), v5, Current_2);
  v6 = v5;
  sub_100394C08(&v6);
}

void sub_100394844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100394C08(va);
  _Unwind_Resume(a1);
}

void sub_10039485C(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v12 = 0;
  v3 = 0uLL;
  v11 = 0u;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    v8 = 0;
  }

  else
  {
    do
    {
      sub_1003CBFEC(v4, v9);
      if (v10 == 1)
      {
        v6 = *(&v11 + 1);
        if (*(&v11 + 1) >= v12)
        {
          v7 = sub_10039497C(&v11, v9);
        }

        else
        {
          sub_10039C528(*(&v11 + 1), v9);
          v7 = v6 + 64;
        }

        *(&v11 + 1) = v7;
        if (v10)
        {
          sub_10039C5E0(v9);
        }
      }

      v4 += 10;
    }

    while (v4 != v5);
    v3 = v11;
    v8 = v12;
  }

  *a2 = v3;
  *(a2 + 16) = v8;
  v12 = 0;
  v11 = 0uLL;
  v9[0] = &v11;
  sub_100394C08(v9);
}

void sub_100394938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v19 - 56) = v18;
  if (a18 == 1)
  {
    sub_10039C5E0(&a10);
  }

  a10 = (v19 - 64);
  sub_100394C08(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10039497C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_10028C64C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_100394A8C(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 6;
  sub_10039C528(v2 << 6, a2);
  v16 = ((v2 << 6) + 64);
  v8 = *(a1 + 8);
  v9 = (v2 << 6) + *a1 - v8;
  sub_100394AD4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_100394B9C(&v14);
  return v13;
}

void sub_100394A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100394B9C(va);
  _Unwind_Resume(a1);
}

void sub_100394A8C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_100394AD4(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_10039C528(a4 + v7, v8);
      v8 += 8;
      v7 += 64;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 8;
        result = (*v12)(v6);
        v10 += 8;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }

  return result;
}

void sub_100394B80(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_1018714C0(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100394B9C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 64);
    *(a1 + 16) = i - 64;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100394C08(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 64;
      v7 = v4 - 64;
      v8 = v4 - 64;
      do
      {
        v9 = *v8;
        v8 -= 64;
        (*v9)(v7);
        v6 -= 64;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100394CC8(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4AC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4AC0))
  {
    sub_100394E70(&xmmword_1025D4AA8);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4AA8, dword_100000000);
    __cxa_guard_release(&qword_1025D4AC0);
  }

  if (byte_1025D4ABF < 0)
  {
    sub_100007244(a1, xmmword_1025D4AA8, *(&xmmword_1025D4AA8 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4AA8;
    *(a1 + 16) = unk_1025D4AB8;
  }
}

void sub_100394D9C(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4AE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4AE0))
  {
    sub_1003950F4(&xmmword_1025D4AC8);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4AC8, dword_100000000);
    __cxa_guard_release(&qword_1025D4AE0);
  }

  if (byte_1025D4ADF < 0)
  {
    sub_100007244(a1, xmmword_1025D4AC8, *(&xmmword_1025D4AC8 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4AC8;
    *(a1 + 16) = unk_1025D4AD8;
  }
}

double sub_100394E70@<D0>(std::string *a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  sub_100394ED4(&v3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_100394EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100394ED4(std::string *a1)
{
  sub_100392A88(a1);
  sub_100392B60(a1);
  sub_100394F2C(a1);
  sub_100395010(a1);
  sub_10038C868(a1);

  return sub_100392D28(a1);
}

uint64_t sub_100394F2C(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "ConfigurationType", 0x11uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_100394FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100395010(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "Configuration", 0xDuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003950C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_1003950F4@<D0>(std::string *a1@<X8>)
{
  sub_10000EC00(&v11, "VALUES (");
  v2 = 6;
  do
  {
    if (v2 == 6)
    {
      *(&v8.__r_.__value_.__s + 23) = 0;
      v8.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      *(&v8.__r_.__value_.__s + 23) = 2;
      strcpy(&v8, ", ");
    }

    v3 = std::string::append(&v8, "?", 1uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v10 = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (v10 >= 0)
    {
      v6 = HIBYTE(v10);
    }

    else
    {
      v6 = __p[1];
    }

    std::string::append(&v11, v5, v6);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    --v2;
  }

  while (v2);
  std::string::append(&v11, ")", 1uLL);
  result = *&v11.__r_.__value_.__l.__data_;
  *a1 = v11;
  return result;
}

void sub_100395208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100395468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 25) < 0)
  {
    operator delete(*(v40 - 48));
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_100395514(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4B00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4B00))
  {
    sub_100395660(&xmmword_1025D4AE8);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4AE8, dword_100000000);
    __cxa_guard_release(&qword_1025D4B00);
  }

  if (byte_1025D4AFF < 0)
  {
    sub_100007244(a1, xmmword_1025D4AE8, *(&xmmword_1025D4AE8 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4AE8;
    *(a1 + 16) = unk_1025D4AF8;
  }
}

void sub_1003955E8(char *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4B20, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    sub_10187152C();
    a1 = v4;
  }

  if (byte_1025D4B1F < 0)
  {
    v2 = *aValues_19;
    v3 = *&aValues_19[8];

    sub_100007244(a1, v2, v3);
  }

  else
  {
    strcpy(a1, "VALUES (?, ?, ?, ?, ?)");
    a1[23] = byte_1025D4B1F;
  }
}

double sub_100395660@<D0>(std::string *a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  sub_1003956C4(&v3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_1003956A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003956C4(std::string *a1)
{
  sub_100393EB4(a1);
  sub_100393F8C(a1);
  sub_100395714(a1);
  sub_1003957F8(a1);

  return sub_1003958DC(a1);
}

uint64_t sub_100395714(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "LoiId", 5uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003957C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003957F8(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "LoiGroupId", 0xAuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003958A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003958DC(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "LoiType", 7uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_10039598C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100395BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 25) < 0)
  {
    operator delete(*(v40 - 48));
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003960C8()
{
  sub_10001CAF4(&v5);
  v4 = 0;
  v0 = CFStringCreateWithCStringNoCopy(0, "MicroLocationsEnabled", 0x8000100u, kCFAllocatorNull);
  v1 = sub_10001CBC0(v5, v0, &v4);
  CFRelease(v0);
  v2 = v4;
  if (v6)
  {
    sub_100008080(v6);
  }

  return v1 & v2;
}

void sub_100396154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100396170(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    *(result[4] + 80) = a2;
    v3 = v2[4];

    return [v3 requestBootstrapWithLastGeofenceStates];
  }

  return result;
}

id sub_10039643C(uint64_t a1)
{
  if (qword_1025D46D0 != -1)
  {
    sub_101871698();
  }

  v2 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_INFO))
  {
    v3 = [objc_msgSend(objc_msgSend(*(a1 + 32) "lastEvent")];
    v4 = [objc_msgSend(*(a1 + 32) "lastEvent")];
    v6[0] = 68289539;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2081;
    v10 = v3;
    v11 = 1025;
    v12 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Bridge, generating bootstrap geofence update, Geofence Id:%{private, location:escape_only}s, state:%{private}d}", v6, 0x22u);
  }

  return [*(a1 + 40) generateGeofenceUpdateToClient:{objc_msgSend(*(a1 + 32), "lastEvent")}];
}

uint64_t sub_100396B94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[8];
  v3 = [v1 generateLocationManagerNotAvailableError];
  v4 = *(*v2 + 8);

  return v4(v2, 0, v3);
}

uint64_t sub_100396BF8(uint64_t a1)
{
  if (qword_1025D46D0 != -1)
  {
    sub_101871698();
  }

  v2 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:fetchPlaceInferenceAtCurrentLocation, timed out waiting for fetching place inference, this shouldn't happen}", buf, 0x12u);
    if (qword_1025D46D0 != -1)
    {
      sub_101871594();
    }
  }

  v3 = qword_1025D46D8;
  if (os_signpost_enabled(qword_1025D46D8))
  {
    *buf = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_signpost_emit_with_name_impl(dword_100000000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "fetchPlaceInferenceAtCurrentLocation, timed out waiting for fetching place inference, this shouldn't happen", "{msg%{public}.0s:fetchPlaceInferenceAtCurrentLocation, timed out waiting for fetching place inference, this shouldn't happen}", buf, 0x12u);
  }

  [*(a1 + 32) invalidateFetchPlaceInferenceTimer];
  v4 = [NSError alloc];
  v6 = NSLocalizedDescriptionKey;
  v7 = @"Request to fetch place inference timed out";
  return (*(**(*(a1 + 32) + 64) + 8))(*(*(a1 + 32) + 64), 0, [v4 initWithDomain:kCLErrorDomainPrivate code:0 userInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v7, &v6, 1)}]);
}

uint64_t sub_100396DE8(uint64_t a1, void *a2, uint64_t a3)
{
  [*(a1 + 32) invalidateFetchPlaceInferenceTimer];
  v14 = a3;
  if (a3)
  {
    if (qword_1025D46D0 != -1)
    {
      sub_101871698();
    }

    v6 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289283;
      v21 = 2082;
      v22 = "";
      v23 = 2113;
      v24 = a3;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:fetchPlaceInferenceAtCurrentLocation, failed to request place inference, we will start leeching and wait for next location update, Error Reason:%{private, location:escape_only}@}", &buf, 0x1Cu);
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(a2);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          if (qword_1025D46D0 != -1)
          {
            sub_101871594();
          }

          v12 = qword_1025D46D8;
          if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
          {
            buf = 68289283;
            v21 = 2082;
            v22 = "";
            v23 = 2113;
            v24 = v11;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:fetchPlaceInferenceAtCurrentLocation, received Place Inference, PI:%{private, location:escape_only}@}", &buf, 0x1Cu);
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  return (*(**(*(a1 + 32) + 64) + 8))(*(*(a1 + 32) + 64), a2, v14);
}

uint64_t sub_100397204(uint64_t a1, void *a2)
{
  -[CLMicroLocationLoi initWithIdentifier:andType:]([CLMicroLocationLoi alloc], "initWithIdentifier:andType:", [a2 identifier], objc_msgSend(a2, "type"));
  v3 = *(**(*(a1 + 32) + 64) + 16);

  return v3();
}

id sub_100397464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003974DC;
  v6[3] = &unk_102447468;
  v6[4] = a2;
  v6[5] = v3;
  v6[6] = a3;
  return [v4 async:v6];
}

uint64_t sub_1003974DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v3 = &stru_1025052F8;
  }

  if (qword_1025D46D0 != -1)
  {
    sub_101871698();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) count];
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2050;
    v11 = v5;
    v12 = 2082;
    v13 = [(__CFString *)v3 UTF8String];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LOI Bridge, received LOI Ids from CLRoutineMonitor, LOI ID Count:%{public}ld, LOI List:%{public, location:escape_only}s}", v7, 0x26u);
  }

  return (*(**(*(a1 + 40) + 64) + 24))(*(*(a1 + 40) + 64), *(a1 + 32), *(a1 + 48));
}

void sub_100397C6C()
{
  sub_10001CAF4(&v2);
  v1 = 0;
  v0 = CFStringCreateWithCStringNoCopy(0, "MicroLocationsCustomLoiGeofenceRadius", 0x8000100u, kCFAllocatorNull);
  sub_100023B78(v2, v0, &v1);
  CFRelease(v0);
  if (v3)
  {
    sub_100008080(v3);
  }
}

void sub_100397D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100397EF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[8];
  v3 = [v1 generateLocationManagerNotAvailableError];
  v4 = *(*v2 + 32);

  return v4(v2, 0, v3);
}

uint64_t sub_10039885C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    goto LABEL_31;
  }

  v5 = (a2 + 1);
  v6 = *a2;
  if (v6 == 123)
  {
    if (v5 == a3)
    {
      goto LABEL_31;
    }

    v5 = (a2 + 2);
    v7 = a2[1];
  }

  else
  {
    v7 = *a2;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    do
    {
      if (v9 == 4)
      {
        if (v7 != 45)
        {
          v8 = 0;
          goto LABEL_23;
        }
      }

      else
      {
        v12 = v9 == 6 || (v9 & 0x7FFFFFFD) == 8;
        if ((v12 & v8) != 1)
        {
          goto LABEL_23;
        }

        if (v7 != 45)
        {
          goto LABEL_31;
        }
      }

      if (v5 == a3)
      {
        goto LABEL_31;
      }

      v13 = *v5++;
      v7 = v13;
      v8 = 1;
LABEL_23:
      v14 = sub_10038BB78(a1, v7);
      *(&v18 + v9) = v14;
      if (v5 == a3)
      {
        goto LABEL_31;
      }

      v15 = *v5++;
      v7 = v15;
      *(&v18 + v9++) = sub_10038BB78(a1, v15) | (16 * v14);
    }

    while (!v9);
    if (v9 == 16)
    {
      break;
    }

    if (v5 == a3)
    {
      goto LABEL_31;
    }

    v10 = *v5++;
    v7 = v10;
  }

  if (v6 == 123 && (v5 == a3 || (v16 = *v5, ++v5, v16 != 125)) || v5 != a3)
  {
LABEL_31:
    sub_10038BB10();
  }

  return v18;
}

uint64_t sub_1003989F4()
{
  sub_10000EC00(&qword_102655F90, "/System/Library/LocationBundles/MicroLocation.bundle");
  __cxa_atexit(&std::string::~string, &qword_102655F90, dword_100000000);
  sub_10000EC00(&qword_102655FA8, "/var/root/Library/Caches/locationd/");
  __cxa_atexit(&std::string::~string, &qword_102655FA8, dword_100000000);
  sub_10000EC00(&qword_102655FC0, "CLMicroLocationRegionMonitor");

  return __cxa_atexit(&std::string::~string, &qword_102655FC0, dword_100000000);
}

std::string *sub_100398AB4@<X0>(std::string *__str@<X0>, std::string *a2@<X8>)
{
  strcpy(__c, "--");
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v5 = __str;
  }

  else
  {
    v5 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size >= 2)
  {
    v6 = (v5 + size);
    v7 = v5;
    do
    {
      v8 = memchr(v7, SLOBYTE(__c[0]), size - 1);
      if (!v8)
      {
        break;
      }

      if (*v8 == __c[0])
      {
        if (v8 != v6 && v8 - v5 != -1)
        {
          result = std::string::basic_string(&v10, __str, 0, v8 - v5, &v12);
          *a2 = v10;
          return result;
        }

        return std::string::operator=(a2, __str);
      }

      v7 = (v8 + 1);
      size = v6 - v7;
    }

    while (v6 - v7 >= 2);
  }

  return std::string::operator=(a2, __str);
}

void sub_100398BAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100398BC8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_102655FD8 & 1) == 0)
  {
    byte_102655FD8 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/MicroLocation/proto/gen-cpp/microlocation.pb.cc", a4);
    operator new();
  }
}

uint64_t sub_10039A184(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1024475F8;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_10039A1AC(uint64_t result)
{
  *result = off_102447670;
  *(result + 8) = 0;
  *(result + 16) = 6;
  *(result + 24) = 0;
  *(result + 32) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(result + 56) = 0;
  *(result + 48) = 0;
  *(result + 40) = 1;
  return result;
}

uint64_t sub_10039A1F0(uint64_t result)
{
  *result = off_102447EE0;
  *(result + 12) = 0;
  *(result + 8) = 0;
  return result;
}

double sub_10039A218(uint64_t a1)
{
  *&result = 2;
  *(a1 + 32) = 2;
  *a1 = off_102448048;
  *(a1 + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 16) = 0;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 40) = 0;
  return result;
}

double sub_10039A254(void *a1)
{
  *a1 = off_102448390;
  result = 0.0;
  a1[1] = 0;
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[3] = 0;
  return result;
}

double sub_10039A28C(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = 0;
  *(a1 + 16) = 12;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = off_102448408;
  *(a1 + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 32) = 0;
  *(a1 + 56) = a2;
  return a2.n128_f64[0];
}

double sub_10039A2D8(uint64_t a1)
{
  *&result = 46;
  *(a1 + 16) = 46;
  *a1 = off_102448B88;
  *(a1 + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 24) = 0;
  return result;
}

double sub_10039A310(uint64_t a1)
{
  *a1 = off_102448CF0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  return result;
}

double sub_10039A380(uint64_t a1)
{
  *a1 = off_102448D68;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 72) = 1;
  *(a1 + 76) = 0;
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_10039A3D0(uint64_t result)
{
  v1 = result;
  v2 = qword_102635EB8;
  if (!qword_102635EB8)
  {
    result = sub_100398BC8();
    v2 = qword_102635EB8;
  }

  v1[2] = v2;
  v3 = qword_102635ED0;
  if (!qword_102635ED0)
  {
    result = sub_100398BC8();
    v3 = qword_102635ED0;
  }

  v1[3] = v3;
  v4 = qword_102635ED8;
  if (!qword_102635ED8)
  {
    result = sub_100398BC8();
    v4 = qword_102635ED8;
  }

  v1[4] = v4;
  v5 = qword_102635EE0;
  if (!qword_102635EE0)
  {
    result = sub_100398BC8();
    v5 = qword_102635EE0;
  }

  v1[5] = v5;
  v6 = qword_102635EB0;
  if (!qword_102635EB0)
  {
    result = sub_100398BC8();
    v6 = qword_102635EB0;
  }

  v1[6] = v6;
  v7 = qword_102635EC8;
  if (!qword_102635EC8)
  {
    result = sub_100398BC8();
    v7 = qword_102635EC8;
  }

  v1[7] = v7;
  return result;
}

uint64_t sub_10039A480(uint64_t result)
{
  v1 = result;
  v2 = qword_102635F60;
  if (!qword_102635F60)
  {
    result = sub_100398BC8();
    v2 = qword_102635F60;
  }

  v1[1] = v2;
  v3 = qword_102635F70;
  if (!qword_102635F70)
  {
    result = sub_100398BC8();
    v3 = qword_102635F70;
  }

  v1[2] = v3;
  v4 = qword_102635F78;
  if (!qword_102635F78)
  {
    result = sub_100398BC8();
    v4 = qword_102635F78;
  }

  v1[3] = v4;
  v5 = qword_102635F80;
  if (!qword_102635F80)
  {
    result = sub_100398BC8();
    v5 = qword_102635F80;
  }

  v1[4] = v5;
  v6 = qword_102635F90;
  if (!qword_102635F90)
  {
    result = sub_100398BC8();
    v6 = qword_102635F90;
  }

  v1[5] = v6;
  v7 = qword_102635F98;
  if (!qword_102635F98)
  {
    result = sub_100398BC8();
    v7 = qword_102635F98;
  }

  v1[6] = v7;
  v8 = qword_102635FA0;
  if (!qword_102635FA0)
  {
    result = sub_100398BC8();
    v8 = qword_102635FA0;
  }

  v1[7] = v8;
  v9 = qword_102635FB0;
  if (!qword_102635FB0)
  {
    result = sub_100398BC8();
    v9 = qword_102635FB0;
  }

  v1[8] = v9;
  v10 = qword_102635F68;
  if (!qword_102635F68)
  {
    result = sub_100398BC8();
    v10 = qword_102635F68;
  }

  v1[9] = v10;
  v11 = qword_102635F88;
  if (!qword_102635F88)
  {
    result = sub_100398BC8();
    v11 = qword_102635F88;
  }

  v1[10] = v11;
  v12 = qword_102635FB8;
  if (!qword_102635FB8)
  {
    result = sub_100398BC8();
    v12 = qword_102635FB8;
  }

  v1[11] = v12;
  v13 = qword_102635FC0;
  if (!qword_102635FC0)
  {
    result = sub_100398BC8();
    v13 = qword_102635FC0;
  }

  v1[12] = v13;
  v14 = qword_102635FC8;
  if (!qword_102635FC8)
  {
    result = sub_100398BC8();
    v14 = qword_102635FC8;
  }

  v1[13] = v14;
  v15 = qword_102635FD0;
  if (!qword_102635FD0)
  {
    result = sub_100398BC8();
    v15 = qword_102635FD0;
  }

  v1[14] = v15;
  v16 = qword_102635FD8;
  if (!qword_102635FD8)
  {
    result = sub_100398BC8();
    v16 = qword_102635FD8;
  }

  v1[15] = v16;
  v17 = qword_102635FE0;
  if (!qword_102635FE0)
  {
    result = sub_100398BC8();
    v17 = qword_102635FE0;
  }

  v1[16] = v17;
  v18 = qword_102635FE8;
  if (!qword_102635FE8)
  {
    result = sub_100398BC8();
    v18 = qword_102635FE8;
  }

  v1[17] = v18;
  v19 = qword_102635FF0;
  if (!qword_102635FF0)
  {
    result = sub_100398BC8();
    v19 = qword_102635FF0;
  }

  v1[18] = v19;
  v20 = qword_102635FF8;
  if (!qword_102635FF8)
  {
    result = sub_100398BC8();
    v20 = qword_102635FF8;
  }

  v1[19] = v20;
  v21 = qword_102636000;
  if (!qword_102636000)
  {
    result = sub_100398BC8();
    v21 = qword_102636000;
  }

  v1[20] = v21;
  v22 = qword_102636008;
  if (!qword_102636008)
  {
    result = sub_100398BC8();
    v22 = qword_102636008;
  }

  v1[21] = v22;
  v23 = qword_102636010;
  if (!qword_102636010)
  {
    result = sub_100398BC8();
    v23 = qword_102636010;
  }

  v1[22] = v23;
  v24 = qword_102636018;
  if (!qword_102636018)
  {
    result = sub_100398BC8();
    v24 = qword_102636018;
  }

  v1[23] = v24;
  v25 = qword_102636020;
  if (!qword_102636020)
  {
    result = sub_100398BC8();
    v25 = qword_102636020;
  }

  v1[24] = v25;
  v26 = qword_102636028;
  if (!qword_102636028)
  {
    result = sub_100398BC8();
    v26 = qword_102636028;
  }

  v1[25] = v26;
  v27 = qword_102636030;
  if (!qword_102636030)
  {
    result = sub_100398BC8();
    v27 = qword_102636030;
  }

  v1[26] = v27;
  v28 = qword_102636038;
  if (!qword_102636038)
  {
    result = sub_100398BC8();
    v28 = qword_102636038;
  }

  v1[27] = v28;
  v29 = qword_102636058;
  if (!qword_102636058)
  {
    result = sub_100398BC8();
    v29 = qword_102636058;
  }

  v1[28] = v29;
  v30 = qword_102636060;
  if (!qword_102636060)
  {
    result = sub_100398BC8();
    v30 = qword_102636060;
  }

  v1[29] = v30;
  v31 = qword_102636068;
  if (!qword_102636068)
  {
    result = sub_100398BC8();
    v31 = qword_102636068;
  }

  v1[30] = v31;
  v32 = qword_102636070;
  if (!qword_102636070)
  {
    result = sub_100398BC8();
    v32 = qword_102636070;
  }

  v1[31] = v32;
  v33 = qword_102636078;
  if (!qword_102636078)
  {
    result = sub_100398BC8();
    v33 = qword_102636078;
  }

  v1[32] = v33;
  v34 = qword_102636080;
  if (!qword_102636080)
  {
    result = sub_100398BC8();
    v34 = qword_102636080;
  }

  v1[33] = v34;
  v35 = qword_102636088;
  if (!qword_102636088)
  {
    result = sub_100398BC8();
    v35 = qword_102636088;
  }

  v1[34] = v35;
  v36 = qword_102636040;
  if (!qword_102636040)
  {
    result = sub_100398BC8();
    v36 = qword_102636040;
  }

  v1[35] = v36;
  return result;
}

uint64_t sub_10039A7E8(uint64_t result)
{
  v1 = result;
  v2 = qword_102635F60;
  if (!qword_102635F60)
  {
    result = sub_100398BC8();
    v2 = qword_102635F60;
  }

  v1[2] = v2;
  v3 = qword_102635F70;
  if (!qword_102635F70)
  {
    result = sub_100398BC8();
    v3 = qword_102635F70;
  }

  v1[3] = v3;
  v4 = qword_102635F78;
  if (!qword_102635F78)
  {
    result = sub_100398BC8();
    v4 = qword_102635F78;
  }

  v1[4] = v4;
  v5 = qword_102635F80;
  if (!qword_102635F80)
  {
    result = sub_100398BC8();
    v5 = qword_102635F80;
  }

  v1[5] = v5;
  v6 = qword_102635F90;
  if (!qword_102635F90)
  {
    result = sub_100398BC8();
    v6 = qword_102635F90;
  }

  v1[6] = v6;
  v7 = qword_102635F98;
  if (!qword_102635F98)
  {
    result = sub_100398BC8();
    v7 = qword_102635F98;
  }

  v1[7] = v7;
  v8 = qword_102635FA0;
  if (!qword_102635FA0)
  {
    result = sub_100398BC8();
    v8 = qword_102635FA0;
  }

  v1[8] = v8;
  v9 = qword_102635FB0;
  if (!qword_102635FB0)
  {
    result = sub_100398BC8();
    v9 = qword_102635FB0;
  }

  v1[10] = v9;
  v10 = qword_102635F68;
  if (!qword_102635F68)
  {
    result = sub_100398BC8();
    v10 = qword_102635F68;
  }

  v1[11] = v10;
  v11 = qword_102635F88;
  if (!qword_102635F88)
  {
    result = sub_100398BC8();
    v11 = qword_102635F88;
  }

  v1[12] = v11;
  return result;
}

void sub_10039A944(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  LOBYTE(v4) = *(a2 + 64);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 64))
  {
    v5 = *(a2 + 16);
    if ((v5 - 1) >= 6)
    {
      sub_101871CC8();
    }

    *(a1 + 64) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 64);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 8);
    *(a1 + 64) |= 2u;
    *(a1 + 8) = v6;
    v4 = *(a2 + 64);
  }

  if ((v4 & 4) != 0)
  {
    v7 = *(a2 + 20);
    *(a1 + 64) |= 4u;
    *(a1 + 20) = v7;
    v4 = *(a2 + 64);
  }

  if ((v4 & 8) != 0)
  {
    v8 = *(a2 + 24);
    *(a1 + 64) |= 8u;
    v9 = *(a1 + 24);
    if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v4 = *(a2 + 64);
    if ((v4 & 0x10) == 0)
    {
LABEL_13:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_14;
      }

LABEL_21:
      v11 = *(a2 + 32);
      *(a1 + 64) |= 0x20u;
      *(a1 + 32) = v11;
      v4 = *(a2 + 64);
      if ((v4 & 0x40) == 0)
      {
LABEL_15:
        if ((v4 & 0x80) == 0)
        {
          return;
        }

        goto LABEL_25;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v10 = *(a2 + 56);
  *(a1 + 64) |= 0x10u;
  *(a1 + 56) = v10;
  v4 = *(a2 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_22:
  v12 = *(a2 + 40);
  *(a1 + 64) |= 0x40u;
  v13 = *(a1 + 40);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  if ((*(a2 + 64) & 0x80) != 0)
  {
LABEL_25:
    v14 = *(a2 + 48);
    *(a1 + 64) |= 0x80u;
    v15 = *(a1 + 48);
    if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v15, v14);
  }
}