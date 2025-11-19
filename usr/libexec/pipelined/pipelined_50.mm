void sub_1003135DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100003228(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v7 = *(a3 + 16);
  }

  v8 = *(a3 + 24);
  v4 = *(a3 + 48);
  v9 = *(a3 + 40);
  if (v4)
  {
    v4 = (*(*v4 + 24))(v4);
  }

  v10 = v4;
  v11 = *(a3 + 56);
  v5 = *(a3 + 80);
  v12 = *(a3 + 72);
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = 0;
  operator new();
}

void sub_1003138A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 31) < 0)
  {
    operator delete(*(v9 + 8));
  }

  operator delete(v9);
  sub_10031391C(&a9);
  _Unwind_Resume(a1);
}

void sub_1003138D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003138EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1001848BC(v9 - 72);
  sub_10031391C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10031391C(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1003139D4(uint64_t a1)
{
  *a1 = off_100449510;
  v2 = *(a1 + 88);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100313AA8(uint64_t a1)
{
  *a1 = off_100449510;
  v2 = *(a1 + 88);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_100313C8C(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100313CB0(uint64_t a1, uint64_t a2)
{
  *a2 = off_100449510;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    sub_100003228(v4, *(a1 + 8), *(a1 + 16));
    *(a2 + 32) = *(a1 + 32);
    result = *(a1 + 56);
    *(a2 + 48) = *(a1 + 48);
    if (!result)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *v4 = v5;
  *(a2 + 32) = *(a1 + 32);
  v7 = *(a1 + 48);
  result = *(a1 + 56);
  *(a2 + 48) = v7;
  if (result)
  {
LABEL_5:
    result = (*(*result + 24))(result);
  }

LABEL_6:
  *(a2 + 56) = result;
  *(a2 + 64) = *(a1 + 64);
  v8 = *(a1 + 88);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100313D94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100313DB0(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 31) < 0)
  {
    v4 = *(a1 + 8);

    operator delete(v4);
  }
}

void sub_100313E6C(char *__p)
{
  v2 = *(__p + 11);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(__p + 7);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (__p[31] < 0)
  {
    operator delete(*(__p + 1));
    v4 = __p;
  }

  else
  {
    v4 = __p;
  }

  operator delete(v4);
}

uint64_t sub_100313F44(uint64_t a1)
{
  v2 = *(*(a1 + 64) + 24);
  if (!v2)
  {
    sub_1000DB498();
  }

  v3 = *(*v2 + 48);
  v4 = a1 + 8;
  v5 = *(*(a1 + 64) + 24);

  return v3(v5, v4);
}

uint64_t sub_100313F98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN8EventBus15notifyListenersIN7actions9upload_db14UploadProgressEEEvOT_ENKUlRKN9event_bus21GenericCallbackHandleEE_clES9_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN8EventBus15notifyListenersIN7actions9upload_db14UploadProgressEEEvOT_ENKUlRKN9event_bus21GenericCallbackHandleEE_clES9_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN8EventBus15notifyListenersIN7actions9upload_db14UploadProgressEEEvOT_ENKUlRKN9event_bus21GenericCallbackHandleEE_clES9_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN8EventBus15notifyListenersIN7actions9upload_db14UploadProgressEEEvOT_ENKUlRKN9event_bus21GenericCallbackHandleEE_clES9_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_100314010(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_100314088(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_10031418C(uint64_t a1, uint64_t a2, int *a3, _BYTE *a4)
{
  if (*(a2 + 23) < 0)
  {
    v5 = a4;
    v6 = a1;
    sub_100003228(v8, *a2, *(a2 + 8));
    a1 = v6;
    a4 = v5;
    v10 = *a3;
    v11 = 0;
    if (*v5 != 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *v8 = *a2;
    v9 = *(a2 + 16);
    v10 = *a3;
    v11 = 0;
    if (*a4 != 1)
    {
      goto LABEL_9;
    }
  }

  v12 = *(a4 + 2);
  if (a4[39] < 0)
  {
    v7 = a1;
    sub_100003228(__p, *(a4 + 2), *(a4 + 3));
    a1 = v7;
  }

  else
  {
    *__p = *(a4 + 1);
    v14 = *(a4 + 4);
  }

  v11 = 1;
LABEL_9:
  sub_10031433C(a1, v8);
  if (v11 != 1)
  {
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      return;
    }

LABEL_16:
    operator delete(v8[0]);
    return;
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
    v11 = 0;
    if (SHIBYTE(v9) < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v11 = 0;
    if (SHIBYTE(v9) < 0)
    {
      goto LABEL_16;
    }
  }
}

void sub_100314300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031433C(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v41 = 0;
  v42 = 0;
  std::mutex::lock((a1 + 48));
  {
LABEL_33:
    if (qword_10045B050 != -1)
    {
      sub_100387534();
    }

    v24 = qword_10045B058;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_100311C10(&v35, "N7actions9upload_db11StateChangeE");
      v25 = (v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v35 : v35.__r_.__value_.__r.__words[0];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "No listeners for event %s", &buf, 0xCu);
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }
    }

    std::mutex::unlock((a1 + 48));
    goto LABEL_42;
  }

  {
    v10 = v9[1];
LABEL_6:
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) == v7)
    {
      while (1)
      {
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        v10 = v9[1];
        if ((v10 & 0x8000000000000000) == 0)
        {
          {
            goto LABEL_6;
          }

          goto LABEL_10;
        }
      }
    }

    goto LABEL_33;
  }

LABEL_10:
  sub_100311D14(&__p, 0xAAAAAAAAAAAAAAABLL * ((v9[4] - v9[3]) >> 4));
  v11 = v9[3];
  v12 = v9[4];
  if (v11 != v12)
  {
    v13 = v41;
    do
    {
      while (v13 >= v42)
      {
        sub_1000DABA0(&__p, v11);
        v13 = v16;
        v41 = v16;
        v11 += 48;
        if (v11 == v12)
        {
          goto LABEL_19;
        }
      }

      *v13 = *v11;
      v14 = *(v11 + 8);
      if (v14)
      {
        v14 = (*(*v14 + 24))(v14);
      }

      *(v13 + 1) = v14;
      *(v13 + 1) = *(v11 + 16);
      *(v13 + 4) = *(v11 + 32);
      v15 = *(v11 + 40);
      *(v13 + 5) = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v13 += 48;
      v41 = v13;
      v11 += 48;
    }

    while (v11 != v12);
  }

LABEL_19:
  std::mutex::unlock((a1 + 48));
  sub_100311C10(&v35, "N7actions9upload_db11StateChangeE");
  v17 = std::string::insert(&v35, 0, "delivering event ");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v39 = v17->__r_.__value_.__r.__words[2];
  *v38 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  *&buf = off_100449608;
  *(&buf + 1) = a2;
  v44 = v38;
  p_buf = &buf;
  sub_1000E6C18(&__p, &buf, &v36);
  v19 = v36;
  if (v36 != v37)
  {
    std::mutex::lock((a1 + 48));
    if (*(a1 + 16))
    {
      v20 = (*(a1 + 8) - 1) & v6;
      v21 = *(*(a1 + 40) + 8 * v20);
      if (v21)
      {
        v22 = *v21;
        if (v22)
        {
          {
LABEL_31:
            if (v36 != v37)
            {
              operator new();
            }
          }

          else
          {
            v23 = v22[1];
LABEL_27:
            if ((v23 & 0x7FFFFFFFFFFFFFFFLL) == v20)
            {
              while (1)
              {
                v22 = *v22;
                if (!v22)
                {
                  break;
                }

                v23 = v22[1];
                if ((v23 & 0x8000000000000000) == 0)
                {
                  {
                    goto LABEL_27;
                  }

                  goto LABEL_31;
                }
              }
            }
          }
        }
      }
    }

    std::mutex::unlock((a1 + 48));
    v19 = v36;
  }

  if (v19)
  {
    v31 = v37;
    v32 = v19;
    if (v37 != v19)
    {
      do
      {
        v33 = *(v31 - 1);
        if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v33->__on_zero_shared)(v33);
          std::__shared_weak_count::__release_weak(v33);
        }

        v34 = *(v31 - 5);
        if (v34)
        {
          (*(*v34 + 8))(v34);
        }

        v31 -= 48;
      }

      while (v31 != v19);
      v32 = v36;
    }

    v37 = v19;
    operator delete(v32);
  }

  if (p_buf != &buf)
  {
    if (p_buf)
    {
      (*(*p_buf + 40))(p_buf);
    }

    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_73;
  }

  (*(*p_buf + 32))(p_buf);
  if (SHIBYTE(v39) < 0)
  {
LABEL_73:
    operator delete(v38[0]);
  }

LABEL_42:
  v26 = __p;
  if (!__p)
  {
    return;
  }

  v27 = v41;
  v28 = __p;
  if (v41 == __p)
  {
    goto LABEL_53;
  }

  do
  {
    v30 = *(v27 - 1);
    if (!v30 || atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v29 = *(v27 - 5);
      if (!v29)
      {
        goto LABEL_47;
      }

LABEL_46:
      (*(*v29 + 8))(v29);
      goto LABEL_47;
    }

    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
    v29 = *(v27 - 5);
    if (v29)
    {
      goto LABEL_46;
    }

LABEL_47:
    v27 -= 48;
  }

  while (v27 != v26);
  v28 = __p;
LABEL_53:
  v41 = v26;
  operator delete(v28);
}

void sub_100314B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::bad_cast a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, uint64_t a32, char a33)
{
  std::bad_cast::~bad_cast(&a10);
  (*(*v34 + 8))(v34);
  std::mutex::unlock((v33 + 48));
  sub_1000DA348(&a21);
  sub_100311DFC(v35 - 128);
  if (a29 < 0)
  {
    operator delete(__p);
    sub_1000DA348(&a30);
    _Unwind_Resume(a1);
  }

  sub_1000DA348(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_100314CCC(uint64_t result)
{
  if (*(result + 32) != 1)
  {
    if ((*(result + 23) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_8:
    v2 = result;
    operator delete(*result);
    return v2;
  }

  if (*(result + 71) < 0)
  {
    v1 = result;
    operator delete(*(result + 48));
    result = v1;
    *(v1 + 32) = 0;
    if (*(v1 + 23) < 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(result + 32) = 0;
    if (*(result + 23) < 0)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100314DC8(uint64_t a1, uint64_t a2)
{
  *a2 = off_100449608;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100314E00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN8EventBus15notifyListenersIN7actions9upload_db11StateChangeEEEvOT_EUlRKN9event_bus21GenericCallbackHandleEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN8EventBus15notifyListenersIN7actions9upload_db11StateChangeEEEvOT_EUlRKN9event_bus21GenericCallbackHandleEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN8EventBus15notifyListenersIN7actions9upload_db11StateChangeEEEvOT_EUlRKN9event_bus21GenericCallbackHandleEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN8EventBus15notifyListenersIN7actions9upload_db11StateChangeEEEvOT_EUlRKN9event_bus21GenericCallbackHandleEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_100314E78(void *a1, uint64_t *a2)
{
  v3 = a2[4];
  v5 = *a1;
  v4 = a1[1];
  if (*(*a1 + 23) < 0)
  {
    sub_100003228(v10, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    v11 = *(v5 + 2);
    *v10 = v6;
  }

  v12 = *(v5 + 6);
  v13 = 0;
  if (*(v5 + 32) == 1)
  {
    v14 = *(v5 + 10);
    if (*(v5 + 71) < 0)
    {
      sub_100003228(__p, *(v5 + 6), *(v5 + 7));
    }

    else
    {
      v7 = v5[3];
      v16 = *(v5 + 8);
      *__p = v7;
    }

    v13 = 1;
  }

  v8 = a2[1];
  v17 = *a2;
  if (v8)
  {
    v8 = (*(*v8 + 24))(v8);
  }

  v18 = v8;
  v19 = *(a2 + 1);
  v9 = a2[5];
  v20 = a2[4];
  v21 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003150E0(v3, v4, v10);
}

void sub_100315090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003150E0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_1003154F0(v3, a3);
  v4 = 0;
  operator new();
}

void sub_1003153A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100314CCC(v9 + 8);
  operator delete(v9);
  sub_100315400(&a9);
  _Unwind_Resume(a1);
}

void sub_1003153CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1001848BC(v9 - 72);
  sub_100315400(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100315400(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 32) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
      *(a1 + 32) = 0;
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        return a1;
      }
    }

    else
    {
      *(a1 + 32) = 0;
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        return a1;
      }
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

uint64_t sub_1003154F0(uint64_t a1, __int128 *a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a1 + 24) = *(a2 + 6);
    *(a1 + 32) = 0;
    if (*(a2 + 32) != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(a1 + 40) = *(a2 + 10);
    if (*(a2 + 71) < 0)
    {
      sub_100003228((a1 + 48), *(a2 + 6), *(a2 + 7));
    }

    else
    {
      v6 = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = v6;
    }

    *(a1 + 32) = 1;
    v5 = *(a2 + 10);
    *(a1 + 72) = *(a2 + 9);
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_100003228(a1, *a2, *(a2 + 1));
  *(a1 + 24) = *(a2 + 6);
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = *(a2 + 10);
  *(a1 + 72) = *(a2 + 9);
  if (v5)
  {
LABEL_10:
    v5 = (*(*v5 + 24))(v5);
  }

LABEL_11:
  *(a1 + 80) = v5;
  *(a1 + 88) = *(a2 + 88);
  v7 = *(a2 + 14);
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 112) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_100315608(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100315638(uint64_t a1)
{
  *a1 = off_100449678;
  v2 = *(a1 + 120);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
      *(a1 + 40) = 0;
      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        return a1;
      }
    }

    else
    {
      *(a1 + 40) = 0;
      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        return a1;
      }
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void sub_100315744(uint64_t a1)
{
  *a1 = off_100449678;
  v2 = *(a1 + 120);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 40) = 0;
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_1003158EC(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 40) = 0;
  }

  if (*(a1 + 31) < 0)
  {
    v4 = *(a1 + 8);

    operator delete(v4);
  }
}

void sub_1003159C8(char *__p)
{
  v2 = *(__p + 15);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(__p + 11);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (__p[40] == 1)
  {
    if (__p[79] < 0)
    {
      operator delete(*(__p + 7));
      __p[40] = 0;
      if (__p[31] < 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __p[40] = 0;
      if (__p[31] < 0)
      {
        goto LABEL_15;
      }
    }

LABEL_8:
    v4 = __p;

    goto LABEL_10;
  }

  if ((__p[31] & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_15:
  operator delete(*(__p + 1));
  v4 = __p;

LABEL_10:
  operator delete(v4);
}

uint64_t sub_100315AD8(uint64_t a1)
{
  v2 = *(*(a1 + 96) + 24);
  if (!v2)
  {
    sub_1000DB498();
  }

  v3 = *(*v2 + 48);
  v4 = a1 + 8;
  v5 = *(*(a1 + 96) + 24);

  return v3(v5, v4);
}

uint64_t sub_100315B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN8EventBus15notifyListenersIN7actions9upload_db11StateChangeEEEvOT_ENKUlRKN9event_bus21GenericCallbackHandleEE_clES9_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN8EventBus15notifyListenersIN7actions9upload_db11StateChangeEEEvOT_ENKUlRKN9event_bus21GenericCallbackHandleEE_clES9_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN8EventBus15notifyListenersIN7actions9upload_db11StateChangeEEEvOT_ENKUlRKN9event_bus21GenericCallbackHandleEE_clES9_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN8EventBus15notifyListenersIN7actions9upload_db11StateChangeEEEvOT_ENKUlRKN9event_bus21GenericCallbackHandleEE_clES9_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_100315BA4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_100315C1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t **sub_100315D20(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1000045A4(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_100316124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10004E69C(va);
  _Unwind_Resume(a1);
}

void sub_100316138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10004E69C(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_100316150(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1000045A4(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_100316558(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100316584(va);
  _Unwind_Resume(a1);
}

void sub_10031656C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100316584(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100316584(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_100136CF0(v1 + 40, *(v1 + 48));
      if (*(v1 + 39) < 0)
      {
        operator delete(*(v1 + 16));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *sub_1003165E4(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_100316784(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100137800(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_100316798(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1000045A4(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t **sub_100316950(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1000045A4(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void sub_100316B08()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100316B78()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100316BE8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100316C10(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v9 = 0;
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_100003228(&__p, *a2, *(a2 + 1));
    a3 = v6;
    v9 = 1;
    if ((*(v6 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __p = *a2;
    v11 = *(a2 + 2);
    v9 = 1;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v7 = *a3;
      v8 = *(a3 + 2);
      v4 = 1;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = &off_100449760;
      *(a1 + 24) = 0;
LABEL_4:
      *(a1 + 32) = __p;
      *(a1 + 48) = v11;
      v11 = 0;
      __p = 0uLL;
      *(a1 + 24) = 1;
      goto LABEL_5;
    }
  }

  sub_100003228(&v7, *a3, *(a3 + 1));
  v4 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &off_100449760;
  *(a1 + 24) = 0;
  if (v4)
  {
    goto LABEL_4;
  }

LABEL_5:
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  v8 = 0;
  v7 = 0uLL;
  *(a1 + 56) = 1;
  *(a1 + 111) = 273;
  strcpy((a1 + 88), "survey_keep_awake");
  *(a1 + 120) = 6370413;
  *(a1 + 143) = 3;
  if ((v4 & (v11 < 0)) == 1)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_100316DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 == 1 && a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100316E20(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8))
  {
    sub_1000474A4(v6, "");
    sub_10017ED90("Attempt to set event bus more than once", &v7);
    sub_100383AA4(&v7, __p, v6);
    sub_10003F5D0(__p);
  }

  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_100316F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100316F70@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  if (!v3)
  {
    sub_1000474A4(v6, "");
    sub_100211E7C("Attempt to access event buses before they were set", &v7);
    sub_100383AA4(&v7, __p, v6);
    sub_1000BA6B0(__p);
  }

  v4 = *(result + 16);
  *a2 = v3;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100317040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003171B0(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    operator new();
  }

  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  [objc_claimAutoreleasedReturnValue() objectAtIndex:0];
  v1 = [objc_claimAutoreleasedReturnValue() UTF8String];
  v2 = strlen(v1);
  if (v2 < 0x7FFFFFFFFFFFFFF8)
  {
    v3 = v2;
    if (v2 < 0x17)
    {
      *(&__dst.__r_.__value_.__s + 23) = v2;
      if (v2)
      {
        memmove(&__dst, v1, v2);
      }

      __dst.__r_.__value_.__s.__data_[v3] = 0;
      v5 = 4;
      strcpy(v4, "base");
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = __dst;
      }

      sub_1000032E4(&__p, v4);
      operator new();
    }

    operator new();
  }

  sub_10000D39C();
}

void sub_100317400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
LABEL_6:

    _Unwind_Resume(a1);
  }

  operator delete(a23);

  _Unwind_Resume(a1);
}

void sub_1003174BC(uint64_t a1, int a2)
{
  v4 = a2;
  v3 = objc_alloc_init(NSOperationQueue);
  [v3 setName:@"Sensor Listener Queue"];
  [v3 setMaxConcurrentOperationCount:1];
  v2 = sub_1003038C4();
  operator new();
}

void sub_1003175B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v13);

  _Unwind_Resume(a1);
}

void sub_100317604(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v6 = *a2;
  *(a1 + 104) = *(a2 + 2);
  *(a1 + 88) = v6;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*a3 == 1)
  {
    if (*(a1 + 112) == 1)
    {
      if (*(a1 + 143) < 0)
      {
        operator delete(*(a1 + 120));
      }

      v7 = *(a3 + 8);
      *(a1 + 136) = *(a3 + 24);
      *(a1 + 120) = v7;
      *(a3 + 31) = 0;
      *(a3 + 8) = 0;
    }

    else
    {
      v8 = *(a3 + 8);
      *(a1 + 136) = *(a3 + 24);
      *(a1 + 120) = v8;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 8) = 0;
      *(a1 + 112) = 1;
    }
  }

  else if (*(a1 + 112) == 1)
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    *(a1 + 112) = 0;
  }
}

void sub_100317710(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 88;
  if (a1[111] < 0)
  {
    v5 = [NSString stringWithUTF8String:*v4];
    if (a1[112] == 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v5 = [NSString stringWithUTF8String:v4];
  if (a1[112] != 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = a1 + 120;
  if (a1[143] < 0)
  {
    v6 = *v6;
  }

  v7 = [NSString stringWithUTF8String:v6];
LABEL_8:
  v8 = +[NSBundle mainBundle];
  v9 = [v8 pathForResource:v5 ofType:v7];

  if (v9)
  {
    v10 = [NSURL fileURLWithPath:v9];
    v11 = [v10 absoluteString];
    v12 = v11;
    if (v11)
    {
      [v11 ps_STLString];
      *(a2 + 8) = v13;
      *(a2 + 24) = v14;
      *a2 = 1;
    }

    else
    {
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
  }
}

void sub_1003178DC(uint64_t a1)
{
  sub_100317914(a1);

  operator delete();
}

uint64_t sub_100317914(uint64_t a1)
{
  *a1 = &off_100449760;
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
      *(a1 + 112) = 0;
      if (*(a1 + 111) < 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *(a1 + 112) = 0;
      if (*(a1 + 111) < 0)
      {
        goto LABEL_11;
      }
    }

LABEL_3:
    if (*(a1 + 56) != 1)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if ((*(a1 + 111) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  operator delete(*(a1 + 88));
  if (*(a1 + 56) != 1)
  {
LABEL_4:
    if (*(a1 + 24) != 1)
    {
      goto LABEL_5;
    }

LABEL_16:
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 24) = 0;
    v2 = *(a1 + 16);
    if (!v2)
    {
      return a1;
    }

    goto LABEL_19;
  }

LABEL_12:
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
    *(a1 + 56) = 0;
    if (*(a1 + 24) == 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(a1 + 56) = 0;
    if (*(a1 + 24) == 1)
    {
      goto LABEL_16;
    }
  }

LABEL_5:
  v2 = *(a1 + 16);
  if (!v2)
  {
    return a1;
  }

LABEL_19:
  if (atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  return a1;
}

id sub_100317A68()
{
  if (qword_10045B050 == -1)
  {
    v1 = qword_10045B058;
  }

  else
  {
    sub_100387548();
    v1 = qword_10045B058;
  }

  return v1;
}

void sub_100317AC0(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_100317B24(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100449830;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100317BD4(uint64_t a1)
{

  operator delete();
}

void sub_100317C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100318030;
  block[3] = &unk_1004498D8;
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_100003228(__p, *a2, *(a2 + 8));
    a3 = v6;
    v5 = *(v6 + 24);
    if (!v5)
    {
LABEL_7:
      v11 = v5;
      goto LABEL_9;
    }
  }

  else
  {
    *__p = *a2;
    v9 = *(a2 + 16);
    v5 = *(a3 + 24);
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (v5 != a3)
  {
    v5 = (*(*v5 + 16))(v5);
    goto LABEL_7;
  }

  v11 = v10;
  (*(*v5 + 24))(v5, v10);
LABEL_9:
  v12 = objc_retainBlock(*(a1 + 16));
  if (SHIBYTE(v9) < 0)
  {
    sub_100003228(&v14, __p[0], __p[1]);
  }

  else
  {
    v14 = *__p;
    v15 = v9;
  }

  v7 = v11;
  if (!v11)
  {
    goto LABEL_15;
  }

  if (v11 != v10)
  {
    v7 = (*(*v11 + 16))();
LABEL_15:
    v17 = v7;
    goto LABEL_17;
  }

  v17 = v16;
  (*(*v11 + 24))();
LABEL_17:
  v18 = objc_retainBlock(v12);
  dispatch_async(v4, block);

  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  if (v11)
  {
    (*(*v11 + 40))();
  }

  if (SHIBYTE(v9) < 0)
  {
LABEL_27:
    operator delete(__p[0]);
  }

LABEL_21:

  if (v17 == v16)
  {
    (*(*v17 + 32))(v17);
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      return;
    }

LABEL_29:
    operator delete(v14);
    return;
  }

  if (v17)
  {
    (*(*v17 + 40))();
  }

  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_29;
  }
}

void sub_100317F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_100318510(&a9);
  _Unwind_Resume(a1);
}

void sub_100317F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100317FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1003185C0;
  block[3] = &unk_100449908;
  block[4] = a2;
  block[5] = a3;
  block[6] = a1;
  dispatch_sync(v3, block);
}

id sub_10031804C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    sub_100003228((a1 + 32), *(a2 + 32), *(a2 + 40));
    v5 = *(a2 + 80);
    if (!v5)
    {
LABEL_7:
      *(a1 + 80) = v5;
      result = objc_retainBlock(*(a2 + 88));
      *(a1 + 88) = result;
      return result;
    }
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
    v5 = *(a2 + 80);
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (v5 != a2 + 56)
  {
    v5 = (*(*v5 + 16))(v5);
    goto LABEL_7;
  }

  *(a1 + 80) = a1 + 56;
  (*(**(a2 + 80) + 24))(*(a2 + 80));
  result = objc_retainBlock(*(a2 + 88));
  *(a1 + 88) = result;
  return result;
}

void sub_100318130(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_10031814C(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 == a1 + 56)
  {
    (*(*v2 + 32))(v2);
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  if (*(a1 + 55) < 0)
  {
LABEL_7:
    v3 = *(a1 + 32);

    operator delete(v3);
  }
}

void sub_100318200(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v5 = objc_autoreleasePoolPush();
  v7[2]();
  v6 = *(a3 + 24);
  if (!v6)
  {
    sub_1000DB498();
  }

  (*(*v6 + 48))(v6);
  objc_autoreleasePoolPop(v5);
}

void sub_1003184B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  __cxa_end_catch();

  JUMPOUT(0x100318508);
}

void sub_1003184BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  __cxa_end_catch();

  JUMPOUT(0x100318508);
}

void sub_1003184C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1003184E8);
}

void sub_1003184F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000D388(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100318510(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == a1 + 24)
  {
    (*(*v2 + 32))(v2);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  operator delete(*a1);
  return a1;
}

__n128 sub_1003185D8(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[3].n128_u64[0] = a2[3].n128_u64[0];
  a1[2] = result;
  return result;
}

void sub_10031860C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100449948;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003186A8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100449998;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003186FC(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return;
  }

  v2 = *(a1 + 24);

  operator delete(v2);
}

void sub_100318760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_100003228(v8, *a3, *(a3 + 8));
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v8 = *a3;
    v9 = *(a3 + 16);
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      *__p = *a4;
      v7 = *(a4 + 16);
      goto LABEL_6;
    }
  }

  sub_100003228(__p, *a4, *(a4 + 8));
LABEL_6:
  sub_100328ED8(a2, v8, __p);
  if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      return;
    }

LABEL_10:
    operator delete(v8[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v9) < 0)
  {
    goto LABEL_10;
  }
}

void sub_100318828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_100318894(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004499E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100318910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unsigned int *a6, uint64_t a7)
{
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  v12 = *(a7 + 24);
  if (v12)
  {
    if (v12 == a7)
    {
      v15 = v14;
      (*(*v12 + 24))(v12, v14);
    }

    else
    {
      v15 = (*(*v12 + 16))(v12);
    }
  }

  else
  {
    v15 = 0;
  }

  sub_100303F1C(a2, a3, v9, v10, v11, v14);
  result = v15;
  if (v15 == v14)
  {
    return (*(*v15 + 32))(v15);
  }

  if (v15)
  {
    return (*(*v15 + 40))();
  }

  return result;
}

void sub_100318A7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100318A90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100318A90(uint64_t a1)
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

void sub_100318B1C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100318B8C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100318BFC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

const std::locale::facet *sub_100318C24@<X0>(uint64_t a1@<X8>)
{
  sub_1000DD868(a1);
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2 != 12)
  {
    sub_1000474A4(v9, "");
    sub_1000E0488("Improperly formatted wifi mac address", &v11);
    if (*(a1 + 23) < 0)
    {
      sub_100003228(&v12, *a1, *(a1 + 8));
    }

    else
    {
      v12 = *a1;
      v13 = *(a1 + 16);
    }

    sub_1000E661C(v9, &v11, 2);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12);
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_27:
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_31:
        operator delete(v9[0]);
LABEL_28:
        sub_10003F5D0(__p);
      }
    }

    else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    operator delete(v11.__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v3 = std::locale::classic();
  for (i = 0; i != 12; ++i)
  {
    if (*(a1 + 23) >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5[i];
    result = std::locale::use_facet(v3, &std::ctype<char>::id);
    if ((v6 & 0x80) != 0 || (*(&result[1].~facet + v6) & 0x10000) == 0)
    {
      sub_1000474A4(v9, "");
      sub_1000E0488("Improperly formatted wifi mac address", &v11);
      if (*(a1 + 23) < 0)
      {
        sub_100003228(&v12, *a1, *(a1 + 8));
      }

      else
      {
        v12 = *a1;
        v13 = *(a1 + 16);
      }

      sub_1000E661C(v9, &v11, 2);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(v12);
        if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_17:
          if ((v10 & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

LABEL_21:
          operator delete(v9[0]);
LABEL_18:
          sub_10003F5D0(__p);
        }
      }

      else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      operator delete(v11.__r_.__value_.__l.__data_);
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }
  }

  return result;
}

void sub_100318E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_100318F08(_BYTE *a1@<X8>)
{
  v8 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = [v8 deviceIdentifierForVendor];

  v3 = v2;
  if (!v2)
  {
    v3 = +[NSUUID UUID];
  }

  v9 = v3;
  v4 = [v3 UUIDString];
  v5 = [v4 UTF8String];
  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, v5, v6);
  }

  a1[v7] = 0;
}

void sub_100319074(_BYTE *a1@<X8>)
{
  v6 = +[DarwinDeviceInfo currentDevice];
  v2 = [v6 hwModel];
  v3 = [v2 UTF8String];
  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, v3, v4);
  }

  a1[v5] = 0;
}

void sub_100319198(_BYTE *a1@<X8>)
{
  v6 = +[DarwinDeviceInfo currentDevice];
  v2 = [v6 osVersion];
  v3 = [v2 UTF8String];
  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, v3, v4);
  }

  a1[v5] = 0;
}

void sub_1003192BC(void *a1@<X8>)
{
  v7 = +[DarwinDeviceInfo currentDevice];
  v2 = [v7 systemName];
  v3 = [v7 systemVersion];
  v4 = [v7 machine];
  v5 = [NSString stringWithFormat:@"systemName=%@\nsystemVersion=%@\nhw.machine=%@", v2, v3, v4];
  v6 = v5;
  if (v5)
  {
    [v5 ps_STLString];
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1003193EC(void *a1@<X8>)
{
  v4 = +[DarwinDeviceInfo currentDevice];
  v2 = [v4 name];
  v3 = v2;
  if (v2)
  {
    [v2 ps_STLString];
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1003194AC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10031951C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10031958C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1003198EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_100319DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::bad_cast a22)
{
  v24 = *v22;
  if (*v22)
  {
    *(v22 + 8) = v24;
    operator delete(v24);
    if (a21 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void sub_10031A104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (*(v10 + 55) < 0)
  {
    operator delete(*v13);
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10031A274()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10031A2E4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10031A354()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10031A37C(uint64_t a1@<X8>)
{
  sub_1000A82F0(a1);
  v2 = sub_10010C758();
  *(a1 + 52) |= 8u;
  *(a1 + 40) = v2;
  v3 = sub_1001CA208();
  *(a1 + 52) |= 2u;
  *(a1 + 24) = v3;
  v4 = sub_1001CA2CC();
  *(a1 + 52) |= 4u;
  *(a1 + 32) = v4;
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 52) |= 1u;
  *(a1 + 16) = Current;
}

void sub_10031B610(_Unwind_Exception *a1)
{
  operator delete(v2, 0x10A1C40B3F3E137);
  sub_1000A9070(v1);
  _Unwind_Resume(a1);
}

void sub_10031B8A0(_Unwind_Exception *a1)
{
  operator delete(v2, 0x10A1C40B3F3E137);
  sub_1000A9070(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10031BBC4(unsigned int *a1)
{
  if (*a1 - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

void sub_10031BBD8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 20);
  v6 = *(a1 + 21);
  v27 = 0;
  if ((*(a1 + 104) & 2) != 0)
  {
    if (*(a1 + 47) < 0)
    {
      sub_100003228(__p, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      *__p = *(a1 + 24);
      __p[2] = *(a1 + 40);
    }

    v27 = 1;
  }

  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v25 = *(a1 + 48);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v9 = *(a1 + 104);
  v10 = *(a1 + 88);
  if ((v9 & 4) == 0)
  {
    v10 = NAN;
  }

  if (*(a1 + 96))
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = v11 & ((v9 << 28) >> 31);
  v13 = *(a1 + 97);
  v14 = (v9 >> 4) & 1;
  v15 = *(a1 + 100);
  v16 = *(a1 + 98) & ((v9 & 0x20) >> 5);
  v17 = *(a1 + 80) ^ 1;
  v18 = *(a1 + 16) << 32;
  if ((v9 & 1) == 0)
  {
    v18 = 0;
  }

  v19 = v18 & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  if (v27)
  {
    v20 = __p[0];
    *&v26 = __p[1];
    *(&v26 + 7) = *(&__p[1] + 7);
    v21 = HIBYTE(__p[2]);
    memset(__p, 0, sizeof(__p));
    v22 = v14 | (v13 << 8);
    v23 = (v9 >> 6) & 1 | (v15 << 32);
    *(a2 + 8) = v20;
    *(a2 + 16) = v26;
    *(a2 + 23) = *(&v26 + 7);
    *(a2 + 31) = v21;
    v24 = 1;
  }

  else
  {
    v24 = 0;
    v22 = v14 | (v13 << 8);
    v23 = (v9 >> 6) & 1 | (v15 << 32);
  }

  *a2 = v24;
  *(a2 + 32) = v4;
  *(a2 + 40) = v25;
  *(a2 + 48) = v19;
  *(a2 + 56) = v5 ^ 1;
  *(a2 + 60) = v6;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = v17;
  *(a2 + 96) = v10;
  *(a2 + 104) = v12;
  *(a2 + 108) = v22;
  *(a2 + 112) = v23;
  *(a2 + 120) = v16;
  if (v27 && SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10031BEF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000D388(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10031BF10(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int a10, int a11, __int16 a12, uint64_t a13, char a14)
{
  *result = 0;
  if (*a6 == 1)
  {
    v14 = *(a6 + 8);
    *(result + 24) = *(a6 + 24);
    *(result + 8) = v14;
    *(a6 + 16) = 0;
    *(a6 + 24) = 0;
    *(a6 + 8) = 0;
    *result = 1;
  }

  *(result + 32) = a2;
  *(result + 40) = a7;
  *(result + 48) = a3;
  *(result + 56) = a4;
  *(result + 60) = a5;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 64) = 0;
  *(result + 64) = *a8;
  *(result + 80) = *(a8 + 16);
  *a8 = 0;
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  *(result + 88) = a10;
  *(result + 96) = a9;
  *(result + 104) = a11;
  *(result + 108) = a12;
  *(result + 112) = a13;
  *(result + 120) = a14;
  return result;
}

uint64_t sub_10031BF94(uint64_t a1, uint64_t a2)
{
  sub_10031BBD8(a2, v7);
  *a1 = 0;
  v3 = v7[0];
  if (v7[0] == 1)
  {
    *(a1 + 8) = *__p;
    *(a1 + 24) = v9;
    __p[1] = 0;
    v9 = 0;
    __p[0] = 0;
    *a1 = 1;
  }

  v4 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v4;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  v5 = v15;
  *(a1 + 88) = v14;
  *(a1 + 104) = v5;
  *(a1 + 120) = v16;
  if (v3 && SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_10031C068(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  while (v3 != v4)
  {
    v5 = *v3;
    sub_10000A688(a2, &v5);
    v3 += 4;
  }
}

void sub_10031C10C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

int32x2_t sub_10031C128@<D0>(uint64_t a1@<X0>, int32x2_t *a2@<X8>, uint64_t a3@<D0>)
{
  v3 = *a1;
  v3.f64[1] = *(a1 + 24);
  result = vrev64_s32(vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vdivq_f64(vsubq_f64(*(a1 + 8), v3), vdupq_lane_s64(a3, 0))))));
  *a2 = result;
  return result;
}

_DWORD *sub_10031C15C(_DWORD *result, _DWORD *a2, int *a3)
{
  v3 = *a3;
  *result = *a2;
  result[1] = v3;
  return result;
}

double sub_10031C16C(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10031C178(_DWORD *a1, int *a2, int *a3)
{
  v3 = *a2;
  if (*a2 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a3;
  if (*a3 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a1[1];
  if (v3 >= v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v3 + v5 * v4;
  if (v4 < *a1)
  {
    return v6;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10031C1B4(uint64_t a1, uint64_t a2, uint64_t __x)
{
  result = div(__x, *(a1 + 4)).quot;
  *(a2 + 16) = __ROR8__(result, 32);
  return result;
}

float64x2_t **sub_10031C244(float64x2_t **a1, double a2)
{
  v3 = *a1;
  v4 = a1[1] - *a1;
  if (v4)
  {
    v5 = a2;
    v6 = v4 >> 3;
    if ((v4 >> 3) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4 >> 3;
    }

    if ((v4 >> 3) <= 1)
    {
      v8 = 0;
LABEL_10:
      v12 = v7 - v8;
      v13 = &v3->f64[v8];
      do
      {
        v14 = exp(*v13 - v5);
        v5 = a2;
        *v13++ = v14;
        --v12;
      }

      while (v12);
      return a1;
    }

    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    v16 = vdupq_lane_s64(*&a2, 0);
    v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
    v10 = *a1;
    do
    {
      __x = vsubq_f64(*v10, v16);
      v19 = exp(__x.f64[1]);
      v11.f64[0] = exp(__x.f64[0]);
      v11.f64[1] = v19;
      *v10++ = v11;
      v9 -= 2;
    }

    while (v9);
    v5 = a2;
    if (v6 != v8)
    {
      goto LABEL_10;
    }
  }

  return a1;
}

double **sub_10031C330(double **result)
{
  v2 = *result;
  v1 = result[1];
  if (*result != v1)
  {
    v3 = *result;
    v4 = 0.0;
    v5 = 0.0;
    v6 = *result;
    do
    {
      v7 = *v6++;
      v8 = v4;
      v9 = v7 - v5;
      v4 = v4 + v9;
      v5 = v4 - v8 - v9;
    }

    while (v6 != v1);
    v10 = v1 - v2 - 8;
    if (v10 <= 0x17)
    {
      goto LABEL_11;
    }

    v11 = (v10 >> 3) + 1;
    v3 = &v2->f64[v11 & 0x3FFFFFFFFFFFFFFCLL];
    v12 = vdupq_lane_s64(*&v4, 0);
    v13 = v2 + 1;
    v14 = v11 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v15 = vdivq_f64(*v13, v12);
      v13[-1] = vdivq_f64(v13[-1], v12);
      *v13 = v15;
      v13 += 2;
      v14 -= 4;
    }

    while (v14);
    if (v11 != (v11 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_11:
      do
      {
        *v3 = *v3 / v4;
        ++v3;
      }

      while (v3 != v1);
    }
  }

  return result;
}

void sub_10031C3D4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10031C444()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10031C4B4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10031C524()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10031C594(const char *a1, int a2, int a3, uint64_t a4)
{
  v4 = a2 | 0x10;
  if (a3 != 1)
  {
    v4 = a2;
  }

  if (a3 == 2)
  {
    v5 = a2 | 0x20;
  }

  else
  {
    v5 = v4;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return open(a1, v5, a4);
}

__n128 sub_10031C5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  *a1 = *(a2 + 8);
  result = *(a3 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = v3;
  return result;
}

double *sub_10031C5F8(double *result, double *a2)
{
  v2 = *a2;
  v3 = result[1];
  if (*result >= *a2)
  {
    v2 = *result;
  }

  *result = v2;
  v4 = a2[1];
  if (v4 >= v3)
  {
    v4 = v3;
  }

  result[1] = v4;
  v5 = a2[3];
  v6 = result[2];
  if (result[3] >= v5)
  {
    v5 = result[3];
  }

  result[3] = v5;
  v7 = a2[2];
  if (v7 >= v6)
  {
    v7 = v6;
  }

  result[2] = v7;
  if (v2 >= v4 || v5 >= v7)
  {
    v10 = result;
    sub_1000474A4(v12, "");
    sub_1001EDF78("Please check intersects() first. new this=", &v14);
    sub_10031D064(v10, &v15);
    sub_1001817C0(", input other=", &v16);
    sub_10031D064(a2, &v17);
    sub_1000E661C(v12, &v14, 4);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_15:
        if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_22;
      }
    }

    else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    operator delete(v16.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }

LABEL_22:
    operator delete(v15.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_24:
      operator delete(v12[0]);
LABEL_18:
      sub_10003F5D0(&__p);
    }

LABEL_23:
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  return result;
}

void sub_10031C7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031C7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  while (1)
  {
    v17 = *(v16 - 1);
    v16 -= 3;
    if (v17 < 0)
    {
      operator delete(*v16);
    }

    if (v16 == &a16)
    {
      JUMPOUT(0x10031C7C8);
    }
  }
}

double sub_10031C864@<D0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v4 = a4.n128_f64[0] * -0.5;
  v5 = *a1 - a4.n128_f64[0] * -0.5;
  v6 = a4.n128_f64[0] * -0.5 + a1[1];
  if (v5 < v6 && (v7 = v4 + a1[2], v8 = a1[3] - v4, v8 < v7))
  {
    v9 = *(a2 + 8);
    if (v9 >= v5 && v9 <= v6)
    {
      v23 = *(a2 + 16);
      if (v23 >= v8 && v23 <= v7)
      {
        a4.n128_u64[0] = sub_10012D378(a3, a2).n128_u64[0];
        return a4.n128_f64[0];
      }
    }
  }

  else
  {
    v9 = *(a2 + 8);
    v7 = NAN;
    v5 = NAN;
    v6 = NAN;
    v8 = NAN;
  }

  *a3 = off_10043DB08;
  *(a3 + 24) &= 0xFCu;
  v10 = v9 - a4.n128_f64[0];
  v11 = *(a2 + 16);
  v12 = v11 - a4.n128_f64[0];
  *(a3 + 8) = v9 - a4.n128_f64[0];
  *(a3 + 16) = v11 - a4.n128_f64[0];
  if (v9 - a4.n128_f64[0] >= v5)
  {
    if (v10 <= v6 && v12 >= v8 && v12 <= v7)
    {
      return a4.n128_f64[0];
    }

    v13 = v11 + a4.n128_f64[0];
    *(a3 + 16) = v13;
    v16 = v10 > v6 || v13 < v8;
    if (!v16 && v13 <= v7)
    {
      return a4.n128_f64[0];
    }
  }

  else
  {
    v13 = v11 + a4.n128_f64[0];
  }

  a4.n128_f64[0] = v9 + a4.n128_f64[0];
  *(a3 + 8) = a4.n128_u64[0];
  *(a3 + 16) = v12;
  if (a4.n128_f64[0] < v5 || (a4.n128_f64[0] <= v6 ? (v18 = v12 < v8) : (v18 = 1), !v18 ? (v19 = v12 > v7) : (v19 = 1), v19 && ((*(a3 + 16) = v13, a4.n128_f64[0] <= v6) ? (v20 = v13 < v8) : (v20 = 1), !v20 ? (v21 = v13 > v7) : (v21 = 1), v21)))
  {
    a4 = vdupq_n_s64(0x7FF4000000000000uLL);
    *(a3 + 8) = a4;
  }

  return a4.n128_f64[0];
}

BOOL sub_10031C98C(double *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 < *a1)
  {
    return 0;
  }

  if (v2 > a1[1])
  {
    return 0;
  }

  v4 = *(a2 + 16);
  return v4 >= a1[3] && v4 <= a1[2];
}

BOOL sub_10031C9E0(double *a1)
{
  if (fabs(*a1) == INFINITY)
  {
    return 1;
  }

  if (fabs(a1[1]) == INFINITY)
  {
    return 1;
  }

  if (fabs(a1[2]) == INFINITY)
  {
    return 1;
  }

  return fabs(a1[3]) == INFINITY;
}

double *sub_10031CA50@<X0>(double *result@<X0>, uint64_t (***a2)()@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 1);
  v4 = *result;
  if (v3 <= *result)
  {
    v5 = result[3];
    if (*(a2 + 2) <= v5)
    {
      *a3 = off_10043DB08;
      *(a3 + 24) &= 0xFCu;
      *(a3 + 8) = v4;
      *(a3 + 16) = v5;
      return result;
    }
  }

  v6 = result[1];
  if (v3 >= v6)
  {
    v9 = *(a2 + 2);
    v10 = result[3];
    if (v9 <= v10 || (v10 = result[2], v9 >= v10))
    {
      *a3 = off_10043DB08;
      *(a3 + 24) &= 0xFCu;
      *(a3 + 8) = v6;
      *(a3 + 16) = v10;
      return result;
    }
  }

  if (v3 <= v4)
  {
    v7 = result[2];
    if (*(a2 + 2) >= v7)
    {
      *a3 = off_10043DB08;
      *(a3 + 24) &= 0xFCu;
      *(a3 + 8) = v4;
      *(a3 + 16) = v7;
      return result;
    }
  }

  v13 = 0.0;
  v14 = 0.0;
  v12 = off_10043DB08;
  v15 = 0;
  if (v3 >= v4)
  {
    if (v3 <= v6)
    {
      v11 = *(a2 + 2);
      v8 = result[2];
      if (v11 <= v8)
      {
        v8 = result[3];
        if (v11 >= v8)
        {
          goto LABEL_19;
        }
      }

      v13 = v3;
    }

    else
    {
      v13 = v6;
      v8 = *(a2 + 2);
    }
  }

  else
  {
    v13 = v4;
    v8 = *(a2 + 2);
  }

  v14 = v8;
  a2 = &v12;
LABEL_19:
  sub_10012D378(a3, a2);
  return nullsub_75(&v12);
}

uint64_t sub_10031CC24@<X0>(double *a1@<X0>, uint64_t (***a2)()@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  sub_10031CA50(a1, a2, v9);
  v7.n128_f64[0] = a4;
  sub_10031C864(a1, v9, a3, v7);
  return nullsub_75(v9);
}

double sub_10031CC94@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (v5 >= v4 || v2 >= v3)
  {
    sub_1000474A4(v9, "");
    sub_100259F9C("Rectangle has no middle", &v11);
    sub_1000E661C(v9, &v11, 1);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(v9[0]);
LABEL_7:
    sub_10003F5D0(&__p);
  }

  *a2 = off_10043DB08;
  *(a2 + 24) &= 0xFCu;
  result = (v2 + v3) * 0.5;
  *(a2 + 8) = result;
  *(a2 + 16) = (v4 + v5) * 0.5;
  return result;
}

void sub_10031CDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031CE24(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = off_10043DB08;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) &= 0xFCu;
  *(a3 + 8) = (*(*a2 + 24))(a2, *a1, a1[1]);
  *(a3 + 16) = (*(*a2 + 24))(a2, a1[3], a1[2]);
}

BOOL sub_10031CEFC(double *a1, double *a2)
{
  if (*a1 > *a2)
  {
    return 0;
  }

  if (a1[1] < a2[1])
  {
    return 0;
  }

  if (a1[2] >= a2[2])
  {
    return a1[3] <= a2[3];
  }

  return 0;
}

void *sub_10031CF58(void *a1, uint64_t a2)
{
  v3 = sub_10003C2E4(a1, "UniversalRect2d(bottomLeft=", 27);
  v13[0] = off_10043DB08;
  v14 = 0;
  v4 = *(a2 + 24);
  v13[1] = *a2;
  v13[2] = v4;
  v5 = sub_10012D3B4(v3, v13);
  v6 = sub_10003C2E4(v5, ", topRight=", 11);
  v10 = off_10043DB08;
  v12 = 0;
  v11 = *(a2 + 8);
  v7 = sub_10012D3B4(v6, &v10);
  v8 = sub_10003C2E4(v7, ")", 1);
  nullsub_75(&v10);
  nullsub_75(v13);
  return v8;
}

void sub_10031D034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  nullsub_75(&a9);
  nullsub_75(&a13);
  _Unwind_Resume(a1);
}

void sub_10031D050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nullsub_75(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10031D064@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  result = sub_10031D114(a1, a2);
  if ((result & 1) == 0)
  {
    std::bad_cast::bad_cast(&v3);
    v3.__vftable = &off_100434090;
    sub_100049F88(&v3);
  }

  return result;
}

void sub_10031D0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::bad_cast a10)
{
  std::bad_cast::~bad_cast(&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10031D114(uint64_t a1, std::string *a2)
{
  v32 = 0u;
  v31 = 0u;
  *__p = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  std::locale::locale(&v27);
  v29 = 0uLL;
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0uLL;
  DWORD2(v32) = 24;
  *(&v27 + 1) = &__p[1];
  *&v28 = &__p[1];
  *(&v28 + 1) = &__p[1];
  *&v32 = &__p[1];
  std::string::resize(&__p[1], 0x16uLL, 0);
  v4 = HIBYTE(v31);
  if (v31 < 0)
  {
    v4 = v31;
  }

  *&v29 = &__p[1];
  *(&v29 + 1) = &__p[1];
  __p[0] = &__p[1] + v4;
  v28 = 0uLL;
  *(&v27 + 1) = 0;
  v26 = off_100433ED0;
  v34.__loc_ = 0;
  std::ios_base::init(&v34, &v26);
  v35 = 0;
  v36 = -1;
  v38 = &v37;
  v39 = &v37 + 2;
  v5 = (&v33 + *(v33 - 3));
  v5->__exceptions_ = 1;
  std::ios_base::clear(v5, v5->__rdstate_);
  v6 = sub_10031CF58(&v33, a1);
  v7 = *(v6 + *(*v6 - 24) + 32);
  v8 = *(&v34.__rdstate_ + *(v33 - 3));
  v10 = *(v8 + 40);
  v9 = *(v8 + 48);
  v38 = v10;
  v39 = v9;
  if ((v7 & 5) == 0)
  {
    v13 = &v9[-v10];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v17 = a2->__r_.__value_.__r.__words[2];
      v16 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v16 >= v13)
      {
        v18 = HIBYTE(v17);
LABEL_14:
        if ((v18 & 0x80u) == 0)
        {
          v15 = a2;
        }

        else
        {
          v15 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_17:
        if (v10 == v9)
        {
          v19 = v15;
          goto LABEL_27;
        }

        if (v13 < 0x20 || v15 - v10 < 0x20)
        {
          v19 = v15;
          v20 = v10;
        }

        else
        {
          v19 = (v15 + (v13 & 0xFFFFFFFFFFFFFFE0));
          v20 = (v10 + (v13 & 0xFFFFFFFFFFFFFFE0));
          v21 = (v10 + 16);
          v22 = &v15->__r_.__value_.__r.__words[2];
          v23 = v13 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v24 = *v21;
            *(v22 - 1) = *(v21 - 1);
            *v22 = v24;
            v21 += 2;
            v22 += 4;
            v23 -= 32;
          }

          while (v23);
          if (v13 == (v13 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_27:
            v19->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v13;
              v11 = 1;
              std::ostream::~ostream();
              if ((SHIBYTE(v31) & 0x80000000) == 0)
              {
                goto LABEL_6;
              }
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v13 & 0x7F;
              v11 = 1;
              std::ostream::~ostream();
              if ((SHIBYTE(v31) & 0x80000000) == 0)
              {
                goto LABEL_6;
              }
            }

            goto LABEL_5;
          }
        }

        do
        {
          v25 = *v20++;
          v19->__r_.__value_.__s.__data_[0] = v25;
          v19 = (v19 + 1);
        }

        while (v20 != v9);
        goto LABEL_27;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v15 = a2;
      if (v13 <= 0x16)
      {
        goto LABEL_17;
      }

      v16 = 22;
    }

    std::string::__grow_by(a2, v16, v13 - v16, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v18) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_14;
  }

  v11 = 0;
  std::ostream::~ostream();
  if (SHIBYTE(v31) < 0)
  {
LABEL_5:
    operator delete(__p[1]);
  }

LABEL_6:
  std::locale::~locale(&v27);
  return v11;
}

void sub_10031D4DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v22 + 1);
  sub_10000D388(a1);
}

void sub_10031D504()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10031D574()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_10031D5E4(uint64_t a1)
{
  *a1 = off_10043DAA8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) &= 0xFCu;
  result = INFINITY;
  *(a1 + 40) = xmmword_1003D9740;
  return result;
}

uint64_t sub_10031D638(uint64_t result, float64_t a2, float64_t a3, double a4)
{
  if (a2 >= a3)
  {
    sub_1000474A4(v11, "");
    sub_10031D7BC("You must add a _range_. If you intend to add an individual value, use addObservation() instead.", &v12);
    sub_100383AA4(&v12, __p, v11);
    sub_1000BC6D8(__p);
  }

  v5 = *(result + 16) + (a2 + a3) * a4 * 0.5;
  *(result + 8) = *(result + 8) + a4;
  *(result + 16) = v5;
  v6 = *(result + 40);
  v7.f64[0] = *(result + 40);
  v7.f64[1] = a3;
  v8.f64[1] = *(result + 48);
  v8.f64[0] = a2;
  v9 = vcgtq_f64(v7, v8);
  v7.f64[0] = a2;
  *(result + 24) = vaddq_f64(COERCE_UNSIGNED_INT64((a2 * a3 + a3 * a3 + a2 * a2) * a4 / 3.0), *(result + 24));
  *(result + 40) = vbslq_s8(v9, v7, v6);
  return result;
}

void sub_10031D764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10031D7BC@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10031D7F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031D80C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10031D87C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10031D8EC(uint64_t result, uint64_t a2, double a3, double a4)
{
  *result = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(result + 16) = a3;
  *(result + 24) = a4;
  return result;
}

uint64_t sub_10031D900@<X0>(long double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = a1[2];
  if (v4 == 0.0)
  {
    v6 = *(v3 + 64);
    v7 = v5 * v6;
    v8 = v6 * (a1[3] * *(v3 + 16));
  }

  else
  {
    v9 = a1[3];
    v10 = hypot(a1[2], v9);
    v11 = atan2(v9, v5);
    v12 = *(v3 + 16);
    v13 = __sincos_stret(v11 + v12 * v4);
    v14 = *(v3 + 64);
    v7 = v14 * (v10 * v13.__cosval);
    v8 = v14 * (v10 * v13.__sinval * v12);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = off_10043DB08;
  *(a2 + 24) &= 0xFCu;
  sub_1001294D4(a2, v7 + *(v3 + 40));
  result = sub_1001294DC(a2, v8 + *(v3 + 48));
  *(a2 + 24) |= 3u;
  return result;
}

uint64_t sub_10031DA20(double *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_10012D378(v15, *a1 + 32);
  v6 = v15[2];
  v7 = (v4 - v15[1]) / *(*&v3 + 64);
  a1[2] = v7;
  v8 = *(*&v3 + 16);
  v9 = (v5 - v6) * v8 / *(*&v3 + 64);
  a1[3] = v9;
  v10 = *(*&v3 + 80);
  if (v10 != 0.0)
  {
    v11 = hypot(v7, v9);
    v12 = atan2(v9, v7);
    v13 = __sincos_stret(v12 - v8 * v10);
    a1[2] = v11 * v13.__cosval;
    a1[3] = v11 * v13.__sinval;
  }

  return nullsub_75(v15);
}

double *sub_10031DAEC(double *a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_10031DA20(a1, a3);
  return a1;
}

void sub_10031DB38(uint64_t a1, long double *a2, double *a3, double a4, double a5)
{
  sub_10012D378(v18, a1 + 32);
  v10 = v18[2];
  *a2 = (a4 - v18[1]) / *(a1 + 64);
  v11 = *(a1 + 16);
  v12 = (a5 - v10) * v11 / *(a1 + 64);
  *a3 = v12;
  v13 = *(a1 + 80);
  if (v13 != 0.0)
  {
    v14 = *a2;
    v15 = hypot(*a2, v12);
    v16 = atan2(v12, v14);
    v17 = __sincos_stret(v16 - v11 * v13);
    *a2 = v15 * v17.__cosval;
    *a3 = v15 * v17.__sinval;
  }

  nullsub_75(v18);
}

void sub_10031DC1C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10031DC8C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10031DD1C(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "TimeMappingDiag");
  v7 = (*(*a2 + 48))(a2, "timestampNanos", 10, 1) + v6;
  v8 = (*(*a2 + 152))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "systemTimestampNanos", 10, 2);
  v11 = v10 + (*(*a2 + 152))(a2, *(a1 + 16));
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = (*(*a2 + 48))(a2, "source", 8, 3);
  LODWORD(a1) = v13 + (*(*a2 + 144))(a2, *(a1 + 24));
  LODWORD(a1) = a1 + (*(*a2 + 56))(a2);
  LODWORD(a1) = v12 + a1 + (*(*a2 + 64))(a2);
  v14 = (*(*a2 + 40))(a2);
  --a2[6];
  return (a1 + v14);
}

__n128 sub_10031E014(uint64_t a1, uint64_t a2)
{
  *a1 = off_100449AC0;
  *(a1 + 28) &= 0xF8u;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return result;
}

uint64_t sub_10031E058(uint64_t result)
{
  *result = off_100449AF0;
  if (*(result + 47) < 0)
  {
    v1 = result;
    operator delete(*(result + 24));
    return v1;
  }

  return result;
}

void sub_10031E0B4(uint64_t a1)
{
  *a1 = off_100449AF0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_10031E150(uint64_t a1, _DWORD *a2)
{
  v2 = a2[7];
  v3 = a2[6] + 1;
  a2[6] = v3;
  if (v2 < v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 6;
  }

  v6 = (*(*a2 + 32))(a2, "PowerEvent");
  v7 = (*(*a2 + 48))(a2, "timestampNanos", 10, 1) + v6;
  v8 = (*(*a2 + 152))(a2, *(a1 + 8));
  v9 = v7 + v8 + (*(*a2 + 56))(a2);
  v10 = (*(*a2 + 48))(a2, "utcTimestampNanos", 10, 2);
  v11 = v10 + (*(*a2 + 152))(a2, *(a1 + 16));
  v12 = v9 + v11 + (*(*a2 + 56))(a2);
  v13 = (*(*a2 + 48))(a2, "description", 11, 3);
  LODWORD(a1) = v13 + (*(*a2 + 168))(a2, a1 + 24);
  LODWORD(a1) = a1 + (*(*a2 + 56))(a2);
  LODWORD(a1) = v12 + a1 + (*(*a2 + 64))(a2);
  v14 = (*(*a2 + 40))(a2);
  --a2[6];
  return (a1 + v14);
}

uint64_t sub_10031E4B0(uint64_t result, __int128 *a2, int a3, uint64_t a4)
{
  v5 = result;
  v6 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v6;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      *(result + 24) = archive_read_disk_new();
      *(v5 + 32) = a4;
      *(v5 + 40) = 2;
      disk_set_symlink_physical = archive_read_disk_set_symlink_physical();
      sub_10031FDCC(v5, disk_set_symlink_physical, "Failed to set to physical");
      return v5;
    }

    if (a3 == 3)
    {
      *(result + 24) = archive_write_disk_new();
      *(v5 + 32) = a4;
      *(v5 + 40) = 3;
      archive_write_disk_set_options();
      return v5;
    }
  }

  else
  {
    if (!a3)
    {
      *(result + 24) = archive_read_new();
      *(v5 + 32) = a4;
      *(v5 + 40) = 0;
      sub_10031E5FC(v5, SHIDWORD(a4));
      return v5;
    }

    if (a3 == 1)
    {
      *(result + 24) = archive_write_new();
      *(v5 + 32) = a4;
      *(v5 + 40) = 1;
      sub_10031E718(v5, SHIDWORD(a4));
      return v5;
    }
  }

  *(result + 32) = a4;
  *(result + 40) = a3;
  return result;
}

void sub_10031E5BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031E5FC(uint64_t result, int a2)
{
  switch(a2)
  {
    case 2:
      v12 = *(result + 24);
      v13 = result;
      support_format_zip = archive_read_support_format_zip();

      return sub_10031FCDC(v13, support_format_zip, "Failed to setup file for zip format");
    case 1:
      v7 = *(result + 24);
      v8 = result;
      support_format_raw = archive_read_support_format_raw();
      sub_10031FA0C(v8, support_format_raw, "Failed to setup raw gz file format");
      v10 = *(v8 + 24);
      support_filter_gzip = archive_read_support_filter_gzip();

      return sub_10031FBEC(v8, support_filter_gzip, "Failed to setup file for gzip compression");
    case 0:
      v2 = *(result + 24);
      v3 = result;
      v4 = archive_read_support_format_raw();
      sub_10031FA0C(v3, v4, "Failed to setup raw xz file format");
      v5 = *(v3 + 24);
      support_filter_xz = archive_read_support_filter_xz();

      return sub_10031FAFC(v3, support_filter_xz, "Failed to setup file for xz compression");
  }

  return result;
}

uint64_t sub_10031E718(uint64_t result, int a2)
{
  switch(a2)
  {
    case 2:
      v2 = *(result + 24);
      v3 = result;
      v4 = archive_write_set_format_zip();

      return sub_10031F2D4(v3, v4, "Failed to set archive as zip");
    case 0:
      v5 = *(result + 24);
      v6 = result;
      v7 = archive_write_add_filter_xz();
      sub_10031FAFC(v6, v7, "Failed to set archive as xz file format");
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v13, "cannot write gzip archive at the moment");
      std::runtime_error::runtime_error(&v14, &v13);
      v14.__vftable = &off_1004336A0;
      sub_10010A984(v11);
    case 1:
      v8 = *(result + 24);
      v9 = result;
      v10 = archive_write_add_filter_gzip();
      sub_10031FAFC(v9, v10, "Failed to set archive as gz file format");
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v13, "cannot write gzip archive at the moment");
      std::runtime_error::runtime_error(&v14, &v13);
      v14.__vftable = &off_1004336A0;
      sub_10010A984(v12);
  }

  return result;
}

void sub_10031E914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error((v21 - 48));
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_10031E9A4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = *(a1 + 40);
    if (v1 > 1)
    {
      if (v1 == 3)
      {
        goto LABEL_11;
      }

      if (v1 != 2)
      {
        return;
      }
    }

    else if (v1)
    {
      if (v1 != 1)
      {
        return;
      }

LABEL_11:
      if (qword_10045B050 == -1)
      {
        v3 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
LABEL_13:
          v4 = a1;
          if (*(a1 + 23) < 0)
          {
            v4 = *a1;
          }

          v5 = 136315138;
          v6 = v4;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "WARNING: File %s not gracefully closed - closing", &v5, 0xCu);
        }
      }

      else
      {
        sub_10038755C();
        v3 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          goto LABEL_13;
        }
      }

      sub_10031ED84(a1);
      return;
    }

    sub_10031EB48(a1);
  }
}

uint64_t sub_10031EAFC(uint64_t a1)
{
  sub_10031E9A4(a1);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10031EB48(uint64_t *a1)
{
  v1 = a1;
  if (((*(a1 + 10) - 1) & 0xFFFFFFFD) == 0)
  {
    sub_1003846E0(__p, buf);
    sub_10003F5D0(__p);
  }

  if (a1[3])
  {
    close = archive_read_close();
    if (close)
    {
      if (qword_10045B050 != -1)
      {
        sub_100387570();
      }

      v3 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        v4 = v1;
        if (*(v1 + 23) < 0)
        {
          v4 = *v1;
        }

        *buf = 136380931;
        v15 = v4;
        v16 = 1024;
        v17 = close;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to close handle for %{private}s: %d", buf, 0x12u);
      }
    }

    v5 = v1[3];
    free = archive_read_free();
    v1[3] = 0;
    if (free)
    {
      if (qword_10045B050 != -1)
      {
        sub_100387570();
      }

      v7 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        if (*(v1 + 23) < 0)
        {
          v1 = *v1;
        }

        *buf = 136380931;
        v15 = v1;
        v16 = 1024;
        v17 = free;
        v8 = "Failed to finish reading %{private}s: %d";
        v9 = v7;
        v10 = OS_LOG_TYPE_ERROR;
        v11 = 18;
        goto LABEL_21;
      }
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100387570();
    }

    v12 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v8 = "WARNING: Archive already closed for reading";
      v9 = v12;
      v10 = OS_LOG_TYPE_INFO;
      v11 = 2;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, buf, v11);
    }
  }
}

void sub_10031ED5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031ED84(uint64_t a1)
{
  if (((*(a1 + 40) - 1) & 0xFFFFFFFD) != 0)
  {
    sub_1003846E0(__p, buf);
    sub_10003F5D0(__p);
  }

  if (*(a1 + 24))
  {
    v2 = archive_write_close();
    sub_10031F4B4(a1, v2, "Failed to close archive");
    v3 = *(a1 + 24);
    archive_read_free();
    *(a1 + 24) = 0;
    return;
  }

  if (qword_10045B050 == -1)
  {
    v4 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
LABEL_7:
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "WARNING: Archive already closed for writing", buf, 2u);
    }
  }

  else
  {
    sub_100387570();
    v4 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }
  }
}

void sub_10031EE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031EED8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      v6 = *(result + 24);
      if (*(v1 + 23) < 0)
      {
        v7 = *v1;
      }

      v8 = archive_write_open_filename();

      return sub_10031F3C4(v1, v8, "Failed to open directory for writing");
    }

    else if (v2 == 2)
    {
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&__p, "Cannot open a directory for reading");
      std::runtime_error::runtime_error(&v15, &__p);
      v15.__vftable = &off_1004338D0;
      sub_10010A984(v14);
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(result + 24);
      if (*(v1 + 23) < 0)
      {
        v4 = *v1;
      }

      v5 = archive_write_open_filename();

      return sub_10031F2D4(v1, v5, "Failed open file for writing");
    }
  }

  else
  {
    v9 = *(result + 24);
    if (*(v1 + 23) < 0)
    {
      v10 = *v1;
    }

    open_filename = archive_read_open_filename();
    result = sub_10031F1E4(v1, open_filename, "Failed to open file for reading");
    if (*(v1 + 32) == 1)
    {
      v12 = *(v1 + 24);
      result = archive_filter_code();
      v13 = *(v1 + 36);
      LODWORD(v15.__vftable) = result;
      if (v13 != 2)
      {
        operator new();
      }
    }
  }

  return result;
}

void sub_10031F140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, std::runtime_error a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031F1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v19);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_10031F1E4(uint64_t result, unsigned int a2, std::string::value_type *__s)
{
  if (a2)
  {
    v3 = result;
    v7 = 0;
    LOBYTE(__p) = 0;
    memset(&v8, 0, sizeof(v8));
    std::string::assign(&v8, __s);
    sub_1000E661C(&__p, &v8, 1);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v7 < 0)
    {
      operator delete(__p);
    }

    sub_10031F5A4(v3, a2, &v5);
  }

  return result;
}

void sub_10031F2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031F2D4(uint64_t result, unsigned int a2, std::string::value_type *__s)
{
  if (a2)
  {
    v3 = result;
    v7 = 0;
    LOBYTE(__p) = 0;
    memset(&v8, 0, sizeof(v8));
    std::string::assign(&v8, __s);
    sub_1000E661C(&__p, &v8, 1);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v7 < 0)
    {
      operator delete(__p);
    }

    sub_10031F5A4(v3, a2, &v5);
  }

  return result;
}

void sub_10031F394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031F3C4(uint64_t result, unsigned int a2, std::string::value_type *__s)
{
  if (a2)
  {
    v3 = result;
    v7 = 0;
    LOBYTE(__p) = 0;
    memset(&v8, 0, sizeof(v8));
    std::string::assign(&v8, __s);
    sub_1000E661C(&__p, &v8, 1);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v7 < 0)
    {
      operator delete(__p);
    }

    sub_10031F5A4(v3, a2, &v5);
  }

  return result;
}

void sub_10031F484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031F4B4(uint64_t result, unsigned int a2, std::string::value_type *__s)
{
  if (a2)
  {
    v3 = result;
    v7 = 0;
    LOBYTE(__p) = 0;
    memset(&v8, 0, sizeof(v8));
    std::string::assign(&v8, __s);
    sub_1000E661C(&__p, &v8, 1);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v7 < 0)
    {
      operator delete(__p);
    }

    sub_10031F5A4(v3, a2, &v5);
  }

  return result;
}

void sub_10031F574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031F5A4(uint64_t a1, uint64_t a2, const void **a3)
{
  v5 = *(a1 + 24);
  v6 = archive_errno();
  v7 = v6;
  if (qword_10045B110 >> 1 == 0x595588BD12BF6FE8)
  {
    v8 = v6 != 0;
  }

  else
  {
    v8 = (boost::system::detail::system_cat_holder<void>::instance[6])(&boost::system::detail::system_cat_holder<void>::instance, v6);
  }

  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  if ((atomic_load_explicit(&qword_10045C200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10045C200))
  {
    __cxa_atexit(std::error_category::~error_category, &off_10045C1F8, &_mh_execute_header);
    __cxa_guard_release(&qword_10045C200);
  }

  v10 = *(a1 + 24);
  v11 = archive_error_string();
  __cxa_allocate_exception(0x60uLL);
  if (*(a3 + 23) >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = a3[1];
  }

  if (v12 + 2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  if (v12 + 2 >= 0x17)
  {
    operator new();
  }

  memset(&v19, 0, sizeof(v19));
  *(&v19.__r_.__value_.__s + 23) = v12 + 2;
  if (v12)
  {
    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    memmove(&v19, v13, v12);
  }

  strcpy(&v19 + v12, ": ");
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = "";
  }

  v15 = std::string::append(&v19, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v21 = v15->__r_.__value_.__r.__words[2];
  v20 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17[0] = v7;
  v17[1] = &boost::system::detail::system_cat_holder<void>::instance;
  v17[2] = v9;
  boost::filesystem::filesystem_error::filesystem_error(v22, &v20, v17);
  sub_10010A984(v18);
}

void sub_10031F8B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  *(v38 - 136) = &off_100431E10;
  v40 = *(v38 - 128);
  if (v40 && (*(*v40 + 32))(v40))
  {
    *(v38 - 128) = 0;
  }

  boost::filesystem::filesystem_error::~filesystem_error((v38 - 184));
  if (__p)
  {
    operator delete(__p);
    boost::filesystem::filesystem_error::~filesystem_error(&a37);
    if ((a36 & 0x80000000) == 0)
    {
LABEL_9:
      if (a30 < 0)
      {
        operator delete(a25);
      }

      __cxa_free_exception(v37);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    boost::filesystem::filesystem_error::~filesystem_error(&a37);
    if ((a36 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  operator delete(a31);
  goto LABEL_9;
}

void sub_10031F9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v27);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10031F9C0);
}

uint64_t sub_10031FA0C(uint64_t result, unsigned int a2, std::string::value_type *__s)
{
  if (a2)
  {
    v3 = result;
    v7 = 0;
    LOBYTE(__p) = 0;
    memset(&v8, 0, sizeof(v8));
    std::string::assign(&v8, __s);
    sub_1000E661C(&__p, &v8, 1);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v7 < 0)
    {
      operator delete(__p);
    }

    sub_10031F5A4(v3, a2, &v5);
  }

  return result;
}

void sub_10031FACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031FAFC(uint64_t result, unsigned int a2, std::string::value_type *__s)
{
  if (a2)
  {
    v3 = result;
    v7 = 0;
    LOBYTE(__p) = 0;
    memset(&v8, 0, sizeof(v8));
    std::string::assign(&v8, __s);
    sub_1000E661C(&__p, &v8, 1);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v7 < 0)
    {
      operator delete(__p);
    }

    sub_10031F5A4(v3, a2, &v5);
  }

  return result;
}

void sub_10031FBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031FBEC(uint64_t result, unsigned int a2, std::string::value_type *__s)
{
  if (a2)
  {
    v3 = result;
    v7 = 0;
    LOBYTE(__p) = 0;
    memset(&v8, 0, sizeof(v8));
    std::string::assign(&v8, __s);
    sub_1000E661C(&__p, &v8, 1);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v7 < 0)
    {
      operator delete(__p);
    }

    sub_10031F5A4(v3, a2, &v5);
  }

  return result;
}

void sub_10031FCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031FCDC(uint64_t result, unsigned int a2, std::string::value_type *__s)
{
  if (a2)
  {
    v3 = result;
    v7 = 0;
    LOBYTE(__p) = 0;
    memset(&v8, 0, sizeof(v8));
    std::string::assign(&v8, __s);
    sub_1000E661C(&__p, &v8, 1);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v7 < 0)
    {
      operator delete(__p);
    }

    sub_10031F5A4(v3, a2, &v5);
  }

  return result;
}

void sub_10031FD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031FDCC(uint64_t result, unsigned int a2, std::string::value_type *__s)
{
  if (a2)
  {
    v3 = result;
    v7 = 0;
    LOBYTE(__p) = 0;
    memset(&v8, 0, sizeof(v8));
    std::string::assign(&v8, __s);
    sub_1000E661C(&__p, &v8, 1);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v7 < 0)
    {
      operator delete(__p);
    }

    sub_10031F5A4(v3, a2, &v5);
  }

  return result;
}

void sub_10031FE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031FEEC(uint64_t result, unsigned int a2, std::string::value_type *__s, unsigned int **a4, const std::string::value_type *a5, int *a6)
{
  if (a2)
  {
    v25 = result;
    v29 = 0;
    LOBYTE(v28) = 0;
    memset(&v34, 0, sizeof(v34));
    std::string::assign(&v34, __s);
    memset(&v35, 0, sizeof(v35));
    if ((sub_10032029C(a4, &v35) & 1) == 0)
    {
      v16 = std::bad_cast::bad_cast(&v38);
      v38.__vftable = &off_100434090;
      sub_100049F88(v16);
    }

    memset(&v36, 0, sizeof(v36));
    std::string::assign(&v36, a5);
    p_p = &__p;
    memset(&__p, 0, sizeof(__p));
    v41 = &v38.__vftable + 2;
    v42 = &v40 + 7;
    v9 = *a6;
    if (*a6 >= 0)
    {
      v10 = *a6;
    }

    else
    {
      v10 = -v9;
    }

    v30 = v10;
    v31 = &v40 + 7;
    v32 = 48;
    v33 = 48;
    v11 = sub_1000E4C90(&v30);
    v12 = v11;
    if (v9 < 0)
    {
      *(v11 - 1) = 45;
      v12 = (v11 - 1);
    }

    v41 = v12;
    v42 = &v40 + 7;
    v13 = &v40 + 7 - v12;
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v15 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v15 >= v13)
      {
        v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
LABEL_16:
        if ((v17 & 0x80u) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

LABEL_18:
        if (v12 == (&v40 + 7))
        {
          v18 = p_p;
        }

        else
        {
          if (v13 < 0x20 || (p_p - v12) < 0x20)
          {
            v18 = p_p;
            v19 = v12;
          }

          else
          {
            v18 = (p_p + (v13 & 0xFFFFFFFFFFFFFFE0));
            v19 = v12 + (v13 & 0xFFFFFFFFFFFFFFE0);
            v20 = (v12 + 2);
            v21 = &p_p->__r_.__value_.__r.__words[2];
            v22 = v13 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v23 = *v20;
              *(v21 - 1) = *(v20 - 1);
              *v21 = v23;
              v20 += 2;
              v21 += 4;
              v22 -= 32;
            }

            while (v22);
            if (v13 == (v13 & 0xFFFFFFFFFFFFFFE0))
            {
              goto LABEL_28;
            }
          }

          do
          {
            v24 = *v19++;
            v18->__r_.__value_.__s.__data_[0] = v24;
            v18 = (v18 + 1);
          }

          while (v19 != &v40 + 7);
        }

LABEL_28:
        v18->__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          __p.__r_.__value_.__l.__size_ = &v40 + 7 - v12;
        }

        else
        {
          *(&__p.__r_.__value_.__s + 23) = v13 & 0x7F;
        }

        sub_1000E661C(&v28, &v34, 4);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_33;
          }
        }

        else if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_33:
          if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_34;
          }

          goto LABEL_40;
        }

        operator delete(v36.__r_.__value_.__l.__data_);
        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_34:
          operator delete(v35.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_41;
        }

LABEL_40:
        if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_35:
          if ((v29 & 0x80000000) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

LABEL_41:
        operator delete(v34.__r_.__value_.__l.__data_);
        if ((v29 & 0x80000000) == 0)
        {
LABEL_37:
          sub_10031F5A4(v25, a2, &v38.__vftable);
        }

LABEL_36:
        operator delete(v28);
        goto LABEL_37;
      }

      size = __p.__r_.__value_.__l.__size_;
    }

    else
    {
      if (v13 <= 0x16)
      {
        goto LABEL_18;
      }

      v15 = 22;
    }

    std::string::__grow_by(&__p, v15, v13 - v15, size, 0, size, 0);
    __p.__r_.__value_.__l.__size_ = 0;
    LOBYTE(v17) = *(&__p.__r_.__value_.__s + 23);
    goto LABEL_16;
  }

  return result;
}

void sub_1003201F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10032029C(unsigned int **a1, std::string *a2)
{
  v29 = 0u;
  v28 = 0u;
  *__p = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  std::locale::locale(&v24);
  v26 = 0uLL;
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0uLL;
  DWORD2(v29) = 24;
  *(&v24 + 1) = &__p[1];
  *&v25 = &__p[1];
  *(&v25 + 1) = &__p[1];
  *&v29 = &__p[1];
  std::string::resize(&__p[1], 0x16uLL, 0);
  v4 = HIBYTE(v28);
  if (v28 < 0)
  {
    v4 = v28;
  }

  *&v26 = &__p[1];
  *(&v26 + 1) = &__p[1];
  __p[0] = &__p[1] + v4;
  v25 = 0uLL;
  *(&v24 + 1) = 0;
  v23 = off_100433ED0;
  v31.__loc_ = 0;
  std::ios_base::init(&v31, &v23);
  v32 = 0;
  v33 = -1;
  v35 = &v34;
  v36 = &v34 + 2;
  sub_1003205F4(&v23, a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_26;
  }

  v8 = v35;
  v7 = v36;
  v9 = v36 - v35;
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v11 = a2;
    if (v9 <= 0x16)
    {
      goto LABEL_14;
    }

    v12 = 22;
    goto LABEL_9;
  }

  v13 = a2->__r_.__value_.__r.__words[2];
  v12 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v12 < v9)
  {
    size = a2->__r_.__value_.__l.__size_;
LABEL_9:
    std::string::__grow_by(a2, v12, v9 - v12, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v14) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_11;
  }

  v14 = HIBYTE(v13);
LABEL_11:
  if ((v14 & 0x80u) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2->__r_.__value_.__r.__words[0];
  }

LABEL_14:
  if (v8 == v7)
  {
    v15 = v11;
  }

  else
  {
    if (v9 < 0x20 || (v11 - v8) < 0x20)
    {
      v15 = v11;
      v16 = v8;
    }

    else
    {
      v15 = (v11 + (v9 & 0xFFFFFFFFFFFFFFE0));
      v16 = &v8[v9 & 0xFFFFFFFFFFFFFFE0];
      v17 = (v8 + 16);
      v18 = &v11->__r_.__value_.__r.__words[2];
      v19 = v9 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 4;
        v19 -= 32;
      }

      while (v19);
      if (v9 == (v9 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_24;
      }
    }

    do
    {
      v21 = *v16++;
      v15->__r_.__value_.__s.__data_[0] = v21;
      v15 = (v15 + 1);
    }

    while (v16 != v7);
  }

LABEL_24:
  v15->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = v9;
    std::ostream::~ostream();
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  *(&a2->__r_.__value_.__s + 23) = v9 & 0x7F;
LABEL_26:
  std::ostream::~ostream();
  if (SHIBYTE(v28) < 0)
  {
LABEL_27:
    operator delete(__p[1]);
  }

LABEL_28:
  std::locale::~locale(&v24);
  return v6;
}

void sub_1003205CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v22 + 1);
  sub_10000D388(a1);
}

__n128 sub_1003205F4(__n128 *a1, unsigned int **a2)
{
  v4 = &a1[6].n128_u64[1];
  v5 = &a1[6].n128_i8[*(a1[6].n128_u64[1] - 24) + 8];
  v5->__exceptions_ = 1;
  std::ios_base::clear(v5, v5->__rdstate_);
  sub_1001FD6C4(a2);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_10003C2E4(v4, v6, v7);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(__p[0]);
    v8 = v9;
  }

  v10 = (*(v8 + *(*v8 - 24) + 32) & 5) == 0;
  result = *(*(v4 + *(a1[6].n128_u64[1] - 24) + 40) + 40);
  a1[17] = result;
  return result;
}

uint64_t sub_1003206EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  __cxa_begin_catch(exception_object);
  __cxa_end_catch();
  return 0;
}

void sub_100320744(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete();
}

void sub_100320788(int __val@<W1>, char *a2@<X8>)
{
  if (__val > -11)
  {
    switch(__val)
    {
      case -10:
        a2[23] = 5;
        strcpy(a2, "retry");
        return;
      case 0:
        a2[23] = 2;
        strcpy(a2, "ok");
        return;
      case 1:
        a2[23] = 3;
        *a2 = 6713189;
        return;
    }
  }

  else
  {
    switch(__val)
    {
      case -30:
        operator new();
      case -25:
        a2[23] = 15;
        strcpy(a2, "cannot complete");
        return;
      case -20:
        a2[23] = 4;
        strcpy(a2, "warn");
        return;
    }
  }

  std::to_string(&v4, __val);
  v3 = std::string::insert(&v4, 0, "unknown error code ");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_100320954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100320C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000C8FD8(va);
  _Unwind_Resume(a1);
}

void sub_100320C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000C8FD8(va1);
  _Unwind_Resume(a1);
}

void sub_100320CC4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10003BEA8(("P25tag_libarchive_error_code" & 0x7FFFFFFFFFFFFFFFLL), &v13);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4.__i_ = &v13;
  }

  else
  {
    v4.__i_ = v13.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v13, v4, 91);
  v14 = v13;
  memset(&v13, 0, sizeof(v13));
  v5 = std::string::append(&v14, "] = ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_10003BFA8(&v17);
  sub_10032103C(&v17, (a1 + 8));
  std::stringbuf::str();
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  std::locale::~locale(v19);
  std::ostream::~ostream();
  std::ios::~ios();
  if ((v12 & 0x80u) == 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v11[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v11[1];
  }

  v9 = std::string::append(&v15, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v16, 10);
  *a2 = v16;
  memset(&v16, 0, sizeof(v16));
  if (v12 < 0)
  {
    operator delete(v11[0]);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_14:
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(v13.__r_.__value_.__l.__data_);
    return;
  }

LABEL_19:
  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }
}

void sub_100320F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a40 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t sub_10032103C(void *a1, unsigned int *a2)
{
  v4 = (*(**(a2 + 1) + 16))(*(a2 + 1));
  v5 = strlen(v4);
  v6 = sub_10003C2E4(a1, v4, v5);
  v9 = 58;
  sub_10003C2E4(v6, &v9, 1);
  v7 = *a2;
  return std::ostream::operator<<();
}

void sub_100321358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100321514(va);
  _Unwind_Resume(a1);
}

void sub_10032136C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_100321514(va1);
  _Unwind_Resume(a1);
}

void sub_100321488(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1003214CC(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_100321514(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void sub_1003215C0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100321630()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

std::string *sub_1003216A0@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_10045D500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10045D500))
  {
    sub_1001BBE2C(&unk_10045D508, "[^a-f0-9]", 0);
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  return sub_1003217A8(a2, v5, v5 + v4, &unk_10045D508, "", 0);
}

void sub_10032178C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1003217A8(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6)
{
  v6 = a6;
  v9 = a2;
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v21 = a6;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  *v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  *__p = 0u;
  memset(v33, 0, sizeof(v33));
  sub_1001C64C4(a4, a2, a3, __p, a6);
  sub_1001C67D0(v22, v9, a3, __p, (v6 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v11 = v22[0];
  if (v22[1] == v22[0])
  {
    if ((v6 & 0x200) != 0)
    {
      goto LABEL_22;
    }

    for (; v9 != a3; ++v9)
    {
      std::string::push_back(a1, *v9);
    }
  }

  else
  {
    v12 = strlen(a5);
    if ((v6 & 0x200) != 0)
    {
      if ((v6 & 0x400) != 0)
      {
        a1 = sub_100321D08(v22, a1, a5, &a5[v12], v6);
        goto LABEL_21;
      }

      do
      {
        a1 = sub_100321D08(v22, a1, a5, &a5[v12], v6);
        v13 = v27;
        v14 = v28;
        sub_100321F98(v20);
      }

      while (v22[1] != v22[0]);
    }

    else
    {
      if ((v6 & 0x400) != 0)
      {
        v18 = v24;
        for (i = v25; v18 != i; ++v18)
        {
          std::string::push_back(a1, *v18);
        }

        a1 = sub_100321D08(v22, a1, a5, &a5[v12], v6);
        v13 = v27;
        v14 = v28;
        if ((v6 & 0x200) != 0)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      do
      {
        v15 = v24;
        for (j = v25; v15 != j; ++v15)
        {
          std::string::push_back(a1, *v15);
        }

        a1 = sub_100321D08(v22, a1, a5, &a5[v12], v6);
        v13 = v27;
        v14 = v28;
        sub_100321F98(v20);
      }

      while (v22[1] != v22[0]);
    }

    if ((v6 & 0x200) == 0)
    {
LABEL_17:
      while (v13 != v14)
      {
        std::string::push_back(a1, *v13++);
      }
    }
  }

LABEL_21:
  v11 = v22[0];
LABEL_22:
  if (v11)
  {
    v22[1] = v11;
    operator delete(v11);
  }

  return a1;
}

void sub_100321A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    v28 = a1;
    operator delete(__p);
    a1 = v28;
  }

  _Unwind_Resume(a1);
}

BOOL sub_100321A9C(uint64_t a1)
{
  v1 = *(a1 + 87);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 72);
  }

  if (v1)
  {
    return sub_100321ADC(a1 + 64);
  }

  v3 = *(a1 + 135);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 120);
  }

  return v3 == 32;
}

BOOL sub_100321ADC(uint64_t a1)
{
  sub_1003216A0(a1, &v7);
  if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) != 50)
    {
      return 0;
    }

    v1 = &v7;
    goto LABEL_6;
  }

  if (v7.__r_.__value_.__l.__size_ == 50)
  {
    v1 = v7.__r_.__value_.__r.__words[0];
LABEL_6:
    *(&__p.__r_.__value_.__s + 23) = 4;
    LODWORD(__p.__r_.__value_.__l.__data_) = HIDWORD(v1->__r_.__value_.__r.__words[0]);
    __p.__r_.__value_.__s.__data_[4] = 0;
    v2 = std::stoi(&__p, 0, 16);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = v2;
      operator delete(__p.__r_.__value_.__l.__data_);
      v3 = v5 == 533;
      if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v3;
      }
    }

    else
    {
      v3 = v2 == 533;
      if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v3;
      }
    }

    goto LABEL_12;
  }

  v3 = 0;
LABEL_12:
  operator delete(v7.__r_.__value_.__l.__data_);
  return v3;
}

void sub_100321BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t sub_100321C14(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (a2[1] - *a2 != 25 || *(v2 + 2) != 5378)
  {
    return 0;
  }

  sub_100305B38((v2 + 4), (v2 + 20));
  sub_1000E2C58(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = *(*a2 + 22);
  sub_100130308(a1, bswap32(*(*a2 + 20)) >> 16);
  sub_100130300(a1, bswap32(v5) >> 16);
  sub_1001302F8(a1, *(*a2 + 24));
  return 1;
}

void sub_100321CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100321D08(uint64_t a1, std::string *this, unsigned __int8 *a3, unsigned __int8 *a4, __int16 a5)
{
  v6 = a3;
  if ((a5 & 0x100) != 0)
  {
    if (a3 == a4)
    {
      return this;
    }

    while (1)
    {
      v10 = *v6;
      if (v10 == 92)
      {
        v9 = v6 + 1;
        if (v6 + 1 != a4)
        {
          v10 = *v9;
          if ((v10 - 48) <= 9)
          {
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) <= (v10 - 48))
            {
              v14 = a1 + 24;
            }

            else
            {
              v14 = *a1 + 24 * (v10 - 48);
            }

            v15 = *v14;
            v16 = *(v14 + 8);
            if (*v14 != v16)
            {
              do
              {
                v17 = *v15++;
                std::string::push_back(this, v17);
              }

              while (v15 != v16);
            }

            goto LABEL_9;
          }

          ++v6;
        }
      }

      else if (v10 == 38)
      {
        v11 = **a1;
        v12 = *(*a1 + 8);
        while (v11 != v12)
        {
          v13 = *v11++;
          std::string::push_back(this, v13);
        }

        goto LABEL_8;
      }

      std::string::push_back(this, v10);
LABEL_8:
      v9 = v6;
LABEL_9:
      v6 = v9 + 1;
      if (v9 + 1 == a4)
      {
        return this;
      }
    }
  }

  if (a3 != a4)
  {
    do
    {
      v18 = *v6;
      v19 = v6 + 1;
      if (v18 == 36 && v19 != a4)
      {
        v18 = *v19;
        if (v18 > 0x26)
        {
          if (v18 == 39)
          {
            v35 = *(a1 + 72);
            v36 = *(a1 + 80);
            while (v35 != v36)
            {
              v37 = *v35++;
              std::string::push_back(this, v37);
            }

            goto LABEL_26;
          }

          if (v18 == 96)
          {
            v24 = *(a1 + 48);
            v25 = *(a1 + 56);
            while (v24 != v25)
            {
              v26 = *v24++;
              std::string::push_back(this, v26);
            }

            goto LABEL_26;
          }
        }

        else
        {
          if (v18 == 36)
          {
            goto LABEL_25;
          }

          if (v18 == 38)
          {
            v21 = **a1;
            v22 = *(*a1 + 8);
            while (v21 != v22)
            {
              v23 = *v21++;
              std::string::push_back(this, v23);
            }

            goto LABEL_26;
          }
        }

        LODWORD(v27) = v18 - 48;
        if (v27 <= 9)
        {
          v27 = v27;
          if (v6 + 2 != a4)
          {
            v28 = v6[2];
            v29 = v28 - 48;
            v30 = v28 + 10 * v27 - 48;
            if (v29 > 9)
            {
              v19 = v6 + 1;
            }

            else
            {
              v27 = v30;
              v19 = v6 + 2;
            }
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) <= v27)
          {
            v31 = a1 + 24;
          }

          else
          {
            v31 = *a1 + 24 * v27;
          }

          v32 = *v31;
          v33 = *(v31 + 8);
          if (*v31 != v33)
          {
            do
            {
              v34 = *v32++;
              std::string::push_back(this, v34);
            }

            while (v32 != v33);
          }

          goto LABEL_26;
        }

        LOBYTE(v18) = 36;
      }

      v19 = v6;
LABEL_25:
      std::string::push_back(this, v18);
LABEL_26:
      v6 = v19 + 1;
    }

    while (v19 + 1 != a4);
  }

  return this;
}

uint64_t sub_100321F98(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(v3 - 8);
  v5 = v4 | 0x800;
  *(v3 - 8) = v4 | 0x800;
  if (*(v3 + 8) == v2)
  {
    v6 = (v3 + 24);
  }

  else
  {
    v6 = v2;
  }

  v7 = v6[1];
  if (*v6 != v7)
  {
    v8 = v6[1];
    goto LABEL_6;
  }

  v12 = *(a1 + 8);
  if (v12 == v7)
  {
    if (!v2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v13 = *(a1 + 16);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  *__p = 0u;
  memset(v17, 0, sizeof(v17));
  v14 = sub_1001C64C4(v13, v7, v12, __p, v4 | 0x860u);
  sub_1001C67D0(v3, v7, v12, __p, 1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    v5 = *(a1 + 24);
LABEL_6:
    *(a1 + 24) = v5 | 0x80;
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    *__p = 0u;
    memset(v17, 0, sizeof(v17));
    v11 = sub_1001C64C4(v9, v8, v10, __p, v5 | 0x80u);
    sub_1001C67D0(v3, v8, v10, __p, (v5 & 0x800) != 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v11)
    {
      *(a1 + 80) = v7;
      *(a1 + 96) = *(a1 + 88) != v7;
      return a1;
    }

    v2 = *v3;
    if (!*v3)
    {
LABEL_17:
      *(a1 + 128) = 0;
      *v3 = 0u;
      *(v3 + 16) = 0u;
      *(v3 + 25) = 0u;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      *(a1 + 136) = 0;
      return a1;
    }

LABEL_16:
    *(a1 + 40) = v2;
    operator delete(v2);
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    goto LABEL_17;
  }

  return a1;
}

void sub_100322164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100322184()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003221F4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100322270(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2;
  v5 = sub_100322330(a1);
  v6 = sub_100322870(v7);
  sub_100322B9C(a3, v5, v6);
}

id sub_100322330(void *a1)
{
  v1 = a1;
  v2 = v1;
  memset(&v32, 0, sizeof(v32));
  memset(&v31, 0, sizeof(v31));
  v30 = 0;
  if (v1)
  {
    v3 = [v1 scheme];
    v4 = [v3 UTF8String];
    v5 = strlen(v4);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_10000D39C();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v5;
    if (v5)
    {
      memmove(&__dst, v4, v5);
      __dst.__r_.__value_.__s.__data_[v6] = 0;
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    operator delete(v32.__r_.__value_.__l.__data_);
LABEL_6:
    v32 = __dst;

    v7 = [v2 host];
    v8 = [v7 UTF8String];
    v9 = strlen(v8);
    if (v9 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_10000D39C();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v9;
    if (v9)
    {
      memmove(&__dst, v8, v9);
      __dst.__r_.__value_.__s.__data_[v10] = 0;
      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_10:
        v31 = __dst;

        v11 = [v2 port];
        v30 = [v11 unsignedIntValue];

        goto LABEL_18;
      }
    }

    operator delete(v31.__r_.__value_.__l.__data_);
    goto LABEL_10;
  }

  if (byte_10045DEAF >= 0)
  {
    v12 = &qword_10045DE98;
  }

  else
  {
    v12 = qword_10045DE98;
  }

  std::string::assign(&v32, v12);
  if (byte_10045DEC7 >= 0)
  {
    v13 = &qword_10045DEB0;
  }

  else
  {
    v13 = qword_10045DEB0;
  }

  std::string::assign(&v31, v13);
  v30 = dword_10045DEE0;
LABEL_18:
  __p.__r_.__value_.__r.__words[0] = sub_1000DD3D8();
  __p.__r_.__value_.__s.__data_[8] = v14;
  sub_100322CE0(&__p, &v32, &__dst);
  v26 = sub_1000DD3B8();
  v27 = v15;
  sub_100322CE0(&v26, &v31, &__p);
  v26 = sub_1000DD3C8();
  v27 = v16;
  v17 = sub_100251EF4(&v26, &v30);
  v18 = objc_alloc_init(NSURLComponents);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v20 = [NSString stringWithUTF8String:p_dst];
  [v18 setScheme:v20];

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v22 = [NSString stringWithUTF8String:p_p];
  [v18 setHost:v22];

  if (v17)
  {
    v23 = [NSNumber numberWithUnsignedInt:v17];
    [v18 setPort:v23];
  }

  v24 = [v18 URL];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_28:
      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

LABEL_35:
      operator delete(v31.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_36;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_35;
  }

LABEL_29:
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_36:
  operator delete(v32.__r_.__value_.__l.__data_);
LABEL_30:

  return v24;
}

void sub_100322710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 __p, int a12, __int16 a13, char a14, char a15, uint64_t a16, __int128 a17, int a18, __int16 a19, char a20, char a21, int a22, int a23, __int128 a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a24);
    if ((*(v31 - 73) & 0x80000000) == 0)
    {
LABEL_7:

      _Unwind_Resume(a1);
    }
  }

  else if ((*(v31 - 73) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(v31 - 96));

  _Unwind_Resume(a1);
}

id sub_100322870(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v15 = sub_1000DD3E8();
    v16 = v2;
    v3 = [v1 UTF8String];
    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_10000D39C();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    v14 = v4;
    if (v4)
    {
      memmove(&__dst, v3, v4);
    }

    *(&__dst + v5) = 0;
    sub_100322CE0(&v15, &__dst, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v15 = sub_1000DD3E8();
    v16 = v6;
    if (byte_10045DEDF >= 0)
    {
      v7 = &qword_10045DEC8;
    }

    else
    {
      v7 = qword_10045DEC8;
    }

    v8 = strlen(v7);
    if (v8 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_10000D39C();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    v14 = v8;
    if (v8)
    {
      memmove(&__dst, v7, v8);
    }

    *(&__dst + v9) = 0;
    sub_100322CE0(&v15, &__dst, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }
  }

  v11 = [NSString stringWithUTF8String:p_p];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(__dst);
LABEL_25:

  return v11;
}

void sub_100322AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, __int128 a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, __int128 __p, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a10);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100322B9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  std::operator+<char>();
  *(a1 + 24) = 0;
  v7 = v5;
  *(a1 + 32) = v7;
  v8 = objc_alloc_init(NSURLComponents);
  v9 = *(a1 + 24);
  *(a1 + 24) = v8;

  [*(a1 + 24) setPath:v6];
  return a1;
}

void sub_100322C44(_Unwind_Exception *a1)
{
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

id sub_100322C78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 24) path];
  v3 = [v1 URLByAppendingPathComponent:v2];

  return v3;
}

void sub_100322CE0(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  sub_100003AE8(*a1);
  if (LODWORD(__str.__r_.__value_.__l.__data_) == SLODWORD(__str.__r_.__value_.__l.__data_) >> 31)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100003228(a3, *a2, *(a2 + 8));
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *a2;
      a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }
  }

  else
  {
    sub_10032301C(&__str, a3);
    if ((*(a1 + 8) & 1) == 0)
    {
      if (qword_10045B050 != -1)
      {
        sub_100387598();
      }

      v6 = qword_10045B058;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *a1;
        sub_1000D8264(&__str, __p);
        if (v10 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        *buf = 136315394;
        v12 = v7;
        v13 = 2080;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "developer override of %s with %s", buf, 0x16u);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(a1 + 8) = 1;
    }
  }

  sub_100005B18(&__str);
}

id sub_100322FC4()
{
  if (qword_10045B050 == -1)
  {
    v1 = qword_10045B058;
  }

  else
  {
    sub_1003875C0();
    v1 = qword_10045B058;
  }

  return v1;
}

void sub_10032301C(std::string *__str@<X0>, std::string *a2@<X8>)
{
  data = __str->__r_.__value_.__l.__data_;
  v3 = &__str->__r_.__value_.__r.__words[1];
  v5 = data ^ (data >> 31);
  if (v5 <= 2)
  {
    if (!v5)
    {

      sub_100323510();
    }

    if (v5 == 1)
    {
      v6 = v3->__r_.__value_.__l.__data_;
      a2->__r_.__value_.__l.__size_ = 0;
      a2->__r_.__value_.__r.__words[2] = 0;
      a2->__r_.__value_.__r.__words[0] = 0;
      v48 = &v45.__vftable + 2;
      v49 = &v47 + 7;
      if (v6 >= 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = -v6;
      }

      LODWORD(v41) = v7;
      v42 = &v47 + 7;
      v43 = 48;
      v44 = 48;
      v8 = sub_1000E4C90(&v41);
      v9 = v8;
      if (v6 < 0)
      {
        *(v8 - 1) = 45;
        v9 = (v8 - 1);
        v48 = (v8 - 1);
        v49 = &v47 + 7;
        v10 = &v47 - v8 + 8;
        size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        if ((size & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v48 = v8;
        v49 = &v47 + 7;
        v10 = &v47 - v8 + 7;
        size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        if ((size & 0x8000000000000000) == 0)
        {
LABEL_12:
          v12 = a2;
          if (v10 <= 0x16)
          {
            goto LABEL_45;
          }

          v13 = 22;
          goto LABEL_36;
        }
      }

      v23 = a2->__r_.__value_.__r.__words[2];
      v13 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v13 >= v10)
      {
        v24 = HIBYTE(v23);
LABEL_42:
        if ((v24 & 0x80u) == 0)
        {
          v12 = a2;
        }

        else
        {
          v12 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_45:
        if (v9 == (&v47 + 7))
        {
          v27 = v12;
          goto LABEL_55;
        }

        if (v10 < 0x20 || (v12 - v9) < 0x20)
        {
          v27 = v12;
          v28 = v9;
        }

        else
        {
          v27 = (v12 + (v10 & 0xFFFFFFFFFFFFFFE0));
          v28 = v9 + (v10 & 0xFFFFFFFFFFFFFFE0);
          v29 = (v9 + 2);
          v30 = &v12->__r_.__value_.__r.__words[2];
          v31 = v10 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v32 = *v29;
            *(v30 - 1) = *(v29 - 1);
            *v30 = v32;
            v29 += 2;
            v30 += 4;
            v31 -= 32;
          }

          while (v31);
          if (v10 == (v10 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_55:
            v27->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_56:
              a2->__r_.__value_.__l.__size_ = v10;
              return;
            }

LABEL_72:
            *(&a2->__r_.__value_.__s + 23) = v10 & 0x7F;
            return;
          }
        }

        do
        {
          v33 = *v28++;
          v27->__r_.__value_.__s.__data_[0] = v33;
          v27 = (v27 + 1);
        }

        while (v28 != &v47 + 7);
        goto LABEL_55;
      }

      size = a2->__r_.__value_.__l.__size_;
LABEL_36:
      std::string::__grow_by(a2, v13, v10 - v13, size, 0, size, 0);
      a2->__r_.__value_.__l.__size_ = 0;
      LOBYTE(v24) = *(&a2->__r_.__value_.__s + 23);
      goto LABEL_42;
    }

    v15 = v3->__r_.__value_.__r.__words[0];
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    v51 = &v45.__vftable + 2;
    v52 = v50;
    if (v15 >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = -v15;
    }

    v41 = v16;
    v42 = v50;
    v43 = 48;
    v44 = 48;
    v17 = sub_1000E5EB8(&v41);
    v18 = v17;
    if (v15 < 0)
    {
      *(v17 - 1) = 45;
      v18 = (v17 - 1);
      v51 = (v17 - 1);
      v52 = v50;
      v10 = &v50[-v17 + 1];
      v19 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v51 = v17;
      v52 = v50;
      v10 = &v50[-v17];
      v19 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v19 & 0x8000000000000000) == 0)
      {
LABEL_26:
        v20 = a2;
        if (v10 <= 0x16)
        {
          goto LABEL_61;
        }

        v21 = 22;
        goto LABEL_40;
      }
    }

    v25 = a2->__r_.__value_.__r.__words[2];
    v21 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v21 >= v10)
    {
      v26 = HIBYTE(v25);
LABEL_58:
      if ((v26 & 0x80u) == 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = a2->__r_.__value_.__r.__words[0];
      }

LABEL_61:
      if (v18 == v50)
      {
        v34 = v20;
        goto LABEL_71;
      }

      if (v10 < 0x20 || (v20 - v18) < 0x20)
      {
        v34 = v20;
        v35 = v18;
      }

      else
      {
        v34 = (v20 + (v10 & 0xFFFFFFFFFFFFFFE0));
        v35 = &v18[v10 & 0xFFFFFFFFFFFFFFE0];
        v36 = (v18 + 16);
        v37 = &v20->__r_.__value_.__r.__words[2];
        v38 = v10 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v39 = *v36;
          *(v37 - 1) = *(v36 - 1);
          *v37 = v39;
          v36 += 2;
          v37 += 4;
          v38 -= 32;
        }

        while (v38);
        if (v10 == (v10 & 0xFFFFFFFFFFFFFFE0))
        {
LABEL_71:
          v34->__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_56;
          }

          goto LABEL_72;
        }
      }

      do
      {
        v40 = *v35++;
        v34->__r_.__value_.__s.__data_[0] = v40;
        v34 = (v34 + 1);
      }

      while (v35 != v50);
      goto LABEL_71;
    }

    v19 = a2->__r_.__value_.__l.__size_;
LABEL_40:
    std::string::__grow_by(a2, v21, v10 - v21, v19, 0, v19, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v26) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_58;
  }

  if (v5 > 4)
  {
    if (v5 == 5)
    {
      v14 = v3->__r_.__value_.__r.__words[0];

      sub_100323694();
    }

    v22 = v3->__r_.__value_.__r.__words[0];

    sub_100323818();
  }

  if (v5 == 3)
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    std::string::operator=(a2, v3);
  }

  else
  {
    v41 = v3->__r_.__value_.__r.__words[0];
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    if ((sub_1000DE4DC(&v41, a2) & 1) == 0)
    {
      std::bad_cast::bad_cast(&v45);
      v45.__vftable = &off_100434090;
      sub_100049F88(&v45);
    }
  }
}

void sub_1003234D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::bad_cast a12)
{
  std::bad_cast::~bad_cast(&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void sub_1003235F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

void sub_10032365C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10032364CLL);
}

void sub_100323778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

void sub_1003237E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1003237D0);
}

void sub_1003238FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
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

void sub_100323964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x100323954);
}

void sub_10032399C(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_1003239E0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100323A50()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100323AC0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100323AE8(signed int a1@<W0>, std::string *a2@<X8>)
{
  v13 = a1;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v3 = qword_10045E1D8;
  if (qword_10045E1D8)
  {
    v4 = &qword_10045E1D8;
    do
    {
      if (*(v3 + 32) >= a1)
      {
        v4 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a1));
    }

    while (v3);
    if (v4 != &qword_10045E1D8 && *(v4 + 8) <= a1)
    {
      std::string::assign(a2, v4[5]);
      return;
    }
  }

  std::string::assign(a2, "out-of-range '");
  memset(&v10, 0, sizeof(v10));
  if ((sub_1000D453C(&v13, &v10) & 1) == 0)
  {
    v9 = std::bad_cast::bad_cast(&v14);
    v14.__vftable = &off_100434090;
    sub_100049F88(v9);
  }

  v5 = std::string::append(&v10, "'");
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

  std::string::append(a2, v7, v8);
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v10.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_19;
  }
}

void sub_100323C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v21 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((*(v21 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v21);
  _Unwind_Resume(exception_object);
}

void *sub_100323CFC(void *a1, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v2 = "screen-recording";
      v3 = 16;
    }

    else
    {
      v2 = "front-facing-camera";
      v3 = 19;
    }
  }

  else
  {
    v2 = "rear-facing-camera";
    v3 = 18;
  }

  return sub_10003C2E4(a1, v2, v3);
}

void sub_100323D38(uint64_t a1, unsigned int a2, uint64_t a3)
{
  sub_10012A244(a1, a3);
  *(v4 + 96) = a2;
  if (a2 > 0xF || ((1 << a2) & 0xB41C) == 0)
  {
    sub_100323AE8(a2, &v11);
    if (qword_10045B050 != -1)
    {
      sub_1003875D4();
    }

    v5 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
    {
      v6 = &v11;
      if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v6 = v11.__r_.__value_.__r.__words[0];
      }

      *buf = 68289795;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = v6;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "0";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unsupported sensor type, sensorType:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_10045B050 != -1)
      {
        goto LABEL_18;
      }
    }

    v7 = qword_10045B058;
    if (os_signpost_enabled(qword_10045B058))
    {
      goto LABEL_10;
    }

    while (1)
    {
LABEL_13:
      v9 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
LABEL_14:
        v10 = &v11;
        if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v10 = v11.__r_.__value_.__r.__words[0];
        }

        *buf = 68289795;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2082;
        v17 = v10;
        v18 = 2082;
        v19 = "assert";
        v20 = 2081;
        v21 = "0";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unsupported sensor type, sensorType:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      while (1)
      {
        abort_report_np();
        __break(1u);
LABEL_18:
        sub_1003875D4();
        v7 = qword_10045B058;
        if (!os_signpost_enabled(qword_10045B058))
        {
          break;
        }

LABEL_10:
        v8 = &v11;
        if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v8 = v11.__r_.__value_.__r.__words[0];
        }

        *buf = 68289795;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2082;
        v17 = v8;
        v18 = 2082;
        v19 = "assert";
        v20 = 2081;
        v21 = "0";
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unsupported sensor type", "{msg%{public}.0s:Unsupported sensor type, sensorType:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        if (qword_10045B050 == -1)
        {
          goto LABEL_13;
        }

        sub_1003875D4();
        v9 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
        {
          goto LABEL_14;
        }
      }
    }
  }
}

void sub_100324018(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000D388(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10032402C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *&v23.__r_.__value_.__l.__data_ = 0uLL;
  v27 = &v25.__r_.__value_.__s.__data_[2];
  v28 = v26;
  v4 = *(a1 + 32);
  if (v4 >= 0)
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = -v4;
  }

  v23.__r_.__value_.__r.__words[2] = 0;
  v24.__r_.__value_.__r.__words[0] = v5;
  v24.__r_.__value_.__l.__size_ = v26;
  v24.__r_.__value_.__s.__data_[16] = 48;
  HIDWORD(v24.__r_.__value_.__r.__words[2]) = 48;
  v6 = sub_1000E5EB8(&v24);
  v7 = v6;
  if (v4 < 0)
  {
    *(v6 - 1) = 45;
    v7 = (v6 - 1);
    v27 = (v6 - 1);
    v28 = v26;
    v8 = &v26[-v6 + 1];
    if (v8 >= 0x17)
    {
LABEL_6:
      std::string::__grow_by(&v23, 0x16uLL, v8 - 22, 0, 0, 0, 0);
      v23.__r_.__value_.__l.__size_ = 0;
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v23;
      }

      else
      {
        v9 = v23.__r_.__value_.__r.__words[0];
      }

      if (v7 == v26)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v27 = v6;
    v28 = v26;
    v8 = &v26[-v6];
    if (&v26[-v6] >= 0x17)
    {
      goto LABEL_6;
    }
  }

  v9 = &v23;
  if (v7 == v26)
  {
LABEL_10:
    v10 = v9;
    goto LABEL_21;
  }

LABEL_13:
  if (v8 < 0x20 || (v9 - v7) < 0x20)
  {
    v10 = v9;
    v11 = v7;
  }

  else
  {
    v10 = (v9 + (v8 & 0xFFFFFFFFFFFFFFE0));
    v11 = &v7[v8 & 0xFFFFFFFFFFFFFFE0];
    v12 = (v7 + 16);
    v13 = &v9->__r_.__value_.__r.__words[2];
    v14 = v8 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v15 = *v12;
      *(v13 - 1) = *(v12 - 1);
      *v13 = v15;
      v12 += 2;
      v13 += 4;
      v14 -= 32;
    }

    while (v14);
    if (v8 == (v8 & 0xFFFFFFFFFFFFFFE0))
    {
      goto LABEL_21;
    }
  }

  do
  {
    v16 = *v11++;
    v10->__r_.__value_.__s.__data_[0] = v16;
    v10 = (v10 + 1);
  }

  while (v11 != v26);
LABEL_21:
  v10->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    v23.__r_.__value_.__l.__size_ = v8;
  }

  else
  {
    *(&v23.__r_.__value_.__s + 23) = v8 & 0x7F;
  }

  sub_100323AE8(*(a1 + 96), &v25);
  std::operator+<char>();
  v17 = std::string::append(&__p, " @ ");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v23;
  }

  else
  {
    v19 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  v21 = std::string::append(&v24, v19, size);
  *a2 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_32:
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_33:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_38:
    operator delete(v23.__r_.__value_.__l.__data_);
    return;
  }

LABEL_37:
  operator delete(v25.__r_.__value_.__l.__data_);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_38;
  }
}

void sub_1003242CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(a21);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a32 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  operator delete(a27);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  operator delete(__p);
  goto LABEL_6;
}

void sub_100324354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if ((a17 & 0x80000000) == 0)
  {
    JUMPOUT(0x1003242F8);
  }

  JUMPOUT(0x1003242F0);
}

void sub_100324398(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v4, *(a1 + 32));
  v3 = std::string::insert(&v4, 0, "AttitudeX Input Event @ ");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_100324418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100324434(void *a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  sub_10012ACD0((a1 + 1), a2);
  return a1;
}

uint64_t sub_100324468(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  sub_1003251A8((a1 + 24), a4);
  return a1;
}

void *sub_1003244AC(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if ((*(a2 + 152) & 4) != 0)
  {
    operator new();
  }

  sub_100337488((a2 + 16), &__p);
  *a1 = v3;
  a1[1] = 0;
  a1[2] = 0;
  sub_1003251A8(a1 + 3, &__p);
  v4 = __p;
  if (__p)
  {
    for (i = v8; i != v4; i -= 88)
    {
      if (*(i - 48) == 1)
      {
        *(i - 48) = 0;
      }
    }

    v8 = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_1003245A8(void *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  sub_10000D388(a1);
}

void sub_100324628(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v12, *(a1 + 8));
  v4 = std::string::insert(&v12, 0, "AppOrientationInputEvent ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v13, " @ t=");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *a1);
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

  v10 = std::string::append(&v14, p_p, size);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_15:
    operator delete(v12.__r_.__value_.__l.__data_);
    return;
  }

LABEL_14:
  operator delete(v13.__r_.__value_.__l.__data_);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }
}

void sub_100324764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v26 - 25) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v26 - 25) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v26 - 48));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t sub_10032483C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  sub_100184308(a1 + 16, a4);
  return a1;
}

uint64_t sub_100324A00(uint64_t a1, uint64_t a2, uint64_t *a3, double a4, double a5, double a6)
{
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  sub_10030D87C(a1 + 8, *a3, a3[1], 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3));
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  return a1;
}

uint64_t sub_100324AA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *(a2 + 48);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = *(*(qword_10045DD30 + 48) + 40);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = *(qword_10045DB28 + 40);
    goto LABEL_4;
  }

  v4 = *(qword_10045DD30 + 40);
  v5 = *(a2 + 48);
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(v5 + 40);
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = *(v6 + 40);
  *a1 = *(v4 + 40);
  *(a1 + 8) = v7;
  sub_1000A8484(a1 + 16, v4);
  return a1;
}

uint64_t sub_100324B40(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a1 = *(a2 + 40);
  *(a1 + 8) = *a3;
  sub_1000A8484(a1 + 16, a2);
  return a1;
}

void *sub_100324BE4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    v4 = *(a2 + 48);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *(qword_10045DD30 + 40);
    v4 = *(a2 + 48);
    if (v4)
    {
LABEL_3:
      v5 = *(v4 + 40);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = *(*(qword_10045DB28 + 40) + 16);
      if (v6)
      {
        goto LABEL_5;
      }

LABEL_9:
      v6 = *(qword_10045DC78 + 16);
      goto LABEL_5;
    }
  }

  v5 = *(*(qword_10045DD30 + 48) + 40);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  *a1 = *(v3 + 40);
  sub_10005F210((a1 + 1), v6);
  sub_1000A8484((a1 + 14), v3);
  return a1;
}

void *sub_100324CA4(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = *(a2 + 40);
  sub_10005F210((a1 + 1), a3);
  sub_1000A8484((a1 + 14), a2);
  return a1;
}

void *sub_100324D50(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    v4 = *(a2 + 48);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *(qword_10045DD30 + 40);
    v4 = *(a2 + 48);
    if (v4)
    {
LABEL_3:
      v5 = *(v4 + 40);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = *(*(qword_10045DB28 + 40) + 32);
      if (v6)
      {
        goto LABEL_5;
      }

LABEL_9:
      v6 = *(qword_10045DC78 + 32);
      goto LABEL_5;
    }
  }

  v5 = *(*(qword_10045DD30 + 48) + 40);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(v5 + 32);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  *a1 = *(v3 + 40);
  sub_10006A4C4((a1 + 1), v6);
  sub_1000A8484((a1 + 10), v3);
  return a1;
}

void *sub_100324E10(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = *(a2 + 40);
  sub_10006A4C4((a1 + 1), a3);
  sub_1000A8484((a1 + 10), a2);
  return a1;
}

uint64_t sub_100324EBC(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  if (v4)
  {
    v5 = *(a3 + 48);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(qword_10045DD30 + 40);
    v5 = *(a3 + 48);
    if (v5)
    {
LABEL_3:
      v6 = *(v5 + 48);
      if (v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = *(*(qword_10045DB28 + 48) + 72);
      if (v7)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = *(qword_10045DCB0 + 72);
      goto LABEL_5;
    }
  }

  v6 = *(*(qword_10045DD30 + 48) + 48);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = *(v6 + 72);
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_5:
  *a1 = *(v4 + 40);
  *(a1 + 8) = a2;
  sub_1000B7078(a1 + 16, v7);
  sub_1000A8484(a1 + 176, v4);
  return a1;
}

uint64_t sub_100324F84(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *a1 = *(a3 + 40);
  *(a1 + 8) = a2;
  sub_1000B7078(a1 + 16, a4);
  sub_1000A8484(a1 + 176, a3);
  return a1;
}

void *sub_100325038(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    v4 = *(a2 + 48);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = *(*(qword_10045DD30 + 48) + 64);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = *(qword_10045DB28 + 64);
    goto LABEL_4;
  }

  v3 = *(qword_10045DD30 + 40);
  v4 = *(a2 + 48);
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = *(v4 + 64);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  *a1 = *(v3 + 40);
  sub_10006DAD8((a1 + 1), v5);
  sub_1000A82F0((a1 + 13));
  return a1;
}

void *sub_1003250D4(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = *(a2 + 40);
  sub_10006DAD8((a1 + 1), a3);
  sub_1000A82F0((a1 + 13));
  return a1;
}

void *sub_1003251A8(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x2E8BA2E8BA2E8BA3 * ((v2 - *a2) >> 3)) < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void ***sub_100325310(void ***a1)
{
  v1 = a1;
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v1;
      for (i = v2[1]; i != v3; i -= 88)
      {
        if (*(i - 48) == 1)
        {
          *(i - 48) = 0;
        }
      }

      v2[1] = v3;
      operator delete(v3);
      return v4;
    }
  }

  return v1;
}

void sub_100325384()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003253F4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100325488(uint64_t a1)
{
  v4 = [NSString ps_stringWithSTL:a1];
  v2 = +[NSThread currentThread];
  [v2 setName:v4];

  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  pthread_setname_np(v3);
}

void sub_10032553C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100325564(std::string *a1@<X0>, uint64_t a2@<X8>)
{
  memset(&v78, 0, sizeof(v78));
  std::string::reserve(&v78, 0xCuLL);
  v4 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1->__r_.__value_.__r.__words[0];
  }

  if (v4 < 0)
  {
    v7 = a1->__r_.__value_.__r.__words[0];
    size = a1->__r_.__value_.__l.__size_;
    v6 = (a1->__r_.__value_.__r.__words[0] + size);
    if (v6 - v5 < 2)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v6 = (a1 + v4);
    v7 = a1;
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (a1 + v4 - v5 <= 1)
    {
LABEL_96:
      std::operator+<char>();
      v57 = std::string::append(&v77, "'");
      v58 = v57->__r_.__value_.__r.__words[0];
      v79.__r_.__value_.__r.__words[0] = v57->__r_.__value_.__l.__size_;
      *(v79.__r_.__value_.__r.__words + 7) = *(&v57->__r_.__value_.__r.__words[1] + 7);
      v59 = HIBYTE(v57->__r_.__value_.__r.__words[2]);
      v57->__r_.__value_.__l.__size_ = 0;
      v57->__r_.__value_.__r.__words[2] = 0;
      v57->__r_.__value_.__r.__words[0] = 0;
      v80.__r_.__value_.__r.__words[0] = v79.__r_.__value_.__r.__words[0];
      v60 = *(v79.__r_.__value_.__r.__words + 7);
      *(v80.__r_.__value_.__r.__words + 7) = *(v79.__r_.__value_.__r.__words + 7);
      *a2 = 0;
      *(a2 + 55) = v60;
      v61 = v80.__r_.__value_.__r.__words[0];
      *(a2 + 40) = v58;
      *(a2 + 48) = v61;
      *(a2 + 63) = v59;
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_99;
      }

      v62 = v77.__r_.__value_.__r.__words[0];
      goto LABEL_98;
    }
  }

  v9 = (v7 + size);
  if (v5 == v6)
  {
LABEL_13:
    v10 = v9;
  }

  else
  {
    v10 = v5;
    while (1)
    {
      v11 = v10->__r_.__value_.__s.__data_[0];
      if (v11 == 45 || v11 == 58)
      {
        break;
      }

      v10 = (v10 + 1);
      if (v10 == v9)
      {
        goto LABEL_13;
      }
    }
  }

  v12 = a1->__r_.__value_.__r.__words[0];
  if (v4 < 0)
  {
    v4 = a1->__r_.__value_.__l.__size_;
  }

  else
  {
    v12 = a1;
  }

  if (v10 == (v12 + v4))
  {
    goto LABEL_96;
  }

  if (v10 - v5 == 1)
  {
    std::string::append(&v78, 1uLL, 48);
  }

  sub_1000C43B0(&v78, v5, v10);
  v13 = (&v10->__r_.__value_.__l.__data_ + 1);
  v14 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v16 = a1->__r_.__value_.__r.__words[0];
    v17 = a1->__r_.__value_.__l.__size_;
    v15 = (a1->__r_.__value_.__r.__words[0] + v17);
    if (v15 - v13 < 2)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v15 = (a1 + v14);
    v16 = a1;
    v17 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (a1 + v14 - v13 < 2)
    {
      goto LABEL_96;
    }
  }

  v18 = (v16 + v17);
  if (v13 == v15)
  {
LABEL_29:
    v19 = v18;
  }

  else
  {
    v19 = (&v10->__r_.__value_.__l.__data_ + 1);
    while (1)
    {
      v20 = v19->__r_.__value_.__s.__data_[0];
      if (v20 == 45 || v20 == 58)
      {
        break;
      }

      v19 = (v19 + 1);
      if (v19 == v18)
      {
        goto LABEL_29;
      }
    }
  }

  v21 = a1->__r_.__value_.__r.__words[0];
  if ((v14 & 0x80000000) != 0)
  {
    v14 = a1->__r_.__value_.__l.__size_;
  }

  else
  {
    v21 = a1;
  }

  if (v19 == (v21 + v14))
  {
    goto LABEL_96;
  }

  if (v19 - v13 == 1)
  {
    std::string::append(&v78, 1uLL, 48);
  }

  sub_1000C43B0(&v78, v13, v19);
  v22 = (&v19->__r_.__value_.__l.__data_ + 1);
  v23 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v23 & 0x8000000000000000) != 0)
  {
    v25 = a1->__r_.__value_.__r.__words[0];
    v26 = a1->__r_.__value_.__l.__size_;
    v24 = (a1->__r_.__value_.__r.__words[0] + v26);
    if (v24 - v22 < 2)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v24 = (a1 + v23);
    v25 = a1;
    v26 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (a1 + v23 - v22 < 2)
    {
      goto LABEL_96;
    }
  }

  v27 = (v25 + v26);
  if (v22 == v24)
  {
LABEL_45:
    v28 = v27;
  }

  else
  {
    v28 = (&v19->__r_.__value_.__l.__data_ + 1);
    while (1)
    {
      v29 = v28->__r_.__value_.__s.__data_[0];
      if (v29 == 45 || v29 == 58)
      {
        break;
      }

      v28 = (v28 + 1);
      if (v28 == v27)
      {
        goto LABEL_45;
      }
    }
  }

  v30 = a1->__r_.__value_.__r.__words[0];
  if ((v23 & 0x80000000) != 0)
  {
    v23 = a1->__r_.__value_.__l.__size_;
  }

  else
  {
    v30 = a1;
  }

  if (v28 == (v30 + v23))
  {
    goto LABEL_96;
  }

  if (v28 - v22 == 1)
  {
    std::string::append(&v78, 1uLL, 48);
  }

  sub_1000C43B0(&v78, v22, v28);
  v31 = (&v28->__r_.__value_.__l.__data_ + 1);
  v32 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v32 & 0x8000000000000000) != 0)
  {
    v35 = a1->__r_.__value_.__r.__words[0];
    v36 = a1->__r_.__value_.__l.__size_;
    v33 = (a1->__r_.__value_.__r.__words[0] + v36);
    v34 = v33 - v31;
  }

  else
  {
    v33 = (a1 + v32);
    v34 = a1 + v32 - v31;
    v35 = a1;
    v36 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  if (v34 < 2)
  {
    goto LABEL_96;
  }

  v37 = (v35 + v36);
  if (v31 == v33)
  {
LABEL_61:
    v38 = v37;
  }

  else
  {
    v38 = (&v28->__r_.__value_.__l.__data_ + 1);
    while (1)
    {
      v39 = v38->__r_.__value_.__s.__data_[0];
      if (v39 == 45 || v39 == 58)
      {
        break;
      }

      v38 = (v38 + 1);
      if (v38 == v37)
      {
        goto LABEL_61;
      }
    }
  }

  v40 = a1->__r_.__value_.__r.__words[0];
  if ((v32 & 0x80000000) != 0)
  {
    v32 = a1->__r_.__value_.__l.__size_;
  }

  else
  {
    v40 = a1;
  }

  if (v38 == (v40 + v32))
  {
    goto LABEL_96;
  }

  if (v38 - v31 == 1)
  {
    std::string::append(&v78, 1uLL, 48);
  }

  sub_1000C43B0(&v78, v31, v38);
  v41 = (&v38->__r_.__value_.__l.__data_ + 1);
  v42 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v42 & 0x8000000000000000) != 0)
  {
    v45 = a1->__r_.__value_.__r.__words[0];
    v46 = a1->__r_.__value_.__l.__size_;
    v43 = (a1->__r_.__value_.__r.__words[0] + v46);
    v44 = v43 - v41;
  }

  else
  {
    v43 = (a1 + v42);
    v44 = a1 + v42 - v41;
    v45 = a1;
    v46 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  if (v44 < 2)
  {
    goto LABEL_96;
  }

  v47 = (v45 + v46);
  if (v41 == v43)
  {
LABEL_78:
    v48 = v47;
  }

  else
  {
    v48 = (&v38->__r_.__value_.__l.__data_ + 1);
    while (1)
    {
      v49 = v48->__r_.__value_.__s.__data_[0];
      if (v49 == 45 || v49 == 58)
      {
        break;
      }

      v48 = (v48 + 1);
      if (v48 == v47)
      {
        goto LABEL_78;
      }
    }
  }

  v50 = a1->__r_.__value_.__r.__words[0];
  if ((v42 & 0x80000000) != 0)
  {
    v42 = a1->__r_.__value_.__l.__size_;
  }

  else
  {
    v50 = a1;
  }

  if (v48 == (v50 + v42))
  {
    goto LABEL_96;
  }

  if (v48 - v41 == 1)
  {
    std::string::append(&v78, 1uLL, 48);
  }

  sub_1000C43B0(&v78, v41, v48);
  v51 = (&v48->__r_.__value_.__l.__data_ + 1);
  v52 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v52 & 0x80u) == 0)
  {
    v53 = a1;
  }

  else
  {
    v53 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v52 & 0x80u) != 0)
  {
    v52 = a1->__r_.__value_.__l.__size_;
  }

  v54 = (v53 + v52);
  if ((v51 - (v53 + v52)) < 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_96;
  }

  if (v54 - v51 == 1)
  {
    std::string::append(&v78, 1uLL, 48);
  }

  sub_1000C43B0(&v78, v51, v54);
  v55 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v55 & 0x8000000000000000) == 0)
  {
    if (v54 != (a1 + v55))
    {
      v56 = a1;
      goto LABEL_104;
    }

LABEL_115:
    sub_100325D08(&v78, a2);
    goto LABEL_99;
  }

  v56 = a1->__r_.__value_.__r.__words[0];
  v55 = a1->__r_.__value_.__l.__size_;
  if (v54 == (a1->__r_.__value_.__r.__words[0] + v55))
  {
    goto LABEL_115;
  }

LABEL_104:
  std::to_string(&v76, v56 + v55 - v54);
  v63 = std::string::insert(&v76, 0, "Didn't parse BSSID fully.  Stopped at ");
  v64 = *&v63->__r_.__value_.__l.__data_;
  v79.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
  *&v79.__r_.__value_.__l.__data_ = v64;
  v63->__r_.__value_.__l.__size_ = 0;
  v63->__r_.__value_.__r.__words[2] = 0;
  v63->__r_.__value_.__r.__words[0] = 0;
  v65 = std::string::append(&v79, " in '");
  v66 = *&v65->__r_.__value_.__l.__data_;
  v80.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
  *&v80.__r_.__value_.__l.__data_ = v66;
  v65->__r_.__value_.__l.__size_ = 0;
  v65->__r_.__value_.__r.__words[2] = 0;
  v65->__r_.__value_.__r.__words[0] = 0;
  v67 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v67 >= 0)
  {
    v68 = a1;
  }

  else
  {
    v68 = a1->__r_.__value_.__r.__words[0];
  }

  if (v67 >= 0)
  {
    v69 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v69 = a1->__r_.__value_.__l.__size_;
  }

  v70 = std::string::append(&v80, v68, v69);
  v71 = *&v70->__r_.__value_.__l.__data_;
  v77.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
  *&v77.__r_.__value_.__l.__data_ = v71;
  v70->__r_.__value_.__l.__size_ = 0;
  v70->__r_.__value_.__r.__words[2] = 0;
  v70->__r_.__value_.__r.__words[0] = 0;
  v72 = std::string::append(&v77, "'");
  v73 = v72->__r_.__value_.__r.__words[0];
  v81[0] = v72->__r_.__value_.__l.__size_;
  *(v81 + 7) = *(&v72->__r_.__value_.__r.__words[1] + 7);
  v74 = HIBYTE(v72->__r_.__value_.__r.__words[2]);
  v72->__r_.__value_.__l.__size_ = 0;
  v72->__r_.__value_.__r.__words[2] = 0;
  v72->__r_.__value_.__r.__words[0] = 0;
  v82[0] = v81[0];
  *(v82 + 7) = *(v81 + 7);
  *a2 = 0;
  v75 = v82[0];
  *(a2 + 55) = *(v82 + 7);
  *(a2 + 40) = v73;
  *(a2 + 48) = v75;
  *(a2 + 63) = v74;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_112:
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_118;
    }
  }

  else if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_112;
  }

  operator delete(v80.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_113:
    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_119;
    }

    goto LABEL_99;
  }

LABEL_118:
  operator delete(v79.__r_.__value_.__l.__data_);
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_119:
    v62 = v76.__r_.__value_.__r.__words[0];
LABEL_98:
    operator delete(v62);
  }

LABEL_99:
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }
}