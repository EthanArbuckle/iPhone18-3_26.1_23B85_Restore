void sub_1006A158C(uint64_t a1)
{
  sub_1006A1438(a1);

  operator delete();
}

uint64_t sub_1006A15C4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1006A165C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 7];
    v7 = *v6 + 32 * (v5 & 0x7F);
    v8 = *(v2 + (((a1[5] + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v5) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v14 = (v7 + 8);
        sub_1000B96B4(&v14);
        v7 += 32;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 64;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 128;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_1003EE22C(a1);
}

uint64_t sub_1006A179C(uint64_t a1)
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

void *sub_1006A181C(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_1006A18D8(a1, v7, a3, a4);
  sub_1006A1AFC(v7);
  *a1 = off_102469EB8;
  sub_10069C8B4((a1 + 20), a2);
  return a1;
}

uint64_t sub_1006A18D8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_102469F28;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_1006A1A64(a1 + 128, a2);
  return a1;
}

void *sub_1006A1964(void *a1)
{
  *a1 = off_102469F28;
  v2 = a1 + 2;
  sub_1006A1AFC((a1 + 16));
  sub_10049AC1C(v2);
  return a1;
}

void sub_1006A19B8(void *a1)
{
  sub_1006A26F0(a1);

  operator delete();
}

void sub_1006A19F0(void *a1)
{
  *a1 = off_102469F28;
  v1 = a1 + 2;
  sub_1006A1AFC((a1 + 16));
  sub_10049AC1C(v1);

  operator delete();
}

uint64_t sub_1006A1A64(uint64_t a1, uint64_t a2)
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

uint64_t sub_1006A1AFC(uint64_t a1)
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

void *sub_1006A1B7C(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_1006A1C38(a1, v7, a3, a4);
  sub_1006A2054(v7);
  *a1 = off_102469F58;
  sub_10069C8B4((a1 + 22), a2);
  return a1;
}

uint64_t sub_1006A1C38(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_102469FC8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  sub_1006A1E60(a1 + 144, a2);
  return a1;
}

void sub_1006A1CC0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 120);
  if (v4)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  sub_1006A1EF8(v2);
  _Unwind_Resume(a1);
}

void *sub_1006A1CE4(void *a1)
{
  *a1 = off_102469FC8;
  sub_1006A2054((a1 + 18));
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  sub_1006A1EF8(a1 + 2);
  return a1;
}

void sub_1006A1D40(void *a1)
{
  *a1 = off_102469F58;
  sub_10069CBB0((a1 + 22));
  sub_1006A1CE4(a1);

  operator delete();
}

uint64_t sub_1006A1DA8(uint64_t a1)
{
  if (!*(a1 + 200))
  {
    return 0;
  }

  v1 = 1;
  if ((sub_100698588(a1 + 176, 1) & 1) == 0)
  {
    return 0;
  }

  return v1;
}

void sub_1006A1E28(void *a1)
{
  sub_1006A1CE4(a1);

  operator delete();
}

uint64_t sub_1006A1E60(uint64_t a1, uint64_t a2)
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

uint64_t sub_1006A1EF8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x55];
    v7 = *v6;
    v8 = *v6 + 48 * (v5 % 0x55);
    v9 = v2[(a1[5] + v5) / 0x55] + 48 * ((a1[5] + v5) % 0x55);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 24);
        if (v10)
        {
          *(v8 + 32) = v10;
          operator delete(v10);
          v7 = *v6;
        }

        v8 += 48;
        if (v8 - v7 == 4080)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 42;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 85;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_1003EE22C(a1);
}

uint64_t sub_1006A2054(uint64_t a1)
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

void *sub_1006A20D4(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = 0;
  sub_1006A2190(a1, v7, a3, a4);
  sub_1006A261C(v7);
  *a1 = off_102469FF8;
  sub_10069C8B4((a1 + 23), a2);
  return a1;
}

uint64_t sub_1006A2190(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = off_10246A068;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = xmmword_101C85F60;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0x600000006;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 136) = _Q0;
  sub_1006A2420(a1 + 152, a2);
  return a1;
}

void sub_1006A2228(_Unwind_Exception *a1)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 120) = v6;
    operator delete(v6);
  }

  sub_1006A24B8(v2);
  _Unwind_Resume(a1);
}

void *sub_1006A2250(void *a1)
{
  *a1 = off_10246A068;
  sub_1006A261C((a1 + 19));
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  sub_1006A24B8(a1 + 2);
  return a1;
}

void *sub_1006A22AC(void *a1)
{
  *a1 = off_102469FF8;
  sub_10069CBB0((a1 + 23));

  return sub_1006A2250(a1);
}

void sub_1006A2300(void *a1)
{
  *a1 = off_102469FF8;
  sub_10069CBB0((a1 + 23));
  sub_1006A2250(a1);

  operator delete();
}

uint64_t sub_1006A2368(uint64_t a1)
{
  if (!*(a1 + 208))
  {
    return 0;
  }

  v1 = 1;
  if ((sub_100698588(a1 + 184, 1) & 1) == 0)
  {
    return 0;
  }

  return v1;
}

void sub_1006A23E8(void *a1)
{
  sub_1006A2250(a1);

  operator delete();
}

uint64_t sub_1006A2420(uint64_t a1, uint64_t a2)
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

uint64_t sub_1006A24B8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x49];
    v7 = *v6;
    v8 = *v6 + 56 * (v5 % 0x49);
    v9 = v2[(a1[5] + v5) / 0x49] + 56 * ((a1[5] + v5) % 0x49);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 16);
        if (v10)
        {
          *(v8 + 24) = v10;
          operator delete(v10);
          v7 = *v6;
        }

        v8 += 56;
        if (v8 - v7 == 4088)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 36;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 73;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_1003EE22C(a1);
}

uint64_t sub_1006A261C(uint64_t a1)
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

void *sub_1006A269C(void *a1)
{
  *a1 = off_102469F58;
  sub_10069CBB0((a1 + 22));

  return sub_1006A1CE4(a1);
}

void *sub_1006A26F0(void *a1)
{
  *a1 = off_102469EB8;
  v2 = (a1 + 16);
  sub_10069CBB0((a1 + 20));
  *a1 = off_102469F28;
  sub_1006A1AFC(v2);
  sub_10049AC1C(a1 + 2);
  return a1;
}

uint64_t sub_1006A2774(void *a1)
{
  *a1 = off_102469E18;
  sub_10069CBB0((a1 + 20));

  return sub_1006A1438(a1);
}

void *sub_1006A27C8(void *a1)
{
  *a1 = off_102469D78;
  v2 = (a1 + 14);
  sub_10069CBB0((a1 + 18));
  *a1 = off_102469DE8;
  sub_1006A124C(v2);
  sub_100102BC8(a1 + 2);
  return a1;
}

void *sub_1006A284C(void *a1)
{
  *a1 = off_102469CD8;
  v2 = (a1 + 14);
  sub_10069CBB0((a1 + 18));
  *a1 = off_102469D48;
  sub_1006A0EF0(v2);
  sub_100102BC8(a1 + 2);
  return a1;
}

void *sub_1006A28D0(void *a1)
{
  *a1 = off_102469BF0;
  v2 = a1 + 285;
  a1[285] = off_102469FF8;
  sub_10069CBB0((a1 + 308));
  sub_1006A2250(v2);
  a1[259] = off_102469F58;
  sub_10069CBB0((a1 + 281));
  sub_1006A1CE4(a1 + 259);
  sub_1006A26F0(a1 + 235);
  a1[211] = off_102469E18;
  sub_10069CBB0((a1 + 231));
  sub_1006A1438((a1 + 211));
  sub_100699148(a1 + 182);
  sub_10069A638(a1 + 138);
  sub_1006A27C8(a1 + 116);
  a1[59] = off_102469158;
  sub_100699C14((a1 + 112));
  sub_100699C94(a1 + 61);
  sub_1006A284C(a1 + 37);
  a1[1] = off_102468B38;
  sub_1006980F4((a1 + 33));
  sub_10051B848(a1 + 3);
  return a1;
}

uint64_t sub_1006A2A98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246A0D8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006A2AC4(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    sub_100695F28();
  }

  else
  {
    sub_100695FEC();
  }

  return 1;
}

uint64_t sub_1006A2AF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A2BB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246A168;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006A2BF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A2CB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246A1E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006A2CF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A2DB0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1006A2DFC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = off_1025019A0;
  v9 = a5;
  *a1 = off_10246A2E8;
  a1[1] = v9;
  a1[2] = a3;
  a1[3] = a4;
  v10 = a2;
  a1[5] = 0;
  a1[4] = v10;
  a1[6] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1006A2F84;
  aBlock[3] = &unk_10245AE50;
  aBlock[4] = v14;
  a1[5] = _Block_copy(aBlock);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1006A2F98;
  v12[3] = &unk_10245AE78;
  v12[4] = v14;
  a1[6] = _Block_copy(v12);
  _Block_object_dispose(v14, 8);
  return a1;
}

void sub_1006A2FB4(uint64_t a1)
{
  sub_1006A31AC(a1);

  operator delete();
}

id sub_1006A2FEC(void *a1, int a2, void *__src, unint64_t a4)
{
  *&__dst[24] = 0;
  memset(__dst, 0, 21);
  if (a4 >= 0x20)
  {
    v8 = 32;
  }

  else
  {
    v8 = a4;
  }

  memcpy(__dst, __src, v8);
  if (a4 >= 0x21)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018FFCE0();
    }

    v9 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v21 = 0x8000000101C881E5 & 0x7FFFFFFFFFFFFFFFLL;
      v22 = 2048;
      v23 = 32;
      v24 = 2048;
      v25 = a4;
      v26 = 1024;
      v27 = a2;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "SIZE MISMATCH: %s=%lu vs sz=%zu notification=%d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101905C00();
    }
  }

  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[6];
  v13 = a1[4];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1006A3228;
  v15[3] = &unk_10246A330;
  v15[4] = v12;
  v15[5] = v11;
  v16 = *__dst;
  v17 = *&__dst[16];
  v18 = v10;
  return [v13 async:v15];
}

uint64_t sub_1006A31AC(uint64_t a1)
{
  *a1 = off_10246A2E8;
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 40));
  _Block_release(*(a1 + 48));

  return sub_1017E7D44(a1);
}

uint64_t sub_1006A3228(void *a1)
{
  result = (*(a1[4] + 16))();
  if (result)
  {
    v3 = a1[5];
    v4 = a1[10];

    return v3(a1 + 6, v4);
  }

  return result;
}

void sub_1006A32A4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10246A360;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id sub_1006A32F8(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_1006A34D0(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_101905D00();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C88261 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101905D14();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_101905D00();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C88261 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101905E10();
    }
  }

  return 0;
}

id sub_1006A34D0(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254EE40))
  {
    if ([objc_msgSend(a2 "serialized")] != 304)
    {
      sub_101906104();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

uint64_t sub_1006A3588(uint64_t a1)
{
  *a1 = off_10246A3D0;
  sub_1003C93BC(a1 + 64, *(a1 + 72));
  sub_10045E1B0((a1 + 16));
  return a1;
}

void sub_1006A35DC(uint64_t a1)
{
  *a1 = off_10246A3D0;
  sub_1003C93BC(a1 + 64, *(a1 + 72));
  sub_10045E1B0((a1 + 16));

  operator delete();
}

void *sub_1006A3650(void *a1)
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
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_1006A37D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006A3824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 32);
  if (*(a1 + 71) < 0)
  {
    sub_100007244((a2 + 16), *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *(a2 + 16) = *(a1 + 48);
    *(a2 + 32) = *(a1 + 64);
  }

  return sub_10069B5FC(a2 + 40, (a1 + 72));
}

void sub_1006A3884(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A38A0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  if (*(a2 + 71) < 0)
  {
    sub_100007244((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v4;
  }

  return sub_10069B5FC(a1 + 72, (a2 + 72));
}

void sub_1006A3900(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A391C(uint64_t a1)
{
  sub_100106180((a1 + 72));
  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

void sub_1006A396C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1006A39EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1006A3A00(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1006A3A00(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100687170(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_1006A3A48(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_100687170(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1006A3A8C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A3ACC(uint64_t a1)
{
  sub_1008AF7F0(a1 + 696);
  sub_100697F4C(a1 + 720);
  v2 = *(a1 + 696);
  if (v2)
  {
    *(a1 + 704) = v2;
    operator delete(v2);
  }

  sub_100666704((a1 + 640));
  if (*(a1 + 639) < 0)
  {
    operator delete(*(a1 + 616));
  }

  v3 = *(a1 + 224);
  *(a1 + 224) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_100666704((a1 + 176));
  sub_100666704((a1 + 128));
  sub_100106180((a1 + 64));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

uint64_t sub_1006A3BF4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246A4B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006A3C28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1006A3C74(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 56 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1006A3D3C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x38)) + 72 * (v7 % 0x38);
  *v8 = *a2;
  result = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 32) = v10;
  *(v8 + 48) = v11;
  *(v8 + 16) = result;
  ++a1[5];
  return result;
}

void *sub_1006A3D3C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x38;
  v3 = v1 - 56;
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

void sub_1006A3EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1006A3F10(void *a1, __n128 *a2)
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
    sub_1006A3F9C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void *sub_1006A3F9C(void *a1)
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

void sub_1006A4124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1006A4170(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 102 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1006A4228(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  result = *a2;
  v10 = *(a2 + 16);
  *(v8 + 32) = *(a2 + 32);
  *v8 = result;
  *(v8 + 16) = v10;
  ++a1[5];
  return result;
}

void *sub_1006A4228(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
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

void sub_1006A43B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1006A43FC(void *a1, __n128 *a2)
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
    sub_1006A44AC(a1);
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

void *sub_1006A44AC(void *a1)
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

void sub_1006A4634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006A4680(uint64_t a1)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018FFCE0();
  }

  v2 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Disabling buffer at CLWorkoutPredictorSourceBuffer", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101906288();
  }

  *(a1 + 328) = 0x10000000000000;
  *(a1 + 264) = 0;
  return (*(*a1 + 24))(a1);
}

uint64_t sub_1006A474C(uint64_t a1)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018FFCE0();
  }

  v2 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Disabling buffer at CLWorkoutPredictorSourceBuffer", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101906364();
  }

  *(a1 + 72) = 0x10000000000000;
  *(a1 + 8) = 0;
  return (*(*a1 + 24))(a1);
}

uint64_t sub_1006A4818(uint64_t a1)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018FFCE0();
  }

  v2 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Disabling buffer at CLWorkoutPredictorSourceBuffer", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101906440();
  }

  *(a1 + 72) = 0x10000000000000;
  *(a1 + 8) = 0;
  return (*(*a1 + 24))(a1);
}

uint64_t sub_1006A48E4(uint64_t a1)
{
  *a1 = off_10246A548;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_1006A4A08(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1006A4A38()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_1006A4AB0()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

uint64_t sub_1006A4B28()
{
  sub_10000EC00(byte_1026585F0, "VO2MaxPowerBudgetEstimatorLastExtendedBudgetAllotmentReason");
  __cxa_atexit(&std::string::~string, byte_1026585F0, dword_100000000);
  qword_102658608 = off_102469470;
  qword_102658620 = &qword_102658608;
  __cxa_atexit(sub_1003EE78C, &qword_102658608, dword_100000000);
  qword_102658628 = off_1024694F0;
  qword_102658640 = &qword_102658628;
  __cxa_atexit(sub_1003EE78C, &qword_102658628, dword_100000000);
  qword_102658648 = off_102469570;
  qword_102658660 = &qword_102658648;
  __cxa_atexit(sub_1003EE790, &qword_102658648, dword_100000000);
  qword_102658668 = off_1024695F0;
  qword_102658680 = &qword_102658668;
  __cxa_atexit(sub_1003EE790, &qword_102658668, dword_100000000);
  __cxa_atexit(sub_1005A704C, aAcc800fp_1, dword_100000000);

  return __cxa_atexit(sub_1005A704C, aDmfp_1, dword_100000000);
}

void sub_1006A5580(_Unwind_Exception *a1)
{
  if (STACK[0x358])
  {
    sub_100008080(STACK[0x358]);
  }

  _Unwind_Resume(a1);
}

void sub_1006A5960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A597C(uint64_t a1, char *a2, void *a3)
{
  v5 = sub_1006A59EC(a1, a2, a3);
  *v5 = off_10246A5B0;
  *(v5 + 109) = 65792;
  sub_1006A5A98(v5, a2);
  return a1;
}

uint64_t sub_1006A59EC(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_10246A7D0;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_1006A5A7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A5A98(uint64_t a1, const char *a2)
{
  v13 = 0;
  sub_10004FD18(v12);
  sub_10001CAF4(buf);
  if (sub_100185ADC(*buf, "LocationProviders", v12))
  {
    v4 = sub_10001CB4C(v12, a2, &v13);
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    if (v4)
    {
      *(a1 + 111) = v13;
      v4 = 1;
    }
  }

  else
  {
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    v4 = 0;
  }

  if ((*(a1 + 111) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10190651C();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136380675;
      *&buf[4] = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "LocationProvider,#Warning provider %{private}s disabled - will run but not send locations to clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190664C(buf);
      v14 = 136380675;
      v15 = a2;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationProvider::checkEnable(const char *)", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  if (qword_1025D4600 != -1)
  {
    sub_10190651C();
  }

  v6 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 111);
    *buf = 136380931;
    *&buf[4] = a2;
    *&buf[12] = 1026;
    *&buf[14] = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "LocationProvider,Location Provider (%{private}s) set to (%{public}d)", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190664C(buf);
    v9 = *(a1 + 111);
    v14 = 136380931;
    v15 = a2;
    v16 = 1026;
    v17 = v9;
    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationProvider::checkEnable(const char *)", "%s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  sub_100005DA4(v12);
  return v4;
}

void sub_1006A5DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006A5E08(uint64_t a1)
{
  *a1 = off_10246A7D0;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1006A5E94(uint64_t a1)
{
  sub_1006A5E08(a1);

  operator delete();
}

uint64_t sub_1006A5F08(char *a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_10023F73C();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
  {
    v3 = a1 + 8;
    if (a1[31] < 0)
    {
      v3 = *v3;
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "LocationProvider,%s,Wrong registration method called!", &v5, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019067E8(a1);
  }

  return 0;
}

void sub_1006A6014(uint64_t a1, _OWORD *a2)
{
  sub_100021AFC(v9);
  v4 = a2[7];
  v9[6] = a2[6];
  v9[7] = v4;
  v10[0] = a2[8];
  *(v10 + 12) = *(a2 + 140);
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v6 = a2[5];
  v9[4] = a2[4];
  v9[5] = v6;
  v7 = a2[1];
  v9[0] = *a2;
  v9[1] = v7;
  v8 = 0;
  (*(*a1 + 136))(a1, &v8, v9);
  v8 = 2;
  (*(*a1 + 136))(a1, &v8, v9);
  v8 = 1;
  (*(*a1 + 136))(a1, &v8, v9);
  v8 = 3;
  (*(*a1 + 136))(a1, &v8, v9);
  v8 = 4;
  (*(*a1 + 136))(a1, &v8, v9);
  v8 = 39;
  (*(*a1 + 136))(a1, &v8, v9);
  v8 = 10;
  (*(*a1 + 136))(a1, &v8, v9);

  if (v15)
  {
    sub_100008080(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12)
  {
    sub_100008080(v12);
  }

  if (v11)
  {
    sub_100008080(v11);
  }
}

void sub_1006A6248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1006A62F8(char *a1, _OWORD *a2, uint64_t a3)
{
  if (qword_1025D4810 != -1)
  {
    sub_101906F98();
  }

  v6 = qword_1025D4818;
  if (os_log_type_enabled(qword_1025D4818, OS_LOG_TYPE_DEBUG))
  {
    v7 = a1 + 8;
    if (a1[31] < 0)
    {
      v7 = *v7;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "LocationProvider,Sending through simulated location for %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101906FAC();
  }

  sub_100021AFC(buf);
  v8 = a2[7];
  v25 = a2[6];
  v26 = v8;
  v27[0] = a2[8];
  *(v27 + 12) = *(a2 + 140);
  v9 = a2[3];
  v21 = a2[2];
  v22 = v9;
  v10 = a2[5];
  v23 = a2[4];
  v24 = v10;
  v11 = a2[1];
  *buf = *a2;
  v20 = v11;
  memcpy(v28, a3, 0x201uLL);
  v12 = *(a3 + 520);
  v13 = *(a3 + 528);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v28[65] = v12;
  v14 = v29;
  v29 = v13;
  if (v14)
  {
    sub_100008080(v14);
  }

  v15 = *(a3 + 616);
  v34 = *(a3 + 600);
  v35[0] = v15;
  *(v35 + 9) = *(a3 + 625);
  v16 = *(a3 + 552);
  v30 = *(a3 + 536);
  v31 = v16;
  v17 = *(a3 + 584);
  v32 = *(a3 + 568);
  v33 = v17;
  v28[43] = sub_1000081AC();
  v18 = 0;
  (*(*a1 + 152))(a1, &v18, buf, 0, 0xFFFFFFFFLL, 1);

  if (v39)
  {
    sub_100008080(v39);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (v36)
  {
    sub_100008080(v36);
  }

  if (v29)
  {
    sub_100008080(v29);
  }
}

void sub_1006A6520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A6550(uint64_t a1)
{
  sub_100021AFC(v3);
  v2 = 9;
  (*(*a1 + 152))(a1, &v2, v3, 0, 0xFFFFFFFFLL, 1);

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v5)
  {
    sub_100008080(v5);
  }

  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_1006A6608(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1006A661C(char *a1, void *a2)
{
  if (qword_1025D4810 != -1)
  {
    sub_101906F98();
  }

  v4 = qword_1025D4818;
  if (os_log_type_enabled(qword_1025D4818, OS_LOG_TYPE_DEBUG))
  {
    v5 = "enabled";
    if (!a2)
    {
      v5 = "disabled";
    }

    v6 = a1 + 8;
    if (a1[31] < 0)
    {
      v6 = *v6;
    }

    *buf = 136315394;
    v18 = v5;
    v19 = 2080;
    v20 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "LocationProvider,Simulation is now %s for %s", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019070B4(a2);
  }

  a1[109] = a2;
  *buf = 9;
  (*(*a1 + 120))(a1, buf);
  *buf = 0;
  (*(*a1 + 120))(a1, buf);
  a1[112] = 0;
  sub_100021AFC(v9);
  v12 = a1[109];
  if (qword_1025D4810 != -1)
  {
    sub_1019071F8();
  }

  v7 = qword_1025D4818;
  if (os_log_type_enabled(qword_1025D4818, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "LocationProvider,Notifying", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101907220(buf);
    v8 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLLocationProvider::setSimulationEnabled(BOOL)", "%s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  *buf = 12;
  (*(*a1 + 152))(a1, buf, v9, 1, 0xFFFFFFFFLL, 0);

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

void sub_1006A6930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void *sub_1006A696C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  result = sub_1000EE218(a1, a2, a3, a4, a5, a6);
  *result = off_10246A6F8;
  return result;
}

void *sub_1006A69A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  result = sub_1006A69D4(a1, a2, a3, a4, a5);
  *result = off_10246A6F8;
  return result;
}

uint64_t sub_1006A69D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *a1 = &off_102456910;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  [a3 silo];
  v10 = (*(*a2 + 80))(a2);
  v19 = &OBJC_PROTOCOL___CLIntersiloServiceProtocol;
  [+[CLIntersiloInterface sharedInterface](CLIntersiloInterface "sharedInterface")];
  v18 = &OBJC_PROTOCOL___CLIntersiloClientProtocol;
  [+[CLIntersiloInterface sharedInterface](CLIntersiloInterface "sharedInterface")];
  v11 = [a3 silo];
  if (*(a2 + 31) < 0)
  {
    sub_100007244(__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *__p = *(a2 + 8);
    v17 = *(a2 + 24);
  }

  if (v17 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = [CLIntersiloProxy proxyForRecipientObject:v10 inSilo:v11 recipientName:[NSString stringWithUTF8String:v12, __p[0], __p[1], v17]];
  *(a1 + 16) = v13;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    v13 = *(a1 + 16);
  }

  v14 = v13;
  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a3, "silo")}];
  return a1;
}

void sub_1006A6BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1006A6CBC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 144);
  *(a2 + 96) = *(a1 + 128);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 160);
  *(a2 + 140) = *(a1 + 172);
  v3 = *(a1 + 80);
  *(a2 + 32) = *(a1 + 64);
  *(a2 + 48) = v3;
  v4 = *(a1 + 112);
  *(a2 + 64) = *(a1 + 96);
  *(a2 + 80) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1006A6D20(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_1005A4918(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_1006A6DDC(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_10246A8D0;
  sub_1006A8108((a1 + 1), a3);
  a1[5] = a2;
  sub_101365ABC((a1 + 6), a2, a1);
}

void sub_1006A6FE0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 248);
  *(v1 + 248) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v2;
  *v2 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_101365C08(v1 + 48);
  sub_1006A8088(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_1006A7074(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 40) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101907264();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiLocationClient::onWifiProviderNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101907278();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiLocationClient::onWifiProviderNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006A7BC4(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006A7240(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 40) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101907264();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiLocationClient::onPipelineProviderNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101907278();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiLocationClient::onPipelineProviderNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006A7EC4(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006A740C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D4600 != -1)
  {
    sub_1019072A0();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "WLC: WifiLocationClient request timed out", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019072B4();
  }

  sub_1006A74AC(v1);
}

void sub_1006A74AC(uint64_t a1)
{
  if (*(a1 + 208))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019072A0();
    }

    v2 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "WLC: Cancel location request", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190745C();
    }

    [*(a1 + 200) setNextFireDelay:1.79769313e308];
    [*(*(a1 + 240) + 16) unregister:*(*(a1 + 240) + 8) forNotification:4];
    if (*(a1 + 232) == 1)
    {
      [*(*(a1 + 248) + 16) unregister:*(*(a1 + 248) + 8) forNotification:0];
    }

    *(a1 + 208) = 0;
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019072A0();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "WLC: Cancel location request, but no active request", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101907388();
    }
  }
}

uint64_t sub_1006A75FC(uint64_t a1)
{
  *a1 = off_10246A8D0;
  [*(a1 + 200) invalidate];

  *(a1 + 200) = 0;
  v2 = *(a1 + 248);
  *(a1 + 248) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_101365C08(a1 + 48);
  sub_1006A8088(a1 + 8);
  return a1;
}

void sub_1006A76C8(uint64_t a1)
{
  sub_1006A75FC(a1);

  operator delete();
}

uint64_t sub_1006A7700(uint64_t a1, uint64_t a2)
{
  v4 = sub_100125670(a1 + 48);
  if (v4)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019072A0();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 16))
      {
        v6 = "Yes";
      }

      else
      {
        v6 = "No";
      }

      v7 = *a2;
      v8 = *(a2 + 8);
      *buf = 136381187;
      *&buf[4] = v6;
      v34 = 2049;
      *v35 = v7;
      *&v35[8] = 2049;
      *&v35[10] = v8;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "WLC: requestLocation, w2,%{private}s, acc,%{private}.01f, tout,%{private}.01f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190760C(a2);
    }

    if ((*(a1 + 208) & 1) == 0)
    {
      [*(*(a1 + 240) + 16) register:*(*(a1 + 240) + 8) forNotification:4 registrationInfo:0];
    }

    Current = CFAbsoluteTimeGetCurrent();
    v10 = sub_1002E50C8(a1 + 48);
    v32 = 3;
    LODWORD(__p) = 6910051;
    sub_100183FDC(buf, 1, v10, &__p, Current);
    if (v32 < 0)
    {
      operator delete(__p);
    }

    v11 = [objc_msgSend(*(a1 + 40) "vendor")];
    v21 = *buf;
    v22 = buf[8];
    if (SHIBYTE(v36) < 0)
    {
      sub_100007244(&v23, *&v35[2], *&v35[10]);
    }

    else
    {
      v23 = *&v35[2];
      v24 = v36;
    }

    v26 = v38;
    v27 = v39;
    v28[0] = v40[0];
    *(v28 + 12) = *(v40 + 12);
    v25 = v37;
    if (SHIBYTE(v42) < 0)
    {
      sub_100007244(&v29, v41, *(&v41 + 1));
    }

    else
    {
      v29 = v41;
      v30 = v42;
    }

    [v11 requestLocationUpdateWithParameters:sub_1005F06B8(&v21)];
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    v13 = (sub_10001CF04() & *(a2 + 16));
    if (*(a1 + 208) == 1)
    {
      v14 = *(a1 + 232);
      if (!v13)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v14 = 0;
      if (!v13)
      {
LABEL_37:
        if (!(v13 & 1 | ((v14 & 1) == 0)))
        {
          [*(*(a1 + 248) + 16) unregister:*(*(a1 + 248) + 8) forNotification:0];
        }

        *(a1 + 208) = 1;
        [*(a1 + 200) setNextFireDelay:*(a1 + 224)];
        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41);
        }

        if (SHIBYTE(v36) < 0)
        {
          operator delete(*&v35[2]);
        }

        return v4;
      }
    }

    if ((v14 & 1) == 0)
    {
      __asm { FMOV            V0.2D, #-1.0 }

      sub_10002FA64();
    }

    goto LABEL_37;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1019072A0();
  }

  v12 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "WLC: requestLocation, but wifi off", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101907530();
  }

  return v4;
}

void sub_1006A7B08(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*a3 == 1)
  {
    v8 = v3;
    v9 = v4;
    if ((sub_100125670(a1 + 48) & 1) == 0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1019072A0();
      }

      v6 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *v7 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "WLC: Cancel request on WiFi power off", v7, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101907744();
      }

      sub_1006A74AC(a1);
    }
  }
}

void sub_1006A7BC4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*a3 == 4)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019072A0();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "WLC: Handle wifi location", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101907904();
    }

    sub_1006A7D30(a1, a4);
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019072A0();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v9 = *a3;
      v10[0] = 67240192;
      v10[1] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#Warning WLC: Only expecting kNotificationLocationBystander from wifi provider, notification,%{public}d", v10, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101907818(a3);
    }
  }
}

void sub_1006A7D30(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 96);
  v2 = *(a2 + 96);
  if (v2 == 4 || v2 == 11)
  {
    if (*(a2 + 20) > 0.0 && sub_100020608(*(a2 + 4), *(a2 + 12)) && *(a2 + 20) < *(a1 + 216))
    {
      sub_1006A74AC(a1);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(*v7 + 48);

      v8();
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019072A0();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v10 = *v3;
      v11[0] = 67240192;
      v11[1] = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "WLC: Non-WiFi location in CLWifiLocationClient, type,%{public}d", v11, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019079D8(v3);
    }
  }
}

void sub_1006A7EC4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*a3)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019072A0();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v6 = *a3;
      v10[0] = 67240192;
      v10[1] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#Warning WLC: Only expecting kNotificationLocation from pipeline provider, notification,%{public}d", v10, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101907AC4(a3);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019072A0();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "WLC: Handle wifi 2.0 location", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101907BB0();
    }

    sub_1006A7D30(a1, a4);
  }
}

uint64_t sub_1006A8088(uint64_t a1)
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

uint64_t sub_1006A8108(uint64_t a1, uint64_t a2)
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

void sub_1006A81A0()
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

uint64_t sub_1006A8280(uint64_t result, void *a2)
{
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 52) = 0;
  *result = off_10246A960;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v2 = a2[1];
  *(result + 56) = *a2;
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1006A82CC(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    sub_100246AA8(a1 + 64);
  }

  sub_1004906DC(a1 + 16);
  return a1;
}

uint64_t sub_1006A830C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (*(result + 8) != v2)
  {
    return sub_10023F584(v2 - 56, a2);
  }

  return result;
}

float sub_1006A8324(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101907C84();
    }

    v1 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEBUG, "Failed Scoring", v12, 2u);
    }

    v2 = 0.0;
    if (sub_10000A100(121, 2))
    {
      sub_101907DB8();
    }
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v4 == v5)
    {
      return 0.0;
    }

    else
    {
      v6 = v4 + 64;
      v2 = 0.0;
      do
      {
        *v12 = *(v6 - 64);
        sub_10023F684(&v12[16], v6 - 48);
        v7 = v6 - 64;
        v15 = *(v6 - 8);
        sub_100246B2C(v16, v6);
        v8 = *(v6 + 40);
        v18 = *(v6 + 48);
        v17 = v8;
        v9 = (*(*a1 + 40))(a1, v12);
        if (v16[32] == 1)
        {
          sub_100246AA8(v16);
        }

        v2 = v9 + v2;
        sub_1004906DC(&v12[16]);
        v6 += 120;
      }

      while (v7 + 120 != v5);
      if (qword_1025D47D0 != -1)
      {
        sub_101907D90();
      }

      v10 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 68289283;
        *&v12[8] = 2082;
        *&v12[10] = "";
        v13 = 2049;
        v14 = v2;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Trace score, score:%{private}f}", v12, 0x1Cu);
      }
    }
  }

  return v2;
}

double sub_1006A858C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8) - *a2;
  (*(**(a1 + 56) + 128))(v22);
  v5 = *&v22[5];
  sub_1004906DC(v25);
  sub_1004906DC(v24);
  sub_1004906DC(v23);
  v6 = 0.0;
  if (v4 < v5)
  {
    return v6;
  }

  LODWORD(v22[0]) = 11;
  if (!sub_1000735F4((a2 + 16), v22))
  {
    return v6;
  }

  v21 = 11;
  v7 = sub_1000735F4((a2 + 16), &v21);
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = *(v7 + 5);
  if (!v8)
  {
    return v6;
  }

  v9 = *(a2 + 112) / v8;
  (*(**(a1 + 56) + 128))(v22);
  v10 = *&v22[9];
  sub_1004906DC(v25);
  sub_1004906DC(v24);
  sub_1004906DC(v23);
  if (v9 < v10)
  {
    return v6;
  }

  v11 = *(a2 + 104) / v4;
  (*(**(a1 + 56) + 128))(v22);
  v12 = *&v22[10];
  sub_1004906DC(v25);
  sub_1004906DC(v24);
  sub_1004906DC(v23);
  if (v11 < v12)
  {
    return v6;
  }

  LODWORD(v22[0]) = 6;
  v13 = sub_1000735F4((a2 + 16), v22);
  v14 = 0.0;
  if (!v13)
  {
    goto LABEL_10;
  }

  v21 = 6;
  v15 = sub_1000735F4((a2 + 16), &v21);
  if (!v15)
  {
LABEL_18:
    sub_1000432E8("unordered_map::at: key not found");
  }

  LODWORD(v16) = *(v15 + 5);
  v14 = v16;
LABEL_10:
  v17 = v14 / v4;
  (*(**(a1 + 56) + 128))(v22);
  v18 = *&v22[6];
  sub_1004906DC(v25);
  sub_1004906DC(v24);
  sub_1004906DC(v23);
  if (v17 >= v18)
  {
    v6 = v4 + *(a2 + 104);
    if (*(a2 + 96) == 1 && *(a2 + 88) == 1)
    {
      (*(**(a1 + 56) + 128))(v22);
      v19 = sub_1002D3834(v25, (a2 + 64));
      sub_1004906DC(v25);
      sub_1004906DC(v24);
      sub_1004906DC(v23);
      if (v19)
      {
        (*(**(a1 + 56) + 128))(v22);
        v6 = v6 * *&v22[7];
        sub_1004906DC(v25);
        sub_1004906DC(v24);
        sub_1004906DC(v23);
      }
    }

    LODWORD(v22[0]) = 4;
    if (sub_1000735F4((a2 + 16), v22))
    {
      (*(**(a1 + 56) + 128))(v22);
      v6 = v6 * *&v22[8];
      sub_1004906DC(v25);
      sub_1004906DC(v24);
      sub_1004906DC(v23);
    }
  }

  return v6;
}

void sub_1006A88FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1006A8A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006A8910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 8);
  sub_1006A9158(a1 + 8, *(a1 + 8));
  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  v9 = 1065353216;
  v10 = 0;
  v11[0] = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_10023F584(v11, a3);
  sub_10023F6FC(v5, &v7);
  if (*(a1 + 40) == 1)
  {
    *(a1 + 40) = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  if (v12 == 1)
  {
    sub_100246AA8(v11);
  }

  return sub_1004906DC(v8);
}

void sub_1006A89E8(uint64_t a1)
{
  sub_1006A91C0(a1);

  operator delete();
}

uint64_t sub_1006A8A20(uint64_t a1)
{
  sub_1004906DC(a1 + 200);
  sub_1004906DC(a1 + 160);
  sub_1004906DC(a1 + 120);
  return a1;
}

uint64_t sub_1006A8A5C(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(result + 24) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return sub_100246AA8(result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (*(&off_10246A9B0 + v4))(v6);
    }
  }

  return result;
}

uint64_t *sub_1006A8AD4(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 24) == 1)
  {
    *a2 = *a3;
  }

  else
  {
    result = sub_100246AA8(*result);
    *v4 = *a3;
    *(v4 + 24) = 1;
  }

  return result;
}

void sub_1006A8B28(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 24))
  {
    v4[0] = a1;
    v4[1] = __str;
    sub_1006A8B70(v4);
  }

  else
  {

    std::string::operator=(this, __str);
  }
}

__n128 sub_1006A8B70(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(v1 + 23) < 0)
  {
    sub_100007244(&v5, *v1, *(v1 + 8));
  }

  else
  {
    v3 = *v1;
    v6 = *(v1 + 16);
    v5 = v3;
  }

  sub_100246AA8(v2);
  result = v5;
  v2[1].n128_u64[0] = v6;
  *v2 = result;
  v2[1].n128_u32[2] = 0;
  return result;
}

uint64_t sub_1006A8BDC(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_10028C64C();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1006A8D48(a1, v6);
  }

  v7 = 120 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  *v7 = *a2;
  sub_10023F684(v7 + 16, a2 + 16);
  *(v7 + 56) = *(a2 + 56);
  sub_100246B2C((v7 + 64), a2 + 64);
  v8 = *(a2 + 104);
  *(v7 + 112) = *(a2 + 112);
  *(v7 + 104) = v8;
  *&v17 = v17 + 120;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_1006A8DA0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1006A9088(&v15);
  return v14;
}

void sub_1006A8D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1004906DC(v4 + 16);
  sub_1006A9088(va);
  _Unwind_Resume(a1);
}

void sub_1006A8D48(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1006A8DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 != a3)
  {
    v7 = a4;
    v8 = a2 + 64;
    do
    {
      *v7 = *(v8 - 64);
      sub_10067DFB8(v7 + 16, (v8 - 48));
      v9 = *(v8 - 8);
      *(v7 + 64) = 0;
      *(v7 + 56) = v9;
      *(v7 + 96) = 0;
      if (*(v8 + 32) == 1)
      {
        sub_1006A8F0C(v7 + 64, v8);
        *(v7 + 96) = 1;
      }

      v10 = v8 - 64;
      v11 = *(v8 + 40);
      *(v7 + 112) = *(v8 + 48);
      *(v7 + 104) = v11;
      v7 = v16 + 120;
      v16 += 120;
      v8 += 120;
    }

    while (v10 + 120 != a3);
  }

  v14 = 1;
  sub_1006A8EB0(a1, a2, a3);
  return sub_1006A8FD8(v13);
}

uint64_t sub_1006A8EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2 + 64;
    do
    {
      if (*(v4 + 32) == 1)
      {
        sub_100246AA8(v4);
      }

      result = sub_1004906DC(v4 - 48);
      v6 = v4 + 56;
      v4 += 120;
    }

    while (v6 != a3);
  }

  return result;
}

uint64_t sub_1006A8F0C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_1006A8F44(a1, a2);
  return a1;
}

uint64_t sub_1006A8F44(uint64_t a1, uint64_t a2)
{
  result = sub_100246AA8(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (*(&off_10246A9D0 + v5))(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

__n128 sub_1006A8FA8(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t sub_1006A8FD8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1006A9024(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

uint64_t sub_1006A9024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 24) == 1)
      {
        sub_100246AA8(v6 - 56);
      }

      result = sub_1004906DC(v6 - 104);
      v6 -= 120;
    }

    while (v6 != a5);
  }

  return result;
}

uint64_t sub_1006A9088(uint64_t a1)
{
  sub_1006A90C0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1006A90C0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      *(v4 + 16) = v2 - 120;
      if (*(v2 - 24) == 1)
      {
        sub_100246AA8(v2 - 56);
      }

      result = sub_1004906DC(v2 - 104);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_1006A9158(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 120)
  {
    if (*(i - 24) == 1)
    {
      sub_100246AA8(i - 56);
    }

    result = sub_1004906DC(i - 104);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_1006A91C0(uint64_t a1)
{
  *a1 = off_10246A960;
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100008080(v2);
  }

  v4 = (a1 + 8);
  sub_1006A9224(&v4);
  return a1;
}

void sub_1006A9224(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1006A9158(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1006A9278(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0x726566667542434CLL;
  v7 = (a1 + 16);
  *(a1 + 39) = 8;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  v8 = (a1 + 40);
  *(a1 + 56) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 72) = 0xFFFFFFFF00000000;
  *(a1 + 80) = off_1024DE5F8;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 88) = _Q0;
  *(a1 + 120) = 0xBFF0000000000000;
  *(a1 + 136) = 0xBFF0000000000000;
  *(a1 + 152) = _Q0;
  v23 = _Q0;
  *(a1 + 168) = _Q0;
  *(a1 + 184) = 0xBFF0000000000000;
  *(a1 + 204) = 0;
  *(a1 + 196) = 0;
  *(a1 + 208) = 0xBFF0000000000000;
  *(a1 + 216) = 0;
  *(a1 + 220) = 7;
  v14 = *(a2 + 23);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 8);
  }

  if (v14)
  {
    std::string::operator=((a1 + 16), a2);
  }

  v15 = (ceil(a3 / a4) + 1.0);
  sub_1006A9660(v8, v15);
  memset(v30, 0, sizeof(v30));
  v25 = 0u;
  *buf = off_1024DE5F8;
  *&buf[8] = v23;
  v26 = 0xBFF0000000000000;
  v27 = 0xBFF0000000000000;
  v28 = v23;
  v32 = 0xBFF0000000000000;
  v33 = 0x700000000;
  v29 = v23;
  *v30 = 0xBFF0000000000000;
  v31 = 0;
  sub_1006A97A4(v8, v15, buf);
  sub_1006A97E8(a1);
  *(a1 + 64) = 954437177 * ((*(a1 + 56) - *(a1 + 40)) >> 4);
  if (qword_1025D4600 != -1)
  {
    sub_101907EB4();
  }

  v16 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v17 = v7;
    if (*(a1 + 39) < 0)
    {
      v17 = *v7;
    }

    v19 = *a1;
    v18 = *(a1 + 8);
    v20 = *(a1 + 64);
    *buf = 136446978;
    *&buf[4] = v17;
    *&buf[12] = 2050;
    *&buf[14] = v18;
    *&buf[22] = 2050;
    *&v25 = v19;
    WORD4(v25) = 1026;
    *(&v25 + 10) = v20;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "%{public}s,initialize with time bin width %{public}.1f sec and total length sec %{public}.1f (samples: %{public}d)", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_101907EB4();
    }

    v22 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLTimeBinBuffer::CLTimeBinBuffer(const double, const double, const std::string &)", "%s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  return a1;
}

void sub_1006A9620(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1006A9660(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x1C71C71C71C71C8)
    {
      sub_1001EBF28(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

void sub_1006A974C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A97A4(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_1006A9A60(a1, v5, a3);
  }

  else if (!v4)
  {
    a1[1] = *a1 + 144 * a2;
  }
}

void sub_1006A97E8(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_101907EDC();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v3 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v3 = *v3;
    }

    v4 = *(a1 + 68);
    *buf = 136446722;
    *&buf[4] = v3;
    *&buf[12] = 1024;
    *&buf[14] = v4;
    v15 = 2048;
    v16 = sub_1006A9980(a1);
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "%{public}s,#ADL,clearing the buffer,old_sz,%d,len_sec,%.1f", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101907EF0(a1);
  }

  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = -1;
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v6 != v5)
  {
    v7 = v6 + 140;
    __asm { FMOV            V0.2D, #-1.0 }

    do
    {
      *buf = 0;
      *&buf[8] = 0;
      *(v7 - 132) = _Q0;
      *(v7 - 116) = *buf;
      *(v7 - 100) = 0xBFF0000000000000;
      *(v7 - 92) = 0;
      *(v7 - 84) = 0xBFF0000000000000;
      *(v7 - 76) = 0;
      *(v7 - 68) = _Q0;
      *(v7 - 52) = _Q0;
      *(v7 - 36) = 0xBFF0000000000000;
      *(v7 - 28) = 0u;
      v13 = v7 + 4;
      *(v7 - 12) = 0xBFF0000000000000;
      *(v7 - 4) = 0x700000000;
      v7 += 144;
    }

    while (v13 != v5);
  }
}

double sub_1006A9980(uint64_t a1)
{
  v1 = -1.0;
  if (*(a1 + 68) >= 2)
  {
    v3 = *(a1 + 64);
    while (v3 >= 2)
    {
      v4 = sub_100027CC4(a1, --v3);
      if (sub_100028030(v4) && *(v4 + 136))
      {
        return *(a1 + 8) * (*(a1 + 76) - vcvtpd_s64_f64(*(v4 + 16) / *(a1 + 8)));
      }
    }
  }

  return v1;
}

uint64_t sub_1006A9A14(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = vcvtpd_s64_f64(a2 / v2);
  v4 = *(a1 + 76);
  if (v4 < v3 || v4 - *(a1 + 64) >= v3)
  {
    return a1 + 80;
  }

  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((v4 - v3) / v2);
  }

  return sub_100027CC4(a1, v5);
}

void sub_1006A9A60(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0x8E38E38E38E38E39 * ((v5 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 144 * a2;
      v11 = a1[1];
      do
      {
        *v4 = off_1024DE5F8;
        v12 = *(a3 + 8);
        v13 = *(a3 + 24);
        v14 = *(a3 + 40);
        *(v4 + 56) = *(a3 + 56);
        *(v4 + 40) = v14;
        *(v4 + 24) = v13;
        *(v4 + 8) = v12;
        v15 = *(a3 + 72);
        v16 = *(a3 + 88);
        v17 = *(a3 + 104);
        *(v4 + 120) = *(a3 + 120);
        *(v4 + 104) = v17;
        *(v4 + 88) = v16;
        *(v4 + 72) = v15;
        *(v4 + 128) = *(a3 + 128);
        v4 += 144;
        v11 += 144;
      }

      while (v4 != v10);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1C71C71C71C71C7)
    {
      sub_10028C64C();
    }

    v8 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xE38E38E38E38E3)
    {
      v9 = 0x1C71C71C71C71C7;
    }

    else
    {
      v9 = v7;
    }

    v30 = a1;
    if (v9)
    {
      sub_1001EBF28(a1, v9);
    }

    v18 = 144 * v6;
    __p = 0;
    v27 = 144 * v6;
    v29 = 0;
    v19 = 144 * v6;
    do
    {
      *v19 = off_1024DE5F8;
      v20 = *(a3 + 8);
      v21 = *(a3 + 24);
      v22 = *(a3 + 40);
      *(v19 + 56) = *(a3 + 56);
      *(v19 + 40) = v22;
      *(v19 + 24) = v21;
      *(v19 + 8) = v20;
      v23 = *(a3 + 72);
      v24 = *(a3 + 88);
      v25 = *(a3 + 104);
      *(v19 + 120) = *(a3 + 120);
      *(v19 + 104) = v25;
      *(v19 + 88) = v24;
      *(v19 + 72) = v23;
      *(v19 + 128) = *(a3 + 128);
      v19 += 144;
      v18 += 144;
    }

    while (v19 != 144 * v6 + 144 * a2);
    v28 = 144 * v6 + 144 * a2;
    sub_1001EBF84(a1, &__p);
    if (v28 != v27)
    {
      v28 = (v28 - v27 - 144) % 0x90uLL + v27;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_1006A9CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A9D3C(uint64_t a1@<X8>)
{
  v2 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  do
  {
    v3 = *(a1 + 23);
    if ((v3 & 0x80u) != 0)
    {
      v3 = *(a1 + 8);
    }

    if (v3)
    {
      *(&v10.__r_.__value_.__s + 23) = 2;
      strcpy(&v10, ", ");
      v4 = strlen(off_10246AA28[v2]);
      v5 = std::string::append(&v10, off_10246AA28[v2], v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v12 = v5->__r_.__value_.__r.__words[2];
      *__p = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      if (v12 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if (v12 >= 0)
      {
        v8 = HIBYTE(v12);
      }

      else
      {
        v8 = __p[1];
      }

      std::string::append(a1, v7, v8);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v9 = strlen(off_10246AA28[v2]);
      std::string::append(a1, off_10246AA28[v2], v9);
    }

    ++v2;
  }

  while (v2 != 6);
}

void sub_1006A9E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A9EAC(uint64_t a1, const char *a2, uint64_t *a3, double a4)
{
  v13 = a4;
  sub_1006525CC(a1, a3, &v13);
  *a1 = off_10246AA68;
  sub_10018D404(a1 + 232);
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

  *(a1 + 295) = v6;
  v8 = (a1 + 272);
  if (v6)
  {
    memmove(v8, a2, v6);
  }

  *(v8 + v7) = 0;
  sub_100DD42E4((a1 + 296), 0, 0);
  if (sub_100023B68(a1 + 64))
  {
    v9 = (a1 + 272);
    if (*(a1 + 295) < 0)
    {
      v9 = *(a1 + 272);
    }

    sub_100608EC8(a1 + 64, v9, &qword_1026586C0, 0, 0);
    sub_100652718(a1);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019082B8();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning Database is not valid; not initializing", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019082E0(buf);
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLCellLocationDatabase::CLCellLocationDatabase(const char *, const CLSqliteDatabase::SqliteProperties &, double)", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  return a1;
}

void sub_1006AA128(_Unwind_Exception *a1)
{
  if (*(v1 + 295) < 0)
  {
    operator delete(*v2);
  }

  sub_1006526BC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1006AA164(uint64_t a1)
{
  *a1 = off_10246AA68;
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  return sub_1006526BC(a1);
}

void sub_1006AA1C8(uint64_t a1)
{
  sub_1006AA164(a1);

  operator delete();
}

char *sub_1006AA200@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[295] < 0)
  {
    return sub_100007244(a2, *(result + 34), *(result + 35));
  }

  *a2 = *(result + 17);
  *(a2 + 16) = *(result + 36);
  return result;
}

void sub_1006AA2A4(uint64_t a1)
{
  sub_10003848C(&v25);
  v2 = sub_100038730(v26, "SELECT ", 7);
  v3 = strlen("ROWID");
  v4 = sub_100038730(v2, "ROWID", v3);
  v5 = sub_100038730(v4, " FROM ", 6);
  v6 = (a1 + 272);
  if (*(a1 + 295) < 0)
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
  v14 = sub_100038730(v13, "LAC", 3);
  v15 = sub_100038730(v14, "=? AND ", 7);
  v16 = sub_100038730(v15, "CI", 2);
  v17 = sub_100038730(v16, "=? AND ", 7);
  v18 = sub_100038730(v17, "UARFCN", 6);
  v19 = sub_100038730(v18, "=? AND ", 7);
  v20 = sub_100038730(v19, "PSC", 3);
  sub_100038730(v20, "=? ", 3);
  if ((v29 & 0x10) != 0)
  {
    v22 = v28;
    if (v28 < v27)
    {
      v28 = v27;
      v22 = v27;
    }

    v23 = v26[6];
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v21 = 0;
      v31 = 0;
      goto LABEL_16;
    }

    v23 = v26[3];
    v22 = v26[5];
  }

  v21 = v22 - v23;
  if ((v22 - v23) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  v31 = v22 - v23;
  if (v21)
  {
    memmove(&__dst, v23, v21);
  }

LABEL_16:
  *(&__dst + v21) = 0;
  if (v31 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  sub_1000388D8(a1 + 64, p_dst);
}

void sub_1006AA908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1006AA994(uint64_t a1, int *a2, uint64_t a3)
{
  v52 = 0;
  if (sub_100DD42EC((a1 + 296)))
  {
LABEL_47:
    sub_100144CA0((a1 + 296), v55);
    v33 = sub_100008880(v55[0]);
    if (sub_100073700(v33, 1, *a2) && (v34 = sub_100008880(v55[0]), sub_100073700(v34, 2, a2[1])) && (v35 = sub_100008880(v55[0]), sub_100073700(v35, 3, a2[2])) && (v36 = sub_100008880(v55[0]), sub_100073700(v36, 4, a2[3])) && (v37 = sub_100008880(v55[0]), sub_100073700(v37, 5, a2[4])) && (v38 = sub_100008880(v55[0]), sub_100073700(v38, 6, a2[5])))
    {
      v39 = sub_100008880(v55[0]);
      sub_1001A3DEC(a1 + 64, v39);
      v52 = sub_100616934(a1 + 64);
      v40 = sub_100653624(a1, &v52, a3);
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1019082B8();
      }

      v41 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        sub_10016B7CC(&__dst);
        v42 = v57 >= 0 ? &__dst : __dst;
        *v58 = 136446210;
        *&v58[4] = v42;
        _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_FAULT, "failed to bind %{public}s", v58, 0xCu);
        if (v57 < 0)
        {
          operator delete(__dst);
        }
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019082E0(&__dst);
        sub_10016B7CC(v58);
        if (v59 >= 0)
        {
          v47 = v58;
        }

        else
        {
          v47 = *v58;
        }

        *buf = 136446210;
        *&buf[4] = v47;
        v48 = _os_log_send_and_compose_impl();
        if (SHIBYTE(v59) < 0)
        {
          operator delete(*v58);
        }

        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCellLocationDatabase::setLocation(const CLTelephonyService_Type::Cell &, const CLDaemonLocation &)", "%s\n", v48);
        if (v48 != &__dst)
        {
          free(v48);
        }
      }

      v40 = 0;
    }

    v43 = v55[0];
    v55[0] = 0;
    if (v43)
    {
      (*(*v43 + 8))(v43);
    }

    return v40;
  }

  sub_10003848C(v58);
  v6 = sub_100038730(&v59, "INSERT OR REPLACE INTO ", 23);
  v7 = (a1 + 272);
  if (*(a1 + 295) < 0)
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
  v15 = sub_100038730(v14, "LAC", 3);
  v16 = sub_100038730(v15, ", ", 2);
  v17 = sub_100038730(v16, "CI", 2);
  v18 = sub_100038730(v17, ", ", 2);
  v19 = sub_100038730(v18, "UARFCN", 6);
  v20 = sub_100038730(v19, ", ", 2);
  v21 = sub_100038730(v20, "PSC", 3);
  sub_100038730(v21, ") VALUES (?, ?, ?, ?, ?, ?)", 27);
  if (qword_1025D48A0 != -1)
  {
    sub_1019082B8();
  }

  v22 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    if ((v69 & 0x10) != 0)
    {
      v24 = v68;
      if (v68 < v65)
      {
        v68 = v65;
        v24 = v65;
      }

      v25 = __src;
    }

    else
    {
      if ((v69 & 8) == 0)
      {
        v23 = 0;
        v57 = 0;
LABEL_20:
        *(&__dst + v23) = 0;
        p_dst = &__dst;
        if (v57 < 0)
        {
          p_dst = __dst;
        }

        *buf = 136315138;
        *&buf[4] = p_dst;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "CELL_LOC: fInsertStatement [%s]", buf, 0xCu);
        if (v57 < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_24;
      }

      v25 = v62;
      v24 = v63;
    }

    v23 = v24 - v25;
    if (v24 - v25 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v23 >= 0x17)
    {
      operator new();
    }

    v57 = v24 - v25;
    if (v23)
    {
      memmove(&__dst, v25, v23);
    }

    goto LABEL_20;
  }

LABEL_24:
  if (sub_10000A100(121, 2))
  {
    sub_1019082E0(&__dst);
    sub_10003DD04(&v60, buf);
    if (v54 >= 0)
    {
      v49 = buf;
    }

    else
    {
      v49 = *buf;
    }

    LODWORD(v55[0]) = 136315138;
    *(v55 + 4) = v49;
    v50 = _os_log_send_and_compose_impl();
    if (v54 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellLocationDatabase::setLocation(const CLTelephonyService_Type::Cell &, const CLDaemonLocation &)", "%s\n", v50);
    if (v50 != &__dst)
    {
      free(v50);
    }
  }

  if ((v69 & 0x10) != 0)
  {
    v28 = v68;
    if (v68 < v65)
    {
      v68 = v65;
      v28 = v65;
    }

    v29 = __src;
  }

  else
  {
    if ((v69 & 8) == 0)
    {
      v27 = 0;
      v57 = 0;
      goto LABEL_38;
    }

    v29 = v62;
    v28 = v63;
  }

  v27 = v28 - v29;
  if (v28 - v29 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v27 >= 0x17)
  {
    operator new();
  }

  v57 = v28 - v29;
  if (v27)
  {
    memmove(&__dst, v29, v27);
  }

LABEL_38:
  *(&__dst + v27) = 0;
  if (v57 >= 0)
  {
    v30 = &__dst;
  }

  else
  {
    v30 = __dst;
  }

  *(a1 + 296) = sub_100614C1C(a1 + 64, v30);
  *(a1 + 304) = v31;
  if (v57 < 0)
  {
    operator delete(__dst);
  }

  if (sub_100DD42EC((a1 + 296)))
  {
    v59 = v32;
    if (v67 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v61);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    goto LABEL_47;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1019082B8();
  }

  v44 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    LOWORD(__dst) = 0;
    _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_FAULT, "Could not prepare cached insert statement", &__dst, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019082E0(&__dst);
    *buf = 0;
    v51 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCellLocationDatabase::setLocation(const CLTelephonyService_Type::Cell &, const CLDaemonLocation &)", "%s\n", v51);
    if (v51 != &__dst)
    {
      free(v51);
    }
  }

  v59 = v45;
  if (v67 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v61);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return 0;
}

void sub_1006AB440(_Unwind_Exception *a1)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1006AB524(uint64_t a1)
{
  *(&v29.__r_.__value_.__s + 23) = 7;
  strcpy(&v29, "SELECT ");
  sub_1006A9D3C(__p);
  if ((v28 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v3 = v28;
  }

  else
  {
    v3 = __p[1];
  }

  v4 = std::string::append(&v29, v2, v3);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v26 = 6;
  strcpy(__s, " FROM ");
  v6 = std::string::append(&v30, __s, 6uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a1 + 295);
  if (v8 >= 0)
  {
    v9 = (a1 + 272);
  }

  else
  {
    v9 = *(a1 + 272);
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 295);
  }

  else
  {
    v10 = *(a1 + 280);
  }

  v11 = std::string::append(&v31, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v24 = 7;
  strcpy(v23, " WHERE ");
  v13 = std::string::append(&v32, v23, 7uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = strlen("ROWID");
  v16 = std::string::append(&v33, "ROWID", v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v22 = 2;
  strcpy(v21, "=?");
  v18 = std::string::append(&v36, v21, 2uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v35 = v18->__r_.__value_.__r.__words[2];
  v34 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v22 < 0)
  {
    operator delete(*v21);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(*v23);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v26 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v35 >= 0)
  {
    v20 = &v34;
  }

  else
  {
    v20 = v34;
  }

  sub_1000388D8(a1 + 64, v20);
}

void sub_1006ABA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  if (a48 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006ABB30()
{
  qword_1026586C0 = "MCC";
  dword_1026586C8 = 1;
  word_1026586CC = 1;
  byte_1026586D0 = 0;
  byte_1026586E8 = 0;
  qword_1026586F0 = "MNC";
  dword_1026586F8 = 1;
  word_1026586FC = 1;
  byte_102658700 = 0;
  byte_102658718 = 0;
  qword_102658720 = "LAC";
  dword_102658728 = 1;
  word_10265872C = 1;
  byte_102658730 = 0;
  byte_102658748 = 0;
  qword_102658750 = "CI";
  dword_102658758 = 1;
  word_10265875C = 1;
  byte_102658760 = 0;
  byte_102658778 = 0;
  qword_102658780 = "UARFCN";
  dword_102658788 = 1;
  word_10265878C = 1;
  byte_102658790 = 0;
  byte_1026587A8 = 0;
  qword_1026587B0 = "PSC";
  dword_1026587B8 = 1;
  word_1026587BC = 1;
  byte_1026587C0 = 0;
  byte_1026587D8 = 0;
  qword_1026587E0 = "Timestamp";
  dword_1026587E8 = 2;
  word_1026587EC = 0;
  byte_1026587F0 = 0;
  byte_102658808 = 0;
  qword_102658810 = "Latitude";
  dword_102658818 = 2;
  word_10265881C = 0;
  byte_102658820 = 0;
  byte_102658838 = 0;
  qword_102658840 = "Longitude";
  dword_102658848 = 2;
  word_10265884C = 0;
  byte_102658850 = 0;
  byte_102658868 = 0;
  qword_102658870 = "HorizontalAccuracy";
  dword_102658878 = 2;
  word_10265887C = 0;
  byte_102658880 = 0;
  byte_102658898 = 0;
  qword_1026588A0 = "Altitude";
  dword_1026588A8 = 2;
  word_1026588AC = 0;
  byte_1026588B0 = 0;
  byte_1026588C8 = 0;
  qword_1026588D0 = "VerticalAccuracy";
  dword_1026588D8 = 2;
  word_1026588DC = 0;
  byte_1026588E0 = 0;
  byte_1026588F8 = 0;
  qword_102658900 = "Speed";
  dword_102658908 = 2;
  word_10265890C = 0;
  byte_102658910 = 0;
  byte_102658928 = 0;
  qword_102658930 = "Course";
  dword_102658938 = 2;
  word_10265893C = 0;
  byte_102658940 = 0;
  byte_102658958 = 0;
  qword_102658960 = "Confidence";
  dword_102658968 = 1;
  word_10265896C = 0;
  byte_102658970 = 0;
  byte_102658988 = 0;
  qword_102658990 = 0;
  dword_102658998 = 5;
  word_10265899C = 0;
  byte_1026589A0 = 0;
  byte_1026589B8 = 0;
}

uint64_t sub_1006ABE08(uint64_t a1)
{
  if (*(a1 + 2148) == *(a1 + 2146))
  {
    return sub_1006ADE68(a1, 4);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1006ABE28(uint64_t a1)
{
  if (*(a1 + 8440))
  {
    return 1;
  }

  else
  {
    return sub_1006ADE68(a1, 7);
  }
}

uint64_t sub_1006ABE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_10246AAB8;
  *(a1 + 8) = 34;
  *(a1 + 16) = 512;
  *(a1 + 24) = 0x1800000000;
  *(a1 + 2144) = 0x1800000000;
  *(a1 + 2344) = 0x1800000000;
  *(a1 + 2744) = 0;
  *(a1 + 2752) = 0x7FEFFFFFFFFFFFFFLL;
  v6 = a1 + 2760;
  sub_100C4BEA8(a1 + 2760);
  *(a1 + 8432) = a3;
  *(a1 + 8440) = 0;
  buf[0] = 0;
  sub_100126E84((a1 + 8441), "DisableAutostartSwimPressureCheck", buf, 0);
  sub_100C4C20C(v6, 2u);
  v7 = *(a2 + 104);
  v8 = 112;
  if (v7 == 6)
  {
    v8 = 80;
  }

  *(a1 + 2736) = *(a2 + v8);
  if (v7 > 7)
  {
    if (v7 == 41)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_101908324();
      }

      v9 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Tier2Smoother, tracking alternate walk escalation", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190834C(buf);
        v11 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLWorkoutPredictorTier2Smoother::CLWorkoutPredictorTier2Smoother(const CLMotionActivity &, const CLWorkoutPredictorInputs &)", "%s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      sub_1000CE87C(a1, 10, buf);
    }

    else if (v7 == 8)
    {
      sub_1000CE87C(a1, 1, buf);
    }
  }

  else if (v7 == 4)
  {
    sub_1000CE87C(a1, 2, buf);
  }

  else if (v7 == 6)
  {
    sub_1000CE87C(a1, 12, buf);
  }

  return a1;
}

uint64_t sub_1006AC0FC(uint64_t result, double a2)
{
  if (*(result + 16))
  {
    *(result + 2744) = 0;
  }

  else
  {
    v4 = *(result + 2744) + a2;
    *(result + 2744) = v4;
    if (v4 > 180.0)
    {
      *&v5[1] = v2;
      v6 = v3;
      return sub_1000CE87C(result, 9, v5);
    }
  }

  return result;
}

uint64_t sub_1006AC154(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1026589D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026589D8))
  {
    v15[0] = 0x500000000;
    qword_1026589C8 = 0;
    unk_1026589D0 = 0;
    qword_1026589C0 = 0;
    sub_1004579D4(&qword_1026589C0, v15, &v15[1], 2uLL);
    __cxa_atexit(sub_10051F310, &qword_1026589C0, dword_100000000);
    __cxa_guard_release(&qword_1026589D8);
  }

  v16 = 0;
  *v15 = xmmword_101C78400;
  memset(&v15[2], 0, 135);
  v17 = xmmword_101C78400;
  v18 = 0;
  v19 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0u;
  v25 = xmmword_101C78400;
  v26 = 0;
  v27 = 0;
  v28 = 0xFFEFFFFFFFFFFFFFLL;
  v39 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  v40 = 0u;
  v41 = 0xFFEFFFFFFFFFFFFFLL;
  v42 = 0;
  v43 = 0;
  v48 = 0;
  v49 = 0;
  v54 = 0;
  v46 = 0u;
  memset(v47, 0, sizeof(v47));
  v44 = 0u;
  v45 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  memset(v53, 0, sizeof(v53));
  v55 = 0xFFEFFFFFFFFFFFFFLL;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0xFFEFFFFFFFFFFFFFLL;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0xFFEFFFFFFFFFFFFFLL;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0xFFEFFFFFFFFFFFFFLL;
  v87 = 0u;
  v88 = 0x80000000800000;
  v89 = 0u;
  v90 = xmmword_101C78410;
  v91 = 0x80000000800000;
  v92 = 0u;
  v93 = 0u;
  v94 = 0;
  v95 = 0xFFEFFFFFFFFFFFFFLL;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0;
  v103 = 0xFFEFFFFFFFFFFFFFLL;
  v104 = 0;
  v105 = 0;
  v106 = 0xFFEFFFFFFFFFFFFFLL;
  v107 = 7;
  v108 = 0xFFEFFFFFFFFFFFFFLL;
  v109 = 0;
  v111 = 0;
  v110 = 0u;
  v2 = sub_1000C2B7C(*(a1 + 8432), &qword_1026589C0, v15);
  if (v2)
  {
    v13[2] = *&v15[7];
    v13[3] = *&v15[9];
    v13[4] = *&v15[11];
    v14 = v15[13];
    v13[0] = *&v15[3];
    v13[1] = *&v15[5];
    sub_1006AC654((a1 + 24), v13);
    if ((atomic_load_explicit(&qword_1026589F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026589F0))
    {
      v12 = 0;
      sub_1004861C8(&byte_1026589E0, "WorkoutPredictorTier2ClassifierOverride", &v12, 0);
      __cxa_guard_release(&qword_1026589F0);
    }

    if (byte_1026589E0)
    {
      v3 = dword_1026589E4;
    }

    else
    {
      v3 = v77;
    }

    v4 = *(a1 + 2146);
    v5 = *(a1 + 2148);
    v6 = *(a1 + 2144);
    if (v6 + v4 >= v5)
    {
      v7 = *(a1 + 2148);
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 8 * (v6 + v4 - v7) + 2152) = v3;
    if (v5 <= v4)
    {
      if (v6 + 1 < v5)
      {
        LOWORD(v5) = 0;
      }

      *(a1 + 2144) = v6 + 1 - v5;
    }

    else
    {
      *(a1 + 2146) = v4 + 1;
    }

    sub_1006AC6D8(a1, v3);
    sub_1006AC73C(a1, v13);
    sub_1006AC7B8(a1);
    v8 = (*(***(a1 + 8432) + 32))(**(a1 + 8432));
    sub_1000C042C(v8);
    sub_1006AC8BC(a1);
    v9 = (*(***(a1 + 8432) + 72))(**(a1 + 8432));
    sub_1006ACA0C(v9);
    v10 = (*(***(a1 + 8432) + 80))(**(a1 + 8432));
    sub_1006ACAA8(v10);
    sub_1006ACB44(a1);
  }

  return v2;
}

unsigned __int16 *sub_1006AC654(unsigned __int16 *result, uint64_t a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[44 * (v3 - v2)];
  v6 = *(a2 + 48);
  v5 = *(a2 + 64);
  v7 = *(a2 + 32);
  *(v4 + 11) = *(a2 + 80);
  v8 = *(a2 + 16);
  *(v4 + 4) = *a2;
  *(v4 + 12) = v8;
  *(v4 + 20) = v7;
  *(v4 + 36) = v5;
  *(v4 + 28) = v6;
  v9 = result[1];
  v10 = *(result + 1);
  if (v10 <= v9)
  {
    v11 = *result + 1;
    if (v11 < v10)
    {
      LOWORD(v10) = 0;
    }

    *result = v11 - v10;
  }

  else
  {
    result[1] = v9 + 1;
  }

  return result;
}

uint64_t sub_1006AC6D8(uint64_t result, uint64_t a2)
{
  if (a2 == 12 || a2 == 9)
  {
    v3 = (*(***(result + 8432) + 16))(**(result + 8432));

    return sub_1006AE61C(v3);
  }

  return result;
}

uint64_t sub_1006AC73C(uint64_t result, uint64_t a2)
{
  HIDWORD(v3) = *(a2 + 56) - 16;
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 4;
  if (v2 > 2)
  {
    if (v2 == 7)
    {
      v4 = &v6;
      v5 = 12;
    }

    else
    {
      if (v2 != 3)
      {
        return result;
      }

      v4 = &v9;
      v5 = 1;
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    v4 = &v7;
    v5 = 10;
  }

  else
  {
    v4 = &v8;
    v5 = 2;
  }

  return sub_1000CE87C(result, v5, v4);
}

uint64_t sub_1006AC7B8(uint64_t result)
{
  v3 = *(result + 26);
  if (*(result + 28) == v3)
  {
    v10 = v1;
    v11 = v2;
    v4 = result;
    if (v3 < 0xF)
    {
      goto LABEL_6;
    }

    v5 = 1;
    v6 = 14;
    do
    {
      result = sub_1006AEF74((v4 + 24), v6);
      v5 &= *result != 64;
      ++v6;
    }

    while (v6 < *(v4 + 26));
    if (v5)
    {
LABEL_6:
      if (qword_1025D43F0 != -1)
      {
        sub_101908390();
      }

      v7 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Tier2Smoother attempted de-escalating due to no Running calls in Tier 1 Classifier", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019083A4();
      }

      return sub_1000CE87C(v4, 6, &v8);
    }
  }

  return result;
}

uint64_t sub_1006AC8BC(uint64_t a1)
{
  result = sub_100C4BEF8(a1 + 2760, *(a1 + 8432));
  v3 = result;
  if (*(a1 + 2148) != *(a1 + 2146) || (*(a1 + 8440) & 1) != 0)
  {
    v4 = 0;
    if (result)
    {
      goto LABEL_7;
    }

LABEL_6:
    if (!v4)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = sub_1006ADE68(a1, 4);
  v4 = (result ^ 1);
  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (qword_1025D43F0 != -1)
  {
    sub_101908390();
  }

  v5 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67240448;
    v6[1] = v3 & 1;
    v7 = 1026;
    v8 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Tier2Smoother,ped auto-stop detected,%{public}d,ped de-escalation from exercise minutes,%{public}d", v6, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101908480(v3, v4);
  }

  return sub_1000CE87C(a1, 7, v6);
}

uint64_t sub_1006ACA0C(uint64_t result)
{
  if (*(result + 64) != -1.0)
  {
    v1 = result;
    if ((*(result + 8) & 1) == 0)
    {
      result = (*(*result + 16))(result);
      if (result)
      {
        *(v1 + 8) = 1;
      }

      else if ((*(v1 + 8) & 1) == 0)
      {
        v2 = 2.22507386e-308;
        goto LABEL_7;
      }
    }

    v2 = *(v1 + 64) + 30.0;
LABEL_7:
    *(v1 + 72) = v2;
  }

  return result;
}

uint64_t sub_1006ACAA8(uint64_t result)
{
  if (*(result + 64) != -1.0)
  {
    v1 = result;
    if ((*(result + 8) & 1) == 0)
    {
      result = (*(*result + 16))(result);
      if (result)
      {
        *(v1 + 8) = 1;
      }

      else if ((*(v1 + 8) & 1) == 0)
      {
        v2 = 2.22507386e-308;
        goto LABEL_7;
      }
    }

    v2 = *(v1 + 64) + 30.0;
LABEL_7:
    *(v1 + 72) = v2;
  }

  return result;
}

void sub_1006ACB44(uint64_t a1)
{
  if (!*(a1 + 2146))
  {
    goto LABEL_33;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = *sub_1006AED78((a1 + 2144), v2);
    if (v8 <= 8)
    {
      if (v8 == 1)
      {
        ++v6;
        goto LABEL_14;
      }

      if (v8 != 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v8 == 9)
      {
        ++v4;
        goto LABEL_14;
      }

      if (v8 == 12)
      {
        ++v5;
        goto LABEL_14;
      }

      if (v8 != 19)
      {
LABEL_10:
        ++v7;
        goto LABEL_14;
      }

      ++v3;
    }

LABEL_14:
    if (++v2 >= *(a1 + 2146))
    {
      if (v3 > 18)
      {
        v9 = &v18;
        v10 = a1;
        v11 = 3;
        goto LABEL_32;
      }

      if (v4 >= 19)
      {
        v9 = &v17;
        v10 = a1;
        v11 = 5;
        goto LABEL_32;
      }

      if (v5 >= 19)
      {
        v9 = &v16;
        v10 = a1;
        v11 = 4;
        goto LABEL_32;
      }

      if (v7 < 13)
      {
        if (*(a1 + 8440) == 1 && v6 >= 19)
        {
          v9 = &v13;
          v10 = a1;
          v11 = 2;
          goto LABEL_32;
        }
      }

      else
      {
        if (qword_1025D43F0 != -1)
        {
          sub_101908390();
        }

        v12 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Tier2Smoother attemped de-escalating due to Unknown calls in Tier 2 Classifier", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101908594();
        }

        v9 = &v14;
        v10 = a1;
        v11 = 8;
LABEL_32:
        sub_1000CE87C(v10, v11, v9);
      }

LABEL_33:
      sub_1006AD370(a1);
    }
  }
}

void sub_1006ACD30(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102658A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102658A50))
  {
    v4[0] = 0x20000000BLL;
    qword_102658A40 = 0;
    unk_102658A48 = 0;
    qword_102658A38 = 0;
    sub_1004579D4(&qword_102658A38, v4, &v4[1], 2uLL);
    __cxa_atexit(sub_10051F310, &qword_102658A38, dword_100000000);
    __cxa_guard_release(&qword_102658A50);
  }

  if (*(a1 + 16) == 8)
  {
    v5 = 0;
    *v4 = xmmword_101C78400;
    memset(&v4[2], 0, 135);
    v6 = xmmword_101C78400;
    v7 = 0;
    v8 = 0;
    memset(v9, 0, sizeof(v9));
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0u;
    v14 = xmmword_101C78400;
    v15 = 0;
    v16 = 0;
    v17 = -1.79769313e308;
    v28 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    memset(v27, 0, sizeof(v27));
    v29 = 0u;
    v30 = 0xFFEFFFFFFFFFFFFFLL;
    v31 = 0;
    v32 = 0;
    v37 = 0;
    v38 = 0;
    v43 = 0;
    v35 = 0u;
    memset(v36, 0, sizeof(v36));
    v33 = 0u;
    v34 = 0u;
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    memset(v42, 0, sizeof(v42));
    v44 = 0xFFEFFFFFFFFFFFFFLL;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0xFFEFFFFFFFFFFFFFLL;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0xFFEFFFFFFFFFFFFFLL;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0xFFEFFFFFFFFFFFFFLL;
    v76 = 0u;
    v77 = 0x80000000800000;
    v78 = 0u;
    v79 = xmmword_101C78410;
    v80 = 0x80000000800000;
    v81 = 0u;
    v82 = 0u;
    v83 = 0;
    v84 = 0xFFEFFFFFFFFFFFFFLL;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0;
    v92 = 0xFFEFFFFFFFFFFFFFLL;
    v93 = 0;
    v94 = 0;
    v95 = -1.79769313e308;
    v96 = 7;
    v97 = 0xFFEFFFFFFFFFFFFFLL;
    v98 = 0;
    v100 = 0;
    v99 = 0u;
    sub_1000C2B7C(*(a1 + 8432), &qword_102658A38, v4);
    if (v95 != -1.79769313e308)
    {
      v2 = 0;
      if (v17 != -1.79769313e308 && *&v20 > 0.0)
      {
        v2 = v20;
      }

      LODWORD(v3) = v96;
      *(&v3 + 1) = v2;
      sub_1000A3054((a1 + 2344), &v3);
    }
  }
}

uint64_t sub_1006AD040(uint64_t result)
{
  if (*(result + 2346))
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = -1.79769313e308;
    do
    {
      v8 = *sub_1006AF234((v1 + 2344), v4);
      if (v8 == 2 || v8 == 13)
      {
        ++v3;
      }

      if (v8 == 14)
      {
        ++v6;
      }

      if (v8 == 6 || ((++v2, v16 = v8 > 5, v10 = (1 << v8) & 0x31, !v16) ? (v11 = v10 == 0) : (v11 = 1), !v11))
      {
        ++v5;
      }

      result = sub_1006AF234((v1 + 2344), v4);
      if (*(result + 8) > v7)
      {
        result = sub_1006AF234((v1 + 2344), v4);
        v7 = *(result + 8);
      }

      ++v4;
      v12 = *(v1 + 2346);
    }

    while (v4 < v12);
    v15 = v2 < 0xC && v3 < 4 && v6 < 4;
    v16 = v12 != v5 || v7 <= 2.2352;
    if (v16 && !v15)
    {
      return sub_1000CE87C(v1, 11, &v17);
    }
  }

  return result;
}

uint64_t sub_1006AD170(uint64_t a1)
{
  if ((*(a1 + 16) - 1) > 7u)
  {
    return 25;
  }

  else
  {
    return qword_101C889F8[(*(a1 + 16) - 1)];
  }
}

uint64_t sub_1006AD1A0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102658A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102658A68))
  {
    v4 = 1;
    sub_1004861C8(&byte_102658A58, "WorkoutPredictorTier2ConfidenceOverride", &v4, 0);
    __cxa_guard_release(&qword_102658A68);
  }

  if (byte_102658A58 == 1)
  {
    return dword_102658A5C;
  }

  v3 = sub_1006AD170(a1);
  if (v3 == 4)
  {
    return sub_1006AF1C4(a1);
  }

  if (v3 == 1)
  {
    return sub_1006AF174(a1);
  }

  return sub_1006AEA44(a1);
}

void sub_1006AD288(uint64_t a1, void *a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_101908390();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67240192;
    v5[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Tier2Smoother, set rapid walking detection, %{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101908670(a2);
  }

  *(a1 + 8440) = a2;
}

void sub_1006AD370(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102658A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102658A00))
  {
    sub_10183A3AC(buf, "WorkoutPredictorDistanceThresholdForMachineWorkouts", &qword_101C88668, 0);
    qword_1026589F8 = v8;
    __cxa_guard_release(&qword_102658A00);
  }

  if ((atomic_load_explicit(&qword_102658A10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_102658A10))
    {
      sub_10183A3AC(buf, "WorkoutPredictorDistanceLookbackForMachineWorkouts", &qword_101C88670, 0);
      qword_102658A08 = v8;
      __cxa_guard_release(&qword_102658A10);
    }
  }

  v2 = *&qword_102658A08;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = Current - v2;
  v3 = 0;
  v4 = 0;
  (*(***(a1 + 8432) + 16))(**(a1 + 8432));
  operator new();
}

void sub_1006AD794(uint64_t a1)
{
  v2 = 0;
  v1 = 0;
  (*(***(a1 + 8432) + 72))(**(a1 + 8432));
  operator new();
}

void *sub_1006ADA34(void *result, uint64_t a2)
{
  v2 = result[7];
  if (v2)
  {
    v3 = result[6];
    v4 = v3 + v2;
    v5 = (v3 + v2) >> 8;
    v6 = result[3];
    v7 = (v6 + 8 * v5);
    if (result[4] == v6)
    {
      v10 = 0;
      v12 = v7;
      v13 = 0;
      v14 = v7;
      v15 = 0;
      v9 = (v6 + 8 * (v3 >> 8));
    }

    else
    {
      v8 = *v7 + 16 * v4;
      v12 = v7;
      v13 = v8;
      v14 = v7;
      v15 = v8;
      v9 = (v6 + 8 * (v3 >> 8));
      v10 = *v9 + 16 * v3;
    }

    v11[0] = v9;
    v11[1] = v10;
    v11[2] = v9;
    v11[3] = v10;
    sub_10069F028(v16, a2);
    sub_1006B0170(&v12, v11, v16, v17);
    sub_100698A6C(v17);
    return sub_100698A6C(v16);
  }

  return result;
}

void sub_1006ADB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_100698A6C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006ADB30(uint64_t a1)
{
  if ((*(a1 + 8442) & 1) == 0)
  {
    v2 = CFAbsoluteTimeGetCurrent() + -300.0 + 10.0;
    v3 = (*(***(a1 + 8432) + 72))(**(a1 + 8432));
    if (sub_1000BC56C(v3, &v6, v2))
    {
      CFAbsoluteTimeGetCurrent();
      sub_1006AD794(a1);
    }

    if (qword_1025D43F0 != -1)
    {
      sub_101908324();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Tier2Smoother swimcheck, failed to get first entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190876C();
    }
  }

  return 1;
}

uint64_t sub_1006ADE68(uint64_t a1, int a2)
{
  if (sub_1006AE244(a1) <= 720.0)
  {
    CFAbsoluteTimeGetCurrent();
    if (a2 == 4 || a2 == 7)
    {
      (*(***(a1 + 8432) + 80))(**(a1 + 8432));
      operator new();
    }

    if (qword_1025D43F0 != -1)
    {
      sub_101908390();
    }

    v6 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v8) = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Tier2Smoother,passed unknown threshold of %d", buf, 8u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101908848();
      return 0;
    }
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101908390();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Tier2Smoother, bypassing exercise minute requirements for sustained walking", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101908954();
    }

    return 1;
  }

  return result;
}

double sub_1006AE244(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102658A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102658A88))
  {
    LODWORD(v5[0]) = 0;
    qword_102658A78 = 0;
    unk_102658A80 = 0;
    qword_102658A70 = 0;
    sub_1004579D4(&qword_102658A70, v5, v5 + 4, 1uLL);
    __cxa_atexit(sub_10051F310, &qword_102658A70, dword_100000000);
    __cxa_guard_release(&qword_102658A88);
  }

  v6 = 0;
  *v5 = xmmword_101C78400;
  memset(&v5[2], 0, 135);
  v7 = xmmword_101C78400;
  v8 = 0;
  v9 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0u;
  v15 = xmmword_101C78400;
  v16 = 0;
  v17 = 0;
  v18 = 0xFFEFFFFFFFFFFFFFLL;
  v29 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  v30 = 0u;
  v31 = 0xFFEFFFFFFFFFFFFFLL;
  v32 = 0;
  v33 = 0;
  v38 = 0;
  v39 = 0;
  v44 = 0;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v34 = 0u;
  v35 = 0u;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  memset(v43, 0, sizeof(v43));
  v45 = 0xFFEFFFFFFFFFFFFFLL;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0xFFEFFFFFFFFFFFFFLL;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0xFFEFFFFFFFFFFFFFLL;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0xFFEFFFFFFFFFFFFFLL;
  v77 = 0u;
  v78 = 0x80000000800000;
  v79 = 0u;
  v80 = xmmword_101C78410;
  v81 = 0x80000000800000;
  v82 = 0u;
  v83 = 0u;
  v84 = 0;
  v85 = 0xFFEFFFFFFFFFFFFFLL;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0;
  v93 = 0xFFEFFFFFFFFFFFFFLL;
  v94 = 0;
  v95 = 0;
  v96 = 0xFFEFFFFFFFFFFFFFLL;
  v97 = 7;
  v98 = 0xFFEFFFFFFFFFFFFFLL;
  v99 = 0;
  v101 = 0;
  v100 = 0u;
  v2 = sub_1000C2B7C(*(a1 + 8432), &qword_102658A70, v5);
  result = 0.0;
  if (v2)
  {
    v4 = *(a1 + 2736);
    if (*&v5[1] > v4)
    {
      return *&v5[1] - v4;
    }
  }

  return result;
}

void *sub_1006AE4FC(void *result, uint64_t a2)
{
  v2 = result[7];
  if (v2)
  {
    v3 = result[6];
    v4 = v3 + v2;
    v5 = (v3 + v2) / 0xAA;
    v6 = result[3];
    if (result[4] == v6)
    {
      v9 = 0;
      v11 = v6 + 8 * v5;
      v12 = 0;
      v13 = v11;
      v14 = 0;
      v8 = (v6 + 8 * (v3 / 0xAA));
    }

    else
    {
      v7 = *(v6 + 8 * v5);
      v11 = v6 + 8 * v5;
      v12 = v7 + 24 * (v4 - 170 * v5);
      v13 = v11;
      v14 = v12;
      v8 = (v6 + 8 * (v3 / 0xAA));
      v9 = *v8 + 24 * (v3 % 0xAA);
    }

    v10[0] = v8;
    v10[1] = v9;
    v10[2] = v8;
    v10[3] = v9;
    sub_10069F14C(v15, a2);
    sub_1006B0408(&v11, v10, v15, v16);
    sub_100698924(v16);
    return sub_100698924(v15);
  }

  return result;
}

void sub_1006AE600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_100698924(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006AE61C(uint64_t result)
{
  if (*(result + 64) != -1.0)
  {
    v1 = result;
    if ((*(result + 8) & 1) == 0)
    {
      result = (*(*result + 16))(result);
      if (result)
      {
        *(v1 + 8) = 1;
      }

      else if ((*(v1 + 8) & 1) == 0)
      {
        v2 = 2.22507386e-308;
        goto LABEL_7;
      }
    }

    v2 = *(v1 + 64) + 30.0;
LABEL_7:
    *(v1 + 72) = v2;
  }

  return result;
}

void sub_1006AE6B8(uint64_t a1, int *a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_101908390();
  }

  v3 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Tier2Smoother, deescalating from distance accumulation, distance, %f", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101908A38(a2);
  }
}

uint64_t sub_1006AE790(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102658A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102658A30))
  {
    LODWORD(v3) = 0;
    qword_102658A20 = 0;
    unk_102658A28 = 0;
    qword_102658A18 = 0;
    sub_1004579D4(&qword_102658A18, &v3, &v3 + 4, 1uLL);
    __cxa_atexit(sub_10051F310, &qword_102658A18, dword_100000000);
    __cxa_guard_release(&qword_102658A30);
  }

  v12 = 0;
  v3 = xmmword_101C78400;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v13 = xmmword_101C78400;
  v14 = 0;
  v15 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0u;
  v21 = xmmword_101C78400;
  v22 = 0;
  v23 = 0;
  v24 = 0xFFEFFFFFFFFFFFFFLL;
  v35 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v36 = 0u;
  v37 = 0xFFEFFFFFFFFFFFFFLL;
  v38 = 0;
  v39 = 0;
  v44 = 0;
  v45 = 0;
  v50 = 0;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v40 = 0u;
  v41 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  memset(v49, 0, sizeof(v49));
  v51 = 0xFFEFFFFFFFFFFFFFLL;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0xFFEFFFFFFFFFFFFFLL;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0xFFEFFFFFFFFFFFFFLL;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0xFFEFFFFFFFFFFFFFLL;
  v83 = 0u;
  v84 = 0x80000000800000;
  v85 = 0u;
  v86 = xmmword_101C78410;
  v87 = 0x80000000800000;
  v88 = 0u;
  v89 = 0u;
  v90 = 0;
  v91 = 0xFFEFFFFFFFFFFFFFLL;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0;
  v99 = 0xFFEFFFFFFFFFFFFFLL;
  v100 = 0;
  v101 = 0;
  v102 = 0xFFEFFFFFFFFFFFFFLL;
  v103 = 7;
  v104 = 0xFFEFFFFFFFFFFFFFLL;
  v105 = 0;
  v107 = 0;
  v106 = 0u;
  result = sub_1000C2B7C(*(a1 + 8432), &qword_102658A18, &v3);
  if (*&v4 != 0.0)
  {
    *(a1 + 2736) = v4;
  }

  return result;
}

BOOL sub_1006AEA44(uint64_t a1)
{
  if (*(a1 + 2148) == *(a1 + 2146) && *(a1 + 28) == *(a1 + 26))
  {
    if (*sub_1006AED78((a1 + 2144), 0x13uLL))
    {
      v2 = 0;
    }

    else
    {
      v4 = 19;
      do
      {
        v5 = v4;
        if (v4 == 23)
        {
          break;
        }

        ++v4;
      }

      while (!*sub_1006AED78((a1 + 2144), v5 + 1));
      v2 = v5 > 0x16;
    }

    if (*sub_1006AEF74((a1 + 24), 0x13uLL) == 0x200000)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v9 = 20;
      do
      {
        if (*sub_1006AEF74((a1 + 24), v9 - 1) == 16)
        {
          break;
        }

        if (*sub_1006AEF74((a1 + 24), v9 - 1) == 64)
        {
          break;
        }

        v6 = v9 - 1 > 0x16;
        if (v9 == 24)
        {
          break;
        }

        v10 = sub_1006AEF74((a1 + 24), v9++);
      }

      while (*v10 != 0x200000);
    }

    v7 = *sub_1006AED78((a1 + 2144), 0x13uLL);
    if (v7 == sub_1006AD170(a1))
    {
      v8 = 0;
    }

    else
    {
      v11 = 19;
      do
      {
        v12 = v11;
        if (v11 == 23)
        {
          break;
        }

        ++v11;
        v13 = *sub_1006AED78((a1 + 2144), v12 + 1);
      }

      while (v13 != sub_1006AD170(a1));
      v8 = v12 > 0x16;
    }

    if (qword_1025D43F0 != -1)
    {
      sub_101908390();
    }

    v3 = !v2 && !v6 && !v8;
    v14 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      v18 = v2;
      v19 = 1024;
      v20 = v6;
      v21 = 1024;
      v22 = v8;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Tier2Smoother,WorkoutPauseFlags,flagLastEpochsUnknown,%d,flagNoPatternInTier1,%d,flagNoCurrentStateInLastEpochs,%d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_101908324();
      }

      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLWorkoutClassifier_Type::Confidence CLWorkoutPredictorTier2Smoother::getWorkoutConfidenceForPatternedMotion() const", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t sub_1006AED78(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10246AFB8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10246AFB8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMWorkoutType>::operator[](const size_t) const [T = CMWorkoutType]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[4 * (v4 - v5) + 4];
}

uint64_t sub_1006AEF74(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10246AFB8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10246AFB8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMMotionContext::MotionState>::operator[](const size_t) const [T = CMMotionContext::MotionState]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[44 * (v4 - v5) + 4];
}

uint64_t sub_1006AF174(uint64_t a1)
{
  v2 = sub_1006AEA44(a1);
  if (*(a1 + 8440))
  {
    LODWORD(result) = 1;
  }

  else
  {
    LODWORD(result) = sub_1006ADE68(a1, 7);
  }

  if (v2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006AF1C4(uint64_t a1)
{
  if (*(a1 + 2348) != *(a1 + 2346))
  {
    return 0;
  }

  v2 = 19;
  while (*sub_1006AF234((a1 + 2344), v2) != 6)
  {
    if (++v2 == 24)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1006AF234(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10246AFB8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10246AFB8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLWorkoutPredictorTier2Smoother::CyclingDescalationEntry>::operator[](const size_t) const [T = CLWorkoutPredictorTier2Smoother::CyclingDescalationEntry]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[8 * (v4 - v5) + 4];
}

void *sub_1006AF460(void *result, uint64_t a2)
{
  v2 = result[7];
  if (v2)
  {
    v3 = result[6];
    v4 = v3 + v2;
    v5 = ((v3 + v2) * 0x8618618618618619) >> 64;
    v6 = (v5 + ((v4 - v5) >> 1)) >> 4;
    v7 = result[3];
    if (result[4] == v7)
    {
      v10 = 0;
      v12 = v7 + 8 * v6;
      v13 = 0;
      v14 = v12;
      v15 = 0;
      v9 = (v7 + 8 * (v3 / 0x15));
    }

    else
    {
      v8 = *(v7 + 8 * v6);
      v12 = v7 + 8 * v6;
      v13 = v8 + 192 * (v4 - 21 * v6);
      v14 = v12;
      v15 = v13;
      v9 = (v7 + 8 * (v3 / 0x15));
      v10 = *v9 + 192 * (v3 % 0x15);
    }

    v11[0] = v9;
    v11[1] = v10;
    v11[2] = v9;
    v11[3] = v10;
    sub_10069DF74(v16, a2);
    sub_1006AF5A0(&v12, v11, v16, v17);
    sub_10069A82C(v17);
    return sub_10069A82C(v16);
  }

  return result;
}

void sub_1006AF584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10069A82C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006AF5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 24);
  if (v6 != *(a2 + 24))
  {
    v9 = *(a1 + 16);
    do
    {
      if (v6 == *v9)
      {
        v6 = *(v9 - 1) + 4032;
      }

      v10 = *(a3 + 24);
      if (!v10)
      {
        sub_1000CF05C();
      }

      (*(*v10 + 48))(v10, v6 - 192);
      v9 = *(a1 + 16);
      v11 = *(a1 + 24);
      if (v11 == *v9)
      {
        *(a1 + 16) = v9 - 1;
        v11 = *--v9 + 4032;
      }

      v6 = v11 - 192;
      *(a1 + 24) = v6;
    }

    while (*(a2 + 24) != v6);
  }

  return sub_1006AF680(a4, a3);
}

uint64_t sub_1006AF680(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

__n128 sub_1006AF77C(uint64_t a1, uint64_t a2)
{
  *a2 = off_10246AE18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double sub_1006AF7B4(uint64_t a1, double *a2)
{
  result = *a2;
  if (*a2 >= **(a1 + 8) && result <= **(a1 + 16))
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    result = a2[1] + *v3;
    *v3 = result;
    ++*v4;
  }

  return result;
}

uint64_t sub_1006AF7FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006AFAA0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1025D7DE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D7DE8))
  {
    LODWORD(v3) = 0;
    qword_1025D7DD8 = 0;
    unk_1025D7DE0 = 0;
    qword_1025D7DD0 = 0;
    sub_1004579D4(&qword_1025D7DD0, &v3, &v3 + 4, 1uLL);
    __cxa_atexit(sub_10051F310, &qword_1025D7DD0, dword_100000000);
    __cxa_guard_release(&qword_1025D7DE8);
  }

  v12 = 0;
  v3 = xmmword_101C78400;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v13 = xmmword_101C78400;
  v14 = 0;
  v15 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0u;
  v21 = xmmword_101C78400;
  v22 = 0;
  v23 = 0;
  v24 = 0xFFEFFFFFFFFFFFFFLL;
  v35 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v36 = 0u;
  v37 = 0xFFEFFFFFFFFFFFFFLL;
  v38 = 0;
  v39 = 0;
  v44 = 0;
  v45 = 0;
  v50 = 0;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v40 = 0u;
  v41 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  memset(v49, 0, sizeof(v49));
  v51 = 0xFFEFFFFFFFFFFFFFLL;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0xFFEFFFFFFFFFFFFFLL;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0xFFEFFFFFFFFFFFFFLL;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0xFFEFFFFFFFFFFFFFLL;
  v83 = 0u;
  v84 = 0x80000000800000;
  v85 = 0u;
  v86 = xmmword_101C78410;
  v87 = 0x80000000800000;
  v88 = 0u;
  v89 = 0u;
  v90 = 0;
  v91 = 0xFFEFFFFFFFFFFFFFLL;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0;
  v99 = 0xFFEFFFFFFFFFFFFFLL;
  v100 = 0;
  v101 = 0;
  v102 = 0xFFEFFFFFFFFFFFFFLL;
  v103 = 7;
  v104 = 0xFFEFFFFFFFFFFFFFLL;
  v105 = 0;
  v107 = 0;
  v106 = 0u;
  sub_1000C2B7C(*(a1 + 8432), &qword_1025D7DD0, &v3);
  if (*&v4 != 0.0)
  {
    *(a1 + 2736) = v4;
  }

  return sub_1006AFD64(a1);
}

uint64_t sub_1006AFD64(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_101908390();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Tier2Smoother, resetting pedestrian stop detector FSM", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101908D20();
  }

  return sub_100C4C20C(a1 + 2760, 2u);
}

uint64_t sub_1006AFE08(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1025D7E08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D7E08))
  {
    LODWORD(v3) = 0;
    qword_1025D7DF8 = 0;
    unk_1025D7E00 = 0;
    qword_1025D7DF0 = 0;
    sub_1004579D4(&qword_1025D7DF0, &v3, &v3 + 4, 1uLL);
    __cxa_atexit(sub_10051F310, &qword_1025D7DF0, dword_100000000);
    __cxa_guard_release(&qword_1025D7E08);
  }

  v12 = 0;
  v3 = xmmword_101C78400;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v13 = xmmword_101C78400;
  v14 = 0;
  v15 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0u;
  v21 = xmmword_101C78400;
  v22 = 0;
  v23 = 0;
  v24 = 0xFFEFFFFFFFFFFFFFLL;
  v35 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v36 = 0u;
  v37 = 0xFFEFFFFFFFFFFFFFLL;
  v38 = 0;
  v39 = 0;
  v44 = 0;
  v45 = 0;
  v50 = 0;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v40 = 0u;
  v41 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  memset(v49, 0, sizeof(v49));
  v51 = 0xFFEFFFFFFFFFFFFFLL;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0xFFEFFFFFFFFFFFFFLL;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0xFFEFFFFFFFFFFFFFLL;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0xFFEFFFFFFFFFFFFFLL;
  v83 = 0u;
  v84 = 0x80000000800000;
  v85 = 0u;
  v86 = xmmword_101C78410;
  v87 = 0x80000000800000;
  v88 = 0u;
  v89 = 0u;
  v90 = 0;
  v91 = 0xFFEFFFFFFFFFFFFFLL;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0;
  v99 = 0xFFEFFFFFFFFFFFFFLL;
  v100 = 0;
  v101 = 0;
  v102 = 0xFFEFFFFFFFFFFFFFLL;
  v103 = 7;
  v104 = 0xFFEFFFFFFFFFFFFFLL;
  v105 = 0;
  v107 = 0;
  v106 = 0u;
  sub_1000C2B7C(*(a1 + 8432), &qword_1025D7DF0, &v3);
  if (*&v4 != 0.0)
  {
    *(a1 + 2736) = v4;
  }

  return sub_1006B00CC(a1);
}

uint64_t sub_1006B00CC(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_101908390();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Tier2Smoother, resetting pedestrian stop detector FSM", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101908DFC();
  }

  return sub_100C4C20C(a1 + 2760, 2u);
}

uint64_t sub_1006B0170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 24);
  if (v6 != *(a2 + 24))
  {
    v9 = *(a1 + 16);
    do
    {
      if (v6 == *v9)
      {
        v6 = *(v9 - 1) + 4096;
      }

      v10 = *(a3 + 24);
      if (!v10)
      {
        sub_1000CF05C();
      }

      (*(*v10 + 48))(v10, v6 - 16);
      v9 = *(a1 + 16);
      v11 = *(a1 + 24);
      if (v11 == *v9)
      {
        *(a1 + 16) = v9 - 1;
        v11 = *--v9 + 4096;
      }

      v6 = v11 - 16;
      *(a1 + 24) = v6;
    }

    while (*(a2 + 24) != v6);
  }

  return sub_1006B0250(a4, a3);
}

uint64_t sub_1006B0250(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

__n128 sub_1006B034C(uint64_t a1, uint64_t a2)
{
  *a2 = off_10246AEA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float sub_1006B0384(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 >= *(a1 + 8) && v2 <= *(a1 + 16))
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *&v2 = *(a2 + 12) + *v4;
    *v4 = *&v2;
    ++*v5;
  }

  return *&v2;
}

uint64_t sub_1006B03BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006B0408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 24);
  if (v6 != *(a2 + 24))
  {
    v9 = *(a1 + 16);
    do
    {
      if (v6 == *v9)
      {
        v6 = *(v9 - 1) + 4080;
      }

      v10 = *(a3 + 24);
      if (!v10)
      {
        sub_1000CF05C();
      }

      (*(*v10 + 48))(v10, v6 - 24);
      v9 = *(a1 + 16);
      v11 = *(a1 + 24);
      if (v11 == *v9)
      {
        *(a1 + 16) = v9 - 1;
        v11 = *--v9 + 4080;
      }

      v6 = v11 - 24;
      *(a1 + 24) = v6;
    }

    while (*(a2 + 24) != v6);
  }

  return sub_1006B04E8(a4, a3);
}

uint64_t sub_1006B04E8(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

__n128 sub_1006B05E4(uint64_t a1, uint64_t a2)
{
  *a2 = off_10246AF38;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1006B061C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= *(result + 8) && v2 <= *(result + 16))
  {
    ++**(result + 24);
  }

  return result;
}

uint64_t sub_1006B0644(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006B06BC(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 2048;
  *(v3 + 14) = v2;
}

void sub_1006B0E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    sub_100008080(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006B1150(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006B165C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1006B428C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v26)
  {
    sub_100008080(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006B6940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, void *a36, uint64_t a37, char a38, void *a39, uint64_t a40, void *__p, uint64_t a42)
{
  sub_1003C93BC(&a35, a36);
  sub_1003C93BC(&a38, a39);
  if (a30)
  {
    sub_100008080(a30);
  }

  if (__p)
  {
    a42 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006B7BAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_1006B82B0(double *a1)
{
  v3[0] = @"visitDuration";
  v4[0] = [NSNumber numberWithDouble:a1[4]];
  v3[1] = @"arrivalUncertainty";
  v4[1] = [NSNumber numberWithDouble:a1[5]];
  v3[2] = @"exitUncertainty";
  v4[2] = [NSNumber numberWithDouble:a1[6]];
  v3[3] = @"timeDiffBtwArrivalAndLastRebase";
  v4[3] = [NSNumber numberWithDouble:a1[7]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

void sub_1006B9084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a76 < 0)
  {
    operator delete(__p);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (a68 < 0)
  {
    operator delete(a63);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a77);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if (*(v77 - 225) < 0)
  {
    operator delete(*(v77 - 248));
  }

  if (*(v77 - 177) < 0)
  {
    operator delete(*(v77 - 200));
  }

  if (*(v77 - 129) < 0)
  {
    operator delete(*(v77 - 152));
  }

  _Unwind_Resume(a1);
}

id sub_1006B92BC(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v14[0] = @"inVisit";
  v15[0] = [NSNumber numberWithBool:*(a1 + 48)];
  v14[1] = @"demAvailableInTrack";
  v15[1] = [NSNumber numberWithBool:*(a1 + 49)];
  v14[2] = @"rebaseSource";
  v15[2] = [NSNumber numberWithInt:*(a1 + 52)];
  v14[3] = @"firstRebaseSinceLocationdStart";
  v15[3] = [NSNumber numberWithBool:*(a1 + 57)];
  v14[4] = @"forcedGPSRecently";
  v15[4] = [NSNumber numberWithBool:*(a1 + 50)];
  v14[5] = @"altitudeError_binned";
  v3 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v3 = *v3;
  }

  v15[5] = [NSString stringWithUTF8String:v3];
  v14[6] = @"timeToFirstRebase_binned";
  v4 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v4 = *v4;
  }

  v15[6] = [NSString stringWithUTF8String:v4];
  v14[7] = @"referenceUncertainty_binned";
  v5 = (a1 + 112);
  if (*(a1 + 135) < 0)
  {
    v5 = *v5;
  }

  v15[7] = [NSString stringWithUTF8String:v5];
  v14[8] = @"uncertainty_binned";
  v6 = (a1 + 136);
  if (*(a1 + 159) < 0)
  {
    v6 = *v6;
  }

  v15[8] = [NSString stringWithUTF8String:v6];
  v14[9] = @"timeSinceVisitEntry_binned";
  v7 = (a1 + 160);
  if (*(a1 + 183) < 0)
  {
    v7 = *v7;
  }

  v15[9] = [NSString stringWithUTF8String:v7];
  v14[10] = @"correction_binned";
  v8 = (a1 + 208);
  if (*(a1 + 231) < 0)
  {
    v8 = *v8;
  }

  v15[10] = [NSString stringWithUTF8String:v8];
  v14[11] = @"distanceSinceLastRebase_binned";
  v9 = (a1 + 232);
  if (*(a1 + 255) < 0)
  {
    v9 = *v9;
  }

  v15[11] = [NSString stringWithUTF8String:v9];
  v14[12] = @"timeSinceLastRebase_binned";
  v10 = (a1 + 184);
  if (*(a1 + 207) < 0)
  {
    v10 = *v10;
  }

  v15[12] = [NSString stringWithUTF8String:v10];
  [v2 setDictionary:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v15, v14, 13)}];
  LODWORD(v11) = *(a1 + 40);
  if (*&v11 != 3.4028e38 && *(a1 + 44) != 3.4028e38)
  {
    *&v11 = (*&v11 * 100.0) / 100.0;
    [v2 setObject:+[NSNumber numberWithFloat:](NSNumber forKeyedSubscript:{"numberWithFloat:", v11), @"latitude"}];
    *&v12 = (*(a1 + 44) * 100.0) / 100.0;
    [v2 setObject:+[NSNumber numberWithFloat:](NSNumber forKeyedSubscript:{"numberWithFloat:", v12), @"longitude"}];
  }

  if ([*(a1 + 32) isIHAAuthorized])
  {
    [v2 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", *(a1 + 56)), @"inOutdoorWorkout"}];
  }

  return v2;
}

void sub_1006B9A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a72 < 0)
  {
    operator delete(a70);
  }

  if (a69 < 0)
  {
    operator delete(a64);
  }

  if (*(v74 - 97) < 0)
  {
    operator delete(*(v74 - 120));
  }

  if (*(v74 - 49) < 0)
  {
    operator delete(*(v74 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_1006B9BB0()
{
  v1 = *(v0 - 144);
  if (v1)
  {
    *(v0 - 136) = v1;
    JUMPOUT(0x1006B9B8CLL);
  }

  JUMPOUT(0x1006B9B90);
}

void sub_1006B9BCC()
{
  v1 = *(v0 - 96);
  if (v1)
  {
    *(v0 - 88) = v1;
    JUMPOUT(0x1006B9B9CLL);
  }

  JUMPOUT(0x1006B9BA0);
}

NSDictionary *sub_1006B9BE0(uint64_t a1)
{
  v10[0] = @"duration_binned";
  v2 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v2 = *v2;
  }

  v11[0] = [NSString stringWithUTF8String:v2];
  v10[1] = @"uncertaintyAtEntry_binned";
  v3 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v3 = *v3;
  }

  v11[1] = [NSString stringWithUTF8String:v3];
  v10[2] = @"uncertaintyAtRebase_binned";
  v4 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v4 = *v4;
  }

  v11[2] = [NSString stringWithUTF8String:v4];
  v10[3] = @"timeFromEnterToRebase_binned";
  v5 = (a1 + 112);
  if (*(a1 + 135) < 0)
  {
    v5 = *v5;
  }

  v11[3] = [NSString stringWithUTF8String:v5];
  v10[4] = @"correctionAtRebase_binned";
  v6 = (a1 + 184);
  if (*(a1 + 207) < 0)
  {
    v6 = *v6;
  }

  v11[4] = [NSString stringWithUTF8String:v6];
  v10[5] = @"altitudeErrorAtRebase_binned";
  v7 = (a1 + 136);
  if (*(a1 + 159) < 0)
  {
    v7 = *v7;
  }

  v11[5] = [NSString stringWithUTF8String:v7];
  v10[6] = @"referenceUncertaintyAtRebase_binned";
  v8 = (a1 + 160);
  if (*(a1 + 183) < 0)
  {
    v8 = *v8;
  }

  v11[6] = [NSString stringWithUTF8String:v8];
  v10[7] = @"rebaseSource";
  v11[7] = [NSNumber numberWithInt:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:8];
}

uint64_t sub_1006B9D9C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 8);
  *a1 = v4;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v10 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v10;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v11 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v11;
  *(a2 + 191) = 0;
  *(a2 + 168) = 0;
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v12 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v12;
  *(a2 + 215) = 0;
  *(a2 + 192) = 0;
  return a1;
}

void *sub_1006BA434(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1004BF97C(v6, v10);
    }

    sub_10028C64C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
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

uint64_t sub_1006BA560(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 8);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    sub_100007244((a1 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100007244((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100007244((a1 + 72), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100007244((a1 + 96), *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_100007244((a1 + 120), *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 120) = v9;
  }

  if (*(a2 + 167) < 0)
  {
    sub_100007244((a1 + 144), *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = a2[9];
    *(a1 + 160) = *(a2 + 20);
    *(a1 + 144) = v10;
  }

  if (*(a2 + 191) < 0)
  {
    sub_100007244((a1 + 168), *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v11 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 23);
    *(a1 + 168) = v11;
  }

  if (*(a2 + 215) < 0)
  {
    sub_100007244((a1 + 192), *(a2 + 24), *(a2 + 25));
  }

  else
  {
    v12 = a2[12];
    *(a1 + 208) = *(a2 + 26);
    *(a1 + 192) = v12;
  }

  return a1;
}

void sub_1006BA6D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006BA784(uint64_t a1)
{
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_1006BA828(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100007244((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100007244((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    sub_100007244((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    sub_100007244((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }

  if (*(a2 + 127) < 0)
  {
    sub_100007244((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v8;
  }

  if (*(a2 + 151) < 0)
  {
    sub_100007244((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v9 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v9;
  }

  if (*(a2 + 175) < 0)
  {
    sub_100007244((a1 + 152), *(a2 + 152), *(a2 + 160));
  }

  else
  {
    v10 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v10;
  }

  return a1;
}

void sub_1006BA97C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006BAA10(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1006BAAA4(uint64_t a1)
{
  *(a1 + 7) = 0;
  *a1 = 0;
  *(a1 + 12) = -10;
  *(a1 + 16) = 0;
  sub_10000EC00((a1 + 24), "NULL");
  sub_10000EC00((a1 + 48), "NULL");
  sub_10000EC00((a1 + 72), "NULL");
  sub_10000EC00((a1 + 96), "NULL");
  sub_10000EC00((a1 + 120), "NULL");
  sub_10000EC00((a1 + 144), "NULL");
  sub_10000EC00((a1 + 168), "NULL");
  sub_10000EC00((a1 + 192), "NULL");
  return a1;
}

void sub_1006BAB5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006BAC08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 703) < 0)
    {
      operator delete(*(a2 + 680));
    }

    operator delete();
  }
}

uint64_t *sub_1006BAC64(uint64_t a1, int *a2)
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

uint64_t sub_1006BAD48()
{
  sub_10000EC00(byte_102658AA8, "VO2MaxPowerBudgetEstimatorLastExtendedBudgetAllotmentReason");
  __cxa_atexit(&std::string::~string, byte_102658AA8, dword_100000000);
  qword_102658AC0 = 0x4039000000000000;
  *v1 = xmmword_101C88B0C;
  *&v1[16] = unk_101C88B1C;
  v2 = xmmword_101C88B2C;
  qword_102658AD0 = 0;
  unk_102658AD8 = 0;
  qword_102658AC8 = 0;
  sub_1003F6D44(&qword_102658AC8, v1, v3, 0xCuLL);
  __cxa_atexit(sub_1003F5F88, &qword_102658AC8, dword_100000000);
  qword_102658AE8 = 0;
  unk_102658AF0 = 0;
  qword_102658AE0 = 0;
  sub_10038EB38(&qword_102658AE0, qword_102658AC8, qword_102658AD0, (qword_102658AD0 - qword_102658AC8) >> 2);
  __cxa_atexit(sub_1003F5F88, &qword_102658AE0, dword_100000000);
  *v1 = xmmword_101C88B3C;
  *&v1[16] = unk_101C88B4C;
  LODWORD(v2) = 1150681088;
  qword_102658B00 = 0;
  unk_102658B08 = 0;
  qword_102658AF8 = 0;
  sub_1003F6D44(&qword_102658AF8, v1, &v2 + 4, 9uLL);
  __cxa_atexit(sub_1003F5F88, &qword_102658AF8, dword_100000000);
  *v1 = xmmword_101C88B60;
  *&v1[12] = *(&xmmword_101C88B60 + 12);
  qword_102658B18 = 0;
  unk_102658B20 = 0;
  qword_102658B10 = 0;
  sub_1003F6D44(&qword_102658B10, v1, &v1[28], 7uLL);
  __cxa_atexit(sub_1003F5F88, &qword_102658B10, dword_100000000);
  v2 = xmmword_101C88B9C;
  *v3 = unk_101C88BAC;
  *&v3[12] = unk_101C88BB8;
  *v1 = xmmword_101C88B7C;
  *&v1[16] = unk_101C88B8C;
  qword_102658B30 = 0;
  unk_102658B38 = 0;
  qword_102658B28 = 0;
  sub_1003F6D44(&qword_102658B28, v1, &v4, 0x13uLL);
  __cxa_atexit(sub_1003F5F88, &qword_102658B28, dword_100000000);
  *v1 = xmmword_101C88BC8;
  *&v1[16] = unk_101C88BD8;
  v2 = xmmword_101C88BE8;
  *v3 = 0x48F4240048435000;
  qword_102658B48 = 0;
  unk_102658B50 = 0;
  qword_102658B40 = 0;
  sub_1003F6D44(&qword_102658B40, v1, &v3[8], 0xEuLL);
  __cxa_atexit(sub_1003F5F88, &qword_102658B40, dword_100000000);
  *v1 = xmmword_101C88C00;
  *&v1[16] = unk_101C88C10;
  v2 = xmmword_101C88C20;
  qword_102658B60 = 0;
  unk_102658B68 = 0;
  qword_102658B58 = 0;
  sub_1003F6D44(&qword_102658B58, v1, v3, 0xCuLL);
  return __cxa_atexit(sub_1003F5F88, &qword_102658B58, dword_100000000);
}

uint64_t sub_1006BB010(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = 0x3FF99999A0000000;
  sub_10183A3AC((a1 + 40), "FallUserMaxMets", &v4, 0);
  return a1;
}

void sub_1006BB078(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006BB09C(uint64_t a1, double *a2, double a3)
{
  if (*(a1 + 40) == 1)
  {
    *a2 = *(a1 + 48);
    return 1;
  }

  else
  {
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_100487818((a1 + 8), &__p);
    v6 = __p;
    if (__p == v16)
    {
      goto LABEL_13;
    }

    v7 = 0.0;
    v8 = __p;
    do
    {
      v7 = (v8[1] + v7);
      v8 += 2;
    }

    while (v8 != v16);
    v9 = v7;
    if (v7 < 1 || __p == v16)
    {
LABEL_13:
      v4 = 0;
      *a2 = NAN;
    }

    else
    {
      v11 = 0;
      while (1)
      {
        v11 += *(v6 + 1);
        if (v11 / v9 >= a3)
        {
          break;
        }

        v6 += 2;
        if (v6 == v16)
        {
          goto LABEL_13;
        }
      }

      *a2 = *v6;
      if (qword_1025D4330 != -1)
      {
        sub_10190A370();
      }

      v13 = qword_1025D4338;
      v4 = 1;
      if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_INFO))
      {
        v14 = *a2;
        *buf = 68289539;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2049;
        v23 = v9;
        v24 = 2049;
        v25 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:MaxMETs,MET Minutes, total count:%{private}ld, Max. METs:%{private}f}", buf, 0x26u);
      }
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }

  return v4;
}

uint64_t sub_1006BB288(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100487818((a1 + 8), &v5);
  if (v5 == v6)
  {
    v3 = 0;
    if (!v5)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v1 = 0.0;
  v2 = v5;
  do
  {
    v3 = (v2[1] + v1);
    v1 = v3;
    v2 += 2;
  }

  while (v2 != v6);
  if (v5)
  {
LABEL_5:
    v6 = v5;
    operator delete(v5);
  }

  return v3;
}

void sub_1006BB30C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1006BB328(uint64_t a1, double a2, double a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  v7 = *(a1 + 8);
  v8 = Current + -28800.0;
  if (v7 <= Current + -28800.0)
  {
    v9 = Current + -86400.0;
    if (v7 >= v9)
    {
      v10 = *(a1 + 8);
    }

    else
    {
      v10 = v9;
    }

    v11 = v9 + 28800.0;
    if (v7 + 28800.0 >= v11)
    {
      v12 = v7 + 28800.0;
    }

    else
    {
      v12 = v11;
    }

    if (qword_1025D4330 != -1)
    {
      sub_10190A398();
    }

    v13 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2049;
      v22 = v10;
      v23 = 2049;
      v24 = v12;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:MaxMETs,Setting query range, start_s:%{private}.09f, end_s:%{private}.09f}", buf, 0x26u);
    }

    v14 = *a1;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1006BB4DC;
    v16[3] = &unk_10246B0A0;
    v16[4] = a1;
    *&v16[5] = v10;
    *&v16[6] = v12;
    *&v16[7] = a2;
    *&v16[8] = a3;
    [v14 queryMetMinutesInTimeRange:v16 withReply:{v10, v12}];
  }

  return v7 <= v8;
}

void sub_1006BB4DC(double *a1, void *a2, int a3)
{
  if (a3 == 100)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = a1[8];
    v7 = (*(a1 + 4) + 8);

    sub_100487D8C(v7, a2, v3, v4, v5, v6);
  }

  else
  {
    if (qword_1025D4330 != -1)
    {
      sub_10190A398();
    }

    v9 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
    {
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = a3;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MaxMETs,query,, error:%{public}d}", &v11, 0x18u);
      if (qword_1025D4330 != -1)
      {
        sub_10190A370();
      }
    }

    v10 = qword_1025D4338;
    if (os_signpost_enabled(qword_1025D4338))
    {
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = a3;
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MaxMETs,query,", "{msg%{public}.0s:MaxMETs,query,, error:%{public}d}", &v11, 0x18u);
    }
  }
}

double sub_1006BB754(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_1006BB780(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1006BB854(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_1006BB8A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006BB988(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006BBA74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

NSDictionary *sub_1006BBC4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10[0] = @"requester";
  v3 = (v2 + 120);
  if (*(v2 + 143) < 0)
  {
    v3 = *v3;
  }

  v11[0] = [NSString stringWithUTF8String:v3];
  v10[1] = @"type";
  v4 = *(v2 + 112) - 1;
  if (v4 > 6)
  {
    v5 = "none";
  }

  else
  {
    v5 = off_10246B3C8[v4];
  }

  v11[1] = [NSString stringWithUTF8String:v5];
  v10[2] = @"result";
  v11[2] = [NSString stringWithUTF8String:sub_100185818(*(a1 + 72))];
  v10[3] = @"fix";
  v6 = *(v2 + 104);
  if (v6 == 2)
  {
    v7 = "strong";
  }

  else if (v6)
  {
    v7 = "weak";
  }

  else if (*(v2 + 108))
  {
    v7 = "empty";
  }

  else
  {
    v7 = "unknown";
  }

  v11[3] = [NSString stringWithUTF8String:v7];
  v10[4] = @"ttff";
  v11[4] = [NSString stringWithUTF8String:*(a1 + 40)];
  v10[5] = @"ttsf";
  v11[5] = [NSString stringWithUTF8String:*(a1 + 48)];
  v10[6] = @"duration";
  v11[6] = [NSString stringWithUTF8String:*(a1 + 56)];
  v10[7] = @"interval";
  v11[7] = [NSString stringWithUTF8String:*(a1 + 64)];
  v10[8] = @"als";
  v8 = [NSNumber numberWithBool:*(v2 + 109)];
  v10[9] = @"daily";
  v11[8] = v8;
  v11[9] = &off_10254EE58;
  return [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:10];
}

double sub_1006BBE70(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 40) = *a2;
  return result;
}

uint64_t sub_1006BBEE8(uint64_t a1, char *a2, uint64_t a3, double a4)
{
  v14 = a4;
  sub_1006525CC(a1, a3, &v14);
  *a1 = off_10246B440;
  sub_10018D404(a1 + 232);
  sub_10000EC00((a1 + 272), a2);
  sub_10000EC00((a1 + 296), "");
  if (*(a3 + 8) == 1)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10190A748();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "read only database - not creating bounding boxes, tableName, %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
LABEL_23:
      sub_10190A770(buf);
      v15 = 136315138;
      v16 = a2;
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiLocationDatabase::CLWifiLocationDatabase(const char *, const CLSqliteDatabase::SqliteProperties &, double)", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10190A748();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "platform does not support WiFi location monitoring - not creating bounding boxes, tableName, %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      goto LABEL_23;
    }
  }

  if (sub_100023B68(a1 + 64))
  {
    *buf = off_10246B458;
    v9 = (a1 + 272);
    if (*(a1 + 295) < 0)
    {
      v9 = *(a1 + 272);
    }

    sub_100608EC8(a1 + 64, v9, &qword_102658C08, buf, 0);
    sub_100652718(a1);
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_10190A7B4();
    }

    v10 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136380675;
      *&buf[4] = "CLWifiLocationDatabase";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning Database is not valid; not initializing in %{private}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190A7DC(buf);
      v15 = 136380675;
      v16 = "CLWifiLocationDatabase";
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiLocationDatabase::CLWifiLocationDatabase(const char *, const CLSqliteDatabase::SqliteProperties &, double)", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  sub_1006BC394(a1);
  return a1;
}

void sub_1006BC338(_Unwind_Exception *a1)
{
  if (*(v1 + 319) < 0)
  {
    operator delete(*(v1 + 296));
  }

  if (*(v1 + 295) < 0)
  {
    operator delete(*v2);
  }

  sub_1006526BC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1006BC394(uint64_t a1)
{
  sub_10003848C(v46);
  v2 = sub_100038730(&v47, "SELECT ", 7);
  v3 = sub_100038730(v2, "MAC", 3);
  v4 = sub_100038730(v3, " , ", 3);
  v5 = strlen("Latitude");
  v6 = sub_100038730(v4, "Latitude", v5);
  v7 = sub_100038730(v6, " , ", 3);
  v8 = strlen("Longitude");
  v9 = sub_100038730(v7, "Longitude", v8);
  v10 = sub_100038730(v9, " , ", 3);
  v11 = strlen("Altitude");
  v12 = sub_100038730(v10, "Altitude", v11);
  v13 = sub_100038730(v12, " , ", 3);
  v14 = strlen("HorizontalAccuracy");
  v15 = sub_100038730(v13, "HorizontalAccuracy", v14);
  v16 = sub_100038730(v15, " , ", 3);
  v17 = strlen("VerticalAccuracy");
  v18 = sub_100038730(v16, "VerticalAccuracy", v17);
  v19 = sub_100038730(v18, " , ", 3);
  v20 = strlen("Score");
  v21 = sub_100038730(v19, "Score", v20);
  v22 = sub_100038730(v21, " , ", 3);
  v23 = strlen("Reach");
  v24 = sub_100038730(v22, "Reach", v23);
  v25 = sub_100038730(v24, " , ", 3);
  v26 = sub_100038730(v25, "Channel", 7);
  v27 = sub_100038730(v26, " , ", 3);
  v28 = sub_100038730(v27, "InfoMask", 8);
  v29 = sub_100038730(v28, " , ", 3);
  v30 = strlen("Timestamp");
  sub_100038730(v29, "Timestamp", v30);
  if ((*(a1 + 16) & 1) == 0)
  {
    v31 = sub_100038730(&v47, " , ", 3);
    v32 = strlen("ZaxisHarvestTraces");
    sub_100038730(v31, "ZaxisHarvestTraces", v32);
    v33 = sub_100038730(&v47, " , ", 3);
    sub_100038730(v33, "AlsQueryTimestamp", 17);
  }

  v34 = sub_100038730(&v47, " FROM ", 6);
  v35 = *(a1 + 295);
  if (v35 >= 0)
  {
    v36 = a1 + 272;
  }

  else
  {
    v36 = *(a1 + 272);
  }

  if (v35 >= 0)
  {
    v37 = *(a1 + 295);
  }

  else
  {
    v37 = *(a1 + 280);
  }

  v38 = sub_100038730(v34, v36, v37);
  v39 = sub_100038730(v38, " WHERE ", 7);
  v40 = sub_100038730(v39, "MAC", 3);
  sub_100038730(v40, " = ? ", 5);
  sub_100073518(v46, &v44);
  v41 = (a1 + 296);
  if (*(a1 + 319) < 0)
  {
    operator delete(*v41);
  }

  *v41 = v44;
  *(a1 + 312) = v45;
  v47 = v42;
  if (v50 < 0)
  {
    operator delete(v49[7].__locale_);
  }

  std::locale::~locale(v49);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1006BC824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

char *sub_1006BC840@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[295] < 0)
  {
    return sub_100007244(a2, *(result + 34), *(result + 35));
  }

  *a2 = *(result + 17);
  *(a2 + 16) = *(result + 36);
  return result;
}

void sub_1006BC868(uint64_t a1)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v59, "INSERT OR REPLACE INTO ", 23);
    v3 = (a1 + 272);
    if (*(a1 + 295) < 0)
    {
      v3 = *v3;
    }

    v4 = strlen(v3);
    v5 = sub_100038730(v2, v3, v4);
    v6 = sub_100038730(v5, "(", 3);
    v7 = sub_100038730(v6, "MAC", 3);
    v8 = sub_100038730(v7, ",", 1);
    v9 = strlen("Timestamp");
    v10 = sub_100038730(v8, "Timestamp", v9);
    v11 = sub_100038730(v10, ",", 1);
    v12 = strlen("Latitude");
    v13 = sub_100038730(v11, "Latitude", v12);
    v14 = sub_100038730(v13, ",", 1);
    v15 = strlen("Longitude");
    v16 = sub_100038730(v14, "Longitude", v15);
    v17 = sub_100038730(v16, ",", 1);
    v18 = strlen("HorizontalAccuracy");
    v19 = sub_100038730(v17, "HorizontalAccuracy", v18);
    v20 = sub_100038730(v19, ",", 1);
    v21 = strlen("Altitude");
    v22 = sub_100038730(v20, "Altitude", v21);
    v23 = sub_100038730(v22, ",", 1);
    v24 = strlen("VerticalAccuracy");
    v25 = sub_100038730(v23, "VerticalAccuracy", v24);
    v26 = sub_100038730(v25, ",", 1);
    v27 = strlen("Speed");
    v28 = sub_100038730(v26, "Speed", v27);
    v29 = sub_100038730(v28, ",", 1);
    v30 = strlen("Course");
    v31 = sub_100038730(v29, "Course", v30);
    v32 = sub_100038730(v31, ",", 1);
    v33 = strlen("Confidence");
    v34 = sub_100038730(v32, "Confidence", v33);
    v35 = sub_100038730(v34, ",", 1);
    v36 = strlen("Score");
    v37 = sub_100038730(v35, "Score", v36);
    v38 = sub_100038730(v37, ",", 1);
    v39 = strlen("Reach");
    v40 = sub_100038730(v38, "Reach", v39);
    v41 = sub_100038730(v40, ",", 1);
    v42 = sub_100038730(v41, "Channel", 7);
    v43 = sub_100038730(v42, ",", 1);
    v44 = sub_100038730(v43, "FenceForeignKey", 15);
    v45 = sub_100038730(v44, ",", 1);
    v46 = sub_100038730(v45, "InfoMask", 8);
    v47 = sub_100038730(v46, ",", 1);
    v48 = strlen("ZaxisHarvestTraces");
    v49 = sub_100038730(v47, "ZaxisHarvestTraces", v48);
    v50 = sub_100038730(v49, ",", 1);
    v51 = sub_100038730(v50, "AlsQueryTimestamp", 17);
    v52 = sub_100038730(v51, ") ", 3);
    v53 = sub_100038730(v52, " VALUES ", 8);
    sub_100038730(v53, "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);", 36);
    sub_100073518(buf, __p);
    if (v57 >= 0)
    {
      v54 = __p;
    }

    else
    {
      v54 = __p[0];
    }

    sub_1000388D8(a1 + 64, v54);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v55 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call save() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190A834();
  }
}

void sub_1006BD09C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  __cxa_free_exception(v16);
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  sub_10026C504(&a16);
  _Unwind_Resume(a1);
}

void sub_1006BD120(std::runtime_error *this)
{
  this->__vftable = off_10246B4D0;
  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::runtime_error::~runtime_error(this);
}

void sub_1006BD190(uint64_t a1, unint64_t a2)
{
  if (sub_10018E854(a1))
  {
    if ((a2 & 0x8000000000000000) == 0 && sub_10019A9B8(a1) > a2)
    {
      __src = 0;
      v38 = 0;
      v39 = 0;
      *(&v28.__r_.__value_.__s + 23) = 18;
      strcpy(&v28, "SELECT ROWID FROM ");
      v4 = (a1 + 272);
      if (*(a1 + 295) < 0)
      {
        v4 = *(a1 + 272);
      }

      v5 = strlen(v4);
      v6 = std::string::append(&v28, v4, v5);
      v7 = *&v6->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      v8 = std::string::append(&v29, " WHERE ", 7uLL);
      v9 = *&v8->__r_.__value_.__l.__data_;
      v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v30.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v30, "FenceForeignKey", 0xFuLL);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = std::string::append(&v31, " =", 2uLL);
      v13 = *&v12->__r_.__value_.__l.__data_;
      v32.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v32.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v27, -1);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v27;
      }

      else
      {
        v14 = v27.__r_.__value_.__r.__words[0];
      }

      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v16 = std::string::append(&v32, v14, size);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = std::string::append(&v33, " ORDER BY ", 0xAuLL);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = strlen("Timestamp");
      v21 = std::string::append(&v34, "Timestamp", v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v23 = std::string::append(&v40, " ASC LIMIT ?", 0xCuLL);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v36 = v23->__r_.__value_.__r.__words[2];
      __p = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (v36 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      sub_1000388D8(a1 + 64, p_p);
    }
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_10190A820();
    }

    v26 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v40.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call truncatePastLimit() without a backing database in CLWifiLocationDatabase!", &v40, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190A918();
    }
  }
}

void sub_1006BDD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49)
{
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (a49)
  {
    operator delete(a49);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006BDEB8(uint64_t a1)
{
  if (sub_10018E854(a1))
  {
    *(&v20.__r_.__value_.__s + 23) = 7;
    strcpy(&v20, "SELECT ");
    sub_1006BE2AC(__p);
    if ((v19 & 0x80u) == 0)
    {
      v2 = __p;
    }

    else
    {
      v2 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v3 = v19;
    }

    else
    {
      v3 = __p[1];
    }

    v4 = std::string::append(&v20, v2, v3);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v21, " FROM ", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = *(a1 + 295);
    if (v8 >= 0)
    {
      v9 = (a1 + 272);
    }

    else
    {
      v9 = *(a1 + 272);
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 295);
    }

    else
    {
      v10 = *(a1 + 280);
    }

    v11 = std::string::append(&v22, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v23, " WHERE ROWID=?", 0xEuLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v25 = v13->__r_.__value_.__r.__words[2];
    *buf = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (v25 >= 0)
    {
      v15 = buf;
    }

    else
    {
      v15 = *buf;
    }

    sub_1000388D8(a1 + 64, v15);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v16 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call getLocation() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190AB4C();
  }

  return 0;
}

void sub_1006BE1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 96);
  *(v33 - 96) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006BE2AC(uint64_t a1@<X8>)
{
  v2 = 0;
  v13[0] = "MAC";
  v13[1] = "Channel";
  v13[2] = "InfoMask";
  v13[3] = "Score";
  v13[4] = "Reach";
  v13[5] = "FenceForeignKey";
  v13[6] = "ZaxisHarvestTraces";
  v13[7] = "AlsQueryTimestamp";
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  do
  {
    v3 = *(a1 + 23);
    if ((v3 & 0x80u) != 0)
    {
      v3 = *(a1 + 8);
    }

    if (v3)
    {
      *(&v10.__r_.__value_.__s + 23) = 2;
      strcpy(&v10, ", ");
      v4 = strlen(v13[v2]);
      v5 = std::string::append(&v10, v13[v2], v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v12 = v5->__r_.__value_.__r.__words[2];
      *__p = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      if (v12 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if (v12 >= 0)
      {
        v8 = HIBYTE(v12);
      }

      else
      {
        v8 = __p[1];
      }

      std::string::append(a1, v7, v8);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v9 = strlen(v13[v2]);
      std::string::append(a1, v13[v2], v9);
    }

    ++v2;
  }

  while (v2 != 8);
}

void sub_1006BE454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006BE4A0(uint64_t a1)
{
  if (sub_10018E854(a1))
  {
    operator new();
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v1 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call setLocation() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190AC30();
  }

  return 0;
}

void sub_1006BE89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  if (*(v41 - 57) < 0)
  {
    operator delete(*(v41 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006BE984(uint64_t a1)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v21, "UPDATE OR IGNORE ", 17);
    v3 = (a1 + 272);
    if (*(a1 + 295) < 0)
    {
      v3 = *v3;
    }

    v4 = strlen(v3);
    v5 = sub_100038730(v2, v3, v4);
    v6 = sub_100038730(v5, " SET ", 5);
    v7 = strlen("Score");
    v8 = sub_100038730(v6, "Score", v7);
    v9 = sub_100038730(v8, " = ", 3);
    v10 = strlen("Score");
    v11 = sub_100038730(v9, "Score", v10);
    v12 = sub_100038730(v11, " / 2.0 ", 7);
    v13 = sub_100038730(v12, " WHERE ", 7);
    v14 = sub_100038730(v13, "MAC", 3);
    sub_100038730(v14, " = ? ", 5);
    sub_100073518(buf, __p);
    if (v19 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    sub_1000388D8(a1 + 64, v15);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v16 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call downgradeAPByScore() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190AD14();
  }

  return 0;
}

void sub_1006BED18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a16);
  _Unwind_Resume(a1);
}

void sub_1006BED5C(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(v45);
    v4 = sub_100038730(&v46, "SELECT ", 7);
    v5 = sub_100038730(v4, "MAC", 3);
    v6 = sub_100038730(v5, " , ", 3);
    v7 = strlen("Latitude");
    v8 = sub_100038730(v6, "Latitude", v7);
    v9 = sub_100038730(v8, " , ", 3);
    v10 = strlen("Longitude");
    v11 = sub_100038730(v9, "Longitude", v10);
    v12 = sub_100038730(v11, " , ", 3);
    v13 = strlen("Altitude");
    v14 = sub_100038730(v12, "Altitude", v13);
    v15 = sub_100038730(v14, " , ", 3);
    v16 = strlen("HorizontalAccuracy");
    v17 = sub_100038730(v15, "HorizontalAccuracy", v16);
    v18 = sub_100038730(v17, " , ", 3);
    v19 = strlen("VerticalAccuracy");
    v20 = sub_100038730(v18, "VerticalAccuracy", v19);
    v21 = sub_100038730(v20, " , ", 3);
    v22 = strlen("Score");
    v23 = sub_100038730(v21, "Score", v22);
    v24 = sub_100038730(v23, " , ", 3);
    v25 = strlen("Reach");
    v26 = sub_100038730(v24, "Reach", v25);
    v27 = sub_100038730(v26, " , ", 3);
    v28 = sub_100038730(v27, "Channel", 7);
    v29 = sub_100038730(v28, " , ", 3);
    v30 = sub_100038730(v29, "InfoMask", 8);
    v31 = sub_100038730(v30, " , ", 3);
    v32 = strlen("Timestamp");
    v33 = sub_100038730(v31, "Timestamp", v32);
    v34 = sub_100038730(v33, " FROM ", 6);
    v35 = *(a1 + 295);
    if (v35 >= 0)
    {
      v36 = a1 + 272;
    }

    else
    {
      v36 = *(a1 + 272);
    }

    if (v35 >= 0)
    {
      v37 = *(a1 + 295);
    }

    else
    {
      v37 = *(a1 + 280);
    }

    v38 = sub_100038730(v34, v36, v37);
    v39 = sub_100038730(v38, " WHERE ", 7);
    v40 = sub_100038730(v39, "FenceForeignKey", 15);
    v41 = sub_100038730(v40, " =?", 3);
    sub_100038730(v41, " ORDER BY Score DESC LIMIT ", 27);
    v42 = std::ostream::operator<<();
    sub_100038730(v42, ";", 1);
    sub_100073518(v45, &__p);
    if (v48 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    sub_1000388D8(a1 + 64, p_p);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v44 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call getNearbyWifisForFence() without a backing database in CLWifiLocationDatabase!", &__p, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190ADF8();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_1006BFA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  v15 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v15;
    operator delete(v15);
  }

  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  sub_10026C504(va);
  _Unwind_Resume(a1);
}

void sub_1006BFB68(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_1001A1980(a1, 0xAAAAAAAAAAAAAAABLL * (v4 >> 5));
    }

    v6 = 0;
    if (0xAAAAAAAAAAAAAAABLL * (v3 >> 5))
    {
      v7 = 32 * (v4 >> 5);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_1006BFC5C(uint64_t a1)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v16, "DELETE FROM ", 12);
    v3 = *(a1 + 295);
    if (v3 >= 0)
    {
      v4 = a1 + 272;
    }

    else
    {
      v4 = *(a1 + 272);
    }

    if (v3 >= 0)
    {
      v5 = *(a1 + 295);
    }

    else
    {
      v5 = *(a1 + 280);
    }

    v6 = sub_100038730(v2, v4, v5);
    v7 = sub_100038730(v6, " WHERE ", 7);
    v8 = sub_100038730(v7, "MAC", 3);
    v9 = sub_100038730(v8, " IS NULL OR ", 12);
    v10 = sub_100038730(v9, "MAC", 3);
    sub_100038730(v10, " = '' ", 6);
    sub_100073518(buf, __p);
    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    sub_1000388D8(a1 + 64, v11);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v12 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call deleteWhereMacAddressIsEmpty() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B200();
  }
}