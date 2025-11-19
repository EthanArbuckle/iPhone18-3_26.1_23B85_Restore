atomic_uint **sub_100539BBC(uint64_t *a1)
{
  v1 = a1[1];
  v7 = 0;
  v8 = v1;
  if (v1)
  {
    v2 = v1[2];
    do
    {
      if (!v2)
      {
        v8 = 0;
        return sub_10053A3DC(&v8);
      }

      v3 = v2;
      atomic_compare_exchange_strong_explicit(v1 + 2, &v3, v2 + 1, memory_order_relaxed, memory_order_relaxed);
      v4 = v3 == v2;
      v2 = v3;
    }

    while (!v4);
    v7 = *a1;
    if (v7)
    {
      v5 = sub_10053A148(&v7);
      sub_10053A18C(v5);
    }
  }

  return sub_10053A3DC(&v8);
}

void sub_100539C3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10053A3DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100539C54(uint64_t result)
{
  if (!*(result + 16))
  {
    operator new();
  }

  return result;
}

uint64_t *sub_100539DD8(uint64_t *result)
{
  if (result[2])
  {
    v1 = result;
    v2 = sub_10053B76C(result + 10);
    sub_10053DF0C(v2);
    result = v1[2];
    v1[2] = 0;
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

atomic_uint **sub_100539E54(uint64_t a1, double a2)
{
  sub_1000A69D8(*(a1 + 16), 0, &v6, a2 + -5.12, a2);
  if (qword_1025D45A0 != -1)
  {
    sub_1018B6EB0();
  }

  v3 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    *&v6.__opaque[24] = 136315138;
    *&v6.__opaque[28] = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "IMUFM Composite got notified, notifying client. %s", &v6.__opaque[24], 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B6FEC();
  }

  v4 = sub_10053B76C((a1 + 80));
  return sub_10053DFF4(v4, &v6);
}

void (***sub_100539F74(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void sub_100539FC4(void ***a1)
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
        v4 -= 24;
        sub_10053A048(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

atomic_uint **sub_10053A048(uint64_t a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 == 2)
  {
    result = *(a1 + 8);
    if (result)
    {
      v4 = *(*result + 1);

      return v4();
    }
  }

  else
  {
    if (v1 > 1)
    {
      sub_10053508C();
    }

    v2 = (a1 + 16);

    return sub_10053A0E0(v2);
  }

  return result;
}

atomic_uint **sub_10053A0E0(atomic_uint **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 24))(v2);
  }

  return a1;
}

uint64_t sub_10053A148(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

void sub_10053A18C(uint64_t a1)
{
  sub_10053A268(v2, a1);
  if (*(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
    sub_10053A4C4(a1, v2);
  }

  (*(*v3 + 32))(v3);
  sub_10053A2D8(v2);
}

void sub_10053A238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10053A760(va);
  _Unwind_Resume(a1);
}

void *sub_10053A268(void *a1, uint64_t a2)
{
  a1[20] = 10;
  a1[21] = a1;
  a1[22] = 0;
  a1[23] = a2;
  (*(*a2 + 24))(a2);
  return a1;
}

void sub_10053A2D8(void *a1)
{
  v1 = a1[21];
  if (v1)
  {
    v2 = a1[20];
    if (v2 < 0xA || (v1 == a1 ? (v3 = v2 == 10) : (v3 = 1), !v3 || a1[22] > v2))
    {
      sub_1018B70FC();
    }

    sub_10053A32C(a1);
  }
}

void sub_10053A32C(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    sub_10053A38C(a1, v2);
  }

  if (*(a1 + 160) >= 0xBuLL)
  {
    v3 = *(a1 + 168);

    operator delete(v3);
  }
}

atomic_uint **sub_10053A38C(atomic_uint **result, uint64_t a2)
{
  if (!a2)
  {
    sub_1018B7128();
  }

  if (-a2 < 0)
  {
    v2 = &result[21][4 * result[22]];
    v3 = v2 - 16 * a2;
    do
    {
      v4 = v2 - 16;
      result = sub_10053A3DC((v2 - 8));
      v2 = v4;
    }

    while (v4 > v3);
  }

  return result;
}

atomic_uint **sub_10053A3DC(atomic_uint **a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_10053A410(v2);
  }

  return a1;
}

atomic_uint *sub_10053A410(atomic_uint *result)
{
  if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    v1 = result;
    v2 = result + 3;
    result = (*(*result + 16))(result);
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      v3 = *(*v1 + 24);

      return v3(v1);
    }
  }

  return result;
}

atomic_uint **sub_10053A4C4(atomic_uint **result, void *a2)
{
  v2 = *(result + 7);
  if (!v2)
  {
    sub_1018B7154();
  }

  v3 = v2 - 1;
  *(result + 7) = v3;
  if (!v3)
  {
    (*(*result + 5))(&v5);
    sub_10053A558(a2, &v5);
    return sub_10053A3DC(&v5 + 1);
  }

  return result;
}

void *sub_10053A558(void *a1, __int128 *a2)
{
  v4 = a1[22];
  if (v4 == a1[20])
  {
    sub_10053A600(a1, v4 + 1);
  }

  return sub_10053A5B0(a1, a2);
}

void *sub_10053A5B0(void *result, __int128 *a2)
{
  v2 = result[22];
  if (v2 == result[20])
  {
    sub_1018B7180();
  }

  v3 = *a2;
  *(result[21] + 16 * v2) = *a2;
  if (*(&v3 + 1))
  {
    atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1u, memory_order_relaxed);
    v2 = result[22];
  }

  result[22] = v2 + 1;
  return result;
}

void sub_10053A600(void *a1, unint64_t a2)
{
  v2 = a1[20];
  if (v2 <= 9)
  {
    sub_1018B71D8();
  }

  v3 = a2;
  if (v2 < a2)
  {
    v5 = 4 * v2;
    if (v5 > a2)
    {
      a2 = v5;
    }

    sub_10053A65C(a1, a2);
    if (a1[20] < v3)
    {
      sub_1018B71AC();
    }
  }
}

void sub_10053A65C(void *a1, unint64_t a2)
{
  sub_10053A6B8(a1, a2);
  v5 = v4;
  sub_10053A2D8(a1);
  a1[20] = a2;
  a1[21] = v5;
  if (a1[22] > a2)
  {
    sub_1018B7204();
  }
}

void sub_10053A6B8(uint64_t a1, unint64_t a2)
{
  sub_10053A718(a1, a2);
  v4 = *(a1 + 176);
  if (v4)
  {
    v5 = *(a1 + 168);
    v6 = &v5[2 * v4];
    v7 = v3;
    do
    {
      v8 = v5[1];
      *v7 = *v5;
      v7[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
      }

      v5 += 2;
      v7 += 2;
    }

    while (v5 != v6);
  }
}

void sub_10053A718(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xB)
  {
    if (!(a2 >> 60))
    {

      operator new();
    }

    sub_1001D0818();
  }
}

uint64_t sub_10053A760(uint64_t a1)
{
  (*(**(a1 + 184) + 32))(*(a1 + 184));
  sub_10053A2D8(a1);
  return a1;
}

void sub_10053A894(uint64_t a1)
{
  *a1 = off_10245CC08;
  sub_10053A3DC((a1 + 16));

  operator delete();
}

uint64_t sub_10053A8F8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10053AA80(uint64_t a1)
{
  sub_1003C93BC(a1 + 24, *(a1 + 32));
  sub_10053AAB8(a1);
  return a1;
}

void sub_10053AAB8(atomic_uint **a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 1);
    v4 = *v2;
    *(v4 + 1) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_10053A3DC(v2 + 3);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_10053ABDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10053AD64(a1, a2);
  sub_10053AE40((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *sub_10053AD64(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_10053ADD0();
  }

  return result;
}

uint64_t sub_10053AE40(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_10053AEA8(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10053AEA8(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10053AF30(v5, v5 + 1, (v4 + 4));
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

uint64_t sub_10053AF30(void *a1, void *a2, uint64_t a3)
{
  v3 = *sub_10053AFD0(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_10053AFD0(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_10053B210((a1 + 3), a5, (a2 + 4)))
  {
    if (!sub_10053B210((a1 + 3), (a2 + 4), a5))
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
      if (!sub_10053B210((a1 + 3), a5, (v15 + 4)))
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

  if (sub_10053B210((a1 + 3), (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_10053B174(a1, a3, a5);
}

void *sub_10053B174(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_10053B210(a1 + 24, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_10053B210(a1 + 24, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL sub_10053B210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2 < *a3;
  if (*a2 == *a3)
  {
    if (*a2 != 1)
    {
      return 0;
    }

    if ((*(a2 + 4) & 1) == 0)
    {
      sub_101869E1C();
    }

    if ((*(a3 + 4) & 1) == 0)
    {
      sub_101869E1C();
    }

    return *(a2 + 8) < *(a3 + 8);
  }

  return v3;
}

void sub_10053B26C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10053B2D8(&v2);
}

void sub_10053B348(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10053B370(v1);
  __cxa_rethrow();
}

uint64_t sub_10053B370(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1003C93BC(result + 24, *(result + 32));
    sub_10053AAB8(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_10053B3E4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_1003C93BC(v1 + 24, *(v1 + 32));
    sub_10053AAB8(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_10053B44C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10053B478(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10053B4E4(&v2);
}

void sub_10053B554(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete();
  }

  __cxa_rethrow();
}

uint64_t sub_10053B58C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_10053B5A8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10053B614(&v2);
}

void sub_10053B684(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10053B6AC(v1);
  __cxa_rethrow();
}

uint64_t sub_10053B6AC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10053A3DC((result + 24));
    sub_10053A3DC((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_10053B708(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10053A3DC((v1 + 24));
    sub_10053A3DC((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_10053B76C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

pthread_mutex_t *sub_10053B7B0(pthread_mutex_t *a1)
{
  if (pthread_mutex_init(a1, 0))
  {
    sub_1018B7230();
  }

  return a1;
}

void sub_10053B7E4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10053B850(&v2);
}

void sub_10053B8C0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10053B8E8(v1);
  __cxa_rethrow();
}

pthread_mutex_t *sub_10053B8E8(pthread_mutex_t *result)
{
  if (result)
  {
    sub_10053B96C(result);

    operator delete();
  }

  return result;
}

pthread_mutex_t *sub_10053B928(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    sub_10053B96C(result);

    operator delete();
  }

  return result;
}

pthread_mutex_t *sub_10053B96C(pthread_mutex_t *a1)
{
  if (pthread_mutex_destroy(a1))
  {
    __assert_rtn("~mutex", "lwm_pthreads.hpp", 55, "pthread_mutex_destroy(&m_) == 0");
  }

  return a1;
}

void sub_10053B9C0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10053BA2C(&v2);
}

void sub_10053BA9C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10053BAC4(v1);
  __cxa_rethrow();
}

uint64_t sub_10053BAC4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10053A3DC((result + 32));
    sub_10053A3DC((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_10053BB20(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10053A3DC((v1 + 32));
    sub_10053A3DC((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_10053BB84(uint64_t *a1)
{
  v2 = sub_10053B76C(a1 + 3);
  sub_10053BD58(v3, v2);
  sub_10053BC60(a1, v3);
}

void sub_10053BC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10053BD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10053A3DC(va);
  _Unwind_Resume(a1);
}

void *sub_10053BD58(void *a1, pthread_mutex_t *a2)
{
  a1[20] = 10;
  a1[21] = a1;
  a1[22] = 0;
  a1[23] = a2;
  sub_10053BDA8(a2);
  return a1;
}

uint64_t sub_10053BDA8(pthread_mutex_t *a1)
{
  result = pthread_mutex_lock(a1);
  if (result)
  {
    sub_1018B725C();
  }

  return result;
}

void sub_10053BE60(uint64_t a1, _DWORD *a2)
{
  v4 = (a1 + 32);
  if (*a2 != 2)
  {
    for (i = *v4; i; i = *(i + v7))
    {
      if (sub_10053B210(a1 + 48, a2, i + 32))
      {
        v7 = 0;
      }

      else
      {
        v7 = 8;
      }
    }
  }

  sub_10053D3A8();
}

void sub_10053BEF8(uint64_t a1, _DWORD *a2)
{
  if (*a2)
  {
    for (i = *(a1 + 32); i; i = *(i + v6))
    {
      if (sub_10053B210(a1 + 48, i + 32, a2))
      {
        v6 = 8;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  sub_10053D3A8();
}

atomic_uint **sub_10053BF94(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_10053C230(a1, a2, 1, 2);
}

void sub_10053C0B8(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_1018B7288();
    }
  }

  sub_10053B5A8(&v2, a2);
}

atomic_uint **sub_10053C118(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1018B72B4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_10053A148(a1);
  result = sub_10053B76C(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_10053A148(v10 + 2);
        sub_10053C368(v15, a2);
        v10 = v22;
      }

      if (*(sub_10053A148(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_10053A148(a1);
        v18 = sub_10053B76C(v17);
        v19 = sub_10053A148(v22 + 2);
        v16 = sub_10053C3D4(v18, v19 + 64, &v22);
      }

      v22 = v16;
      v20 = sub_10053A148(a1);
      result = sub_10053B76C(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

atomic_uint **sub_10053C230(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1018B72E0();
  }

  v9 = sub_10053A148(a1);
  v10 = sub_10053B76C(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_10053A148(a1);
    v11 = *(sub_10053B76C(v12) + 8);
  }

  v14 = v11;
  return sub_10053C118(a1, a2, a3, &v14, a4);
}

uint64_t *sub_10053C368(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_10053B76C(result);
    result = sub_10053C520(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_10053A4C4(a1, a2);
      }
    }
  }

  return result;
}

atomic_uint **sub_10053C3D4(uint64_t a1, uint64_t a2, atomic_uint ***a3)
{
  if (*a3 == a1)
  {
    sub_1018B7364();
  }

  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_19;
  }

  v8 = (a1 + 24);
  v9 = (a1 + 32);
  do
  {
    v10 = sub_10053B210(a1 + 48, (v5 + 4), a2);
    v11 = v10;
    if (!v10)
    {
      v9 = v5;
    }

    v5 = v5[v11];
  }

  while (v5);
  if (v9 == v4)
  {
LABEL_19:
    sub_1018B7338();
  }

  if (!sub_10053C668(a1, (v9 + 4), a2))
  {
    sub_1018B730C();
  }

  if (v9[6] == *a3)
  {
    v12 = (*a3)[1];
    if (v12 == sub_10053C6C0(a1, a2))
    {
      sub_10045E8A0(v8, v9);
      operator delete(v9);
    }

    else
    {
      *(sub_10053C73C(v8, a2) + 48) = v12;
    }
  }

  v13 = *a3;
  v14 = *v13;
  v15 = v13[1];
  *(v14 + 1) = v15;
  *v15 = v14;
  --*(a1 + 16);
  sub_10053A3DC(v13 + 3);
  operator delete(v13);
  return v15;
}

uint64_t sub_10053C520(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 == a1[1])
  {
    return 0;
  }

  do
  {
    result = sub_10053C57C(v1);
    if (result)
    {
      break;
    }

    v1 += 24;
  }

  while (v1 != a1[1]);
  return result;
}

uint64_t sub_10053C57C(uint64_t a1)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
      v1 = *(a1 + 16);
      if (v1)
      {
        result = atomic_load_explicit((v1 + 8), memory_order_acquire) == 0;
      }

      else
      {
        result = 1;
      }

      break;
    case 2:
      v3 = *(*sub_10053C624((a1 + 8)) + 24);

      result = v3();
      break;
    default:
      sub_10053508C();
  }

  return result;
}

uint64_t sub_10053C624(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "scoped_ptr.hpp", 105, "px != 0");
  }

  return result;
}

uint64_t sub_10053C6C0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a1 + 32;
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = a1 + 32;
    do
    {
      v7 = sub_10053B210(v2 + 48, a2, v4 + 32);
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 8;
      }

      if (v7)
      {
        v6 = v4;
      }

      v4 = *(v4 + v8);
    }

    while (v4);
    if (v6 != v3)
    {
      return *(v6 + 48);
    }
  }

  return v2;
}

uint64_t sub_10053C73C(uint64_t a1, uint64_t a2)
{
  v2 = *sub_10053B174(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_10053C7E0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_10245CEB8;
  operator new();
}

void sub_10053C8F0(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_100539FC4(va);
  operator delete();
}

void sub_10053C958(uint64_t a1)
{
  sub_10053CF20(a1);

  operator delete();
}

uint64_t sub_10053C990(uint64_t a1)
{
  v2 = sub_10053B76C((a1 + 48));
  sub_10053BD58(v5, v2);
  sub_10053CF98(a1, v5);
  v3 = *(a1 + 24);
  sub_10053D250(v5[23]);
  sub_10053A2D8(v5);
  return v3;
}

void sub_10053CA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053CA50(uint64_t a1)
{
  v1 = sub_10053A148((a1 + 48));

  return sub_10053BDA8(v1);
}

uint64_t sub_10053CA7C(uint64_t a1)
{
  v1 = sub_10053A148((a1 + 48));

  return sub_10053D250(v1);
}

atomic_uint **sub_10053CAA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10053A3DC(v7);
}

uint64_t sub_10053CB00(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10053CB88(result, a4);
  }

  return result;
}

void sub_10053CB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100539FC4(&a9);
  _Unwind_Resume(a1);
}

void sub_10053CB88(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10053CBD4(a1, a2);
  }

  sub_10028C64C();
}

void sub_10053CBD4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10053CC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_10053CCB4(a4, v6);
      v6 += 24;
      a4 += 24;
      v7 -= 24;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_10053CC8C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 24;
    do
    {
      sub_10053A048(v4);
      v4 -= 24;
      v2 += 24;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053CCB4(uint64_t a1, uint64_t a2)
{
  switch(*a2 ^ (*a2 >> 31))
  {
    case 0:
    case 1:
      v4 = *(a2 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v4;
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 12), 1u, memory_order_relaxed);
      }

      break;
    case 2:
      v5 = sub_10053C624((a2 + 8));
      *(a1 + 8) = (*(*v5 + 32))(v5);
      break;
    default:
      sub_10053508C();
  }

  *a1 = *a2 ^ (*a2 >> 31);
  return a1;
}

void sub_10053CD68(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10053CDD4(&v2);
}

void sub_10053CE44(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10053CE6C(v1);
  __cxa_rethrow();
}

uint64_t sub_10053CE6C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100539F74((result + 24));
    v2 = v1;
    sub_100539FC4(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10053CEC8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_100539F74((v1 + 24));
    v2 = v1;
    sub_100539FC4(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10053CF20(uint64_t a1)
{
  *a1 = off_10245CEB8;
  v2 = (a1 + 40);
  sub_10053A3DC((a1 + 56));
  sub_10053A3DC(v2);
  *a1 = off_10245CF20;
  sub_10053A0E0((a1 + 16));
  return a1;
}

atomic_uint **sub_10053CF98(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_10053B76C(result + 4); ; i += 6)
    {
      result = sub_10053B76C(v2);
      if (i == result[1])
      {
        break;
      }

      sub_10053D098(i, v6);
      if (sub_10053C57C(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_10053A4C4(v4, a2);
        }

        return sub_10053D1C0(v6);
      }

      sub_10053D1C0(v6);
    }
  }

  return result;
}

void sub_10053D078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10053D1C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053D098@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = (a1 + 2);
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v4 = 0;
      *a2 = 0;
      result = sub_10053A3DC(&v4);
      break;
    case 1:

      result = sub_10053D14C(v2, a2);
      break;
    case 2:

      result = sub_10015AB7C(v2, a2);
      break;
    default:
      sub_10053508C();
  }

  return result;
}

atomic_uint **sub_10053D14C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v8 = v2;
  if (v2)
  {
    v3 = v2[2];
    while (v3)
    {
      v4 = v3;
      atomic_compare_exchange_strong_explicit(v2 + 2, &v4, v3 + 1, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
      if (v5)
      {
        v6 = *a1;
        goto LABEL_9;
      }
    }

    v2 = 0;
  }

  v6 = 0;
LABEL_9:
  *(a2 + 8) = v6;
  *(a2 + 16) = v2;
  v8 = 0;
  *a2 = 0;
  return sub_10053A3DC(&v8);
}

atomic_uint **sub_10053D1C0(uint64_t a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 == 1)
  {
    result = *(a1 + 8);
    if (result)
    {
      v4 = *(*result + 1);

      return v4();
    }
  }

  else
  {
    if (v1)
    {
      sub_10053508C();
    }

    v2 = (a1 + 16);

    return sub_10053A3DC(v2);
  }

  return result;
}

uint64_t sub_10053D250(pthread_mutex_t *a1)
{
  result = pthread_mutex_unlock(a1);
  if (result)
  {
    sub_1018B73C8();
  }

  return result;
}

void sub_10053D270(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10053D2DC(&v2);
}

void sub_10053D34C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1018B73F4(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10053D378(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10053D548(uint64_t a1, uint64_t a2)
{
  v2 = *sub_10053B174(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_10053D5E4(uint64_t a1)
{
  sub_10053D250(*(a1 + 184));
  sub_10053A2D8(a1);
  return a1;
}

void sub_10053D620(_OWORD *a1, uint64_t a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_10053D678(a1, a2);
}

void sub_10053D658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_100539F74((v10 + 24));
  a10 = v10;
  sub_100539FC4(&a10);
  _Unwind_Resume(a1);
}

void sub_10053D6E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10053DE8C(va);
  _Unwind_Resume(a1);
}

void sub_10053D790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (**)(void, void, uint64_t));
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_100539F74(va);
  sub_10053DE8C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10053D7BC(uint64_t a1, uint64_t a2)
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

void (***sub_10053D854(void (***result)(void, void, uint64_t), uint64_t a2))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    v4[0] = 0;
    sub_10053DDD4(v4, result);
    sub_10053DDD4(v3, a2);
    sub_10053DDD4(a2, v4);
    return sub_100539F74(v4);
  }

  return result;
}

void sub_10053D944(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10053DE8C(va);
  _Unwind_Resume(a1);
}

void sub_10053D960(void *a1, uint64_t a2)
{
  *a1 = 0;
  sub_10053D7BC(v3, a2);
  sub_10053D9F4(a1, v3);
}

void sub_10053D9D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10053DE8C(va);
  _Unwind_Resume(a1);
}

void sub_10053DA88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10053DE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053DAA4(uint64_t result, _WORD *a2, int a3)
{
  if (a3 != 4)
  {
    return sub_10053DBAC(result, a2, a3);
  }

  a2[4] = 0;
  return result;
}

uint64_t sub_10053DAC4(uint64_t a1)
{
  v2 = *(*a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_10053DB90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10053DE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053DBAC(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      sub_10053DE8C(result);
      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == (0x8000000101C7E074 & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, (0x8000000101C7E074 & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_10053DD48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10053DE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053DDD4(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_10053DE68(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

uint64_t sub_10053DE8C(uint64_t a1)
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

atomic_uint **sub_10053DF0C(void *a1)
{
  sub_10053DF94(a1, &v6);
  v1 = sub_10053A148(&v6);
  v2 = sub_10053B76C(v1);
  while (1)
  {
    v2 = *(v2 + 8);
    v3 = sub_10053A148(&v6);
    if (v2 == sub_10053B76C(v3))
    {
      break;
    }

    v4 = sub_10053A148((v2 + 16));
    sub_10053A18C(v4);
  }

  return sub_10053A3DC(&v7);
}

void sub_10053DF7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10053A3DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053DF94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10053B76C(a1 + 3);
  sub_10053BDA8(v4);
  v5 = a1[1];
  *a2 = *a1;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  return sub_10053D250(v4);
}

atomic_uint **sub_10053DFF4(uint64_t *a1, pthread_mutex_t *a2)
{
  v24 = 0uLL;
  v4 = sub_10053B76C(a1 + 3);
  sub_10053BD58(&v27, v4);
  v5 = a1[1];
  if (v5)
  {
    if (atomic_load_explicit((v5 + 8), memory_order_acquire) == 1)
    {
      sub_10053C230(a1, &v27, 0, 1);
    }

    v6 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
    v6 = *a1;
  }

  v8 = v24;
  *&v24 = v6;
  *(&v24 + 1) = v7;
  v26[0] = v8;
  sub_10053A3DC(v26 + 1);
  sub_10053D250(v28[22]);
  sub_10053A2D8(&v27);
  LOBYTE(v27) = 0;
  v28[30] = 10;
  v28[31] = v28;
  v28[32] = 0;
  v28[33] = a2;
  v28[34] = 0;
  v28[35] = 0;
  v9 = sub_10053A148(&v24);
  v23[0] = &v27;
  v23[1] = a1;
  v23[2] = sub_10053B76C(v9);
  v10 = sub_10053A148(&v24);
  v11 = sub_10053B76C((v10 + 16));
  v12 = sub_10053A148(&v24);
  v13 = *(sub_10053B76C(v12) + 8);
  v14 = sub_10053A148(&v24);
  *&v21 = v13;
  *(&v21 + 1) = sub_10053B76C(v14);
  *&v22 = &v27;
  *(&v22 + 1) = *(&v21 + 1);
  sub_10053E908(&v21);
  v15 = sub_10053A148(&v24);
  v16 = sub_10053B76C(v15);
  v17 = sub_10053A148(&v24);
  *&v19 = v16;
  *(&v19 + 1) = sub_10053B76C(v17);
  *&v20 = &v27;
  *(&v20 + 1) = *(&v19 + 1);
  sub_10053E908(&v19);
  v26[0] = v21;
  v26[1] = v22;
  v25[0] = v19;
  v25[1] = v20;
  sub_10053E224(v11, v26, v25);
  sub_10053F230(v23);
  sub_10053F3F4(&v27);
  return sub_10053A3DC(&v24 + 1);
}

void sub_10053E1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_10053D5E4(&a31);
  sub_10053A3DC(&a22);
  _Unwind_Resume(a1);
}

void sub_10053E224(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_10053E2AC(a2);
    *a2 = *(*a2 + 8);
    sub_10053E908(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_10053E2AC(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_10053E34C((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_10186A8B0();
  }

  return v3 + 1;
}

uint64_t sub_10053E34C(uint64_t a1, uint64_t *a2)
{
  v2 = sub_10053A148(a2);
  v3 = (sub_10053B76C((v2 + 32)) + 24);

  return sub_10053E394(v3);
}

uint64_t sub_10053E394(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_10245D1A8;
    sub_10053E42C(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void sub_10053E42C(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10053E488(exception, a1);
}

uint64_t sub_10053E488(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &off_102446EA8;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_10245D130;
  *(a1 + 8) = off_10245D160;
  *(a1 + 24) = off_10245D188;
  return a1;
}

void sub_10053E704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10038C21C(&a9);
  sub_10038C21C(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_10053E770(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10053E7CC(exception, a1);
}

uint64_t sub_10053E7CC(uint64_t a1, uint64_t a2)
{
  *a1 = &off_102446EA8;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &off_10245D1A8;
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
  *a1 = &off_10245D130;
  *(a1 + 8) = off_10245D160;
  *(a1 + 24) = off_10245D188;
  return a1;
}

void sub_10053E908(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 != a1[3])
  {
    if (v1 == a1[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10053ECAC((a1[2] + 8), *(a1[2] + 264));
      v3 = sub_10053B76C((*a1 + 16));
      sub_10053A268(v14, v3);
      v4 = sub_10053A148((*a1 + 16));
      sub_10053EB30(v4, v14, (a1[2] + 8));
      v5 = sub_10053A148((*a1 + 16));
      v6 = a1[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 280);
      }

      else
      {
        ++*(v6 + 284);
      }

      v7 = sub_10053A148((*a1 + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_10053EC4C(a1, v14, *a1);
        v9 = 0;
      }

      (*(*v15 + 32))(v15);
      sub_10053A2D8(v14);
      v10 = *a1;
      v1 = a1[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *a1 = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = a1[3];
      if (v12 != v1)
      {
        v13 = sub_10053B76C((v12 + 16));
        sub_10053A268(v14, v13);
        sub_10053EC4C(a1, v14, a1[1]);
        (*(*v15 + 32))(v15);
        sub_10053A2D8(v14);
      }
    }
  }
}

void sub_10053EAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_10053EB30(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_10053B76C(result + 4); ; i += 6)
    {
      result = sub_10053B76C(v3);
      if (i == result[1])
      {
        break;
      }

      sub_10053D098(i, v8);
      if (sub_10053C57C(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10053A4C4(v6, a2);
        }

        return sub_10053D1C0(v8);
      }

      sub_10053ED58(a3, v8);
      sub_10053D1C0(v8);
    }
  }

  return result;
}

void sub_10053EC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10053D1C0(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_10053EC4C(void *a1, void *a2, uint64_t a3)
{
  a1[3] = a3;
  v3 = a1[2];
  if (a1[1] == a3)
  {
    result = *(v3 + 288);
    if (result)
    {
      result = sub_10053A4C4(result, a2);
    }

    *(v3 + 288) = 0;
  }

  else
  {
    v4 = *(a3 + 16);
    v5 = a1[2];

    return sub_10053F1E4(v5, a2, v4);
  }

  return result;
}

atomic_uint **sub_10053ECAC(atomic_uint **result, unint64_t a2)
{
  if (result[32] < a2)
  {
    sub_1018B7418();
  }

  if (a2)
  {
    v3 = result;
    result = sub_10053ED04(result, a2);
    v3[32] = (v3[32] - a2);
  }

  return result;
}

atomic_uint **sub_10053ED04(atomic_uint **result, uint64_t a2)
{
  if (!a2)
  {
    sub_1018B7128();
  }

  if (-24 * a2 < 0)
  {
    v2 = &result[31][6 * result[32]];
    v3 = v2 - 24 * a2;
    do
    {
      v2 -= 24;
      result = sub_10053D1C0(v2);
    }

    while (v2 > v3);
  }

  return result;
}

uint64_t sub_10053ED58(void *a1, uint64_t a2)
{
  v4 = a1[32];
  if (v4 == a1[30])
  {
    sub_10053EE00(a1, v4 + 1);
  }

  return sub_10053EDB0(a1, a2);
}

uint64_t sub_10053EDB0(void *a1, uint64_t a2)
{
  v2 = a1[32];
  if (v2 == a1[30])
  {
    sub_1018B7180();
  }

  result = sub_10053EE5C(a1[31] + 24 * v2, a2);
  ++a1[32];
  return result;
}

void sub_10053EE00(void *a1, unint64_t a2)
{
  v2 = a1[30];
  if (v2 <= 9)
  {
    sub_1018B71D8();
  }

  v3 = a2;
  if (v2 < a2)
  {
    v5 = 4 * v2;
    if (v5 > a2)
    {
      a2 = v5;
    }

    sub_10053EF0C(a1, a2);
    if (a1[30] < v3)
    {
      sub_1018B71AC();
    }
  }
}

uint64_t sub_10053EE5C(uint64_t a1, uint64_t a2)
{
  switch(*a2 ^ (*a2 >> 31))
  {
    case 0:
      v4 = *(a2 + 16);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v4;
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
      }

      break;
    case 1:
      *(a1 + 8) = (*(**(a2 + 8) + 16))(*(a2 + 8));
      break;
    default:
      sub_10053508C();
  }

  *a1 = *a2 ^ (*a2 >> 31);
  return a1;
}

void sub_10053EF0C(void *a1, unint64_t a2)
{
  v4 = sub_10053EF68(a1, a2);
  sub_10053F05C(a1);
  a1[30] = a2;
  a1[31] = v4;
  if (a1[32] > a2)
  {
    sub_1018B7204();
  }
}

uint64_t sub_10053EF68(uint64_t a1, unint64_t a2)
{
  sub_10053F0B0(a1, a2);
  v5 = v4;
  v12[0] = 0;
  v13 = a1;
  v14 = sub_10053F108;
  v15 = 0;
  v16 = v4;
  v17 = a2;
  v6 = *(a1 + 256);
  if (v6)
  {
    v7 = 0;
    v8 = *(a1 + 248);
    v9 = -24 * v6;
    do
    {
      v10 = sub_10053EE5C(v4, v8);
      v8 += 24;
      v4 = v10 + 24;
      v7 -= 24;
    }

    while (v9 != v7);
  }

  v12[0] = 1;
  sub_10053F11C(v12);
  return v5;
}

void sub_10053F014(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      sub_10053D1C0(v1);
      v1 += 24;
      v3 -= 24;
    }

    while (v3);
  }

  __cxa_rethrow();
}

void sub_10053F03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  sub_10053F11C(&a9);
  _Unwind_Resume(a1);
}

void sub_10053F05C(void *a1)
{
  v1 = a1[31];
  if (v1)
  {
    v2 = a1[30];
    if (v2 < 0xA || (v1 == a1 ? (v3 = v2 == 10) : (v3 = 1), !v3 || a1[32] > v2))
    {
      sub_1018B70FC();
    }

    sub_10053F184(a1);
  }
}

void sub_10053F0B0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xB)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {

      operator new();
    }

    sub_1001D0818();
  }
}

void sub_10053F108(int a1, void *__p, unint64_t a3)
{
  if (a3 >= 0xB)
  {
    operator delete(__p);
  }
}

uint64_t sub_10053F11C(uint64_t result)
{
  if ((*result & 1) == 0)
  {
    v1 = *(result + 16);
    v2 = *(result + 24);
    v3 = (*(result + 8) + (v2 >> 1));
    if (v2)
    {
      v1 = *(*v3 + v1);
    }

    return v1(v3, *(result + 32), *(result + 40));
  }

  return result;
}

void sub_10053F168(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void sub_10053F184(uint64_t a1)
{
  v2 = *(a1 + 256);
  if (v2)
  {
    sub_10053ED04(a1, v2);
  }

  if (*(a1 + 240) >= 0xBuLL)
  {
    v3 = *(a1 + 248);

    operator delete(v3);
  }
}

atomic_uint **sub_10053F1E4(uint64_t a1, void *a2, uint64_t a3)
{
  result = *(a1 + 288);
  if (result)
  {
    result = sub_10053A4C4(result, a2);
  }

  *(a1 + 288) = a3;
  if (a3)
  {
    v6 = *(a3 + 28);
    if (!v6)
    {
      sub_1018B7444();
    }

    *(a3 + 28) = v6 + 1;
  }

  return result;
}

uint64_t sub_10053F230(uint64_t a1)
{
  if (*(*a1 + 284) > *(*a1 + 280))
  {
    sub_10053F274(*(a1 + 8), *(a1 + 16));
  }

  return a1;
}

void sub_10053F274(uint64_t *a1, uint64_t a2)
{
  v4 = sub_10053B76C(a1 + 3);
  sub_10053BD58(v9, v4);
  v5 = sub_10053A148(a1);
  if (sub_10053B76C(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_10053A148(a1);
    v8 = *(sub_10053B76C(v7) + 8);
    sub_10053C118(a1, v9, 0, &v8, 0);
  }

  sub_10053D250(v9[23]);
  sub_10053A2D8(v9);
}

uint64_t sub_10053F3F4(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    sub_10053A268(v4, v2);
    sub_10053A4C4(*(a1 + 288), v4);
    (*(*v5 + 32))(v5);
    sub_10053A2D8(v4);
  }

  sub_10053F05C((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_10053F4B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10053F4D0()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_10053F548()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

uint64_t sub_10053F5C0()
{
  v1 = 4;
  qword_102656D08 = 0;
  unk_102656D10 = 0;
  qword_102656D00 = 0;
  sub_1004579D4(&qword_102656D00, &v1, &v2, 1uLL);
  return __cxa_atexit(sub_1004F4E20, &qword_102656D00, dword_100000000);
}

uint64_t sub_10053F634(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

uint64_t sub_10053F664(uint64_t result, uint64_t a2)
{
  if ((*(result + 32) & 1) == 0)
  {
    v2 = *result;
    sub_10053F864(v3, a2);
    sub_100DB4B7C(v2, v3);
  }

  return result;
}

void sub_10053F6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10053A0E0((v4 + 8));
  sub_1003E7670(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053F728(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    sub_10053F7F0(a1, a2);
  }

  else
  {
    *a1 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v4 = 0;
    sub_10053A0E0(&v4);
    *(a1 + 16) = 1;
  }

  return a1;
}

uint64_t sub_10053F790(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    sub_100DB4FB4(*a1, (a1 + 16));
    if (*(a1 + 32))
    {
      sub_10053A0E0((a1 + 24));
    }
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

__int128 *sub_10053F7F0(__int128 *a1, __int128 *a2)
{
  if (a2 != a1)
  {
    v4 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v5 = *a1;
    *a1 = v4;
    *(&v8 + 1) = *(&v5 + 1);
    sub_10053A0E0(&v8 + 1);
    v6 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    *(&v8 + 1) = *(&v6 + 1);
    sub_10053A0E0(&v8 + 1);
  }

  return a1;
}

uint64_t sub_10053F864(uint64_t a1, uint64_t a2)
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

void sub_10053F8FC()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

void sub_10053F974()
{
  if ((atomic_load_explicit(&qword_1025D6A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D6A20))
  {
    __cxa_atexit(sub_10053F634, &xmmword_1025D6A10, dword_100000000);

    __cxa_guard_release(&qword_1025D6A20);
  }
}

uint64_t sub_10053F9EC()
{
  v1 = 4;
  qword_102656D20 = 0;
  unk_102656D28 = 0;
  qword_102656D18 = 0;
  sub_1004579D4(&qword_102656D18, &v1, &v2, 1uLL);
  return __cxa_atexit(sub_1004F4E20, &qword_102656D18, dword_100000000);
}

double sub_10053FA60(uint64_t a1)
{
  sub_10053FAA8(a1);
  *a1 = 0;
  *(a1 + 6152) = 0;
  *(a1 + 12304) = 0;
  result = 0.0;
  *(a1 + 12336) = 0u;
  *(a1 + 12384) = 0u;
  *(a1 + 12408) = 1;
  return result;
}

double sub_10053FAA8(uint64_t a1)
{
  if (*(a1 + 12344) <= *(a1 + 12392))
  {
    v2 = *(a1 + 12392);
  }

  else
  {
    v2 = *(a1 + 12344);
  }

  if (*(a1 + 12408))
  {
    v3 = 0;
  }

  else
  {
    v3 = 5;
  }

  if (v2 > v3)
  {
    do
    {
      sub_10053FB28(a1, v3++);
    }

    while (v2 != v3);
  }

  result = 0.0;
  *(a1 + 12336) = 0u;
  *(a1 + 12384) = 0u;
  *(a1 + 12408) = 1;
  return result;
}

void sub_10053FB28(void *a1, int a2)
{
  v4 = 0;
  v21 = 0.0;
  v22 = 0.0;
  v5 = a1[1539] + 48 * ((a1[1542] + a2) % a1[1544]);
  v6.i32[0] = *(v5 + 12);
  v7.i32[0] = *(v5 + 8);
  v7.i32[1] = *(v5 + 32);
  LODWORD(v18) = *(v5 + 36);
  v7.i64[1] = *(v5 + 36);
  v6.i32[1] = 8.0;
  v6.i32[2] = 12.0;
  v6.i32[3] = 12.0;
  if (vminv_u16(vmovn_s32(vcgtq_f32(v7, v6))))
  {
    v4 = (*(v5 + 28) * 0.013486) < 0.001;
  }

  if (v4 && (v8 = *(v5 + 20), v9 = (sqrtf(*(v5 + 8) * 0.013486) * 980.0) / ((v8 * v8) * 3.14159265 * 3.14159265), v9 > 0.00800000038) && (v10 = sub_100540D50(a1, (a1 + 1539), a2), v10 >= 2))
  {
    v20 = 1;
    v19 = *v5;
    v11 = (a1[1545] + 48 * ((a1[1548] + a2) % a1[1550]));
    if (v11[2] > v11[3] && (v12 = v11[9], v12 > 4.0) && sub_100540D50(v10, (a1 + 1545), a2) >= 2 && (v13 = log10f(v18) + -0.565, v14 = log10f(v12) + -0.325, ((((v13 * -7.8237) * v14) + ((v13 * 9.8052) * v13)) + ((v14 * 4.529) * v14)) >= 3.36))
    {
      v17 = v9;
      v21 = v17;
      v22 = v8;
    }

    else
    {
      v20 = -2;
    }
  }

  else
  {
    if ((*(v5 + 16) * 0.013486) <= 0.0001)
    {
      v15 = 0;
    }

    else
    {
      v15 = -1;
    }

    v20 = v15;
    v19 = *v5;
  }

  v16 = a1[1552];
  if (v16)
  {
    v16(&v19, a1[1553]);
  }
}

void sub_10053FD80(unsigned __int16 *a1, uint64_t *a2, double a3)
{
  if (a3 > 0.0)
  {
    v13 = v6;
    v14 = v5;
    v15 = v3;
    v16 = v4;
    sub_10053FDF0(a1, a3);
    v10 = *a2;
    *&v11 = a3;
    *(&v11 + 1) = v10;
    v12 = *(a2 + 2);
    sub_1000CE644(a1, &v11);
    sub_1005401EC(a1, a3);
  }
}

void sub_10053FDF0(unsigned __int16 *a1, double a2)
{
  if (a1[1])
  {
    v4 = a1 + 4;
    v5 = a1[1] + *a1 - 1;
    v6 = *(a1 + 1);
    if (v5 < v6)
    {
      v6 = 0;
    }

    if (*&v4[12 * (v5 - v6)] + 1.0 < a2)
    {
      if (qword_1025D4590 != -1)
      {
        sub_1018B7470();
      }

      v7 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *a1 + a1[1] - 1;
        v9 = *(a1 + 1);
        if (v8 < v9)
        {
          v9 = 0;
        }

        v10 = a2 - *&v4[12 * (v8 - v9)];
        *buf = 134217984;
        v20 = v10;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Resetting detector, %.1f seconds without an accel sample", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_25;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4590 == -1)
      {
LABEL_28:
        v18 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CMTremorDetection::checkForGap(CFAbsoluteTime)", "%s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }

LABEL_25:
        sub_10053FAA8(a1);
        *a1 = 0;
        *(a1 + 1538) = 0;
        *(a1 + 1538) = 0;
        *(a1 + 771) = 0u;
        *(a1 + 774) = 0u;
        *(a1 + 12408) = 1;
        return;
      }

LABEL_30:
      sub_1018B7484();
      goto LABEL_28;
    }
  }

  if (a1[3077])
  {
    v11 = a1 + 3080;
    v12 = a1[3077] + a1[3076] - 1;
    v13 = *(a1 + 1539);
    if (v12 < v13)
    {
      v13 = 0;
    }

    if (*&v11[12 * (v12 - v13)] + 1.0 < a2)
    {
      if (qword_1025D4590 != -1)
      {
        sub_1018B7470();
      }

      v14 = qword_1025D4598;
      if (os_log_type_enabled(qword_1025D4598, OS_LOG_TYPE_DEFAULT))
      {
        v15 = a1[3076] + a1[3077] - 1;
        v16 = *(a1 + 1539);
        if (v15 < v16)
        {
          v16 = 0;
        }

        v17 = a2 - *&v11[12 * (v15 - v16)];
        *buf = 134217984;
        v20 = v17;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Resetting detector, %.1f seconds without a gyro sample", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_25;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4590 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }
  }
}

void sub_1005401EC(uint64_t a1, double a2)
{
  if (!*(a1 + 12304))
  {
    *(a1 + 12304) = 1280 * (1000 * a2 / 1280) + 1280;
  }

  if (*(a1 + 4) == *(a1 + 2))
  {
    v3 = sub_100540904(a1, 0x80uLL);
    v4 = *(a1 + 12304);
    if (v4 >= 1)
    {
      v5 = v4 / 1000.0;
      if (*v3 >= v5)
      {
        if (*v3 < (v4 + 640) / 1000.0)
        {
          sub_1005402F8(a1, v5);
          v4 = *(a1 + 12304);
        }

        *(a1 + 12304) = v4 + 1280;
      }
    }
  }
}

unsigned __int16 *sub_1005402B0(unsigned __int16 *result, uint64_t *a2, double a3)
{
  if (a3 > 0.0)
  {
    v8 = v3;
    v9 = v4;
    v5 = *a2;
    *&v6 = a3;
    *(&v6 + 1) = v5;
    v7 = *(a2 + 2);
    return sub_1000CE644(result + 3076, &v6);
  }

  return result;
}

void sub_1005402F8(uint64_t a1, double a2)
{
  if (*(a1 + 6156) == *(a1 + 6154))
  {
    v11 = v5;
    v12 = v4;
    v13 = v2;
    v14 = v3;
    if (*(a1 + 4) == *(a1 + 2))
    {
      sub_10054046C(a1, a1, 273, v10, a2);
      sub_1005403FC((a1 + 12312), v10);
      sub_10054046C(a1, (a1 + 6152), 1, v10, a2);
      sub_1005403FC((a1 + 12360), v10);
      v8 = *(a1 + 12344);
      if (v8 <= *(a1 + 12392))
      {
        v8 = *(a1 + 12392);
      }

      if (v8 >= 9)
      {
        if (*(a1 + 12408) == 1)
        {
          for (i = 0; i != 4; ++i)
          {
            sub_10053FB28(a1, i);
          }

          *(a1 + 12408) = 0;
        }

        sub_10053FB28(a1, 4);
      }
    }
  }
}

uint64_t sub_1005403FC(void *a1, __int128 *a2)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = (*a1 + 48 * ((a1[3] + a1[4]) % v2));
    v4 = *a2;
    v5 = a2[1];
    *(v3 + 28) = *(a2 + 28);
    *v3 = v4;
    v3[1] = v5;
    v6 = a1[4];
    if (v6 == a1[5])
    {
      v2 = 0;
      a1[3] = (a1[3] + 1) % v6;
    }

    else
    {
      a1[4] = v6 + 1;
      return 1;
    }
  }

  return v2;
}

void sub_10054046C(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  sub_100540BF8(a1, v52, a2, a3);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *a4 = a5;
  v7 = dword_102656D30;
  if (dword_102656D30 + 1 < dword_102656D34)
  {
    v8 = dword_102656D30 + 1;
    v9 = ~dword_102656D30 + dword_102656D34;
    do
    {
      if (*(v52 + v8) >= *(v52 + v7))
      {
        v7 = v8;
      }

      ++v8;
      --v9;
    }

    while (v9);
  }

  v10 = (v7 / 2);
  v11 = (v10 + -0.001);
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v13 = v10 + 0.001;
  do
  {
    if (v12 <= v13 + 1)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (!v14 || *(v52 + v15) >= *(v52 + v14))
        {
          v14 = v15;
        }

        v20 = v15++ <= v13;
      }

      while (v20);
    }

    else
    {
      v14 = 0;
    }
  }

  while (!v14);
  v16 = (2 * v7) | 1;
  v17 = *(v52 + v16);
  v18 = *(v52 + 2 * v7);
  v19 = 2 * v7 - 1;
  if (v17 <= v18 || v18 <= *(v52 + v19))
  {
    v20 = *(v52 + v19) <= v18 || v18 <= v17;
    if (v20)
    {
      LODWORD(v16) = 2 * v7;
    }

    else
    {
      LODWORD(v16) = 2 * v7 - 1;
    }
  }

  v21 = 3 * v7;
  v22 = 3 * v7 + 1;
  v23 = *(v52 + v22);
  v24 = *(v52 + 3 * v7);
  v25 = 3 * v7 - 1;
  if (v23 > v24 && v24 > *(v52 + v25))
  {
    v26 = 2;
    goto LABEL_34;
  }

  if (v24 > v23 && *(v52 + v25) > v24)
  {
    v26 = -2;
    v23 = *(v52 + v25);
    LODWORD(v22) = 3 * v7 - 1;
LABEL_34:
    if (*(v52 + v21 + v26) <= v23)
    {
      v21 = v22;
    }

    else
    {
      v21 += v26;
    }
  }

  v28 = dword_102656D38;
  v29 = *&dword_102656D40;
  if (dword_102656D38 >= dword_102656D3C)
  {
    v46 = NAN;
    v47 = NAN;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = -v21;
    v33 = -v16;
    v34 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    v39 = 0.0;
    do
    {
      v40 = v28 - v7;
      if (v28 - v7 < 0)
      {
        v40 = v7 - v28;
      }

      if (v40 >= 2)
      {
        v41 = v33 + v28;
        if (v33 + v28 < 0)
        {
          v41 = -v41;
        }

        if (v41 >= 2)
        {
          v42 = v32 + v28;
          if (v32 + v28 < 0)
          {
            v42 = -v42;
          }

          if (v42 >= 2)
          {
            v43 = *(v52 + v28);
            if (v43 >= v37)
            {
              v37 = *(v52 + v28);
            }

            v39 = v39 + v43;
            ++v31;
            if (v43 < v36)
            {
              v44 = v36;
            }

            else
            {
              v44 = *(v52 + v28);
            }

            v45 = v38 + v43;
            if (v28 < dword_102656D30)
            {
              v36 = v44;
              v38 = v45;
              ++v30;
            }
          }
        }
      }

      if (*(v52 + v28) > v35)
      {
        v34 = *&dword_102656D40 * v28;
        v35 = *(v52 + v28);
      }

      ++v28;
    }

    while (dword_102656D3C != v28);
    *(a4 + 12) = v37;
    *(a4 + 16) = v35;
    *(a4 + 24) = v34;
    *(a4 + 28) = v36;
    v46 = v39 / v31;
    v47 = v38 / v30;
  }

  v48 = *(v52 + v7);
  *(a4 + 8) = v48;
  *(a4 + 20) = v29 * v7;
  v49 = v48 / v46;
  v50 = v48 / v47;
  v51 = *(v52 + v14);
  *(a4 + 32) = v49;
  *(a4 + 36) = v50;
  *(a4 + 40) = v48 / v51;
}

void sub_10054079C(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, int a4)
{
  *v16 = 0x10000000000;
  sub_1012F7D70(v15);
  v7 = 0;
  v8 = 0;
  for (i = 0; i != 256; ++i)
  {
    if (a4 == 256)
    {
      v10 = *(sub_100540904(a3, i) + 16);
    }

    else if (a4 == 16)
    {
      v10 = *(sub_100540904(a3, i) + 12);
    }

    else
    {
      v10 = 0;
      if (a4 == 1)
      {
        v10 = *(sub_100540904(a3, i) + 8);
      }
    }

    v11 = v8 + v7;
    if (v11 >= 0x100)
    {
      v12 = 0x7FFFFFFFFFFFFE04;
    }

    else
    {
      v12 = 4;
    }

    *&v16[2 * v11 + v12] = v10;
    if (v8 > 0xFF)
    {
      if (v7 >= 0xFFu)
      {
        v13 = -256;
      }

      else
      {
        v13 = 0;
      }

      v14 = v7 + v13;
      v7 = v14 + 1;
      v16[0] = v14 + 1;
    }

    else
    {
      v16[1] = ++v8;
    }
  }

  sub_100540B04(v16);
  sub_1012F7D74(v15, a2, v16);
}

uint64_t sub_100540904(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245D220);
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
        dispatch_once(&qword_1025D48A0, &stru_10245D220);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMTremorDetection::SensorSample>::operator[](const size_t) const [T = CMTremorDetection::SensorSample]", "%s\n", v9);
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

  return &a1[12 * (v4 - v5) + 4];
}

float *sub_100540B04(unsigned __int16 *a1)
{
  v2 = 0;
  v3 = 255;
  do
  {
    v4 = (cosf(v2 * 0.02464) * -0.46) + 0.54;
    v5 = v4 * *sub_100457AE8(a1, v2);
    *sub_100457AE8(a1, v2) = v5;
    v6 = v4 * *sub_100457AE8(a1, v3);
    *sub_100457AE8(a1, v3) = v6;
    ++v2;
    --v3;
  }

  while (v2 != 128);
  v7 = *sub_100457AE8(a1, 0x80uLL) * 0.99997;
  result = sub_100457AE8(a1, 0x80uLL);
  *result = v7;
  return result;
}

float32x4_t sub_100540BF8(uint64_t a1, _OWORD *a2, unsigned __int16 *a3, __int16 a4)
{
  result.i64[0] = 0;
  a2[30] = 0u;
  a2[31] = 0u;
  a2[28] = 0u;
  a2[29] = 0u;
  a2[26] = 0u;
  a2[27] = 0u;
  a2[24] = 0u;
  a2[25] = 0u;
  a2[22] = 0u;
  a2[23] = 0u;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  if (a4)
  {
    sub_10054079C(a1, v11, a3, 1);
    for (i = 0; i != 512; i += 16)
    {
      result = vmlaq_f32(a2[i / 0x10], *&v11[i / 4], *&v11[i / 4]);
      a2[i / 0x10] = result;
    }
  }

  if ((a4 & 0x10) != 0)
  {
    sub_10054079C(a1, v11, a3, 16);
    for (j = 0; j != 512; j += 16)
    {
      result = vmlaq_f32(a2[j / 0x10], *&v11[j / 4], *&v11[j / 4]);
      a2[j / 0x10] = result;
    }
  }

  if ((a4 & 0x100) != 0)
  {
    sub_10054079C(a1, v11, a3, 256);
    for (k = 0; k != 512; k += 16)
    {
      result = vmlaq_f32(a2[k / 0x10], *&v11[k / 4], *&v11[k / 4]);
      a2[k / 0x10] = result;
    }
  }

  return result;
}

uint64_t sub_100540D50(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3 - 4;
  v4 = *(a2 + 32);
  if (v4 - 9 < a3 - 4)
  {
    v3 = v4 - 9;
  }

  v5 = v3 & ~(v3 >> 31);
  if (v5 >= v4)
  {
    return 1;
  }

  LODWORD(v6) = v4 - 1;
  if (v6 >= v5 + 8)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = v6;
  }

  result = 1;
  do
  {
    if (a3 != v5 && vabds_f32(*(*a2 + 48 * ((*(a2 + 24) + v5) % *(a2 + 40)) + 24), *(*a2 + 48 * ((*(a2 + 24) + a3) % *(a2 + 40)) + 24)) < 0.5)
    {
      result = (result + 1);
    }
  }

  while (v5++ < v6);
  return result;
}

void sub_100540E2C()
{
  v0 = sub_100C71D50(0x64u, 0x80uLL, 3.0);
  dword_102656D30 = sub_100C71D00(v0);
  v1 = sub_100C71D50(0x64u, 0x80uLL, 7.25);
  dword_102656D34 = sub_100C71D00(v1);
  v2 = sub_100C71D50(0x64u, 0x80uLL, 0.75);
  dword_102656D38 = sub_100C71D00(v2);
  v3 = sub_100C71D50(0x64u, 0x80uLL, 10.0);
  dword_102656D3C = sub_100C71D00(v3);
  dword_102656D40 = sub_100C71D78(0x64u, 0x80uLL);
}

uint64_t sub_100540EC4()
{
  if (qword_102656D48 != -1)
  {
    sub_1018B74AC();
  }

  return qword_102636F08;
}

uint64_t sub_100540F64(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x300000000;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 79) = 0u;
  *(a1 + 95) = 0u;
  *(a1 + 111) = 0;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  sub_10054103C(a1);
  return a1;
}

void sub_100541000(_Unwind_Exception *a1)
{
  sub_1004906DC(v3);
  sub_1004906DC(v4);
  sub_1004906DC(v2);
  sub_1004906DC(v1 + 80);
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(a1);
}

void sub_10054103C(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*(a1 + 8))
  {
    BTAccessoryManagerDeregisterCustomMessageClient();
    BTAccessoryManagerRemoveCallbacks();
    *(a1 + 8) = 0;
  }

  if (*(a1 + 16))
  {
    BTLocalDeviceRemoveCallbacks();
    *(a1 + 16) = 0;
  }

  *a1 = 0;
  v2 = BTSessionAttachWithQueue();
  if (v2)
  {
    v3 = v2;
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v4 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67240192;
      v5[1] = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to register BT session callback. Error: %{public}d", v5, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B74D4(v3);
    }
  }
}

void sub_100541190(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current != sub_10018D3EC())
  {
    v4 = sub_100011660();
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100541EF8;
    v34[3] = &unk_102449A78;
    v34[4] = v2;
    sub_10017A794(v4, v34);
    return;
  }

  if (*v2)
  {
    if (*(v2 + 8))
    {
      if (*(v2 + 16))
      {
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        *v62 = 0u;
        v63 = 0u;
        BTLocalDeviceGetConnectedDevices();
        v60 = 0;
        *__s = 0;
        v61 = 0;
        v5 = 0;
        v6 = 0;
        while (1)
        {
          if (!BTDeviceGetAddressString() && !BTDeviceGetName() && !BTAccessoryManagerGetInEarStatus())
          {
            if (qword_1025D4320 != -1)
            {
              sub_1018B75C4();
            }

            v7 = qword_1025D4328;
            if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
            {
              *buf = 136381443;
              v44 = &v51;
              v45 = 2081;
              v46 = __s;
              v47 = 1026;
              v48 = 0;
              v49 = 1026;
              v50 = 0;
              _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "[CLAudioAccessoryInterface] refreshBTDevice. Name,%{private}s, Address,%{private}s, inear,%{public}d,%{public}d", buf, 0x22u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4320 != -1)
              {
                sub_1018B75C4();
              }

              v35 = 136381443;
              v36 = &v51;
              v37 = 2081;
              v38 = __s;
              v39 = 1026;
              v40 = 0;
              v41 = 1026;
              v42 = 0;
              v10 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::refreshBTDevice()", "%s\n", v10);
              if (v10 != buf)
              {
                free(v10);
              }
            }

            if (v62[v6] == *(v2 + 24))
            {
              v5 = 1;
            }

            else
            {
              v8 = *(v2 + 79);
              v9 = v8;
              if (*(v2 + 79) < 0)
              {
                v9 = *(v2 + 64);
              }

              if (v9 >= 0x11)
              {
                if (!std::string::compare((v2 + 56), __s))
                {
                  if (qword_1025D4320 != -1)
                  {
                    sub_1018B75C4();
                  }

                  v29 = qword_1025D4328;
                  if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. Matched device found", buf, 2u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_1018B76D0();
                  }

LABEL_113:
                  v14 = v62[v6];
                  if (v5)
                  {
LABEL_63:
                    v17 = *(v2 + 24);
                    if (v17)
                    {
                      if (!v14 || v17 == v14)
                      {
LABEL_66:
                        v51 = 0;
                        BTAccessoryManagerGetPrimaryBudSide();
                        if (v51 == *(v2 + 36))
                        {
                          if (qword_1025D4320 != -1)
                          {
                            sub_1018B75C4();
                          }

                          v18 = qword_1025D4328;
                          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
                          {
                            *buf = 136380675;
                            v44 = __s;
                            _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "[CLAudioAccessoryInterface] refreshBTDevice. Active device %{private}s unchanged.", buf, 0xCu);
                          }

                          if (sub_10000A100(121, 2))
                          {
                            sub_1018B79C0();
                          }

                          return;
                        }

                        if (qword_1025D4320 != -1)
                        {
                          sub_1018B75C4();
                        }

                        v19 = qword_1025D4328;
                        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136380931;
                          v44 = __s;
                          v45 = 1026;
                          LODWORD(v46) = v51;
                          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. Active device %{private}s side changed, %{public}d", buf, 0x12u);
                        }

                        if (sub_10000A100(121, 2))
                        {
                          sub_1018B78B0();
                        }

                        *(v2 + 36) = v51;
LABEL_100:
                        sub_1005420E8(v2);
                        sub_100541F00(v2, 2);
                        return;
                      }

LABEL_88:
                      *(v2 + 24) = v14;
                      BTAccessoryManagerGetPrimaryBudSide();
                      v35 = 0;
                      DeviceId = BTDeviceGetDeviceId();
                      if (DeviceId)
                      {
                        v22 = DeviceId;
                        *(v2 + 32) = 0;
                        if (qword_1025D4320 != -1)
                        {
                          sub_1018B75C4();
                        }

                        v23 = qword_1025D4328;
                        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 67240192;
                          LODWORD(v44) = v22;
                          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] refreshBTDevice - Failed to get the product ID. Error: %{public}d", buf, 8u);
                        }

                        if (sub_10000A100(121, 0))
                        {
                          sub_1018B7B94(v22);
                        }
                      }

                      if (qword_1025D4320 != -1)
                      {
                        sub_1018B75C4();
                      }

                      v24 = qword_1025D4328;
                      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
                      {
                        v25 = *(v2 + 24);
                        v26 = *(v2 + 32);
                        v27 = *(v2 + 36);
                        *buf = 134349827;
                        v44 = v25;
                        v45 = 2081;
                        v46 = __s;
                        v47 = 1026;
                        v48 = v26;
                        v49 = 1026;
                        v50 = v27;
                        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. Current active device changed to %{public}p,addr,%{private}s,PID,0x%{public}x,side,%{public}d", buf, 0x22u);
                      }

                      if (sub_10000A100(121, 2))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1025D4320 != -1)
                        {
                          sub_1018B75C4();
                        }

                        v30 = *(v2 + 24);
                        v31 = *(v2 + 32);
                        v32 = *(v2 + 36);
                        v51 = 134349827;
                        v52 = v30;
                        v53 = 2081;
                        v54 = __s;
                        v55 = 1026;
                        v56 = v31;
                        v57 = 1026;
                        v58 = v32;
                        v33 = _os_log_send_and_compose_impl();
                        sub_100152C7C("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::refreshBTDevice()", "%s\n", v33);
                        if (v33 != buf)
                        {
                          free(v33);
                        }
                      }

                      goto LABEL_100;
                    }

                    if (v14)
                    {
                      goto LABEL_88;
                    }

LABEL_81:
                    if (qword_1025D4320 != -1)
                    {
                      sub_1018B75C4();
                    }

                    v20 = qword_1025D4328;
                    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. No matched device. Use the first listed device.", buf, 2u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_1018B7AB0();
                    }

                    v14 = v62[0];
                    goto LABEL_88;
                  }

LABEL_55:
                  if (*(v2 + 24))
                  {
                    if (qword_1025D4320 != -1)
                    {
                      sub_1018B75C4();
                    }

                    v15 = qword_1025D4328;
                    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
                    {
                      v16 = *(v2 + 24);
                      *buf = 134349056;
                      v44 = v16;
                      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. Current active device %{public}p not available", buf, 0xCu);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_1018B77B4();
                    }

                    *(v2 + 48) = 0;
                    *(v2 + 24) = 0;
                    *(v2 + 32) = 0;
                  }

                  goto LABEL_63;
                }

                v8 = *(v2 + 79);
              }

              if ((v8 & 0x80) != 0)
              {
                v8 = *(v2 + 64);
              }

              if (v8 <= 0x10)
              {
                if (qword_1025D4320 != -1)
                {
                  sub_1018B75C4();
                }

                v28 = qword_1025D4328;
                if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] refreshBTDevice. First InEar device selected", buf, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_1018B75EC();
                }

                goto LABEL_113;
              }
            }
          }

          if (++v6 >= 0x100)
          {
            if (v5)
            {
              if (*(v2 + 24))
              {
                goto LABEL_66;
              }

              goto LABEL_81;
            }

            v14 = 0;
            goto LABEL_55;
          }
        }
      }

      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v13 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v62[0]) = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] refreshBTDevice failed. Invalid BT Local Device", v62, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B7D68();
      }
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v12 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v62[0]) = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] refreshBTDevice failed. Invalid BT AccessoryManager", v62, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B7E4C();
      }
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v11 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v62[0]) = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] refreshBTDevice failed. Invalid BT Session", v62, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B7F30();
    }
  }
}

void *sub_100541CC0(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v2 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] getBTAddress failed. Invalid BT Device.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B8208();
    }

    return 0;
  }

  *v9 = 0;
  v10 = 0;
  v11 = 0;
  if (BTDeviceGetAddressString())
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B75C4();
    }

    v1 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] getBTAddress failed. Can't get BT address string from BT Device.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B8014();
    }

    return 0;
  }

  *buf = 0;
  if (sscanf(v9, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", buf, &buf[1], &buf[2], &buf[3], &buf[4], &buf[5]) == 6)
  {
    v3 = *buf;
  }

  else
  {
    v3 = 0;
  }

  if (qword_1025D4320 != -1)
  {
    sub_1018B75C4();
  }

  v4 = qword_1025D4328;
  if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134283779;
    *&buf[4] = v3;
    v7 = 2081;
    v8 = v9;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] getBTAddress returned %{private}llu from address %{private}s", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B80F8(v9, v3);
  }

  return v3;
}

uint64_t sub_100541F00(uint64_t result, uint64_t a2)
{
  for (i = *(result + 176); i; i = *i)
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B75C4();
    }

    v4 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
    {
      v5 = i[2];
      *buf = 134218240;
      v8 = v5;
      v9 = 1024;
      v10 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Notify client %p with event %u", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4320 != -1)
      {
        sub_1018B75C4();
      }

      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::notifyClients(Event)", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    result = (i[3])(a2, i[2]);
  }

  return result;
}

void sub_1005420E8(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current != sub_10018D3EC())
  {
    v3 = sub_100011660();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100542708;
    v16[3] = &unk_102449A78;
    v16[4] = a1;
    sub_10017A794(v3, v16);
    return;
  }

  if (*(a1 + 8))
  {
    if (*(a1 + 24))
    {
      v4 = *(a1 + 104);
      v5 = *(a1 + 144);
      v6 = BTAccessoryManagerRemoteTimeSyncEnable();
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v7 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
      {
        v8 = "disable";
        if (v4)
        {
          v8 = "enable";
        }

        *buf = 136446722;
        v18 = v8;
        if (v6)
        {
          v9 = "failed";
        }

        else
        {
          v9 = "succeeded";
        }

        v19 = 2082;
        v20 = v9;
        v21 = 1026;
        v22 = v6;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] %{public}s high precision TimeSync %{public}s. Status: %{public}d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B82EC((v4 != 0), v6);
        if (v4)
        {
          return;
        }
      }

      else if (v4)
      {
        return;
      }

      v10 = BTAccessoryManagerSensorStreamTimeSyncEnable();
      if (qword_1025D4320 != -1)
      {
        sub_1018B75C4();
      }

      v11 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
      {
        v12 = "disable";
        if (v5)
        {
          v12 = "enable";
        }

        *buf = 136446722;
        v18 = v12;
        if (v10)
        {
          v13 = "failed";
        }

        else
        {
          v13 = "succeeded";
        }

        v19 = 2082;
        v20 = v13;
        v21 = 1026;
        v22 = v10;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] %{public}s low precision TimeSync %{public}s. Status: %{public}d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B840C((v5 != 0), v10);
        if (!v5)
        {
          goto LABEL_28;
        }
      }

      else if (!v5)
      {
LABEL_28:

        *(a1 + 48) = 0;
      }
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v15 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] update TimeSync failed due to invalid BT device", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B852C();
      }
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v14 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] update TimeSync failed due to invalid BT AccessoryManager", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B8610();
    }
  }
}

uint64_t sub_100542498(uint64_t a1)
{
  if (*(a1 + 24))
  {
    BTAccessoryManagerGetSpatialAudioPlatformSupport();
  }

  return 0;
}

void sub_1005424EC(uint64_t a1, uint64_t a2, int a3)
{
  v12 = a2;
  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current == sub_10018D3EC())
  {
    if (a3)
    {
      v8 = 120;
    }

    else
    {
      v8 = 80;
    }

    if (a3)
    {
      v9 = 80;
    }

    else
    {
      v9 = 120;
    }

    sub_100114860((a1 + v8), &v12);
    sub_100546764((a1 + v9), &v12);
    sub_1005420E8(a1);
  }

  else
  {
    v7 = sub_100011660();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005425D4;
    v10[3] = &unk_10245D288;
    v10[4] = a1;
    v10[5] = a2;
    v11 = a3;
    sub_10017A794(v7, v10);
  }
}

void sub_1005425E4(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current == sub_10018D3EC())
  {
    sub_100114860((a1 + 80), &v7);
    sub_100114860((a1 + 120), &v7);
    sub_1005420E8(a1);
  }

  else
  {
    v5 = sub_100011660();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1005426AC;
    v6[3] = &unk_10245D2A8;
    v6[4] = a1;
    v6[5] = a2;
    sub_10017A794(v5, v6);
  }
}

void sub_1005426CC(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, unint64_t a5, uint64_t a6)
{
  if (a3 == 1024)
  {
    sub_100543E68(a6, a2, a4, a5);
  }
}

id sub_100542710(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (v3 && [v3 lockState] == 2)
  {
    v11 = 0;
    return [*(a1 + 48) convertFromDomainToMachAbsoluteTime:a2 withFlags:&v11];
  }

  else
  {
    v6 = sub_1000081AC();
    if (v6 - *&qword_102656D50 <= 1.0)
    {
      return 0;
    }

    else
    {
      if (*(a1 + 48))
      {
        if (qword_1025D4320 != -1)
        {
          sub_1018B74C0();
        }

        v7 = qword_1025D4328;
        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
        {
          *v9 = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] TimeSync error! Clock not locked", v9, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018B86F4();
        }
      }

      else
      {
        if (qword_1025D4320 != -1)
        {
          sub_1018B74C0();
        }

        v8 = qword_1025D4328;
        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] TimeSync error! No TimeSync clock", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018B87D8();
        }
      }

      result = 0;
      qword_102656D50 = *&v6;
    }
  }

  return result;
}

void sub_10054287C(uint64_t a1, _DWORD *a2, _DWORD *a3, _BYTE *a4)
{
  *a3 = 3;
  *a2 = 3;
  *a4 = 1;
  if (*(a1 + 8))
  {
    if (*(a1 + 24))
    {
      v7 = BTAccessoryManagerGetInEarDetectionEnable();
      if (v7)
      {
        v8 = v7;
        if (qword_1025D4320 != -1)
        {
          sub_1018B75C4();
        }

        v9 = qword_1025D4328;
        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          LODWORD(v22) = v8;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] in ear status - failed to get IED setting. Error: %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018B88BC(v8);
        }
      }

      else
      {
        v12 = BTAccessoryManagerGetInEarStatus();
        if (v12)
        {
          v13 = v12;
          if (qword_1025D4320 != -1)
          {
            sub_1018B75C4();
          }

          v14 = qword_1025D4328;
          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
          {
            *buf = 67240192;
            LODWORD(v22) = v13;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] in ear status - failed to get inear status. Error: %{public}d", buf, 8u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018B89AC(v13);
          }

          *a3 = 3;
          *a2 = 3;
        }

        else
        {
          if (qword_1025D4320 != -1)
          {
            sub_1018B75C4();
          }

          v15 = qword_1025D4328;
          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *a2;
            if (v16 > 3)
            {
              v17 = @"?";
            }

            else
            {
              v17 = *(&off_10245D330 + v16);
            }

            v18 = *a3;
            if (v18 > 3)
            {
              v19 = @"?";
            }

            else
            {
              v19 = *(&off_10245D330 + v18);
            }

            *buf = 138543618;
            v22 = v17;
            v23 = 2114;
            v24 = v19;
            _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] in ear status - Primary:%{public}@, Secondary:%{public}@", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018B8A9C();
          }

          if (!*a2)
          {
            v20 = *(a1 + 32) - 8202;
            if (v20 <= 0x15 && ((1 << v20) & 0x202001) != 0)
            {
              *a3 = 0;
            }
          }
        }
      }
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v11 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] in ear status - invalid BT device", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B8CCC();
      }
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v10 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] in ear status - invalid BT AccessoryManager", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B8DB0();
    }
  }
}

BOOL sub_100542CC0()
{
  if (qword_102656D48 != -1)
  {
    sub_1018B74AC();
  }

  v3 = 0;
  v2 = 0;
  sub_10054287C(qword_102636F08, &v3, &v2, &v1);
  return v3 == 0;
}

void sub_100542D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  if (qword_1025D4320 != -1)
  {
    sub_1018B74C0();
  }

  v6 = qword_1025D4328;
  if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Client %p subscribes", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B8E94();
  }

  *buf = &v9;
  sub_1005469C8((a1 + 160), &v9)[3] = a2;
  if (*(a1 + 24))
  {
    v7 = sub_100011660();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100542E90;
    v8[3] = &unk_10245D2A8;
    v8[4] = v9;
    v8[5] = a2;
    sub_10017A794(v7, v8);
  }
}

uint64_t sub_100542E90(uint64_t a1)
{
  if (qword_1025D4320 != -1)
  {
    sub_1018B74C0();
  }

  v2 = qword_1025D4328;
  if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Sending kActivitDeviceUpdated to client %p", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B8F84();
  }

  return (*(a1 + 40))(2, *(a1 + 32));
}

void *sub_100542F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a3;
  v5[2] = v5;
  result = sub_1005469C8((a1 + 200), v5);
  result[3] = a2;
  return result;
}

uint64_t *sub_100542FC8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  sub_100114860((a1 + 200), &v4);
  return sub_100114860((a1 + 160), &v4);
}

uint64_t sub_10054300C(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = *(result + 216); i; i = *i)
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B75C4();
    }

    v6 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEBUG))
    {
      v7 = i[2];
      *buf = 67109378;
      v10 = a2;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] notifyClientsWithData,event %d,client %@", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4320 != -1)
      {
        sub_1018B75C4();
      }

      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::notifyClientsWithData(Event, NSDictionary *)", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    result = (i[3])(a2, a3, i[2]);
  }

  return result;
}

void sub_1005431F8(void *a1, uint64_t a2, int a3, int *a4)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current == sub_10018D3EC())
  {
    if ((a3 & 0xFFFFFFFD) == 0)
    {
      if (a3 == 2 || !a3 && a4)
      {
        if (qword_1025D4320 != -1)
        {
          sub_1018B74C0();
        }

        v10 = qword_1025D4328;
        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
        {
          v11 = "attaching BT session failed";
          if (a4 == 2)
          {
            v11 = "BT session terminated";
          }

          *buf = 136446210;
          v32 = v11;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] %{public}s. Re-attaching......", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B9614(a4);
        }

        sub_10054103C(a1);
      }

      else
      {
        *a1 = a2;
        if (qword_1025D4320 != -1)
        {
          sub_1018B74C0();
        }

        v12 = qword_1025D4328;
        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] BT session attached", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B9080();
        }

        Default = BTAccessoryManagerGetDefault();
        if (Default)
        {
          v14 = Default;
          a1[1] = 0;
          if (qword_1025D4320 != -1)
          {
            sub_1018B75C4();
          }

          v15 = qword_1025D4328;
          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
          {
            *buf = 67240192;
            LODWORD(v32) = v14;
            _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Accessory Mananger unavailable. Status %{public}d", buf, 8u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018B9164(v14);
          }
        }

        else
        {
          v16 = BTLocalDeviceGetDefault();
          if (v16)
          {
            v17 = v16;
            a1[2] = 0;
            if (qword_1025D4320 != -1)
            {
              sub_1018B75C4();
            }

            v18 = qword_1025D4328;
            if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
            {
              *buf = 67240192;
              LODWORD(v32) = v17;
              _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Local device unavailable. Status %{public}d", buf, 8u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018B9254(v17);
            }
          }

          else
          {
            sub_100541190(a1);
            v19 = BTAccessoryManagerAddCallbacks();
            if (v19)
            {
              v20 = v19;
              if (qword_1025D4320 != -1)
              {
                sub_1018B75C4();
              }

              v21 = qword_1025D4328;
              if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
              {
                *buf = 67240192;
                LODWORD(v32) = v20;
                _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to register BT accessory callback.  Status %{public}d", buf, 8u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_1018B9344(v20);
              }
            }

            v22 = BTAccessoryManagerRegisterCustomMessageClient();
            if (v22)
            {
              v23 = v22;
              if (qword_1025D4320 != -1)
              {
                sub_1018B75C4();
              }

              v24 = qword_1025D4328;
              if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
              {
                *buf = 67240192;
                LODWORD(v32) = v23;
                _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to register for custom callback. BTResult: %{public}d", buf, 8u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_1018B9434(v23);
              }
            }

            else
            {
              v25 = BTLocalDeviceAddCallbacks();
              if (v25)
              {
                v26 = v25;
                if (qword_1025D4320 != -1)
                {
                  sub_1018B75C4();
                }

                v27 = qword_1025D4328;
                if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67240192;
                  LODWORD(v32) = v26;
                  _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to register BT local device event callback.  Status %{public}d", buf, 8u);
                }

                if (sub_10000A100(121, 0))
                {
                  sub_1018B9524(v26);
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
    v9 = sub_100011660();
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1005436F0;
    v28[3] = &unk_10245D2F0;
    v28[4] = a1;
    v28[5] = a2;
    v29 = a3;
    v30 = a4;
    sub_10017A794(v9, v28);
  }
}

void sub_100543700(uint64_t a1, int a2)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current == sub_10018D3EC())
  {
    if (a2 == 5)
    {
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v6 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Received BT_LOCAL_DEVICE_CONNECTION_STATUS_CHANGED", v7, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B9728();
      }

      sub_100541190(a1);
    }
  }

  else
  {
    v5 = sub_100011660();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100543828;
    v8[3] = &unk_102455A60;
    v8[4] = a1;
    v9 = a2;
    sub_10017A794(v5, v8);
  }
}

void sub_100543838(uint64_t a1, uint64_t a2, int a3, int a4)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current != sub_10018D3EC())
  {
    v9 = sub_100011660();
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100543E58;
    v25[3] = &unk_10245D2F0;
    v25[4] = a1;
    v25[5] = a2;
    v26 = a3;
    v27 = a4;
    sub_10017A794(v9, v25);
    return;
  }

  if (*(a1 + 8))
  {
    if (a3 <= 7)
    {
      if ((a3 - 5) >= 2)
      {
        if (a3 == 7)
        {
          if (qword_1025D4320 != -1)
          {
            sub_1018B74C0();
          }

          v10 = qword_1025D4328;
          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134283521;
            v35 = a2;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] TIMESYNC_AVAILABLE device:%{private}p", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018B99EC();
          }

          if (+[TSClockManager sharedClockManager])
          {
            TimeSyncId = BTAccessoryManagerGetTimeSyncId();
            if (TimeSyncId)
            {
              v12 = TimeSyncId;
              if (qword_1025D4320 != -1)
              {
                sub_1018B75C4();
              }

              v13 = qword_1025D4328;
              if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
              {
                *buf = 67240192;
                LODWORD(v35) = v12;
                _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Get TimeSync ID failed result:%{public}d", buf, 8u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_1018B9ADC(v12);
              }
            }

            else
            {

              v19 = [+[TSClockManager sharedClockManager](TSClockManager "sharedClockManager")];
              *(a1 + 48) = v19;
              if (v19)
              {
                if (qword_1025D4320 != -1)
                {
                  sub_1018B75C4();
                }

                v20 = qword_1025D4328;
                if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = *(a1 + 48);
                  *buf = 134284033;
                  v35 = a2;
                  v36 = 2049;
                  v37 = 0;
                  v38 = 2049;
                  v39 = v21;
                  _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] Got TimeSync ID device:%{private}p tsID:0x%{private}llx clock:%{private}p", buf, 0x20u);
                }

                if (sub_10000A100(121, 2))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1025D4320 != -1)
                  {
                    sub_1018B75C4();
                  }

                  v22 = *(a1 + 48);
                  v28 = 134284033;
                  v29 = a2;
                  v30 = 2049;
                  v31 = 0;
                  v32 = 2049;
                  v33 = v22;
                  v23 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 2, "void CLAudioAccessoryInterface::accessoryEventHandler(BTDevice, BTAccessoryEvent, BTAccessoryState)", "%s\n", v23);
                  if (v23 != buf)
                  {
                    free(v23);
                  }
                }
              }

              else
              {
                if (qword_1025D4320 != -1)
                {
                  sub_1018B75C4();
                }

                v24 = qword_1025D4328;
                if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "[CLAuDioAccessoryInterface] Failed to get the TimeSync clock", buf, 2u);
                }

                if (sub_10000A100(121, 0))
                {
                  sub_1018B9BCC();
                }
              }
            }
          }

          else
          {
            if (qword_1025D4320 != -1)
            {
              sub_1018B75C4();
            }

            v18 = qword_1025D4328;
            if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] Failed to get the TimeSync clock manager", buf, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018B9CB0();
            }
          }
        }

        return;
      }

      goto LABEL_30;
    }

    if (a3 != 8)
    {
      if (a3 != 12)
      {
        return;
      }

LABEL_30:
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v15 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134283521;
        v35 = a2;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "[CLAudioAccessoryInterface] BT_ACCESSORY_IN_EAR_STATUS_CHANGED device:%{private}p", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B980C();
      }

      sub_100541190(a1);
      sub_100541F00(a1, 0);
      return;
    }

    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v16 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v35 = a2;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] TIMESYNC_NOT_AVAILABLE device:%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B98FC();
    }

    v17 = *(a1 + 48);
    if (v17)
    {

      *(a1 + 48) = 0;
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v14 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "[CLAudioAccessoryInterface] accessoryEventHandler failed. Invalid BT AccessoryManager", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B9D94();
    }
  }
}

void sub_100543E68(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4)
{
  if (*(a1 + 8))
  {
    v4 = a4;
    if (sub_10054415C(a3, a4))
    {
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v8 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "[HeadphoneUsage] Interface: Bluetooth daily usage event received. Parsing data.", &v15, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B9E78();
      }

      v9 = sub_1005445D4(a3, v4);
      if (v9)
      {
        v10 = v9;
        if ((sub_100545D80(*(a1 + 8), a2, v9) & 1) == 0)
        {
          if (qword_1025D4320 != -1)
          {
            sub_1018B75C4();
          }

          v11 = qword_1025D4328;
          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v15) = 0;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error retrieving serial numbers, will omit from message.", &v15, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018B9F5C();
          }
        }

        if (qword_1025D4320 != -1)
        {
          sub_1018B75C4();
        }

        v12 = qword_1025D4328;
        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
        {
          v15 = 138477827;
          v16 = v10;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "[HeadphoneUsage] Interface: Parsed metrics: %{private}@", &v15, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018BA040();
        }

        sub_10054300C(a1, 1, v10);
      }

      else
      {
        if (qword_1025D4320 != -1)
        {
          sub_1018B75C4();
        }

        v14 = qword_1025D4328;
        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v15) = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error forming metric dictionary, aborting.", &v15, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018BA130();
        }
      }
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v13 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Invalid BT AccessoryManager", &v15, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BA214();
    }
  }
}

uint64_t sub_10054415C(_BYTE *a1, unint64_t a2)
{
  if (a2 > 5)
  {
    if (*a1 == 4)
    {
      v4 = (a1[3] & 0x3F);
      if (v4 == 1)
      {
        v5 = a1[5];
        if ((v5 - 7) > 1)
        {
          if (qword_1025D4320 != -1)
          {
            sub_1018B74C0();
          }

          v11 = qword_1025D4328;
          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            v15 = v5;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "[HeadphoneUsage] Unexpected AWD version %d", buf, 8u);
          }

          result = sub_10000A100(121, 2);
          if (result)
          {
            sub_1018BA4CC(v5);
            return 0;
          }
        }

        else
        {
          v6 = word_101C7E280[15 * a1[5] + 1];
          v7 = (a2 - 4);
          if (v7 == v6)
          {
            if (qword_1025D4320 != -1)
            {
              sub_1018B74C0();
            }

            v8 = qword_1025D4328;
            if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] Bluetooth message passed sanity checks.", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018BA5BC();
            }

            return 1;
          }

          else
          {
            if (qword_1025D4320 != -1)
            {
              sub_1018B74C0();
            }

            v12 = qword_1025D4328;
            if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109888;
              v15 = v5;
              v16 = 1024;
              v17 = 1;
              v18 = 1024;
              v19 = v6;
              v20 = 1024;
              v21 = v7;
              _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "[HeadphoneUsage] Unexpected AWD data length for AWDVersion %d: type %d expected len %d actual %d. Header mismatch with Bluetooth likely.", buf, 0x1Au);
            }

            result = sub_10000A100(121, 0);
            if (result)
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4320 != -1)
              {
                sub_1018B75C4();
              }

              v13 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 0, "static BOOL BT::CLAudioAccessoryHelper::isValidDailyUsageMessage(BTData _Nonnull, size_t)", "%s\n", v13);
              if (v13 != buf)
              {
                free(v13);
              }

              return 0;
            }
          }
        }
      }

      else
      {
        if (qword_1025D4320 != -1)
        {
          sub_1018B74C0();
        }

        v10 = qword_1025D4328;
        if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v15 = v4;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] isValidDailyUsageMessage: Ignoring message type (%d) that is not DailyUsage", buf, 8u);
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          sub_1018BA3DC(v4);
          return 0;
        }
      }
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v9 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] Ignoring, not an AACP Log Message ", buf, 2u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_1018BA2F8();
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v2 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] isValidDailyUsageMessage: Invalid header size", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_1018BA6A0();
      return 0;
    }
  }

  return result;
}

NSMutableDictionary *sub_1005445D4(uint64_t a1, __int16 a2)
{
  v3 = a2 - 4;
  bzero(__dst, 0x2D5uLL);
  memcpy(__dst, (a1 + 4), v3);
  v181[0] = @"bud_type";
  v182[0] = [NSNumber numberWithUnsignedChar:__dst[0]];
  v181[1] = @"awd_length";
  v182[1] = [NSNumber numberWithUnsignedShort:v10];
  v181[2] = @"awd_version";
  v182[2] = [NSNumber numberWithUnsignedChar:__dst[1]];
  v181[3] = @"status";
  v182[3] = [NSNumber numberWithUnsignedChar:__dst[2]];
  v181[4] = @"signature";
  v182[4] = [NSNumber numberWithUnsignedShort:v11];
  v181[5] = @"product_id";
  v182[5] = [NSNumber numberWithUnsignedShort:v12];
  v181[6] = @"sw_version";
  v182[6] = [NSNumber numberWithUnsignedShort:v13];
  v181[7] = @"case_hw_version";
  v182[7] = [NSNumber numberWithUnsignedShort:v14];
  v181[8] = @"case_sw_version";
  v182[8] = [NSNumber numberWithUnsignedShort:v15];
  v181[9] = @"a2dp_time_mode_off_l";
  v182[9] = [NSNumber numberWithUnsignedShort:v16];
  v181[10] = @"a2dp_time_mode_anc_l";
  v182[10] = [NSNumber numberWithUnsignedShort:v17];
  v181[11] = @"a2dp_time_mode_trcy_l";
  v182[11] = [NSNumber numberWithUnsignedShort:v18];
  v181[12] = @"a2dp_time_mode_unused_l";
  v182[12] = [NSNumber numberWithUnsignedShort:v19];
  v181[13] = @"hfp_time_off_l";
  v182[13] = [NSNumber numberWithUnsignedShort:v20];
  v181[14] = @"hfp_time_anc_l";
  v182[14] = [NSNumber numberWithUnsignedShort:v21];
  v181[15] = @"hfp_time_trcy_l";
  v182[15] = [NSNumber numberWithUnsignedShort:v22];
  v181[16] = @"hfp_time_unused_l";
  v182[16] = [NSNumber numberWithUnsignedShort:v23];
  v181[17] = @"idle_time_off_l";
  v182[17] = [NSNumber numberWithUnsignedShort:v24];
  v181[18] = @"idle_time_anc_l";
  v182[18] = [NSNumber numberWithUnsignedShort:v25];
  v181[19] = @"idle_time_trcy_l";
  v182[19] = [NSNumber numberWithUnsignedShort:v26];
  v181[20] = @"idle_time_unused_l";
  v182[20] = [NSNumber numberWithUnsignedShort:v27];
  v181[21] = @"a2dp_battery_usage_l";
  v182[21] = [NSNumber numberWithUnsignedChar:v28];
  v181[22] = @"hfp_battery_usage_l";
  v182[22] = [NSNumber numberWithUnsignedChar:v29];
  v181[23] = @"idle_battery_usage_l";
  v182[23] = [NSNumber numberWithUnsignedChar:v30];
  v181[24] = @"a2dp_bud_temp_max_l";
  v182[24] = [NSNumber numberWithChar:v31];
  v181[25] = @"hfp_bud_temp_max_l";
  v182[25] = [NSNumber numberWithChar:v32];
  v181[26] = @"a2dp_bud_temp_avg_l";
  v182[26] = [NSNumber numberWithChar:v33];
  v181[27] = @"hfp_bud_temp_avg_l";
  v182[27] = [NSNumber numberWithChar:v34];
  v181[28] = @"time_out_of_ear_idle_l";
  v182[28] = [NSNumber numberWithUnsignedInt:v35];
  v181[29] = @"time_out_of_ear_incase_l";
  v182[29] = [NSNumber numberWithUnsignedInt:v36];
  v181[30] = @"ied_activated_count_l";
  v182[30] = [NSNumber numberWithUnsignedShort:v37];
  v181[31] = @"fw_update_retry_count_l";
  v182[31] = [NSNumber numberWithUnsignedChar:v38];
  v181[32] = @"bud_charging_cycle_l";
  v182[32] = [NSNumber numberWithUnsignedInt:v39];
  v181[33] = @"a2dp_time_mode_off_r";
  v182[33] = [NSNumber numberWithUnsignedShort:v40];
  v181[34] = @"a2dp_time_mode_anc_r";
  v182[34] = [NSNumber numberWithUnsignedShort:v41];
  v181[35] = @"a2dp_time_mode_trcy_r";
  v182[35] = [NSNumber numberWithUnsignedShort:v42];
  v181[36] = @"a2dp_time_mode_unused_r";
  v182[36] = [NSNumber numberWithUnsignedShort:v43];
  v181[37] = @"hfp_time_off_r";
  v182[37] = [NSNumber numberWithUnsignedShort:v44];
  v181[38] = @"hfp_time_anc_r";
  v182[38] = [NSNumber numberWithUnsignedShort:v45];
  v181[39] = @"hfp_time_trcy_r";
  v182[39] = [NSNumber numberWithUnsignedShort:v46];
  v181[40] = @"hfp_time_unused_r";
  v182[40] = [NSNumber numberWithUnsignedShort:v47];
  v181[41] = @"idle_time_off_r";
  v182[41] = [NSNumber numberWithUnsignedShort:v48];
  v181[42] = @"idle_time_anc_r";
  v182[42] = [NSNumber numberWithUnsignedShort:v49];
  v181[43] = @"idle_time_trcy_r";
  v182[43] = [NSNumber numberWithUnsignedShort:v50];
  v181[44] = @"idle_time_unused_r";
  v182[44] = [NSNumber numberWithUnsignedShort:v51];
  v181[45] = @"a2dp_battery_usage_r";
  v182[45] = [NSNumber numberWithUnsignedChar:v52];
  v181[46] = @"hfp_battery_usage_r";
  v182[46] = [NSNumber numberWithUnsignedChar:v53];
  v181[47] = @"idle_battery_usage_r";
  v182[47] = [NSNumber numberWithUnsignedChar:v54];
  v181[48] = @"a2dp_bud_temp_max_r";
  v182[48] = [NSNumber numberWithChar:v55];
  v181[49] = @"hfp_bud_temp_max_r";
  v182[49] = [NSNumber numberWithChar:v56];
  v181[50] = @"a2dp_bud_temp_avg_r";
  v182[50] = [NSNumber numberWithChar:v57];
  v181[51] = @"hfp_bud_temp_avg_r";
  v182[51] = [NSNumber numberWithChar:v58];
  v181[52] = @"time_out_of_ear_idle_r";
  v182[52] = [NSNumber numberWithUnsignedInt:v59];
  v181[53] = @"time_out_of_ear_incase_r";
  v182[53] = [NSNumber numberWithUnsignedInt:v60];
  v181[54] = @"ied_activated_count_r";
  v182[54] = [NSNumber numberWithUnsignedShort:v61];
  v181[55] = @"fw_update_retry_count_r";
  v182[55] = [NSNumber numberWithUnsignedChar:v62];
  v181[56] = @"bud_charging_cycle_r";
  v182[56] = [NSNumber numberWithUnsignedInt:v63];
  v181[57] = @"a2dp_time_both_in_ear_off";
  v182[57] = [NSNumber numberWithUnsignedShort:v64];
  v181[58] = @"a2dp_time_both_in_ear_anc";
  v182[58] = [NSNumber numberWithUnsignedShort:v65];
  v181[59] = @"a2dp_time_both_in_ear_trcy";
  v182[59] = [NSNumber numberWithUnsignedShort:v66];
  v181[60] = @"a2dp_time_both_in_ear_unused";
  v182[60] = [NSNumber numberWithUnsignedShort:v67];
  v181[61] = @"hfp_time_both_in_ear_off";
  v182[61] = [NSNumber numberWithUnsignedShort:v68];
  v181[62] = @"hfp_time_both_in_ear_anc";
  v182[62] = [NSNumber numberWithUnsignedShort:v69];
  v181[63] = @"hfp_time_both_in_ear_trcy";
  v182[63] = [NSNumber numberWithUnsignedShort:v70];
  v181[64] = @"hfp_time_both_in_ear_unused";
  v182[64] = [NSNumber numberWithUnsignedShort:v71];
  v181[65] = @"idle_time_both_in_ear_off";
  v182[65] = [NSNumber numberWithUnsignedShort:v72];
  v181[66] = @"idle_time_both_in_ear_anc";
  v182[66] = [NSNumber numberWithUnsignedShort:v73];
  v181[67] = @"idle_time_both_in_ear_trcy";
  v182[67] = [NSNumber numberWithUnsignedShort:v74];
  v181[68] = @"idle_time_both_in_ear_unused";
  v182[68] = [NSNumber numberWithUnsignedShort:v75];
  v181[69] = @"time_both_out_of_ear_idle";
  v182[69] = [NSNumber numberWithUnsignedShort:v76];
  v181[70] = @"time_out_of_ear_both_incase";
  v182[70] = [NSNumber numberWithUnsignedShort:v77];
  v181[71] = @"hs_on_acc_cnt";
  v182[71] = [NSNumber numberWithUnsignedShort:v78];
  v181[72] = @"siri_on_source_cnt";
  v182[72] = [NSNumber numberWithUnsignedShort:v79];
  v181[73] = @"siri_on_accessory_cnt";
  v182[73] = [NSNumber numberWithUnsignedShort:v80];
  v181[74] = @"total_time_in_connect_session";
  v182[74] = [NSNumber numberWithUnsignedInt:v81];
  v181[75] = @"bud_swap_count";
  v182[75] = [NSNumber numberWithUnsignedShort:v82];
  v181[76] = @"bud_daily_charging_soc_delta_l";
  v182[76] = [NSNumber numberWithUnsignedShort:v84];
  v181[77] = @"bud_daily_charging_soc_delta_r";
  v182[77] = [NSNumber numberWithUnsignedShort:v85];
  v181[78] = @"bud_max_daily_temp_during_chr_l";
  v182[78] = [NSNumber numberWithChar:v86];
  v181[79] = @"bud_max_daily_temp_during_chr_r";
  v182[79] = [NSNumber numberWithChar:v87];
  v181[80] = @"bud_avg_daily_temp_during_chr_l";
  v182[80] = [NSNumber numberWithChar:v88];
  v181[81] = @"bud_avg_daily_temp_during_chr_r";
  v182[81] = [NSNumber numberWithChar:v89];
  v181[82] = @"case_soc_delta_bud_chr";
  v182[82] = [NSNumber numberWithUnsignedShort:v90];
  v181[83] = @"case_temp_max_while_discharging";
  v182[83] = [NSNumber numberWithChar:v91];
  v181[84] = @"case_temp_avg_daily";
  v182[84] = [NSNumber numberWithChar:v92];
  v181[85] = @"case_at_maxchr_time_in_day";
  v182[85] = [NSNumber numberWithUnsignedInt:v93];
  v181[86] = @"case_charging_cycle";
  v182[86] = [NSNumber numberWithUnsignedShort:v94];
  v181[87] = @"source_conn_productid_1";
  v182[87] = [NSNumber numberWithUnsignedShort:v95];
  v181[88] = @"source_conn_productid_2";
  v182[88] = [NSNumber numberWithUnsignedShort:v96];
  v181[89] = @"source_conn_productid_3";
  v182[89] = [NSNumber numberWithUnsignedShort:v97];
  v181[90] = @"source_conn_productid_4";
  v182[90] = [NSNumber numberWithUnsignedShort:v98];
  v181[91] = @"source_conn_productid_5";
  v182[91] = [NSNumber numberWithUnsignedShort:v99];
  v181[92] = @"source_conn_time_1";
  v182[92] = [NSNumber numberWithUnsignedShort:v100];
  v181[93] = @"source_conn_time_2";
  v182[93] = [NSNumber numberWithUnsignedShort:v101];
  v181[94] = @"source_conn_time_3";
  v182[94] = [NSNumber numberWithUnsignedShort:v102];
  v181[95] = @"source_conn_time_4";
  v182[95] = [NSNumber numberWithUnsignedShort:v103];
  v181[96] = @"source_conn_time_5";
  v182[96] = [NSNumber numberWithUnsignedShort:v104];
  v181[97] = @"sw_version_ext";
  v182[97] = [NSNumber numberWithUnsignedInt:v105[5]];
  v181[98] = @"triangle_conn_time";
  v182[98] = [NSNumber numberWithUnsignedShort:v106];
  v181[99] = @"hw_version";
  v182[99] = [NSNumber numberWithUnsignedShort:v107];
  v181[100] = @"double_tap_cnt_l";
  v182[100] = [NSNumber numberWithUnsignedShort:v108];
  v181[101] = @"single_tap_cnt_l";
  v182[101] = [NSNumber numberWithUnsignedShort:v109];
  v181[102] = @"press_hold_l";
  v182[102] = [NSNumber numberWithUnsignedShort:v110];
  v181[103] = @"ied_detect_l";
  v182[103] = [NSNumber numberWithUnsignedShort:v111];
  v181[104] = @"crash_cnt_l";
  v182[104] = [NSNumber numberWithUnsignedShort:v112[2]];
  v181[105] = @"bud_mileage_l";
  v182[105] = [NSNumber numberWithUnsignedInt:*&v120[14]];
  v181[106] = @"first_time_use_l";
  v182[106] = [NSNumber numberWithUnsignedInt:v121];
  v181[107] = @"double_tap_cnt_r";
  v182[107] = [NSNumber numberWithUnsignedShort:v122];
  v181[108] = @"single_tap_cnt_r";
  v182[108] = [NSNumber numberWithUnsignedShort:v123];
  v181[109] = @"press_hold_r";
  v182[109] = [NSNumber numberWithUnsignedShort:v124];
  v181[110] = @"ied_detect_r";
  v182[110] = [NSNumber numberWithUnsignedShort:v125];
  v181[111] = @"crash_cnt_r";
  v182[111] = [NSNumber numberWithUnsignedShort:v126[2]];
  v181[112] = @"bud_mileage_r";
  v182[112] = [NSNumber numberWithUnsignedInt:*&v134[14]];
  v181[113] = @"first_time_use_r";
  v182[113] = [NSNumber numberWithUnsignedInt:v135];
  v181[114] = @"scp_active_time";
  v182[114] = [NSNumber numberWithUnsignedInt:v136];
  v181[115] = @"scp_ohd_time";
  v182[115] = [NSNumber numberWithUnsignedInt:v137];
  v181[116] = @"scp_fwup_time";
  v182[116] = [NSNumber numberWithUnsignedInt:v138];
  v181[117] = @"scp_idle_time";
  v182[117] = [NSNumber numberWithUnsignedInt:v139];
  v181[118] = @"scp_ttop_time";
  v182[118] = [NSNumber numberWithUnsignedInt:v140];
  v181[119] = @"scp_prioff_time";
  v182[119] = [NSNumber numberWithUnsignedInt:v141];
  v181[120] = @"scp_up_to_active";
  v182[120] = [NSNumber numberWithUnsignedShort:v142];
  v181[121] = @"scp_up_to_ohd";
  v182[121] = [NSNumber numberWithUnsignedShort:v143];
  v181[122] = @"scp_up_to_fwup";
  v182[122] = [NSNumber numberWithUnsignedShort:v144];
  v181[123] = @"scp_up_to_idle";
  v182[123] = [NSNumber numberWithUnsignedShort:v145];
  v181[124] = @"scp_up_to_ttop";
  v182[124] = [NSNumber numberWithUnsignedShort:v146];
  v181[125] = @"scp_down_to_ohd";
  v182[125] = [NSNumber numberWithUnsignedShort:v147];
  v181[126] = @"scp_down_to_fwup";
  v182[126] = [NSNumber numberWithUnsignedShort:v148];
  v181[127] = @"scp_down_to_idle";
  v182[127] = [NSNumber numberWithUnsignedShort:v149];
  v181[128] = @"scp_down_to_ttop";
  v182[128] = [NSNumber numberWithUnsignedShort:v150];
  v181[129] = @"scp_down_to_prioff";
  v182[129] = [NSNumber numberWithUnsignedShort:v151];
  v181[130] = @"scp_bt_disc";
  v182[130] = [NSNumber numberWithUnsignedShort:v152];
  v181[131] = @"scp_bt_conn";
  v182[131] = [NSNumber numberWithUnsignedShort:v153];
  v181[132] = @"scp_bt_a2dp";
  v182[132] = [NSNumber numberWithUnsignedShort:v154];
  v181[133] = @"scp_bt_call";
  v182[133] = [NSNumber numberWithUnsignedShort:v155];
  v181[134] = @"scp_scp_b2p_timeout";
  v182[134] = [NSNumber numberWithUnsignedInt:v156];
  v181[135] = @"scp_scp_b2p_tx_retry";
  v182[135] = [NSNumber numberWithUnsignedInt:v157];
  v181[136] = @"scp_scp_b2p_rx_error";
  v182[136] = [NSNumber numberWithUnsignedInt:v158];
  v181[137] = @"scp_scp_b2p_tx_raw";
  v182[137] = [NSNumber numberWithUnsignedInt:v159];
  v181[138] = @"scp_scp_b2p_rx_raw";
  v182[138] = [NSNumber numberWithUnsignedInt:v160];
  v181[139] = @"scp_pri_b2p_timeout";
  v182[139] = [NSNumber numberWithUnsignedInt:v161];
  v181[140] = @"scp_pri_b2p_tx_retry";
  v182[140] = [NSNumber numberWithUnsignedInt:v162];
  v181[141] = @"scp_pri_b2p_rx_error";
  v182[141] = [NSNumber numberWithUnsignedInt:v163];
  v181[142] = @"scp_pri_b2p_tx_raw";
  v182[142] = [NSNumber numberWithUnsignedInt:v164];
  v181[143] = @"scp_pri_b2p_rx_raw";
  v182[143] = [NSNumber numberWithUnsignedInt:v165];
  v181[144] = @"scp_chun_tx_error";
  v182[144] = [NSNumber numberWithUnsignedInt:v166];
  v181[145] = @"scp_chun_rx_error";
  v182[145] = [NSNumber numberWithUnsignedInt:v167];
  v181[146] = @"scp_chun_unlock";
  v182[146] = [NSNumber numberWithUnsignedInt:v168];
  v181[147] = @"scp_chun_missed_frame";
  v182[147] = [NSNumber numberWithUnsignedInt:v169];
  v181[148] = @"appleID_paired_count";
  v182[148] = [NSNumber numberWithUnsignedChar:v170];
  v181[149] = @"uvlo_count_l";
  v182[149] = [NSNumber numberWithUnsignedChar:v171];
  v181[150] = @"time_since_last_uvlo_l";
  v182[150] = [NSNumber numberWithUnsignedInt:v172];
  v181[151] = @"low_batt_signal_count_l";
  v182[151] = [NSNumber numberWithUnsignedChar:v173];
  v181[152] = @"num_sessions_l";
  v182[152] = [NSNumber numberWithUnsignedChar:v174];
  v181[153] = @"flash_pe_count_l";
  v182[153] = [NSNumber numberWithUnsignedChar:v175];
  v181[154] = @"bud_color_l";
  v182[154] = [NSNumber numberWithUnsignedChar:v176];
  v181[155] = @"uvlo_count_r";
  v182[155] = [NSNumber numberWithUnsignedChar:v177];
  v181[156] = @"time_since_last_uvlo_r";
  v182[156] = [NSNumber numberWithUnsignedInt:v178];
  v181[157] = @"low_batt_signal_count_r";
  v182[157] = [NSNumber numberWithUnsignedChar:v179];
  v181[158] = @"num_sessions_r";
  v182[158] = [NSNumber numberWithUnsignedChar:v180[58]];
  v181[159] = @"flash_pe_count_r";
  v182[159] = [NSNumber numberWithUnsignedChar:v180[59]];
  v181[160] = @"bud_color_r";
  v182[160] = [NSNumber numberWithUnsignedChar:v180[60]];
  v181[161] = @"case_charge_event_count";
  v182[161] = [NSNumber numberWithUnsignedChar:v83];
  v181[162] = @"system_color";
  v182[162] = [NSNumber numberWithUnsignedChar:v180[61]];
  v4 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v182 forKeys:v181 count:163]];
  sub_100546228(@"array_rfu", 5, 4, v105, v4, 0);
  sub_100546228(@"ied_histogram_l", 2, 2, v112, v4, 0);
  sub_100546228(@"a2dp_time_ext_l", 4, 2, &v113, v4, 0);
  sub_100546228(@"hfp_time_ext_l", 4, 2, &v114, v4, 0);
  sub_100546228(@"idle_time_ext_l", 4, 2, &v115, v4, 0);
  sub_100546228(@"a2dp_battery_usage_ext_l", 8, 2, &v116, v4, 0);
  sub_100546228(@"hfp_battery_usage_ext_l", 8, 2, &v117, v4, 0);
  sub_100546228(@"idle_battery_usage_ext_l", 8, 2, &v118, v4, 0);
  sub_100546228(@"array_rfu_l", 5, 4, &v119, v4, 0);
  sub_100546228(@"volume_his_l", 7, 2, v120, v4, 0);
  sub_100546228(@"ied_histogram_r", 2, 2, v126, v4, 0);
  sub_100546228(@"a2dp_time_ext_r", 4, 2, &v127, v4, 0);
  sub_100546228(@"hfp_time_ext_r", 4, 2, &v128, v4, 0);
  sub_100546228(@"idle_time_ext_r", 4, 2, &v129, v4, 0);
  sub_100546228(@"a2dp_battery_usage_ext_r", 8, 2, &v130, v4, 0);
  sub_100546228(@"hfp_battery_usage_ext_r", 8, 2, &v131, v4, 0);
  sub_100546228(@"idle_battery_usage_ext_r", 8, 2, &v132, v4, 0);
  sub_100546228(@"array_rfu_r", 5, 4, &v133, v4, 0);
  sub_100546228(@"volume_his_r", 7, 2, v134, v4, 0);
  v5 = 0;
  v6 = v180;
  do
  {
    [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], [NSString stringWithFormat:@"bud_start_soc_at_undock_l_%u", v5]];
    [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], [NSString stringWithFormat:@"bud_end_soc_at_dock_l_%u", v5]];
    [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedShort:" numberWithUnsignedShort:?], [NSString stringWithFormat:@"length_of_session_l_%u", v5]];
    [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], [NSString stringWithFormat:@"bud_start_soc_at_undock_r_%u", v5]];
    [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], [NSString stringWithFormat:@"bud_end_soc_at_dock_r_%u", v5]];
    v7 = *v6;
    v6 += 2;
    [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedShort:" numberWithUnsignedShort:v7], [NSString stringWithFormat:@"length_of_session_r_%u", v5++]];
  }

  while (v5 != 15);
  [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], @"case_hw_version_maj"];
  [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], @"case_hw_version_min"];
  [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], @"case_hw_version_rev"];
  [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], @"case_sw_version_maj"];
  [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], @"case_sw_version_min"];
  [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], @"case_sw_version_rev"];
  [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithUnsignedChar:" numberWithUnsignedChar:?], @"appleID_hijack_cnt"];
  return v4;
}

uint64_t sub_100545D80(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v11 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23[0] = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] BT Accessory Manager no longer exists, cannot retrieve serial numbers,device:%@", buf, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_1018BAB44();
    return 0;
  }

  v5 = [[NSMutableData alloc] initWithLength:1000];
  v21 = 0;
  [v5 mutableBytes];
  [v5 length];
  AccessoryInfo = BTAccessoryManagerGetAccessoryInfo();
  if (AccessoryInfo)
  {
    v7 = 1;
  }

  else
  {
    v7 = v21 == 0;
  }

  if (v7)
  {
    v8 = AccessoryInfo;

    if (qword_1025D4320 != -1)
    {
      sub_1018B75C4();
    }

    v9 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      LODWORD(v23[0]) = v8;
      WORD2(v23[0]) = 2048;
      *(v23 + 6) = v21;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error: Unable to retrieve data,status:%d,infoLen:%zu", buf, 0x12u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_1018BA784(&v21, v8);
    return 0;
  }

  [v5 setLength:?];
  v12 = [NSJSONSerialization JSONObjectWithData:v5 options:0 error:0];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B75C4();
    }

    v18 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error: Accessory info dictionary is of unexpected class.", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_1018BA898();
    return 0;
  }

  v14 = [v12 objectForKeyedSubscript:@"AACPVersionInfo"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v14 count] < 0xA)
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B75C4();
    }

    v19 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error: AACPVersionInfo array of unexpected type or size.", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_1018BA97C();
    return 0;
  }

  v15 = [v14 objectAtIndex:3];
  v16 = [v14 objectAtIndex:8];
  v17 = [v14 objectAtIndex:9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a3 setObject:v15 forKeyedSubscript:@"serial_number_system"];
        [a3 setObject:v16 forKeyedSubscript:@"serial_number_left"];
        [a3 setObject:v17 forKeyedSubscript:@"serial_number_right"];
        return 1;
      }
    }
  }

  if (qword_1025D4320 != -1)
  {
    sub_1018B75C4();
  }

  v20 = qword_1025D4328;
  if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] Error: Expected serial number as NSString*, got different type.", buf, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1018BAA60();
    return 0;
  }

  return result;
}

void sub_100546228(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5, int a6)
{
  if ((a3 - 9) > 0xFFFFFFF7)
  {
    if (a1 && a4 && a5)
    {
      v11 = a3 * a2;
      if (a3 * a2)
      {
        v13 = 0;
        do
        {
          v14 = 0;
          if (a3 > 4)
          {
            if (a3 > 6)
            {
              if (a3 == 7)
              {
                v14 = *(a4 + v13) | (*(a4 + v13 + 4) << 32) | (*(a4 + v13 + 5) << 40) | (*(a4 + v13 + 6) << 48);
              }

              else if (a3 == 8)
              {
                v14 = *(a4 + v13);
              }
            }

            else if (a3 == 5)
            {
              v14 = *(a4 + v13) | (*(a4 + v13 + 4) << 32);
            }

            else
            {
              v14 = *(a4 + v13) | (*(a4 + v13 + 4) << 32) | (*(a4 + v13 + 5) << 40);
            }
          }

          else if (a3 > 2)
          {
            if (a3 == 3)
            {
              v14 = *(a4 + v13) | (*(a4 + v13 + 2) << 16);
            }

            else
            {
              v14 = *(a4 + v13);
            }
          }

          else if (a3 == 1)
          {
            v14 = *(a4 + v13);
          }

          else if (a3 == 2)
          {
            v14 = *(a4 + v13);
          }

          if (a6)
          {
            v15 = [NSNumber numberWithLongLong:v14];
          }

          else
          {
            v15 = [NSNumber numberWithUnsignedLongLong:v14];
          }

          [a5 setObject:v15 forKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%u", a1, v13 / a3)}];
          v13 += a3;
        }

        while (v13 < v11);
      }
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_1018B74C0();
      }

      v16 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v19 = a1;
        v20 = 2048;
        v21 = a4;
        v22 = 2112;
        v23 = a5;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] addExpandedArrayToDictionary: Invalid parameters. arrayName: %@, array: %p, dict: %@", buf, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4320 != -1)
        {
          sub_1018B75C4();
        }

        v17 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "static void BT::CLAudioAccessoryHelper::addExpandedArrayToDictionary(NSString * _Nonnull, uint32_t, uint8_t, uint8_t * _Nonnull, NSMutableDictionary * _Nonnull, BOOL)", "%s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018B74C0();
    }

    v7 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v19) = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] addExpandedArrayToDictionary: Invalid value for bytesPerEntry: %u", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BAC34(a3);
    }
  }
}

uint64_t sub_1005465E4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100546628(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_100546628@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *sub_100546764(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *sub_1005469C8(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_100546C30(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v6 - 80) = a2;
  *(v5 + 4) = a1;
  if (v4)
  {
    v7 = v2;
  }

  else
  {
    v7 = v3;
  }

  *(v6 - 68) = 2082;
  *(v5 + 14) = v7;
  *(v6 - 58) = 1026;
  *(v6 - 56) = v4;
}

void sub_100546DB0(id a1)
{
  if (objc_opt_class())
  {
    v1 = sub_10001A3E8();
    if (((**v1)(v1) & 1) != 0 || (sub_10001A3E8(), sub_10001CF3C()))
    {
      byte_102656D68 = 1;
    }
  }
}

void sub_1005473F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v3 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 68289282;
      v4[1] = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2114;
      v8 = a2;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:failed to activate #Rapport link, Error:%{public, location:escape_only}@}", v4, 0x1Cu);
    }
  }

  else
  {
    *(*(a1 + 32) + 8) = 1;
  }
}

id sub_1005474EC(uint64_t a1, void *a2)
{
  if ([a2 model])
  {
    v4 = [objc_msgSend(a2 "model")];
  }

  else
  {
    v4 = "Unknown Model";
  }

  if ([a2 name])
  {
    v5 = [objc_msgSend(a2 "name")];
  }

  else
  {
    v5 = "Unknown Name";
  }

  if (qword_1025D47B0 != -1)
  {
    sub_1018BAD4C();
  }

  v6 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 68289795;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = v4;
    v13 = 2081;
    v14 = v5;
    v15 = 2082;
    v16 = [objc_msgSend(a2 "effectiveIdentifier")];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Rapport discovered nearby device, model:%{public, location:escape_only}s, name:%{private, location:escape_only}s, effectiveID:%{public, location:escape_only}s}", &v8, 0x30u);
  }

  return [*(a1 + 32) updateNearbyStatusWithCompanionLinkDevice:a2 didConnect:1];
}

id sub_100547650(uint64_t a1, void *a2)
{
  if ([a2 model])
  {
    v4 = [objc_msgSend(a2 "model")];
  }

  else
  {
    v4 = "Unknown Model";
  }

  if ([a2 name])
  {
    v5 = [objc_msgSend(a2 "name")];
  }

  else
  {
    v5 = "Unknown Name";
  }

  if (qword_1025D47B0 != -1)
  {
    sub_1018BAD4C();
  }

  v6 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 68289795;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = v4;
    v13 = 2081;
    v14 = v5;
    v15 = 2082;
    v16 = [objc_msgSend(a2 "effectiveIdentifier")];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Rapport lost nearby device, model:%{public, location:escape_only}s, name:%{private, location:escape_only}s, effectiveID:%{public, location:escape_only}s}", &v8, 0x30u);
  }

  return [*(a1 + 32) updateNearbyStatusWithCompanionLinkDevice:a2 didConnect:0];
}

void sub_100547988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v4 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_ERROR))
    {
      v8 = 68289282;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = a3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:IDS service failed to initialize, Error:%{public, location:escape_only}@}", &v8, 0x1Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_1018BAD60();
      }
    }

    v5 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v8 = 68289282;
      v9 = 2082;
      v10 = "";
      v11 = 2114;
      v12 = a3;
      _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IDS service failed to initialize", "{msg%{public}.0s:IDS service failed to initialize, Error:%{public, location:escape_only}@}", &v8, 0x1Cu);
    }
  }

  else
  {
    [*(a1 + 32) setService:a2];
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v7 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289026;
      v9 = 2082;
      v10 = "";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:IDS became available so resuming silo}", &v8, 0x12u);
    }

    [*(a1 + 40) resume];
  }
}

id sub_1005485A4(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 40) = a2;
  if (a2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v3 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v4 = [objc_msgSend(*(a1 + 32) "messageType")];
      *buf = 68289282;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      *v20 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Rapport Send success, type:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100548828;
    v13[3] = &unk_10245D398;
    v5 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v6 = v13;
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v7 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(*(a1 + 56) + 8) + 24);
      v9 = *(*(*(a1 + 48) + 8) + 40);
      v10 = [objc_msgSend(*(a1 + 32) "messageType")];
      *buf = 68289794;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1026;
      *v20 = v8;
      *&v20[4] = 2114;
      *&v20[6] = v9;
      v21 = 2082;
      v22 = v10;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning #Rapport failed to send event, writtenToNetworkStack:%{public}d, error:%{public, location:escape_only}@, type:%{public, location:escape_only}s}", buf, 0x2Cu);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100548810;
    v14[3] = &unk_10245D4B0;
    v5 = *(a1 + 40);
    v11 = *(a1 + 48);
    v14[4] = *(a1 + 32);
    v14[5] = v11;
    v6 = v14;
  }

  return [v5 withClients:v6];
}

void sub_100548E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10054963C(id a1)
{
  v1 = sub_10001A3E8();
  if ((**v1)(v1))
  {
    sub_10000EC00(__p, [@"kCLLocationStreamingMessageTypeRequestLocation" UTF8String]);
    v4 = __p;
    *(sub_10054987C(&qword_102656D88, __p) + 56) = 0;
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000EC00(__p, [@"kCLLocationStreamingMessageTypeSetMotionAlarm" UTF8String]);
    v4 = __p;
    *(sub_10054987C(&qword_102656D88, __p) + 56) = 0;
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10001A3E8();
  if (sub_10001CF3C())
  {
    sub_10000EC00(__p, [@"kCLLocationStreamingMessageTypeLocation" UTF8String]);
    v4 = __p;
    *(sub_10054987C(&qword_102656D88, __p) + 56) = 0;
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000EC00(__p, [@"kCLLocationStreamingMessageTypeAliveAgain" UTF8String]);
    v4 = __p;
    *(sub_10054987C(&qword_102656D88, __p) + 56) = 0;
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000EC00(__p, [@"kCLLocationStreamingMessageTypeMotionAlarmUpdate" UTF8String]);
    v4 = __p;
    *(sub_10054987C(&qword_102656D88, __p) + 56) = 0;
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100549850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10054987C(uint64_t a1, void **a2)
{
  v2 = *sub_1000F2B3C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_100549928(uint64_t a1)
{
  sub_10018D404(a1);
  *(v2 + 40) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v2 + 48) = _Q0;
  *(v2 + 64) = xmmword_101CE6CD8;
  *(v2 + 80) = xmmword_101CE6CE8;
  *(v2 + 96) = xmmword_101CE6CF8;
  *(v2 + 112) = xmmword_101CE6D08;
  *(v2 + 128) = xmmword_101CE6D18;
  *(v2 + 144) = xmmword_101CE6D28;
  *(v2 + 160) = xmmword_101CE6D38;
  *(v2 + 176) = xmmword_101CE6D48;
  *(v2 + 192) = xmmword_101CE6D58;
  *(v2 + 204) = *(&xmmword_101CE6D58 + 12);
  *(v2 + 332) = xmmword_101CE6D48;
  *(v2 + 348) = xmmword_101CE6D58;
  *(v2 + 360) = *(&xmmword_101CE6D58 + 12);
  *(v2 + 252) = xmmword_101CE6CF8;
  *(v2 + 268) = xmmword_101CE6D08;
  *(v2 + 284) = xmmword_101CE6D18;
  *(v2 + 300) = xmmword_101CE6D28;
  *(v2 + 316) = xmmword_101CE6D38;
  *(v2 + 220) = xmmword_101CE6CD8;
  *(v2 + 236) = xmmword_101CE6CE8;
  *(v2 + 472) = xmmword_101CE6D38;
  *(v2 + 488) = xmmword_101CE6D48;
  *(v2 + 504) = xmmword_101CE6D58;
  *(v2 + 516) = *(&xmmword_101CE6D58 + 12);
  *(v2 + 408) = xmmword_101CE6CF8;
  *(v2 + 424) = xmmword_101CE6D08;
  *(v2 + 440) = xmmword_101CE6D18;
  *(v2 + 456) = xmmword_101CE6D28;
  *(v2 + 376) = xmmword_101CE6CD8;
  *(v2 + 392) = xmmword_101CE6CE8;
  *(v2 + 628) = xmmword_101CE6D38;
  *(v2 + 644) = xmmword_101CE6D48;
  *(v2 + 660) = xmmword_101CE6D58;
  *(v2 + 564) = xmmword_101CE6CF8;
  *(v2 + 580) = xmmword_101CE6D08;
  *(v2 + 596) = xmmword_101CE6D18;
  *(v2 + 612) = xmmword_101CE6D28;
  *(v2 + 532) = xmmword_101CE6CD8;
  *(v2 + 548) = xmmword_101CE6CE8;
  *(v2 + 672) = *(&xmmword_101CE6D58 + 12);
  *(v2 + 688) = _Q0;
  *(v2 + 704) = _Q0;
  *(v2 + 720) = 0xBFF0000000000000;
  *(v2 + 728) = 0;
  *(v2 + 736) = _Q0;
  *(v2 + 752) = xmmword_101C75BF0;
  *(v2 + 768) = 1;
  *(v2 + 784) = _Q0;
  *(v2 + 800) = _Q0;
  *(v2 + 816) = _Q0;
  *(v2 + 832) = _Q0;
  *(v2 + 848) = _Q0;
  *(v2 + 864) = _Q0;
  *(v2 + 880) = _Q0;
  *(v2 + 896) = 0;
  *(a1 + 776) = +[NSMutableDictionary dictionary];
  sub_100549A88(a1);
  return a1;
}

__n128 sub_100549A88(uint64_t a1)
{
  *(a1 + 40) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 48) = result;
  *(a1 + 64) = xmmword_101CE6CD8;
  *(a1 + 80) = xmmword_101CE6CE8;
  *(a1 + 160) = xmmword_101CE6D38;
  *(a1 + 176) = xmmword_101CE6D48;
  *(a1 + 192) = xmmword_101CE6D58;
  *(a1 + 204) = *(&xmmword_101CE6D58 + 12);
  *(a1 + 96) = xmmword_101CE6CF8;
  *(a1 + 112) = xmmword_101CE6D08;
  *(a1 + 128) = xmmword_101CE6D18;
  *(a1 + 144) = xmmword_101CE6D28;
  *(a1 + 720) = 0xBFF0000000000000;
  *(a1 + 728) = 0;
  *(a1 + 768) = 1;
  *(a1 + 736) = result;
  *(a1 + 752) = xmmword_101C75BF0;
  *(a1 + 784) = result;
  *(a1 + 800) = result;
  *(a1 + 816) = result;
  *(a1 + 832) = result;
  *(a1 + 848) = result;
  *(a1 + 864) = result;
  *(a1 + 880) = result;
  *(a1 + 896) = 0;
  return result;
}

uint64_t sub_100549B38(uint64_t result, double a2)
{
  if (*(result + 768) == 1)
  {
    v2 = *(result + 752);
    if (v2 > 0.0)
    {
      v3 = a2 - v2;
      v4 = *(result + 872);
      if (v4 < v3)
      {
        v4 = v3;
      }

      *(result + 872) = v4;
      v5 = *(result + 880);
      if (v3 < v5 || v5 < 0.0)
      {
        v5 = v3;
      }

      *(result + 880) = v5;
      if (v3 > 2.0)
      {
        *(result + 760) = 0;
      }
    }
  }

  *(result + 768) = 0;
  *(result + 752) = a2;
  return result;
}

double sub_100549B98(uint64_t a1, void *a2)
{
  if ([a2 arrivalDate] && objc_msgSend(a2, "departureDate"))
  {
    [+[NSDate now](NSDate timeIntervalSinceReferenceDate];
    v5 = v4;
    [objc_msgSend(a2 "arrivalDate")];
    v7 = v6;
    [objc_msgSend(a2 "departureDate")];
    if (v7 <= v5)
    {
      v9 = result;
      v10 = [a2 departureDate];
      if (v10 == +[NSDate distantFuture])
      {

        return sub_100549CBC(a1, v7);
      }

      else if (v9 <= v5)
      {
        *&result = sub_100549A88(a1).n128_u64[0];
        *(a1 + 40) = 1;
        *(a1 + 48) = v9;
      }
    }
  }

  else
  {

    *&result = sub_100549A88(a1).n128_u64[0];
  }

  return result;
}

double sub_100549CBC(uint64_t a1, double a2)
{
  if (*(a1 + 40) == 1)
  {
    *(a1 + 56) = a2;
    if (sub_100549D60(a1))
    {
      AnalyticsSendEventLazy();
    }
  }

  *&result = sub_100549A88(a1).n128_u64[0];
  return result;
}

BOOL sub_100549D60(uint64_t a1)
{
  v2 = *(a1 + 56) - *(a1 + 48);
  *(a1 + 888) = v2;
  if (v2 <= 0.0)
  {
    sub_100549A88(a1);
    return v2 > 0.0;
  }

  v3 = *(a1 + 744) / v2;
  v4 = *(a1 + 736);
  *(a1 + 896) = 0;
  if (v3 <= 0.75)
  {
    v4 = v4 / v2;
    if (v4 <= 0.75)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 896) = v5;
LABEL_9:
  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v5, v4), @"DominantMotionActivity"}];
  v6 = *(a1 + 816);
  if (v6 <= 0.0)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v6 <= 20.0)
    {
      v7 = &dword_101C7E398;
    }

    else
    {
      v7 = &dword_101C7E39C;
      v8 = 30;
      while (v6 > v7[1])
      {
        ++v7;
        if (!--v8)
        {
          v7 = &dword_101C7E414;
          break;
        }
      }
    }

    v9 = *v7;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v9), @"MaxDistanceBetweenLocations"}];
  v10 = *(a1 + 824);
  if (v10 <= 0.0)
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v10 <= 20.0)
    {
      v11 = &dword_101C7E398;
    }

    else
    {
      v11 = &dword_101C7E39C;
      v12 = 30;
      while (v10 > v11[1])
      {
        ++v11;
        if (!--v12)
        {
          v11 = &dword_101C7E414;
          break;
        }
      }
    }

    v13 = *v11;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v13), @"MaxDistanceBetweenGPSLocations"}];
  v14 = *(a1 + 832);
  if (v14 <= 0.0)
  {
    v17 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v14 <= 20.0)
    {
      v15 = &dword_101C7E398;
    }

    else
    {
      v15 = &dword_101C7E39C;
      v16 = 30;
      while (v14 > v15[1])
      {
        ++v15;
        if (!--v16)
        {
          v15 = &dword_101C7E414;
          break;
        }
      }
    }

    v17 = *v15;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v17), @"MaxDistanceBetweenWifiLocations"}];
  v18 = *(a1 + 840);
  if (v18 <= 0.0)
  {
    v21 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v18 <= 20.0)
    {
      v19 = &dword_101C7E398;
    }

    else
    {
      v19 = &dword_101C7E39C;
      v20 = 30;
      while (v18 > v19[1])
      {
        ++v19;
        if (!--v20)
        {
          v19 = &dword_101C7E414;
          break;
        }
      }
    }

    v21 = *v19;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v21), @"MaxDistanceBetweenWSBLocations"}];
  v22 = *(a1 + 808);
  if (v22 <= 0.0)
  {
    v25 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v22 <= 2.0)
    {
      v23 = &dword_101C7E418;
    }

    else
    {
      v23 = &dword_101C7E41C;
      v24 = 45;
      while (v22 > v23[1])
      {
        ++v23;
        if (!--v24)
        {
          v23 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v25 = *v23;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v25), @"MaxIntervalBetweenLocation"}];
  v26 = *(a1 + 784);
  if (v26 <= 0.0)
  {
    v29 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v26 <= 2.0)
    {
      v27 = &dword_101C7E418;
    }

    else
    {
      v27 = &dword_101C7E41C;
      v28 = 45;
      while (v26 > v27[1])
      {
        ++v27;
        if (!--v28)
        {
          v27 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v29 = *v27;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v29), @"MaxIntervalBetweenGPS"}];
  v30 = *(a1 + 792);
  if (v30 <= 0.0)
  {
    v33 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v30 <= 2.0)
    {
      v31 = &dword_101C7E418;
    }

    else
    {
      v31 = &dword_101C7E41C;
      v32 = 45;
      while (v30 > v31[1])
      {
        ++v31;
        if (!--v32)
        {
          v31 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v33 = *v31;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v33), @"MaxIntervalBetweenWiFi"}];
  v34 = *(a1 + 800);
  if (v34 <= 0.0)
  {
    v37 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v34 <= 2.0)
    {
      v35 = &dword_101C7E418;
    }

    else
    {
      v35 = &dword_101C7E41C;
      v36 = 45;
      while (v34 > v35[1])
      {
        ++v35;
        if (!--v36)
        {
          v35 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v37 = *v35;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v37), @"MaxIntervalBetweenWSB"}];
  v38 = *(a1 + 848);
  if (v38 <= 0.0)
  {
    v41 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v38 <= 2.0)
    {
      v39 = &dword_101C7E418;
    }

    else
    {
      v39 = &dword_101C7E41C;
      v40 = 45;
      while (v38 > v39[1])
      {
        ++v39;
        if (!--v40)
        {
          v39 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v41 = *v39;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v41), @"MaxSleepDuration"}];
  v42 = *(a1 + 856);
  if (v42 <= 0.0)
  {
    v45 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v42 <= 2.0)
    {
      v43 = &dword_101C7E418;
    }

    else
    {
      v43 = &dword_101C7E41C;
      v44 = 45;
      while (v42 > v43[1])
      {
        ++v43;
        if (!--v44)
        {
          v43 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v45 = *v43;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v45), @"MaxEffectiveSleepDuration"}];
  v46 = *(a1 + 872);
  if (v46 <= 0.0)
  {
    v49 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v46 <= 2.0)
    {
      v47 = &dword_101C7E418;
    }

    else
    {
      v47 = &dword_101C7E41C;
      v48 = 45;
      while (v46 > v47[1])
      {
        ++v47;
        if (!--v48)
        {
          v47 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v49 = *v47;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v49), @"MaxWakeDuration"}];
  v50 = *(a1 + 864);
  if (v50 <= 0.0)
  {
    v53 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v50 <= 2.0)
    {
      v51 = &dword_101C7E418;
    }

    else
    {
      v51 = &dword_101C7E41C;
      v52 = 45;
      while (v50 > v51[1])
      {
        ++v51;
        if (!--v52)
        {
          v51 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v53 = *v51;
  }

  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v53), @"MinSleepDuration"}];
  v54 = *(a1 + 880);
  if (v54 <= 0.0)
  {
    v57 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v54 <= 2.0)
    {
      v55 = &dword_101C7E418;
    }

    else
    {
      v55 = &dword_101C7E41C;
      v56 = 45;
      while (v54 > v55[1])
      {
        ++v55;
        if (!--v56)
        {
          v55 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v57 = *v55;
  }

  v58 = (a1 + 776);
  [*(a1 + 776) setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v57), @"MinWakeDuration"}];
  v59 = *(a1 + 888) / 60.0;
  if (v59 <= 0.0)
  {
    v62 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v59 <= 2.0)
    {
      v60 = &dword_101C7E418;
    }

    else
    {
      v60 = &dword_101C7E41C;
      v61 = 45;
      while (v59 > v60[1])
      {
        ++v60;
        if (!--v61)
        {
          v60 = &dword_101C7E4D0;
          break;
        }
      }
    }

    v62 = *v60;
  }

  [*v58 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v62), @"TransitionDuration"}];
  if (qword_1025D4600 != -1)
  {
    sub_1018BAE58();
  }

  v63 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *v58;
    v66 = 138543362;
    v67 = v64;
    _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEFAULT, "#CLTBC, CLTransitionBreadcrumbMetrics, fMetrics, %{public}@", &v66, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BAE6C(v58);
  }

  return v2 > 0.0;
}

uint64_t sub_10054A5E0(uint64_t result, int *a2, double a3)
{
  if (*(result + 40) == 1)
  {
    v3 = *(result + 720);
    if (v3 > 0.0)
    {
      v4 = *(result + 728);
      if (v4 == 2)
      {
        v5 = 736;
      }

      else
      {
        if (v4 != 1)
        {
          goto LABEL_8;
        }

        v5 = 744;
      }

      *(result + v5) = a3 - v3 + *(result + v5);
    }
  }

LABEL_8:
  *(result + 720) = a3;
  *(result + 728) = 0;
  v6 = *a2;
  if (*a2 > 0x38)
  {
    return result;
  }

  if (((1 << v6) & 0x2000000039ELL) != 0)
  {
    v7 = 1;
  }

  else
  {
    if (((1 << v6) & 0x110000000000C20) == 0)
    {
      return result;
    }

    v7 = 2;
  }

  *(result + 728) = v7;
  return result;
}

void sub_10054A680(uint64_t a1, uint64_t a2, int a3)
{
  if (!sub_100027FB4(a2))
  {
    return;
  }

  v6 = *(a2 + 96);
  v7 = (v6 & 0xFFFFFFF7) == 1 || v6 == 11;
  if (!v7 && v6 != 4)
  {
    return;
  }

  if (a3)
  {
    v9 = *(a2 + 76);
    v10 = *(a1 + 704);
    if (v9 > v10)
    {
      v11 = -30.0;
      if (v10 > 0.0)
      {
        v12 = v9 - v10;
        v13 = *(a1 + 800);
        if (v12 >= v13)
        {
          v13 = v12;
        }

        *(a1 + 800) = v13;
        v11 = v12 * 30.0;
      }

      if (v11 > *(a1 + 840))
      {
        sub_1001097CC(a1, a2, a1 + 532);
        if (*(a1 + 840) >= v14)
        {
          v14 = *(a1 + 840);
        }

        *(a1 + 840) = v14;
        v9 = *(a2 + 76);
      }

      *(a1 + 704) = v9;
      v15 = (a1 + 532);
      v16 = *(a2 + 16);
      *(a1 + 532) = *a2;
      *(a1 + 548) = v16;
      v17 = *(a2 + 32);
      v18 = *(a2 + 48);
      v19 = *(a2 + 80);
      *(a1 + 596) = *(a2 + 64);
      *(a1 + 612) = v19;
      *(a1 + 564) = v17;
      *(a1 + 580) = v18;
      v20 = *(a2 + 96);
      v21 = *(a2 + 112);
      v22 = *(a2 + 128);
      *(a1 + 672) = *(a2 + 140);
      goto LABEL_49;
    }
  }

  if ((v6 & 0xFFFFFFF7) == 1)
  {
    v23 = *(a2 + 76);
    v24 = *(a1 + 688);
    if (v23 > v24)
    {
      v25 = -30.0;
      if (v24 > 0.0)
      {
        v26 = v23 - v24;
        v27 = *(a1 + 784);
        if (v26 >= v27)
        {
          v27 = v26;
        }

        *(a1 + 784) = v27;
        v25 = v26 * 30.0;
      }

      if (v25 > *(a1 + 824))
      {
        sub_1001097CC(a1, a2, a1 + 220);
        if (*(a1 + 824) >= v28)
        {
          v28 = *(a1 + 824);
        }

        *(a1 + 824) = v28;
        v23 = *(a2 + 76);
      }

      *(a1 + 688) = v23;
      v15 = (a1 + 220);
      v29 = *a2;
      *(a1 + 236) = *(a2 + 16);
      *(a1 + 220) = v29;
      v30 = *(a2 + 32);
      v31 = *(a2 + 48);
      v32 = *(a2 + 80);
      *(a1 + 284) = *(a2 + 64);
      *(a1 + 300) = v32;
      *(a1 + 268) = v31;
      *(a1 + 252) = v30;
LABEL_48:
      v20 = *(a2 + 96);
      v21 = *(a2 + 112);
      v22 = *(a2 + 128);
      *(v15 + 140) = *(a2 + 140);
LABEL_49:
      v15[7] = v21;
      v15[8] = v22;
      v15[6] = v20;
      goto LABEL_50;
    }
  }

  if ((v6 == 11 || v6 == 4) && (a3 & 1) == 0)
  {
    v34 = *(a2 + 76);
    v35 = *(a1 + 696);
    if (v34 > v35)
    {
      v36 = 30.0;
      if (v35 > 0.0)
      {
        v37 = v34 - v35;
        v38 = *(a1 + 792);
        if (v37 >= v38)
        {
          v38 = v37;
        }

        *(a1 + 792) = v38;
        v36 = v37 * 30.0;
      }

      if (v36 > *(a1 + 832))
      {
        sub_1001097CC(a1, a2, a1 + 376);
        if (*(a1 + 832) >= v39)
        {
          v39 = *(a1 + 832);
        }

        *(a1 + 832) = v39;
        v34 = *(a2 + 76);
      }

      *(a1 + 696) = v34;
      v15 = (a1 + 376);
      v40 = *(a2 + 16);
      *(a1 + 376) = *a2;
      *(a1 + 392) = v40;
      v41 = *(a2 + 32);
      v42 = *(a2 + 48);
      v43 = *(a2 + 80);
      *(a1 + 440) = *(a2 + 64);
      *(a1 + 456) = v43;
      *(a1 + 408) = v41;
      *(a1 + 424) = v42;
      goto LABEL_48;
    }
  }

LABEL_50:
  v44 = *(a2 + 76);
  v45 = *(a1 + 712);
  if (v44 >= v45)
  {
    v46 = -30.0;
    if (v45 > 0.0)
    {
      v47 = v44 - v45;
      v48 = *(a1 + 808);
      if (v47 >= v48)
      {
        v48 = v47;
      }

      *(a1 + 808) = v48;
      v46 = v47 * 30.0;
    }

    *(a1 + 712) = v44;
    if (sub_100027FB4(a1 + 64) && v46 > *(a1 + 816))
    {
      sub_1001097CC(a1, a2, a1 + 64);
      if (v49 < *(a1 + 816))
      {
        v49 = *(a1 + 816);
      }

      *(a1 + 816) = v49;
    }

    v50 = *(a2 + 16);
    *(a1 + 64) = *a2;
    *(a1 + 80) = v50;
    v51 = *(a2 + 32);
    v52 = *(a2 + 48);
    v53 = *(a2 + 80);
    *(a1 + 128) = *(a2 + 64);
    *(a1 + 144) = v53;
    *(a1 + 96) = v51;
    *(a1 + 112) = v52;
    v54 = *(a2 + 96);
    v55 = *(a2 + 112);
    v56 = *(a2 + 128);
    *(a1 + 204) = *(a2 + 140);
    *(a1 + 176) = v55;
    *(a1 + 192) = v56;
    *(a1 + 160) = v54;
  }
}

uint64_t sub_10054AAEC(void *a1)
{
  *a1 = off_10245D5D0;
  v2 = a1[18];
  if (v2)
  {
    sub_100008080(v2);
  }

  return sub_100A5DB74(a1);
}

void sub_10054AB4C(void *a1)
{
  sub_10054AAEC(a1);

  operator delete();
}

void sub_10054AB88(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10054ABC4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10054AC04(uint64_t a1, const __CFString *a2, char a3, uint64_t a4)
{
  v8 = sub_100070338(a1);
  *v8 = off_10245DA10;
  *(v8 + 16) = 0;
  *(v8 + 3) = 0u;
  v9 = (v8 + 3);
  *(v8 + 5) = 0u;
  *(v8 + 7) = 0u;
  v8[10] = a4;
  v8[11] = -1;
  *(v8 + 96) = a3;
  sub_100070338(v8 + 13);
  *(a1 + 104) = off_10245DDD8;
  sub_100070338((a1 + 120));
  *(a1 + 120) = off_10245DDD8;
  *(a1 + 72) = a2;
  CFRetain(a2);
  CFRetain(*(a1 + 80));
  sub_1000238CC(*(a1 + 80), &v52);
  if (v53 >= 0)
  {
    v10 = &v52;
  }

  else
  {
    v10 = v52;
  }

  v11 = getpwnam(v10);
  if (v11)
  {
    *(a1 + 88) = *&v11->pw_uid;
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018BAF98();
    }

    v12 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v13 = &v52;
      if (v53 < 0)
      {
        v13 = v52;
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136446210;
      *(buf[0].__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "could not read user %{public}s uid/gid", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BAFC0(buf);
      v40 = &v52;
      if (v53 < 0)
      {
        v40 = v52;
      }

      LODWORD(v54.__r_.__value_.__l.__data_) = 136446210;
      *(v54.__r_.__value_.__r.__words + 4) = v40;
      v41 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CLPreferences::CLPreferences(CFStringRef, BOOL, CFStringRef)", "%s\n", v41);
      if (v41 != buf)
      {
        free(v41);
      }
    }
  }

  if (SHIBYTE(v53) < 0)
  {
    sub_100007244(__dst, v52, *(&v52 + 1));
  }

  else
  {
    *__dst = v52;
    v50 = v53;
  }

  sub_10016C650(__dst, &v51);
  v14 = std::string::append(&v51, "/Library/Preferences/", 0x15uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  sub_1000238CC(a2, &__p);
  if ((v48 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v48 & 0x80u) == 0)
  {
    v17 = v48;
  }

  else
  {
    v17 = v47;
  }

  v18 = std::string::append(&v54, p_p, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  buf[0].__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&buf[0].__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v45 = 6;
  strcpy(__s, ".plist");
  v20 = std::string::append(buf, __s, 6uLL);
  v21 = v20->__r_.__value_.__r.__words[0];
  v55[0] = v20->__r_.__value_.__l.__size_;
  *(v55 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
  v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*v9);
  }

  v23 = v55[0];
  *(a1 + 24) = v21;
  *(a1 + 32) = v23;
  *(a1 + 39) = *(v55 + 7);
  *(a1 + 47) = v22;
  if (v45 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v48 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v53) < 0)
  {
    sub_100007244(v42, v52, *(&v52 + 1));
  }

  else
  {
    *v42 = v52;
    v43 = v53;
  }

  sub_100162268(v42, &v51);
  v24 = std::string::append(&v51, "/", 1uLL);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  sub_1000238CC(a2, &__p);
  if ((v48 & 0x80u) == 0)
  {
    v26 = &__p;
  }

  else
  {
    v26 = __p;
  }

  if ((v48 & 0x80u) == 0)
  {
    v27 = v48;
  }

  else
  {
    v27 = v47;
  }

  v28 = std::string::append(&v54, v26, v27);
  v29 = *&v28->__r_.__value_.__l.__data_;
  buf[0].__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&buf[0].__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v45 = 6;
  strcpy(__s, ".plist");
  v30 = std::string::append(buf, __s, 6uLL);
  v31 = v30->__r_.__value_.__r.__words[0];
  v55[0] = v30->__r_.__value_.__l.__size_;
  *(v55 + 7) = *(&v30->__r_.__value_.__r.__words[1] + 7);
  v32 = HIBYTE(v30->__r_.__value_.__r.__words[2]);
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v33 = v55[0];
  *(a1 + 48) = v31;
  *(a1 + 56) = v33;
  *(a1 + 63) = *(v55 + 7);
  *(a1 + 71) = v32;
  if (v45 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v48 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[0]);
  }

  v34 = getpwnam("root");
  v38 = 0;
  if (v34)
  {
    v35 = v34;
    pw_uid = v34->pw_uid;
    if (pw_uid == getuid())
    {
      pw_gid = v35->pw_gid;
      if (pw_gid == getgid())
      {
        v38 = 1;
      }
    }
  }

  *(a1 + 16) = v38;
  sub_10054B380(a1);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  return a1;
}

void sub_10054B1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_100005DA8(v65);
  sub_100005DA8(v64);
  if (*(v63 + 71) < 0)
  {
    operator delete(*(v63 + 48));
  }

  if (*(v63 + 47) < 0)
  {
    operator delete(*v66);
  }

  sub_100005DA8(v63);
  _Unwind_Resume(a1);
}

BOOL sub_10054B380(uint64_t a1)
{
  os_unfair_lock_lock(&unk_102656DA0);
  v2 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_7;
    }

    v2 = *v2;
    goto LABEL_6;
  }

  if (*(a1 + 71))
  {
LABEL_6:
    sub_1004F9C20((a1 + 120), v2);
  }

LABEL_7:
  v3 = CFPreferencesSynchronize(*(a1 + 72), *(a1 + 80), kCFPreferencesAnyHost);
  if (*(a1 + 16) == 1)
  {
    sub_10054B510(a1, 0);
  }

  os_unfair_lock_unlock(&unk_102656DA0);
  return v3 != 0;
}

void *sub_10054B440(uint64_t a1)
{
  *a1 = off_10245DA10;
  CFRelease(*(a1 + 72));
  CFRelease(*(a1 + 80));
  sub_100005DA8((a1 + 120));
  sub_100005DA8((a1 + 104));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return sub_100005DA8(a1);
}

void sub_10054B4D8(uint64_t a1)
{
  sub_10054B440(a1);

  operator delete();
}

void sub_10054B510(uint64_t a1, int a2)
{
  if (*(a1 + 96))
  {
    return;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v3 = (a1 + 24);
  v4 = *(a1 + 47);
  v5 = (a1 + 24);
  if (v4 < 0)
  {
    v5 = *v3;
  }

  if (!stat(v5, &v32) && (v32.st_uid != *(a1 + 88) || v32.st_gid != *(a1 + 92) || (~v32.st_mode & 0x1B6) != 0))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018BAF98();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = (a1 + 24);
      if (*(a1 + 47) < 0)
      {
        v7 = *v3;
      }

      v8 = *(a1 + 88);
      v9 = *(a1 + 92);
      buf[0].st_dev = 136316674;
      *&buf[0].st_mode = v7;
      WORD2(buf[0].st_ino) = 1024;
      *(&buf[0].st_ino + 6) = v32.st_uid;
      HIWORD(buf[0].st_uid) = 1024;
      buf[0].st_gid = v8;
      LOWORD(buf[0].st_rdev) = 1024;
      *(&buf[0].st_rdev + 2) = v32.st_gid;
      *(&buf[0].st_rdev + 3) = 1024;
      LODWORD(buf[0].st_atimespec.tv_sec) = v9;
      WORD2(buf[0].st_atimespec.tv_sec) = 1024;
      *(&buf[0].st_atimespec.tv_sec + 6) = v32.st_mode;
      WORD1(buf[0].st_atimespec.tv_nsec) = 1024;
      HIDWORD(buf[0].st_atimespec.tv_nsec) = 438;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning %s attributes incorrect (uid %d vs %d, gid %d vs %d, mode 0x%x vs 0x%x, resetting", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018BAF98();
      }

      v30 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLPreferences::setFileAttributes(BOOL)", "%s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }

LABEL_16:
    v10 = (a1 + 47);
    v11 = (a1 + 24);
    v12 = (a1 + 24);
    if (*(a1 + 47) < 0)
    {
      v12 = *v11;
    }

    v13 = sub_100053C00(v12);
    if (v13)
    {
      v14 = v13;
      v15 = [-[__CFString pathComponents](v13 "pathComponents")] - 1;
      if (v15 >= 2)
      {
        v16 = v14;
        do
        {
          v16 = [(__CFString *)v16 stringByDeletingLastPathComponent];
          if (([(__CFString *)v16 isEqualToString:@"/var"]& 1) == 0 && ([(__CFString *)v16 isEqualToString:@"/tmp"]& 1) == 0 && !lstat([(__CFString *)v16 fileSystemRepresentation], buf) && (buf[0].st_mode & 0xF000) == 0xA000)
          {
            sub_1018BB004();
          }

          --v15;
        }

        while (v15 > 1);
      }

      CFRelease(v14);
    }

    v17 = (a1 + 24);
    if (*v10 < 0)
    {
      v17 = *v11;
    }

    if (!lstat(v17, buf))
    {
      v18 = (a1 + 24);
      if (*v10 < 0)
      {
        v18 = *v11;
      }

      if (lchmod(v18, 0x1B6u))
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018BAF98();
        }

        v19 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
        {
          v20 = (a1 + 24);
          if (*v10 < 0)
          {
            v20 = *v11;
          }

          v21 = *__error();
          v22 = __error();
          v23 = strerror(*v22);
          v32.st_dev = 136446722;
          *&v32.st_mode = v20;
          WORD2(v32.st_ino) = 1026;
          *(&v32.st_ino + 6) = v21;
          HIWORD(v32.st_uid) = 2082;
          *&v32.st_gid = v23;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "could not lchmod %{public}s errno %{public}d (%{public}s)", &v32, 0x1Cu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018BB1D4((a1 + 47), (a1 + 24));
        }
      }

      v24 = (a1 + 24);
      if (*v10 < 0)
      {
        v24 = *v11;
      }

      if (lchown(v24, *(a1 + 88), *(a1 + 92)))
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018BAF98();
        }

        v25 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
        {
          v26 = v11;
          if (*v10 < 0)
          {
            v26 = *v11;
          }

          v27 = *__error();
          v28 = __error();
          v29 = strerror(*v28);
          v32.st_dev = 136446722;
          *&v32.st_mode = v26;
          WORD2(v32.st_ino) = 1026;
          *(&v32.st_ino + 6) = v27;
          HIWORD(v32.st_uid) = 2082;
          *&v32.st_gid = v29;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_FAULT, "could not lchown %{public}s errno %{public}d (%{public}s)", &v32, 0x1Cu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018BB2F0(v10, v11);
        }
      }
    }
  }
}

const __CFArray *sub_10054BA38(CFStringRef *a1)
{
  result = CFPreferencesCopyKeyList(a1[9], a1[10], kCFPreferencesCurrentHost);
  if (result)
  {
    v3 = result;
    CFPreferencesSetMultiple(0, result, a1[9], a1[10], kCFPreferencesCurrentHost);
    CFRelease(v3);
    data = (*a1)[26].data;

    return (data)(a1);
  }

  return result;
}

uint64_t sub_10054BAF8(CFStringRef *a1, CFStringRef key)
{
  CFPreferencesSetValue(key, 0, a1[9], a1[10], kCFPreferencesCurrentHost);
  data = (*a1)[26].data;

  return (data)(a1);
}

CFIndex sub_10054BB7C(uint64_t a1)
{
  v1 = CFPreferencesCopyKeyList(*(a1 + 72), *(a1 + 80), kCFPreferencesCurrentHost);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  CFRelease(v2);
  return Count;
}

uint64_t sub_10054BBD4()
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018BB40C();
  }

  v0 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "***not supported***", v2, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018BB420();
  }

  return 0;
}

uint64_t sub_10054BC6C()
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018BB40C();
  }

  v0 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "***not supported***", v2, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018BB4FC();
  }

  return 0;
}

uint64_t sub_10054BD04()
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018BB40C();
  }

  v0 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "***not supported***", v2, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018BB5D8();
  }

  return 0;
}

void sub_10054BD9C(const __CFString *a1, uint64_t a2)
{
  cf = 0;
  if ((*(*a2 + 912))(a2, a1, &cf))
  {
    sub_100500C0C(a1, cf);
    CFRelease(cf);
  }
}

void sub_10054BE1C(CFStringRef *a1)
{
  if (qword_1025D48B0 != -1)
  {
    sub_1018BB6B4();
  }

  if (os_log_type_enabled(qword_1025D48B8, OS_LOG_TYPE_DEBUG))
  {
    os_unfair_lock_lock(&unk_102656DA0);
    if (!sub_1004FEEE8((a1 + 15)))
    {
      sub_1004FF734((a1 + 15));
    }

    os_unfair_lock_unlock(&unk_102656DA0);
    v2 = CFPreferencesCopyKeyList(a1[9], a1[10], kCFPreferencesCurrentHost);
    v3 = v2;
    if (v2 && CFArrayGetCount(v2))
    {
      v7.length = CFArrayGetCount(v3);
      v7.location = 0;
      CFArrayApplyFunction(v3, v7, sub_10054BD9C, a1);
      CFRelease(v3);
      if (!sub_1004FEEE8((a1 + 13)))
      {

        sub_1004FF734((a1 + 13));
      }
    }

    else
    {
      if (qword_1025D48B0 != -1)
      {
        sub_1018BB6B4();
      }

      v4 = qword_1025D48B8;
      if (os_log_type_enabled(qword_1025D48B8, OS_LOG_TYPE_DEBUG))
      {
        *v5 = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "\t<empty>", v5, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BB6C8();
        if (!v3)
        {
          return;
        }
      }

      else if (!v3)
      {
        return;
      }

      CFRelease(v3);
    }
  }
}

id sub_10054BFC4(uint64_t a1)
{
  v2 = [sub_10007005C(a1 + 104) mutableCopy];
  v3 = CFPreferencesCopyMultiple(0, *(a1 + 72), *(a1 + 80), kCFPreferencesCurrentHost);
  [v2 addEntriesFromDictionary:v3];
  CFRelease(v3);
  os_unfair_lock_lock(&unk_102656DA0);
  [v2 addEntriesFromDictionary:sub_10007005C(a1 + 120)];
  os_unfair_lock_unlock(&unk_102656DA0);
  return v2;
}

void sub_10054C074()
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018BB40C();
  }

  v0 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "***not supported***", v1, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018BB7B8();
  }
}

uint64_t sub_10054C108()
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018BB40C();
  }

  v0 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "***not supported***", v2, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018BB894();
  }

  return 0;
}

uint64_t sub_10054C1A0()
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018BB40C();
  }

  v0 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "***not supported***", v2, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018BB970();
  }

  return 0;
}

uint64_t sub_10054C238()
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018BB40C();
  }

  v0 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "***not supported***", v2, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018BBA4C();
  }

  return 0;
}

void sub_10054C2D0(uint64_t a1, CFStringRef key, CFPropertyListRef value)
{
  if (*(a1 + 96) == 1)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018BB40C();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v6 = v24;
      sub_1000238CC(key, v24);
      if (v27 < 0)
      {
        v6 = *v24;
      }

      sub_1000238CC(*(a1 + 72), v22);
      v7 = v23;
      v8 = v22[0];
      sub_1000238CC(*(a1 + 80), __p);
      v9 = v22;
      if (v7 < 0)
      {
        v9 = v8;
      }

      if (v21 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446722;
      v30 = v6;
      v31 = 2082;
      v32 = v9;
      v33 = 2082;
      v34 = v10;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Attempt to set key %{public}s for read-only preferences %{public}s/%{public}s!", buf, 0x20u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      if (SHIBYTE(v27) < 0)
      {
        operator delete(*v24);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BAFC0(buf);
      sub_1000238CC(key, v22);
      if (v23 >= 0)
      {
        v12 = v22;
      }

      else
      {
        v12 = v22[0];
      }

      sub_1000238CC(*(a1 + 72), __p);
      v13 = v21;
      v14 = __p[0];
      sub_1000238CC(*(a1 + 80), v18);
      v15 = __p;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if (v19 >= 0)
      {
        v16 = v18;
      }

      else
      {
        v16 = v18[0];
      }

      *v24 = 136446722;
      *&v24[4] = v12;
      v25 = 2082;
      v26 = v15;
      v27 = 2082;
      v28 = v16;
      v17 = _os_log_send_and_compose_impl();
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      sub_100152C7C("Generic", 1, 0, 0, "virtual void CLPreferences::setInternal(const CFStringRef, const CFTypeRef)", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  else
  {
    CFPreferencesSetValue(key, value, *(a1 + 72), *(a1 + 80), kCFPreferencesCurrentHost);
    v11 = *(*a1 + 848);

    v11(a1);
  }
}

void sub_10054C650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_10054C6BC()
{
  if (qword_1025D48A0 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245E1B0);
      }
    }

    v1 = qword_1025D48A8;
    if (os_signpost_enabled(qword_1025D48A8))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245E1B0);
      }
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D48A0, &stru_10245E1B0);
  }
}

void sub_10054C8EC(void *a1)
{
  sub_100005DA8(a1);

  operator delete();
}

uint64_t sub_10054C954(uint64_t result, float a2)
{
  *(v5 - 96) = a2;
  *(v4 + 4) = v2;
  *(v5 - 84) = 1026;
  *(v4 + 14) = v3;
  *(v5 - 78) = 2082;
  *(v4 + 20) = result;
  return result;
}

uint64_t sub_10054C984()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_10054CAA4()
{
  if (qword_102656DA8 != -1)
  {
    sub_1018BBB28();
  }

  return qword_102636F20;
}

void *sub_10054CAE0(void *a1)
{
  *a1 = off_10245E220;
  sub_10054F500(a1 + 13);
  sub_10054F500(a1 + 7);
  v2 = a1[6];
  if (v2)
  {
    sub_100008080(v2);
  }

  return sub_10095D914(a1);
}

void sub_10054CB4C(void *a1)
{
  sub_10054CAE0(a1);

  operator delete();
}

BOOL sub_10054CB84()
{
  v0 = IOServiceMatching("AppleEmbeddedBluetoothSensors");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  v2 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v2 != 0;
}

void sub_10054CBDC(uint64_t a1, int a2)
{
  if (sub_10054CB84())
  {
    if (!*(a1 + 40))
    {
      v4 = sub_100011660();
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3321888768;
      v13[2] = sub_10054CEB4;
      v13[3] = &unk_10245E250;
      v13[4] = a1;
      v13[5] = 0x100000FF00;
      v14 = 0;
      sub_10017A794(v4, v13);
    }

    v12 = 0;
    v5 = sub_100011660();
    sub_100185AC0(v5, buf);
    sub_10001CB4C(*buf, "DeviceMotionLiteForceDebug", &v12);
    if (v16)
    {
      sub_100008080(v16);
    }

    if (*(a1 + 170) == 1 && v12 && a2)
    {
      if (qword_1025D42C0 != -1)
      {
        sub_1018BBB3C();
      }

      v6 = qword_1025D42C8;
      if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Forcing debug mode", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BBB64();
      }

      v7 = &off_10254EA68;
    }

    else
    {
      v8 = &off_10254EA50;
      if (a2 == 1)
      {
        v8 = &off_10254EA80;
      }

      if (a2 == 2)
      {
        v7 = &off_10254EA68;
      }

      else
      {
        v7 = v8;
      }
    }

    if (qword_1025D42C0 != -1)
    {
      sub_1018BBB3C();
    }

    v9 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
    {
      v10 = [v7 intValue];
      *buf = 67240192;
      *&buf[4] = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Setting DeviceMotionLite ReportInterval to %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BBC50(v7);
    }

    (*(**(a1 + 40) + 16))(*(a1 + 40), @"ReportInterval", v7);
    v11 = *(a1 + 40);
    if (a2)
    {
      sub_1009B5D14(v11, sub_10054CF60, a1);
    }

    else
    {
      sub_1009B5D14(v11, 0, 0);
    }
  }
}

void sub_10054CE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100008080(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10054CF64(uint64_t a1)
{
  v2 = sub_100011660();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10054D110;
  v3[3] = &unk_102449A78;
  v3[4] = a1;
  sub_10017A794(v2, v3);
}

void sub_10054CFE0(uint64_t a1)
{
  *(a1 + 170) = [(*(**(a1 + 40) + 24))(*(a1 + 40) @"UsesCompass")];
  v2 = (a1 + 170);
  if (qword_1025D42C0 != -1)
  {
    sub_1018BBD5C();
  }

  v3 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
  {
    if (*v2)
    {
      v4 = "is";
    }

    else
    {
      v4 = "is not";
    }

    v5 = 136446210;
    v6 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "DeviceMotionLite %{public}s using compass", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BBD70();
  }
}

uint64_t sub_10054D118(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = (a3 + 1);
  v7 = (a1 + 153);
  v8 = *(a3 + 1) - *(a1 + 153);
  if (v8 >= 2u)
  {
    if (qword_1025D42C0 != -1)
    {
      sub_1018BBD5C();
    }

    v9 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *v7;
      v11 = *v6;
      *buf = 67240448;
      *&buf[4] = v10;
      LOWORD(v30) = 1026;
      *(&v30 + 2) = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Jump in message sequence number: last=%{public}d, this=%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BBE74(v7, v6);
    }
  }

  *(a1 + 153) = *(a3 + 1);
  *v32 = 0;
  v12 = (a1 + 160);
  *buf = *(a1 + 160);
  v30 = a2;
  v13.i32[0] = *(a3 + 6);
  v13.i32[1] = *(a3 + 8);
  v14 = vdup_n_s32(0x37800000u);
  v31 = vmul_f32(vmul_f32(vcvt_f32_s32(v13), 0x4200000042000000), v14);
  v32[0] = (*(a3 + 10) * 32.0) * 0.000015259;
  *&v26 = a2;
  sub_100061FD8(a1, 4, buf, 32);
  v15 = 0;
  v16 = 1;
  v17 = vdup_n_s32(0x457A0000u);
  do
  {
    v18 = *(a1 + 160) + 5000 * v15;
    v27 = *(a3 + 24) / 100.0;
    v19 = (a3 + 12 + 6 * v15);
    v20.i32[0] = *v19;
    v20.i32[1] = v19[1];
    v21 = v16;
    *&v26 = v18;
    *(&v26 + 1) = a2;
    *v28 = vmul_f32(vmul_f32(vcvt_f32_s32(v20), v17), v14);
    *&v28[8] = (v19[2] * 4000.0) * 0.000015259;
    sub_100061FD8(a1, 5, &v26, 32);
    v16 = 0;
    v15 = 1;
  }

  while ((v21 & 1) != 0);
  *v12 += 10000 * v8;
  if (qword_1025D42C0 != -1)
  {
    sub_1018BBB3C();
  }

  v22 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
  {
    v23 = *v12;
    LODWORD(v26) = 134349056;
    *(&v26 + 4) = v23;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "Updating mag timestamp to %{public}llu", &v26, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BBF78();
  }

  *&v28[4] = 0;
  *&v26 = *(a1 + 160);
  *(&v26 + 1) = a2;
  v24 = *(a3 + 28) * 0.075;
  v27 = *(a3 + 26) * 0.075;
  *v28 = v24;
  *&v28[4] = *(a3 + 30) * 0.075;
  return sub_100061FD8(a1, 6, &v26, 32);
}

float sub_10054D478@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 8);
  v5 = v4;
  v6 = *(a3 + 20);
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  _S5 = HIDWORD(*a3);
  __asm { FMLS            S4, S5, V3.S[1] }

  v13 = fmaxf(_S4 - (v4 * v4), 0.0);
  v14 = *(a3 + 22);
  v15 = vcvtq_f64_f32(*a3);
  *a4 = sqrtf(v13);
  *(a4 + 8) = v15;
  *(a4 + 24) = v5;
  *(a4 + 32) = vdivq_f32(vcvtq_f32_s32(vmovl_s16(*(a3 + 12))), vdupq_n_s32(0x447A0000u));
  result = v14 / 1000.0;
  *(a4 + 48) = v6 / 1000.0;
  *(a4 + 52) = v14 / 1000.0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = a2;
  *(a4 + 88) = *(a1 + 170);
  *(a4 + 100) = 0;
  *(a4 + 92) = 0;
  *(a4 + 107) = 0;
  return result;
}

void sub_10054D520(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = (a3 + 24);
  v7 = (*(a3 + 24) & 0xC0);
  if (qword_1025D42C0 != -1)
  {
    sub_1018BBD5C();
  }

  v8 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *v6;
    v10[0] = 67240448;
    v10[1] = v7;
    v11 = 1026;
    v12 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "FusedWithStatus msgType,%{public}u,infoByte,%{public}u", v10, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BC064(v7, v6);
  }

  if (v7 == 64)
  {
    sub_10054D64C(a1, a2, a3);
  }

  else
  {
    sub_10054DC84(a1, a2, a3);
  }
}