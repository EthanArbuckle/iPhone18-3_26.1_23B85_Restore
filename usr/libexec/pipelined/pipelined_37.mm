void sub_10024634C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002463BC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_10024642C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0;
  return result;
}

void sub_100246474(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (*(**(a3 + 56) + 16))(*(a3 + 56));
  if ((*(*v8 + 16))(v8, *(a2 + 8), *(a2 + 16)))
  {
    *a4 = 0;
    return;
  }

  v41 = 0;
  v42 = 0;
  v43 = 0;
  v9 = *a1;
  v10 = a1[1];
  if (*a1 == v10)
  {
    v22 = 0;
    goto LABEL_26;
  }

  do
  {
    v12 = (*(**v9 + 64))();
    v13 = (*(**(a3 + 56) + 64))(*(a3 + 56));
    if (!sub_1001182C8(v12, v13))
    {
      v14 = (*(**v9 + 72))();
      if (v14 == (*(**(a3 + 56) + 72))(*(a3 + 56)))
      {
        if (!(*(**(a3 + 56) + 56))(*(a3 + 56)) || (*((*(**(a3 + 56) + 56))(*(a3 + 56)) + 1913) & 0x40) == 0 || !(*(**v9 + 56))() || (*((*(**v9 + 56))() + 1913) & 0x40) == 0 || (v15 = *((*(**(a3 + 56) + 56))(*(a3 + 56)) + 1616), v15 == *((*(**v9 + 56))() + 1616)))
        {
          sub_100176F74((a1 + 5), *(a3 + 56), *v9, v36);
          sub_10012D378(v39, a2);
          v40 = vaddq_f64(*&v36[8], v40);
          v38[0] = (*(**v9 + 24))();
          v38[1] = v16;
          v38[2] = v17;
          v38[3] = v18;
          if (sub_10031C98C(v38, v39))
          {
            v19 = (*(**v9 + 16))();
            if ((*(*v19 + 16))(v19, v40.f64[0], v40.f64[1]))
            {
              v20 = v42;
              if (v42 >= v43)
              {
                v11 = sub_100246D44(&v41, v9, v39);
              }

              else
              {
                *v42 = *v9;
                v21 = v9[1];
                *(v20 + 1) = v21;
                if (v21)
                {
                  atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
                }

                sub_10012D378((v20 + 16), v39);
                v11 = v20 + 48;
              }

              v42 = v11;
            }
          }

          nullsub_75(v39);
          nullsub_75(v36);
        }
      }
    }

    v9 += 2;
  }

  while (v9 != v10);
  v22 = v41;
  if (v41 == v42)
  {
LABEL_26:
    *a4 = 0;
    if (!v22)
    {
      return;
    }

    goto LABEL_44;
  }

  if (v42 - v41 == 48)
  {
    v23 = 0;
  }

  else
  {
    v24 = (*(*a1[3] + 80))(a1[3], -1431655765 * ((v42 - v41) >> 4));
    v22 = v41;
    v23 = v24;
  }

  if (0xAAAAAAAAAAAAAAABLL * (&v42[-v22] >> 4) <= v23)
  {
    sub_1000BFF58();
  }

  v25 = v22 + 48 * v23;
  *(a3 + 16) = *(v25 + 24);
  *&v37 = *v25;
  v26 = *(v25 + 8);
  *(&v37 + 1) = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1001E8D30(a3, &v37);
  v27 = *(&v37 + 1);
  if (*(&v37 + 1) && !atomic_fetch_add((*(&v37 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  *&v35 = *v25;
  v28 = *(v25 + 8);
  *(&v35 + 1) = v28;
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10012D378(v34, v25 + 16);
  *v36 = v35;
  v35 = 0uLL;
  sub_10012D378(&v36[16], v34);
  *a4 = 0;
  *(a4 + 8) = *v36;
  *v36 = 0uLL;
  sub_10012D378(a4 + 24, &v36[16]);
  *a4 = 1;
  nullsub_75(&v36[16]);
  v29 = *&v36[8];
  if (*&v36[8] && !atomic_fetch_add((*&v36[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  nullsub_75(v34);
  v30 = *(&v35 + 1);
  if (*(&v35 + 1) && !atomic_fetch_add((*(&v35 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  v22 = v41;
  if (v41)
  {
LABEL_44:
    v31 = v42;
    v32 = v22;
    if (v42 != v22)
    {
      do
      {
        nullsub_75(v31 - 32);
        v33 = *(v31 - 5);
        if (v33)
        {
          if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
          }
        }

        v31 -= 48;
      }

      while (v31 != v22);
      v32 = v41;
    }

    v42 = v22;
    operator delete(v32);
  }
}

void sub_100246B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  sub_10002BB1C(v15);
  sub_100246C00(&a15);
  nullsub_75(&a9);
  sub_10002BB1C(&a13);
  sub_100246C88((v16 - 104));
  _Unwind_Resume(a1);
}

void sub_100246B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_10002BB1C(va);
  sub_100246C88((v14 - 104));
  _Unwind_Resume(a1);
}

void sub_100246B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002BB1C(v7);
  *(v8 - 96) = v7;
  nullsub_75(v8 - 136);
  nullsub_75(va);
  sub_100246C88((v8 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_100246C00(uint64_t a1)
{
  v2 = nullsub_75(a1 + 16);
  result = a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = result;
      (v4->__on_zero_shared)(v4, v2);
      std::__shared_weak_count::__release_weak(v4);
      return v5;
    }
  }

  return result;
}

void **sub_100246C88(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = nullsub_75(v3 - 32);
        v6 = *(v3 - 5);
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6, v5);
          std::__shared_weak_count::__release_weak(v6);
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_100246D44(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x555555555555555)
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

  v6 = (16 * ((a1[1] - *a1) >> 4));
  v7 = a2[1];
  *v6 = *a2;
  v6[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10012D378((v6 + 2), a3);
  v8 = a1[1];
  v9 = (v6 + *a1 - v8);
  sub_100246EC0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  a1[1] = (v6 + 6);
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v6 + 6;
}

void sub_100246E90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10023B038(va);
  _Unwind_Resume(a1);
}

void sub_100246EA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002BB1C(v2);
  sub_10023B038(va);
  _Unwind_Resume(a1);
}

void sub_100246EC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v7 = a2 + 16;
    do
    {
      v8 = *(v7 - 8);
      v9 = v7 - 16;
      *v4 = *(v7 - 16);
      v4[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      sub_10012D378((v4 + 2), v7);
      v4 = v13 + 6;
      v13 += 6;
      v7 += 48;
    }

    while (v9 + 48 != a3);
    if (a2 != a3)
    {
      v10 = a2 + 16;
      do
      {
        nullsub_75(v10);
        v12 = *(v10 - 8);
        if (v12)
        {
          if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }
        }

        v11 = v10 + 32;
        v10 += 48;
      }

      while (v11 != a3);
    }
  }
}

void sub_100247064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002BB1C(v9);
  sub_100247080(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100247080(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 48)
    {
      v6 = nullsub_75(v4 - 32);
      v7 = *(v4 - 40);
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7, v6);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  return a1;
}

void sub_100247134()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002471A4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100247214(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v4 = (a1 + 8);
  if (*a1 == 1)
  {
    v5 = *v4;
    if (*v4)
    {
      *(a1 + 16) = v5;
      operator delete(v5);
      *v4 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *a1 = 1;
  }

  return a1;
}

void sub_10024751C(_Unwind_Exception *a1)
{
  sub_10024756C(v2);
  if (*v1 == 1)
  {
    sub_1003864C0(v1);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_10024756C(_BYTE *result)
{
  if (*result == 1)
  {
    v1 = result;
    sub_1002491F8(result);
    return v1;
  }

  return result;
}

void *sub_1002475A4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 7)
  {
    if (!(a2 >> 57))
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_100247658(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002495A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10024766C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
    if (v3 != v2)
    {
      v5 = v3 - 5;
      v6 = v3 - 5;
      v7 = v3 - 5;
      do
      {
        v8 = *v7;
        v7 -= 5;
        (*v8)(v6);
        v5 -= 5;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *(a1 + 64);
    }

    *(a1 + 72) = v2;
    operator delete(v4);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    *(a1 + 48) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    do
    {
      v12 = *v11;
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = *a1;
  *a1 = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return a1;
}

uint64_t sub_100247740(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = a1 + 32;
  if (v3 == 1)
  {
    sub_1002491F8(v2);
  }

  if (*a1 == 1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      *(a1 + 16) = v4;
      operator delete(v4);
    }

    *a1 = 0;
  }

  return a1;
}

void *sub_100247798(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 96) == 1)
        {
          sub_1002491F8((v3 - 96));
        }

        v5 = v3 - 128;
        if (*(v3 - 128) == 1)
        {
          v6 = *(v3 - 15);
          if (v6)
          {
            *(v3 - 14) = v6;
            operator delete(v6);
          }

          *v5 = 0;
        }

        v3 -= 128;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_100247838@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_1002475A4(a2, 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 7));
  if (*a1 != a1[1])
  {
    sub_1001181E4(v4, (*a1 + 8));
  }

  return result;
}

void sub_100247CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_100247740(va1);
  sub_10002BB1C(va);
  sub_100247798(v13);
  _Unwind_Resume(a1);
}

void sub_100247D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_100118124(va);
  sub_100247798(v15);
  _Unwind_Resume(a1);
}

void sub_100247D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10002BB1C(va);
  sub_100247798(v13);
  _Unwind_Resume(a1);
}

double sub_100247D60@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  if (*a1 != a1[1])
  {
    sub_1001181E4(v3, (*a1 + 8));
  }

  return result;
}

void sub_100247ED0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100118124(va);
  sub_10004D7DC(v2);
  _Unwind_Resume(a1);
}

void sub_100247EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002BB1C(va);
  sub_10004D7DC(v7);
  _Unwind_Resume(a1);
}

uint64_t sub_100247F08(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  v25 = (a1 + 80);
  *(a1 + 136) = 0u;
  v8 = a1 + 136;
  *(a1 + 152) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 168) = 1065353216;
  *(a1 + 176) = 0u;
  v9 = a1 + 176;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1065353216;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 1065353216;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = *(a4 + 32);
  prime = *(a4 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_3:
    sub_10000FE58(a1 + 256, prime);
    goto LABEL_4;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a4 + 8));
    v14 = *(a1 + 264);
    v15 = prime >= *&v14;
    if (prime > *&v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    v15 = 1;
    if (prime)
    {
      goto LABEL_3;
    }
  }

  if (!v15)
  {
    v16 = vcvtps_u32_f32(*(a1 + 280) / *(a1 + 288));
    if (*&v14 < 3uLL || (v17 = vcnt_s8(v14), v17.i16[0] = vaddlv_u8(v17), v17.u32[0] > 1uLL))
    {
      v16 = std::__next_prime(v16);
    }

    else
    {
      v18 = 1 << -__clz(v16 - 1);
      if (v16 >= 2)
      {
        v16 = v18;
      }
    }

    if (prime <= v16)
    {
      prime = v16;
    }

    if (prime < *&v14)
    {
      goto LABEL_3;
    }
  }

LABEL_4:
  for (i = *(a4 + 16); i; i = *i)
  {
    sub_100249D94((a1 + 256), i + 2);
  }

  v12 = *a2;
  v13 = a2[1];
  v24 = v9;
  if (0xEEEEEEEEEEEEEEEFLL * ((v13 - *a2) >> 7) != (a3[1] - *a3) >> 7)
  {
    sub_1000474A4(&v27, "");
    sub_10017F310("universe information should be the same length as tile header info", &__p);
    sub_1000E661C(&v27, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v27);
    }

    sub_1000BC6D8(&v26);
  }

  v28 = 0;
  v29 = 0;
  v27 = &v28;
  if (v13 != v12)
  {
    sub_1001181E4(&__p, (v12 + 8));
  }

  v19 = *a3;
  v20 = a3[1];
  if (v20 != *a3)
  {
    do
    {
      if (*(v20 - 96) == 1)
      {
        sub_1002491F8(v20 - 96);
      }

      v22 = (v20 - 128);
      if (*(v20 - 128) == 1)
      {
        v23 = *(v20 - 120);
        if (v23)
        {
          *(v20 - 112) = v23;
          operator delete(v23);
        }

        *v22 = 0;
      }

      v20 -= 128;
    }

    while (v22 != v19);
  }

  a3[1] = v19;
  sub_1002489D4(a3);
  sub_10022A5D8(&__p, &v27);
  if (&__p != v25)
  {
    sub_1003864F4(a1, (a1 + 80), &__p);
  }

  *(a1 + 128) = v32[1];
  sub_1002492CC(v8, &v33);
  sub_100249410(v24, v34);
  sub_1001F324C(&v32[1]);
  if (v32[0])
  {
    operator delete(v31);
  }

  if (__p.__r_.__value_.__r.__words[2])
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_10022AB70(&v27, v28);
  return a1;
}

void sub_1002485B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10004D7DC(v28 + 256);
  sub_100249D34(a12);
  sub_100249554(a11);
  sub_1001F9AF8(v29);
  sub_10018408C(v28);
  _Unwind_Resume(a1);
}

uint64_t sub_1002486C0(uint64_t a1, uint64_t *a2)
{
  sub_100247838(a2, &v17);
  sub_100247D60(a2, v15);
  sub_100247F08(a1, a2, &v17, v15);
  v4 = __p;
  if (__p)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
      v6 = v5[3];
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = v5;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        v5 = v7;
      }

      operator delete(v5);
    }

    while (v4);
  }

  v8 = v15[0];
  v15[0] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = v17;
  if (v17)
  {
    v10 = v18;
    v11 = v17;
    if (v18 != v17)
    {
      do
      {
        if (*(v10 - 96) == 1)
        {
          sub_1002491F8((v10 - 96));
        }

        v12 = v10 - 128;
        if (*(v10 - 128) == 1)
        {
          v13 = *(v10 - 15);
          if (v13)
          {
            *(v10 - 14) = v13;
            operator delete(v13);
          }

          *v12 = 0;
        }

        v10 -= 128;
      }

      while (v12 != v9);
      v11 = v17;
    }

    v18 = v9;
    operator delete(v11);
  }

  return a1;
}

void sub_100248828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10004D7DC(&a9);
  sub_100247798(&a14);
  _Unwind_Resume(a1);
}

void sub_100248844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100247798(va);
  _Unwind_Resume(a1);
}

void sub_1002489D4(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    v6 = v4 >> 7;
    if (v1 != v2)
    {
      if (!(v6 >> 57))
      {
        operator new();
      }

      sub_10000D444();
    }

    v7 = 0;
    if (v4 < v3)
    {
      v8 = a1[1];
      v9 = (v6 << 7) + v2 - v8;
      sub_100249630(a1, v2, v8, v9);
      v7 = *a1;
      *a1 = v9;
      *(&v10 + 1) = v6 << 7;
      *&v10 = v6 << 7;
      *(a1 + 1) = v10;
    }

    if (v7)
    {
      operator delete(v7);
    }
  }
}

void sub_100248AC0(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002495A0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x100248AA4);
}

void sub_100248AF0(int8x8_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    return;
  }

  while (2)
  {
    sub_10022A5DC(a1 + 10, v4, &v23);
    v6 = v23;
    v7 = v24;
    if (v23 == v24)
    {
      goto LABEL_23;
    }

    v8 = (v4 + 40);
    do
    {
      while (1)
      {
        v25 = *v6;
        v10 = sub_10024AC9C(a3, v25);
        v11 = v10;
        v12 = v10[5];
        if (v12 < v10[6])
        {
          break;
        }

        sub_1001D01B0(v10 + 4, v4);
        v11[5] = v9;
        if (++v6 == v7)
        {
          goto LABEL_22;
        }
      }

      if (*v4 == *v4 >> 31)
      {
        *(v12 + 8) = *(v4 + 8);
        *v12 = 0;
        v13 = v12 + 40;
        v14 = *(v4 + 32);
        if (v14 != v14 >> 31)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v16 = *(v4 + 8);
        *(v12 + 24) = *(v4 + 24);
        *(v12 + 8) = v16;
        *v12 = *v4 ^ (*v4 >> 31);
        v13 = v12 + 40;
        v14 = *(v4 + 32);
        if (v14 != v14 >> 31)
        {
LABEL_10:
          if (v14 >= 0)
          {
            v15 = v4 + 40;
          }

          else
          {
            v15 = *v8;
          }

          sub_100131324(v13, v15);
          goto LABEL_21;
        }
      }

      v17 = *v8;
      if (v17 == v17 >> 31)
      {
        *(v12 + 48) = *(v4 + 48);
        v18 = v17;
      }

      else
      {
        v19 = *(v4 + 48);
        *(v12 + 64) = *(v4 + 64);
        *(v12 + 48) = v19;
        v18 = *v8;
        v17 = *v8 >> 31;
      }

      *(v12 + 40) = v18 ^ v17;
      *(v12 + 72) = *(v4 + 72);
      *(v12 + 80) = 0;
      if (*(v4 + 80) == 1)
      {
        *(v12 + 84) = *(v4 + 84);
        *(v12 + 80) = 1;
      }

      v20 = *(v4 + 88);
      v21 = *(v4 + 104);
      *(v12 + 120) = *(v4 + 120);
      *(v12 + 104) = v21;
      *(v12 + 88) = v20;
LABEL_21:
      *(v12 + 32) = *(v4 + 32) ^ (*(v4 + 32) >> 31);
      v11[5] = v12 + 208;
      v11[5] = v12 + 208;
      ++v6;
    }

    while (v6 != v7);
LABEL_22:
    v6 = v23;
LABEL_23:
    if (v6)
    {
      v24 = v6;
      operator delete(v6);
    }

    v4 += 208;
    if (v4 != v5)
    {
      continue;
    }

    break;
  }
}

void sub_100248D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  *(v13 + 40) = v12;
  if (__p)
  {
    operator delete(__p);
  }

  sub_1001DF5D8(v11);
  _Unwind_Resume(a1);
}

void sub_100248D50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v6 = *(a1 + 24);
  prime = v6;
  if (v6 == 1)
  {
    prime = 2;
LABEL_17:
    sub_10000FE58(a3, prime);
    goto LABEL_18;
  }

  if ((prime & (v6 - 1)) != 0)
  {
    prime = std::__next_prime(v6);
    v8 = *(a3 + 8);
    v9 = prime >= *&v8;
    if (prime > *&v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v9)
  {
    v10 = vcvtps_u32_f32(*(a3 + 24) / *(a3 + 32));
    if (*&v8 < 3uLL || (v11 = vcnt_s8(v8), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
    {
      v10 = std::__next_prime(v10);
    }

    else
    {
      v12 = 1 << -__clz(v10 - 1);
      if (v10 >= 2)
      {
        v10 = v12;
      }
    }

    if (prime <= v10)
    {
      prime = v10;
    }

    if (prime < *&v8)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a1 + 16); i; i = *i)
  {
    v15 = (i + 4);
    v14 = *(a2 + 24);
    if (!v14)
    {
      sub_1000DB498();
    }

    if ((*(*v14 + 48))(v14, i + 2, &v15))
    {
      v15 = (i + 4);
      sub_10024B05C(a3, i + 2);
    }
  }
}

void sub_100248F28(uint64_t a1, uint64_t a2)
{
  if (!sub_100232F48(a2))
  {
    sub_1001181E4(v5, (a2 + 8));
  }

  sub_1000474A4(v5, "");
  sub_100218D04("No Coarse Indoor AP data for wifi2.", &v4);
  sub_100383AA4(&v4, __p, v5);
  sub_1000BC6D8(__p);
}

void sub_100249090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002491F8(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      v5 = v3 - 5;
      v6 = v3 - 5;
      v7 = v3 - 5;
      do
      {
        v8 = *v7;
        v7 -= 5;
        (*v8)(v6);
        v5 -= 5;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    *(a1 + 56) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    do
    {
      v12 = *v11;
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  *a1 = 0;
}

void sub_1002492CC(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    while (v4)
    {
      v5 = v4;
      v4 = *v4;
      v6 = v5[3];
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = v5;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        v5 = v7;
      }

      operator delete(v5);
    }

    *(a1 + 16) = 0;
    v8 = *(a1 + 8);
    if (v8)
    {
      bzero(*a1, 8 * v8);
    }

    *(a1 + 24) = 0;
  }

  v9 = *a2;
  *a2 = 0;
  v10 = *a1;
  *a1 = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v13 = a2[2];
  v12 = a2 + 2;
  v11 = v13;
  v14 = *(v12 - 1);
  *(a1 + 16) = v13;
  *(a1 + 8) = v14;
  *(v12 - 1) = 0;
  v15 = v12[1];
  *(a1 + 24) = v15;
  *(a1 + 32) = *(v12 + 4);
  if (v15)
  {
    v16 = *(v11 + 8);
    v17 = *(a1 + 8);
    if ((v17 & (v17 - 1)) != 0)
    {
      if (v16 >= v17)
      {
        v16 %= v17;
      }
    }

    else
    {
      v16 &= v17 - 1;
    }

    *(*a1 + 8 * v16) = a1 + 16;
    *v12 = 0;
    v12[1] = 0;
  }
}

void sub_100249410(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    while (v4)
    {
      v5 = v4;
      v4 = *v4;
      v6 = v5[4];
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = v5;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        v5 = v7;
      }

      operator delete(v5);
    }

    *(a1 + 16) = 0;
    v8 = *(a1 + 8);
    if (v8)
    {
      bzero(*a1, 8 * v8);
    }

    *(a1 + 24) = 0;
  }

  v9 = *a2;
  *a2 = 0;
  v10 = *a1;
  *a1 = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v13 = a2[2];
  v12 = a2 + 2;
  v11 = v13;
  v14 = *(v12 - 1);
  *(a1 + 16) = v13;
  *(a1 + 8) = v14;
  *(v12 - 1) = 0;
  v15 = v12[1];
  *(a1 + 24) = v15;
  *(a1 + 32) = *(v12 + 4);
  if (v15)
  {
    v16 = *(v11 + 8);
    v17 = *(a1 + 8);
    if ((v17 & (v17 - 1)) != 0)
    {
      if (v16 >= v17)
      {
        v16 %= v17;
      }
    }

    else
    {
      v16 &= v17 - 1;
    }

    *(*a1 + 8 * v16) = a1 + 16;
    *v12 = 0;
    v12[1] = 0;
  }
}

uint64_t sub_100249554(uint64_t a1)
{
  sub_1001F324C((a1 + 48));
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

uint64_t sub_1002495A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = *(i - 96);
    v5 = (i - 128);
    *(a1 + 16) = i - 128;
    if (v4 == 1)
    {
      sub_1002491F8(i - 96);
    }

    if (*v5 == 1)
    {
      v6 = *(i - 120);
      if (v6)
      {
        *(i - 112) = v6;
        operator delete(v6);
      }

      *v5 = 0;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100249630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_10024978C(a1, a4, v7);
      v7 += 128;
      a4 = v9 + 128;
      v9 += 128;
    }

    while (v7 != a3);
    for (; v5 != a3; v5 += 128)
    {
      if (*(v5 + 32) == 1)
      {
        sub_1002491F8(v5 + 32);
      }

      if (*v5 == 1)
      {
        v8 = *(v5 + 8);
        if (v8)
        {
          *(v5 + 16) = v8;
          operator delete(v8);
        }

        *v5 = 0;
      }
    }
  }
}

__n128 sub_10024978C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  if (*a3 == 1)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    result = *(a3 + 8);
    *(a2 + 8) = result;
    *(a2 + 24) = *(a3 + 24);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *a2 = 1;
    *(a2 + 32) = 0;
    if (*(a3 + 32) != 1)
    {
      return result;
    }
  }

  else
  {
    *(a2 + 32) = 0;
    if (*(a3 + 32) != 1)
    {
      return result;
    }
  }

  v4 = *(a3 + 56);
  *(a2 + 56) = v4;
  v5 = *(a3 + 40);
  *(a2 + 48) = *(a3 + 48);
  *(a3 + 40) = 0;
  *(a2 + 40) = v5;
  *(a3 + 48) = 0;
  v6 = *(a3 + 64);
  *(a2 + 64) = v6;
  *(a2 + 72) = *(a3 + 72);
  if (v6)
  {
    v7 = *(v4 + 8);
    v8 = *(a2 + 48);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v7 %= v8;
      }
    }

    else
    {
      v7 &= v8 - 1;
    }

    *(v5 + 8 * v7) = a2 + 56;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
  }

  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = *(a3 + 80);
  *(a2 + 96) = *(a3 + 96);
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  result = *(a3 + 104);
  *(a2 + 104) = result;
  *(a2 + 120) = *(a3 + 120);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a2 + 32) = 1;
  return result;
}

uint64_t sub_1002498A0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        if (*(v4 - 96) == 1)
        {
          sub_1002491F8(v4 - 96);
        }

        v7 = (v4 - 128);
        if (*(v4 - 128) == 1)
        {
          v8 = *(v4 - 120);
          if (v8)
          {
            *(v4 - 112) = v8;
            operator delete(v8);
          }

          *v7 = 0;
        }

        v4 -= 128;
      }

      while (v7 != v5);
    }
  }

  return a1;
}

double sub_100249934(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_10000FC84();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 6 > v3)
  {
    v3 = v5 >> 6;
  }

  if (v5 >= 0x7FFFFFFFFFFFFF80)
  {
    v6 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 57))
    {
      operator new();
    }

    sub_10000D444();
  }

  v7 = (v2 << 7);
  *(&v17 + 1) = 0;
  *(v2 << 7) = 0;
  if (*a2 == 1)
  {
    *((v2 << 7) + 8) = *(a2 + 8);
    *((v2 << 7) + 0x18) = *(a2 + 24);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *v7 = 1;
  }

  *((v2 << 7) + 0x20) = 0;
  if (*(a2 + 32) == 1)
  {
    v8 = *(a2 + 56);
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *((v2 << 7) + 0x38) = v8;
    *((v2 << 7) + 0x28) = v9;
    *((v2 << 7) + 0x30) = v10;
    v11 = *(a2 + 64);
    *((v2 << 7) + 0x40) = v11;
    *((v2 << 7) + 0x48) = *(a2 + 72);
    if (v11)
    {
      v12 = *(v8 + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v12 >= v10)
        {
          v12 %= v10;
        }
      }

      else
      {
        v12 &= v10 - 1;
      }

      *(v9 + 8 * v12) = v7 + 56;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
    }

    *((v2 << 7) + 0x50) = *(a2 + 80);
    *((v2 << 7) + 0x60) = *(a2 + 96);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *((v2 << 7) + 0x68) = *(a2 + 104);
    *((v2 << 7) + 0x78) = *(a2 + 120);
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *((v2 << 7) + 0x20) = 1;
  }

  *&v17 = v7 + 128;
  v13 = a1[1];
  v14 = &v7[*a1 - v13];
  sub_100249630(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  result = *&v17;
  *(a1 + 1) = v17;
  if (v15)
  {
    operator delete(v15);
    return *&v17;
  }

  return result;
}

void sub_100249B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002495A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100249D34(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1001F3118(v2 + 2);
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

const void ***sub_100249D94(void *a1, uint64_t ***a2)
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

void sub_10024A0E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001C6420(va);
  _Unwind_Resume(a1);
}

const void ***sub_10024A0FC(void *a1, uint64_t ***a2)
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

void sub_10024A454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100184820(va);
  _Unwind_Resume(a1);
}

void sub_10024A468(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100118124(v2);
  sub_100184820(va);
  _Unwind_Resume(a1);
}

void sub_10024A668(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10024A690(va);
  _Unwind_Resume(a1);
}

void sub_10024A67C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10024A690(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10024A690(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[6];
      if (v3)
      {
        v2[7] = v3;
        operator delete(v3);
      }

      v4 = v2[5];
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10024A860(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_1001F3118(v1 + 2);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

const void ***sub_10024A8AC(void *a1, uint64_t ***a2)
{
  v4 = sub_1001183C0(&v15, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v5 - 1;
      while (1)
      {
        v12 = v10[1];
        if (v12 == v6)
        {
          if (sub_1001182C8(v10 + 2, a2))
          {
            return v10;
          }
        }

        else if ((v12 & v11) != v8)
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

    do
    {
      v13 = v10[1];
      if (v13 == v6)
      {
        if (sub_1001182C8(v10 + 2, a2))
        {
          return v10;
        }
      }

      else
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

void sub_10024AC48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10024A690(va);
  _Unwind_Resume(a1);
}

void sub_10024AC5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 56) = v5;
    operator delete(v5);
  }

  sub_100118124(v2 + 32);
  sub_10024A690(va);
  _Unwind_Resume(a1);
}

void sub_10024AC88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10024A690(va);
  _Unwind_Resume(a1);
}

const void ***sub_10024AC9C(void *a1, uint64_t ***a2)
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

void sub_10024AFFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10024B010(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10024B010(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_1001DF638(v1 + 2);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

const void ***sub_10024B05C(void *a1, uint64_t ***a2)
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

void sub_10024B3BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001C6420(va);
  _Unwind_Resume(a1);
}

void sub_10024B3D0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10024B440()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

__n128 sub_10024B4B0(__n128 *a1, __n128 *a2, unint64_t a3)
{
  a1->n128_u64[0] = &off_100443F08;
  a1->n128_u64[1] = a3;
  result = *a2;
  a1[2].n128_u64[0] = a2[1].n128_u64[0];
  a1[1] = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  a1[2].n128_u32[2] = 0;
  return result;
}

BOOL sub_10024B4EC(uint64_t a1, const void *a2, int a3)
{
  v5 = sqlite3_blob_write(*(a1 + 8), a2, a3, *(a1 + 40));
  if (!v5)
  {
    *(a1 + 40) += a3;
    return v5 == 0;
  }

  if (qword_10045B080 != -1)
  {
    sub_100386574();
    v6 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
    {
      return v5 == 0;
    }

    goto LABEL_4;
  }

  v6 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
  {
LABEL_4:
    v7 = *(a1 + 40);
    v9[0] = 67109632;
    v9[1] = a3;
    v10 = 1024;
    v11 = v7;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "failed to write blob of size %d at offset %d: %d", v9, 0x14u);
  }

  return v5 == 0;
}

uint64_t sub_10024B60C(uint64_t a1, sqlite3_blob *a2)
{
  *a1 = &off_100443F30;
  *(a1 + 8) = a2;
  *(a1 + 16) = sqlite3_blob_bytes(a2);
  *(a1 + 20) = 0;
  return a1;
}

uint64_t sub_10024B66C(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 20);
  if ((v4 + a3) <= v5)
  {
    v6 = a3;
  }

  else
  {
    v6 = (v5 - v4);
  }

  v7 = sqlite3_blob_read(*(a1 + 8), a2, v6, v4);
  if (!v7)
  {
    *(a1 + 20) += v6;
    return v6;
  }

  v8 = v7;
  if (qword_10045B080 != -1)
  {
    sub_100386574();
    v9 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_7;
  }

  v9 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
  {
LABEL_7:
    v10 = *(a1 + 20);
    v12[0] = 67109632;
    v12[1] = v6;
    v13 = 1024;
    v14 = v10;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to read blob of size %d at offset %d: %d", v12, 0x14u);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10024B7B0(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  if ((v3 + a2) <= v2)
  {
    v4 = a2;
  }

  else
  {
    v4 = (v2 - v3);
  }

  *(a1 + 20) = v4 + v3;
  return v4;
}

void sub_10024B7D4(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  wireless_diagnostics::google::protobuf::io::CopyingOutputStream::~CopyingOutputStream(this);

  operator delete();
}

void sub_10024B830(wireless_diagnostics::google::protobuf::io::CopyingInputStream *a1)
{
  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(a1);

  operator delete();
}

void sub_10024B898()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10024B908()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10024BB24(void *a1)
{
  sub_100243C24(a1);

  operator delete();
}

void sub_10024BBD8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_10024BC10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100444080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10024BC8C(uint64_t a1)
{
  *a1 = off_1004440D0;
  v1 = *(a1 + 168);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v3;
    if ((*(v3 + 159) & 0x80000000) == 0)
    {
LABEL_4:

      return sub_100243C24(a1);
    }
  }

  else if ((*(a1 + 159) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v4 = a1;
  operator delete(*(a1 + 136));
  a1 = v4;

  return sub_100243C24(a1);
}

void sub_10024BD64(uint64_t a1)
{
  *a1 = off_1004440D0;
  v2 = *(a1 + 168);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if ((*(a1 + 159) & 0x80000000) == 0)
    {
LABEL_5:
      sub_100243C24(a1);

      operator delete();
    }
  }

  else if ((*(a1 + 159) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 136));
  goto LABEL_5;
}

void sub_10024BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v154[2] = a2;
  sub_10026E104(v154, *a4);
  sub_100047A58(a1 + 136, v154, &v61);
  sub_100047B38(a1 + 136, &v30);
  v5 = v61;
  v6 = v62;
  v61 = 0u;
  v62 = 0u;
  v92 = v5;
  v93 = v6;
  v7 = v63;
  v8 = v64;
  v63 = 0u;
  v64 = 0u;
  v94 = v7;
  v95 = v8;
  v9 = v65;
  v10 = v66;
  v65 = 0u;
  v66 = 0u;
  v96 = v9;
  v97 = v10;
  v11 = v67;
  v12 = v68;
  v67 = 0u;
  v68 = 0u;
  v98 = v11;
  v99 = v12;
  v100 = v69;
  v101 = v70;
  v69 = 0u;
  v70 = 0u;
  v102 = v71;
  v103 = v72;
  v71 = 0u;
  v72 = 0u;
  v104 = v73;
  v105 = v74;
  v73 = 0u;
  v74 = 0u;
  v106 = v75;
  v107 = v76;
  v75 = 0u;
  v76 = 0u;
  v108 = v77;
  v109 = v78;
  v77 = 0u;
  v78 = 0u;
  v110 = v79;
  v111 = v80;
  v79 = 0u;
  v80 = 0u;
  v112 = v81;
  v113 = v82;
  v81 = 0u;
  v82 = 0u;
  v114 = v83;
  v115 = v84;
  v83 = 0u;
  v84 = 0u;
  v116 = v85;
  v117 = v86;
  v85 = 0u;
  v86 = 0u;
  v118 = v87;
  v87 = 0u;
  v120 = __p;
  v119 = v88;
  v121 = v90;
  __p = 0u;
  v90 = 0;
  v13 = v30;
  v14 = v31;
  v30 = 0u;
  v31 = 0u;
  v123 = v13;
  v124 = v14;
  v15 = v32;
  v16 = v33;
  v32 = 0u;
  v33 = 0u;
  v125 = v15;
  v126 = v16;
  v17 = v34;
  v18 = v35;
  v34 = 0u;
  v35 = 0u;
  v127 = v17;
  v128 = v18;
  v19 = v36;
  v20 = v37;
  v36 = 0u;
  v37 = 0u;
  v129 = v19;
  v130 = v20;
  v21 = v39;
  v131 = v38;
  v38 = 0u;
  v39 = 0u;
  v22 = v41;
  v132 = v21;
  v133 = v40;
  v40 = 0u;
  v41 = 0u;
  v23 = v43;
  v134 = v22;
  v135 = v42;
  v42 = 0u;
  v43 = 0u;
  v24 = v45;
  v136 = v23;
  v137 = v44;
  v44 = 0u;
  v45 = 0u;
  v25 = v47;
  v138 = v24;
  v139 = v46;
  v46 = 0u;
  v47 = 0u;
  v26 = v49;
  v140 = v25;
  v141 = v48;
  v48 = 0u;
  v49 = 0u;
  v27 = v51;
  v142 = v26;
  v143 = v50;
  v50 = 0u;
  v51 = 0u;
  v28 = v53;
  v144 = v27;
  v145 = v52;
  v52 = 0u;
  v53 = 0u;
  v29 = v55;
  v146 = v28;
  v147 = v54;
  v54 = 0u;
  v55 = 0u;
  v148 = v29;
  v149 = v56;
  v56 = 0u;
  v122 = v91;
  v150 = v57;
  v152 = v59;
  *v151 = v58;
  v58 = 0u;
  v59 = 0;
  v153 = v60;
  sub_100050024(&v39);
  sub_1000505E0(&v30);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(__p);
  }

  sub_100050024(&v70);
  sub_1000505E0(&v61);
  operator new();
}

void sub_10024C154(_Unwind_Exception *a1)
{
  operator delete(v1);
  sub_10024C19C(&STACK[0x3C0]);
  _Unwind_Resume(a1);
}

uint64_t *sub_10024C19C(uint64_t a1)
{
  if (*(a1 + 935) < 0)
  {
    operator delete(*(a1 + 912));
    sub_100050024((a1 + 616));
    sub_1000505E0((a1 + 472));
    if ((*(a1 + 463) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100050024((a1 + 616));
    sub_1000505E0((a1 + 472));
    if ((*(a1 + 463) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(a1 + 440));
LABEL_3:
  sub_100050024((a1 + 144));

  return sub_1000505E0(a1);
}

void *sub_10024C224(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100444080;
  sub_1001E6920(v10, a2);
  v8 = sub_1001E6920(v13, a2 + 59);
  sub_100257A9C(a1 + 3, v10, *a3, a4, v8);
  if (v15 < 0)
  {
    operator delete(v14[37]);
  }

  sub_100050024(v14);
  sub_1000505E0(v13);
  if (v12 < 0)
  {
    operator delete(v11[37]);
  }

  sub_100050024(v11);
  sub_1000505E0(v10);
  return a1;
}

void sub_10024C2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10024C19C(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_10024C318(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(result + 23) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_6:
    v3 = result;
    operator delete(*result);
    return v3;
  }

  v2 = result;
  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  result = v2;
  if (*(v2 + 23) < 0)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_10024C3B4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10024C424()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10024C494()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10024C4BC(int *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v22 = v20;
  v23 = &v21;
  v3 = *a1;
  if (*a1 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = -v3;
  }

  v16 = v4;
  v17 = &v21;
  v18 = 48;
  v19 = 48;
  v5 = sub_1000E4C90(&v16);
  v6 = v5;
  if ((v3 & 0x80000000) == 0)
  {
    v22 = v5;
    v23 = &v21;
    v7 = (&v21 - v5);
    v8 = a2;
    if ((&v21 - v5) < 0x17)
    {
      goto LABEL_6;
    }

LABEL_14:
    std::string::__grow_by(a2, 0x16uLL, v7 - 22, 0, 0, 0, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2->__r_.__value_.__r.__words[0];
    }

    if (v6 != &v21)
    {
      goto LABEL_7;
    }

LABEL_18:
    v9 = v8;
    goto LABEL_21;
  }

  *(v5 - 1) = 45;
  v6 = (v5 - 1);
  v22 = (v5 - 1);
  v23 = &v21;
  v7 = (&v21 - v5 + 1);
  v8 = a2;
  if (v7 >= 0x17)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v6 == &v21)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (v7 < 0x20 || (v8 - v6) < 0x20)
  {
    v9 = v8;
    v10 = v6;
  }

  else
  {
    v9 = (v8 + (v7 & 0xFFFFFFFFFFFFFFE0));
    v10 = &v6[v7 & 0xFFFFFFFFFFFFFFE0];
    v11 = (v6 + 16);
    v12 = &v8->__r_.__value_.__r.__words[2];
    v13 = v7 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v14 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 4;
      v13 -= 32;
    }

    while (v13);
    if (v7 == (v7 & 0xFFFFFFFFFFFFFFE0))
    {
      goto LABEL_21;
    }
  }

  do
  {
    v15 = *v10++;
    v9->__r_.__value_.__s.__data_[0] = v15;
    v9 = (v9 + 1);
  }

  while (v10 != &v21);
LABEL_21:
  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = v7;
  }

  else
  {
    *(&a2->__r_.__value_.__s + 23) = v7 & 0x7F;
  }
}

void sub_10024C674(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10024C690()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10024C700()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100250964(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x10024F720);
  }

  JUMPOUT(0x100250A6CLL);
}

void sub_10025098C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x10024F684);
  }

  JUMPOUT(0x100250A6CLL);
}

void sub_1002509BC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, char a18)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if ((a18 & 1) == 0)
    {
      JUMPOUT(0x10024F908);
    }

    JUMPOUT(0x10024F864);
  }

  JUMPOUT(0x100250A6CLL);
}

void sub_100250A38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100250ABC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3 == 1)
  {
    sub_10024C770();
  }

  sub_10024C770();
}

uint64_t sub_100250B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v5 = *(*(a1 + 8) + 64);
  if (!v5)
  {
    v5 = *(qword_10045E250 + 64);
  }

  return sub_1002C4F58(a2, a3, (v5[4] + v5[4]), v5[5], v5[6], v5[7]);
}

uint64_t sub_100250B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v5 = *(*(a1 + 8) + 240);
  if (!v5)
  {
    v5 = *(qword_10045E250 + 240);
  }

  return sub_1002C4F58(a2, a3, (v5[4] + v5[4]), v5[5], v5[6], v5[7]);
}

uint64_t sub_100250BA8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(v2 + 56);
  if (!v3)
  {
    v10 = *(qword_10045E250 + 56);
    v4 = *(v10 + 16);
    v5 = *(v10 + 20);
    v6 = *(v10 + 28);
    v7 = *(v2 + 72);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = *(qword_10045E250 + 72);
    goto LABEL_3;
  }

  v4 = *(v3 + 16);
  v5 = *(v3 + 20);
  v6 = *(v3 + 28);
  v7 = *(v2 + 72);
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = vcvtq_f64_f32(v5);
  v9 = *(v7 + 28);
  *a2 = v4;
  *(a2 + 8) = vextq_s8(v8, v8, 8uLL);
  *(a2 + 24) = v6;
  *(a2 + 32) = v9;
  return result;
}

double sub_100250C38(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 176);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 176);
  }

  return 1.0 / *(v1 + 56);
}

double sub_100250C74(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 208);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 208);
  }

  return 1.0 / *(v1 + 24);
}

void sub_100250CB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __exp10(-6.0);
  *a2 = *(*(a1 + 8) + 194);
  sub_100250D08(a2, v4);
  *(a2 + 24) = 0x401A666660000000;
  *(a2 + 8) = 0x3FF0000000000000;
}

void sub_100250D08(uint64_t a1, double a2)
{
  if (a2 <= 0.0)
  {
    sub_1000474A4(v3, "");
    sub_100253838("Convergence dB EPS is usually a small positive number. You can't set it to something non-positive!", &v4);
    sub_100383AA4(&v4, __p, v3);
    sub_1000BC6D8(__p);
  }

  *(a1 + 16) = __exp10(a2 / -20.0);
}

void sub_100250DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100250E10(uint64_t a1)
{
  v4 = sub_1000DD45C();
  v5 = v2;
  if (sub_100008F80(&v4, &v5 + 1))
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(a1 + 8) + 28);
  }

  sub_10026FD14(v3);
}

uint64_t sub_100250E98(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 88);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 88);
  }

  return *(v1 + 24);
}

double sub_100250EC4(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 64);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(*(qword_10045E250 + 64) + 32);
    if (v2)
    {
LABEL_3:
      if (v1)
      {
        goto LABEL_4;
      }

LABEL_8:
      v3 = *(v2 + 16);
      v4 = *(*(qword_10045E250 + 64) + 32);
      if (v4)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v2 = *(qword_10045E218 + 32);
  if (!v1)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = *(v2 + 16);
  v4 = *(v1 + 32);
  if (v4)
  {
LABEL_5:
    result = v3;
    v6 = *(v4 + 20);
    return result;
  }

LABEL_9:
  result = v3;
  v7 = *(*(qword_10045E218 + 32) + 20);
  return result;
}

uint64_t sub_100250F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 + 8) + 272);
  if (v4)
  {
    v5 = *(v4 + 24);
    v6 = *(v4 + 25);
    v7 = *(v4 + 16);
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v24 = *(qword_10045E250 + 272);
  v5 = *(v24 + 24);
  v6 = *(v24 + 25);
  v7 = *(v24 + 16);
  if (!v7)
  {
LABEL_3:
    v7 = *(qword_10045E318 + 16);
  }

LABEL_4:
  v8 = *(*(a1 + 8) + 272);
  if (v4)
  {
    v9 = *(v4 + 16);
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = *(*(qword_10045E250 + 272) + 16);
    if (v9)
    {
LABEL_6:
      v10 = *(*(a1 + 8) + 272);
      if (v4)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  v9 = *(qword_10045E318 + 16);
  v10 = *(*(a1 + 8) + 272);
  if (v4)
  {
LABEL_7:
    v11 = *(v10 + 16);
    if (v11)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(*(qword_10045E250 + 272) + 16);
  if (v11)
  {
LABEL_8:
    v12 = *(*(a1 + 8) + 272);
    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(qword_10045E318 + 16);
  v12 = *(*(a1 + 8) + 272);
  if (v4)
  {
LABEL_9:
    v13 = *(v12 + 16);
    if (v13)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = *(*(qword_10045E250 + 272) + 16);
  if (v13)
  {
LABEL_10:
    v14 = *(*(a1 + 8) + 272);
    if (v4)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(qword_10045E318 + 16);
  v14 = *(*(a1 + 8) + 272);
  if (v4)
  {
LABEL_11:
    v15 = *(v14 + 16);
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = *(*(qword_10045E250 + 272) + 16);
  if (v15)
  {
LABEL_12:
    v16 = *(v9 + 24);
    v17 = *(v11 + 25);
    v18 = *(v13 + 26);
    v19 = *(v15 + 27);
    if (v4)
    {
      goto LABEL_13;
    }

LABEL_27:
    v20 = *(v7 + 16);
    v21 = *(*(qword_10045E250 + 272) + 16);
    if (v21)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_26:
  v16 = *(v9 + 24);
  v17 = *(v11 + 25);
  v18 = *(v13 + 26);
  v19 = *(*(qword_10045E318 + 16) + 27);
  if (!v4)
  {
    goto LABEL_27;
  }

LABEL_13:
  v20 = *(v7 + 16);
  v21 = *(v4 + 16);
  if (v21)
  {
    goto LABEL_14;
  }

LABEL_28:
  v21 = *(qword_10045E318 + 16);
LABEL_14:
  sub_10002BC58(&v25, v16, v17, v18, v19, v20, *(v21 + 28));
  v22 = *(*(a1 + 8) + 272);
  if (!v22)
  {
    v22 = *(qword_10045E250 + 272);
  }

  return sub_10002BC74(a2, v5 & 1, v6 & 1, &v25, *(v22 + 26), *(v22 + 27), *(v22 + 33), *(v22 + 34), *(v22 + 36));
}

uint64_t sub_1002511B4(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 88);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 88);
  }

  return (*(v1 + 16) * 1000000000.0);
}

uint64_t sub_1002511F0(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 144);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 144);
  }

  return (*(v1 + 16) * 1000000000.0);
}

uint64_t sub_10025122C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*(a1 + 8) + 176);
  if (!v2)
  {
    v2 = *(qword_10045E250 + 176);
  }

  return sub_10014B3AC(a2, v2);
}

uint64_t sub_100251264(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 208);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 208);
  }

  return *(v1 + 32);
}

uint64_t sub_100251290(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 208);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 208);
  }

  return *(v1 + 33);
}

uint64_t sub_1002512BC(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 232);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 232);
  }

  return *(v1 + 24);
}

uint64_t sub_1002512E8(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 232);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 232);
  }

  return *(v1 + 25);
}

double sub_100251314(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 232);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 232);
  }

  return *(v1 + 16);
}

double sub_100251348(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 232);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 232);
  }

  return *(v1 + 32);
}

double sub_10025137C(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 232);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 232);
  }

  return *(v1 + 36);
}

float sub_1002513B0(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 232);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 232);
  }

  return *(v1 + 20);
}

float sub_1002513DC(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 232);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 232);
  }

  return *(v1 + 28);
}

uint64_t sub_100251408(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 232);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 232);
  }

  return *(v1 + 26);
}

uint64_t sub_100251434(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 232);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 232);
  }

  return *(v1 + 27);
}

float sub_100251460(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 272);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 272);
  }

  return *(v1 + 28);
}

uint64_t sub_10025148C(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 272);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 272);
  }

  return *(v1 + 32);
}

float sub_1002514B8(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 208);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 208);
  }

  return *(v1 + 16);
}

float sub_1002514E4(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 208);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 208);
  }

  return *(v1 + 20);
}

float sub_100251510(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 208);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 208);
  }

  return *(v1 + 36);
}

float sub_10025153C(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 208);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 208);
  }

  return *(v1 + 52);
}

float sub_100251568(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 208);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 208);
  }

  return *(v1 + 48);
}

float sub_100251594(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 208);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 208);
  }

  return *(v1 + 40);
}

uint64_t sub_1002515C0(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 208);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 208);
  }

  return (*(v1 + 44) * 1000000000.0);
}

float sub_100251604(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 40);
  if (v1 < 0.0)
  {
    sub_1000474A4(&v6, "");
    sub_10023FCC4("confidenceFactor must be non-negative.", &v5);
    sub_100383AA4(&v5, __p, &v6);
    sub_10003F5D0(__p);
  }

  if (v1 > 1.0)
  {
    sub_1000474A4(__p, "");
    sub_1001D0C58("confidenceFactor must be between 0.0f and 1.0f inclusive", &v6);
    sub_100383AA4(&v6, v3, __p);
    sub_10003F5D0(v3);
  }

  return 1.0 - v1;
}

void sub_100251744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

float sub_1002517A8(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 80);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 80);
  }

  return *(v1 + 16);
}

uint64_t sub_1002517D4(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 80);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 80);
  }

  return *(v1 + 36);
}

float sub_100251800(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 88);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 88);
  }

  return *(v1 + 28);
}

float sub_100251868(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 48);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 48);
  }

  return *(v1 + 24);
}

uint64_t sub_100251894(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 48);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 48);
  }

  return (*(v1 + 16) * 1000000000.0);
}

float sub_1002518D0(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 48);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 48);
  }

  return *(v1 + 20);
}

float sub_1002518FC(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 5:
      v5 = *(*(a1 + 8) + 72);
      if (!v5)
      {
        v5 = *(qword_10045E250 + 72);
      }

      return *(v5 + 24);
    case 3:
      v4 = *(*(a1 + 8) + 72);
      if (!v4)
      {
        v4 = *(qword_10045E250 + 72);
      }

      return *(v4 + 20);
    case 2:
      v2 = *(*(a1 + 8) + 72);
      if (!v2)
      {
        v2 = *(qword_10045E250 + 72);
      }

      return *(v2 + 16);
  }

  return result;
}

uint64_t sub_100251990(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 88);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 88);
  }

  return (*(v1 + 20) * 1000000000.0);
}

float sub_1002519E4@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  v2 = *(*(a1 + 8) + 104);
  if (!v2)
  {
    v2 = *(qword_10045E250 + 104);
  }

  *a2 = *(v2 + 16);
  result = *(v2 + 32);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_100251A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*(a1 + 8) + 72);
  if (!v2)
  {
    v2 = *(qword_10045E250 + 72);
  }

  return sub_100145110(a2, v2);
}

void *sub_100251AB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*(a1 + 8) + 160);
  if (!v2)
  {
    v2 = *(qword_10045E250 + 160);
  }

  return sub_10014C1B4(a2, v2);
}

uint64_t sub_100251B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + 8) + 168);
  v4 = v3;
  if (!v3)
  {
    v4 = *(qword_10045E250 + 168);
  }

  if (*(v4 + 16) * 0.5 + 0.001 < *(v4 + 24))
  {
    sub_1000474A4(v7, "");
    sub_10023FE44("0.5 * dynamicuniverseparameters().venuegroupdistance() must be >= dynamicuniverseparameters().debouncedistance()", &v8);
    sub_100383AA4(&v8, __p, v7);
    sub_10003F5D0(__p);
  }

  if (!v3)
  {
    v3 = *(qword_10045E250 + 168);
  }

  return sub_1001658D0(a2, v3);
}

void sub_100251C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100251C84(uint64_t a1)
{
  result = *(*(a1 + 8) + 88);
  if (!result)
  {
    return *(qword_10045E250 + 88);
  }

  return result;
}

int32x2_t sub_100251CA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1002D5AA8(a2);
  v4 = *(*(a1 + 8) + 216);
  if (!v4)
  {
    v4 = *(qword_10045E250 + 216);
  }

  v5 = v3[4].i32[1];
  v3[4].i32[1] = v5 | 3;
  result = vrev64_s32(v4[2]);
  v3[2] = result;
  v7 = v4[3].i32[1];
  v3[4].i32[1] = v5 | 7;
  v8 = v4[3].i32[0];
  v3[4].i32[1] = v5 | 0xF;
  v3[3].i32[0] = v7;
  v3[3].i32[1] = v8;
  return result;
}

uint64_t sub_100251D2C(uint64_t a1)
{
  result = *(*(a1 + 8) + 256);
  if (!result)
  {
    return *(qword_10045E250 + 256);
  }

  return result;
}

uint64_t sub_100251D50(uint64_t a1)
{
  result = *(*(a1 + 8) + 280);
  if (!result)
  {
    return *(qword_10045E250 + 280);
  }

  return result;
}

uint64_t sub_100251D74(uint64_t a1)
{
  result = *(*(a1 + 8) + 288);
  if (!result)
  {
    return *(qword_10045E250 + 288);
  }

  return result;
}

uint64_t sub_100251D98(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 264);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 264);
  }

  return *(v1 + 16);
}

uint64_t sub_100251DC4(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 264);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 264);
  }

  return *(v1 + 24);
}

uint64_t sub_100251DF0(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 264);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 264);
  }

  return *(v1 + 32);
}

uint64_t sub_100251E1C(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 264);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 264);
  }

  return *(v1 + 40);
}

uint64_t sub_100251E48(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 264);
  if (!v1)
  {
    v1 = *(qword_10045E250 + 264);
  }

  return *(v1 + 48);
}

std::string *sub_100251EA4@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100251ED8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100251EF4(uint64_t a1, unsigned int *a2)
{
  sub_100003AE8(*a1);
  if (v15[0] == v15[0] >> 31)
  {
    v4 = *a2;
  }

  else
  {
    v4 = sub_100252188(v15, __p);
    if ((*(a1 + 8) & 1) == 0)
    {
      if (qword_10045B050 != -1)
      {
        sub_100386588();
      }

      v5 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        sub_1000D8264(v15, __p);
        if (v10 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136315394;
        v12 = v6;
        v13 = 2080;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "developer override of %s with %s", buf, 0x16u);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(a1 + 8) = 1;
    }
  }

  sub_100005B18(v15);
  return v4;
}

uint64_t sub_100252188(_DWORD *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = (a1 + 2);
  v4 = v3 ^ (v3 >> 31);
  if (v4 <= 2)
  {
    if (!v4)
    {

      sub_100252314();
    }

    if (v4 == 1)
    {
      if ((*v2 & 0x80000000) != 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        exception->__vftable = 0;
        v13 = sub_1000D87D8(exception);
      }

      return *v2;
    }

    else
    {
      v7 = *v2;
      sub_100252498(*v2);
      return v7;
    }
  }

  else
  {
    if (v4 > 4)
    {
      if (v4 == 5)
      {
        v6 = *v2;

        sub_1002526DC();
      }

      v11 = *v2;

      sub_100252860();
    }

    if (v4 == 3)
    {

      return sub_10025252C(a2, v2);
    }

    else
    {
      v8 = *v2;
      sub_100252640(*v2);
      v9 = ceil(v8);
      v10 = floor(v8);
      if (v8 >= 0.0)
      {
        return v10;
      }

      return v9;
    }
  }
}

void sub_1002523F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

void sub_100252460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x100252450);
}

uint64_t sub_100252498(uint64_t result)
{
  v1 = 2 * (HIDWORD(result) != 0);
  if (result < 0)
  {
    v1 = 1;
  }

  if (v1 == 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_1000D8810(exception);
  }

  if (v1 == 1)
  {
    v4 = __cxa_allocate_exception(8uLL);
    v4->__vftable = 0;
    v5 = sub_1000D87D8(v4);
  }

  return result;
}

uint64_t sub_10025252C(uint64_t a1, unsigned __int8 *a2)
{
  v9 = 0;
  v2 = a2[23];
  v3 = *a2;
  if (v2 >= 0)
  {
    v3 = a2;
  }

  if (v2 < 0)
  {
    v2 = *(a2 + 1);
  }

  if (!v2)
  {
    goto LABEL_14;
  }

  v4 = &v3[v2];
  v5 = *v3;
  if (v5 == 45 || v5 == 43)
  {
    ++v3;
  }

  LOBYTE(v10.__vftable) = 0;
  HIDWORD(v10.__vftable) = 1;
  v11 = &v9;
  v12 = v3;
  v13 = v4;
  v6 = sub_1000D89EC(&v10);
  if (v5 == 45)
  {
    v7 = -v9;
    v9 = -v9;
    if (v6)
    {
      return v7;
    }

LABEL_14:
    std::bad_cast::bad_cast(&v10);
    v10.__vftable = &off_100434090;
    sub_100049F88(&v10);
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  return v9;
}

void sub_100252640(double a1)
{
  v1 = 2 * (a1 >= 4294967300.0);
  if (a1 <= -1.0)
  {
    v1 = 1;
  }

  if (v1 == 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_1000D8810(exception);
  }

  if (v1 == 1)
  {
    v4 = __cxa_allocate_exception(8uLL);
    v4->__vftable = 0;
    v5 = sub_1000D87D8(v4);
  }
}

void sub_1002527C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

void sub_100252828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x100252818);
}

void sub_100252944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

void sub_1002529AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10025299CLL);
}

void sub_1002529E4(int *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v19 = v17;
  v20 = v18;
  v13 = *a1;
  v14 = v18;
  v15 = 48;
  v16 = 48;
  v3 = sub_1000E4C90(&v13);
  v19 = v3;
  v20 = v18;
  v4 = &v18[-v3];
  v5 = a2;
  if (&v18[-v3] >= 0x17)
  {
    std::string::__grow_by(a2, 0x16uLL, v4 - 22, 0, 0, 0, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2->__r_.__value_.__r.__words[0];
    }
  }

  if (v3 == v18)
  {
    v6 = v5;
  }

  else
  {
    if (v4 < 0x20 || v5 - v3 < 0x20)
    {
      v6 = v5;
      v7 = v3;
    }

    else
    {
      v6 = (v5 + (v4 & 0xFFFFFFFFFFFFFFE0));
      v7 = (v3 + (v4 & 0xFFFFFFFFFFFFFFE0));
      v8 = (v3 + 16);
      v9 = &v5->__r_.__value_.__r.__words[2];
      v10 = v4 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v11 = *v8;
        *(v9 - 1) = *(v8 - 1);
        *v9 = v11;
        v8 += 2;
        v9 += 4;
        v10 -= 32;
      }

      while (v10);
      if (v4 == (v4 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_15;
      }
    }

    do
    {
      v12 = *v7++;
      v6->__r_.__value_.__s.__data_[0] = v12;
      v6 = (v6 + 1);
    }

    while (v7 != v18);
  }

LABEL_15:
  v6->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = v4;
  }

  else
  {
    *(&a2->__r_.__value_.__s + 23) = v4 & 0x7F;
  }
}

void sub_100252B6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100252B88(_DWORD *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = (a1 + 2);
  v4 = v3 ^ (v3 >> 31);
  if (v4 <= 2)
  {
    if (!v4)
    {

      sub_100252CD8();
    }

    if (v4 == 1)
    {
      result = *v2;
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else
    {
      result = *v2;
      if ((result & 0x8000000000000000) == 0)
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v8 = sub_1000D87D8(exception);
  }

  if (v4 > 4)
  {
    if (v4 == 5)
    {
      v6 = *v2;

      sub_100253530();
    }

    v12 = *v2;

    sub_1002536B4();
  }

  if (v4 == 3)
  {

    return sub_100252E5C(a2, v2);
  }

  else
  {
    v9 = *v2;
    sub_100253494(*v2);
    v10 = ceil(v9);
    v11 = floor(v9);
    if (v9 >= 0.0)
    {
      return v11;
    }

    return v10;
  }
}

void sub_100252DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

void sub_100252E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x100252E14);
}

uint64_t sub_100252E5C(uint64_t a1, unsigned __int8 *a2)
{
  v9 = 0;
  v2 = a2[23];
  v3 = *a2;
  if (v2 >= 0)
  {
    v3 = a2;
  }

  if (v2 < 0)
  {
    v2 = *(a2 + 1);
  }

  if (!v2)
  {
    goto LABEL_14;
  }

  v4 = &v3[v2];
  v5 = *v3;
  if (v5 == 45 || v5 == 43)
  {
    ++v3;
  }

  LOBYTE(v10.__vftable) = 0;
  v11 = 1;
  v12 = &v9;
  v13 = v3;
  v14 = v4;
  v6 = sub_100252F6C(&v10);
  if (v5 == 45)
  {
    v7 = -v9;
    v9 = -v9;
    if (v6)
    {
      return v7;
    }

LABEL_14:
    std::bad_cast::bad_cast(&v10);
    v10.__vftable = &off_100434090;
    sub_100049F88(&v10);
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  return v9;
}

uint64_t sub_100252F6C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  *(a1 + 32) = v1 - 1;
  v3 = *(a1 + 16);
  *v3 = 0;
  if (v2 > v1 - 1)
  {
    return 0;
  }

  v4 = *(v1 - 1);
  if ((v4 - 58) < 0xF6u)
  {
    return 0;
  }

  *v3 = (v4 - 48);
  *(a1 + 32) = v1 - 2;
  std::locale::locale(&v51);
  v7 = std::locale::classic();
  if (std::locale::operator==(&v51, v7))
  {
    v9 = *(a1 + 24);
    v8 = *(a1 + 32);
    if (v8 >= v9)
    {
      v13 = *a1;
      while (1)
      {
        v16 = *(a1 + 8);
        v13 |= v16 > 0x1999999999999999;
        *a1 = v13 & 1;
        v17 = 10 * v16;
        *(a1 + 8) = 10 * v16;
        v18 = *v8;
        if ((v18 - 58) < 0xF6u)
        {
          break;
        }

        v19 = v18 - 48;
        v20 = v17 * (v18 - 48);
        if (v19)
        {
          if (v13)
          {
            break;
          }

          if (!is_mul_ok(v19, v17))
          {
            break;
          }

          v14 = *(a1 + 16);
          v15 = *v14;
          if (__CFADD__(v20, *v14))
          {
            break;
          }
        }

        else
        {
          v14 = *(a1 + 16);
          v15 = *v14;
        }

        *v14 = v15 + v20;
        *(a1 + 32) = --v8;
        if (v8 < v9)
        {
          goto LABEL_6;
        }
      }

      v10 = 0;
    }

    else
    {
LABEL_6:
      v10 = 1;
    }

    goto LABEL_61;
  }

  v11 = std::locale::use_facet(&v51, &std::numpunct<char>::id);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = v50;
  if ((v50 & 0x8000000000000000) != 0)
  {
    v12 = v49;
    if (!v49 || *__p <= 0)
    {
LABEL_27:
      v28 = *(a1 + 24);
      v27 = *(a1 + 32);
      if (v27 >= v28)
      {
        v39 = *a1;
        while (1)
        {
          v42 = *(a1 + 8);
          v39 |= v42 > 0x1999999999999999;
          *a1 = v39 & 1;
          v43 = 10 * v42;
          *(a1 + 8) = 10 * v42;
          v44 = *v27;
          if ((v44 - 58) < 0xF6u)
          {
            break;
          }

          v45 = v44 - 48;
          v46 = v43 * (v44 - 48);
          if (v45)
          {
            if (v39)
            {
              break;
            }

            if (!is_mul_ok(v45, v43))
            {
              break;
            }

            v40 = *(a1 + 16);
            v41 = *v40;
            if (__CFADD__(v46, *v40))
            {
              break;
            }
          }

          else
          {
            v40 = *(a1 + 16);
            v41 = *v40;
          }

          *v40 = v41 + v46;
          *(a1 + 32) = --v27;
          if (v27 < v28)
          {
            goto LABEL_28;
          }
        }

LABEL_58:
        v29 = 0;
        if ((v50 & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      goto LABEL_28;
    }
  }

  else if (!v50 || __p <= 0)
  {
    goto LABEL_27;
  }

  v21 = (v11->__vftable[1].~facet_0)(v11);
  v22 = *(a1 + 24);
  v23 = *(a1 + 32);
  if (v23 >= v22)
  {
    v24 = 0;
    p_p = __p;
    if (v50 >= 0)
    {
      p_p = &__p;
    }

    v26 = *p_p - 1;
    while (1)
    {
      while (v26)
      {
        v32 = *(a1 + 8);
        v33 = *a1 | (v32 > 0x1999999999999999);
        *a1 = v33;
        v34 = 10 * v32;
        *(a1 + 8) = v34;
        v35 = *v23;
        if ((v35 - 58) < 0xF6u)
        {
          goto LABEL_58;
        }

        v36 = v35 - 48;
        v37 = v34 * (v35 - 48);
        if (v36)
        {
          if (v33)
          {
            goto LABEL_58;
          }

          if (!is_mul_ok(v36, v34))
          {
            goto LABEL_58;
          }

          v30 = *(a1 + 16);
          v31 = *v30;
          if (__CFADD__(v37, *v30))
          {
            goto LABEL_58;
          }
        }

        else
        {
          v30 = *(a1 + 16);
          v31 = *v30;
        }

        *v30 = v31 + v37;
        --v26;
        *(a1 + 32) = --v23;
        if (v23 < v22)
        {
          goto LABEL_28;
        }
      }

      if (*v23 != v21)
      {
        break;
      }

      if (v23 == v22)
      {
        goto LABEL_58;
      }

      if (v12 - 1 > v24)
      {
        ++v24;
      }

      if (v50 >= 0)
      {
        v38 = &__p;
      }

      else
      {
        v38 = __p;
      }

      v26 = v38[v24];
      *(a1 + 32) = --v23;
      if (v23 < v22)
      {
        goto LABEL_28;
      }
    }

    v29 = sub_1002533AC(a1);
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_28:
  v29 = 1;
  if (v50 < 0)
  {
LABEL_59:
    v47 = v29;
    operator delete(__p);
    v29 = v47;
  }

LABEL_60:
  v10 = v29;
LABEL_61:
  std::locale::~locale(&v51);
  return v10;
}

void sub_10025336C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::locale::~locale(&a15);
    _Unwind_Resume(a1);
  }

  std::locale::~locale(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1002533AC(uint64_t a1)
{
  if (*(a1 + 32) < *(a1 + 24))
  {
    return 1;
  }

  do
  {
    result = sub_100253404(a1);
    if (!result)
    {
      break;
    }

    v3 = *(a1 + 24);
    v4 = *(a1 + 32) - 1;
    *(a1 + 32) = v4;
  }

  while (v4 >= v3);
  return result;
}

uint64_t sub_100253404(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1 | (v1 > 0x1999999999999999);
  *a1 = v2;
  v3 = 10 * v1;
  *(a1 + 8) = v3;
  v4 = **(a1 + 32);
  if ((v4 - 58) < 0xF6u)
  {
    return 0;
  }

  v5 = v4 - 48;
  v6 = v3 * (v4 - 48);
  if (v5)
  {
    if ((v2 & 1) == 0 && is_mul_ok(v5, v3))
    {
      v7 = *(a1 + 16);
      v8 = *v7;
      if (!__CFADD__(v6, *v7))
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  v7 = *(a1 + 16);
  v8 = *v7;
LABEL_9:
  *v7 = v8 + v6;
  return 1;
}

void sub_100253494(double a1)
{
  v1 = 2 * (a1 >= 1.84467441e19);
  if (a1 <= -1.0)
  {
    v1 = 1;
  }

  if (v1 == 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_1000D8810(exception);
  }

  if (v1 == 1)
  {
    v4 = __cxa_allocate_exception(8uLL);
    v4->__vftable = 0;
    v5 = sub_1000D87D8(v4);
  }
}

void sub_100253614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

void sub_10025367C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10025366CLL);
}

void sub_100253798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

void sub_100253800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1002537F0);
}

std::string *sub_100253838@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10025386C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100253888()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002538F8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_10025399C(double *a1, uint64_t a2, double a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v7 = (*(*a2 + 16))(a2) + -0.5;
    v8 = log(fabs(v7) * -2.0 + 1.0);
    if (fabs(v8) != INFINITY)
    {
      v6 = v8 * (v5 / -1.41421356 * ((v7 > 0.0) - (v7 < 0.0)));
    }
  }

  return v4 * a3 + v6;
}

_BYTE *sub_100253A8C(_BYTE *result)
{
  *result = 0;
  result[96] = 0;
  return result;
}

BOOL sub_100253A98(uint64_t a1)
{
  if (*a1 != 1)
  {
    return 0;
  }

  v1 = *(a1 + 96);
  if ((*(a1 + 88) & 0x40) != 0)
  {
    if (!*(a1 + 96) || (*(a1 + 88) & 0x20) == 0 || (*(a1 + 88) & 1) == 0 || (*(a1 + 184) & 0x20) == 0 || (*(a1 + 184) & 1) == 0 || (v5 = *(a1 + 72), v6 = *(a1 + 168), v5 != v6) && (*(a1 + 40) - *(a1 + 136)) / (v5 - v6) != 0.0)
    {
      v4 = 1.0 / *(a1 + 80);
      return v4 > 0.0;
    }

    return 0;
  }

  if (!*(a1 + 96))
  {
    return v1;
  }

  v1 = 0;
  if ((*(a1 + 88) & 0x20) == 0)
  {
    return v1;
  }

  if ((*(a1 + 88) & 1) == 0)
  {
    return v1;
  }

  v1 = 0;
  if ((*(a1 + 184) & 0x20) == 0 || (*(a1 + 184) & 1) == 0)
  {
    return v1;
  }

  v2 = *(a1 + 72);
  v3 = *(a1 + 168);
  v4 = 0.0;
  if (v2 != v3)
  {
    v4 = (*(a1 + 40) - *(a1 + 136)) / (v2 - v3);
  }

  return v4 > 0.0;
}

double sub_100253B64(uint64_t a1)
{
  result = 0.0;
  if (*a1 == 1)
  {
    if ((*(a1 + 88) & 0x40) != 0)
    {
      return 1.0 / *(a1 + 80);
    }

    else if (*(a1 + 96) == 1 && (*(a1 + 88) & 0x20) != 0 && (*(a1 + 88) & 1) != 0 && (*(a1 + 184) & 0x20) != 0 && (*(a1 + 184) & 1) != 0)
    {
      v2 = *(a1 + 72);
      v3 = *(a1 + 168);
      if (v2 != v3)
      {
        return (*(a1 + 40) - *(a1 + 136)) / (v2 - v3);
      }
    }
  }

  return result;
}

void sub_100253BD4(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[96] == 1)
  {
    v5 = (a1 + 104);
    if (v4)
    {
      sub_10012BBD4(v5, (a1 + 8));
      v6 = (a1 + 8);
      v7 = a2;
      if (*a1 != 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      nullsub_71(v5);
      a1[96] = 0;
      v6 = (a1 + 8);
      v7 = a2;
      if (*a1 != 1)
      {
LABEL_12:
        sub_10012BB70(v6, v7);
        *a1 = 1;
        return;
      }
    }
  }

  else
  {
    if (*a1)
    {
      sub_10012BB70((a1 + 104), (a1 + 8));
      a1[96] = 1;
    }

    v6 = (a1 + 8);
    v7 = a2;
    if (*a1 != 1)
    {
      goto LABEL_12;
    }
  }

  sub_10012BBD4(v6, v7);
}

uint64_t sub_100253CA0(uint64_t a1, _DWORD *a2, int *a3, double *a4)
{
  v5 = *a3;
  *a1 = *a2;
  *(a1 + 4) = v5;
  sub_10031C16C((a1 + 8), a4);
  if (!*(a1 + 12) || !*(a1 + 8))
  {
    __cxa_allocate_exception(0x40uLL);
    sub_100014A08(&v8, "Malformed inner grid cells! What's going on here?");
    std::runtime_error::runtime_error(&v9, &v8);
    v9.__vftable = &off_100444338;
    sub_10010A984(v7);
  }

  return a1;
}

void sub_100253D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

void sub_100253E08(std::runtime_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::runtime_error::runtime_error(&v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10.__vftable = &off_1004442F0;
  v11 = off_100444318;
  sub_1002546D8(&v16, &v10);
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

  sub_1002543F8();
}

void sub_10025412C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_100254154(std::runtime_error *a1)
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

  std::runtime_error::~runtime_error(a1);
}

uint64_t sub_1002541F0(_DWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 20) - a1[1];
  v5 = *(a2 + 16) - *a1;
  v4 = v2;
  return sub_10031C178(a1 + 2, &v5, &v4);
}

uint64_t sub_100254230(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  std::runtime_error::runtime_error(a1, a2)->__vftable = &off_100444338;
  v4 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &off_100444250;
  *(a1 + 16) = off_100444288;
  *(a1 + 56) = &off_1004442C0;
  return a1;
}

void sub_100254364(std::runtime_error *a1)
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

  std::runtime_error::~runtime_error(a1);
}

void sub_100254694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100045790(va);
  _Unwind_Resume(a1);
}

void sub_1002546A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_100045790(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002546D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100444338;
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_100444250;
  *(a1 + 16) = off_100444288;
  *(a1 + 56) = &off_1004442C0;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_10025482C(std::runtime_error *a1)
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

  std::runtime_error::~runtime_error(a1);
}

void sub_1002548C0(std::runtime_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_1002549E0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100254230(exception, a1);
}

void sub_100254A3C(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_100254AC4(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

void sub_100254BF4(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100254230(exception, a1 + v2);
}

void sub_100254C68(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(v1);
}

void sub_100254D08(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(v1);

  operator delete();
}

void sub_100254DBC(std::runtime_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_100254E5C(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_100254EE4(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

void sub_100254F80(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_100254FB8(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100444338;
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_100444250;
  *(a1 + 16) = off_100444288;
  *(a1 + 56) = &off_1004442C0;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_10025510C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10025517C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

__n128 sub_1002551EC(uint64_t a1, int a2, __n128 *a3)
{
  *a1 = a2;
  result = *a3;
  *(a1 + 8) = *a3;
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  return result;
}

void sub_10025520C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10025527C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002552EC(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_100444360;
  v5 = a1 + 1;
  LODWORD(__p) = sub_100170784(a2);
  v8 = sub_1002CDB1C(a2);
  v7 = sub_1002CDB28(a2);
  v6 = sub_1002CDB34(a2);
  sub_10031C15C(v10, &v7, &v6);
  sub_1002541EC(v5, &__p, &v8, v10);
  sub_100212B98(a3, a2);
}

void sub_100255530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 + 79) < 0)
  {
    operator delete(*(v16 + 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10025559C(uint64_t a1)
{
  *a1 = off_100444360;
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100231890(v2);
    *(a1 + 80) = 0;
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

void sub_100255610(uint64_t a1)
{
  *a1 = off_100444360;
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100231890(v2);
    *(a1 + 80) = 0;
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  operator delete();
}

BOOL sub_100255694(uint64_t a1)
{
  v1 = (a1 + 80);
  if (*(a1 + 80))
  {
    return 1;
  }

  v3 = *(a1 + 79);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = a1;
    v5 = sub_100230694((a1 + 56), v3, v1);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_10:
    *(v4 + 88) = sub_10023186C(*(v4 + 80));
    return 1;
  }

  v4 = a1;
  v5 = sub_100230694(*(a1 + 56), *(a1 + 64), v1);
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_6:
  v6 = v5;
  if (qword_10045B050 == -1)
  {
    v7 = qword_10045B058;
    result = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR);
    if (result)
    {
LABEL_8:
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Couldn't deserialize rssi data: %d", v8, 8u);
      return 0;
    }
  }

  else
  {
    sub_1003865B0();
    v7 = qword_10045B058;
    result = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR);
    if (result)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1002557BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1002541F0((a1 + 8), a2);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = v5;
  result = sub_100255694(a1);
  if (result)
  {
    v8 = sub_100231810(*(a1 + 80), v6 % *(a1 + 20), v6 / *(a1 + 20));
    result = v8 != *(a1 + 88);
    if (a3)
    {
      v9 = vdup_n_s32(result);
      v10.i64[0] = v9.u32[0];
      v10.i64[1] = v9.u32[1];
      __asm { FMOV            V2.2D, #1.0 }

      *_Q2.i64 = v8;
      *(a3 + 8) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v10, 0x3FuLL)), _Q2, xmmword_1003D9F20);
    }
  }

  return result;
}

void sub_100255868()
{
  __cxa_allocate_exception(0x40uLL);
  *(&v1.__r_.__value_.__s + 23) = 10;
  strcpy(&v1, "Not ported");
  std::runtime_error::runtime_error(&v2, &v1);
  v2.__vftable = &off_100444338;
  sub_10010A984(v0);
}

void sub_10025592C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

void sub_100255994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x100255984);
}

float sub_1002559F8(uint64_t a1, int a2)
{
  sub_100255694(a1);
  v4 = sub_100231810(*(a1 + 80), a2 % *(a1 + 20), a2 / *(a1 + 20)) == *(a1 + 88);
  result = 1.0;
  if (v4)
  {
    return 0.0;
  }

  return result;
}

void sub_100255A80()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100255AF0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void *sub_100255B60(void *a1, void *a2, void *a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = a3[1] - *a3;
  if (v8)
  {
    if (!((0xCCCCCCCCCCCCCCCDLL * (v8 >> 4)) >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_100258440(__p, 0);
  v9 = *a3;
  for (i = a3[1]; v9 != i; v9 += 10)
  {
    sub_1001E8C4C(v9, a4, __p);
    v12 = (*(**a2 + 24))(*a2, __p);
    sub_100255CD4(a1, &v12);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_100255C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (!*v11)
  {
    _Unwind_Resume(exception_object);
  }

  *(v11 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void sub_100255CD4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_10000FC84();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_100255DEC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100255E5C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100255ECC(unsigned __int8 *a1, unsigned __int8 *a2, int **a3)
{
  v4 = 0;
  v295 = 0;
  memset(v294, 0, sizeof(v294));
  v5 = 1;
  if (!a1 || !a2)
  {
    goto LABEL_226;
  }

  v291 = a1;
  v292 = &a2[a1];
  v293 = 0;
  v8 = setjmp(v294 + 1);
  if (v8)
  {
    v5 = v8;
    v4 = 0;
    goto LABEL_226;
  }

  v9 = v294[0];
  if (LODWORD(v294[0]))
  {
    v10 = LODWORD(v294[0]) - 1;
    v11 = 2 * v293;
    v293 *= 2;
    --LODWORD(v294[0]);
    if (v9 > 4)
    {
      v14 = v11;
      v15 = v9 - 1;
    }

    else
    {
      v12 = v291;
      if (v291 >= v292)
      {
        goto LABEL_339;
      }

      ++v291;
      v13 = v10 | 8;
      v14 = (*v12 << 56 >> v10) + v11;
      v15 = v13;
    }
  }

  else
  {
    v16 = v291;
    if (v291 >= v292)
    {
      goto LABEL_339;
    }

    ++v291;
    v17 = v293 + (*v16 << 56);
    if (v17 < 0)
    {
      v5 = 5;
      goto LABEL_225;
    }

    v14 = 2 * v17;
    v15 = 7;
  }

  v18 = v14;
  v19 = v14 >> 60;
  v20 = v19;
  v21 = 16 * v18;
  v293 = 16 * v18;
  LODWORD(v294[0]) = v15 - 4;
  if (v15 - 4 >= v19)
  {
    v25 = 16 * v18;
    v26 = v15 - 4;
  }

  else
  {
    v22 = v291;
    if (v291 >= v292)
    {
      goto LABEL_339;
    }

    v23 = ++v291;
    v24 = (*v22 << 56 >> (v15 - 4)) + v21;
    v25 = v24;
    v293 = v24;
    v26 = v15 + 4;
    LODWORD(v294[0]) = v15 + 4;
    if ((v15 - 4) + 8 < v19)
    {
      if (v23 >= v292)
      {
        goto LABEL_339;
      }

      v291 = v22 + 2;
      v25 = (v22[1] << 56 >> (v15 + 4)) + v24;
      v26 = v15 + 12;
    }
  }

  v293 = v25 << v19;
  v27 = (v26 - v19);
  LODWORD(v294[0]) = v27;
  if (v27 >= v19)
  {
    v31 = v25 << v19;
LABEL_26:
    v32 = v27;
    goto LABEL_27;
  }

  v28 = v291;
  if (v291 >= v292)
  {
    goto LABEL_339;
  }

  v29 = ++v291;
  v30 = (*v28 << 56 >> (v26 - v19)) + (v25 << v19);
  v31 = v30;
  v293 = v30;
  v32 = v27 + 8;
  LODWORD(v294[0]) = v27 + 8;
  if (v27 + 8 < v19)
  {
    if (v29 >= v292)
    {
      goto LABEL_339;
    }

    v291 = v28 + 2;
    v293 = (v28[1] << 56 >> (v27 + 8)) + v30;
    LODWORD(v27) = v27 + 16;
    LODWORD(v294[0]) = v27;
    v31 = v293;
    goto LABEL_26;
  }

LABEL_27:
  v293 = v31 << v19;
  v33 = v32 - v19;
  LODWORD(v294[0]) = v32 - v19;
  if ((v32 - v19) > 1)
  {
    v35 = v31 << v19;
    v36 = v32 - v19;
  }

  else
  {
    v34 = v291;
    if (v291 >= v292)
    {
      goto LABEL_339;
    }

    ++v291;
    v35 = (*v34 << 56 >> v33) + (v31 << v19);
    v36 = v33 | 8;
  }

  v293 = 4 * v35;
  LODWORD(v294[0]) = v36 - 2;
  v37 = v36 - 2;
  if ((v36 - 2) <= 7)
  {
    v38 = v291;
    if (v291 < v292)
    {
      ++v291;
      v39 = (*v38 << 56 >> v37) + 4 * v35;
      v37 = v36 + 6;
      goto LABEL_35;
    }

LABEL_339:
    longjmp(v294 + 1, 3);
  }

  v39 = 4 * v35;
LABEL_35:
  v40 = v25 >> -v19;
  v293 = v39 << 8;
  LODWORD(v294[0]) = v37 - 8;
  v5 = 9;
  if (v40 < 2)
  {
    v4 = 0;
    goto LABEL_226;
  }

  v41 = v31 >> (64 - v19);
  v4 = 0;
  if (v41 >= 2)
  {
    v42 = (v41 * v40);
    if (v42 > 0x100000)
    {
      goto LABEL_225;
    }

    v43 = v40;
    v287 = v40;
    v44 = malloc_type_calloc((4 * v42 + 20), 1uLL, 0xF2AE01A9uLL);
    if (!v44)
    {
      v5 = 7;
      goto LABEL_225;
    }

    v45 = v35 >> 62;
    v46 = v44;
    *v44 = v43;
    v44[1] = v41;
    v44[3] = v45;
    v44[4] = HIBYTE(v39);
    v44[2] = v20;
    if (!v42)
    {
      goto LABEL_49;
    }

    if (v42 == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = v42 & 0x1FFFFE;
      v48 = v44 + 27;
      v49 = v47;
      do
      {
        *(v48 - 4) = 1;
        *v48 = 1;
        v48 += 8;
        v49 -= 2;
      }

      while (v49);
      if ((v42 & 0x1FFFFE) == v42)
      {
        goto LABEL_49;
      }
    }

    v50 = v42 - v47;
    v51 = &v44[v47 + 5] + 3;
    do
    {
      *v51 = 1;
      v51 += 4;
      --v50;
    }

    while (v50);
LABEL_49:
    v52 = v294[0];
    v53 = v292;
    v54 = v293;
    v55 = v291;
    v56 = v44 + 5;
    while (1)
    {
      if (v52)
      {
        v57 = v55;
        v58 = v54;
        v59 = v52 - 1;
        v60 = v58;
        v61 = 2 * v58;
        v293 = v61;
        LODWORD(v294[0]) = v59;
        if ((v60 & 0x8000000000000000) == 0)
        {
          break;
        }

        goto LABEL_56;
      }

      if (v55 >= v53)
      {
        goto LABEL_338;
      }

      v291 = v55 + 1;
      v62 = v54 + (*v55 << 56);
      v57 = v291;
      v59 = 7;
      v63 = v62;
      v61 = 2 * v62;
      v293 = v61;
      LODWORD(v294[0]) = 7;
      if ((v63 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_56:
      v64 = v44[2];
      if (v59 >= v64)
      {
        v68 = v61;
      }

      else
      {
        v65 = v57;
        v66 = v59;
        do
        {
          if (v65 >= v53)
          {
            goto LABEL_338;
          }

          v67 = v65++;
          v291 = v65;
          v61 += *v67 << 56 >> v66;
          v293 = v61;
          LODWORD(v294[0]) = v66 + 8;
          v66 += 8;
          v68 = v61;
          v57 = v65;
          v59 = v66;
        }

        while (v66 < v64);
      }

      v69 = v59;
      v70 = v68;
      v71 = v64;
      v72 = v68 << v64;
      v293 = v68 << v64;
      LODWORD(v294[0]) = v69 - v64;
      v73 = v69 - v64;
      v74 = v44[2];
      if (v73 >= v74)
      {
        v78 = v57;
        v77 = v72;
      }

      else
      {
        v75 = v57;
        v76 = v73;
        do
        {
          if (v75 >= v53)
          {
            goto LABEL_338;
          }

          v291 = v75 + 1;
          v72 += *v75 << 56 >> v76;
          v293 = v72;
          LODWORD(v294[0]) = v76 + 8;
          v77 = v72;
          v78 = ++v75;
          v76 += 8;
          v73 = v76;
        }

        while (v76 < v74);
      }

      v79 = v74;
      v80 = v77 >> -v74;
      v81 = v77 << v74;
      v293 = v81;
      v82 = v73 - v79;
      LODWORD(v294[0]) = v73 - v79;
      if ((v80 & 0x80000000) != 0)
      {
LABEL_299:
        longjmp(v294 + 1, 6);
      }

      v83 = v70 >> -v71;
      v84 = v292;
      v85 = v78;
      v86 = v81;
      v87 = v82;
      v88 = 0;
      v89 = v83;
      while (1)
      {
        v90 = v80;
        if (v80 >= v44[1] || v89 < 0 || v89 >= *v44)
        {
          goto LABEL_299;
        }

        HIBYTE(v56[(v89 + *v44 * v80)]) = 2;
        if (v87 > 1)
        {
          v92 = v78;
          v91 = v87;
        }

        else
        {
          if (v78 >= v84)
          {
            goto LABEL_338;
          }

          v291 = v78 + 1;
          v86 += *v78 << 56 >> v87;
          v91 = v87 | 8;
          v92 = v78 + 1;
          v85 = v78 + 1;
        }

        v93 = v86;
        v94 = v86 >> 62;
        v95 = 4 * v93;
        v96 = 4 * v93;
        v293 = 4 * v93;
        v97 = v91 - 2;
        LODWORD(v294[0]) = v91 - 2;
        if (v94 > 1)
        {
          if (v94 != 2)
          {
            ++v88;
          }

          goto LABEL_92;
        }

        if (v94)
        {
          --v88;
LABEL_92:
          v78 = v92;
          v86 = v96;
          v87 = v91 - 2;
          goto LABEL_93;
        }

        if ((v91 - 2) <= 1)
        {
          if (v92 >= v84)
          {
            goto LABEL_338;
          }

          v291 = v92 + 1;
          v98 = (*v92++ << 56 >> v97) + v95;
          v85 = v291;
          v96 = v98;
          v97 = v91 + 6;
        }

        v99 = v96 >> 62;
        v100 = 4 * v96;
        v293 = v100;
        LODWORD(v294[0]) = v97 - 2;
        if (v99 > 1)
        {
          break;
        }

        if (v99)
        {
          v88 += 2;
          goto LABEL_108;
        }

        if (v97 == 2)
        {
          if (v92 >= v84)
          {
            goto LABEL_338;
          }

          v291 = v92 + 1;
          v101 = v100 + (*v92 << 56);
          v78 = v92 + 1;
          v85 = v92 + 1;
          v86 = 2 * v101;
          v293 = 2 * v101;
          v87 = 7;
          LODWORD(v294[0]) = 7;
          if ((v101 & 0x8000000000000000) == 0)
          {
LABEL_88:
            v88 += 4;
            goto LABEL_93;
          }
        }

        else
        {
          v78 = v92;
          v86 = 2 * v100;
          v293 = 2 * v100;
          v87 = v97 - 3;
          LODWORD(v294[0]) = v97 - 3;
          if ((v100 & 0x8000000000000000) == 0)
          {
            goto LABEL_88;
          }
        }

        v88 += 3;
LABEL_93:
        v88 &= 7u;
        if (v88 > 3u)
        {
          if (v88 > 5u)
          {
            if (v88 != 6)
            {
              ++v89;
            }
          }

          else
          {
            --v89;
            if (v88 == 4)
            {
              goto LABEL_71;
            }
          }

          v90 = (v90 - 1);
        }

        else
        {
          if (v88 > 1u)
          {
            if (v88 != 2)
            {
              --v89;
            }

LABEL_102:
            v90 = (v90 + 1);
            goto LABEL_71;
          }

          ++v89;
          if (v88)
          {
            goto LABEL_102;
          }
        }

LABEL_71:
        v80 = v90;
        if ((v90 & 0x80000000) != 0)
        {
          goto LABEL_299;
        }
      }

      if (v99 == 2)
      {
        v88 -= 2;
LABEL_108:
        v78 = v92;
        v86 = v100;
        v87 = v97 - 2;
        goto LABEL_93;
      }

      v55 = v85;
      v54 = v100;
      v52 = v97 - 2;
    }

    v288 = v44;
    sub_100257644(v44);
    v102 = v291;
    v103 = v293;
    v104 = LODWORD(v294[0]);
    v105 = 0;
LABEL_114:
    v106 = v292;
    v107 = 0;
    v108 = v104;
    v109 = v104;
    v110 = v103;
    v111 = v103;
    v112 = v102;
    v113 = v102;
    while (2)
    {
      v115 = v110;
      v116 = v108;
      v117 = v113;
      v118 = &v56[v287 * v105 + v107];
      if (!*(v118 + 3))
      {
        v103 = v111;
        goto LABEL_116;
      }

      if (v107)
      {
        v119 = *(v118 - 4);
        if (v105)
        {
LABEL_120:
          v120 = &v56[v287 * (v105 - 1) + v107];
          v121 = *v120;
          if (v119)
          {
            v122 = v119;
          }

          else
          {
            v122 = *v120;
          }

          v123 = v122;
          if (v119 && *v120)
          {
            v124 = *v120;
            goto LABEL_151;
          }

          if (v107 + 1 >= v287)
          {
            v126 = 0;
            if (!v107)
            {
LABEL_133:
              v127 = v126;
              goto LABEL_137;
            }
          }

          else
          {
            v125 = LOWORD(v56[v287 * (v105 - 1) + 1 + v107]);
            if (v122)
            {
              v126 = LOWORD(v56[v287 * (v105 - 1) + 1 + v107]);
            }

            else
            {
              v122 = LOWORD(v56[v287 * (v105 - 1) + 1 + v107]);
              v126 = 0;
            }

            if (!v107)
            {
              goto LABEL_133;
            }
          }

          v127 = v126;
          if (v126 || (v123 = *(v120 - 2), v127 = v123, v122))
          {
LABEL_137:
            v128 = v127;
            v123 = v122;
            v129 = v122;
            if (v128)
            {
              v130 = v128;
              if (v122 - v128 >= 0)
              {
                v131 = v122 - v128;
              }

              else
              {
                v131 = v128 - v122;
              }

              v132 = v128 + v129;
              if (v132 < 2)
              {
LABEL_142:
                v133 = v113;
                v134 = v112;
                v135 = v112;
                v136 = v115;
                v137 = v116;
                v138 = 0;
                while (1)
                {
                  v139 = v135;
                  if (v137)
                  {
                    v140 = v133;
                    v141 = v134;
                    v142 = v137 - 1;
                    v143 = 2 * v136;
                    v144 = 2 * v136;
                    v293 = 2 * v136;
                    LODWORD(v294[0]) = v137 - 1;
                    if ((v136 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_166;
                    }
                  }

                  else
                  {
                    if (v135 >= v292)
                    {
                      goto LABEL_338;
                    }

                    v291 = v135 + 1;
                    v141 = ++v135;
                    v140 = v139 + 1;
                    v145 = v136 + (*v139 << 56);
                    v142 = 7;
                    v143 = 2 * v145;
                    v144 = 2 * v145;
                    v293 = 2 * v145;
                    LODWORD(v294[0]) = 7;
                    if ((v145 & 0x8000000000000000) != 0)
                    {
LABEL_166:
                      v146 = v138;
                      if (!v138)
                      {
                        if (v142)
                        {
                          v171 = v140;
                          v172 = v141;
                        }

                        else
                        {
                          if (v141 >= v106)
                          {
                            goto LABEL_338;
                          }

                          v291 = v141 + 1;
                          v144 = v143 + (*v141 << 56);
                          v142 = 8;
                          v172 = v141 + 1;
                          v171 = v141 + 1;
                        }

                        v103 = 2 * v144;
                        v293 = 2 * v144;
                        v116 = v142 - 1;
                        LODWORD(v294[0]) = v142 - 1;
                        if ((v144 & 0x8000000000000000) == 0)
                        {
                          LOWORD(v170) = 1;
                          goto LABEL_209;
                        }

                        if (v142 == 1)
                        {
                          if (v172 >= v106)
                          {
                            goto LABEL_338;
                          }

                          v291 = v172 + 1;
                          v103 = 2 * v144 + (*v172 << 56);
                          LODWORD(v116) = 8;
                          ++v172;
                          v171 = v291;
                        }

                        v213 = v103;
                        v214 = 2 * v103;
                        v103 = v214;
                        v293 = v214;
                        v116 = (v116 - 1);
                        LODWORD(v294[0]) = v116;
                        if ((v213 & 0x8000000000000000) == 0)
                        {
                          LOWORD(v170) = 2;
                          goto LABEL_209;
                        }

                        if (!v116)
                        {
                          if (v172 >= v106)
                          {
                            goto LABEL_338;
                          }

                          v291 = v172 + 1;
                          v103 = v214 + (*v172 << 56);
                          LODWORD(v116) = 8;
                          ++v172;
                          v171 = v291;
                        }

                        v293 = 2 * v103;
                        LODWORD(v294[0]) = v116 - 1;
                        v215 = ~(v103 >> 63) & 3;
                        v116 = (v116 - 1);
                        v103 *= 2;
                        LOWORD(v170) = v215;
                        goto LABEL_209;
                      }

LABEL_167:
                      if (v142 <= 1)
                      {
                        if (v141 >= v106)
                        {
                          goto LABEL_338;
                        }

                        v291 = v141 + 1;
                        v144 = (*v141 << 56 >> v142) + v143;
                        v142 |= 8u;
                        ++v141;
                        v140 = v291;
                      }

                      v168 = v141;
                      v293 = 4 * v144;
                      v103 = 4 * v144;
                      v169 = v142 - 2;
                      LODWORD(v294[0]) = v169;
                      LOWORD(v170) = (4 * v146) | (v144 >> 62);
                      v116 = v169;
                      v171 = v140;
                      v172 = v168;
                      goto LABEL_209;
                    }
                  }

                  ++v138;
                  v133 = v140;
                  v134 = v141;
                  v136 = v144;
                  v137 = v142;
                  if (v138 == 256)
                  {
                    v146 = 256;
                    goto LABEL_167;
                  }
                }
              }

              goto LABEL_155;
            }
          }

LABEL_150:
          v124 = v123;
LABEL_151:
          v129 = v123;
          v130 = v124;
          v147 = v129 - v124;
          if (v147 >= 0)
          {
            v131 = v147;
          }

          else
          {
            v131 = -v147;
          }

          v132 = v130 + v129;
          if ((v130 + v129) < 2)
          {
            goto LABEL_142;
          }

LABEL_155:
          if (v131 >= 2)
          {
            v173 = v112;
            v174 = v112;
            v175 = v115;
            v176 = v116;
            if (v131 < 9)
            {
              v177 = 0;
              do
              {
                v178 = v175;
                if (v176)
                {
                  v179 = v176 - 1;
                  v180 = v113;
                  v181 = v173;
                }

                else
                {
                  if (v174 >= v292)
                  {
                    goto LABEL_338;
                  }

                  v291 = v174 + 1;
                  v178 = v175 + (*v174 << 56);
                  v179 = 7;
                  v181 = ++v174;
                  v180 = v291;
                }

                v182 = v178;
                v183 = v181;
                v184 = 2 * v182;
                v185 = 2 * v182;
                v293 = 2 * v182;
                LODWORD(v294[0]) = v179;
                if (v182 < 0)
                {
                  break;
                }

                ++v177;
                v113 = v180;
                v173 = v183;
                v175 = 2 * v182;
                v176 = v179;
              }

              while (v177 != 256);
              if (!v179)
              {
                if (v183 >= v106)
                {
                  goto LABEL_338;
                }

                v291 = v183 + 1;
                v185 = v184 + (*v183 << 56);
                v179 = 8;
                ++v183;
                v180 = v291;
              }

              v186 = v183;
              v293 = 2 * v185;
              v187 = (v179 - 1);
              LODWORD(v294[0]) = v179 - 1;
              v188 = 2 * v185;
              v156 = v180;
              v189 = (2 * v177) | (v185 >> 63);
              v190 = v186;
              v191 = v131 & 1;
              v192 = v191 == 0;
              if (!(v189 | v191))
              {
                goto LABEL_185;
              }

              goto LABEL_201;
            }

            v197 = 0;
            while (1)
            {
              v198 = v174;
              if (v176)
              {
                v199 = v113;
                v200 = v173;
                v201 = v176 - 1;
                v202 = 2 * v175;
                v203 = 2 * v175;
                v293 = 2 * v175;
                LODWORD(v294[0]) = v176 - 1;
                if (v175 < 0)
                {
                  goto LABEL_197;
                }
              }

              else
              {
                if (v174 >= v292)
                {
                  goto LABEL_338;
                }

                v291 = v174 + 1;
                v200 = ++v174;
                v199 = v198 + 1;
                v204 = v175 + (*v198 << 56);
                v201 = 7;
                v202 = 2 * v204;
                v203 = 2 * v204;
                v293 = 2 * v204;
                LODWORD(v294[0]) = 7;
                if ((v204 & 0x8000000000000000) != 0)
                {
LABEL_197:
                  v205 = v197;
                  if (v201 <= 1)
                  {
LABEL_198:
                    if (v200 < v106)
                    {
                      v291 = v200 + 1;
                      v203 = (*v200 << 56 >> v201) + v202;
                      v201 |= 8u;
                      ++v200;
                      v199 = v291;
                      goto LABEL_200;
                    }

LABEL_338:
                    longjmp(v294 + 1, 3);
                  }

LABEL_200:
                  v206 = v200;
                  v293 = 4 * v203;
                  v188 = 4 * v203;
                  v207 = v201 - 2;
                  LODWORD(v294[0]) = v207;
                  v189 = (4 * v205) | (v203 >> 62);
                  v187 = v207;
                  v156 = v199;
                  v190 = v206;
                  v208 = v131 & 1;
                  v192 = v208 == 0;
                  if (v189 | v208)
                  {
                    goto LABEL_201;
                  }

LABEL_185:
                  v194 = 0;
                  v195 = v187;
                  v196 = v190;
                  goto LABEL_207;
                }
              }

              ++v197;
              v113 = v199;
              v173 = v200;
              v175 = v203;
              v176 = v201;
              if (v197 == 256)
              {
                v205 = 256;
                if (v201 <= 1)
                {
                  goto LABEL_198;
                }

                goto LABEL_200;
              }
            }
          }

          v148 = v113;
          v149 = v112;
          v150 = v112;
          v151 = v115;
          v152 = v116;
          v153 = 0;
          while (1)
          {
            v154 = v150;
            if (!v152)
            {
              break;
            }

            v155 = (v152 - 1);
            v156 = v148;
            v157 = v149;
            v158 = 2 * v151;
            v293 = 2 * v151;
            LODWORD(v294[0]) = v152 - 1;
            if (v151 < 0)
            {
              goto LABEL_184;
            }

LABEL_162:
            ++v153;
            v148 = v156;
            v149 = v157;
            v151 = v158;
            v152 = v155;
            if (v153 == 256)
            {
              v160 = v129 == v130;
              v161 = v158;
              v162 = 256;
              v163 = v155;
              v164 = v161;
              v165 = v157;
              if (v155)
              {
                goto LABEL_202;
              }

LABEL_164:
              if (v165 < v106)
              {
                v291 = v165 + 1;
                v164 += *v165++ << 56;
                v166 = v291;
                v167 = 7;
                goto LABEL_203;
              }

              goto LABEL_338;
            }
          }

          if (v150 >= v292)
          {
            goto LABEL_338;
          }

          v291 = v150 + 1;
          v159 = v151 + (*v150 << 56);
          v155 = 7;
          ++v150;
          v156 = v154 + 1;
          v157 = v154 + 1;
          v158 = 2 * v159;
          v293 = 2 * v159;
          LODWORD(v294[0]) = 7;
          if ((v159 & 0x8000000000000000) == 0)
          {
            goto LABEL_162;
          }

LABEL_184:
          v187 = v155;
          v188 = v158;
          v189 = v153;
          v190 = v157;
          v193 = v131 & 1;
          v192 = v193 == 0;
          if (!(v189 | v193))
          {
            goto LABEL_185;
          }

LABEL_201:
          v209 = v190;
          v160 = v192;
          v162 = v189;
          v163 = v187;
          v164 = v188;
          v165 = v209;
          if (!v163)
          {
            goto LABEL_164;
          }

LABEL_202:
          v167 = (v163 - 1);
          v166 = v156;
LABEL_203:
          v210 = 2 * v164;
          v293 = 2 * v164;
          LODWORD(v294[0]) = v167;
          v211 = v162 + !v160;
          if (v164 < 0)
          {
            v212 = -v162;
          }

          else
          {
            v212 = v211;
          }

          v195 = v167;
          v188 = v210;
          v156 = v166;
          v196 = v165;
          v194 = v212;
LABEL_207:
          v170 = v194 + (v132 >> 1);
          if (v170 < 0)
          {
            v216 = 4;
            goto LABEL_224;
          }

          v116 = v195;
          v103 = v188;
          v171 = v156;
          v172 = v196;
LABEL_209:
          v117 = v171;
          v109 = v116;
          *v118 = v170;
          v115 = v103;
          v112 = v172;
LABEL_116:
          v114 = v115;
          v102 = v117;
          ++v107;
          v111 = v103;
          v113 = v117;
          v108 = v116;
          v110 = v114;
          if (v107 != v287)
          {
            continue;
          }

          v104 = v109;
          if (++v105 != v41)
          {
            goto LABEL_114;
          }

          v219 = sub_1002575B4(&v291, 2u);
          if (v219 != 1)
          {
            if (v219)
            {
              v216 = 5;
              goto LABEL_224;
            }

            v220 = v287 & 0xF;
            if ((v287 & 0xF) == 0)
            {
              v220 = 16;
            }

            v221 = 8;
            if ((v287 & 7) != 0)
            {
              v221 = v287 & 7;
            }

            v222 = v287 - v221;
            v223 = v288 + 42;
            v224 = 4 * v287;
            v225 = v288 + 50;
            v226 = v221 - v287;
            v227 = v288 + 22;
            v228 = v288 + 23;
            v229 = 0;
            while (2)
            {
              if (v287 < 9uLL)
              {
                v230 = 0;
LABEL_295:
                v244 = &v228[4 * v230];
                v245 = v287 - v230;
                v246 = &v227[4 * v230];
                do
                {
                  v247 = *v244;
                  v244 += 4;
                  if (v247)
                  {
                    *v246 = 7;
                  }

                  v246 += 4;
                  --v245;
                }

                while (v245);
                ++v229;
                v223 += v224;
                v225 += v224;
                v227 += v224;
                v228 += v224;
                if (v229 == v41)
                {
                  goto LABEL_335;
                }

                continue;
              }

              break;
            }

            if (v287 < 0x11uLL)
            {
              v231 = 0;
              goto LABEL_275;
            }

            v232 = v223;
            v233 = v287 - v220;
            while (1)
            {
              v234 = v232 - 19;
              v235 = vld4q_s8(v234);
              v236 = vtstq_s8(v235, v235);
              if (v236.i8[0])
              {
                *(v232 - 20) = 7;
                if ((v236.i8[1] & 1) == 0)
                {
LABEL_243:
                  if ((v236.i8[2] & 1) == 0)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_260;
                }
              }

              else if ((v236.i8[1] & 1) == 0)
              {
                goto LABEL_243;
              }

              *(v232 - 16) = 7;
              if ((v236.i8[2] & 1) == 0)
              {
LABEL_244:
                if ((v236.i8[3] & 1) == 0)
                {
                  goto LABEL_245;
                }

                goto LABEL_261;
              }

LABEL_260:
              *(v232 - 12) = 7;
              if ((v236.i8[3] & 1) == 0)
              {
LABEL_245:
                if ((v236.i8[4] & 1) == 0)
                {
                  goto LABEL_246;
                }

                goto LABEL_262;
              }

LABEL_261:
              *(v232 - 8) = 7;
              if ((v236.i8[4] & 1) == 0)
              {
LABEL_246:
                if ((v236.i8[5] & 1) == 0)
                {
                  goto LABEL_247;
                }

                goto LABEL_263;
              }

LABEL_262:
              *(v232 - 4) = 7;
              if ((v236.i8[5] & 1) == 0)
              {
LABEL_247:
                if ((v236.i8[6] & 1) == 0)
                {
                  goto LABEL_248;
                }

                goto LABEL_264;
              }

LABEL_263:
              *v232 = 7;
              if ((v236.i8[6] & 1) == 0)
              {
LABEL_248:
                if ((v236.i8[7] & 1) == 0)
                {
                  goto LABEL_249;
                }

                goto LABEL_265;
              }

LABEL_264:
              v232[4] = 7;
              if ((v236.i8[7] & 1) == 0)
              {
LABEL_249:
                if ((v236.i8[8] & 1) == 0)
                {
                  goto LABEL_250;
                }

                goto LABEL_266;
              }

LABEL_265:
              v232[8] = 7;
              if ((v236.i8[8] & 1) == 0)
              {
LABEL_250:
                if ((v236.i8[9] & 1) == 0)
                {
                  goto LABEL_251;
                }

                goto LABEL_267;
              }

LABEL_266:
              v232[12] = 7;
              if ((v236.i8[9] & 1) == 0)
              {
LABEL_251:
                if ((v236.i8[10] & 1) == 0)
                {
                  goto LABEL_252;
                }

                goto LABEL_268;
              }

LABEL_267:
              v232[16] = 7;
              if ((v236.i8[10] & 1) == 0)
              {
LABEL_252:
                if ((v236.i8[11] & 1) == 0)
                {
                  goto LABEL_253;
                }

                goto LABEL_269;
              }

LABEL_268:
              v232[20] = 7;
              if ((v236.i8[11] & 1) == 0)
              {
LABEL_253:
                if ((v236.i8[12] & 1) == 0)
                {
                  goto LABEL_254;
                }

                goto LABEL_270;
              }

LABEL_269:
              v232[24] = 7;
              if ((v236.i8[12] & 1) == 0)
              {
LABEL_254:
                if ((v236.i8[13] & 1) == 0)
                {
                  goto LABEL_255;
                }

                goto LABEL_271;
              }

LABEL_270:
              v232[28] = 7;
              if ((v236.i8[13] & 1) == 0)
              {
LABEL_255:
                if ((v236.i8[14] & 1) == 0)
                {
                  goto LABEL_256;
                }

                goto LABEL_272;
              }

LABEL_271:
              v232[32] = 7;
              if ((v236.i8[14] & 1) == 0)
              {
LABEL_256:
                if (v236.i8[15])
                {
                  goto LABEL_273;
                }

                goto LABEL_240;
              }

LABEL_272:
              v232[36] = 7;
              if (v236.i8[15])
              {
LABEL_273:
                v232[40] = 7;
              }

LABEL_240:
              v232 += 64;
              v233 -= 16;
              if (!v233)
              {
                v231 = v287 - v220;
                v230 = v231;
                if (v220 < 9)
                {
                  goto LABEL_295;
                }

LABEL_275:
                v237 = v231;
                v238 = 4 * v231;
                v239 = v226 + v237;
                v240 = v225;
                while (2)
                {
                  v241 = &v240[v238 - 27];
                  v242 = vld4_s8(v241);
                  v243 = vtst_s8(v242, v242);
                  if (v243.i8[0])
                  {
                    v240[v238 - 28] = 7;
                    if (v243.i8[1])
                    {
                      goto LABEL_287;
                    }

LABEL_279:
                    if ((v243.i8[2] & 1) == 0)
                    {
                      goto LABEL_280;
                    }

LABEL_288:
                    v240[v238 - 20] = 7;
                    if (v243.i8[3])
                    {
                      goto LABEL_289;
                    }

LABEL_281:
                    if ((v243.i8[4] & 1) == 0)
                    {
                      goto LABEL_282;
                    }

LABEL_290:
                    v240[v238 - 12] = 7;
                    if (v243.i8[5])
                    {
                      goto LABEL_291;
                    }

LABEL_283:
                    if ((v243.i8[6] & 1) == 0)
                    {
                      goto LABEL_284;
                    }

LABEL_292:
                    v240[v238 - 4] = 7;
                    if (v243.i8[7])
                    {
LABEL_293:
                      v240[v238] = 7;
                    }
                  }

                  else
                  {
                    if ((v243.i8[1] & 1) == 0)
                    {
                      goto LABEL_279;
                    }

LABEL_287:
                    v240[v238 - 24] = 7;
                    if (v243.i8[2])
                    {
                      goto LABEL_288;
                    }

LABEL_280:
                    if ((v243.i8[3] & 1) == 0)
                    {
                      goto LABEL_281;
                    }

LABEL_289:
                    v240[v238 - 16] = 7;
                    if (v243.i8[4])
                    {
                      goto LABEL_290;
                    }

LABEL_282:
                    if ((v243.i8[5] & 1) == 0)
                    {
                      goto LABEL_283;
                    }

LABEL_291:
                    v240[v238 - 8] = 7;
                    if (v243.i8[6])
                    {
                      goto LABEL_292;
                    }

LABEL_284:
                    if (v243.i8[7])
                    {
                      goto LABEL_293;
                    }
                  }

                  v240 += 32;
                  v239 += 8;
                  if (!v239)
                  {
                    v230 = v222;
                    goto LABEL_295;
                  }

                  continue;
                }
              }
            }
          }

          v248 = v291;
          v249 = v293;
          v250 = LODWORD(v294[0]);
          v251 = v288 + 22;
          v289 = 7;
          v290 = 2;
          v252 = 0;
          v253 = 0;
LABEL_302:
          v254 = v253;
          v255 = v292;
          v256 = v287;
          v257 = v251;
          v258 = v250;
          v259 = v250;
          v260 = v249;
          v261 = v249;
          v262 = v248;
          v263 = v248;
          while (1)
          {
            v264 = v262;
            v269 = v260;
            v268 = v258;
            v267 = v254;
            if (v257[1])
            {
              if (v257[1] == 2)
              {
                v271 = &v290;
              }

              else
              {
                v271 = &v289;
              }

              if (v254 <= 0)
              {
                if (v268)
                {
                  v272 = v268 - 1;
                  v273 = 2 * v260;
                  v274 = 2 * v260;
                  v293 = 2 * v269;
                  LODWORD(v294[0]) = v268 - 1;
                  if ((v269 & 0x8000000000000000) == 0)
                  {
                    if (v268 <= 3)
                    {
                      if (v262 >= v255)
                      {
                        goto LABEL_338;
                      }

                      v291 = v262 + 1;
                      v274 = (*v262 << 56 >> v272) + v273;
                      v272 = (v268 - 1) | 8;
                      v264 = v262 + 1;
                      v263 = v262 + 1;
                    }

LABEL_319:
                    v293 = 8 * v274;
                    v268 = (v272 - 3);
                    LODWORD(v294[0]) = v272 - 3;
                    v259 = v268;
                    *v257 = v274 >> 61;
                    *v271 = v274 >> 61;
                    v269 = 8 * v274;
                    v261 = 8 * v274;
                    goto LABEL_306;
                  }

                  if (v268 == 1)
                  {
                    if (v262 >= v255)
                    {
                      goto LABEL_338;
                    }

                    v291 = v262 + 1;
                    v279 = v273 + (*v262 << 56);
                    v277 = 8;
                    v275 = v262 + 1;
                    v278 = v262 + 1;
                  }

                  else
                  {
                    v278 = v263;
                    v275 = v262;
                    v279 = v274;
                    v277 = v272;
                  }
                }

                else
                {
                  if (v262 >= v255)
                  {
                    goto LABEL_338;
                  }

                  v275 = v262 + 1;
                  v291 = v262 + 1;
                  v276 = (v260 + (*v262 << 56)) < 0;
                  v277 = 7;
                  v263 = v262 + 1;
                  v264 = v262 + 1;
                  v278 = v262 + 1;
                  v274 = 2 * (v260 + (*v262 << 56));
                  v279 = v274;
                  v272 = 7;
                  if (!v276)
                  {
                    goto LABEL_319;
                  }
                }

                v280 = v279;
                v281 = v278;
                v282 = 2 * v280;
                v283 = 2 * v280;
                v293 = 2 * v280;
                v284 = v277 - 1;
                LODWORD(v294[0]) = v277 - 1;
                if ((v280 & 0x8000000000000000) != 0)
                {
                  if (v277 <= 6)
                  {
                    if (v275 >= v255)
                    {
                      goto LABEL_338;
                    }

                    v291 = v275 + 1;
                    v286 = (*v275 << 56 >> v284) + v282;
                    v284 = v277 + 7;
                    ++v275;
                    v281 = v291;
                    v283 = v286;
                  }

                  v264 = v275;
                  v265 = v281;
                  v293 = v283 << 6;
                  v261 = v283 << 6;
                  v266 = v284 - 6;
                  LODWORD(v294[0]) = v266;
                  LODWORD(v267) = (v283 >> 58) + 5;
                }

                else
                {
                  if (v277 <= 2)
                  {
                    if (v275 >= v255)
                    {
                      goto LABEL_338;
                    }

                    v291 = v275 + 1;
                    v285 = (*v275 << 56 >> v284) + v282;
                    v284 = v277 + 7;
                    ++v275;
                    v281 = v291;
                    v283 = v285;
                  }

                  v264 = v275;
                  v265 = v281;
                  v293 = 4 * v283;
                  v261 = 4 * v283;
                  v266 = v284 - 2;
                  LODWORD(v294[0]) = v266;
                  LODWORD(v267) = (v283 >> 62) + 1;
                }

                v268 = v266;
                v259 = v266;
                v269 = v261;
                v263 = v265;
              }

              v267 = (v267 - 1);
              *v257 = *v271;
            }

LABEL_306:
            v270 = v267;
            v258 = v268;
            v260 = v269;
            v262 = v264;
            v257 += 4;
            v254 = v270;
            if (!--v256)
            {
              v248 = v263;
              v249 = v261;
              v250 = v259;
              ++v252;
              v251 += 4 * v287;
              v253 = v270;
              if (v252 == v41)
              {
                if (v270)
                {
                  v216 = 8;
                  goto LABEL_224;
                }

LABEL_335:
                if ((v291 - a1) == a2)
                {
                  v5 = 0;
                  v4 = v46;
                  goto LABEL_226;
                }

                v216 = 2;
LABEL_224:
                v217 = v216;
                free(v46);
                v5 = v217;
LABEL_225:
                v4 = 0;
                goto LABEL_226;
              }

              goto LABEL_302;
            }
          }
        }
      }

      else
      {
        v119 = 0;
        if (v105)
        {
          goto LABEL_120;
        }
      }

      break;
    }

    v123 = v119;
    goto LABEL_150;
  }

LABEL_226:
  result = v5;
  *a3 = v4;
  return result;
}

unint64_t sub_1002575B4(unsigned __int8 **a1, unsigned int a2)
{
  v2 = *(a1 + 6);
  if (v2 >= a2)
  {
    v5 = a1[2];
  }

  else
  {
    v4 = *a1;
    v3 = a1[1];
    do
    {
      if (v4 >= v3)
      {
        longjmp(a1 + 7, 3);
      }

      *a1 = v4 + 1;
      v5 = &a1[2][*v4 << 56 >> v2];
      a1[2] = v5;
      v2 += 8;
      *(a1 + 6) = v2;
      ++v4;
    }

    while (v2 < a2);
  }

  a1[2] = (v5 << a2);
  *(a1 + 6) = v2 - a2;
  return v5 >> -a2;
}

int *sub_100257644(int *result)
{
  v1 = result + 5;
  v2 = *result;
  if (v2 >= 1)
  {
    v3 = result[1];
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = 0;
      v6 = result + 23;
      v7 = 4 * v2;
      result = (result + 27);
      while (1)
      {
        if (v4)
        {
          if (v4 == v2 - 1)
          {
            v8 = &v6[4 * v4];
            v9 = v3;
            v10 = v5;
            do
            {
              if (*v8 == 1)
              {
                *v8 = 0;
                v10 = 1;
              }

              v8 += v7;
              --v9;
            }

            while (v9);
          }

          else
          {
            v13 = &v1[v4];
            v15 = *(v13 + 3);
            v14 = v13 + 3;
            if (v15 == 1)
            {
              *v14 = 0;
              v5 = 1;
            }

            if (v3 == 1)
            {
              v10 = v5;
            }

            else
            {
              v16 = &v6[4 * v4];
              v17 = &result[v2 + v4];
              v18 = v3 - 1;
              v19 = (v3 - 1) - 1;
              v10 = v5;
              do
              {
                if (*(v17 - 4) == 1 && (!v19 || !*(v17 - 8) || !*v17 || !*v16 || !v16[8 * v2]))
                {
                  *(v17 - 4) = 0;
                  v10 = 1;
                }

                --v19;
                v16 += v7;
                v17 = (v17 + v7);
                --v18;
              }

              while (v18);
            }
          }
        }

        else
        {
          v11 = v3;
          v12 = v6;
          v10 = v5;
          do
          {
            if (*v12 == 1)
            {
              *v12 = 0;
              v10 = 1;
            }

            v12 += 4 * v2;
            --v11;
          }

          while (v11);
        }

        ++v4;
        v5 = v10;
        if (v4 == v2)
        {
          v4 = 0;
          v5 = 0;
          if (!v10)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

double sub_1002577BC(_DWORD *a1, int a2, int a3)
{
  v3 = 0;
  if ((a2 & 0x80000000) == 0 && (a3 & 0x80000000) == 0 && *a1 > a2)
  {
    if (a1[1] <= a3)
    {
      v3 = 0;
    }

    else
    {
      v3 = LOWORD(a1[a2 + *a1 * a3 + 5]);
    }
  }

  return dbl_1003D9F58[a1[3]] * (v3 - a1[4]);
}

__n64 sub_100257818(_DWORD *a1, int a2, int a3)
{
  result.n64_f64[0] = 0.0;
  if ((a2 & 0x80000000) == 0 && (a3 & 0x80000000) == 0 && *a1 > a2 && a1[1] > a3)
  {
    result.n64_u8[0] = BYTE2(a1[a2 + *a1 * a3 + 5]);
    result.n64_f64[0] = result.n64_u64[0] * 0.142857143;
  }

  return result;
}

void sub_100257A40(_Unwind_Exception *a1)
{
  sub_100257DE8((v1 + 80));
  sub_10018330C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100257AA0(uint64_t a1)
{
  *a1 = off_100444400;
  *(a1 + 8) = off_100444498;
  sub_100183838(a1);
  sub_1001E72AC(*(a1 + 80));
  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    sub_100257E58(a1 + 88, v2);
  }

  v3 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v3)
  {
    if (v3[2].__t_)
    {
      std::thread::join(v3 + 2);
    }

    std::thread::~thread(v3 + 2);
    operator delete();
  }

  return sub_10018330C(a1);
}

void sub_100257B8C(uint64_t a1)
{
  sub_100257AA0(a1);

  operator delete();
}

void sub_100257BC4(uint64_t a1)
{
  sub_100257AA0(a1 - 8);

  operator delete();
}

void sub_100257C00(uint64_t a1, int a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  if (v3)
  {
    sub_1001E6920(&v6, v3);
    sub_1001E6920(&v7, v3 + 59);
    sub_1001E7080(v2, a2);
  }

  v5 = *(a1 + 80);

  sub_1001E6F20(v5, a2);
}

void sub_100257CF0(uint64_t a1)
{
  sub_1001E72A4(*(a1 + 80));
  v2 = *(a1 + 80);

  sub_1001E72AC(v2);
}

void *sub_100257D2C(uint64_t a1)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    v4 = sub_1002B85E0(v3);
    return sub_10004FF1C(*v4);
  }

  else
  {

    return sub_100183B74(a1);
  }
}

void sub_100257D78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 88))
  {
    v3 = sub_1002B85E0(*(a1 + 88));
    v4 = v3[1];
    *(a2 + 8) = *v3;
    *(a2 + 16) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    *a2 = 1;
  }

  else
  {

    sub_100183C4C(a1, a2);
  }
}

std::thread **sub_100257DE8(std::thread **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (v1[2].__t_)
    {
      std::thread::join(v1 + 2);
    }

    std::thread::~thread(v1 + 2);
    operator delete();
  }

  return result;
}

void sub_100257E58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 935) < 0)
    {
      operator delete(*(a2 + 912));
      sub_100050024((a2 + 616));
      sub_1000505E0((a2 + 472));
      if ((*(a2 + 463) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_100050024((a2 + 616));
      sub_1000505E0((a2 + 472));
      if ((*(a2 + 463) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    operator delete(*(a2 + 440));
LABEL_4:
    sub_100050024((a2 + 144));
    sub_1000505E0(a2);

    operator delete();
  }
}

void sub_100257EFC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100257F6C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100257FDC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100258004(uint64_t a1, uint64_t a2)
{
  v3 = sub_100251D74(a2);
  result = sub_100167390(a1, v3);
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_10025803C(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92))
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      if ((*(v3 + 60) & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v3 = *(qword_10045DBD0 + 16);
      if ((*(v3 + 60) & 1) == 0)
      {
        return result;
      }
    }

    v4 = *(v3 + 16);
    if (!v4)
    {
      v4 = *(qword_10045DBE0 + 16);
    }

    if ((*(v4 + 44) & 2) != 0)
    {
      if (*(result + 64) == 1)
      {
        v5 = result + 72;

        return sub_100071310(v5, a2);
      }

      else
      {
        v6 = result;
        result = sub_10006DAD8(result + 72, a2);
        *(v6 + 64) = 1;
      }
    }
  }

  return result;
}

void sub_1002580E4(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 64) != 1)
  {
    return;
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *(*(qword_10045DBD0 + 16) + 16);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v4 = *(qword_10045DBE0 + 16);
LABEL_4:
  if (sub_10010C70C(*(v4 + 24) + *(a1 + 40)) < *a2 && *(a1 + 64) == 1)
  {
    sub_10006DD50((a1 + 72));
    *(a1 + 64) = 0;
  }
}

void sub_100258188(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 88);
    if (!v3)
    {
      v3 = *(qword_10045DBD0 + 16);
    }

    sub_100071D1C(v5, v3);
    v4 = 1.0 - v6;
    *a2 = v6;
    *(a2 + 8) = v4;
    *(a2 + 16) = 1;
    sub_100071DBC(v5);
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

uint64_t sub_100258244@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 8) >= 0.5 && *(result + 49) == 1)
  {
    goto LABEL_13;
  }

  v3 = *(result + 64);
  v4 = 0.0;
  if (v3 == 1)
  {
    v5 = a3;
    v6 = result;
    v7 = *(result + 88);
    if (!v7)
    {
      v7 = *(qword_10045DBD0 + 16);
    }

    sub_100071D1C(v10, v7);
    v4 = *&v10[6];
    sub_100071DBC(v10);
    a3 = v5;
    result = v6;
  }

  v8 = (v3 & *(result + 48));
  if (v8 != 1)
  {
LABEL_13:
    LOBYTE(v8) = 0;
    *a3 = 0;
  }

  else
  {
    v9 = *(result + 32);
    if (v9 >= v4)
    {
      v9 = v4;
    }

    if (v9 < *(result + 24))
    {
      v9 = *(result + 24);
    }

    *a3 = v9;
    *(a3 + 8) = 1.0 - v9;
  }

  *(a3 + 16) = v8;
  return result;
}

void sub_100258360()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002583D0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void *sub_100258440(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_1002584C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002584E4(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 8) - *result;
    v3 = *a2;
    v4 = *(a2 + 8);
    v6 = result;
    if (v2 == v4 - v3)
    {
      memcpy(*result, v3, v2);
    }

    else
    {
      sub_10011DD68(result, v3, v4, (v4 - v3) >> 3);
    }

    return v6;
  }

  return result;
}

double sub_100258564(uint64_t a1)
{
  __C = 0.0;
  vDSP_svesqD(*a1, 1, &__C, (*(a1 + 8) - *a1) >> 3);
  return __C;
}

void sub_1002585A4(uint64_t *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  __p = *a2;
  v7 = *(a2 + 8);
  v4 = (v7 - __p) >> 3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_100258654(a1, v4, &__p, 1, &v8);
  *a3 = v8;
  a3[1].n128_u64[0] = v9;
  v5 = __p;
  if (__p)
  {

    operator delete(v5);
  }
}

void sub_10025863C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100258654@<Q0>(uint64_t *a1@<X0>, int a2@<W1>, __n128 *a3@<X2>, int a4@<W3>, __n128 *a5@<X8>)
{
  v11 = a4;
  v12 = a2;
  v10 = 0;
  v7 = *a1;
  v8 = a3->n128_u64[0];
  dtptrs_NEWLAPACK();
  result = *a3;
  *a5 = *a3;
  a5[1].n128_u64[0] = a3[1].n128_u64[0];
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  a3->n128_u64[0] = 0;
  return result;
}

void sub_1002587B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100258810(double **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3[0] = *a1;
  v3[1] = &std::to_string;
  v3[2] = v2;
  v3[3] = &std::to_string;
  sub_100258854(",", v3, a2);
}

void sub_100258854(char *__s@<X1>, double **a2@<X0>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v5 != v7)
  {
    (v6)(&__p, *v5);
    if (v24 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v24 >= 0)
    {
      v9 = v24;
    }

    else
    {
      v9 = v23;
    }

    sub_100026F84(a3, a3, p_p, &p_p[v9], v9);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    ++v5;
  }

  for (; v5 != v7; ++v5)
  {
    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (v10 >= 0)
    {
      v12 = *(a3 + 23);
    }

    else
    {
      v12 = *(a3 + 8);
    }

    v13 = strlen(__s);
    v14 = sub_1000272BC(a3, v11 + v12, __s, &__s[v13], v13);
    v15 = *(a3 + 23);
    v16 = *a3;
    v17 = *(a3 + 8);
    (v6)(&__p, v14, *v5);
    if ((v15 & 0x80u) == 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = v16;
    }

    if ((v15 & 0x80u) == 0)
    {
      v19 = v15;
    }

    else
    {
      v19 = v17;
    }

    if (v24 >= 0)
    {
      v20 = &__p;
    }

    else
    {
      v20 = __p;
    }

    if (v24 >= 0)
    {
      v21 = v24;
    }

    else
    {
      v21 = v23;
    }

    sub_100026F84(a3, v18 + v19, v20, &v20[v21], v21);
    if (v24 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1002589B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((*(v15 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v15 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v15);
  _Unwind_Resume(exception_object);
}

void *sub_100258A10(void *a1, uint64_t **a2)
{
  sub_1001E15E8(a2);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  result = sub_10003C2E4(a1, v3, v4);
  if (v8 < 0)
  {
    v6 = result;
    operator delete(__p[0]);
    return v6;
  }

  return result;
}

void sub_100258A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100258AB0@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100258AE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100258B00()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100258B70()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_100258BE0(double **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0.0;
  }

  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  do
  {
    v6 = v1[3];
    if (v6 <= 0.0)
    {
      sub_1003865C4(__p, &v10, &v11);
      sub_10003F5D0(__p);
    }

    v7 = v1[2] - *v1;
    v4 = v4 + __exp10(v7 / -10.0) * v6;
    v3 = v3 + v7 * v6;
    v5 = v5 + v6;
    v1 += 5;
  }

  while (v1 != v2);
  return v3;
}

void sub_100258CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100258CE4(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v7 = *a3;
  v8 = a3[1];
  if (0x4EC4EC4EC4EC4EC5 * ((a4[1] - *a4) >> 4) != (v8 - *a3) >> 4)
  {
    sub_1000474A4(v27, "");
    sub_10022679C("Number of scans must match number of AP RSSI maps", &v36);
    sub_100383AA4(&v36, v34, v27);
    sub_10003F5D0(v34);
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v27[1] = 0;
  v28 = 0.0;
  v27[0] = off_10043DCF8;
  v29 = 0;
  if (v8 != v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v13 = *(v7 + v10);
      if (!v13 || !(*(*v13 + 16))(v13, a2, v27))
      {
        goto LABEL_6;
      }

      if (v28 <= 0.0)
      {
        sub_1000474A4(v34, "");
        sub_100385D48(__p, v34, &v35);
        sub_10003F5D0(__p);
      }

      v14 = *a4 + v9;
      v15 = *(v14 + 32);
      if (v15 == v15 >> 31)
      {
        v16 = *(v14 + 72);
        v34[0] = *&v16;
        v17 = v31;
        if (v31 < v32)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v20 = *(v14 + 40);
        v18 = v14 + 40;
        v19 = v20;
        if (v15 < 0)
        {
          v18 = v19;
        }

        v16 = *(v18 + 92);
        *v34 = v16;
        v17 = v31;
        if (v31 < v32)
        {
LABEL_16:
          *v17 = v16;
          sub_1001351B8((v17 + 1), v27);
          v12 = (v17 + 5);
          goto LABEL_5;
        }
      }

      v12 = sub_100259FEC(&v30, v34, v27);
LABEL_5:
      v31 = v12;
LABEL_6:
      ++v11;
      v7 = *a3;
      v10 += 16;
      v9 += 208;
    }

    while (v11 < (a3[1] - *a3) >> 4);
  }

  v21 = sub_100258BE0(&v30);
  nullsub_81(v27);
  v22 = v30;
  if (v30)
  {
    v23 = v31;
    v24 = v30;
    if (v31 != v30)
    {
      do
      {
        v25 = v23 - 5;
        nullsub_81(v23 - 4);
        v23 = v25;
      }

      while (v25 != v22);
      v24 = v30;
    }

    v31 = v22;
    operator delete(v24);
  }

  return v21;
}

void sub_100258FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **sub_100259080(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 40;
        nullsub_81(v3 - 32);
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

void sub_1002590E8(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, int64x2_t *a5, double a6)
{
  v10 = *(a1 + 24);
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      if (v10 != 3)
      {
        goto LABEL_86;
      }

      v21 = a2[1];
      v22 = a2[2];
      v39 = v22;
      v40 = v21;
      if (!a3)
      {
        a6 = 0.0;
        if (v21 > 0.0)
        {
          a6 = log10(v22 / v21) * -10.0;
        }

        goto LABEL_86;
      }

      if (v21 <= 0.0)
      {
        goto LABEL_73;
      }

      v38 = NAN;
      if (!*(a1 + 32))
      {
        goto LABEL_82;
      }

      v23 = 0;
      v24 = v21 / v22;
      while (1)
      {
        v38 = (*(*a3 + 24))(a3, *(a1 + 8), *(a1 + 8) + *(a1 + 16) - *(a1 + 8));
        v37 = __exp10(v38 / 10.0);
        v25 = v40 * (log(v37 / v24) + 1.0) - v37 * v39;
        if (v25 > 0.00000011920929)
        {
          break;
        }

        if (v25 >= 0.0 || (v26 = (*(*a4 + 16))(a4), log(v26) < v25))
        {
          sub_1002C50E8(a5);
          a6 = v38;
          goto LABEL_86;
        }

        if (++v23 >= *(a1 + 32))
        {
          goto LABEL_82;
        }
      }

      sub_1000474A4(v42, "");
      sub_1000BCB4C("We set our sampling area too low! But since it's the mode that should be impossible. w=", &v44);
      sub_1000DE42C(&v40, &v45);
      sub_100211FBC(" s=", &v46);
      sub_1000DE42C(&v39, &v47);
      sub_1000DE904(" r_dB=", &v48);
      sub_1000DE42C(&v38, &v49);
      sub_10023F9BC(" r_rat=", &v50);
      sub_1000DE42C(&v37, &v51);
      sub_1000E661C(v42, &v44, 8);
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_45:
          if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_55;
        }
      }

      else if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      operator delete(v50.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_46:
        if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v49.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_47:
        if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(v48.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_48:
        if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_58;
      }

LABEL_57:
      operator delete(v47.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_49:
        if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_59;
      }

LABEL_58:
      operator delete(v46.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_50:
        if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_60;
      }

LABEL_59:
      operator delete(v45.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_51:
        if ((v43 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

LABEL_61:
        operator delete(v42[0]);
LABEL_52:
        sub_10003F5D0(__p);
      }

LABEL_60:
      operator delete(v44.__r_.__value_.__l.__data_);
      if ((v43 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_61;
    }

    v32 = a2[1];
    v31 = a2[2];
    v39 = v31;
    v40 = v32;
    if (!a3)
    {
      a6 = 0.0;
      if (v32 <= 0.0)
      {
        goto LABEL_86;
      }
    }

    v33 = 0.0;
    if (v32 > 0.0)
    {
      v33 = log10(v32 / v31) * 10.0;
    }

    v38 = v33;
    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      if (a3)
      {
        (*(*a3 + 24))(a3, *(a1 + 8), *(a1 + 8) + *(a1 + 16) - *(a1 + 8));
        v35 = 1.0;
      }

      else
      {
        v34 = 0.0;
        v35 = 0.0;
      }

      a6 = (v34 + v38 * v32) / (v32 + v35);
      goto LABEL_86;
    }

    sub_1000474A4(v42, "");
    sub_100259F9C("Finite modeGain only w=", &v44);
    sub_1000DE42C(&v40, &v45);
    sub_100211FBC(" s=", &v46);
    sub_1000DE42C(&v39, &v47);
    sub_1002115A8(" but ", &v48);
    sub_1000DE42C(&v38, &v49);
    sub_1000E661C(v42, &v44, 6);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_93:
        if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_101;
      }
    }

    else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_93;
    }

    operator delete(v48.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_94:
      if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_102;
    }

LABEL_101:
    operator delete(v47.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_95:
      if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_103;
    }

LABEL_102:
    operator delete(v46.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_96:
      if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_104;
    }

LABEL_103:
    operator delete(v45.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_97:
      if ((v43 & 0x80000000) == 0)
      {
        goto LABEL_98;
      }

LABEL_105:
      operator delete(v42[0]);
LABEL_98:
      sub_10003F5D0(__p);
    }

LABEL_104:
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_105;
  }

  if (v10)
  {
    if (v10 != 1)
    {
      goto LABEL_86;
    }

    v11 = *a2;
    v12 = a2[1];
    v13 = a2[2];
    v39 = v13;
    v40 = v12;
    if (a3)
    {
      if (v12 > 0.0)
      {
        v14 = v12 / v13;
        v15 = __exp10(v12 / v13 / 10.0);
        v38 = NAN;
        if (*(a1 + 32))
        {
          v16 = v15;
          v17 = 0;
          v18 = v11 / v12;
          while (1)
          {
            v38 = (*(*a3 + 24))(a3, *(a1 + 8), *(a1 + 8) + *(a1 + 16) - *(a1 + 8));
            v37 = __exp10(v38 / 10.0);
            v19 = v40 * (log(v37 / v14) + 1.0) - v37 * v39;
            if (v19 > 0.00000011920929)
            {
              break;
            }

            if (v19 >= 0.0 || (v20 = (*(*a4 + 16))(a4), log(v20) < v19))
            {
              sub_1002C50E8(a5);
              a6 = v18 + v38 - v16;
              goto LABEL_86;
            }

            if (++v17 >= *(a1 + 32))
            {
              goto LABEL_82;
            }
          }

          sub_1000474A4(v42, "");
          sub_1000BCB4C("We set our sampling area too low! But since it's the mode that should be impossible. w=", &v44);
          sub_1000DE42C(&v40, &v45);
          sub_100211FBC(" s=", &v46);
          sub_1000DE42C(&v39, &v47);
          sub_1000DE904(" r_dB=", &v48);
          sub_1000DE42C(&v38, &v49);
          sub_10023F9BC(" r_rat=", &v50);
          sub_1000DE42C(&v37, &v51);
          sub_1000E661C(v42, &v44, 8);
          if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v51.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_15:
              if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_16;
              }

              goto LABEL_25;
            }
          }

          else if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          operator delete(v50.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_16:
            if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_17;
            }

            goto LABEL_26;
          }

LABEL_25:
          operator delete(v49.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_17:
            if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_18;
            }

            goto LABEL_27;
          }

LABEL_26:
          operator delete(v48.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_18:
            if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_28;
          }

LABEL_27:
          operator delete(v47.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_19:
            if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_29;
          }

LABEL_28:
          operator delete(v46.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_20:
            if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_30;
          }

LABEL_29:
          operator delete(v45.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_21:
            if ((v43 & 0x80000000) == 0)
            {
              goto LABEL_22;
            }

LABEL_31:
            operator delete(v42[0]);
LABEL_22:
            sub_10003F5D0(__p);
          }

LABEL_30:
          operator delete(v44.__r_.__value_.__l.__data_);
          if ((v43 & 0x80000000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_31;
        }

LABEL_82:
        sub_1002C50F8(a5);
        a6 = v38;
        goto LABEL_86;
      }

LABEL_73:
      (*(*a3 + 24))(a3, *(a1 + 8), *(a1 + 8) + *(a1 + 16) - *(a1 + 8));
      goto LABEL_86;
    }

    a6 = 0.0;
    if (v12 > 0.0)
    {
      a6 = v11 / v12;
    }
  }

  else
  {
    v27 = *a2;
    v28 = a2[1];
    if (a3 || (a6 = 0.0, v28 > 0.0))
    {
      if (a3)
      {
        (*(*a3 + 24))(a3, *(a1 + 8), *(a1 + 8) + *(a1 + 16) - *(a1 + 8));
        v30 = 1.0;
      }

      else
      {
        v29 = 0.0;
        v30 = 0.0;
      }

      a6 = (v27 + v29) / (v28 + v30);
    }
  }

LABEL_86:
  if (a6 < *(a1 + 8))
  {
    a6 = *(a1 + 8);
  }

  if (*(a1 + 16) < a6)
  {
    v36 = *(a1 + 16);
  }
}