void **sub_1001FB8B0(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1001FAE64(a1, v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1001FB918(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_10000FE58(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1001FBB80(a1, i + 2);
  }

  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = *(a2 + 72);
  v11 = *(a2 + 48);
  if (v11 == 1)
  {
    v11 = 2;
LABEL_36:
    sub_10000FE58(a1 + 40, v11);
    goto LABEL_37;
  }

  if ((v11 & (v11 - 1)) != 0)
  {
    v11 = std::__next_prime(*(a2 + 48));
    v12 = *(a1 + 48);
    v13 = v11 >= *&v12;
    if (v11 > *&v12)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v12 = 0;
    v13 = 1;
    if (v11)
    {
      goto LABEL_36;
    }
  }

  if (!v13)
  {
    v14 = vcvtps_u32_f32(*(a1 + 64) / *(a1 + 72));
    if (*&v12 < 3uLL || (v15 = vcnt_s8(v12), v15.i16[0] = vaddlv_u8(v15), v15.u32[0] > 1uLL))
    {
      v14 = std::__next_prime(v14);
    }

    else
    {
      v16 = 1 << -__clz(v14 - 1);
      if (v14 >= 2)
      {
        v14 = v16;
      }
    }

    if (v11 <= v14)
    {
      v11 = v14;
    }

    if (v11 < *&v12)
    {
      goto LABEL_36;
    }
  }

LABEL_37:
  for (j = *(a2 + 56); j; j = *j)
  {
    sub_1001FBEE8((a1 + 40), j + 4);
  }

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

void sub_1001FBB38(_Unwind_Exception *a1)
{
  sub_1001DF9C0(v2);
  sub_10004D7DC(v1);
  _Unwind_Resume(a1);
}

const void ***sub_1001FBB80(void *a1, uint64_t ***a2)
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

void sub_1001FBED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001C6420(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001FBEE8(void *a1, int *a2)
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
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (*(result + 4) == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_1001FC2A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001FC2D0(va);
  _Unwind_Resume(a1);
}

void sub_1001FC2B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1001811E8(va1);
  sub_1001FC2D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FC2D0(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[4];
      if (v3)
      {
        v4 = v1[5];
        v5 = v1[4];
        if (v4 != v3)
        {
          do
          {
            v6 = *(v4 - 8);
            if (v6)
            {
              if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v6->__on_zero_shared)(v6);
                std::__shared_weak_count::__release_weak(v6);
              }
            }

            v4 -= 16;
          }

          while (v4 != v3);
          v5 = v1[4];
        }

        v1[5] = v3;
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

std::string *sub_1001FC3A4@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1001FC3D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void ***sub_1001FC3F4(void *a1, uint64_t ***a2)
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

void sub_1001FC764(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001FC778(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FC778(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1001FC7CC(*(a1 + 8), v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1001FC7CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a2 + 8);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(a2 + 8);
    if (!v3)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1001FC8C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442C88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void **sub_1001FC91C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_10023590C(v3 - 72);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_1001FC978(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10023590C(v2);
    operator delete();
  }

  return a1;
}

void sub_1001FC9EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442CD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001FCA70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __p = 0;
  v16 = 0;
  v4 = *a3;
  v5 = a3[1];
  v17 = 0;
  p_p = &__p;
  v19 = 0;
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v6 = a4[1];
  v13 = *a4;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7.n128_f64[0] = sub_10024642C(a2, &__p, &v13);
  v8 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8, v7.n128_f64[0]);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = __p;
  if (__p)
  {
    v10 = v16;
    v11 = __p;
    if (v16 != __p)
    {
      do
      {
        v12 = *(v10 - 1);
        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12, v7);
          std::__shared_weak_count::__release_weak(v12);
        }

        v10 -= 16;
      }

      while (v10 != v9);
      v11 = __p;
    }

    v16 = v9;
    operator delete(v11);
  }
}

void sub_1001FCC1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_10002BB1C(va);
  sub_100048F1C(va1);
  _Unwind_Resume(a1);
}

void sub_1001FCC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1001811E8(va);
  _Unwind_Resume(a1);
}

void sub_1001FCC4C(uint64_t a1, void **a2)
{
  sub_1001DF260((a2 + 5));
  v3 = a2[4];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = *a2;
    if (!*a2)
    {
      return;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return;
    }
  }

  v5 = a2[1];
  v6 = v4;
  if (v5 != v4)
  {
    do
    {
      v7 = *(v5 - 1);
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      v5 -= 16;
    }

    while (v5 != v4);
    v6 = *a2;
  }

  a2[1] = v4;

  operator delete(v6);
}

uint64_t sub_1001FCD74(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int *a7, uint64_t *a8)
{
  v8 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_10000FC84();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v9)
  {
    v9 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v11 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_10000D444();
  }

  sub_1001FCF6C(a1, 8 * ((a1[1] - *a1) >> 3), a2, a3, a4, a5, a6, a7, a8);
  v12 = *a1;
  v13 = a1[1];
  v14 = 72 * v8 + *a1 - v13;
  if (v13 != *a1)
  {
    v15 = *a1;
    v16 = 72 * v8 + *a1 - v13;
    do
    {
      v17 = *v15;
      *v15 = 0uLL;
      *v16 = v17;
      v18 = v15[1];
      *(v15 + 2) = 0;
      *(v16 + 16) = v18;
      *(v16 + 32) = *(v15 + 4);
      *(v15 + 24) = 0uLL;
      *(v16 + 40) = *(v15 + 40);
      *(v15 + 40) = 0uLL;
      *(v16 + 56) = *(v15 + 56);
      v15 = (v15 + 72);
      v16 += 72;
    }

    while (v15 != v13);
      ;
    }

    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = 72 * v8 + 72;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return 72 * v8 + 72;
}

void sub_1001FCF58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001FD274(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FCF6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int *a8, uint64_t *a9)
{
  v9 = *a3;
  *a3 = 0;
  v18 = v9;
  v16 = *a6;
  if (v16)
  {
    operator new();
  }

  v17 = 0;
  *a6 = 0;
  v13 = a7[1];
  v14 = *a7;
  v15 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10023576C(a2, &v18, a4, a5, &v16, &v14, *a8, *a9);
  v10 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1001FD13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001FD198(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1001FD1D0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1001749A4(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1001FD214(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteI17ParticleGeneratorEE")
  {
    if (((v2 & "NSt3__114default_deleteI17ParticleGeneratorEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteI17ParticleGeneratorEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteI17ParticleGeneratorEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001FD274(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_10023590C(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_1001FD2C8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_1001F9864(v3 - 392);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1001FD324(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 392;
    sub_1001F9864(i - 392);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1001FD378(uint64_t *a1, uint64_t a2)
{
  v2 = 0x7D6343EB1A1F58D1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xA72F05397829CBLL)
  {
    sub_10000FC84();
  }

  if (0xFAC687D6343EB1A2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xFAC687D6343EB1A2 * ((a1[2] - *a1) >> 3);
  }

  if ((0x7D6343EB1A1F58D1 * ((a1[2] - *a1) >> 3)) >= 0x5397829CBC14E5)
  {
    v5 = 0xA72F05397829CBLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xA72F05397829CBLL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_1001FD544(v15, a2);
  v6 = 392 * v2 + 392;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v15 + v9;
    do
    {
      sub_1001F9C4C(v13, v12);
      v12 += 392;
      v13 += 392;
      v11 -= 392;
    }

    while (v12 != v8);
    do
    {
      sub_1001F9864(v7);
      v7 += 392;
    }

    while (v7 != v8);
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

void sub_1001FD504(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001FD324(va);
  _Unwind_Resume(a1);
}

void sub_1001FD518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v3)
  {
    v5 = v2 - 392;
    do
    {
      v5 = sub_1001F9864(v5) - 392;
      v3 += 392;
    }

    while (v3);
  }

  sub_1001FD324(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FD544(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(result + 16) = *(a2 + 16);
  *(result + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v3 = *(a2 + 56);
  *(result + 64) = *(a2 + 64);
  *(result + 56) = v3;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(result + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    v4 = result;
    sub_1001300D0(result + 88, a2 + 88);
    result = v4;
    *(v4 + 80) = 1;
  }

  *(result + 288) = 0;
  if (*(a2 + 288) == 1)
  {
    *(result + 296) = 0;
    *(result + 304) = 0;
    *(result + 312) = 0;
    *(result + 296) = *(a2 + 296);
    *(result + 304) = *(a2 + 304);
    *(a2 + 296) = 0;
    *(a2 + 304) = 0;
    *(a2 + 312) = 0;
    *(result + 320) = 0;
    *(result + 328) = 0;
    *(result + 336) = 0;
    *(result + 320) = *(a2 + 320);
    v5 = *(a2 + 344);
    *(result + 336) = *(a2 + 336);
    *(a2 + 328) = 0;
    *(a2 + 336) = 0;
    *(a2 + 320) = 0;
    *(result + 344) = v5;
    *(result + 288) = 1;
  }

  v6 = *(a2 + 352);
  v7 = *(a2 + 360);
  *(a2 + 352) = 0;
  *(result + 352) = v6;
  *(result + 360) = v7;
  *(a2 + 360) = 0;
  v9 = *(a2 + 368);
  v8 = *(a2 + 376);
  *(result + 368) = v9;
  *(result + 376) = v8;
  *(result + 384) = *(a2 + 384);
  if (v8)
  {
    v10 = *(v9 + 8);
    v11 = *(result + 360);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v10 %= v11;
      }
    }

    else
    {
      v10 &= v11 - 1;
    }

    *(v6 + 8 * v10) = result + 368;
    *(a2 + 368) = 0;
    *(a2 + 376) = 0;
  }

  return result;
}

void sub_1001FD698(_Unwind_Exception *a1)
{
  sub_10002BB1C(v2);
  sub_10002BB1C(v1);
  sub_10002BB1C(v3 + 24);
  sub_10002BB1C(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FD6C4(unsigned int **a1)
{
  sub_10004DAA4(v9);
  sub_10003C2E4(&v10, "[", 1);
  v3 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    v4 = *v3;
    std::ostream::operator<<();
    for (i = v3 + 1; i != v2; ++i)
    {
      sub_10003C2E4(&v10, ", ", 2);
      v6 = *i;
      std::ostream::operator<<();
    }
  }

  sub_10003C2E4(&v10, "]", 1);
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

void sub_1001FD8C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001FD8D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001FD8EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001FD900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void *sub_1001FD914(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_1001C7D6C(a1, &v11);
}

void sub_1001FDC84(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1001FDCDC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unsigned int *a6)
{
  v6 = 0x14C1BACF914C1BADLL * ((a1[1] - *a1) >> 3) + 1;
  if (v6 <= 0xDD67C8A60DD67CLL)
  {
    if (0x2983759F2298375ALL * ((a1[2] - *a1) >> 3) > v6)
    {
      v6 = 0x2983759F2298375ALL * ((a1[2] - *a1) >> 3);
    }

    if ((0x14C1BACF914C1BADLL * ((a1[2] - *a1) >> 3)) >= 0x6EB3E45306EB3ELL)
    {
      v7 = 0xDD67C8A60DD67CLL;
    }

    else
    {
      v7 = v6;
    }

    if (v7)
    {
      if (v7 <= 0xDD67C8A60DD67CLL)
      {
        operator new();
      }

      sub_10000D444();
    }

    v8 = *a4;
    v9 = *a5;
    v10 = *a6;
    sub_1001F3D88(8 * ((a1[1] - *a1) >> 3), a2);
  }

  sub_10000FC84();
}

void sub_1001FDE5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001FDE70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FDE70(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 296;
    sub_1001DF830(i - 296);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1001FDEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v12 = v6 + v7;
      v13 = (a4 + v7);
      v14 = *(v6 + v7 + 8);
      *v13 = *(v6 + v7);
      v13[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v13[2] = *(v12 + 16);
      sub_1001FA76C((v13 + 3), v12 + 24);
      v15 = a4 + v7;
      result = sub_1001FB918(a4 + v7 + 136, v6 + v7 + 136);
      v17 = *(v12 + 232);
      *(v15 + 224) = *(v12 + 224);
      *(v15 + 232) = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a4 + v7;
      v9 = *(v12 + 240);
      v10 = *(v12 + 256);
      v11 = *(v12 + 272);
      *(v8 + 288) = *(v12 + 288);
      *(v8 + 256) = v10;
      *(v8 + 272) = v11;
      *(v8 + 240) = v9;
      v7 += 296;
    }

    while (v12 + 296 != a3);
    while (v6 != a3)
    {
      result = sub_1001DF830(v6);
      v6 += 296;
    }
  }

  return result;
}

void sub_1001FDFB4(_Unwind_Exception *a1)
{
  v4 = sub_10002BB1C(v1 + v2);
  if (v2)
  {
    v5 = v4 - 296;
    v6 = -v2;
    do
    {
      v5 = sub_1001DF830(v5) - 296;
      v6 += 296;
    }

    while (v6);
  }

  _Unwind_Resume(a1);
}

void sub_1001FDFF4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unsigned int *a6)
{
  v6 = 0x14C1BACF914C1BADLL * ((a1[1] - *a1) >> 3) + 1;
  if (v6 <= 0xDD67C8A60DD67CLL)
  {
    if (0x2983759F2298375ALL * ((a1[2] - *a1) >> 3) > v6)
    {
      v6 = 0x2983759F2298375ALL * ((a1[2] - *a1) >> 3);
    }

    if ((0x14C1BACF914C1BADLL * ((a1[2] - *a1) >> 3)) >= 0x6EB3E45306EB3ELL)
    {
      v7 = 0xDD67C8A60DD67CLL;
    }

    else
    {
      v7 = v6;
    }

    if (v7)
    {
      if (v7 <= 0xDD67C8A60DD67CLL)
      {
        operator new();
      }

      sub_10000D444();
    }

    v8 = *a4;
    v9 = *a5;
    v10 = *a6;
    sub_1001F3D88(8 * ((a1[1] - *a1) >> 3), a2);
  }

  sub_10000FC84();
}

void sub_1001FE174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001FDE70(va);
  _Unwind_Resume(a1);
}

std::string *sub_1001FE188@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1001FE1BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001FE1D8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001FE248()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1001FE2B8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 16);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 80;
      }

      while (v3 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_1001FE37C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  v4 = (a1 + 40);
  *(a1 + 32) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a3;
  v5 = *a2;
  v6 = a2[1];
  v7 = -INFINITY;
  if (*a2 != v6)
  {
    do
    {
      v32 = *(v5 + 56);
      v33 = &v32;
      v9 = sub_1001FF07C(a1, &v32);
      v10 = v9;
      v11 = v9[7];
      if (v11 >= v9[8])
      {
        v15 = sub_1001FF408(v9 + 6, v5);
      }

      else
      {
        sub_100217150(v9[7], v5);
        v12 = *(v5 + 16);
        v13 = *(v5 + 32);
        *(v11 + 48) = *(v5 + 48);
        *(v11 + 16) = v12;
        *(v11 + 32) = v13;
        *(v11 + 56) = *(v5 + 56);
        v14 = *(v5 + 64);
        *(v11 + 64) = v14;
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
        }

        *(v11 + 72) = *(v5 + 72);
        v15 = (v11 + 80);
        v10[7] = v11 + 80;
      }

      v10[7] = v15;
      v33 = ((*(*v32 + 56))(v32) + 1616);
      v16 = sub_1001FF574(v4, v33);
      sub_1001FF8C0(v16 + 3, &v32);
      v17 = sub_10021569C(v5);
      v18 = v17;
      v20 = v10[4];
      v19 = v10[5];
      if (v20 < v19)
      {
        *v20 = v17;
        v8 = v20 + 1;
      }

      else
      {
        v21 = v10[3];
        v22 = v20 - v21;
        v23 = (v20 - v21) >> 3;
        v24 = v23 + 1;
        if ((v23 + 1) >> 61)
        {
          sub_10000FC84();
        }

        v25 = v19 - v21;
        if (v25 >> 2 > v24)
        {
          v24 = v25 >> 2;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v26 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          if (!(v26 >> 61))
          {
            operator new();
          }

          sub_10000D444();
        }

        v27 = (v20 - v21) >> 3;
        v28 = (8 * v23);
        v29 = (8 * v23 - 8 * v27);
        *v28 = v17;
        v8 = v28 + 1;
        memcpy(v29, v21, v22);
        v10[3] = v29;
        v10[4] = v8;
        v10[5] = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      v10[4] = v8;
      if (v7 < v18)
      {
        v7 = v18;
      }

      v5 += 80;
    }

    while (v5 != v6);
  }

  for (i = (a1 + 16); ; sub_10031C244(i + 3, v7))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  return a1;
}

void sub_1001FE618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9)
{
  *(v11 + 56) = v12;
  sub_1000D1490(a9);
  sub_1001FB82C(v10);
  sub_1001FB8B0(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FE65C(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 80);
    }

    *(a1 + 88) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    do
    {
      v9 = *v6;
      v10 = v6[5];
      if (v10)
      {
        do
        {
          v11 = *v10;
          operator delete(v10);
          v10 = v11;
        }

        while (v11);
      }

      v12 = v6[3];
      v6[3] = 0;
      if (v12)
      {
        operator delete(v12);
      }

      operator delete(v6);
      v6 = v9;
    }

    while (v9);
  }

  v7 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    do
    {
      v13 = *v8;
      v14 = v8[6];
      if (v14)
      {
        v15 = v8[7];
        v16 = v8[6];
        if (v15 != v14)
        {
          do
          {
            v17 = *(v15 - 16);
            if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v17->__on_zero_shared)(v17);
              std::__shared_weak_count::__release_weak(v17);
            }

            v15 -= 80;
          }

          while (v15 != v14);
          v16 = v8[6];
        }

        v8[7] = v14;
        operator delete(v16);
      }

      v18 = v8[3];
      if (v18)
      {
        v8[4] = v18;
        operator delete(v18);
      }

      operator delete(v8);
      v8 = v13;
    }

    while (v13);
  }

  v19 = *a1;
  *a1 = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return a1;
}

uint64_t sub_1001FE808@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  result = (*(**a2 + 56))();
  v7 = a1[6];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = *(result + 1616);
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = *(result + 1616);
    if (*&v7 <= v8)
    {
      v10 = v8 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v8;
  }

  v11 = a1[5];
  v12 = *(v11 + 8 * v10);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  v14 = *&v7 - 1;
  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v13[1];
      if (v15 == v8)
      {
        if (*(v13 + 4) == v8)
        {
          goto LABEL_22;
        }
      }

      else if ((v15 & v14) != v10)
      {
        goto LABEL_21;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v7)
    {
      v16 %= *&v7;
    }

    if (v16 != v10)
    {
      goto LABEL_21;
    }

LABEL_16:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (*(v13 + 4) != v8)
  {
    goto LABEL_16;
  }

LABEL_22:
  if (v9.u32[0] > 1uLL)
  {
    v17 = *(result + 1616);
    if (*&v7 <= v8)
    {
      v17 = v8 % *&v7;
    }
  }

  else
  {
    v17 = v14 & v8;
  }

  v18 = *(v11 + 8 * v17);
  if (!v18 || (v19 = *v18) == 0)
  {
LABEL_102:
    sub_10001C6D4("unordered_map::at: key not found");
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v19[1];
      if (v20 == v8)
      {
        if (*(v19 + 4) == v8)
        {
          goto LABEL_34;
        }
      }

      else if ((v20 & v14) != v17)
      {
        goto LABEL_102;
      }

      v19 = *v19;
      if (!v19)
      {
        goto LABEL_102;
      }
    }
  }

  while (2)
  {
    v60 = v19[1];
    if (v60 != v8)
    {
      if (v60 >= *&v7)
      {
        v60 %= *&v7;
      }

      if (v60 != v17)
      {
        goto LABEL_102;
      }

      goto LABEL_93;
    }

    if (*(v19 + 4) != v8)
    {
LABEL_93:
      v19 = *v19;
      if (!v19)
      {
        goto LABEL_102;
      }

      continue;
    }

    break;
  }

LABEL_34:
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  memset(v86, 0, sizeof(v86));
  v87 = 1065353216;
  v88 = 0;
  v21 = v19[5];
  if (v21)
  {
    v22 = (a3 + 24);
    v64 = v3;
    v61 = a1;
    while (1)
    {
      v68 = v21[2];
      v23 = sub_1001FFC2C(a1, &v68);
      if (!v23)
      {
        sub_10001C6D4("unordered_map::at: key not found");
      }

      v63 = v21;
      sub_100176F74(v86, v68, *v3, v66);
      v24 = v23;
      v25 = v23[6];
      v62 = v24;
      v26 = v24[7];
      if (v25 != v26)
      {
        break;
      }

LABEL_38:
      sub_1001FFD90(a3, *(a3 + 8), v62[3], v62[4], (v62[4] - v62[3]) >> 3);
      nullsub_75(v66);
      v21 = *v63;
      a1 = v61;
      if (!*v63)
      {
        return sub_1001DF260(v86);
      }
    }

    while (2)
    {
      if (v68 != *(v25 + 56))
      {
        HIBYTE(v71) = 0;
        LOBYTE(__p) = 0;
        memset(v80, 0, 24);
        std::string::assign(v80, "The floors should be the same.");
        sub_1000E661C(&__p, v80, 1);
        if ((v80[23] & 0x80000000) != 0)
        {
          operator delete(*v80);
        }

        if (SHIBYTE(v71) < 0)
        {
          operator delete(__p);
        }

        sub_10003F5D0(&v74);
      }

      sub_100217150(v80, v25);
      v27 = *(v25 + 16);
      v28 = *(v25 + 32);
      v82 = *(v25 + 48);
      *&v80[16] = v27;
      v81 = v28;
      v29 = *(v25 + 64);
      v83 = *(v25 + 56);
      v84 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v85 = *(v25 + 72);
      *&v80[16] = vaddq_f64(v67, *&v80[16]);
      v30 = v3[1];
      *&v65 = *v3;
      *(&v65 + 1) = v30;
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1001E8D30(v80, &v65);
      v31 = *(&v65 + 1);
      if (*(&v65 + 1) && !atomic_fetch_add((*(&v65 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
        v33 = *(a3 + 32);
        v32 = *(a3 + 40);
        if (v33 >= v32)
        {
          goto LABEL_54;
        }

LABEL_49:
        sub_100217150(v33, v80);
        v34 = *&v80[16];
        v35 = v81;
        *(v33 + 48) = v82;
        *(v33 + 16) = v34;
        *(v33 + 32) = v35;
        *(v33 + 56) = v83;
        v36 = v84;
        *(v33 + 64) = v84;
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v33 + 72) = v85;
        *(a3 + 32) = v33 + 80;
        v37 = v84;
        if (v84)
        {
LABEL_79:
          if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v37->__on_zero_shared)(v37);
            std::__shared_weak_count::__release_weak(v37);
          }
        }
      }

      else
      {
        v33 = *(a3 + 32);
        v32 = *(a3 + 40);
        if (v33 < v32)
        {
          goto LABEL_49;
        }

LABEL_54:
        v38 = 0xCCCCCCCCCCCCCCCDLL * ((v33 - *v22) >> 4);
        v39 = v38 + 1;
        if (v38 + 1 > 0x333333333333333)
        {
          sub_10000FC84();
        }

        v40 = 0xCCCCCCCCCCCCCCCDLL * ((v32 - *v22) >> 4);
        if (2 * v40 > v39)
        {
          v39 = 2 * v40;
        }

        if (v40 >= 0x199999999999999)
        {
          v41 = 0x333333333333333;
        }

        else
        {
          v41 = v39;
        }

        v73 = v22;
        if (v41)
        {
          if (v41 <= 0x333333333333333)
          {
            operator new();
          }

          sub_10000D444();
        }

        __p = 0;
        v70 = 80 * v38;
        v71 = 80 * v38;
        v72 = 0;
        sub_100217150((80 * v38), v80);
        v43 = v81;
        *(v42 + 16) = *&v80[16];
        *(v42 + 32) = v43;
        *(v42 + 48) = v82;
        v44 = v84;
        *(v42 + 56) = v83;
        *(v42 + 64) = v44;
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v42 + 72) = v85;
        v45 = v71 + 80;
        v71 += 80;
        v46 = *(a3 + 24);
        v47 = *(a3 + 32);
        v74 = (a3 + 24);
        v75 = &v78;
        v76 = &v79;
        v77 = 0;
        v48 = v70 + v46 - v47;
        v78 = v48;
        v79 = v48;
        if (v46 != v47)
        {
          v49 = (v70 + v46 - v47);
          v50 = v46;
          do
          {
            sub_100217150(v49, v50);
            v52 = *(v50 + 16);
            v53 = *(v50 + 32);
            *(v51 + 48) = *(v50 + 48);
            *(v51 + 16) = v52;
            *(v51 + 32) = v53;
            *(v51 + 56) = *(v50 + 56);
            v54 = *(v50 + 64);
            *(v51 + 64) = v54;
            if (v54)
            {
              atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
            }

            *(v51 + 72) = *(v50 + 72);
            v50 += 80;
            v49 = v79 + 5;
            v79 += 5;
          }

          while (v50 != v47);
          v77 = 1;
          do
          {
            v55 = *(v46 + 64);
            if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v55->__on_zero_shared)(v55);
              std::__shared_weak_count::__release_weak(v55);
            }

            v46 += 80;
          }

          while (v46 != v47);
          if ((v77 & 1) == 0)
          {
            v57 = *v76;
            v58 = *v75;
            while (v57 != v58)
            {
              v59 = v57[-1].n128_u64[0];
              if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v59->__on_zero_shared)(v59);
                std::__shared_weak_count::__release_weak(v59);
              }

              v57 -= 5;
            }
          }
        }

        v56 = *(a3 + 24);
        *(a3 + 24) = v48;
        *(a3 + 32) = v45;
        *(a3 + 40) = v72;
        if (v56)
        {
          operator delete(v56);
        }

        v3 = v64;
        *(a3 + 32) = v45;
        v37 = v84;
        if (v84)
        {
          goto LABEL_79;
        }
      }

      v25 += 80;
      v22 = (a3 + 24);
      if (v25 == v26)
      {
        goto LABEL_38;
      }

      continue;
    }
  }

  return sub_1001DF260(v86);
}

void sub_1001FEFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  nullsub_75(&a17);
  sub_1001DF260(v45 - 208);
  sub_1001FE2B8(v44);
  _Unwind_Resume(a1);
}

void *sub_1001FF07C(void *a1, uint64_t *a2)
{
  v4 = (*(**a2 + 64))();
  v5 = sub_1001183C0(&v15, v4);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
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
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  v11 = *a2;
  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (v10[2] == v11)
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
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
    v12 = v10[1];
    if (v12 == v5)
    {
      break;
    }

    if (v12 >= *&v6)
    {
      v12 %= *&v6;
    }

    if (v12 != v8)
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

  if (v10[2] != v11)
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_1001FF3F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001FAE10(va);
  _Unwind_Resume(a1);
}

__n128 *sub_1001FF408(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x333333333333333)
  {
    sub_10000FC84();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    sub_10000D444();
  }

  v13 = (16 * ((a1[1] - *a1) >> 4));
  sub_100217150(v13, a2);
  v7 = *(a2 + 32);
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 48);
  v8 = *(a2 + 64);
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 64) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(v6 + 72) = *(a2 + 72);
  v9 = a1[1];
  v10 = v13 + *a1 - v9;
  sub_1001E9438(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = &v13[5];
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13 + 5;
}

void sub_1001FF560(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001E95F0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001FF574(void *a1, int *a2)
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

void sub_1001FF8AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001FB44C(va);
  _Unwind_Resume(a1);
}

void *sub_1001FF8C0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
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
        if (v10[2] == v2)
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

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void *sub_1001FFC2C(void *a1, uint64_t *a2)
{
  v4 = (*(**a2 + 64))();
  v5 = sub_1001183C0(&v15, v4);
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
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
  if (!v9)
  {
    return v9;
  }

  v9 = *v9;
  if (!v9)
  {
    return v9;
  }

  v11 = *a2;
  if (v7.u32[0] < 2uLL)
  {
    v12 = *&v6 - 1;
    while (1)
    {
      v13 = v9[1];
      if (v5 == v13)
      {
        if (v9[2] == v11)
        {
          return v9;
        }
      }

      else if ((v13 & v12) != v8)
      {
        return 0;
      }

      v9 = *v9;
      if (!v9)
      {
        return v9;
      }
    }
  }

  while (1)
  {
    v14 = v9[1];
    if (v5 == v14)
    {
      if (v9[2] == v11)
      {
        return v9;
      }

      goto LABEL_18;
    }

    if (v14 >= *&v6)
    {
      v14 %= *&v6;
    }

    if (v14 != v8)
    {
      return 0;
    }

LABEL_18:
    v9 = *v9;
    if (!v9)
    {
      return v9;
    }
  }
}

char *sub_1001FFD90(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a5 > (v7 - v8) >> 3)
  {
    v9 = *a1;
    v10 = a5 + ((v8 - *a1) >> 3);
    if (v10 >> 61)
    {
      sub_10000FC84();
    }

    v11 = v7 - v9;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_10000D444();
    }

    v30 = (__dst - v9);
    v31 = 8 * ((__dst - v9) >> 3);
    v32 = (v31 + 8 * a5);
    v33 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x1FFFFFFFFFFFFFFFuLL) >= 7 && (v30 - __src) >= 0x20)
    {
      v54 = v33 + 1;
      v55 = (v33 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v34 = (v31 + 8 * v55);
      v35 = &__src[8 * v55];
      v56 = (__src + 16);
      v57 = (v31 + 16);
      v58 = v55;
      do
      {
        v59 = *v56;
        *(v57 - 1) = *(v56 - 1);
        *v57 = v59;
        v56 += 2;
        v57 += 2;
        v58 -= 4;
      }

      while (v58);
      if (v54 == v55)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v34 = v31;
      v35 = __src;
    }

    do
    {
      v36 = *v35;
      v35 += 8;
      *v34++ = v36;
    }

    while (v34 != v32);
LABEL_31:
    v37 = *(a1 + 8) - __dst;
    memcpy((v31 + 8 * a5), __dst, v37);
    v39 = v32 + v37;
    *(a1 + 8) = v5;
    v40 = *a1;
    v41 = &v5[-*a1];
    v42 = v31 - v41;
    memcpy((v31 - v41), *a1, v41);
    *a1 = v42;
    *(a1 + 8) = v39;
    *(a1 + 16) = 0;
    if (v40)
    {
      operator delete(v40);
    }

    return v31;
  }

  v13 = v8 - __dst;
  v14 = (v8 - __dst) >> 3;
  if (v14 >= a5)
  {
    v13 = 8 * a5;
    v17 = &__dst[8 * a5];
    v18 = (v8 - 8 * a5);
    if (v18 >= v8)
    {
      v22 = *(a1 + 8);
    }

    else
    {
      v19 = v18 + 1;
      if (v8 > (v18 + 1))
      {
        v19 = *(a1 + 8);
      }

      v20 = v19 + v13 + ~v8;
      v21 = v20 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v22 = *(a1 + 8);
      if (v21)
      {
        goto LABEL_74;
      }

      v23 = (v20 >> 3) + 1;
      v24 = 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL);
      v18 = (v18 + v24);
      v22 = (v8 + v24);
      v25 = (v8 + 16);
      v26 = (v8 + 16 - v13);
      v27 = v23 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v28 = *v26;
        *(v25 - 1) = *(v26 - 1);
        *v25 = v28;
        v25 += 2;
        v26 += 2;
        v27 -= 4;
      }

      while (v27);
      if (v23 != (v23 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_74:
        do
        {
          v29 = *v18++;
          *v22++ = v29;
        }

        while (v18 < v8);
      }
    }

    *(a1 + 8) = v22;
    if (v8 != v17)
    {
      v51 = __src;
      memmove(v17, __dst, v8 - v17);
      __src = v51;
    }

    v52 = v5;
    v53 = __src;
    goto LABEL_68;
  }

  v15 = &__src[v13];
  if (&__src[v13] == a4)
  {
    v16 = *(a1 + 8);
  }

  else
  {
    v43 = &__src[v13];
    v44 = a4 - v15 - 8;
    if (v44 < 0x18)
    {
      v16 = *(a1 + 8);
    }

    else
    {
      v16 = *(a1 + 8);
      if (v8 - v15 >= 0x20)
      {
        v45 = (v44 >> 3) + 1;
        v46 = 8 * (v45 & 0x3FFFFFFFFFFFFFFCLL);
        v43 = &v15[v46];
        v16 = v8 + v46;
        v47 = (v8 + 16);
        v48 = (v15 + 16);
        v49 = v45 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v50 = *v48;
          *(v47 - 1) = *(v48 - 1);
          *v47 = v50;
          v47 += 2;
          v48 += 2;
          v49 -= 4;
        }

        while (v49);
        if (v45 == (v45 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_50;
        }
      }
    }

    do
    {
      v60 = *v43;
      v43 += 8;
      *v16 = v60;
      v16 += 8;
    }

    while (v43 != a4);
  }

LABEL_50:
  *(a1 + 8) = v16;
  if (v14 >= 1)
  {
    v61 = a5;
    v62 = &__dst[8 * a5];
    v63 = (v16 - 8 * a5);
    v64 = __src;
    if (v63 >= v8)
    {
      v68 = v16;
    }

    else
    {
      v65 = v63 + 1;
      if (v8 > (v63 + 1))
      {
        v65 = v8;
      }

      v66 = &v65[v61] + ~v16;
      v67 = v66 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v68 = v16;
      if (v67)
      {
        goto LABEL_75;
      }

      v69 = (v66 >> 3) + 1;
      v70 = 8 * (v69 & 0x3FFFFFFFFFFFFFFCLL);
      v63 = (v63 + v70);
      v68 = (v16 + v70);
      v71 = (v16 + 16);
      v72 = (v16 + 16 - v61 * 8);
      v73 = v69 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v74 = *v72;
        *(v71 - 1) = *(v72 - 1);
        *v71 = v74;
        v71 += 2;
        v72 += 2;
        v73 -= 4;
      }

      while (v73);
      if (v69 != (v69 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_75:
        do
        {
          v75 = *v63++;
          *v68++ = v75;
        }

        while (v63 < v8);
      }
    }

    *(a1 + 8) = v68;
    if (v16 != v62)
    {
      memmove(&__dst[8 * a5], __dst, v16 - v62);
    }

    if (v8 != v5)
    {
      v52 = v5;
      v53 = v64;
LABEL_68:
      memmove(v52, v53, v13);
    }
  }

  return v5;
}

void sub_1002001A0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100200210()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100200280()
{
  xmmword_10045D1E8 = 0u;
  unk_10045D1F8 = 0u;
  xmmword_10045D1D8 = 0u;
  return __cxa_atexit(sub_1001FE2B8, &xmmword_10045D1D8, &_mh_execute_header);
}

uint64_t sub_1002002B0(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5)
{
  sub_100251AB4(a3, v20);
  v10 = *a2;
  v11 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  *a1 = off_100438CA0;
  sub_10014C1B4((a1 + 8), v20);
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  sub_10014C254(v20);
  *a1 = off_100442D90;
  sub_100250BA8(a3, v20);
  sub_100259EAC(a1 + 72, v20, 0.25);
  if (a4 == 1)
  {
    v12.n128_u64[0] = 0.25;
    sub_100250B64(a3, a1 + 120, v12);
  }

  else if (!a4)
  {
    v12.n128_u64[0] = 0.25;
    sub_100250B20(a3, a1 + 120, v12);
  }

  sub_100253968();
  *(a1 + 184) = v13;
  *(a1 + 192) = v14;
  sub_10025397C();
  *(a1 + 200) = v15;
  *(a1 + 208) = v16;
  *(a1 + 224) = *a5;
  v17 = a5[1];
  *(a1 + 232) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  if (a4 == 1)
  {
    v18 = sub_100251850(a3, 0.25);
    goto LABEL_11;
  }

  if (!a4)
  {
    v18 = sub_100251838(a3, 0.25);
LABEL_11:
    v15 = v18;
  }

  *(a1 + 216) = sqrt(v15 * 12.0);
  return a1;
}

void sub_100200430(_Unwind_Exception *a1)
{
  sub_10002BB1C(v2);
  sub_1000BE7D4(v1);
  _Unwind_Resume(a1);
}

void sub_10020044C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002BB1C(&a9);
  sub_10014C254(&a11);
  _Unwind_Resume(a1);
}

double sub_100200494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 24) == 1 && *(a4 + 56) == 1)
  {
    result = *(a2 + 32) + *(a4 + 64) * 0.25;
    *(a2 + 32) = result;
    return result;
  }

  v7 = *(a4 + 4);
  v8 = sub_1002C0CFC(a3);
  if (v8 != 1)
  {
    if (v8)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 32) + *(a3 + 16) * ((*(a3 + 8) - *a3) * 0.000000001);
    *(a2 + 32) = result;
    return result;
  }

  if (v7 == 3)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_100200558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100259ED8(a1 + 72, *(a1 + 56), *(a2 + 40));
  *(a2 + 40) = v8;
  result = sub_1002005CC(a1, a2, a3, a4);
  if (*(a3 + 4) != 2)
  {
    *(a2 + 48) = (result & 1) == 0;
  }

  return result;
}

uint64_t sub_1002005CC(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2[2];
  v9 = a2[3];
  v10 = a1 + 56;
  v11 = *(a1 + 56);
  if (*(a3 + 24) == 1 && *(a3 + 72) == 1)
  {
    v12 = sqrt(*(a3 + 80) * 0.25 * 0.25 * 12.0);
LABEL_7:
    v13 = (*(*v11 + 24))(*(a1 + 56), v12 * -0.5, v12 * 0.5) + a2[4];
LABEL_8:
    a2[4] = v13;
    goto LABEL_9;
  }

  if (*a3 != 1)
  {
    if (*a3)
    {
      goto LABEL_9;
    }

    v12 = *(a1 + 216);
    goto LABEL_7;
  }

  if (!sub_1002C4F78(a1 + 120, v11))
  {
    v20 = (*(*v11 + 16))(v11);
    v13 = (v20 + v20) * 3.14159265;
    goto LABEL_8;
  }

LABEL_9:
  if (*(a3 + 24) == 1)
  {
    v14 = sub_100253A64((a1 + 184), *(a3 + 32));
    v15.n128_f64[0] = sub_1002C4FCC(a1 + 120);
    if (*(a3 + 40) == 1)
    {
      v15.n128_f64[0] = sqrt(*(a3 + 48) * 0.25 * 0.25 * 12.0);
      v17 = a2[4];
      if (v15.n128_f64[0] <= 0.0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v15.n128_f64[0] = sqrt(v14 * (v14 * v15.n128_f64[0]) * 12.0);
      v17 = a2[4];
      if (v15.n128_f64[0] <= 0.0)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_25;
  }

  v14 = sub_100253A64((a1 + 184), *(a3 + 8));
  v15.n128_f64[0] = sqrt(v14 * (v14 * sub_1002C4FCC(a1 + 120)) * 12.0);
  v18 = *(a3 + 4);
  if (!*a3)
  {
    if (v18 == 3)
    {
      v17 = a2[4];
      v15.n128_f64[0] = -v14;
      v16.n128_f64[0] = v14;
      v19 = (*(*v11 + 24))(v11, v15, v16);
      goto LABEL_26;
    }

    if (v18 == 2)
    {
      v17 = (*(*v11 + 48))(v11, v15.n128_f64[0]);
      v23 = (*(*v11 + 16))(v11) * 0.5;
      v14 = v23 * sub_1002C4F64(a1 + 120);
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v18 == 3)
  {
    v17 = (*(*v11 + 48))(v11, v15.n128_f64[0]);
    v19 = sub_10025399C((a1 + 200), v11, *(a3 + 8));
    goto LABEL_26;
  }

  if (v18 != 2)
  {
LABEL_23:
    if (v18 == 1)
    {
      v17 = a2[4];
LABEL_25:
      v16.n128_f64[0] = v15.n128_f64[0] * 0.5;
      v15.n128_f64[0] = v14 - v15.n128_f64[0] * 0.5;
      v16.n128_f64[0] = v14 + v16.n128_f64[0];
      v19 = (*(*v11 + 24))(v11, v15, v16);
      goto LABEL_26;
    }

    sub_100014A08(v25, "");
    sub_100200CCC("Unimplemented pedometryLikelihood or bodyFixed", &v27);
    sub_100200D1C((a3 + 4), &v28);
    sub_1000E661C(v25, &v27, 2);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_30:
        if ((v26 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

LABEL_35:
        operator delete(v25[0]);
LABEL_31:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    operator delete(v27.__r_.__value_.__l.__data_);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  v17 = (*(*v11 + 48))(v11, v15.n128_f64[0]);
  v19 = sub_1002C4F5C(a1 + 120);
LABEL_26:
  v14 = v19;
LABEL_27:
  v21 = __sincos_stret(v17);
  return sub_1001E8DB8(a2, v8 + v21.__cosval * v14, v9 + v21.__sinval * v14, *(a3 + 16), a4, v10, a1 + 8, (a1 + 224));
}

void sub_100200A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100200AAC(void *a1)
{
  *a1 = off_100442D90;
  v2 = a1[29];
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

void sub_100200BB8(void *a1)
{
  *a1 = off_100442D90;
  v2 = a1[29];
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

std::string *sub_100200CCC@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100200D00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100200D1C@<X0>(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  result = sub_1001280B0(a1, a2);
  if ((result & 1) == 0)
  {
    std::bad_cast::bad_cast(&v3);
    v3.__vftable = &off_100434090;
    sub_100049F88(&v3);
  }

  return result;
}

void sub_100200DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::bad_cast a10)
{
  std::bad_cast::~bad_cast(&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

void sub_100200DCC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100200E3C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100200EAC(int a1)
{
  if (qword_10045B050 != -1)
  {
    sub_100385BC4();
  }

  v2 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "@AutoBugCapture, triggering diagnostic report...", buf, 2u);
  }

  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:&__kCFBooleanTrue forKey:kSymptomDiagnosticActionDiagnosticExtensions];
  if (qword_10045D218[0] != -1)
  {
    sub_100385BD8();
  }

  v4 = [qword_10045D210 signatureWithDomain:@"Location" type:@"Indoor" subType:@"database crash" subtypeContext:@"corrupt_db_abort" detectedProcess:@"pipelined" triggerThresholdValues:0];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3812000000;
  v9[3] = sub_100201470;
  v9[4] = sub_100201480;
  v9[5] = "";
  v10 = 0;
  if (a1)
  {
    operator new();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002014CC;
  v8[3] = &unk_100442DF0;
  v8[4] = v9;
  if (![qword_10045D210 snapshotWithSignature:v4 delay:0 events:0 payload:v3 actions:v8 reply:0.0])
  {
    if (qword_10045B050 != -1)
    {
      sub_100385C00();
    }

    v5 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "@AutoBugCapture, error, the parameters passed in are invalid!", buf, 2u);
    }
  }

  if (qword_10045B050 != -1)
  {
    sub_100385C00();
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "@AutoBugCapture, done triggering diagnostic report", buf, 2u);
  }

  _Block_object_dispose(v9, 8);
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    std::condition_variable::~condition_variable(v7);
    operator delete();
  }
}

void sub_1002013E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::mutex *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::mutex::~mutex(&a25);
  _Block_object_dispose(&a16, 8);
  sub_10020178C((v27 + 48));

  _Unwind_Resume(a1);
}

void sub_100201434(id a1)
{
  v1 = objc_alloc_init(SDRDiagnosticReporter);
  v2 = qword_10045D210;
  qword_10045D210 = v1;
}

uint64_t sub_100201470(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

std::condition_variable *sub_100201480(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    std::condition_variable::~condition_variable(result);

    operator delete();
  }

  return result;
}

void sub_1002014CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:kSymptomDiagnosticReplySuccess];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:kSymptomDiagnosticReplySessionID];
    if (qword_10045B050 != -1)
    {
      sub_100385BC4();
    }

    v7 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v6;
      v8 = "{msg%{public}.0s:@AutoBugCapture, success, diagnostic report accepted, sessionID:%{public, location:escape_only}@}";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v10, 0x1Cu);
    }
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:kSymptomDiagnosticReplyReasonString];
    if (qword_10045B050 != -1)
    {
      sub_100385BC4();
    }

    v7 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v6;
      v8 = "{msg%{public}.0s:@AutoBugCapture, warning, diagnostic report rejected, reason:%{public, location:escape_only}@}";
      goto LABEL_10;
    }
  }

  if (*(*(*(a1 + 32) + 8) + 48))
  {
    if (qword_10045B050 != -1)
    {
      sub_100385C00();
    }

    v9 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "@AutoBugCapture: notifying waiting thread via condition variable", &v10, 2u);
    }

    std::condition_variable::notify_one(*(*(*(a1 + 32) + 8) + 48));
  }
}

void sub_100201748(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

std::condition_variable **sub_10020178C(std::condition_variable **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::condition_variable::~condition_variable(v2);
    operator delete();
  }

  return a1;
}

void sub_1002017E0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

BOOL sub_100201808(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    return (*(a1 + 108) != 1 || (*(a1 + 109) & 1) == 0) && *(a1 + 40) == 110 && *(a1 + 104) == 2;
  }

  else
  {
    v20 = v2;
    v21 = v3;
    sub_1001CE974(a2, &__p);
    v5 = v18;
    v6 = v19 < 2;
    if (v18)
    {
      do
      {
        v9 = *v5;
        v10 = v5[6];
        if (v10)
        {
          v5[7] = v10;
          operator delete(v10);
        }

        v11 = v5[3];
        if (v11)
        {
          v12 = v5[4];
          v8 = v5[3];
          if (v12 != v11)
          {
            v13 = v12 - 168;
            do
            {
              v16 = *(v12 - 176);
              if (v16 == v16 >> 31)
              {
                if (*(v12 - 128) == 1)
                {
                  *(v12 - 128) = 0;
                }
              }

              else
              {
                v14 = *(v12 - 168);
                if (v16 < 0)
                {
                  if (v14)
                  {
                    (*(*v14 + 8))(v14);
                  }
                }

                else
                {
                  v15 = *(v12 - 168);
                  (*v14)(v12 - 168);
                }
              }

              v12 -= 208;
              v13 -= 208;
            }

            while (v12 != v11);
            v8 = v5[3];
          }

          v5[4] = v11;
          operator delete(v8);
        }

        operator delete(v5);
        v5 = v9;
      }

      while (v9);
    }

    v7 = __p;
    __p = 0;
    if (v7)
    {
      operator delete(v7);
    }

    return v6;
  }
}

uint64_t sub_10020198C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1002511B4(a2);
  *(a1 + 8) = v3;
  *(a1 + 16) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *a1 = off_100442E40;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 1065353216;
  *(a1 + 224) = 0;
  return a1;
}

void *sub_100201A1C(void *a1)
{
  *a1 = off_100442E40;
  v2 = a1[25];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[23];
  a1[23] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[20];
  if (v5)
  {
    do
    {
      v17 = *v5;
      v18 = v5[6];
      if (v18)
      {
        v5[7] = v18;
        operator delete(v18);
      }

      v19 = v5[3];
      if (v19)
      {
        v20 = v5[4];
        v16 = v5[3];
        if (v20 != v19)
        {
          v21 = v20 - 168;
          do
          {
            v24 = *(v20 - 176);
            if (v24 == v24 >> 31)
            {
              if (*(v20 - 128) == 1)
              {
                *(v20 - 128) = 0;
              }
            }

            else
            {
              v22 = *(v20 - 168);
              if (v24 < 0)
              {
                if (v22)
                {
                  (*(*v22 + 8))(v22);
                }
              }

              else
              {
                v23 = *(v20 - 168);
                (*v22)(v20 - 168);
              }
            }

            v20 -= 208;
            v21 -= 208;
          }

          while (v20 != v19);
          v16 = v5[3];
        }

        v5[4] = v19;
        operator delete(v16);
      }

      operator delete(v5);
      v5 = v17;
    }

    while (v17);
  }

  v6 = a1[18];
  a1[18] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = a1[15];
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = a1[13];
  a1[13] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  *a1 = off_100442E98;
  sub_100203444(a1 + 7);
  v10 = a1[8];
  v11 = a1[9];
  if (v10 != v11)
  {
    do
    {
      v12 = *v10++;
      operator delete(v12);
    }

    while (v10 != v11);
    v10 = a1[8];
    v11 = a1[9];
  }

  if (v11 != v10)
  {
    a1[9] = v11 + ((v10 - v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v13 = a1[7];
  if (v13)
  {
    operator delete(v13);
  }

  v14 = a1[3];
  if (v14)
  {
    a1[4] = v14;
    operator delete(v14);
  }

  return a1;
}

void sub_100201C34(void *a1)
{
  sub_100201A1C(a1);

  operator delete();
}

void sub_100201C6C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v4 = *(a1 + 128);
  prime = v4;
  if (v4 == 1)
  {
    prime = 2;
LABEL_6:
    sub_10000FE58(a2, prime);
    goto LABEL_7;
  }

  if ((prime & (v4 - 1)) != 0)
  {
    prime = std::__next_prime(v4);
  }

  if (prime)
  {
    goto LABEL_6;
  }

LABEL_7:
  for (i = *(a1 + 120); i; i = *i)
  {
    v7 = *(i + 4);
    if (v7 == v7 >> 31)
    {
      *&v10 = i[3];
      v8 = v7;
    }

    else
    {
      v10 = *(i + 3);
      v11 = *(i + 10);
      v8 = *(i + 4);
      v7 = v8 >> 31;
    }

    v9 = v8 ^ v7;
    sub_100204BFC(a2, &v9);
  }
}

void sub_100201DA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100201F9C(a1, a3[6]);
  v7 = a3[3];
  v6 = a3[4];
  if (v7 == v6)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v8 = v6 - v7 - 8;
  if (v8 > 0x17)
  {
    v11 = (v8 >> 3) + 1;
    v10 = &v7->f64[v11 & 0x3FFFFFFFFFFFFFFCLL];
    v12 = v7 + 1;
    v13 = 0uLL;
    v14 = v11 & 0x3FFFFFFFFFFFFFFCLL;
    v15 = 0uLL;
    do
    {
      v13 = vsubq_s64(v13, vcgtzq_f64(v12[-1]));
      v15 = vsubq_s64(v15, vcgtzq_f64(*v12));
      v12 += 2;
      v14 -= 4;
    }

    while (v14);
    v9 = vaddvq_s64(vaddq_s64(v15, v13));
    if (v11 == (v11 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
    v10 = a3[3];
  }

  do
  {
    v16 = *v10++;
    if (v16 > 0.0)
    {
      ++v9;
    }
  }

  while (v10 != v6);
LABEL_11:
  *&v26 = a3[6];
  *(&v26 + 1) = v9;
  sub_1000277F8(a1 + 24, &v26);
  sub_1000462CC((a1 + 16), ((*(a1 + 32) - *(a1 + 24)) >> 4) - 1);
  v17 = *a3;
  v18 = a3[1];
  if (*a3 != v18)
  {
    do
    {
      LODWORD(v26) = 1;
      v19 = sub_100205CA0((a1 + 104), v17);
      if ((v20 & 1) == 0)
      {
        ++v19[6];
      }

      v17 += 208;
    }

    while (v17 != v18);
  }

  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  v23 = 73 * ((v22 - v21) >> 3) - 1;
  if (v22 == v21)
  {
    v23 = 0;
  }

  if (v23 == *(a1 + 96) + *(a1 + 88))
  {
    sub_100206148((a1 + 56));
    v21 = *(a1 + 64);
    v22 = *(a1 + 72);
  }

  if (v22 == v21)
  {
    v25 = 0;
  }

  else
  {
    v24 = *(a1 + 96) + *(a1 + 88);
    v25 = (*(v21 + 8 * (v24 / 0x49)) + 56 * (v24 % 0x49));
  }

  sub_100203650(v25, a3);
  ++*(a1 + 96);
  sub_1002027C8(a1, a2, a3);
}

int64x2_t sub_100201F9C(uint64_t a1, uint64_t a2)
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

  sub_100202B60(a1, a2);
  if (!*(a1 + 96))
  {
    return result;
  }

  v12 = *(a1 + 88);
  result = xmmword_1003D1DF0;
  do
  {
    while (2)
    {
      v14 = *(*(a1 + 64) + 8 * (v12 / 0x49));
      v15 = v12 % 0x49;
      v16 = v14 + 56 * v15;
      if (*(a1 + 8) + *(v16 + 48) >= a2)
      {
        return result;
      }

      v17 = *v16;
      v18 = *(v16 + 8);
      if (*v16 == v18)
      {
        v19 = (v14 + 56 * v15);
        v20 = v19[3];
        if (!v20)
        {
          goto LABEL_18;
        }

LABEL_17:
        v19[4] = v20;
        operator delete(v20);
        goto LABEL_18;
      }

      do
      {
        v26 = (v17 + 2);
        v25 = *v17;
        if (v25 == v25 >> 31)
        {
          v67.__r_.__value_.__l.__size_ = *v26;
          v27 = v25;
        }

        else
        {
          v28 = *v26;
          LODWORD(v68.__r_.__value_.__l.__data_) = v17[6];
          *&v67.__r_.__value_.__r.__words[1] = v28;
          v27 = *v17;
          v25 = *v17 >> 31;
        }

        LODWORD(v67.__r_.__value_.__l.__data_) = v27 ^ v25;
        v29 = sub_100203E28((a1 + 104), &v67);
        if (!v29)
        {
          v41 = *(a1 + 128);
          v63 = 0;
          LOBYTE(v62) = 0;
          memset(&v67, 0, sizeof(v67));
          std::string::assign(&v67, "Can't find mac ");
          memset(&v68, 0, sizeof(v68));
          if ((sub_10017D830(v17, &v68) & 1) == 0)
          {
            v58 = std::bad_cast::bad_cast(__n_del_1);
            __n_del_1[0].__vftable = &off_100434090;
            sub_100049F88(v58);
          }

          memset(&v69, 0, sizeof(v69));
          std::string::assign(&v69, " among size=");
          v70 = 0;
          __old_sz = 0;
          v72 = 0;
          v75 = &__n_del_1[0].__vftable + 2;
          v76 = v74;
          v64[0] = v41;
          v64[1] = v74;
          v65 = 48;
          v66 = 48;
          v42 = sub_100181514(v64);
          v75 = v42;
          v76 = v74;
          v43 = &v74[-v42];
          v44 = SHIBYTE(v72);
          if ((SHIBYTE(v72) & 0x8000000000000000) != 0)
          {
            v46 = (v72 & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v46 >= v43)
            {
              v47 = HIBYTE(v72);
            }

            else
            {
              v60 = v42;
              v44 = __old_sz;
LABEL_60:
              v59 = &v74[-v42];
              std::string::__grow_by(&v70, v46, v43 - v46, v44, 0, v44, 0);
              v42 = v60;
              __old_sz = 0;
              LOBYTE(v47) = HIBYTE(v72);
              v43 = v59;
            }

            if ((v47 & 0x80u) == 0)
            {
              v45 = &v70;
            }

            else
            {
              v45 = v70;
            }
          }

          else
          {
            v45 = &v70;
            if (v43 > 0x16)
            {
              v60 = v42;
              v46 = 22;
              goto LABEL_60;
            }
          }

          if (v42 == v74)
          {
            v48 = v45;
          }

          else
          {
            if (v43 < 0x20 || &v45[-v42] < 0x20)
            {
              v48 = v45;
              v49 = v42;
            }

            else
            {
              v48 = &v45[v43 & 0xFFFFFFFFFFFFFFE0];
              v49 = (v42 + (v43 & 0xFFFFFFFFFFFFFFE0));
              v50 = (v42 + 16);
              v51 = v45 + 16;
              v52 = v43 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v53 = *v50;
                *(v51 - 1) = *(v50 - 1);
                *v51 = v53;
                v50 += 2;
                v51 += 2;
                v52 -= 32;
              }

              while (v52);
              if (v43 == (v43 & 0xFFFFFFFFFFFFFFE0))
              {
                goto LABEL_75;
              }
            }

            do
            {
              v54 = *v49++;
              *v48++ = v54;
            }

            while (v49 != v74);
          }

LABEL_75:
          *v48 = 0;
          if (SHIBYTE(v72) < 0)
          {
            __old_sz = v43;
          }

          else
          {
            HIBYTE(v72) = v43 & 0x7F;
          }

          sub_1000E661C(&v62, &v67, 4);
          if (SHIBYTE(v72) < 0)
          {
            operator delete(v70);
            if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_85;
            }

LABEL_80:
            if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_81;
            }

LABEL_86:
            operator delete(v68.__r_.__value_.__l.__data_);
            if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_87;
            }

LABEL_82:
            if (v63 < 0)
            {
LABEL_88:
              operator delete(v62);
            }
          }

          else
          {
            if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_80;
            }

LABEL_85:
            operator delete(v69.__r_.__value_.__l.__data_);
            if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_86;
            }

LABEL_81:
            if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_82;
            }

LABEL_87:
            operator delete(v67.__r_.__value_.__l.__data_);
            if (v63 < 0)
            {
              goto LABEL_88;
            }
          }

          sub_10003F5D0(&__p);
        }

        v30 = v29[6] - 1;
        v29[6] = v30;
        if (!v30)
        {
          v31 = *(a1 + 112);
          v32 = v29[1];
          v33 = vcnt_s8(v31);
          v33.i16[0] = vaddlv_u8(v33);
          if (v33.u32[0] > 1uLL)
          {
            if (v32 >= *&v31)
            {
              v32 %= *&v31;
            }
          }

          else
          {
            v32 &= *&v31 - 1;
          }

          v34 = *v29;
          v35 = *(a1 + 104);
          v36 = *(v35 + 8 * v32);
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36 != v29);
          if (v37 == (a1 + 120))
          {
            goto LABEL_45;
          }

          v38 = v37[1];
          if (v33.u32[0] > 1uLL)
          {
            if (v38 >= *&v31)
            {
              v38 %= *&v31;
            }
          }

          else
          {
            v38 &= *&v31 - 1;
          }

          if (v38 != v32)
          {
LABEL_45:
            if (v34)
            {
              v39 = *(v34 + 8);
              if (v33.u32[0] > 1uLL)
              {
                if (v39 >= *&v31)
                {
                  v39 %= *&v31;
                }
              }

              else
              {
                v39 &= *&v31 - 1;
              }

              if (v39 == v32)
              {
                goto LABEL_48;
              }
            }

            *(v35 + 8 * v32) = 0;
            v34 = *v29;
          }

          if (!v34)
          {
LABEL_21:
            *v37 = v34;
            *v29 = 0;
            --*(a1 + 128);
            operator delete(v29);
            goto LABEL_22;
          }

LABEL_48:
          v40 = *(v34 + 8);
          if (v33.u32[0] > 1uLL)
          {
            if (v40 >= *&v31)
            {
              v40 %= *&v31;
            }
          }

          else
          {
            v40 &= *&v31 - 1;
          }

          if (v40 != v32)
          {
            *(v35 + 8 * v40) = v37;
            v34 = *v29;
          }

          goto LABEL_21;
        }

LABEL_22:
        v17 += 52;
      }

      while (v17 != v18);
      v19 = (*(*(a1 + 64) + 8 * (*(a1 + 88) / 0x49uLL)) + 56 * (*(a1 + 88) % 0x49uLL));
      v20 = v19[3];
      if (v20)
      {
        goto LABEL_17;
      }

LABEL_18:
      v21 = *v19;
      if (*v19)
      {
        v22 = v19[1];
        v23 = *v19;
        if (v22 != v21)
        {
          v24 = v22 - 168;
          do
          {
            v57 = *(v22 - 44);
            if (v57 == v57 >> 31)
            {
              if (*(v22 - 128) == 1)
              {
                *(v22 - 128) = 0;
              }
            }

            else
            {
              v55 = *(v22 - 21);
              if (v57 < 0)
              {
                if (v55)
                {
                  (*(*v55 + 8))(v55);
                }
              }

              else
              {
                v56 = *(v22 - 21);
                (*v55)(v22 - 168);
              }
            }

            v22 -= 208;
            v24 -= 208;
          }

          while (v22 != v21);
          v23 = *v19;
        }

        v19[1] = v21;
        operator delete(v23);
      }

      result = vaddq_s64(*(a1 + 88), xmmword_1003D1DF0);
      *(a1 + 88) = result;
      v12 = result.i64[0];
      if (result.i64[0] >= 0x92uLL)
      {
        operator delete(**(a1 + 64));
        *(a1 + 64) += 8;
        v13 = *(a1 + 96);
        v12 = *(a1 + 88) - 73;
        *(a1 + 88) = v12;
        if (!v13)
        {
          return result;
        }

        continue;
      }

      break;
    }
  }

  while (result.i64[1]);
  return result;
}

void sub_100202708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002027C8(int8x8_t *a1, uint64_t a2, uint64_t *a3)
{
  if (sub_100201808(a2, a3))
  {

    sub_100202F1C(a1, a2, a3);
    return;
  }

  if (a2)
  {
    if (*(a2 + 108) == 1)
    {
      if (*(a2 + 109))
      {
        v6 = "merged";
      }

      else
      {
        v6 = "not merged";
      }
    }

    else
    {
      v6 = "unknown";
    }

    v19 = strlen(v6);
    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v20 = v19;
    if (v19 >= 0x17)
    {
      operator new();
    }

    v30 = v19;
    if (v19)
    {
      memcpy(buf, v6, v19);
    }

    buf[v20] = 0;
    if (qword_10045B050 != -1)
    {
      sub_100385C30();
    }

    v21 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      v22 = buf;
      if (v30 < 0)
      {
        v22 = *buf;
      }

      v23 = *(a2 + 40);
      v24 = *(a2 + 104);
      *v25 = 136315650;
      *&v25[4] = v22;
      v26 = 2048;
      *v27 = v23;
      *&v27[8] = 1024;
      LODWORD(v28) = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Scan not used for coarse indoor. merged = %s, dwell = %lld, scanType = %d", v25, 0x1Cu);
    }

    if (v30 < 0)
    {
      v9 = *buf;
LABEL_47:
      operator delete(v9);
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100385C30();
    }

    v7 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      sub_1001CE974(a3, v25);
      *buf = 134217984;
      *&buf[4] = v28;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Scan not used for coarse indoor. splitByFrequency size = %zu", buf, 0xCu);
      v8 = *&v27[2];
      if (*&v27[2])
      {
        do
        {
          v11 = *v8;
          v12 = v8[6];
          if (v12)
          {
            v8[7] = v12;
            operator delete(v12);
          }

          v13 = v8[3];
          if (v13)
          {
            v14 = v8[4];
            v10 = v8[3];
            if (v14 != v13)
            {
              v15 = v14 - 168;
              do
              {
                v18 = *(v14 - 176);
                if (v18 == v18 >> 31)
                {
                  if (*(v14 - 128) == 1)
                  {
                    *(v14 - 128) = 0;
                  }
                }

                else
                {
                  v16 = *(v14 - 168);
                  if (v18 < 0)
                  {
                    if (v16)
                    {
                      (*(*v16 + 8))(v16);
                    }
                  }

                  else
                  {
                    v17 = *(v14 - 168);
                    (*v16)(v14 - 168);
                  }
                }

                v14 -= 208;
                v15 -= 208;
              }

              while (v14 != v13);
              v10 = v8[3];
            }

            v8[4] = v13;
            operator delete(v10);
          }

          operator delete(v8);
          v8 = v11;
        }

        while (v11);
      }

      v9 = *v25;
      *v25 = 0;
      if (v9)
      {
        goto LABEL_47;
      }
    }
  }
}

void sub_100202B60(void *a1, uint64_t a2)
{
  v2 = a1[20];
  if (!v2)
  {
    return;
  }

  v5 = a1 + 25;
  do
  {
    while (a1[1] + *(v2 + 72) < a2)
    {
      v7 = *(v2 + 24);
      v6 = *(v2 + 32);
      if (v7 != v6)
      {
        while (1)
        {
          *buf = v7;
          v14 = sub_100203984(a1 + 23, v7);
          if (v14[6] != 1)
          {
            break;
          }

          v15 = sub_100203E28(a1 + 23, v7);
          if (v15)
          {
            v16 = a1[24];
            v17 = v15[1];
            v18 = vcnt_s8(v16);
            v18.i16[0] = vaddlv_u8(v18);
            if (v18.u32[0] > 1uLL)
            {
              if (v17 >= *&v16)
              {
                v17 %= *&v16;
              }
            }

            else
            {
              v17 &= *&v16 - 1;
            }

            v19 = a1[23];
            v20 = *(v19 + 8 * v17);
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20 != v15);
            if (v21 == v5)
            {
              goto LABEL_35;
            }

            v22 = v21[1];
            if (v18.u32[0] > 1uLL)
            {
              if (v22 >= *&v16)
              {
                v22 %= *&v16;
              }
            }

            else
            {
              v22 &= *&v16 - 1;
            }

            if (v22 != v17)
            {
LABEL_35:
              if (!*v15)
              {
                goto LABEL_36;
              }

              v23 = *(*v15 + 8);
              if (v18.u32[0] > 1uLL)
              {
                if (v23 >= *&v16)
                {
                  v23 %= *&v16;
                }
              }

              else
              {
                v23 &= *&v16 - 1;
              }

              if (v23 != v17)
              {
LABEL_36:
                *(v19 + 8 * v17) = 0;
              }
            }

            v24 = *v15;
            if (*v15)
            {
              v25 = *(v24 + 8);
              if (v18.u32[0] > 1uLL)
              {
                if (v25 >= *&v16)
                {
                  v25 %= *&v16;
                }
              }

              else
              {
                v25 &= *&v16 - 1;
              }

              if (v25 != v17)
              {
                *(v19 + 8 * v25) = v21;
                v24 = *v15;
              }
            }

            *v21 = v24;
            *v15 = 0;
            --a1[26];
            operator delete(v15);
            v7 += 208;
            if (v7 == v6)
            {
              goto LABEL_6;
            }
          }

          else
          {
LABEL_18:
            v7 += 208;
            if (v7 == v6)
            {
              goto LABEL_6;
            }
          }
        }

        --v14[6];
        goto LABEL_18;
      }

LABEL_6:
      if (qword_10045B050 != -1)
      {
        sub_100385C44();
      }

      v8 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(v2 + 16);
        v10 = 0x4EC4EC4EC4EC4EC5 * ((*(v2 + 32) - *(v2 + 24)) >> 4);
        v11 = a1[1];
        v12 = a2 - *(v2 + 72);
        *buf = 67175425;
        *&buf[4] = v9;
        v32 = 2048;
        v33 = v10;
        v34 = 2048;
        v35 = v11;
        v36 = 2048;
        v37 = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Age out freq=%{private}d, size=%zu, fWindowLength=%lld, age = %lld", buf, 0x26u);
      }

      v13 = *v2;
      sub_100010A88(a1 + 18, v2, buf);
      sub_1001D118C(buf);
      v2 = v13;
      if (!v13)
      {
        return;
      }
    }

    if (qword_10045B050 != -1)
    {
      sub_100385C44();
    }

    v26 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(v2 + 16);
      v28 = 0x4EC4EC4EC4EC4EC5 * ((*(v2 + 32) - *(v2 + 24)) >> 4);
      v29 = a1[1];
      v30 = a2 - *(v2 + 72);
      *buf = 67175425;
      *&buf[4] = v27;
      v32 = 2048;
      v33 = v28;
      v34 = 2048;
      v35 = v29;
      v36 = 2048;
      v37 = v30;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Keeping freq= %{private}d, size=%zu, fWindowLength=%lld, age = %lld", buf, 0x26u);
    }

    v2 = *v2;
  }

  while (v2);
}

void sub_100202F1C(int8x8_t *a1, uint64_t a2, uint64_t *a3)
{
  sub_1001CE974(a3, &__p);
  v5 = v39;
  if (!v39)
  {
    goto LABEL_49;
  }

  do
  {
    v6 = v5[3];
    v37 = *(v5 + 4);
    for (i = v5[4]; v6 != i; v6 += 208)
    {
      while (1)
      {
        v8 = sub_100203E28(&a1[23], v6);
        if (!v8)
        {
          break;
        }

        ++v8[6];
        v6 += 208;
        if (v6 == i)
        {
          goto LABEL_10;
        }
      }

      v40 = v6;
      sub_100203984(&a1[23], v6)[6] = 1;
    }

LABEL_10:
    v9 = sub_100206510(&a1[18], &v37);
    if ((v10 & 1) == 0)
    {
      v11 = v9;
      if (!a2 || v5[9] - v9[9] >= 500000 * *(a2 + 40))
      {
        v12 = v9[3];
        v13 = v9[4];
        if (v12 == v13)
        {
LABEL_14:
          if (v5 != v11)
          {
            sub_100204098(v11 + 3, v5[3], v5[4], 0x4EC4EC4EC4EC4EC5 * ((v5[4] - v5[3]) >> 4));
            sub_10011DD68(v11 + 6, v5[6], v5[7], (v5[7] - v5[6]) >> 3);
          }

          v11[9] = v5[9];
          a1[28].i8[0] = 1;
          goto LABEL_4;
        }

        while (1)
        {
          v40 = v12;
          v14 = sub_100203984(&a1[23], v12);
          if (v14[6] != 1)
          {
            break;
          }

          v15 = sub_100203E28(&a1[23], v12);
          if (v15)
          {
            v16 = a1[24];
            v17 = v15[1];
            v18 = vcnt_s8(v16);
            v18.i16[0] = vaddlv_u8(v18);
            if (v18.u32[0] > 1uLL)
            {
              if (v17 >= *&v16)
              {
                v17 %= *&v16;
              }
            }

            else
            {
              v17 &= *&v16 - 1;
            }

            v19 = a1[23];
            v20 = *(*&v19 + 8 * v17);
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20 != v15);
            if (v21 == &a1[25])
            {
              goto LABEL_39;
            }

            v22 = v21[1];
            if (v18.u32[0] > 1uLL)
            {
              if (v22 >= *&v16)
              {
                v22 %= *&v16;
              }
            }

            else
            {
              v22 &= *&v16 - 1;
            }

            if (v22 != v17)
            {
LABEL_39:
              if (!*v15)
              {
                goto LABEL_40;
              }

              v23 = *(*v15 + 8);
              if (v18.u32[0] > 1uLL)
              {
                if (v23 >= *&v16)
                {
                  v23 %= *&v16;
                }
              }

              else
              {
                v23 &= *&v16 - 1;
              }

              if (v23 != v17)
              {
LABEL_40:
                *(*&v19 + 8 * v17) = 0;
              }
            }

            v24 = *v15;
            if (*v15)
            {
              v25 = *(v24 + 8);
              if (v18.u32[0] > 1uLL)
              {
                if (v25 >= *&v16)
                {
                  v25 %= *&v16;
                }
              }

              else
              {
                v25 &= *&v16 - 1;
              }

              if (v25 != v17)
              {
                *(*&v19 + 8 * v25) = v21;
                v24 = *v15;
              }
            }

            *v21 = v24;
            *v15 = 0;
            --*&a1[26];
            operator delete(v15);
            v12 += 208;
            if (v12 == v13)
            {
              goto LABEL_14;
            }
          }

          else
          {
LABEL_22:
            v12 += 208;
            if (v12 == v13)
            {
              goto LABEL_14;
            }
          }
        }

        --v14[6];
        goto LABEL_22;
      }
    }

LABEL_4:
    v5 = *v5;
  }

  while (v5);
  v26 = v39;
  if (v39)
  {
    do
    {
      v29 = *v26;
      v30 = v26[6];
      if (v30)
      {
        v26[7] = v30;
        operator delete(v30);
      }

      v31 = v26[3];
      if (v31)
      {
        v32 = v26[4];
        v28 = v26[3];
        if (v32 != v31)
        {
          v33 = v32 - 168;
          do
          {
            v36 = *(v32 - 176);
            if (v36 == v36 >> 31)
            {
              if (*(v32 - 128) == 1)
              {
                *(v32 - 128) = 0;
              }
            }

            else
            {
              v34 = *(v32 - 168);
              if (v36 < 0)
              {
                if (v34)
                {
                  (*(*v34 + 8))(v34);
                }
              }

              else
              {
                v35 = *(v32 - 168);
                (*v34)(v32 - 168);
              }
            }

            v32 -= 208;
            v33 -= 208;
          }

          while (v32 != v31);
          v28 = v26[3];
        }

        v26[4] = v31;
        operator delete(v28);
      }

      operator delete(v26);
      v26 = v29;
    }

    while (v29);
  }

LABEL_49:
  v27 = __p;
  __p = 0;
  if (v27)
  {
    operator delete(v27);
  }
}

void sub_100203324(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D0CA8(va);
  _Unwind_Resume(a1);
}

void sub_100203338(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D0CA8(va);
  _Unwind_Resume(a1);
}

void sub_10020334C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D0CA8(va);
  _Unwind_Resume(a1);
}

void sub_100203360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D0CA8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100203374(uint64_t *a1, unint64_t a2)
{
  v4 = a2;
  sub_1000277F8((a1 + 3), &v4);
  return sub_1000462CC(a1 + 2, ((a1[4] - a1[3]) >> 4) - 1);
}

uint64_t sub_1002033C4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  for (i = (result + 160); ; result = sub_100205090(a2, a2[1], i[3], i[4], 0x4EC4EC4EC4EC4EC5 * ((i[4] - i[3]) >> 4)))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  return result;
}

void sub_100203444(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v17 = v3 - v2;
    if (v17 < 3)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v4 = a1[4];
  v5 = &v2[v4 / 0x49];
  v6 = *v5 + 56 * (v4 % 0x49);
  v7 = v2[(a1[5] + v4) / 0x49] + 56 * ((a1[5] + v4) % 0x49);
  if (v6 != v7)
  {
    do
    {
      v8 = *(v6 + 3);
      if (v8)
      {
        *(v6 + 4) = v8;
        operator delete(v8);
      }

      v9 = *v6;
      if (*v6)
      {
        v10 = *(v6 + 1);
        v11 = *v6;
        if (v10 != v9)
        {
          v12 = v10 - 168;
          do
          {
            v15 = *(v10 - 44);
            if (v15 == v15 >> 31)
            {
              if (*(v10 - 128) == 1)
              {
                *(v10 - 128) = 0;
              }
            }

            else
            {
              v13 = *(v10 - 21);
              if (v15 < 0)
              {
                if (v13)
                {
                  (*(*v13 + 8))(v13);
                }
              }

              else
              {
                v14 = *(v10 - 21);
                (*v13)(v10 - 168);
              }
            }

            v10 -= 208;
            v12 -= 208;
          }

          while (v10 != v9);
          v11 = *v6;
        }

        *(v6 + 1) = v9;
        operator delete(v11);
      }

      v6 += 56;
      if (v6 - *v5 == 4088)
      {
        v16 = v5[1];
        ++v5;
        v6 = v16;
      }
    }

    while (v6 != v7);
    v2 = a1[1];
    v3 = a1[2];
  }

  a1[5] = 0;
  v17 = v3 - v2;
  if (v17 >= 3)
  {
    do
    {
LABEL_24:
      operator delete(*v2);
      v18 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v17 = (v18 - v2) >> 3;
    }

    while (v17 > 2);
  }

LABEL_25:
  if (v17 == 1)
  {
    v19 = 36;
  }

  else
  {
    if (v17 != 2)
    {
      return;
    }

    v19 = 73;
  }

  a1[4] = v19;
}

void *sub_100203650(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x4EC4EC4EC4EC4EC5 * ((v2 - *a2) >> 4)) < 0x13B13B13B13B13CLL)
    {
      operator new();
    }

    sub_10000FC84();
  }

  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  v4 = a2[3];
  v3 = a2[4];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  result[6] = a2[6];
  return result;
}

void sub_10020377C(_Unwind_Exception *a1)
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

uint64_t sub_1002037B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v22 = *(result + 8);
  if (a2 == a3)
  {
    v6 = *(result + 8);
  }

  else
  {
    v5 = (a2 + 88);
    v6 = *(result + 8);
    do
    {
      v11 = *(v5 - 22);
      v12 = v5 - 5;
      if (v11 == v11 >> 31)
      {
        *(v6 + 8) = *v12;
        v13 = v11;
      }

      else
      {
        v14 = *v12;
        *(v6 + 24) = *(v5 - 16);
        *(v6 + 8) = v14;
        v13 = *(v5 - 22);
        v11 = v13 >> 31;
      }

      *v6 = v13 ^ v11;
      result = v6 + 40;
      v15 = *(v5 - 14);
      v16 = (v5 - 3);
      if (v15 == v15 >> 31)
      {
        v17 = *(v5 - 12);
        v18 = v5 - 5;
        if (v17 == v17 >> 31)
        {
          *(v6 + 48) = *v18;
          v19 = v17;
        }

        else
        {
          v21 = *v18;
          *(v6 + 64) = *(v5 - 6);
          *(v6 + 48) = v21;
          v19 = *v16;
          v17 = v19 >> 31;
        }

        *(v6 + 40) = v19 ^ v17;
        *(v6 + 72) = *(v5 - 2);
        *(v6 + 80) = 0;
        if (*(v5 - 8) == 1)
        {
          *(v6 + 84) = *(v5 - 1);
          *(v6 + 80) = 1;
        }

        v7 = *v5;
        v8 = v5[1];
        *(v6 + 120) = *(v5 + 8);
        *(v6 + 104) = v8;
        *(v6 + 88) = v7;
        v9 = v6;
      }

      else
      {
        if (v15 >= 0)
        {
          v20 = v5 - 3;
        }

        else
        {
          v20 = *v16;
        }

        result = sub_100131324(result, v20);
        v9 = v22;
      }

      *(v6 + 32) = *(v5 - 14) ^ (*(v5 - 14) >> 31);
      v6 = v9 + 208;
      v22 = v9 + 208;
      v10 = v5 + 120;
      v5 += 13;
    }

    while (v10 != a3);
  }

  *(v3 + 8) = v6;
  return result;
}

void sub_10020393C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1001CFDE4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t *sub_100203984(void *a1, uint64_t a2)
{
  v26 = &v25;
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
    v5 = sub_1001FA420(&v26, (a2 + 8));
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
  if (!v9 || (v10 = *v9) == 0)
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
        v16 = v10[1];
        if (v16 == v5)
        {
          if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12 && v10[3] == v14)
          {
            return v10;
          }
        }

        else if ((v16 & v15) != v8)
        {
          goto LABEL_58;
        }

        v10 = *v10;
        if (!v10)
        {
          goto LABEL_58;
        }
      }
    }

    while (1)
    {
      v17 = v10[1];
      if (v17 == v5)
      {
        if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12)
        {
          v18 = v10[3] == *v4 && v10[4] == *(v4 + 8);
          if (v18 && *(v10 + 10) == *(v4 + 16))
          {
            return v10;
          }
        }
      }

      else if ((v17 & v15) != v8)
      {
        goto LABEL_58;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_58;
      }
    }
  }

  if (v13)
  {
    while (1)
    {
      v20 = v10[1];
      if (v20 == v5)
      {
        if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12 && v10[3] == v14)
        {
          return v10;
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

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_58;
      }
    }
  }

  while (1)
  {
    v21 = v10[1];
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
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_58;
    }
  }

  if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) != v12)
  {
    goto LABEL_44;
  }

  v22 = v10[3] == *v4 && v10[4] == *(v4 + 8);
  if (!v22 || *(v10 + 10) != *(v4 + 16))
  {
    goto LABEL_44;
  }

  return v10;
}

uint64_t *sub_100203E28(void *a1, uint64_t a2)
{
  v25 = &v24;
  v4 = a2 + 8;
  if (*a2 != *a2 >> 31)
  {
    v5 = sub_1001FA420(&v25, (a2 + 8));
    v6 = a1[1];
    if (v6)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v5 = *v4;
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

LABEL_3:
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

  v10 = *(*a1 + 8 * v8);
  if (!v10)
  {
    return v10;
  }

  v10 = *v10;
  if (!v10)
  {
    return v10;
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
        v16 = v10[1];
        if (v16 == v5)
        {
          if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12 && v10[3] == v14)
          {
            return v10;
          }
        }

        else if ((v16 & v15) != v8)
        {
          return 0;
        }

        v10 = *v10;
        if (!v10)
        {
          return v10;
        }
      }
    }

    while (1)
    {
      v17 = v10[1];
      if (v17 == v5)
      {
        if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12)
        {
          v18 = v10[3] == *v4 && v10[4] == *(v4 + 8);
          if (v18 && *(v10 + 10) == *(v4 + 16))
          {
            return v10;
          }
        }
      }

      else if ((v17 & v15) != v8)
      {
        return 0;
      }

      v10 = *v10;
      if (!v10)
      {
        return v10;
      }
    }
  }

  if (v13)
  {
    while (1)
    {
      v20 = v10[1];
      if (v20 == v5)
      {
        if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12 && v10[3] == v14)
        {
          return v10;
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
          return 0;
        }
      }

      v10 = *v10;
      if (!v10)
      {
        return v10;
      }
    }
  }

  while (1)
  {
    v21 = v10[1];
    if (v21 != v5)
    {
      break;
    }

    if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12)
    {
      v22 = v10[3] == *v4 && v10[4] == *(v4 + 8);
      if (v22 && *(v10 + 10) == *(v4 + 16))
      {
        return v10;
      }
    }

LABEL_44:
    v10 = *v10;
    if (!v10)
    {
      return v10;
    }
  }

  if (v21 >= *&v6)
  {
    v21 %= *&v6;
  }

  if (v21 == v8)
  {
    goto LABEL_44;
  }

  return 0;
}

void **sub_100204098(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x4EC4EC4EC4EC4EC5 * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      v9 = result[1];
      v10 = *result;
      if (v9 != v8)
      {
        v11 = v9 - 42;
        do
        {
          v14 = *(v9 - 44);
          if (v14 == v14 >> 31)
          {
            if (*(v9 - 128) == 1)
            {
              *(v9 - 128) = 0;
            }
          }

          else
          {
            v12 = *(v9 - 21);
            if (v14 < 0)
            {
              if (v12)
              {
                (*(*v12 + 8))(v12);
              }
            }

            else
            {
              v13 = *(v9 - 21);
              (*v12)(v9 - 42);
            }
          }

          v9 -= 52;
          v11 -= 52;
        }

        while (v9 != v8);
        v10 = *v6;
      }

      v6[1] = v8;
      operator delete(v10);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x13B13B13B13B13BLL)
    {
      v32 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 4);
      v33 = 2 * v32;
      if (2 * v32 <= a4)
      {
        v33 = a4;
      }

      if (v32 >= 0x9D89D89D89D89DLL)
      {
        v34 = 0x13B13B13B13B13BLL;
      }

      else
      {
        v34 = v33;
      }

      if (v34 <= 0x13B13B13B13B13BLL)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v15 = result[1];
  if (0x4EC4EC4EC4EC4EC5 * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v27 = (a2 + 8);
      do
      {
        v30 = v27 - 8;
        v29 = *(v27 - 2);
        if (*v8 == v29)
        {
          if (*v8 == *v8 >> 31)
          {
            *(v8 + 1) = *v27;
          }

          else
          {
            v31 = *v27;
            v8[6] = *(v27 + 4);
            *(v8 + 2) = v31;
          }
        }

        else
        {
          if (v29 >> 31 == v29)
          {
            *(v8 + 1) = *v27;
          }

          else
          {
            v28 = *v27;
            v8[6] = *(v27 + 4);
            *(v8 + 2) = v28;
          }

          *v8 = (v29 >> 31) ^ v29;
        }

        result = sub_1002044C0((v8 + 8), v27 + 24);
        v8 += 52;
        v27 += 13;
      }

      while (v30 + 208 != a3);
      v15 = v6[1];
    }

    if (v15 != v8)
    {
      v37 = v15 - 42;
      do
      {
        v39 = *(v15 - 44);
        if (v39 == v39 >> 31)
        {
          if (*(v15 - 128) == 1)
          {
            *(v15 - 128) = 0;
          }
        }

        else
        {
          result = *(v15 - 21);
          if (v39 < 0)
          {
            if (result)
            {
              result = (*(*result + 1))(result);
            }
          }

          else
          {
            v38 = *(v15 - 21);
            result = (*result)(v15 - 42);
          }
        }

        v15 -= 52;
        v37 -= 52;
      }

      while (v15 != v8);
    }

    v6[1] = v8;
  }

  else
  {
    v16 = a2 + v15 - v8;
    if (v15 == v8)
    {
      v40 = *result;
    }

    else
    {
      v17 = (v8 + 8);
      v18 = (a2 + 8);
      do
      {
        v22 = v18 - 8;
        v21 = *(v18 - 2);
        v23 = *(v17 - 32);
        if (v23 == v21)
        {
          v24 = (v17 - 24);
          if (v23 == v23 >> 31)
          {
            *v24 = *v18;
          }

          else
          {
            v26 = *v18;
            *(v17 - 8) = *(v18 + 4);
            *v24 = v26;
          }
        }

        else
        {
          v25 = (v21 >> 31) ^ v21;
          if (v21 >> 31 == v21)
          {
            *(v17 - 24) = *v18;
          }

          else
          {
            v19 = v17 - 24;
            v20 = *v18;
            *(v19 + 16) = *(v18 + 4);
            *v19 = v20;
          }

          *(v17 - 32) = v25;
        }

        sub_1002044C0(v17, v18 + 24);
        v17 += 208;
        v18 += 13;
      }

      while (v22 + 208 != v16);
      v36 = *v6;
      v35 = v6[1];
    }

    return sub_1002037B4(v6, v16, a3);
  }

  return result;
}

uint64_t sub_1002044C0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 != *a2)
  {
    v8 = (v4 >> 31) ^ v4;
    v28 = a1;
    v29 = v8;
    if (v4 >> 31 != v4)
    {
      v19 = a2 + 8;
      if (v4 < 0)
      {
        *&v30 = a1;
        DWORD2(v30) = (v4 >> 31) ^ v4;
        *&v31 = v19;
        *(&v31 + 1) = sub_100204BF4;
        if (v3 == v3 >> 31)
        {
          sub_100204954(&v30, a1 + 8);
        }

        else
        {
          if ((v3 & 0x80000000) == 0)
          {
            sub_100204AE0();
          }

          v27 = *(a1 + 8);
          *(a1 + 8) = 0;
          *a1 = v8;
          if (v27)
          {
            (*(*v27 + 8))(v27);
          }
        }
      }

      else
      {
        sub_100204840(&v28, v19);
      }

      return a1;
    }

    v9 = *(a2 + 8);
    v10 = v9;
    if (v9 >> 31 != v9)
    {
      v33 = *(a2 + 24);
      v34 = *(a2 + 32);
      v10 = v9 >> 31;
    }

    v11 = *(a2 + 16);
    v12 = v10 ^ v9;
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    v15 = *(a2 + 52);
    v16 = *(a2 + 72);
    v30 = *(a2 + 56);
    v31 = v16;
    v32 = *(a2 + 88);
    if (v3 != v3 >> 31)
    {
      v17 = *(a1 + 8);
      if (v3 < 0)
      {
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      else
      {
        v18 = *(a1 + 8);
        (*v17)(a1 + 8);
      }
    }

    if (v12 >> 31 == v12)
    {
      *(a1 + 16) = v11;
      *(a1 + 8) = 0;
      *(a1 + 40) = v13;
      *(a1 + 48) = 0;
      if (!v14)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v24 = v33;
      *(a1 + 16) = v11;
      *(a1 + 24) = v24;
      *(a1 + 32) = v34;
      *(a1 + 8) = (v12 >> 31) ^ v12;
      *(a1 + 40) = v13;
      *(a1 + 48) = 0;
      if (!v14)
      {
LABEL_38:
        v25 = v31;
        *(a1 + 56) = v30;
        *(a1 + 72) = v25;
        *(a1 + 88) = v32;
        *a1 = v8;
        return a1;
      }
    }

    *(a1 + 52) = v15;
    *(a1 + 48) = 1;
    goto LABEL_38;
  }

  if (v3 == v3 >> 31)
  {
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    if (v5 == v6)
    {
      if (v5 == v5 >> 31)
      {
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 40) = *(a2 + 40);
        v7 = *(a2 + 48);
        if (*(a1 + 48) == 1)
        {
LABEL_27:
          if (v7)
          {
            *(a1 + 52) = *(a2 + 52);
          }

          else
          {
            *(a1 + 48) = 0;
          }

LABEL_30:
          v22 = *(a2 + 56);
          v23 = *(a2 + 72);
          *(a1 + 88) = *(a2 + 88);
          *(a1 + 72) = v23;
          *(a1 + 56) = v22;
          return a1;
        }
      }

      else
      {
        v20 = *(a2 + 16);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 16) = v20;
        *(a1 + 40) = *(a2 + 40);
        v7 = *(a2 + 48);
        if (*(a1 + 48) == 1)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      if (v6 >> 31 == v6)
      {
        *(a1 + 16) = *(a2 + 16);
      }

      else
      {
        v21 = *(a2 + 16);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 16) = v21;
      }

      *(a1 + 8) = (v6 >> 31) ^ v6;
      *(a1 + 40) = *(a2 + 40);
      v7 = *(a2 + 48);
      if (*(a1 + 48) == 1)
      {
        goto LABEL_27;
      }
    }

    if (v7)
    {
      *(a1 + 52) = *(a2 + 52);
      *(a1 + 48) = 1;
    }

    goto LABEL_30;
  }

  if (v3 < 0)
  {
    sub_100131328(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    sub_100131328(a1 + 8, a2 + 8);
  }

  return a1;
}

uint64_t sub_100204840(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v9 = *a1;
  v10 = v3;
  v11 = a2;
  v12 = sub_100204950;
  v4 = (v9 + 2);
  v5 = *v9;
  if (v5 == v5 >> 31)
  {
    return sub_100204954(&v9, v4);
  }

  if ((v5 & 0x80000000) == 0)
  {
    sub_100204AE0();
  }

  v7 = *v4;
  *v4 = 0;
  result = sub_100131324(v4, a2);
  *v9 = v10;
  if (v7)
  {
    v8 = *(*v7 + 8);

    return v8(v7);
  }

  return result;
}

void sub_100204928(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_begin_catch(a1);
  *(a9 + 8) = v9;
  __cxa_rethrow();
}

uint64_t sub_100204954(uint64_t a1, uint64_t a2)
{
  if (*a2 >> 31 != *a2)
  {
    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
    v3 = *a2 >> 31;
  }

  if (*(a2 + 40))
  {
    v4 = *(a2 + 44);
    v5 = *(a2 + 48);
    v6 = *(a2 + 64);
    v12 = *(a2 + 80);
    *(a2 + 40) = 0;
  }

  else
  {
    v7 = *(a2 + 48);
    v8 = *(a2 + 64);
    v13 = *(a2 + 80);
  }

  v9 = *(a2 + 8);
  v10 = *(a2 + 32);
  result = (*(a1 + 24))(*a1 + 8, *(a1 + 16));
  **a1 = *(a1 + 8);
  return result;
}

void sub_100204A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, int a11, uint64_t a12, int a13)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v19 = *v13;
    v20 = v15 >> 31;
    *(*v13 + 16) = v17;
    if (v15 >> 31 == v15)
    {
      v20 = v15;
    }

    else
    {
      *(v19 + 24) = a12;
      *(v19 + 32) = a13;
    }

    *(v19 + 8) = v20 ^ v15;
    *(v19 + 40) = v18;
    *(v19 + 48) = 0;
    if (v14)
    {
      *(v19 + 52) = v16;
      *(v19 + 48) = 1;
    }

    *(v19 + 56) = a9;
    *(v19 + 72) = a10;
    *(v19 + 88) = a11;
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100204BAC(void *a1)
{
  __cxa_begin_catch(a1);
  v3 = *v2;
  *(v3 + 8) = v1;
  *v3 ^= ~(*v3 >> 31);
  __cxa_rethrow();
}

uint64_t *sub_100204BFC(void *a1, uint64_t a2)
{
  v26 = &v25;
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
    v5 = sub_1001FA420(&v26, (a2 + 8));
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
  if (!v9 || (v10 = *v9) == 0)
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
        v16 = v10[1];
        if (v16 == v5)
        {
          if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12 && v10[3] == v14)
          {
            return v10;
          }
        }

        else if ((v16 & v15) != v8)
        {
          goto LABEL_58;
        }

        v10 = *v10;
        if (!v10)
        {
          goto LABEL_58;
        }
      }
    }

    while (1)
    {
      v17 = v10[1];
      if (v17 == v5)
      {
        if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12)
        {
          v18 = v10[3] == *v4 && v10[4] == *(v4 + 8);
          if (v18 && *(v10 + 10) == *(v4 + 16))
          {
            return v10;
          }
        }
      }

      else if ((v17 & v15) != v8)
      {
        goto LABEL_58;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_58;
      }
    }
  }

  if (v13)
  {
    while (1)
    {
      v20 = v10[1];
      if (v20 == v5)
      {
        if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12 && v10[3] == v14)
        {
          return v10;
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

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_58;
      }
    }
  }

  while (1)
  {
    v21 = v10[1];
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
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_58;
    }
  }

  if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) != v12)
  {
    goto LABEL_44;
  }

  v22 = v10[3] == *v4 && v10[4] == *(v4 + 8);
  if (!v22 || *(v10 + 10) != *(v4 + 16))
  {
    goto LABEL_44;
  }

  return v10;
}

uint64_t sub_100205090(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x4EC4EC4EC4EC4EC5 * ((v9 - v10) >> 4) >= a5)
    {
      v15 = v10 - a2;
      if (0x4EC4EC4EC4EC4EC5 * ((v10 - a2) >> 4) >= a5)
      {
        v27 = 208 * a5;
        sub_10020557C(a1, a2, a1[1], a2 + 208 * a5);
        v28 = 0;
        v29 = v27 + v7;
        do
        {
          v31 = v7 + v28;
          v32 = *(v5 + v28);
          v33 = *(v7 + v28);
          if (v32 == v33)
          {
            v34 = v5 + v28;
            if (v32 == v32 >> 31)
            {
              *(v34 + 8) = *(v31 + 8);
            }

            else
            {
              v36 = *(v31 + 8);
              *(v34 + 24) = *(v31 + 24);
              *(v34 + 8) = v36;
            }
          }

          else
          {
            v35 = v5 + v28;
            if (v33 >> 31 == v33)
            {
              *(v35 + 8) = *(v31 + 8);
            }

            else
            {
              v30 = *(v31 + 8);
              *(v35 + 24) = *(v31 + 24);
              *(v35 + 8) = v30;
            }

            *(v5 + v28) = (v33 >> 31) ^ v33;
          }

          sub_1002044C0(v5 + v28 + 32, v31 + 32);
          v28 += 208;
        }

        while (v31 + 208 != v29);
      }

      else
      {
        v17 = v15 + a3;
        v63 = a1[1];
        v18 = v63;
        if (v15 + a3 != a4)
        {
          v44 = (v17 + 88);
          v18 = a1[1];
          do
          {
            v49 = *(v44 - 22);
            v50 = v44 - 5;
            if (v49 == v49 >> 31)
            {
              *(v18 + 8) = *v50;
              v51 = v49;
            }

            else
            {
              v52 = *v50;
              *(v18 + 24) = *(v44 - 16);
              *(v18 + 8) = v52;
              v51 = *(v44 - 22);
              v49 = v51 >> 31;
            }

            *v18 = v51 ^ v49;
            v53 = *(v44 - 14);
            v54 = (v44 - 3);
            if (v53 == v53 >> 31)
            {
              v55 = *(v44 - 12);
              v56 = v44 - 5;
              if (v55 == v55 >> 31)
              {
                *(v18 + 48) = *v56;
                v57 = v55;
              }

              else
              {
                v59 = *v56;
                *(v18 + 64) = *(v44 - 6);
                *(v18 + 48) = v59;
                v57 = *v54;
                v55 = v57 >> 31;
              }

              *(v18 + 40) = v57 ^ v55;
              *(v18 + 72) = *(v44 - 2);
              *(v18 + 80) = 0;
              if (*(v44 - 8) == 1)
              {
                *(v18 + 84) = *(v44 - 1);
                *(v18 + 80) = 1;
              }

              v45 = *v44;
              v46 = v44[1];
              *(v18 + 120) = *(v44 + 8);
              *(v18 + 104) = v46;
              *(v18 + 88) = v45;
              v47 = v18;
            }

            else
            {
              if (v53 >= 0)
              {
                v58 = v44 - 3;
              }

              else
              {
                v58 = *v54;
              }

              sub_100131324(v18 + 40, v58);
              v47 = v63;
            }

            *(v18 + 32) = *(v44 - 14) ^ (*(v44 - 14) >> 31);
            v18 = v47 + 208;
            v63 = v47 + 208;
            v48 = v44 + 120;
            v44 += 13;
          }

          while (v48 != a4);
        }

        a1[1] = v18;
        if (v15 >= 1)
        {
          sub_10020557C(a1, v5, v10, v5 + 208 * a5);
          v19 = 0;
          do
          {
            v21 = v7 + v19;
            v22 = *(v5 + v19);
            v23 = *(v7 + v19);
            if (v22 == v23)
            {
              v24 = v5 + v19;
              if (v22 == v22 >> 31)
              {
                *(v24 + 8) = *(v21 + 8);
              }

              else
              {
                v26 = *(v21 + 8);
                *(v24 + 24) = *(v21 + 24);
                *(v24 + 8) = v26;
              }
            }

            else
            {
              v25 = v5 + v19;
              if (v23 >> 31 == v23)
              {
                *(v25 + 8) = *(v21 + 8);
              }

              else
              {
                v20 = *(v21 + 8);
                *(v25 + 24) = *(v21 + 24);
                *(v25 + 8) = v20;
              }

              *(v5 + v19) = (v23 >> 31) ^ v23;
            }

            sub_1002044C0(v5 + v19 + 32, v21 + 32);
            v19 += 208;
          }

          while (v21 + 208 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x4EC4EC4EC4EC4EC5 * ((v10 - *a1) >> 4);
      if (v12 > 0x13B13B13B13B13BLL)
      {
        sub_10000FC84();
      }

      v13 = 0x4EC4EC4EC4EC4EC5 * ((v9 - v11) >> 4);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x9D89D89D89D89DLL)
      {
        v14 = 0x13B13B13B13B13BLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0x13B13B13B13B13BLL)
        {
          operator new();
        }

        sub_10000D444();
      }

      v37 = 16 * ((a2 - v11) >> 4);
      v60 = v37;
      v38 = 208 * a5;
      v39 = v37 + 208 * a5;
      do
      {
        sub_1002057C0(a1, v37, v7);
        v37 += 208;
        v7 += 208;
        v38 -= 208;
      }

      while (v38);
      sub_1001D03F8(a1, v5, a1[1], v39);
      v40 = *a1;
      v61 = v39 + a1[1] - v5;
      a1[1] = v5;
      v41 = v60 + v40 - v5;
      sub_1001D03F8(a1, v40, v5, v41);
      v42 = *a1;
      *a1 = v41;
      a1[1] = v61;
      a1[2] = 0;
      if (v42)
      {
        operator delete(v42);
      }

      return v60;
    }
  }

  return v5;
}

void sub_100205538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D06E4(va);
  _Unwind_Resume(a1);
}

void sub_10020554C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001CFDE4(va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

void sub_100205564(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D06E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10020557C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(result + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = 0;
    do
    {
      v13 = v6 + v10;
      v15 = (v7 + v10 + 8);
      v14 = *(v7 + v10);
      if (v14 == v14 >> 31)
      {
        *(v13 + 8) = *v15;
        v16 = v14;
      }

      else
      {
        v17 = *v15;
        *(v13 + 24) = *(v7 + v10 + 24);
        *(v13 + 8) = v17;
        v16 = *(v7 + v10);
        v14 = v16 >> 31;
      }

      v18 = v16 ^ v14;
      v19 = v6 + v10;
      *(v6 + v10) = v18;
      result = v6 + v10 + 40;
      v20 = v7 + v10;
      v21 = *(v7 + v10 + 32);
      v22 = (v7 + v10 + 40);
      if (v21 == v21 >> 31)
      {
        v23 = *v22;
        if (v23 == v23 >> 31)
        {
          *(v19 + 48) = *(v20 + 48);
          v24 = v23;
        }

        else
        {
          v27 = *(v20 + 48);
          *(v19 + 64) = *(v20 + 64);
          *(v19 + 48) = v27;
          v24 = *v22;
          v23 = *v22 >> 31;
        }

        *result = v24 ^ v23;
        v28 = v6 + v10;
        v29 = v7 + v10;
        *(v28 + 72) = *(v7 + v10 + 72);
        *(v28 + 80) = 0;
        if (*(v7 + v10 + 80) == 1)
        {
          *(v28 + 84) = *(v29 + 84);
          *(v28 + 80) = 1;
        }

        v11 = *(v29 + 88);
        v12 = *(v29 + 104);
        *(v28 + 120) = *(v29 + 120);
        *(v28 + 104) = v12;
        *(v28 + 88) = v11;
      }

      else
      {
        v25 = *v22;
        if (v21 >= 0)
        {
          v26 = v7 + v10 + 40;
        }

        else
        {
          v26 = *v22;
        }

        result = sub_100131324(result, v26);
      }

      *(v6 + v10 + 32) = *(v20 + 32) ^ (*(v20 + 32) >> 31);
      v10 += 208;
    }

    while (v7 + v10 < a3);
    v8 = v6 + v10;
  }

  *(v5 + 8) = v8;
  if (v6 != a4)
  {
    v30 = 0;
    v31 = a4 - v6;
    do
    {
      v33 = v7 + v30;
      v34 = v6 + v30;
      v35 = *(v6 + v30 - 208);
      v36 = *(v7 + v30 - 208);
      if (v35 == v36)
      {
        v37 = (v33 - 200);
        v38 = v34 - 200;
        if (v35 == v35 >> 31)
        {
          *v38 = *v37;
        }

        else
        {
          v41 = *v37;
          *(v38 + 16) = *(v33 - 184);
          *v38 = v41;
        }
      }

      else
      {
        v39 = (v33 - 200);
        v40 = (v34 - 200);
        if (v36 >> 31 == v36)
        {
          *v40 = *v39;
        }

        else
        {
          v32 = *v39;
          *(v34 - 184) = *(v39 + 4);
          *v40 = v32;
        }

        *(v34 - 208) = (v36 >> 31) ^ v36;
      }

      result = sub_1002058E8(v6 + v30 - 176, v7 + v30 - 176);
      v30 -= 208;
    }

    while (v31 != v30);
  }

  return result;
}

__n128 sub_1002057C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a3 + 8);
  v5 = *a3;
  if (v5 == v5 >> 31)
  {
    *(a2 + 8) = *v6;
    v7 = v5;
  }

  else
  {
    v8 = *v6;
    *(a2 + 24) = *(a3 + 24);
    *(a2 + 8) = v8;
    v7 = *a3;
    v5 = *a3 >> 31;
  }

  *a2 = v7 ^ v5;
  v9 = a2 + 40;
  v10 = *(a3 + 32);
  v11 = (a3 + 40);
  if (v10 == v10 >> 31)
  {
    v12 = *(a3 + 40);
    if (v12 == v12 >> 31)
    {
      *(a2 + 48) = *(a3 + 48);
      v13 = v12;
    }

    else
    {
      v16 = *(a3 + 48);
      *(a2 + 64) = *(a3 + 64);
      *(a2 + 48) = v16;
      v13 = *v11;
      v12 = v13 >> 31;
    }

    *(a2 + 40) = v13 ^ v12;
    *(a2 + 72) = *(a3 + 72);
    *(a2 + 80) = 0;
    if (*(a3 + 80) == 1)
    {
      *(a2 + 84) = *(a3 + 84);
      *(a2 + 80) = 1;
    }

    result = *(a3 + 88);
    v17 = *(a3 + 104);
    *(a2 + 120) = *(a3 + 120);
    *(a2 + 104) = v17;
    *(a2 + 88) = result;
    *(a2 + 32) = *(a3 + 32) ^ (*(a3 + 32) >> 31);
  }

  else
  {
    if (v10 >= 0)
    {
      v14 = a3 + 40;
    }

    else
    {
      v14 = *v11;
    }

    sub_100131324(v9, v14);
    *(a2 + 32) = *(a3 + 32) ^ (*(a3 + 32) >> 31);
  }

  return result;
}

uint64_t sub_1002058E8(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result != *a2)
  {
    v7 = (v3 >> 31) ^ v3;
    v29 = result;
    v30 = v7;
    v8 = (a2 + 8);
    if (v3 >> 31 != v3)
    {
      if (v3 < 0)
      {
        v31 = result;
        v32 = (v3 >> 31) ^ v3;
        v33 = a2 + 8;
        v34 = sub_100204BF4;
        if (v2 == v2 >> 31)
        {
          v17 = result;
          sub_100204954(&v31, result + 8);
          return v17;
        }

        else
        {
          if ((v2 & 0x80000000) == 0)
          {
            sub_100204AE0();
          }

          v27 = *(result + 8);
          *(result + 8) = 0;
          *result = v7;
          if (v27)
          {
            v28 = result;
            (*(*v27 + 8))(v27);
            return v28;
          }
        }
      }

      else
      {
        v12 = result;
        sub_100204840(&v29, a2 + 8);
        return v12;
      }

      return result;
    }

    if (v2 == v2 >> 31)
    {
      if (*(result + 48) == 1)
      {
        *(result + 48) = 0;
      }

      goto LABEL_36;
    }

    v13 = *(result + 8);
    if (v2 < 0)
    {
      if (!v13)
      {
LABEL_36:
        v22 = *(a2 + 8);
        if (v22 == v22 >> 31)
        {
          *(result + 16) = *(a2 + 16);
          v23 = v22;
        }

        else
        {
          v24 = *(a2 + 16);
          *(result + 32) = *(a2 + 32);
          *(result + 16) = v24;
          v23 = *v8;
          v22 = *v8 >> 31;
        }

        *(result + 8) = v23 ^ v22;
        *(result + 40) = *(a2 + 40);
        *(result + 48) = 0;
        if (*(a2 + 48) == 1)
        {
          *(result + 52) = *(a2 + 52);
          *(result + 48) = 1;
        }

        v25 = *(a2 + 56);
        v26 = *(a2 + 72);
        *(result + 88) = *(a2 + 88);
        *(result + 72) = v26;
        *(result + 56) = v25;
        *result = v7;
        return result;
      }

      v15 = result;
      v16 = a2;
      (*(*v13 + 8))(*(result + 8));
    }

    else
    {
      v14 = *(result + 8);
      v15 = result;
      v16 = a2;
      (*v13)(result + 8);
    }

    a2 = v16;
    result = v15;
    goto LABEL_36;
  }

  if (v2 == v2 >> 31)
  {
    v4 = *(result + 8);
    v5 = *(a2 + 8);
    if (v4 == v5)
    {
      if (v4 == v4 >> 31)
      {
        *(result + 16) = *(a2 + 16);
        *(result + 40) = *(a2 + 40);
        v6 = *(a2 + 48);
        if (*(result + 48) != 1)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v18 = *(a2 + 16);
        *(result + 32) = *(a2 + 32);
        *(result + 16) = v18;
        *(result + 40) = *(a2 + 40);
        v6 = *(a2 + 48);
        if (*(result + 48) != 1)
        {
LABEL_6:
          if (v6)
          {
            *(result + 52) = *(a2 + 52);
            *(result + 48) = 1;
          }

LABEL_32:
          v20 = *(a2 + 56);
          v21 = *(a2 + 72);
          *(result + 88) = *(a2 + 88);
          *(result + 72) = v21;
          *(result + 56) = v20;
          return result;
        }
      }
    }

    else
    {
      if (v5 >> 31 == v5)
      {
        *(result + 16) = *(a2 + 16);
      }

      else
      {
        v19 = *(a2 + 16);
        *(result + 32) = *(a2 + 32);
        *(result + 16) = v19;
      }

      *(result + 8) = (v5 >> 31) ^ v5;
      *(result + 40) = *(a2 + 40);
      v6 = *(a2 + 48);
      if (*(result + 48) != 1)
      {
        goto LABEL_6;
      }
    }

    if (v6)
    {
      *(result + 52) = *(a2 + 52);
    }

    else
    {
      *(result + 48) = 0;
    }

    goto LABEL_32;
  }

  if (v2 < 0)
  {
    v11 = *(a2 + 8);
    v9 = result;
    v10 = *(result + 8);
  }

  else
  {
    v9 = result;
    v10 = result + 8;
    v11 = a2 + 8;
  }

  sub_100131328(v10, v11);
  return v9;
}

uint64_t *sub_100205CA0(void *a1, uint64_t a2)
{
  v26 = &v25;
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
    v5 = sub_1001FA420(&v26, (a2 + 8));
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
  if (!v9 || (v10 = *v9) == 0)
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
        v16 = v10[1];
        if (v16 == v5)
        {
          if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12 && v10[3] == v14)
          {
            return v10;
          }
        }

        else if ((v16 & v15) != v8)
        {
          goto LABEL_58;
        }

        v10 = *v10;
        if (!v10)
        {
          goto LABEL_58;
        }
      }
    }

    while (1)
    {
      v17 = v10[1];
      if (v17 == v5)
      {
        if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12)
        {
          v18 = v10[3] == *v4 && v10[4] == *(v4 + 8);
          if (v18 && *(v10 + 10) == *(v4 + 16))
          {
            return v10;
          }
        }
      }

      else if ((v17 & v15) != v8)
      {
        goto LABEL_58;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_58;
      }
    }
  }

  if (v13)
  {
    while (1)
    {
      v20 = v10[1];
      if (v20 == v5)
      {
        if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12 && v10[3] == v14)
        {
          return v10;
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

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_58;
      }
    }
  }

  while (1)
  {
    v21 = v10[1];
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
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_58;
    }
  }

  if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) != v12)
  {
    goto LABEL_44;
  }

  v22 = v10[3] == *v4 && v10[4] == *(v4 + 8);
  if (!v22 || *(v10 + 10) != *(v4 + 16))
  {
    goto LABEL_44;
  }

  return v10;
}

void *sub_100206148(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x49;
  v3 = v1 - 73;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_1001C7D6C(a1, &v11);
}

void sub_1002064B8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_100206510(void *a1, int *a2)
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

void sub_10020685C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D118C(va);
  _Unwind_Resume(a1);
}

void sub_100206870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D118C(va);
  _Unwind_Resume(a1);
}

void sub_100206884()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002068F4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100206964(uint64_t a1, uint64_t a2)
{
  v4 = sub_100326F24();
  sub_100131324(v4 + 40, a2);
  *(a1 + 32) = 1;
  return a1;
}

void sub_1002069A4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    while (1)
    {
      v6 = *v4;
      v7 = *v4;
      if (*v4 >> 31 != *v4)
      {
        v41 = *(v4 + 16);
        v42 = *(v4 + 24);
        v7 = v6 >> 31;
      }

      v8 = *(v4 + 40);
      if (v8 == 1)
      {
        v2 = *(v4 + 44);
      }

      v9 = *(v4 + 8);
      v10 = v7 ^ v6;
      v11 = *(v4 + 32);
      v25 = *(v4 + 48);
      v26 = *(v4 + 64);
      v27 = *(v4 + 80);
      *&v29 = v9;
      if (v10 >> 31 == v10)
      {
        break;
      }

      *(&v29 + 1) = v41;
      v30 = v42;
      v12 = (v10 >> 31) ^ v10;
      *&v33 = v9;
      *(&v33 + 1) = v41;
      v34 = v42;
      v28 = v12;
      LODWORD(v32) = v12;
      v35 = v11;
      v36 = 0;
      if (v8)
      {
        goto LABEL_11;
      }

LABEL_12:
      v38 = v25;
      v39 = v26;
      v40 = v27;
      v31 = 0;
      v13 = a2[1];
      if (v13 >= a2[2])
      {
        v17.n128_f64[0] = sub_100206CEC(a2, &v28);
        a2[1] = v18;
        v19 = v31;
        if (v31 != v31 >> 31)
        {
          goto LABEL_31;
        }

        goto LABEL_4;
      }

      if (v12 >> 31 == v12)
      {
        v14 = 0;
        *(v13 + 8) = v9;
        *v13 = 0;
        v15 = 0;
LABEL_24:
        v21 = v32;
        v22 = v32 >> 31;
        if (v32 >> 31 == v32)
        {
          *(v13 + 48) = v33;
          v22 = v21;
        }

        else
        {
          v23 = v33;
          *(v13 + 64) = v34;
          *(v13 + 48) = v23;
        }

        *(v13 + 40) = v22 ^ v21;
        *(v13 + 72) = v35;
        *(v13 + 80) = 0;
        if (v36 == 1)
        {
          *(v13 + 84) = v37;
          *(v13 + 80) = 1;
        }

        v17 = v38;
        v24 = v39;
        *(v13 + 120) = v40;
        *(v13 + 104) = v24;
        *(v13 + 88) = v17;
        goto LABEL_30;
      }

      v20 = v29;
      *(v13 + 24) = v30;
      *(v13 + 8) = v20;
      v14 = v31;
      *v13 = (v12 >> 31) ^ v12;
      v15 = v14 >> 31;
      if (v14 >> 31 == v14)
      {
        goto LABEL_24;
      }

      if (v14 >= 0)
      {
        v16 = &v32;
      }

      else
      {
        v16 = v32;
      }

      sub_100131324(v13 + 40, v16);
      v14 = v31;
      v15 = v31 >> 31;
LABEL_30:
      *(v13 + 32) = v15 ^ v14;
      a2[1] = v13 + 208;
      v19 = v31;
      if (v31 != v31 >> 31)
      {
LABEL_31:
        if (v19 < 0)
        {
          if (v32)
          {
            (*(*v32 + 8))(v17);
          }
        }

        else
        {
          (*v32)(&v32);
        }
      }

LABEL_4:
      v4 += 88;
      if (v4 == v5)
      {
        return;
      }
    }

    v12 = 0;
    *&v33 = v9;
    v28 = 0;
    LODWORD(v32) = 0;
    v35 = v11;
    v36 = 0;
    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_11:
    v37 = v2;
    v36 = 1;
    goto LABEL_12;
  }
}

void sub_100206CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v6 + 8) = v7;
  sub_1001D8438(va);
  sub_1001CE6F4(v6);
  _Unwind_Resume(a1);
}

void sub_100206CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1001D8438(va);
  sub_1001CE6F4(v6);
  _Unwind_Resume(a1);
}

double sub_100206CEC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x13B13B13B13B13BLL)
  {
    sub_10000FC84();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 4);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 4)) >= 0x9D89D89D89D89DLL)
  {
    v5 = 0x13B13B13B13B13BLL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x13B13B13B13B13BLL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *(&v21 + 1) = 0;
  v8 = (a2 + 8);
  v7 = *a2;
  v9 = *a2 >> 31;
  if (v7 >> 31 == v7)
  {
    *(16 * ((a1[1] - *a1) >> 4) + 8) = *v8;
    v9 = v7;
  }

  else
  {
    *(16 * ((a1[1] - *a1) >> 4) + 8) = *v8;
    *(v6 + 24) = *(a2 + 24);
  }

  *v6 = v9 ^ v7;
  v10 = *(a2 + 32);
  v11 = v10 >> 31;
  if (v10 >> 31 == v10)
  {
    v12 = *(a2 + 40);
    v13 = v12 >> 31;
    if (v12 >> 31 == v12)
    {
      *(v6 + 48) = *(a2 + 48);
      v13 = v12;
    }

    else
    {
      *(v6 + 48) = *(a2 + 48);
      *(v6 + 64) = *(a2 + 64);
    }

    *(v6 + 40) = v13 ^ v12;
    *(v6 + 72) = *(a2 + 72);
    *(v6 + 80) = 0;
    if (*(a2 + 80) == 1)
    {
      *(v6 + 84) = *(a2 + 84);
      *(v6 + 80) = 1;
    }

    *(v6 + 88) = *(a2 + 88);
    *(v6 + 104) = *(a2 + 104);
    *(v6 + 120) = *(a2 + 120);
    v15 = v6;
    v16 = v6;
  }

  else
  {
    if (v10 >= 0)
    {
      v14 = a2 + 40;
    }

    else
    {
      v14 = *(a2 + 40);
    }

    sub_100131324(v6 + 40, v14);
    v10 = *(a2 + 32);
    v15 = v6;
    v16 = v6;
    v11 = v10 >> 31;
  }

  *(v6 + 32) = v11 ^ v10;
  *&v21 = v16 + 208;
  v17 = a1[1];
  v18 = v15 + *a1 - v17;
  sub_1001D03F8(a1, *a1, v17, v18);
  v19 = *a1;
  *a1 = v18;
  result = *&v21;
  *(a1 + 1) = v21;
  if (v19)
  {
    operator delete(v19);
    return *&v21;
  }

  return result;
}

void sub_100206F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001D06E4(va);
  _Unwind_Resume(a1);
}

void sub_100206F34()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100206FA4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100207014(uint64_t a1, unint64_t a2)
{
  *a1 = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_100258440(__p, 0);
  sub_10020998C((a1 + 112), a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  return a1;
}

void sub_1002070E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    if (*(v11 + 80) != 1)
    {
LABEL_3:
      sub_100207200(v11);
      _Unwind_Resume(a1);
    }
  }

  else if (*(v11 + 80) != 1)
  {
    goto LABEL_3;
  }

  v13 = *(v11 + 88);
  if (v13)
  {
    *(v11 + 96) = v13;
    operator delete(v13);
  }

  *(v11 + 80) = 0;
  sub_100207200(v11);
  _Unwind_Resume(a1);
}

void **sub_100207188(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_100207200(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 48);
    if (v1)
    {
      *(result + 56) = v1;
      v2 = result;
      operator delete(v1);
      result = v2;
    }

    v3 = *(result + 8);
    if (v3)
    {
      *(result + 16) = v3;
      v4 = result;
      operator delete(v3);
      result = v4;
    }

    *result = 0;
  }

  return result;
}

uint64_t sub_10020726C(uint64_t a1, unint64_t a2, void *a3)
{
  *a1 = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v5 = a3[1];
  if (v5 != *a3)
  {
    if (((v5 - *a3) & 0x8000000000000000) == 0)
    {
      v6 = v5 - *a3;
      operator new();
    }

    sub_10000FC84();
  }

  *(a1 + 80) = 1;
  sub_100258440(__p, 0);
  sub_10020998C((a1 + 112), a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  return a1;
}

void sub_1002073A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v11 + 80) == 1)
  {
    v14 = *v12;
    if (*v12)
    {
      *(v11 + 96) = v14;
      operator delete(v14);
    }

    *(v11 + 80) = 0;
    sub_100207200(v11);
    _Unwind_Resume(a1);
  }

  sub_100207200(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_100207434(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  if (*a3 == 1)
  {
    sub_10020958C(a1 + 8, a3 + 8);
    *a1 = 1;
  }

  *(a1 + 72) = *(a3 + 72);
  *(a1 + 80) = 0;
  sub_100258440(__p, 0);
  sub_10020998C((a1 + 112), a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  return a1;
}

void sub_100207530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    if (*(v11 + 80) != 1)
    {
LABEL_3:
      sub_100207200(v11);
      _Unwind_Resume(a1);
    }
  }

  else if (*(v11 + 80) != 1)
  {
    goto LABEL_3;
  }

  v13 = *(v11 + 88);
  if (v13)
  {
    *(v11 + 96) = v13;
    operator delete(v13);
  }

  *(v11 + 80) = 0;
  sub_100207200(v11);
  _Unwind_Resume(a1);
}

void sub_1002075D4(_BYTE *a1)
{
  if (*a1 == 1)
  {
    sub_1002CA108((a1 + 8));
  }
}

uint64_t sub_1002075EC(_BYTE *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = (a1 + 8);
  if (v4 == 1)
  {

    return sub_1002C9258(v3, a2);
  }

  else
  {
    result = sub_10020958C(v3, a2);
    *a1 = 1;
  }

  return result;
}

void sub_100207640(uint64_t a1, double a2)
{
  if (*a1 != 1)
  {
    goto LABEL_13;
  }

  sub_1002C9CC0(a1, 0, buf);
  v4 = *buf;
  v3 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v5 = a2;
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (*(a1 + 80))
    {
      return;
    }

    if (qword_10045B050 == -1)
    {
      v14 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        return;
      }
    }

    else
    {
      sub_100385C6C();
      v14 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        return;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "WARNING: MultivariateGaussian#scale ignored; covariance is already infinite", buf, 2u);
    return;
  }

  v5 = a2;
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_5:
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v7 != v6)
  {
    v8 = v6 - v7 - 8;
    v9 = *(a1 + 48);
    if (v8 < 0x18)
    {
      goto LABEL_21;
    }

    v10 = (v8 >> 3) + 1;
    v9 = &v7->f64[v10 & 0x3FFFFFFFFFFFFFFCLL];
    v11 = v7 + 1;
    v12 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v13 = vmulq_n_f64(*v11, v5);
      v11[-1] = vmulq_n_f64(v11[-1], v5);
      *v11 = v13;
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_21:
      do
      {
        *v9 = *v9 * v5;
        ++v9;
      }

      while (v9 != v6);
    }
  }
}

double sub_1002077F4(uint64_t a1)
{
  v1 = *(a1 + 72);
  result = 0.0;
  if (v1 != 0.0)
  {
    sub_1002C9CC0(a1, 0, &v5);
    if (v5)
    {
      result = v1 * (*(*v5 + 48))(v5);
      v3 = v6;
      if (!v6)
      {
        return result;
      }
    }

    else
    {
      result = 0.0;
      v3 = v6;
      if (!v6)
      {
        return result;
      }
    }

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

void sub_1002078F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = (*(a1 + 144) - *(a1 + 136)) >> 3;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 4);
  v20 = v9;
  v21 = v8;
  if (v8 < v9)
  {
    sub_1000474A4(v24, "");
    sub_10017F550("We have {} particle weights but {} onFloorParticles", &buf);
    sub_100181374(&v21, &v27);
    sub_100181374(&v20, &v28);
    sub_1000E661C(v24, &buf, 3);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_24:
        if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_30;
      }
    }

    else if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_31:
      operator delete(v24[0]);
LABEL_26:
      sub_10003F5D0(&v22);
    }

LABEL_30:
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  v10 = (a1 + 112);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120) - *(a1 + 112)) >> 3) < v9)
  {
    sub_1003846E0(v24, &buf.__r_.__value_.__l.__data_);
    sub_10003F5D0(v24);
  }

  sub_1002CA03C(a1, (*(a1 + 80) & 1) == 0, &v22);
  if (sub_100207D8C(a1, a2, v22, a3) == -INFINITY)
  {
    if (qword_10045B050 != -1)
    {
      sub_100385C6C();
    }

    v11 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "supposedly the java code checked for -inf.  seems unlikely", &buf, 2u);
    }

    v12 = sub_100258548(*v10);
    sub_100258440(v24, v12);
    LODWORD(v21) = 1;
    sub_1002B0B24(&buf, v12, &v21);
    sub_1002C9254(a4, v24, &buf);
    if (buf.__r_.__value_.__r.__words[2])
    {
      v27.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__r.__words[2];
      operator delete(buf.__r_.__value_.__r.__words[2]);
    }

    v13 = v24[0];
    if (v24[0])
    {
      v24[1] = v24[0];
LABEL_17:
      operator delete(v13);
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v15 = *(a1 + 136);
    v14 = *(a1 + 144);
    if (v14 != v15)
    {
      if (((v14 - v15) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }

    sub_1002C92BC(v10, &v17, 1, 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 4), a4);
    v13 = v17;
    if (v17)
    {
      v18 = v17;
      goto LABEL_17;
    }
  }

  v16 = v23;
  if (v23)
  {
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }
}

void sub_100207C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_100207D8C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = *a4;
  v8 = a4[1];
  v10 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - *a4) >> 4);
  if (v10 > (a1[18] - a1[17]) >> 3)
  {
    sub_1000474A4(v27, "");
    sub_10020A050("you passed in more particles than the max number you set this up with", &v28);
    sub_100382FC4(&v28, __p, v27);
    sub_10003F5D0(__p);
  }

  sub_100258440(v27, 3uLL);
  if (v8 == v9)
  {
    v15 = -INFINITY;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (v10 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v10;
    }

    v15 = -INFINITY;
    do
    {
      v16 = *a4;
      sub_1001E8C4C((*a4 + v12), a2, (a1[14] + v11));
      v17 = sub_10021569C(v16 + v12);
      sub_1002584E4(v27, a1[14] + v11);
      v18 = v17 + (*(*a3 + 24))(a3, v27);
      *(a1[17] + 8 * v13) = v18;
      if (v15 < v18)
      {
        v15 = v18;
      }

      ++v13;
      v12 += 80;
      v11 += 24;
    }

    while (v14 != v13);
  }

  v19 = a1[14];
  v20 = a1[15];
  if (v10 != 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3))
  {
    sub_100258440(__p, 0);
    v21 = v19 + 24 * v10;
    if (v20 - v21 >= 1)
    {
      v22 = (v20 - v21) / 0x18uLL + 1;
      do
      {
        sub_1002584E4(v21, __p);
        v21 += 24;
        --v22;
      }

      while (v22 > 1);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v23 = (a1[17] + 8 * v10);
    v24 = a1[18] - v23;
    if (v24 >= 1)
    {
      memset_pattern16(v23, &unk_1003D9110, v24);
    }
  }

  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  return v15;
}

void sub_100208000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100208084(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1002C9CC0(a1, (*(a1 + 80) & 1) == 0, &v13);
  v15 = v13;
  v16 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v14;
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  (*(*v15 + 40))(v15);
  v17[0] = 0;
  sub_1001E4688(a2, &v15, a3, v17, &v13);
  if (v17[0] == 1 && v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  sub_1001E4E08(&v13, *(a1 + 72));
  v9 = sub_1001E5038(&v13);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v10 = v9[1];
  if (v10 != *v9)
  {
    if (((v10 - *v9) & 0x8000000000000000) == 0)
    {
      v11 = v10 - *v9;
      operator new();
    }

    sub_10000FC84();
  }

  sub_100209450(&v13);
  v12 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_100208280(_Unwind_Exception *a1)
{
  if (*(v1 - 88) == 1)
  {
    sub_100385C94(v1 - 88);
  }

  sub_1001E4CD4(v1 - 104);
  _Unwind_Resume(a1);
}

double sub_1002082D4(uint64_t a1, void *a2, uint64_t a3)
{
  v55 = (a1 + 80);
  sub_1002C9CC0(a1, (*(a1 + 80) & 1) == 0, v62);
  v60 = *v62;
  if (*&v62[8])
  {
    atomic_fetch_add_explicit((*&v62[8] + 8), 1uLL, memory_order_relaxed);
    v6 = *&v62[8];
    if (*&v62[8])
    {
      if (!atomic_fetch_add((*&v62[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        v7 = v60;
        if (v60)
        {
          goto LABEL_5;
        }

LABEL_59:
        v9 = 0.0;
        v52 = *(&v60 + 1);
        if (!*(&v60 + 1))
        {
          return v9;
        }

        goto LABEL_60;
      }
    }
  }

  v7 = v60;
  if (!v60)
  {
    goto LABEL_59;
  }

LABEL_5:
  (*(*v7 + 40))(v7);
  sub_1001E4688(a2, &v60, a3, v55, v59);
  if (sub_1001E5040(v59))
  {
    if (qword_10045B050 != -1)
    {
      sub_100385C6C();
    }

    v8 = qword_10045B058;
    v9 = 0.0;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      *v62 = 0;
      v10 = "Not enough precision contained in mode estimate, defining as 0.0 inlierConfidence.";
      v11 = v8;
      v12 = OS_LOG_TYPE_INFO;
      v13 = 2;
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  v14 = 0;
  v15 = 0.5;
  do
  {
    v9 = sub_1001E5088(v59, v15);
    if (v9 < 0.0)
    {
      v17 = *a2;
      if (*a1 == 1 && !sub_1002C9298(a1 + 8))
      {
        sub_1002B18B0(a1 + 32);
      }

      sub_10003BFA8(v62);
      sub_10003C2E4(v62, "Not possible. What happened here? prevGuess = ", 46);
      v18 = std::ostream::operator<<();
      sub_10003C2E4(v18, " bestGuess = ", 13);
      v19 = std::ostream::operator<<();
      sub_10003C2E4(v19, " | ", 3);
      sub_10003C2E4(v62, "getOutlierProbabilities = [", 27);
      v20 = sub_1001E4E00(v59);
      v21 = *v20;
      v22 = *(v20 + 8);
      if (*v20 != v22)
      {
        do
        {
          v23 = *v21;
          v24 = std::ostream::operator<<();
          sub_10003C2E4(v24, " ", 1);
          ++v21;
        }

        while (v21 != v22);
      }

      sub_10003C2E4(v62, "]  |  mode = ", 13);
      if (*a1 == 1)
      {
        v25 = sub_1002CA5C4(v62, (a1 + 8));
        sub_10003C2E4(v25, "  det(cov) = ", 13);
        v26 = std::ostream::operator<<();
      }

      else
      {
        v26 = sub_10003C2E4(v62, "not set   det(cov) = infinity", 29);
      }

      sub_10003C2E4(v26, " | ", 3);
      sub_10003C2E4(v62, "partition = ", 12);
      (*(*v60 + 32))(v60);
      v27 = std::ostream::operator<<();
      sub_10003C2E4(v27, " | ", 3);
      v28 = sub_10003C2E4(v62, "first particle = ", 17);
      sub_1001E8BE4(v17, a2[8], &v65);
      v29 = sub_100258A10(v28, &v65);
      sub_10003C2E4(v29, " | ", 3);
      if (v65)
      {
        *(&v65 + 1) = v65;
        operator delete(v65);
      }

      sub_10003C2E4(v62, "gaussian = ", 11);
      v30 = v60;
      sub_1001E8BE4(v17, a2[8], __p);
      (*(*v30 + 16))(v30, __p);
      v31 = std::ostream::operator<<();
      sub_10003C2E4(v31, " | ", 3);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*v55 == 1)
      {
        sub_10003C2E4(v62, "logPdf = [", 10);
        v32 = *(a1 + 88);
        for (i = *(a1 + 96); v32 != i; ++v32)
        {
          v34 = *v32;
          v35 = std::ostream::operator<<();
          sub_10003C2E4(v35, " ", 1);
        }

        v36 = sub_10003C2E4(v62, "]", 1);
        sub_10003C2E4(v36, " | ", 3);
        sub_10003C2E4(v62, "max(logPdf) = ", 14);
        v37 = *(a1 + 88);
        v38 = *(a1 + 96);
        if (v37 != v38)
        {
          v39 = v37 + 1;
          if (v37 + 1 != v38)
          {
            v40 = *v37;
            v41 = v37 + 1;
            do
            {
              v42 = *v41++;
              v43 = v42;
              if (v40 < v42)
              {
                v40 = v43;
                v37 = v39;
              }

              v39 = v41;
            }

            while (v41 != v38);
          }
        }

        v44 = *v37;
        v45 = std::ostream::operator<<();
        std::ios_base::getloc((v45 + *(*v45 - 24)));
        v46 = std::locale::use_facet(&v65, &std::ctype<char>::id);
        (v46->__vftable[2].~facet_0)(v46, 10);
        std::locale::~locale(&v65);
        std::ostream::put();
        std::ostream::flush();
      }

      else
      {
        v47 = sub_10003C2E4(v62, "logPdf = not set | max(logPdf) = not set", 40);
        std::ios_base::getloc((v47 + *(*v47 - 24)));
        v48 = std::locale::use_facet(&v65, &std::ctype<char>::id);
        (v48->__vftable[2].~facet_0)(v48, 10);
        std::locale::~locale(&v65);
        std::ostream::put();
        std::ostream::flush();
      }

      if (qword_10045B050 != -1)
      {
        sub_100385C6C();
      }

      v49 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        std::stringbuf::str();
        v50 = &v65;
        if (v66 < 0)
        {
          v50 = v65;
        }

        *buf = 136315138;
        *&buf[4] = v50;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
        if (SHIBYTE(v66) < 0)
        {
          operator delete(v65);
        }
      }

      std::stringbuf::str();
      v64 = 0;
      buf[0] = 0;
      if (SHIBYTE(v57) < 0)
      {
        sub_100003228(&v65, v56[0], v56[1]);
      }

      else
      {
        v65 = *v56;
        v66 = v57;
      }

      sub_1000E661C(buf, &v65, 1);
      if (SHIBYTE(v66) < 0)
      {
        operator delete(v65);
        if ((v64 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }
      }

      else if ((v64 & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

      operator delete(*buf);
LABEL_47:
      sub_10003F5D0(&v61);
    }

    ++v14;
    v16 = vabdd_f64(v15, v9);
    v15 = v9;
  }

  while (v16 > 0.01);
  if (qword_10045B050 != -1)
  {
    sub_100385C6C();
  }

  v51 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    *v62 = 134217984;
    *&v62[4] = v14;
    v10 = "computeInlierConfidence EM required %zu iterations";
    v11 = v51;
    v12 = OS_LOG_TYPE_DEBUG;
    v13 = 12;
LABEL_55:
    _os_log_impl(&_mh_execute_header, v11, v12, v10, v62, v13);
  }

LABEL_56:
  sub_100209450(v59);
  v52 = *(&v60 + 1);
  if (*(&v60 + 1))
  {
LABEL_60:
    if (!atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v52->__on_zero_shared)(v52);
      std::__shared_weak_count::__release_weak(v52);
    }
  }

  return v9;
}

void sub_100208C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49)
{
  sub_100209450(&a23);
  sub_1001E4CD4(&a41);
  _Unwind_Resume(a1);
}

void sub_100208D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    JUMPOUT(0x100208D8CLL);
  }

  JUMPOUT(0x100208DA0);
}

void sub_100208D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_10003C1C4(&a43);
  sub_100209450(&a20);
  sub_1001E4CD4(&a38);
  _Unwind_Resume(a1);
}

double sub_100208DC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100208E50(a1);
  if ((*a1 & 1) == 0)
  {
    sub_1003846E0(__p, &v6);
    sub_10003F5D0(__p);
  }

  sub_1001E8258((a1 + 8), a2);
  result = *(a1 + 72);
  *(a2 + 184) = result;
  return result;
}

void sub_100208E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100208E50(uint64_t a1)
{
  if (*(a1 + 72) == 0.0)
  {
    sub_1002C9CC0(a1, 0, &buf);
    v2 = *&buf.__r_.__value_.__l.__data_;
    if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v2 + 1) + 16))(*(&v2 + 1));
      std::__shared_weak_count::__release_weak(*(&v2 + 1));
    }

    if (v2)
    {
      sub_10020958C(v7, a1 + 8);
      sub_100209BB0(v7, &v8);
      v4 = std::string::insert(&v8, 0, "What is your mode anyway? ");
      v5 = *&v4->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      sub_1002090A4(v7);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v8, &buf);
      sub_10010A984(v6);
    }

    if (qword_10045B050 == -1)
    {
      v3 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        return;
      }

      goto LABEL_8;
    }

    sub_100385C6C();
    v3 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
LABEL_8:
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "WARNING: Your primary mode has reached 0.0 confidence! Should we clearPoseEstimate?", &buf, 2u);
    }
  }
}

void sub_100209018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::runtime_error a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a20);
  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_10020906C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
    sub_1002090A4(&a12);
    _Unwind_Resume(a1);
  }

  sub_1002090A4(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1002090A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1002090E8(std::runtime_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::runtime_error::runtime_error(&v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10.__vftable = &off_10043A8C0;
  v11 = off_10043A8E8;
  sub_1000EABE8(&v16, &v10);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v9 = a5[1] - *a5;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1002096AC();
}

void sub_1002093F0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void **sub_100209450(void **a1)
{
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    a1[13] = v3;
    operator delete(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    a1[10] = v4;
    operator delete(v4);
  }

  v5 = a1[7];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    a1[4] = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    v8 = a1[1];
    v9 = *a1;
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 2);
        if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        v8 -= 80;
      }

      while (v8 != v7);
      v9 = *a1;
    }

    a1[1] = v7;
    operator delete(v9);
  }

  return a1;
}

uint64_t sub_10020958C(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v2 = *(a2 + 8);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v3 = *(a2 + 24);
  *(result + 40) = 0;
  *(result + 24) = v3;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_100209678(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_100209948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_10020995C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

void *sub_10020998C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}