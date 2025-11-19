void sub_1002B6108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (*(v43 - 217) < 0)
  {
    operator delete(*(v43 - 240));
  }

  sub_1002C5A44(&a10);
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v41 + 463) < 0)
  {
    operator delete(*v42);
  }

  sub_100050024(a9);
  sub_1000505E0(v41);
  _Unwind_Resume(a1);
}

void sub_1002B68E0(uint64_t a1, const char *a2, char a3)
{
  sub_1002BAA3C(&v8, a2, a3);
  v4 = v8;
  v5 = v9;
  v7 = v9;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  if (v8)
  {
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = v4;
      v9 = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v9 = 0;
    }

    sub_10033E034();
  }

  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = off_100445E00;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 216) = 0u;
  v6 = (a1 + 216);
  v6[3] = 0u;
  v6[4] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[7] = 0u;
  v6[8] = 0u;
  v6[9] = 0u;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_1002B6B68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_10002BB1C(va2);
  sub_10002BB1C(va);
  sub_10002BB1C(va1);
  _Unwind_Resume(a1);
}

void sub_1002B6B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B6BA0(uint64_t a1)
{
  *a1 = off_100445E00;
  v2 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 224);
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
    sub_10012E8E4(a1 + 16);
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_1002B6DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((*(v18 - 17) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v18 - 17) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v18 - 40));
  _Unwind_Resume(exception_object);
}

void sub_1002B6E28(uint64_t a1, const char *a2, char a3, int a4)
{
  sub_1002BAA3C(v16, a2, a3);
  v5 = *v16;
  v15 = *v16;
  v6 = *&v18[1];
  v24 = *&v16[80];
  v25 = *&v16[96];
  v26 = v17;
  v27 = v18[0];
  v20 = *&v16[16];
  v21 = *&v16[32];
  v22 = *&v16[48];
  v23 = *&v16[64];
  if (*v16)
  {
    if (a4 != 2)
    {
      if (a4 != 1)
      {
        if (!a4)
        {
          v14 = *v16;
          if (*&v16[8])
          {
            atomic_fetch_add_explicit((*&v16[8] + 8), 1uLL, memory_order_relaxed);
            *&v10.__r_.__value_.__l.__data_ = v5;
            atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          else
          {
            *&v10.__r_.__value_.__l.__data_ = *v16;
          }

          sub_10033E034();
        }

        __cxa_allocate_exception(0x40uLL);
        std::to_string(&v10, a4);
        v7 = std::string::insert(&v10, 0, "Unexpected RawLogFormat, type=");
        v8 = *&v7->__r_.__value_.__l.__data_;
        *&v16[16] = *(&v7->__r_.__value_.__l + 2);
        *v16 = v8;
        v7->__r_.__value_.__l.__size_ = 0;
        v7->__r_.__value_.__r.__words[2] = 0;
        v7->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(&v11, v16);
        v11.__vftable = &off_1004338D0;
        sub_10010A984(v9);
      }

      if (*&v16[8])
      {
        atomic_fetch_add_explicit((*&v16[8] + 8), 1uLL, memory_order_relaxed);
      }

      sub_10033E034();
    }

    if (*&v16[8])
    {
      atomic_fetch_add_explicit((*&v16[8] + 8), 1uLL, memory_order_relaxed);
    }

    *(&v18[4] + 8) = v24;
    *(&v18[5] + 8) = v25;
    *(&v18[6] + 8) = v26;
    *(&v18[7] + 8) = v27;
    *(v18 + 8) = v20;
    *(&v18[1] + 8) = v21;
    *(&v18[2] + 8) = v22;
    *(&v18[3] + 8) = v23;
    v12 = 0;
    v13 = 0;
    v16[8] = 0;
    v17 = v5;
    *&v18[0] = 0;
    *(&v18[8] + 1) = v6;
    v19 = 0;
    *v16 = off_100445EA8;
    operator new();
  }

  memset(&v16[8], 0, 104);
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  *v16 = off_100445CA0;
  v19 = 0;
  operator new();
}

void sub_1002B7750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::runtime_error a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a19);
  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  sub_10002BB1C(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B79C0(void *a1)
{
  v2 = (a1 + 18);
  if (a1[18])
  {
    v3 = 18;
  }

  else if (a1[20])
  {
    v3 = 20;
  }

  else if (a1[22])
  {
    v3 = 22;
  }

  else if (a1[24])
  {
    v3 = 24;
  }

  else if (a1[26])
  {
    v3 = 26;
  }

  else if (a1[28])
  {
    v3 = 28;
  }

  else if (a1[30])
  {
    v3 = 30;
  }

  else if (a1[32])
  {
    v3 = 32;
  }

  else if (a1[34])
  {
    v3 = 34;
  }

  else if (a1[36])
  {
    v3 = 36;
  }

  else if (a1[38])
  {
    v3 = 38;
  }

  else if (a1[40])
  {
    v3 = 40;
  }

  else if (a1[42])
  {
    v3 = 42;
  }

  else if (a1[44])
  {
    v3 = 44;
  }

  else if (a1[46])
  {
    v3 = 46;
  }

  else if (a1[48])
  {
    v3 = 48;
  }

  else if (a1[50])
  {
    v3 = 50;
  }

  else
  {
    if (!a1[52])
    {
      return 18;
    }

    v3 = 52;
  }

  v4 = &a1[v3];
  v5 = sub_10004FF1C(a1[v3]);
  if (v3 != 52)
  {
    v7 = v5;
    v8 = &a1[v3 + 2];
    v9 = v3 * 8 - 416;
    do
    {
      if (*v8)
      {
        v10 = sub_10004FF1C(*v8);
        if (v10 < v7)
        {
          v7 = v10;
          v4 = v8;
        }
      }

      v8 += 16;
      v9 += 16;
    }

    while (v9);
  }

  return (v4 - v2) >> 4;
}

uint64_t sub_1002B7B94(uint64_t *a1)
{
  a1[58] = -1;
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  v8 = a1[6];
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    (*(*v9 + 16))(v9);
  }

  v10 = a1[8];
  if (v10)
  {
    (*(*v10 + 16))(v10);
  }

  v11 = a1[9];
  if (v11)
  {
    (*(*v11 + 16))(v11);
  }

  v12 = a1[10];
  if (v12)
  {
    (*(*v12 + 16))(v12);
  }

  v13 = a1[11];
  if (v13)
  {
    (*(*v13 + 16))(v13);
  }

  v14 = a1[12];
  if (v14)
  {
    (*(*v14 + 16))(v14);
  }

  v15 = a1[13];
  if (v15)
  {
    (*(*v15 + 16))(v15);
  }

  v16 = a1[14];
  if (v16)
  {
    (*(*v16 + 16))(v16);
  }

  v17 = a1[15];
  if (v17)
  {
    (*(*v17 + 16))(v17);
  }

  v18 = a1[16];
  if (v18)
  {
    (*(*v18 + 16))(v18);
  }

  result = a1[17];
  if (result)
  {
    v20 = *(*result + 16);

    return v20();
  }

  return result;
}

uint64_t sub_1002B7EEC(uint64_t a1, __int128 *a2)
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
  v3 = qword_100471CB8;
  v4 = qword_100471CC0;
  *(a1 + 144) = qword_100471CB8;
  *(a1 + 152) = v4;
  if (!v4)
  {
    *(a1 + 160) = v3;
    *(a1 + 168) = 0;
    goto LABEL_21;
  }

  atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  v5 = qword_100471CC0;
  *(a1 + 160) = v3;
  *(a1 + 168) = v5;
  if (!v5)
  {
LABEL_21:
    *(a1 + 176) = v3;
    *(a1 + 184) = 0;
    goto LABEL_22;
  }

  atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  v6 = qword_100471CC0;
  *(a1 + 176) = v3;
  *(a1 + 184) = v6;
  if (!v6)
  {
LABEL_22:
    *(a1 + 192) = v3;
    *(a1 + 200) = 0;
    goto LABEL_23;
  }

  atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  v7 = qword_100471CC0;
  *(a1 + 192) = v3;
  *(a1 + 200) = v7;
  if (!v7)
  {
LABEL_23:
    *(a1 + 208) = v3;
    *(a1 + 216) = 0;
    goto LABEL_24;
  }

  atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  v8 = qword_100471CC0;
  *(a1 + 208) = v3;
  *(a1 + 216) = v8;
  if (!v8)
  {
LABEL_24:
    *(a1 + 224) = v3;
    *(a1 + 232) = 0;
    goto LABEL_25;
  }

  atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  v9 = qword_100471CC0;
  *(a1 + 224) = v3;
  *(a1 + 232) = v9;
  if (!v9)
  {
LABEL_25:
    *(a1 + 240) = v3;
    *(a1 + 248) = 0;
    goto LABEL_26;
  }

  atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  v10 = qword_100471CC0;
  *(a1 + 240) = v3;
  *(a1 + 248) = v10;
  if (!v10)
  {
LABEL_26:
    *(a1 + 256) = v3;
    *(a1 + 264) = 0;
    goto LABEL_27;
  }

  atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  v11 = qword_100471CC0;
  *(a1 + 256) = v3;
  *(a1 + 264) = v11;
  if (!v11)
  {
LABEL_27:
    *(a1 + 272) = v3;
    *(a1 + 280) = 0;
    goto LABEL_28;
  }

  atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  v12 = qword_100471CC0;
  *(a1 + 272) = v3;
  *(a1 + 280) = v12;
  if (!v12)
  {
LABEL_28:
    *(a1 + 288) = v3;
    *(a1 + 296) = 0;
    goto LABEL_29;
  }

  atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  v13 = qword_100471CC0;
  *(a1 + 288) = v3;
  *(a1 + 296) = v13;
  if (!v13)
  {
LABEL_29:
    *(a1 + 304) = v3;
    *(a1 + 312) = 0;
    goto LABEL_30;
  }

  atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  v14 = qword_100471CC0;
  *(a1 + 304) = v3;
  *(a1 + 312) = v14;
  if (!v14)
  {
LABEL_30:
    *(a1 + 320) = v3;
    *(a1 + 328) = 0;
    goto LABEL_31;
  }

  atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  v15 = qword_100471CC0;
  *(a1 + 320) = v3;
  *(a1 + 328) = v15;
  if (!v15)
  {
LABEL_31:
    *(a1 + 336) = v3;
    *(a1 + 344) = 0;
    goto LABEL_32;
  }

  atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  v16 = qword_100471CC0;
  *(a1 + 336) = v3;
  *(a1 + 344) = v16;
  if (!v16)
  {
LABEL_32:
    *(a1 + 352) = v3;
    *(a1 + 360) = 0;
    goto LABEL_33;
  }

  atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  v17 = qword_100471CC0;
  *(a1 + 352) = v3;
  *(a1 + 360) = v17;
  if (!v17)
  {
LABEL_33:
    *(a1 + 368) = v3;
    *(a1 + 376) = 0;
    goto LABEL_34;
  }

  atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  v18 = qword_100471CC0;
  *(a1 + 368) = v3;
  *(a1 + 376) = v18;
  if (!v18)
  {
LABEL_34:
    *(a1 + 384) = v3;
    *(a1 + 392) = 0;
    goto LABEL_35;
  }

  atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  v19 = qword_100471CC0;
  *(a1 + 384) = v3;
  *(a1 + 392) = v19;
  if (!v19)
  {
LABEL_35:
    *(a1 + 400) = v3;
    *(a1 + 408) = 0;
    goto LABEL_36;
  }

  atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  v20 = qword_100471CC0;
  *(a1 + 400) = v3;
  *(a1 + 408) = v20;
  if (!v20)
  {
LABEL_36:
    *(a1 + 416) = v3;
    *(a1 + 424) = 0;
    goto LABEL_37;
  }

  atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  v21 = qword_100471CC0;
  *(a1 + 416) = v3;
  *(a1 + 424) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_37:
  *(a1 + 432) = 18;
  v22 = (a1 + 440);
  if (*(a2 + 23) < 0)
  {
    sub_100003228(v22, *a2, *(a2 + 1));
  }

  else
  {
    v23 = *a2;
    *(a1 + 456) = *(a2 + 2);
    *v22 = v23;
  }

  *(a1 + 464) = -1;
  return a1;
}

void sub_1002B8170(_Unwind_Exception *a1)
{
  sub_100050024(v2);
  sub_1000505E0(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002B8190(uint64_t *a1)
{
  v2 = a1[54];
  if (v2 == 18)
  {
    sub_1000474A4(v16, "");
    sub_100211ECC("Trying to go past the end", &v17);
    sub_100383AA4(&v17, __p, v16);
    sub_10003F5D0(__p);
  }

  if ((*(*a1[v2] + 24))(a1[v2]))
  {
    (*(*a1[a1[54]] + 32))(v16);
    v3 = a1 + 18;
    v4 = &a1[2 * a1[54] + 18];
    v5 = v16[0];
    v16[0] = 0uLL;
    v6 = *(v4 + 8);
    *v4 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *(&v16[0] + 1);
    if (*(&v16[0] + 1) && !atomic_fetch_add((*(&v16[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if (v3[2 * a1[54]])
      {
        goto LABEL_15;
      }
    }

    else if (v3[2 * a1[54]])
    {
      goto LABEL_15;
    }
  }

  v8 = a1[a1[54]];
  (*(*v8 + 16))(v8);
  v9 = &a1[2 * a1[54]];
  v11 = qword_100471CB8;
  v10 = qword_100471CC0;
  if (qword_100471CC0)
  {
    atomic_fetch_add_explicit((qword_100471CC0 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = v9[19];
  v9[18] = v11;
  v9[19] = v10;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

LABEL_15:
  v13 = sub_1002B79C0(a1);
  a1[54] = v13;
  if (v13 == 18)
  {
    sub_1002B7B94(a1);
  }

  else
  {
    ++a1[58];
  }

  return a1;
}

void sub_1002B843C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint8_t buf, int a17, int a18, __int16 a19, uint64_t a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002B85E0(uint64_t a1)
{
  v1 = *(a1 + 432);
  if (v1 == 18)
  {
    sub_1000474A4(v4, "");
    sub_1001F2B44("Attempting to dereference the end() iterator", &__p);
    sub_1000E661C(v4, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v5 < 0)
    {
      operator delete(v4[0]);
    }

    sub_10003F5D0(&v3);
  }

  return a1 + 16 * v1 + 144;
}

void sub_1002B86D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    if (a14 < 0)
    {
      operator delete(__p);
    }

    sub_10000D388(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002B871C(uint64_t a1)
{
  sub_1002B88D8(a1 + 8, v9);
  if (*(a1 + 16))
  {
LABEL_4:
    while (1)
    {
      sub_1002B2A98(a1 + 8, v8);
      if ((sub_1002C6278(a1 + 360, v8) & 1) == 0)
      {
        break;
      }

      sub_1002B88D8(a1 + 8, v7);
      sub_10013338C(v7);
      sub_10013338C(v8);
      if ((*(a1 + 16) & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    sub_10013338C(v8);
  }

  else
  {
LABEL_2:
    if (*(a1 + 184) && *(a1 + 344) != *(a1 + 336))
    {
      goto LABEL_4;
    }
  }

  v2 = v11;
  if (v11 != v12)
  {
    v3 = v10;
    do
    {
      v2[10] = v3;
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

    while (v5 != v12);
  }

  operator new();
}

void sub_1002B88BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_10013338C(&a29);
  sub_10013338C(v29 - 192);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B88D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    result = sub_100133E58(a2, a1 + 16);
    if (*(a1 + 8) == 1)
    {
      result = sub_10013338C(a1 + 16);
      *(a1 + 8) = 0;
    }
  }

  else
  {
    result = sub_1001334C4(a2, *(a1 + 192));
    *(a1 + 336) += result;
  }

  return result;
}

uint64_t sub_1002B89E8(uint64_t a1)
{
  *a1 = off_100445BB0;
  *(a1 + 8) = off_100445E00;
  v2 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 232);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 16) != 1)
    {
      return a1;
    }

    goto LABEL_6;
  }

  if (*(a1 + 16) == 1)
  {
LABEL_6:
    sub_10012E8E4(a1 + 24);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_1002B8AE8(uint64_t a1)
{
  *a1 = off_100445BB0;
  *(a1 + 8) = off_100445E00;
  v2 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 232);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 16) != 1)
    {
LABEL_7:

      operator delete();
    }
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_7;
  }

  sub_10012E8E4(a1 + 24);
  *(a1 + 16) = 0;
  goto LABEL_7;
}

void sub_1002B8C08(void *a1)
{
  v1 = a1[29];
  a1[28] = 0;
  a1[29] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = a1[30];
    a1[30] = 0;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = a1[30];
    a1[30] = 0;
    if (!v2)
    {
      return;
    }
  }

  v3 = *(*v2 + 8);

  v3(v2);
}

BOOL sub_1002B8CCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 1;
  }

  if (*(a1 + 224))
  {
    return *(a1 + 384) != *(a1 + 376);
  }

  return 0;
}

uint64_t sub_1002B8CFC(uint64_t a1)
{
  *a1 = off_100445C10;
  *(a1 + 8) = off_100445E00;
  v2 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 232);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 16) != 1)
    {
      return a1;
    }

    goto LABEL_6;
  }

  if (*(a1 + 16) == 1)
  {
LABEL_6:
    sub_10012E8E4(a1 + 24);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_1002B8DFC(uint64_t a1)
{
  *a1 = off_100445C10;
  *(a1 + 8) = off_100445E00;
  v2 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 232);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 16) != 1)
    {
LABEL_7:

      operator delete();
    }
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_7;
  }

  sub_10012E8E4(a1 + 24);
  *(a1 + 16) = 0;
  goto LABEL_7;
}

void sub_1002B8F1C(void *a1)
{
  v1 = a1[29];
  a1[28] = 0;
  a1[29] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = a1[30];
    a1[30] = 0;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = a1[30];
    a1[30] = 0;
    if (!v2)
    {
      return;
    }
  }

  v3 = *(*v2 + 8);

  v3(v2);
}

BOOL sub_1002B8FE0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 1;
  }

  if (*(a1 + 224))
  {
    return *(a1 + 384) != *(a1 + 376);
  }

  return 0;
}

void sub_1002B9014(uint64_t a1)
{
  *a1 = off_100445B50;
  v2 = *(a1 + 280);
  *(a1 + 280) = 0;
  if (v2)
  {
    operator delete();
  }

  *a1 = off_100445CA0;
  v3 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 120);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (*(a1 + 8) != 1)
    {
LABEL_9:

      operator delete();
    }
  }

  else if (*(a1 + 8) != 1)
  {
    goto LABEL_9;
  }

  nullsub_67(a1 + 16);
  *(a1 + 8) = 0;
  goto LABEL_9;
}

uint64_t sub_1002B9150(uint64_t a1)
{
  *a1 = off_100445B78;
  if (*(a1 + 352) == 1)
  {
    *(a1 + 352) = 0;
  }

  *(a1 + 8) = off_100445CC8;
  v2 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 192);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 16) != 1)
    {
      return a1;
    }

    goto LABEL_8;
  }

  if (*(a1 + 16) == 1)
  {
LABEL_8:
    sub_10013338C(a1 + 24);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_1002B9260(uint64_t a1)
{
  *a1 = off_100445B78;
  if (*(a1 + 352) == 1)
  {
    *(a1 + 352) = 0;
  }

  *(a1 + 8) = off_100445CC8;
  v2 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 192);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 16) != 1)
    {
LABEL_9:

      operator delete();
    }
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_9;
  }

  sub_10013338C(a1 + 24);
  *(a1 + 16) = 0;
  goto LABEL_9;
}

void sub_1002B9390(void *a1)
{
  v1 = a1[24];
  a1[23] = 0;
  a1[24] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = a1[25];
    a1[25] = 0;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = a1[25];
    a1[25] = 0;
    if (!v2)
    {
      return;
    }
  }

  v3 = *(*v2 + 8);

  v3(v2);
}

BOOL sub_1002B9454(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 1;
  }

  if (*(a1 + 184))
  {
    return *(a1 + 344) != *(a1 + 336);
  }

  return 0;
}

uint64_t sub_1002B9488(uint64_t a1)
{
  *a1 = off_100445CA0;
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 120);
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
    nullsub_67(a1 + 16);
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_1002B9568(uint64_t a1)
{
  *a1 = off_100445CA0;
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 120);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 8) != 1)
    {
LABEL_7:

      operator delete();
    }
  }

  else if (*(a1 + 8) != 1)
  {
    goto LABEL_7;
  }

  nullsub_67(a1 + 16);
  *(a1 + 8) = 0;
  goto LABEL_7;
}

void sub_1002B9668(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
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
  if (*(a1 + 8))
  {
    sub_10012A2B8(a2, a1 + 16);
    if (*(a1 + 8) == 1)
    {
      nullsub_67(a1 + 16);
      *(a1 + 8) = 0;
    }
  }

  else
  {
    *(a1 + 272) += sub_100129530(a2, *(a1 + 128));
  }
}

void sub_1002B9738(uint64_t a1)
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
LABEL_7:

      operator delete();
    }
  }

  else if (*(a1 + 8) != 1)
  {
    goto LABEL_7;
  }

  sub_10013338C(a1 + 16);
  *(a1 + 8) = 0;
  goto LABEL_7;
}

void *sub_1002B9868(void *a1, void *a2)
{
  *a1 = off_100445D40;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = a2[2];
    a1[1] = *a2;
    a1[2] = v3;
    a1[3] = v4;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v6 = a1[1];
    v5 = a1[2];
    if (v6 != v5)
    {
      v7 = (v5 - 2);
      if (v5 - 2 > v6)
      {
        do
        {
          v9 = *v6;
          v8 = v6[1];
          *v6 = 0;
          v6[1] = 0;
          v10 = *v7;
          *v7 = 0;
          *(v7 + 8) = 0;
          v11 = v6[1];
          *v6 = v10;
          if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
            v12 = *(v7 + 8);
            *v7 = v9;
            *(v7 + 8) = v8;
            if (v12)
            {
LABEL_9:
              if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v12->__on_zero_shared)(v12);
                std::__shared_weak_count::__release_weak(v12);
              }
            }
          }

          else
          {
            v12 = *(v7 + 8);
            *v7 = v9;
            *(v7 + 8) = v8;
            if (v12)
            {
              goto LABEL_9;
            }
          }

          v6 += 2;
          v7 -= 16;
        }

        while (v6 < v7);
      }
    }
  }

  return a1;
}

void sub_1002B99C8(void *a1)
{
  *a1 = off_100445D40;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  operator delete();
}

void sub_1002B9ACC(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *(v2 - 16);
  *(v2 - 16) = 0;
  *(v2 - 8) = 0;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    *(a1 + 16) = v3 - 16;
  }

  else
  {
    *(a1 + 16) = v3 - 16;
  }
}

void *sub_1002B9B70(void *a1)
{
  *a1 = off_100445D40;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1002B9C40(uint64_t a1)
{
  *a1 = off_100445D90;
  v2 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 192);
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
    sub_100130234(a1 + 16);
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_1002B9D20(uint64_t a1)
{
  *a1 = off_100445D90;
  v2 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 192);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 8) != 1)
    {
LABEL_7:

      operator delete();
    }
  }

  else if (*(a1 + 8) != 1)
  {
    goto LABEL_7;
  }

  sub_100130234(a1 + 16);
  *(a1 + 8) = 0;
  goto LABEL_7;
}

uint64_t sub_1002B9E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = off_10043DC28;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 85) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0;
  *(a2 + 160) &= 0xF000u;
  if (*(a1 + 8))
  {
    result = sub_100131328(a2, a1 + 16);
    if (*(a1 + 8) == 1)
    {
      result = sub_100130234(a1 + 16);
      *(a1 + 8) = 0;
    }
  }

  else
  {
    result = sub_100130310(a2, *(a1 + 200));
    *(a1 + 344) += result;
  }

  return result;
}

uint64_t sub_1002B9EFC(uint64_t a1)
{
  *a1 = off_100445DC8;
  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
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
    nullsub_72(a1 + 16);
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_1002B9FDC(uint64_t a1)
{
  *a1 = off_100445DC8;
  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 80);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 8) != 1)
    {
LABEL_7:

      operator delete();
    }
  }

  else if (*(a1 + 8) != 1)
  {
    goto LABEL_7;
  }

  nullsub_72(a1 + 16);
  *(a1 + 8) = 0;
  goto LABEL_7;
}

void sub_1002BA0DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = off_10043DA28;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  if (*(a1 + 8))
  {
    sub_10012C4C0(a2, a1 + 16);
    if (*(a1 + 8) == 1)
    {
      nullsub_72(a1 + 16);
      *(a1 + 8) = 0;
    }
  }

  else
  {
    *(a1 + 232) += sub_10012BC3C(a2, *(a1 + 88));
  }
}

void sub_1002BA19C(uint64_t a1)
{
  *a1 = off_100445E00;
  v2 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 224);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 8) != 1)
    {
LABEL_7:

      operator delete();
    }
  }

  else if (*(a1 + 8) != 1)
  {
    goto LABEL_7;
  }

  sub_10012E8E4(a1 + 16);
  *(a1 + 8) = 0;
  goto LABEL_7;
}

uint64_t sub_1002BA29C(uint64_t a1)
{
  *a1 = off_100445E38;
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 168);
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
    sub_10013CFA4(a1 + 16);
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_1002BA37C(uint64_t a1)
{
  *a1 = off_100445E38;
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 168);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 8) != 1)
    {
LABEL_7:

      operator delete();
    }
  }

  else if (*(a1 + 8) != 1)
  {
    goto LABEL_7;
  }

  sub_10013CFA4(a1 + 16);
  *(a1 + 8) = 0;
  goto LABEL_7;
}

uint64_t sub_1002BA47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  if (*(a1 + 8))
  {
    result = sub_10013DFDC(a2, a1 + 16);
    if (*(a1 + 8) == 1)
    {
      result = sub_10013CFA4(a1 + 16);
      *(a1 + 8) = 0;
    }
  }

  else
  {
    result = sub_10013D138(a2, *(a1 + 176));
    *(a1 + 320) += result;
  }

  return result;
}

uint64_t sub_1002BA56C(uint64_t a1)
{
  *a1 = off_100445E70;
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
    sub_10012660C(a1 + 16);
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_1002BA64C(uint64_t a1)
{
  *a1 = off_100445E70;
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
LABEL_7:

      operator delete();
    }
  }

  else if (*(a1 + 8) != 1)
  {
    goto LABEL_7;
  }

  sub_10012660C(a1 + 16);
  *(a1 + 8) = 0;
  goto LABEL_7;
}

uint64_t sub_1002BA74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = off_10043D8B8;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = off_10043DB28;
  *(a2 + 40) &= 0xFCu;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) &= 0xFE00u;
  if (*(a1 + 8))
  {
    result = sub_100127820(a2, a1 + 16);
    if (*(a1 + 8) == 1)
    {
      result = sub_10012660C(a1 + 16);
      *(a1 + 8) = 0;
    }
  }

  else
  {
    result = sub_100126658(a2, *(a1 + 192));
    *(a1 + 336) += result;
  }

  return result;
}

void sub_1002BA908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_1002BA954(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  strcpy(__p, "gravityAccel.thriftbin");
  v4 = 22;
  if (*(a1 + 23) < 0)
  {
    sub_100003228(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  sub_1000032E4(a2, __p);
  if (v4 < 0)
  {
    operator delete(*__p);
  }
}

void sub_1002BA9F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

double sub_1002BAA3C(uint64_t a1, const char *a2, char a3)
{
  if (a3)
  {
    sub_100002F5C(a2, 0, &v5);
    if (v5 > 1)
    {
      sub_1000ED7A4();
    }
  }

  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void sub_1002BABFC(uint64_t a1)
{
  *a1 = off_100445CA0;
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 120);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 8) != 1)
    {
LABEL_7:

      operator delete();
    }
  }

  else if (*(a1 + 8) != 1)
  {
    goto LABEL_7;
  }

  nullsub_67(a1 + 16);
  *(a1 + 8) = 0;
  goto LABEL_7;
}

uint64_t sub_1002BAD00(uint64_t a1)
{
  *a1 = off_100445CA0;
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 120);
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
    nullsub_67(a1 + 16);
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t sub_1002BADE0(uint64_t a1)
{
  *a1 = off_100445EE8;
  v2 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 112);
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
    nullsub_71(a1 + 16);
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_1002BAEC0(uint64_t a1)
{
  *a1 = off_100445EE8;
  v2 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 112);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 8) != 1)
    {
LABEL_7:

      operator delete();
    }
  }

  else if (*(a1 + 8) != 1)
  {
    goto LABEL_7;
  }

  nullsub_71(a1 + 16);
  *(a1 + 8) = 0;
  goto LABEL_7;
}

void sub_1002BAFC0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = off_10043DA08;
  *(a2 + 24) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) &= 0x80u;
  if (*(a1 + 8))
  {
    sub_10012BBD4(a2, a1 + 16);
    if (*(a1 + 8) == 1)
    {
      nullsub_71(a1 + 16);
      *(a1 + 8) = 0;
    }
  }

  else
  {
    *(a1 + 264) += sub_10012AE10(a2, *(a1 + 120));
  }
}

uint64_t sub_1002BB088(uint64_t a1)
{
  *a1 = off_100445B50;
  v2 = *(a1 + 280);
  *(a1 + 280) = 0;
  if (v2)
  {
    operator delete();
  }

  *a1 = off_100445CA0;
  v3 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 120);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (*(a1 + 8) != 1)
    {
      return a1;
    }

    goto LABEL_8;
  }

  if (*(a1 + 8) == 1)
  {
LABEL_8:
    nullsub_67(a1 + 16);
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_1002BB244(_Unwind_Exception *a1)
{
  sub_1000B7124(&v1[2].__vftable);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1002BB264(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

std::string *sub_1002BB27C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002BB2B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002BB2CC(uint64_t a1)
{
  *a1 = off_100445F20;
  *(a1 + 8) = off_100445D90;
  v2 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 200);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 16) != 1)
    {
      return a1;
    }

    goto LABEL_6;
  }

  if (*(a1 + 16) == 1)
  {
LABEL_6:
    sub_100130234(a1 + 24);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_1002BB3CC(uint64_t a1)
{
  *a1 = off_100445F20;
  *(a1 + 8) = off_100445D90;
  v2 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 200);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 16) != 1)
    {
LABEL_7:

      operator delete();
    }
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_7;
  }

  sub_100130234(a1 + 24);
  *(a1 + 16) = 0;
  goto LABEL_7;
}

void sub_1002BB4EC(void *a1)
{
  v1 = a1[25];
  a1[24] = 0;
  a1[25] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = a1[26];
    a1[26] = 0;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = a1[26];
    a1[26] = 0;
    if (!v2)
    {
      return;
    }
  }

  v3 = *(*v2 + 8);

  v3(v2);
}

BOOL sub_1002BB5B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 1;
  }

  if (*(a1 + 192))
  {
    return *(a1 + 352) != *(a1 + 344);
  }

  return 0;
}

void sub_1002BB5E0(uint64_t a1)
{
  v3 = off_10043DC28;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v8, 0, 29);
  memset(&v8[32], 0, 58);
  if (*(a1 + 16))
  {
    sub_100131328(&v3, a1 + 24);
    if (*(a1 + 16) == 1)
    {
      sub_100130234(a1 + 24);
      *(a1 + 16) = 0;
    }
  }

  else
  {
    *(a1 + 352) += sub_100130310(&v3, *(a1 + 208));
  }

  sub_100324800(&v2, &v3);
  operator new();
}

void sub_1002BB718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  std::__shared_weak_count::~__shared_weak_count(v30);
  operator delete(v32);
  sub_100130234(&a9);
  sub_100130234(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BB75C(uint64_t a1)
{
  *a1 = off_100445F70;
  *(a1 + 8) = off_100445DC8;
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 88);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 16) != 1)
    {
      return a1;
    }

    goto LABEL_6;
  }

  if (*(a1 + 16) == 1)
  {
LABEL_6:
    nullsub_72(a1 + 24);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_1002BB85C(uint64_t a1)
{
  *a1 = off_100445F70;
  *(a1 + 8) = off_100445DC8;
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 88);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 16) != 1)
    {
LABEL_7:

      operator delete();
    }
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_7;
  }

  nullsub_72(a1 + 24);
  *(a1 + 16) = 0;
  goto LABEL_7;
}

void sub_1002BB97C(void *a1)
{
  v1 = a1[11];
  a1[10] = 0;
  a1[11] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = a1[12];
    a1[12] = 0;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = a1[12];
    a1[12] = 0;
    if (!v2)
    {
      return;
    }
  }

  v3 = *(*v2 + 8);

  v3(v2);
}

BOOL sub_1002BBA40(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 1;
  }

  if (*(a1 + 80))
  {
    return *(a1 + 240) != *(a1 + 232);
  }

  return 0;
}

void sub_1002BBA70(uint64_t a1)
{
  v3 = off_10043DA28;
  v4 = 0u;
  memset(v5, 0, sizeof(v5));
  if (*(a1 + 16))
  {
    sub_10012C4C0(&v3, a1 + 24);
    if (*(a1 + 16) == 1)
    {
      nullsub_72(a1 + 24);
      *(a1 + 16) = 0;
    }
  }

  else
  {
    *(a1 + 240) += sub_10012BC3C(&v3, *(a1 + 96));
  }

  sub_100324910(&v2, &v3);
  operator new();
}

void sub_1002BBB80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v18);
  nullsub_72(&a9);
  nullsub_72(&a16);
  _Unwind_Resume(a1);
}

void sub_1002BBBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  nullsub_72(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BBC5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN27input_event_stream_iteratorC1ENSt3__16vectorI19LocalizerInputEventNS0_9allocatorIS2_EEEERK18UnprocessedDatarunNS0_6chrono8durationIxNS0_5ratioILl1ELl1000000000EEEEEjE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN27input_event_stream_iteratorC1ENSt3__16vectorI19LocalizerInputEventNS0_9allocatorIS2_EEEERK18UnprocessedDatarunNS0_6chrono8durationIxNS0_5ratioILl1ELl1000000000EEEEEjE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN27input_event_stream_iteratorC1ENSt3__16vectorI19LocalizerInputEventNS0_9allocatorIS2_EEEERK18UnprocessedDatarunNS0_6chrono8durationIxNS0_5ratioILl1ELl1000000000EEEEEjE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN27input_event_stream_iteratorC1ENSt3__16vectorI19LocalizerInputEventNS0_9allocatorIS2_EEEERK18UnprocessedDatarunNS0_6chrono8durationIxNS0_5ratioILl1ELl1000000000EEEEEjE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1002BBCD4(uint64_t a1, uint64_t a2)
{
  *a1 = off_100446050;
  sub_1000EC3E0(a2, (a1 + 8));
  v3 = *(a1 + 8);
  operator new();
}

void sub_1002BBE88(_Unwind_Exception *a1)
{
  sub_10002BB1C(v1 + 32);
  sub_10002BB1C(v1 + 16);
  sub_1000ED500((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1002BBEC8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  sub_1000ED500((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1002BBEFC(uint64_t a1)
{
  *a1 = off_100446050;
  v2 = a1 + 48;
  v3 = *(a1 + 72);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
LABEL_7:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

LABEL_9:
  v5 = *(a1 + 24);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    sub_1000ED500((a1 + 8));
    return a1;
  }

  else
  {
    sub_1000ED500((a1 + 8));
    return a1;
  }
}

void sub_1002BC054(uint64_t a1)
{
  *a1 = off_100446050;
  v2 = a1 + 48;
  v3 = *(a1 + 72);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 40);
    if (!v4)
    {
LABEL_9:
      v5 = *(a1 + 24);
      if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

      sub_1000ED500((a1 + 8));

      operator delete();
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  goto LABEL_9;
}

void sub_1002BC1B4(void *a1)
{
  v1 = a1[5];
  a1[4] = 0;
  a1[5] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = a1[3];
    a1[2] = 0;
    a1[3] = 0;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = a1[3];
    a1[2] = 0;
    a1[3] = 0;
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

wireless_diagnostics::google::protobuf::io::CodedInputStream *sub_1002BC294(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = 0;
    v2 = 0;
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::GetDirectBufferPointer(result, &v3, &v2);
  }

  return result;
}

void sub_1002BC2D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v12 = 0;
    v3 = *(v2 + 1);
    if (v3 >= *(v2 + 2) || *v3 < 0)
    {
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v2, &v12) & 1) == 0)
      {
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(&v7, "Protobuf stream eror: failed to parse the length");
        sub_10010A984(v11);
      }
    }

    else
    {
      v12 = *v3;
      *(v2 + 1) = v3 + 1;
    }

    sub_1000A825C(v10);
    v4 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(*(a1 + 32), v12);
    if (wireless_diagnostics::google::protobuf::MessageLite::MergeFromCodedStream(v10, *(a1 + 32)))
    {
      v5 = *(a1 + 32);
      if (*(v5 + 36))
      {
        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(v5, v4);
        v6 = *(a1 + 72);
        if (v6)
        {
          (*(*v6 + 48))(&v7);
          sub_1002BB1A4();
        }

        sub_1000DB498();
      }

      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v7, "Protobuf stream eror: failed to consume the whole message");
      sub_10010A984(v8);
    }

    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v7, "Protobuf stream eror: failed to parse the message");
    sub_10010A984(v9);
  }

  __cxa_allocate_exception(0x40uLL);
  std::runtime_error::runtime_error(&v7, "Protobuf stream not avaialble");
  sub_10010A984(v13);
}

void sub_1002BC594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::runtime_error a10)
{
  v12 = *(v10 - 96);
  if (v12)
  {
    *(v10 - 88) = v12;
    operator delete(v12);
  }

  std::runtime_error::~runtime_error(&a10);
  _Unwind_Resume(a1);
}

void sub_1002BC668(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  sub_1000A9070((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1002BC69C(_Unwind_Exception *a1)
{
  sub_1000A8524(v1 + 176);
  sub_1000B7124((v1 + 16));
  sub_1000A9070((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1002BC708(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004460A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002BC7A4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004460F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002BC804(uint64_t a1)
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

uint64_t sub_1002BC890(uint64_t a1)
{
  *a1 = off_100446140;
  *(a1 + 8) = off_100445E38;
  v2 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 176);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 16) != 1)
    {
      return a1;
    }

    goto LABEL_6;
  }

  if (*(a1 + 16) == 1)
  {
LABEL_6:
    sub_10013CFA4(a1 + 24);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_1002BC990(uint64_t a1)
{
  *a1 = off_100446140;
  *(a1 + 8) = off_100445E38;
  v2 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 176);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 16) != 1)
    {
LABEL_7:

      operator delete();
    }
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_7;
  }

  sub_10013CFA4(a1 + 24);
  *(a1 + 16) = 0;
  goto LABEL_7;
}

void sub_1002BCAB0(void *a1)
{
  v1 = a1[22];
  a1[21] = 0;
  a1[22] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = a1[23];
    a1[23] = 0;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = a1[23];
    a1[23] = 0;
    if (!v2)
    {
      return;
    }
  }

  v3 = *(*v2 + 8);

  v3(v2);
}

BOOL sub_1002BCB74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 1;
  }

  if (*(a1 + 168))
  {
    return *(a1 + 328) != *(a1 + 320);
  }

  return 0;
}

void sub_1002BCBA4(uint64_t a1)
{
  v2[0] = off_10043DF18;
  memset(&v2[1], 0, 24);
  v2[4] = off_10043DB28;
  v2[5] = 0;
  v2[6] = 0;
  v3 = 0;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  memset(v7, 0, sizeof(v7));
  if (*(a1 + 16))
  {
    sub_10013DFDC(v2, a1 + 24);
    if (*(a1 + 16) == 1)
    {
      sub_10013CFA4(a1 + 24);
      *(a1 + 16) = 0;
    }
  }

  else
  {
    *(a1 + 328) += sub_10013D138(v2, *(a1 + 184));
  }

  sub_1003245E4();
  operator new();
}

void sub_1002BCCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::__shared_weak_count::~__shared_weak_count(v27);
  operator delete(v29);
  sub_10013CFA4(&a9);
  sub_10013CFA4(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BCD34(uint64_t a1)
{
  *a1 = off_100446190;
  *(a1 + 8) = off_100445E70;
  v2 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 192);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 16) != 1)
    {
      return a1;
    }

    goto LABEL_6;
  }

  if (*(a1 + 16) == 1)
  {
LABEL_6:
    sub_10012660C(a1 + 24);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_1002BCE34(uint64_t a1)
{
  *a1 = off_100446190;
  *(a1 + 8) = off_100445E70;
  v2 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 192);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 16) != 1)
    {
LABEL_7:

      operator delete();
    }
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_7;
  }

  sub_10012660C(a1 + 24);
  *(a1 + 16) = 0;
  goto LABEL_7;
}

void sub_1002BCF54(void *a1)
{
  v1 = a1[24];
  a1[23] = 0;
  a1[24] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = a1[25];
    a1[25] = 0;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = a1[25];
    a1[25] = 0;
    if (!v2)
    {
      return;
    }
  }

  v3 = *(*v2 + 8);

  v3(v2);
}

BOOL sub_1002BD018(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 1;
  }

  if (*(a1 + 184))
  {
    return *(a1 + 344) != *(a1 + 336);
  }

  return 0;
}

void sub_1002BD048(uint64_t a1)
{
  v2[0] = off_10043D8B8;
  v2[1] = 0;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0;
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = off_10043DB28;
  v3 = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  if (*(a1 + 16))
  {
    sub_100127820(v2, a1 + 24);
    if (*(a1 + 16) == 1)
    {
      sub_10012660C(a1 + 24);
      *(a1 + 16) = 0;
    }
  }

  else
  {
    *(a1 + 344) += sub_100126658(v2, *(a1 + 200));
  }

  sub_100324958();
  operator new();
}

void sub_1002BD19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::__shared_weak_count::~__shared_weak_count(v29);
  operator delete(v31);
  sub_10012660C(&a9);
  sub_10012660C(&a29);
  _Unwind_Resume(a1);
}

void *sub_1002BD1E0(void *result)
{
  v1 = result[1];
  *result = off_1004461E0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_1002BD254(void *a1)
{
  v2 = a1[1];
  *a1 = off_1004461E0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  operator delete();
}

uint64_t sub_1002BD2E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[15];
  v1[14] = 0;
  v1[15] = 0;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    result = v1[16];
    v1[16] = 0;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = v1[16];
    v1[16] = 0;
    if (!result)
    {
      return result;
    }
  }

  v4 = *(*result + 8);

  return v4();
}

BOOL sub_1002BD3A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 8))
  {
    return 1;
  }

  if (*(v1 + 112))
  {
    return *(v1 + 272) != *(v1 + 264);
  }

  return 0;
}

void sub_1002BD3D8(uint64_t a1)
{
  (*(**(a1 + 8) + 16))(v3);
  sub_100324028(v2, *(a1 + 16), v3);
  operator new();
}

void sub_1002BD4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v25);
  nullsub_67(&a10);
  nullsub_67(&a23);
  _Unwind_Resume(a1);
}

void sub_1002BD4D4(_Unwind_Exception *a1, uint64_t a2, ...)
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
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  nullsub_67(va);
  nullsub_67(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BD4F0(uint64_t a1)
{
  *a1 = off_100446230;
  *(a1 + 8) = off_100445EE8;
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 120);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 16) != 1)
    {
      return a1;
    }

    goto LABEL_6;
  }

  if (*(a1 + 16) == 1)
  {
LABEL_6:
    nullsub_71(a1 + 24);
    *(a1 + 16) = 0;
  }

  return a1;
}

void sub_1002BD5F0(uint64_t a1)
{
  *a1 = off_100446230;
  *(a1 + 8) = off_100445EE8;
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 120);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 16) != 1)
    {
LABEL_7:

      operator delete();
    }
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_7;
  }

  nullsub_71(a1 + 24);
  *(a1 + 16) = 0;
  goto LABEL_7;
}

void sub_1002BD710(void *a1)
{
  v1 = a1[15];
  a1[14] = 0;
  a1[15] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = a1[16];
    a1[16] = 0;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = a1[16];
    a1[16] = 0;
    if (!v2)
    {
      return;
    }
  }

  v3 = *(*v2 + 8);

  v3(v2);
}

BOOL sub_1002BD7D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 1;
  }

  if (*(a1 + 112))
  {
    return *(a1 + 272) != *(a1 + 264);
  }

  return 0;
}

void sub_1002BD804(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v3[0] = off_10043DA08;
  v4 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  if (*(a1 + 16))
  {
    sub_10012BBD4(v3, a1 + 24);
    if (*(a1 + 16) == 1)
    {
      nullsub_71(a1 + 24);
      *(a1 + 16) = 0;
    }
  }

  else
  {
    *(a1 + 272) += sub_10012AE10(v3, *(a1 + 128));
  }

  sub_1003248C8(&v2, v3);
  operator new();
}

void sub_1002BD924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  nullsub_71(&a9);
  nullsub_71(&a20);
  _Unwind_Resume(a1);
}

void sub_1002BD954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  nullsub_71(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BD968(uint64_t result)
{
  *result = off_100446280;
  if (*(result + 8) == 1)
  {
    v1 = result;
    sub_1002C5A44((result + 16));
    result = v1;
    *(v1 + 8) = 0;
  }

  return result;
}

void sub_1002BD9C4(uint64_t a1)
{
  *a1 = off_100446280;
  if (*(a1 + 8) == 1)
  {
    sub_1002C5A44((a1 + 16));
    *(a1 + 8) = 0;
  }

  operator delete();
}

void *sub_1002BDA3C(void *result)
{
  if (*(result + 8) == 1)
  {
    v1 = result;
    result = sub_1002C5A44(result + 2);
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t sub_1002BDA80@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 8) == 1 && (v3 = result, v4 = (result + 16), result = (*(*(result + 16) + 16))(result + 16), (result & 1) != 0))
  {
    result = sub_1002C5BFC(v4, a2);
    if (!*a2 && *(v3 + 8) == 1)
    {
      result = sub_1002C5A44(v4);
      *(v3 + 8) = 0;
    }
  }

  else
  {
    v5 = qword_100471CC0;
    *a2 = qword_100471CB8;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

uint64_t sub_1002BDBE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN27input_event_stream_iterator47LocalizerEventStreamFromLengthDelimitedProtobufI24ARSessionStateInputEventN5proto3CLP8LogEntry8LogEntryEEC1ERKN5boost10filesystem4pathEEUlRKS5_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN27input_event_stream_iterator47LocalizerEventStreamFromLengthDelimitedProtobufI24ARSessionStateInputEventN5proto3CLP8LogEntry8LogEntryEEC1ERKN5boost10filesystem4pathEEUlRKS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN27input_event_stream_iterator47LocalizerEventStreamFromLengthDelimitedProtobufI24ARSessionStateInputEventN5proto3CLP8LogEntry8LogEntryEEC1ERKN5boost10filesystem4pathEEUlRKS5_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN27input_event_stream_iterator47LocalizerEventStreamFromLengthDelimitedProtobufI24ARSessionStateInputEventN5proto3CLP8LogEntry8LogEntryEEC1ERKN5boost10filesystem4pathEEUlRKS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1002BDC5C(uint64_t a1, uint64_t a2)
{
  *a1 = off_100446360;
  sub_1000EC3E0(a2, (a1 + 8));
  v3 = *(a1 + 8);
  operator new();
}

void sub_1002BDE10(_Unwind_Exception *a1)
{
  sub_10002BB1C(v1 + 32);
  sub_10002BB1C(v1 + 16);
  sub_1000ED500((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1002BDE50(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  sub_1000ED500((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1002BDE84(uint64_t a1)
{
  *a1 = off_100446360;
  v2 = a1 + 48;
  v3 = *(a1 + 72);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
LABEL_7:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

LABEL_9:
  v5 = *(a1 + 24);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    sub_1000ED500((a1 + 8));
    return a1;
  }

  else
  {
    sub_1000ED500((a1 + 8));
    return a1;
  }
}

void sub_1002BDFDC(uint64_t a1)
{
  *a1 = off_100446360;
  v2 = a1 + 48;
  v3 = *(a1 + 72);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 40);
    if (!v4)
    {
LABEL_9:
      v5 = *(a1 + 24);
      if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

      sub_1000ED500((a1 + 8));

      operator delete();
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  goto LABEL_9;
}

void sub_1002BE13C(void *a1)
{
  v1 = a1[5];
  a1[4] = 0;
  a1[5] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = a1[3];
    a1[2] = 0;
    a1[3] = 0;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = a1[3];
    a1[2] = 0;
    a1[3] = 0;
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

wireless_diagnostics::google::protobuf::io::CodedInputStream *sub_1002BE21C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = 0;
    v2 = 0;
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::GetDirectBufferPointer(result, &v3, &v2);
  }

  return result;
}

void sub_1002BE258(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v12 = 0;
    v3 = *(v2 + 1);
    if (v3 >= *(v2 + 2) || *v3 < 0)
    {
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v2, &v12) & 1) == 0)
      {
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(v7, "Protobuf stream eror: failed to parse the length");
        sub_10010A984(v11);
      }
    }

    else
    {
      v12 = *v3;
      *(v2 + 1) = v3 + 1;
    }

    sub_1000A825C(v10);
    v4 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(*(a1 + 32), v12);
    if (wireless_diagnostics::google::protobuf::MessageLite::MergeFromCodedStream(v10, *(a1 + 32)))
    {
      v5 = *(a1 + 32);
      if (*(v5 + 36))
      {
        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(v5, v4);
        v6 = *(a1 + 72);
        if (v6)
        {
          (*(*v6 + 48))(v7);
          operator new();
        }

        sub_1000DB498();
      }

      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(v7, "Protobuf stream eror: failed to consume the whole message");
      sub_10010A984(v8);
    }

    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(v7, "Protobuf stream eror: failed to parse the message");
    sub_10010A984(v9);
  }

  __cxa_allocate_exception(0x40uLL);
  std::runtime_error::runtime_error(v7, "Protobuf stream not avaialble");
  sub_10010A984(v13);
}

void sub_1002BE56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  v25 = *(v23 - 88);
  if (v25)
  {
    *(v23 - 80) = v25;
    operator delete(v25);
  }

  std::runtime_error::~runtime_error(&a9);
  _Unwind_Resume(a1);
}

void sub_1002BE640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  __cxa_free_exception(v24);
  sub_1000A9070(&a24);
  _Unwind_Resume(a1);
}

void sub_1002BE674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  std::__shared_weak_count::~__shared_weak_count(v24);
  operator delete(v26);
  sub_1000A8524(&a11);
  sub_1000A9070(&a24);
  _Unwind_Resume(a1);
}

void sub_1002BE6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000A9070(va);
  _Unwind_Resume(a1);
}

void sub_1002BE6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000A9070(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BE6D0(uint64_t a1)
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

uint64_t sub_1002BE7EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN27input_event_stream_iterator47LocalizerEventStreamFromLengthDelimitedProtobufI23VIOEstimationInputEventN5proto3CLP8LogEntry8LogEntryEEC1ERKN5boost10filesystem4pathEEUlRKS5_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN27input_event_stream_iterator47LocalizerEventStreamFromLengthDelimitedProtobufI23VIOEstimationInputEventN5proto3CLP8LogEntry8LogEntryEEC1ERKN5boost10filesystem4pathEEUlRKS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN27input_event_stream_iterator47LocalizerEventStreamFromLengthDelimitedProtobufI23VIOEstimationInputEventN5proto3CLP8LogEntry8LogEntryEEC1ERKN5boost10filesystem4pathEEUlRKS5_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN27input_event_stream_iterator47LocalizerEventStreamFromLengthDelimitedProtobufI23VIOEstimationInputEventN5proto3CLP8LogEntry8LogEntryEEC1ERKN5boost10filesystem4pathEEUlRKS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1002BE864(uint64_t a1, uint64_t a2)
{
  *a1 = off_100446440;
  sub_1000EC3E0(a2, (a1 + 8));
  v3 = *(a1 + 8);
  operator new();
}

void sub_1002BEA18(_Unwind_Exception *a1)
{
  sub_10002BB1C(v1 + 32);
  sub_10002BB1C(v1 + 16);
  sub_1000ED500((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1002BEA58(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  sub_1000ED500((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1002BEA8C(uint64_t a1)
{
  *a1 = off_100446440;
  v2 = a1 + 48;
  v3 = *(a1 + 72);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
LABEL_7:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

LABEL_9:
  v5 = *(a1 + 24);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    sub_1000ED500((a1 + 8));
    return a1;
  }

  else
  {
    sub_1000ED500((a1 + 8));
    return a1;
  }
}

void sub_1002BEBE4(uint64_t a1)
{
  *a1 = off_100446440;
  v2 = a1 + 48;
  v3 = *(a1 + 72);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 40);
    if (!v4)
    {
LABEL_9:
      v5 = *(a1 + 24);
      if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

      sub_1000ED500((a1 + 8));

      operator delete();
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  goto LABEL_9;
}

void sub_1002BED44(void *a1)
{
  v1 = a1[5];
  a1[4] = 0;
  a1[5] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = a1[3];
    a1[2] = 0;
    a1[3] = 0;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = a1[3];
    a1[2] = 0;
    a1[3] = 0;
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

wireless_diagnostics::google::protobuf::io::CodedInputStream *sub_1002BEE24(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = 0;
    v2 = 0;
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::GetDirectBufferPointer(result, &v3, &v2);
  }

  return result;
}

void sub_1002BEE60(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v12 = 0;
    v3 = *(v2 + 1);
    if (v3 >= *(v2 + 2) || *v3 < 0)
    {
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v2, &v12) & 1) == 0)
      {
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(v7, "Protobuf stream eror: failed to parse the length");
        sub_10010A984(v11);
      }
    }

    else
    {
      v12 = *v3;
      *(v2 + 1) = v3 + 1;
    }

    sub_1000A825C(v10);
    v4 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(*(a1 + 32), v12);
    if (wireless_diagnostics::google::protobuf::MessageLite::MergeFromCodedStream(v10, *(a1 + 32)))
    {
      v5 = *(a1 + 32);
      if (*(v5 + 36))
      {
        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(v5, v4);
        v6 = *(a1 + 72);
        if (v6)
        {
          (*(*v6 + 48))(v7);
          operator new();
        }

        sub_1000DB498();
      }

      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(v7, "Protobuf stream eror: failed to consume the whole message");
      sub_10010A984(v8);
    }

    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(v7, "Protobuf stream eror: failed to parse the message");
    sub_10010A984(v9);
  }

  __cxa_allocate_exception(0x40uLL);
  std::runtime_error::runtime_error(v7, "Protobuf stream not avaialble");
  sub_10010A984(v13);
}

void sub_1002BF180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  v32 = *(v30 - 88);
  if (v32)
  {
    *(v30 - 80) = v32;
    operator delete(v32);
  }

  std::runtime_error::~runtime_error(&a9);
  _Unwind_Resume(a1);
}

void sub_1002BF254(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  sub_1000A9070((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_1002BF288(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_10005F4E8(&v2[1].__shared_weak_owners_);
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v5);
  sub_1000A8524(va1);
  sub_10005F4E8(va);
  sub_1000A9070((v3 - 152));
  _Unwind_Resume(a1);
}

uint64_t sub_1002BF2FC(uint64_t a1)
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

uint64_t sub_1002BF418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN27input_event_stream_iterator47LocalizerEventStreamFromLengthDelimitedProtobufI30VLLocalizationResultInputEventN5proto3CLP8LogEntry8LogEntryEEC1ERKN5boost10filesystem4pathEEUlRKS5_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN27input_event_stream_iterator47LocalizerEventStreamFromLengthDelimitedProtobufI30VLLocalizationResultInputEventN5proto3CLP8LogEntry8LogEntryEEC1ERKN5boost10filesystem4pathEEUlRKS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN27input_event_stream_iterator47LocalizerEventStreamFromLengthDelimitedProtobufI30VLLocalizationResultInputEventN5proto3CLP8LogEntry8LogEntryEEC1ERKN5boost10filesystem4pathEEUlRKS5_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN27input_event_stream_iterator47LocalizerEventStreamFromLengthDelimitedProtobufI30VLLocalizationResultInputEventN5proto3CLP8LogEntry8LogEntryEEC1ERKN5boost10filesystem4pathEEUlRKS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1002BF490(uint64_t a1, uint64_t a2)
{
  *a1 = off_100446520;
  sub_1000EC3E0(a2, (a1 + 8));
  v3 = *(a1 + 8);
  operator new();
}

void sub_1002BF644(_Unwind_Exception *a1)
{
  sub_10002BB1C(v1 + 32);
  sub_10002BB1C(v1 + 16);
  sub_1000ED500((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1002BF684(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  sub_1000ED500((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1002BF6B8(uint64_t a1)
{
  *a1 = off_100446520;
  v2 = a1 + 48;
  v3 = *(a1 + 72);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
LABEL_7:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

LABEL_9:
  v5 = *(a1 + 24);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    sub_1000ED500((a1 + 8));
    return a1;
  }

  else
  {
    sub_1000ED500((a1 + 8));
    return a1;
  }
}

void sub_1002BF810(uint64_t a1)
{
  *a1 = off_100446520;
  v2 = a1 + 48;
  v3 = *(a1 + 72);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 40);
    if (!v4)
    {
LABEL_9:
      v5 = *(a1 + 24);
      if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

      sub_1000ED500((a1 + 8));

      operator delete();
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  goto LABEL_9;
}

void sub_1002BF970(void *a1)
{
  v1 = a1[5];
  a1[4] = 0;
  a1[5] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = a1[3];
    a1[2] = 0;
    a1[3] = 0;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = a1[3];
    a1[2] = 0;
    a1[3] = 0;
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

wireless_diagnostics::google::protobuf::io::CodedInputStream *sub_1002BFA50(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = 0;
    v2 = 0;
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::GetDirectBufferPointer(result, &v3, &v2);
  }

  return result;
}

void sub_1002BFA8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v12 = 0;
    v3 = *(v2 + 1);
    if (v3 >= *(v2 + 2) || *v3 < 0)
    {
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v2, &v12) & 1) == 0)
      {
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(v7, "Protobuf stream eror: failed to parse the length");
        sub_10010A984(v11);
      }
    }

    else
    {
      v12 = *v3;
      *(v2 + 1) = v3 + 1;
    }

    sub_1000A825C(v10);
    v4 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(*(a1 + 32), v12);
    if (wireless_diagnostics::google::protobuf::MessageLite::MergeFromCodedStream(v10, *(a1 + 32)))
    {
      v5 = *(a1 + 32);
      if (*(v5 + 36))
      {
        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(v5, v4);
        v6 = *(a1 + 72);
        if (v6)
        {
          (*(*v6 + 48))(v7);
          operator new();
        }

        sub_1000DB498();
      }

      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(v7, "Protobuf stream eror: failed to consume the whole message");
      sub_10010A984(v8);
    }

    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(v7, "Protobuf stream eror: failed to parse the message");
    sub_10010A984(v9);
  }

  __cxa_allocate_exception(0x40uLL);
  std::runtime_error::runtime_error(v7, "Protobuf stream not avaialble");
  sub_10010A984(v13);
}

void sub_1002BFDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v29 - 88);
  if (v31)
  {
    *(v29 - 80) = v31;
    operator delete(v31);
  }

  std::runtime_error::~runtime_error(&a9);
  _Unwind_Resume(a1);
}

void sub_1002BFE80(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  sub_1000A9070((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_1002BFEB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_10006A6AC(&v2[1].__shared_weak_owners_);
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v5);
  sub_1000A8524(va1);
  sub_10006A6AC(va);
  sub_1000A9070((v3 - 152));
  _Unwind_Resume(a1);
}

uint64_t sub_1002BFF28(uint64_t a1)
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

uint64_t sub_1002C0044(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN27input_event_stream_iterator47LocalizerEventStreamFromLengthDelimitedProtobufI34OutdoorEstimatorLogEntryInputEventN5proto3CLP8LogEntry8LogEntryEEC1ERKN5boost10filesystem4pathEEUlRKS5_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN27input_event_stream_iterator47LocalizerEventStreamFromLengthDelimitedProtobufI34OutdoorEstimatorLogEntryInputEventN5proto3CLP8LogEntry8LogEntryEEC1ERKN5boost10filesystem4pathEEUlRKS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN27input_event_stream_iterator47LocalizerEventStreamFromLengthDelimitedProtobufI34OutdoorEstimatorLogEntryInputEventN5proto3CLP8LogEntry8LogEntryEEC1ERKN5boost10filesystem4pathEEUlRKS5_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN27input_event_stream_iterator47LocalizerEventStreamFromLengthDelimitedProtobufI34OutdoorEstimatorLogEntryInputEventN5proto3CLP8LogEntry8LogEntryEEC1ERKN5boost10filesystem4pathEEUlRKS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1002C00BC(uint64_t a1, uint64_t a2)
{
  *a1 = off_100446600;
  sub_1000EC3E0(a2, (a1 + 8));
  v3 = *(a1 + 8);
  operator new();
}

void sub_1002C0270(_Unwind_Exception *a1)
{
  sub_10002BB1C(v1 + 32);
  sub_10002BB1C(v1 + 16);
  sub_1000ED500((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1002C02B0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  sub_1000ED500((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1002C02E4(uint64_t a1)
{
  *a1 = off_100446600;
  v2 = a1 + 48;
  v3 = *(a1 + 72);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
LABEL_7:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

LABEL_9:
  v5 = *(a1 + 24);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    sub_1000ED500((a1 + 8));
    return a1;
  }

  else
  {
    sub_1000ED500((a1 + 8));
    return a1;
  }
}

void sub_1002C043C(uint64_t a1)
{
  *a1 = off_100446600;
  v2 = a1 + 48;
  v3 = *(a1 + 72);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 40);
    if (!v4)
    {
LABEL_9:
      v5 = *(a1 + 24);
      if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

      sub_1000ED500((a1 + 8));

      operator delete();
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  goto LABEL_9;
}

void sub_1002C059C(void *a1)
{
  v1 = a1[5];
  a1[4] = 0;
  a1[5] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = a1[3];
    a1[2] = 0;
    a1[3] = 0;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = a1[3];
    a1[2] = 0;
    a1[3] = 0;
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

wireless_diagnostics::google::protobuf::io::CodedInputStream *sub_1002C067C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = 0;
    v2 = 0;
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::GetDirectBufferPointer(result, &v3, &v2);
  }

  return result;
}

void sub_1002C06B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v12 = 0;
    v3 = *(v2 + 1);
    if (v3 >= *(v2 + 2) || *v3 < 0)
    {
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v2, &v12) & 1) == 0)
      {
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(&v7, "Protobuf stream eror: failed to parse the length");
        sub_10010A984(v11);
      }
    }

    else
    {
      v12 = *v3;
      *(v2 + 1) = v3 + 1;
    }

    sub_1000A825C(v10);
    v4 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(*(a1 + 32), v12);
    if (wireless_diagnostics::google::protobuf::MessageLite::MergeFromCodedStream(v10, *(a1 + 32)))
    {
      v5 = *(a1 + 32);
      if (*(v5 + 36))
      {
        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(v5, v4);
        v6 = *(a1 + 72);
        if (v6)
        {
          (*(*v6 + 48))(&v7);
          operator new();
        }

        sub_1000DB498();
      }

      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v7, "Protobuf stream eror: failed to consume the whole message");
      sub_10010A984(v8);
    }

    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v7, "Protobuf stream eror: failed to parse the message");
    sub_10010A984(v9);
  }

  __cxa_allocate_exception(0x40uLL);
  std::runtime_error::runtime_error(&v7, "Protobuf stream not avaialble");
  sub_10010A984(v13);
}

void sub_1002C09D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::runtime_error a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  v32 = *(v30 - 88);
  if (v32)
  {
    *(v30 - 80) = v32;
    operator delete(v32);
  }

  std::runtime_error::~runtime_error(&a10);
  _Unwind_Resume(a1);
}

void sub_1002C0AAC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  sub_1000A9070((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_1002C0AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_10006DD50(&v3[1].__shared_weak_owners_);
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v6);
  sub_1000A8524(va1);
  sub_10006DD50(va);
  sub_1000A9070((v4 - 152));
  _Unwind_Resume(a1);
}

uint64_t sub_1002C0B54(uint64_t a1)
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

void sub_1002C0BE0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002C0C50()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1002C0CC0(uint64_t result, void *a2, void *a3, int a4, double a5)
{
  *result = *a2;
  *(result + 8) = *a3;
  *(result + 16) = a5;
  *(result + 24) = a4;
  return result;
}

void sub_1002C0CDC(uint64_t a1@<X8>)
{
  v1 = qword_10045C208;
  *a1 = qword_10045C208;
  *(a1 + 8) = v1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
}

uint64_t *sub_1002C0D04@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  v4 = qword_10045C208;
  if (*result == v3)
  {
    v5 = 2;
    v9 = 0.0;
    v7 = qword_10045C208;
  }

  else
  {
    v5 = 0;
    v6 = 0.0;
    v7 = qword_10045C208;
    do
    {
      if ((v7 & 0x8000000000000000) == 0 && v7 != *v2)
      {
        sub_1000474A4(&__p, "");
        sub_1000C9084("LocalInPlaneHeadingRateOfChange entries must be back-to-back!", &buf);
        sub_1000E661C(&__p, &buf, 1);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (v13 < 0)
        {
          operator delete(__p.__vftable);
        }

        sub_10003F5D0(&v11);
      }

      v7 = *(v2 + 8);
      if (v4 < 0)
      {
        v4 = *v2;
      }

      v8 = *(v2 + 24);
      if (v8 == 1)
      {
        v5 = 1;
      }

      else if (v8 == 2)
      {
        __cxa_allocate_exception(0x40uLL);
        sub_1000474A4(&buf, "We shouldn't be running this code if we aren't converged.");
        std::runtime_error::runtime_error(&__p, &buf);
        __p.__vftable = &off_1004338D0;
        sub_10010A984(v10);
      }

      v6 = v6 + *(v2 + 16) * ((v7 - *v2) * 0.000000001);
      v2 += 32;
    }

    while (v2 != v3);
    v9 = v6 / ((v7 - v4) * 0.000000001);
  }

  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v5;
  return result;
}

void sub_1002C0FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::runtime_error a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C1044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v24);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v24);
  _Unwind_Resume(a1);
}

void sub_1002C10AC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002C111C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1002C118C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return a1;
  }

  do
  {
    while (2)
    {
      v5 = (*(*v4[2] + 64))(v4[2]);
      v6 = v4[3];
      v7 = v4[4];
      for (i = 0.0; v6 != v7; i = i + v9)
      {
        v9 = *v6++;
      }

      v29 = *((*(*v4[2] + 56))(v4[2]) + 1616);
      sub_1002C2024(a1, v5);
      *(a1 + 80) = i + *(a1 + 80);
      v10 = *(a1 + 48);
      if (v10)
      {
        v11 = v29;
        v12 = v29;
        v13 = vcnt_s8(v10);
        v13.i16[0] = vaddlv_u8(v13);
        if (v13.u32[0] > 1uLL)
        {
          v14 = v29;
          if (v10 <= v29)
          {
            v14 = v29 % v10;
          }
        }

        else
        {
          v14 = (v10 - 1) & v29;
        }

        v15 = *(*v3 + 8 * v14);
        if (v15)
        {
          v16 = *v15;
          if (v16)
          {
            if (v13.u32[0] < 2uLL)
            {
              while (1)
              {
                v18 = v16[1];
                if (v18 == v29)
                {
                  if (*(v16 + 4) == v29)
                  {
                    goto LABEL_27;
                  }
                }

                else if ((v18 & (v10 - 1)) != v14)
                {
                  goto LABEL_26;
                }

                v16 = *v16;
                if (!v16)
                {
                  goto LABEL_26;
                }
              }
            }

            do
            {
              v17 = v16[1];
              if (v17 == v29)
              {
                if (*(v16 + 4) == v29)
                {
                  goto LABEL_27;
                }
              }

              else
              {
                if (v17 >= v10)
                {
                  v17 %= v10;
                }

                if (v17 != v14)
                {
                  break;
                }
              }

              v16 = *v16;
            }

            while (v16);
          }
        }
      }

LABEL_26:
      sub_1002C2398(v3, &v29);
      v11 = v29;
      v10 = *(a1 + 48);
      v12 = v29;
LABEL_27:
      if (!v10)
      {
        goto LABEL_52;
      }

      v19 = vcnt_s8(v10);
      v19.i16[0] = vaddlv_u8(v19);
      if (v19.u32[0] > 1uLL)
      {
        v20 = v12;
        if (v10 <= v12)
        {
          v20 = v12 % v10;
        }
      }

      else
      {
        v20 = (v10 - 1) & v12;
      }

      v21 = *(*v3 + 8 * v20);
      if (!v21 || (v22 = *v21) == 0)
      {
LABEL_52:
        sub_10001C6D4("unordered_map::at: key not found");
      }

      if (v19.u32[0] < 2uLL)
      {
        v23 = v10 - 1;
        while (1)
        {
          v25 = v22[1];
          if (v25 == v12)
          {
            if (*(v22 + 4) == v11)
            {
              goto LABEL_47;
            }
          }

          else if ((v25 & v23) != v20)
          {
            goto LABEL_52;
          }

          v22 = *v22;
          if (!v22)
          {
            goto LABEL_52;
          }
        }
      }

      while (1)
      {
        v24 = v22[1];
        if (v24 == v12)
        {
          break;
        }

        if (v24 >= v10)
        {
          v24 %= v10;
        }

        if (v24 != v20)
        {
          goto LABEL_52;
        }

LABEL_37:
        v22 = *v22;
        if (!v22)
        {
          goto LABEL_52;
        }
      }

      if (*(v22 + 4) != v11)
      {
        goto LABEL_37;
      }

LABEL_47:
      *(v22 + 3) = i + *(v22 + 3);
      v26 = v22[5];
      if (v26 >= v22[6])
      {
        v22[5] = sub_100182F0C(v22 + 4, v5);
        v4 = *v4;
        if (!v4)
        {
          return a1;
        }

        continue;
      }

      break;
    }

    *v26 = *v5;
    v27 = *(v5 + 8);
    v26[1] = v27;
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    v22[5] = (v26 + 2);
    v4 = *v4;
  }

  while (v4);
  return a1;
}

void sub_1002C156C(_Unwind_Exception *a1)
{
  sub_1001DF9C0(v2);
  sub_10004D7DC(v1);
  _Unwind_Resume(a1);
}

void sub_1002C15C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[7];
  if (!v3)
  {
    goto LABEL_23;
  }

  v5 = 0;
  v6 = -INFINITY;
  do
  {
    if (v3[3] > v6 && v3[3] > 0.0)
    {
      v5 = (v3 + 3);
      v6 = v3[3];
    }

    v3 = *v3;
  }

  while (v3);
  if (v5)
  {
    v7 = unk_10045DF80;
    *a2 = qword_10045DF78;
    *(a2 + 8) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = v5[1];
    v9 = v5[2];
    if (v8 != v9)
    {
      v10 = NAN;
      do
      {
        v11 = sub_1001EDFC8(a1, v8);
        if (!v11)
        {
          sub_10001C6D4("unordered_map::at: key not found");
        }

        v12 = *(v11 + 4);
        v13 = sub_1001182C8(a2, &qword_10045DF78);
        v14 = v12 > v10 || v13;
        if (v14 == 1)
        {
          v16 = *v8;
          v15 = *(v8 + 8);
          if (v15)
          {
            atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
          }

          v17 = *(a2 + 8);
          *a2 = v16;
          *(a2 + 8) = v15;
          if (v17)
          {
            if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v17->__on_zero_shared)(v17);
              std::__shared_weak_count::__release_weak(v17);
            }
          }

          v10 = v12;
        }

        v8 += 16;
      }

      while (v8 != v9);
    }
  }

  else
  {
LABEL_23:
    v18 = unk_10045DF80;
    *a2 = qword_10045DF78;
    *(a2 + 8) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

double sub_1002C1784(uint64_t a1, const void ***a2)
{
  v4 = sub_1001182C8(a2, &qword_10045DF78);
  result = 0.0;
  if (!v4)
  {
    v6 = sub_1001EDFC8(a1, a2);
    if (!v6)
    {
      goto LABEL_25;
    }

    v7 = *(a1 + 48);
    if (!*&v7)
    {
      goto LABEL_25;
    }

    v8 = *(v6 + 10);
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = *(v6 + 10);
      if (*&v7 <= v8)
      {
        v10 = v8 % *&v7;
      }
    }

    else
    {
      v10 = (*&v7 - 1) & v8;
    }

    v11 = *(*(a1 + 40) + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_25:
      sub_10001C6D4("unordered_map::at: key not found");
    }

    if (v9.u32[0] < 2uLL)
    {
      v13 = *&v7 - 1;
      while (1)
      {
        v14 = *(v12 + 1);
        if (v14 == v8)
        {
          if (*(v12 + 4) == v8)
          {
            return v12[3] / *(a1 + 80);
          }
        }

        else if ((v14 & v13) != v10)
        {
          goto LABEL_25;
        }

        v12 = *v12;
        if (!v12)
        {
          goto LABEL_25;
        }
      }
    }

    while (1)
    {
      v15 = *(v12 + 1);
      if (v15 == v8)
      {
        if (*(v12 + 4) == v8)
        {
          return v12[3] / *(a1 + 80);
        }
      }

      else
      {
        if (v15 >= *&v7)
        {
          v15 %= *&v7;
        }

        if (v15 != v10)
        {
          goto LABEL_25;
        }
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_25;
      }
    }
  }

  return result;
}

uint64_t sub_1002C18BC(unint64_t a1, uint64_t *a2, void *a3)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = (v6 - *a2) >> 3;
  if (v8 != (a3[1] - *a3) >> 4)
  {
    sub_1003846E0(v24, v19);
    sub_1000BC6D8(v24);
  }

  sub_10004DAA4(v19);
  v9 = v20;
  *(&v20 + *(v20 - 24) + 8) = *(&v20 + *(v20 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v22[0].__locale_ + *(v9 - 24)) = 1;
  if (v6 != v7)
  {
    v10 = 0;
    v11 = 0;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      v12 = *(*a2 + 8 * v11) * a1;
      v13 = std::ostream::operator<<();
      v14 = sub_10003C2E4(v13, " @ L", 4);
      v15 = sub_100118404(v14, (*a3 + v10));
      sub_10003C2E4(v15, " | ", 3);
      ++v11;
      v10 += 16;
    }

    while (v8 != v11);
  }

  v16 = std::ostream::operator<<();
  sub_10003C2E4(v16, " offmap", 7);
  std::stringbuf::str();
  v20 = v17;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1002C1BA8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C1BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1002C1BF0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = *(a1 + 24);
  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1001AEC88(a2, 0);
  v8 = *(a1 + 80);
  v9 = v8 * a4 / (1.0 - a4);
  v10 = v8 + v9;
  v11 = (v8 + v9) / v8;
  v12 = *(a1 + 16);
  if (v12)
  {
    if (sub_1001182C8((v12 + 16), &qword_10045DF78))
    {
      v13 = v11 * (0.0 * *(a1 + 80) / v10);
    }

    else
    {
      v14 = sub_1001EDFC8(a1, (v12 + 16));
      if (!v14)
      {
        sub_10001C6D4("unordered_map::at: key not found");
      }

      v15 = v11 * (*(v14 + 4) / *(a1 + 80) * *(a1 + 80) / v10);
    }

    operator new();
  }

  if ((a2[1] - *a2) >> 4)
  {
    sub_1000474A4(v18, "");
    sub_10038523C(__p, v18);
    sub_10003F5D0(__p);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = v9 / v10 * v11;
}

void sub_1002C1F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if (!v16)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v16)
  {
    goto LABEL_3;
  }

  operator delete(v16);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C1F70(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

const void ***sub_1002C2024(void *a1, uint64_t ***a2)
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

void sub_1002C2384(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001C6420(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002C2398(void *a1, int *a2)
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

void sub_1002C26E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001FC2D0(va);
  _Unwind_Resume(a1);
}

void sub_1002C26F8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002C2768()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void *sub_1002C27D8(void *a1)
{
  *a1 = off_100446690;
  sub_10011D564(a1 + 1);
  return a1;
}

void *sub_1002C281C(void *a1)
{
  *a1 = off_100446690;
  sub_10011D3A0(a1 + 1);
  return a1;
}

void sub_1002C2860(void *a1)
{
  *a1 = off_100446690;
  sub_10011D3A0(a1 + 1);

  operator delete();
}

char *sub_1002C28C4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[176])
  {
    if (result[39] < 0)
    {
      return sub_100003228(a2, *(result + 2), *(result + 3));
    }

    else
    {
      *a2 = *(result + 1);
      *(a2 + 16) = *(result + 4);
    }
  }

  else if (result[63] < 0)
  {
    return sub_100003228(a2, *(result + 5), *(result + 6));
  }

  else
  {
    *a2 = *(result + 40);
    *(a2 + 16) = *(result + 7);
  }

  return result;
}

double sub_1002C291C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = *(a1 + 88);
  if (v3 != *(a1 + 96))
  {
    sub_1001181E4(&v4, v3);
  }

  return result;
}

void sub_1002C29FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100118124(&a9);
  sub_10004D7DC(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C2A18()
{
  if (qword_10045D278 != -1)
  {
    sub_1003869EC();
  }

  return byte_10045D272;
}

void sub_1002C2A58(id a1)
{
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || MGIsDeviceOfType() || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || MGIsDeviceOfType() || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || MGIsDeviceOfType() || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || MGIsDeviceOfType() || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    v1 = 1;
  }

  else
  {
    v1 = MGIsDeviceOfType();
  }

  byte_10045D272 = v1;
}

uint64_t sub_1002C2DCC()
{
  if (qword_10045D280 != -1)
  {
    sub_100386A00();
  }

  return byte_10045D273;
}

void sub_1002C2E0C(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFBooleanGetTypeID() && CFBooleanGetValue(v2) == 1)
    {
      byte_10045D273 = 1;
    }

    CFRelease(v2);
  }
}

void sub_1002C2E90()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002C2EB8(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_100446728;
  v6 = a1 + 6;
  v7 = sub_1002CDB88(a2);
  sub_1002DD764((a1 + 1), v7);
  LODWORD(v8) = sub_100170784(a2);
  v12 = sub_1002CDB1C(a2);
  v11 = sub_1002CDB28(a2);
  v10 = sub_1002CDB34(a2);
  sub_10031C15C(v9, &v11, &v10);
  sub_1002541EC(v6, &v8, &v12, v9);
  sub_100212B98(a3, a2);
}

void sub_1002C3004(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 112) = v4;
    operator delete(v4);
    sub_1002DD800(v1 + 8);
    _Unwind_Resume(a1);
  }

  sub_1002DD800(v1 + 8);
  _Unwind_Resume(a1);
}

BOOL sub_1002C3098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1002541F0((a1 + 48), a2);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = *(a1 + 60);
  v7 = v5 / v6;
  v8 = v5 % v6;
  v9 = hypot((*(a1 + 24) - v5 / v6), (*(a1 + 28) - v5 % v6)) * *(a1 + 96);
  v10 = *(a1 + 32);
  if (v9 > 0.0)
  {
    v11 = (*(a1 + 36) * -10.0);
    v9 = log10(v9);
    v10 = v10 + v11 * v9;
  }

  LOBYTE(v9) = *(*(a1 + 104) + v8 + v7 * v6);
  v12 = *&v9 / *(a1 + 128);
  result = v12 > 0.0;
  if (a3)
  {
    v14 = NAN;
    if (v12 > 0.0)
    {
      v14 = v10;
    }

    *(a3 + 8) = v14;
    *(a3 + 16) = v12;
  }

  return result;
}

BOOL sub_1002C3194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100173428(a2, (a1 + 48), &v33);
  v6 = *(&v33 + 1);
  v7 = 0.0;
  if (*(&v33 + 1) == 0.0 || v33 == -1)
  {
    v8 = 0.0;
    v9 = 0.0;
  }

  else
  {
    v14 = *(a1 + 60);
    LOBYTE(v5) = *(*(a1 + 104) + v33 % v14 + v33 / v14 * v14);
    v5 = *&v5;
    v15 = v5 / *(a1 + 128);
    v8 = 0.0;
    v9 = 0.0;
    if (v15 != 0.0)
    {
      v16 = hypot((*(a1 + 24) - v33 / v14), (*(a1 + 28) - v33 % v14)) * *(a1 + 96);
      v17 = *(a1 + 32);
      if (v16 > 0.0)
      {
        v18 = (*(a1 + 36) * -10.0);
        v17 = v17 + v18 * log10(v16);
      }

      v5 = 0.0;
      v8 = v6 * v17 + 0.0;
      v9 = v6 * v15 + 0.0;
      v7 = v6;
    }
  }

  v10 = v35;
  if (v35 != 0.0 && v34 != -1)
  {
    v19 = *(a1 + 60);
    LOBYTE(v5) = *(*(a1 + 104) + v34 % v19 + v34 / v19 * v19);
    v5 = *&v5;
    v20 = v5 / *(a1 + 128);
    if (v20 != 0.0)
    {
      v5 = hypot((*(a1 + 24) - v34 / v19), (*(a1 + 28) - v34 % v19)) * *(a1 + 96);
      v21 = *(a1 + 32);
      if (v5 > 0.0)
      {
        v22 = (*(a1 + 36) * -10.0);
        v5 = log10(v5);
        v21 = v21 + v22 * v5;
      }

      v8 = v8 + v10 * v21;
      v9 = v9 + v10 * v20;
      v7 = v7 + v10;
    }
  }

  v11 = v37;
  if (v37 != 0.0 && v36 != -1)
  {
    v23 = *(a1 + 60);
    LOBYTE(v5) = *(*(a1 + 104) + v36 % v23 + v36 / v23 * v23);
    v5 = *&v5;
    v24 = v5 / *(a1 + 128);
    if (v24 != 0.0)
    {
      v5 = hypot((*(a1 + 24) - v36 / v23), (*(a1 + 28) - v36 % v23)) * *(a1 + 96);
      v25 = *(a1 + 32);
      if (v5 > 0.0)
      {
        v26 = (*(a1 + 36) * -10.0);
        v5 = log10(v5);
        v25 = v25 + v26 * v5;
      }

      v8 = v8 + v11 * v25;
      v9 = v9 + v11 * v24;
      v7 = v7 + v11;
    }
  }

  v12 = v39;
  if (v39 != 0.0 && v38 != -1)
  {
    v27 = *(a1 + 60);
    LOBYTE(v5) = *(*(a1 + 104) + v38 % v27 + v38 / v27 * v27);
    v28 = *&v5 / *(a1 + 128);
    if (v28 != 0.0)
    {
      v29 = hypot((*(a1 + 24) - v38 / v27), (*(a1 + 28) - v38 % v27)) * *(a1 + 96);
      v30 = *(a1 + 32);
      if (v29 > 0.0)
      {
        v31 = (*(a1 + 36) * -10.0);
        v30 = v30 + v31 * log10(v29);
      }

      v8 = v8 + v12 * v30;
      v9 = v9 + v12 * v28;
      v7 = v7 + v12;
    }
  }

  if (a3)
  {
    if (v7 <= 0.0)
    {
      *(a3 + 8) = 0x7FF4000000000000;
      v13 = 0.0;
    }

    else
    {
      *(a3 + 8) = v8 / v7;
      v13 = v9 / v7;
    }

    *(a3 + 16) = v13;
  }

  return v7 > 0.0;
}

float sub_1002C34D0(uint64_t a1, int a2)
{
  v3 = hypot((*(a1 + 24) - a2 / *(a1 + 60)), (*(a1 + 28) + a2 / *(a1 + 60) * *(a1 + 60) - a2)) * *(a1 + 96);
  v4 = *(a1 + 32);
  if (v3 > 0.0)
  {
    v5 = (*(a1 + 36) * -10.0);
    return v4 + v5 * log10(v3);
  }

  return v4;
}

float sub_1002C3558(uint64_t a1, int a2, double a3)
{
  LOBYTE(a3) = *(*(a1 + 104) + a2);
  *&a3 = *&a3 / *(a1 + 128);
  return *&a3;
}

void *sub_1002C357C(void *a1)
{
  *a1 = off_100446728;
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  sub_1002DD800((a1 + 1));
  return a1;
}

void sub_1002C35D4(void *a1)
{
  *a1 = off_100446728;
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  sub_1002DD800((a1 + 1));

  operator delete();
}

void sub_1002C3654()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002C36C4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1002C3734(uint64_t a1, uint64_t a2)
{
  v3 = sub_1002511F0(a2);
  *(a1 + 8) = v3;
  *(a1 + 16) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *a1 = off_100446788;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  return a1;
}

void *sub_1002C37AC(void *a1)
{
  *a1 = off_100446788;
  v2 = a1[15];
  while (v2)
  {
    v11 = v2;
    v2 = *v2;
    v12 = *(v11 + 20);
    if (v12 != v12 >> 31)
    {
      v13 = v11[11];
      if (v12 < 0)
      {
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }

      else
      {
        v10 = v11[11];
        (*v13)(v11 + 11);
      }
    }

    operator delete(v11);
  }

  v3 = a1[13];
  a1[13] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *a1 = off_100442E98;
  sub_100203444(a1 + 7);
  v4 = a1[8];
  v5 = a1[9];
  if (v4 != v5)
  {
    do
    {
      v6 = *v4++;
      operator delete(v6);
    }

    while (v4 != v5);
    v4 = a1[8];
    v5 = a1[9];
  }

  if (v5 != v4)
  {
    a1[9] = v5 + ((v4 - v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v7 = a1[7];
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    a1[4] = v8;
    operator delete(v8);
  }

  return a1;
}

void sub_1002C390C(void *a1)
{
  sub_1002C37AC(a1);

  operator delete();
}

void sub_1002C3944(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  sub_1002C3B6C(a1, a3[6]);
  v6 = a3[3];
  v5 = a3[4];
  if (v5 != v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      if (*(v6 + 8 * v9) <= 0.0)
      {
        goto LABEL_7;
      }

      v13 = *a3;
      v14 = sub_100203E28(a1 + 13, *a3 + v7);
      if (v14)
      {
        sub_100010A88(a1 + 13, v14, &v22);
        v12 = v22;
        *&v22 = 0;
        if (v12)
        {
          break;
        }
      }

LABEL_6:
      ++v8;
      sub_1002C4500(a1 + 13, v13 + v7);
      v6 = a3[3];
      v5 = a3[4];
LABEL_7:
      ++v9;
      v7 += 208;
      if (v9 >= (v5 - v6) >> 3)
      {
        goto LABEL_17;
      }
    }

    if (v23 == 1)
    {
      v15 = *(v12 + 80);
      if (v15 != v15 >> 31)
      {
        v16 = *(v12 + 88);
        if (v15 < 0)
        {
          if (!v16)
          {
            goto LABEL_5;
          }

          v11 = v12;
          (*(*v16 + 8))(*(v12 + 88));
        }

        else
        {
          v10 = *(v12 + 88);
          v11 = v12;
          (*v16)(v12 + 88);
        }

        v12 = v11;
      }
    }

LABEL_5:
    operator delete(v12);
    goto LABEL_6;
  }

  v8 = 0;
LABEL_17:
  *&v22 = a3[6];
  *(&v22 + 1) = v8;
  sub_1000277F8((a1 + 3), &v22);
  sub_1000462CC(a1 + 2, ((a1[4] - a1[3]) >> 4) - 1);
  v17 = a1[8];
  v18 = a1[9];
  v19 = 73 * ((v18 - v17) >> 3) - 1;
  if (v18 == v17)
  {
    v19 = 0;
  }

  if (v19 == a1[12] + a1[11])
  {
    sub_100206148(a1 + 7);
    v17 = a1[8];
    v18 = a1[9];
  }

  if (v18 == v17)
  {
    v21 = 0;
  }

  else
  {
    v20 = a1[12] + a1[11];
    v21 = (*(v17 + 8 * (v20 / 0x49)) + 56 * (v20 % 0x49));
  }

  sub_1002C4AC4((a1 + 7), v21, a3);
  ++a1[12];
}

void sub_1002C3B6C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v5 != v4)
  {
    v6 = 0;
    v7 = (v4 - v5) >> 4;
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    while (1)
    {
      v10 = *v9;
      v9 += 2;
      if (v8 >= a2 - v10)
      {
        break;
      }

      ++v6;
      *(a1 + 48) = 2;
      if (v7 == v6)
      {
        goto LABEL_7;
      }
    }

    if (v7 != v6)
    {
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 48) = 1;
    v6 = v7;
LABEL_8:
    if (v6)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  if (*(a1 + 96))
  {
    v11 = *(a1 + 88);
    while (1)
    {
      v13 = (*(*(a1 + 64) + 8 * (v11 / 0x49)) + 56 * (v11 % 0x49));
      if (v13[6] + *(a1 + 8) >= a2)
      {
        break;
      }

      v14 = v13[3];
      if (v14)
      {
        v13[4] = v14;
        operator delete(v14);
      }

      v15 = *v13;
      if (*v13)
      {
        v16 = v13[1];
        v17 = *v13;
        if (v16 != v15)
        {
          v18 = v16 - 168;
          do
          {
            v21 = *(v16 - 44);
            if (v21 == v21 >> 31)
            {
              if (*(v16 - 128) == 1)
              {
                *(v16 - 128) = 0;
              }
            }

            else
            {
              v19 = *(v16 - 21);
              if (v21 < 0)
              {
                if (v19)
                {
                  (*(*v19 + 8))(v19);
                }
              }

              else
              {
                v20 = *(v16 - 21);
                (*v19)(v16 - 168);
              }
            }

            v16 -= 208;
            v18 -= 208;
          }

          while (v16 != v15);
          v17 = *v13;
        }

        v13[1] = v15;
        operator delete(v17);
      }

      v22 = vaddq_s64(*(a1 + 88), xmmword_1003D1DF0);
      *(a1 + 88) = v22;
      v11 = v22.i64[0];
      if (v22.i64[0] >= 0x92uLL)
      {
        operator delete(**(a1 + 64));
        *(a1 + 64) += 8;
        v12 = *(a1 + 96);
        v11 = *(a1 + 88) - 73;
        *(a1 + 88) = v11;
        if (!v12)
        {
          break;
        }
      }

      else if (!v22.i64[1])
      {
        break;
      }
    }
  }

  v23 = *(a1 + 120);
  if (v23)
  {
    do
    {
      while (1)
      {
        v24 = *(v23 + 88);
        v25 = *(v23 + 80);
        if (v25 >= 0)
        {
          v24 = v23 + 88;
        }

        v26 = (v24 + 8);
        v27 = (v23 + 144);
        if (v25 != v25 >> 31)
        {
          v27 = v26;
        }

        if (*(a1 + 8) + *v27 < a2)
        {
          break;
        }

        v23 = *v23;
        if (!v23)
        {
          return;
        }
      }

      v28 = *v23;
      sub_100010A88((a1 + 104), v23, &v34);
      v29 = v34;
      v34 = 0;
      if (!v29)
      {
        goto LABEL_49;
      }

      if (v35 == 1)
      {
        v30 = *(v29 + 80);
        if (v30 != v30 >> 31)
        {
          v31 = *(v29 + 88);
          if ((v30 & 0x80000000) == 0)
          {
            v32 = *(v29 + 88);
            v33 = v29;
            (*v31)(v29 + 88);
LABEL_47:
            v29 = v33;
            goto LABEL_48;
          }

          if (v31)
          {
            v33 = v29;
            (*(*v31 + 8))(*(v29 + 88));
            goto LABEL_47;
          }
        }
      }

LABEL_48:
      operator delete(v29);
LABEL_49:
      v23 = v28;
    }

    while (v28);
  }
}

void sub_1002C3EE0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  for (i = *(a1 + 120); i; i = *i)
  {
    if (*(i + 4) == *(i + 4) >> 31)
    {
      v31 = i[3];
      if (*(i + 12) != *(i + 12) >> 31)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v32 = *(i + 3);
      v33 = *(i + 10);
      v30 = *(i + 4) ^ (*(i + 4) >> 31);
      if (*(i + 12) != *(i + 12) >> 31)
      {
LABEL_7:
        v35 = *(i + 7);
        v36 = *(i + 18);
        v4 = *(i + 12) ^ (*(i + 12) >> 31);
        v34 = v4;
        v5 = *(i + 20);
        v6 = i + 11;
        if (v5 != v5 >> 31)
        {
          goto LABEL_8;
        }

        goto LABEL_22;
      }
    }

    *&v35 = i[7];
    v4 = 0;
    v34 = 0;
    v5 = *(i + 20);
    v6 = i + 11;
    if (v5 != v5 >> 31)
    {
LABEL_8:
      v7 = *v6;
      if (v5 >= 0)
      {
        v8 = v6;
      }

      else
      {
        v8 = *v6;
      }

      sub_100131324(&v38, v8);
      v4 = v34;
      v9 = *(i + 20) ^ (*(i + 20) >> 31);
      v37 = v9;
      v10 = v34 >> 31;
      if (v34 >> 31 != v34)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }

LABEL_22:
    v17 = *(i + 22);
    if (v17 == v17 >> 31)
    {
      *&v39 = i[12];
      v18 = v17;
    }

    else
    {
      v39 = *(i + 6);
      v40 = *(i + 28);
      v18 = *v6;
      v17 = v18 >> 31;
    }

    LODWORD(v38) = v18 ^ v17;
    v41 = i[15];
    v42 = 0;
    if (*(i + 128) == 1)
    {
      v43 = *(i + 33);
      v42 = 1;
    }

    v44 = *(i + 17);
    v45 = *(i + 19);
    v46 = *(i + 42);
    v9 = *(i + 20) ^ (*(i + 20) >> 31);
    v37 = v9;
    v10 = v4 >> 31;
    if (v4 >> 31 != v4)
    {
LABEL_12:
      v48 = v35;
      v49 = v36;
      v47 = v10 ^ v4;
      if (v9 != v9 >> 31)
      {
        goto LABEL_13;
      }

      goto LABEL_29;
    }

LABEL_28:
    *&v48 = v35;
    v47 = 0;
    if (v9 != v9 >> 31)
    {
LABEL_13:
      if (v9 >= 0)
      {
        v11 = &v38;
      }

      else
      {
        v11 = v38;
      }

      sub_100131324(&v51, v11);
      v12 = v37 ^ (v37 >> 31);
      v50 = v12;
      v13 = a2[1];
      if (v13 >= a2[2])
      {
        goto LABEL_17;
      }

      goto LABEL_35;
    }

LABEL_29:
    v19 = v38 >> 31;
    if (v38 >> 31 == v38)
    {
      *&v52 = v39;
      v19 = v38;
    }

    else
    {
      v52 = v39;
      v53 = v40;
    }

    LODWORD(v51) = v19 ^ v38;
    v54 = v41;
    v55 = 0;
    if (v42 == 1)
    {
      v56 = v43;
      v55 = 1;
    }

    v57 = v44;
    v58 = v45;
    v59 = v46;
    v12 = 0;
    v50 = 0;
    v13 = a2[1];
    if (v13 >= a2[2])
    {
LABEL_17:
      v14.n128_f64[0] = sub_100206CEC(a2, &v47);
      a2[1] = v15;
      v16 = v50;
      if (v50 != v50 >> 31)
      {
        goto LABEL_49;
      }

      goto LABEL_18;
    }

LABEL_35:
    v20 = v47;
    v21 = v47 >> 31;
    if (v47 >> 31 == v47)
    {
      *(v13 + 8) = v48;
      *v13 = 0;
      v22 = v13 + 40;
      if (v12 != v12 >> 31)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v25 = v48;
      *(v13 + 24) = v49;
      *(v13 + 8) = v25;
      v12 = v50;
      *v13 = v21 ^ v20;
      v22 = v13 + 40;
      if (v12 != v12 >> 31)
      {
LABEL_37:
        if (v12 >= 0)
        {
          v23 = &v51;
        }

        else
        {
          v23 = v51;
        }

        sub_100131324(v22, v23);
        v24 = v50;
        v12 = v50 >> 31;
        goto LABEL_48;
      }
    }

    v26 = v51;
    v27 = v51 >> 31;
    if (v51 >> 31 == v51)
    {
      *(v13 + 48) = v52;
      v27 = v26;
    }

    else
    {
      v28 = v52;
      *(v13 + 64) = v53;
      *(v13 + 48) = v28;
    }

    *(v13 + 40) = v27 ^ v26;
    *(v13 + 72) = v54;
    *(v13 + 80) = 0;
    if (v55 == 1)
    {
      *(v13 + 84) = v56;
      *(v13 + 80) = 1;
    }

    v14 = v57;
    v29 = v58;
    *(v13 + 120) = v59;
    *(v13 + 104) = v29;
    *(v13 + 88) = v14;
    v24 = v12;
LABEL_48:
    *(v13 + 32) = v24 ^ v12;
    a2[1] = v13 + 208;
    v16 = v50;
    if (v50 != v50 >> 31)
    {
LABEL_49:
      if (v16 < 0)
      {
        if (v51)
        {
          (*(*v51 + 8))(v14);
        }
      }

      else
      {
        (*v51)(&v51, v14);
      }

      goto LABEL_53;
    }

LABEL_18:
    if (v55 == 1)
    {
      v55 = 0;
    }

LABEL_53:
    if (v37 != v37 >> 31)
    {
      if (v37 < 0)
      {
        if (v38)
        {
          (*(*v38 + 8))(v14);
        }
      }

      else
      {
        (*v38)(&v38);
      }
    }
  }
}

void sub_1002C43E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  *(v40 + 8) = v41;
  sub_1001D8438(&a40);
  sub_1002C4BAC(&a10);
  sub_1001CE6F4(v40);
  _Unwind_Resume(a1);
}

void sub_1002C4428(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002C4BAC(va);
  sub_1001CE6F4(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002C4444(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) != 1)
    {
      goto LABEL_9;
    }

    v3 = *(v2 + 80);
    if (v3 == v3 >> 31)
    {
      goto LABEL_9;
    }

    v4 = *(v2 + 88);
    if (v3 < 0)
    {
      if (!v4)
      {
LABEL_9:
        operator delete(v2);
        return a1;
      }

      v6 = v2;
      (*(*v4 + 8))(*(v2 + 88));
    }

    else
    {
      v5 = *(v2 + 88);
      v6 = v2;
      (*v4)(v2 + 88);
    }

    v2 = v6;
    goto LABEL_9;
  }

  return a1;
}

uint64_t *sub_1002C4500(void *a1, uint64_t a2)
{
  v24 = &v25;
  v4 = a2 + 8;
  if (*a2 == *a2 >> 31)
  {
    v5 = *v4;
    v6 = a1[1];
    if (!*&v6)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v5 = sub_1001FA420(&v24, (a2 + 8));
    v6 = a1[1];
    if (!*&v6)
    {
      goto LABEL_58;
    }
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_58:
    operator new();
  }

  v11 = *a2;
  v12 = (v11 >> 31) ^ v11;
  v13 = v11 >> 31 == v11;
  v14 = *(a2 + 8);
  if (v7.u32[0] <= 1uLL)
  {
    v15 = *&v6 - 1;
    if (v13)
    {
      while (1)
      {
        v16 = result[1];
        if (v16 == v5)
        {
          if ((*(result + 4) ^ (*(result + 4) >> 31)) == v12 && result[3] == v14)
          {
            return result;
          }
        }

        else if ((v16 & v15) != v8)
        {
          goto LABEL_58;
        }

        result = *result;
        if (!result)
        {
          goto LABEL_58;
        }
      }
    }

    while (1)
    {
      v17 = result[1];
      if (v17 == v5)
      {
        if ((*(result + 4) ^ (*(result + 4) >> 31)) == v12)
        {
          v18 = result[3] == *v4 && result[4] == *(v4 + 8);
          if (v18 && *(result + 10) == *(v4 + 16))
          {
            return result;
          }
        }
      }

      else if ((v17 & v15) != v8)
      {
        goto LABEL_58;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_58;
      }
    }
  }

  if (v13)
  {
    while (1)
    {
      v20 = result[1];
      if (v20 == v5)
      {
        if ((*(result + 4) ^ (*(result + 4) >> 31)) == v12 && result[3] == v14)
        {
          return result;
        }
      }

      else
      {
        if (v20 >= *&v6)
        {
          v20 %= *&v6;
        }

        if (v20 != v8)
        {
          goto LABEL_58;
        }
      }

      result = *result;
      if (!result)
      {
        goto LABEL_58;
      }
    }
  }

  while (1)
  {
    v21 = result[1];
    if (v21 == v5)
    {
      break;
    }

    if (v21 >= *&v6)
    {
      v21 %= *&v6;
    }

    if (v21 != v8)
    {
      goto LABEL_58;
    }

LABEL_44:
    result = *result;
    if (!result)
    {
      goto LABEL_58;
    }
  }

  if ((*(result + 4) ^ (*(result + 4) >> 31)) != v12)
  {
    goto LABEL_44;
  }

  v22 = result[3] == *v4 && result[4] == *(v4 + 8);
  if (!v22 || *(result + 10) != *(v4 + 16))
  {
    goto LABEL_44;
  }

  return result;
}

void sub_1002C4AC4(uint64_t a1, void *a2, uint64_t *a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1001CFBC8(a2, *a3, a3[1], 0x4EC4EC4EC4EC4EC5 * ((a3[1] - *a3) >> 4));
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  v6 = a3[3];
  v5 = a3[4];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  a2[6] = a3[6];
}

void sub_1002C4B88(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_1001CE6F4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C4BAC(uint64_t result)
{
  v1 = *(result + 64);
  if (v1 == v1 >> 31)
  {
    if (*(result + 112) == 1)
    {
      *(result + 112) = 0;
    }
  }

  else
  {
    v2 = *(result + 72);
    if (v1 < 0)
    {
      if (v2)
      {
        v5 = result;
        (*(*v2 + 8))(*(result + 72));
        return v5;
      }
    }

    else
    {
      v3 = *(result + 72);
      v4 = result;
      (*v2)(result + 72);
      return v4;
    }
  }

  return result;
}

void sub_1002C4C6C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002C4CDC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1002C4D4C(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a6;
  *(a1 + 24) = a2;
  *(a1 + 56) = 0x7FF8000000000000;
  v11 = exp(-(a5 * a2));
  result = a1;
  *(a1 + 48) = v11;
  *(a1 + 32) = sqrt(a2 * a3);
  *(a1 + 40) = a4 / sqrt(a2);
  if (a6 < 0.0)
  {
    sub_100385A9C();
    sub_10003F5D0(&__p);
  }

  *(a1 + 56) = a6 * a2;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  return result;
}

void sub_1002C4F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C4FD4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002C5044()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_1002C50B4(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

int64x2_t sub_1002C50D0(int64x2_t *a1)
{
  result = vaddq_s64(*a1, vdupq_n_s64(1uLL));
  *a1 = result;
  return result;
}

int64x2_t sub_1002C50F8(int64x2_t *a1)
{
  result = vaddq_s64(a1[1], vdupq_n_s64(1uLL));
  a1[1] = result;
  return result;
}

double sub_1002C5110(void *a1)
{
  v1 = a1[1];
  if (v1)
  {
    return (v1 - *a1) / v1;
  }

  else
  {
    return 1.0;
  }
}

double sub_1002C5138(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return (v1 - *(a1 + 16)) / v1;
  }

  else
  {
    return 1.0;
  }
}

void sub_1002C55E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v41)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1002C5770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VideoPlaybackStream;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1002C58EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  v7 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_1002C5C1C(va1);
  sub_1002C5910(va);
  sub_1002C5910(va2);
  _Unwind_Resume(a1);
}

const void **sub_1002C5910(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_1002C5A44(void *result)
{
  v1 = result[1];
  *result = off_1004467D0;
  result[1] = 0;
  if (v1)
  {

    operator delete();
  }

  return result;
}

void sub_1002C5AAC(void *a1)
{
  v1 = a1[1];
  *a1 = off_1004467D0;
  a1[1] = 0;
  if (v1)
  {

    operator delete();
  }

  operator delete();
}

void *sub_1002C5B34(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  *result = off_1004467D0;
  result[1] = v2;
  return result;
}

id sub_1002C5BFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = **(a1 + 8);
  if (result)
  {
    return [result readNextEvent];
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_1002C5C1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1002C5C50@<X0>(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  result = sub_1002C5D00(a1, a2);
  if ((result & 1) == 0)
  {
    std::bad_cast::bad_cast(&v3);
    v3.__vftable = &off_100434090;
    sub_100049F88(&v3);
  }

  return result;
}

void sub_1002C5CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::bad_cast a10)
{
  std::bad_cast::~bad_cast(&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002C5D00(uint64_t *a1, std::string *a2)
{
  v33 = 0u;
  v32 = 0u;
  *__p = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  std::locale::locale(&v28);
  v30 = 0uLL;
  __p[0] = 0;
  __p[1] = 0;
  v32 = 0uLL;
  DWORD2(v33) = 24;
  *(&v28 + 1) = &__p[1];
  *&v29 = &__p[1];
  *(&v29 + 1) = &__p[1];
  *&v33 = &__p[1];
  std::string::resize(&__p[1], 0x16uLL, 0);
  v4 = HIBYTE(v32);
  if (v32 < 0)
  {
    v4 = v32;
  }

  *&v30 = &__p[1];
  *(&v30 + 1) = &__p[1];
  __p[0] = &__p[1] + v4;
  v29 = 0uLL;
  *(&v28 + 1) = 0;
  v27 = off_100433ED0;
  v35.__loc_ = 0;
  std::ios_base::init(&v35, &v27);
  v36 = 0;
  v37 = -1;
  v39 = &v38;
  v40 = &v38 + 2;
  v5 = (&v34 + *(v34 - 3));
  v5->__exceptions_ = 1;
  std::ios_base::clear(v5, v5->__rdstate_);
  v6 = *a1;
  v7 = std::ostream::operator<<();
  v8 = *(v7 + *(*v7 - 24) + 32);
  v9 = *(&v35.__rdstate_ + *(v34 - 3));
  v11 = *(v9 + 40);
  v10 = *(v9 + 48);
  v39 = v11;
  v40 = v10;
  if ((v8 & 5) == 0)
  {
    v14 = &v10[-v11];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v18 = a2->__r_.__value_.__r.__words[2];
      v17 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v17 >= v14)
      {
        v19 = HIBYTE(v18);
LABEL_14:
        if ((v19 & 0x80u) == 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_17:
        if (v11 == v10)
        {
          v20 = v16;
          goto LABEL_27;
        }

        if (v14 < 0x20 || v16 - v11 < 0x20)
        {
          v20 = v16;
          v21 = v11;
        }

        else
        {
          v20 = (v16 + (v14 & 0xFFFFFFFFFFFFFFE0));
          v21 = (v11 + (v14 & 0xFFFFFFFFFFFFFFE0));
          v22 = (v11 + 16);
          v23 = &v16->__r_.__value_.__r.__words[2];
          v24 = v14 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v25 = *v22;
            *(v23 - 1) = *(v22 - 1);
            *v23 = v25;
            v22 += 2;
            v23 += 4;
            v24 -= 32;
          }

          while (v24);
          if (v14 == (v14 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_27:
            v20->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v14;
              v12 = 1;
              std::ostream::~ostream();
              if ((SHIBYTE(v32) & 0x80000000) == 0)
              {
                goto LABEL_6;
              }
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v14 & 0x7F;
              v12 = 1;
              std::ostream::~ostream();
              if ((SHIBYTE(v32) & 0x80000000) == 0)
              {
                goto LABEL_6;
              }
            }

            goto LABEL_5;
          }
        }

        do
        {
          v26 = *v21++;
          v20->__r_.__value_.__s.__data_[0] = v26;
          v20 = (v20 + 1);
        }

        while (v21 != v10);
        goto LABEL_27;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v16 = a2;
      if (v14 <= 0x16)
      {
        goto LABEL_17;
      }

      v17 = 22;
    }

    std::string::__grow_by(a2, v17, v14 - v17, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v19) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_14;
  }

  v12 = 0;
  std::ostream::~ostream();
  if (SHIBYTE(v32) < 0)
  {
LABEL_5:
    operator delete(__p[1]);
  }

LABEL_6:
  std::locale::~locale(&v28);
  return v12;
}

void sub_1002C60D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v22 + 1);
  sub_10000D388(a1);
}

std::string *sub_1002C60F8@<X0>(const std::string::value_type **a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, *a1);
}

void sub_1002C612C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C6148()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002C61B8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002C6228()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1002C6250(uint64_t result)
{
  *result = 1;
  *(result + 4) = 0;
  return result;
}

double sub_1002C6260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 32) = 0xFFFFFFFFLL;
  return result;
}

uint64_t sub_1002C6278(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (v2 > 45000000000)
  {
    return 1;
  }

  v4 = *(a2 + 8);
  v5 = *(a1 + 32);
  v6 = *(a1 + 36);
  if (v6 == v5)
  {
    v5 = -1;
    *(a1 + 32) = -1;
  }

  v7 = v6 % 11;
  if (v6 >= v5)
  {
    v8 = *(a1 + 8);
    if (v8 <= v4)
    {
      *(a1 + 8) = v8 + 45000000000;
      *(a1 + 32) = v6 + 11;
    }

    else if (*(a1 + 16) + v2 > v4 || *(a1 + 24) != 1 || *(a1 + 28) == v7)
    {
      *(a1 + 36) = v6 + 1;
      return 1;
    }
  }

  *(a1 + 16) = v4;
  *(a1 + 28) = v7;
  *(a1 + 24) = 1;
  *(a1 + 36) = v6 + 1;
  return 0;
}

uint64_t sub_1002C6364@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  a2->n128_u64[0] = off_10043DB48;
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = 0;
  a2->n128_u64[1] = off_10043DB08;
  a2[2].n128_u8[0] &= 0xFCu;
  a2[2].n128_u64[1] = 0;
  a2[3].n128_u8[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u8[0] = a2[4].n128_u8[0] & 0xF8 | 4;
  v4 = *(a1 + 16);
  if (!v4)
  {
    v4 = *(qword_100471CA8 + 16);
  }

  v6[1] = 0;
  v6[2] = 0;
  v7 = 0;
  v6[0] = off_10043DB08;
  sub_1001294D4(v6, *(v4 + 16));
  sub_1001294DC(v6, *(v4 + 24));
  sub_10012DCF0(a2, v6);
  nullsub_75(v6);
  sub_10012DD04(a2, *(a1 + 24));
  sub_10012DD0C(a2, *(a1 + 40));
  return sub_10012DD14(a2, *(a1 + 32));
}

void sub_1002C648C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nullsub_75(&a9);
  nullsub_77(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C64C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = off_10043DB68;
  *(a2 + 8) = 0;
  *(a2 + 16) = off_10043DB48;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = off_10043DB08;
  *(a2 + 48) &= 0xFCu;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = *(a2 + 80) & 0xF8 | 4;
  *(a2 + 88) &= 0xF8u;
  sub_10012E160(a2, *(a1 + 16));
  sub_10012E168(a2, *(a1 + 20));
  v4 = *(a1 + 24);
  if (!v4)
  {
    v4 = *(qword_100471CB0 + 24);
  }

  sub_1002C6364(v4, v6);
  sub_10012E170(a2, v6);
  return nullsub_77(v6);
}

void sub_1002C65C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nullsub_77(va);
  nullsub_78(v2);
  _Unwind_Resume(a1);
}

void sub_1002C6760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  wireless_diagnostics::google::protobuf::io::FileInputStream::~FileInputStream(&a9);
  sub_1000ED500(&a21);
  sub_10002BB1C(v27);
  _Unwind_Resume(a1);
}

void sub_1002C6924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_10002BB1C(v20);
    _Unwind_Resume(a1);
  }

  sub_10002BB1C(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C699C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  v3 = *a1;
  sub_100120A04(a2);
  sub_10011B088(v2, *(v3 + 16));
  sub_1000E2C38(v2, *(v3 + 16));
  sub_10011B0BC(v2, *(v3 + 56));
  *(v2 + 1912) |= 0x8000u;
  v4 = *(v3 + 32);
  if (!v4)
  {
    v4 = *(qword_100471C88 + 32);
  }

  sub_1001294D4(v2 + 1624, *(v4 + 16));
  v5 = *(v3 + 32);
  if (!v5)
  {
    v5 = *(qword_100471C88 + 32);
  }

  sub_1001294DC(v2 + 1624, *(v5 + 24));
  *(v2 + 1912) |= 8u;
  v47[0] = off_10043DD58;
  memset(&v47[1], 0, 56);
  v48 = off_10043DAA8;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 &= 0xFCu;
  v53 = 0;
  v54 = off_10043DB68;
  v55 = 0;
  v56 = off_10043DB48;
  v58 = 0;
  v59 = 0;
  v57 = off_10043DB08;
  v60 &= 0xFCu;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = v64 & 0xF8 | 4;
  v65 &= 0xF8u;
  v66 = 0;
  v67 = 0;
  v68 = off_10043DAC8;
  v69 = xmmword_1003D21F0;
  v70 = xmmword_1003D2200;
  v71 |= 0xFu;
  v72 = off_10043DAC8;
  v73 = xmmword_1003D21F0;
  v74 = xmmword_1003D2200;
  v75 |= 0xFu;
  v76 = 0u;
  v77 = 0u;
  v78 = 0;
  v79 = off_10043DB08;
  v80 = 0;
  v81 = 0;
  v82 &= 0xFCu;
  v84 = 0;
  v85 = 0;
  v83 = off_10043DB08;
  v86 &= 0xFCu;
  v90 = 0;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v91 &= ~1u;
  v6 = *(v3 + 40);
  if (!v6)
  {
    v6 = *(qword_100471C88 + 40);
  }

  v92 = off_10043DAA8;
  v93 = 0uLL;
  v94 = 0uLL;
  v95 = 0uLL;
  v96 &= 0xFCu;
  v45 = v2;
  sub_1001294D4(&v92, v6[2]);
  sub_1001294DC(&v92, v6[3]);
  sub_1001294E4(&v92, v6[4]);
  sub_10012A894(&v92, v6[5]);
  sub_100135A14(v47, &v92);
  nullsub_73(&v92);
  v7 = *(v3 + 48);
  if (!v7)
  {
    v7 = *(qword_100471C88 + 48);
  }

  sub_1002C64C0(v7, &v92);
  sub_100135A1C(v47, &v92);
  nullsub_78(&v92);
  sub_100118A28(v2 + 80, v47);
  sub_1001359D8(v47);
  v8 = *(v3 + 64);
  if (!v8)
  {
    v8 = *(qword_100471C88 + 64);
  }

  v47[0] = off_10043D6D8;
  memset(&v47[4], 0, 32);
  LOBYTE(v48) = v48 & 0x80;
  *&v47[1] = *(v8 + 16);
  v47[3] = *(v8 + 32);
  sub_10011B0D0(v2, v47);
  nullsub_64(v47);
  v9 = *(v3 + 72);
  if (!v9)
  {
    v9 = *(qword_100471C88 + 72);
  }

  v47[0] = off_10043D6D8;
  memset(&v47[4], 0, 32);
  LOBYTE(v48) = v48 & 0x80;
  *&v47[1] = *(v9 + 16);
  v47[3] = *(v9 + 32);
  sub_10011B0FC(v2, v47);
  nullsub_64(v47);
  sub_1002C77C0((v2 + 1800), *(v3 + 88));
  result = sub_1002C7944((v2 + 1832), *(v3 + 120));
  *(v2 + 1912) &= ~0x200000u;
  v11 = *(v3 + 200);
  if ((v11 & 0x4000) != 0)
  {
    v12 = *(v3 + 140);
    if ((v12 - 1) >= 2)
    {
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(v47, "Unsupported proto::venue::LocationContext enum");
      std::runtime_error::runtime_error(&v97, v47);
      v97.__vftable = &off_1004336A0;
      sub_10010A984(&v92);
    }

    result = sub_10011B140(v2, v12);
    v11 = *(v3 + 200);
  }

  if ((v11 & 0x200) != 0)
  {
    result = sub_10011B12C(v2, *(v3 + 104));
  }

  v13 = *(v3 + 88);
  if (v13)
  {
    v14 = *(v3 + 80);
    v15 = 8 * v13;
    do
    {
      while (1)
      {
        sub_1002C7AC8(v47, *v14);
        v16 = *(v2 + 1808);
        if (v16 < *(v2 + 1816))
        {
          break;
        }

        *(v2 + 1808) = sub_1002C7D90((v2 + 1800), v47);
        result = sub_100119E80(v47);
        ++v14;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      sub_10011A050(*(v2 + 1808), v47);
      *(v2 + 1808) = v16 + 72;
      result = sub_100119E80(v47);
      ++v14;
      v15 -= 8;
    }

    while (v15);
  }

LABEL_23:
  v42 = v3;
  v17 = *(v3 + 120);
  if (v17)
  {
    v18 = *(v3 + 112);
    v19 = 0x38E38E38E38E38ELL;
    v43 = &v18[v17];
    do
    {
      v22 = *v18;
      v47[0] = off_10043D718;
      v47[1] = off_10043D6F8;
      memset(&v47[2], 0, 48);
      v48 = 0;
      LOBYTE(v49) = v49 & 0xF8;
      v50 = 0uLL;
      *(&v49 + 1) = 0;
      LOBYTE(v51) = v51 & 0xFC;
      v23 = *(v22 + 16);
      if (!v23)
      {
        v23 = *(qword_100471C78 + 16);
      }

      sub_1002C7AC8(&v92, v23);
      sub_10011A724(v47, &v92);
      v44 = v18;
      sub_100119E80(&v92);
      sub_1002C77C0(&v49 + 1, *(v22 + 32));
      v24 = *(v22 + 32);
      if (v24)
      {
        v25 = *(v22 + 24);
        v26 = &v25[v24];
        v46 = v26;
        do
        {
          sub_1002C7AC8(&v92, *v25);
          v28 = v50;
          if (v50 < *(&v50 + 1))
          {
            sub_10011A050(v50, &v92);
            v27 = (v28 + 72);
          }

          else
          {
            v29 = 0x8E38E38E38E38E39 * ((v50 - *(&v49 + 1)) >> 3) + 1;
            if (v29 > v19)
            {
              sub_10000FC84();
            }

            if (0x1C71C71C71C71C72 * ((*(&v50 + 1) - *(&v49 + 1)) >> 3) > v29)
            {
              v29 = 0x1C71C71C71C71C72 * ((*(&v50 + 1) - *(&v49 + 1)) >> 3);
            }

            if (0x8E38E38E38E38E39 * ((*(&v50 + 1) - *(&v49 + 1)) >> 3) >= 0x1C71C71C71C71C7)
            {
              v30 = v19;
            }

            else
            {
              v30 = v29;
            }

            v100 = &v49 + 8;
            if (v30)
            {
              if (v30 <= v19)
              {
                operator new();
              }

              sub_10000D444();
            }

            v97.__vftable = 0;
            v97.__imp_.__imp_ = (8 * ((v50 - *(&v49 + 1)) >> 3));
            imp = v97.__imp_.__imp_;
            v99 = 0;
            sub_10011A050(v97.__imp_.__imp_, &v92);
            v27 = imp + 72;
            imp += 72;
            v32 = *(&v49 + 1);
            v31 = v50;
            v33 = &v97.__imp_.__imp_[*(&v49 + 1) - v50];
            if (*(&v49 + 1) != v50)
            {
              v34 = v19;
              v35 = 0;
              v36 = *(&v49 + 1);
              v37 = &v97.__imp_.__imp_[*(&v49 + 1) - v50];
              do
              {
                sub_10011A050(v37, v36);
                v36 += 72;
                v37 += 72;
                v35 -= 72;
              }

              while (v36 != v31);
              v38 = v32;
              v39 = v32;
              do
              {
                v40 = *v39;
                v39 += 9;
                (*v40)(v32);
                v38 += 9;
                v32 = v39;
              }

              while (v39 != v31);
              v32 = *(&v49 + 1);
              v2 = v45;
              v26 = v46;
              v19 = v34;
            }

            *(&v49 + 1) = v33;
            *&v50 = v27;
            *(&v50 + 1) = v99;
            if (v32)
            {
              operator delete(v32);
            }
          }

          *&v50 = v27;
          sub_100119E80(&v92);
          ++v25;
        }

        while (v25 != v26);
      }

      v41 = *(v2 + 1840);
      if (v41 >= *(v2 + 1848))
      {
        v20 = sub_1002C7F80((v2 + 1832), v47);
        v21 = v44;
      }

      else
      {
        sub_10011A8C8(*(v2 + 1840), v47);
        v21 = v44;
        v20 = v41 + 112;
      }

      *(v2 + 1840) = v20;
      result = sub_10011A514(v47);
      v18 = v21 + 1;
    }

    while (v18 != v43);
  }

  if ((*(v42 + 202) & 4) != 0)
  {
    return sub_10011B154(v2, *(v42 + 192));
  }

  return result;
}

void sub_1002C72FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v25 = *(v23 - 224);
  if (v25)
  {
    *(v23 - 216) = v25;
    operator delete(v25);
  }

  std::runtime_error::~runtime_error((v23 - 128));
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_10011B04C(a15);
  _Unwind_Resume(a1);
}

void sub_1002C733C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::runtime_error::~runtime_error((v24 - 128));
  if (a23 < 0)
  {
    operator delete(__p);
  }

  __cxa_free_exception(v23);
  sub_10011B04C(a15);
  _Unwind_Resume(a1);
}

void sub_1002C7384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  nullsub_64(va);
  sub_10011B04C(v10);
  _Unwind_Resume(a1);
}

void sub_1002C73A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1001359D8(va);
  sub_10011B04C(a8);
  _Unwind_Resume(a1);
}

void sub_1002C7400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10011A514(va);
  sub_10011B04C(v10);
  _Unwind_Resume(a1);
}

void sub_1002C74AC()
{
  if (v0)
  {
    sub_100386A14();
  }

  JUMPOUT(0x1002C74C4);
}

uint64_t sub_1002C74FC(uint64_t a1)
{
  result = *(*a1 + 40);
  if (!result)
  {
    return *(qword_100471C88 + 40);
  }

  return result;
}

uint64_t sub_1002C7520(uint64_t a1)
{
  result = *(*a1 + 48);
  if (!result)
  {
    return *(qword_100471C88 + 48);
  }

  return result;
}

uint64_t sub_1002C7584(uint64_t a1)
{
  if ((*(*a1 + 201) & 8) != 0)
  {
    return *(*a1 + 136);
  }

  else
  {
    return 1;
  }
}

double sub_1002C75A0(uint64_t a1)
{
  result = 30.0;
  if ((*(*a1 + 201) & 0x20) != 0)
  {
    return *(*a1 + 144);
  }

  return result;
}

double sub_1002C75B8(uint64_t a1)
{
  result = 0.0;
  if ((*(*a1 + 201) & 0x80) != 0)
  {
    return *(*a1 + 152);
  }

  return result;
}

uint64_t sub_1002C75D0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(*a1 + 202) & 1) == 0)
  {
    return sub_1002D3F0C(a1, a2, a3, a4);
  }

  result = *(*a1 + 160);
  if (!result)
  {
    return *(qword_100471C88 + 160);
  }

  return result;
}

uint64_t sub_1002C7600(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((*(*a1 + 202) & 2) == 0)
  {
    return sub_1002D3F0C(a1, a2, a3, a4);
  }

  result = *(*a1 + 168);
  if (!result)
  {
    return *(qword_100471C88 + 168);
  }

  return result;
}

uint64_t sub_1002C7630(uint64_t a1)
{
  if ((*(*a1 + 202) & 8) == 0)
  {
    return 0;
  }

  v2 = *(*a1 + 176);
  return 1;
}

uint64_t sub_1002C7650(uint64_t a1)
{
  if ((*(*a1 + 202) & 0x10) == 0)
  {
    return 0;
  }

  v2 = *(*a1 + 184);
  return 1;
}

void sub_1002C7678(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if ((~*(*a1 + 200) & 0x180000) != 0)
  {
    *a2 = 0;
    a2[32] = 0;
  }

  else
  {
    sub_1002C76C4(a2, a1);
    *(v2 + 32) = 1;
  }
}

double sub_1002C76C4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 200);
  if ((v3 & 0x80000) == 0)
  {
    std::logic_error::logic_error(&v5, "Attempted to access the value of an uninitialized optional object.");
    v5.__vftable = &off_100446978;
    sub_1002C820C(&v5);
  }

  *a1 = *(v2 + 176);
  if ((v3 & 0x100000) == 0)
  {
    std::logic_error::logic_error(&v5, "Attempted to access the value of an uninitialized optional object.");
    v5.__vftable = &off_100446978;
    sub_1002C820C(&v5);
  }

  *(a1 + 8) = *(v2 + 184) + *(v2 + 184);
  result = *(v2 + 56);
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

void *sub_1002C77C0(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_1002C7920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100386A14();
  }

  sub_1002C7CB0(va);
  _Unwind_Resume(a1);
}

void *sub_1002C7944(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_1002C7AA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100386A74();
  }

  sub_1002C7D20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C7AC8(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043D6F8;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) &= 0xF8u;
  v5 = *(a2 + 24);
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    goto LABEL_14;
  }

  v6 = *(a2 + 48);
  if (v6 > (*(a1 + 48) - *(a1 + 32)) >> 3)
  {
    if ((v6 & 0x80000000) == 0)
    {
      v7 = *(a1 + 40);
      operator new();
    }

LABEL_14:
    sub_10000FC84();
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v9 = *(a2 + 16);
    v10 = 8 * v8;
    do
    {
      sub_100255CD4(v4, v9++);
      v10 -= 8;
    }

    while (v10);
  }

  v11 = *(a2 + 48);
  if (v11)
  {
    v12 = *(a2 + 40);
    v13 = 8 * v11;
    do
    {
      sub_100255CD4(a1 + 32, v12++);
      v13 -= 8;
    }

    while (v13);
  }

  return sub_100119F60(a1, *(a2 + 64));
}

uint64_t sub_1002C7CB0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 72);
    *(a1 + 16) = i - 72;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1002C7D20(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 112);
    *(a1 + 16) = i - 112;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1002C7D90(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_10000FC84();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v18 = 8 * ((a1[1] - *a1) >> 3);
  sub_10011A050(v18, a2);
  v6 = 72 * v2 + 72;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v18 + v9;
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v18 + v9;
    do
    {
      sub_10011A050(v13, v12);
      v12 += 72;
      v13 += 72;
      v11 -= 72;
    }

    while (v12 != v8);
    v14 = v7;
    v15 = v7;
    do
    {
      v16 = *v15;
      v15 += 9;
      (*v16)(v7);
      v14 += 9;
      v7 = v15;
    }

    while (v15 != v8);
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

void sub_1002C7F48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002C7CB0(va);
  _Unwind_Resume(a1);
}

void sub_1002C7F5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100386A14();
  }

  sub_1002C7CB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002C7F80(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_10000FC84();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v5 = 0x249249249249249;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x249249249249249)
    {
      operator new();
    }

    sub_10000D444();
  }

  v18 = 16 * ((a1[1] - *a1) >> 4);
  sub_10011A8C8(v18, a2);
  v6 = 112 * v2 + 112;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v18 + v9;
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v18 + v9;
    do
    {
      sub_10011A8C8(v13, v12);
      v12 += 112;
      v13 += 112;
      v11 -= 112;
    }

    while (v12 != v8);
    v14 = v7;
    v15 = v7;
    do
    {
      v16 = *v15;
      v15 += 14;
      (*v16)(v7);
      v14 += 14;
      v7 = v15;
    }

    while (v15 != v8);
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

void sub_1002C8138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002C7D20(va);
  _Unwind_Resume(a1);
}

void sub_1002C814C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100386A74();
  }

  sub_1002C7D20(va);
  _Unwind_Resume(a1);
}

void sub_1002C8190(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100446850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002C820C(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1002C826C(exception, a1);
}

uint64_t sub_1002C826C(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_100446900;
  *(a1 + 8) = off_100446930;
  *(a1 + 24) = off_100446958;
  return a1;
}

uint64_t sub_1002C8318(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::logic_error::~logic_error((a1 + 8));
  return a1;
}

void sub_1002C8548(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1002C88F0(exception, a1);
}

void sub_1002C85A4(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::logic_error::~logic_error((a1 + 8));

  operator delete();
}

void sub_1002C8648(std::logic_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::logic_error::~logic_error(a1);
}

void sub_1002C86DC(std::logic_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::logic_error::~logic_error(a1);

  operator delete();
}

void sub_1002C878C(std::logic_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::logic_error::~logic_error(a1 - 1);
}

void sub_1002C8814(std::logic_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::logic_error::~logic_error(a1 - 1);

  operator delete();
}

void sub_1002C88B8(std::logic_error *a1)
{
  std::logic_error::~logic_error(a1);

  operator delete();
}

uint64_t sub_1002C88F0(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &off_100446978;
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_100446900;
  *(a1 + 8) = off_100446930;
  *(a1 + 24) = off_100446958;
  return a1;
}

void sub_1002C8A54()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002C8AC4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1002C8B48(void **a1, uint64_t a2)
{
  if (*(*a1[1] + 16 * a2))
  {
    return ((*a1)[2])();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C8B88(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = off_1004469A0;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1002C8BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) == a2)
  {
    if (*(a1 + 32) == 1)
    {
      sub_10012A358(a3, a1 + 40);
      return 1;
    }

    return 0;
  }

  *(a1 + 24) = a2;
  v5 = (*(*a2 + 16))(a2, *(a1 + 16), a3);
  v6 = *(a1 + 32);
  if (!v5)
  {
    if (*(a1 + 32))
    {
      nullsub_81(a1 + 40);
      result = 0;
      *(a1 + 32) = 0;
      return result;
    }

    return 0;
  }

  if (*(a1 + 32))
  {
    sub_10012A358(a1 + 40, a3);
    return 1;
  }

  else
  {
    sub_1001351B8(a1 + 40, a3);
    result = 1;
    *(a1 + 32) = 1;
  }

  return result;
}

uint64_t sub_1002C8CAC(uint64_t a1, uint64_t a2, double *a3)
{
  *a1 = off_1004469C8;
  *(a1 + 8) = a2;
  sub_1001731E4((a1 + 16), a3);
  return a1;
}

uint64_t sub_1002C8D24(uint64_t result)
{
  *result = off_1004469A0;
  if (*(result + 32) == 1)
  {
    v1 = result;
    nullsub_81(result + 40);
    result = v1;
    *(v1 + 32) = 0;
  }

  return result;
}

void sub_1002C8D80(uint64_t a1)
{
  *a1 = off_1004469A0;
  if (*(a1 + 32) == 1)
  {
    nullsub_81(a1 + 40);
    *(a1 + 32) = 0;
  }

  operator delete();
}

void *sub_1002C8DF8(void *a1)
{
  *a1 = off_1004469C8;
  v1 = a1[23];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  v3 = a1;
  sub_100173794(a1 + 10);
  return v3;
}

void sub_1002C8E90(void *a1)
{
  *a1 = off_1004469C8;
  v1 = a1[23];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  sub_100173794(a1 + 10);

  operator delete();
}

void *sub_1002C8F48(void *a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = a2[1];
  if (v5 != *a2)
  {
    if (((v5 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1002B0F2C(a3, &v7);
  sub_1002B0B20(a1 + 3, v7, a3);
  sub_1002C9038(a1);
  return a1;
}

void sub_1002C9000(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    *(v1 + 48) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C9038(uint64_t a1)
{
  if (sub_1002B0F24((a1 + 24)) != 1)
  {
    v2 = sub_100258548(a1);
    sub_1002B0F2C(a1 + 24, &v8);
    sub_1002CA184(v2, v8, "mean", a1, "covariance", a1 + 24);
    v3 = *(a1 + 40);
    for (i = *(a1 + 48); v3 != i; ++v3)
    {
      v5 = *v3;
    }

    sub_1002B1214(a1 + 24);
    if (v7 < 0)
    {
      operator delete(v6);
    }
  }
}

void sub_1002C91E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002C9258(uint64_t a1, uint64_t a2)
{
  sub_1002584E4(a1, a2);
  sub_1002B0D48((a1 + 24), a2 + 24);
  sub_1002C9038(a1);
  return a1;
}

void sub_1002C92BC(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * (v11 - v10) != (a2[1] - *a2) >> 3)
  {
    sub_1000474A4(v18, "");
    sub_100211E7C("Must be exactly one logweight for each observation", &v25);
    sub_100383AA4(&v25, v15, v18);
    sub_1000BC6D8(v15);
  }

  if (v11 == v10)
  {
    sub_1000BFF58();
  }

  v13 = sub_100258548(v10);
  *__p = *a2;
  v23 = a2[2];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_1002C9554(__p, a4, v24);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  sub_1002C9624(v13, v24, a1, v21);
  v14 = sub_100258548(v21);
  sub_1002C9740(v13, v24, a1, v21, a3, v15);
  sub_1002B0B20(v18, v14, v15);
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  sub_1002C8F48(a5, v21, v18);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }

  if (v24[0])
  {
    v24[1] = v24[0];
    operator delete(v24[0]);
  }
}

void sub_1002C949C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double **sub_1002C9554@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  *a3 = *a1;
  v5 = *(a1 + 8);
  *(a3 + 8) = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v6 = v5;
  v7 = (v5 - v4) >> 3;
  v8 = a2 >= v7;
  v9 = a2 - v7;
  if (v9 != 0 && v8)
  {
    sub_10011DEC4(a3, v9);
    v4 = *a3;
    v6 = *(a3 + 8);
  }

  else if (!v8)
  {
    v6 = &v4[a2];
    *(a3 + 8) = v6;
  }

  v10 = v4 + 1;
  if (v4 != v6 && v10 != v6)
  {
    v12 = *v4;
    v13 = v4 + 1;
    do
    {
      v14 = *v13++;
      v15 = v14;
      if (v12 < v14)
      {
        v12 = v15;
        v4 = v10;
      }

      v10 = v13;
    }

    while (v13 != v6);
  }

  sub_10031C244(a3, *v4);
  return sub_10031C330(a3);
}

void sub_1002C9608(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double *sub_1002C9624@<X0>(unint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  result = sub_100258440(a4, a1);
  if (a1)
  {
    v9 = 0;
    do
    {
      v10 = a2[1] - *a2;
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        v13 = v10 >> 3;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        v15 = 0.0;
        v16 = 0.0;
        do
        {
          v17 = *(*a2 + 8 * v12);
          v18 = v17 * *sub_100258558((*a3 + v11), v9) - v15;
          v19 = v16 + v18;
          v15 = v16 + v18 - v16 - v18;
          ++v12;
          v11 += 24;
          v16 = v16 + v18;
        }

        while (v14 != v12);
      }

      else
      {
        v19 = 0.0;
      }

      result = sub_100258558(a4, v9);
      *result = v19;
      ++v9;
    }

    while (v9 != a1);
  }

  return result;
}

void sub_1002C971C(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_1002C9740(unint64_t a1@<X0>, double **a2@<X1>, void *a3@<X2>, unint64_t *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) < a2[1] - *a2)
  {
    sub_1000474A4(&buf, "");
    sub_1002CA730("weights is the dominant input here. The size of weights should determine the size of the operation.", &v47);
    sub_100383AA4(&v47, v46, &buf);
    sub_1000BC6D8(v46);
  }

  v11 = 1.0;
  if (!a5)
  {
    goto LABEL_22;
  }

  if (a5 != 1)
  {
    __cxa_allocate_exception(0x40uLL);
    std::logic_error::logic_error(&buf, "Not implemented estimation type");
    sub_10010A984(v45);
  }

  v12 = *a2;
  v13 = a2[1];
  v14 = *a2;
  if (*a2 != v13)
  {
    v15 = v12 + 1;
    v14 = *a2;
    if (v12 + 1 != v13)
    {
      v16 = *v12;
      v14 = *a2;
      v17 = v12 + 1;
      do
      {
        v18 = *v17++;
        v19 = v18;
        if (v16 < v18)
        {
          v16 = v19;
          v14 = v15;
        }

        v15 = v17;
      }

      while (v17 != v13);
    }
  }

  v20 = 1.0 - *v14;
  if (v20 < nextafter(1.0, INFINITY) + -1.0)
  {
    goto LABEL_17;
  }

  if (v12 == v13)
  {
    v25 = 0.0;
  }

  else
  {
    v21 = 0.0;
    v22 = 0.0;
    do
    {
      v23 = *v12++;
      v24 = v23 * v23 - v22;
      v25 = v21 + v24;
      v22 = v21 + v24 - v21 - v24;
      v21 = v25;
    }

    while (v12 != v13);
  }

  v11 = 1.0 / (1.0 - v25);
  if (v11 == INFINITY)
  {
LABEL_17:
    if (qword_10045B050 != -1)
    {
      sub_100386AD4();
    }

    v26 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.__vftable) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "WARNING: MultivariateGaussian fromSample: singular covariance. This is most likely caused by particle deprivation, but can sometime also arise while switching modes/floors. Try increasing the number of particles.", &buf, 2u);
    }

    LODWORD(buf.__vftable) = 1;
    sub_1002B0B24(a6, a1, &buf);
  }

  else
  {
LABEL_22:
    v40 = v11;
    sub_1002B0894(a6, a1);
    sub_1002B1D8C(a6, v46);
    sub_1002B0894(&buf, a1);
    sub_100258440(__p, a1);
    v27 = a2[1] - *a2;
    if (v27)
    {
      v28 = 0;
      v29 = 0;
      v30 = v27 >> 3;
      if (v30 <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = v30;
      }

      do
      {
        sub_1002584E4(__p, *a3 + v28);
        sub_1002ACA58(__p, a4);
        sub_1002B0B38(&buf, 0.0);
        sub_1002B1D28(&buf, __p, 1.0);
        if (v29 >= a2[1] - *a2)
        {
          sub_1000BFF58();
        }

        sub_1002B1E14(v46, &buf, (*a2)[v29++]);
        v28 += 24;
      }

      while (v31 != v29);
    }

    sub_1002B0BB4(a6, v46);
    v33 = *(a6 + 16);
    v32 = *(a6 + 24);
    if (v33 != v32)
    {
      v34 = v32 - v33 - 8;
      v35 = *(a6 + 16);
      if (v34 < 0x18)
      {
        goto LABEL_46;
      }

      v36 = (v34 >> 3) + 1;
      v35 = &v33->f64[v36 & 0x3FFFFFFFFFFFFFFCLL];
      v37 = v33 + 1;
      v38 = v36 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v39 = vmulq_n_f64(*v37, v40);
        v37[-1] = vmulq_n_f64(v37[-1], v40);
        *v37 = v39;
        v37 += 2;
        v38 -= 4;
      }

      while (v38);
      if (v36 != (v36 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_46:
        do
        {
          *v35 = v40 * *v35;
          ++v35;
        }

        while (v35 != v32);
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    if (v46[0])
    {
      v46[1] = v46[0];
      operator delete(v46[0]);
    }
  }
}