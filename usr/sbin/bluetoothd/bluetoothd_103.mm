uint64_t sub_100774E50(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_100774EF4();
  }

  return result;
}

void sub_100774F74(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10067DA0C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100774FF8(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_10077509C();
  }

  return result;
}

void sub_10077511C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100775138(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100775138(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_10077519C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002717C(a1, a2);
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_1007751E0(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_100775284();
  }

  return result;
}

void sub_1007752F0(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_100775308(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1007753CC();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
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

void sub_10077543C(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100775454(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_1007754F8();
  }

  return result;
}

void sub_100775564(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_1007755E4(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t sub_10077571C(void *a1, const unsigned __int8 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_1000C7698();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_1007758EC(a1, v7);
  }

  __p = 0;
  v11 = 16 * v2;
  v13 = 0;
  uuid_copy((16 * v2), a2);
  v12 = 16 * v2 + 16;
  sub_100775848(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_100775810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100775848(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = (v4 + *a1 - v6);
    do
    {
      uuid_copy(v8, v5);
      v5 += 16;
      v8 += 16;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = v5;
  a2[1] = v5;
  v9 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void sub_1007758EC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_100775934(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_1007759D8(a1, &v3, uu1);
  if (!result)
  {
    sub_100775A60();
  }

  return result;
}

const unsigned __int8 *sub_1007759D8(uint64_t a1, const unsigned __int8 **a2, unsigned __int8 *uu1)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((uuid_compare(uu1, v4 + 26) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((uuid_compare(v7 + 26, uu1) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 8;
      v4 = *(v7 + 1);
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_100775ACC(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100775BB4(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_1007759D8(a1, &v3, uu1);
  if (!result)
  {
    sub_100775C58();
  }

  return result;
}

void sub_100775CC4(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100775CDC(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_100774BCC(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10002717C(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t sub_100775D30(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_1007746F4(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10002717C(a1, v3);
  operator delete(v4);
  return 1;
}

void *sub_100775D84(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100097C34(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100775DDC(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_100774AC0(a1, &v3, uu1);
  if (!result)
  {
    sub_100775E80();
  }

  return result;
}

void sub_100775EF8(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_100775F10(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100775F68(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100775F68(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100775FF0(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t sub_100775FF0(void *a1, void *a2, unint64_t *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_1000988F0(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_10077608C(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

uint64_t sub_100776130(uint64_t a1, const void **a2)
{
  v7 = 0;
  v2 = *sub_1000867EC(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1007761E4();
  }

  return v2;
}

uint64_t sub_10077625C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1003C473C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_1007762A8(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v3;
  }

  *(__dst + 3) = __dst + 24;
  *(__dst + 4) = __dst + 24;
  *(__dst + 5) = 0;
  return __dst;
}

uint64_t *sub_100776304(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  for (i = a1[1]; a2 != a3 && i != a1; i = i[1])
  {
    *(i + 1) = *(a2 + 16);
    a2 = *(a2 + 8);
  }

  if (i == a1)
  {
    return sub_100776354(a1, a1, a2, a3);
  }

  else
  {
    return sub_1000C1358(a1, i, a1);
  }
}

uint64_t sub_100776354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

uint64_t sub_100776440(uint64_t a1, const void **a2)
{
  v3 = 0;
  result = *sub_1000867EC(a1, &v3, a2);
  if (!result)
  {
    sub_1007764E4();
  }

  return result;
}

void sub_100776580(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_10077659C(uint64_t **a1, uint64_t **a2, unint64_t a3, unsigned int (**a4)(uint64_t, uint64_t))
{
  v4 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = *a2;
      if ((*a4)((*a2 + 2), (a1 + 2)))
      {
        v10 = *v8;
        v9 = v8[1];
        *(v10 + 8) = v9;
        *v9 = v10;
        v11 = *v4;
        v11[1] = v8;
        *v8 = v11;
        *v4 = v8;
        v8[1] = v4;
        return v8;
      }
    }

    else
    {
      v13 = a3 >> 1;
      v14 = (a3 >> 1) + 1;
      v15 = a1;
      do
      {
        v15 = v15[1];
        --v14;
      }

      while (v14 > 1);
      v16 = sub_10077659C(a1, v15, a3 >> 1, a4);
      v4 = sub_10077659C(v15, a2, a3 - v13, a4);
      if ((*a4)((v4 + 2), (v16 + 2)))
      {
          ;
        }

        v19 = *i;
        v20 = *(*i + 8);
        v21 = *v4;
        v21[1] = v20;
        *v20 = v21;
        v22 = *v16;
        v18 = v16[1];
        v22[1] = v4;
        *v4 = v22;
        *v16 = v19;
        v19[1] = v16;
      }

      else
      {
        v18 = v16[1];
        i = v4;
        v4 = v16;
      }

      if (v18 != i && i != a2)
      {
        v23 = i;
        do
        {
          if ((*a4)((i + 2), (v18 + 2)))
          {
              ;
            }

            v25 = *j;
            v26 = *(*j + 8);
            v27 = *i;
            *(v27 + 8) = v26;
            *v26 = v27;
            if (v23 == i)
            {
              v23 = j;
            }

            v29 = *v18;
            v28 = v18[1];
            *(v29 + 8) = i;
            *i = v29;
            *v18 = v25;
            *(v25 + 8) = v18;
            v18 = v28;
            i = j;
          }

          else
          {
            v18 = v18[1];
          }
        }

        while (v18 != v23 && i != a2);
      }
    }
  }

  return v4;
}

void sub_100776794(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10076BFD8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1007767E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v7 = sub_100776854(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    v5 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v5;
    v6 = *(a2 + 32);
    *(a2 + 32) = 0;
    *(v3 + 32) = v6;
    v7 = v3 + 40;
  }

  *(a1 + 8) = v7;
  return v7 - 40;
}

uint64_t sub_100776854(uint64_t a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1000C7698();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_10077699C(a1, v6);
  }

  v7 = 40 * v2;
  v17 = 0;
  v18 = 40 * v2;
  *(&v19 + 1) = 0;
  v8 = *a2;
  *a2 = 0;
  *v7 = v8;
  v9 = *(a2 + 1);
  *(v7 + 24) = *(a2 + 6);
  *(v7 + 8) = v9;
  v10 = a2[4];
  a2[4] = 0;
  *(v7 + 32) = v10;
  *&v19 = 40 * v2 + 40;
  v11 = *(a1 + 8);
  v12 = 40 * v2 + *a1 - v11;
  sub_1007769F4(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_100776A84(&v17);
  return v16;
}

void sub_100776988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100776A84(va);
  _Unwind_Resume(a1);
}

void sub_10077699C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_1007769F4(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      *a4 = v5;
      v6 = *(v4 + 1);
      *(a4 + 24) = *(v4 + 6);
      *(a4 + 8) = v6;
      v7 = v4[4];
      v4[4] = 0;
      *(a4 + 32) = v7;
      v4 += 5;
      a4 += 40;
    }

    while (v4 != a3);
  }

  sub_100776A3C(a1, a2, a3);
}

void sub_100776A3C(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 5;
    }

    while (v4 != a3);
  }
}

uint64_t sub_100776A84(uint64_t a1)
{
  sub_100776ABC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100776ABC(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
  }
}

uint64_t sub_100776B18(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100776B78(result, a4);
  }

  return result;
}

void sub_100776B78(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_10077699C(a1, a2);
  }

  sub_1000C7698();
}

uint64_t sub_100776BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(a4 + 32) = objc_retainBlock(*(v6 + 32));
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
  }

  return a4;
}

uint64_t sub_100776C38(uint64_t **a1, const void **a2)
{
  v3 = sub_1000463C8(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_100079DEC(a1, v3);
  return 1;
}

uint64_t sub_100776CC8(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_100776D6C();
  }

  return result;
}

void sub_100776DF4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100776E10(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100776E10(uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_100776E74(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_10004E34C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_100776EBC(a1, v3);
  return 1;
}

uint64_t *sub_100776EBC(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002717C(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t sub_100776F00(uint64_t a1, unsigned __int8 *uu1)
{
  v7 = 0;
  v2 = *sub_10004A7D0(a1, &v7, uu1);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_100776FB4();
  }

  return v2;
}

uint64_t sub_100777040(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100773C38(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10077708C(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_10004E34C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10002717C(a1, v3);
  sub_100773C38(v4 + 4);
  operator delete(v4);
  return 1;
}

void *sub_1007770E8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100777140(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100777140(void *result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007771C8(v5, v5 + 1, v4 + 32);
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

uint64_t sub_1007771C8(void *a1, uint64_t *a2, unsigned __int8 *uu2)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_1000AE8C4(a1, a2, &v9, &v8, uu2);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_100777268();
  }

  return v3;
}

void sub_1007772F0(float a1, uint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  *a4 = a1;
  *(a4 + 4) = v4;
  *(a4 + 12) = 1024;
  *(a4 + 14) = a3;
}

_BYTE *sub_100777318(const unsigned __int8 *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1000D67B4(a1, va);
}

void sub_100777330(float a1, uint64_t a2, uint64_t a3, int a4)
{
  *a3 = a1;
  *(a3 + 4) = v4;
  *(a3 + 12) = 1024;
  *(a3 + 14) = a4;
}

void sub_100777380(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

void sub_1007773A0()
{
  v0 = objc_autoreleasePoolPush();
  sub_100364534(&stru_100BCEBC8);
  __cxa_atexit(sub_1003645A0, &stru_100BCEBC8, &_mh_execute_header);
  sub_100364534(&stru_100BCEBF8);
  __cxa_atexit(sub_1003645A0, &stru_100BCEBF8, &_mh_execute_header);
  sub_100044BBC(&unk_100BCEC28);
  __cxa_atexit(sub_10007A068, &unk_100BCEC28, &_mh_execute_header);
  sub_100044BBC(&unk_100BCEC68);
  __cxa_atexit(sub_10007A068, &unk_100BCEC68, &_mh_execute_header);
  sub_100364534(&stru_100BCECB0);
  __cxa_atexit(sub_1003645A0, &stru_100BCECB0, &_mh_execute_header);
  sub_100044BBC(&unk_100BCECE0);
  __cxa_atexit(sub_10007A068, &unk_100BCECE0, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

id sub_1007774DC()
{
  sub_100777574();
  if (v4 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v1 = [NSString stringWithUTF8String:p_p];
  if (v4 < 0)
  {
    operator delete(__p);
  }

  return v1;
}

void sub_100777558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100777574()
{
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *__p = 0u;
  v22 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  sub_100008760(&v19);
  *(&v20[-1] + *(v19 - 24) + 8) |= 0x4000u;
  v18 = 48;
  v0 = sub_10004DE98(&v19, &v18);
  v1 = *v0;
  *(v0 + *(*v0 - 24) + 24) = 2;
  *(v0 + *(v1 - 24) + 8) = *(v0 + *(v1 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = std::ostream::operator<<();
  v3 = sub_100007774(v2);
  v4 = *v3;
  *(v3 + *(*v3 - 24) + 24) = 2;
  *(v3 + *(v4 - 24) + 8) = *(v3 + *(v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  v5 = std::ostream::operator<<();
  v6 = sub_100007774(v5);
  v7 = *v6;
  *(v6 + *(*v6 - 24) + 24) = 2;
  *(v6 + *(v7 - 24) + 8) = *(v6 + *(v7 - 24) + 8) & 0xFFFFFFB5 | 8;
  v8 = std::ostream::operator<<();
  v9 = sub_100007774(v8);
  v10 = *v9;
  *(v9 + *(*v9 - 24) + 24) = 2;
  *(v9 + *(v10 - 24) + 8) = *(v9 + *(v10 - 24) + 8) & 0xFFFFFFB5 | 8;
  v11 = std::ostream::operator<<();
  v12 = sub_100007774(v11);
  v13 = *v12;
  *(v12 + *(*v12 - 24) + 24) = 2;
  *(v12 + *(v13 - 24) + 8) = *(v12 + *(v13 - 24) + 8) & 0xFFFFFFB5 | 8;
  v14 = std::ostream::operator<<();
  v15 = sub_100007774(v14);
  v16 = *v15;
  *(v15 + *(*v15 - 24) + 24) = 2;
  *(v15 + *(v16 - 24) + 8) = *(v15 + *(v16 - 24) + 8) & 0xFFFFFFB5 | 8;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v20);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100777A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1003B8618(va);
  _Unwind_Resume(a1);
}

id sub_100777A3C()
{
  sub_100777AD4();
  if (v4 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v1 = [NSString stringWithUTF8String:p_p];
  if (v4 < 0)
  {
    operator delete(__p);
  }

  return v1;
}

void sub_100777AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100777AD4()
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *__p = 0u;
  v23 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  sub_100008760(&v20);
  *(&v21[-1] + *(v20 - 24) + 8) |= 0x4000u;
  v19 = 48;
  v0 = sub_10004DE98(&v20, &v19);
  v1 = *v0;
  *(v0 + *(*v0 - 24) + 24) = 2;
  *(v0 + *(v1 - 24) + 8) = *(v0 + *(v1 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = std::ostream::operator<<();
  v3 = sub_100007774(v2);
  v4 = *v3;
  *(v3 + *(*v3 - 24) + 24) = 2;
  *(v3 + *(v4 - 24) + 8) = *(v3 + *(v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  v5 = std::ostream::operator<<();
  v6 = sub_100007774(v5);
  v7 = *v6;
  *(v6 + *(*v6 - 24) + 24) = 2;
  *(v6 + *(v7 - 24) + 8) = *(v6 + *(v7 - 24) + 8) & 0xFFFFFFB5 | 8;
  v8 = std::ostream::operator<<();
  v9 = sub_100007774(v8);
  v10 = *v9;
  *(v9 + *(*v9 - 24) + 24) = 2;
  *(v9 + *(v10 - 24) + 8) = *(v9 + *(v10 - 24) + 8) & 0xFFFFFFB5 | 8;
  v11 = std::ostream::operator<<();
  v12 = sub_100007774(v11);
  v13 = *v12;
  *(v12 + *(*v12 - 24) + 24) = 2;
  *(v12 + *(v13 - 24) + 8) = *(v12 + *(v13 - 24) + 8) & 0xFFFFFFB5 | 8;
  v14 = std::ostream::operator<<();
  v15 = sub_100007774(v14);
  v16 = *v15;
  *(v15 + *(*v15 - 24) + 24) = 2;
  *(v15 + *(v16 - 24) + 8) = *(v15 + *(v16 - 24) + 8) & 0xFFFFFFB5 | 8;
  std::ostream::operator<<();
  v17 = sub_100007774(&v20);
  *(v17 + *(*v17 - 24) + 8) &= ~0x4000u;
  sub_100007774(v17);
  std::stringbuf::str();
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100777FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1003B8618(va);
  _Unwind_Resume(a1);
}

unint64_t sub_100777FF4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v6 = 0;
    sub_100007E30(__p, [v1 UTF8String]);
    v3 = sub_100778080(__p);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

unint64_t sub_100778080(char *a1)
{
  v1 = a1;
  if (a1[23] < 0)
  {
    if ((*(a1 + 1) - 25) < 0xFFFFFFFFFFFFFFE8)
    {
      return 0;
    }

    v1 = *a1;
  }

  else if (a1[23] - 25 < 0xFFFFFFE8)
  {
    return 0;
  }

  v7 = 0;
  v6 = 0;
  v5 = 0;
  if (sscanf(v1, "%hhX:%hhX:%hhX:%hhX:%hhX:%hhX", &v5, &v5 + 1, &v5 + 2, &v5 + 3, &v6, &v6 + 1) == 6)
  {
    return (v5 << 40) | (BYTE1(v5) << 32) | (BYTE2(v5) << 24) | (HIBYTE(v5) << 16) | (v6 << 8) | HIBYTE(v6);
  }

  if (sscanf(v1, "%7s %hhX:%hhX:%hhX:%hhX:%hhX:%hhX", &v7, &v5, &v5 + 1, &v5 + 2, &v5 + 3, &v6, &v6 + 1) != 7)
  {
    return 0;
  }

  v4 = v7 != 1818391888 || *(&v7 + 3) != 6515052;
  return (v4 << 48) | (v5 << 40) | (BYTE1(v5) << 32) | (BYTE2(v5) << 24) | (HIBYTE(v5) << 16) | (v6 << 8) | HIBYTE(v6);
}

id sub_100778224(unint64_t a1)
{
  v1 = sub_10009A66C(a1);
  v4 = v1;
  v6 = BYTE6(v1);
  v5 = WORD2(v1);
  v2 = +[NSMutableData data];
  [v2 appendBytes:&v4 length:1];
  [v2 appendBytes:&v4 + 1 length:6];

  return v2;
}

uint64_t sub_1007782B8(uint64_t a1, char *a2)
{
  v4 = a2;
  if (a2[23] < 0)
  {
    v4 = *a2;
  }

  v5 = [NSString stringWithUTF8String:v4];
  if ([v5 isEqualToString:@"APPEARANCE_KEYBOARD"])
  {
    v6 = 961;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_MOUSE"])
  {
    v6 = 962;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_TOUCHPAD"])
  {
    v6 = 969;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_JOYSTICK"])
  {
    v6 = 963;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_GAMEPAD"])
  {
    v6 = 964;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_GENERIC AUDIO SINK"])
  {
    v6 = 2112;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_STANDALONE SPEAKER"])
  {
    v6 = 2113;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_SOUNDBAR"])
  {
    v6 = 2114;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_BOOKSHELF SPEAKER"])
  {
    v6 = 2115;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_STANDMOUNTED SPEAKER"])
  {
    v6 = 2116;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_SPEAKERPHONE"])
  {
    v6 = 2117;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_EARBUD"])
  {
    v6 = 2369;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_HEADSET"])
  {
    v6 = 2370;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_HEADPHONES"])
  {
    v6 = 2371;
  }

  else
  {
    if (([v5 isEqualToString:@"IsHearingAid"] & 1) == 0)
    {

      goto LABEL_34;
    }

    v6 = 2625;
  }

  *(a1 + 392) = v6;
LABEL_34:
  sub_10077C9B4(a1 + 176, a2);
  return v7 & 1;
}

uint64_t sub_1007784E8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  sub_1000D8E68(a2, &v16);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v16;
  *(a2 + 16) = v17;
  v8 = *(a1 + 128);
  if (v8 < a3)
  {
    goto LABEL_4;
  }

  if (v8 == a3)
  {
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    v12 = *(a1 + 127);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a1 + 112);
    }

    if (v11 != v12)
    {
      goto LABEL_4;
    }

    v14 = v10 >= 0 ? a2 : *a2;
    v15 = v13 >= 0 ? (a1 + 104) : *(a1 + 104);
    if (memcmp(v14, v15, v11) || (a4 & 1) != 0)
    {
      goto LABEL_4;
    }
  }

  else if (a4)
  {
LABEL_4:
    *(a1 + 128) = a3;
    std::string::operator=((a1 + 104), a2);
    return 1;
  }

  return 0;
}

void sub_1007785DC(uint64_t a1, void *a2, int a3)
{
  LODWORD(v3) = a3;
  v4 = a2;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__p = 0u;
  v14 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  sub_100008760(&v11);
  v5 = [v4 bytes];
  v6 = [v4 length];
  v7 = v11;
  *(&v12[-1] + *(v11 - 24) + 8) = *(&v12[-1] + *(v11 - 24) + 8) & 0xFFFFFFB5 | 8;
  v8 = &v12[-1] + *(v7 - 24);
  if (*(v8 + 36) == -1)
  {
    std::ios_base::getloc((&v12[-1] + *(v7 - 24)));
    v9 = std::locale::use_facet(&v26, &std::ctype<char>::id);
    (v9->__vftable[2].~facet_0)(v9, 32);
    std::locale::~locale(&v26);
  }

  *(v8 + 36) = 48;
  if (v6 >= v3)
  {
    v3 = v3;
  }

  else
  {
    v3 = v6;
  }

  if (v3)
  {
    do
    {
      v10 = v11;
      *(v12 + *(v11 - 24) + 8) = 2;
      *(&v11 + *(v10 - 24) + 8) = *(&v11 + *(v10 - 24) + 8) & 0xFFFFFF4F | 0x80;
      ++v5;
      std::ostream::operator<<();
      --v3;
    }

    while (v3);
  }

  std::stringbuf::str();
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_1007788D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v10 - 88));
  sub_1003B8618(&a9);

  _Unwind_Resume(a1);
}

int32x2_t sub_100778910(int32x2_t *a1, __int32 a2)
{
  v2.i32[0] = 1;
  v2.i32[1] = a2;
  result = vadd_s32(a1[58], v2);
  a1[58] = result;
  a1[59].i32[0] = a2;
  return result;
}

int32x2_t sub_10077892C(uint64_t a1, __int32 a2)
{
  v2.i32[0] = 1;
  v2.i32[1] = a2;
  result = vadd_s32(*(a1 + 452), v2);
  *(a1 + 452) = result;
  *(a1 + 460) = a2;
  return result;
}

void sub_10077894C(uint64_t a1)
{
  v1 = *(a1 + 464);
  if (v1 && *(a1 + 468) / v1)
  {
    *(__dst + 3) = 0;
    __dst[0] = 0;
    v3 = *(a1 + 336);
    v4 = v3;
    if (v3)
    {
      memcpy(__dst, [v3 bytes], objc_msgSend(v3, "length"));
      v5 = *(__dst + 1);
      v6 = *(__dst + 3);
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v16 = 0;
    v17 = 0;
    v19 = 0;
    v18 = 0;
    v8 = *(a1 + 464);
    if (v8)
    {
      v9 = *(a1 + 468) / v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a1 + 452);
    if (v10)
    {
      v11 = (*(a1 + 456) / v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = *(a1 + 472);
    v13 = *(a1 + 460);
    sub_1000D38CC(&v16, 13);
    HIDWORD(v16) = v9;
    v17 = __PAIR64__(v12, v11);
    v18 = __PAIR64__(v6, v13);
    v19 = v5;
    v14 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110400;
      v22 = v9;
      v23 = 1024;
      v24 = v11;
      v25 = 1024;
      v26 = v12;
      v27 = 1024;
      v28 = v13;
      v29 = 1024;
      v30 = v6;
      v31 = 1024;
      v32 = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending LeConnectionPhyStats AWDMetric: RSSI Average %d, PER Average %d%%, RSSI %d, PER %d%% pid %d Vid %d", buf, 0x26u);
    }

    if (sub_10000F034())
    {
      v15 = sub_10000F034();
      (*(*v15 + 40))(v15, &v16);
    }

    *(a1 + 452) = 0;
    *(a1 + 460) = 0;
    *(a1 + 468) = 0;
  }

  else
  {
    v7 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not sending LE connection phy stats as average RSSI is 0 dBm", buf, 2u);
    }
  }
}

uint64_t sub_100778BAC(id *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 beaconIdentifier];

    if (v6)
    {
      v7 = [v5 allowedSessions];
      if (v7 && ([v5 allowedSessions], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, v9))
      {
        v10 = [v5 longTermKeyMap];
        if (v10 && ([v5 longTermKeyMap], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10, v12))
        {
          v13 = [v5 serialNumber];
          if (v13)
          {
            v14 = [v5 serialNumber];
            v15 = [v14 length];

            if (v15)
            {
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              obj = [v5 longTermKeyMap];
              v16 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
              if (v16)
              {
                v17 = *v50;
                while (2)
                {
                  v18 = 0;
                  do
                  {
                    if (*v50 != v17)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v19 = *(*(&v49 + 1) + 8 * v18);
                    if (!v19 || [*(*(&v49 + 1) + 8 * v18) length] != 7)
                    {
                      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                      {
                        v42 = [v5 beaconIdentifier];
                        sub_100872274(v19, v42, buf);
                      }

                      v37 = 8;
LABEL_44:

                      goto LABEL_40;
                    }

                    v20 = [v5 longTermKeyMap];
                    v21 = [v20 objectForKeyedSubscript:v19];

                    v47 = 0u;
                    v48 = 0u;
                    v45 = 0u;
                    v46 = 0u;
                    v22 = v21;
                    v23 = [v22 countByEnumeratingWithState:&v45 objects:v64 count:16];
                    if (v23)
                    {
                      v24 = *v46;
                      v43 = v16;
                      while (2)
                      {
                        v25 = v17;
                        v26 = 0;
                        do
                        {
                          if (*v46 != v24)
                          {
                            objc_enumerationMutation(v22);
                          }

                          v27 = *(*(&v45 + 1) + 8 * v26);
                          if (!v27 || [*(*(&v45 + 1) + 8 * v26) length] <= 0xF)
                          {
                            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                            {
                              v41 = [v5 beaconIdentifier];
                              sub_10087221C(v27, v41, buf);
                            }

                            v37 = 149;
                            goto LABEL_44;
                          }

                          v26 = v26 + 1;
                        }

                        while (v23 != v26);
                        v23 = [v22 countByEnumeratingWithState:&v45 objects:v64 count:16];
                        v17 = v25;
                        v16 = v43;
                        if (v23)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v18 = v18 + 1;
                  }

                  while (v18 != v16);
                  v16 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
                  if (v16)
                  {
                    continue;
                  }

                  break;
                }
              }

              v28 = qword_100BCE900;
              if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
              {
                v29 = *a1;
                v30 = [v5 beaconIdentifier];
                v31 = [v5 groupIdentifier];
                v32 = [v5 serialNumber];
                v33 = [v5 partIdentifier];
                v34 = [v5 managedByFindMy];
                *buf = 138413570;
                *&buf[4] = v29;
                v54 = 2112;
                v55 = v30;
                v56 = 2112;
                v57 = v31;
                v58 = 2112;
                v59 = v32;
                v60 = 1024;
                v61 = v33;
                v62 = 1024;
                v63 = v34;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "fIdentifier:%@ fFindMyID:%@ fFindMyGroupID:%@ fFindMySerialNumber:%@ fFindMyPartID:%d fManagedByFindMy:%d", buf, 0x36u);
              }

              v35 = [v5 longTermKeyMap];
              [v35 count];
              *buf = 0;
              sub_100016250(buf);
              v36 = *&buf[4];
              a1[5] = *buf;
              a1[6] = v36;

              goto LABEL_30;
            }
          }

          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            sub_1008722CC();
          }
        }

        else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
        {
          v39 = [v5 beaconIdentifier];
          sub_100872308(v39, buf);
        }
      }

      else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        v38 = [v5 beaconIdentifier];
        sub_10087235C(v38, buf);
      }
    }

    else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008723B0();
    }

    v37 = 3;
    goto LABEL_40;
  }

LABEL_30:
  objc_storeStrong(a1 + 8, a2);
  v37 = 0;
  *(a1 + 238) = 1;
LABEL_40:

  return v37;
}

void sub_1007791B4(uint64_t a1)
{
  v2 = sub_100432950();
  if (v2 && *(a1 + 80) && *(a1 + 88) && *(a1 + 64))
  {
    v3 = *a1;
    v4 = *(a1 + 64);
    v5 = *(a1 + 80);
    v6 = *(a1 + 88);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1007792B8;
    v8[3] = &unk_100AFC890;
    v9 = v3;
    v7 = v3;
    [v2 successfulConnectionForPeripheral:v4 leMAC:v5 ltk:v6 completion:v8];
  }
}

void sub_1007792B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "successfulConnectionForPeripheral returned %@", buf, 0xCu);
  }

  v5 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100779404;
  v6[3] = &unk_100ADF820;
  v7 = *(a1 + 32);
  sub_10000CA94(v5, v6);
}

void sub_100779404(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_1008723EC();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);

  sub_10078149C(v2, v3);
}

void sub_100779458(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_100007E30(__p, "_HID_DEVICE_");
    sub_100071970(a1 + 176, __p);
  }

  else
  {
    sub_100007E30(__p, "_HID_DEVICE_");
    sub_100776C38((a1 + 176), __p);
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007794D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007794F4(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_100007E30(__p, "_LE_AUDIO_DEVICE_");
    sub_100071970(a1 + 176, __p);
  }

  else
  {
    sub_100007E30(__p, "_LE_AUDIO_DEVICE_");
    sub_100776C38((a1 + 176), __p);
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100779570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100779590(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_100007E30(__p, "_HAS_LE_AUDIO_DEVICE_");
    sub_100071970(a1 + 176, __p);
  }

  else
  {
    sub_100007E30(__p, "_HAS_LE_AUDIO_DEVICE_");
    sub_100776C38((a1 + 176), __p);
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10077960C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077962C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_100007E30(__p, "_TMAS_LE_AUDIO_DEVICE_");
    sub_100071970(a1 + 176, __p);
  }

  else
  {
    sub_100007E30(__p, "_TMAS_LE_AUDIO_DEVICE_");
    sub_100776C38((a1 + 176), __p);
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007796A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007796C8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (*(a1 + 496))
  {
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = *(a1 + 496);
    *(a1 + 496) = v6;

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v8 = [v9 length];
  if (v5 && v8 && [v5 length])
  {
    [*(a1 + 496) setObject:v5 forKeyedSubscript:v9];
  }

LABEL_9:
}

void sub_100779798(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if ([v5 length])
    {
      v3 = *(a1 + 496);
      if (v3)
      {
        v4 = [v3 objectForKeyedSubscript:v5];

        if (v4)
        {
          [*(a1 + 496) removeObjectForKey:v5];
        }
      }
    }
  }
}

id sub_10077982C(uint64_t a1)
{
  v2 = *(a1 + 496);
  if (v2 && [v2 count])
  {
    v3 = +[NSMutableSet set];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(a1 + 496);
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [*(a1 + 496) objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * i), v12}];
          v9 = v8;
          if (v8 && [v8 length])
          {
            [v3 addObject:v9];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    if ([v3 count])
    {
      v10 = [v3 allObjects];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_1007799F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = sub_10077982C(a1);
    v6 = v5;
    if (v5 && [v5 count])
    {
      v7 = [v6 containsObject:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100779AA0(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (*(a1 + 504))
  {
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = *(a1 + 504);
    *(a1 + 504) = v6;

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v8 = [v9 length];
  if (v5 && v8 && [v5 count])
  {
    [*(a1 + 504) setObject:v5 forKeyedSubscript:v9];
  }

LABEL_9:
}

void sub_100779B70(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if ([v5 length])
    {
      v3 = *(a1 + 504);
      if (v3)
      {
        v4 = [v3 objectForKeyedSubscript:v5];

        if (v4)
        {
          [*(a1 + 504) removeObjectForKey:v5];
        }
      }
    }
  }
}

id sub_100779C04(uint64_t a1)
{
  v2 = *(a1 + 504);
  if (v2 && [v2 count])
  {
    v3 = +[NSMutableSet set];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = *(a1 + 504);
    v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v4)
    {
      v5 = *v21;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = [*(a1 + 504) objectForKeyedSubscript:*(*(&v20 + 1) + 8 * i)];
          v8 = v7;
          if (v7 && [v7 count])
          {
            v18 = 0u;
            v19 = 0u;
            v16 = 0u;
            v17 = 0u;
            v9 = v8;
            v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v10)
            {
              v11 = *v17;
              do
              {
                for (j = 0; j != v10; j = j + 1)
                {
                  if (*v17 != v11)
                  {
                    objc_enumerationMutation(v9);
                  }

                  [v3 addObject:*(*(&v16 + 1) + 8 * j)];
                }

                v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
              }

              while (v10);
            }
          }
        }

        v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v4);
    }

    if ([v3 count])
    {
      v13 = [v3 allObjects];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_100779E70(uint64_t a1, uint64_t a2)
{
  v3 = sub_100779C04(a1);
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [NSNumber numberWithUnsignedInt:a2];
    v6 = [v4 containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_100779F0C(uint64_t a1, int a2, void *a3, int a4)
{
  v8 = a3;
  v9 = sub_10000C7D0();
  if (((*(*v9 + 3256))(v9) & 1) == 0)
  {
    v11 = 0;
    goto LABEL_27;
  }

  v10 = *(a1 + 528) != a2 || *(a1 + 532) != a4;
  v12 = *(a1 + 520);
  if ((v8 || !v12) && (!v8 || v12))
  {
    v13 = 0;
    if (v8 && v12)
    {
      v13 = [v12 isEqualToData:v8] ^ 1;
    }
  }

  else
  {
    v13 = 1;
  }

  *(a1 + 528) = a2;
  objc_storeStrong((a1 + 520), a3);
  v14 = v13 | v10;
  *(a1 + 532) = a4;
  if (a4 != 2)
  {
    *(a1 + 544) = 1;
  }

  if (v14 || (*(a1 + 544) & 1) == 0)
  {
    sub_10077A220(a1, 0);
    sub_10077AAB4(a1, 0);
  }

  if (!a2 || ![v8 length] || (*(a1 + 529) & 1) != 0)
  {
    if (v14)
    {
      if (qword_100B512F8 != -1)
      {
        sub_100872484();
      }

      sub_1003C19E8(off_100B512F0, *a1);
    }

    v15 = 0;
    goto LABEL_24;
  }

  if (*(a1 + 544) == 1)
  {
    v11 = sub_10077A220(a1, 1);
    if (!v11)
    {
      v15 = 1;
      sub_10077AAB4(a1, 1);
LABEL_24:
      v11 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100872400();
    }

    v11 = 0;
  }

  v15 = 1;
LABEL_25:
  v16 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
  {
    v17 = *a1;
    v18 = *(a1 + 530);
    v19 = *(a1 + 529);
    v20 = *(a1 + 544);
    v21 = *(a1 + 532);
    v22 = *(a1 + 520);
    v23 = *(a1 + 528);
    v25 = 138415362;
    v26 = v17;
    v27 = 1024;
    v28 = a2;
    v29 = 2112;
    v30 = v8;
    v31 = 1024;
    v32 = v14;
    v33 = 1024;
    v34 = v15;
    v35 = 1024;
    v36 = v11;
    v37 = 1024;
    v38 = v18;
    v39 = 1024;
    v40 = v19;
    v41 = 1024;
    v42 = v20;
    v43 = 1024;
    v44 = v21;
    v45 = 2112;
    v46 = v22;
    v47 = 1024;
    v48 = v23;
    v49 = 1024;
    v50 = a4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FastLeConnection:setControllerInfo fIdentifier:%@ version:%d info:%@ dataChanged:%d enable:%d result:%d fControllerLTKStored:%d fControllerInfoConfigured:%d fFastLeConnectionAllowed:%d fControllerInfoOrigin:%d fControllerInfo:%@ fControllerInfoVersion:%d newOrigin:%d", &v25, 0x5Cu);
  }

LABEL_27:

  return v11;
}

uint64_t sub_10077A220(uint64_t *a1, int a2)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100872498();
  }

  if (*(off_100B50A98 + 60) != 1)
  {
    return 12;
  }

  v4 = sub_10000C7D0();
  if (!(*(*v4 + 3256))(v4))
  {
    return 0;
  }

  v5 = a1[3];
  if (v5 || (v5 = a1[2]) != 0)
  {
    if (a2 && *(a1 + 528))
    {
      if (*(a1 + 544) != 1)
      {
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
        {
          sub_1008724AC();
        }

        v22 = 0;
        v23 = 0;
        LODWORD(v9) = 12;
        goto LABEL_39;
      }

      if ((*(a1 + 530) & 1) == 0)
      {
        v6 = a1[69];
        if (v6 && [v6 length])
        {
          v7 = sub_10000C7D0();
          v8 = (*(*v7 + 2184))(v7, v5, a1[3] != 0, [a1[69] length], objc_msgSend(a1[69], "bytes"));
          if (v8)
          {
            LODWORD(v9) = v8;
            v10 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
            {
              v11 = *a1;
              sub_10004D9B0();
              v12 = v65 >= 0 ? __p : *__p;
              v13 = a1[65];
              v14 = *(a1 + 528);
              *buf = 138413314;
              *&buf[4] = v11;
              v52 = 2080;
              v53 = v12;
              v54 = 2112;
              *v55 = v13;
              *&v55[8] = 1024;
              *v56 = v14;
              *&v56[4] = 1024;
              *v57 = v9;
              _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "FastLEConnection:Failed writeStoredLTKForDevice for device %@ (%s) cached data:%@ version:%d returned %d aborting", buf, 0x2Cu);
              if (v65 < 0)
              {
                operator delete(*__p);
              }
            }

            goto LABEL_30;
          }

          *(a1 + 530) = 1;
        }

        else
        {
          v35 = sub_10000C7D0();
          if (((*(*v35 + 3264))(v35) & 1) == 0)
          {
            v36 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
            {
              v48 = *a1;
              sub_10004D9B0();
              v49 = v54 >= 0 ? buf : *buf;
              *__p = 138412546;
              *&__p[4] = v48;
              v63 = 2080;
              v64 = v49;
              _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "FastLEConnection:LeDevice::enableFastLEConnection device %@ (%s) No LTK provided but required", __p, 0x16u);
              if (SHIBYTE(v54) < 0)
              {
                operator delete(*buf);
              }
            }

            v22 = 0;
            v23 = 0;
            LODWORD(v9) = 149;
            goto LABEL_39;
          }
        }
      }

      if (*(a1 + 529))
      {
        return 0;
      }

      v9 = sub_10000C7D0();
      LODWORD(v9) = (*(*v9 + 2208))(v9, v5, a1[3] != 0, *(a1 + 528), [a1[65] length], objc_msgSend(a1[65], "bytes"));
      if (!v9)
      {
        v23 = 0;
        v22 = 1;
        *(a1 + 529) = 1;
        goto LABEL_39;
      }

      v42 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        v44 = *a1;
        sub_10004D9B0();
        v45 = v65 >= 0 ? __p : *__p;
        v46 = a1[65];
        v47 = *(a1 + 528);
        *buf = 138413314;
        *&buf[4] = v44;
        v52 = 2080;
        v53 = v45;
        v54 = 2112;
        *v55 = v46;
        *&v55[8] = 1024;
        *v56 = v47;
        *&v56[4] = 1024;
        *v57 = v9;
        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "FastLEConnection:LeDevice::enableFastLEConnection Failed writePeerControllerCachedInfo for device %@ (%s) cached data:%@ version:%d returned %d, aborting", buf, 0x2Cu);
        if (v65 < 0)
        {
          operator delete(*__p);
        }
      }

      if (*(a1 + 530) != 1)
      {
LABEL_30:
        v22 = 0;
        v23 = 0;
LABEL_39:
        v50 = 0;
        sub_1000216B4(&v50);
        v25 = *(a1 + 530);
        v26 = sub_10000C7D0();
        v27 = (*(*v26 + 3264))(v26);
        v28 = sub_1002D3634(v5, v25, v22, v27 ^ 1u);
        v29 = v28;
        if (v22)
        {
          v30 = 1;
        }

        else
        {
          v30 = v9;
        }

        if (v28)
        {
          v9 = v30;
        }

        else
        {
          v9 = v9;
        }

        v31 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *a1;
          sub_10004D9B0();
          if (v65 >= 0)
          {
            v33 = __p;
          }

          else
          {
            v33 = *__p;
          }

          v34 = *(a1 + 544);
          *buf = 138414082;
          *&buf[4] = v32;
          v52 = 2080;
          v53 = v33;
          v54 = 1024;
          *v55 = a2;
          *&v55[4] = 1024;
          *&v55[6] = v34;
          *v56 = 1024;
          *&v56[2] = v29;
          *v57 = 1024;
          *&v57[2] = v23;
          v58 = 1024;
          v59 = v22;
          v60 = 1024;
          v61 = v9;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "FastLEConnection:LeDevice::enableFastLEConnection device:%@ address:%s enable:%d fFastLeConnectionAllowed:%d LE_GAP_EnableFastLeConnectionForAddress:%d shouldRemoveLTKFromController:%d, shouldEnable:%d ret:%d", buf, 0x3Au);
          if (v65 < 0)
          {
            operator delete(*__p);
          }
        }

        sub_10002249C(&v50);
        return v9;
      }
    }

    else
    {
      if (*(a1 + 529) == 1)
      {
        v15 = sub_10000C7D0();
        v16 = (*(*v15 + 2216))(v15, v5, a1[3] != 0);
        *(a1 + 529) = 0;
        if (v16)
        {
          v17 = v16;
          v18 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            v39 = *a1;
            sub_10004D9B0();
            v40 = v65 >= 0 ? __p : *__p;
            *buf = 138412802;
            *&buf[4] = v39;
            v52 = 2080;
            v53 = v40;
            v54 = 1024;
            *v55 = v17;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "FastLEConnection:LeDevice::enableFastLEConnection FastLEConnection:removePeerControllerCachedInfo device %@ (%s) returned %d", buf, 0x1Cu);
            if (v65 < 0)
            {
              operator delete(*__p);
            }
          }
        }
      }

      if ((*(a1 + 530) & 1) == 0)
      {
        LODWORD(v9) = 0;
        goto LABEL_30;
      }

      LODWORD(v9) = 0;
    }

    v19 = sub_10000C7D0();
    v20 = (*(*v19 + 2192))(v19, v5, a1[3] != 0);
    *(a1 + 530) = 0;
    if (v20)
    {
      v21 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        v37 = *a1;
        sub_10004D9B0();
        v38 = v65 >= 0 ? __p : *__p;
        *buf = 138412802;
        *&buf[4] = v37;
        v52 = 2080;
        v53 = v38;
        v54 = 1024;
        *v55 = v20;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "FastLEConnection:LeDevice::enableFastLEConnection FastLEConnection:removeStoredLTKForDevice device %@ (%s) returned %d", buf, 0x1Cu);
        if (v65 < 0)
        {
          operator delete(*__p);
        }
      }
    }

    v22 = 0;
    v23 = 1;
    goto LABEL_39;
  }

  v24 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
  {
    v43 = *a1;
    *buf = 138412290;
    *&buf[4] = v43;
    _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "FastLEConnection: %@ Address cannot be 0", buf, 0xCu);
    v24 = qword_100BCE900;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_10087251C();
  }

  return 8;
}

void sub_10077AAB4(uint64_t *a1, int a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10077AD14;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100BC7B20 != -1)
  {
    dispatch_once(&qword_100BC7B20, block);
  }

  v4 = a1[67];
  if (a2)
  {
    if (!v4 && *(a1 + 133) == 3)
    {
      v5 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *a1;
        *buf = 138412546;
        v16 = v6;
        v17 = 2048;
        v18 = qword_100B54EE0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FastLeConnection:enableClientControllerInfoTimer %@ timer duration %llums armed!", buf, 0x16u);
      }

      v7 = sub_100007EE8();
      v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v7 + 8));
      a1[67] = v8;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10077AEB8;
      v13[3] = &unk_100ADF8F8;
      v13[4] = a1;
      dispatch_source_set_event_handler(v8, v13);
      v9 = a1[67];
      v10 = dispatch_time(0x8000000000000000, 1000000 * qword_100B54EE0);
      dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_activate(a1[67]);
    }
  }

  else if (v4)
  {
    v11 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *a1;
      *buf = 138412290;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "FastLeConnection:enableClientControllerInfoTimer %@ timer destroyed!", buf, 0xCu);
      v4 = a1[67];
    }

    dispatch_source_cancel(v4);
    dispatch_release(a1[67]);
    a1[67] = 0;
  }
}

void sub_10077AD14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v10 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DeviceFastLeConnectionClientTimeoutSeconds");
  v3 = (*(*v2 + 88))(v2, buf, __p, &v10);
  if (v10)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v5 = 1000 * v10;
  qword_100B54EE0 = v5;
  v6 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *v1;
    *buf = 138412546;
    *&buf[4] = v7;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FastLeConnection:enableClientControllerInfoTimer %@ Overriding timer duration to %llums", buf, 0x16u);
  }
}

void sub_10077AE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10077AEB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *v1;
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FastLeConnection:enableClientControllerInfoTimer %@ timer expired!", &v5, 0xCu);
  }

  dispatch_source_cancel(v1[67]);
  dispatch_release(v1[67]);
  v1[67] = 0;
  return sub_100779F0C(v1, 0, 0, 0);
}

uint64_t sub_10077AF88(uint64_t a1, int a2)
{
  if (qword_100BC7B30 != -1)
  {
    sub_10087258C();
  }

  v4 = sub_10000C7D0();
  result = (*(*v4 + 3256))(v4);
  if (result)
  {
    if (*(a1 + 528))
    {
      v6 = *(a1 + 520);
      if (v6)
      {
        if ([v6 length])
        {
          v7 = *(a1 + 532);
          if (v7)
          {
            if (v7 == 2)
            {
              v8 = a2;
            }

            else
            {
              v8 = 1;
            }

            *(a1 + 544) = v8;
            v9 = qword_100BCE900;
            if (byte_100BC7B28 == 1)
            {
              if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
              {
                v10 = *a1;
                v14 = 138412802;
                v15 = v10;
                v16 = 1024;
                v17 = byte_100BC7B29;
                v18 = 1024;
                v19 = 1;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: FastLEConnection:fastLeConnectionAllowed %@ forceAllow:%d forceOverride:%d", &v14, 0x18u);
                v9 = qword_100BCE900;
              }

              v8 = byte_100BC7B29;
              *(a1 + 544) = byte_100BC7B29;
            }

            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v11 = *a1;
              v12 = *(a1 + 532);
              v14 = 138413058;
              v15 = v11;
              v16 = 1024;
              v17 = a2;
              v18 = 1024;
              v19 = v8;
              v20 = 1024;
              v21 = v12;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FastLEConnection:fastLeConnectionAllowed %@ allowed:%d fFastLeConnectionAllowed:%d fControllerInfoOrigin:%d", &v14, 0x1Eu);
              if (*(a1 + 544))
              {
LABEL_17:
                v13 = 1;
                return sub_10077A220(a1, v13);
              }
            }

            else if (v8)
            {
              goto LABEL_17;
            }

            v13 = 0;
            return sub_10077A220(a1, v13);
          }
        }
      }
    }

    return 12;
  }

  return result;
}

void sub_10077B188(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DeviceFastLeConnectionForceAllow");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100BC7B29);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(*buf);
    if (!v2)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  byte_100BC7B28 = 1;
  v3 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100BC7B29)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Warning: FastLeConnection:fastLeConnectionAllowed DeviceFastLeConnectionForceAllow %s", buf, 0xCu);
  }
}

void sub_10077B2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_10077B320(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return "?";
  }

  else
  {
    return (&off_100B0C048)[a1];
  }
}

uint64_t sub_10077B344(uint64_t a1)
{
  sub_100007E30(v25, "A1603");
  v2 = sub_1000463C8(a1 + 176, v25);
  v3 = a1 + 184;
  if (a1 + 184 == v2)
  {
    sub_100007E30(v23, "A2051");
    if (v2 == sub_1000463C8(a1 + 176, v23))
    {
      sub_100007E30(v21, "A3085");
      if (v2 == sub_1000463C8(a1 + 176, v21))
      {
        sub_100007E30(__p, "A2538");
        v4 = v2 != sub_1000463C8(a1 + 176, __p);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v4 = 1;
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }
    }

    else
    {
      v4 = 1;
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }

  else
  {
    v4 = 1;
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
    if (v4)
    {
      return 4;
    }
  }

  else if (v4)
  {
    return 4;
  }

  sub_100007E30(v17, "HasTS");
  v6 = sub_1000463C8(a1 + 176, v17);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v3 != v6)
  {
    v7 = sub_10000C798();
    if ((*(*v7 + 384))(v7))
    {
      return 2;
    }

    v9 = sub_10000C798();
    return (*(*v9 + 368))(v9);
  }

  sub_100007E30(v15, "_GHS_DEVICE_");
  v8 = sub_1000463C8(a1 + 176, v15);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v3 != v8)
  {
    return 12;
  }

  if (*(a1 + 608))
  {
    return 5;
  }

  v10 = *(a1 + 200);
  if (!v10)
  {
    v11 = *(a1 + 372);
    if (v11 == 655360)
    {
      v12 = 11;
    }

    else
    {
      v12 = 0;
    }

    if (v11 == 21)
    {
      return 3;
    }

    else
    {
      return v12;
    }
  }

  if ([v10 containsString:@"iPhone"])
  {
    return 1;
  }

  if ([*(a1 + 200) containsString:@"Watch"])
  {
    return 2;
  }

  if ([*(a1 + 200) containsString:@"iPad"])
  {
    return 10;
  }

  if ([*(a1 + 200) containsString:@"iMac"] & 1) != 0 || (objc_msgSend(*(a1 + 200), "containsString:", @"MacBook"))
  {
    return 9;
  }

  result = CBProductIDFromNSString();
  if (result)
  {
    v13 = [CBProductInfo productInfoWithProductID:result];
    v14 = [v13 flags];

    if ((v14 & 0x2000) == 0)
    {
      if ((v14 & 0x4000) != 0)
      {
        return 8;
      }

      if ((v14 & 0x8000) != 0)
      {
        return 7;
      }

      return ((v14 << 15) >> 31) & 6;
    }

    return 5;
  }

  return result;
}

void sub_10077B704(uint64_t *a1, char a2)
{
  *(a1 + 160) = a2;
  if ((a2 & 1) == 0 && (*(a1 + 161) & 1) == 0)
  {
    *(a1 + 162) = 0;
  }

  v3 = a1[3];
  if (v3 || (v3 = a1[2]) != 0)
  {
    if ((a2 & 1) == 0)
    {
      v4 = a1[69];
      a1[69] = 0;

      if (*(a1 + 530) == 1)
      {
        v5 = sub_10000C7D0();
        v6 = (*(*v5 + 2192))(v5, v3, a1[3] != 0);
        if (v6)
        {
          v7 = v6;
          v8 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            v9 = *a1;
            sub_10004D9B0();
            if (v12 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            *buf = 138412802;
            v14 = v9;
            v15 = 2080;
            v16 = p_p;
            v17 = 1024;
            v18 = v7;
            _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "FastLEConnection:setLEPaired removePeerControllerCachedInfo device %@ (%s) returned %d", buf, 0x1Cu);
            if (v12 < 0)
            {
              operator delete(__p);
            }
          }
        }

        else
        {
          *(a1 + 530) = 0;
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
  {
    sub_1008725A0();
  }
}

void sub_10077B8BC(id *a1, void *a2)
{
  v4 = a2;
  v5 = a1 + 69;
  objc_storeStrong(a1 + 69, a2);
  v6 = a1[3];
  if (!v6)
  {
    v6 = a1[2];
  }

  if (*v5)
  {
    if ((*(a1 + 530) & 1) == 0 && *(a1 + 160) == 1 && *(a1 + 529) == 1)
    {
      v7 = sub_10000C7D0();
      v8 = (*(*v7 + 2184))(v7, v6, a1[3] != 0, [a1[69] length], objc_msgSend(*v5, "bytes"));
      *(a1 + 530) = 1;
      if (!v8)
      {
        goto LABEL_24;
      }

      v9 = qword_100BCE900;
      if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v10 = *a1;
      sub_10004D9B0();
      if (v23 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      v12 = a1[65];
      v13 = *(a1 + 528);
      *buf = 138413314;
      v25 = v10;
      v26 = 2080;
      v27 = v11;
      v28 = 2112;
      v29 = v12;
      v30 = 1024;
      v31 = v13;
      v32 = 1024;
      v33 = v8;
      v14 = "FastLEConnection:setLocalLTK writeStoredLTKForDevice device %@ (%s) controller cached data:%@ version:%d failed with error %d";
      v15 = v9;
      v16 = 44;
      goto LABEL_21;
    }

    if ([*v5 length])
    {
      goto LABEL_24;
    }
  }

  if (*(a1 + 530) == 1)
  {
    v17 = sub_10000C7D0();
    v18 = (*(*v17 + 2192))(v17, v6, a1[3] != 0);
    if (!v18)
    {
      *(a1 + 530) = 0;
      goto LABEL_24;
    }

    v19 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      v20 = *a1;
      sub_10004D9B0();
      if (v23 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      *buf = 138412802;
      v25 = v20;
      v26 = 2080;
      v27 = v21;
      v28 = 1024;
      LODWORD(v29) = v18;
      v14 = "FastLEConnection:setLocalLTK removePeerControllerCachedInfo device %@ (%s) returned %d";
      v15 = v19;
      v16 = 28;
LABEL_21:
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_24:
}

void sub_10077BBC0(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 164) = a2;
  if (!a2)
  {
    a3 = 0;
  }

  *(a1 + 56) = a3;
  if (a2)
  {
    *(a1 + 416) = CFAbsoluteTimeGetCurrent();
  }

  else
  {
    *(a1 + 165) = 0;
    *(a1 + 236) = 0;
  }
}

uint64_t sub_10077BC08(uint64_t result, int a2)
{
  *(result + 168) = a2;
  if (*(result + 164) == 1)
  {
    v2 = result;
    if (*(result + 532) == 3)
    {
      v3 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *v2;
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FastLEConnection:setLinkReadyDurationMS device %@ connected with Fast LE Connection cached info set by a CB client, removing.", &v5, 0xCu);
      }

      return sub_100779F0C(v2, 0, 0, 0);
    }
  }

  return result;
}

uint64_t sub_10077BCE0(uint64_t a1)
{
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v38 = 0u;
  v39 = 0u;
  *v37 = 0u;
  memset(v36, 0, sizeof(v36));
  v35 = 0u;
  sub_100008760(&v35);
  *(&v36[-1] + *(v35 - 24) + 8) |= 4u;
  if (*(a1 + 64))
  {
    v2 = sub_100007774(&v35);
    v3 = [*(a1 + 64) beaconIdentifier];
    v4 = [v3 UUIDString];
    strlen([v4 UTF8String]);
    v5 = sub_100007774(v2);
    v6 = sub_100007774(v5);
    sub_100773740((a1 + 40));
    sub_100007774(v6);
    if (v34 < 0)
    {
      operator delete(__p);
    }

    v7 = sub_100007774(&v35);
    v8 = [*(a1 + 64) userIdentifier];
    v9 = [v8 UUIDString];
    strlen([v9 UTF8String]);
    v10 = sub_100007774(v7);
    v11 = sub_100007774(v10);
    p_p = &__p;
    sub_100773740((a1 + 40));
    sub_100007774(v11);
    if (v34 < 0)
    {
      operator delete(__p);
    }

    v13 = sub_100007774(&v35);
    v14 = [*(a1 + 64) groupIdentifier];
    if (v14)
    {
      v9 = [*(a1 + 64) groupIdentifier];
      p_p = [v9 UUIDString];
      v15 = [p_p UTF8String];
    }

    else
    {
      v15 = "NONE";
    }

    strlen(v15);
    sub_100007774(v13);
    if (v14)
    {
    }

    sub_100007774(&v35);
    [*(a1 + 64) partIdentifier];
    std::ostream::operator<<();
    v16 = sub_100007774(&v35);
    v17 = [*(a1 + 64) serialNumber];
    v18 = [NSString stringWithFormat:@"%@", v17];
    strlen([v18 UTF8String]);
    sub_100007774(v16);

    v19 = sub_100007774(&v35);
    v20 = [*(a1 + 64) longTermKeyMap];
    v21 = [NSString stringWithFormat:@"%@", v20];
    strlen([v21 UTF8String]);
    sub_100007774(v19);

    v22 = sub_100007774(&v35);
    v23 = [*(a1 + 64) allowedSessions];
    v24 = [NSString stringWithFormat:@"%@", v23];
    strlen([v24 UTF8String]);
    sub_100007774(v22);

    v25 = sub_100007774(&v35);
    v26 = [NSString stringWithFormat:@"%@", *(a1 + 72)];
    strlen([v26 UTF8String]);
    sub_100007774(v25);

    v27 = sub_100007774(&v35);
    v28 = [NSString stringWithFormat:@"%@", *(a1 + 80)];
    strlen([v28 UTF8String]);
    v29 = sub_100007774(v27);
    v30 = sub_100007774(v29);
    v31 = [NSString stringWithFormat:@"%@", *(a1 + 88)];
    strlen([v31 UTF8String]);
    sub_100007774(v30);
  }

  std::stringbuf::str();
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[1]);
  }

  std::locale::~locale(v36);
  std::ostream::~ostream();
  return std::ios::~ios();
}

id sub_10077C3B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 512);
    if (v4)
    {
      v5 = [v4 objectForKey:v3];
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    sub_1008725E0();
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t sub_10077C454(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5 || [v5 length] >= 0x401)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008725E0();
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  if ([v6 length] >= 0x401)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008726CC();
    }

    goto LABEL_5;
  }

  if (!*(a1 + 512))
  {
    v9 = objc_opt_new();
    v10 = *(a1 + 512);
    *(a1 + 512) = v9;
  }

  if (_os_feature_enabled_impl() && [v5 isEqualToString:@"ASK_DISPLAY_NAME"])
  {
    sub_100007E30(__p, "DA_ASK_RETAIN_DEVICE");
    v11 = sub_1000463C8(a1 + 176, __p);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = *(a1 + 160);
    sub_100007E30(v31, "_CTKD_");
    v13 = a1 + 184;
    v14 = a1 + 184 != sub_1000463C8(a1 + 176, v31);
    if (v32 < 0)
    {
      operator delete(v31[0]);
    }

    v15 = v6;
    v16 = sub_10077C3B8(a1, @"ASK_LINKED_RADIO_ADDRESS");
    v17 = v14 & v12;
    v18 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413570;
      v36 = v5;
      v37 = 1024;
      v38 = v17;
      v39 = 1024;
      v40 = v13 != v11;
      v41 = 1024;
      v42 = v12;
      v43 = 1024;
      v44 = v16 != 0;
      v45 = 2112;
      v46 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "setCustomProperty %@ ctkd:%d ASK:%d isPaired:%d isTransportLinked:%d askName:%@", buf, 0x2Eu);
    }

    if (v16)
    {
      v19 = 1;
    }

    else
    {
      v19 = v17;
    }

    if (v19 != 1 || v13 == v11)
    {
      goto LABEL_35;
    }

    if (v17)
    {
      v20 = *(a1 + 24);
    }

    else
    {
      if (!v16)
      {
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
        {
          sub_10087261C();
        }

        goto LABEL_33;
      }

      v20 = sub_100777FF4(v16);
    }

    if (v20)
    {
      v21 = sub_100017F4C();
      v25 = _NSConcreteStackBlock;
      v26 = 3221225472;
      v27 = sub_10077C8A4;
      v28 = &unk_100AE1200;
      v30 = v20;
      v29 = v15;
      sub_10000CA94(v21, &v25);

LABEL_35:
      goto LABEL_36;
    }

LABEL_33:
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_10087265C();
    }

    goto LABEL_35;
  }

LABEL_36:
  v22 = [*(a1 + 512) objectForKey:{v5, v25, v26, v27, v28}];
  v23 = [v22 isEqualToString:v6];
  if ((v23 & 1) == 0)
  {
    v24 = *(a1 + 512);
    if (v6)
    {
      [v24 setObject:v6 forKey:v5];
    }

    else
    {
      [v24 removeObjectForKey:v5];
    }
  }

  v7 = v23 ^ 1;
LABEL_6:

  return v7;
}

void sub_10077C8A4(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_100872750();
  }

  v2 = sub_1000504C8(off_100B508E8, *(a1 + 40), 1);
  if (v2)
  {
    v3 = v2;
    __p[0] = 0;
    __p[1] = 0;
    v8 = 0;
    v4 = *(a1 + 32);
    if (v4 && [v4 length])
    {
      v5 = [*(a1 + 32) UTF8String];
    }

    else
    {
      v5 = "";
    }

    sub_100007E30(__p, v5);
    sub_100538D30(v3, __p, 0);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100872764(a1 + 40, v6);
    }
  }
}

void sub_10077C998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10077C9B4(uint64_t a1, const void **a2)
{
  v3 = 0;
  result = *sub_1000867EC(a1, &v3, a2);
  if (!result)
  {
    sub_1000629E8();
  }

  return result;
}

id sub_10077CBE0(void *a1)
{
  v1 = [a1 pathComponents];
  if ([v1 count] < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 objectAtIndexedSubscript:{objc_msgSend(v1, "count") - 2}];
  }

  return v2;
}

BOOL sub_10077CC60(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v3 = qword_100BC7B38;
  v13 = qword_100BC7B38;
  if (!qword_100BC7B38)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10077D038;
    v15 = &unk_100AE1120;
    v16 = &v10;
    sub_10077D038(buf);
    v3 = v11[3];
  }

  v4 = v3;
  _Block_object_dispose(&v10, 8);
  v5 = [v3 alloc];
  v6 = [v5 initWithRestoreVersion:{v2, v10}];
  v7 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    *buf = 138412802;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    if (v6)
    {
      v8 = @"YES";
    }

    *&buf[14] = v2;
    *&buf[22] = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MAFetch: RestoreVersion %@ AssetVersion: %@ valid: %@", buf, 0x20u);
  }

  return v6 != 0;
}

void sub_10077CDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _Block_object_dispose(&a9, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10077CE20(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    v16 = [v11 copy];
    v17 = *(a1 + 48);
    *(a1 + 48) = v16;

    v18 = [v14 copy];
    v19 = *a1;
    *a1 = v18;

    v20 = sub_10077CBE0(v14);
    v21 = *(a1 + 24);
    *(a1 + 24) = v20;

    v22 = [v12 copy];
    v23 = *(a1 + 40);
    *(a1 + 40) = v22;

    v24 = [v15 copy];
    v25 = *(a1 + 56);
    *(a1 + 56) = v24;

    if (sub_10077CC60(v26, v13))
    {
      v27 = [v13 copy];
      v28 = *(a1 + 32);
      *(a1 + 32) = v27;

      v29 = qword_100BCE968;
      v30 = 0;
      if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 32);
        v32 = *(a1 + 48);
        v35 = 138412546;
        v36 = v31;
        v37 = 2112;
        v38 = v32;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "MAFetch: Valid assetversion %@ available for assetType %@", &v35, 0x16u);
        v30 = 0;
      }
    }

    else
    {
      v33 = qword_100BCE968;
      if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
      {
        sub_100872820(v33);
      }

      v30 = 1;
    }
  }

  else
  {
    sub_100872864(&v35);
    v30 = v35;
  }

  return v30;
}

Class sub_10077D038(uint64_t a1)
{
  if (!qword_100BC7B40)
  {
    qword_100BC7B40 = _sl_dlopen();
  }

  result = objc_getClass("SUCoreRestoreVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100BC7B38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10077D138()
{
  result = _sl_dlopen();
  qword_100BC7B40 = result;
  return result;
}

uint64_t sub_10077D1AC(uint64_t a1)
{
  v2 = MGCopyAnswer();
  v3 = [*(a1 + 56) objectForKey:@"BTPowerTableAssetSKU"];
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    v24 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "MAFetch: SKU Optimization not defined in Asset Metadata, Skip local SKU check";
LABEL_30:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
    }

LABEL_31:
    v5 = 0;
LABEL_32:
    v23 = 1;
    goto LABEL_33;
  }

  if (!v2 || [v2 length] != 16)
  {
    v24 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "MAFetch: SKU not configured or failure to read for Local Device";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v5 = [v2 subdataWithRange:{8, 8}];
  v6 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = v2;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MAFetch: QueriedSkuData %@ deviceSkuData %@", buf, 0x16u);
  }

  if (!v5 || ![v5 length])
  {
    v27 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      sub_100872914(v2, buf, [v2 length], v27);
    }

    goto LABEL_32;
  }

  v28 = MGCopyAnswer();
  v29 = [v4 objectForKey:?];
  v7 = [[NSString alloc] initWithData:v5 encoding:4];
  if (v7 && v29 && [v29 count])
  {
    v8 = v7;
    v9 = [v7 UTF8String];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v29;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = *v31;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v30 + 1) + 8 * i) UTF8String];
          if (v9 && v14 && !strcmp(v14, v9))
          {

            goto LABEL_32;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  v15 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
  {
    sub_1008728DC(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  v23 = 0;
LABEL_33:

  return v23;
}

BOOL sub_10077D5B0(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [NSURL fileURLWithPath:@"/private/var/db/ConnectivityPowerTableUpdates/BT/"];
  v4 = *(a1 + 40);
  if (!v4 || ([v4 containsString:@"PowerTable"] & 1) == 0)
  {
    v10 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 40);
      v41 = *(a1 + 48);
      *buf = 138412802;
      v64 = v40;
      v65 = 2112;
      v66 = v41;
      v67 = 1024;
      LODWORD(v68) = [v40 isEqualToString:@"PowerTable"];
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MAFetch: PTB Asset %@ not there in AssetType %@ %d", buf, 0x1Cu);
    }

    goto LABEL_14;
  }

  if ((sub_10077D1AC(a1) & 1) == 0)
  {
    v14 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      sub_10087296C(v14, v15, v16, v17, v18, v19, v20, v21);
    }

LABEL_14:
    v11 = 0;
    v12 = 0;
    goto LABEL_15;
  }

  v52 = MGCopyAnswer();
  v56 = [*(a1 + 56) objectForKey:@"_OSRestoreVersionCompatibilities"];
  v54 = [*(a1 + 56) objectForKey:@"_OSVersionCompatibilities"];
  v50 = [v56 objectForKey:v52];
  v51 = [v54 objectForKey:v52];
  if (!v56 || ![v56 count] || !v54 || !objc_msgSend(v54, "count"))
  {
    v22 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      sub_100872AE8(v56 == 0, v22);
    }

    v9 = 0;
    v55 = 0;
    v53 = 0;
    v57 = 0;
    v8 = 0;
    v7 = 0;
    goto LABEL_21;
  }

  v53 = [v51 objectForKey:@"_MinOSVersion"];
  v55 = [v51 objectForKey:@"_MaxOSVersion"];
  v5 = [v50 objectForKey:@"_MinOSRestoreVersion"];
  v57 = [v50 objectForKey:@"_MaxOSRestoreVersion"];
  v6 = sub_10077E014();
  v7 = v6;
  if (!v6 || ([v6 isEqual:*(a1 + 32)] & 1) == 0)
  {
    v24 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 32);
      *buf = 138412546;
      v64 = v7;
      v65 = 2112;
      v66 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "MAFetch: Newer PTB Asset version currentPtbAssetVersion %@ > Assetversion %@ ", buf, 0x16u);
    }

    v60 = 0;
    v26 = [v2 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v60];
    v27 = v60;
    v28 = qword_100BCE968;
    if (v26)
    {
      if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v64 = v3;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "MAFetch: Successfully created PTB asset download folder %@", buf, 0xCu);
      }

      v29 = *(a1 + 24);
      v69[0] = @"/private/var/db/ConnectivityPowerTableUpdates/BT/";
      v69[1] = v29;
      v30 = [NSArray arrayWithObjects:v69 count:2];
      v23 = [NSURL fileURLWithPathComponents:v30];

      v8 = v5;
      if (*a1 && v23)
      {
        v59[1] = v27;
        v31 = [v2 copyItemAtURL:? toURL:? error:?];
        v11 = v27;

        v8 = v5;
        if (v31)
        {
          v32 = qword_100BCE968;
          if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
          {
            v33 = *a1;
            *buf = 138412546;
            v64 = v33;
            v65 = 2112;
            v66 = v23;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "MAFetch: Successfully Copied Asset files from src %@ to Local sandboxed Path %@", buf, 0x16u);
          }

          v34 = objc_alloc_init(NSMutableDictionary);
          v35 = v34;
          v49 = v34;
          if (v53 && v55)
          {
            [v34 setObject:v5 forKey:@"_MinOSRestoreVersion"];
            [v35 setObject:v57 forKey:@"_MaxOSRestoreVersion"];
          }

          [v35 setObject:v53 forKey:@"_MinOSVersion"];
          [v35 setObject:v55 forKey:@"_MaxOSVersion"];
          [v35 setObject:*(a1 + 32) forKey:@"assetVersion"];
          [v23 URLByAppendingPathComponent:@"Info.plist"];
          v48 = v59[0] = v11;
          v36 = [v35 writeToURL:v48 error:v59];
          v37 = v59[0];

          v11 = v37;
          v38 = qword_100BCE968;
          if (v36)
          {
            if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "MAFetch: Success to create Info.plist for newly downloaded Asset", buf, 2u);
            }

            v58 = 0;
            v39 = sub_10077E164(a1, &v58);
            v9 = v58;

            v11 = v39;
            sub_10077E380(a1, v9);
          }

          else
          {
            if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
            {
              v45 = [v11 localizedDescription];
              sub_100872A94(v45, buf);
            }

            v9 = 0;
          }

          goto LABEL_52;
        }
      }

      else
      {
        v11 = v27;
      }

      v43 = qword_100BCE968;
      if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
      {
        v44 = *a1;
        *buf = 138412802;
        v64 = v44;
        v65 = 2112;
        v66 = v23;
        v67 = 2112;
        v68 = v11;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "MAFetch: Failed to Copy Asset files from src %@ to Local sandboxed Path %@ with error %@", buf, 0x20u);
      }

      v9 = 0;
      goto LABEL_52;
    }

    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      v8 = v5;
      v42 = [v27 localizedDescription];
      sub_100872A2C(v3, v42, buf, v28);
      v9 = 0;
      v23 = 0;
      v11 = v27;
      goto LABEL_52;
    }

    v9 = 0;
    v23 = 0;
    v11 = v27;
LABEL_47:
    v8 = v5;
    goto LABEL_52;
  }

  if (!os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v23 = 0;
    v11 = 0;
    goto LABEL_47;
  }

  sub_1008729A4();
  v8 = v5;
  v9 = 0;
LABEL_21:
  v23 = 0;
  v11 = 0;
LABEL_52:
  v46 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      v47 = [v11 localizedDescription];
    }

    else
    {
      v47 = @"No Error";
    }

    *v61 = 138412290;
    v62 = v47;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "MAFetch: Initialized PTB Asset return with error %@", v61, 0xCu);
    if (v11)
    {
    }
  }

  v12 = v11 == 0;

LABEL_15:
  return v12;
}

id sub_10077E014()
{
  v13[0] = @"/private/var/db/ConnectivityPowerTableUpdates/BT/";
  v13[1] = @"Latest.plist";
  v0 = [NSArray arrayWithObjects:v13 count:2];
  v1 = [NSURL fileURLWithPathComponents:v0];

  if (v1)
  {
    v2 = [[NSMutableDictionary alloc] initWithContentsOfURL:v1];
    v3 = [v2 objectForKey:@"assetVersion"];
  }

  else
  {
    v4 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      sub_100872B78(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v3 = 0;
  }

  return v3;
}

id sub_10077E164(uint64_t a1, void *a2)
{
  v14[0] = @"/private/var/db/ConnectivityPowerTableUpdates/BT/";
  v14[1] = @"Latest.plist";
  v4 = [NSArray arrayWithObjects:v14 count:2];
  v5 = [NSURL fileURLWithPathComponents:v4];

  v6 = [[NSMutableDictionary alloc] initWithContentsOfURL:v5];
  if (!v6)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
  }

  *a2 = [v6 objectForKey:@"latestAssetSubDir"];
  v7 = [v6 objectForKey:@"assetVersion"];
  [v6 setObject:*(a1 + 24) forKey:@"latestAssetSubDir"];
  [v6 setObject:*(a1 + 32) forKey:@"assetVersion"];
  v12 = 0;
  v8 = [v6 writeToURL:v5 error:&v12];
  v9 = v12;
  if ((v8 & 1) == 0 && os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
  {
    v10 = [v9 localizedDescription];
    sub_100872BB0(v10, v13);
  }

  return v9;
}

void sub_10077E380(uint64_t a1, void *a2)
{
  v20 = a2;
  v22 = [NSURL fileURLWithPath:@"/private/var/db/ConnectivityPowerTableUpdates/BT/"];
  v3 = +[NSFileManager defaultManager];
  v28 = 0;
  v21 = [v3 contentsOfDirectoryAtURL:v22 includingPropertiesForKeys:0 options:5 error:&v28];
  v4 = v28;

  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      sub_100872C04();
    }
  }

  else
  {
    v5 = [NSMutableArray alloc];
    v6 = *(a1 + 24);
    v34[0] = @"Latest.plist";
    v34[1] = v6;
    v7 = [NSArray arrayWithObjects:v34 count:2];
    v8 = [v5 initWithArray:v7];

    if (v20)
    {
      [v8 addObject:?];
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v21;
    v4 = 0;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v10)
    {
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = [v13 lastPathComponent];
          v15 = [v8 containsObject:v14];

          if ((v15 & 1) == 0)
          {
            v16 = +[NSFileManager defaultManager];
            v23 = v4;
            v17 = [v16 removeItemAtURL:v13 error:&v23];
            v18 = v23;

            if ((v17 & 1) == 0)
            {
              v19 = qword_100BCE968;
              if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v30 = v13;
                v31 = 2112;
                v32 = v18;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "MAFetch: Failed to remove sub-dir %@ with error: %@", buf, 0x16u);
              }
            }

            v4 = v18;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v10);
    }
  }
}

_OWORD *sub_10077E718(_OWORD *a1)
{
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  v2 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MAFetch: Initialize BTPtbAsset: ", v4, 2u);
  }

  return a1;
}

uint64_t sub_10077E798(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_1003A1C64(a1, 1818583905);
  *a1 = &off_100B0C0E0;
  *(a1 + 400) = a3;
  v6 = v5;
  *(a1 + 408) = v6;
  *(a1 + 416) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  sub_10077E860(a1, (a1 + 480));

  return a1;
}

void sub_10077E828(_Unwind_Exception *a1)
{
  v4 = *(v2 + 480);
  if (v4)
  {
    *(v2 + 488) = v4;
    operator delete(v4);
  }

  sub_1003A1D74(v2);
  _Unwind_Resume(a1);
}

void sub_10077E860(uint64_t a1, char **a2)
{
  if (*(a1 + 480) == *(a1 + 488))
  {
    v3 = (a1 + 480);
    if ((a1 + 480) != a2)
    {
      sub_1003A5C5C(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
    }
  }

  else
  {
    __p = 0;
    v9 = 0;
    v10 = 0;
    sub_1003A5D88(&__p, a2);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, (*(a1 + 488) - *(a1 + 480)) >> 2, &kCFTypeArrayCallBacks);
  v5 = *(a1 + 480);
  while (v5 != *(a1 + 488))
  {
    v6 = *v5++;
    LODWORD(__p) = v6;
    v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &__p);
    CFArrayAppendValue(Mutable, v7);
    CFRelease(v7);
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertySupportedCodecs", Mutable);
  CFRelease(Mutable);
}

uint64_t sub_10077E978(uint64_t a1)
{
  *a1 = &off_100B0C0E0;
  v2 = *(a1 + 480);
  if (v2)
  {
    *(a1 + 488) = v2;
    operator delete(v2);
  }

  return sub_1003A1D74(a1);
}

void sub_10077E9E4(uint64_t a1)
{
  sub_10077E978(a1);

  operator delete();
}

void sub_10077EA30(uint64_t a1, int a2, CFNumberRef number)
{
  if (a2 == 10)
  {
    v4 = 0;
    if (CFNumberGetValue(number, kCFNumberIntType, &v4))
    {
      (*(**(a1 + 400) + 48))(*(a1 + 400), a1, v4);
    }
  }

  else if (a2 == 9)
  {
    valuePtr = 0;
    if (CFNumberGetValue(number, kCFNumberIntType, &valuePtr))
    {
      (*(**(a1 + 400) + 40))(*(a1 + 400), a1, valuePtr);
    }
  }

  else
  {

    sub_1003A48A8();
  }
}

uint64_t sub_10077EB2C(uint64_t a1)
{
  result = (***(a1 + 400))(*(a1 + 400), a1);
  *(a1 + 416) = 1;
  return result;
}

void sub_10077ED90(id a1)
{
  v1 = objc_alloc_init(ContactTracingDaemonBridge);
  v2 = qword_100BC7B48;
  qword_100BC7B48 = v1;
}

void sub_10077F0D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    sub_10000C808(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077F4DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077F6C8(uint64_t a1, void *a2)
{
  v5 = a2;
  pthread_mutex_lock(&stru_100B54F48);
  v3 = [v5 copy];
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;

  if (qword_100B512C8 != -1)
  {
    sub_100872CEC();
  }

  sub_10036EF4C(off_100B512C0 + 80, a1);
  pthread_mutex_unlock(&stru_100B54F48);
}

uint64_t sub_10077F7A0(uint64_t a1)
{
  pthread_mutex_lock(&stru_100B54F48);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;

  if (qword_100B512C8 != -1)
  {
    sub_100872CEC();
  }

  sub_10007A3F0(off_100B512C0 + 80, a1);

  return pthread_mutex_unlock(&stru_100B54F48);
}

void sub_10077FA44(uint64_t a1, void *a2)
{
  v4 = a2;
  pthread_mutex_lock(&stru_100B54F48);
  objc_storeStrong((a1 + 8), a2);
  pthread_mutex_unlock(&stru_100B54F48);
}

uint64_t sub_10077FB08(uint64_t a1)
{
  pthread_mutex_lock(&stru_100B54F48);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = objc_retainBlock(*(a1 + 16));
    if (v3)
    {
      dispatch_async(v2, v3);
    }
  }

  return pthread_mutex_unlock(&stru_100B54F48);
}

void sub_10077FC24()
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

uint64_t sub_10077FE04(uint64_t a1)
{
  v2 = sub_100589578(a1, "GATTService", 0x100000);
  *v2 = &off_100B0C2D8;
  v2[41] = 0;
  if (qword_100B54790 != -1)
  {
    sub_100872D00();
  }

  v3 = qword_100B54788;
  *(a1 + 328) = qword_100B54788;
  sub_100589880(a1, v3);
  return a1;
}

void sub_10077FEA0(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_10077FED8(uint64_t a1)
{
  v2 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "GATTService start", v4, 2u);
  }

  return sub_100589A28(a1);
}

uint64_t sub_10077FF4C(uint64_t a1)
{
  v2 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "GATTService stop", v4, 2u);
  }

  return sub_100589D2C(a1);
}

BOOL sub_10077FFC0(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_100B50F78 != -1)
  {
    sub_100872D14();
  }

  if (sub_100580844(qword_100B50F70, a2))
  {
    v4 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      if (v8 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136446210;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Rejecting GATT connection because device %{public}s is already connected over GATT", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }

  else
  {

    return sub_10058AD94(a1, a2);
  }
}

uint64_t sub_10078011C(uint64_t a1, uint64_t a2)
{
  v12 = xmmword_1008A9EA0;
  memset(v14, 0, sizeof(v14));
  v11 = 0;
  v10 = 0;
  if (sub_10053C3E8(a2))
  {
    if (sub_10053A020(a2, &v12, 4u))
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = sub_10054BE34(a2, v14, &v11);
    if (v11)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v4 = 4 * (sub_10024A9C0(v14, 6145, &v10) == 0);
    }

    else
    {
      v4 = 0;
    }
  }

  if (sub_10053C3E8(a2) && sub_1000E2140(a2, 23))
  {
    v4 = 4;
  }

  v7 = *(a1 + 32);
  v13 = 0;
  sub_100016250(&v13);
  *&v9 = v13;
  *(&v9 + 1) = SWORD2(v13);
  return sub_100539554(a2, v7, v4, &v9, 0);
}

BOOL sub_10078028C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = xmmword_1008A9EA0;
  memset(v9, 0, sizeof(v9));
  v7 = 0;
  v6 = 0;
  *a3 = 0;
  if (sub_10053C3E8(a2))
  {
    result = sub_10053A020(a2, &v8, 4u);
    if (!result)
    {
      return result;
    }

LABEL_10:
    *a3 = 1;
    return result;
  }

  if (sub_10054BE34(a2, v9, &v7) && v7 && !sub_10024A9C0(v9, 6145, &v6))
  {
    *a3 = 1;
  }

  result = sub_10053C3E8(a2);
  if (result)
  {
    result = sub_1000E2140(a2, 23);
    if (result)
    {
      goto LABEL_10;
    }
  }

  return result;
}

void sub_100780530(uint64_t a1)
{
  *a1 = off_100B0C480;
  *(a1 + 8) = off_100B0C530;
  *(a1 + 16) = off_100B0C550;
  *(a1 + 24) = off_100B0C578;
  *(a1 + 32) = &off_100B0C5A8;
  *(a1 + 40) = &off_100B0C5C0;
  *(a1 + 48) = &off_100B0C5D8;
  *(a1 + 56) = &off_100B0C5F0;
  *(a1 + 64) = off_100B0C608;
  *(a1 + 72) = &off_100B0C668;
  *(a1 + 80) = 0;
  sub_100044BBC(a1 + 96);
  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 160) = 500;
  *(a1 + 176) = 0;
  *(a1 + 164) = 0;
  *(a1 + 172) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a1 + 208;
  *(a1 + 216) = a1 + 208;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 248) = 0;
  *(a1 + 264) = a1 + 264;
  *(a1 + 272) = a1 + 264;
  *(a1 + 336) = 0;
  *(a1 + 368) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 328) = 0;
  *(a1 + 320) = 0;
  operator new();
}

void sub_100780ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_guard_abort(&qword_100BC7C88);

  v20 = *(v14 + 304);
  if (v20)
  {
    *(v14 + 312) = v20;
    operator delete(v20);
  }

  sub_100798814(v18);
  sub_10000CEDC(v17, *(v14 + 240));
  sub_100028EB4(v16);
  sub_10000CEDC(v15, *(v14 + 192));

  sub_10007A068(v14 + 96);
  _Unwind_Resume(a1);
}

uint64_t sub_100781058(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  if (v7)
  {
    [*(a1 + 288) addObject:v5];
    v8 = sub_100778BAC(v7, v6);
    if (!v8)
    {
      sub_100781130(v7);
      v8 = 0;
    }
  }

  else
  {
    v8 = 3;
  }

  sub_1000088CC(v10);

  return v8;
}

void sub_100781108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100781130(uint64_t a1)
{
  v2 = [*(a1 + 64) longTermKeyMap];
  v3 = [v2 mutableCopy];
  v4 = *(a1 + 72);
  *(a1 + 72) = v3;

  v5 = *(a1 + 88);
  *(a1 + 88) = 0;

  v6 = *(a1 + 80);
  *(a1 + 80) = 0;
}

id sub_1007811A8(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 96);
  v2 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(a1 + 288);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (*([*(a1 + 176) objectForKey:{v7, v9}] + 8))
        {
          [v2 addObject:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v4);
  }

  sub_1000088CC(v13);

  return v2;
}

void sub_1007812FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100781334(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4)
  {
    sub_1007813B4(v4);
  }

  sub_1000088CC(v5);
}

void sub_1007813B4(uint64_t a1)
{
  if (*(a1 + 88) && *(a1 + 80))
  {
    v2 = [*(a1 + 72) objectForKeyedSubscript:?];
    v7 = [v2 mutableCopy];

    [v7 removeObject:*(a1 + 88)];
    v3 = [v7 count];
    v4 = *(a1 + 72);
    if (v3)
    {
      [v4 setObject:v7 forKeyedSubscript:*(a1 + 80)];
    }

    else
    {
      [v4 removeObjectForKey:*(a1 + 80)];
    }

    v5 = *(a1 + 88);
    *(a1 + 88) = 0;

    v6 = *(a1 + 80);
    *(a1 + 80) = 0;
  }
}

void sub_10078149C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4)
  {
    sub_100781130(v4);
  }

  sub_1000088CC(v5);
}

id sub_10078151C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100BC7C98 != -1)
  {
    sub_100872F60();
  }

  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 64);
    if (v6)
    {
      if (*(v5 + 164) == 1)
      {
        v7 = *(v5 + 56);
      }

      else
      {
        v7 = 0;
      }

      v9 = sub_100778224(v7);
      v10 = *(v5 + 72);
      v11 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
      {
        v12 = CUPrintNSObjectOneLine();
        *buf = 141558275;
        v21 = 1752392040;
        v22 = 2113;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "getFindMyDeviceLTK findMyEncryptionDictionary:%{private, mask.hash}@", buf, 0x16u);
      }

      v13 = [v10 objectForKeyedSubscript:v9];
      if ([v13 count])
      {
        v14 = [v13 objectAtIndexedSubscript:0];
        v15 = [v14 subdataWithRange:{0, 16}];
        v8 = [v15 mutableCopy];

        if (byte_100BC7C90 == 1)
        {
          v29 = 0;
          v28 = 0;
          [v8 replaceBytesInRange:1 withBytes:{10, &v28}];
          v16 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
          {
            *buf = 141558275;
            v21 = 1752392040;
            v22 = 2113;
            v23 = v8;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "BAD LTK:%{private, mask.hash}@", buf, 0x16u);
          }
        }

        v17 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
        {
          *buf = 141558787;
          v21 = 1752392040;
          v22 = 2113;
          v23 = v9;
          v24 = 2160;
          v25 = 1752392040;
          v26 = 2113;
          v27 = v8;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "getFindMyDeviceLTK sessionKey:%{private, mask.hash}@ --> %{private, mask.hash}@", buf, 0x2Au);
        }

        sub_100781984(v5, v9, v8);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  sub_1000088CC(v19);

  return v8;
}

void sub_100781830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_1007818AC(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v4, "FindMy");
  sub_100007E30(__p, "ForceCorruptLTK");
  (*(*v1 + 72))(v1, v4, __p, &byte_100BC7C90);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_100781950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100781984(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((a1 + 88), a3);
  v7 = a3;
  v6 = *(a1 + 80);
  *(a1 + 80) = v5;
}

void sub_1007819F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100781AC0;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_100781AC0(uint64_t a1)
{
  v88 = *(a1 + 40);
  v2 = sub_1007811A8(v88);
  v79 = [v2 mutableCopy];

  v119 = 0;
  v118 = 0;
  v117 = &v118;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = *(a1 + 32);
  v82 = [obj countByEnumeratingWithState:&v113 objects:v134 count:16];
  if (v82)
  {
    v4 = (v88 + 192);
    v81 = *v114;
    *&v3 = 141558531;
    v78 = v3;
    do
    {
      for (i = 0; i != v82; i = i + 1)
      {
        if (*v114 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v113 + 1) + 8 * i);
        v6 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2113;
          *&buf[14] = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SPOwner peripheral updated %{private, mask.hash}@", buf, 0x16u);
        }

        v85 = v5;
        v7 = [v5 longTermKeyMap];
        v8 = [v7 count] == 0;

        if (v8)
        {
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            sub_100872FD8(&v111, v112);
          }
        }

        else
        {
          v83 = objc_opt_new();
          v9 = [v85 lastConnectedLEMAC];
          v10 = v9 == 0;

          if (!v10)
          {
            v11 = [v85 lastConnectedLEMAC];
            [v83 addObject:v11];
          }

          v12 = [v85 longTermKeyMap];
          v13 = [v12 count] == 0;

          if (!v13)
          {
            v14 = [v85 longTermKeyMap];
            v15 = [v14 allKeys];
            [v83 addObjectsFromArray:v15];
          }

          if ([v83 count])
          {
            *uu = 0;
            v133 = 0;
            v16 = [v85 beaconIdentifier];
            v17 = sub_100782A90(v88, v16);
            sub_10004DFB4(uu, v17);

            if (!uuid_is_null(uu))
            {
              goto LABEL_45;
            }

            v18 = [v85 lastConnectedLEMAC];
            v19 = sub_1000AF61C(v18);

            if (v19)
            {
              sub_1000498D4(v88, v19, 0, 1u, 0, 0, buf);
              uuid_copy(uu, buf);
            }

            if (uuid_is_null(uu))
            {
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v20 = [v85 longTermKeyMap];
              v21 = [v20 countByEnumeratingWithState:&v105 objects:v131 count:16];
              if (v21)
              {
                v22 = *v106;
                while (2)
                {
                  for (j = 0; j != v21; j = j + 1)
                  {
                    if (*v106 != v22)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v24 = sub_1000AF61C(*(*(&v105 + 1) + 8 * j));
                    *&buf[8] = 0;
                    *buf = 0;
                    sub_1000498D4(v88, v24, 0, 1u, 0, 0, buf);
                    if (!uuid_is_null(buf))
                    {
                      uuid_copy(uu, buf);
                      goto LABEL_32;
                    }
                  }

                  v21 = [v20 countByEnumeratingWithState:&v105 objects:v131 count:16];
                  if (v21)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_32:
            }

            if (uuid_is_null(uu))
            {
              memset(v104, 0, sizeof(v104));
              v25 = [v85 longTermKeyMap];
              if ([v25 countByEnumeratingWithState:v104 objects:v130 count:16])
              {
                v26 = sub_1000AF61C(**(&v104[0] + 1));
                sub_1000498D4(v88, v26, 1u, 1u, 0, 0, buf);
                uuid_copy(uu, buf);
              }
            }

            if (uuid_is_null(uu))
            {
              v27 = qword_100BCE900;
              if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
              {
                v28 = [v85 beaconIdentifier];
                sub_100777574();
                v29 = __p;
                if (v126 < 0)
                {
                  v29 = *__p;
                }

                *buf = v78;
                *&buf[4] = 1752392040;
                *&buf[12] = 2113;
                *&buf[14] = v28;
                v128 = 2082;
                v129 = v29;
                _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to retrieve/create FindMy peripheral %{private, mask.hash}@ with address %{public}s, ignoring this device", buf, 0x20u);
                if (v126 < 0)
                {
                  operator delete(*__p);
                }
              }
            }

            else
            {
LABEL_45:
              v86 = objc_opt_new();
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v87 = v83;
              v30 = [v87 countByEnumeratingWithState:&v100 objects:v122 count:16];
              if (v30)
              {
                v31 = *v101;
                do
                {
                  for (k = 0; k != v30; k = k + 1)
                  {
                    if (*v101 != v31)
                    {
                      objc_enumerationMutation(v87);
                    }

                    v33 = sub_1000AF61C(*(*(&v100 + 1) + 8 * k));
                    v34 = v33;
                    v35 = *v4;
                    v36 = v88 + 192;
                    if (*v4)
                    {
                      v37 = v88 + 192;
                      do
                      {
                        v38 = *(v35 + 32);
                        v39 = v38 >= v33;
                        v40 = v38 < v33;
                        if (v39)
                        {
                          v37 = v35;
                        }

                        v35 = *(v35 + 8 * v40);
                      }

                      while (v35);
                      v36 = v88 + 192;
                      if (v37 != v4)
                      {
                        v36 = v88 + 192;
                        if (v33 >= *(v37 + 32))
                        {
                          v41 = sub_10004DF60(uu);
                          v42 = sub_10004DF60((v37 + 40));
                          v43 = [v41 isEqual:v42];

                          if ((v43 & 1) == 0)
                          {
                            v44 = qword_100BCE900;
                            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                            {
                              v45 = sub_10004DF60((v37 + 40));
                              sub_10004D9B0();
                              v46 = buf;
                              if (v128 < 0)
                              {
                                v46 = *buf;
                              }

                              *__p = 138543618;
                              *&__p[4] = v45;
                              v124 = 2082;
                              v125 = v46;
                              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Previous device %{public}@ with address %{public}s pending removal", __p, 0x16u);
                              if (SHIBYTE(v128) < 0)
                              {
                                operator delete(*buf);
                              }
                            }

                            v47 = sub_10004DF60((v37 + 40));
                            [v86 addObject:v47];
                          }

                          v36 = v37;
                        }
                      }
                    }

                    if (*(v88 + 172) == 1)
                    {
                      v48 = sub_10009A544(*(v88 + 256), v34);
                      if (v48)
                      {
                        v49 = sub_10004DF60(uu);
                        v50 = *v48;
                        v51 = [v49 isEqual:v50];

                        if ((v51 & 1) == 0)
                        {
                          v52 = qword_100BCE900;
                          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                          {
                            v53 = sub_10004DF60((v36 + 40));
                            sub_10004D9B0();
                            v54 = buf;
                            if (v128 < 0)
                            {
                              v54 = *buf;
                            }

                            *__p = 138543618;
                            *&__p[4] = v53;
                            v124 = 2082;
                            v125 = v54;
                            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Previous device %{public}@ with address %{public}s pending removal", __p, 0x16u);
                            if (SHIBYTE(v128) < 0)
                            {
                              operator delete(*buf);
                            }
                          }

                          v55 = *v48;
                          [v86 addObject:v55];
                        }
                      }
                    }
                  }

                  v30 = [v87 countByEnumeratingWithState:&v100 objects:v122 count:16];
                }

                while (v30);
              }

              v98 = 0u;
              v99 = 0u;
              v96 = 0u;
              v97 = 0u;
              v56 = v86;
              v57 = [v56 countByEnumeratingWithState:&v96 objects:v121 count:16];
              if (v57)
              {
                v58 = *v97;
                do
                {
                  v59 = 0;
                  do
                  {
                    if (*v97 != v58)
                    {
                      objc_enumerationMutation(v56);
                    }

                    v60 = *(*(&v96 + 1) + 8 * v59);
                    v61 = qword_100BCE900;
                    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      *&buf[4] = v60;
                      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Removing previous device %{public}@ with same address, disconnecting if already connecting/connected", buf, 0xCu);
                    }

                    if (qword_100B512F8 != -1)
                    {
                      sub_100872F74();
                    }

                    sub_1003B2250(off_100B512F0, v60, 8u);
                    sub_100782C70(v88, v60);
                    v59 = v59 + 1;
                  }

                  while (v57 != v59);
                  v57 = [v56 countByEnumeratingWithState:&v96 objects:v121 count:16];
                }

                while (v57);
              }

              v62 = sub_10004DF60(uu);
              v63 = sub_100781058(v88, v62, v85);

              if (v63)
              {
                v64 = qword_100BCE900;
                if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                {
                  v70 = sub_10004DF60(uu);
                  *buf = 138543618;
                  *&buf[4] = v70;
                  *&buf[12] = 1024;
                  *&buf[14] = v63;
                  _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Failed to set FindMy info for device %{public}@ with result %d, skipping", buf, 0x12u);
                }

                v65 = sub_10004DF60(uu);
                sub_100782C70(v88, v65);
              }

              else
              {
                v66 = [v85 name];
                v67 = v66;
                sub_100007E30(v94, [v66 UTF8String]);
                sub_100783194(v88, uu, v94, 4);
                if (v95 < 0)
                {
                  operator delete(v94[0]);
                }

                v68 = qword_100BCE900;
                if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                {
                  v69 = sub_10004DF60(uu);
                  *buf = 138543362;
                  *&buf[4] = v69;
                  _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "new addresses for device %{public}@ changed", buf, 0xCu);
                }

                sub_1000C73A4(&v117, uu);
                v65 = sub_10004DF60(uu);
                [v79 removeObject:v65];
              }
            }
          }

          else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            sub_100872F9C(&v109, v110);
          }
        }
      }

      v82 = [obj countByEnumeratingWithState:&v113 objects:v134 count:16];
    }

    while (v82);
  }

  if (v119)
  {
    if (qword_100B508B0 != -1)
    {
      sub_100873014();
    }

    v71 = off_100B508A8;
    sub_100506B30(v93, &v117);
    sub_10074713C(v71, v93);
    sub_10000CEDC(v93, v93[1]);
    if (qword_100B512F8 != -1)
    {
      sub_100872F74();
    }

    sub_1003BF8D8(off_100B512F0);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v72 = v79;
  v73 = [v72 countByEnumeratingWithState:&v89 objects:v120 count:16];
  if (v73)
  {
    v74 = *v90;
    do
    {
      v75 = 0;
      do
      {
        if (*v90 != v74)
        {
          objc_enumerationMutation(v72);
        }

        v76 = *(*(&v89 + 1) + 8 * v75);
        v77 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v76;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "removing FindMy %{public}@, disconnecting if already connecting/connected", buf, 0xCu);
        }

        if (qword_100B512F8 != -1)
        {
          sub_100872F74();
        }

        sub_1003B2250(off_100B512F0, v76, 8u);
        if (qword_100B508D0 != -1)
        {
          sub_10087303C();
        }

        sub_100782C70(off_100B508C8, v76);
        v75 = v75 + 1;
      }

      while (v73 != v75);
      v73 = [v72 countByEnumeratingWithState:&v89 objects:v120 count:16];
    }

    while (v73);
  }

  sub_10000CEDC(&v117, v118);
}

void sub_100782848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40)
{
  sub_10000CEDC(&a39, a40);
  sub_10000CEDC(&STACK[0x288], STACK[0x290]);

  _Unwind_Resume(a1);
}

id sub_100782A90(uint64_t a1, void *a2)
{
  v3 = a2;
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 96);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 288);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v5)
  {
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [*(a1 + 176) objectForKey:{v8, v16}];
        if (v9)
        {
          v10 = v9[8];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 beaconIdentifier];
            v13 = [v12 isEqual:v3];

            if (v13)
            {
              v14 = v8;

              goto LABEL_14;
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  sub_1000088CC(v20);

  return v14;
}

void sub_100782C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100782C70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Clearing all records of device %{public}@", buf, 0xCu);
  }

  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 96);
  v5 = [*(a1 + 176) objectForKey:v3];
  v6 = v5;
  if (v5)
  {
    if (v5[164] == 1)
    {
      v7 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device %@ is pending delete but still connected, wait for a complete disconnection", buf, 0xCu);
      }

      *(v6 + 488) = 1;
      goto LABEL_27;
    }

    if (_os_feature_enabled_impl())
    {
      sub_100007E30(__p, "DA_ASK_RETAIN_DEVICE");
      v8 = sub_10004EB40(a1, v3, __p);
      v9 = v8;
      if ((v19 & 0x80000000) == 0)
      {
        if (!v8)
        {
          goto LABEL_20;
        }

LABEL_13:
        v10 = sub_10078928C(a1, v3, @"ASK_LINKED_RADIO_ADDRESS");
        v11 = v10;
        if (v10)
        {
          v12 = sub_100777FF4(v10);
          v13 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
          {
            *buf = 138478083;
            *&buf[4] = v11;
            buf_12 = 2112;
            buf_14 = v3;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "removing classic paired device with address %{private}@ linked with %@", buf, 0x16u);
          }

          if (qword_100B50F88 != -1)
          {
            sub_1008732CC();
          }

          sub_1006E0CF4(off_100B50F80, v12);
          sub_1007893AC(a1, v3, @"ASK_LINKED_RADIO_ADDRESS", 0);
        }

        goto LABEL_20;
      }

      operator delete(__p[0]);
      if (v9)
      {
        goto LABEL_13;
      }
    }

LABEL_20:
    [*(a1 + 176) removeObjectForKey:v3];
    *uu2 = 0;
    v25 = 0;
    sub_10004DFB4(uu2, v3);
    v14 = (a1 + 208);
    for (i = *(a1 + 216); ; i = *(i + 1))
    {
      if (i == v14)
      {
        goto LABEL_26;
      }

      if (!uuid_compare(i + 16, uu2))
      {
        break;
      }
    }

    if (i != v14)
    {
      v17 = *i;
      v16 = *(i + 1);
      *(v17 + 8) = v16;
      *v16 = v17;
      --*(a1 + 224);
      operator delete(i);
    }

LABEL_26:
    [*(a1 + 288) removeObject:v3];
    *buf = *(v6 + 24);
    sub_100075DC4((a1 + 184), buf);
    *buf = *(v6 + 16);
    sub_100075DC4((a1 + 184), buf);
    sub_100420224(*(a1 + 256), v6);
    sub_100779F0C(v6, 0, 0, 0);
    sub_1000D3940(v6, a1 + 264);
    sub_1000D3BB8(v6);
    operator delete();
  }

LABEL_27:
  sub_1000088CC(v20);
}

void sub_1007830F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1000088CC(&a24);

  _Unwind_Resume(a1);
}

uint64_t sub_100783194(void *a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, (a1 + 12));
  v8 = objc_autoreleasePoolPush();
  v9 = sub_10004DF60(a2);
  v10 = sub_10004B1D8(a1, v9);

  if (!v10)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v18 = *(a3 + 16);
  }

  v12 = sub_1007784E8(v10, __p, a4, 0);
  v11 = v12;
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  operator delete(__p[0]);
  if (v11)
  {
LABEL_10:
    sub_1000C7A50(a1, a2);
  }

LABEL_11:
  v13 = sub_10004DF60(a2);
  if (*(a3 + 23) < 0)
  {
    sub_100008904(v15, *a3, *(a3 + 8));
  }

  else
  {
    *v15 = *a3;
    v16 = *(a3 + 16);
  }

  sub_1000E335C(a1, v13, v15);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

LABEL_17:
  objc_autoreleasePoolPop(v8);
  sub_1000088CC(v19);
  return v11;
}

void sub_100783364(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_1008732F4();
  }

  sub_10051ABE0(qword_100B50B80 + 8, a1 + 8);
  if (qword_100B508C0 != -1)
  {
    sub_100873308();
  }

  sub_1007BF384(off_100B508B8, a1 + 16);
  if (qword_100B50AA0 != -1)
  {
    sub_10087331C();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 24);
  if ((sub_10041FD30(*(a1 + 256), a1 + 32) & 1) == 0 && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    sub_100873330();
  }

  sub_100432610();
  v26 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "wipeIDCache");
  (*(*v2 + 72))(v2, buf, __p, &v26);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(*buf);
  }

  if (qword_100B50910 != -1)
  {
    sub_10087336C();
  }

  if ((sub_1005BBA08(off_100B50908) & 1) != 0 || v26 == 1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = *(a1 + 176);
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v27 count:16];
    if (v4)
    {
      v5 = *v19;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(v3);
          }

          sub_10078380C(a1, *(*(&v18 + 1) + 8 * i), @"LeIdentificationHashExist");
        }

        v4 = [v3 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v4);
    }
  }

  v7 = sub_100432950();
  v8 = v7;
  if (v7)
  {
    [v7 setPeripheralsUpdatedCallback:&stru_100B0C6B0];
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100873394();
  }

  *(a1 + 329) = *(off_100B50A98 + 60);
  if (qword_100B51078 != -1)
  {
    sub_1008733BC();
  }

  sub_1000DB5D8(off_100B51070 + 1896, a1 + 64);
  v9 = sub_100017E6C();
  sub_1007988BC(v9 + 1224, a1 + 56);
  v10 = sub_100017E6C();
  sub_100798B5C(v10 + 1184, a1 + 48);
  v11 = sub_100017E6C();
  sub_100532818(v11 + 744, a1 + 40);
  v12 = sub_100017E6C();
  (*(*v12 + 160))(v12, a1 + 383);
  v13 = sub_100017E6C();
  *(a1 + 385) = (*(*v13 + 192))(v13);
  v14 = sub_100017E6C();
  *(a1 + 384) = (*(*v14 + 200))(v14);
  *(a1 + 386) = 0;
  if (_os_feature_enabled_impl())
  {
    v15 = sub_100017E6C();
    (*(*v15 + 120))(v15, a1 + 386);
    if (*(a1 + 386) == 1)
    {
      v16 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "In buddy setup. Registering for buddy state change notifications.", buf, 2u);
      }

      v17 = sub_100017E6C();
      sub_1003C3B3C(v17 + 504, a1 + 72);
    }
  }

  *(a1 + 380) = 0;
}

BOOL sub_10078380C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v46[0] = 0;
  v46[1] = 0;
  sub_100007F88(v46, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  v8 = v7;
  if (!v7)
  {
    v12 = 0;
    goto LABEL_48;
  }

  if (_os_feature_enabled_impl() && [v6 isEqualToString:@"DA_ASK_RETAIN_DEVICE"])
  {
    v9 = *(v8 + 160);
    if (v9)
    {
      v10 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Ignoring unsetting DA_ASK_RETAIN_DEVICE for LE Paired devices", buf, 2u);
      }
    }

    else
    {
      v13 = sub_10077C3B8(v8, @"ASK_LINKED_RADIO_ADDRESS");
      if (v13)
      {
        v14 = v6;
        sub_100007E30(__p, [v6 UTF8String]);
        v15 = sub_1000463C8((v8 + 22), __p);
        if (v45 < 0)
        {
          operator delete(__p[0]);
        }

        if (v8 + 23 == v15)
        {
          v19 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
          {
            v20 = *v8;
            *buf = 138412290;
            *&buf[4] = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device %@ does not have DA_ASK_RETAIN_DEVICE tag", buf, 0xCu);
          }
        }

        else
        {
          v16 = sub_100777FF4(v13);
          v17 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
          {
            v18 = *v8;
            *buf = 138478083;
            *&buf[4] = v13;
            *&buf[12] = 2112;
            *&buf[14] = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Removing classic paired device with address %{private}@ linked with %@", buf, 0x16u);
          }

          if (qword_100B50F88 != -1)
          {
            sub_1008732CC();
          }

          sub_1006E0CF4(off_100B50F80, v16);
          sub_10077C454(v8, @"ASK_LINKED_RADIO_ADDRESS", 0);
          sub_10077C454(v8, @"ASK_RELATED_RADIO_ADDRESS", 0);
        }
      }
    }

    sub_100784264(a1);
    v11 = v9 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v21 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v6;
    sub_100007E30(v42, [v6 UTF8String]);
    v23 = sub_1000463C8((v8 + 22), v42);
    *buf = 138543874;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    *&buf[22] = 1024;
    *&buf[24] = v8 + 23 != v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removing %{public}@ tag from device %{public}@ hasTag:%d", buf, 0x1Cu);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }
  }

  v24 = v6;
  sub_100007E30(v40, [v6 UTF8String]);
  v25 = sub_100776C38(v8 + 22, v40);
  v26 = v25;
  v12 = v25 != 0;
  if (v41 < 0)
  {
    operator delete(v40[0]);
    if (!v26)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v25)
  {
LABEL_29:
    sub_10004DFB4(buf, v5);
    sub_1000C7A50(a1, buf);
  }

LABEL_30:
  sub_10000801C(v46);
  if (([v6 isEqualToString:@"HasBuiltinServices"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"DoNotAutoConnect"))
  {
    sub_100785D40(a1, 1);
  }

  if ([v6 isEqualToString:@"IsAppleWatch"])
  {
    if (qword_100B508C0 != -1)
    {
      sub_1008733E4();
    }

    sub_1007C3BF4(off_100B508B8, v5);
  }

  if ([v6 isEqualToString:@"BluetoothTVRemote"])
  {
    sub_100007E30(v38, "DoNotStopAutoConnecting");
    sub_100776C38(v8 + 22, v38);
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }
  }

  memset(buf, 0, 32);
  *buf = *(a1 + 296);
  sub_100007F20(&buf[8], (a1 + 304));
  v34 = *buf;
  __dst = 0;
  v37 = 0;
  v35 = 0;
  if (*&buf[16] != *&buf[8])
  {
    sub_1000080CC(&v35, (*&buf[16] - *&buf[8]) >> 3);
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100788F6C;
  v32[3] = &unk_100B0C738;
  v33 = v5;
  sub_1000D3CD8(&v34, v32);
  if (v35)
  {
    __dst = v35;
    operator delete(v35);
  }

  if (v11)
  {
    sub_100782C70(a1, *v8);
  }

  v7 = *&buf[8];
  if (*&buf[8])
  {
    *&buf[16] = *&buf[8];
    operator delete(*&buf[8]);
  }

LABEL_48:
  v27 = sub_10005063C(v7, v5);
  if (v27)
  {
    v28 = sub_1000BE4B4();
    v29 = v6;
    sub_100007E30(buf, [v6 UTF8String]);
    v30 = (*(*v28 + 800))(v28, v27, buf);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    if (v30)
    {
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v27, buf);
        sub_10087340C();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E5A58(v27, buf);
        sub_10087345C();
      }

      v12 = 1;
    }
  }

  sub_1000088CC(v46);

  return v12;
}

void sub_100783EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a43);
  _Unwind_Resume(a1);
}

void sub_100783FB4(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 141558275;
    v5 = 1752392040;
    v6 = 2113;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FindMy update %{private, mask.hash}@", &v4, 0x16u);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10087303C();
  }

  sub_1007819F4(off_100B508C8, v2);
}

void sub_1007840B4(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10087331C();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 24);
  if (qword_100B508C0 != -1)
  {
    sub_100873308();
  }

  sub_1007BF4C0(off_100B508B8, a1 + 16);
  if (qword_100B50B88 != -1)
  {
    sub_1008732F4();
  }

  sub_10007A3F0(qword_100B50B80 + 8, a1 + 8);
  v2 = *(a1 + 344);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 352);
  if (v3)
  {
    CFRelease(v3);
  }

  sub_100784180(a1);
}

void sub_100784180(uint64_t a1)
{
  if (_os_feature_enabled_impl() && *(a1 + 80))
  {
    v2 = sub_100007EE8();
    if (sub_10057127C(v2))
    {
      [*(a1 + 80) setEventHandler:0];
      [*(a1 + 80) invalidate];
      v3 = *(a1 + 80);
      *(a1 + 80) = 0;
    }

    else
    {
      v4 = sub_100007EE8();
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10078494C;
      v5[3] = &unk_100ADF8F8;
      v5[4] = a1;
      sub_10000CA94(v4, v5);
    }
  }
}

void sub_100784264(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    sub_100007E30(__p, "DA_ASK_RETAIN_DEVICE");
    v2 = sub_100784318(a1, __p);
    v3 = v2;
    if (v5 < 0)
    {
      operator delete(__p[0]);
      if (v3)
      {
LABEL_4:
        if (*(a1 + 329) == 1)
        {
          sub_1007844E4(a1);
        }

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_4;
    }

    sub_100784180(a1);
  }
}

void sub_1007842FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100784318(uint64_t a1, uint64_t a2)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 96);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 176);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = *v15;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(a1 + 176) objectForKey:{*(*(&v14 + 1) + 8 * v7), __p[0], __p[1], v13}];
        if (*(a2 + 23) < 0)
        {
          sub_100008904(__p, *a2, *(a2 + 8));
        }

        else
        {
          *__p = *a2;
          v13 = *(a2 + 16);
        }

        v9 = sub_1000463C8((v8 + 176), __p);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }

        if (v8 + 184 != v9)
        {
          v10 = 1;
          goto LABEL_16;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_16:

  sub_1000088CC(v18);
  return v10;
}

void sub_1007844E4(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    if (*(a1 + 80))
    {
      v2 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "LeDeviceManager::registerForDAEvents Already registered", buf, 2u);
      }
    }

    else
    {
      v3 = objc_alloc_init(DASession);
      v4 = *(a1 + 80);
      *(a1 + 80) = v3;

      [*(a1 + 80) setDispatchQueue:*(sub_100007EE8() + 8)];
      [*(a1 + 80) setDeviceFlags:8];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100784648;
      v6[3] = &unk_100AFAA88;
      v6[4] = a1;
      [*(a1 + 80) setEventHandler:v6];
      v5 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LeDeviceManager::registerForDAEvents registering for deviceAccess events", buf, 2u);
      }

      [*(a1 + 80) activate];
    }
  }
}

void sub_100784648(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    [v3 eventType];
    v6 = DAEventTypeToString();
    v7 = [v3 error];
    *buf = 138412802;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LeDeviceManager ASK eventHandler %@ error %@ event %@", buf, 0x20u);
  }

  v8 = [v3 error];
  v9 = v8 == 0;

  if (v9)
  {
    v10 = [v3 eventType];
    if (v10 == 10)
    {
      sub_100784864(v4, 0);
    }

    else if (v10 == 42)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v11 = v3;
        v12 = [v11 device];
        v14 = v12;
        v13 = [NSArray arrayWithObjects:&v14 count:1];
        sub_100784864(v4, v13);
      }
    }
  }
}

void sub_100784864(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_os_feature_enabled_impl())
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      if (v3)
      {
        v5 = v3;
      }

      else
      {
        v5 = [v4 availableDevices];
      }

      v6 = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100784998;
      v7[3] = &unk_100B0C6D0;
      v7[4] = a1;
      [v5 enumerateObjectsUsingBlock:v7];
    }
  }
}

void sub_10078494C(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(v1 + 80) setEventHandler:0];
  [*(v1 + 80) invalidate];
  v2 = *(v1 + 80);
  *(v1 + 80) = 0;
}

void sub_100784998(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (([v3 flags] & 8) != 0)
  {
    v5 = [v3 bluetoothIdentifier];

    if (v5)
    {
      v6 = [v3 bluetoothIdentifier];
      v7 = [*(v4 + 176) objectForKey:v6];
      if (v7)
      {
        v8 = [v3 name];
        if (v8)
        {
          v9 = sub_10077C454(v7, @"ASK_DISPLAY_NAME", v8);
          v10 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
          {
            sub_1000D4514(v7);
            if (v13 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            *buf = 67109890;
            v15 = v9;
            v16 = 2112;
            v17 = v3;
            v18 = 2080;
            v19 = p_p;
            v20 = 2112;
            v21 = v8;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "LeDeviceManager::refreshDANames setCustomProperty returned %d for %@ %s %@", buf, 0x26u);
            if (v13 < 0)
            {
              operator delete(__p);
            }
          }
        }
      }
    }
  }
}

void sub_100784B68(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100784BE4;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_100784BE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100432950();
  if (v2)
  {
    v3 = [[NSUUID alloc] initWithUUIDString:@"FFFFEEEE-DDDD-CCCC-BBBB-AAAA00000000"];
    v4 = objc_alloc_init(NSArray);
    [v2 startSessionForUserIdentifier:v3 bundleId:@"com.apple.bluetoothd" vendorIdentifierList:v4 completion:&stru_100B0C6F0];

    v5 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FindMy registration completed", buf, 2u);
    }
  }

  *(v1 + 329) = 1;
  if (_os_feature_enabled_impl())
  {
    v6 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BTGlobalTCCNames] LeDeviceManager::stackDidStart", buf, 2u);
    }

    v7 = sub_100007EE8();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100784E50;
    v8[3] = &unk_100ADF8F8;
    v8[4] = v1;
    sub_10008E008(v7, 5000, v8);
    sub_100784264(v1);
  }
}

void sub_100784DAC(id a1, NSError *a2)
{
  v3 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "startSessionForUserIdentifier returned %@", &v4, 0xCu);
  }
}

uint64_t sub_100784E60(uint64_t a1)
{
  v2 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeDeviceManager::stackWillStop enter", buf, 2u);
  }

  *buf = 0;
  v21 = 0;
  sub_100007F88(buf, a1 + 96);
  v3 = sub_100007EE8();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100785180;
  v19[3] = &unk_100ADF8F8;
  v19[4] = a1;
  sub_10000CA94(v3, v19);
  v4 = sub_100432950();
  if (v4)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10087303C();
    }

    sub_1007811A8(off_100B508C8);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v5 = v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v22 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * v8);
          if (qword_100B508D0 != -1)
          {
            sub_10087303C();
          }

          sub_100782C70(off_100B508C8, v9);
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v15 objects:v22 count:16];
      }

      while (v6);
    }

    [*(a1 + 288) removeAllObjects];
    v10 = [[NSUUID alloc] initWithUUIDString:@"FFFFEEEE-DDDD-CCCC-BBBB-AAAA00000000"];
    [v4 stopSessionForUserIdentifier:v10 bundleId:@"com.apple.bluetoothd" completion:&stru_100B0C710];

    v11 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "FindMy unregistration completed", v14, 2u);
    }
  }

  v12 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "LeDeviceManager::stackWillStop exit", v14, 2u);
  }

  return sub_1000088CC(buf);
}

void sub_100785128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10078518C(id a1, NSError *a2)
{
  v3 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "stopSessionForUserIdentifier returned %@", &v4, 0xCu);
  }
}

void sub_100785238(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 176);
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        sub_10077B6F8([*(a1 + 176) objectForKey:{*(*(&v6 + 1) + 8 * v5), v6}]);
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_10078535C(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007853D8;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

uint64_t sub_1007853D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 384) = 1;
  v2 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeDeviceManager::deviceFirstUnlocked", v4, 2u);
  }

  result = _os_feature_enabled_impl();
  if (result)
  {
    return sub_10009D6F0(v1);
  }

  return result;
}

void sub_100785474(uint64_t a1, int a2)
{
  if (_os_feature_enabled_impl())
  {
    v4 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "Completed";
      if (a2)
      {
        v5 = "Needs to run.";
      }

      *buf = 136446210;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Current SetupBuddy state: %{public}s.", buf, 0xCu);
    }

    v6 = sub_100007EE8();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1007855AC;
    v7[3] = &unk_100AE15D8;
    v7[4] = a1;
    v8 = a2;
    sub_10000CA94(v6, v7);
  }
}

uint64_t sub_1007855AC(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  *(v1 + 386) = v2;
  if ((v2 & 1) == 0)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {

      return sub_10009D6F0(v1);
    }
  }

  return result;
}

void sub_100785618(void *a1, void *a2, int a3)
{
  v5 = a2;
  v37[0] = 0;
  v37[1] = 0;
  sub_100007F88(v37, (a1 + 12));
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    sub_100007E30(__p, "HasBuiltinServices");
    v7 = sub_1000463C8(v6 + 176, __p);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    if (a3)
    {
      if (qword_100B508C0 != -1)
      {
        sub_1008733E4();
      }

      if (!sub_10004EE74(off_100B508B8, v5))
      {
        sub_10077B704(v6, 0);
      }
    }

    else
    {
      sub_10077B704(v6, 1);
      v8 = sub_10000C798();
      if (*(*v8 + 416))(v8) && *(v6 + 392) - 961 < 9 && ((0x10Fu >> (*(v6 + 392) + 63)))
      {
        v9 = [*(&off_100B0C998 + (*(v6 + 392) - 961)) uppercaseString];
        v54 = 0;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        memset(v41, 0, sizeof(v41));
        sub_100008760(&v40);
        v10 = sub_100007774(&v40);
        v11 = v9;
        sub_100007E30(buf, [v9 UTF8String]);
        sub_100007774(v10);
        if (v39 < 0)
        {
          operator delete(*buf);
        }

        std::stringbuf::str();
        sub_1007782B8(v6, &v33);
        if (v34 < 0)
        {
          operator delete(v33);
        }

        if (SHIBYTE(v43) < 0)
        {
          operator delete(*(&v42 + 1));
        }

        std::locale::~locale(v41);
        std::ostream::~ostream();
        std::ios::~ios();
      }
    }

    sub_10004DFB4(&v40, v5);
    sub_1000C7A50(a1, &v40);
    sub_10000801C(v37);
    v12 = v6 + 184;
    if (v6 + 184 != v7)
    {
      sub_100785D40(a1, 1);
      if (sub_1000E3BD0(v6))
      {
        goto LABEL_24;
      }

      sub_100007E30(v31, "_GHS_DEVICE_");
      v13 = sub_1000463C8(v6 + 176, v31);
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }

      if (v12 != v13)
      {
LABEL_24:
        sub_100785F60(a1, v5, 2);
      }
    }

    v40 = 0uLL;
    v41[0].__locale_ = 0;
    sub_1005797AC(&v40, v5, a3, v12 != v7);
    if (sub_10000F034())
    {
      v14 = sub_10000F034();
      (*(*v14 + 40))(v14, &v40);
    }

    if (*(v6 + 160) == 1)
    {
      v15 = sub_10004B1D8(a1, v5);
      sub_100007E30(v29, "needsMFiAuthenticationCertClass2.0c");
      v16 = sub_1000463C8(v15 + 176, v29);
      v17 = v15 + 184;
      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      if (v17 != v16)
      {
        v18 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Starting MFI Auth 2.0c with device %{public}@", buf, 0xCu);
        }

        v19 = sub_100432610();
        (*(*v19 + 24))(v19, v5);
        v20 = sub_100432610();
        (*(*v20 + 192))(v20, v5);
      }

      v21 = sub_10004B1D8(a1, v5);
      sub_100007E30(v27, "needsMFiAuthentication4.0");
      v22 = sub_1000463C8(v21 + 176, v27);
      v23 = v21 + 184;
      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      if (v23 != v22)
      {
        v24 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Starting MFI Auth 4.0 with device %{public}@", buf, 0xCu);
        }

        v25 = sub_100432610();
        (*(*v25 + 24))(v25, v5);
        v26 = sub_100432610();
        (*(*v26 + 192))(v26, v5);
      }
    }
  }

  sub_1000088CC(v37);
}

void sub_100785C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49, uint64_t a50)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_1003B8618(&a49);

  sub_1000088CC(&a40);
  _Unwind_Resume(a1);
}

void sub_100785D40(uint64_t a1, char a2)
{
  v14 = sub_10078D05C(a1);
  v4 = +[NSMutableArray array];
  v13 = a2;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v14;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [*(a1 + 176) objectForKey:v9];
        sub_100007E30(__p, "DoNotAutoConnect");
        v11 = sub_1000463C8((v10 + 176), __p);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        if (v10 + 184 == v11)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  if ((v13 & 1) != 0 || [v4 count])
  {
    v12 = sub_100432610();
    (*(*v12 + 32))(v12, v4);
  }
}

void sub_100785F60(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100873544();
    }

    v6 = sub_10004B1D8(off_100B508C8, v5);
    v7 = v6;
    if (v6 && *(v6 + 160) == 1)
    {
      if (a3 == 1)
      {
        *(v6 + 359) = 1;
      }

      if (qword_100B508D0 != -1)
      {
        sub_100873544();
      }

      v8 = off_100B508C8;
      sub_100007E30(__p, "LeIdentificationHashExist");
      v9 = sub_10004EB40(v8, v5, __p);
      v10 = v9;
      if (v31 < 0)
      {
        operator delete(__p[0]);
        if (v10)
        {
LABEL_12:
          v11 = sub_10000C798();
          if ((*(*v11 + 392))(v11))
          {
            sub_100007E30(v28, "IsLEMouse");
            v12 = v7 + 184;
            if (v7 + 184 == sub_1000463C8(v7 + 176, v28))
            {
              if (v29 < 0)
              {
                operator delete(v28[0]);
              }
            }

            else
            {
              sub_100007E30(v26, "HIDDeviceUnknownBehavior");
              if (v12 == sub_1000463C8(v7 + 176, v26))
              {
                sub_100007E30(v24, "HIDDeviceKnownPoorBehavior");
                if (v12 == sub_1000463C8(v7 + 176, v24))
                {
                  sub_100007E30(v22, "HIDDeviceKnownGoodBehavior");
                  v13 = v12 == sub_1000463C8(v7 + 176, v22);
                  if (v23 < 0)
                  {
                    operator delete(v22[0]);
                  }
                }

                else
                {
                  v13 = 0;
                }

                if (v25 < 0)
                {
                  operator delete(v24[0]);
                }
              }

              else
              {
                v13 = 0;
              }

              if (v27 < 0)
              {
                operator delete(v26[0]);
              }

              if (v29 < 0)
              {
                operator delete(v28[0]);
                if (v13)
                {
                  goto LABEL_42;
                }
              }

              else if (v13)
              {
LABEL_42:
                v21 = qword_100BCE900;
                if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_19;
                }

                *buf = 138543362;
                v33 = v5;
                v15 = "Identification - no hids tags for device %{public}@, not regenerating metric";
                goto LABEL_47;
              }
            }
          }

          v21 = qword_100BCE900;
          if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          *buf = 138543362;
          v33 = v5;
          v15 = "Identification - le identification tag exist for device %{public}@ - not generating";
LABEL_47:
          v16 = v21;
          v17 = 12;
          goto LABEL_18;
        }
      }

      else if (v9)
      {
        goto LABEL_12;
      }

      v18 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Identification - Identification hash does not exist - generating", buf, 2u);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10087303C();
      }

      v19 = sub_1007964A4(off_100B508C8, v5);
      v20 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v33 = v5;
        v34 = 1024;
        v35 = a3;
        v36 = 1024;
        v37 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Identification - generating for device %{public}@, stimulus %d, sent %d", buf, 0x18u);
      }

      if ((v19 & 5) == 0 && sub_1000E3BD0(v7))
      {
        sub_1007885E0(a1, v5);
      }
    }

    else
    {
      v14 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v33) = a3;
        v15 = "Identification - device not yet le-paired, stimulus %d";
        v16 = v14;
        v17 = 8;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }
  }

LABEL_19:
}

void sub_100786380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void sub_10078641C(uint64_t a1, void *a2)
{
  v3 = a2;
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v19 = 0;
    v20 = 0;
    sub_1005797F8(&v19, v3);
    if (sub_10000F034())
    {
      v5 = sub_10000F034();
      (*(*v5 + 40))(v5, &v19);
    }

    sub_100007E30(__p, "HasBuiltinServices");
    v6 = sub_1000463C8(v4 + 176, __p);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = *(v4 + 231);
    if (v7 < 0)
    {
      v7 = *(v4 + 216);
    }

    *(v4 + 357) = 0;
    *(v4 + 359) = 0;
    *(v4 + 368) = 1;
    sub_10077B704(v4, 0);
    sub_100007E30(&__str, "");
    std::string::operator=((v4 + 208), &__str);
    v8 = v4 + 184;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_10004B61C(v4 + 176, *(v4 + 184));
    *(v4 + 184) = 0;
    *(v4 + 192) = 0;
    *(v4 + 176) = v8;
    *(v4 + 480) = 0;
    if (v7)
    {
      sub_100779F0C(v4, 0, 0, 0);
    }

    v9 = *(v4 + 24);
    if (v9)
    {
      v10 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
      {
        LODWORD(__str.__r_.__value_.__l.__data_) = 138543362;
        *(__str.__r_.__value_.__r.__words + 4) = v3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Clearing resolved address for device %{public}@", &__str, 0xCu);
      }

      *(v4 + 24) = 0;
      v11 = *(v4 + 16);
      if ((v11 & 0xFF000000000000) == 0 || (v11 & 0xFFC00000000000) == 0x1C00000000000)
      {
        sub_10004DFB4(&__str, v3);
        sub_1000C7A50(a1, &__str);
      }

      else
      {
        sub_100420224(*(a1 + 256), v4);
      }

      if (v9 != *(v4 + 16))
      {
        v12 = *(a1 + 192);
        if (v12)
        {
          v13 = (a1 + 192);
          do
          {
            v14 = v12[4];
            v15 = v14 >= v9;
            v16 = v14 < v9;
            if (v15)
            {
              v13 = v12;
            }

            v12 = v12[v16];
          }

          while (v12);
          if (v13 != (a1 + 192) && v9 >= v13[4])
          {
            sub_10002717C((a1 + 184), v13);
            operator delete(v13);
          }
        }
      }
    }

    if (v8 != v6)
    {
      sub_100785D40(a1, 1);
    }
  }

  sub_1000088CC(v21);
}

void sub_1007866D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_1000088CC(&a18);

  _Unwind_Resume(a1);
}

uint64_t sub_100786758(uint64_t a1, int a2, int a3)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 96);
  *(a1 + 172) = 1;
  *(a1 + 164) = a3;
  *(a1 + 168) = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(a1 + 176);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(a1 + 176) objectForKey:{*(*(&v14 + 1) + 8 * i), v14}];
        v11 = v10[33];
        if (v11)
        {
          v10[33] = *(a1 + 168) + v11;
        }

        v12 = v10[34];
        if (v12)
        {
          v10[34] = *(a1 + 164) + v12;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  return sub_1000088CC(v18);
}

void sub_1007868A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_1007868F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 24) != 0;
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100786988(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 140);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_1007869F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100786A14(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 144);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100786AA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 152);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100786B2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 132);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100786BB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 260);
  }

  else
  {
    v5 = 1;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

double sub_100786C44(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 408);
  }

  else
  {
    v5 = 0.0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100786CD8(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 408) = a3;
  }

  sub_1000088CC(v7);
}

void sub_100786D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

double sub_100786D64(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 416);
  }

  else
  {
    v5 = 0.0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

double sub_100786DF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 424);
  }

  else
  {
    v5 = 0.0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100786E8C(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 424) = a3;
  }

  sub_1000088CC(v7);
}

void sub_100786EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

double sub_100786F18(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 432);
  }

  else
  {
    v5 = 0.0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100786FAC(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 432) = a3;
  }

  sub_1000088CC(v7);
}

void sub_100787018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

double sub_100787038(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 440);
  }

  else
  {
    v5 = 0.0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_1007870AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_1007870CC(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 440) = a3;
  }

  sub_1000088CC(v7);
}

void sub_100787138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100787158(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 448);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_1007871C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_1007871E4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 448) = a3;
  }

  sub_1000088CC(v7);
}

void sub_100787250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100787270(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 448) += a3;
  }

  sub_1000088CC(v7);
}

void sub_1007872E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100787304(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 162);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_100787370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100787390(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6 && *(v6 + 392) != a3)
  {
    *(v6 + 392) = a3;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  sub_10000801C(v16);
  if (v7)
  {
    *v14 = 0u;
    v15 = 0u;
    LODWORD(v14[0]) = *(a1 + 296);
    sub_100007F20(&v14[1], (a1 + 304));
    v10 = v14[0];
    __dst = 0;
    v13 = 0;
    __p = 0;
    if (v15 != v14[1])
    {
      sub_1000080CC(&__p, (v15 - v14[1]) >> 3);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100787568;
    v8[3] = &unk_100B0C738;
    v9 = v5;
    sub_1000D3CD8(&v10, v8);
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }

    if (v14[1])
    {
      *&v15 = v14[1];
      operator delete(v14[1]);
    }
  }

  sub_1000088CC(v16);
}

void sub_100787508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(v22 - 48);

  _Unwind_Resume(a1);
}

uint64_t sub_10078759C(uint64_t a1)
{
  v2 = sub_10000C798();
  if ((*(*v2 + 416))(v2))
  {
    v12[0] = 0;
    v12[1] = 0;
    sub_100007F88(v12, a1 + 96);
    v3 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
    {
      sub_100873614(a1, v3, v4, v5, v6, v7, v8, v9);
    }

    v10 = *(a1 + 328);
    sub_1000088CC(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_10078764C(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 612) = a3;
  }

  sub_1000088CC(v7);
}

void sub_1007876B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_1007876D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 612);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100787744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100787764(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 613) = a3;
  }

  sub_1000088CC(v7);
}

void sub_1007877D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_1007877F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 613);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_10078785C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078787C(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = a2;
  v90[0] = 0;
  v90[1] = 0;
  sub_100007F88(v90, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  v7 = v6;
  if (!v6)
  {
    v10 = 0;
    goto LABEL_180;
  }

  if (a3[23] < 0)
  {
    if (*(a3 + 1) == 24)
    {
      if (**a3 == 0x4144494C41564E49 && *(*a3 + 8) == 0x454B5241435F4554 && *(*a3 + 16) == 0x4543495645445F59)
      {
        sub_100007E30(v88, "PAIRED_FOR_ALISHA");
        v32 = sub_1000463C8((v7 + 22), v88);
        if (v89 < 0)
        {
          operator delete(v88[0]);
        }

        if (v7 + 23 != v32)
        {
          sub_10000801C(v90);
          if (qword_100B508C0 != -1)
          {
            sub_1008733E4();
          }

          if (sub_10004EE74(off_100B508B8, v5))
          {
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
            {
              sub_1008736E8();
            }
          }

          else
          {
            sub_100782C70(a1, v5);
            v70 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Sucessfully deleted INVALIDATE_CARKEY_DEVICE", buf, 2u);
            }
          }
        }

        goto LABEL_186;
      }

      v8 = qword_100BCE900;
      if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = qword_100BCE900;
      if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }
    }

    v9 = *a3;
  }

  else
  {
    v8 = qword_100BCE900;
    if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
LABEL_19:
      v86 = *a3;
      v87 = *(a3 + 2);
      goto LABEL_21;
    }

    v9 = a3;
  }

  *buf = 136446466;
  *&buf[4] = v9;
  *&buf[12] = 2114;
  *&buf[14] = v5;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Adding %{public}s tag to device %{public}@", buf, 0x16u);
  if ((a3[23] & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  sub_100008904(&v86, *a3, *(a3 + 1));
LABEL_21:
  v13 = sub_1007782B8(v7, &v86);
  v10 = v13;
  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86);
    if (!v10)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v13)
  {
LABEL_25:
    sub_10004DFB4(buf, v5);
    sub_1000C7A50(a1, buf);
  }

LABEL_26:
  sub_10000801C(v90);
  v14 = a3[23];
  if (a3[23] < 0)
  {
    if (*(a3 + 1) == 18)
    {
      v18 = **a3 == 0x746C697542736148 && *(*a3 + 8) == 0x6369767265536E69;
      if (v18 && *(*a3 + 16) == 29541)
      {
        goto LABEL_52;
      }
    }

    if (*(a3 + 1) != 16)
    {
      goto LABEL_56;
    }

    v15 = *a3;
  }

  else
  {
    v15 = a3;
    if (v14 != 16)
    {
      if (v14 != 18)
      {
LABEL_54:
        if (v14 != 12)
        {
          goto LABEL_94;
        }

        v23 = a3;
        goto LABEL_58;
      }

      if (*a3 != 0x746C697542736148 || *(a3 + 1) != 0x6369767265536E69 || *(a3 + 8) != 29541)
      {
        v14 = 18;
        goto LABEL_94;
      }

      goto LABEL_52;
    }
  }

  v21 = *v15;
  v20 = v15[1];
  if (v21 == 0x747541746F4E6F44 && v20 == 0x7463656E6E6F436FLL)
  {
LABEL_52:
    sub_100785D40(a1, 1);
    v14 = a3[23];
  }

  if ((v14 & 0x80) == 0)
  {
    goto LABEL_54;
  }

LABEL_56:
  if (*(a3 + 1) == 12)
  {
    v23 = *a3;
LABEL_58:
    v24 = *v23;
    v25 = *(v23 + 2);
    if (v24 == 0x57656C7070417349 && v25 == 1751348321)
    {
      if (qword_100B508C0 != -1)
      {
        sub_1008733E4();
      }

      sub_1007C36A8(off_100B508B8, v5);
      v14 = a3[23];
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_94;
      }
    }

    else if ((v14 & 0x80) == 0)
    {
      goto LABEL_94;
    }
  }

  if (*(a3 + 1) != 35 || memcmp(*a3, "needsMFiAuthenticationCertClass2.0c", 0x23uLL) || (v33 = sub_100432610(), (*(*v33 + 184))(v33), v14 = a3[23], a3[23] < 0))
  {
    if (*(a3 + 1) != 25 || (**a3 == 0x69464D736465656ELL ? (v27 = *(*a3 + 8) == 0x69746E6568747541) : (v27 = 0), v27 ? (v28 = *(*a3 + 16) == 0x2E346E6F69746163) : (v28 = 0), v28 ? (v29 = *(*a3 + 24) == 48) : (v29 = 0), !v29 || (v34 = sub_100432610(), (*(*v34 + 184))(v34), v14 = a3[23], a3[23] < 0)))
    {
      if (*(a3 + 1) != 14)
      {
        v31 = 1;
        goto LABEL_100;
      }

      v30 = *a3;
      v31 = 1;
      goto LABEL_96;
    }
  }

LABEL_94:
  v31 = 0;
  if (v14 != 14)
  {
    goto LABEL_100;
  }

  v30 = a3;
LABEL_96:
  v35 = *v30;
  v36 = *(v30 + 6);
  if (v35 == 0x6874754153434E41 && v36 == 0x64657A69726F6874)
  {
LABEL_109:
    v42 = sub_100007EE8();
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3321888768;
    v82[2] = sub_10078851C;
    v82[3] = &unk_100B0C760;
    v83 = v5;
    if (a3[23] < 0)
    {
      sub_100008904(&__p, *a3, *(a3 + 1));
    }

    else
    {
      __p = *a3;
      v85 = *(a3 + 2);
    }

    sub_10000CA94(v42, v82);
    if (SHIBYTE(v85) < 0)
    {
      operator delete(__p);
    }

    v14 = a3[23];
    goto LABEL_115;
  }

LABEL_100:
  if (v31)
  {
    if (*(a3 + 1) != 16)
    {
      goto LABEL_115;
    }

    v38 = *a3;
  }

  else
  {
    v38 = a3;
    if (v14 != 16)
    {
      goto LABEL_115;
    }
  }

  v40 = *v38;
  v39 = v38[1];
  if (v40 == 0x75616E5553434E41 && v39 == 0x64657A69726F6874)
  {
    goto LABEL_109;
  }

LABEL_115:
  if ((v14 & 0x80) != 0)
  {
    if (*(a3 + 1) != 9)
    {
      goto LABEL_128;
    }

    v43 = *a3;
  }

  else
  {
    v43 = a3;
    if (v14 != 9)
    {
LABEL_125:
      v47 = a3;
      if (v14 != 17)
      {
        goto LABEL_140;
      }

      goto LABEL_130;
    }
  }

  v44 = *v43;
  v45 = v43[8];
  if (v44 == 0x73756F4D454C7349 && v45 == 101)
  {
    v48 = sub_100007EE8();
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_1007885D4;
    v79[3] = &unk_100AE1200;
    v81 = a1;
    v80 = v5;
    sub_10000CA94(v48, v79);

    v14 = a3[23];
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_125;
    }
  }

  else if ((v14 & 0x80) == 0)
  {
    goto LABEL_125;
  }

LABEL_128:
  if (*(a3 + 1) != 17)
  {
    goto LABEL_140;
  }

  v47 = *a3;
LABEL_130:
  v49 = *v47;
  v50 = v47[1];
  v51 = *(v47 + 16);
  if (v49 == 0x746F6F7465756C42 && v50 == 0x746F6D6552565468 && v51 == 101)
  {
    sub_100007E30(v77, "DoNotStopAutoConnecting");
    sub_1007782B8(v7, v77);
    if (v78 < 0)
    {
      operator delete(v77[0]);
    }
  }

LABEL_140:
  v54 = a3[23];
  if (v54 < 0)
  {
    if (*(a3 + 1) != 5)
    {
      goto LABEL_159;
    }

    v55 = *a3;
  }

  else
  {
    v55 = a3;
    if (v54 != 5)
    {
      goto LABEL_159;
    }
  }

  v56 = *v55;
  v57 = v55[4];
  v58 = v56 == 1416847688 && v57 == 83;
  if (v58 && sub_100788D8C(a1, v5) == 16)
  {
    if (qword_100B53FE8 != -1)
    {
      sub_100873684();
    }

    v59 = qword_100B53FE0;
    sub_100007E30(buf, "HasTS");
    sub_100007E30(v92, "External Lock Tagged HasTS setTag");
    sub_1005780BC(v59, buf, v92, 60.0);
    if (v93 < 0)
    {
      operator delete(v92[0]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008736AC();
    }
  }

LABEL_159:
  if (_os_feature_enabled_impl())
  {
    v60 = a3[23];
    if ((v60 & 0x80000000) == 0)
    {
      v61 = a3;
      if (v60 != 20)
      {
        goto LABEL_174;
      }

LABEL_165:
      v62 = *v61;
      v63 = *(v61 + 1);
      v64 = *(v61 + 4);
      if (v62 == 0x525F4B53415F4144 && v63 == 0x45445F4E49415445 && v64 == 1162037590)
      {
        sub_1000C7C78(*(a1 + 256), v7);
        sub_100784264(a1);
      }

      goto LABEL_174;
    }

    if (*(a3 + 1) == 20)
    {
      v61 = *a3;
      goto LABEL_165;
    }
  }

LABEL_174:
  memset(buf, 0, sizeof(buf));
  *buf = *(a1 + 296);
  sub_100007F20(&buf[8], (a1 + 304));
  v73 = *buf;
  __dst = 0;
  v76 = 0;
  v74 = 0;
  if (*&buf[16] != *&buf[8])
  {
    sub_1000080CC(&v74, (*&buf[16] - *&buf[8]) >> 3);
  }

  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100788E18;
  v71[3] = &unk_100B0C738;
  v72 = v5;
  sub_1000D3CD8(&v73, v71);
  if (v74)
  {
    __dst = v74;
    operator delete(v74);
  }

  v6 = *&buf[8];
  if (*&buf[8])
  {
    *&buf[16] = *&buf[8];
    operator delete(*&buf[8]);
  }

LABEL_180:
  v67 = sub_10005063C(v6, v5);
  if (!v67)
  {
    goto LABEL_187;
  }

  v68 = sub_1000BE4B4();
  if (!(*(*v68 + 792))(v68, v67, a3))
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E5A58(v67, buf);
      sub_100873774();
    }

LABEL_186:
    v10 = 1;
    goto LABEL_187;
  }

  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(v67, buf);
    sub_100873724();
  }

LABEL_187:
  sub_1000088CC(v90);

  return v10;
}

void sub_100788404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v41 - 145) < 0)
  {
    operator delete(*(v41 - 168));
  }

  sub_1000088CC(v41 - 144);

  _Unwind_Resume(a1);
}

void sub_10078851C(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_1008737C4();
  }

  v2 = off_100B512F0;
  v3 = *(a1 + 32);
  v4 = (a1 + 40);
  v5 = *(a1 + 63);
  if ((v5 & 0x80000000) == 0)
  {
    if (v5 != 14)
    {
      goto LABEL_14;
    }

LABEL_8:
    v6 = *v4;
    v7 = *(v4 + 6);
    v9 = v6 == 0x6874754153434E41 && v7 == 0x64657A69726F6874;
    goto LABEL_15;
  }

  if (*(a1 + 48) == 14)
  {
    v4 = *v4;
    goto LABEL_8;
  }

LABEL_14:
  v9 = 0;
LABEL_15:

  sub_1003BF2C4(v2, v3, v9);
}

void sub_1007885E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000C798();
  if (((*(*v4 + 392))(v4) & 1) == 0)
  {
    goto LABEL_66;
  }

  v5 = sub_10004B1D8(a1, v3);
  sub_100007E30(v46, "IsLEMouse");
  v6 = sub_1000463C8(v5 + 176, v46);
  v7 = v5 + 184;
  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  v8 = qword_100BCE900;
  v9 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT);
  if (v7 != v6)
  {
    if (v9)
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "HIDIdentification - The device %{public}@ supports HID. SetLEHIDDeviceBehavior", &buf, 0xCu);
    }

    v10 = sub_10000C798();
    if ((*(*v10 + 296))(v10))
    {
      v11 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "HIDIdentification - limitedSupportForHID - Known Poor", &buf, 2u);
      }

      sub_100007E30(__p, "HIDDeviceKnownPoorBehavior");
      sub_1007782B8(v5, __p);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_57;
    }

    if (*(v5 + 127) < 0)
    {
      sub_100008904(&buf, *(v5 + 104), *(v5 + 112));
    }

    else
    {
      buf = *(v5 + 104);
      v51 = *(v5 + 120);
    }

    v12 = SHIBYTE(v51);
    v13 = buf;
    v14 = +[NSString defaultCStringEncoding];
    if (v12 >= 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = v13;
    }

    v16 = [NSString stringWithCString:p_buf encoding:v14];
    if (SHIBYTE(v51) < 0)
    {
      operator delete(buf);
    }

    if ([qword_100BCED38 containsObject:v16])
    {
      v17 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "HIDIdentification - WAR for known good LE HID %@", &buf, 0xCu);
      }

      sub_100007E30(v42, "HIDDeviceKnownGoodBehavior");
      sub_1007782B8(v5, v42);
      if (v43 < 0)
      {
        operator delete(v42[0]);
      }

      goto LABEL_56;
    }

    v18 = *(v5 + 360);
    v19 = [qword_100BCED28 objectForKey:v16];
    v20 = [qword_100BCED30 objectForKey:v16];
    sub_100007E30(v40, "HIDDeviceKnownGoodBehavior");
    if (v7 == sub_1000463C8(v5 + 176, v40))
    {
      sub_100007E30(v38, "HIDDeviceKnownPoorBehavior");
      v21 = v7 != sub_1000463C8(v5 + 176, v38);
      if (v39 < 0)
      {
        operator delete(v38[0]);
      }
    }

    else
    {
      v21 = 1;
    }

    if (v41 < 0)
    {
      operator delete(v40[0]);
    }

    if (v21)
    {
      v22 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        v23 = "HIDIdentification - Device already identified as Good/Poor";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, &buf, 2u);
      }
    }

    else
    {
      if ([v18 length] || *(v5 + 368) != 1)
      {
        if ([v19 isEqualToData:v18])
        {
          sub_100007E30(v36, "HIDDeviceKnownPoorBehavior");
          sub_1007782B8(v5, v36);
          if ((v37 & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

          v24 = *v36;
        }

        else if ([v20 isEqualToData:v18])
        {
          sub_100007E30(v34, "HIDDeviceKnownGoodBehavior");
          sub_1007782B8(v5, v34);
          if ((v35 & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

          v24 = *v34;
        }

        else
        {
          v25 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "HIDIdentification - Device not found in known good/poor device lists", &buf, 2u);
          }

          if (_os_feature_enabled_impl())
          {
            sub_100007E30(v32, "HIDDeviceUnknownBehavior");
            sub_100776C38((v5 + 176), v32);
            if ((v33 & 0x80000000) == 0)
            {
              goto LABEL_55;
            }

            v24 = v32[0];
          }

          else
          {
            sub_100007E30(v30, "HIDDeviceUnknownBehavior");
            sub_1007782B8(v5, v30);
            if ((v31 & 0x80000000) == 0)
            {
              goto LABEL_55;
            }

            v24 = v30[0];
          }
        }

        operator delete(v24);
        goto LABEL_55;
      }

      v22 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        v23 = "HIDIdentification - No currently available identification data.";
        goto LABEL_36;
      }
    }

LABEL_55:

LABEL_56:
LABEL_57:
    v26 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v5 + 127) < 0)
      {
        sub_100008904(&buf, *(v5 + 104), *(v5 + 112));
      }

      else
      {
        buf = *(v5 + 104);
        v51 = *(v5 + 120);
      }

      v27 = &buf;
      if (v51 < 0)
      {
        v27 = buf;
      }

      *v48 = 136315138;
      v49 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Post leHIDBehaviorKnown for %s", v48, 0xCu);
      if (SHIBYTE(v51) < 0)
      {
        operator delete(buf);
      }
    }

    v28 = +[NSDistributedNotificationCenter defaultCenter];
    v29 = [NSNotification notificationWithName:@"com.apple.bluetooth.leHIDBehaviorKnown" object:0];
    [v28 postNotification:v29];

    goto LABEL_66;
  }

  if (v9)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not a mouse - no need to setLEHIDDeviceBehavior", &buf, 2u);
  }

LABEL_66:
}

void sub_100788C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100788D8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 372);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100788DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100788E4C(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_100007E30(__p, "HasTS");
  sub_10078787C(a1, v3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100788EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100788ED8(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_100007E30(__p, "HasTS");
  v4 = sub_10004EB40(a1, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_100788F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100788FA0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a2;
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v6 = sub_10005063C(v5, v5);
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  if (v7)
  {
    sub_1000860FC(a3, *(v7 + 176), (v7 + 184));
  }

  if (v6)
  {
    v8 = sub_1000BE4B4();
    v9 = (*(*v8 + 824))(v8, v6);
    v10 = v9;
    if (v9)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v12)
      {
        v13 = *v18;
        do
        {
          v14 = 0;
          do
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v11);
            }

            sub_100007E30(__p, [*(*(&v17 + 1) + 8 * v14) UTF8String]);
            sub_100071970(a3, __p);
            if (v16 < 0)
            {
              operator delete(__p[0]);
            }

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v12);
      }
    }
  }

  sub_1000088CC(v21);
}

void sub_100789170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_1000088CC(&a25);
  sub_10004B61C(v26, *(v26 + 8));

  _Unwind_Resume(a1);
}

id sub_1007891E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = sub_1000C7A04(v4);
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100789268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_10078928C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 96);
  if (v5)
  {
    if (v6)
    {
      v7 = sub_10004B1D8(a1, v5);
      if (v7)
      {
        v8 = sub_10077C3B8(v7, v6);
        goto LABEL_10;
      }
    }

    else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100873848();
    }
  }

  else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    sub_10085A73C();
  }

  v8 = 0;
LABEL_10:
  sub_1000088CC(v10);

  return v8;
}