void sub_100102ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(__p, a3);
  sub_100311054(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_100102BC8(void *a1)
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
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
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

void sub_100102C74(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v8[2] = a2[2];
        v9 = *(a2 + 3);
        *(v8 + 5) = *(a2 + 5);
        *(v8 + 3) = v9;
        v10 = *(a2 + 7);
        v11 = *(a2 + 9);
        v12 = *(a2 + 11);
        *(v8 + 13) = *(a2 + 13);
        *(v8 + 11) = v12;
        *(v8 + 9) = v11;
        *(v8 + 7) = v10;
        v13 = *v8;
        sub_10018A35C(a1, v8);
        a2 = *a2;
        v8 = v13;
        if (!v13)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v14 = *v8;
        operator delete(v8);
        v8 = v14;
      }

      while (v14);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_100196D60();
  }
}

void sub_100102D68(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_100102D9C()
{
  v0 = *(__chkstk_darwin() + 8);
  if (v0)
  {
    atomic_fetch_add_explicit((v0 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000F9A38(v1);
}

void sub_100102E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1007BE9D0(va);
  if (v4)
  {
    sub_100008080(v4);
  }

  _Unwind_Resume(a1);
}

void sub_100102EAC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = *v0;
  v5 = v0[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100102FB8(v7, v1);
  v8 = v6;
  v9 = v5;
  sub_1000FA434(v2, v4);
}

void sub_100102F90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007BE9D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100102FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100105B70(a1, a2);
  sub_1000F9B54(v4 + 816, a2 + 816);
  sub_1000FB234(a1 + 3120, a2 + 3120);
  return a1;
}

void sub_100102FFC(_Unwind_Exception *a1)
{
  sub_1001054D8(v1 + 816);
  sub_1001039FC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100103020(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_100188540(a1, i + 2);
  }

  return a1;
}

uint64_t sub_100103098(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_10019E93C(a1, i + 2);
  }

  return a1;
}

uint64_t sub_100103110(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1001977F0(a1, i + 2);
  }

  return a1;
}

void sub_1001032D0(int *a1@<X0>, _DWORD *a2@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:

      sub_100103270(a2);
    case 7:

      sub_1002EA054(a2);
    case 8:

      sub_100318E60(a2);
    case 0x14:

      sub_1008DDE0C(a2);
    case 0x18:

      sub_10019EC44(a2);
    case 0x1D:

      sub_1008DDED4(a2);
    default:
      sub_10053508C();
  }
}

void sub_100103518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007BE9D0(va);
  _Unwind_Resume(a1);
}

void sub_1001035E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

void sub_1001036B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

void sub_10010377C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

void sub_100103848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

void sub_100103914(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

void sub_1001039E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

void sub_1001039FC(uint64_t a1)
{
  v1 = a1 + 8;
  v2 = *a1 ^ (*a1 >> 31);
  if (v2 <= 6)
  {
    if (v2 >= 5)
    {
      if (v2 != 5 && v2 != 6)
      {
        goto LABEL_24;
      }

      if (*(a1 + 96) == 1 && *(a1 + 39) < 0)
      {
        v3 = *(a1 + 16);

        operator delete(v3);
      }
    }
  }

  else
  {
    if (v2 <= 0x1D)
    {
      if (((1 << v2) & 0x3EFEFE00) != 0)
      {
        return;
      }

      if (v2 == 16)
      {
        v4 = *(a1 + 696);
        if (v4)
        {

          sub_100008080(v4);
        }

        return;
      }

      if (v2 == 24)
      {
        sub_100189690(&v5, v1);
        return;
      }
    }

    if (v2 != 7)
    {
      if (v2 == 8)
      {
        sub_100317354(&v5, v1);
        return;
      }

LABEL_24:
      sub_10053508C();
    }

    sub_1002E8530(&v5, v1);
  }
}

uint64_t sub_100103B14(uint64_t a1)
{
  sub_100103B50(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100103B50(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_100103B9C(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v8[2] = a2[2];
        v9 = *v8;
        sub_10018A35C(a1, v8);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v10 = *v8;
        operator delete(v8);
        v8 = v10;
      }

      while (v10);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_10018878C();
  }
}

void sub_100103C60(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_100103C9C(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (*(a1 + 1436) == -1.0)
  {
    a2 = a1;
    if (!*(a1 + 1572))
    {

      sub_1000FAA70(a3);
    }
  }

  sub_101B0AC44(a1, a2);
}

uint64_t sub_100103CE8(uint64_t a1, int a2, char a3, __int128 *a4, double a5)
{
  *a1 = a2;
  *(a1 + 4) = 0;
  *(a1 + 8) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_100007244((a1 + 16), *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    *(a1 + 32) = *(a4 + 2);
    *(a1 + 16) = v7;
  }

  *(a1 + 40) = a5;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0xFFFFFFFF00000000;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 64) = _Q0;
  *(a1 + 80) = _Q0;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  *(a1 + 110) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  return a1;
}

void sub_100103D88(int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == *a2)
  {
    v6 = (a2 + 8);
    v26 = (a2 + 8);
    switch(v4 ^ (v4 >> 31))
    {
      case 0u:
      case 1u:
      case 2u:
      case 0xDu:
      case 0x11u:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
        return;
      case 3u:
      case 0xCu:
      case 0xEu:
      case 0x17u:
        *(a1 + 8) = *v6;
        return;
      case 4u:
      case 9u:
      case 0xBu:
      case 0xFu:
      case 0x13u:
      case 0x16u:
      case 0x19u:
      case 0x1Au:
        a1[2] = *v6;
        return;
      case 5u:
      case 6u:
        sub_1000F8A78((a1 + 2), v6);
        return;
      case 7u:
        sub_10067E4C4(v4, &v26, (a1 + 2));
        return;
      case 8u:
        sub_10067E614(v4, &v26, (a1 + 2));
        return;
      case 0xAu:
      case 0x14u:
      case 0x15u:
        *(a1 + 1) = *v6;
        return;
      case 0x10u:
        sub_10067E670(&v26, (a1 + 2));
        return;
      case 0x12u:
        *(a1 + 2) = *v6;
        return;
      case 0x18u:
        sub_10067E728(v4, &v26, (a1 + 2));
        return;
      default:
        goto LABEL_44;
    }
  }

  v26 = a1;
  v27 = v5 ^ (v5 >> 31);
  switch(v27)
  {
    case 0:
      sub_1001039FC(a1);
      *a1 = 0;
      return;
    case 1:
      sub_1001039FC(a1);
      v7 = 1;
      goto LABEL_42;
    case 2:
      sub_1001039FC(a1);
      v7 = 2;
      goto LABEL_42;
    case 3:
      sub_1001039FC(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = 3;
      goto LABEL_42;
    case 4:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 4;
      goto LABEL_42;
    case 5:
    case 6:
      sub_10067E7D4(&v26, a2 + 8);
      return;
    case 7:
      sub_1002E8478(&v26, a2 + 8);
      return;
    case 8:
      sub_100317298(&v26, a2 + 8);
      return;
    case 9:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 9;
      goto LABEL_42;
    case 10:
      sub_1001039FC(a1);
      *(a1 + 1) = *(a2 + 8);
      v7 = 10;
      goto LABEL_42;
    case 11:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 11;
      goto LABEL_42;
    case 12:
      sub_1001039FC(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = 12;
      goto LABEL_42;
    case 13:
      sub_1001039FC(a1);
      v7 = 13;
      goto LABEL_42;
    case 14:
      sub_1001039FC(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = 14;
      goto LABEL_42;
    case 15:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 15;
      goto LABEL_42;
    case 16:
      sub_1001039FC(a1);
      v8 = *(a2 + 8);
      *(a1 + 6) = *(a2 + 24);
      *(a1 + 2) = v8;
      v9 = *(a2 + 40);
      v10 = *(a2 + 56);
      v11 = *(a2 + 72);
      *(a1 + 22) = *(a2 + 88);
      *(a1 + 18) = v11;
      *(a1 + 14) = v10;
      *(a1 + 10) = v9;
      v12 = *(a2 + 104);
      v13 = *(a2 + 120);
      v14 = *(a2 + 136);
      *(a1 + 37) = *(a2 + 148);
      *(a1 + 34) = v14;
      *(a1 + 30) = v13;
      *(a1 + 26) = v12;
      memcpy(a1 + 42, (a2 + 168), 0x201uLL);
      *(a1 + 43) = *(a2 + 688);
      *(a2 + 688) = 0u;
      v15 = *(a2 + 704);
      v16 = *(a2 + 736);
      *(a1 + 45) = *(a2 + 720);
      *(a1 + 46) = v16;
      *(a1 + 44) = v15;
      v18 = *(a2 + 752);
      v17 = *(a2 + 768);
      v19 = *(a2 + 784);
      *(a1 + 793) = *(a2 + 793);
      *(a1 + 48) = v17;
      *(a1 + 49) = v19;
      *(a1 + 47) = v18;
      v7 = 16;
      goto LABEL_42;
    case 17:
      sub_1001039FC(a1);
      v7 = 17;
      goto LABEL_42;
    case 18:
      sub_1001039FC(a1);
      *(a1 + 2) = *(a2 + 8);
      v7 = 18;
      goto LABEL_42;
    case 19:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 19;
      goto LABEL_42;
    case 20:
      sub_1001039FC(a1);
      *(a1 + 1) = *(a2 + 8);
      v7 = 20;
      goto LABEL_42;
    case 21:
      sub_1001039FC(a1);
      *(a1 + 1) = *(a2 + 8);
      v7 = 21;
      goto LABEL_42;
    case 22:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 22;
      goto LABEL_42;
    case 23:
      sub_1001039FC(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = 23;
      goto LABEL_42;
    case 24:
      sub_1001039FC(a1);
      v20 = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 1) = v20;
      v21 = *(a2 + 24);
      *(a1 + 5) = *(a2 + 40);
      *(a1 + 6) = v21;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 24) = 0;
      *(a1 + 3) = *(a2 + 48);
      v23 = *(a2 + 80);
      v22 = *(a2 + 96);
      v24 = *(a2 + 64);
      *(a1 + 27) = *(a2 + 108);
      *(a1 + 5) = v23;
      *(a1 + 6) = v22;
      *(a1 + 4) = v24;
      v25 = *(a2 + 128);
      *(a1 + 18) = *(a2 + 144);
      *(a1 + 8) = v25;
      *(a2 + 136) = 0;
      *(a2 + 144) = 0;
      *(a2 + 128) = 0;
      v7 = 24;
      goto LABEL_42;
    case 25:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 25;
      goto LABEL_42;
    case 26:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 26;
      goto LABEL_42;
    case 27:
      sub_1001039FC(a1);
      v7 = 27;
      goto LABEL_42;
    case 28:
      sub_1001039FC(a1);
      v7 = 28;
      goto LABEL_42;
    case 29:
      sub_1001039FC(a1);
      v7 = 29;
LABEL_42:
      *a1 = v7;
      return;
    default:
LABEL_44:
      sub_10053508C();
  }
}

void sub_100104370(_DWORD *a1)
{
  *a1 = 0;
  sub_1000F8DFC((a1 + 204));
  sub_1000FAC0C((a1 + 780));
}

void sub_1001043A8(_Unwind_Exception *a1)
{
  sub_1001054D8(v1 + 816);
  sub_1001039FC(v1);
  _Unwind_Resume(a1);
}

void sub_1001043CC(int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == *a2)
  {
    v6 = (a2 + 8);
    v12 = (a2 + 8);
    switch(v4 ^ (v4 >> 31))
    {
      case 0u:
      case 1u:
      case 2u:
      case 0xDu:
      case 0x11u:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
        return;
      case 3u:
      case 0xCu:
      case 0xEu:
      case 0x17u:
        *(a1 + 8) = *v6;
        return;
      case 4u:
      case 9u:
      case 0xBu:
      case 0xFu:
      case 0x13u:
      case 0x16u:
      case 0x19u:
      case 0x1Au:
        a1[2] = *v6;
        return;
      case 5u:
      case 6u:
        sub_1000F8F80((a1 + 2), v6);
        return;
      case 7u:
        sub_1002F595C(v4, &v12, (a1 + 2));
        return;
      case 8u:
        sub_100318760(v4, &v12, (a1 + 2));
        return;
      case 0xAu:
      case 0x14u:
      case 0x15u:
        *(a1 + 1) = *v6;
        return;
      case 0x10u:
        sub_1000FCAB8(&v12, (a1 + 2));
        return;
      case 0x12u:
        *(a1 + 2) = *v6;
        return;
      case 0x18u:
        v8 = *v6;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 1) = v8;
        std::string::operator=(a1 + 1, (a2 + 24));
        *(a1 + 3) = *(a2 + 48);
        v10 = *(a2 + 80);
        v9 = *(a2 + 96);
        v11 = *(a2 + 64);
        *(a1 + 27) = *(a2 + 108);
        *(a1 + 5) = v10;
        *(a1 + 6) = v9;
        *(a1 + 4) = v11;
        std::string::operator=((a1 + 32), (a2 + 128));
        return;
      default:
        goto LABEL_44;
    }
  }

  v12 = a1;
  v13 = v5 ^ (v5 >> 31);
  switch(v13)
  {
    case 0:
      sub_1001039FC(a1);
      *a1 = 0;
      return;
    case 1:
      sub_1001039FC(a1);
      v7 = 1;
      goto LABEL_42;
    case 2:
      sub_1001039FC(a1);
      v7 = 2;
      goto LABEL_42;
    case 3:
      sub_1001039FC(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = 3;
      goto LABEL_42;
    case 4:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 4;
      goto LABEL_42;
    case 5:
    case 6:
      sub_1007BE6D0(&v12, a2 + 8);
      return;
    case 7:
      sub_1002E8814(&v12, a2 + 8);
      return;
    case 8:
      sub_100317428(&v12, a2 + 8);
      return;
    case 9:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 9;
      goto LABEL_42;
    case 10:
      sub_1001039FC(a1);
      *(a1 + 1) = *(a2 + 8);
      v7 = 10;
      goto LABEL_42;
    case 11:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 11;
      goto LABEL_42;
    case 12:
      sub_1001039FC(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = 12;
      goto LABEL_42;
    case 13:
      sub_1001039FC(a1);
      v7 = 13;
      goto LABEL_42;
    case 14:
      sub_1001039FC(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = 14;
      goto LABEL_42;
    case 15:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 15;
      goto LABEL_42;
    case 16:
      sub_1000FBC00(&v12, (a2 + 8));
      return;
    case 17:
      sub_1001039FC(a1);
      v7 = 17;
      goto LABEL_42;
    case 18:
      sub_1001039FC(a1);
      *(a1 + 2) = *(a2 + 8);
      v7 = 18;
      goto LABEL_42;
    case 19:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 19;
      goto LABEL_42;
    case 20:
      sub_1001039FC(a1);
      *(a1 + 1) = *(a2 + 8);
      v7 = 20;
      goto LABEL_42;
    case 21:
      sub_1001039FC(a1);
      *(a1 + 1) = *(a2 + 8);
      v7 = 21;
      goto LABEL_42;
    case 22:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 22;
      goto LABEL_42;
    case 23:
      sub_1001039FC(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = 23;
      goto LABEL_42;
    case 24:
      sub_100184438(&v12, (a2 + 8));
      return;
    case 25:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 25;
      goto LABEL_42;
    case 26:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 26;
      goto LABEL_42;
    case 27:
      sub_1001039FC(a1);
      v7 = 27;
      goto LABEL_42;
    case 28:
      sub_1001039FC(a1);
      v7 = 28;
      goto LABEL_42;
    case 29:
      sub_1001039FC(a1);
      v7 = 29;
LABEL_42:
      *a1 = v7;
      return;
    default:
LABEL_44:
      sub_10053508C();
  }
}

uint64_t sub_1001048D8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  std::string::operator=((a1 + 24), (a2 + 24));
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 80);
  v5 = *(a2 + 96);
  v7 = *(a2 + 64);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 80) = v6;
  *(a1 + 96) = v5;
  *(a1 + 64) = v7;
  std::string::operator=((a1 + 128), (a2 + 128));
  v8 = *(a2 + 184);
  v9 = *(a2 + 168);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v9;
  *(a1 + 184) = v8;
  v10 = *(a2 + 216);
  v11 = *(a2 + 232);
  v12 = *(a2 + 241);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 241) = v12;
  *(a1 + 232) = v11;
  *(a1 + 216) = v10;
  if (a1 == a2)
  {
    *(a1 + 288) = *(a2 + 288);
  }

  else
  {
    sub_1000F9018(a1 + 264, *(a2 + 264), *(a2 + 272), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 272) - *(a2 + 264)) >> 3));
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 328) = *(a2 + 328);
    sub_100103B9C((a1 + 296), *(a2 + 312), 0);
    *(a1 + 368) = *(a2 + 368);
    sub_100104B3C((a1 + 336), *(a2 + 352), 0);
    *(a1 + 408) = *(a2 + 408);
    sub_100102C74((a1 + 376), *(a2 + 392), 0);
    *(a1 + 448) = *(a2 + 448);
    sub_100103B9C((a1 + 416), *(a2 + 432), 0);
    *(a1 + 488) = *(a2 + 488);
    sub_100103B9C((a1 + 456), *(a2 + 472), 0);
  }

  memcpy((a1 + 496), (a2 + 496), 0x120uLL);
  sub_1000F9270((a1 + 784), (a2 + 784));
  *(a1 + 816) = *(a2 + 816);
  if (a1 != a2)
  {
    sub_1000F942C((a1 + 824), *(a2 + 824), *(a2 + 832), 0xD37A6F4DE9BD37A7 * ((*(a2 + 832) - *(a2 + 824)) >> 3));
  }

  *(a1 + 848) = *(a2 + 848);
  sub_1000F9314(a1 + 856, (a2 + 856));
  sub_1000F95A0((a1 + 952), a2 + 952);
  sub_10010622C((a1 + 1040), a2 + 1040);
  v13 = *(a2 + 1120);
  v14 = *(a2 + 1136);
  v15 = *(a2 + 1152);
  *(a1 + 1168) = *(a2 + 1168);
  *(a1 + 1152) = v15;
  *(a1 + 1136) = v14;
  *(a1 + 1120) = v13;
  v16 = *(a2 + 1184);
  v17 = *(a2 + 1200);
  v18 = *(a2 + 1216);
  *(a1 + 1232) = *(a2 + 1232);
  *(a1 + 1216) = v18;
  *(a1 + 1200) = v17;
  *(a1 + 1184) = v16;
  sub_1000F9270((a1 + 1240), (a2 + 1240));
  sub_1000F96B0(a1 + 1272, a2 + 1272);
  sub_1000F9838(a1 + 2088, a2 + 2088);
  sub_100104C68(a1 + 2120, (a2 + 2120));
  sub_1000F9270((a1 + 2272), (a2 + 2272));
  return a1;
}

void sub_100104B3C(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v8[2] = v4[2];
        v8[3] = v4[3];
        std::string::operator=((v8 + 4), (v4 + 4));
        v11 = *(v4 + 7);
        v12 = *(v4 + 9);
        v13 = *(v4 + 11);
        v8[13] = v4[13];
        *(v8 + 11) = v13;
        *(v8 + 9) = v12;
        *(v8 + 7) = v11;
        v10 = *v8;
        sub_10018A35C(a1, v8);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    sub_1001056DC(a1, v10);
  }

  if (v4 != a3)
  {
    sub_1001889A4();
  }
}

void sub_100104C38(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1001056DC(v1, v2);
  __cxa_rethrow();
}

void sub_100104C68(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 144) == *(a2 + 144))
  {
    if (*(a1 + 144))
    {
      v4 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v4;
      std::string::operator=((a1 + 16), (a2 + 2));
      *(a1 + 40) = *(a2 + 5);
      v5 = *(a2 + 9);
      v6 = *(a2 + 11);
      v7 = *(a2 + 100);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 100) = v7;
      *(a1 + 88) = v6;
      *(a1 + 72) = v5;

      std::string::operator=((a1 + 120), a2 + 5);
    }
  }

  else if (*(a1 + 144))
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    *(a1 + 144) = 0;
  }

  else
  {
    v8 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v8;
    if (*(a2 + 39) < 0)
    {
      sub_100007244((a1 + 16), a2[2], a2[3]);
    }

    else
    {
      v9 = *(a2 + 1);
      *(a1 + 32) = a2[4];
      *(a1 + 16) = v9;
    }

    *(a1 + 40) = *(a2 + 5);
    v10 = *(a2 + 7);
    v11 = *(a2 + 9);
    v12 = *(a2 + 11);
    *(a1 + 100) = *(a2 + 100);
    *(a1 + 88) = v12;
    *(a1 + 72) = v11;
    *(a1 + 56) = v10;
    if (*(a2 + 143) < 0)
    {
      sub_100007244((a1 + 120), a2[15], a2[16]);
    }

    else
    {
      v13 = *(a2 + 15);
      *(a1 + 136) = a2[17];
      *(a1 + 120) = v13;
    }

    *(a1 + 144) = 1;
  }
}

void sub_100104DC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_100104E90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

void sub_100104F0C(int *a1@<X0>, _DWORD *a2@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 0x13:

      sub_100105478(a2);
    case 2:

      sub_100D19E1C(a2);
    case 3:

      sub_100D1A1DC(a2);
    case 4:

      sub_100D19734(a2);
    case 5:

      sub_100D19974(a2);
    case 6:

      sub_100D19BC8(a2);
    case 7:

      sub_1002F5FA8(a2);
    case 8:

      sub_10031757C(a2);
    case 9:

      sub_100D1A68C(a2);
    case 0xA:

      sub_100D1B004(a2);
    case 0xB:

      sub_100D1A5F0(a2);
    case 0xC:
      sub_100105478(a2);
    case 0xD:
      sub_100105478(a2);
    case 0xE:
      sub_100105478(a2);
    case 0xF:
      sub_100105478(a2);
    case 0x10:

      sub_1000FBCE4(a2);
    case 0x11:

      sub_100D1C2B8(a2);
    case 0x12:

      sub_1002684C8(a2);
    case 0x14:

      sub_100D1B6F4(a2);
    case 0x15:

      sub_100D1B07C();
    case 0x16:

      sub_100D1C06C(a2);
    case 0x17:

      sub_100D2112C(a2);
    case 0x18:

      sub_1001845B4(a2);
    case 0x19:

      sub_100183B24(a2);
    case 0x1A:

      sub_100247814(a2);
    case 0x1B:

      sub_100287D0C(a2);
    case 0x1C:
      sub_100105478(a2);
    case 0x1D:

      sub_100D217E0(a2);
    default:
      sub_10053508C();
  }
}

uint64_t sub_1001054D8(uint64_t a1)
{
  if (*(a1 + 2296) == 1 && *(a1 + 2295) < 0)
  {
    operator delete(*(a1 + 2272));
  }

  if (*(a1 + 2264) == 1)
  {
    if (*(a1 + 2263) < 0)
    {
      operator delete(*(a1 + 2240));
    }

    if (*(a1 + 2159) < 0)
    {
      operator delete(*(a1 + 2136));
    }
  }

  if (*(a1 + 2112) == 1)
  {
    v2 = *(a1 + 2088);
    if (v2)
    {
      *(a1 + 2096) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 2080) == 1)
  {
    v3 = *(a1 + 1960);
    if (v3)
    {
      sub_100008080(v3);
    }
  }

  if (*(a1 + 1264) == 1 && *(a1 + 1263) < 0)
  {
    operator delete(*(a1 + 1240));
  }

  if (*(a1 + 1112) == 1)
  {
    if (*(a1 + 1111) < 0)
    {
      operator delete(*(a1 + 1088));
    }

    sub_1004906DC(a1 + 1040);
  }

  if (*(a1 + 1032) == 1)
  {
    if (*(a1 + 1031) < 0)
    {
      operator delete(*(a1 + 1008));
    }

    sub_1004906DC(a1 + 952);
  }

  if (*(a1 + 944) == 1)
  {
    if (*(a1 + 936) == 1)
    {
      v4 = *(a1 + 912);
      if (v4)
      {
        *(a1 + 920) = v4;
        operator delete(v4);
      }
    }

    if (*(a1 + 903) < 0)
    {
      operator delete(*(a1 + 880));
    }
  }

  v5 = *(a1 + 824);
  if (v5)
  {
    *(a1 + 832) = v5;
    operator delete(v5);
  }

  if (*(a1 + 808) == 1 && *(a1 + 807) < 0)
  {
    operator delete(*(a1 + 784));
  }

  sub_1004906DC(a1 + 456);
  sub_1004906DC(a1 + 416);
  sub_1004906DC(a1 + 376);
  sub_1001056A0(a1 + 336);
  sub_1004906DC(a1 + 296);
  v7 = (a1 + 264);
  sub_1000F8D88(&v7);
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_1001056A0(uint64_t a1)
{
  sub_1001056DC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1001056DC(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 55) < 0)
      {
        operator delete(v2[4]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1001057D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

void sub_1001057F4(int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:

      sub_100100630(a3);
    case 7:

      sub_1002F73F4();
    case 9:

      sub_100E8BECC(a3);
    case 0x14:

      sub_100E8BE88(a3, a2);
    case 0x18:

      sub_1001882C4();
    default:
      sub_10053508C();
  }
}

void sub_1001059C0(int *a1@<X0>, _DWORD *a2@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:

      sub_100105960(a2);
    case 7:

      sub_1002F5CF0();
    case 8:

      sub_1003187D4();
    case 9:

      sub_100BA0984();
    case 0x14:

      sub_100BA06B0();
    case 0x18:

      sub_10018A6AC();
    case 0x1D:

      sub_100BA0B9C();
    default:
      sub_10053508C();
  }
}

uint64_t sub_100105B70(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = a2 + 8;
  v6 = (a1 + 8);
  switch(v4 ^ (v4 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 0xD:
    case 0x11:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      break;
    case 3:
    case 0xC:
    case 0xE:
    case 0x17:
      *v6 = *v3;
      break;
    case 4:
    case 9:
    case 0xB:
    case 0xF:
    case 0x13:
    case 0x16:
    case 0x19:
    case 0x1A:
      *v6 = *v3;
      break;
    case 5:
    case 6:
      sub_1000FB724((a1 + 8), v3);
      break;
    case 7:
      sub_1002E892C(a1 + 8, v3);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      sub_1000FB724((a1 + 64), a2 + 64);
      break;
    case 8:
      *v6 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      sub_100288650(a1 + 8, *(a2 + 8), *(a2 + 16), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
      *(a1 + 32) = *(a2 + 32);
      sub_1000FB724((a1 + 40), a2 + 40);
      break;
    case 0xA:
    case 0x14:
    case 0x15:
      *v6 = *v3;
      break;
    case 0x10:
      v7 = *(v3 + 16);
      *v6 = *v3;
      *(a1 + 24) = v7;
      v8 = *(v3 + 32);
      v9 = *(v3 + 48);
      v10 = *(v3 + 80);
      *(a1 + 72) = *(v3 + 64);
      *(a1 + 88) = v10;
      *(a1 + 40) = v8;
      *(a1 + 56) = v9;
      v11 = *(v3 + 96);
      v12 = *(v3 + 112);
      v13 = *(v3 + 128);
      *(a1 + 148) = *(v3 + 140);
      *(a1 + 120) = v12;
      *(a1 + 136) = v13;
      *(a1 + 104) = v11;
      memcpy((a1 + 168), (a2 + 168), 0x201uLL);
      *(a1 + 688) = *(a2 + 688);
      v14 = *(a2 + 696);
      *(a1 + 696) = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(a2 + 704);
      v16 = *(a2 + 736);
      *(a1 + 720) = *(a2 + 720);
      *(a1 + 736) = v16;
      *(a1 + 704) = v15;
      v17 = *(a2 + 752);
      v18 = *(a2 + 768);
      v19 = *(a2 + 784);
      *(a1 + 793) = *(a2 + 793);
      *(a1 + 768) = v18;
      *(a1 + 784) = v19;
      *(a1 + 752) = v17;
      break;
    case 0x12:
      *v6 = *v3;
      break;
    case 0x18:
      v20 = *v3;
      *(a1 + 16) = *(v3 + 8);
      *v6 = v20;
      if (*(a2 + 47) < 0)
      {
        sub_100007244((a1 + 24), *(a2 + 24), *(a2 + 32));
      }

      else
      {
        v21 = *(a2 + 24);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 24) = v21;
      }

      *(a1 + 48) = *(a2 + 48);
      v22 = *(a2 + 64);
      v23 = *(a2 + 80);
      v24 = *(a2 + 96);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 80) = v23;
      *(a1 + 96) = v24;
      *(a1 + 64) = v22;
      if (*(a2 + 151) < 0)
      {
        sub_100007244((a1 + 128), *(a2 + 128), *(a2 + 136));
      }

      else
      {
        v25 = *(a2 + 128);
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 128) = v25;
      }

      break;
    default:
      sub_10053508C();
  }

  *a1 = *a2 ^ (*a2 >> 31);
  return a1;
}

void sub_100105DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100105E8C(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    v4 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v4;
    if (*(a2 + 39) < 0)
    {
      sub_100007244((a1 + 16), a2[2], a2[3]);
    }

    else
    {
      v5 = *(a2 + 1);
      *(a1 + 32) = a2[4];
      *(a1 + 16) = v5;
    }

    *(a1 + 40) = *(a2 + 5);
    v6 = *(a2 + 7);
    v7 = *(a2 + 9);
    v8 = *(a2 + 11);
    *(a1 + 100) = *(a2 + 100);
    *(a1 + 88) = v8;
    *(a1 + 72) = v7;
    *(a1 + 56) = v6;
    if (*(a2 + 143) < 0)
    {
      sub_100007244((a1 + 120), a2[15], a2[16]);
    }

    else
    {
      v9 = *(a2 + 15);
      *(a1 + 136) = a2[17];
      *(a1 + 120) = v9;
    }

    *(a1 + 144) = 1;
  }

  return a1;
}

void sub_100105F58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  if (*(v1 + 144) == 1)
  {
    sub_1005F3518(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100105F90(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101AFD430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationAwarenessProvider::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101AFD444();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationAwarenessProvider::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100106998(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_100106180(void *a1)
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
    v5 = 13;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 26;
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

std::string *sub_10010622C(std::string *result, uint64_t a2)
{
  v3 = result;
  if (result[3].__r_.__value_.__s.__data_[0] == *(a2 + 72))
  {
    if (result[3].__r_.__value_.__s.__data_[0])
    {
      if (result != a2)
      {
        LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
        sub_100103B9C(result, *(a2 + 16), 0);
      }

      *(v3 + 40) = *(a2 + 40);

      return std::string::operator=((v3 + 48), (a2 + 48));
    }
  }

  else if (result[3].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(result[2].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(result[2].__r_.__value_.__l.__data_);
    }

    result = sub_1004906DC(v3);
    *(v3 + 72) = 0;
  }

  else
  {
    result = sub_100103020(result, a2);
    *(v3 + 40) = *(a2 + 40);
    if (*(a2 + 71) < 0)
    {
      result = sub_100007244((v3 + 48), *(a2 + 48), *(a2 + 56));
    }

    else
    {
      v4 = *(a2 + 48);
      *(v3 + 64) = *(a2 + 64);
      *(v3 + 48) = v4;
    }

    *(v3 + 72) = 1;
  }

  return result;
}

BOOL sub_10010632C(double a1, double a2, double a3, double a4)
{
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  if (a4 < 0.0)
  {
    a4 = a4 + 360.0;
  }

  v4 = a4 - a2;
  if (v4 <= 180.0)
  {
    if (v4 < -180.0)
    {
      v4 = v4 + 360.0;
    }
  }

  else
  {
    v4 = v4 + -360.0;
  }

  v5 = v4;
  if (v4 < 0)
  {
    v5 = -v5;
  }

  v6 = a3 - a1;
  if (v6 < 0)
  {
    v6 = a1 - a3;
  }

  return v6 > 2 || v5 > 2;
}

BOOL sub_1001063B0(float64x2_t *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v10 = vabdd_f64(a5, a8);
  if (v10 <= 2.0)
  {
    v21 = a1[1].f64[1];
    if (v21 == 0.0 || vabdd_f64(a5, v21) > 0.005)
    {
      v22 = (a5 + a8) * 0.5;
      a1[1].f64[0] = v22 * 0.0174532925;
      a1[1].f64[1] = v22;
      v23 = __sincos_stret(v22 * 0.0174532925);
      v24 = v23.__sinval * -0.00669437999 * v23.__sinval + 1.0;
      v25 = sqrt(v24);
      v26.f64[0] = v24 * v25;
      v26.f64[1] = v25;
      *a1 = vdivq_f64(xmmword_101D16770, v26);
      a1[2].f64[0] = v23.__cosval;
    }

    v27 = 360.0;
    v28 = a6 + 360.0;
    if (a6 >= 0.0)
    {
      v28 = a6;
    }

    v29 = a9 + 360.0;
    if (a9 >= 0.0)
    {
      v29 = a9;
    }

    v30 = v29 - v28;
    if (v30 <= 180.0)
    {
      if (v30 >= -180.0)
      {
LABEL_13:
        *a2 = (a8 - a5) * 0.0174532925 * (a1->f64[0] + a7);
        *a3 = v30 * 0.0174532925 * ((a1->f64[1] + a7) * a1[2].f64[0]);
        *a4 = a10 - a7;
        return v10 <= 2.0;
      }
    }

    else
    {
      v27 = -360.0;
    }

    v30 = v30 + v27;
    goto LABEL_13;
  }

  return v10 <= 2.0;
}

uint64_t sub_100106544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 3320) = (*(**(a1 + 120) + 184))(*(a1 + 120));
  [*(a1 + 136) nextFireTime];
  *(a2 + 3328) = v6;
  v12 = 0;
  v7 = sub_10000608C(a1, &v12, 1);
  v12 = 3;
  v8 = sub_10000608C(a1, &v12, 1);
  v12 = 4;
  v9 = sub_10000608C(a1, &v12, 1);
  v12 = 22;
  v10 = sub_10000608C(a1, &v12, 1);
  sub_1000F8468(a1);
  *(a2 + 3336) = v7;
  *(a2 + 3340) = v8;
  *(a2 + 3344) = v9;
  *(a2 + 3348) = v10;
  *(a2 + 3352) = 1176256512;
  *(a2 + 3356) = (*(**(a1 + 120) + 216))(*(a1 + 120));
  *(a2 + 3357) = (*(**(a1 + 120) + 224))(*(a1 + 120));
  *(a2 + 3358) = (*(**(a1 + 120) + 232))(*(a1 + 120));
  return sub_1000F8078(a3, a2);
}

id sub_1001066E4(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_100106794(a1);
}

id sub_100106744(uint64_t a1, int a2, void *a3)
{
  result = sub_1001066E4(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

id sub_100106794(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101AFD9AC();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101D16C3ELL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101AFD9C0();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101AFD9AC();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101D16C3ELL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101AFDAB0();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

void sub_100106998(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*a3 == *(a1 + 312))
  {
    *buf = 0;
    if (sub_10000608C(a1, buf, 1))
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101AFD408();
      }

      v6 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Awareness Received location}", buf, 0x12u);
      }

      *(a1 + 160) = *(a4 + 76);
      sub_10011652C(a1);
      v7 = *(a4 + 112);
      v21 = *(a4 + 96);
      v22 = v7;
      v23[0] = *(a4 + 128);
      *(v23 + 12) = *(a4 + 140);
      v8 = *(a4 + 48);
      v17 = *(a4 + 32);
      v18 = v8;
      v9 = *(a4 + 80);
      v19 = *(a4 + 64);
      v20 = v9;
      v10 = *(a4 + 16);
      *buf = *a4;
      *&buf[16] = v10;
      v15 = 0;
      (*(*a1 + 152))(a1, &v15, buf, 1, 0xFFFFFFFFLL, 0);
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101AFD408();
      }

      v14 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Awareness #warning Received location without clients}", buf, 0x12u);
      }

      if (*(a1 + 312) != 50)
      {
        [*(*(a1 + 264) + 16) unregister:*(*(a1 + 264) + 8) forNotification:?];
        *(a1 + 312) = 50;
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101AFD3F4();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *a3;
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Awareness #warning Unexpected notification, notification:%{public, location:CLLocationProvider_Type::Notification}lld}", buf, 0x1Cu);
    }
  }
}

uint64_t sub_100106C38@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = vdupq_n_s64(0x7FF0000000000000uLL);
  *(a2 + 16) = 0;
  v2 = *(result + 64);
  if (v2)
  {
    v3 = result + 64;
    do
    {
      v4 = *(v2 + 32);
      if ((v4 & 0x80000000) == 0)
      {
        v3 = v2;
      }

      v2 = *(v2 + ((v4 >> 28) & 8));
    }

    while (v2);
    if (v3 != result + 64 && *(v3 + 32) <= 0)
    {
      v5 = *(v3 + 40);
      v6 = (v3 + 48);
      if (v5 != v6)
      {
        v7 = 0;
        v8 = 4;
        if (*(result + 152))
        {
          v8 = 1;
        }

        v9 = INFINITY;
        v10 = INFINITY;
        do
        {
          if (*&v5[v8 + 4] < v9)
          {
            v9 = *&v5[v8 + 4];
          }

          *a2 = v9;
          if (*&v5[v8 + 5] < v10)
          {
            v10 = *&v5[v8 + 5];
          }

          *(a2 + 8) = v10;
          if (v7)
          {
            v7 = 1;
          }

          else
          {
            v7 = v5[v8 + 6];
          }

          *(a2 + 16) = v7 & 1;
          v11 = v5[1];
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = v5[2];
              v13 = *v12 == v5;
              v5 = v12;
            }

            while (!v13);
          }

          v5 = v12;
        }

        while (v12 != v6);
      }
    }
  }

  return result;
}

uint64_t sub_100106D34(uint64_t a1, int a2)
{
  sub_10001A3E8();
  result = sub_1000F42C0();
  if ((result & 1) == 0 && *(a1 + 153) != a2)
  {
    *(a1 + 153) = a2;
    v5 = *(a1 + 328);
    if (a2)
    {
      [v5 startMonitoringScenarioTriggerOfType:1 forClient:CLISP_ME_TOKEN];
      v6 = *(a1 + 328);
      v7 = CLISP_ME_TOKEN;

      return [v6 startMonitoringScenarioTriggerOfType:2 forClient:v7];
    }

    else
    {
      [v5 stopMonitoringScenarioTriggerOfType:1 forClient:CLISP_ME_TOKEN];
      result = [*(a1 + 328) stopMonitoringScenarioTriggerOfType:2 forClient:CLISP_ME_TOKEN];
      *(a1 + 152) = 0;
    }
  }

  return result;
}

_DWORD *sub_100106DDC(_DWORD *result, uint64_t a2)
{
  v2 = result[78];
  if (v2 != a2)
  {
    v4 = result;
    if (v2 != 50)
    {
      result = [*(*(result + 33) + 16) unregister:*(*(result + 33) + 8) forNotification:?];
    }

    if (a2 != 50)
    {
      result = [*(*(v4 + 33) + 16) register:*(*(v4 + 33) + 8) forNotification:a2 registrationInfo:0];
    }

    v4[78] = a2;
  }

  return result;
}

double sub_100106E44(uint64_t a1)
{
  if (*(a1 + 289) == 1)
  {
    *(a1 + 289) = 0;
    if (qword_1025D47A0 != -1)
    {
      sub_101AFD3F4();
    }

    v2 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 296);
      v6[0] = 68289282;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2050;
      v10 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Awareness stopping active location request and releasing power assertion, powerAssertion:%{public}p}", v6, 0x1Cu);
    }

    [*(*(a1 + 272) + 16) unregister:*(*(a1 + 272) + 8) forNotification:1];
    [*(a1 + 304) setNextFireDelay:1.79769313e308];
    v4 = *(a1 + 296);
    *(a1 + 296) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    result = *(a1 + 184);
    *(a1 + 168) = result;
  }

  return result;
}

void sub_100106F90(void *a1, int *a2, void *a3)
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
        v10 = sub_1001066E4(a3);
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

            v15 = *(v11 + 8);
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
              sub_10010734C(a1, &v36, &v37, a3);
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
                  if (*(v27 + 32) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 32) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 8))
                {
                  do
                  {
                    v28 = *(v24 + 32);
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
                sub_101AFD444();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 8);
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
                  sub_101AFD444();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 8);
                v38 = 136446466;
                v39 = v33;
                v40 = 1026;
                v41 = v34;
                v35 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLLocationAwarenessProvider_Type::Notification, CLLocationAwarenessProvider_Type::NotificationData, char, CLLocationAwarenessProvider_Type::RegInfo>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLLocationAwarenessProvider_Type::Notification, NotificationData_T = CLLocationAwarenessProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLLocationAwarenessProvider_Type::RegInfo]", "%s\n", v35);
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

_BYTE *sub_10010734C(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_1001066E4(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100107444(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 5);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t *sub_100107444(uint64_t a1, int *a2)
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

uint64_t sub_100107534(uint64_t a1, __int128 *a2, uint64_t a3, int a4)
{
  [*(a1 + 8) silo];
  result = sub_100117DD4(a1, a2);
  if (result)
  {
    if (sub_10011802C(a1, a2, a4))
    {
      return 0;
    }

    else
    {
      v9 = *a2;
      *(a1 + 44) = a2[1];
      *(a1 + 28) = v9;
      v10 = a2[2];
      v11 = a2[3];
      v12 = a2[4];
      *(a1 + 108) = a2[5];
      *(a1 + 92) = v12;
      *(a1 + 76) = v11;
      *(a1 + 60) = v10;
      v13 = a2[6];
      v14 = a2[7];
      v15 = a2[8];
      *(a1 + 168) = *(a2 + 140);
      *(a1 + 156) = v15;
      *(a1 + 140) = v14;
      *(a1 + 124) = v13;
      memcpy((a1 + 184), a3, 0x201uLL);
      v16 = *(a3 + 520);
      v17 = *(a3 + 528);
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 704) = v16;
      v18 = *(a1 + 712);
      *(a1 + 712) = v17;
      if (v18)
      {
        sub_100008080(v18);
      }

      v19 = *(a3 + 536);
      v20 = *(a3 + 568);
      *(a1 + 736) = *(a3 + 552);
      *(a1 + 752) = v20;
      *(a1 + 720) = v19;
      v21 = *(a3 + 584);
      v22 = *(a3 + 600);
      v23 = *(a3 + 616);
      *(a1 + 809) = *(a3 + 625);
      *(a1 + 784) = v22;
      *(a1 + 800) = v23;
      *(a1 + 768) = v21;
      return 1;
    }
  }

  return result;
}

uint64_t sub_10010764C(uint64_t a1, int a2, unsigned int *a3, uint64_t *a4)
{
  v6 = sub_10010A35C(a1, a2, a3, a4);
  if (v6)
  {
    sub_10017DE58(a1, a3);
  }

  if (!*a3)
  {
    v12[0] = 0;
    v7 = sub_10000608C(a1, v12, 1);
    v8 = *(a1 + 3356);
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 3356);
      v12[0] = 67240448;
      v12[1] = v10;
      v13 = 1026;
      v14 = v7;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "updateRegistrationInfoForClient,prevNumberOfActiveGNSSClients,%{public}d,numberOfActiveGpsClients,%{public}d", v12, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7827C((a1 + 3356), v7);
    }

    if (v8 != v7)
    {
      sub_1001C5AB8(a1, v7 > *(a1 + 3356), v7, a3);
    }
  }

  return v6;
}

uint64_t sub_1001077B8(_BYTE *a1, _DWORD *a2)
{
  sub_1000F4588();
  if (!*a2 && (a1[109] & 1) == 0)
  {
    v5 = 9;
    (*(*a1 + 144))(a1, &v5, 1, 0xFFFFFFFFLL);
  }

  return 1;
}

void sub_100107838(uint64_t a1, int *a2)
{
  if (*a2 == 9 && *(a1 + 112) == 1)
  {
    *(a1 + 112) = 0;
  }

  sub_1001162D8(a1, a2);
}

uint64_t sub_100107858()
{
  if (!qword_102656770)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A35E8();
    }

    v0 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v2 = 0;
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "***no run loop available***", v2, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A35FC();
    }
  }

  return qword_102656770;
}

id sub_1001078FC(uint64_t a1, int a2, void *a3)
{
  result = sub_10010794C(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

id sub_10010794C(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1005C58C0(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_100116F50(a1);
    }

    else
    {
      return 0;
    }
  }
}

_BYTE *sub_1001079E8(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10010794C(a4);
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

uint64_t sub_100107AE0(uint64_t a1)
{
  v2 = *(a1 + 3368);
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = *(a1 + 3296);
  if (v3)
  {
    sub_100008080(v3);
  }

  if (*(a1 + 3119) < 0)
  {
    operator delete(*(a1 + 3096));
  }

  if (*(a1 + 3015) < 0)
  {
    operator delete(*(a1 + 2992));
  }

  v4 = *(a1 + 2840);
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = *(a1 + 1936);
  if (v5)
  {
    sub_100008080(v5);
  }

  v6 = *(a1 + 1808);
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = *(a1 + 1000);
  if (v7)
  {
    sub_100008080(v7);
  }

  v8 = *(a1 + 304);
  if (v8)
  {
    sub_100008080(v8);
  }

  if (*(a1 + 280) == 1 && *(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v9 = *(a1 + 184);
  if (v9)
  {
    sub_100008080(v9);
  }

  v10 = *(a1 + 168);
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = *(a1 + 152);
  if (v11)
  {
    sub_100008080(v11);
  }

  return a1;
}

float sub_100107BB8(uint64_t a1)
{
  *buf = 0;
  v2 = sub_10000608C(a1, buf, 1);
  *buf = 1;
  v3 = sub_10000608C(a1, buf, 1);
  *buf = 2;
  v4 = sub_10000608C(a1, buf, 1);
  v5 = 1000.0;
  if (!v4)
  {
    v5 = -1.0;
  }

  if (v3)
  {
    v5 = 100.0;
  }

  if (v2)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = v5;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1018F7C0C();
  }

  v7 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240960;
    v11 = v2 != 0;
    v12 = 1026;
    v13 = v3 != 0;
    v14 = 1026;
    v15 = v4 != 0;
    v16 = 2050;
    v17 = v6;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLIENT:hasClients,%{public}d,hasFineClients,%{public}d,hasCoarseClients,%{public}d,desiredAccuracy,%{public}.1lf", buf, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v9 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "float CLLocationController::getDesiredAccuracy()", "%s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  return v6;
}

uint64_t sub_100107E4C(uint64_t a1, unsigned int a2)
{
  v46 = a2;
  v4 = sub_100107BB8(a1);
  if (!a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101873CF0();
    }

    v10 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "LocationController,#Warning,startLocation when provider is None", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101874990();
    }

    return 0;
  }

  if (qword_1025D4600 != -1)
  {
    sub_101873CF0();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = &v46;
    v6 = sub_10010A224(a1 + 256, &v46)[5];
    *buf = &v46;
    v7 = sub_100109DF4(a1 + 232, &v46);
    v8 = v7 + 6;
    if (*(v7 + 71) < 0)
    {
      v8 = *v8;
    }

    *buf = 134349570;
    *&buf[4] = v6;
    *&buf[12] = 2050;
    v53 = v4;
    v54 = 2082;
    v55 = v8;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLIENT:startLocation,registerForNotification,start reg info,client,%{public}p,desiredAccuracy,%{public}.1lf,name,%{public}s", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_101873804();
    }

    *v47 = &v46;
    v35 = sub_10010A224(a1 + 256, &v46)[5];
    *v47 = &v46;
    v36 = sub_100109DF4(a1 + 232, &v46);
    v37 = v36 + 6;
    if (*(v36 + 71) < 0)
    {
      v37 = *v37;
    }

    *v47 = 134349570;
    *&v47[4] = v35;
    v48 = 2050;
    v49 = v4;
    v50 = 2082;
    v51 = v37;
    v38 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::startLocationProvider(LocationProvider)", "%s\n", v38);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  *buf = &v46;
  if ((*(sub_100109DF4(a1 + 232, &v46) + 911) & 1) != 0 || (*buf = &v46, *(sub_100109DF4(a1 + 232, &v46) + 114) > 0.0))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101874224();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,startLocation when provider is already started", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018748B4();
    }

    return 0;
  }

  if (*(a1 + 672) != 1)
  {
    if (v46 == *(a1 + 336))
    {
      sub_10017F6FC(a1 + 800);
      sub_10018E860(a1 + 800, *(a1 + 712));
      if (sub_100027514((a1 + 800)))
      {
        if (qword_1025D4600 != -1)
        {
          sub_101873804();
        }

        v17 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "LCPM,bestAccuracyDoesNotRequireGps,true,on provider start", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018746FC();
        }

        *buf = sub_10002F470();
        sub_1003E0928((a1 + 800), buf);
        *(a1 + 682) = 1;
        sub_10017ECA4(a1);
        if (*(a1 + 160) == 2)
        {
          *(a1 + 160) = 1;
          if (qword_1025D4600 != -1)
          {
            sub_101873804();
          }

          v18 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "LCPM,update required location granularity to Fine,on provider start", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018747D8();
          }
        }

        sub_10010FF14(a1, v46);
        return 0;
      }

      sub_1000F44E4(a1, 0);
      *(a1 + 682) = 0;
      sub_10017ECA4(a1);
      *buf = 0;
      if (sub_10000608C(a1, buf, 1) && *(a1 + 160) != 2)
      {
        *(a1 + 160) = 2;
        if (qword_1025D4600 != -1)
        {
          sub_101873804();
        }

        v19 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 160);
          *buf = 67240448;
          *&buf[4] = 1;
          *&buf[8] = 1026;
          *&buf[10] = v20;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "LCPM,update required location granularity to Best,on provider start,haveBestAccuracyClients,%{public}d,requiredGranularity,%{public}d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018744E0((a1 + 160));
        }
      }

      if (qword_1025D4650 != -1)
      {
        sub_1018745F8();
      }

      v21 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#wigo,on,LocationController", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101874620();
      }

      AnalyticsSendEventLazy();
    }

    else if (v46 != *(a1 + 352))
    {
      if (v46 == *(a1 + 328))
      {
        if (qword_1025D4620 != -1)
        {
          sub_101874224();
        }

        v32 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "WlpReg, 1, loccontroller", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101874328();
        }

        if (*(a1 + 682) == 1)
        {
          sub_10017F6FC(a1 + 800);
          sub_10018E860(a1 + 800, *(a1 + 712));
          if (qword_1025D4600 != -1)
          {
            sub_101873804();
          }

          v33 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "LCPM,startLocationProvider,startBestAccuracySession from wifi", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101874404();
          }
        }
      }

      else if (v46 == *(a1 + 332))
      {
        if (qword_1025D4620 != -1)
        {
          sub_101874224();
        }

        v34 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "UclpReg, 1, loccontroller", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10187424C();
        }
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_101874224();
    }

    v22 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = &v46;
      v23 = sub_100109DF4(a1 + 232, &v46);
      v24 = v23 + 6;
      if (*(v23 + 71) < 0)
      {
        v24 = *v24;
      }

      v25 = sub_100107BB8(a1);
      *buf = 136446466;
      *&buf[4] = v24;
      *&buf[12] = 2050;
      v53 = v25;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "@ClxProvider, start, %{public}s, desiredAccuracy, %{public}.1f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101874224();
      }

      *v47 = &v46;
      v42 = sub_100109DF4(a1 + 232, &v46);
      v43 = v42 + 6;
      if (*(v42 + 71) < 0)
      {
        v43 = *v43;
      }

      v44 = sub_100107BB8(a1);
      *v47 = 136446466;
      *&v47[4] = v43;
      v48 = 2050;
      v49 = v44;
      v45 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::startLocationProvider(LocationProvider)", "%s\n", v45);
      if (v45 != buf)
      {
        free(v45);
      }
    }

    *buf = &v46;
    sub_10010A224(a1 + 256, &v46);
    sub_10002FA64();
  }

  if (qword_1025D4600 != -1)
  {
    sub_101873804();
  }

  v13 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = &v46;
    v14 = sub_100109DF4(a1 + 232, &v46);
    v15 = v14 + 6;
    if (*(v14 + 71) < 0)
    {
      v15 = *v15;
    }

    *buf = 136446210;
    *&buf[4] = v15;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "registering location provider,%{public}s,as a bystander only", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_101873804();
    }

    *v47 = &v46;
    v39 = sub_100109DF4(a1 + 232, &v46);
    v40 = v39 + 6;
    if (*(v39 + 71) < 0)
    {
      v40 = *v40;
    }

    *v47 = 136446210;
    *&v47[4] = v40;
    v41 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::startLocationProvider(LocationProvider)", "%s\n", v41);
    if (v41 != buf)
    {
      free(v41);
    }
  }

  *buf = &v46;
  v16 = sub_10010A224(a1 + 256, &v46)[5];
  [*(v16 + 16) register:*(v16 + 8) forNotification:4 registrationInfo:0];
  if (v46 == *(a1 + 336))
  {
    *buf = &v46;
    v26 = sub_10010A224(a1 + 256, &v46);
    [*(v26[5] + 16) register:*(v26[5] + 8) forNotification:26 registrationInfo:0];
    v27 = *(a1 + 312);
    if (v27)
    {
      sub_100DAB6C0(v27);
    }
  }

  else if (v46 == *(a1 + 344))
  {
    *buf = &v46;
    v28 = sub_10010A224(a1 + 256, &v46);
    [*(v28[5] + 16) register:*(v28[5] + 8) forNotification:20 registrationInfo:0];
    *buf = &v46;
    v29 = sub_10010A224(a1 + 256, &v46);
    [*(v29[5] + 16) register:*(v29[5] + 8) forNotification:21 registrationInfo:0];
  }

  *buf = &v46;
  *(sub_100109DF4(a1 + 232, &v46) + 910) = 0;
  *buf = &v46;
  v11 = 1;
  *(sub_100109DF4(a1 + 232, &v46) + 911) = 1;
  v30 = sub_10000B1F8();
  *buf = 1;
  v31 = sub_10001A6B0(v30, buf);
  *buf = &v46;
  *(sub_100109DF4(a1 + 232, &v46) + 114) = v31;
  sub_10010FF14(a1, v46);
  return v11;
}

void sub_100108BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100021AFC(v8);
  (*(*a1 + 152))(a1, a2, v8, a3, a4, 0);

  if (v13)
  {
    sub_100008080(v13);
  }

  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  if (v9)
  {
    sub_100008080(v9);
  }
}

void sub_100108CA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100108CB4(uint64_t result, unsigned int a2, int a3, unsigned int a4, unsigned int a5, int a6, int a7)
{
  if (!*(result + 16))
  {
    return result;
  }

  v13 = result;
  sub_10000AED0(v36);
  v14 = sub_10000B1F8();
  sub_10000AED4(v14, v35);
  v34 = 1;
  *buf = 21;
  v33[0] = 21;
  v33[1] = sub_10000AD98(buf);
  sub_10000AFE4(v36, &v34, v33, v33, v35);
  v38 |= 2u;
  v15 = v37;
  if (!v37)
  {
    operator new();
  }

  *(v37 + 492) |= 0x800u;
  v16 = *(v15 + 352);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 200) |= 0x10u;
  v17 = *(v16 + 32);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 28) |= 1u;
  *(v17 + 8) = -1;
  if (!sub_1000183C8(4u))
  {
    __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 9866, "::CLP::LogEntry::PrivateData::SystemNotification_NotificationType_IsValid(value)");
  }

  v18 = *(v17 + 28);
  *(v17 + 12) = 4;
  *(v17 + 28) = v18 | 6;
  v19 = *(v17 + 16);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 76) |= 0x40u;
  v20 = *(v19 + 64);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 76) |= 2u;
  v21 = *(v20 + 16);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 24) |= 2u;
  *(v21 + 16) = a6;
  *(v20 + 76) |= 4u;
  v22 = *(v20 + 24);
  if (!v22)
  {
    operator new();
  }

  if (!sub_100108BCC(a2))
  {
    v29 = "::CLP::LogEntry::PrivateData::LocationType_IsValid(value)";
    v30 = 8177;
    v31 = "set_provider_type";
    goto LABEL_38;
  }

  *(v22 + 28) |= 1u;
  *(v22 + 8) = a2;
  *(v20 + 76) |= 4u;
  v23 = *(v20 + 24);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 28) |= 2u;
  *(v23 + 16) = a3;
  *(v20 + 76) |= 4u;
  if (!sub_1000183C8(a4))
  {
    v29 = "::CLP::LogEntry::PrivateData::LocationControllerProvider_PositionGranularityType_IsValid(value)";
    v30 = 8222;
    v31 = "set_required_position_granularity";
    goto LABEL_38;
  }

  *(v23 + 28) |= 4u;
  *(v23 + 12) = a4;
  *(v20 + 76) |= 4u;
  v24 = *(v20 + 24);
  if (!v24)
  {
    operator new();
  }

  if (!sub_1000183C8(a5))
  {
    v29 = "::CLP::LogEntry::PrivateData::LocationControllerProvider_PositionGranularityType_IsValid(value)";
    v30 = 8245;
    v31 = "set_active_position_granularity";
LABEL_38:
    __assert_rtn(v31, "CLPLocationController.pb.h", v30, v29);
  }

  *(v24 + 28) |= 8u;
  *(v24 + 20) = a5;
  *(v20 + 76) |= 4u;
  v25 = *(v20 + 24);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 28) |= 0x10u;
  *(v25 + 17) = a7;
  v26 = sub_10000BFC0(v13);
  if (*(v13 + 8) == 1)
  {
    v27 = v26;
    if (qword_1025D4600 != -1)
    {
      sub_1018D8CDC();
    }

    v28 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67241984;
      v56 = v27;
      v57 = 2050;
      v58 = v35[0].n128_u64[0];
      v59 = 1026;
      v60 = a2;
      v61 = 1026;
      v62 = a3;
      v63 = 1026;
      v64 = a4;
      v65 = 1026;
      v66 = a5;
      v67 = 1026;
      v68 = a6;
      v69 = 1026;
      v70 = a7;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "#locctl,#rec,ProviderManagerInternalState,success,%{public}d,mct,%{public}.3f,locationType,%{public}d,providerEnabled,%{public}d,requiredGranularity,%{public}d,activeGranularity,%{public}d,bestAccuracyDoesNotRequireGps,%{public}d,throttlingEnabled,%{public}d", buf, 0x36u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D8D04(buf);
      v39 = 67241984;
      v40 = v27;
      v41 = 2050;
      v42 = v35[0].n128_u64[0];
      v43 = 1026;
      v44 = a2;
      v45 = 1026;
      v46 = a3;
      v47 = 1026;
      v48 = a4;
      v49 = 1026;
      v50 = a5;
      v51 = 1026;
      v52 = a6;
      v53 = 1026;
      v54 = a7;
      v32 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordProviderManagerInternalState(const CLP::LogEntry::PrivateData::LocationType, const BOOL, const CLP::LogEntry::PrivateData::LocationControllerProvider_PositionGranularityType, const CLP::LogEntry::PrivateData::LocationControllerProvider_PositionGranularityType, const BOOL, const BOOL)", "%s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }
  }

  return sub_10000CE1C(v36);
}

void sub_1001092B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010938C(uint64_t a1, void *a2, int *a3)
{
  v14.i32[2] = a2;
  v5 = 1;
  if (sub_10004DC80(a1, a2, a3))
  {
    v6 = sub_10000B1F8();
    sub_10000B230(buf);
    sub_10000B324(v6, buf);
    *buf = 1;
    v14.i32[0] = 1;
    v14.i32[1] = sub_10000AD98(buf);
    v7 = sub_10000AE98();
    *buf = 3;
    sub_10010BD64(v7, buf, &v14, (a1 + 5220), &v14.i32[2], a3);
    v5 = sub_1000489F4(a1, v14.i32[2], a3);
    if (qword_1025D4600 != -1)
    {
      sub_101BCFF30();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v9 = v14.i32[2];
      *buf = &v14.i64[1];
      v10 = sub_1000488C8(a1 + 80, &v14.i32[2]);
      v11 = [v10[8] description];
      v12 = *a3;
      *buf = 68289794;
      *&buf[4] = 0;
      v16 = 2082;
      v17 = "";
      v18 = 1026;
      v19 = v9;
      v20 = 2114;
      v21 = v11;
      v22 = 2050;
      v23 = v12;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:LocationController,unregistration, id:%{public}d, client:%{public, location:escape_only}@, notification:%{public, location:CLLocationProvider_Type::Notification}lld}", buf, 0x2Cu);
    }

    if (*a3 == 15 || !*a3)
    {
      *buf = *a3;
      if (sub_10000608C(a1, buf, 1))
      {
        sub_10017E4BC(a1, a3);
      }
    }
  }

  return v5;
}

void sub_100109578(uint64_t a1, double a2)
{
  if (a2 == INFINITY)
  {
    if (*(a1 + 176) != INFINITY)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101AFD3F4();
      }

      v4 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 68289026;
        v8 = 0;
        v9 = 2082;
        v10 = "";
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Awareness Disabling wakes}", &v7, 0x12u);
      }

      *(a1 + 176) = 0x7FF0000000000000;
      sub_10021D3CC((a1 + 192));
    }
  }

  else if (*(a1 + 184) >= a2)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101AFD3F4();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2050;
      v12 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Awareness Wake time is in the past, wakeTime_s:%{public}.09f}", &v7, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_101AFD408();
      }
    }

    v6 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2050;
      v12 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Awareness Wake time is in the past", "{msg%{public}.0s:#Awareness Wake time is in the past, wakeTime_s:%{public}.09f}", &v7, 0x1Cu);
    }
  }

  else if (vabdd_f64(*(a1 + 176), a2) >= *(a1 + 112))
  {
    sub_100073BF8((a1 + 192), a2);
    *(a1 + 176) = a2;
  }
}

void sub_1001097CC(float64x2_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 36);
  v7 = *(a3 + 36);
  if (v6 <= 0.0 || v7 <= 0.0)
  {
    if (v6 <= 0.0)
    {
      v9 = 0.0;
      if (v7 <= 0.0)
      {
        goto LABEL_23;
      }

      v8 = *(a3 + 28);
    }

    else
    {
      v8 = *(a2 + 28);
    }
  }

  else
  {
    v8 = (*(a2 + 28) + *(a3 + 28)) * 0.5;
  }

  v9 = -450.0;
  if (v8 >= -450.0)
  {
    v9 = 1000000.0;
    if (v8 <= 1000000.0)
    {
      v9 = v8;
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101AFC3A8();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134218240;
        v17 = 0x412E848000000000;
        v18 = 2048;
        v19 = v8;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning refAlt > %.1lf,refAlt,%.1lf,using the max", &v16, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AFC3BC();
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101AFC3A8();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218240;
      v17 = 0xC07C200000000000;
      v18 = 2048;
      v19 = v8;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning refAlt < %.1lf,refAlt,%.1lf,using the min", &v16, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AFC4B8();
    }
  }

LABEL_23:
  v12 = *(a2 + 4);
  v13 = *(a2 + 12);
  v14 = *(a3 + 4);
  v15 = *(a3 + 12);
  if (sub_10010632C(v12, v13, v14, v15))
  {
    sub_1002AB240(v12, v13, v14, v15);
  }

  else
  {
    sub_100109D18(a1, v12, v13, v14, v15, v9);
  }
}

uint64_t sub_100109AB0(uint64_t a1, int a2, int *a3, uint64_t *a4)
{
  v26 = a2;
  v6 = *a3;
  v7 = *(a1 + 64);
  if (!v7)
  {
    goto LABEL_15;
  }

  v10 = a1 + 64;
  do
  {
    if (*(v7 + 32) >= v6)
    {
      v10 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < v6));
  }

  while (v7);
  if (v10 == a1 + 64)
  {
    goto LABEL_15;
  }

  if (v6 < *(v10 + 32))
  {
    goto LABEL_15;
  }

  v13 = *(v10 + 48);
  v11 = v10 + 48;
  v12 = v13;
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v11 - 8;
  v15 = v11;
  do
  {
    if (*(v12 + 32) >= a2)
    {
      v15 = v12;
    }

    v12 = *(v12 + 8 * (*(v12 + 32) < a2));
  }

  while (v12);
  if (v15 != v11 && *(v15 + 32) <= a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101BCFF1C();
    }

    v19 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = &v26;
      v20 = [sub_1000488C8(a1 + 80 &v26)[8]];
      v21 = *a3;
      *buf = &v26;
      v22 = sub_100021F2C(v14, &v26)[5];
      v23 = *a4;
      *buf = 68290306;
      *&buf[4] = 0;
      v28 = 2082;
      v29 = "";
      v30 = 1026;
      v31 = a2;
      v32 = 2114;
      v33 = v20;
      v34 = 2050;
      v35 = v21;
      v36 = 2050;
      v37 = v22;
      v38 = 2050;
      v39 = v23;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:LocationController,updateRegistrationInfoForClient, id:%{public}d, client:%{public, location:escape_only}@, notification:%{public, location:CLLocationProvider_Type::Notification}lld, from desiredAccuracy:%{public}.1f, to desiredAccuracy:%{public}.1f}", buf, 0x40u);
    }

    *buf = &v26;
    v24 = sub_100021F2C(v14, &v26);
    v25 = *a4;
    *(v24 + 52) = *(a4 + 12);
    *(v24 + 5) = v25;
    v6 = *a3;
    v16 = 1;
  }

  else
  {
LABEL_15:
    v16 = 0;
  }

  if (v6 == 15 || v6 == 0)
  {
    sub_10017E4BC(a1, a3);
  }

  return v16;
}

long double sub_100109D18(float64x2_t *a1, double a2, double a3, double a4, double a5, double a6)
{
  v14 = 0.0;
  v15 = 0.0;
  if (!sub_10010632C(a2, a3, a4, a5) && sub_1001063B0(a1, &v15, &v14, &v13, a2, a3, a6, a4, a5, a6))
  {
    return sqrt(v14 * v14 + v15 * v15);
  }

  return sub_1002AB240(a2, a3, a4, a5);
}

uint64_t *sub_100109DF4(uint64_t a1, int *a2)
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

id sub_100109F14(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1017FDF40(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1017FE2BC(a1);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100109FB0(uint64_t a1, __int32 a2, int *a3, __int128 *a4)
{
  v17.i32[2] = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(buf);
  sub_10000B324(v7, buf);
  *buf = 1;
  v17.i32[0] = 1;
  v17.i32[1] = sub_10000AD98(buf);
  v8 = *(a1 + 5264);
  v9 = sub_10000AE98();
  *buf = 2;
  if (v8 == 1)
  {
    sub_10010BD64(v9, buf, &v17, (a1 + 5220), &v17.i32[2], a3);
  }

  else
  {
    sub_10010E7FC(v9, buf, &v17, (a1 + 5220), &v17.i32[2], a3, a4);
  }

  *(a1 + 5264) = 0;
  v10 = sub_100044404(a1, v17.i32[2], a3, a4);
  if (qword_1025D4600 != -1)
  {
    sub_101BCFF30();
  }

  v11 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v12 = v17.i32[2];
    *buf = &v17.i64[1];
    v13 = sub_1000488C8(a1 + 80, &v17.i32[2]);
    v14 = [v13[8] description];
    v15 = *a3;
    *buf = 68289794;
    *&buf[4] = 0;
    v19 = 2082;
    v20 = "";
    v21 = 1026;
    v22 = v12;
    v23 = 2114;
    v24 = v14;
    v25 = 2050;
    v26 = v15;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:LocationController,registration, id:%{public}d, client:%{public, location:escape_only}@, notification:%{public, location:CLLocationProvider_Type::Notification}lld}", buf, 0x2Cu);
  }

  sub_10010A2F8(a1, a3);
  return v10;
}

uint64_t sub_10010A1AC(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 == 2)
  {
    return 0;
  }

  else if (v2 == 1)
  {
    return 1;
  }

  else if (v2)
  {
    return -1;
  }

  else if (sub_100027514((a1 + 800)))
  {
    v4 = 1;
    *(a1 + 682) = 1;
    sub_10017ECA4(a1);
  }

  else
  {
    return 2;
  }

  return v4;
}

uint64_t *sub_10010A224(uint64_t a1, int *a2)
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

uint64_t sub_10010A2F8(uint64_t result, int *a2)
{
  v4 = *a2;
  if (*a2 == 15 || v4 == 0)
  {
    v9 = v2;
    v10 = v3;
    v7 = result;
    v8 = v4;
    result = sub_10000608C(result, &v8, 1);
    if (result >= 2)
    {
      return sub_10017E4BC(v7, a2);
    }
  }

  return result;
}

uint64_t sub_10010A35C(uint64_t a1, int a2, unsigned int *a3, uint64_t *a4)
{
  v34 = a2;
  v8 = *(a1 + 64);
  v6 = a1 + 64;
  v7 = v8;
  if (!v8)
  {
    goto LABEL_15;
  }

  v10 = *a3;
  v11 = v6;
  do
  {
    if (*(v7 + 32) >= v10)
    {
      v11 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < v10));
  }

  while (v7);
  if (v11 == v6)
  {
    goto LABEL_15;
  }

  if (v10 < *(v11 + 32))
  {
    goto LABEL_15;
  }

  v14 = *(v11 + 48);
  v12 = v11 + 48;
  v13 = v14;
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v12 - 8;
  v16 = v12;
  do
  {
    if (*(v13 + 32) >= a2)
    {
      v16 = v13;
    }

    v13 = *(v13 + 8 * (*(v13 + 32) < a2));
  }

  while (v13);
  if (v16 != v12 && *(v16 + 32) <= a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10023F73C();
    }

    v21 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v22 = *a3;
      v23 = sub_100048D98(*a3);
      *buf = &v34;
      v24 = sub_100021F2C(v15, &v34)[5];
      v25 = *a4;
      *buf = 67110146;
      *&buf[4] = a2;
      v45 = 1024;
      v46 = v22;
      v47 = 2080;
      v48 = v23;
      v49 = 2048;
      v50 = v24;
      v51 = 2048;
      v52 = v25;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "CLIENT: updateRegistrationInfoForClient, client, %d, notification, %d, %s, from desiredAccuracy, %.1lf, to, %.1lf", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10190651C();
      }

      v28 = v34;
      v29 = *a3;
      v30 = sub_100048D98(v29);
      v35 = &v34;
      v31 = sub_100021F2C(v15, &v34)[5];
      v32 = *a4;
      LODWORD(v35) = 67110146;
      HIDWORD(v35) = v28;
      v36 = 1024;
      v37 = v29;
      v38 = 2080;
      v39 = v30;
      v40 = 2048;
      v41 = v31;
      v42 = 2048;
      v43 = v32;
      v33 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLLocationProvider::updateRegistrationInfoForClient(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::RegInfo &)", "%s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    *buf = &v34;
    v26 = sub_100021F2C(v15, &v34);
    v27 = *a4;
    *(v26 + 52) = *(a4 + 12);
    *(v26 + 5) = v27;
    return 1;
  }

  else
  {
LABEL_15:
    if (qword_1025D4600 != -1)
    {
      sub_10023F73C();
    }

    v17 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v18 = *a3;
      v19 = sub_100048D98(*a3);
      *buf = 67109634;
      *&buf[4] = a2;
      v45 = 1024;
      v46 = v18;
      v47 = 2080;
      v48 = v19;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "CLIENT: updateRegistrationInfoForClient, client, %d, notification, %d, %s, no notification", buf, 0x18u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1019068E8();
      return 0;
    }
  }

  return result;
}

void sub_10010A73C()
{
  __chkstk_darwin();
  mach_absolute_time();
  sub_100104370(v0);
}

void sub_10010B448(_Unwind_Exception *a1)
{
  sub_1000FCCC8(v1);
  sub_1007BE994(&STACK[0x3358]);
  sub_1007BE994(&STACK[0x4CD8]);
  _Unwind_Resume(a1);
}

void sub_10010B730(uint64_t a1)
{
  v2 = sub_10000B1F8();
  *__p = 0;
  v3 = sub_10001A6B0(v2, __p);
  if (v3 - *(a1 + 1992) >= 900.0)
  {
    *(a1 + 1992) = v3;
    sub_10001A3E8();
    sub_100241210(__p);
    if (v49[9] >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = *__p;
    }

    sub_10000EC00(&v37, v4);
    if ((v49[9] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v5 = v39;
    if (v39 < 0)
    {
      v5 = v38;
    }

    if (!v5)
    {
      if (v39 < 0)
      {
        v38 = 5;
        v6 = v37;
      }

      else
      {
        v39 = 5;
        v6 = &v37;
      }

      strcpy(v6, "Local");
    }

    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D4620 != -1)
    {
      sub_1018F97D0();
    }

    v8 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_10001A3E8();
      v9 = v40;
      sub_1002412B0(v40);
      if (v42[9] < 0)
      {
        v9 = *v40;
      }

      v10 = sub_10001A3E8();
      sub_100241350(v10, v35);
      if (v36 >= 0)
      {
        v11 = v35;
      }

      else
      {
        v11 = v35[0];
      }

      v12 = &v37;
      if (v39 < 0)
      {
        v12 = v37;
      }

      *__p = 136446979;
      *&__p[4] = v9;
      v48 = 2081;
      *v49 = v11;
      *&v49[8] = 2082;
      *&v49[10] = v12;
      *&v49[18] = 1026;
      *&v49[20] = 10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "@ClxVersion, Timer, os, %{public}s, model, %{private}s, build, %{public}s, triage, %{public}d", __p, 0x26u);
      if (v36 < 0)
      {
        operator delete(v35[0]);
      }

      if ((v42[9] & 0x80000000) != 0)
      {
        operator delete(*v40);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F97F8(__p);
      sub_10001A3E8();
      v28 = v35;
      sub_1002412B0(v35);
      if (v36 < 0)
      {
        v28 = v35[0];
      }

      v29 = sub_10001A3E8();
      sub_100241350(v29, v33);
      if (v34 >= 0)
      {
        v30 = v33;
      }

      else
      {
        v30 = v33[0];
      }

      v31 = &v37;
      if (v39 < 0)
      {
        v31 = v37;
      }

      *v40 = 136446979;
      *&v40[4] = v28;
      v41 = 2081;
      *v42 = v30;
      *&v42[8] = 2082;
      *&v42[10] = v31;
      *&v42[18] = 1026;
      *&v42[20] = 10;
      v32 = _os_log_send_and_compose_impl();
      if (v34 < 0)
      {
        operator delete(v33[0]);
      }

      if (v36 < 0)
      {
        operator delete(v35[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::checkStateLogging()", "%s\n", v32);
      if (v32 != __p)
      {
        free(v32);
      }
    }

    v13 = (a1 + 1696);
    v14 = 13;
    do
    {
      if (v3 - *v13 > 900.0)
      {
        if (*v13 >= 1.0)
        {
          v15 = v3 - *v13;
        }

        else
        {
          v15 = -1.0;
        }

        if (p_info[196] != -1)
        {
          sub_1018F97D0();
        }

        v16 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(v13 - 2);
          v18 = *(v13 - 8);
          v19 = *v13;
          v20 = sub_10000B1F8();
          v21 = sub_100125220(v20);
          *__p = 136447490;
          *&__p[4] = v17;
          v48 = 1026;
          *v49 = v18;
          *&v49[4] = 2050;
          *&v49[6] = v19;
          *&v49[14] = 2050;
          *&v49[16] = v15;
          v50 = 2050;
          v51 = v3;
          v52 = 2050;
          v53 = v21;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "@ClxSnapshot, %{public}s, %{public}d, last, %{public}.1f, delta, %{public}.1f, now, %{public}.3f, propagation_us, %{public}.3f", __p, 0x3Au);
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F97F8(__p);
          v22 = *(v13 - 2);
          v23 = *(v13 - 8);
          v24 = *v13;
          v25 = sub_10000B1F8();
          v26 = sub_100125220(v25);
          *v40 = 136447490;
          *&v40[4] = v22;
          v41 = 1026;
          *v42 = v23;
          *&v42[4] = 2050;
          *&v42[6] = v24;
          *&v42[14] = 2050;
          *&v42[16] = v15;
          v43 = 2050;
          v44 = v3;
          v45 = 2050;
          v46 = v26;
          v27 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::checkStateLogging()", "%s\n", v27);
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          if (v27 != __p)
          {
            free(v27);
          }
        }
      }

      v13 += 3;
      --v14;
    }

    while (v14);
    if (v39 < 0)
    {
      operator delete(v37);
    }
  }
}

void sub_10010BCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010BD64(uint64_t a1, int *a2, int32x4_t *a3, int *a4, int *a5, int *a6)
{
  if (*(a1 + 16))
  {
    if ((*a2 & 0xFFFFFFFE) == 2)
    {
      if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100287074();
        }

        v9 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          if (a3->i32[0])
          {
            v10 = a3->i32[1] == 0;
          }

          else
          {
            v10 = 1;
          }

          v11 = !v10;
          if (*a4)
          {
            v12 = a4[1] == 0;
          }

          else
          {
            v12 = 1;
          }

          v13 = !v12;
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v11;
          v69 = 1024;
          LODWORD(v70) = v13;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordRegistration,CLLocationProvider_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          if (a3->i32[0])
          {
            v14 = a3->i32[1] == 0;
          }

          else
          {
            v14 = 1;
          }

          v15 = !v14;
          if (*a4)
          {
            v16 = a4[1] == 0;
          }

          else
          {
            v16 = 1;
          }

          v17 = !v16;
          *v59 = 67109376;
          *&v59[4] = v15;
          *&v59[8] = 1024;
          *&v59[10] = v17;
          v18 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordRegistration(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLLocationProvider_Type::Notification &)", "%s\n", v18);
          if (v18 != &buf)
          {
            free(v18);
          }
        }
      }

      else
      {
        sub_10000AED0(v56);
        v24 = sub_10000B1F8();
        sub_10000AED4(v24, v55);
        sub_10000AFE4(v56, a2, a3->i32, a4, v55);
        v58 |= 2u;
        v25 = v57;
        if (!v57)
        {
          operator new();
        }

        *(v57 + 492) |= 0x800u;
        v26 = *(v25 + 352);
        if (!v26)
        {
          operator new();
        }

        *(v26 + 200) |= 0x10000u;
        v27 = *(v26 + 128);
        if (!v27)
        {
          operator new();
        }

        v28 = *a5;
        v27[9] |= 1u;
        v27[2] = v28;
        v29 = sub_100021DC4(a6);
        if (!sub_100DF8570(v29))
        {
          __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 13026, "::CLP::LogEntry::PrivateData::LocationProviderNotification_NotificationType_IsValid(value)");
        }

        v27[9] |= 2u;
        v27[3] = v29;
        v30 = sub_10000BFC0(a1);
        if (*(a1 + 8) == 1)
        {
          v31 = v30;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v32 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, v59);
            if (SBYTE3(v61) >= 0)
            {
              v33 = v59;
            }

            else
            {
              v33 = *v59;
            }

            v46 = v33;
            LODWORD(v48[0]) = a3->i32[0];
            sub_1013230DC(v48, v53);
            if (v54 >= 0)
            {
              v34 = v53;
            }

            else
            {
              v34 = v53[0];
            }

            v50 = *a4;
            v35 = __p;
            sub_1013230DC(&v50, __p);
            if (v52 < 0)
            {
              v35 = __p[0];
            }

            v36 = sub_100048D98(*a6);
            v37 = sub_10000B1F8();
            v38 = sub_100125220(v37);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v31;
            v69 = 2080;
            v70 = v46;
            v71 = 2080;
            v72 = v34;
            v73 = 2080;
            v74 = v35;
            v75 = 2080;
            v76 = v36;
            v77 = 2050;
            v78 = v38;
            _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordRegistration,CLLocationProvider_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%s,propagation_us,%{public}.3f", &buf, 0x3Au);
            if (v52 < 0)
            {
              operator delete(__p[0]);
            }

            if (v54 < 0)
            {
              operator delete(v53[0]);
            }

            if (SBYTE3(v61) < 0)
            {
              operator delete(*v59);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            sub_101322EE0(a2, v53);
            if (v54 >= 0)
            {
              v39 = v53;
            }

            else
            {
              v39 = v53[0];
            }

            v50 = a3->i32[0];
            v40 = __p;
            sub_1013230DC(&v50, __p);
            if (v52 < 0)
            {
              v40 = __p[0];
            }

            v47 = *a4;
            sub_1013230DC(&v47, v48);
            if (v49 >= 0)
            {
              v41 = v48;
            }

            else
            {
              v41 = v48[0];
            }

            v42 = sub_100048D98(*a6);
            v43 = sub_10000B1F8();
            v44 = sub_100125220(v43);
            *v59 = 67110402;
            *&v59[4] = v31;
            *&v59[8] = 2080;
            *&v59[10] = v39;
            v60 = 2080;
            v61 = v40;
            v62 = 2080;
            v63 = v41;
            v64 = 2080;
            v65 = v42;
            v66 = 2050;
            v67 = v44;
            v45 = _os_log_send_and_compose_impl();
            if (v49 < 0)
            {
              operator delete(v48[0]);
            }

            if (v52 < 0)
            {
              operator delete(__p[0]);
            }

            if (v54 < 0)
            {
              operator delete(v53[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordRegistration(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLLocationProvider_Type::Notification &)", "%s\n", v45);
            if (v45 != &buf)
            {
              free(v45);
            }
          }
        }

        sub_10000CE1C(v56);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v19 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &buf);
        v20 = SBYTE3(v72) >= 0 ? &buf : buf;
        *v59 = 136315138;
        *&v59[4] = v20;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordRegistration,CLLocationProvider_Type,unsupported message type,%s", v59, 0xCu);
        if (SBYTE3(v72) < 0)
        {
          operator delete(buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018DAC78();
      }
    }
  }
}

uint64_t sub_10010C5CC(char *a1, void *a2, int *a3, char *a4)
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
        buf[0] = 0;
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10061FFC4();
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
        v22 = byte_1025D77F9;
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
    sub_1018E68F8();
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
    sub_1018E8644(a1, a2);
    return 0;
  }

  return result;
}

void sub_10010C9F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010CA08(uint64_t a1, int a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v47 = a2;
  v5 = *a4;
  if (v5 <= 0x27)
  {
    if (((1 << v5) & 0x8000000019) != 0)
    {
      v8 = *(a1 + 304);
      if (v8 && (*(a1 + 679) & 1) == 0)
      {
        sub_1001F53F4(v8, a5);
      }

      v9 = *(a1 + 320);
      if (v9 && (*(a1 + 679) & 1) == 0)
      {
        sub_10054A680(v9, a5, 0);
      }

      sub_1001F5430(a1, a5);
      v36[0] = &v47;
      v10 = sub_100109DF4(a1 + 232, &v47);
      v11 = *(a5 + 16);
      *(v10 + 6) = *a5;
      *(v10 + 7) = v11;
      v12 = *(a5 + 32);
      v13 = *(a5 + 48);
      v14 = *(a5 + 80);
      *(v10 + 10) = *(a5 + 64);
      *(v10 + 11) = v14;
      *(v10 + 8) = v12;
      *(v10 + 9) = v13;
      v15 = *(a5 + 96);
      v16 = *(a5 + 112);
      v17 = *(a5 + 128);
      *(v10 + 236) = *(a5 + 140);
      *(v10 + 13) = v16;
      *(v10 + 14) = v17;
      *(v10 + 12) = v15;
      v36[0] = &v47;
      v18 = sub_100109DF4(a1 + 232, &v47);
      memcpy(v18 + 32, (a5 + 160), 0x201uLL);
      v19 = *(a5 + 680);
      v20 = *(a5 + 688);
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }

      v18[97] = v19;
      v21 = v18[98];
      v18[98] = v20;
      if (v21)
      {
        sub_100008080(v21);
      }

      v22 = *(a5 + 696);
      v23 = *(a5 + 728);
      *(v18 + 101) = *(a5 + 712);
      *(v18 + 103) = v23;
      *(v18 + 99) = v22;
      v24 = *(a5 + 744);
      v25 = *(a5 + 760);
      v26 = *(a5 + 776);
      *(v18 + 881) = *(a5 + 785);
      *(v18 + 107) = v25;
      *(v18 + 109) = v26;
      *(v18 + 105) = v24;
      sub_1001FFD2C(a1);
      sub_1001F4EE0(a1 + 2032, a5);
    }

    else if (v5 == 9)
    {

      sub_10010CFE8(a1, a2);
    }

    else if (v5 == 22)
    {
      v27 = *(a1 + 304);
      if (v27)
      {
        sub_10031DC6C(v27, a5);
      }

      v28 = *(a1 + 320);
      if (v28)
      {
        sub_10031DCEC(v28, a5);
      }

      sub_100022008(v36, a5);
      v29 = sub_10031DD70(a1, v38);
      v30 = -1.0;
      if (v29 && *(a1 + 1672))
      {
        v31 = +[CLLocationDerivedSpeedEstimator isSupportedForDerivedSpeedEstimate];
        v32 = -1.0;
        v33 = -1.0;
        if (v31)
        {
          [*(a1 + 1672) currentEstimate];
          v30 = v34;
        }
      }

      else
      {
        v32 = -1.0;
        v33 = -1.0;
      }

      v42 = v30;
      v43 = v32;
      v44 = v33;
      sub_10031DE04(a1, v36, v29);
      v35 = *(a1 + 280);
      if (v35)
      {
        (*(*v35 + 488))(v35, a5);
      }

      if (v45)
      {
        sub_100008080(v45);
      }

      if (v41 < 0)
      {
        operator delete(__p);
      }

      if (v39)
      {
        sub_100008080(v39);
      }

      if (v37)
      {
        sub_100008080(v37);
      }
    }
  }
}

uint64_t sub_10010CD1C(uint64_t a1, uint64_t a2, int a3, void *a4)
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

void sub_10010CDD0(uint64_t a1, char *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_101873CF0();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    *buf = 67240192;
    v16 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "lost location from kDynamicLocationProvider,%{public}d,restarting all worse providers", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018752A8(a2);
  }

  v6 = *(a1 + 232);
  if (v6 != (a1 + 240))
  {
    v7 = 0;
    do
    {
      if (*(v6 + 8) && (*(v6 + 911) & 1) == 0 && *(v6 + 909) < *a2)
      {
        if (qword_1025D4600 != -1)
        {
          sub_101873804();
        }

        v8 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v9 = *(v6 + 909);
          *buf = 67240192;
          v16 = v9;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "restarting worse location provider kDynamicLocationProvider,%{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10187539C(&v13, v6 + 909, v14);
        }

        v7 = sub_100107E4C(a1, *(v6 + 8));
      }

      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != (a1 + 240));
    if (v7)
    {
      sub_100110094(a1);
    }
  }
}

uint64_t sub_10010CFE8(uint64_t a1, int a2)
{
  v64 = a2;
  v3 = (a1 + 240);
  v2 = *(a1 + 240);
  if (!v2)
  {
    goto LABEL_8;
  }

  v5 = (a1 + 232);
  v6 = a1 + 240;
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v6 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v6 == v3 || *(v6 + 32) > a2)
  {
LABEL_8:
    if (qword_1025D4600 != -1)
    {
      sub_101AAB6FC();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "LocationController,notifyLocationUnavailable,could not find provider from list", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AABDEC();
    }

    return 0;
  }

  if ((*(v6 + 911) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AAB6FC();
    }

    v49 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v50 = (v6 + 48);
      if (*(v6 + 71) < 0)
      {
        v50 = *v50;
      }

      *buf = 136446210;
      *&buf[4] = v50;
      _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "LocationController,notifyLocationUnavailable,Got location unavailable notification for non-active provider,%{public}s,ignoring", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AAB7EC(v6);
    }

    return 0;
  }

  *(v6 + 910) = 1;
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D4600 != -1)
  {
    sub_101AAB6FC();
  }

  v11 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v12 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v13 = (v6 + 48);
    if (*(v6 + 71) < 0)
    {
      v13 = *v13;
    }

    *buf = 136446210;
    *&buf[4] = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "LocationController,notifyLocationUnavailable,Got location unavailable notification for location provider,%{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AAB8F0(v6);
  }

  if (*(a1 + 216) == 1)
  {
    sub_10010CDD0(a1, (v6 + 909));
  }

  *buf = &v64;
  if (*(sub_100109DF4((v3 - 1), &v64) + 23) < 0.0)
  {
    v14 = sub_10000B1F8();
    *buf = 0;
    v15 = sub_10001A6B0(v14, buf);
    *buf = &v64;
    v16 = v15 - *(sub_100109DF4((v3 - 1), &v64) + 172);
    v17 = 15.0;
    if (qword_1025D4600 != -1)
    {
      sub_10022FB88();
      v17 = 15.0;
    }

    v18 = v16 + v17;
    v19 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = &v64;
      v20 = sub_100109DF4((v3 - 1), &v64);
      v21 = v20 + 6;
      if (*(v20 + 71) < 0)
      {
        v21 = *v21;
      }

      *buf = &v64;
      v22 = sub_100109DF4((v3 - 1), &v64)[23];
      *buf = 136446722;
      *&buf[4] = v21;
      *&buf[12] = 2050;
      *&buf[14] = v22;
      *&buf[22] = 2050;
      *&buf[24] = v18;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "LocationController,notifyLocationUnavailable,setting provider %{public}s location to expire,curr_lifespan,%{public}.1lf,new_lifespan,%{public}.1lf", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      *v65 = &v64;
      v60 = sub_100109DF4((v3 - 1), &v64);
      v61 = v60 + 6;
      if (*(v60 + 71) < 0)
      {
        v61 = *v61;
      }

      *v65 = &v64;
      v62 = sub_100109DF4((v3 - 1), &v64)[23];
      *v65 = 136446722;
      *&v65[4] = v61;
      v66 = 2050;
      v67 = v62;
      v68 = 2050;
      v69 = v18;
      v63 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::notifyLocationUnavailable(LocationProvider)", "%s\n", v63);
      if (v63 != buf)
      {
        free(v63);
      }
    }

    *buf = &v64;
    *(sub_100109DF4((v3 - 1), &v64) + 23) = v18;
  }

  v23 = *v5;
  if (*v5 != v3)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0.0;
    do
    {
      if ((*(v23 + 910) & 1) == 0 && *(v23 + 908) <= *(a1 + 161) && *(v23 + 116) > 0.0)
      {
        if (p_info[192] != -1)
        {
          sub_10022FB88();
        }

        v27 = v11[193];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = v23 + 6;
          if (*(v23 + 71) < 0)
          {
            v28 = *v28;
          }

          v29 = *(v23 + 100);
          v30 = *(v23 + 108);
          v31 = v23[23];
          v32 = sub_10000B1F8();
          *buf = 0;
          v33 = sub_10001A6B0(v32, buf) - *(v23 + 172);
          v34 = sub_10000B1F8();
          v35 = sub_100125220(v34);
          *buf = 136447491;
          *&buf[4] = v28;
          *&buf[12] = 2053;
          *&buf[14] = v29;
          *&buf[22] = 2053;
          *&buf[24] = v30;
          v77 = 2050;
          v78 = v31;
          v79 = 2050;
          v80 = v33;
          v81 = 2050;
          v82 = v35;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "LocationController,notifyLocationUnavailable,provider,%{public}s,still available,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,lifespan,%{public}.1lf,age,%{public}.3f,propagation_us,%{public}.3f", buf, 0x3Eu);
          v11 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
          p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (p_info[192] != -1)
          {
            sub_10022FB88();
          }

          v41 = v23 + 6;
          if (*(v23 + 71) < 0)
          {
            v41 = *v41;
          }

          v42 = *(v23 + 100);
          v43 = *(v23 + 108);
          v44 = v23[23];
          v45 = sub_1000281DC() - *(v23 + 172);
          v46 = sub_10000B1F8();
          v47 = sub_100125220(v46);
          *v65 = 136447491;
          *&v65[4] = v41;
          v66 = 2053;
          v67 = v42;
          v68 = 2053;
          v69 = v43;
          v70 = 2050;
          v71 = v44;
          v72 = 2050;
          v73 = v45;
          v74 = 2050;
          v75 = v47;
          v48 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::notifyLocationUnavailable(LocationProvider)", "%s\n", v48);
          if (v48 != buf)
          {
            free(v48);
          }

          v11 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v24 = (v24 + 1);
        v36 = *(v23 + 23);
        if (v26 < v36)
        {
          v37 = *(v23 + 23);
        }

        else
        {
          v37 = v26;
        }

        if (v36 >= 0.0)
        {
          v26 = v37;
        }

        else
        {
          v25 = 1;
        }
      }

      v38 = v23[1];
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = v23[2];
          v40 = *v39 == v23;
          v23 = v39;
        }

        while (!v40);
      }

      v23 = v39;
    }

    while (v39 != v3);
    if (!((v24 == 0) | v25 & 1))
    {
      if (p_info[192] != -1)
      {
        sub_10022FB88();
      }

      v56 = v11[193];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        *buf = 67240704;
        *&buf[4] = v24;
        *&buf[8] = 2050;
        *&buf[10] = v26;
        *&buf[18] = 2050;
        *&buf[20] = 0x402E000000000000;
        _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_INFO, "LocationController,notifyLocationUnavailable,location available from %{public}d providers,setting location unavailable timer next delay to %{public}.1f plus deadline %{public}.1f sec", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AAB9F4(v24, v26);
      }

      [*(a1 + 664) setNextFireDelay:v26 + 15.0];
      return 0;
    }

    if (v24)
    {
      if (p_info[192] != -1)
      {
        sub_10022FB88();
      }

      v51 = v11[193];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "LocationController,notifyLocationUnavailable,Infinite lifespan location available; not starting location unavailable timer", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AABB20();
      }

      return 0;
    }
  }

  v52 = p_info[192];
  if (*(a1 + 161) <= 0)
  {
    if (v52 != -1)
    {
      sub_10022FB88();
    }

    v57 = v11[193];
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v58 = *(a1 + 160);
      v59 = *(a1 + 161);
      *buf = 67240448;
      *&buf[4] = v58;
      *&buf[8] = 1026;
      *&buf[10] = v59;
      _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_INFO, "LocationController,notifyLocationUnavailable,Required granularity,%{public}d,not achievable with active granularity,%{public}d,starting fine", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AABCF4(a1, (a1 + 161));
    }

    buf[0] = 1;
    sub_10010FB88(a1, buf);
    return 0;
  }

  if (v52 != -1)
  {
    sub_10022FB88();
  }

  v53 = v11[193];
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    v54 = sub_10000B1F8();
    *buf = 1;
    v55 = sub_10001A6B0(v54, buf);
    *buf = 134349056;
    *&buf[4] = v55;
    _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_INFO, "LocationController,notifyLocationUnavailable,No location is available from any provider,notifying clients of location unavailable,now,%{public}.3f", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AABBFC();
  }

  [*(a1 + 664) setNextFireDelay:1.79769313e308];
  *buf = 9;
  v8 = 1;
  sub_100E6ED50(a1, buf, 1);
  return v8;
}

void sub_10010DA40(uint64_t a1, uint64_t a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = vabdd_f64(Current, *(a1 + 376));
  if (v5 >= 60.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 520);
      v9 = *(a1 + 352);
      v10 = *(a1 + 432);
      v11 = *(a1 + 184);
      v12 = *(a1 + 264);
      v13 = *(a1 + 304);
      v14 = *(a1 + 344);
      *buf = 136317186;
      v17 = *&a2;
      v18 = 2048;
      v19 = v8;
      v20 = 1024;
      v21 = v9;
      v22 = 2048;
      v23 = v10;
      v24 = 2048;
      v25 = v11;
      v26 = 2048;
      v27 = v12;
      v28 = 2048;
      v29 = v13;
      v30 = 2048;
      v31 = v14;
      v32 = 2048;
      v33 = v5;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "NETWORK: resetRetryCounters, %s, %p, fQueryRetries, %d, pending, %lu, %lu, %lu, %lu, %lu, sinceLastReset, %.1lf", buf, 0x58u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_10190B63C();
      }

      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::resetRetryCounters(const char *)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    *(a1 + 352) = 0;
    *(a1 + 360) = Current;
    *(a1 + 376) = Current;
    sub_100185DCC(a1, "resetRetryCounters");
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v17 = v5;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "NETWORK: resetRetryCounters, sinceLastReset, %.1lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190BEC8();
    }
  }
}

void sub_10010DD58(uint64_t a1)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v2 = _os_activity_create(dword_100000000, "CL: CLLocationController::sendTechStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v2, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
    }

    v3 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::sendTechStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  v4 = [*(a1 + 32) silo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010E010;
  v5[3] = &unk_102449A78;
  v5[4] = a1;
  [v4 sync:v5];
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10010DF5C()
{
  if (qword_1025D4600 != -1)
  {
    sub_101AAB6FC();
  }

  v0 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEFAULT, "#techstatus,posting notification", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AAD35C();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, CLTechStatusChangedNotification, 0, 0, 0);
}

void sub_10010E018(uint64_t a1)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v2 = _os_activity_create(dword_100000000, "CL: CLLocationController::checkActiveProviders", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v2, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
    }

    v3 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::checkActiveProviders, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  v4 = [*(a1 + 32) silo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010E4BC;
  v5[3] = &unk_102449A78;
  v5[4] = a1;
  [v4 sync:v5];
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10010E21C(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2 == (a1 + 240))
  {
    v3 = 0;
  }

  else
  {
    do
    {
      v3 = *(v2 + 911);
      if (v3)
      {
        break;
      }

      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != (a1 + 240));
  }

  if (*(a1 + 677) != v3)
  {
    *(a1 + 677) = v3;
    sub_100021AFC(v9);
    v12 = *(a1 + 677);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      v20 = v12;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Notifying clients of providers active update to %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8644(buf);
      v17 = 67240192;
      v18 = v12;
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::checkActiveProviders()", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    *buf = 11;
    (*(*a1 + 152))(a1, buf, v9, 0, 0xFFFFFFFFLL, 0);

    if (v15)
    {
      sub_100008080(v15);
    }

    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v11)
    {
      sub_100008080(v11);
    }

    if (v10)
    {
      sub_100008080(v10);
    }
  }
}

void sub_10010E488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010E4C4(uint64_t a1)
{
  *(a1 + 128) |= 8u;
  if (!*(a1 + 32))
  {
    operator new();
  }

  return *(a1 + 32);
}

BOOL sub_10010E544(uint64_t a1, uint64_t a2)
{
  v3 = BYTE4(a1);
  v7 = a1;
  v4 = sub_10010E5D8(&v7);
  result = sub_100108BCC(v4);
  if (!result)
  {
    sub_101882604();
  }

  v6 = *(a2 + 20);
  *(a2 + 8) = v4;
  *(a2 + 20) = v6 | 3;
  *(a2 + 12) = v3;
  return result;
}

uint64_t sub_10010E5AC(uint64_t result)
{
  *result = off_1024523B0;
  *(result + 16) = 0;
  *(result + 8) = 0;
  *(result + 12) = 0;
  return result;
}

uint64_t sub_10010E5D8(int *a1)
{
  result = *a1;
  if (result >= 0xE)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v3 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v4 = *a1;
      v6[0] = 67240192;
      v6[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled location type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B84414(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10010E6C8(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 20);
  if (v3)
  {
    if (*(a1 + 20))
    {
      v6 = *(a1 + 8);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 20);
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    result = (v3 & 2u) + v4;
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10010E73C(uint64_t result, char a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return result;
}

void sub_10010E7A8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024523B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10010E7FC(uint64_t a1, int *a2, int32x4_t *a3, int *a4, int *a5, int *a6, uint64_t a7)
{
  if (!*(a1 + 16))
  {
    return;
  }

  if ((*a2 & 0xFFFFFFFE) == 2)
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a3->i32[0])
        {
          v11 = a3->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a4)
        {
          v13 = a4[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v12;
        v79 = 1024;
        LODWORD(v80) = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordRegistration,CLLocationProvider_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a3->i32[0])
        {
          v15 = a3->i32[1] == 0;
        }

        else
        {
          v15 = 1;
        }

        v16 = !v15;
        if (*a4)
        {
          v17 = a4[1] == 0;
        }

        else
        {
          v17 = 1;
        }

        v18 = !v17;
        *v69 = 67109376;
        *&v69[4] = v16;
        *&v69[8] = 1024;
        *&v69[10] = v18;
        v19 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordRegistration(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::RegInfo &)", "%s\n", v19);
        if (v19 != &buf)
        {
          free(v19);
        }
      }

      return;
    }

    sub_10000AED0(v66);
    v26 = sub_10000B1F8();
    sub_10000AED4(v26, v65);
    sub_10000AFE4(v66, a2, a3->i32, a4, v65);
    v68 |= 2u;
    v27 = v67;
    if (!v67)
    {
      operator new();
    }

    *(v67 + 492) |= 0x800u;
    v28 = *(v27 + 352);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 200) |= 0x10000u;
    v29 = *(v28 + 128);
    if (!v29)
    {
      operator new();
    }

    v30 = *a5;
    *(v29 + 36) |= 1u;
    *(v29 + 8) = v30;
    v31 = sub_100021DC4(a6);
    if (!sub_100DF8570(v31))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 13026, "::CLP::LogEntry::PrivateData::LocationProviderNotification_NotificationType_IsValid(value)");
    }

    v32 = *(v29 + 36);
    *(v29 + 12) = v31;
    *(v29 + 36) = v32 | 0xA;
    v33 = *(v29 + 24);
    if (!v33)
    {
      operator new();
    }

    v34 = *(v33 + 60);
    *(v33 + 8) = *a7;
    *(v33 + 33) = *(a7 + 16);
    *(v33 + 60) = v34 | 0x33;
    v35 = sub_10010F16C((a7 + 20));
    if (sub_10041ECF8(v35))
    {
      *(v33 + 60) |= 0x100u;
      *(v33 + 48) = v35;
      v36 = sub_10010F278((a7 + 24));
      if (sub_10041ECEC(v36))
      {
        *(v33 + 60) |= 0x200u;
        *(v33 + 52) = v36;
        v37 = sub_10000BFC0(a1);
        if (*(a1 + 8) == 1)
        {
          v38 = v37;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v39 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, v69);
            if (SBYTE3(v71) >= 0)
            {
              v40 = v69;
            }

            else
            {
              v40 = *v69;
            }

            v56 = v40;
            LODWORD(v58[0]) = a3->i32[0];
            sub_1013230DC(v58, v63);
            if (v64 >= 0)
            {
              v41 = v63;
            }

            else
            {
              v41 = v63[0];
            }

            v60 = *a4;
            v42 = __p;
            sub_1013230DC(&v60, __p);
            if (v62 < 0)
            {
              v42 = __p[0];
            }

            v43 = sub_100048D98(*a6);
            v44 = sub_10000B1F8();
            v45 = sub_100125220(v44);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v38;
            v79 = 2080;
            v80 = v56;
            v81 = 2080;
            v82 = v41;
            v83 = 2080;
            v84 = v42;
            v85 = 2080;
            v86 = v43;
            v87 = 2050;
            v88 = v45;
            _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordRegistration,CLLocationProvider_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%s,propagation_us,%{public}.3f", &buf, 0x3Au);
            if (v62 < 0)
            {
              operator delete(__p[0]);
            }

            if (v64 < 0)
            {
              operator delete(v63[0]);
            }

            if (SBYTE3(v71) < 0)
            {
              operator delete(*v69);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            sub_101322EE0(a2, v63);
            if (v64 >= 0)
            {
              v49 = v63;
            }

            else
            {
              v49 = v63[0];
            }

            v60 = a3->i32[0];
            v50 = __p;
            sub_1013230DC(&v60, __p);
            if (v62 < 0)
            {
              v50 = __p[0];
            }

            v57 = *a4;
            sub_1013230DC(&v57, v58);
            if (v59 >= 0)
            {
              v51 = v58;
            }

            else
            {
              v51 = v58[0];
            }

            v52 = sub_100048D98(*a6);
            v53 = sub_10000B1F8();
            v54 = sub_100125220(v53);
            *v69 = 67110402;
            *&v69[4] = v38;
            *&v69[8] = 2080;
            *&v69[10] = v49;
            v70 = 2080;
            v71 = v50;
            v72 = 2080;
            v73 = v51;
            v74 = 2080;
            v75 = v52;
            v76 = 2050;
            v77 = v54;
            v55 = _os_log_send_and_compose_impl();
            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            if (v62 < 0)
            {
              operator delete(__p[0]);
            }

            if (v64 < 0)
            {
              operator delete(v63[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordRegistration(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::RegInfo &)", "%s\n", v55);
            if (v55 != &buf)
            {
              free(v55);
            }
          }
        }

        sub_10000CE1C(v66);
        return;
      }

      v46 = "::CLP::LogEntry::PrivateData::PipelineOperatingMode_IsValid(value)";
      v47 = 12977;
      v48 = "set_pipeline_operating_mode";
    }

    else
    {
      v46 = "::CLP::LogEntry::PrivateData::OperatingMode_IsValid(value)";
      v47 = 12954;
      v48 = "set_operating_mode";
    }

    __assert_rtn(v48, "CLPLocationController.pb.h", v47, v46);
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v20 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    sub_101322EE0(a2, &buf);
    v21 = SBYTE3(v82) >= 0 ? &buf : buf;
    *v69 = 136315138;
    *&v69[4] = v21;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordRegistration,CLLocationProvider_Type,unsupported message type,%s", v69, 0xCu);
    if (SBYTE3(v82) < 0)
    {
      operator delete(buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DAD7C();
  }
}

double sub_10010F130(uint64_t a1)
{
  *(a1 + 40) = 0;
  *(a1 + 36) = 0;
  *a1 = off_1024B4678;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 31) = 0;
  *&result = 0x100000001;
  *(a1 + 48) = xmmword_101C65580;
  return result;
}

uint64_t sub_10010F16C(int *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 1;
  }

  if (v1 == 11)
  {
    return 3;
  }

  if (v1 == 10)
  {
    return 2;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a1;
    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertOperatingModeTypeToProtobuf,unhandled type,%d", v6, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DAE80(a1);
    return 0;
  }

  return result;
}

uint64_t sub_10010F278(int *a1)
{
  if (!*a1)
  {
    return 1;
  }

  if (*a1 == 1)
  {
    return 2;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertPipelineOperatingModeTypeToProtobuf,unhandled type,%d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DAF6C(a1);
    return 0;
  }

  return result;
}

uint64_t sub_10010F374(unsigned int *a1, unsigned int a2)
{
  v3 = a1[15];
  if (v3)
  {
    v4 = ((v3 << 31) >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    v5 = ((v3 >> 3) & 2) + ((v3 >> 2) & 2) + ((v3 >> 4) & 2) + v4;
    if ((v3 & 0x40) != 0)
    {
      v6 = v5 + 9;
    }

    else
    {
      v6 = v5;
    }

    if ((v3 & 0x80) != 0)
    {
      v7 = a1[9];
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
        v3 = a1[15];
      }

      else
      {
        v8 = 2;
      }

      v6 = (v8 + v6);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v9 = a1[12];
      if ((v9 & 0x80000000) != 0)
      {
        v10 = 11;
      }

      else if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
        v3 = a1[15];
      }

      else
      {
        v10 = 2;
      }

      v6 = (v10 + v6);
    }

    if ((v3 & 0x200) != 0)
    {
      v11 = a1[13];
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 11;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
      }

      else
      {
        v12 = 2;
      }

      v6 = (v12 + v6);
    }
  }

  a1[14] = v6;
  return v6;
}

uint64_t sub_10010F4A4(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 60);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 33), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 34), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 48), a2, a4);
    if ((*(v5 + 60) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return result;
  }

LABEL_21:
  v7 = *(v5 + 52);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, v7, a2, a4);
}

void sub_10010F5FC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B4678;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10010F650(uint64_t a1, int *a2, int a3, int a4, int a5, double a6)
{
  if (qword_1025D4600 != -1)
  {
    sub_101B0C0DC();
  }

  v12 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v13 = *a2;
    *buf = 67241216;
    v34 = v13;
    v35 = 1026;
    v36 = a3 != 0;
    v37 = 1026;
    v38 = a4 != 0;
    v39 = 1026;
    v40 = a5 != 0;
    v41 = 2050;
    *v42 = a6;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#LCStats,feedLCFuserSessionStartMetrics,ntfy,%{public}d,%{public}d,%{public}d,%{public}d,hunc,%{public}0.2f", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_100232CD4();
    }

    v32 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerCAStats::feedLCFuserSessionStartMetrics(const CLLocationProvider_Type::Notification &, const int, const int, const int, const double)", "%s\n", v32);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  v14 = *a2;
  if (*a2 <= 2)
  {
    if (a3 >= 2 && !v14)
    {
      goto LABEL_9;
    }

    if (v14 == 2)
    {
      if (a3 > 0 || a4 > 0 || a5 >= 2)
      {
        goto LABEL_9;
      }
    }

    else if (v14 == 1 && (a3 > 0 || a4 > 1))
    {
LABEL_9:
      if (qword_1025D4600 != -1)
      {
        sub_100232CD4();
      }

      v15 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#LCStats,feedLCFuserSessionStartMetrics,not a first client at given granularity", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B0D448();
      }

      return;
    }

    v16 = *(a1 + 384) ^ 1;
    v17 = *(a1 + 344);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 352) - v17) >> 4) <= v16)
    {
      sub_10046F324();
    }

    v18 = v17 + 48 * v16;
    if (v14 == 2)
    {
      ++*(v18 + 44);
      if (a6 >= 1000.0)
      {
        goto LABEL_32;
      }

      v19 = (v18 + 8);
    }

    else if (v14 == 1)
    {
      ++*(v18 + 40);
      if (a6 >= 100.0)
      {
        goto LABEL_32;
      }

      v19 = (v18 + 4);
    }

    else
    {
      ++*(v18 + 36);
      v19 = (v17 + 48 * v16);
      if (a6 >= 50.0)
      {
        goto LABEL_32;
      }
    }

    ++*v19;
LABEL_32:
    if (a6 >= 25.0)
    {
      if (a6 >= 50.0)
      {
        if (a6 < 100.0)
        {
          *(v18 + 20) = vadd_s32(*(v18 + 20), 0x100000001);
          goto LABEL_39;
        }

        if (a6 >= 200.0)
        {
          v21 = 32;
          if (a6 < 500.0)
          {
            v21 = 28;
          }

          goto LABEL_40;
        }
      }

      else
      {
        *(v18 + 16) = vadd_s32(*(v18 + 16), 0x100000001);
      }

      ++*(v18 + 24);
    }

    else
    {
      v20.i64[0] = 0x100000001;
      v20.i64[1] = 0x100000001;
      *(v18 + 12) = vaddq_s32(*(v18 + 12), v20);
    }

LABEL_39:
    v21 = 28;
LABEL_40:
    ++*(v18 + v21);
    if (qword_1025D4600 != -1)
    {
      sub_100232CD4();
    }

    v22 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 384);
      v24 = *(v18 + 12);
      v25 = *(v18 + 16);
      v26 = *(v18 + 20);
      v27 = *(v18 + 24);
      v28 = *(v18 + 28);
      v29 = *(v18 + 36);
      v30 = *(v18 + 40);
      v31 = *(v18 + 44);
      *buf = 67176705;
      v34 = v23;
      v35 = 1026;
      v36 = v24;
      v37 = 1026;
      v38 = v25;
      v39 = 1026;
      v40 = v26;
      v41 = 1026;
      *v42 = v27;
      *&v42[4] = 1026;
      *&v42[6] = v28;
      v43 = 1026;
      v44 = v29;
      v45 = 1026;
      v46 = v30;
      v47 = 1026;
      v48 = v31;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#LCStats,feedLCFuserSessionStartMetrics,homeVisit,%{private}d,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B0D2EC((a1 + 384), v18);
    }
  }
}

void sub_10010FB88(uint64_t a1, char *a2)
{
  sub_10010B730(a1);
  if (*(a1 + 161) < *a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101873CF0();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v5 = *a2;
      *buf = 68289538;
      *v23 = 0;
      *&v23[4] = 2082;
      *&v23[6] = "";
      v24 = 1026;
      v25 = v5;
      v26 = 2050;
      v27 = sub_100107BB8(a1);
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:@ClxProvider,starting all location providers up to threshold, threshold:%{public}d, desiredAccuracy:%{public}f}", buf, 0x22u);
    }

    v6 = *a2;
    if (v6 <= 2)
    {
      v7 = (a1 + 240);
      while (1)
      {
        v8 = *(a1 + 232);
        if (v8 != v7)
        {
          v9 = 0;
          do
          {
            v10 = *(v8 + 908);
            v11 = *(v8 + 10);
            if (v10 <= *(a1 + 161) || v10 > v6)
            {
              if (v11)
              {
                if (qword_1025D4600 != -1)
                {
                  sub_101873804();
                }

                v12 = qword_1025D4608;
                if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
                {
                  v13 = v8 + 6;
                  if (*(v8 + 71) < 0)
                  {
                    v13 = *v13;
                  }

                  v14 = *(a1 + 160);
                  v15 = *(a1 + 161);
                  *buf = 136446722;
                  *v23 = v13;
                  *&v23[8] = 1026;
                  *&v23[10] = v14;
                  v24 = 1026;
                  v25 = v15;
                  _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Not starting location provider,%{public}s,fRequiredLocationGranularity,%{public}d,fActiveLocationGranularity,%{public}d", buf, 0x18u);
                }

                if (sub_10000A100(121, 2))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1025D4600 != -1)
                  {
                    sub_101873804();
                  }

                  v19 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::startLocation(const Granularity &)", "%s\n", v19);
                  if (v19 != buf)
                  {
                    free(v19);
                  }
                }
              }
            }

            else
            {
              v9 = sub_100107E4C(a1, v11);
            }

            v16 = v8[1];
            if (v16)
            {
              do
              {
                v17 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v17 = v8[2];
                v18 = *v17 == v8;
                v8 = v17;
              }

              while (!v18);
            }

            v8 = v17;
          }

          while (v17 != v7);
          if (v9)
          {
            break;
          }
        }

        v6 = (v6 + 1);
        if (v6 >= 3)
        {
          goto LABEL_36;
        }
      }

      sub_100110094(a1);
    }

LABEL_36:
    v20 = *(a1 + 161);
    if (v20 != 2)
    {
      if (v20 == 255 || ([*(a1 + 664) nextFireDelay], v21 < 15.0))
      {
        [*(a1 + 664) setNextFireDelay:15.0];
      }
    }

    *(a1 + 161) = v6;
  }
}

uint64_t sub_10010FF14(_BYTE *a1, void *a2)
{
  v2 = a2;
  v10 = a2;
  v4 = sub_10000AE98();
  LODWORD(v2) = sub_100111400(v2);
  v11 = &v10;
  v5 = *(sub_100109DF4((a1 + 232), &v10) + 911);
  v6 = sub_100111300(a1[160]);
  v7 = sub_100111300(a1[161]);
  v8 = sub_100027514(a1 + 800);
  return sub_100108CB4(v4, v2, v5, v6, v7, v8, a1[682]);
}

uint64_t sub_10010FFD0(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 28);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 20), a2, a4);
    if ((*(v5 + 28) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 12), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = *(v5 + 17);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

void sub_100110094(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_101AAB6FC();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#techstatus,signalling", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AAB710();
  }

  CFRunLoopSourceSignal(*(a1 + 696));
  CFRunLoopSourceSignal(*(a1 + 704));
  v3 = sub_100107858();
  CFRunLoopWakeUp(v3);
}

uint64_t sub_100110144(uint64_t a1, uint64_t a2, int a3, void *a4)
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

uint64_t sub_100110224(uint64_t a1, int a2, int *a3, char *a4)
{
  v32 = a2;
  if (*(a1 + 108))
  {
    return 0;
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 32) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 48);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 28) >= v14)
        {
          v18 = v15;
        }

        v15 = *(v15 + 8 * (*(v15 + 28) < v14));
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 28))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 64);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 32) >= v14)
        {
          v20 = v19;
        }

        v19 = *(v19 + 8 * (*(v19 + 32) < v14));
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 32))
      {
        v30 = v20;
        v27 = *(v20 + 56);
        v28 = *a4;
        *buf = &v32;
        *(sub_100007FA0(v20 + 40, &v32) + 32) = v28;
        *buf = 0;
        *&buf[8] = 0;
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_1006E32E0();
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = a1 + 56;
        v30 = a1 + 64;
        v22 = byte_1025D7F49;
        v29 = v14;
        *buf = &v29;
        *(sub_100024014(a1 + 56, &v29) + 80) = v22;
        v29 = *a3;
        *buf = &v29;
        v23 = sub_100024014(a1 + 56, &v29);
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
        sub_1003C9410(v31 + 40, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    *&buf[12] = 1026;
    *&buf[14] = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_10190F3D4();
    return 0;
  }

  return result;
}

uint64_t sub_1001105DC(char *a1, void *a2, int *a3, char *a4)
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
        buf[2] = 0;
        *buf = 0;
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_100ED5884();
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
        v22 = byte_102630969;
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
    sub_101ABD9FC();
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
    sub_101ABDB10(a1, a2);
    return 0;
  }

  return result;
}

uint64_t sub_100110998(uint64_t a1)
{
  v3 = 0;
  if (sub_10000608C(a1, &v3, 1))
  {
    sub_100110A44(a1);
  }

  return 1;
}

uint64_t sub_1001109E0(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  *(a3 + 2) = *(v8 + 2);
  *a3 = v9;
  return 1;
}

id sub_100110A44(uint64_t a1)
{
  if (qword_1025D48A0 != -1)
  {
    sub_101B1984C();
  }

  v2 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "PAUSE: Starting auto-pause monitoring.", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B19AB8();
  }

  [*(*(a1 + 120) + 16) register:*(*(a1 + 120) + 8) forNotification:4 registrationInfo:0];
  [*(*(a1 + 112) + 16) register:*(*(a1 + 112) + 8) forNotification:2 registrationInfo:0];
  [*(*(a1 + 128) + 16) register:*(*(a1 + 128) + 8) forNotification:2 registrationInfo:0];
  [*(*(a1 + 128) + 16) register:*(*(a1 + 128) + 8) forNotification:3 registrationInfo:0];
  return [*(a1 + 136) setNextFireDelay:900.0];
}

uint64_t sub_100110B3C(char *a1, void *a2, int *a3, char *a4)
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
        *&buf[0] = &v32;
        *(sub_100007FA0((v20 + 40), &v32) + 32) = v28;
        memset(buf, 0, sizeof(buf));
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_100110F10();
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
        v22 = byte_1025D7301;
        v29 = v14;
        *&buf[0] = &v29;
        *(sub_100024014((a1 + 56), &v29) + 80) = v22;
        v29 = *a3;
        *&buf[0] = &v29;
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
        *&buf[0] = &v29;
        v26 = sub_100024014(v21, &v29);
        *&buf[0] = &v32;
        *(sub_100007FA0((v26 + 5), &v32) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        LODWORD(buf[0]) = *a3;
        sub_1003C9410((v31 + 40), buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1018D60CC();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = v12;
    WORD6(buf[0]) = 1026;
    *(buf + 14) = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_1018D61E0(a1, a2);
    return 0;
  }

  return result;
}

uint64_t sub_100110FDC(uint64_t a1, int *a2, _OWORD *a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  v9 = v8[1];
  *a3 = *v8;
  a3[1] = v9;
  v10 = v8[2];
  v11 = v8[3];
  v12 = v8[5];
  a3[4] = v8[4];
  a3[5] = v12;
  a3[2] = v10;
  a3[3] = v11;
  v13 = v8[6];
  v14 = v8[7];
  v15 = v8[9];
  a3[8] = v8[8];
  a3[9] = v15;
  a3[6] = v13;
  a3[7] = v14;
  return 1;
}

void sub_100111058(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (!v2)
  {
    sub_100ED4788();
  }

  [*(v2 + 16) register:*(v2 + 8) forNotification:0 registrationInfo:{0, v5}];
  if (qword_1025D4790 != -1)
  {
    sub_101B133E0();
  }

  v3 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 24);
    v5 = 68289282;
    v6 = 2082;
    v7 = "";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Client registered for autopause notifications, Client:%{public, location:escape_only}@}", &v5, 0x1Cu);
  }
}

uint64_t sub_100111300(void *a1)
{
  if ((a1 + 1) < 5)
  {
    return dword_101D7A8B0[(a1 + 1)];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67240192;
    v5[1] = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "ConvertLocationProviderToLocationType,unhandled type,%{public}d", v5, 8u);
  }

  v4 = sub_10000A100(121, 0);
  result = 0;
  if (v4)
  {
    sub_101B8CBC8(a1);
    return 0;
  }

  return result;
}

uint64_t sub_100111400(void *a1)
{
  if (a1 < 9)
  {
    return dword_101D7A88C[a1];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67240192;
    v5[1] = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "ConvertLocationProviderToLocationType,unhandled type,%{public}d", v5, 8u);
  }

  v4 = sub_10000A100(121, 0);
  result = 0;
  if (v4)
  {
    sub_101B8CAD8(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1001114F8(uint64_t result)
{
  *(result + 20) = 0;
  *result = &off_1024B3520;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_100111520(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 20) = 0;
  *result = off_1024B3598;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_10011154C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 76);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_61;
  }

  if ((*(a1 + 76) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 76) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102637DE0 + 8);
  }

  v6 = sub_10014DFFC(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 76);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102637DE0 + 16);
    }

    v10 = sub_1001117E8(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 76);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 24);
    if (!v13)
    {
      v13 = *(qword_102637DE0 + 24);
    }

    v14 = sub_100111880(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
    v3 = *(a1 + 76);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v17 = *(a1 + 32);
  if (!v17)
  {
    v17 = *(qword_102637DE0 + 32);
  }

  v18 = sub_100DE98A8(v17);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
  }

  else
  {
    v20 = 1;
  }

  v4 = (v4 + v19 + v20 + 1);
  v3 = *(a1 + 76);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_37:
  v21 = *(a1 + 40);
  if (!v21)
  {
    v21 = *(qword_102637DE0 + 40);
  }

  v22 = sub_100DEA030(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
  }

  else
  {
    v24 = 1;
  }

  v4 = (v4 + v23 + v24 + 1);
  v3 = *(a1 + 76);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_43:
  v25 = *(a1 + 48);
  if (!v25)
  {
    v25 = *(qword_102637DE0 + 48);
  }

  v26 = sub_100DEB100(v25, a2);
  v27 = v26;
  if (v26 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
  }

  else
  {
    v28 = 1;
  }

  v4 = (v4 + v27 + v28 + 1);
  v3 = *(a1 + 76);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

LABEL_49:
  v29 = *(a1 + 56);
  if (!v29)
  {
    v29 = *(qword_102637DE0 + 56);
  }

  v30 = sub_100DEBA38(v29, a2);
  v31 = v30;
  if (v30 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
  }

  else
  {
    v32 = 1;
  }

  v4 = (v4 + v31 + v32 + 1);
  if ((*(a1 + 76) & 0x80) != 0)
  {
LABEL_55:
    v33 = *(a1 + 64);
    if (!v33)
    {
      v33 = *(qword_102637DE0 + 64);
    }

    v34 = sub_100DEBF7C(v33, a2);
    v36 = v34;
    if (v34 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, v35);
    }

    else
    {
      v37 = 1;
    }

    v4 = (v4 + v36 + v37 + 1);
  }

LABEL_61:
  *(a1 + 72) = v4;
  return v4;
}

uint64_t sub_1001117E8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v6 = *(qword_102637D90 + 8);
      }

      v7 = sub_1001F4208(v6, a2);
      v9 = v7;
      if (v7 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, v8);
      }

      else
      {
        v10 = 1;
      }

      v4 = v9 + v10 + 1;
      v3 = *(a1 + 24);
    }

    else
    {
      v4 = 0;
    }

    result = (v3 & 2) + v4 + ((v3 >> 1) & 2);
  }

  else
  {
    result = 0;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_100111880(unsigned int *a1, unsigned int a2)
{
  v3 = a1[7];
  if (v3)
  {
    if (v3)
    {
      v6 = a1[2];
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = a1[7];
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    v7 = (v3 & 2) + v4;
    if ((v3 & 4) != 0)
    {
      v8 = a1[3];
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = a1[7];
      }

      else
      {
        v9 = 2;
      }

      v7 += v9;
    }

    if ((v3 & 8) != 0)
    {
      v10 = a1[5];
      if ((v10 & 0x80000000) != 0)
      {
        v11 = 11;
      }

      else if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
        v3 = a1[7];
      }

      else
      {
        v11 = 2;
      }

      v7 += v11;
    }

    result = ((v3 >> 3) & 2) + v7;
  }

  else
  {
    result = 0;
  }

  a1[6] = result;
  return result;
}

uint64_t sub_100111974(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 76);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637DE0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 76);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102637DE0 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_16:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102637DE0 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_19:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_102637DE0 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_22:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(qword_102637DE0 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_25:
  v12 = *(v5 + 48);
  if (!v12)
  {
    v12 = *(qword_102637DE0 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_28:
  v13 = *(v5 + 56);
  if (!v13)
  {
    v13 = *(qword_102637DE0 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v13, a2, a4);
  if ((*(v5 + 76) & 0x80) != 0)
  {
LABEL_31:
    v14 = *(v5 + 64);
    if (!v14)
    {
      v14 = *(qword_102637DE0 + 64);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v14, a2, a4);
  }

  return result;
}

uint64_t sub_100111B0C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 24) & 4) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = *(result + 8);
  if (!v7)
  {
    v7 = *(qword_102637D90 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_9:
  v8 = *(v5 + 17);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v8, a2, a4);
}

void sub_100111BA8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B3958;
  sub_100111CD4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_100111C10(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100111C48(a1);

  operator delete();
}

void sub_100111C48(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B3520;
  if (qword_102637D90 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *sub_100111CD4(void *result)
{
  if (qword_102637DE0 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    result = v1[8];
    if (result)
    {
      v9 = *(*result + 8);

      return v9();
    }
  }

  return result;
}

double sub_100111E84(uint64_t a1)
{
  *a1 = off_1024B3958;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void sub_100111EBC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B3598;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_100111F10(int a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018741E8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onSimulatedNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018741FC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onSimulatedNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001120EC(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001120EC(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  v10 = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(v11);
  sub_10000B324(v7, v11[0].i8);
  v12 = 19;
  v11[0].i32[0] = 19;
  v11[0].i32[1] = sub_10000AD98(&v12);
  v8 = sub_10000AE98();
  v12 = 4;
  sub_10001E898(v8, &v12, v11, (a1 + 5220), &v10, a3, a4);
  sub_10010CA08(a1, *(a1 + 348), v9, a3, a4);
}

void sub_10011219C(uint64_t a1, CLConnection *this)
{
  v4 = *(a1 + 848);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = a1 + 848;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= this;
    v8 = v6 < this;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 848 && *(v5 + 32) <= this)
  {

    sub_100112718(a1, this);
  }

  else
  {
LABEL_9:
    v9 = *(a1 + 872);
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = a1 + 872;
    do
    {
      v11 = *(v9 + 32);
      v7 = v11 >= this;
      v12 = v11 < this;
      if (v7)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * v12);
    }

    while (v9);
    if (v10 != a1 + 872 && *(v10 + 32) <= this)
    {

      sub_1001431E8(a1, this);
    }

    else
    {
LABEL_17:
      v13 = *(a1 + 920);
      if (v13)
      {
        v14 = a1 + 920;
        do
        {
          v15 = *(v13 + 32);
          v7 = v15 >= this;
          v16 = v15 < this;
          if (v7)
          {
            v14 = v13;
          }

          v13 = *(v13 + 8 * v16);
        }

        while (v13);
        if (v14 != a1 + 920 && *(v14 + 32) <= this)
        {
          __p = *(v14 + 40);
          sub_10102C774(__p);
          sub_1006E2330(a1 + 936, &__p);
          sub_10045E8A0((a1 + 912), v14);
          v27 = v14;
LABEL_74:
          operator delete(v27);
          return;
        }
      }

      if (*(a1 + 960) == this)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10028840C();
        }

        v24 = (a1 + 960);
        v25 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          CLConnection::getName(&__p, *v24);
          v26 = SBYTE3(v38) >= 0 ? &__p : __p;
          *buf = 136446210;
          *&buf[4] = v26;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "Client %{public}s disconnected", buf, 0xCu);
          if (SBYTE3(v38) < 0)
          {
            operator delete(__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10192E2C4(v24);
        }

        CLConnection::deferredDelete(*v24);
        *v24 = 0;
      }

      else
      {
        CLConnection::getUserName(&__p, this);
        v17 = sub_10045EF04(a1 + 888, &__p);
        if (SBYTE3(v38) < 0)
        {
          operator delete(__p);
        }

        if (a1 + 896 != v17)
        {
          CLConnection::getUserName(buf, this);
          v18 = sub_10045EF04(a1 + 888, buf);
          sub_1001D2ED0((a1 + 888), v18);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v19 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v42;
            v21 = *buf;
            CLConnection::getName(v32, this);
            v22 = buf;
            if (v20 < 0)
            {
              v22 = v21;
            }

            if (v33 >= 0)
            {
              v23 = v32;
            }

            else
            {
              v23 = v32[0];
            }

            __p = 68289538;
            v35 = 2082;
            v36 = "";
            v37 = 2082;
            v38 = v22;
            v39 = 2082;
            v40 = v23;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CoreLocationAgent disconnected, UserName:%{public, location:escape_only}s, Connection:%{public, location:escape_only}s}", &__p, 0x26u);
            if (v33 < 0)
            {
              operator delete(v32[0]);
            }
          }

          goto LABEL_72;
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v28 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          CLConnection::getName(buf, this);
          if (v42 >= 0)
          {
            v29 = buf;
          }

          else
          {
            v29 = *buf;
          }

          __p = 68289282;
          v35 = 2082;
          v36 = "";
          v37 = 2082;
          v38 = v29;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Got disconnection for unknown client, Connection:%{public, location:escape_only}s}", &__p, 0x1Cu);
          if (v42 < 0)
          {
            operator delete(*buf);
          }

          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v30 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          CLConnection::getName(buf, this);
          if (v42 >= 0)
          {
            v31 = buf;
          }

          else
          {
            v31 = *buf;
          }

          __p = 68289282;
          v35 = 2082;
          v36 = "";
          v37 = 2082;
          v38 = v31;
          _os_signpost_emit_with_name_impl(dword_100000000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got disconnection for unknown client", "{msg%{public}.0s:Got disconnection for unknown client, Connection:%{public, location:escape_only}s}", &__p, 0x1Cu);
LABEL_72:
          if ((v42 & 0x80000000) == 0)
          {
            return;
          }

          v27 = *buf;
          goto LABEL_74;
        }
      }
    }
  }
}

void sub_1001126DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100112718(uint64_t *a1, CLConnection *a2)
{
  v2 = a1[106];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = a2;
  v4 = a1;
  v5 = a1 + 106;
  do
  {
    v6 = v2[4];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v2;
    }

    v2 = v2[v8];
  }

  while (v2);
  if (v5 == a1 + 106 || v5[4] > a2)
  {
LABEL_9:
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    v3 = &off_101C65000;
    v5 = "iter != fDaemonClients.end()";
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v20 = 0;
      *&v20[4] = 2082;
      *&v20[6] = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "iter != fDaemonClients.end()";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No client found for the connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v10 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289539;
      *v20 = 0;
      *&v20[4] = 2082;
      *&v20[6] = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "iter != fDaemonClients.end()";
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No client found for the connection", "{msg%{public}.0s:No client found for the connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v20 = 0;
      *&v20[4] = 2082;
      *&v20[6] = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "iter != fDaemonClients.end()";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No client found for the connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  v11 = v5[5];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v12 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_1000344B0(v11, 0);
    *buf = 138543362;
    *v20 = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Client %{public}@ disconnected", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192E1BC(v11);
  }

  if (sub_100050B40(v11))
  {
    v14 = sub_1000344B0(v11, 0);
    UniqueRemotePid = CLConnection::getUniqueRemotePid(v3);
    sub_100057698(v4, v14, UniqueRemotePid, 0);
  }

  if (sub_100050B40(v11))
  {
    v16 = sub_1000344B0(v11, 0);
    if (([v16 isValidCKP] & 1) == 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v17 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        *v20 = 0;
        *&v20[4] = 2082;
        *&v20[6] = "";
        v21 = 2050;
        v22 = v11;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Disconnecting client has successful registration, but no valid CKP, CLDC:%{public}p}", buf, 0x1Cu);
      }
    }

    sub_100049444(v4, v16, v11);
    sub_10004ED44(v4, v11, 0);
  }

  v18 = v5[5];
  sub_10045E8A0(v4 + 105, v5);
  operator delete(v5);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  if (!v4[107])
  {
    [*(v4[20] + 16) unregister:*(v4[20] + 8) forNotification:19];
  }
}

void sub_100112BB4(uint64_t a1)
{
  *a1 = off_102494BF8;
  *(a1 + 8) = &off_102494CD0;
  if (*(a1 + 72) == 1 && *(a1 + 91) == 1)
  {
    sub_1002FE214(*(a1 + 16), *(a1 + 48), 0, 1, 0, 0, 0, 0);
  }

  *(a1 + 152) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;

  *(a1 + 392) = 0;
  sub_100112EA4(a1);
  if (qword_1025D47A0 != -1)
  {
    sub_1019EEDF4();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v3[0] = 68290562;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    v6 = 2082;
    v7 = "state_transition";
    v8 = 2082;
    v9 = "DaemonClient";
    v10 = 2050;
    v12 = 2082;
    v11 = a1;
    v13 = "lifecycle";
    v14 = 2050;
    v15 = a1;
    v16 = 2050;
    v17 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}p, new:%{public}p}", v3, 0x4Eu);
  }

  sub_1001130E4((a1 + 400));
}

void sub_100112E98(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_100112EA4(uint64_t a1)
{
  if ((*(a1 + 64) & 0x14) != 0)
  {
    (*(*a1 + 176))(a1);
  }

  *(a1 + 48) = 0;
  *(a1 + 96) = 0;
  [*(a1 + 40) setValid:0];

  *(a1 + 40) = 0;
  for (i = *(a1 + 344); i; i = *i)
  {
    (*(*i[3] + 24))(i[3], a1 + 8);
  }

  sub_100113088(a1 + 328);
  sub_10004FF5C((a1 + 128));
  v3 = *(a1 + 264);
  if (v3)
  {
    CLConnection::deferredDelete(v3);
    *(a1 + 264) = 0;
  }

  v4 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (*(a1 + 276) == 1)
  {
    *(a1 + 276) = 0;
    v6 = sub_100146590();
    sub_1001464F8(v6, a1, 0, 0);
  }

  v7 = *(a1 + 224);
  *(a1 + 224) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(a1 + 112) = 0;
}

void sub_100113088(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_100113174(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_100113138(uint64_t a1)
{
  sub_100113174(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100113174(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        sub_100008080(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_1001131BC(uint64_t a1)
{
  sub_1001131F8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1001131F8(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *sub_100113290(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10045E8A0(a1, a2);
  sub_1003C93BC(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

uint64_t sub_1001132D0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_100113290(a1, v4);
  return 1;
}

void sub_100113340(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 88);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = a1 + 80;
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
    if (v6 != a1 + 88 && *(v6 + 32) <= a2)
    {
      while (*(v6 + 56))
      {
        *buf = *(*(v6 + 40) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_101961988();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = (a1 + 8);
        if (*(a1 + 31) < 0)
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
        sub_101963534();
      }
    }
  }
}

uint64_t sub_1001134E4(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_10011400C(a1, v4);
  return 1;
}

uint64_t sub_100113554(char *a1, int a2, int *a3)
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
              sub_1001134E4((v15 + 40), &v23);
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
                sub_101929490();
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
                  sub_101929490();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLBTLEFenceManager_Type::Notification, CLBTLEFenceManager_Type::NotificationData, char, std::string>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLBTLEFenceManager_Type::Notification, NotificationData_T = CLBTLEFenceManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = std::string]", "%s\n", v22);
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