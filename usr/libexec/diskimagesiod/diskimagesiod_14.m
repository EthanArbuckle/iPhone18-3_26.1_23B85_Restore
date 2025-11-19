uint64_t sub_100143300(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021A698;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_1001433B0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001433C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = (*(a2 + 16) & 2) != 0 ? *a2 : *a2 + 1;
  v6 = v2;
  do
  {
    v7 = (*(v3 + 48) & 1) + *(v3 + 40) - 1;
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2)
  {
    return v2;
  }

  v10 = *(v6 + 32);
  if ((*(v6 + 48) & 2) == 0)
  {
    ++v10;
  }

  if ((*(a2 + 16) & 1) + *(a2 + 8) - 1 < v10)
  {
    return v2;
  }

  return v6;
}

uint64_t *sub_100143448(uint64_t **a1, uint64_t a2)
{
  v13 = *a2;
  v14 = *(a2 + 16);
  if (v14)
  {
    if (v14 == 3)
    {
      if (*(&v13 + 1) < v13)
      {
        return (a1 + 1);
      }
    }

    else if (v13 >= *(&v13 + 1))
    {
      return (a1 + 1);
    }
  }

  else if (v13 >= *(&v13 + 1) || (v13 + 1) >= *(&v13 + 1))
  {
    return (a1 + 1);
  }

  if (sub_10014355C(a2 + 24))
  {
    return (a1 + 1);
  }

  result = sub_1001439F4(a1, a2);
  if ((v6 & 1) == 0)
  {
    v7 = sub_1000DC688(a1, &v13);
    v8 = sub_10012FC18(a1, &v13);
    v9 = *v8;
    if (*v8)
    {
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = v8[2];
        v11 = *v10 == v8;
        v8 = v10;
      }

      while (v11);
    }

    v12 = v10;
    v15 = v7;
    sub_100143664(a1, &v13, (a2 + 24), &v15, &v12);
    return v15;
  }

  return result;
}

BOOL sub_10014355C(uint64_t a1)
{
  v1 = 0;
  LOBYTE(v6) = 0;
  v16 = 0;
  if (byte_100234C24 == 1)
  {
    v6 = qword_100234B98;
    v7 = dword_100234BA0;
    v12 = unk_100234BE4;
    v13 = unk_100234BF4;
    v14 = unk_100234C04;
    v15 = unk_100234C14;
    v8 = *algn_100234BA4;
    v9 = unk_100234BB4;
    v10 = unk_100234BC4;
    v11 = unk_100234BD4;
    v1 = 1;
    v16 = 1;
  }

  v2 = *(a1 + 140);
  v4 = v2 == v1;
  v3 = v2 == v1;
  v4 = !v4 || v2 == 0;
  if (!v4)
  {
    return *a1 == v6 && sub_10005DF18((a1 + 4), &v6 + 1);
  }

  return v3;
}

uint64_t sub_100143664(uint64_t **a1, __int128 *a2, uint64_t *a3, uint64_t **a4, uint64_t **a5)
{
  v8 = *a5;
  v9 = (*a5)[1];
  if (v9)
  {
    do
    {
      v10 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    v11 = *a5;
    do
    {
      v10 = v11[2];
      v12 = *v10 == v11;
      v11 = v10;
    }

    while (!v12);
  }

  v13 = *a4;
  if (*a1 == *a4)
  {
    v15 = (a1 + 1);
  }

  else
  {
    v14 = *v13;
    if (*v13)
    {
      do
      {
        v15 = v14;
        v14 = v14[1];
      }

      while (v14);
    }

    else
    {
      v16 = *a4;
      do
      {
        v15 = v16[2];
        v12 = *v15 == v16;
        v16 = v15;
      }

      while (v12);
    }
  }

  v27 = *a2;
  v28 = *(a2 + 2);
  *&v25 = qword_1002349D8;
  *(&v25 + 1) = qword_1002349D8;
  v26 = 2;
  v23 = *(v8 + 2);
  for (i = v8[6]; v13 != v10; *a4 = v13)
  {
    v25 = *(v13 + 2);
    v26 = *(v13 + 48);
    v21 = v27;
    v22 = v28;
    sub_1000DC500(&v21, &v25, &v29);
    if (v30)
    {
      if (v30 == 3)
      {
        if (*(&v29 + 1) >= v29)
        {
          goto LABEL_23;
        }
      }

      else if (v29 < *(&v29 + 1))
      {
        goto LABEL_23;
      }
    }

    else if (v29 < *(&v29 + 1) && (v29 + 1) < *(&v29 + 1))
    {
LABEL_23:
      LOBYTE(v31) = 0;
      v41 = 0;
      if (*(a3 + 140) == 1)
      {
        v31 = *a3;
        v32 = *(a3 + 2);
        v37 = *(a3 + 76);
        v38 = *(a3 + 92);
        v39 = *(a3 + 108);
        v40 = *(a3 + 124);
        v33 = *(a3 + 12);
        v34 = *(a3 + 28);
        v35 = *(a3 + 44);
        v36 = *(a3 + 60);
        v41 = 1;
      }

      *a4 = sub_100143B48(a1, v15, &v29);
    }

    v21 = v27;
    v22 = v28;
    sub_1000DC5C4(&v21, &v25, &v29);
    v27 = v29;
    LOBYTE(v28) = v30;
    v15 = *a4;
    v17 = (*a4)[1];
    v18 = *a4;
    if (v17)
    {
      do
      {
        v13 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        v13 = v18[2];
        v12 = *v13 == v18;
        v18 = v13;
      }

      while (!v12);
    }
  }

  v29 = v27;
  v30 = v28;
  result = sub_1000DC5C4(&v29, &v23, &v21);
  v20 = v21;
  if (!v22)
  {
    if (v21 >= *(&v21 + 1))
    {
      goto LABEL_42;
    }

    v20 = v21 + 1;
    goto LABEL_38;
  }

  if (v22 != 3)
  {
LABEL_38:
    if (v20 >= *(&v21 + 1))
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (*(&v21 + 1) < v21)
  {
    goto LABEL_42;
  }

LABEL_39:
  v29 = v21;
  v30 = v22;
  LOBYTE(v31) = 0;
  v41 = 0;
  if (*(a3 + 140) == 1)
  {
    v31 = *a3;
    v32 = *(a3 + 2);
    v37 = *(a3 + 76);
    v38 = *(a3 + 92);
    v39 = *(a3 + 108);
    v40 = *(a3 + 124);
    v33 = *(a3 + 12);
    v34 = *(a3 + 28);
    v35 = *(a3 + 44);
    v36 = *(a3 + 60);
    v41 = 1;
  }

  result = sub_100143B48(a1, v15, &v29);
  v15 = result;
LABEL_42:
  *a4 = v15;
  return result;
}

uint64_t sub_1001439F4(uint64_t a1, uint64_t a2)
{
  result = *sub_100029640(a1, &v3, a2);
  if (!result)
  {
    sub_100143A74();
  }

  return result;
}

uint64_t sub_100143B48(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  result = *sub_100029470(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100143A74();
  }

  return result;
}

uint64_t sub_100143BCC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021A8B8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100143C7C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100143C94(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021AAD8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100143D44(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_100143D5C(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_100143DE0(a1, v4, a2);
      a2 += 48;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_100143DE0(void *a1, void *a2, uint64_t a3)
{
  v3 = *sub_100143E90(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_100143E90(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_1000C48EC(a5, (a2 + 4)))
  {
    if (!sub_1000C48EC((a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_1000C48EC(a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_1000C48EC((v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1000C4864(a1, a3, a5);
}

void sub_100144024(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_1001440C4(a1, a3);
  if (v11 >> 57)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v12 = v11;
  v13 = operator new(v11 << 6);
  sub_100144138(a1, v13, v12, a2, a3, a4);
  *a5 = *a1 + a2 - v10;
}

unint64_t sub_1001440C4(uint64_t a1, uint64_t a2)
{
  v2 = 0x1FFFFFFFFFFFFFFLL;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x1FFFFFFFFFFFFFFLL - v4 < a2 - v4 + v3)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v5 = v4 >> 61;
  v6 = 8 * v4;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = v3 + a2;
  if (v8 < 0x1FFFFFFFFFFFFFFLL)
  {
    v2 = v8;
  }

  if (v9 <= v2)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

void sub_100144138(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *a1 + (a1[1] << 6);
  v12 = a2;
  if (*a1 != a4)
  {
    v13 = *a1;
    v12 = a2;
    do
    {
      *v12 = *v13;
      v14 = *(v13 + 1);
      v15 = *(v13 + 3);
      v16 = *(v13 + 5);
      *(v12 + 56) = v13[7];
      *(v12 + 40) = v16;
      *(v12 + 24) = v15;
      *(v12 + 8) = v14;
      v13 += 8;
      v12 += 64;
    }

    while (v13 != a4);
  }

  *v12 = *a6;
  v17 = *(a6 + 8);
  v18 = *(a6 + 24);
  v19 = *(a6 + 40);
  *(v12 + 56) = *(a6 + 56);
  *(v12 + 40) = v19;
  *(v12 + 24) = v18;
  *(v12 + 8) = v17;
  if (v11 != a4)
  {
    v20 = v12 + (a5 << 6);
    do
    {
      *v20 = *a4;
      v21 = *(a4 + 8);
      v22 = *(a4 + 24);
      v23 = *(a4 + 40);
      *(v20 + 56) = *(a4 + 56);
      *(v20 + 40) = v23;
      *(v20 + 24) = v22;
      *(v20 + 8) = v21;
      a4 += 64;
      v20 += 64;
    }

    while (a4 != v11);
  }

  if (v10)
  {
    v24 = *a1;
    if (a1 + 3 != *a1)
    {
      operator delete(v24);
    }
  }

  v25 = a1[1] + a5;
  *a1 = a2;
  a1[1] = v25;
  a1[2] = a3;
}

uint64_t sub_100144254(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021ACF8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100144304(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014431C(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v2 = *(a2 + 12);
  if (v2 == -1)
  {
    sub_100015D74();
  }

  v5 = &v4;
  return (off_10021B1B8[v2])(&v5, a2 + 4);
}

void *sub_100144384(void *a1)
{
  v1 = sub_100001FE8(a1, "none {", 6);
  v2 = sub_100001FE8(v1, "[empty]", 7);

  return sub_100001FE8(v2, "}", 1);
}

void sub_10014443C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete[]();
  }

  __cxa_rethrow();
}

void sub_10014447C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001444B4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_1001444D4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100144514(void *a1, uint64_t a2)
{
  sub_1000A5780((a1 + 2), a2);
  *a1 = off_10021B2D8;
  a1[2] = off_10021B340;
  a1[1] = off_10021B300;
  return a1;
}

std::exception *sub_100144598(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_1002084E0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void sub_100144614(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_1002084E0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_1001446B0(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_1002084E0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_100144734(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_1002084E0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_1001447D4(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = off_1002084E0;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10014486C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = off_1002084E0;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  operator delete();
}

uint64_t sub_10014491C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021AF18;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_1001449CC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1001449E4(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  operator new[]();
}

uint64_t sub_100144B8C(const __CFString *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = "Invalid resource key";
    goto LABEL_8;
  }

  Length = CFStringGetLength(a1);
  if (Length >= 5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = "Resource name is too long to fit uint32_t";
    goto LABEL_8;
  }

  v8.length = Length;
  *buffer = 0;
  v8.location = 0;
  if (CFStringGetBytes(a1, v8, 0, 0, 0, buffer, 4, 0) != 4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = "Can't get key in cstring format";
LABEL_8:
    v6 = sub_100001940(exception, v5, 0x16u);
  }

  return bswap32(*buffer);
}

BOOL sub_100144C60(__CFArray *a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v5 = v3;
  if (v3)
  {
    CFArrayAppendValue(a1, v3);
  }

  sub_100053E5C(&v5);
  return v3 != 0;
}

BOOL sub_100144CE4(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v7 = v5;
  if (v5)
  {
    CFDictionarySetValue(a1, a2, v5);
  }

  sub_100053E5C(&v7);
  return v5 != 0;
}

__CFDictionary *sub_100144D78@<X0>(const void **keys@<X0>, const void **values@<X1>, CFIndex numValues@<X2>, CFMutableDictionaryRef *a4@<X8>)
{
  if (keys && values && numValues)
  {
    result = CFDictionaryCreate(kCFAllocatorDefault, keys, values, numValues, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    Mutable = result;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = 0;
    result = sub_100028D2C(&v7);
  }

  *a4 = Mutable;
  return result;
}

CFMutableDictionaryRef sub_100144E18@<X0>(CFMutableDictionaryRef *a1@<X8>)
{
  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *a1 = result;
  return result;
}

const void **sub_100144E60@<X0>(CFPropertyListRef propertyList@<X0>, const __CFData **a2@<X8>)
{
  error = 0;
  v3 = CFPropertyListCreateData(kCFAllocatorDefault, propertyList, kCFPropertyListXMLFormat_v1_0, 0, &error);
  v4 = v3;
  if (v3)
  {
    v5 = error == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_1002260F0;
    v10 = std::generic_category();
    exception[1] = 22;
    exception[2] = v10;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't serialize property list";
  }

  Length = CFDataGetLength(v3);
  TypeID = CFDataGetTypeID();
  if (CFGetTypeID(v4) != TypeID)
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    CFGetTypeID(v4);
    v12 = sub_100028638(v11);
  }

  v13 = 0;
  *a2 = v4;
  a2[1] = Length;
  sub_1000929D8(&v13);
  return sub_100092E70(&error);
}

void sub_100144FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_100092E70(&a10);
  _Unwind_Resume(a1);
}

const void **sub_100144FE0@<X0>(UInt8 *bytes@<X0>, CFIndex length@<X1>, void *a3@<X8>)
{
  error = 0;
  v4 = CFDataCreate(kCFAllocatorDefault, bytes, length);
  v17 = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_1002260F0;
    v10 = std::generic_category();
    exception[1] = 12;
    exception[2] = v10;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Can't create data for plist deserialization";
  }

  format = kCFPropertyListXMLFormat_v1_0;
  v5 = CFPropertyListCreateWithData(kCFAllocatorDefault, v4, 0, &format, &error);
  if (v5)
  {
    v6 = error == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    Code = CFErrorGetCode(error);
    *v11 = &off_1002260F0;
    v13 = std::generic_category();
    v11[1] = Code;
    v11[2] = v13;
    *(v11 + 24) = 0;
    *(v11 + 48) = 0;
    v11[7] = "Can't convert data to property list";
  }

  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(v5) != TypeID)
  {
    v14 = __cxa_allocate_exception(0x40uLL);
    CFGetTypeID(v5);
    v15 = sub_100028638(v14);
  }

  *a3 = v5;
  sub_1000929D8(&v17);
  return sub_100092E70(&error);
}

void sub_1001451C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12)
{
  __cxa_free_exception(v12);
  sub_1000929D8(&a11);
  sub_100092E70(&a12);
  _Unwind_Resume(a1);
}

char *sub_100145208@<X0>(const __CFData *a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, char **a4@<X8>)
{
  Length = CFDataGetLength(a1);
  v9 = a3 + a2;
  v10 = __CFADD__(a3, a2);
  if (__CFADD__(a3, a2))
  {
    v11 = -1;
  }

  else
  {
    v11 = a3 + a2;
  }

  if (__CFADD__(a3, a2))
  {
    v9 = v11;
  }

  v18 = v9;
  v19 = v10;
  v12 = sub_100101914(&v18);
  if (!a3)
  {
    a3 = Length;
  }

  if (Length < v12)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v17 = sub_100001940(exception, "Unable to convert data to vector.", 0x16u);
  }

  v13 = v12;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  BytePtr = CFDataGetBytePtr(a1);
  sub_10006F178(a4, a3);
  return sub_1000E6D24(a4, *a4, &BytePtr[a2], &BytePtr[v13], v13 - a2);
}

void sub_1001452F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100145318(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  v6 = CFStringCreateWithCString(kCFAllocatorDefault, v5, 0x8000100u);
  v8 = v6;
  if (v6)
  {
    CFDictionarySetValue(a1, a2, v6);
  }

  sub_1000283C8(&v8);
  return v6 != 0;
}

void sub_1001453A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000283C8(va);
  _Unwind_Resume(a1);
}

void sub_1001453B8(CFMutableDictionaryRef *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v4 = *a2;
    v5 = *a2 + 16 * v2;
    do
    {
      v6 = *v4;
      v7 = *(v4 + 8);
      v4 += 16;
      CFDictionaryAddValue(*a1, v6, v7);
    }

    while (v4 != v5);
  }
}

uint64_t sub_100145474()
{
  if (atomic_load_explicit(&qword_1002354C0, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&qword_1002354C0, &v4, sub_10014BBAC);
  }

  return qword_1002354B8;
}

void sub_1001454E0(int a1)
{
  qword_100234C28 = ccaes_cbc_encrypt_mode();
  v2 = ccaes_cbc_decrypt_mode();
  qword_100234C30 = v2;
  v3 = qword_100234C28;
  if (a1)
  {
    v3 = v2;
  }

  *v3;
  operator new[]();
}

void sub_100145628(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *a1 = off_1001F8FA0;
  *(a1 + 12) = a2;
  v7 = *a3;
  v8 = a3[1];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_1001499A0(a1 + 16, v7, v7 + v8, v8);
  *(a1 + 40) = a5;
  *a1 = off_10021B378;
  sub_100146504((a1 + 48));
}

void sub_10014571C(_Unwind_Exception *a1)
{
  sub_100030CF8(v3);
  v5 = v1[6];
  v1[6] = 0;
  if (v5)
  {
    operator delete[]();
  }

  *v1 = v2;
  v6 = v1[2];
  if (v6)
  {
    v1[3] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_100145778(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 40);
  *a1 = off_1001F8FA0;
  *(a1 + 12) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_10006F240(a1 + 16, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  *(a1 + 40) = v4;
  *a1 = off_10021B378;
  sub_100146504((a1 + 48));
}

void sub_100145870(_Unwind_Exception *a1)
{
  v4 = v3;
  sub_100030CF8(v4);
  v6 = v1[6];
  v1[6] = 0;
  if (v6)
  {
    operator delete[]();
  }

  *v1 = v2;
  v7 = v1[2];
  if (v7)
  {
    v1[3] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001458CC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 12);
  qword_100234C28 = ccaes_cbc_encrypt_mode();
  v11 = ccaes_cbc_decrypt_mode();
  qword_100234C30 = v11;
  v12 = qword_100234C28;
  if (v10)
  {
    v12 = v11;
  }

  v13 = *(v12 + 8);
  __chkstk_darwin(v11);
  for (; a5; --a5)
  {
    v14 = *(a1 + 48);
    v23 = v14[2];
    v24 = v14[3];
    v21 = *v14;
    v22 = v14[1];
    v28 = *(v14 + 14);
    v26 = v14[5];
    v27 = v14[6];
    v25 = v14[4];
    sub_100145474();
    cchmac_update();
    sub_100145474();
    cchmac_final();
    v15 = *(a1 + 12);
    qword_100234C28 = ccaes_cbc_encrypt_mode();
    qword_100234C30 = ccaes_cbc_decrypt_mode();
    cccbc_set_iv();
    v16 = *(a1 + 12);
    qword_100234C28 = ccaes_cbc_encrypt_mode();
    qword_100234C30 = ccaes_cbc_decrypt_mode();
    v17 = *(a1 + 56);
    v18 = *(a1 + 40);
    cccbc_update();
    v19 = *(a1 + 40);
    a3 += v19;
    a4 += v19;
    ++a2;
  }

  return 0;
}

void sub_100145A90(int a1)
{
  qword_100234C38 = ccaes_xts_encrypt_mode();
  v2 = ccaes_xts_decrypt_mode();
  qword_100234C40 = v2;
  v3 = qword_100234C38;
  if (a1)
  {
    v3 = v2;
  }

  *v3;
  operator new[]();
}

void sub_100145BE8(uint64_t a1, int a2, uint64_t *a3, _OWORD *a4, uint64_t a5)
{
  *a1 = off_1001F8FA0;
  *(a1 + 12) = a2;
  v9 = *a3;
  v10 = a3[1];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_1001499A0(a1 + 16, v9, v9 + v10, v10);
  *(a1 + 40) = a5;
  *a1 = off_10021B3A0;
  *(a1 + 48) = 0;
  *(a1 + 64) = *a4;
  sub_100145A90(a2);
}

void sub_100145CD4(_Unwind_Exception *a1)
{
  sub_100030D98(v3);
  *v1 = v2;
  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_100145D04(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  v5 = *(a2 + 40);
  *a1 = off_1001F8FA0;
  *(a1 + 12) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  v6 = (a1 + 16);
  sub_10006F240(a1 + 16, *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  *(a1 + 40) = v5;
  *a1 = off_10021B3A0;
  *(a1 + 48) = 0;
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a1 + 24) - *v6;
  sub_100145A90(*(a1 + 12));
}

void sub_100145E10(_Unwind_Exception *a1)
{
  sub_100030D98(v3);
  *v1 = v2;
  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100145E40(uint64_t a1, uint64_t *a2)
{
  ccaes_cbc_encrypt_mode();
  sub_100145EA4(*a2, a2[1], &unk_1001C7414, 15, a1 + 32, 0x20uLL);
  sub_100145EA4(*a2, a2[1], &unk_1001C7423, 15, a1, 0x20uLL);
  return a1;
}

uint64_t sub_100145EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = ccaes_cbc_encrypt_mode();
  v9 = (v8[1] + *v8 + 159) / 0x50uLL;
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - 2 * v11;
  __chkstk_darwin(v10);
  v14 = &v19 - 2 * v13;
  cccmac_init();
  v19 = 1;
  if (a6 >= 0x10)
  {
    do
    {
      memcpy(v14, v12, 80 * v9);
      cccmac_update();
      cccmac_update();
      v15 = *(v14[8] + 8);
      cccmac_final_generate();
      ++v19;
      a5 += 16;
    }

    while (v19 <= a6 >> 4);
  }

  v16 = v8[1] + *v8;
  cc_clear();
  v17 = v8[1] + *v8;
  return cc_clear();
}

void sub_100146044(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v7 = sub_100145E40((a1 + 10), a3);
  *a1 = off_10021B3C8;
  v9[0] = v7;
  v9[1] = 32;
  *&v8 = a1 + 14;
  *(&v8 + 1) = 32;
  sub_100145BE8(a1, a2, v9, &v8, a4);
}

void sub_1001460D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v2 = *(a2 + 128);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 112) = v3;
  *(a1 + 128) = v2;
  *a1 = off_10021B3C8;
  v5 = *(a2 + 12);
  v7[0] = a1 + 80;
  v7[1] = 32;
  *&v6 = a1 + 112;
  *(&v6 + 1) = 32;
  sub_100145BE8(a1, v5, v7, &v6, *(a2 + 40));
}

uint64_t sub_10014618C(uint64_t a1)
{
  *a1 = off_10021B3C8;
  memset_s((a1 + 80), 0x20uLL, 0, 0x20uLL);
  memset_s((a1 + 112), 0x20uLL, 0, 0x20uLL);
  *a1 = off_10021B3A0;
  sub_100030D98((a1 + 48));
  *a1 = off_1001F8FA0;
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10014624C(uint64_t a1)
{
  sub_10014618C(a1);

  operator delete();
}

uint64_t sub_100146284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 12);
  qword_100234C38 = ccaes_xts_encrypt_mode();
  v11 = ccaes_xts_decrypt_mode();
  qword_100234C40 = v11;
  v12 = qword_100234C38;
  if (v10)
  {
    v12 = v11;
  }

  v13 = *(v12 + 16);
  v14 = *(a1 + 12);
  qword_100234C38 = ccaes_xts_encrypt_mode();
  v15 = ccaes_xts_decrypt_mode();
  qword_100234C40 = v15;
  v16 = qword_100234C38;
  if (v14)
  {
    v16 = v15;
  }

  v17 = (*(v16 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  for (; a5; --a5)
  {
    v18 = *(a1 + 12);
    qword_100234C38 = ccaes_xts_encrypt_mode();
    qword_100234C40 = ccaes_xts_decrypt_mode();
    v19 = *(a1 + 48);
    ccxts_set_tweak();
    v20 = *(a1 + 12);
    qword_100234C38 = ccaes_xts_encrypt_mode();
    qword_100234C40 = ccaes_xts_decrypt_mode();
    v22 = *(a1 + 40);
    v21 = *(a1 + 48);
    ccxts_update();
    v23 = *(a1 + 40);
    a3 += v23;
    a4 += v23;
    ++a2;
  }

  return 0;
}

void sub_10014640C(void *a1)
{
  *a1 = 0;
  v1 = *(sub_100145474() + 8);
  v2 = *(sub_100145474() + 16);
  v3 = 8 * (*(sub_100145474() + 8) + ((v1 + v2 + 19) & 0xFFFFFFFFFFFFFFF8) + 1);
  operator new[]();
}

void sub_1001464D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_100146504(void *a1)
{
  *a1 = 0;
  v1 = *(sub_100145474() + 8);
  v2 = *(sub_100145474() + 16);
  v3 = 8 * (*(sub_100145474() + 8) + ((v1 + v2 + 19) & 0xFFFFFFFFFFFFFFF8) + 1);
  operator new[]();
}

void sub_100146604(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100146634(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 == -1)
  {
    sub_100015D74();
  }

  v4 = &v3;
  return (off_10021B5E0[v1])(&v4, a1);
}

uint64_t sub_100146680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (*a3 + 8);
    do
    {
      v11 = *v10;
      v10 += 2;
      v9 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v12 = atomic_fetch_add_explicit(&qword_100235450, 1uLL, memory_order_relaxed) + 1;
  if (atomic_load_explicit(&qword_100235458, memory_order_acquire) != -1)
  {
    v19[0] = &v17;
    v19[1] = &qword_100235460;
    v18 = v19;
    std::__call_once(&qword_100235458, &v18, sub_100149BB4);
  }

  if (v9 >> 17 >= qword_100235460 / v12)
  {
    v13 = qword_100235460 / v12;
  }

  else
  {
    v13 = v9 >> 17;
  }

  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  if (v9 <= 0x20000 || qos_class_self() < QOS_CLASS_DEFAULT || v13 <= 1)
  {
    v15 = sub_100146634(a1);
    result = sub_1001467D8(v15, a2, a3, a4, *(a1 + 152));
  }

  else
  {
    result = sub_100146918(a1, v14, a2, a3, a4, v9);
  }

  atomic_fetch_add_explicit(&qword_100235450, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  return result;
}

uint64_t sub_1001467D8(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  if (!a3[2])
  {
    return 0;
  }

  v10 = *a3;
  v11 = *a4;
  v12 = **a4;
  v13 = **a3;
  do
  {
    if (v11 == &(*a4)[2 * a4[2]])
    {
      break;
    }

    result = (*(*a1 + 16))(a1, a2, v13, v12, 1);
    if (result)
    {
      return result;
    }

    v13 += a5;
    if (v13 == *v10 + v10[1])
    {
      v10 += 2;
      if (v10 != &(*a3)[2 * a3[2]])
      {
        v13 = *v10;
      }
    }

    v12 += a5;
    if (v12 == *v11 + v11[1])
    {
      v11 += 2;
      if (v11 != &(*a4)[2 * a4[2]])
      {
        v12 = *v11;
      }
    }

    ++a2;
  }

  while (v10 != &(*a3)[2 * a3[2]]);
  return 0;
}

uint64_t sub_100146918(uint64_t a1, size_t iterations, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = 0;
  v6 = *(a1 + 152);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1001469BC;
  v8[3] = &unk_10021B3E0;
  v8[4] = a1;
  v8[5] = a4;
  v8[6] = (a6 / iterations + v6 - 1) / v6 * v6;
  v8[7] = a6;
  v8[8] = a5;
  v8[9] = a3;
  v8[10] = &v9;
  dispatch_apply(iterations, 0, v8);
  return v9;
}

void sub_1001469BC(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v3 = a1[7];
  sub_100146B38(a1[5]);
}

void sub_100146AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a9)
  {
    operator delete[]();
  }

  if (a12)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100146C4C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a3 >= 0x21 && qos_class_self() > 0x14)
  {
    v12 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_100146EB8;
    v11[3] = &unk_10021B400;
    v11[4] = a1;
    v11[5] = a3;
    v11[6] = a2;
    v11[7] = a4;
    v11[8] = &v12;
    dispatch_apply((a3 + 31) >> 5, 0, v11);
    return atomic_load(&v12);
  }

  else
  {
    v8 = sub_100146634(a1);
    v9 = *(a1 + 152);

    return sub_100146D4C(v8, a2, a3, a4, v9, 0);
  }
}

uint64_t sub_100146D4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return 0;
  }

  v9 = a3;
  while (1)
  {
    v12 = a6 ? a6 : a2;
    v13 = (*(*a1 + 16))(a1, a4 / a5, a2, v12, 1);
    if (v13)
    {
      break;
    }

    a4 += a5;
    a2 += a5;
    if (!--v9)
    {
      return 0;
    }
  }

  v15 = v13;
  *&v16 = "int crypto::crypt_op::crypt_chunk(crypto::context::aes &, char *, size_t, uint64_t, size_t, char *)";
  *(&v16 + 1) = 33;
  v17 = 16;
  sub_100146FA4(v18, &v16);
  sub_100001FE8(v19, "Crypto operation on data of ", 28);
  std::ostream::operator<<();
  sub_100001FE8(v19, " failed with ", 13);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_100149E84(v18);
  std::ios::~ios();
  if (v15 < 0)
  {
    return v15;
  }

  else
  {
    return -v15;
  }
}

void sub_100146EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001470CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100146EB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_100030DC4(v13, v4);
  v6 = *(v4 + 152);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = sub_100146634(v13);
  if ((v5 - 32 * a2) >= 0x20)
  {
    v10 = 32;
  }

  else
  {
    v10 = v5 - 32 * a2;
  }

  v11 = sub_100146D4C(v9, v8 + v6 * 32 * a2, v10, v7 + v6 * 32 * a2, *(v4 + 152), 0);
  if (v11)
  {
    atomic_store(v11, *(a1 + 64));
  }

  return sub_100030E70(v13);
}

void *sub_100146FA4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10014BBCC(a1, a2);
  *a1 = off_10021B610;
  a1[45] = &off_10021B710;
  a1[46] = &off_10021B738;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021B610;
  a1[45] = off_10021B698;
  a1[46] = off_10021B6C0;
  return a1;
}

void sub_1001470A8(_Unwind_Exception *a1)
{
  sub_100149E84(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001470CC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100149E84(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100147110(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, void *, uint64_t), uint64_t a4, unsigned int **a5)
{
  v7 = a1[2];
  if (v7)
  {
    v8 = a4;
    v10 = *a1;
    v11 = (a2 + (a4 >> 1));
    v12 = a3;
    v13 = 112 * v7;
    while (1)
    {
      if (v8)
      {
        (*(*v11 + v12))(v36, v11, v10);
      }

      else
      {
        a3(v36, v11, v10);
      }

      v14 = &(*a5)[6 * a5[2]];
      *v14 = 0;
      *(v14 + 4) = 0;
      *(v14 + 8) = 0;
      if (BYTE4(v36[0]) == 1)
      {
        *v14 = v36[0];
        *(v14 + 4) = 1;
      }

      *(v14 + 16) = v37;
      v37 = 0;
      v15 = *(v14 + 16);
      if (v15)
      {
        *v15 = v14;
      }

      v16 = a5[2] + 1;
      a5[2] = v16;
      v17 = &(*a5)[6 * v16];
      if ((*(v17 - 20) & 1) == 0 && !*(v17 - 8))
      {
        break;
      }

      v10 += 112;
      v13 -= 112;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    *&v34 = "ssize_t crypto::crypt_op::backend_futures_prepare_and_run(const fixed_size_vector_t<sg_entry> &, Backend &, Backend::future_t (Backend::*)(const sg_entry &), fixed_size_vector_t<Backend::future_t> &)";
    *(&v34 + 1) = 138;
    v35 = 16;
    sub_1001473B8(v36, &v34);
    sub_100001FE8(v38, "diskimagesuio: future read invalid in read", 42);
    std::ostream::~ostream();
    sub_10014A61C(v36);
    std::ios::~ios();
    a5[2] = (a5[2] - 1);
    return -5;
  }

  else
  {
LABEL_13:
    (*(*a2 + 152))(a2);
    v18 = a1[2];
    v19 = a5[2];
    v20 = v18 == 0;
    v21 = v19 == 0;
    v22 = 0;
    if (v18)
    {
      v23 = v19 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
LABEL_18:
      if (v20 && v21)
      {
        return v22;
      }

      else
      {
        return -5;
      }
    }

    else
    {
      v25 = *a5;
      v26 = 24 * v19 - 24;
      v27 = 112 * v18 - 112;
      v28 = (*a1 + 16);
      while (1)
      {
        v29 = sub_100044D64(v25);
        v30 = v29;
        v31 = *v28;
        v28 += 14;
        if (v31 != v29)
        {
          break;
        }

        v22 += v29;
        v20 = v27 == 0;
        v21 = v26 == 0;
        if (v27)
        {
          v25 += 6;
          v32 = v26;
          v26 -= 24;
          v27 -= 112;
          if (v32)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      if (v29 >= 0)
      {
        return -5;
      }

      return v30;
    }
  }
}

void sub_1001473A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001474E0(va);
  _Unwind_Resume(a1);
}

void *sub_1001473B8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10014BC94(a1, a2);
  *a1 = off_10021B830;
  a1[45] = &off_10021B930;
  a1[46] = &off_10021B958;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021B830;
  a1[45] = off_10021B8B8;
  a1[46] = off_10021B8E0;
  return a1;
}

void sub_1001474BC(_Unwind_Exception *a1)
{
  sub_10014A61C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001474E0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014A61C(a1);
  std::ios::~ios();
  return a1;
}

void sub_100147524(uint64_t a1, uint64_t a2)
{
  v2 = (3 * *(a2 + 16)) >> 60 != 0;
  if ((48 * *(a2 + 16)) >= 0xFFFFFFFFFFFFFFF0)
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = 48 * *(a2 + 16) + 16;
  }

  operator new[]();
}

void sub_1001476D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a9)
  {
    operator delete[]();
  }

  if (a12)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_100147730(void *a1)
{
  sub_100032420(a1 + 25);
  sub_100033050(a1 + 22);
  if (a1[21])
  {
    a1[21] = 0;
  }

  sub_100033104(a1 + 16);
}

uint64_t sub_100147780(uint64_t a1)
{
  if (*(a1 + 80))
  {
    sub_100147524(*(a1 + 64), a1 + 176);
  }

  v2 = sub_100147110((a1 + 128), *(a1 + 72), sub_1001479AC, 0, (a1 + 104));
  if ((v2 & 0x8000000000000000) == 0)
  {
    sub_100147524(*(a1 + 64), a1 + 176);
  }

  v3 = v2;
  *&v5 = "crypto::crypt_op::crypt_consecutive_vector::operator()()";
  *(&v5 + 1) = 54;
  v6 = 16;
  sub_1001479D0(v7, &v5);
  sub_100001FE8(v8, "crypt_consecutive_vector: check errors_in read futures ", 55);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_10014ADB4(v7);
  std::ios::~ios();
  return v3;
}

void sub_100147988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100147C88(va);
  _Unwind_Resume(a1);
}

void *sub_1001479D0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10014BD5C(a1, a2);
  *a1 = off_10021BA50;
  a1[45] = &off_10021BB50;
  a1[46] = &off_10021BB78;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021BA50;
  a1[45] = off_10021BAD8;
  a1[46] = off_10021BB00;
  return a1;
}

void sub_100147AD4(_Unwind_Exception *a1)
{
  sub_10014ADB4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100147AF8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014ADB4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100147B60(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10014BE24(a1, a2);
  *a1 = off_10021BC70;
  a1[45] = &off_10021BD70;
  a1[46] = &off_10021BD98;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021BC70;
  a1[45] = off_10021BCF8;
  a1[46] = off_10021BD20;
  return a1;
}

void sub_100147C64(_Unwind_Exception *a1)
{
  sub_10014B54C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100147C88(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014B54C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100147CCC(void *a1, size_t size, uint64_t a3)
{
  if (size)
  {
    v6 = malloc_type_valloc(size, 0x8B7C732DuLL);
    if (!v6)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = std::bad_alloc::bad_alloc(exception);
    }
  }

  else
  {
    v6 = 0;
  }

  v10[0] = off_10021BE88;
  v10[3] = v10;
  *a1 = v6;
  sub_100015FBC((a1 + 1), v10);
  sub_10001590C(v10);
  a1[5] = size;
  a1[6] = a3;
  a1[7] = *a1;
  return a1;
}

uint64_t sub_100147DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 56);
  *(a1 + 56) = v3 + (a2 + *(a1 + 48) - 1) / *(a1 + 48) * *(a1 + 48);
  v5[0] = off_10021BF68;
  v5[3] = v5;
  *a3 = v3;
  sub_100015FBC((a3 + 1), v5);
  return sub_10001590C(v5);
}

void *sub_100147E60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = sub_10014BFC4(a1, a6);
  sub_10014C05C(v16 + 32, a7);
  a1[8] = a2;
  a1[9] = a3;
  a1[10] = a4;
  a1[11] = a5;
  a1[12] = a8;
  a1[13] = a9;
  return a1;
}

unint64_t sub_100147EF8(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1[9];
  v4 = v3[2];
  if (!v4)
  {
    return 0;
  }

  v6 = a1[3];
  if (!v6)
  {
    sub_10001583C();
  }

  if ((*(*v6 + 48))(v6, *v3 + 112 * v4 - 112))
  {
    return 0;
  }

  v9 = *a1[9] + 112 * *(a1[9] + 16);
  v10 = *(v9 - 96);
  v11 = *(v9 - 80);
  v12 = v11 - v10;
  if (v11 <= v10)
  {
    return 0;
  }

  v13 = a2[2];
  v14 = a1[12];
  if ((v10 + v13 + v14 - 1) / v14 * v14 > v11)
  {
    if (v12 >= v13)
    {
      v12 = a2[2];
    }

    v13 = (v12 + v10) / v14 * v14 - v10;
  }

  sub_100061AE0(v32, v9 - 112, v10 + v13, 0, *(v9 - 88), v11);
  sub_10002E794(*a1[9] + 112 * *(a1[9] + 16) - 112, v32);
  if (*(&v32[0] + 1))
  {
    sub_10000E984(*(&v32[0] + 1));
  }

  v15 = a1[10];
  v16 = v15[2];
  v17 = *v15;
  v18 = *v15 + 56 * v16;
  if (*(v18 - 8))
  {
    v19 = *(v18 - 24);
    v20 = *(v18 - 40) + v19;
    v21 = *(v18 - 16) + v19;
    v22 = (a2[3] + v13 + a1[12] + ~v21) / a1[12] * a1[12];
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 16), 1uLL, memory_order_relaxed);
      v16 = v15[2];
      v17 = *v15;
    }

    v23 = v17 + 56 * v16;
    *v23 = a3;
    *&v32[0] = 0;
    *(v23 + 8) = 1;
    *(v23 + 16) = v20;
    *(v23 + 24) = v20;
    *(v23 + 32) = v22;
    *(v23 + 40) = v21;
    *(v23 + 48) = 0;
    v15[2] = v16 + 1;
    sub_100032478(v32);
    v24 = a2[3];
  }

  else
  {
    v24 = a2[3];
    *(v18 - 24) = (v24 + v13 + a1[12] + ~*(v18 - 16)) / a1[12] * a1[12];
  }

  v26 = *a1[9] + 112 * *(a1[9] + 16);
  v27 = sub_1001481A4((a1 + 4), *(v26 - 112) + a1[13] + v24 - *(v26 - 88), *a2, v13);
  if (v27 && v28)
  {
    v29 = a1[11];
    if (a3)
    {
      atomic_fetch_add_explicit((a3 + 16), 1uLL, memory_order_relaxed);
    }

    v30 = v29[2];
    v31 = *v29 + 40 * v30;
    *v31 = a3;
    *&v32[0] = 0;
    *(v31 + 8) = 1;
    *(v31 + 16) = v27;
    *(v31 + 24) = v28;
    *(v31 + 32) = v13;
    v29[2] = v30 + 1;
    sub_100032478(v32);
  }

  return v13;
}

void sub_10014818C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001481A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_10001583C();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t sub_100148204@<X0>(uint64_t result@<X0>, uint64_t (***a2)()@<X8>)
{
  if (result)
  {
    v2 = off_10021C078;
  }

  else
  {
    v2 = off_10021BFE8;
  }

  *a2 = v2;
  a2[3] = a2;
  return result;
}

uint64_t sub_100148248(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24) + a3;
  v7 = a1[12];
  v8 = v6 % v7;
  v9 = v7 - v6 % v7;
  if (!v8)
  {
    v9 = 0;
  }

  if (v5 - a3 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5 - a3;
  }

  v11 = a1[3];
  if (!v11)
  {
    goto LABEL_79;
  }

  v12 = a3;
  v14 = *a2;
  v15 = v8 - a3;
  v16 = v8 - a3 + v5;
  result = (*(*v11 + 48))(v11);
  if ((result & 1) == 0 && !v16)
  {
    return result;
  }

  v18 = a1[3];
  if (!v18)
  {
LABEL_79:
    sub_10001583C();
  }

  v19 = vm_page_size;
  v75 = v12 - v8 + a1[13] + *(a2 + 24);
  result = (*(*v18 + 48))(v18, a2);
  if (result)
  {
    v20 = (v16 + v19 - 1) / v19 * v19;
    sub_100147DC4(a1[8], v20, &v87);
    v21 = a1[9];
    sub_10014C2B4(&v77, &v87);
    v22 = v15 + *(a2 + 16);
    v79 = v77;
    v80 = v78;
    if (v78)
    {
      atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v81 = v22;
    v82 = v75;
    v83 = v20;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    sub_100030464(*v21 + 112 * v21[2]++, &v79);
    if (v80)
    {
      sub_10000E984(v80);
    }

    if (v78)
    {
      sub_10000E984(v78);
    }

    sub_100015888(&v87, 0);
    result = sub_10001590C(v88);
  }

  v23 = v14 + v12;
  if (v8)
  {
    v24 = a1[3];
    v25 = a4;
    if (!v24)
    {
      sub_10001583C();
    }

    if (((*(*v24 + 48))(v24, a2) & 1) == 0)
    {
      sub_100147DC4(a1[8], a1[12], &v87);
      v26 = a1[9];
      sub_10014C2B4(&v77, &v87);
      v27 = a1[12];
      v79 = v77;
      v80 = v78;
      if (v78)
      {
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v81 = v10 + v8;
      v82 = v75;
      v83 = v27;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      sub_100030464(*v26 + 112 * v26[2]++, &v79);
      if (v80)
      {
        sub_10000E984(v80);
      }

      if (v78)
      {
        sub_10000E984(v78);
      }

      sub_100015888(&v87, 0);
      sub_10001590C(v88);
    }

    v28 = a1[10];
    if (a4)
    {
      atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
    }

    v29 = *a1[9] + 112 * *(a1[9] + 16);
    v30 = *(v29 - 112);
    v31 = a1[12];
    v32 = *(v29 - 88) - a1[13];
    v33 = v28[2];
    v34 = *v28 + 56 * v33;
    *v34 = a4;
    v79 = 0;
    *(v34 + 8) = 1;
    *(v34 + 16) = v30;
    *(v34 + 24) = v30;
    *(v34 + 32) = v31;
    *(v34 + 40) = v32;
    *(v34 + 48) = 0;
    v28[2] = v33 + 1;
    sub_100032478(&v79);
    result = sub_1001481A4((a1 + 4), *(*a1[9] + 112 * *(a1[9] + 16) - 112) + v8, v23, v10);
    if (result)
    {
      v36 = v35 == 0;
    }

    else
    {
      v36 = 1;
    }

    if (!v36)
    {
      v37 = a1[11];
      if (a4)
      {
        atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
      }

      v38 = v37[2];
      v39 = *v37 + 40 * v38;
      *v39 = a4;
      v79 = 0;
      *(v39 + 8) = 1;
      *(v39 + 16) = result;
      *(v39 + 24) = v35;
      *(v39 + 32) = v10;
      v37[2] = v38 + 1;
      result = sub_100032478(&v79);
    }

    v40 = v10 + v8;
    v16 -= v10 + v8;
    v12 += v10;
    v23 += v10;
  }

  else
  {
    v40 = 0;
    v25 = a4;
  }

  v41 = a1[12];
  v42 = v16 / v41 * v41;
  v43 = v16 % v41;
  if (v16 != v16 % v41)
  {
    v44 = a1[3];
    if (!v44)
    {
      sub_10001583C();
    }

    if (((*(*v44 + 48))(v44, a2) & 1) == 0)
    {
      v45 = a1[9];
      sub_100093AE4(&v79, a2, v42, v12, a1[13] + v12 + *(a2 + 24), *(a2 + 32) - v12);
      sub_100030464(*v45 + 112 * v45[2]++, &v79);
      if (v80)
      {
        sub_10000E984(v80);
      }

      v40 = 0;
    }

    v46 = a1[10];
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 16), 1uLL, memory_order_relaxed);
    }

    v47 = *a1[9] + 112 * *(a1[9] + 16);
    v48 = *(v47 - 112) + v40;
    v49 = *(a2 + 40) & 1;
    if (*(a2 + 40))
    {
      v50 = *(v47 - 112) + v40;
    }

    else
    {
      v50 = v23;
    }

    v51 = *(v47 - 88) + v40 - a1[13];
    v52 = v46[2];
    v53 = *v46 + 56 * v52;
    *v53 = v25;
    v79 = 0;
    *(v53 + 8) = 1;
    *(v53 + 16) = v48;
    *(v53 + 24) = v50;
    *(v53 + 32) = v42;
    *(v53 + 40) = v51;
    *(v53 + 48) = v49 ^ 1;
    v46[2] = v52 + 1;
    result = sub_100032478(&v79);
    if (*(a2 + 40))
    {
      result = sub_1001481A4((a1 + 4), *(*a1[9] + 112 * *(a1[9] + 16) - 112) + v40, v23, v42);
      if (result && v54 != 0)
      {
        v56 = a1[11];
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 16), 1uLL, memory_order_relaxed);
        }

        v57 = v56[2];
        v58 = *v56 + 40 * v57;
        *v58 = v25;
        v79 = 0;
        *(v58 + 8) = 1;
        *(v58 + 16) = result;
        *(v58 + 24) = v54;
        *(v58 + 32) = v42;
        v56[2] = v57 + 1;
        result = sub_100032478(&v79);
      }
    }

    v40 += v42;
    v23 += v42;
  }

  if (v43)
  {
    v59 = a1[3];
    if (!v59)
    {
      sub_10001583C();
    }

    if (((*(*v59 + 48))(v59, a2) & 1) == 0)
    {
      v60 = (v43 + a1[12] - 1) / a1[12] * a1[12];
      sub_100147DC4(a1[8], v60, &v87);
      v61 = a1[9];
      sub_10014C2B4(&v77, &v87);
      v62 = v42 + v12 + a1[13] + *(a2 + 24);
      v79 = v77;
      v80 = v78;
      if (v78)
      {
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v81 = v43;
      v82 = v62;
      v83 = v60;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      sub_100030464(*v61 + 112 * v61[2]++, &v79);
      if (v80)
      {
        sub_10000E984(v80);
      }

      if (v78)
      {
        sub_10000E984(v78);
      }

      sub_100015888(&v87, 0);
      sub_10001590C(v88);
      v40 = 0;
    }

    v63 = a1[10];
    if (a4)
    {
      atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
    }

    v64 = *a1[9] + 112 * *(a1[9] + 16);
    v65 = *(v64 - 112) + v40;
    v66 = a1[12];
    v67 = *(v64 - 88) + v40 - a1[13];
    v68 = v63[2];
    v69 = *v63 + 56 * v68;
    *v69 = a4;
    v79 = 0;
    *(v69 + 8) = 1;
    *(v69 + 16) = v65;
    *(v69 + 24) = v65;
    *(v69 + 32) = v66;
    *(v69 + 40) = v67;
    *(v69 + 48) = 0;
    v63[2] = v68 + 1;
    sub_100032478(&v79);
    result = sub_1001481A4((a1 + 4), *(*a1[9] + 112 * *(a1[9] + 16) - 112) + v40, v23, v43);
    if (result)
    {
      v71 = v70 == 0;
    }

    else
    {
      v71 = 1;
    }

    if (!v71)
    {
      v72 = a1[11];
      if (a4)
      {
        atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
      }

      v73 = v72[2];
      v74 = *v72 + 40 * v73;
      *v74 = a4;
      v79 = 0;
      *(v74 + 8) = 1;
      *(v74 + 16) = result;
      *(v74 + 24) = v70;
      *(v74 + 32) = v43;
      v72[2] = v73 + 1;
      return sub_100032478(&v79);
    }
  }

  return result;
}

void sub_100148A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_10000E984(a15);
  }

  _Unwind_Resume(exception_object);
}

const std::error_category *sub_100148AA8@<X0>(const std::error_category *result@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v4 = result[6].__vftable;
  if (LOBYTE(result[13].__vftable) != 1 || v4 == 0)
  {
    *(a3 + 16) = 1;
  }

  else
  {
    v6 = LODWORD(result[11].__vftable);
    if (!(result[12].__vftable % v6) && !(result[2].__vftable % v6))
    {
      v7 = a2 == 0;
      if (v4 != 3)
      {
        if (v4 == 2)
        {
          sub_100145BE8(v9, v7, &result[7], &result[9], v6);
        }

        sub_10014640C(&v8);
      }

      sub_100146044(v9, v7, &result[7], v6);
    }

    result = std::generic_category();
    *a3 = 22;
    *(a3 + 8) = result;
    *(a3 + 16) = 0;
  }

  return result;
}

void sub_100148D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_100030C64(&a30);
  if (a10)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100148DF0(uint64_t a1, uint64_t a2)
{
  v14[0] = 0;
  v17 = 0;
  v4 = *(a1 + 104);
  v5 = *(a1 + 48);
  if (v4 == 1 && v5 != 0)
  {
    if (*(a1 + 40))
    {
      sub_100148FE4(*(a1 + 32), &v11);
    }

    v5 = 1;
    LOBYTE(v4) = 1;
  }

  v7 = a1;
  if ((v4 & 1) == 0 || !v5)
  {
    goto LABEL_17;
  }

  v8.__vftable = *a1;
  sub_100148AA8(a1, 1, &v12);
  if (v13)
  {
    if (v7 == a1)
    {
      sub_1001490F4(v14, a1);
      if (v16 == 1)
      {
        v16 = 0;
      }

      if ((v17 & 1) == 0)
      {
        sub_1000B7AC4();
      }

      v7 = v14;
    }

LABEL_17:
    v9 = (*(*a2 + 88))(a2, v7);
    goto LABEL_21;
  }

  if (v12 < 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = -v12;
  }

LABEL_21:
  if (v17 == 1 && v15)
  {
    sub_10000E984(v15);
  }

  return v9;
}

void sub_100148F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a13)
  {
    sub_10000E984(a13);
  }

  if (v40)
  {
    sub_10000E984(v40);
  }

  if (a40 == 1)
  {
    if (a27)
    {
      sub_10000E984(a27);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_100148FE4(size_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = malloc_type_valloc(a1, 0x4DC0432DuLL);
    if (!v3)
    {
      exception = __cxa_allocate_exception(8uLL);
      v5 = std::bad_alloc::bad_alloc(exception);
    }
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  operator new();
}

void sub_100149088(void *a1)
{
  __cxa_begin_catch(a1);
  free(v1);
  __cxa_rethrow();
}

uint64_t sub_1001490B0(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 112) == 1)
  {
    sub_10002E794(a1, a2);
  }

  else
  {
    sub_100030464(a1, a2);
    *(a1 + 112) = 1;
  }

  return a1;
}

uint64_t sub_1001490F4(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 112) == 1)
  {
    sub_10002F0BC(a1, a2);
  }

  else
  {
    sub_100030254(a1, a2);
    *(a1 + 112) = 1;
  }

  return a1;
}

uint64_t *sub_100149138(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 104) != 1 || *(a2 + 48) == 0;
  if (!v6 && (*(a2 + 40) & 2) != 0)
  {
    sub_100148FE4(*(a2 + 32), &v8);
  }

  sub_100030254(v9, a2);
  *a1 = a2;
  sub_100030464((a1 + 1), v9);
  if (v10)
  {
    sub_10000E984(v10);
  }

  a1[15] = a3;
  return a1;
}

void sub_100149250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a12)
  {
    sub_10000E984(a12);
  }

  if (v26)
  {
    sub_10000E984(v26);
  }

  _Unwind_Resume(exception_object);
}

const std::error_category *sub_100149298(const std::error_category *a1)
{
  if (LOBYTE(a1[14].__vftable) == 1)
  {
    if (LODWORD(a1[7].__vftable))
    {
      v2 = a1->~error_category;
      sub_100148AA8(a1 + 1, 0, v6);
      if ((v7 & 1) == 0)
      {
        v3 = v6[0];
        if (v6[0] >= 0)
        {
          v3 = -v6[0];
        }

        LODWORD(a1[15].~error_category) = v3;
      }
    }
  }

  v4 = a1[2].__vftable;
  if (v4)
  {
    sub_10000E984(v4);
  }

  return a1;
}

uint64_t sub_1001493A4(void *a1, uint64_t a2)
{
  sub_1001493D8(a1);
  bzero(*a2, *(a2 + 16));
  return *(a2 + 16);
}

void sub_1001493D8(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  if (v3 == v2)
  {
    v4 = a1 + 8;
  }

  else
  {
    v4 = a1 + 8;
    v5 = a1[7];
    v6 = &v2[v5 / 0x22];
    v7 = *v6 + 120 * (v5 % 0x22);
    v8 = v2[(a1[8] + v5) / 0x22] + 120 * ((a1[8] + v5) % 0x22);
    if (v7 != v8)
    {
      do
      {
        bzero(*v7, *(v7 + 16));
        v9 = *(v7 + 16);
        v11 = *(v7 + 112);
        v10 = (v7 + 112);
        *v11 = v9;
        *(v11 + 4) = 1;
        sub_100032F74(v10);
        v7 = (v10 + 1);
        if (v7 - *v6 == 4080)
        {
          v12 = v6[1];
          ++v6;
          v7 = v12;
        }
      }

      while (v7 != v8);
      v2 = a1[4];
      v3 = a1[5];
    }
  }

  if (v3 != v2)
  {
    v13 = a1[7];
    v14 = &v2[v13 / 0x22];
    v15 = *v14 + 120 * (v13 % 0x22);
    v16 = v2[(a1[8] + v13) / 0x22] + 120 * ((a1[8] + v13) % 0x22);
    if (v15 != v16)
    {
      do
      {
        v17 = *(v15 + 112);
        if (v17)
        {
          *(v17 + 16) = 0;
        }

        v18 = *(v15 + 8);
        if (v18)
        {
          sub_10000E984(v18);
        }

        v15 += 120;
        if (v15 - *v14 == 4080)
        {
          v19 = v14[1];
          ++v14;
          v15 = v19;
        }
      }

      while (v15 != v16);
      v2 = a1[4];
      v3 = a1[5];
    }
  }

  *v4 = 0;
  v20 = v3 - v2;
  if (v20 >= 3)
  {
    do
    {
      operator delete(*v2);
      v21 = a1[5];
      v2 = (a1[4] + 8);
      a1[4] = v2;
      v20 = (v21 - v2) >> 3;
    }

    while (v20 > 2);
  }

  if (v20 == 1)
  {
    v22 = 17;
  }

  else
  {
    if (v20 != 2)
    {
      return;
    }

    v22 = 34;
  }

  a1[7] = v22;
}

void sub_1001495A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v10) = 0;
  v11 = 0;
  v13 = &v14;
  v14 = &v10;
  v12 = 0;
  sub_100030254(v7, a2);
  v9 = v14;
  v5 = v14;
  v14 = 0;
  *(v5 + 2) = &v9;
  sub_1001496B0((a1 + 24), v7);
  if (v9)
  {
    *(v9 + 2) = 0;
  }

  if (v8)
  {
    sub_10000E984(v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v11 == 1)
  {
    *a3 = v10;
    *(a3 + 4) = 1;
  }

  v6 = v13;
  *(a3 + 16) = v13;
  if (v6)
  {
    *v6 = a3;
  }

  if (v14)
  {
    *(v14 + 2) = 0;
  }
}

void sub_100149678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a24)
  {
    *(a24 + 16) = 0;
  }

  if (a11)
  {
    sub_10000E984(a11);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    *(v26 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001496B0(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 34 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_10014C6B4(a1);
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
    v8 = *(v4 + 8 * (v7 / 0x22)) + 120 * (v7 % 0x22);
  }

  v9 = sub_100030464(v8, a2);
  *(v9 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  *(*(v9 + 112) + 16) = v9 + 112;
  v10 = a1[4];
  v11 = a1[5] + 1;
  a1[5] = v11;
  v12 = v10 + v11;
  v13 = a1[1];
  v14 = (v13 + 8 * (v12 / 0x22));
  v15 = *v14 + 120 * (v12 % 0x22);
  if (a1[2] == v13)
  {
    v15 = 0;
  }

  if (v15 == *v14)
  {
    v15 = *(v14 - 1) + 4080;
  }

  return v15 - 120;
}

void sub_1001497C4(uint64_t a1)
{
  *a1 = off_10021B378;
  sub_100030CF8((a1 + 56));
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    operator delete[]();
  }

  *a1 = off_1001F8FA0;
  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 24) = v3;
    operator delete(v3);
  }

  operator delete();
}

void sub_10014987C(uint64_t a1)
{
  *a1 = off_10021B3A0;
  sub_100030D98((a1 + 48));
  *a1 = off_1001F8FA0;
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_100149910(uint64_t a1)
{
  sub_1000334DC((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100149948(uint64_t a1)
{
  sub_1000334DC((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

uint64_t sub_1001499A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100040450(result, a4);
  }

  return result;
}

void sub_1001499F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100149A14(int *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    qword_100234C28 = ccaes_cbc_encrypt_mode();
    v3 = ccaes_cbc_decrypt_mode();
    qword_100234C30 = v3;
    v4 = qword_100234C28;
    if (v2)
    {
      v4 = v3;
    }

    v5 = (*v4 + 15) >> 4;
    cc_clear();

    operator delete[]();
  }

  return result;
}

int *sub_100149AA8(int *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_100149A14(result + 2, v3);
  }

  return result;
}

int *sub_100149AD8(int *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    qword_100234C38 = ccaes_xts_encrypt_mode();
    v3 = ccaes_xts_decrypt_mode();
    qword_100234C40 = v3;
    v4 = qword_100234C38;
    if (v2)
    {
      v4 = v3;
    }

    v5 = (*v4 + 15) >> 4;
    cc_clear();

    operator delete[]();
  }

  return result;
}

int *sub_100149B6C(int *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_100149AD8(result + 2, v3);
  }

  return result;
}

uint64_t sub_100149BB4(uint64_t a1)
{
  v1 = *(*a1 + 8);
  result = sub_100043D30();
  LODWORD(v3) = result >> 2;
  if (result < 4)
  {
    v3 = 1;
  }

  else
  {
    v3 = v3;
  }

  *v1 = v3;
  return result;
}

uint64_t sub_100149BEC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100149E84(v1);

  return std::ios::~ios();
}

uint64_t sub_100149C38(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100149E84(v1);

  return std::ios::~ios();
}

void sub_100149C98(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100149E84(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100149D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100149D3C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100149DA8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100149E84(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100149E0C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100149E84(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100149E84(uint64_t a1)
{
  *a1 = off_10021B7A8;
  sub_100149FF0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100149FF0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10014A1A0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10014A13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10014A168(uint64_t a1)
{
  sub_100149E84(a1);

  operator delete();
}

int *sub_10014A1A0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 419;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 419;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10014A384(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014A61C(v1);

  return std::ios::~ios();
}

uint64_t sub_10014A3D0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014A61C(v1);

  return std::ios::~ios();
}

void sub_10014A430(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014A61C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10014A498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10014A4D4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10014A540(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014A61C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10014A5A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014A61C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10014A61C(uint64_t a1)
{
  *a1 = off_10021B9C8;
  sub_10014A788(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10014A788(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10014A938((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10014A8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10014A900(uint64_t a1)
{
  sub_10014A61C(a1);

  operator delete();
}

int *sub_10014A938(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 445;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 445;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10014AB1C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014ADB4(v1);

  return std::ios::~ios();
}

uint64_t sub_10014AB68(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014ADB4(v1);

  return std::ios::~ios();
}

void sub_10014ABC8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014ADB4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10014AC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10014AC6C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10014ACD8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014ADB4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10014AD3C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014ADB4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10014ADB4(uint64_t a1)
{
  *a1 = off_10021BBE8;
  sub_10014AF20(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10014AF20(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10014B0D0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10014B06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10014B098(uint64_t a1)
{
  sub_10014ADB4(a1);

  operator delete();
}

int *sub_10014B0D0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 496;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 496;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10014B2B4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014B54C(v1);

  return std::ios::~ios();
}

uint64_t sub_10014B300(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014B54C(v1);

  return std::ios::~ios();
}

void sub_10014B360(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10014B54C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10014B3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10014B404(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10014B470(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10014B54C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10014B4D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10014B54C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10014B54C(uint64_t a1)
{
  *a1 = off_10021BE08;
  sub_10014B6B8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10014B6B8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10014B868((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10014B804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10014B830(uint64_t a1)
{
  sub_10014B54C(a1);

  operator delete();
}

int *sub_10014B868(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 516;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 516;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10014BADC(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_10021BEE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10014BB2C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10014BB6C(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_10021BF48))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014BBAC()
{
  result = ccsha1_di();
  qword_1002354B8 = result;
  return result;
}

uint64_t sub_10014BBCC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021B7A8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10014BC7C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014BC94(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021B9C8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10014BD44(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014BD5C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021BBE8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10014BE0C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014BE24(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021BE08;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10014BED4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014BF78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014BFC4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10014C05C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10014C188(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014C268(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10014C2B4(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void sub_10014C394(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021C0F8;
  sub_10001590C(&a1[1].__shared_owners_);

  std::__shared_weak_count::~__shared_weak_count(a1);
}

void sub_10014C3E8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021C0F8;
  sub_10001590C(&a1[1].__shared_owners_);
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10014C450(uint64_t a1)
{
  sub_1000158B8(a1 + 32, *(a1 + 24));

  return sub_10001590C(a1 + 32);
}

uint64_t sub_10014C494(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014C54C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_10021C1B8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  sub_100192AE0((a1 + 24));
  *(a1 + 24) = off_10021B508;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return a1;
}

void sub_10014C608(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021C1B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10014C668(uint64_t a1)
{
  sub_1000334DC((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void *sub_10014C6B4(void *a1)
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
    sub_100017300(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100074E98(a1, &v10);
}

void sub_10014C83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10014D4D4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_1000429F0(result, a2);
    }

    sub_100015B70();
  }

  return result;
}

uint64_t sub_10014D664(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        operator delete[]();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 24);
  }

  *(a1 + 32) = v2;
  std::mutex::~mutex((a1 + 96));
  std::condition_variable::~condition_variable((a1 + 48));
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10014D6F0(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  *(a1 + 48) = 1018212795;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  if (a3 <= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  *(a1 + 16) = v7;
  sub_10014D4D4(v6, a3);
  if (a3)
  {
    sub_10014D574(a1);
  }

  return a1;
}

void sub_10014D7A0(uint64_t a1@<X0>, void *a2@<X8>)
{
  __lk.__m_ = (a1 + 96);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 96));
  v4 = *(a1 + 32);
  if (*(a1 + 24) == v4)
  {
    if (*(a1 + 16) > *(a1 + 8))
    {
      sub_10014D574(a1);
    }

    do
    {
      std::condition_variable::wait((a1 + 48), &__lk);
      v4 = *(a1 + 32);
    }

    while (*(a1 + 24) == v4);
  }

  v5 = *(v4 - 8);
  *(a1 + 32) = v4 - 8;
  v7 = a1;
  *a2 = v5;
  operator new();
}

void sub_10014D8D4(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v2 = *a1;
  std::mutex::lock((*a1 + 96));
  sub_10014DA2C(v2 + 24, &v3);
  std::mutex::unlock((v2 + 96));
  std::condition_variable::notify_one((v2 + 48));
}

void sub_10014D924(_Unwind_Exception *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 96));
  _Unwind_Resume(a1);
}

void sub_10014D940(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10014D978(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 24);
  std::mutex::lock((v1 + 96));
  sub_10014DA2C(v1 + 24, &v2);
  std::mutex::unlock((v1 + 96));
  std::condition_variable::notify_one((v1 + 48));
}

void sub_10014D9C8(void *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 96));
  sub_100001A14(a1);
}

uint64_t sub_10014D9E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014DA2C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100015B70();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1000429F0(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
  return v6 - 8;
}

io_service_t *sub_10014DB04(io_service_t *a1, char *bsdName)
{
  *a1 = 0;
  v4 = IOBSDNameMatching(kIOMainPortDefault, 0, bsdName);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  *a1 = MatchingService;
  if (!MatchingService)
  {
    v7 = bsdName;
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v13);
    sub_100001FE8(v13, "device with dev name ", 21);
    v9 = strlen(v7);
    sub_100001FE8(v13, v7, v9);
    sub_100001FE8(v13, " not found in registry", 22);
    v10 = *__error();
    v11 = std::generic_category();
    v12 = sub_10014E398(exception, v13, v10, v11);
  }

  return a1;
}

void sub_10014DC08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000C8C8(va);
  sub_10014DC4C(v2);
  _Unwind_Resume(a1);
}

io_service_t *sub_10014DC80(io_service_t *a1, uint64_t entryID)
{
  *a1 = 0;
  v3 = IORegistryEntryIDMatching(entryID);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  *a1 = MatchingService;
  if (!MatchingService)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v10);
    sub_100001FE8(v10, "device with registry entry ID 0x", 32);
    *(&v10[1] + *(v10[0] - 3)) = *(&v10[1] + *(v10[0] - 3)) & 0xFFFFFFB5 | 8;
    std::ostream::operator<<();
    sub_100001FE8(v10, " not found in registry", 22);
    v7 = *__error();
    v8 = std::generic_category();
    v9 = sub_10014E398(exception, v10, v7, v8);
  }

  return a1;
}

void sub_10014DDA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000C8C8(va);
  sub_10014DC4C(v2);
  _Unwind_Resume(a1);
}

io_object_t *sub_10014DDE8(io_object_t *a1, IOOptionBits a2, io_object_t *a3)
{
  v5 = sub_1000536FC(a1, a3);
  v5[1] = 0;
  v6 = v5 + 1;
  v7 = *v5;
  if (v7)
  {
    iterator = 0;
    v8 = IORegistryEntryCreateIterator(v7, "IOService", a2, &iterator);
    if (v8)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v11 = sub_10014DEF4(v8);
      *exception = &off_1002260F0;
      exception[1] = v11;
      exception[2] = v12;
      *(exception + 24) = 0;
      *(exception + 48) = 0;
      exception[7] = "Unable to create ioreg iterator";
    }

    *v6 = iterator;
    IOObjectRelease(0);
  }

  return a1;
}

void sub_10014DED8(_Unwind_Exception *a1)
{
  sub_10014DF40(v2);
  sub_10014DF70(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10014DEF4(uint64_t result)
{
  if ((atomic_load_explicit(&qword_100235468, memory_order_acquire) & 1) == 0)
  {
    v1 = result;
    sub_100198970();
    LODWORD(result) = v1;
  }

  return result;
}

BOOL sub_10014DFA0(io_object_t *a1, io_object_t *a2)
{
  if (IOIteratorIsValid(a1[1]) && *a1)
  {
    v4 = !IOIteratorIsValid(a2[1]) || *a2 == 0;
    if (!v4 && sub_10014E03C(a1, a2))
    {
      return 1;
    }
  }

  if (IOIteratorIsValid(a1[1]) && *a1)
  {
    return 0;
  }

  return !IOIteratorIsValid(a2[1]) || *a2 == 0;
}

io_object_t *sub_10014E088(io_object_t *a1)
{
  *a1 = IOIteratorNext(a1[1]);
  IOObjectRelease(0);
  return a1;
}

uint64_t sub_10014E0C4(uint64_t result, int a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

uint64_t sub_10014E0D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10014E134(a1, *(a1 + 8), &v4);
  sub_10014E1BC(&v4, "could not create iterator (begin)", a2);
  return sub_10014E240(&v4);
}

void sub_10014E120(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10014E240(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014E134@<X0>(IOOptionBits *a1@<X0>, io_object_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10014DDE8(object, *a1, a2);
  *a3 = *object;
  *object = 0;
  *(a3 + 16) = 1;
  IOObjectRelease(0);
  return IOObjectRelease(object[0]);
}

double sub_10014E1BC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a1[1] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = *a1;
    *exception = &off_1002260F0;
    *(exception + 8) = v7;
    exception[24] = 0;
    exception[48] = 0;
    *(exception + 7) = a2;
  }

  result = *a1;
  *a3 = *a1;
  *a1 = 0;
  return result;
}

uint64_t sub_10014E240(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    IOObjectRelease(*(a1 + 4));
    IOObjectRelease(*a1);
  }

  return a1;
}

uint64_t sub_10014E288@<X0>(IOOptionBits *a1@<X0>, void *a2@<X8>)
{
  object = 0;
  sub_10014E310(a1, &object, &v5);
  IOObjectRelease(object);
  sub_10014E1BC(&v5, "could not create iterator (end)", a2);
  return sub_10014E240(&v5);
}

uint64_t sub_10014E310@<X0>(IOOptionBits *a1@<X0>, io_object_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10014DDE8(object, *a1, a2);
  *a3 = *object;
  *object = 0;
  *(a3 + 16) = 1;
  IOObjectRelease(0);
  return IOObjectRelease(object[0]);
}

uint64_t sub_10014E398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &off_1002260F0;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v5 = sub_100001B64(a2 + 8);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001BB0();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v6;
  if (v6)
  {
    memmove(&__dst, v5, v6);
  }

  *(&__dst + v7) = 0;
  *(a1 + 24) = __dst;
  *(a1 + 40) = v10;
  *(a1 + 48) = 1;
  return a1;
}

void sub_10014E49C(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete();
}

void sub_10014E4E0(int __val@<W1>, std::string *a2@<X8>)
{
  std::to_string(&v4, __val);
  v3 = std::string::insert(&v4, 0, "kern_return_t was ", 0x12uLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_10014E554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10014E570(void *a1, uint64_t *a2, uint64_t *a3)
{
  *sub_1000440E0(a1, a2) = off_10021C310;
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 192))(v5);
  v7 = a3[1];
  v8 = *a3;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10014EB6C();
}

void sub_10014E6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_10000E984(a13);
  }

  if (v14)
  {
    sub_10000E984(v14);
  }

  sub_10004413C(v13);
  _Unwind_Resume(a1);
}

void sub_10014E720(uint64_t a1, int a2)
{
  std::mutex::lock(*(a1 + 72));
  lseek(a2, 0, 0);
  *&v7 = AAFileStreamOpenWithFD(a2, 0);
  sub_100132BB4(&v10, &v7);
  sub_100132C94(&v9, &v10);
  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100132CC8(&v9, v5, 0x20uLL);
  sub_100132BE8(&v10, &v9, 0xFFFFFFFFFFFFFFFFLL, 0x4000000000000000uLL, 1, &v8);
  sub_10014EE1C();
}

void sub_10014E840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, AAByteStream);
  va_copy(va2, va1);
  v8 = va_arg(va2, AEAContext);
  sub_100132BB8(va);
  if (v4)
  {
    sub_10000E984(v4);
  }

  sub_100132C98(va1);
  sub_100132BB8(va2);
  std::mutex::unlock(v3);
  _Unwind_Resume(a1);
}

void sub_10014E89C(void *a1, void *a2, void *a3)
{
  v5 = sub_1000440E0(a1, a3);
  *v5 = off_10021C310;
  v6 = a2[6];
  v5[5] = a2[5];
  v5[6] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[7] = 0;
  a1[8] = 0;
  v7 = a2[10];
  a1[9] = a2[9];
  a1[10] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10014E720(a1, *(a1[5] + 8));
}

void sub_10014E93C(_Unwind_Exception *a1)
{
  v4 = v1[10];
  if (v4)
  {
    sub_10000E984(v4);
  }

  sub_1001989D8(v1, v2);
  sub_10004413C(v1);
  _Unwind_Resume(a1);
}

ssize_t sub_10014E9AC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104) != 1 || *(a2 + 48) == 0)
  {
    return sub_100132FD4(*(a1 + 56), *a2, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    return 4294967194;
  }
}

void *sub_10014EA08(void *a1)
{
  *a1 = off_10021C310;
  v2 = a1[10];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    sub_10000E984(v4);
  }

  *a1 = off_1001FACC0;
  v5 = a1[4];
  if (v5)
  {
    sub_10000E984(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_10014EAA0(void *a1)
{
  *a1 = off_10021C310;
  v2 = a1[10];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    sub_10000E984(v4);
  }

  *a1 = off_1001FACC0;
  v5 = a1[4];
  if (v5)
  {
    sub_10000E984(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete();
}

void sub_10014EC18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021C400;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10014EC6C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_10000E984(v1);
  }
}

void sub_10014EC80(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_10014ED00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10014ED14(va);
  _Unwind_Resume(a1);
}

std::mutex **sub_10014ED14(std::mutex **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::mutex::~mutex(v2);
    operator delete();
  }

  return a1;
}

void sub_10014ED60(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

std::mutex *sub_10014ED98(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    std::mutex::~mutex(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10014EDDC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_10014EEA0(void *a1, void *a2, uint64_t *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10021C4C8;
  sub_100132F94(a1 + 3, a2, a3, a4);
  return a1;
}

void sub_10014EF1C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10021C4C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

AAByteStream *sub_10014EF70(AAByteStream *a1)
{
  sub_100132BB8(a1 + 5);
  sub_100132C98(a1 + 4);

  return sub_100132BB8(a1 + 3);
}

void sub_10014F044(void *a1, void *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F800;
  sub_10014E89C(a1 + 3, a2, a3);
}

NSObject **sub_10014FD8C(NSObject **a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

dispatch_queue_t *sub_10014FDC4(dispatch_queue_t *a1, char *label, int a3)
{
  switch(a3)
  {
    case 2:
      v6 = &_dispatch_queue_attr_concurrent;
      v5 = label;
      goto LABEL_7;
    case 1:
      global_queue = dispatch_get_global_queue(21, 0);
      v8 = dispatch_queue_create_with_target_V2(label, 0, global_queue);
LABEL_8:
      *a1 = v8;
      return a1;
    case 0:
      v5 = label;
      v6 = 0;
LABEL_7:
      v8 = dispatch_queue_create(v5, v6);
      goto LABEL_8;
  }

  return a1;
}

void *sub_10014FE44(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

void sub_10014FE6C(NSObject **a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  if (v4)
  {
    if (a3)
    {
      v6 = dispatch_time(0, 1000 * a3);
      v7 = *a1;
      v8 = *a2;

      dispatch_after(v6, v7, v8);
    }

    else
    {
      v9 = *a1;

      dispatch_async(v9, v4);
    }
  }
}

uint64_t sub_10014FF24(dispatch_object_t *a1, int a2)
{
  if ((a2 - 1) > 2)
  {
    v3 = 5;
  }

  else
  {
    v3 = *&asc_1001C7E38[8 * (a2 - 1)];
  }

  global_queue = dispatch_get_global_queue(v3, 0);
  if (!global_queue)
  {
    return 22;
  }

  dispatch_set_target_queue(*a1, global_queue);
  return 0;
}

void sub_10014FF88(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    dispatch_release(v2);
    a1[1] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    sub_10014FFEC(v3);
    v4 = a1[6];
    a1[5] = 0;
    a1[6] = 0;
    if (v4)
    {

      sub_10000E984(v4);
    }
  }
}

void sub_10014FFEC(uint64_t a1)
{
  if (atomic_fetch_add((a1 + 128), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    std::mutex::lock((a1 + 64));
    std::condition_variable::notify_all((a1 + 16));

    std::mutex::unlock((a1 + 64));
  }
}

uint64_t sub_100150048(uint64_t a1, __int128 *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_10021C518;
  if (*(a2 + 23) < 0)
  {
    sub_100050108((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v12 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v12;
  }

  v13 = a4[1];
  *(a1 + 40) = *a4;
  *(a1 + 48) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a2 + 23);
  v15 = *a2;
  v16 = *a3;
  sub_1001505F4(v18, a5);
  sub_10000EFD8(v19, a6);
  *(a1 + 8) = dispatch_mach_create();
  sub_10001641C(v19);
  sub_100018550(v18);
  return a1;
}

void sub_1001501C8(_Unwind_Exception *a1)
{
  sub_100018550(v3 + 40);
  v5 = *(v1 + 48);
  if (v5)
  {
    sub_10000E984(v5);
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void sub_100150200(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 8:
      v5 = *(a1 + 96);
      if (v5)
      {
        v6 = *(*v5 + 48);

        v6();
      }

      break;
    case 7:
      v4 = *(a1 + 32);

      sub_10014FF88(v4);
      break;
    case 2:
      msg = dispatch_mach_msg_get_msg();
      sub_1001502D0(a1 + 40, msg, 0);
      break;
  }
}

uint64_t sub_1001502D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_10001583C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_100150378(uint64_t a1)
{
  sub_10001641C(a1 + 72);

  return sub_100018550(a1 + 40);
}

uint64_t sub_1001503B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    a2 = *(a2 + 8);
  }

  if (a3)
  {
    a3 = *(a3 + 8);
  }

  return _dispatch_mach_connect(v3, a2, a3, 0);
}

uint64_t sub_1001503DC(uint64_t a1)
{
  *a1 = off_10021C518;
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_10000E984(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10015044C(uint64_t a1)
{
  sub_1001503DC(a1);

  operator delete();
}

void sub_1001504F4(void **a1)
{
  v1 = *a1;
  if (v1)
  {
    dispatch_block_cancel(v1);
  }
}

const void **sub_100150504(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_block_cancel(v2);
    if (*a1)
    {
      _Block_release(*a1);
    }
  }

  return a1;
}

void sub_100150564(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    dispatch_resume(*a1);
    *(a1 + 32) = 1;
  }
}

uint64_t sub_1001505A0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_source_cancel(v2);
    if ((*(a1 + 32) & 1) == 0)
    {
      dispatch_resume(*a1);
      *(a1 + 32) = 1;
    }

    dispatch_release(*a1);
  }

  return a1;
}

uint64_t sub_1001505F4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10015068C@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W3>, _BYTE *a4@<X8>)
{
  sub_100028820(v36);
  v8 = sub_100001FE8(&v37, "Couldn't open ", 14);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = sub_100001FE8(v8, v10, v11);
  v13 = sub_100001FE8(v12, "' with flags ", 13);
  v14 = *v13;
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v13 + *(v14 - 24) + 8) |= 0x200u;
  v15 = std::ostream::operator<<();
  *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFFB5 | 2;
  if (a3 == 13)
  {
    if (*(a2 + 23) >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    if (fstatat(a1, v16, &v35, 0))
    {
      v34.__r_.__value_.__r.__words[0] = "std::string FileDescriptorWrapper::handle_open_from_error_message(int, const std::string &, int, int)";
      v34.__r_.__value_.__l.__size_ = 65;
      LODWORD(v34.__r_.__value_.__r.__words[2]) = 16;
      sub_100150BD4(&v32, &v34);
      sub_100001FE8(v33, "fstatfs failed with err code", 28);
      v17 = *__error();
      std::ostream::operator<<();
      sub_100001FE8(v33, " trying to check permission after EACCES", 40);
      std::ostream::~ostream();
      sub_100158A74(&v32);
      std::ios::~ios();
    }

    else
    {
      std::to_string(&v32, v35.st_gid);
      v18 = getgrgid(v35.st_gid);
      if (v18)
      {
        sub_10004EB18(&v32, v18->gr_name);
      }

      v19 = sub_100001FE8(&v37, ", UID:GID(Name)=", 16);
      std::to_string(&v34, v35.st_uid);
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v34;
      }

      else
      {
        v20 = v34.__r_.__value_.__r.__words[0];
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v34.__r_.__value_.__l.__size_;
      }

      v22 = sub_100001FE8(v19, v20, size);
      v23 = sub_100001FE8(v22, ":", 1);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v32;
      }

      else
      {
        v24 = v32.__r_.__value_.__r.__words[0];
      }

      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v32.__r_.__value_.__l.__size_;
      }

      sub_100001FE8(v23, v24, v25);
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      v26 = sub_100001FE8(&v37, " mode=", 6);
      v27 = *v26;
      *(v26 + *(*v26 - 24) + 8) = *(v26 + *(*v26 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(v26 + *(v27 - 24) + 8) |= 0x200u;
      v28 = std::ostream::operator<<();
      *(v28 + *(*v28 - 24) + 8) = *(v28 + *(*v28 - 24) + 8) & 0xFFFFFFB5 | 2;
      sub_100001FE8(v28, " (our euid is ", 14);
      geteuid();
      v29 = std::ostream::operator<<();
      sub_100001FE8(v29, ")", 1);
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }
  }

  sub_100028B04(&v38, a4);
  v37 = v30;
  if (v40 < 0)
  {
    operator delete(v39[7].__locale_);
  }

  std::locale::~locale(v39);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100150B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_100150BD4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100164A70(a1, a2);
  *a1 = off_10021C9B8;
  a1[45] = &off_10021CAB8;
  a1[46] = &off_10021CAE0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021C9B8;
  a1[45] = off_10021CA40;
  a1[46] = off_10021CA68;
  return a1;
}

void sub_100150CD8(_Unwind_Exception *a1)
{
  sub_100158A74(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100150CFC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100158A74(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100150D40(uint64_t a1, int a2)
{
  v2 = a1;
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v3 = open(a1, a2, 438);
  if (v3 == -1)
  {
    v11 = *__error();
    if (sub_1000E95F0())
    {
      *&v21 = 0;
      v12 = sub_1000E957C();
      os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (*(v2 + 23) < 0)
      {
        v2 = *v2;
      }

      v13 = *__error();
      *buf = 68158467;
      *&buf[4] = 69;
      v24 = 2080;
      v25 = "static int FileDescriptorWrapper::open_file(const std::string &, int)";
      v26 = 2081;
      v27 = v2;
      v28 = 1024;
      v29 = v13;
      v14 = _os_log_send_and_compose_impl();
      if (v14)
      {
        v15 = v14;
        fprintf(__stderrp, "%s\n", v14);
        free(v15);
      }
    }

    else
    {
      v16 = sub_1000E957C();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        if (*(v2 + 23) < 0)
        {
          v2 = *v2;
        }

        v17 = *__error();
        *buf = 68158467;
        *&buf[4] = 69;
        v24 = 2080;
        v25 = "static int FileDescriptorWrapper::open_file(const std::string &, int)";
        v26 = 2081;
        v27 = v2;
        v28 = 1024;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%.*s: Failed opening %{private}s, errno %d", buf, 0x22u);
      }
    }

    *__error() = v11;
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(buf);
    sub_100001FE8(buf, "Couldn't open file with flags ", 30);
    v19 = *buf;
    *&buf[*(*buf - 24) + 8] = *&buf[*(*buf - 24) + 8] & 0xFFFFFFB5 | 8;
    *&buf[*(v19 - 24) + 8] |= 0x200u;
    std::ostream::operator<<();
    v20 = __error();
    sub_10000EBDC(exception, buf, *v20);
  }

  v4 = v3;
  if (sub_1000E9608())
  {
    *&v21 = "int FileDescriptorWrapper::open_file(const std::string &, int)";
    *(&v21 + 1) = 36;
    v22 = 2;
    sub_10004C72C(buf, &v21);
    sub_100001FE8(v30, "'", 1);
    v5 = *(v2 + 23);
    if (v5 >= 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = *v2;
    }

    if (v5 >= 0)
    {
      v7 = *(v2 + 23);
    }

    else
    {
      v7 = *(v2 + 8);
    }

    sub_100001FE8(v30, v6, v7);
    sub_100001FE8(v30, "' opened successfully with flags ", 33);
    v8 = v30[0];
    *(&v30[1] + *(v30[0] - 24)) = *(&v30[1] + *(v30[0] - 24)) & 0xFFFFFFB5 | 8;
    *(&v30[1] + *(v8 - 24)) |= 0x200u;
    std::ostream::operator<<();
    v9 = v30[0];
    *(&v30[1] + *(v30[0] - 24)) &= ~0x200u;
    *(&v30[1] + *(v9 - 24)) = *(&v30[1] + *(v9 - 24)) & 0xFFFFFFB5 | 2;
    sub_100001FE8(v30, ", fd=", 5);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10004DD38(buf);
    std::ios::~ios();
  }

  return v4;
}

void sub_1001511DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100151228(int a1, uint64_t a2, int a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v24[1] = 438;
  v25 = v5;
  v24[0] = a3 | 0x100;
  v6 = fcntl(a1, 56, v24);
  if (v6 == -1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v19);
    v15 = __error();
    sub_10015068C(a1, a2, *v15, &v21);
    if ((v23 & 0x80u) == 0)
    {
      v16 = &v21;
    }

    else
    {
      v16 = v21;
    }

    if ((v23 & 0x80u) == 0)
    {
      v17 = v23;
    }

    else
    {
      v17 = *(&v21 + 1);
    }

    sub_100001FE8(v19, v16, v17);
    v18 = __error();
    sub_10000EBDC(exception, v19, *v18);
  }

  v7 = v6;
  if (sub_1000E9608())
  {
    *&v21 = "int FileDescriptorWrapper::open_from(int, const std::string &, int)";
    *(&v21 + 1) = 36;
    v22 = 2;
    sub_100151540(v19, &v21);
    sub_100001FE8(v20, "'", 1);
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    sub_100001FE8(v20, v9, v10);
    sub_100001FE8(v20, "' opened successfully with flags ", 33);
    v11 = v20[0];
    *(&v20[1] + *(v20[0] - 24)) = *(&v20[1] + *(v20[0] - 24)) & 0xFFFFFFB5 | 8;
    *(&v20[1] + *(v11 - 24)) |= 0x200u;
    std::ostream::operator<<();
    v12 = v20[0];
    *(&v20[1] + *(v20[0] - 24)) &= ~0x200u;
    *(&v20[1] + *(v12 - 24)) = *(&v20[1] + *(v12 - 24)) & 0xFFFFFFB5 | 2;
    sub_100001FE8(v20, ", fd=", 5);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10015920C(v19);
    std::ios::~ios();
  }

  return v7;
}

void sub_1001514D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v5 - 65) < 0)
  {
    operator delete(*(v5 - 88));
    sub_10000C8C8(va);
    if ((v4 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_10000C8C8(va);
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  __cxa_free_exception(v3);
  goto LABEL_6;
}

void *sub_100151540(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100164B38(a1, a2);
  *a1 = off_10021CBD8;
  a1[45] = &off_10021CCD8;
  a1[46] = &off_10021CD00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021CBD8;
  a1[45] = off_10021CC60;
  a1[46] = off_10021CC88;
  return a1;
}

void sub_100151644(_Unwind_Exception *a1)
{
  sub_10015920C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100151668(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015920C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001516AC(uint64_t a1)
{
  *a1 = off_10021C578;
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    close(v2);
    if (sub_1000E9608())
    {
      *&v5 = "FileDescriptorWrapper::~FileDescriptorWrapper()";
      *(&v5 + 1) = 45;
      v6 = 2;
      sub_100151798(v7, &v5);
      sub_100001FE8(v8, "File descriptor ", 16);
      v3 = *(a1 + 8);
      std::ostream::operator<<();
      sub_100001FE8(v8, " closed", 7);
      std::ostream::~ostream();
      sub_1001599A4(v7);
      std::ios::~ios();
    }
  }

  return a1;
}

void *sub_100151798(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100164C00(a1, a2);
  *a1 = off_10021CDF8;
  a1[45] = &off_10021CEF8;
  a1[46] = &off_10021CF20;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021CDF8;
  a1[45] = off_10021CE80;
  a1[46] = off_10021CEA8;
  return a1;
}

void sub_10015189C(_Unwind_Exception *a1)
{
  sub_1001599A4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001518C0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001599A4(a1);
  std::ios::~ios();
  return a1;
}

void sub_100151908(uint64_t a1)
{
  sub_1001516AC(a1);

  operator delete();
}

uint64_t sub_100151940(uint64_t a1, int a2, char a3)
{
  *(a1 + 8) = a2;
  *a1 = off_1001FCBF0;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  sub_1001519A8(a1);
  return a1;
}

uint64_t sub_1001519A8(uint64_t a1)
{
  memset(&v22, 0, sizeof(v22));
  sub_100151D40(a1, &v22);
  v2 = v22.st_mode & 0xF000;
  if (v2 == 0x2000)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 24576;
  }

  *(a1 + 28) = v3;
  if (!v3)
  {
    *(a1 + 16) = v22.st_size;
    goto LABEL_17;
  }

  bzero(v27, 0x400uLL);
  bzero(&__big, 0x400uLL);
  if (fcntl(*(a1 + 8), 50, v27) < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v10 = __error();
    v11 = sub_100001940(exception, "get path failed", *v10);
  }

  if (!basename_r(v27, &__big))
  {
    v12 = __cxa_allocate_exception(0x40uLL);
    v13 = __error();
    v14 = sub_100001940(v12, "basename_r failed", *v13);
  }

  if (strnstr(&__big, "rdisk", 5uLL) == &__big)
  {
    memmove(&__big, v26, 0x3FFuLL);
  }

  sub_100152864(&__big, v20);
  sub_10005320C(v20, "device not found in registry", &object);
  valuePtr[0] = &object;
  valuePtr[1] = &cf;
  cf = @"Size";
  sub_100053D2C(valuePtr, v17);
  sub_1001528DC(v17, "device size not found in registry", &cf);
  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFNumberGetTypeID()))
  {
    v7 = "device size not found in registry";
    v8 = 19;
    goto LABEL_22;
  }

  valuePtr[0] = 0;
  if (!CFNumberGetValue(cf, kCFNumberLongLongType, valuePtr))
  {
    v7 = "Failed converting CFNumber to longlong";
    v8 = 22;
LABEL_22:
    v15 = __cxa_allocate_exception(0x40uLL);
    *v15 = &off_1002260F0;
    v16 = std::generic_category();
    v15[1] = v8;
    v15[2] = v16;
    *(v15 + 24) = 0;
    *(v15 + 48) = 0;
    v15[7] = v7;
  }

  *(a1 + 16) = valuePtr[0];
  sub_100053E5C(&cf);
  if (v18 == 1)
  {
    sub_100053E5C(v17);
  }

  IOObjectRelease(object);
  if (v21 == 1)
  {
    IOObjectRelease(v20[0]);
  }

LABEL_17:
  result = sub_100151FFC(a1);
  *(a1 + 24) = result;
  st_ino = v22.st_ino;
  *(a1 + 32) = v22.st_dev;
  *(a1 + 40) = st_ino;
  return result;
}

void sub_100151CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, int a14, io_object_t object, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    sub_100001A14(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100151D40@<X0>(uint64_t a1@<X0>, stat *a2@<X8>)
{
  result = fstat(*(a1 + 8), a2);
  if (result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = __error();
    v5 = sub_100001940(exception, "fstat failed", *v4);
  }

  return result;
}

uint64_t sub_100151DC0@<X0>(uint64_t a1@<X0>, statfs *a2@<X8>)
{
  result = fstatfs(*(a1 + 8), a2);
  if ((result & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = __error();
    v5 = sub_100001940(exception, "fstatfs failed", *v4);
  }

  return result;
}

uint64_t sub_100151E40(uint64_t a1)
{
  v1 = *(a1 + 4) & 0xF000;
  if (v1 == 0x2000)
  {
    return 2;
  }

  else
  {
    return v1 == 24576;
  }
}

uint64_t sub_100151E60(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  sub_100151DC0(v1, &__src);
  memcpy(__dst, &__src, sizeof(__dst));
  sub_100010B0C(v3, &__dst[72]);
  *&v8 = "FileDescriptor::get_mounted_on_fs() const";
  *(&v8 + 1) = 33;
  v9 = 2;
  sub_100095940(&__src, &v8);
  sub_100001FE8(&__src.f_mntonname[272], "File system is ", 15);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  sub_100001FE8(&__src.f_mntonname[272], v5, v6);
  std::ostream::~ostream();
  sub_10009C300(&__src);
  return std::ios::~ios();
}

void sub_100151F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100151FFC(uint64_t a1)
{
  sub_100151DC0(a1, &v40);
  if (*(a1 + 28))
  {
    v2 = (v40.f_flags & 0x1000) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    f_bsize = v40.f_bsize;
    goto LABEL_24;
  }

  bzero(&v40, 0x400uLL);
  bzero(&__big, 0x400uLL);
  if (fcntl(*(a1 + 8), 50, &v40) < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = __error();
    v14 = "get path failed";
    goto LABEL_29;
  }

  if (!basename_r(&v40, &__big))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = __error();
    v14 = "basename_r failed";
LABEL_29:
    v15 = *v13;
    *exception = &off_1002260F0;
    v16 = std::generic_category();
    exception[1] = v15;
    exception[2] = v16;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = v14;
  }

  if (strnstr(&__big, "rdisk", 5uLL) == &__big)
  {
    memmove(&__big, &__big + 1, 0x3FFuLL);
  }

  sub_100152864(&__big, v34);
  sub_10005320C(v34, "device not found in registry", &v33);
  sub_10014E0C4(v32, 3, &v33);
  sub_10014E0D0(v32, v30);
  sub_10014E288(v32, &v29);
  while (sub_10014E068(v30, &v29))
  {
    v4 = nullsub_193(v30);
    sub_1000536FC(object, v4);
    v5 = IOObjectConformsTo(object[0], "IOBlockStorageDriver");
    IOObjectRelease(object[0]);
    if (v5)
    {
      break;
    }

    sub_10014E088(v30);
  }

  *v31 = *v30;
  *v30 = 0;
  IOObjectRelease(HIDWORD(v29));
  IOObjectRelease(v29);
  IOObjectRelease(v30[1]);
  IOObjectRelease(v30[0]);
  sub_10014E288(v32, object);
  v6 = sub_10014DFA0(v31, object);
  IOObjectRelease(object[1]);
  IOObjectRelease(object[0]);
  if (v6)
  {
    v17 = __cxa_allocate_exception(0x40uLL);
    v18 = std::generic_category();
    *v17 = &off_1002260F0;
    v17[1] = 19;
    v17[2] = v18;
    *(v17 + 24) = 0;
    *(v17 + 48) = 0;
    v17[7] = "IOBlockStorageDriver device not found in registry iteration";
  }

  v7 = nullsub_193(v31);
  sub_10014E0C4(v28, 1, v7);
  sub_10014E0D0(v28, v26);
  sub_10014E288(v28, &v25);
  while (sub_10014E068(v26, &v25))
  {
    v8 = nullsub_193(v26);
    sub_1000536FC(object, v8);
    v9 = IOObjectConformsTo(object[0], "IOMedia");
    IOObjectRelease(object[0]);
    if (v9)
    {
      break;
    }

    sub_10014E088(v26);
  }

  *v27 = *v26;
  *v26 = 0;
  IOObjectRelease(HIDWORD(v25));
  IOObjectRelease(v25);
  IOObjectRelease(v26[1]);
  IOObjectRelease(v26[0]);
  sub_10014E288(v28, object);
  v10 = sub_10014DFA0(v27, object);
  IOObjectRelease(object[1]);
  IOObjectRelease(object[0]);
  if (v10)
  {
    v19 = __cxa_allocate_exception(0x40uLL);
    v20 = std::generic_category();
    *v19 = &off_1002260F0;
    v19[1] = 19;
    v19[2] = v20;
    *(v19 + 24) = 0;
    *(v19 + 48) = 0;
    v19[7] = "IOMedia device not found in registry iteration";
  }

  valuePtr[0] = nullsub_193(v27);
  valuePtr[1] = &number;
  number = @"Preferred Block Size";
  sub_100053D2C(valuePtr, object);
  sub_1001528DC(object, "Unable to get IOMedia preferred block size", &number);
  valuePtr[0] = 0;
  if (!CFNumberGetValue(number, kCFNumberLongLongType, valuePtr))
  {
    v21 = __cxa_allocate_exception(0x40uLL);
    *v21 = &off_1002260F0;
    v22 = std::generic_category();
    v21[1] = 22;
    v21[2] = v22;
    *(v21 + 24) = 0;
    *(v21 + 48) = 0;
    v21[7] = "Failed converting CFNumber to longlong";
  }

  f_bsize = LODWORD(valuePtr[0]);
  sub_100053E5C(&number);
  if (v24 == 1)
  {
    sub_100053E5C(object);
  }

  IOObjectRelease(v27[1]);
  IOObjectRelease(v27[0]);
  IOObjectRelease(v31[1]);
  IOObjectRelease(v31[0]);
  IOObjectRelease(v33);
  if (v35 == 1)
  {
    IOObjectRelease(v34[0]);
  }

LABEL_24:
  if (sub_1000E9608())
  {
    *&__big = "FileDescriptor::fetch_physical_block_size() const";
    *(&__big + 1) = 41;
    v39 = 2;
    sub_100095F44(&v40, &__big);
    sub_100001FE8(&v40.f_mntonname[272], "Physical block_size is ", 23);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10009D230(&v40);
    std::ios::~ios();
  }

  return f_bsize;
}

void sub_1001525DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100001A14(a1);
}

void sub_100152838()
{
  sub_100152A88(&STACK[0x4B0]);
  __cxa_end_catch();
  JUMPOUT(0x100152748);
}

uint64_t sub_100152864@<X0>(char *bsdName@<X0>, uint64_t a2@<X8>)
{
  sub_10014DC7C(&v4, bsdName);
  *a2 = v4;
  v4 = 0;
  *(a2 + 16) = 1;
  return IOObjectRelease(0);
}

uint64_t sub_1001528DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((*(result + 16) & 1) == 0)
  {
    v3 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = *v3;
    *exception = &off_1002260F0;
    *(exception + 8) = v6;
    exception[24] = 0;
    exception[48] = 0;
    *(exception + 7) = a2;
  }

  *a3 = *result;
  *result = 0;
  return result;
}

void *sub_100152960(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100164CC8(a1, a2);
  *a1 = off_10021D018;
  a1[45] = &off_10021D118;
  a1[46] = &off_10021D140;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021D018;
  a1[45] = off_10021D0A0;
  a1[46] = off_10021D0C8;
  return a1;
}

void sub_100152A64(_Unwind_Exception *a1)
{
  sub_10015A13C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100152A88(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015A13C(a1);
  std::ios::~ios();
  return a1;
}

BOOL sub_100152ACC(uint64_t a1, uint64_t a2)
{
  sub_100151DC0(a1, &v7);
  v3 = v7.f_fsid.val[0];
  v4 = v7.f_fsid.val[1];
  sub_100151DC0(a2, &v7);
  return v3 == v7.f_fsid.val[0] && v4 == v7.f_fsid.val[1];
}

uint64_t sub_100152B98(int a1, int a2, int a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v3 = fcntl(a2, 51, 0);
    }

    else
    {
      v3 = fsync(a2);
    }
  }

  else
  {
    v3 = fcntl(a2, 85, 0);
  }

  if (v3 == -1)
  {
    return -*__error();
  }

  else
  {
    return 0;
  }
}

ssize_t sub_100152C00(void *a1, uint64_t __fd, void *__buf, size_t __nbyte, unint64_t a5)
{
  v6 = a1[1];
  if (__nbyte % v6 || a5 % v6)
  {
    v8[0] = __buf;
    v8[1] = __nbyte;
    return (*(*a1 + 8))(a1, __fd, v8, 1, a5);
  }

  else
  {

    return pread(__fd, __buf, __nbyte, a5);
  }
}

ssize_t sub_100152C88(uint64_t a1, int a2, iovec *a3, int a4, unint64_t a5)
{
  if (a4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a4;
    p_iov_len = &a3->iov_len;
    do
    {
      v9 = *p_iov_len;
      p_iov_len += 2;
      v6 += v9;
      --v7;
    }

    while (v7);
  }

  v10 = *(a1 + 8);
  v11 = a5 % v10 + v6;
  if (a5 % v10)
  {
    v12 = (v11 % v10 != 0) + 1;
  }

  else
  {
    v12 = v11 % v10 != 0;
  }

  if (v12)
  {
    v16 = &v18;
    *v17 = xmmword_1001BC760;
    v14 = (v12 + a4);
    if (v14 >= 0x11)
    {
      sub_100164D90(&v16, v14);
      v15 = *(a1 + 8);
    }

    operator new[]();
  }

  return preadv(a2, a3, a4, a5);
}

void sub_100152F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    if (a10 != __p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_100152F6C(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v6 = (*a1 + 16 * v5);
  if (v5 == *(a1 + 16))
  {
    v7[1] = v2;
    v7[2] = v3;
    sub_1000DA740(a1, v6, 1, a2, v7);
  }

  else
  {
    *v6 = *a2;
    ++*(a1 + 8);
  }
}

uint64_t sub_100152FC8(int a1, int a2, int a3)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  if (a3)
  {
    if (a3 != 2)
    {
      v3 = fsync(a2);
      goto LABEL_6;
    }
  }

  else
  {
    LODWORD(v6) = 2;
  }

  v3 = ioctl(a2, 0x80186416uLL, v5);
LABEL_6:
  if (v3 == -1)
  {
    return -*__error();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10015303C(uint64_t a1)
{
  if (sub_1000B9004(*(a1 + 40)))
  {
    v5 = 0x200000001;
    if (ffsctl(**(a1 + 56), 0xC0084A80uLL, &v5, 0))
    {
      *&v6 = "int FileLocal::disable_file_zero_padding() const";
      *(&v6 + 1) = 40;
      v7 = 0;
      sub_10015322C(v8, &v6);
      sub_100001FE8(v9, "Zero padding cannot be disabled from this process (res=", 55);
      v2 = *__error();
      std::ostream::operator<<();
      sub_100001FE8(v9, ")", 1);
      std::ostream::~ostream();
      sub_10015A940(v8);
      std::ios::~ios();
      return -*__error();
    }

    else
    {
      *&v6 = "int FileLocal::disable_file_zero_padding() const";
      *(&v6 + 1) = 40;
      v7 = 0;
      sub_100153398(v8, &v6);
      sub_100001FE8(v9, "Zero padding disabled successfully on fd ", 41);
      v4 = **(a1 + 56);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10015B0D8(v8);
      std::ios::~ios();
      return 0;
    }
  }

  else
  {
    *&v6 = "int FileLocal::disable_file_zero_padding() const";
    *(&v6 + 1) = 40;
    v7 = 0;
    sub_100089620(v8, &v6);
    sub_100001FE8(v9, "Backend is not mounted on APFS", 30);
    std::ostream::~ostream();
    sub_100090B38(v8);
    std::ios::~ios();
    return 4294967251;
  }
}

void sub_1001531F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1001534C0(va);
  _Unwind_Resume(a1);
}

void *sub_10015322C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100164DFC(a1, a2);
  *a1 = off_10021D238;
  a1[45] = &off_10021D338;
  a1[46] = &off_10021D360;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021D238;
  a1[45] = off_10021D2C0;
  a1[46] = off_10021D2E8;
  return a1;
}

void sub_100153330(_Unwind_Exception *a1)
{
  sub_10015A940(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100153354(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015A940(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100153398(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100164EC4(a1, a2);
  *a1 = off_10021D458;
  a1[45] = &off_10021D558;
  a1[46] = &off_10021D580;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021D458;
  a1[45] = off_10021D4E0;
  a1[46] = off_10021D508;
  return a1;
}

void sub_10015349C(_Unwind_Exception *a1)
{
  sub_10015B0D8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001534C0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015B0D8(a1);
  std::ios::~ios();
  return a1;
}

void sub_100153504(uint64_t a1)
{
  v2 = (a1 + 152);
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, sub_100164F8C);
  }
}

void sub_100153560(uint64_t a1)
{
  v1 = *(a1 + 28);
  if (v1 != 2)
  {
    if (v1 == 1)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_10015362C(int a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  if (fcntl(a1, 57, v2) < 0)
  {
    return -*__error();
  }

  else
  {
    return 0;
  }
}

off_t sub_10015367C(int a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  if (fstatat(a1, a2, &v10, 32))
  {
    if (*__error() == 13 || *__error() == 1)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v9);
    sub_100001FE8(v9, "Cannot stat ", 12);
    v5 = *(v2 + 23);
    if (v5 >= 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = *v2;
    }

    if (v5 >= 0)
    {
      v7 = *(v2 + 23);
    }

    else
    {
      v7 = *(v2 + 8);
    }

    sub_100001FE8(v9, v6, v7);
    v8 = __error();
    sub_10000EBDC(exception, v9, *v8);
  }

  return v10.st_size;
}

void sub_10015381C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100153894(uint64_t a1, uint64_t a2)
{
  v4 = pwrite(**(a1 + 56), *a2, *(a2 + 16), *(a2 + 24));
  v5 = v4;
  if (v4 < 0 || v4 != *(a2 + 16))
  {
    *&v12 = "int FileLocal::_write(const sg_entry &)";
    *(&v12 + 1) = 21;
    v13 = 16;
    sub_100153A10(v14, &v12);
    sub_100001FE8(v15, "Error writing file @ ", 21);
    sub_100192838(v15, a2);
    sub_100001FE8(v15, ". returned ", 11);
    std::ostream::operator<<();
    sub_100001FE8(v15, " with errno: ", 13);
    v10 = *__error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10015B870(v14);
    std::ios::~ios();
    if (v5 == -1)
    {
      return -*__error();
    }

    else
    {
      return 4294967291;
    }
  }

  else
  {
    v6 = *(a2 + 24) + v4;
    v7 = (*(a1 + 40) + 64);
    v8 = atomic_load(v7);
    if (v8 < v6)
    {
      v9 = v8;
      do
      {
        atomic_compare_exchange_strong(v7, &v9, v6);
        if (v9 == v8)
        {
          break;
        }

        v8 = v9;
      }

      while (v9 < v6);
    }
  }

  return v5;
}

void sub_1001539FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100153B38(va);
  _Unwind_Resume(a1);
}

void *sub_100153A10(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100165CE8(a1, a2);
  *a1 = off_10021D678;
  a1[45] = &off_10021D778;
  a1[46] = &off_10021D7A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021D678;
  a1[45] = off_10021D700;
  a1[46] = off_10021D728;
  return a1;
}

void sub_100153B14(_Unwind_Exception *a1)
{
  sub_10015B870(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100153B38(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015B870(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100153B7C(uint64_t a1, uint64_t *a2)
{
  v3 = (***(*(a1 + 40) + 72))(*(*(a1 + 40) + 72), **(a1 + 56), *a2, a2[2], a2[3]);
  v4 = v3;
  if (v3 < 0 || v3 != a2[2])
  {
    *&v7 = "int FileLocal::_read(const sg_entry &)";
    *(&v7 + 1) = 20;
    v8 = 16;
    sub_100153CE4(v9, &v7);
    sub_100001FE8(v10, "Error reading file @ ", 21);
    sub_100192838(v10, a2);
    sub_100001FE8(v10, ". returned ", 11);
    std::ostream::operator<<();
    sub_100001FE8(v10, " with errno: ", 13);
    v5 = *__error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10015C008(v9);
    std::ios::~ios();
    if (v4 == -1)
    {
      return -*__error();
    }

    else
    {
      return 4294967291;
    }
  }

  return v4;
}

void sub_100153CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100153E0C(va);
  _Unwind_Resume(a1);
}

void *sub_100153CE4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100165DB0(a1, a2);
  *a1 = off_10021D898;
  a1[45] = &off_10021D998;
  a1[46] = &off_10021D9C0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021D898;
  a1[45] = off_10021D920;
  a1[46] = off_10021D948;
  return a1;
}

void sub_100153DE8(_Unwind_Exception *a1)
{
  sub_10015C008(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100153E0C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015C008(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100153E50(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 40);
  if (*(v4 + 28))
  {
    v5 = *(v4 + 16);
    if (v5 < a2)
    {
      *&v13 = "int FileLocal::truncate(uint64_t)";
      *(&v13 + 1) = 23;
      v14 = 16;
      sub_100154148(v15, &v13);
      sub_100001FE8(v16, "Cannot increase size of a block device", 38);
      std::ostream::~ostream();
      sub_10015C7A0(v15);
      std::ios::~ios();
      return 4294967268;
    }

    if (v5 > a2)
    {
      *&v13 = "int FileLocal::truncate(uint64_t)";
      *(&v13 + 1) = 23;
      v14 = 0;
      sub_100067AD8(v15, &v13);
      sub_100001FE8(v16, "Ignoring truncate on block device", 33);
      std::ostream::~ostream();
      sub_100069374(v15);
      std::ios::~ios();
    }

    goto LABEL_12;
  }

  v7 = (*(*a1 + 40))(a1);
  if (v7 < a2)
  {
    __buf = 0;
    v8 = pwrite(**(a1 + 56), &__buf, 1uLL, a2 - 1);
    if (v8 != 1)
    {
      v9 = v8;
      *&v13 = "int FileLocal::truncate(uint64_t)";
      *(&v13 + 1) = 23;
      v14 = 16;
      sub_1001542B4(v15, &v13);
      sub_100001FE8(v16, "Failed to increase file size, pwrite returned ", 46);
      std::ostream::operator<<();
      sub_100001FE8(v16, " errno: ", 8);
      v10 = *__error();
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10015CF38(v15);
      std::ios::~ios();
      if (v9 != -1)
      {
        return 4294967291;
      }

      return -*__error();
    }

LABEL_12:
    result = 0;
    atomic_store(a2, (*(a1 + 40) + 64));
    return result;
  }

  if (v7 <= a2 || ftruncate(**(a1 + 56), a2) != -1)
  {
    goto LABEL_12;
  }

  *&v13 = "int FileLocal::truncate(uint64_t)";
  *(&v13 + 1) = 23;
  v14 = 16;
  sub_100154420(v15, &v13);
  sub_100001FE8(v16, "ftruncate failed, errno: ", 25);
  v11 = *__error();
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_10015D6D0(v15);
  std::ios::~ios();
  return -*__error();
}

void sub_100154104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100154548(va);
  _Unwind_Resume(a1);
}

void *sub_100154148(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100165E78(a1, a2);
  *a1 = off_10021DAB8;
  a1[45] = &off_10021DBB8;
  a1[46] = &off_10021DBE0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021DAB8;
  a1[45] = off_10021DB40;
  a1[46] = off_10021DB68;
  return a1;
}

void sub_10015424C(_Unwind_Exception *a1)
{
  sub_10015C7A0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100154270(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015C7A0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1001542B4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100165F40(a1, a2);
  *a1 = off_10021DCD8;
  a1[45] = &off_10021DDD8;
  a1[46] = &off_10021DE00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021DCD8;
  a1[45] = off_10021DD60;
  a1[46] = off_10021DD88;
  return a1;
}

void sub_1001543B8(_Unwind_Exception *a1)
{
  sub_10015CF38(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001543DC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015CF38(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100154420(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100166008(a1, a2);
  *a1 = off_10021DEF8;
  a1[45] = &off_10021DFF8;
  a1[46] = &off_10021E020;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021DEF8;
  a1[45] = off_10021DF80;
  a1[46] = off_10021DFA8;
  return a1;
}

void sub_100154524(_Unwind_Exception *a1)
{
  sub_10015D6D0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100154548(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015D6D0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10015458C(uint64_t a1, uint64_t a2)
{
  if (sub_1000E9608())
  {
    *&v12 = "int FileLocal::flush(di_flush_mode)";
    *(&v12 + 1) = 20;
    v13 = 2;
    sub_100154978(v14, &v12);
    sub_100001FE8(v15, "Calling ", 8);
    sub_1001927A0(v15, a2);
    sub_100001FE8(v15, " on ", 4);
    sub_100192C84(v15, a1);
    std::ostream::~ostream();
    sub_10015DE68(v14);
    std::ios::~ios();
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = *(a1 + 40);
    if ((*(v7 + 56) & v6) != 0)
    {
      if (sub_1000E9608())
      {
        *&v12 = "int FileLocal::flush(di_flush_mode)";
        *(&v12 + 1) = 20;
        v13 = 2;
        sub_100154AE4(v14, &v12);
        sub_1001927A0(v15, a2);
        sub_100001FE8(v15, " is not supported", 17);
        std::ostream::~ostream();
        sub_10015E600(v14);
        std::ios::~ios();
      }

      return (*(*a1 + 16))(a1, a2 != 2);
    }

    else
    {
      v4 = (*(**(v7 + 72) + 16))(*(v7 + 72), **(a1 + 56), a2);
      if ((v4 + 45) > 0x17 || ((1 << (v4 + 45)) & 0x900001) == 0)
      {
        goto LABEL_5;
      }

      atomic_fetch_or_explicit((*(a1 + 40) + 56), v6, memory_order_relaxed);
      *&v12 = "int FileLocal::flush(di_flush_mode)";
      *(&v12 + 1) = 20;
      v13 = 0;
      sub_100154C50(v14, &v12);
      sub_1001927A0(v15, a2);
      sub_100001FE8(v15, " is not supported (err code ", 28);
      v11 = *__error();
      std::ostream::operator<<();
      sub_100001FE8(v15, ")", 1);
      std::ostream::~ostream();
      sub_10015ED98(v14);
      std::ios::~ios();
      if (a2 == 2)
      {
        return (*(*a1 + 16))(a1, 0);
      }

      else
      {
        atomic_fetch_or_explicit((*(a1 + 40) + 56), 2uLL, memory_order_relaxed);
        return (*(*a1 + 16))(a1, 1);
      }
    }
  }

  v4 = (*(**(*(a1 + 40) + 72) + 16))(*(*(a1 + 40) + 72), **(a1 + 56), 1);
LABEL_5:
  v5 = v4;
  if (v4)
  {
    *&v12 = "int FileLocal::flush(di_flush_mode)";
    *(&v12 + 1) = 20;
    v13 = 16;
    sub_100154DBC(v14, &v12);
    sub_1001927A0(v15, a2);
    sub_100001FE8(v15, " failed wih error ", 18);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10015F530(v14);
    std::ios::~ios();
  }

  return v5;
}

void sub_100154934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100154C0C(va);
  _Unwind_Resume(a1);
}

void *sub_100154978(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001660D0(a1, a2);
  *a1 = off_10021E118;
  a1[45] = &off_10021E218;
  a1[46] = &off_10021E240;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021E118;
  a1[45] = off_10021E1A0;
  a1[46] = off_10021E1C8;
  return a1;
}

void sub_100154A7C(_Unwind_Exception *a1)
{
  sub_10015DE68(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100154AA0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015DE68(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100154AE4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100166198(a1, a2);
  *a1 = off_10021E338;
  a1[45] = &off_10021E438;
  a1[46] = &off_10021E460;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021E338;
  a1[45] = off_10021E3C0;
  a1[46] = off_10021E3E8;
  return a1;
}

void sub_100154BE8(_Unwind_Exception *a1)
{
  sub_10015E600(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100154C0C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015E600(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100154C50(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100166260(a1, a2);
  *a1 = off_10021E558;
  a1[45] = &off_10021E658;
  a1[46] = &off_10021E680;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021E558;
  a1[45] = off_10021E5E0;
  a1[46] = off_10021E608;
  return a1;
}

void sub_100154D54(_Unwind_Exception *a1)
{
  sub_10015ED98(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100154D78(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015ED98(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100154DBC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100166328(a1, a2);
  *a1 = off_10021E778;
  a1[45] = &off_10021E878;
  a1[46] = &off_10021E8A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021E778;
  a1[45] = off_10021E800;
  a1[46] = off_10021E828;
  return a1;
}

void sub_100154EC0(_Unwind_Exception *a1)
{
  sub_10015F530(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100154EE4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015F530(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100154F28(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 40);
  sub_100153504(v6);
  v7 = *(v6 + 80);
  v8 = *(v6 + 96);
  v9 = *(a1 + 40);
  sub_100153504(v9);
  if ((v8 & 1) == 0 || (*(v9 + 144) & 1) == 0)
  {
    *&v29 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
    *(&v29 + 1) = 26;
    LODWORD(v30) = 0;
    sub_100155414(&v31, &v29);
    sub_100001FE8(v39, "fd block size retrieval failed (err code ", 41);
    std::ostream::operator<<();
    sub_100001FE8(v39, ")", 1);
    std::ostream::~ostream();
    sub_10015FCC8(&v31);
    goto LABEL_14;
  }

  v10 = *(v9 + 104);
  v11 = (a2 + v7 - 1) / v7 * v7;
  v12 = a3 + a2;
  if (a2 <= v11 && v11 < v12)
  {
    v14 = a2 - v11 + a3;
    v15 = v14 / v7 * v7;
    v16 = v14 == v14 % v7 ? 0 : (a2 + v7 - 1) / v7 * v7;
    if (v14 != v14 % v7)
    {
      *&v29 = 0;
      *(&v29 + 1) = v16;
      v30 = v14 / v7 * v7;
      v20 = fcntl(**(a1 + 56), 99, &v29);
      if (!v20)
      {
        if (v16 != a2)
        {
          v22 = *(sub_100195B38() + 1);
          v31 = v10;
          v32 = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v33 = v16 - a2;
          v34 = a2;
          v35 = v16 - a2;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v7 = (*(*a1 + 120))(a1, &v31);
          if (v32)
          {
            sub_10000E984(v32);
          }

          if ((v7 & 0x80000000) != 0)
          {
            *&v27 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
            *(&v27 + 1) = 26;
            v28 = 16;
            sub_1001556EC(&v31, &v27);
            sub_100001FE8(v39, "Write zeros to unmap unaligned start region failed (err code", 60);
            v26 = *__error();
            std::ostream::operator<<();
            sub_100001FE8(v39, ")", 1);
            sub_100155814(&v31);
            return v7;
          }
        }

        if (v15 + v16 < v12)
        {
          v23 = a3 - v15 - (v16 - a2);
          v24 = *(sub_100195B38() + 1);
          v31 = v10;
          v32 = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v33 = v23;
          v34 = v15 + v16;
          v35 = v23;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v7 = (*(*a1 + 120))(a1, &v31);
          if (v32)
          {
            sub_10000E984(v32);
          }

          if ((v7 & 0x80000000) != 0)
          {
            *&v27 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
            *(&v27 + 1) = 26;
            v28 = 16;
            sub_100155858(&v31, &v27);
            sub_100001FE8(v39, "Write zeros to unmap unaligned end region failed (err code", 58);
            v25 = *__error();
            std::ostream::operator<<();
            sub_100001FE8(v39, ")", 1);
            sub_100155980(&v31);
            return v7;
          }
        }

        return 0;
      }

      v7 = v20;
      *&v27 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
      *(&v27 + 1) = 26;
      v28 = 0;
      sub_100155580(&v31, &v27);
      sub_100001FE8(v39, "Punch hole is not supported (err code ", 38);
      v21 = *__error();
      std::ostream::operator<<();
      sub_100001FE8(v39, ")", 1);
      std::ostream::~ostream();
      sub_100160460(&v31);
LABEL_14:
      std::ios::~ios();
      return v7;
    }
  }

  v17 = sub_1001559C4(a1, a2, a3, v7, v10);
  if (v17 == a3)
  {
    return 0;
  }

  v7 = v17;
  *&v29 = "int FileLocal::unmap_range(uint64_t, uint64_t)";
  *(&v29 + 1) = 26;
  LODWORD(v30) = 16;
  sub_100155B5C(&v31, &v29);
  sub_100001FE8(v39, "Write zeros to unmap region failed (err code", 44);
  v18 = *__error();
  std::ostream::operator<<();
  sub_100001FE8(v39, ")", 1);
  std::ostream::~ostream();
  sub_100161B28(&v31);
  std::ios::~ios();
  if ((v7 & 0x8000000000000000) == 0)
  {
    return 4294967291;
  }

  else
  {
    return v7;
  }
}

void sub_1001553A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_10000E984(a17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100155414(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001663F0(a1, a2);
  *a1 = off_10021E998;
  a1[45] = &off_10021EA98;
  a1[46] = &off_10021EAC0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021E998;
  a1[45] = off_10021EA20;
  a1[46] = off_10021EA48;
  return a1;
}

void sub_100155518(_Unwind_Exception *a1)
{
  sub_10015FCC8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015553C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015FCC8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100155580(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001664B8(a1, a2);
  *a1 = off_10021EBB8;
  a1[45] = &off_10021ECB8;
  a1[46] = &off_10021ECE0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021EBB8;
  a1[45] = off_10021EC40;
  a1[46] = off_10021EC68;
  return a1;
}

void sub_100155684(_Unwind_Exception *a1)
{
  sub_100160460(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001556A8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100160460(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1001556EC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100166580(a1, a2);
  *a1 = off_10021EDD8;
  a1[45] = &off_10021EED8;
  a1[46] = &off_10021EF00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021EDD8;
  a1[45] = off_10021EE60;
  a1[46] = off_10021EE88;
  return a1;
}

void sub_1001557F0(_Unwind_Exception *a1)
{
  sub_100160BF8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100155814(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100160BF8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100155858(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100166648(a1, a2);
  *a1 = off_10021EFF8;
  a1[45] = &off_10021F0F8;
  a1[46] = &off_10021F120;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021EFF8;
  a1[45] = off_10021F080;
  a1[46] = off_10021F0A8;
  return a1;
}

void sub_10015595C(_Unwind_Exception *a1)
{
  sub_100161390(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100155980(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100161390(a1);
  std::ios::~ios();
  return a1;
}

ssize_t sub_1001559C4(uint64_t a1, off_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a3;
  __p = 0;
  v21 = 0;
  v22 = 0;
  sub_100155CC8(&__p, (a3 + a4 - 1) / a4 * a4);
  if (v7)
  {
    v10 = v21;
    do
    {
      if (v7 >= a4)
      {
        v11 = a4;
      }

      else
      {
        v11 = v7;
      }

      if (v10 >= v22)
      {
        v12 = (v10 - __p) >> 4;
        if ((v12 + 1) >> 60)
        {
          sub_100015B70();
        }

        v13 = (v22 - __p) >> 3;
        if (v13 <= v12 + 1)
        {
          v13 = v12 + 1;
        }

        if (v22 - __p >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          sub_100083D14(&__p, v14);
        }

        v15 = (16 * v12);
        *v15 = a5;
        v15[1] = v11;
        v10 = (16 * v12 + 16);
        v16 = (16 * v12 - (v21 - __p));
        memcpy(v15 - (v21 - __p), __p, v21 - __p);
        v17 = __p;
        __p = v16;
        v21 = v10;
        v22 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v10 = a5;
        *(v10 + 1) = v11;
        v10 += 16;
      }

      v21 = v10;
      v7 -= v11;
    }

    while (v7);
  }

  else
  {
    v10 = v21;
  }

  v18 = pwritev(**(a1 + 56), __p, (v10 - __p) >> 4, a2);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v18;
}

void sub_100155B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100155B5C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100166710(a1, a2);
  *a1 = off_10021F218;
  a1[45] = &off_10021F318;
  a1[46] = &off_10021F340;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021F218;
  a1[45] = off_10021F2A0;
  a1[46] = off_10021F2C8;
  return a1;
}

void sub_100155C60(_Unwind_Exception *a1)
{
  sub_100161B28(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100155C84(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100161B28(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100155CC8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      sub_100083D14(result, a2);
    }

    sub_100015B70();
  }

  return result;
}

uint64_t sub_100155D68(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((*(v1 + 48) & 1) != 0 || ((*(*a1 + 48))(a1) & 1) == 0 && sub_100057078(*(a1 + 40)))
  {
    return 0;
  }

  v4 = (*(*a1 + 48))(a1);
  if (v4)
  {
    v5 = 6;
  }

  else
  {
    v5 = 5;
  }

  if (!flock(**(a1 + 56), v5))
  {
    *&v11 = "int FileLocal::lock()";
    *(&v11 + 1) = 19;
    v12 = 0;
    sub_10012FDC8(v13, &v11);
    sub_100001FE8(v14, "File (fd ", 9);
    v9 = **(a1 + 56);
    std::ostream::operator<<();
    sub_100001FE8(v14, ") is locked", 11);
    std::ostream::~ostream();
    sub_1001309C8(v13);
    std::ios::~ios();
    result = 0;
    *(v1 + 48) = 1;
    return result;
  }

  if (*__error() != 35)
  {
    *&v11 = "int FileLocal::lock()";
    *(&v11 + 1) = 19;
    v12 = 0;
    sub_10012FF34(v13, &v11);
    sub_100001FE8(v14, "flock returned errno ", 21);
    v10 = *__error();
    std::ostream::operator<<();
    sub_100001FE8(v14, ", keeping file unlocked", 23);
    std::ostream::~ostream();
    sub_100131228(v13);
    std::ios::~ios();
    return 0;
  }

  *&v11 = "int FileLocal::lock()";
  *(&v11 + 1) = 19;
  v12 = 16;
  sub_100156040(v13, &v11);
  sub_100001FE8(v14, "Cannot acquire ", 15);
  if (v4)
  {
    v6 = "exclusive";
  }

  else
  {
    v6 = "shared";
  }

  if (v4)
  {
    v7 = 9;
  }

  else
  {
    v7 = 6;
  }

  sub_100001FE8(v14, v6, v7);
  sub_100001FE8(v14, " lock, errno ", 13);
  v8 = *__error();
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_1001622C0(v13);
  std::ios::~ios();
  return -*__error();
}

void sub_100156008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100156168(va);
  _Unwind_Resume(a1);
}

void *sub_100156040(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001667D8(a1, a2);
  *a1 = off_10021F438;
  a1[45] = &off_10021F538;
  a1[46] = &off_10021F560;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021F438;
  a1[45] = off_10021F4C0;
  a1[46] = off_10021F4E8;
  return a1;
}

void sub_100156144(_Unwind_Exception *a1)
{
  sub_1001622C0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100156168(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001622C0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001561B4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(v1 + 48) != 1)
  {
    return 0;
  }

  if (flock(**(a1 + 56), 8))
  {
    *&v7 = "int FileLocal::unlock_all()";
    *(&v7 + 1) = 25;
    v8 = 16;
    sub_100156354(v9, &v7);
    sub_100001FE8(v10, "Failed unlocking file with fd ", 30);
    v3 = **(a1 + 56);
    std::ostream::operator<<();
    sub_100001FE8(v10, ", errno ", 8);
    v4 = *__error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100162A58(v9);
    std::ios::~ios();
    return -*__error();
  }

  else
  {
    *&v7 = "int FileLocal::unlock_all()";
    *(&v7 + 1) = 25;
    v8 = 0;
    sub_100072C88(v9, &v7);
    sub_100001FE8(v10, "File (fd ", 9);
    v6 = **(a1 + 56);
    std::ostream::operator<<();
    sub_100001FE8(v10, ") is unlocked", 13);
    std::ostream::~ostream();
    sub_100072EBC(v9);
    std::ios::~ios();
    result = 0;
    *(v1 + 48) = 0;
  }

  return result;
}

void sub_100156330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100072DB0(va);
  _Unwind_Resume(a1);
}

void *sub_100156354(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001668A0(a1, a2);
  *a1 = off_10021F658;
  a1[45] = &off_10021F758;
  a1[46] = &off_10021F780;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021F658;
  a1[45] = off_10021F6E0;
  a1[46] = off_10021F708;
  return a1;
}

void sub_100156458(_Unwind_Exception *a1)
{
  sub_100162A58(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10015647C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100162A58(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001564E0(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(v1 + 48);
  *(v1 + 48) = 0;
  return result;
}

void sub_1001564F0(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 80);
  if (v2 == v1)
  {
    return;
  }

  v3 = a1;
  v4 = *(a1 + 96);
  v5 = &v1[v4 >> 5];
  v6 = *v5 + 128 * (v4 & 0x1F);
  if (v6 == *(v1 + (((*(a1 + 104) + v4) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((*(a1 + 104) + v4) & 0x1F))
  {
    return;
  }

  v7 = *(a1 + 40);
  v86 = *(v7 + 49);
  v87 = *(v7 + 72);
  while (v2 == v1)
  {
    if (!v6)
    {
      goto LABEL_158;
    }

    v8 = 0;
LABEL_9:
    if (v8 == v6)
    {
      v12 = v5;
      v13 = v6;
    }

    else
    {
      v9 = (v6 - *v5) >> 7;
      if (v9 < 0)
      {
        v14 = 30 - v9;
        v10 = ~v14;
        v11 = &v5[-(v14 >> 5)];
      }

      else
      {
        v10 = v9 + 1;
        v11 = &v5[(v9 + 1) >> 5];
      }

      v15 = *v11 + 128 * (v10 & 0x1F);
      v13 = v6;
      v12 = v5;
      if (v15 != v8)
      {
        v12 = v5;
        v13 = v6;
        do
        {
          v16 = v15;
          v17 = v11;
          if (*(v13 + 112) != *(v15 + 112))
          {
            break;
          }

          v18 = *(v13 + 24);
          v19 = *(v13 + 16) + v18;
          if (v19 != *(v15 + 24))
          {
            break;
          }

          if (*(v13 + 104) == 1)
          {
            v20 = *(v13 + 48);
            if (*(v15 + 104))
            {
              if ((v20 != 0) == (*(v15 + 48) == 0))
              {
                break;
              }

              if (v20)
              {
                sub_100093838(v13 + 48, v18, v19, &v102);
                if (!sub_1000938C4(&v102, v16 + 48))
                {
                  break;
                }
              }
            }

            else if (v20)
            {
              break;
            }
          }

          else
          {
            v21 = *(v15 + 48);
            if (*(v16 + 104) == 1 && v21 != 0)
            {
              break;
            }
          }

          v15 = v16 + 128;
          v11 = v17;
          if (v16 + 128 - *v17 == 4096)
          {
            v11 = v17 + 1;
            v15 = v17[1];
          }

          v12 = v17;
          v13 = v16;
        }

        while (v15 != v8);
      }
    }

    v23 = (v13 - *v12) >> 7;
    if (v23 < 0)
    {
      v26 = 30 - v23;
      v92 = &v12[-(v26 >> 5)];
      v25 = *v92 + 128 * (~v26 & 0x1F);
    }

    else
    {
      v24 = v23 + 1;
      v92 = &v12[v24 >> 5];
      v25 = *v92 + 128 * (v24 & 0x1F);
    }

    if (v6[104] == 1 && *(v6 + 12))
    {
      (*(*v3 + 80))(&v99, v3);
      v27 = *(v6 + 28) == 0;
      v28 = *(v6 + 12);
      if (v28 == 3)
      {
        sub_1001460D4(&v102, v27, v6 + 56, *(v6 + 22));
        sub_100146188(v114);
        v115 = 2;
        sub_100146248(&v102);
      }

      else if (v28 == 2)
      {
        sub_100145D00(&v102, v27, v6 + 56, v6 + 72, *(v6 + 22));
        sub_100145E3C(v114);
        v115 = 1;
        v102 = off_10021B3A0;
        sub_100030D98(&v105);
        v102 = off_1001F8FA0;
        if (*(&v103 + 1))
        {
          v104[0] = *(&v103 + 1);
          operator delete(*(&v103 + 1));
        }
      }

      else
      {
        sub_100146500(v112, v6 + 72);
        sub_100145774(&v102, v27, v6 + 56, v112, *(v6 + 22));
        sub_1001458C8(v114);
        v115 = 0;
        v102 = off_10021B378;
        sub_100030CF8(&v106);
        v43 = v105;
        v105 = 0;
        if (v43)
        {
          operator delete[]();
        }

        v102 = off_1001F8FA0;
        if (*(&v103 + 1))
        {
          v104[0] = *(&v103 + 1);
          operator delete(*(&v103 + 1));
        }

        v44 = *&v112[0];
        *&v112[0] = 0;
        if (v44)
        {
          operator delete[]();
        }
      }

      v45 = *(v6 + 22);
      v46 = *(v6 + 12) - *(v6 + 3);
      v98[0] = v5;
      v98[1] = v6;
      v98[2] = v92;
      v98[3] = v25;
      v96 = v46;
      v97 = v98;
      sub_100030DC4(v112, v114);
      v113 = v45;
      v90 = v99;
      v47 = *v97;
      v48 = v97[1];
      *&v94 = &v96;
      *(&v94 + 1) = v47;
      v95 = v48;
      v49 = v97[3];
      v93 = v97[2];
      v50 = *(v6 + 28);
      v51 = vm_page_size;
      sub_100148204(v50, v119);
      v88 = v46;
      v91 = v50;
      if (v48 == v49)
      {
        v52 = 0;
        goto LABEL_99;
      }

      sub_100166968(&v94, v124);
      sub_100030254(&v116, v124);
      if (v125)
      {
        sub_10000E984(v125);
      }

      v100 = v94;
      v53 = v95;
      v101 = v95;
      if (v95 == v49)
      {
        v52 = 0;
LABEL_97:
        if (v117)
        {
          sub_10000E984(v117);
        }

LABEL_99:
        sub_100147DC0(&v102, v52);
        sub_1000320D4(v119);
        v107 = v112;
        v108 = v90;
        v109 = v91;
        v110 = -v88;
        if (v48 == v49)
        {
          v62 = 0;
        }

        else
        {
          v62 = 0;
          v63 = *v47;
          do
          {
            v48 += 16;
            if (v48 - v63 == 4096)
            {
              v64 = v47[1];
              ++v47;
              v63 = v64;
              v48 = v64;
            }

            ++v62;
          }

          while (v48 != v49);
        }

        v111 = v62;
        is_mul_ok(3 * v62, 0x18uLL);
        operator new[]();
      }

      v52 = 0;
      v54 = v118 / v51 * v51;
      v55 = *(&v100 + 1);
      while (2)
      {
        sub_100166968(&v100, v124);
        sub_100030254(&v121, v124);
        if (!v120)
        {
          sub_10001583C();
        }

        if ((*(*v120 + 48))(v120, &v121))
        {
          v56 = v122 + v123 - v54;
          if (v56 % v51)
          {
            v57 = v51 - v56 % v51;
          }

          else
          {
            v57 = 0;
          }

          v58 = v57 + v56;
          v52 += v58;
          v54 += v58;
        }

        else
        {
          v59 = v51;
          if (!(v123 % v45))
          {
            if (!(v122 % v45))
            {
              v54 = v122 + v123;
              goto LABEL_87;
            }

            v59 = 0;
          }

          v60 = v59 + v52;
          if ((v122 + v123) % v45)
          {
            v61 = v51;
          }

          else
          {
            v61 = 0;
          }

          v52 = v60 + v61;
          v54 = (v45 - 1 + v122 + v123) / v45 * v45;
        }

LABEL_87:
        if (*(&v121 + 1))
        {
          sub_10000E984(*(&v121 + 1));
        }

        if (v125)
        {
          sub_10000E984(v125);
        }

        v53 += 16;
        v101 = v53;
        if ((v53 - *v55) == 4096)
        {
          *(&v100 + 1) = v55 + 1;
          v53 = v55[1];
          v101 = v53;
          ++v55;
        }

        if (v53 == v49)
        {
          goto LABEL_97;
        }

        continue;
      }
    }

    v102 = v104;
    v103 = xmmword_1001BC760;
    v114[0] = &v102;
    if (v6 == v25)
    {
      v33 = 0;
    }

    else
    {
      v29 = v6;
      v30 = v5;
      do
      {
        v31 = *(v29 + 2);
        *&v112[0] = *v29;
        *(&v112[0] + 1) = v31;
        sub_10015A63C(v114, v112);
        v29 += 128;
        if (v29 - *v30 == 4096)
        {
          v32 = v30[1];
          ++v30;
          v29 = v32;
        }
      }

      while (v29 != v25);
      v33 = v103 == 1;
    }

    v34 = *(v6 + 28);
    if (v34 == 1)
    {
      v37 = *(v6 + 3);
      v38 = **(v3 + 56);
      if (v33)
      {
        v39 = pwrite(v38, v102->iov_base, v102->iov_len, *(v6 + 3));
      }

      else
      {
        if (v6 == v25)
        {
          v42 = 0;
        }

        else
        {
          v42 = ((v25 - *v92) >> 7) + 4 * (v92 - v5) - ((v6 - *v5) >> 7);
        }

        v39 = pwritev(v38, v102, v42, *(v6 + 3));
      }

      v40 = v39;
      if (v39 >= 1)
      {
        v66 = v39 + v37;
        v67 = (*(v3 + 40) + 64);
        v68 = atomic_load(v67);
        if (v68 >= v39 + v37)
        {
          goto LABEL_136;
        }

        v69 = v68;
        do
        {
          atomic_compare_exchange_strong(v67, &v69, v66);
          if (v69 == v68)
          {
            break;
          }

          v68 = v69;
        }

        while (v69 < v66);
      }
    }

    else
    {
      if (v34)
      {
        v40 = 0;
        goto LABEL_136;
      }

      v35 = *(v6 + 3);
      if (v33)
      {
        v36 = (**v87)(v87, **(a1 + 56), v102->iov_base, v102->iov_len, *(v6 + 3));
      }

      else
      {
        if (v86)
        {
          if (v6 == v25)
          {
            v41 = 0;
          }

          else
          {
            v41 = 16 * (((v25 - *v92) >> 7) + 4 * (v92 - v5) - ((v6 - *v5) >> 7));
          }

          v70 = v102;
          v72 = *(a1 + 40);
          v71 = *(a1 + 48);
          if (v71)
          {
            atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v40 = 0;
          if (v41)
          {
            p_iov_len = &v70->iov_len;
            do
            {
              if ((v40 & 0x8000000000000000) == 0)
              {
                v74 = (***(v72 + 72))(*(v72 + 72), *(v72 + 8), *(p_iov_len - 1), *p_iov_len, v40 + v35);
                if (v74 == *p_iov_len)
                {
                  v40 += v74;
                }

                else if (v74 == -1)
                {
                  v40 = -1;
                }

                else
                {
                  v40 = -5;
                }
              }

              p_iov_len += 2;
              v41 -= 16;
            }

            while (v41);
          }

          if (v71)
          {
            sub_10000E984(v71);
          }

          v3 = a1;
          goto LABEL_134;
        }

        if (v6 == v25)
        {
          v65 = 0;
        }

        else
        {
          v65 = ((v25 - *v92) >> 7) + 4 * (v92 - v5) - ((v6 - *v5) >> 7);
        }

        v36 = (*(*v87 + 8))(v87, **(a1 + 56), v102, v65, *(v6 + 3));
      }

      v40 = v36;
      v3 = a1;
    }

LABEL_134:
    if (v40 == -1)
    {
      v40 = -*__error();
    }

    do
    {
LABEL_136:
      v75 = v40;
      if (v40 >= 1)
      {
        if (*(v6 + 2) >= v40)
        {
          v75 = v40;
        }

        else
        {
          v75 = *(v6 + 2);
        }
      }

      v76 = *(v6 + 15);
      *v76 = v75;
      *(v76 + 4) = 1;
      sub_100032F74(v6 + 15);
      v6 += 128;
      if (v6 - *v5 == 4096)
      {
        v77 = v5[1];
        ++v5;
        v6 = v77;
      }

      v40 -= v75 & ~(v75 >> 63);
    }

    while (v5 < v12 || v5 == v12 && v6 <= v13);
    if (*(&v103 + 1) && v104 != v102)
    {
      operator delete(v102);
    }

    v4 = *(v3 + 96);
    v1 = *(v3 + 72);
    v2 = *(v3 + 80);
  }

  v8 = *(v1 + (((v4 + *(v3 + 104)) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((v4 + *(v3 + 104)) & 0x1F);
  if (v6 != v8)
  {
    goto LABEL_9;
  }

  v78 = &v1[v4 >> 5];
  v79 = *v78 + 128 * (v4 & 0x1F);
  if (v79 != v6)
  {
    do
    {
      v80 = *(v79 + 15);
      if (v80)
      {
        *(v80 + 16) = 0;
      }

      v81 = *(v79 + 1);
      if (v81)
      {
        sub_10000E984(v81);
      }

      v79 += 128;
      if (v79 - *v78 == 4096)
      {
        v82 = v78[1];
        ++v78;
        v79 = v82;
      }
    }

    while (v79 != v6);
    v1 = *(v3 + 72);
    v2 = *(v3 + 80);
  }

LABEL_158:
  *(v3 + 104) = 0;
  v83 = v2 - v1;
  if (v83 >= 3)
  {
    do
    {
      operator delete(*v1);
      v84 = *(v3 + 80);
      v1 = (*(v3 + 72) + 8);
      *(v3 + 72) = v1;
      v83 = (v84 - v1) >> 3;
    }

    while (v83 > 2);
  }

  if (v83 == 1)
  {
    v85 = 16;
LABEL_164:
    *(v3 + 96) = v85;
  }

  else if (v83 == 2)
  {
    v85 = 32;
    goto LABEL_164;
  }
}

void sub_100157494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p)
{
  sub_100146248(&__p);
  if (a36)
  {
    sub_10000E984(a36);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100157728(uint64_t a1)
{
  sub_100147730(a1);
  (*(**(a1 + 224) + 152))(*(a1 + 224));
  sub_100166DD8(a1 + 224, *(a1 + 304));

  return sub_10003172C(a1);
}

uint64_t sub_1001577AC(uint64_t a1)
{
  *a1 = off_10021C5D8;
  *(a1 + 24) = off_10021C6C8;
  *(a1 + 32) = off_10021C700;
  v12 = 66053;
  if (ffsctl(**(a1 + 56), 0xC0084A44uLL, &v12, 0))
  {
    *&v8 = "PurgeableFileBackend::~PurgeableFileBackend()";
    *(&v8 + 1) = 43;
    v9 = 0;
    sub_100157A88(v10, &v8);
    sub_100001FE8(v11, "mark purgeable failed on ", 25);
    sub_100192C84(v11, a1);
    sub_100001FE8(v11, ", errno ", 8);
    v2 = *__error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1001631F0(v10);
  }

  else
  {
    *&v8 = "PurgeableFileBackend::~PurgeableFileBackend()";
    *(&v8 + 1) = 43;
    v9 = 0;
    sub_100157BF4(v10, &v8);
    sub_100192C84(v11, a1);
    sub_100001FE8(v11, " marked as purgeable", 20);
    std::ostream::~ostream();
    sub_100163988(v10);
  }

  std::ios::~ios();
  v3 = (*(*a1 + 192))(a1);
  if (futimes(v3, 0))
  {
    *&v8 = "PurgeableFileBackend::~PurgeableFileBackend()";
    *(&v8 + 1) = 43;
    v9 = 16;
    sub_100157D60(v10, &v8);
    sub_100001FE8(v11, "futimes failed on ", 18);
    sub_100192C84(v11, a1);
    sub_100001FE8(v11, ", errno ", 8);
    v4 = *__error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100164120(v10);
    std::ios::~ios();
  }

  *a1 = off_10021C798;
  *(a1 + 24) = off_10021C888;
  *(a1 + 32) = off_10021C8C0;
  sub_1000571A8((a1 + 64));
  v5 = *(a1 + 48);
  if (v5)
  {
    sub_10000E984(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void *sub_100157A88(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100167904(a1, a2);
  *a1 = off_10021F878;
  a1[45] = &off_10021F978;
  a1[46] = &off_10021F9A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021F878;
  a1[45] = off_10021F900;
  a1[46] = off_10021F928;
  return a1;
}

void sub_100157B8C(_Unwind_Exception *a1)
{
  sub_1001631F0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100157BB0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001631F0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100157BF4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001679CC(a1, a2);
  *a1 = off_10021FA98;
  a1[45] = &off_10021FB98;
  a1[46] = &off_10021FBC0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021FA98;
  a1[45] = off_10021FB20;
  a1[46] = off_10021FB48;
  return a1;
}

void sub_100157CF8(_Unwind_Exception *a1)
{
  sub_100163988(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100157D1C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100163988(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100157D60(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100167A94(a1, a2);
  *a1 = off_10021FCB8;
  a1[45] = &off_10021FDB8;
  a1[46] = &off_10021FDE0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021FCB8;
  a1[45] = off_10021FD40;
  a1[46] = off_10021FD68;
  return a1;
}

void sub_100157E64(_Unwind_Exception *a1)
{
  sub_100164120(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100157E88(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100164120(a1);
  std::ios::~ios();
  return a1;
}

void sub_100157EE0(uint64_t a1)
{
  sub_1001577AC(a1);

  operator delete();
}

void sub_100157F18(uint64_t a1)
{
  sub_1001577AC(a1 - 24);

  operator delete();
}

void sub_100157F54(uint64_t a1)
{
  sub_1001577AC(a1 - 32);

  operator delete();
}

uint64_t sub_100157F90(uint64_t a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *v1;
  v4 = **v1;
  if (!v5)
  {
    v8 = *v3;
    if (v9)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = (*(*v9 + 192))(v9);
      goto LABEL_10;
    }

    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (**v5)(v5);
LABEL_10:
  v10 = v7;
  if (v6)
  {
    sub_10000E984(v6);
  }

  return v10;
}

void sub_1001580C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000E984(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001580F4(void *a1)
{
  *a1 = off_10021C798;
  a1[3] = off_10021C888;
  a1[4] = off_10021C8C0;
  sub_1000571A8(a1 + 8);
  v2 = a1[6];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void *sub_1001581D8(uint64_t a1, void *a2)
{
  sub_100001FE8(a2, "file(", 5);
  v3 = **(a1 + 56);
  v4 = std::ostream::operator<<();

  return sub_100001FE8(v4, ")", 1);
}

void sub_100158284(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v11) = 0;
  v12 = 0;
  v14 = &v15;
  v15 = &v11;
  v13 = 0;
  sub_100030254(&v7, a2);
  v9 = 0;
  v10 = v15;
  v5 = v15;
  v15 = 0;
  *(v5 + 2) = &v10;
  sub_1001647B0((a1 + 64), &v7);
  if (v10)
  {
    *(v10 + 2) = 0;
  }

  if (v8)
  {
    sub_10000E984(v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v12 == 1)
  {
    *a3 = v11;
    *(a3 + 4) = 1;
  }

  v6 = v14;
  *(a3 + 16) = v14;
  if (v6)
  {
    *v6 = a3;
  }

  if (v15)
  {
    *(v15 + 2) = 0;
  }
}

void sub_10015835C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a24)
  {
    *(a24 + 16) = 0;
  }

  if (a10)
  {
    sub_10000E984(a10);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    *(v26 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_100158394(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v11) = 0;
  v12 = 0;
  v14 = &v15;
  v15 = &v11;
  v13 = 0;
  sub_100030254(&v7, a2);
  v9 = 1;
  v10 = v15;
  v5 = v15;
  v15 = 0;
  *(v5 + 2) = &v10;
  sub_1001647B0((a1 + 64), &v7);
  if (v10)
  {
    *(v10 + 2) = 0;
  }

  if (v8)
  {
    sub_10000E984(v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v12 == 1)
  {
    *a3 = v11;
    *(a3 + 4) = 1;
  }

  v6 = v14;
  *(a3 + 16) = v14;
  if (v6)
  {
    *v6 = a3;
  }

  if (v15)
  {
    *(v15 + 2) = 0;
  }
}

void sub_100158470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a24)
  {
    *(a24 + 16) = 0;
  }

  if (a10)
  {
    sub_10000E984(a10);
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    *(v26 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001584A8(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(v1 + 32);
  v3 = *(v1 + 40);
  return result;
}

void sub_1001584C0(void *a1)
{
  *(a1 - 3) = off_10021C798;
  *a1 = off_10021C888;
  a1[1] = off_10021C8C0;
  sub_1000571A8(a1 + 5);
  v2 = a1[3];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = *(a1 - 1);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_100158574(void *a1)
{
  *(a1 - 3) = off_10021C798;
  *a1 = off_10021C888;
  a1[1] = off_10021C8C0;
  sub_1000571A8(a1 + 5);
  v2 = a1[3];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = *(a1 - 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_100158640(void *a1)
{
  *(a1 - 4) = off_10021C798;
  *(a1 - 1) = off_10021C888;
  *a1 = off_10021C8C0;
  sub_1000571A8(a1 + 4);
  v2 = a1[2];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = *(a1 - 2);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1001586F0(void *a1)
{
  *(a1 - 4) = off_10021C798;
  *(a1 - 1) = off_10021C888;
  *a1 = off_10021C8C0;
  sub_1000571A8(a1 + 4);
  v2 = a1[2];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = *(a1 - 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

uint64_t sub_1001587DC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100158A74(v1);

  return std::ios::~ios();
}

uint64_t sub_100158828(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100158A74(v1);

  return std::ios::~ios();
}

void sub_100158888(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100158A74(a1);
  std::ios::~ios();

  operator delete();
}