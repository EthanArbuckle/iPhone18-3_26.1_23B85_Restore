uint64_t sub_100550394(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 1179) = a2;
  return sub_1000088CC(v5);
}

void sub_1005503DC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 168;
        sub_100550FBC(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t **sub_1005506E8(uint64_t **result, void *a2, void *a3)
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
      v13 = sub_100083B10(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 28) = *(v9 + 28);
          sub_100083B64(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_100083B10(v13);
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

    result = sub_100084E60(&v12);
  }

  if (a2 != a3)
  {
    sub_10055084C();
  }

  return result;
}

void sub_100550838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100084E60(va);
  _Unwind_Resume(a1);
}

void *sub_100550954(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1000C9104(v6, v10);
    }

    sub_1000C7698();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
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

void sub_100550BF0()
{
  v3 = *v2;
  if (*v2)
  {
    *(v0 + 48) = v3;
    operator delete(v3);
  }

  sub_1003C95E8(v1, *(v0 + 16));

  operator delete();
}

void *sub_100550C98(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100550CF0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100550CF0(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100550D78(v5, v5 + 1, v4 + 7);
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

uint64_t sub_100550D78(void *a1, uint64_t *a2, unsigned int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_100550E14(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_100550E14(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
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
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
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
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
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
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
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

uint64_t sub_100550FBC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 111) < 0)
  {
    operator delete(*(a2 + 88));
  }

  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  return nullsub_21(a2 + 1);
}

unint64_t sub_100551020(__n128 *a1, uint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1->n128_u64[1] - a1->n128_u64[0]) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    sub_1000C7698();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[1].n128_u64[0] - a1->n128_u64[0]) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[1].n128_u64[0] - a1->n128_u64[0]) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[1].n128_u64[0] - a1->n128_u64[0]) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100551298(a1, v6);
  }

  v13 = 0;
  v14 = 168 * v2;
  sub_100551168(168 * v2, a2);
  v15 = (168 * v2 + 168);
  v7 = a1->n128_i64[1];
  v8 = 168 * v2 + a1->n128_u64[0] - v7;
  sub_1005512F4(a1, a1->n128_u64[0], v7, v8);
  v9 = a1->n128_u64[0];
  a1->n128_u64[0] = v8;
  v10 = a1[1].n128_u64[0];
  v12 = v15.n128_u64[0];
  *(a1 + 8) = v15;
  v15.n128_u64[0] = v9;
  v15.n128_u64[1] = v10;
  v13 = v9;
  v14 = v9;
  sub_100551414(&v13);
  return v12;
}

void sub_100551154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100551414(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100551168(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_1006E5F04((a1 + 1), (a2 + 1));
  v4 = *(a2 + 18);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 18) = v4;
  if (*(a2 + 47) < 0)
  {
    sub_100008904((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  v6 = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = v6;
  if (*(a2 + 79) < 0)
  {
    sub_100008904((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v7 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v7;
  }

  *(a1 + 80) = *(a2 + 80);
  if (*(a2 + 111) < 0)
  {
    sub_100008904((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v8 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v8;
  }

  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  *(a1 + 159) = *(a2 + 159);
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 112) = v9;
  return a1;
}

void sub_100551254(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  nullsub_21(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100551298(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  sub_1000C7698();
}

__n128 *sub_1005512F4(__n128 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = result;
    v7 = a2 + 1;
    result = (a4 + 1);
    do
    {
      result[-1].n128_u8[15] = *(v7 - 1);
      sub_1006E5F04(result, v7);
      v8 = *(v7 + 17);
      *(v9 + 19) = *(v7 + 19);
      *(v9 + 17) = v8;
      v10 = *(v7 + 23);
      *(v9 + 39) = *(v7 + 39);
      *(v9 + 23) = v10;
      *(v7 + 23) = 0;
      *(v7 + 31) = 0;
      *(v7 + 39) = 0;
      v11 = *(v7 + 47);
      *(v9 + 51) = *(v7 + 51);
      *(v9 + 47) = v11;
      v12 = *(v7 + 55);
      *(v9 + 71) = *(v7 + 71);
      *(v9 + 55) = v12;
      *(v7 + 71) = 0;
      *(v7 + 63) = 0;
      *(v7 + 55) = 0;
      *(v9 + 79) = *(v7 + 79);
      v13 = *(v7 + 87);
      *(v9 + 103) = *(v7 + 103);
      *(v9 + 87) = v13;
      *(v7 + 103) = 0;
      *(v7 + 95) = 0;
      *(v7 + 87) = 0;
      v14 = *(v7 + 111);
      v15 = *(v7 + 127);
      v16 = *(v7 + 143);
      *(v9 + 158) = *(v7 + 158);
      *(v9 + 143) = v16;
      *(v9 + 127) = v15;
      *(v9 + 111) = v14;
      v17 = v7 + 167;
      v7 += 168;
      result = (v9 + 168);
    }

    while (v17 != a3);
    while (v5 != a3)
    {
      result = sub_100550FBC(v6, v5);
      v5 += 168;
    }
  }

  return result;
}

void **sub_100551414(void **a1)
{
  sub_100551448(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100551448(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 168;
      result = sub_100550FBC(v4, v1 - 168);
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

void sub_100551490(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000C7698();
}

void *sub_100551540(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 2 * a3;
    do
    {
      sub_1005515C0(a1, v4, a2++);
      v6 -= 2;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1005515C0(void *a1, uint64_t *a2, unsigned __int16 *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_10055165C(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_10055165C(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 13), v6 < v7))
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
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 13) < v15)
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
          v18 = *(v16 + 26);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
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
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 13))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 26);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
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

void *sub_10055193C(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    sub_10035EA68(result, a3);
  }

  return result;
}

void *sub_100551A0C(void *a1)
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
    sub_100008108(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1004F3500(a1, &v10);
}

void sub_100551B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100551C48(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = sub_100551CD4(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *sub_100551CD4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_1003626B8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100362290(a1, &v10);
}

void sub_100551E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10055239C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = Communicator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_1005524FC(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  sub_1000D8E64(a1 + 24);

  return a1;
}

id sub_100553680(uint64_t a1)
{
  result = [*(a1 + 32) delegate];
  if (result)
  {
    v3 = qword_100BCE948;
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received 'call status changed' notification", v4, 2u);
    }

    [*(a1 + 32) _updateCalls];
    return (**[*(a1 + 32) delegate])();
  }

  return result;
}

void sub_100554EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  a16 = &a22;
  sub_1000D6BD4(&a16);
  _Unwind_Resume(a1);
}

void sub_1005554BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000D6BD4(&__p);
  sub_1005524FC(&a22);

  a22 = v23 - 96;
  sub_1000D6BD4(&a22);
  _Unwind_Resume(a1);
}

void sub_100555678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15, void **a16)
{
  sub_1000D6BD4(&a15);

  a16 = &a12;
  sub_1000D6BD4(&a16);
  _Unwind_Resume(a1);
}

void sub_100555730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000D6BD4(&a12);
  _Unwind_Resume(a1);
}

void sub_100555818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v13 - 24) = &a10;
  sub_1000D6BD4((v13 - 24));
  a10 = &a13;
  sub_1000D6BD4(&a10);
  _Unwind_Resume(a1);
}

void sub_100555A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, char a15)
{
  sub_1000D6BD4(&a13);
  a13 = &a15;
  sub_1000D6BD4(&a13);

  _Unwind_Resume(a1);
}

void sub_100555B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v13 - 24) = &a10;
  sub_1000D6BD4((v13 - 24));
  a10 = &a13;
  sub_1000D6BD4(&a10);
  _Unwind_Resume(a1);
}

void sub_100555D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005560D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D8E64(va);

  _Unwind_Resume(a1);
}

void *sub_100556718(void *a1, uint64_t a2)
{
  *a1 = off_100AFC568;
  a1[1] = 0;
  v3 = [[Communicator alloc] initWithDelegate:a2];
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

uint64_t sub_100556794(uint64_t a1)
{
  *a1 = off_100AFC568;
  [*(a1 + 8) invalidate];
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;

  return a1;
}

void sub_100556808(uint64_t a1)
{
  sub_100556794(a1);

  operator delete();
}

id sub_100556848(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v4 = [v3 answerIncomingCall:__p];
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

id sub_10055690C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v4 = [v3 releaseActiveCalls:__p];
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

id sub_1005569B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v4 = [v3 holdActiveCalls:__p];
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

id sub_100556A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v9 = *(a3 + 16);
  }

  v6 = [v5 dialNumber:a2 uid:__p];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

id sub_100556B40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v4 = [v3 redialLastNumberWithUid:__p];
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

id sub_100556C20(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Communicator isScreening: %d", v9, 8u);
  }

  v7 = [*(a1 + 8) setScreeningCall:v5 isScreening:a3];

  return v7;
}

id sub_100556D18(uint64_t a1)
{
  v1 = [*(a1 + 8) getRegistrationStatus];

  return v1;
}

id sub_100556D7C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v4 = [NSString stringWithUTF8String:a2];
  v5 = [v3 getCountryCodeForIdentifier:v4];

  return v5;
}

id sub_100556E20(uint64_t a1)
{
  v1 = [*(a1 + 8) getCountryCode];

  return v1;
}

id sub_100556E50(uint64_t a1)
{
  v1 = [*(a1 + 8) getCountryCodeIdentifer];

  return v1;
}

uint64_t sub_100556E98(uint64_t a1)
{
  *a1 = off_100AFC680;
  *(a1 + 8) = off_100AFC740;
  *(a1 + 16) = off_100AFC790;
  *(a1 + 24) = off_100AFC7C0;
  *(a1 + 32) = off_100AFC7E0;
  *(a1 + 40) = off_100AFC820;
  *(a1 + 48) = 0;
  sub_100044BBC(a1 + 104);
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 244) = 1;
  *(a1 + 49) = 0u;
  *(a1 + 65) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 95) = 0;
  return a1;
}

uint64_t sub_100556FB0(uint64_t a1)
{
  *a1 = off_100AFC680;
  *(a1 + 8) = off_100AFC740;
  *(a1 + 16) = off_100AFC790;
  *(a1 + 24) = off_100AFC7C0;
  *(a1 + 32) = off_100AFC7E0;
  *(a1 + 40) = off_100AFC820;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 104);
  return a1;
}

void sub_1005570CC(uint64_t a1)
{
  sub_100556FB0(a1);

  operator delete();
}

void sub_100557104(uint64_t a1)
{
  sub_100556FB0(a1 - 32);

  operator delete();
}

void sub_100557140(uint64_t a1)
{
  *(a1 + 168) = sub_100432918();
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.bluetooth.mp.serial", v2);
  v4 = *(a1 + 208);
  *(a1 + 208) = v3;

  sub_1005572D8(a1);
  if (qword_100B50AA0 != -1)
  {
    sub_100841A84();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 16);
  if (sub_1000E25D8())
  {
    v5 = sub_100017E6C();
    sub_1005689CC(v5 + 344, a1 + 24);
    sub_100557884(a1);
    if (qword_100B50F88 != -1)
    {
      sub_100841A98();
    }

    sub_1006DC960(off_100B50F80, a1 + 32);
    (***(a1 + 168))(*(a1 + 168), a1 + 8);
    if (qword_100B508F0 != -1)
    {
      sub_100841AAC();
    }

    v6 = off_100B508E8 + 240;

    sub_1000F0D9C(v6, a1 + 40);
  }

  else
  {
    v7 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Magic Pairing cannot initialize, not supported on this platform.", v8, 2u);
    }
  }
}

uint64_t sub_1005572D8(uint64_t a1)
{
  v29[0] = 0;
  v29[1] = 0;
  sub_100007F88(v29, a1 + 104);
  v2 = sub_1000E2738();
  v3 = (*(*v2 + 136))(v2, a1 + 49, a1 + 65);
  v4 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "not available";
    if (!v3)
    {
      v5 = "available";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cloud master keys are %s in storage", &buf, 0xCu);
  }

  buf = 0uLL;
  v39 = 0;
  v6 = sub_1000E2738();
  v7 = (**v6)(v6, &buf);
  v8 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    *v30 = 67109376;
    *&v30[4] = v7;
    *&v30[8] = 2048;
    *&v30[10] = (*(&buf + 1) - buf) >> 3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "read device list result %d, pairedDev list size = %lu", v30, 0x12u);
  }

  for (i = buf; i != *(&buf + 1); ++i)
  {
    v10 = *i;
    if (*(*i + 128))
    {
LABEL_9:
      v37[0] = 0;
      v37[1] = 0;
      v36[0] = 0;
      v36[1] = 0;
      v35[0] = 0;
      v35[1] = 0;
      v34[0] = 0;
      v34[1] = 0;
      v26 = 0;
      v25 = 0;
      v11 = sub_1000E2738();
      if (!(*(*v11 + 96))(v11, v10, 0, v35))
      {
        v15 = sub_1000E2738();
        (*(*v15 + 96))(v15, v10, 3, v36);
        v16 = sub_1000E2738();
        (*(*v16 + 96))(v16, v10, 2, v37);
        v17 = sub_1000E2738();
        (*(*v17 + 96))(v17, v10, 4, &v25);
        v18 = sub_1000E2738();
        (*(*v18 + 96))(v18, v10, 1, v34);
        operator new();
      }

      v12 = qword_100BCE960;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v10, v30);
        v19 = v30;
        if (v31 < 0)
        {
          v19 = *v30;
        }

        *v32 = 136446210;
        v33 = v19;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to read Magic Keys for %{public}s", v32, 0xCu);
        if (v31 < 0)
        {
          operator delete(*v30);
        }
      }
    }

    else
    {
      v13 = 0;
      while (v13 != 5)
      {
        if (*(v10 + 129 + v13++))
        {
          if ((v13 - 1) < 5)
          {
            goto LABEL_9;
          }

          break;
        }
      }

      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        sub_100841AE8(&v27, v28);
      }
    }
  }

  if (*(a1 + 184) != *(a1 + 176))
  {
    *(a1 + 240) = 1;
  }

  v20 = sub_1000E2738();
  v21 = (*(*v20 + 144))(v20, a1 + 81, a1 + 97);
  v22 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v23 = "not available";
    if (!v21)
    {
      v23 = "available";
    }

    *v30 = 136315138;
    *&v30[4] = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Cloud master IRK and address are %s in storage", v30, 0xCu);
  }

  sub_100566D78(a1);
  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }

  return sub_1000088CC(v29);
}

void sub_10055781C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100557884(uint64_t a1)
{
  v2 = CFPreferencesCopyAppValue(@"SignInstatus", @"com.apple.BTServer");
  if (v2)
  {
    v3 = v2;
    if (CFEqual(v2, @"SignedIn"))
    {
      v4 = 1;
    }

    else
    {
      if (!CFEqual(v3, @"SignedOut"))
      {
LABEL_7:
        CFRelease(v3);
        goto LABEL_8;
      }

      v4 = 0;
    }

    *(a1 + 241) = v4;
    goto LABEL_7;
  }

LABEL_8:
  v5 = CFPreferencesCopyAppValue(@"CloudAccountID", @"com.apple.BTServer");
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFStringGetTypeID())
    {
      CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
      if (CStringPtr)
      {
        sub_100007E30(v12, CStringPtr);
        if (*(a1 + 239) < 0)
        {
          operator delete(*(a1 + 216));
        }

        *(a1 + 216) = *v12;
        *(a1 + 232) = *&v12[16];
      }

      goto LABEL_16;
    }
  }

  if ((*(a1 + 239) & 0x80000000) == 0)
  {
    *(a1 + 216) = 0;
    *(a1 + 239) = 0;
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  **(a1 + 216) = 0;
  *(a1 + 224) = 0;
  if (v6)
  {
LABEL_16:
    CFRelease(v6);
  }

LABEL_17:
  v9 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 241);
    v11 = (a1 + 216);
    if (*(a1 + 239) < 0)
    {
      v11 = *v11;
    }

    *v12 = 67109635;
    *&v12[4] = v10;
    *&v12[8] = 2160;
    *&v12[10] = 1752392040;
    *&v12[18] = 2081;
    *&v12[20] = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump: MagicPairingManager: SignedIn: %d, loginID: %{private, mask.hash}s", v12, 0x1Cu);
  }
}

uint64_t sub_100557A64(void **a1)
{
  result = sub_1000E25D8();
  if (result)
  {
    v3 = sub_100017E6C();
    sub_100568C6C(v3 + 344, (a1 + 3));
    v7[0] = 0;
    v7[1] = 0;
    sub_100007F88(v7, (a1 + 13));
    v5 = a1[22];
    v4 = a1[23];
    if (v5 != v4)
    {
      do
      {
        v6 = *v5;
        if (*v5)
        {
          if (*(v6 + 111) < 0)
          {
            operator delete(*(v6 + 88));
          }

          operator delete();
        }

        ++v5;
      }

      while (v5 != v4);
      v5 = a1[22];
    }

    a1[23] = v5;
    (*(*a1[21] + 8))(a1[21], a1 + 1);
    (*(*a1[21] + 120))(a1[21]);
    if (qword_100B50AA0 != -1)
    {
      sub_100841B24();
    }

    sub_10007A3F0(off_100B50A98 + 64, (a1 + 2));
    if (qword_100B508F0 != -1)
    {
      sub_100841B4C();
    }

    sub_10007A3F0(off_100B508E8 + 240, (a1 + 5));
    return sub_1000088CC(v7);
  }

  return result;
}

void sub_100557BDC(int *a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_100841AAC();
  }

  v2 = *a1;
  v3 = *(a1 + 2);
  sub_1000E6554(off_100B508E8, &v2, 1);
  sub_100017F4C();
  operator new();
}

void sub_100557CE8(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    *(a1 + 48) = 1;
    if (sub_1000E25D8())
    {
      v12 = 0;
      sub_1000216B4(&v12);
      v2 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        v3 = "Not Signed in";
        if (*(a1 + 241))
        {
          v3 = "Signed in";
        }

        *buf = 136315394;
        *&buf[4] = "stackDidStart";
        *&buf[12] = 2080;
        *&buf[14] = v3;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s, Device sign in status %s", buf, 0x16u);
      }

      sub_1002D7EF0();
      sub_1002D765C(&off_100AFC840);
      sub_10055867C(a1);
      sub_100022214(&v12);
      for (i = *(a1 + 176); i != *(a1 + 184); ++i)
      {
        v5 = *i;
        v18 = 0uLL;
        v19 = 0;
        sub_1006D1B74(&v18);
        v6 = *v5;
        if (qword_100B512E8 != -1)
        {
          sub_100841AC0();
        }

        if (sub_1006E7E2C(off_100B512E0, v6, &v18) == 150)
        {
          v7 = qword_100BCE960;
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v6, buf);
            v8 = buf;
            if (v15 < 0)
            {
              v8 = *buf;
            }

            *v16 = 136446210;
            v17 = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deferred Magic pairing device from cloud %{public}s", v16, 0xCu);
            if (v15 < 0)
            {
              operator delete(*buf);
            }
          }

          if (qword_100B50F88 != -1)
          {
            sub_100841B74();
          }

          sub_1006E1BF0(off_100B50F80, v6);
          memset(buf, 0, 20);
          sub_1006D1BAC(buf, (v5 + 40), 4u);
          if (qword_100B512E8 != -1)
          {
            sub_100841AC0();
          }

          sub_1006E7F2C(off_100B512E0, v6, buf, 0);
          nullsub_21(buf);
        }

        if ((*(v5 + 78) << 40) | (*(v5 + 79) << 32) | (*(v5 + 80) << 24) | (*(v5 + 81) << 16) | (*(v5 + 82) << 8) | *(v5 + 83))
        {
          v9 = sub_100007EE8();
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_100558934;
          v11[3] = &unk_100ADF8F8;
          v11[4] = v5;
          sub_10000CA94(v9, v11);
        }

        nullsub_21(&v18);
      }

      sub_10002249C(&v12);
    }

    else
    {
      v10 = *(a1 + 208);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1005580D4;
      block[3] = &unk_100ADF8F8;
      block[4] = a1;
      dispatch_async(v10, block);
    }
  }
}

_BYTE *sub_1005580E0(uint64_t a1, int a2)
{
  v4 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(a1 + 184) - *(a1 + 176)) >> 3;
    v6 = (a1 + 216);
    if (*(a1 + 239) < 0)
    {
      v6 = *v6;
    }

    *buf = 134218755;
    *&buf[4] = v5;
    *&buf[12] = 2160;
    if (a2)
    {
      v7 = " <user-switched>";
    }

    else
    {
      v7 = "";
    }

    *&buf[14] = 1752392040;
    *&buf[22] = 2081;
    v36 = v6;
    v37 = 2080;
    v38 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing %lu magic paired devices from local device database for %{private, mask.hash}s%s", buf, 0x2Au);
  }

  *(a1 + 240) = 0;
  if (a2)
  {
    memset(buf, 0, sizeof(buf));
    if (qword_100B50F88 != -1)
    {
      sub_100841B74();
    }

    sub_10009DB3C(off_100B50F80, buf);
    for (i = *buf; i != *&buf[8]; ++i)
    {
      v9 = *i;
      for (j = *(a1 + 176); j != *(a1 + 184); ++j)
      {
        if (**j == v9)
        {
          goto LABEL_18;
        }
      }

      sub_1000BE6F8((v9 + 128), __p);
      (*(*a1 + 104))(a1, __p);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_18:
      ;
    }

    v11 = +[CloudPairing sharedInstance];
    v12 = [v11 cloudClient];
    [v12 invalidate];

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  v13 = *(a1 + 176);
  if (v13 != *(a1 + 184))
  {
    while (1)
    {
      v14 = *v13;
      if (sub_1000C0348(**v13))
      {
        break;
      }

LABEL_35:
      *(v14 + 21) = 3;
      v20 = sub_1000E2738();
      (*(*v20 + 104))(v20, *v14);
      if (a2)
      {
        if (qword_100B50950 != -1)
        {
          sub_100841B9C();
        }

        v21 = 3;
      }

      else
      {
        if (qword_100B50950 != -1)
        {
          sub_100841B9C();
        }

        v21 = 1;
      }

      *(off_100B50948 + 431) = v21;
      *(a1 + 49) = 0u;
      *(a1 + 65) = 0u;
      if (*(a1 + 48) == 1)
      {
        if (qword_100B50F88 != -1)
        {
          sub_100841B74();
        }

        v22 = sub_1006E0DBC(off_100B50F80, *v14);
        sub_10055973C(v22, *v14, v21);
      }

      v23 = *v13;
      if (*v13)
      {
        if (*(v23 + 111) < 0)
        {
          operator delete(v23[11]);
        }

        operator delete();
      }

      v24 = *(a1 + 184);
      v25 = v24 - (v13 + 1);
      if (v24 != v13 + 1)
      {
        memmove(v13, v13 + 1, v24 - (v13 + 1));
      }

      *(a1 + 184) = v13 + v25;
      if (v13 == (v13 + v25))
      {
        goto LABEL_53;
      }
    }

    v28 = 0;
    sub_1000216B4(&v28);
    v15 = sub_10023BD60(*v14 + 128);
    v16 = qword_100BCE960;
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(*v14, buf);
        v18 = buf;
        if ((buf[23] & 0x80u) != 0)
        {
          v18 = *buf;
        }

        *v31 = 136446466;
        v32 = v18;
        v33 = 1024;
        v34 = v15;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Magic Pairing disconnect failed for %{public}s on user logout with status: %d", v31, 0x12u);
LABEL_32:
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*v14, buf);
      v19 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v19 = *buf;
      }

      *v31 = 136446210;
      v32 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Magic Pairing disconnected for %{public}s on user logout", v31, 0xCu);
      goto LABEL_32;
    }

    sub_10002249C(&v28);
    goto LABEL_35;
  }

LABEL_53:
  v26 = sub_1000E2738();
  result = (*(*v26 + 168))(v26);
  if (*(a1 + 48) == 1)
  {
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_10055867C(a1);
    result = sub_10002249C(buf);
  }

  if (*(a1 + 239) < 0)
  {
    **(a1 + 216) = 0;
    *(a1 + 224) = 0;
  }

  else
  {
    *(a1 + 216) = 0;
    *(a1 + 239) = 0;
  }

  return result;
}

uint64_t sub_10055867C(uint64_t a1)
{
  v1 = *(a1 + 184) - *(a1 + 176);
  if (v1)
  {
    is_mul_ok(v1 >> 3, 0x2CuLL);
    operator new[]();
  }

  v2 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Magic paired device list is empty", buf, 2u);
  }

  return sub_1002D7E50(0, 0);
}

void sub_100558934(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100841BC4();
  }

  sub_10079E618(off_100B51070, *(a1 + 32) + 77, *(a1 + 32) + 24);
  if (qword_100B508C0 != -1)
  {
    sub_100841BD8();
  }

  v2 = off_100B508B8;
  v3 = *(a1 + 32);

  sub_1007BE07C(v2, (v3 + 77), v3 + 8);
}

uint64_t sub_1005589C8(uint64_t a1)
{
  v2 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MagicPairingManager::stackWillStop enter", buf, 2u);
  }

  result = sub_1000E25D8();
  if (result)
  {
    *buf = 0;
    v8 = 0;
    sub_100007F88(buf, a1 + 104);
    *(a1 + 48) = 0;
    v6 = 0;
    sub_1000216B4(&v6);
    sub_1002D8A64();
    sub_100022214(&v6);
    v4 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MagicPairingManager::stackWillStop exit", v5, 2u);
    }

    sub_10002249C(&v6);
    return sub_1000088CC(buf);
  }

  return result;
}

void sub_100558ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100558AE8(uint64_t a1)
{
  result = sub_1000E25D8();
  if (result)
  {
    result = *(a1 + 200);
    if (result)
    {
      operator delete[]();
    }
  }

  return result;
}

id sub_100558B38(uint64_t a1)
{
  if (a1)
  {
    v2 = [BTCloudDevice alloc];
    sub_1000BE6F8((a1 + 128), __p);
    if (v14 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    v4 = [NSString stringWithUTF8String:v3];
    v5 = [v2 initWithBluetoothAddress:v4];

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = 0;
    v12 = 0;
    if (sub_1000C2364(a1, &v12 + 1, &v12, &v11 + 1, &v11))
    {
      v6 = [NSString stringWithFormat:@"%u", HIDWORD(v11)];
      [v5 setProductID:v6];

      v7 = [NSString stringWithFormat:@"%u", v12];
      [v5 setVendorID:v7];
    }

    sub_1000C23E0(a1, __p);
    if (v14 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = [NSString stringWithUTF8String:v8];
    [v5 setNickname:v9];

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_100558D3C(uint64_t a1, void *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 104);
  if ((a1 + 176) != a2)
  {
    sub_10051AE40(a2, *(a1 + 176), *(a1 + 184), (*(a1 + 184) - *(a1 + 176)) >> 3);
  }

  sub_1000088CC(v5);
  return 0;
}

void *sub_100558DB8(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v4 = sub_100007F88(v9, a1 + 104);
  if (sub_1000E2570(v4, a2))
  {
    v5 = *(a1 + 176);
    v6 = *(a1 + 184);
    while (v5 != v6)
    {
      v7 = *v5;
      if (**v5 == a2)
      {
        goto LABEL_7;
      }

      ++v5;
    }
  }

  v7 = 0;
LABEL_7:
  sub_1000088CC(v9);
  return v7;
}

uint64_t sub_100558E48(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a2[1016] == 1)
  {
    v4 = sub_1000E2738();
    (*(*v4 + 128))(v4, a2);
    return 1;
  }

  v7 = sub_1000E2570(a1, a2);
  v8 = v7;
  if (v7)
  {
    if (qword_100B50950 != -1)
    {
      sub_100841C00();
    }

    sub_10055973C(v7, a2, *(off_100B50948 + 431));
  }

  if ((a3 & 1) == 0)
  {
    v9 = qword_100BCE960;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, v49);
      sub_100841C14();
    }

    if (qword_100B50950 != -1)
    {
      sub_100841B9C();
    }

    *(off_100B50948 + 431) = 1;
  }

  v10 = sub_1000E2738();
  (*(*v10 + 104))(v10, a2);
  if (!(v8 & 1 | ((a2[1044] & 1) == 0)) || (a2[1046] & 1) != 0 || (a2[1045] & 1) != 0)
  {
    return 1;
  }

  if (sub_1000E25D8() && *(a1 + 240) == 1 && *(a1 + 241) == 1)
  {
    v48[0] = 0;
    v48[1] = 0;
    sub_100007F88(v48, a1 + 104);
    v13 = *(a1 + 176);
    v14 = *(a1 + 184);
    if (v13 == v14)
    {
LABEL_25:
      v16 = 0;
    }

    else
    {
      v15 = *(a1 + 176);
      while (1)
      {
        v16 = *v15;
        if (**v15 == a2)
        {
          break;
        }

        if (++v15 == v14)
        {
          goto LABEL_25;
        }
      }
    }

    if (v14 - v13 == 8 && (*(a1 + 243) & 1) != 0)
    {
      *(a1 + 243) = 0;
    }

    if (v16)
    {
      v17 = *(v16 + 21);
      v18 = qword_100BCE960;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, v54);
        v19 = v55 >= 0 ? v54 : *v54;
        *buf = 136446466;
        *&buf[4] = v19;
        v51 = 1024;
        v52 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Removing Magic Pairing, Cloud status of magic device %{public}s = %d", buf, 0x12u);
        if (v55 < 0)
        {
          operator delete(*v54);
        }
      }

      if (v17 != 3)
      {
        if ((sub_10055993C(a1 + 176, a2) & 1) == 0)
        {
          v39 = qword_100BCE960;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_1000E5A58(a2, v54);
            sub_100841C68();
          }

          v11 = 0;
          goto LABEL_84;
        }

        if (*(a1 + 48) == 1)
        {
          if ((a3 & 1) == 0)
          {
            if (qword_100B50F88 != -1)
            {
              sub_100841B74();
            }

            sub_1006E0DBC(off_100B50F80, a2);
          }

          v47 = 0;
          sub_1000216B4(&v47);
          sub_10055867C(a1);
          sub_100022214(&v47);
          sub_1005599FC(a1);
          if (a3 && *(a1 + 240) == 1)
          {
            v20 = qword_100BCE960;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_1000E5A58(a2, v54);
              sub_100841CBC();
            }

            v21 = +[CloudPairing sharedInstance];
            v22 = [v21 cloudClient];
            sub_1000BE6F8(a2 + 128, buf);
            if (v53 >= 0)
            {
              v23 = buf;
            }

            else
            {
              v23 = *buf;
            }

            v24 = [NSString stringWithUTF8String:v23];
            v46[0] = _NSConcreteStackBlock;
            v46[1] = 3221225472;
            v46[2] = sub_100559B10;
            v46[3] = &unk_100AFC848;
            v46[4] = a2;
            [v22 deleteDeviceRecord:v24 completion:v46];

            if (v53 < 0)
            {
              operator delete(*buf);
            }

            v25 = qword_100BCE960;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_1000E5A58(a2, buf);
              sub_100841D10();
            }

            v26 = +[CloudPairing sharedInstance];
            v27 = [v26 cloudClient];
            sub_1000BE6F8(a2 + 128, __p);
            if (v45 >= 0)
            {
              v28 = __p;
            }

            else
            {
              v28 = __p[0];
            }

            v29 = [NSString stringWithUTF8String:v28];
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_100559C54;
            v43[3] = &unk_100AFC848;
            v43[4] = a2;
            [v27 deleteMagicSettingsRecord:v29 completion:v43];

            if (v45 < 0)
            {
              operator delete(__p[0]);
            }

            v30 = qword_100BCE960;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_1000E5A58(a2, __p);
              sub_100841D64();
            }

            v31 = +[CloudPairing sharedInstance];
            v32 = [v31 cloudClient];
            sub_1000BE6F8(a2 + 128, v41);
            if (v42 >= 0)
            {
              v33 = v41;
            }

            else
            {
              v33 = v41[0];
            }

            v34 = [NSString stringWithUTF8String:v33];
            v40[0] = _NSConcreteStackBlock;
            v40[1] = 3221225472;
            v40[2] = sub_100559D98;
            v40[3] = &unk_100AFC848;
            v40[4] = a2;
            [v32 deleteDeviceSupportInformationRecord:v34 completion:v40];

            if (v42 < 0)
            {
              operator delete(v41[0]);
            }

            sub_100559EDC(a1);
          }

          sub_10002249C(&v47);
        }
      }
    }

    else
    {
      v37 = qword_100BCE960;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, v54);
        v38 = v55 >= 0 ? v54 : *v54;
        *buf = 136446210;
        *&buf[4] = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Device %{public}s not in Magic pairing list", buf, 0xCu);
        if (v55 < 0)
        {
          operator delete(*v54);
        }
      }
    }

    v11 = 1;
LABEL_84:
    sub_1000088CC(v48);
    return v11;
  }

  v35 = qword_100BCE960;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    if (sub_1000E25D8())
    {
      if (*(a1 + 241))
      {
        v36 = "Signed In";
      }

      else
      {
        v36 = "Not Signed in";
      }
    }

    else
    {
      v36 = "Not Supported";
    }

    *v54 = 136315138;
    *&v54[4] = v36;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Magic pairing: %s", v54, 0xCu);
  }

  return 0;
}

void sub_1005595F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  sub_10002249C(&a40);
  sub_1000088CC(&a41);
  _Unwind_Resume(a1);
}

void sub_10055973C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  sub_1000C2364(a2, &v14 + 1, &v14, &v13 + 1, &v13);
  v19[0] = @"PID";
  v5 = [NSNumber numberWithUnsignedInt:HIDWORD(v13)];
  v20[0] = v5;
  v19[1] = @"unpairType";
  v6 = [NSNumber numberWithUnsignedChar:a3];
  v20[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];

  v8 = qword_100BCE960;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v12 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136446466;
    v16 = v9;
    v17 = 1024;
    v18 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sendMagicUnpairEvent for %{public}s with unpair type %d", buf, 0x12u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = sub_10000F034();
  (*(*v10 + 360))(v10, v7);
}

uint64_t sub_10055993C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    return 0;
  }

  v4 = v2 + 1;
  do
  {
    v5 = *v2;
    if (**v2 == a2)
    {
      if (*(v5 + 111) < 0)
      {
        operator delete(v5[11]);
      }

      operator delete();
    }

    ++v2;
    ++v4;
  }

  while (v2 != v3);
  return 0;
}

uint64_t sub_1005599FC(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 104);
  v2 = *(a1 + 176);
  if (v2 == *(a1 + 184))
  {
    goto LABEL_12;
  }

  do
  {
    v3 = sub_10055B09C(a1, **v2++);
  }

  while (v2 != *(a1 + 184));
  if (v3)
  {
LABEL_12:
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100841DB8();
    }
  }

  else
  {
    v4 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully stored MagicPairing device information in storage", v6, 2u);
    }

    sub_100566D78(a1);
  }

  return sub_1000088CC(v7);
}

void sub_100559AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100559B10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE960;
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      sub_100841E28();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 32), __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MP-] Removed cloud device for %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100559C54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE960;
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      sub_100841E78();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 32), __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MP-] Removed new cloud magic settings for %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100559D98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE960;
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      sub_100841EC8();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 32), __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MP-] Removed Device Support Information for %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100559EDC(uint64_t a1)
{
  if (sub_1000E25D8() && (*(a1 + 240) & 1) != 0)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100841AAC();
    }

    if (sub_1000BE6E8(off_100B508E8))
    {
      v2 = *(a1 + 241);
      v3 = qword_100BCE960;
      v4 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
      if (v2 == 1)
      {
        if (v4)
        {
          v5 = (*(a1 + 184) - *(a1 + 176)) >> 3;
          buf = 134217984;
          *buf_4 = v5;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CloudSync: Uploading information for %lu devices to cloud", &buf, 0xCu);
        }

        v6 = *(a1 + 184) - *(a1 + 176);
        if (v6)
        {
          is_mul_ok(v6 >> 3, 0x98uLL);
          operator new[]();
        }

        v13 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CloudSync: pushing updates to legacy layer", &buf, 2u);
        }

        (*(**(a1 + 168) + 40))(*(a1 + 168), 0, 0);
        return;
      }

      if (!v4)
      {
        return;
      }

      LOWORD(buf) = 0;
      v11 = "Warning: Account not signed in";
      v12 = v3;
    }

    else
    {
      v10 = qword_100BCE960;
      if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(buf) = 0;
      v11 = "System has not passed first unlock (or device prefs not read yet). Do not write DeviceList to Cloud";
      v12 = v10;
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &buf, 2u);
    return;
  }

  v7 = qword_100BCE960;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_1000E25D8();
    v9 = "supported";
    if (v8)
    {
      v9 = "initialized";
    }

    buf = 136315138;
    *buf_4 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "writeDeviceListToCloud, Magic Pairing not %s.", &buf, 0xCu);
  }
}

void sub_10055ACB4(uint64_t a1, uint64_t a2)
{
  if (sub_1000E25D8() && (*(a1 + 240) & 1) != 0)
  {
    if (a2)
    {
      if (*(a1 + 49) == 0 || *(a1 + 65) == 0)
      {
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
        {
          sub_100841FB8();
        }
      }

      else
      {
        v11[0] = 0;
        v11[1] = 0;
        if (!sub_1002D898C(a1 + 65, a2 + 56, v11, 0x10uLL) && LODWORD(v11[0]) == *(*a2 + 128) && WORD2(v11[0]) == *(*a2 + 132))
        {
          if (sub_10055AF34(a2, a1 + 49, a1 + 65))
          {
            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              sub_100841F7C();
            }
          }

          else
          {
            *(a2 + 72) = 1;
            *(a2 + 84) = 2;
            v5 = qword_100BCE960;
            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(*a2, __p);
              v6 = v8 >= 0 ? __p : __p[0];
              *buf = 136446210;
              v10 = v6;
              _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reset Magic Pairing keys for device %{public}s", buf, 0xCu);
              if (v8 < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (*(a1 + 48) == 1)
            {
              LOBYTE(__p[0]) = 0;
              sub_1000216B4(__p);
              sub_10055867C(a1);
              sub_10002249C(__p);
            }

            sub_10055B09C(a1, *a2);
          }
        }
      }
    }

    else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100841FF4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100841F40();
  }
}

void sub_10055AF0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10055AF34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v16 = 0;
  v15 = 0;
  v13 = *(v5 + 128);
  v14 = *(v5 + 132);
  v6 = (v5 + 133);
  for (i = 6; i != 12; ++i)
  {
    v8 = *v6--;
    *(&v13 + i) = v8;
  }

  v9 = *(v5 + 129);
  v17 = v9 ^ *(v5 + 128);
  v10 = *(v5 + 130);
  v18 = v10 ^ v9;
  v11 = *(v5 + 131);
  v19 = v11 ^ v10;
  v20 = *(v5 + 132) ^ v11;
  if (sub_1002D89F8(a2, &v13, (a1 + 5), 0x10uLL))
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842030();
    }
  }

  else
  {
    result = sub_1002D89F8(a3, &v13, (a1 + 7), 0x10uLL);
    if (!result)
    {
      return result;
    }

    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_1008420A0();
    }
  }

  return 1;
}

uint64_t sub_10055B09C(uint64_t a1, __n128 *a2)
{
  if (!a2)
  {
    return 1;
  }

  for (i = *(a1 + 176); i != *(a1 + 184); ++i)
  {
    v5 = *i;
    if (**i == a2)
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  v36 = bswap32(*(v5 + 18));
  v37 = *(v5 + 21);
  if (qword_100B512E8 != -1)
  {
    sub_100841BEC();
  }

  result = sub_1006E8D14(off_100B512E0, a2, 0, (v5 + 5));
  if (!result)
  {
    if (qword_100B512E8 != -1)
    {
      sub_100841BEC();
    }

    result = sub_1006E8D14(off_100B512E0, a2, 3, (v5 + 3));
    if (!result)
    {
      if (qword_100B512E8 != -1)
      {
        sub_100841BEC();
      }

      result = sub_1006E8D14(off_100B512E0, a2, 2, (v5 + 1));
      if (!result)
      {
        if (qword_100B512E8 != -1)
        {
          sub_100841BEC();
        }

        result = sub_1006E8D14(off_100B512E0, a2, 1, (v5 + 7));
        if (!result)
        {
          if (qword_100B512E8 != -1)
          {
            sub_100841BEC();
          }

          result = sub_1006E8D14(off_100B512E0, a2, 4, &v36);
          if (!result)
          {
            if (sub_1000E2140(a2, 12) || sub_1000E2140(a2, 39))
            {
              *__p = 0;
              sub_100016250(__p);
              *&v35 = *__p;
              *(&v35 + 1) = *&__p[4];
              if (!sub_1000DEB14(a2))
              {
                v7 = qword_100BCE960;
                if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
                {
                  sub_1000E5A58(a2, __p);
                  v8 = v40 >= 0 ? __p : *__p;
                  *buf = 136446210;
                  *&buf[4] = v8;
                  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Applying workaround for Apple Audio Device: BT_DEVICE_TYPE_GENERIC->BT_DEVICE_TYPE_HEADPHONES for %{public}s", buf, 0xCu);
                  if (SHIBYTE(v40) < 0)
                  {
                    operator delete(*__p);
                  }
                }

                sub_100538254(a2, 20, &v35);
              }

              HIDWORD(v34) = 0;
              sub_1005379CC(a2, &v34 + 1);
              if (!HIDWORD(v34))
              {
                v9 = qword_100BCE960;
                if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                {
                  sub_1000E5A58(a2, __p);
                  v10 = v40 >= 0 ? __p : *__p;
                  *buf = 67109378;
                  *&buf[4] = 2098200;
                  *&buf[8] = 2082;
                  *&buf[10] = v10;
                  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Applying workaround for Apple Audio Device, CoD: 0->%u for %{public}s", buf, 0x12u);
                  if (SHIBYTE(v40) < 0)
                  {
                    operator delete(*__p);
                  }
                }

                sub_10053C438(a2, 2098200, &v35);
              }
            }

            else
            {
              v11 = qword_100BCE960;
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                sub_1000E5A58(a2, __p);
                v12 = v40 >= 0 ? __p : *__p;
                *buf = 136446210;
                *&buf[4] = v12;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Cannot apply workaround this device is not Apple Audio Device: %{public}s", buf, 0xCu);
                if (SHIBYTE(v40) < 0)
                {
                  operator delete(*__p);
                }
              }
            }

            v13 = sub_10000E92C();
            result = (*(*v13 + 8))(v13);
            if (result)
            {
              LODWORD(v35) = 0;
              v34 = 0;
              v33 = 0;
              sub_1000C2364(a2, &v35, &v34 + 1, &v34, &v33);
              v14 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "statedump: ----------------- Magic Pairing Manager ------------------", __p, 2u);
              }

              v15 = qword_100BCE960;
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v16 = (a1 + 216);
                if (*(a1 + 239) < 0)
                {
                  v16 = *v16;
                }

                v17 = *(a1 + 241);
                if (sub_1000E25D8())
                {
                  v18 = *(a1 + 240);
                }

                else
                {
                  v18 = 0;
                }

                *__p = 136315650;
                *&__p[4] = v16;
                *&__p[12] = 1024;
                *&__p[14] = v17;
                v39 = 1024;
                v40 = v18;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cloud Account ID: %s, Cloud Signed in: %d, Initialized: %d", __p, 0x18u);
              }

              v19 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 0x1004100202;
                *&__p[8] = 2096;
                *&__p[10] = a1 + 49;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cached Acc Master Key:%.16P", __p, 0x12u);
              }

              v20 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 0x1004100202;
                *&__p[8] = 2096;
                *&__p[10] = a1 + 65;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Cached Acc Master Hint:%.16P", __p, 0x12u);
              }

              v21 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 0x1004100202;
                *&__p[8] = 2096;
                *&__p[10] = a1 + 81;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Cached Acc Master Cloud IRK:%.16P", __p, 0x12u);
              }

              v22 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 0x604100202;
                *&__p[8] = 2096;
                *&__p[10] = a1 + 97;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Cached Acc Master Cloud Addr:%.6P", __p, 0x12u);
              }

              v23 = qword_100BCE960;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(a2, buf);
                v24 = v46;
                v25 = *buf;
                v26 = HIDWORD(v34);
                v32 = v34;
                v27 = sub_1000E31D0(a2);
                v28 = buf;
                *__p = 136446978;
                if (v24 < 0)
                {
                  v28 = v25;
                }

                *&__p[4] = v28;
                *&__p[12] = 1024;
                *&__p[14] = v26;
                v39 = 1024;
                v40 = v32;
                v41 = 1024;
                LODWORD(v42) = v27 & 2;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "statedump: Cached Device %{public}s, vid: %x, pid: %x, Fake: %d", __p, 0x1Eu);
                if (v46 < 0)
                {
                  operator delete(*buf);
                }
              }

              v29 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                v30 = *(v5 + 18);
                *__p = 0x1004100502;
                *&__p[8] = 2096;
                *&__p[10] = v5 + 5;
                v39 = 1040;
                v40 = 16;
                v41 = 2096;
                v42 = v5 + 7;
                v43 = 1024;
                v44 = v30;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Cached Acc Key %.16P for Hint %.16P and Ratchet %d ", __p, 0x28u);
              }

              v31 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 0x1004100402;
                *&__p[8] = 2096;
                *&__p[10] = v5 + 1;
                v39 = 1040;
                v40 = 16;
                v41 = 2096;
                v42 = v5 + 3;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Cached IRK %.16P and Encryption key %.16P", __p, 0x22u);
              }

              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10055B928(uint64_t a1, uint64_t a2, int a3)
{
  result = IsAppleInternalBuild();
  if (result)
  {
    result = sub_1000E25D8();
    if (result)
    {
      if (*(a1 + 240) == 1)
      {
        v22[0] = 0;
        v22[1] = 0;
        sub_100007F88(v22, a1 + 104);
        for (i = *(a1 + 176); ; ++i)
        {
          if (i == *(a1 + 184))
          {
            return sub_1000088CC(v22);
          }

          v8 = *i;
          if (**i == a2)
          {
            break;
          }
        }

        v32[0] = 0;
        v32[1] = 0;
        v9 = v8[72];
        if (!sub_1002D898C(a1 + 65, (v8 + 56), v32, 0x10uLL) && (LODWORD(v32[0]) != *(*v8 + 128) || WORD2(v32[0]) != *(*v8 + 132)))
        {
          v18 = qword_100BCE960;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = sub_1002D762C(a3);
            sub_1000E5A58(a2, &__p);
            v20 = SHIBYTE(v31) >= 0 ? &__p : __p;
            *buf = 136315394;
            *&buf[4] = v19;
            v24 = 2082;
            v25 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Bad Main Account Keys; Unable to simulate Magic Pairing Error %s for device %{public}s", buf, 0x16u);
            if (SHIBYTE(v31) < 0)
            {
              operator delete(__p);
            }
          }

          return sub_1000088CC(v22);
        }

        v10 = qword_100BCE960;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = sub_1002D762C(a3);
          sub_1000E5A58(a2, &__p);
          v12 = SHIBYTE(v31) >= 0 ? &__p : __p;
          *buf = 136315394;
          *&buf[4] = v11;
          v24 = 2082;
          v25 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Simulating Magic Pairing Error %s for device %{public}s", buf, 0x16u);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p);
          }
        }

        if (a3 == 7)
        {
          if (sub_10055AF34(v8, a1 + 49, a1 + 65))
          {
            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              sub_100841F7C();
            }

            return sub_1000088CC(v22);
          }

          v13 = qword_100BCE960;
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_44;
          }

          sub_1000E5A58(a2, &__p);
          v21 = SHIBYTE(v31) >= 0 ? &__p : __p;
          *buf = 136446210;
          *&buf[4] = v21;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Simulating Magic Pairing Error reset accessory key without changing ratchet for device %{public}s", buf, 0xCu);
          if ((SHIBYTE(v31) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

          v16 = __p;
        }

        else
        {
          if (a3 != 1)
          {
LABEL_45:
            if (*(a1 + 48) == 1)
            {
              LOBYTE(__p) = 0;
              sub_1000216B4(&__p);
              sub_10055867C(a1);
              sub_10002249C(&__p);
            }

            sub_10055B09C(a1, *v8);
            return sub_1000088CC(v22);
          }

          *(v8 + 18) = v9 + 10;
          v13 = qword_100BCE960;
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT) || ((v14 = *(v8 + 18), sub_1000E5A58(a2, buf), v26 >= 0) ? (v15 = buf) : (v15 = *buf), LODWORD(__p) = 67109634, HIDWORD(__p) = v9, v28 = 1024, v29 = v14, v30 = 2082, v31 = v15, _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Simulating Magic Pairing Error bumped ratchet from %d -> %d for device %{public}s", &__p, 0x18u), (v26 & 0x80000000) == 0))
          {
LABEL_44:

            goto LABEL_45;
          }

          v16 = *buf;
        }

        operator delete(v16);
        goto LABEL_44;
      }
    }
  }

  return result;
}

uint64_t sub_10055BD74(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  if (!*(a2 + 128))
  {
    v13 = 0;
    while (v13 != 5)
    {
      v14 = v13;
      if (*(a2 + 129 + v13++))
      {
        if (v14 < 5)
        {
          goto LABEL_2;
        }

        break;
      }
    }

    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842188();
    }

    return 1;
  }

LABEL_2:
  if (*(a1 + 49) == 0 || (*(a1 + 241) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_10084214C();
    }

    return 1;
  }

  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 104);
  v8 = *(a1 + 176);
  v9 = *(a1 + 184);
  if (v8 == v9)
  {
LABEL_8:
    v11 = qword_100BCE960;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      if (v22 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      *buf = 136446210;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "creating new Magic pairing device for device %{public}s", buf, 0xCu);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    operator new();
  }

  v10 = *(a1 + 176);
  while (**v10 != a2)
  {
    if (++v10 == v9)
    {
      goto LABEL_8;
    }
  }

  v17 = *v8;
  if (**v8 != a2)
  {
    v18 = (v8 + 1);
    do
    {
      v19 = *v18++;
      v17 = v19;
    }

    while (*v19 != a2);
  }

  v16 = 0;
  *a3 = *(v17 + 5);
  *a4 = *(v17 + 7);
  sub_1000088CC(v23);
  return v16;
}

void sub_10055C0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10055C0F4(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v3 = a1 + 49;
  if (*(a1 + 49) == 0 || (*(a1 + 241) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842350();
    }
  }

  else
  {
    v7 = (a1 + 81);
    if (*(a1 + 81) != 0)
    {
LABEL_4:
      result = 0;
      *a2 = *v7;
      v9 = *(a1 + 97);
      *(a3 + 4) = *(a1 + 101);
      *a3 = v9;
      return result;
    }

    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_1008421C4();
    }

    v13[0] = 0;
    v13[1] = 0;
    sub_100007F88(v13, a1 + 104);
    v18[0] = 0;
    v18[1] = 0;
    *(a1 + 97) = 0;
    *(a1 + 101) = 0;
    if (sub_1002D89F8(v3, a1 + 65, a1 + 81, 0x10uLL))
    {
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        sub_100842200();
      }
    }

    else if (sub_1002D89F8(a1 + 65, v3, v18, 0x10uLL))
    {
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        sub_100842270();
      }
    }

    else
    {
      *(a1 + 97) = v18[0];
      *(a1 + 101) = WORD2(v18[0]);
      v10 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v15 = 16;
        v16 = 2096;
        v17 = a1 + 81;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "fcCloudIRK %.16P ", buf, 0x12u);
      }

      v11 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v15 = 6;
        v16 = 2096;
        v17 = a1 + 97;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "fMasterCloudAddress %.6P ", buf, 0x12u);
      }

      v12 = sub_1000E2738();
      if (!(*(*v12 + 160))(v12, a1 + 81, a1 + 97))
      {
        sub_1000088CC(v13);
        goto LABEL_4;
      }

      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        sub_1008422E0();
      }
    }

    sub_1000088CC(v13);
  }

  return 1;
}

uint64_t sub_10055C400(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (!sub_1000E25D8())
  {
    return 2;
  }

  if (!*(a2 + 128))
  {
    v13 = 0;
    while (v13 != 5)
    {
      v14 = v13;
      if (*(a2 + 129 + v13++))
      {
        if (v14 < 5)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_10084238C();
    }

    return 1;
  }

LABEL_3:
  if (*(a1 + 49) == 0 || (*(a1 + 241) & 1) == 0)
  {
    v11 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 241);
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device not signed in / master key not available. signed in = %d", buf, 8u);
    }

    return 1;
  }

  *buf = 0;
  v19 = 0;
  sub_100007F88(buf, a1 + 104);
  v6 = *(a1 + 176);
  v7 = *(a1 + 184);
  if (v6 == v7)
  {
LABEL_9:
    operator new();
  }

  v8 = *(a1 + 176);
  while (**v8 != a2)
  {
    if (++v8 == v7)
    {
      goto LABEL_9;
    }
  }

  while (1)
  {
    v9 = *v6;
    if (**v6 == a2)
    {
      break;
    }

    if (++v6 == v7)
    {
      v9 = 0;
      break;
    }
  }

  if (a3)
  {
    *(v9 + 4) = *a3;
    *(v9 + 77) = 0;
    v16 = *(*v9 + 132);
    *(v9 + 39) = *(*v9 + 128);
    v9[41] = v16;
  }

  (*(**(a1 + 168) + 144))(*(a1 + 168));
  v10 = 0;
  sub_1000088CC(buf);
  return v10;
}

__n128 sub_10055C750(_WORD *a1, __n128 *a2)
{
  if (a2)
  {
    result = *a2;
    *(a1 + 4) = *a2;
    *(a1 + 77) = 0;
    v3 = *(*a1 + 132);
    *(a1 + 39) = *(*a1 + 128);
    a1[41] = v3;
  }

  return result;
}

uint64_t sub_10055C778(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = qword_100BCE960;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v7 = v29 >= 0 ? __p : __p[0];
    LODWORD(buf) = 136446210;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updating encryption key for device %{public}s", &buf, 0xCu);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!sub_1000E25D8())
  {
    return 2;
  }

  if (!*(a2 + 128))
  {
    v15 = 0;
    while (v15 != 5)
    {
      v16 = v15;
      if (*(a2 + 129 + v15++))
      {
        if (v16 < 5)
        {
          goto LABEL_9;
        }

        break;
      }
    }

    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_1008423C8();
    }

    return 1;
  }

LABEL_9:
  if (*(a1 + 49) == 0 || (*(a1 + 241) & 1) == 0)
  {
    v13 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 241);
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Device not signed in / master key not available. signed in = %d", __p, 8u);
    }

    return 1;
  }

  if (*(a1 + 240))
  {
    buf = 0uLL;
    sub_100007F88(&buf, a1 + 104);
    v8 = *(a1 + 176);
    v9 = *(a1 + 184);
    if (v8 == v9)
    {
LABEL_16:
      operator new();
    }

    v10 = *(a1 + 176);
    while (**v10 != a2)
    {
      if (++v10 == v9)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v12 = *v8;
      if (**v8 == a2)
      {
        break;
      }

      if (++v8 == v9)
      {
        v12 = 0;
        break;
      }
    }

    v20 = v12[3];
    v24 = v12;
    v21 = v20 == *a3 && v12[4] == a3[1];
    if (v21 && *(v12 + 21) == 1)
    {
      v22 = qword_100BCE960;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        if (v29 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }

        *v25 = 136446210;
        v26 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Encryption key for device %{public}s is already up to date", v25, 0xCu);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      if (a3)
      {
        *(v12 + 3) = *a3;
      }

      sub_100559EDC(a1);
    }

    v11 = 0;
    sub_1000088CC(&buf);
  }

  else
  {
    v19 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "updateDeviceEncryptionKey, Magic Pairing Layer not initialized", __p, 2u);
    }

    return 17;
  }

  return v11;
}

void sub_10055CBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10055CBF4(uint64_t a1, __n128 *a2, unsigned int a3)
{
  if (!sub_1000E25D8())
  {
    return 2;
  }

  if (!a2[8].n128_u8[0])
  {
    v14 = 0;
    while (v14 != 5)
    {
      v15 = v14;
      if (a2[8].n128_u8[++v14])
      {
        if (v15 < 5)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842474();
    }

    return 1;
  }

LABEL_3:
  if (*(a1 + 49) == 0 || (*(a1 + 241) & 1) == 0)
  {
    v12 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 241);
      *__p = 67109120;
      *&__p[4] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device not signed in / master key not available. signed in = %d", __p, 8u);
    }

    return 1;
  }

  if (*(a1 + 240))
  {
    v27[0] = 0;
    v27[1] = 0;
    sub_100007F88(v27, a1 + 104);
    v6 = qword_100BCE960;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v7 = v34 >= 0 ? __p : *__p;
      *buf = 136446466;
      *&buf[4] = v7;
      v29 = 1024;
      v30 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MagicPairingManager::updateDeviceRatchet from device %{public}s, ratchet %d", buf, 0x12u);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(*__p);
      }
    }

    v8 = *(a1 + 176);
    v9 = *(a1 + 184);
    if (v8 == v9)
    {
LABEL_16:
      operator new();
    }

    v10 = *(a1 + 176);
    while (**v10 != a2)
    {
      if (++v10 == v9)
      {
        goto LABEL_16;
      }
    }

    v19 = *v8;
    if (**v8 != a2)
    {
      v20 = v8 + 1;
      do
      {
        v21 = *v20++;
        v19 = v21;
      }

      while (*v21 != a2);
    }

    v26 = v19;
    v22 = *(v19 + 18);
    v23 = qword_100BCE960;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, buf);
      v24 = v31 >= 0 ? buf : *buf;
      *__p = 136446722;
      *&__p[4] = v24;
      *&__p[12] = 1024;
      *&__p[14] = v22;
      v33 = 1024;
      v34 = a3;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "MagicPairingManager::updateDeviceRatchet from device %{public}s, current %d -> new %d", __p, 0x18u);
      if (v31 < 0)
      {
        operator delete(*buf);
      }
    }

    v25 = a3 - v22;
    if (a3 != v22)
    {
      if (a3 > v22)
      {
        while (1)
        {
          *__p = 0;
          *&__p[8] = 0;
          if (sub_1002D7E68())
          {
            break;
          }

          v19 = v26;
          *(v26 + 5) = *__p;
          if (!--v25)
          {
            v22 = a3;
            goto LABEL_47;
          }
        }

        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
        {
          sub_100842404();
        }

        v11 = 1;
        goto LABEL_52;
      }

      if (v22)
      {
LABEL_47:
        *(v19 + 18) = v22;
      }

      if (*(a1 + 48) == 1)
      {
        __p[0] = 0;
        sub_1000216B4(__p);
        sub_10055867C(a1);
        sub_10002249C(__p);
      }

      sub_10055B09C(a1, a2);
    }

    v11 = 0;
LABEL_52:
    sub_1000088CC(v27);
    return v11;
  }

  v18 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "updateDeviceRatchet, Magic Pairing Layer not initialized", __p, 2u);
  }

  return 17;
}

void sub_10055D0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10055D120(uint64_t a1, void *a2, void *a3)
{
  if (sub_1000E25D8())
  {
    if (*a2 != *(a1 + 49) || a2[1] != *(a1 + 57))
    {
      if (!a2 || !a3)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    v9 = *a3 != *(a1 + 65) || a3[1] != *(a1 + 73);
    if (a2 && a3 && v9)
    {
LABEL_20:
      v10 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 240);
        LODWORD(v19) = 67109376;
        HIDWORD(v19) = v11;
        LOWORD(v20[0]) = 1024;
        *(v20 + 2) = 1;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MagicPairingInitialized: %d, keysChanged: %d, Cloud master keys are updated. Updating local keys", &v19, 0xEu);
      }

      *(a1 + 49) = *a2;
      *(a1 + 65) = *a3;
      v12 = sub_1000E2738();
      v13 = (*(*v12 + 152))(v12, a1 + 49, a1 + 65);
      v14 = sub_10000E92C();
      if ((*(*v14 + 8))(v14))
      {
        v15 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 0x1004100202;
          LOWORD(v20[0]) = 2096;
          *(v20 + 2) = a1 + 49;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "cloudKeysAvailable Acc Master Key:%.16P", &v19, 0x12u);
        }

        v16 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 0x1004100202;
          LOWORD(v20[0]) = 2096;
          *(v20 + 2) = a1 + 65;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "cloudKeysAvailable Acc Master Hint:%.16P", &v19, 0x12u);
        }
      }

      if (v13)
      {
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
        {
          sub_1008424B0();
        }
      }

      else
      {
        v19 = 0;
        v20[0] = 0;
        sub_100007F88(&v19, a1 + 104);
        v17 = *(a1 + 176);
        v18 = *(a1 + 184);
        sub_1000088CC(&v19);
        if (v17 == v18 && (*(a1 + 240) & 1) == 0)
        {
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
          {
            sub_100842520();
          }

          (*(**(a1 + 168) + 32))(*(a1 + 168));
        }
      }

      return;
    }

    if (v9)
    {
LABEL_31:
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEBUG))
      {
        sub_10084255C();
      }

      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        sub_1008425C4();
      }

      return;
    }

    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEBUG))
    {
      sub_100842644();
    }

    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_1008426AC();
    }
  }

  else
  {
    v7 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "cloudKeysAvailable, Magic Pairing not supported", &v19, 2u);
    }
  }
}

uint64_t sub_10055D510(uint64_t a1, __n128 **a2)
{
  v13[1] = 0;
  v14 = a2;
  v13[0] = 0;
  sub_100007F88(v13, a1 + 104);
  v4 = *a2;
  for (i = *(a1 + 176); i != *(a1 + 184); ++i)
  {
    if (**i == v4)
    {
      v8 = qword_100BCE960;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v4, &__p);
        v9 = v17 >= 0 ? &__p : __p.n128_u64[0];
        *buf = 136446210;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Update Magic pairing device from cloud %{public}s", buf, 0xCu);
        if (v17 < 0)
        {
          operator delete(__p.n128_u64[0]);
        }
      }

      goto LABEL_19;
    }
  }

  v6 = qword_100BCE960;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v4, &__p);
    v7 = v17 >= 0 ? &__p : __p.n128_u64[0];
    *buf = 136446210;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "New Magic pairing device from cloud %{public}s", buf, 0xCu);
    if (v17 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }
  }

  sub_1000C2484(a1 + 176, &v14);
LABEL_19:
  if (qword_100B512E8 != -1)
  {
    sub_100841AC0();
  }

  if ((sub_1000294FC(off_100B512E0, v4) & 1) == 0 && *(a1 + 48) == 1)
  {
    if (qword_100B50F88 != -1)
    {
      sub_100841B74();
    }

    sub_1006E1BF0(off_100B50F80, v4);
    __p = 0uLL;
    v16 = 0;
    sub_1006D1BAC(&__p, v14 + 5, 4u);
    if (qword_100B512E8 != -1)
    {
      sub_100841AC0();
    }

    sub_1006E7F2C(off_100B512E0, v4, &__p, 0);
    nullsub_21(&__p);
  }

  if (qword_100B512E8 != -1)
  {
    sub_100841AC0();
  }

  sub_1006E8C38(off_100B512E0, v4);
  if (*(a1 + 48) == 1)
  {
    __p.n128_u8[0] = 0;
    sub_1000216B4(&__p);
    sub_10055867C(a1);
    sub_100022214(&__p);
    if ((*(v14 + 78) << 40) | (*(v14 + 79) << 32) | (*(v14 + 80) << 24) | (*(v14 + 81) << 16) | (*(v14 + 82) << 8) | *(v14 + 83))
    {
      v10 = sub_100007EE8();
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10055D8E0;
      v12[3] = &unk_100ADF8F8;
      v12[4] = v14;
      sub_10000CA94(v10, v12);
    }

    sub_10002249C(&__p);
  }

  sub_10055B09C(a1, v4);
  *(v14 + 21) = 1;
  *(a1 + 240) = 1;
  return sub_1000088CC(v13);
}

void sub_10055D880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10055D8E0(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100841BC4();
  }

  sub_10079E618(off_100B51070, *(a1 + 32) + 77, *(a1 + 32) + 24);
  if (qword_100B508C0 != -1)
  {
    sub_100841BD8();
  }

  v2 = off_100B508B8;
  v3 = *(a1 + 32);

  sub_1007BE07C(v2, (v3 + 77), v3 + 8);
}

uint64_t sub_10055D96C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v184[1] = 0;
  v184[0] = 0;
  sub_100007F88(v184, a1 + 104);
  *(a1 + 242) = 1;
  v4 = qword_100BCE960;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "device info update callback from cloudkit for %d devices", buf, 8u);
  }

  if (a3)
  {
    v5 = 0;
    v166 = a3;
    do
    {
      v169 = v5;
      v6 = (a2 + 152 * v5);
      v182 = *v6;
      v183 = *(v6 + 2);
      if (qword_100B508F0 != -1)
      {
        sub_100841B4C();
      }

      v7 = sub_1000E6554(off_100B508E8, &v182, 1);
      v8 = v7;
      if ((*(v6 + 75) & 2) != 0)
      {
        sub_100540890(v7, 1, 1);
      }

      if (v8[8].n128_u8[0])
      {
LABEL_10:
        v179 = 0;
        v178 = 1;
        memset(&v192, 0, sizeof(v192));
        sub_100007E30(&v192, v6 + 74);
        for (i = 0; i != 31; ++i)
        {
          if ((*(v6 + 138) & (1 << i)) != 0)
          {
            *v188 = 0;
            sub_100016250(v188);
            *buf = *v188;
            *&buf[8] = *&v188[4];
            sub_100539554(v8, 1 << i, 4, buf, 0);
          }
        }

        v10 = qword_100BCE940;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(v6 + 138);
          if (qword_100B50AC0 != -1)
          {
            sub_100841F18();
          }

          v12 = sub_1000DFA00(off_100B50AB8, v8);
          v13 = *(v6 + 130);
          *buf = 67109632;
          *&buf[4] = v11;
          *&buf[8] = 1024;
          *&buf[10] = v12;
          *&buf[14] = 1024;
          *&buf[16] = v13;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updating in memory device service capability details: received service mask %x, device service mask after update %x, blob version %d", buf, 0x14u);
        }

        v14 = sub_10000E92C();
        if ((*(*v14 + 8))(v14))
        {
          v15 = qword_100BCE960;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v8, v188);
            v16 = v188;
            if (v191 < 0)
            {
              v16 = *v188;
            }

            v17 = *(v6 + 38);
            *buf = 136447490;
            *&buf[4] = v16;
            *&buf[12] = 1024;
            *&buf[14] = v17;
            *&buf[18] = 1040;
            *&buf[20] = 16;
            *&buf[24] = 2096;
            *&buf[26] = v6 + 6;
            *&buf[34] = 1040;
            *&buf[36] = 16;
            *v187 = 2096;
            *&v187[2] = v6 + 22;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Update received for magic device %{public}s with info,  ratchet = %d accessory key %.16P and Hint %.16P", buf, 0x32u);
            if (v191 < 0)
            {
              operator delete(*v188);
            }
          }

          v18 = qword_100BCE960;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v8, v188);
            v19 = v188;
            if (v191 < 0)
            {
              v19 = *v188;
            }

            v20 = &v192;
            if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v20 = v192.__r_.__value_.__r.__words[0];
            }

            *buf = 136447490;
            *&buf[4] = v19;
            *&buf[12] = 2080;
            *&buf[14] = v20;
            *&buf[22] = 1040;
            *&buf[24] = 16;
            *&buf[28] = 2096;
            *&buf[30] = v6 + 42;
            *&buf[38] = 1040;
            *v187 = 16;
            *&v187[4] = 2096;
            *&v187[6] = v6 + 58;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Update received for magic device %{public}s with info,  name = %s IRK %.16P and Enc Key %.16P", buf, 0x36u);
            if (v191 < 0)
            {
              operator delete(*v188);
            }
          }
        }

        for (j = *(a1 + 176); j != *(a1 + 184); ++j)
        {
          v22 = *j;
          if (**j == v8)
          {
            goto LABEL_37;
          }
        }

        v22 = 0;
LABEL_37:
        v177 = 0;
        v23 = sub_1000C2364(v8, &v177, &v179 + 1, &v179, &v178);
        v24 = qword_100BCE960;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(v6 + 71);
          v26 = *(v6 + 72);
          *buf = 67110400;
          *&buf[4] = v25;
          *&buf[8] = 1024;
          *&buf[10] = v26;
          *&buf[14] = 1024;
          *&buf[16] = v23;
          *&buf[20] = 1024;
          *&buf[22] = HIDWORD(v179);
          *&buf[26] = 1024;
          *&buf[28] = v179;
          *&buf[32] = 1024;
          *&buf[34] = v177;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Device vid/pid from cloud vid - %x, cloud pid - %x; (%d) Local vid - %x, Local pid - %x, Local vidSrc - %x", buf, 0x26u);
        }

        if (*(v6 + 71) && *(v6 + 72))
        {
          if (v177 <= 1)
          {
            v27 = 1;
          }

          else
          {
            v27 = v177;
          }

          v28 = qword_100BCE960;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(v6 + 71);
            v30 = *(v6 + 72);
            *buf = 67109376;
            *&buf[4] = v29;
            *&buf[8] = 1024;
            *&buf[10] = v30;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "New Magic Paired Device's Cloud vid - %x, Cloud pid - %x", buf, 0xEu);
          }

          v31 = *(v6 + 71);
          v32 = *(v6 + 72);
          v179 = __PAIR64__(v31, v32);
          sub_10053D890(v8, v27, v31, v32, v178);
        }

        if (*(v6 + 130))
        {
          v33 = *(v6 + 148);
          v34 = v33 & 0xF;
          v35 = v33 >> 4;
          v36 = *(v6 + 147);
          v37 = v34 | (v33 >> 4 << 8);
          v38 = qword_100BCE960;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v37;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Retrieved double tap from cloud: %d", buf, 8u);
          }

          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          v39 = sub_10033BE98(off_100B50948, v8, v34 | (v35 << 8), (v36 >> 4) & 1);
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v41 = v35;
          }

          else
          {
            v41 = BYTE1(v39);
          }

          if (v40)
          {
            v42 = v34;
          }

          else
          {
            v42 = v39;
          }

          if (sub_1000E3188(v8) != v39)
          {
            v43 = qword_100BCE960;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Updating double tap settings from cloud", buf, 2u);
            }

            if ((v36 & 8) != 0)
            {
              if (qword_100B50950 != -1)
              {
                sub_100841B9C();
              }

              sub_10033DD54(off_100B50948, v8, v41, v42, 4);
            }
          }

          v44 = *(v6 + 147) & 3;
          if (v44 == 2)
          {
            v45 = 2;
          }

          else
          {
            v45 = v44 == 1;
          }

          if (sub_1000E3314(v8) != v45)
          {
            if (qword_100B50950 != -1)
            {
              sub_100841B9C();
            }

            sub_10033DA80(off_100B50948, v8, v45, 4u);
          }

          if (*(v6 + 149))
          {
            sub_10054AE4C(v8, *(v6 + 149));
            v46 = qword_100BCE960;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v8, buf);
              v47 = buf[23];
              v48 = *buf;
              v49 = sub_1000C2398(v8);
              *v188 = 136446466;
              v50 = buf;
              if (v47 < 0)
              {
                v50 = v48;
              }

              *&v188[4] = v50;
              v189 = 1024;
              v190 = v49;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Color info updated for device %{public}s, color code %d", v188, 0x12u);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }
          }

          v51 = *(v6 + 147) & 4;
          v52 = qword_100BCE960;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v8, v188);
            v53 = v191;
            v54 = *v188;
            v55 = sub_1000E356C(v8);
            v56 = v188;
            if (v53 < 0)
            {
              v56 = v54;
            }

            if (v51)
            {
              v57 = "Enabled";
            }

            else
            {
              v57 = "Disabled";
            }

            *buf = 136446722;
            *&buf[4] = v56;
            *&buf[12] = 2080;
            if (v55)
            {
              v58 = "Enabled";
            }

            else
            {
              v58 = "Disabled";
            }

            *&buf[14] = v57;
            *&buf[22] = 2080;
            *&buf[24] = v58;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "In Ear Detection state update from cloud for device %{public}s is %s, local state %s", buf, 0x20u);
            if (v191 < 0)
            {
              operator delete(*v188);
            }
          }

          if (sub_1000E356C(v8) != v51 >> 2)
          {
            if (qword_100B50950 != -1)
            {
              sub_100841B9C();
            }

            sub_10033DF90(off_100B50948, v8, v51 != 0, 4u);
          }

          v59 = qword_100BCE960;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v8, buf);
            v60 = buf;
            if (buf[23] < 0)
            {
              v60 = *buf;
            }

            v61 = *(v6 + 75);
            *v188 = 136446466;
            *&v188[4] = v60;
            v189 = 1024;
            v190 = v61;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Update listening mode services for device %{public}s with service - %d", v188, 0x12u);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          v62 = (*(v6 + 75) >> 5) & 0x700 | (*(v6 + 75) >> 10) & 7u;
          v63 = qword_100BCE960;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v8, v188);
            v64 = v191;
            v65 = *v188;
            v66 = sub_1000E06EC(v8);
            *buf = 136446722;
            v67 = v188;
            if (v64 < 0)
            {
              v67 = v65;
            }

            *&buf[4] = v67;
            *&buf[12] = 1024;
            *&buf[14] = v66;
            *&buf[18] = 1024;
            *&buf[20] = v62;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Click Hold mode info update for device %{public}s, current value: %d, cloud value %d", buf, 0x18u);
            if (v191 < 0)
            {
              operator delete(*v188);
            }
          }

          if (v62 && sub_1000E06EC(v8) != v62)
          {
            if (qword_100B50950 != -1)
            {
              sub_100841B9C();
            }

            sub_100331844(off_100B50948, v8, 22, v62, 4u);
            v68 = qword_100BCE960;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v8, buf);
              v69 = buf[23];
              v70 = *buf;
              v71 = sub_1000E06EC(v8);
              *v188 = 136446466;
              v72 = buf;
              if (v69 < 0)
              {
                v72 = v70;
              }

              *&v188[4] = v72;
              v189 = 1024;
              v190 = v71;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Click Hold mode info updated for device %{public}s, new mode %d", v188, 0x12u);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }
          }

          v73 = (*(v6 + 75) >> 7) & 7;
          v74 = qword_100BCE960;
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v8, v188);
            v75 = v191;
            v76 = *v188;
            v77 = sub_1000E32CC(v8);
            *buf = 136446722;
            v78 = v188;
            if (v75 < 0)
            {
              v78 = v76;
            }

            *&buf[4] = v78;
            *&buf[12] = 1024;
            *&buf[14] = v77;
            *&buf[18] = 1024;
            *&buf[20] = v73;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Listening mode config update for device %{public}s, current value: %d, cloud configs: %d", buf, 0x18u);
            if (v191 < 0)
            {
              operator delete(*v188);
            }
          }

          if (v73 && sub_1000E32CC(v8) != v73)
          {
            if (qword_100B50950 != -1)
            {
              sub_100841B9C();
            }

            sub_100331844(off_100B50948, v8, 26, v73, 4u);
            v79 = qword_100BCE960;
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v8, buf);
              v80 = buf[23];
              v81 = *buf;
              v82 = sub_1000E32CC(v8);
              *v188 = 136446466;
              v83 = buf;
              if (v80 < 0)
              {
                v83 = v81;
              }

              *&v188[4] = v83;
              v189 = 1024;
              v190 = v82;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Listening mode config updated for device %{public}s, new configs %d", v188, 0x12u);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }
          }

          v84 = *(v6 + 75) & 0x40;
          v85 = qword_100BCE960;
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v8, v188);
            v86 = v191;
            v87 = *v188;
            v88 = sub_1000E2140(v8, 32);
            *buf = 136446722;
            v89 = v188;
            if (v86 < 0)
            {
              v89 = v87;
            }

            *&buf[4] = v89;
            *&buf[12] = 1024;
            *&buf[14] = v88;
            *&buf[18] = 1024;
            *&buf[20] = v84 >> 6;
            _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "TiPi supported flag update from macOS %{public}s, current local value: %d, macOS value: %d", buf, 0x18u);
            if (v191 < 0)
            {
              operator delete(*v188);
            }
          }

          if (v84)
          {
            if (!sub_1000E2140(v8, 32))
            {
              sub_10053E4FC(v8, 32, 1);
              if (!sub_1000E5DB8(v8))
              {
                sub_100546280(v8, 1);
              }
            }
          }

          v90 = (*(v6 + 150) >> 2) & 3;
          v91 = qword_100BCE960;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v8, v188);
            v92 = v191;
            v93 = *v188;
            v94 = sub_1005493C4(v8);
            *buf = 136446722;
            v95 = v188;
            if (v92 < 0)
            {
              v95 = v93;
            }

            *&buf[4] = v95;
            *&buf[12] = 1024;
            *&buf[14] = v94;
            *&buf[18] = 1024;
            *&buf[20] = v90;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "One Bud ANC mode update for device %{public}s, current value: %d, cloud value %d", buf, 0x18u);
            if (v191 < 0)
            {
              operator delete(*v188);
            }
          }

          v96 = sub_1000E2140(v8, 43);
          if (v90)
          {
            v97 = v96;
          }

          else
          {
            v97 = 1;
          }

          if ((v97 & 1) == 0 && sub_1005493C4(v8) != v90)
          {
            if (qword_100B50950 != -1)
            {
              sub_100841B9C();
            }

            sub_100331844(off_100B50948, v8, 27, v90, 4u);
            v98 = qword_100BCE960;
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v8, buf);
              v99 = buf[23];
              v100 = *buf;
              v101 = sub_1005493C4(v8);
              *v188 = 136446466;
              v102 = buf;
              if (v99 < 0)
              {
                v102 = v100;
              }

              *&v188[4] = v102;
              v189 = 1024;
              v190 = v101;
              _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "One Bud ANC mode updated for device %{public}s, new mode %d", v188, 0x12u);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }
          }
        }

        if (!v22)
        {
          operator new();
        }

        *(v22 + 5) = *(v6 + 6);
        *(v22 + 7) = *(v6 + 22);
        v103 = *(v6 + 38);
        if (v103)
        {
          *(v22 + 18) = v103;
        }

        *(v22 + 1) = *(v6 + 42);
        *(v22 + 77) = 0;
        v104 = (*v22)[8].n128_u16[2];
        *(v22 + 78) = (*v22)[8].n128_u32[0];
        *(v22 + 41) = v104;
        *(v22 + 3) = *(v6 + 58);
        if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100008904(&__str, v192.__r_.__value_.__l.__data_, v192.__r_.__value_.__l.__size_);
        }

        else
        {
          __str = v192;
        }

        std::string::operator=((v22 + 11), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        sub_100538D30(v8, &v192, 1);
        *(v22 + 21) = 2;
        if (*(a1 + 48) == 1 && (*(v22 + 78) << 40) | (*(v22 + 79) << 32) | (*(v22 + 80) << 24) | (*(v22 + 81) << 16) | (*(v22 + 82) << 8) | *(v22 + 83))
        {
          v108 = sub_100007EE8();
          v174[0] = _NSConcreteStackBlock;
          v174[1] = 3221225472;
          v174[2] = sub_100560028;
          v174[3] = &unk_100AE0880;
          v174[4] = v22;
          v174[5] = a2;
          v175 = v169;
          sub_10000D334(v108, v174);
        }

        for (k = 0; k != 31; ++k)
        {
          if ((*(v6 + 138) & (1 << k)) != 0)
          {
            *v188 = 0;
            sub_100016250(v188);
            *buf = *v188;
            *&buf[8] = *&v188[4];
            sub_100539554(v8, 1 << k, 4, buf, 1);
          }
        }

        v110 = qword_100BCE940;
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
        {
          v111 = *(v6 + 138);
          if (qword_100B50AC0 != -1)
          {
            sub_100841F18();
          }

          v112 = sub_1000DFA00(off_100B50AB8, v8);
          v113 = *(v6 + 130);
          *buf = 67109632;
          *&buf[4] = v111;
          *&buf[8] = 1024;
          *&buf[10] = v112;
          *&buf[14] = 1024;
          *&buf[16] = v113;
          _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "Device service capability details: received service mask %x, device service mask after update %x, blob version %d", buf, 0x14u);
        }

        if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v192.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v105 = 0;
        while (v105 != 5)
        {
          if (v8[8].n128_u8[++v105])
          {
            if ((v105 - 1) < 5)
            {
              goto LABEL_10;
            }

            break;
          }
        }

        v107 = qword_100BCE960;
        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          sub_10084272C(&v180, v181);
        }
      }

      v5 = v169 + 1;
    }

    while (v169 + 1 != v166);
  }

  memset(buf, 0, 24);
  v114 = *(a1 + 176);
  if (v114 != *(a1 + 184))
  {
    v168 = 0;
    while (1)
    {
      v115 = *v114;
      v116 = *(*v114 + 84);
      if (v116 == 1)
      {
        *(v115 + 84) = 3;
        v117 = *v115;
        v118 = *&buf[8];
        if (*&buf[8] >= *&buf[16])
        {
          v120 = (*&buf[8] - *buf) >> 3;
          if ((v120 + 1) >> 61)
          {
            sub_1000C7698();
          }

          v121 = (*&buf[16] - *buf) >> 2;
          if (v121 <= v120 + 1)
          {
            v121 = v120 + 1;
          }

          if (*&buf[16] - *buf >= 0x7FFFFFFFFFFFFFF8uLL)
          {
            v122 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v122 = v121;
          }

          if (v122)
          {
            sub_100008108(buf, v122);
          }

          v123 = (8 * v120);
          *v123 = v117;
          v119 = 8 * v120 + 8;
          v124 = v123 - (*&buf[8] - *buf);
          memcpy(v124, *buf, *&buf[8] - *buf);
          v125 = *buf;
          *buf = v124;
          *&buf[8] = v119;
          *&buf[16] = 0;
          if (v125)
          {
            operator delete(v125);
          }
        }

        else
        {
          **&buf[8] = v117;
          v119 = v118 + 8;
        }

        *&buf[8] = v119;
        v126 = qword_100BCE960;
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(*v115, &v192);
          v127 = (v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v192 : v192.__r_.__value_.__r.__words[0];
          *v188 = 136446210;
          *&v188[4] = v127;
          _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "Local device info for device %{public}s needs to be pruned", v188, 0xCu);
          if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v192.__r_.__value_.__l.__data_);
          }
        }

        v116 = *(v115 + 84);
      }

      if (!v116)
      {
        break;
      }

      if (v116 == 2)
      {
        *(v115 + 84) = 1;
        v128 = qword_100BCE960;
        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(*v115, &v192);
          v129 = (v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v192 : v192.__r_.__value_.__r.__words[0];
          *v188 = 136446210;
          *&v188[4] = v129;
          _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "Local device info for device %{public}s needs to be updated", v188, 0xCu);
          if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v192.__r_.__value_.__l.__data_);
          }
        }

LABEL_223:
      }

      if (++v114 == *(a1 + 184))
      {
        goto LABEL_227;
      }
    }

    v128 = qword_100BCE960;
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*v115, &v192);
      v130 = (v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v192 : v192.__r_.__value_.__r.__words[0];
      *v188 = 136446210;
      *&v188[4] = v130;
      _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "Local device info for device %{public}s needs to be sent to cloud", v188, 0xCu);
      if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v192.__r_.__value_.__l.__data_);
      }
    }

    v168 = 1;
    goto LABEL_223;
  }

  v168 = 0;
LABEL_227:
  sub_10000801C(v184);
  v131 = *buf;
  if (*buf != *&buf[8])
  {
    while (1)
    {
      v132 = sub_1000E2738();
      (*(*v132 + 104))(v132, *v131);
      if (*(a1 + 48) == 1)
      {
        break;
      }

LABEL_262:
      if (++v131 == *&buf[8])
      {
        goto LABEL_263;
      }
    }

    v133 = *v131;
    v134 = +[CloudPairing sharedInstance];
    v135 = [v134 cloudClient];
    sub_1000BE6F8((v133 + 128), &v192);
    if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v136 = &v192;
    }

    else
    {
      v136 = v192.__r_.__value_.__r.__words[0];
    }

    v137 = [NSString stringWithUTF8String:v136];
    v173[0] = _NSConcreteStackBlock;
    v173[1] = 3221225472;
    v173[2] = sub_1005605C4;
    v173[3] = &unk_100AFC848;
    v173[4] = v133;
    [v135 deleteDeviceRecord:v137 completion:v173];

    if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v192.__r_.__value_.__l.__data_);
    }

    v138 = +[CloudPairing sharedInstance];
    v139 = [v138 cloudClient];
    sub_1000BE6F8((v133 + 128), &v192);
    if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v140 = &v192;
    }

    else
    {
      v140 = v192.__r_.__value_.__r.__words[0];
    }

    v141 = [NSString stringWithUTF8String:v140];
    v172[0] = _NSConcreteStackBlock;
    v172[1] = 3221225472;
    v172[2] = sub_100560708;
    v172[3] = &unk_100AFC848;
    v172[4] = v133;
    [v139 deleteMagicSettingsRecord:v141 completion:v172];

    if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v192.__r_.__value_.__l.__data_);
    }

    v142 = +[CloudPairing sharedInstance];
    v143 = [v142 cloudClient];
    sub_1000BE6F8((v133 + 128), &v192);
    if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v144 = &v192;
    }

    else
    {
      v144 = v192.__r_.__value_.__r.__words[0];
    }

    v145 = [NSString stringWithUTF8String:v144];
    v171[0] = _NSConcreteStackBlock;
    v171[1] = 3221225472;
    v171[2] = sub_10056084C;
    v171[3] = &unk_100AFC848;
    v171[4] = v133;
    [v143 deleteDeviceSupportInformationRecord:v145 completion:v171];

    if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v192.__r_.__value_.__l.__data_);
    }

    if (!sub_1000C0348(v133))
    {
LABEL_259:
      if (qword_100B50F88 != -1)
      {
        sub_100841B74();
      }

      sub_1006E0DBC(off_100B50F80, *v131);
      goto LABEL_262;
    }

    v185[0] = 0;
    sub_1000216B4(v185);
    v146 = sub_10023BD60(v133 + 128);
    v147 = qword_100BCE960;
    v148 = v147;
    if (v146)
    {
      if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v133, &v192);
        if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v149 = &v192;
        }

        else
        {
          v149 = v192.__r_.__value_.__r.__words[0];
        }

        *v188 = 136315394;
        *&v188[4] = v149;
        v189 = 1024;
        v190 = v146;
        _os_log_error_impl(&_mh_execute_header, v148, OS_LOG_TYPE_ERROR, "Magic Pairing disconnect failed for %s when removing magic pairing status: %d", v188, 0x12u);
        goto LABEL_256;
      }
    }

    else if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v133, &v192);
      if ((v192.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v150 = &v192;
      }

      else
      {
        v150 = v192.__r_.__value_.__r.__words[0];
      }

      *v188 = 136315138;
      *&v188[4] = v150;
      _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "Magic Pairing disconnected for %s as update is from legacy cloud removing magic pairing", v188, 0xCu);
LABEL_256:
      if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v192.__r_.__value_.__l.__data_);
      }
    }

    sub_10002249C(v185);
    goto LABEL_259;
  }

LABEL_263:
  sub_100007FB8(v184);
  v152 = *(a1 + 176);
  for (m = *(a1 + 184); v152 != m; ++v152)
  {
    v153 = *v152;
    if (*(*v152 + 84) == 3)
    {
      if (*(v153 + 111) < 0)
      {
        operator delete(*(v153 + 88));
      }

      operator delete();
    }
  }

  sub_10000801C(v184);
  if (*(a1 + 48) == 1)
  {
    v192.__r_.__value_.__s.__data_[0] = 0;
    sub_1000216B4(&v192);
    sub_10055867C(a1);
    sub_10002249C(&v192);
  }

  sub_1005599FC(a1);
  *(a1 + 242) = 0;
  v154 = qword_100BCE960;
  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    v155 = "No";
    if (v168)
    {
      v155 = "Yes";
    }

    LODWORD(v192.__r_.__value_.__l.__data_) = 136446210;
    *(v192.__r_.__value_.__r.__words + 4) = v155;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "Magic Device list Update Required ? %{public}s", &v192, 0xCu);
  }

  if (v168)
  {
    sub_100559EDC(a1);
  }

  if ((*(a1 + 240) & 1) == 0)
  {
    v156 = qword_100BCE960;
    if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
    {
      v157 = (*(a1 + 184) - *(a1 + 176)) >> 3;
      LODWORD(v192.__r_.__value_.__l.__data_) = 134217984;
      *(v192.__r_.__value_.__r.__words + 4) = v157;
      _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "Initial Magic Devices Initialized with devices: %lu", &v192, 0xCu);
    }

    *(a1 + 240) = 1;
    memset(&v192, 0, sizeof(v192));
    if (qword_100B508A0 != -1)
    {
      sub_100842768();
    }

    sub_1000AD9D8(off_100B50898, &v192);
    v158 = v192.__r_.__value_.__r.__words[0];
    if (v192.__r_.__value_.__r.__words[0] != v192.__r_.__value_.__l.__size_)
    {
      do
      {
        v159 = *v158;
        v160 = (*v158)[1016];
        if (_os_feature_enabled_impl())
        {
          if ((sub_1000E31D0(v159) & 2) != 0)
          {
            v161 = 0;
          }

          else
          {
            if (qword_100B50950 != -1)
            {
              sub_100841B9C();
            }

            v161 = sub_10033748C(off_100B50948, v159);
          }
        }

        else
        {
          v161 = 1;
        }

        v162 = sub_1000DFB74(v159, 0x80000u);
        if (v162 == 4 && v161 && (v160 & 1) == 0 && (v159[1046] & 1) == 0 && (v159[1045] & 1) == 0 && (v159[1044] != 1 || sub_1000E2570(v162, v159)))
        {
          v163 = qword_100BCE960;
          if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v159, v188);
            v164 = v188;
            if (v191 < 0)
            {
              v164 = *v188;
            }

            *v185 = 136446210;
            *&v185[4] = v164;
            _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "Send Magic Keys to connected device: %{public}s", v185, 0xCu);
            if (v191 < 0)
            {
              operator delete(*v188);
            }
          }

          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          sub_1003337DC(off_100B50948, v159);
        }

        ++v158;
      }

      while (v158 != v192.__r_.__value_.__l.__size_);
      v158 = v192.__r_.__value_.__r.__words[0];
    }

    if (v158)
    {
      v192.__r_.__value_.__l.__size_ = v158;
      operator delete(v158);
    }
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return sub_1000088CC(v184);
}

void sub_10055FC00(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  if (v4)
  {
    *(v2 - 136) = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 240);
  if (v5)
  {
    *(v2 - 232) = v5;
    operator delete(v5);
  }

  sub_1000088CC(&STACK[0x270]);
  _Unwind_Resume(a1);
}

void sub_100560028(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100841BC4();
  }

  sub_10079E618(off_100B51070, *(a1 + 32) + 77, *(a1 + 40) + 152 * *(a1 + 48) + 58);
  if (qword_100B508C0 != -1)
  {
    sub_100841BD8();
  }

  v2 = off_100B508B8;
  v3 = (*(a1 + 32) + 77);
  v4 = *(a1 + 40) + 152 * *(a1 + 48) + 42;

  sub_1007BE07C(v2, v3, v4);
}

void sub_1005600D0(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100841BC4();
  }

  sub_10079E618(off_100B51070, *(a1 + 32) + 77, *(a1 + 40) + 152 * *(a1 + 48) + 58);
  if (qword_100B508C0 != -1)
  {
    sub_100841BD8();
  }

  v2 = off_100B508B8;
  v3 = (*(a1 + 32) + 77);
  v4 = *(a1 + 40) + 152 * *(a1 + 48) + 42;

  sub_1007BE07C(v2, v3, v4);
}

void sub_100560174(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE960;
  v8 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
  if (!v5 || v6)
  {
    if (v8)
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 138412546;
      *(buf.__r_.__value_.__r.__words + 4) = v5;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2112;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "After legacy magic pairing, unable to fetch magic setting record: %@, Error: %@", &buf, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
      *(buf.__r_.__value_.__r.__words + 4) = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "After legacy magic pairing, fetched magic setting record: %@", &buf, 0xCu);
    }

    v9 = [v5 deviceIDFeatureBitsV1];
    v10 = [v9 length] == 0;

    if (!v10)
    {
      LODWORD(v26) = 0;
      v11 = [v5 deviceIDFeatureBitsV1];
      v12 = v11;
      sub_100007E30(&buf, [v11 UTF8String]);
      v13 = std::stoul(&buf, 0, 0);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v14 = sub_10053E4A8(*(a1 + 32), &v26);
      if (v26 == v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      if ((v15 & 1) == 0)
      {
        v16 = qword_100BCE960;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000BE6F8((*(a1 + 32) + 128), &buf);
          v17 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          *v27 = 136446466;
          *&v27[4] = v17;
          v28 = 1024;
          v29 = v13;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fetched iCloud update for DID supported feature bits version 1, address: %{public}s, supported feature bits 0x%x", v27, 0x12u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        sub_10053DCEC(*(a1 + 32), v13, 0);
      }
    }

    v18 = [v5 deviceIDFeatureBitsV2];
    v19 = [v18 length] == 0;

    if (!v19)
    {
      v26 = 0;
      v20 = [v5 deviceIDFeatureBitsV2];
      v21 = v20;
      sub_100007E30(&buf, [v20 UTF8String]);
      v22 = std::stoull(&buf, 0, 0);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v25 = __ROR8__(v22, 32);
      if (!sub_10053E4E0(*(a1 + 32), &v26) || v26 != v25)
      {
        v23 = qword_100BCE960;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000BE6F8((*(a1 + 32) + 128), v27);
          if (v30 >= 0)
          {
            v24 = v27;
          }

          else
          {
            v24 = *v27;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136446722;
          *(buf.__r_.__value_.__r.__words + 4) = v24;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = HIDWORD(v22);
          WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
          HIDWORD(buf.__r_.__value_.__r.__words[2]) = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Apply Fetched iCloud update for DID extended supported feature bits version 2, address: %{public}s, extended supported feature bits I1: 0x%x, I2: 0x%x", &buf, 0x18u);
          if (v30 < 0)
          {
            operator delete(*v27);
          }
        }

        HIDWORD(v26) |= v22;
        sub_10053DFDC(*(a1 + 32), v26, 0);
      }
    }
  }
}

void sub_1005605C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE960;
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      sub_100842790();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 32), __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MP] Removed cloud device for %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100560708(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE960;
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      sub_1008427E0();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 32), __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MP] Removed new cloud magic settings for %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10056084C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE960;
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      sub_100842830();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 32), __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MP] Removed cloud info settings for %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100560998(uint64_t a1, int a2, const std::string *a3)
{
  v6 = sub_1000E25D8();
  v7 = qword_100BCE960;
  v8 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = "Signed in";
      if (!a2)
      {
        v9 = "Not Signed in";
      }

      v10 = a3;
      if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
      {
        v10 = a3->__r_.__value_.__r.__words[0];
      }

      *buf = 136446723;
      *&buf[4] = v9;
      *&buf[12] = 2160;
      *&buf[14] = 1752392040;
      v18 = 2081;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received Cloud Sign in status as %{public}s for %{private, mask.hash}s", buf, 0x20u);
    }

    v16[0] = 0;
    v16[1] = 0;
    sub_100007F88(v16, a1 + 104);
    *(a1 + 241) = a2;
    if (a2)
    {
      std::string::operator=((a1 + 216), a3);
      (*(**(a1 + 168) + 16))(*(a1 + 168));
      if (*(a1 + 49) != 0)
      {
        *buf = 0;
        *&buf[8] = 0;
        sub_100007F88(buf, a1 + 104);
        v11 = *(a1 + 176);
        v12 = *(a1 + 184);
        sub_1000088CC(buf);
        if (v11 == v12 && (*(a1 + 240) & 1) == 0)
        {
          (*(**(a1 + 168) + 32))(*(a1 + 168));
        }
      }

      sub_100560C50(a1);
    }

    else
    {
      sub_1005580E0(a1, 0);
    }

    sub_100560D78(a1);
    if (qword_100B53FC8 != -1)
    {
      sub_100842880();
    }

    v13 = qword_100B53FC0;
    v14 = *(a1 + 241);
    if (*(a1 + 239) < 0)
    {
      sub_100008904(&__p, *(a1 + 216), *(a1 + 224));
    }

    else
    {
      __p = *(a1 + 216);
    }

    sub_100319A20(v13, v14, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_1000088CC(v16);
  }

  else if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "cloudSignStatusChanged, Magic Pairing not supported", buf, 2u);
  }
}

void sub_100560C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

void sub_100560C50(uint64_t a1)
{
  v2 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 245);
    *buf = 67109120;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resync Local Records to Cloud, in-progress - %d", buf, 8u);
  }

  if ((*(a1 + 245) & 1) == 0)
  {
    if (*(a1 + 208))
    {
      *(a1 + 245) = 1;
      v4 = dispatch_time(0, 120000000000);
      v5 = *(a1 + 208);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100563A00;
      block[3] = &unk_100ADF8F8;
      block[4] = a1;
      dispatch_after(v4, v5, block);
    }
  }
}

void sub_100560D78(uint64_t a1)
{
  if (*(a1 + 241) != 1)
  {
    v3 = 0;
    goto LABEL_12;
  }

  v2 = (a1 + 216);
  if ((*(a1 + 239) & 0x80000000) == 0)
  {
    if (!*(a1 + 239))
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (*(a1 + 224))
  {
    v2 = *v2;
LABEL_8:
    v4 = CFStringCreateWithCString(0, v2, 0x8000100u);
    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }

    if (*(a1 + 241))
    {
      goto LABEL_14;
    }

LABEL_12:
    v5 = @"SignedOut";
    goto LABEL_15;
  }

LABEL_13:
  v3 = 0;
LABEL_14:
  v5 = @"SignedIn";
LABEL_15:
  CFPreferencesSetAppValue(@"SignInstatus", v5, @"com.apple.BTServer");
  CFPreferencesSetAppValue(@"CloudAccountID", v3, @"com.apple.BTServer");
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_100560E64(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a2 = *(a1 + 241);
  v5 = (a1 + 216);
  if (*(a1 + 239) < 0)
  {
    sub_100008904(v8, *(a1 + 216), *(a1 + 224));
  }

  else
  {
    *v8 = *v5;
    *&v8[16] = *(a1 + 232);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = *v8;
  *(a3 + 16) = *&v8[16];
  v6 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "Not Signed in";
    if (*(a1 + 241))
    {
      v7 = "Signed in";
    }

    if (*(a1 + 239) < 0)
    {
      v5 = *v5;
    }

    *v8 = 136446723;
    *&v8[4] = v7;
    *&v8[12] = 2160;
    *&v8[14] = 1752392040;
    *&v8[22] = 2081;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Current Cloud Sign in status as %{public}s with login %{private, mask.hash}s", v8, 0x20u);
  }
}

uint64_t sub_100560FB0(uint64_t result, uint64_t a2, int a3)
{
  if (a3 > 4096)
  {
    v5 = result;
    v49[0] = 0;
    v49[1] = 0;
    sub_100007F88(v49, result + 104);
    v6 = *(v5 + 176);
    v7 = *(v5 + 184);
    if (v6 == v7)
    {
      return sub_1000088CC(v49);
    }

    while (1)
    {
      v8 = *v6;
      if (**v6 == a2)
      {
        break;
      }

      if (++v6 == v7)
      {
        return sub_1000088CC(v49);
      }
    }

    v9 = qword_100BCE960;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, v51);
      v10 = v52 >= 0 ? v51 : *v51;
      v11 = *(v5 + 242) ? "in" : "not in";
      *buf = 67109634;
      *&buf[4] = a3;
      *&buf[8] = 2082;
      *&buf[10] = v10;
      *&buf[18] = 2082;
      *&buf[20] = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Local Magic device info changed (%d) for device %{public}s with cloud sync is %{public}s progress", buf, 0x1Cu);
      if (v52 < 0)
      {
        operator delete(*v51);
      }
    }

    if (*(v5 + 242))
    {
      return sub_1000088CC(v49);
    }

    switch(a3)
    {
      case 4102:
        if ((sub_1000E31D0(a2) & 2) != 0)
        {
          v17 = qword_100BCE960;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, buf);
            v18 = buf[23] >= 0 ? buf : *buf;
            *v51 = 136446210;
            *&v51[4] = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Fake magic paired device %{public}s", v51, 0xCu);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          v19 = *(v8 + 21);
          if (v19 != 1)
          {
            if (!v19)
            {
              sub_1000DEEA4(a2, buf);
              sub_100538D30(a2, buf, 0);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              sub_10055993C(v5 + 176, a2);
              v20 = sub_1000E2738();
              (*(*v20 + 104))(v20, a2);
            }

            return sub_1000088CC(v49);
          }

          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          v26 = sub_1003360F8(off_100B50948, a2);
          if (!v26)
          {
            return sub_1000088CC(v49);
          }

          v28 = v8[3] != 0x101010101010101 || v8[4] != 0x101010101010101;
          v8[1] = 0x101010101010101;
          v8[2] = 0x101010101010101;
          *(v8 + 77) = 0;
          v29 = *(*v8 + 132);
          *(v8 + 78) = *(*v8 + 128);
          *(v8 + 41) = v29;
          v8[3] = 0x101010101010101;
          v8[4] = 0x101010101010101;
          if (*(v5 + 48) == 1)
          {
            sub_100561904(v26, v8);
          }

          if (!v28)
          {
            return sub_1000088CC(v49);
          }
        }

        else
        {
          if (*(v8 + 21))
          {
            return sub_1000088CC(v49);
          }

          if ((sub_1000E31D0(a2) & 2) != 0)
          {
            if (qword_100B50950 != -1)
            {
              sub_100841B9C();
            }

            if (!sub_10033748C(off_100B50948, a2))
            {
              return sub_1000088CC(v49);
            }
          }

          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          if (sub_1003360F8(off_100B50948, a2))
          {
            return sub_1000088CC(v49);
          }

          v15 = qword_100BCE960;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, buf);
            v16 = buf[23] >= 0 ? buf : *buf;
            *v51 = 136446210;
            *&v51[4] = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Seems like genuine magic paired device %{public}s, needs to be synced", v51, 0xCu);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }
        }

        break;
      case 4099:
        __dst[0] = 0;
        v12 = sub_10053E4E0(a2, __dst);
        if (HIDWORD(__dst[0]) == -1)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          v14 = qword_100BCE960;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_1000BE6F8((a2 + 128), v51);
            v30 = v52 >= 0 ? v51 : *v51;
            *buf = 136446722;
            *&buf[4] = v30;
            *&buf[12] = 1024;
            *&buf[14] = __dst[0];
            *&buf[18] = 1024;
            *&buf[20] = HIDWORD(__dst[0]);
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Dropping iCloud update for DID extended supported feature bits version 2, address: %{public}s, extended supported feature bits I1: 0x%x, I2: 0x%x", buf, 0x18u);
            if (v52 < 0)
            {
              operator delete(*v51);
            }
          }

          return sub_1000088CC(v49);
        }

        break;
      case 4098:
        sub_1000C23E0(a2, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          v21 = *&buf[8];
          operator delete(*buf);
          if (!v21)
          {
            goto LABEL_58;
          }
        }

        else if (!buf[23])
        {
LABEL_58:
          v47 = 1;
          v48 = 0;
          v46 = 0;
          if (sub_1000C2364(a2, &v48, &v46 + 1, &v46, &v47))
          {
            v22 = [CBProductInfo productInfoWithProductID:v46];
            v23 = [v22 productName];

            if (v23)
            {
              v24 = qword_100BCE960;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = v51;
                sub_1000E5A58(a2, v51);
                if (v52 < 0)
                {
                  v25 = *v51;
                }

                if (*(v8 + 111) < 0)
                {
                  sub_100008904(__dst, v8[11], v8[12]);
                }

                else
                {
                  *__dst = *(v8 + 11);
                  v45 = v8[13];
                }

                v31 = SHIBYTE(v45);
                v32 = __dst[0];
                sub_1000C23E0(a2, __p);
                v33 = __dst;
                if (v31 < 0)
                {
                  v33 = v32;
                }

                if (v43 >= 0)
                {
                  v34 = __p;
                }

                else
                {
                  v34 = __p[0];
                }

                *buf = 136446722;
                *&buf[4] = v25;
                *&buf[12] = 2080;
                *&buf[14] = v33;
                *&buf[22] = 2080;
                *&buf[24] = v34;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Device name changed to default for %{public}s, Old Name: %s, New Name: %s", buf, 0x20u);
                if (v43 < 0)
                {
                  operator delete(__p[0]);
                }

                if (SHIBYTE(v45) < 0)
                {
                  operator delete(__dst[0]);
                }

                if (v52 < 0)
                {
                  operator delete(*v51);
                }
              }

              sub_100007E30(buf, [v23 utf8ValueSafe]);
              __dst[0] = 0;
              sub_100016250(__dst);
              *v51 = SLODWORD(__dst[0]);
              *&v51[8] = SWORD2(__dst[0]);
              sub_100538494(a2, buf, v51);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }
          }
        }

        v35 = qword_100BCE960;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = v51;
          sub_1000E5A58(a2, v51);
          if (v52 < 0)
          {
            v36 = *v51;
          }

          if (*(v8 + 111) < 0)
          {
            sub_100008904(__dst, v8[11], v8[12]);
          }

          else
          {
            *__dst = *(v8 + 11);
            v45 = v8[13];
          }

          v37 = SHIBYTE(v45);
          v38 = __dst[0];
          sub_1000C23E0(a2, __p);
          v39 = __dst;
          if (v37 < 0)
          {
            v39 = v38;
          }

          if (v43 >= 0)
          {
            v40 = __p;
          }

          else
          {
            v40 = __p[0];
          }

          *buf = 136446722;
          *&buf[4] = v36;
          *&buf[12] = 2080;
          *&buf[14] = v39;
          *&buf[22] = 2080;
          *&buf[24] = v40;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Magic device name changed for %{public}s, Old Name: %s, New Name: %s", buf, 0x20u);
          if (v43 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v45) < 0)
          {
            operator delete(__dst[0]);
          }

          if (v52 < 0)
          {
            operator delete(*v51);
          }
        }

        sub_1000C23E0(a2, &v41);
        std::string::operator=((v8 + 11), &v41);
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        break;
    }

    if (*(v8 + 3) != 0 && *(v8 + 1) != 0)
    {
      sub_100559EDC(v5);
    }

    return sub_1000088CC(v49);
  }

  return result;
}

void sub_1005617CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v36 - 105) < 0)
  {
    operator delete(*(v36 - 128));
  }

  sub_1000088CC(&a27);
  _Unwind_Resume(a1);
}

void sub_100561904(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 78) << 40) | (*(a2 + 79) << 32) | (*(a2 + 80) << 24) | (*(a2 + 81) << 16) | (*(a2 + 82) << 8) | *(a2 + 83))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_100042378;
    v8[4] = nullsub_26;
    v8[5] = "";
    v9 = *(a2 + 77);
    v10 = *(a2 + 78);
    v11 = *(a2 + 82);
    v3 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
    v4 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
    if (v3 && (v5 = v4) != 0)
    {
      *v3 = *(a2 + 24);
      *v4 = *(a2 + 8);
      v6 = sub_100007EE8();
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100563658;
      v7[3] = &unk_100AE0EB8;
      v7[4] = v8;
      v7[5] = v3;
      v7[6] = v5;
      sub_10000CA94(v6, v7);
    }

    else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_1008428A8();
    }

    _Block_object_dispose(v8, 8);
  }
}

void sub_100561AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100561AC8(uint64_t a1, int a2)
{
  v4 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 244);
    *buf = 67109376;
    v10 = v5;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "deviceOnlineStatusChanged from [%d] to [%d]", buf, 0xEu);
  }

  v6 = *(a1 + 208);
  if (v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100561BE4;
    v7[3] = &unk_100AE15D8;
    v7[4] = a1;
    v8 = a2;
    dispatch_async(v6, v7);
  }
}

void sub_100561BE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 244) & 1) == 0 && *(a1 + 40) == 1)
  {
    sub_100560C50(*(a1 + 32));
  }

  *(v2 + 244) = *(a1 + 40);
}

void sub_100561C34(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a1 + 241) == 1 && (*(a2 + 1044) != 1 || (sub_1000E2570(a1, a2) & 1) != 0))
  {
    v4 = qword_100BCE960;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v5 = v21 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "updateAACPVersionInfo: Updating %{public}s", buf, 0xCu);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1000BE6F8((a2 + 128), __p);
    if (v21 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    v7 = [NSString stringWithUTF8String:v6];
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = +[CloudPairing sharedInstance];
    v9 = [v8 cloudClient];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100561F64;
    v17[3] = &unk_100AFC8B8;
    v10 = v7;
    v18 = v10;
    v19 = a2;
    [v9 deviceRecord:v10 completion:v17];

    v11 = +[CloudPairing sharedInstance];
    v12 = [v11 cloudClient];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1005626B4;
    v15[3] = &unk_100AFC920;
    v13 = v10;
    v16 = v13;
    [v12 deviceSupportInformationRecord:v13 completion:v15];
  }

  else
  {
    v14 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEBUG))
    {
      sub_1008428E4(a1, v14);
    }
  }
}

void sub_100561F64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842960();
    }

LABEL_4:

    goto LABEL_5;
  }

  v7 = sub_100777FF4(*(a1 + 32));
  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842AD8();
    }

    goto LABEL_4;
  }

  if (qword_100B508F0 != -1)
  {
    sub_100841AAC();
  }

  v8 = sub_1000504C8(off_100B508E8, v7, 0);
  if (!v8)
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842A9C();
    }

    goto LABEL_4;
  }

  v9 = qword_100BCE960;
  v10 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "updateAACPVersionInfo: updating pid/vid for cloudDevice", buf, 2u);
    }

    *buf = 0;
    LODWORD(v32) = 0;
    LODWORD(__p[0]) = 0;
    LODWORD(v35) = 0;
    if (sub_1000C2364(*(a1 + 40), buf, &v32, __p, &v35))
    {
      v11 = [NSString stringWithFormat:@"%u", LODWORD(__p[0])];
      [v5 setProductID:v11];

      v12 = [NSString stringWithFormat:@"%u", v32];
      [v5 setVendorID:v12];
    }

    else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_1008429D0();
    }

LABEL_28:
    v32 = 0;
    v33 = 0;
    v34 = 0;
    if (sub_1000DFC04(v8, &v32))
    {
      if (qword_100B50950 != -1)
      {
        sub_100841B9C();
      }

      v13 = off_100B50948;
      memset(v31, 0, sizeof(v31));
      sub_10003E428(v31, v32, v33, 0xAAAAAAAAAAAAAAABLL * ((v33 - v32) >> 3));
      LODWORD(v13) = sub_10034A4D4(v13, v31, 1u);
      *buf = v31;
      sub_1000161FC(buf);
      if (v13)
      {
        v14 = v32 + 1;
        if (SHIBYTE(v32[1].__r_.__value_.__r.__words[2]) < 0)
        {
          v14 = v14->__r_.__value_.__r.__words[0];
        }

        v15 = [NSString stringWithUTF8String:v14];
        [v5 setModelNumber:v15];
      }

      if (qword_100B50950 != -1)
      {
        sub_100841B9C();
      }

      v16 = off_100B50948;
      memset(v30, 0, sizeof(v30));
      sub_10003E428(v30, v32, v33, 0xAAAAAAAAAAAAAAABLL * ((v33 - v32) >> 3));
      LODWORD(v16) = sub_10034A4D4(v16, v30, 2u);
      *buf = v30;
      sub_1000161FC(buf);
      if (v16)
      {
        v17 = v32 + 2;
        if (SHIBYTE(v32[2].__r_.__value_.__r.__words[2]) < 0)
        {
          v17 = v17->__r_.__value_.__r.__words[0];
        }

        v18 = [NSString stringWithUTF8String:v17];
        [v5 setManufacturer:v18];
      }

      v19 = qword_100BCE960;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v8, __p);
        if (v37 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        v21 = [v5 vendorID];
        v22 = [v5 productID];
        v23 = [v5 modelNumber];
        v24 = [v5 manufacturer];
        *buf = 136447234;
        *&buf[4] = v20;
        v39 = 2112;
        v40 = v21;
        v41 = 2112;
        v42 = v22;
        v43 = 2112;
        v44 = v23;
        v45 = 2112;
        v46 = v24;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "updateAACPVersionInfo: cloudDevice for %{public}s vendorId = %@ productId = %@ model = %@ manufacturer = %@ ", buf, 0x34u);

        if (v37 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v25 = +[CloudPairing sharedInstance];
      v26 = [v25 cloudClient];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100562654;
      v28[3] = &unk_100AFC890;
      v29 = 0;
      [v26 createDeviceRecord:v5 completion:v28];

      v27 = v29;
    }

    else
    {
      v27 = qword_100BCE960;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v8, buf);
        sub_100842A0C();
      }
    }

    v35 = &v32;
    sub_1000161FC(&v35);

    goto LABEL_5;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "updateAACPVersionInfo: Creating new cloudDevice", buf, 2u);
  }

  v5 = sub_100558B38(v8);
  if (v5)
  {
    goto LABEL_28;
  }

  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100842A60();
  }

LABEL_5:
}

void sub_100562550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  *(v35 - 144) = &a21;
  sub_1000161FC((v35 - 144));

  _Unwind_Resume(a1);
}

void sub_100562654(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) && os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100842B14();
  }
}

void sub_1005626B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842B84();
    }
  }

  else
  {
    v8 = sub_100777FF4(*(a1 + 32));
    if (v8)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100841AAC();
      }

      v9 = sub_1000504C8(off_100B508E8, v8, 0);
      if (v9)
      {
        if (!v5)
        {
          v10 = qword_100BCE960;
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "updateAACPVersionInfo: Creating new deviceSupportInformation", buf, 2u);
          }

          v6 = [[BTCloudDeviceSupportInformation alloc] initWithBluetoothAddress:*(a1 + 32)];
        }

        *buf = 0;
        v40 = 0;
        v41 = 0;
        if (sub_1000DFC04(v9, buf))
        {
          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          v11 = off_100B50948;
          memset(v37, 0, sizeof(v37));
          sub_10003E428(v37, *buf, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - *buf) >> 3));
          LODWORD(v11) = sub_10034A4D4(v11, v37, 3u);
          __p.__r_.__value_.__r.__words[0] = v37;
          sub_1000161FC(&__p);
          if (v11)
          {
            v12 = (*buf + 72);
            if (*(*buf + 95) < 0)
            {
              v12 = *v12;
            }

            v13 = [NSString stringWithUTF8String:v12];
            [v6 setCaseSerialNumber:v13];
          }

          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          v14 = off_100B50948;
          memset(v36, 0, sizeof(v36));
          sub_10003E428(v36, *buf, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - *buf) >> 3));
          LODWORD(v14) = sub_10034A4D4(v14, v36, 6u);
          __p.__r_.__value_.__r.__words[0] = v36;
          sub_1000161FC(&__p);
          if (v14)
          {
            v15 = (*buf + 144);
            if (*(*buf + 167) < 0)
            {
              v15 = *v15;
            }

            v16 = [NSString stringWithUTF8String:v15];
            [v6 setHardwareVersion:v16];
          }

          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          v17 = off_100B50948;
          memset(v35, 0, sizeof(v35));
          sub_10003E428(v35, *buf, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - *buf) >> 3));
          LODWORD(v17) = sub_10034A4D4(v17, v35, 8u);
          __p.__r_.__value_.__r.__words[0] = v35;
          sub_1000161FC(&__p);
          if (v17)
          {
            v18 = (*buf + 192);
            if (*(*buf + 215) < 0)
            {
              v18 = *v18;
            }

            v19 = [NSString stringWithUTF8String:v18];
            [v6 setLeftBudSerialNumber:v19];
          }

          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          v20 = off_100B50948;
          memset(v34, 0, sizeof(v34));
          sub_10003E428(v34, *buf, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - *buf) >> 3));
          LODWORD(v20) = sub_10034A4D4(v20, v34, 9u);
          __p.__r_.__value_.__r.__words[0] = v34;
          sub_1000161FC(&__p);
          if (v20)
          {
            v21 = (*buf + 216);
            if (*(*buf + 239) < 0)
            {
              v21 = *v21;
            }

            v22 = [NSString stringWithUTF8String:v21];
            [v6 setRightBudSerialNumber:v22];
          }

          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          v23 = off_100B50948;
          memset(v33, 0, sizeof(v33));
          sub_10003E428(v33, *buf, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - *buf) >> 3));
          LODWORD(v23) = sub_10034A4D4(v23, v33, 0xAu);
          __p.__r_.__value_.__r.__words[0] = v33;
          sub_1000161FC(&__p);
          if (v23)
          {
            v24 = (*buf + 240);
            if (*(*buf + 263) < 0)
            {
              v24 = *v24;
            }

            v25 = [NSString stringWithUTF8String:v24];
            [v6 setBudsFirmwareVersion:v25];
          }

          memset(&__p, 0, sizeof(__p));
          if (sub_100541DD8(v9, &__p))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            v27 = [NSString stringWithUTF8String:p_p];
            [v6 setAncAssetVersion:v27];
          }

          v28 = qword_100BCE960;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v9, v42);
            v29 = v43 >= 0 ? v42 : v42[0];
            *v44 = 136446210;
            *&v44[4] = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "updateAACPVersionInfo: Writing cloud record for %{public}s", v44, 0xCu);
            if (v43 < 0)
            {
              operator delete(v42[0]);
            }
          }

          +[CloudPairing sharedInstance];
          if (v5)
            v30 = {;
            v31 = [v30 cloudClient];
            [v31 modifyDeviceSupportInformationRecord:v6 completion:&stru_100AFC8F8];
          }

          else
            v30 = {;
            v31 = [v30 cloudClient];
            [v31 createDeviceSupportInformationRecord:v6 completion:&stru_100AFC8D8];
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v32 = qword_100BCE960;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_1000E5A58(v9, &__p);
            sub_100842A0C();
          }
        }

        *v44 = buf;
        sub_1000161FC(v44);
      }

      else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        sub_100842A9C();
      }
    }

    else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842AD8();
    }
  }
}

void sub_100562D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  __p = &a30;
  sub_1000161FC(&__p);

  _Unwind_Resume(a1);
}

void sub_100562E60(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100842BF4();
  }
}

void sub_100562EB8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100842C64();
  }
}

void sub_100562F10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = qword_100BCE960;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v4 = v13 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "updateCaseInfo: Updating %{public}s", buf, 0xCu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1000BE6F8((a2 + 128), __p);
    if (v13 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = [NSString stringWithUTF8String:v5];
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = +[CloudPairing sharedInstance];
    v8 = [v7 cloudClient];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100563130;
    v10[3] = &unk_100AFC920;
    v9 = v6;
    v11 = v9;
    [v8 deviceSupportInformationRecord:v9 completion:v10];
  }
}

void sub_100563130(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842CD4();
    }

    goto LABEL_34;
  }

  if (!v5)
  {
    v8 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "updateCaseInfo: Creating new deviceSupportInformation", buf, 2u);
    }

    v6 = [[BTCloudDeviceSupportInformation alloc] initWithBluetoothAddress:*(a1 + 32)];
  }

  v9 = [v6 bluetoothAddress];
  v10 = sub_100777FF4(v9);

  if (v10)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100841B4C();
    }

    v11 = sub_1000504C8(off_100B508E8, v10, 0);
    if (v11)
    {
      v12 = v23;
      v24 = 0;
      v22 = 0u;
      *v23 = 0u;
      *buf = 0u;
      sub_100007E30(v23, "");
      if (!sub_1000E0610(v11, buf))
      {
        v14 = qword_100BCE960;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1000E5A58(v11, v27);
          sub_100842D44();
        }

        goto LABEL_32;
      }

      v13 = [NSString stringWithFormat:@"%llu", v22];
      [v6 setCaseFirmwareVersion:v13];

      if (SHIBYTE(v24) < 0)
      {
        if (v23[1] <= 1)
        {
LABEL_21:
          v16 = qword_100BCE960;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v11, __p);
            if (v26 >= 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = __p[0];
            }

            v18 = [v6 caseFirmwareVersion];
            v19 = [v6 caseName];
            *v27 = 136446722;
            v28 = v17;
            v29 = 2112;
            v30 = v18;
            v31 = 2112;
            v32 = v19;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "updateCaseInfo: Writing cloud record for %{public}s: caseVersion %@, caseName %@", v27, 0x20u);
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }
          }

          +[CloudPairing sharedInstance];
          if (v5)
            v14 = {;
            v20 = [v14 cloudClient];
            [v20 modifyDeviceSupportInformationRecord:v6 completion:&stru_100AFC960];
          }

          else
            v14 = {;
            v20 = [v14 cloudClient];
            [v20 createDeviceSupportInformationRecord:v6 completion:&stru_100AFC940];
          }

LABEL_32:
          if (SHIBYTE(v24) < 0)
          {
            operator delete(v23[0]);
          }

          goto LABEL_34;
        }

        v12 = v23[0];
      }

      else if (HIBYTE(v24) <= 1u)
      {
        goto LABEL_21;
      }

      v15 = [NSString stringWithUTF8String:v12];
      [v6 setCaseName:v15];

      goto LABEL_21;
    }
  }

LABEL_34:
}

void sub_1005634E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1005635A8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100842D98();
  }
}

void sub_100563600(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100842E08();
  }
}

void sub_100563658(void *a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100841BC4();
  }

  sub_10079E618(off_100B51070, *(a1[4] + 8) + 48, a1[5]);
  if (qword_100B508C0 != -1)
  {
    sub_100841BD8();
  }

  sub_1007BE07C(off_100B508B8, (*(a1[4] + 8) + 48), a1[6]);
  free(a1[5]);
  v2 = a1[6];

  free(v2);
}

void sub_1005636F8(uint64_t a1)
{
  v2 = sub_1000E25D8();
  v3 = qword_100BCE960;
  v4 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "UpdateCloudDeviceInformation triggered", __p, 2u);
    }

    if (*(a1 + 49) == 0)
    {
      v9 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UpdateCloudDeviceInformation trigger, no master key found, pull from cloud", __p, 2u);
      }

      (*(**(a1 + 168) + 16))(*(a1 + 168));
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      sub_100007F88(__p, a1 + 104);
      v5 = *(a1 + 176);
      v6 = *(a1 + 184);
      sub_1000088CC(__p);
      if (v5 == v6 && (*(a1 + 240) & 1) == 0)
      {
        v10 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UpdateCloudDeviceInformation triggers, Master key is available but no Magic Paired Devices. Let's fetch if any available.", __p, 2u);
        }

        (*(**(a1 + 168) + 32))(*(a1 + 168));
      }

      else
      {
        v15[0] = 0;
        v15[1] = 0;
        sub_100007F88(v15, a1 + 104);
        for (i = *(a1 + 176); i != *(a1 + 184); ++i)
        {
          v8 = *i;
          if (*(*i + 84) != 1 && *(v8 + 24) != 0 && *(v8 + 8) != 0)
          {
            v11 = qword_100BCE960;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(*v8, __p);
              if (v14 >= 0)
              {
                v12 = __p;
              }

              else
              {
                v12 = __p[0];
              }

              *buf = 136446210;
              v17 = v12;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Local device info for device %{public}s needs to be pushed again", buf, 0xCu);
              if (v14 < 0)
              {
                operator delete(__p[0]);
              }
            }

            goto LABEL_30;
          }
        }

        if (*(a1 + 243) != 1)
        {
          goto LABEL_31;
        }

LABEL_30:
        *(a1 + 243) = 0;
        sub_100559EDC(a1);
LABEL_31:
        sub_10000801C(v15);
        sub_1000088CC(v15);
      }
    }
  }

  else if (v4)
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Skipping UpdateCloudDeviceInformation for Magic Pairing, not supported on this platform", __p, 2u);
  }
}

void sub_1005639D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100563A00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v1[241];
    v4 = v1[244];
    v5[0] = 67109376;
    v5[1] = v3;
    v6 = 1024;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Initiate Sync, Signed in - %d, Network available - %d", v5, 0xEu);
  }

  if (v1[241] == 1 && v1[244] == 1)
  {
    sub_1005636F8(v1);
  }

  v1[245] = 0;
}

void sub_100563ADC(uint64_t a1, uint64_t a2)
{
  if (sub_1000E25D8() && (*(a1 + 240) & 1) != 0)
  {
    if (!a2 || (*(a1 + 241) & 1) == 0)
    {
      return;
    }

    v4 = *a2;
    v5 = qword_100BCE960;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v4, &v83);
      v6 = (v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v83 : v83.__r_.__value_.__r.__words[0];
      *buf = 136446210;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "writeMagicPairingSettingToCloud Update cloud device information, write magic pairing setting to cloud for %{public}s", buf, 0xCu);
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }
    }

    v77 = 1;
    v78 = 0;
    v76 = 0;
    if ((sub_1000C2364(v4, &v78, &v76 + 1, &v76, &v77) & 1) == 0)
    {
      v7 = qword_100BCE960;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v4, buf);
        v8 = v82 >= 0 ? buf : *buf;
        LODWORD(v83.__r_.__value_.__l.__data_) = 136446722;
        *(v83.__r_.__value_.__r.__words + 4) = v8;
        WORD2(v83.__r_.__value_.__r.__words[1]) = 1024;
        *(&v83.__r_.__value_.__r.__words[1] + 6) = v76;
        WORD1(v83.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(v83.__r_.__value_.__r.__words[2]) = HIDWORD(v76);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "writeMagicPairingSettingToCloud Error fetching DeviceId for magic paired device %{public}s with pid: %x, vid: %x", &v83, 0x18u);
        if (v82 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    v9 = sub_1000E3314(v4);
    if (v9 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9 == 1;
    }

    if (sub_1000E356C(v4))
    {
      v11 = v10 | 4;
    }

    else
    {
      v11 = v10;
    }

    v12 = qword_100BCE960;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v4, &v83);
      v13 = SHIBYTE(v83.__r_.__value_.__r.__words[2]);
      v14 = v83.__r_.__value_.__r.__words[0];
      v15 = sub_1000E356C(v4);
      v16 = &v83;
      v17 = "disabled";
      if (v13 < 0)
      {
        v16 = v14;
      }

      if (v15)
      {
        v17 = "Enabled";
      }

      *buf = 136446466;
      *&buf[4] = v16;
      v80 = 2080;
      v81 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "In Ear Detection  state for device  %{public}s is %s", buf, 0x16u);
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }
    }

    if (sub_1000E2140(v4, 14))
    {
      v18 = v11 | 8;
    }

    else
    {
      v18 = v11;
    }

    if (sub_1000E2140(v4, 22))
    {
      v18 |= 0x10u;
    }

    v71 = sub_1000E3188(v4);
    v19 = sub_1000E3188(v4);
    v70 = sub_1000E06EC(v4);
    v69 = sub_1000E06EC(v4);
    v68 = sub_1000E32CC(v4);
    v66 = sub_1000E32CC(v4);
    v20 = sub_1000E2140(v4, 32);
    v67 = sub_1005493C4(v4);
    v65 = sub_1000E31D0(v4);
    if (v20)
    {
      v21 = 64;
    }

    else
    {
      v21 = 0;
    }

    v64 = v21;
    v22 = _os_feature_enabled_impl();
    if (v22)
    {
      v23 = sub_10054B3E0(v4);
      v24 = v23 == 0;

      if (v24)
      {
        v72 = 0;
      }

      else
      {
        v25 = objc_alloc_init(NSDateFormatter);
        v26 = +[NSTimeZone localTimeZone];
        [v25 setTimeZone:v26];

        [v25 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSSSSSZZZZZ"];
        v27 = sub_10054B3E0(v4);
        v72 = [v25 stringFromDate:v27];
      }

      if (sub_10054B398(v4) != -1)
      {
        v73 = [NSString stringWithFormat:@"%lu", sub_10054B398(v4)];
LABEL_54:
        v31 = [BTMagicPairingSettings alloc];
        sub_1000BE6F8((v4 + 128), &v83);
        if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v83;
        }

        else
        {
          v32 = v83.__r_.__value_.__r.__words[0];
        }

        v33 = [NSString stringWithUTF8String:v32];
        v34 = [v31 initWithBluetoothAddress:v33];

        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        v35 = [NSString stringWithFormat:@"%u", HIDWORD(v76)];
        [v34 setVendorID:v35];

        v36 = [NSString stringWithFormat:@"%u", v76];
        [v34 setProductID:v36];

        v37 = [NSData dataWithBytes:a1 + 49 length:16];
        [v34 setMasterKey:v37];

        v38 = [NSData dataWithBytes:a1 + 65 length:16];
        [v34 setMasterHint:v38];

        v39 = [NSData dataWithBytes:a2 + 40 length:16];
        [v34 setAccessoryKey:v39];

        v40 = [NSData dataWithBytes:a2 + 56 length:16];
        [v34 setAccessoryHint:v40];

        v41 = [NSData dataWithBytes:a2 + 24 length:16];
        [v34 setEncryptionKey:v41];

        v42 = [NSData dataWithBytes:a2 + 8 length:16];
        [v34 setIrk:v42];

        v43 = [NSString stringWithFormat:@"%u", *(a2 + 72)];
        [v34 setRatchet:v43];

        v44 = [NSString stringWithFormat:@"%d", v18];
        [v34 setSettingsMask:v44];

        v45 = [NSString stringWithFormat:@"%d", (v19 >> 4) & 0xFF0 | v71];
        [v34 setButtonModes:v45];

        v46 = [NSString stringWithFormat:@"%u", sub_1000C2398(v4)];
        [v34 setColor:v46];

        v47 = [NSString stringWithFormat:@"%d", 2];
        [v34 setVersion:v47];

        if (qword_100B50AC0 != -1)
        {
          sub_100841F18();
        }

        v48 = [NSString stringWithFormat:@"%u", sub_1000DFA00(off_100B50AB8, v4)];
        [v34 setSupportedServices:v48];

        v49 = [NSString stringWithFormat:@"%u", (32 * v70) & 0xE000 | ((v69 & 7) << 10) | ((v68 & 7) << 7) | v64 & 0xFFFFFFF1 | (4 * (v67 & 3)) | (2 * (v65 & 1))];
        [v34 setListeningServices:v49];

        v50 = [NSString stringWithFormat:@"%u", v66 & 0xF];
        [v34 setListeningServicesV2:v50];

        if (v22)
        {
          if (v73)
          {
            [v34 setOptimizedBatteryCharging:v73];
          }

          if (v72)
          {
            [v34 setOptimizedBatteryFullChargeDeadline:v72];
          }
        }

        __val = 0;
        *buf = 0;
        if (sub_10053E4A8(v4, &__val))
        {
          v51 = qword_100BCE960;
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v83.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(v83.__r_.__value_.__r.__words[0]) = __val;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "DID supported fetaure bits (version 1) is updated to 0x%x. Sync to iCloud", &v83, 8u);
          }

          std::to_string(&v83, __val);
          if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v52 = &v83;
          }

          else
          {
            v52 = v83.__r_.__value_.__r.__words[0];
          }

          v53 = [NSString stringWithUTF8String:v52];
          [v34 setDeviceIDFeatureBitsV1:v53];

          if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v83.__r_.__value_.__l.__data_);
          }

          v54 = sub_10053E4E0(v4, buf);
          if (*&buf[4] == -1)
          {
            v55 = 0;
          }

          else
          {
            v55 = v54;
          }

          if (v55 == 1)
          {
            v56 = qword_100BCE960;
            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v83.__r_.__value_.__l.__data_) = 67109376;
              HIDWORD(v83.__r_.__value_.__r.__words[0]) = *buf;
              LOWORD(v83.__r_.__value_.__r.__words[1]) = 1024;
              *(&v83.__r_.__value_.__r.__words[1] + 2) = *&buf[4];
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "DID extended supported fetaure bits (version 2) is updated to I1 0x%x I2 0x%x. Sync to iCloud", &v83, 0xEu);
            }

            std::to_string(&v83, *&buf[4] | (*buf << 32));
            if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v57 = &v83;
            }

            else
            {
              v57 = v83.__r_.__value_.__r.__words[0];
            }

            v58 = [NSString stringWithUTF8String:v57];
            [v34 setDeviceIDFeatureBitsV2:v58];

            if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v83.__r_.__value_.__l.__data_);
            }
          }
        }

        v59 = sub_100558B38(v4);
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEBUG))
        {
          sub_100842E78();
        }

        if (v59)
        {
          v60 = +[CloudPairing sharedInstance];
          v61 = [v60 cloudClient];
          [v61 createDeviceRecord:v59 completion:&stru_100AFC980];
        }

        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEBUG))
        {
          sub_100842EEC();
        }

        v62 = +[CloudPairing sharedInstance];
        v63 = [v62 cloudClient];
        v74[0] = _NSConcreteStackBlock;
        v74[1] = 3221225472;
        v74[2] = sub_1005648E4;
        v74[3] = &unk_100AFC848;
        v74[4] = v4;
        [v63 createMagicSettingsRecord:v34 completion:v74];

        return;
      }
    }

    else
    {
      v72 = 0;
    }

    v73 = 0;
    goto LABEL_54;
  }

  v28 = qword_100BCE960;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = sub_1000E25D8();
    v30 = "supported";
    if (v29)
    {
      v30 = "initialized";
    }

    LODWORD(v83.__r_.__value_.__l.__data_) = 136315138;
    *(v83.__r_.__value_.__r.__words + 4) = v30;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "writeMagicPairingSettingToCloud, Magic Pairing not %s.", &v83, 0xCu);
  }
}

void sub_100564664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  if (*(v18 - 105) < 0)
  {
    operator delete(*(v18 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_10056488C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100842F60();
  }
}

void sub_1005648E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842FD0();
    }
  }

  else
  {
    v4 = qword_100BCE960;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      v5 = v7 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Magic Setting created cloud device %{public}s", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_100564A10(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE960;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v7 = v19 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v21 = v7;
    v22 = 1024;
    v23 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Pairing Completed for device: %{public}s with result - %d", buf, 0x12u);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!a3)
  {
    v8 = +[CloudPairing sharedInstance];
    v9 = [v8 cloudClient];
    sub_1000BE6F8((a2 + 128), __p);
    if (v19 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = [NSString stringWithUTF8String:v10];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100564D2C;
    v17[3] = &unk_100AFC868;
    v17[4] = a2;
    [v9 magicSettingsRecord:v11 completion:v17];

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = +[CloudPairing sharedInstance];
    v13 = [v12 cloudClient];
    sub_1000BE6F8((a2 + 128), __p);
    if (v19 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    v15 = [NSString stringWithUTF8String:v14];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100565070;
    v16[3] = &unk_100AFC9A0;
    v16[4] = a1;
    v16[5] = a2;
    [v13 deviceRecord:v15 completion:v16];

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100564CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100564D2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v16 = qword_100BCE960;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), &__p);
      sub_100843040();
    }

    goto LABEL_20;
  }

  v8 = [v5 supportedServices];
  v9 = [v8 length];

  if (v9)
  {
    v10 = qword_100BCE960;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*(a1 + 32), &__p);
      v11 = v24 >= 0 ? &__p : __p;
      *buf = 138412546;
      *&buf[4] = v5;
      v26 = 2082;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Pairing] fetched magic settings: %@ for device: %{public}s", buf, 0x16u);
      if (v24 < 0)
      {
        operator delete(__p);
      }
    }

    for (i = 0; i != 31; ++i)
    {
      v13 = [v5 supportedServices];
      v14 = ([v13 integerValue] & (1 << i)) == 0;

      if (!v14)
      {
        v15 = *(a1 + 32);
        *buf = 0;
        sub_100016250(buf);
        *&__p = *buf;
        *(&__p + 1) = *&buf[4];
        sub_100539554(v15, 1 << i, 4, &__p, 1);
      }
    }

    v16 = qword_100BCE960;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 supportedServices];
      v18 = [v17 intValue];
      if (qword_100B50AC0 != -1)
      {
        sub_100841F18();
      }

      v19 = sub_1000DFA00(off_100B50AB8, *(a1 + 32));
      v20 = [v5 version];
      v21 = [v20 intValue];
      LODWORD(__p) = 67109632;
      DWORD1(__p) = v18;
      WORD4(__p) = 1024;
      *(&__p + 10) = v19;
      HIWORD(__p) = 1024;
      v23 = v21;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cloud: Device service capability details: received service mask %x, device service mask after update %x, blob version %d", &__p, 0x14u);
    }

LABEL_20:
  }
}

void sub_100564FF0(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_100565070(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = qword_100BCE960;
  v9 = v8;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 40), __p);
      sub_100843090();
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*(a1 + 40), __p);
      v10 = v19 >= 0 ? __p : __p[0];
      *buf = 138412546;
      v21 = v5;
      v22 = 2082;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Pairing] fetched cloud record: %@ for device: %{public}s", buf, 0x16u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = [v5 bluetoothAddress];
    v11 = v9;
    sub_100007E30(v16, [v9 UTF8String]);
    v12 = [v5 nickname];
    v13 = v12;
    sub_100007E30(v14, [v12 UTF8String]);
    (*(*v7 + 96))(v7, v16, v14);
    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }
}

void sub_100565304(uint64_t a1, int a2)
{
  v3 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Airplane mode is now %d", v4, 8u);
  }
}

uint64_t sub_1005653B4(uint64_t a1, int a2)
{
  v4 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "fail";
    if (a2)
    {
      v5 = "success";
    }

    LODWORD(v10) = 136446210;
    *(&v10 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device info upload status from cloud with status = %{public}s", &v10, 0xCu);
  }

  v10 = 0uLL;
  sub_100007F88(&v10, a1 + 104);
  if (a2)
  {
    v6 = *(a1 + 176);
    for (i = *(a1 + 184); v6 != i; *(v8 + 84) = 1)
    {
      v8 = *v6++;
    }

    *(a1 + 243) = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_1008430E0();
    }

    *(a1 + 243) = *(a1 + 176) == *(a1 + 184);
  }

  sub_1005599FC(a1);
  return sub_1000088CC(&v10);
}

void sub_100565518(void *a1, char *a2, uint64_t a3)
{
  v4 = a2;
  if ((*(a3 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a3 + 23))
    {
      goto LABEL_3;
    }

LABEL_23:
    if (a2[23] < 0)
    {
      sub_100008904(__dst, *a2, *(a2 + 1));
    }

    else
    {
      *__dst = *a2;
      v23 = *(a2 + 2);
    }

    (*(*a1 + 104))(a1, __dst);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__dst[0]);
    }

    return;
  }

  if (!*(a3 + 8))
  {
    goto LABEL_23;
  }

LABEL_3:
  v6 = a2[23];
  v21 = 0;
  v20 = 0;
  if (v6 < 0)
  {
    a2 = *a2;
  }

  if (!sub_10009D0B4(&v20, a2))
  {
LABEL_32:
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100843198();
    }

    return;
  }

  if (!v20)
  {
    v15 = 1;
    while (v15 != 6)
    {
      if (*(&v20 + v15++))
      {
        if ((v15 - 2) < 5)
        {
          goto LABEL_7;
        }

        goto LABEL_32;
      }
    }

    goto LABEL_32;
  }

LABEL_7:
  if (qword_100B508F0 != -1)
  {
    sub_100841B4C();
  }

  v7 = sub_1000E6554(off_100B508E8, &v20, 0);
  v8 = qword_100BCE960;
  if (v7)
  {
    v9 = qword_100BCE960;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v7, __p);
      if (v19 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      v11 = a3;
      if (*(a3 + 23) < 0)
      {
        v11 = *a3;
      }

      *buf = 136446466;
      v25 = v10;
      v26 = 2080;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device's user-defined name changing for %{public}s, new nickname: %s", buf, 0x16u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100538D30(v7, a3, 0);
    __p[0] = 0;
    __p[1] = 0;
    sub_100007F88(__p, (a1 + 13));
    v12 = a1[22];
    v13 = a1[23];
    while (v12 != v13)
    {
      v14 = *v12;
      if (**v12 == v7)
      {
        if (*(a3 + 23) < 0)
        {
          sub_100008904(&v17, *a3, *(a3 + 8));
        }

        else
        {
          v17 = *a3;
        }

        std::string::operator=((v14 + 11), &v17);
        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }

        break;
      }

      ++v12;
    }

    sub_1000088CC(__p);
  }

  else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_10084311C(v4 + 23, v4, v8);
  }
}

uint64_t sub_10056586C(uint64_t a1, uint64_t a2)
{
  v32[0] = 0;
  v32[1] = 0;
  sub_100007F88(v32, a1 + 104);
  v31 = 0;
  v30 = 0;
  v4 = a2;
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  if (!sub_10009D0B4(&v30, v4))
  {
    goto LABEL_49;
  }

  if (!v30)
  {
    v20 = 1;
    do
    {
      if (v20 == 6)
      {
        goto LABEL_49;
      }
    }

    while (!*(&v30 + v20++));
    if ((v20 - 2) >= 5)
    {
LABEL_49:
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        sub_100843198();
      }

      return sub_1000088CC(v32);
    }
  }

  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  if (qword_100B50F88 != -1)
  {
    sub_100841B74();
  }

  sub_10009DB3C(off_100B50F80, v28);
  v5 = v28[0];
  if (v28[1] != v28[0])
  {
    while (1)
    {
      v6 = *v5;
      sub_1000BE6F8((*v5 + 128), __p);
      v7 = *(a2 + 23);
      v8 = v27;
      v10 = __p[0];
      v9 = __p[1];
      if (v27 < 0)
      {
        v11 = __p[0];
      }

      else
      {
        v9 = v27;
        v11 = __p;
      }

      if ((v7 & 0x80u) == 0)
      {
        v12 = a2;
      }

      else
      {
        v7 = *(a2 + 8);
        v12 = *a2;
      }

      if (v7 >= v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = v7;
      }

      v14 = v7 == v9;
      if (memcmp(v11, v12, v13))
      {
        v14 = 0;
      }

      if (v8 < 0)
      {
        operator delete(v10);
        if (v14)
        {
LABEL_23:
          for (i = *(a1 + 176); i != *(a1 + 184); ++i)
          {
            if (**i == v6)
            {
              v18 = qword_100BCE960;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(v6, __p);
                v19 = v27 >= 0 ? __p : __p[0];
                *buf = 136446210;
                v34 = v19;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Magic Device do not set empty nickname - %{public}s", buf, 0xCu);
                if (v27 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              goto LABEL_42;
            }
          }

          v16 = qword_100BCE960;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v6, __p);
            v17 = v27 >= 0 ? __p : __p[0];
            *buf = 136446210;
            v34 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device nickname being set to empty for %{public}s", buf, 0xCu);
            if (v27 < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_100007E30(__p, "");
          sub_100538D30(v6, __p, 0);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else if (v14)
      {
        goto LABEL_23;
      }

LABEL_42:
      if (++v5 == v28[1])
      {
        goto LABEL_43;
      }
    }
  }

  if (qword_100B508F0 != -1)
  {
    sub_100841B4C();
  }

  v23 = sub_1000E6554(off_100B508E8, &v30, 0);
  if (v23)
  {
    v24 = qword_100BCE960;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v23, __p);
      v25 = v27 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v34 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Non-paired device nickname being set to empty for %{public}s", buf, 0xCu);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100007E30(__p, "");
    sub_100538D30(v23, __p, 0);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_43:
  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  return sub_1000088CC(v32);
}

void sub_100565C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a22);
  _Unwind_Resume(a1);
}

void sub_100565D28(uint64_t a1, uint64_t a2)
{
  if (sub_1000E25D8())
  {
    sub_10053781C(a2, __p);
    if (v21 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    v4 = [NSString stringWithUTF8String:v3];
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if ([v4 hasSuffix:@" - Find My"])
    {
      v5 = qword_100BCE960;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v6 = v21 >= 0 ? __p : __p[0];
        *buf = 136446210;
        v23 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device has FM suffix: %{public}s", buf, 0xCu);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }
      }

      *buf = *(a2 + 128);
      LOWORD(v23) = *(a2 + 132);
      v7 = [NSData dataWithBytes:buf length:6];
      __p[0] = 0;
      __p[1] = 0;
      v21 = 0;
      sub_1000BE6F8(buf, __p);
      v8 = [v4 substringToIndex:{objc_msgSend(v4, "length") - objc_msgSend(@" - Find My", "length")}];
      v9 = objc_alloc_init(SPOwnerInterface);
      v10 = [v9 ownerSession];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100566074;
      v14[3] = &unk_100AFC9C8;
      v11 = v9;
      v15 = v11;
      v16 = v10;
      v19 = a2;
      v12 = v8;
      v17 = v12;
      v18 = v4;
      v13 = v10;
      [v13 fetchFindMyNetworkStatusForMACAddress:v7 completion:v14];

      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_100566074(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = qword_100BCE960;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 64), __p);
      sub_1008431D4();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*(a1 + 64), __p);
      v8 = v16 >= 0 ? __p : *__p;
      *buf = 136446466;
      v18 = v8;
      v19 = 1024;
      v20 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FM Status for %{public}s device is: %d", buf, 0x12u);
      if (v16 < 0)
      {
        operator delete(*__p);
      }
    }

    if (a2 && *(a1 + 48))
    {
      v9 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 48);
        v10 = *(a1 + 56);
        *__p = 138412546;
        *&__p[4] = v10;
        v14 = 2112;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Renaming '%@' -> '%@'", __p, 0x16u);
      }

      v12 = *(a1 + 64);
      sub_100007E30(__p, [*(a1 + 48) UTF8String]);
      sub_100538D30(v12, __p, 1);
      if (v16 < 0)
      {
        operator delete(*__p);
      }
    }
  }
}

void sub_100566254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10056629C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_100017F4C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10056632C;
  v7[3] = &unk_100AE0880;
  v7[4] = a1;
  v7[5] = a2;
  v8 = a3;
  sub_10000CA94(v6, v7);
}

void sub_10056633C(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (*(a1 + 241) == 1)
  {
    v6 = qword_100BCE960;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v7 = v41 >= 0 ? __p : *__p;
      v8 = *(a1 + 242) ? "in" : "not in";
      *buf = 67109634;
      *&buf[4] = a3;
      *v43 = 2082;
      *&v43[2] = v7;
      v44 = 2082;
      v45 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device info changed (%d) for device %{public}s with cloud sync is %{public}s progress", buf, 0x1Cu);
      if (v41 < 0)
      {
        operator delete(*__p);
      }
    }

    if (a3 > 4096)
    {
      v33[0] = 0;
      v33[1] = 0;
      sub_100007F88(v33, a1 + 104);
      for (i = *(a1 + 176); i != *(a1 + 184); ++i)
      {
        v10 = *i;
        if (**i == a2)
        {
          goto LABEL_19;
        }
      }

      v10 = 0;
LABEL_19:
      sub_10000801C(v33);
      if (v10)
      {
        if (a3 == 4101)
        {
          sub_100563ADC(a1, v10);
        }

        else
        {
          sub_100560FB0(a1, a2, a3);
        }

        goto LABEL_81;
      }

      if (a3 == 4102)
      {
        if (qword_100B50AB0 != -1)
        {
          sub_100843260();
        }

        v21 = off_100B50AA8;
        if (sub_1000E25D8())
        {
          if (v21[240] == 1 && (a2[1044] & 1) == 0 && (a2[1046] & 1) == 0 && (a2[1045] & 1) == 0 && !sub_1000C0348(a2) && sub_1000DFB74(a2, 0x80000u) == 4)
          {
            v22 = sub_1000E31D0(a2);
            if ((v22 & 2) == 0)
            {
              if (qword_100B50AB0 != -1)
              {
                sub_100843260();
              }

              if ((sub_1000E2570(v22, a2) & 1) == 0)
              {
                v23 = qword_100BCE960;
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  v24 = sub_1000E31D0(a2);
                  sub_1000C23E0(a2, __p);
                  v25 = v41 >= 0 ? __p : *__p;
                  *buf = 67109635;
                  *&buf[4] = v24;
                  strcpy(v43, "p\bhash");
                  v43[7] = 0;
                  *&v43[8] = 0;
                  v44 = 2081;
                  v45 = v25;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "GAPA Flags - %d, sending magic keys and renaming genuine device %{private, mask.hash}s", buf, 0x1Cu);
                  if (v41 < 0)
                  {
                    operator delete(*__p);
                  }
                }

                if (qword_100B50950 != -1)
                {
                  sub_100841B9C();
                }

                sub_1003337DC(off_100B50948, a2);
                if (qword_100B508F0 != -1)
                {
                  sub_100841B4C();
                }

                sub_10056CB58(off_100B508E8, a2);
              }
            }
          }
        }

        goto LABEL_81;
      }

      if (a3 != 4098)
      {
LABEL_81:
        sub_1000088CC(v33);
        return;
      }

      v11 = qword_100BCE960;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000DEEA4(a2, buf);
        v12 = SBYTE3(v45);
        v13 = *buf;
        sub_1000C23E0(a2, __p);
        v14 = buf;
        if (v12 < 0)
        {
          v14 = v13;
        }

        if (v41 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = *__p;
        }

        *v34 = 136315394;
        v35 = v14;
        v36 = 2080;
        v37 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[3rd] Nickname info changed from %s to %s", v34, 0x16u);
        if (v41 < 0)
        {
          operator delete(*__p);
        }

        if (SBYTE3(v45) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_10053781C(a2, buf);
      if (SBYTE3(v45) < 0)
      {
        v26 = *v43;
        operator delete(*buf);
        if (v26)
        {
          goto LABEL_36;
        }
      }

      else if (BYTE3(v45))
      {
LABEL_36:
        v16 = sub_100558B38(a2);
        v17 = qword_100BCE960;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, buf);
          if (SBYTE3(v45) >= 0)
          {
            v18 = buf;
          }

          else
          {
            v18 = *buf;
          }

          *__p = 136446466;
          *&__p[4] = v18;
          v39 = 2112;
          v40 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[3rd] Add nickname info from %{public}s with record: %@", __p, 0x16u);
          if (SBYTE3(v45) < 0)
          {
            operator delete(*buf);
          }
        }

        v19 = +[CloudPairing sharedInstance];
        v20 = [v19 cloudClient];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100566C34;
        v31[3] = &unk_100AFC848;
        v31[4] = a2;
        [v20 createDeviceRecord:v16 completion:v31];

LABEL_80:
        goto LABEL_81;
      }

      v27 = qword_100BCE960;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, buf);
        v28 = SBYTE3(v45) >= 0 ? buf : *buf;
        *__p = 136446210;
        *&__p[4] = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[3rd] Remove nickname info from %{public}s", __p, 0xCu);
        if (SBYTE3(v45) < 0)
        {
          operator delete(*buf);
        }
      }

      v16 = +[CloudPairing sharedInstance];
      v19 = [v16 cloudClient];
      sub_1000BE6F8(a2 + 128, buf);
      if (SBYTE3(v45) >= 0)
      {
        v29 = buf;
      }

      else
      {
        v29 = *buf;
      }

      v30 = [NSString stringWithUTF8String:v29];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100566AF0;
      v32[3] = &unk_100AFC848;
      v32[4] = a2;
      [v19 deleteDeviceRecord:v30 completion:v32];

      if (SBYTE3(v45) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_80;
    }
  }

  else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100843224();
  }
}

void sub_100566A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100566AF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE960;
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      sub_100843288();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 32), __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[3rd] Removed cloud device %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100566C34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE960;
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      sub_1008432D8();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 32), __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[3rd] Create cloud device %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100566D78(uint64_t a1)
{
  v2 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ----------------- Magic Pairing Manager ------------------", buf, 2u);
  }

  v3 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump: Magic Paired devices:", buf, 2u);
  }

  v4 = sub_10000E92C();
  if ((*(*v4 + 8))(v4))
  {
    v5 = qword_100BCE960;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (a1 + 216);
      if (*(a1 + 239) < 0)
      {
        v6 = *v6;
      }

      v7 = *(a1 + 241);
      if (sub_1000E25D8())
      {
        v8 = *(a1 + 240);
      }

      else
      {
        v8 = 0;
      }

      *buf = 136315650;
      *v37 = v6;
      *&v37[8] = 1024;
      *&v37[10] = v7;
      v38 = 1024;
      v39 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cloud Account ID: %s, Cloud Signed in: %d, Initialized: %d", buf, 0x18u);
    }

    v9 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *v37 = 16;
      *&v37[4] = 2096;
      *&v37[6] = a1 + 49;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Acc Master Key:%.16P", buf, 0x12u);
    }

    v10 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *v37 = 16;
      *&v37[4] = 2096;
      *&v37[6] = a1 + 65;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Acc Master Hint:%.16P", buf, 0x12u);
    }

    v11 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *v37 = 16;
      *&v37[4] = 2096;
      *&v37[6] = a1 + 81;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Acc Master Cloud IRK:%.16P", buf, 0x12u);
    }

    v12 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *v37 = 6;
      *&v37[4] = 2096;
      *&v37[6] = a1 + 97;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Acc Master Cloud Addr:%.6P", buf, 0x12u);
    }

    v13 = *(a1 + 176);
    if (v13 != *(a1 + 184))
    {
      v14 = &_mh_execute_header;
      do
      {
        v15 = **v13;
        v34 = 0;
        v35 = 0;
        sub_1000C2364(v15, &v35 + 1, &v35, &v34 + 1, &v34);
        ccsha256_di();
        memset(v45, 0, sizeof(v45));
        memset(v44, 0, sizeof(v44));
        v16 = qword_100BCE960;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v14;
          sub_1000E5A58(v15, __p);
          v18 = v33;
          v19 = __p[0];
          v20 = HIDWORD(v34);
          v21 = v35;
          v22 = sub_1000E31D0(v15);
          *buf = 136446978;
          v23 = __p;
          if (v18 < 0)
          {
            v23 = v19;
          }

          *v37 = v23;
          *&v37[8] = 1024;
          *&v37[10] = v21;
          v38 = 1024;
          v39 = v20;
          v40 = 1024;
          LODWORD(v41) = v22 & 2;
          v14 = v17;
          _os_log_impl(v17, v16, OS_LOG_TYPE_DEFAULT, "statedump: Device %{public}s, vid: %x, pid: %x, Fake: %d", buf, 0x1Eu);
          if (v33 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v24 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          v25 = (*v13 + 5);
          v26 = (*v13 + 7);
          v27 = *(*v13 + 18);
          *buf = 68158722;
          *v37 = 16;
          *&v37[4] = 2096;
          *&v37[6] = v25;
          v38 = 1040;
          v39 = 16;
          v40 = 2096;
          v41 = v26;
          v42 = 1024;
          v43 = v27;
          _os_log_impl(v14, v24, OS_LOG_TYPE_DEFAULT, "Acc Key %.16P for Hint %.16P  and Ratchet %d ", buf, 0x28u);
        }

        v28 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          v29 = (*v13 + 1);
          v30 = (*v13 + 3);
          *buf = 68158466;
          *v37 = 16;
          *&v37[4] = 2096;
          *&v37[6] = v29;
          v38 = 1040;
          v39 = 16;
          v40 = 2096;
          v41 = v30;
          _os_log_impl(v14, v28, OS_LOG_TYPE_DEFAULT, "IRK %.16P and Encryption key %.16P", buf, 0x22u);
        }

        ccdigest();
        ccdigest();
        v31 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68158466;
          *v37 = 32;
          *&v37[4] = 2096;
          *&v37[6] = v45;
          v38 = 1040;
          v39 = 32;
          v40 = 2096;
          v41 = v44;
          _os_log_impl(v14, v31, OS_LOG_TYPE_DEFAULT, "Hashed IRK %.32P and Hashed Encryption key %.32P", buf, 0x22u);
        }

        ++v13;
      }

      while (v13 != *(a1 + 184));
    }
  }
}

void sub_100567388(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, _OWORD *a7)
{
  v12 = qword_100BCE960;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &v52);
    v13 = v54;
    v14 = v52.n128_u64[0];
    v15 = sub_1002D762C(a3);
    v16 = &v52;
    *buf = 136446722;
    if (v13 < 0)
    {
      v16 = v14;
    }

    *&buf[4] = v16;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    *&buf[18] = 2080;
    *&buf[20] = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Magic pairing completed with device %{public}s status:%d, %s", buf, 0x1Cu);
    if (v54 < 0)
    {
      operator delete(v52.n128_u64[0]);
    }
  }

  v45[0] = 0;
  v45[1] = 0;
  sub_100007F88(v45, a1 + 104);
  for (i = *(a1 + 176); i != *(a1 + 184); ++i)
  {
    v18 = *i;
    if (**i == a2)
    {
      goto LABEL_11;
    }
  }

  v18 = 0;
LABEL_11:
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v23 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = @"Peer device has no pairing keys BT_MAGIC_PAIRING_KEY_NOT_FOUND";
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3812000000;
      *&buf[24] = sub_100042378;
      v49 = nullsub_26;
      v50 = "";
      *(v51 + 3) = 0;
      v51[0] = 0;
      *(&v51[1] + 1) = a2[8].n128_u16[2];
      *(v51 + 1) = a2[8].n128_u32[0];
      v24 = sub_100007EE8();
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100567D2C;
      v44[3] = &unk_100AE1120;
      v44[4] = buf;
      sub_10000CA94(v24, v44);
      _Block_object_dispose(buf, 8);
      v20 = @"Peer device has no pairing keys BT_MAGIC_PAIRING_KEY_NOT_FOUND";
      goto LABEL_45;
    }

    if (a3 != 7)
    {
      if (a3 == 8)
      {
        v19 = qword_100BCE960;
        v20 = @"We dont have keys for the peer device BT_MAGIC_PAIRING_NO_KEYS_FOR_PEER";
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = @"We dont have keys for the peer device BT_MAGIC_PAIRING_NO_KEYS_FOR_PEER";
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

LABEL_45:
        v42 = 0;
        v43 = 0;
        sub_1000C2364(a2, &v43 + 1, &v43, &v42 + 1, &v42);
        if (v18)
        {
          v26 = *(v18 + 112);
          if (v26 != a3)
          {
            *(v18 + 112) = a3;
          }

          if (a6 <= 0x3A98)
          {
            if ((a6 - 10001) >> 3 > 0x270)
            {
              if ((a6 - 7501) >= 0x9C4)
              {
                if ((a6 - 5001) >= 0x9C4)
                {
                  if ((a6 - 2501) >= 0x9C4)
                  {
                    if ((a6 - 1001) >= 0x5DC)
                    {
                      if ((a6 - 501) >= 0x1F4)
                      {
                        if ((a6 - 251) >= 0xFA)
                        {
                          if ((a6 - 1) >= 0xFA)
                          {
                            v27 = 0;
                          }

                          else
                          {
                            v27 = 250;
                          }
                        }

                        else
                        {
                          v27 = 500;
                        }
                      }

                      else
                      {
                        v27 = 1000;
                      }
                    }

                    else
                    {
                      v27 = 2500;
                    }
                  }

                  else
                  {
                    v27 = 5000;
                  }
                }

                else
                {
                  v27 = 7500;
                }
              }

              else
              {
                v27 = 10000;
              }
            }

            else
            {
              v27 = 15000;
            }
          }

          else
          {
            v27 = 0xFFFFFFFFLL;
          }

          v46[0] = @"FWVersion";
          sub_1000E2D2C(a2, 0xAu, &v52);
          if (v54 >= 0)
          {
            v29 = &v52;
          }

          else
          {
            v29 = v52.n128_u64[0];
          }

          v39 = [NSString stringWithUTF8String:v29];
          v47[0] = v39;
          v46[1] = @"PID";
          v30 = [NSNumber numberWithUnsignedInt:HIDWORD(v42)];
          v47[1] = v30;
          v46[2] = @"PreviousStatus";
          v31 = [NSNumber numberWithUnsignedChar:v26];
          v47[2] = v31;
          v46[3] = @"RatchetRange";
          v32 = [NSNumber numberWithUnsignedInt:v27];
          v47[3] = v32;
          v46[4] = @"RatchetInternal";
          v33 = [NSNumber numberWithUnsignedInt:a6];
          v47[4] = v33;
          v47[5] = v20;
          v46[5] = @"Reason";
          v46[6] = @"RepeatingStatus";
          v34 = [NSNumber numberWithBool:v26 == a3];
          v47[6] = v34;
          v46[7] = @"Status";
          v35 = [NSNumber numberWithUnsignedChar:a3];
          v47[7] = v35;
          v46[8] = @"VID";
          v36 = [NSNumber numberWithUnsignedInt:v43];
          v47[8] = v36;
          v37 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:9];

          if (v54 < 0)
          {
            operator delete(v52.n128_u64[0]);
          }

          v38 = *(a1 + 208);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100567DB8;
          block[3] = &unk_100AE1200;
          block[4] = v37;
          block[5] = a2;
          dispatch_async(v38, block);
        }

        goto LABEL_76;
      }

      goto LABEL_37;
    }

    goto LABEL_19;
  }

  if (a3)
  {
    if (a3 != 1)
    {
LABEL_37:
      v20 = [NSString stringWithFormat:@"Magic Pairing failed due to %s", sub_1002D762C(a3)];
LABEL_38:
      v25 = qword_100BCE960;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a2, buf);
        sub_10084337C();
      }

      v52.n128_u8[0] = 0;
      sub_1000216B4(&v52);
      if (sub_10023BD60(&a2[8]))
      {

        v20 = @"Magic Pairing error disconnect failed";
      }

      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        sub_1008433D0();
      }

      sub_10002249C(&v52);
      goto LABEL_45;
    }

LABEL_19:
    v21 = "BT_MAGIC_PAIRING_FAILED_VERIFICATION";
    if (a3 == 1)
    {
      v21 = "BT_MAGIC_PAIRING_INTERNAL_ERROR";
    }

    v20 = [NSString stringWithFormat:@"Magic Pairing failed due to %s", v21];
    v22 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    sub_10055ACB4(a1, v18);
    goto LABEL_38;
  }

  v52 = 0uLL;
  v53 = 0;
  sub_1006D1BAC(&v52, a7, 4u);
  if (qword_100B512E8 != -1)
  {
    sub_100841AC0();
  }

  sub_1006E7F2C(off_100B512E0, a2, &v52, 1);
  if (v18)
  {
    if (a5)
    {
      *(v18 + 5) = *a5;
    }

    if (a6)
    {
      *(v18 + 18) = a6;
    }

    if (*(a1 + 48) == 1)
    {
      buf[0] = 0;
      sub_1000216B4(buf);
      sub_10055867C(a1);
      sub_10002249C(buf);
    }

    sub_10055B09C(a1, a2);
    nullsub_21(&v52);
    v20 = @"Success";
    goto LABEL_45;
  }

  v28 = qword_100BCE960;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, buf);
    sub_100843328();
  }

  nullsub_21(&v52);
  v20 = @"Success";
LABEL_76:
  sub_1000088CC(v45);
}