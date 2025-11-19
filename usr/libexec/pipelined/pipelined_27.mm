void sub_1001A5B54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a2 + 16) = *(a1 + 160);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 144) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_1001A5C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_1001A5C34(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(&v10, v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

void sub_1001A5D8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = **(a1 + 40);
  sub_10019566C();
}

void sub_1001A5E34(void *a1)
{
  std::mutex::unlock((v2 + 24));
  __cxa_begin_catch(a1);
  v4 = *(v1 + 32);
  std::current_exception();
  sub_1001A5EA4(v4, v5);
  std::exception_ptr::~exception_ptr(v5);
  __cxa_end_catch();
}

void sub_1001A5E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001A5EA4(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_100013504(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void sub_1001A5F08(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100196758(**(a1 + 40), *(*(a1 + 40) + 8), __p);
  if (!*v1)
  {
    sub_100013504(3u);
  }

  sub_1001A61A0(*v1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1001A5F6C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __cxa_begin_catch(a1);
  v17 = *(v16 + 32);
  std::current_exception();
  sub_1001A5FE0(v17, v18);
  std::exception_ptr::~exception_ptr(v18);
  __cxa_end_catch();
}

void sub_1001A5FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001A5FE0(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_100013504(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void sub_1001A6044(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_1001A60B0(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_1001A6130(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v1 = *(a1 + 144);
    if (v1)
    {
      *(a1 + 152) = v1;
      v2 = a1;
      operator delete(v1);
      a1 = v2;
    }
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_1001A61A0(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    sub_100013504(2u);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *a2;
  *(a1 + 160) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void sub_1001A6258(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a2 + 16) = *(a1 + 160);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 144) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_1001A6308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_1001A6338(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(&v10, v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

void sub_1001A6490(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Daemon");
  v2 = qword_10045B078;
  qword_10045B078 = v1;
}

void sub_1001A6510(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  v15 = *(v14 + 40);
  std::current_exception();
  v16.__ptr_ = v17;
  std::promise<void>::set_exception(v15, v16);
  std::exception_ptr::~exception_ptr(v17);
  __cxa_end_catch();
}

void sub_1001A6548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001A6564(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[2];
  sub_1002C74EC(*v1, v3);
}

void sub_1001A7414(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception_ptr a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a30 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_4:
      if ((a44 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(a18);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_6:
    *(v79 - 256) = v77;
    if ((*(v79 - 225) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a32);
  *(v79 - 256) = v77;
  if ((*(v79 - 225) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v79 - 248));
  if ((a50 & 0x80000000) == 0)
  {
LABEL_8:
    sub_10019FF4C((v79 - 176));
    v81 = a55;
    if (!a55)
    {
LABEL_17:
      std::runtime_error::~runtime_error(&a73);
      if (a72 < 0)
      {
        operator delete(a71.__vftable);
        if (a63 < 0)
        {
LABEL_25:
          operator delete(a58);
          if (a70 < 0)
          {
LABEL_26:
            operator delete(a65);
            if (*(v79 - 177) < 0)
            {
LABEL_27:
              operator delete(*(v79 - 200));
              if ((v78 & 1) == 0)
              {
                goto LABEL_29;
              }

              goto LABEL_28;
            }

LABEL_23:
            if (!v78)
            {
LABEL_29:
              if (a75 < 0)
              {
                operator delete(a74);
              }

              sub_1001A8150(&a13);
              sub_100118124(&a16);
              __cxa_begin_catch(a1);
              v82 = *(v75 + 40);
              std::current_exception();
              v83.__ptr_ = &a12;
              std::promise<void>::set_exception(v82, v83);
              std::exception_ptr::~exception_ptr(&a12);
              __cxa_end_catch();
              JUMPOUT(0x1001A6BF8);
            }

LABEL_28:
            __cxa_free_exception(v76);
            goto LABEL_29;
          }

LABEL_22:
          if (*(v79 - 177) < 0)
          {
            goto LABEL_27;
          }

          goto LABEL_23;
        }
      }

      else if (a63 < 0)
      {
        goto LABEL_25;
      }

      if (a70 < 0)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

LABEL_16:
    a56 = v81;
    operator delete(v81);
    goto LABEL_17;
  }

LABEL_15:
  operator delete(a45);
  sub_10019FF4C((v79 - 176));
  v81 = a55;
  if (!a55)
  {
    goto LABEL_17;
  }

  goto LABEL_16;
}

void sub_1001A7B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception_ptr a12)
{
  std::exception_ptr::~exception_ptr(&a12);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001A7B78(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1001A786CLL);
}

void sub_1001A7B84(sqlite3 **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    os_activity_scope_enter(v8, &state);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  objc_storeStrong((a4 + 16), a3);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sqlite3_prepare_v2(*a1, v11, v12, a4, 0);
  sub_100001838(v13, *a1);
  if (v13)
  {
    v14 = __error();
    sub_10023B1C8(*v14, &v27);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v23, " w/ ");
    v15 = std::string::insert(&v23, 0, "Failed to prepare query");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v22, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v27;
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v24, v17, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v26, &v25);
    v26.__vftable = &off_100440BD8;
    sub_10010A984(v21);
  }

  *(a4 + 8) = *a1;
  if (v9)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001A7ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a35 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a35 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a30);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a23);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_6:
    sub_10019FF4C((v71 - 184));
    v73 = a47;
    if (!a47)
    {
LABEL_14:
      std::runtime_error::~runtime_error((v71 - 200));
      if (*(v71 - 201) < 0)
      {
        operator delete(*(v71 - 224));
        if ((a55 & 0x80000000) == 0)
        {
LABEL_16:
          if ((a67 & 0x80000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        }
      }

      else if ((a55 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      operator delete(a50);
      if ((a67 & 0x80000000) == 0)
      {
LABEL_17:
        if (a61 < 0)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }

LABEL_22:
      operator delete(a62);
      if (a61 < 0)
      {
LABEL_18:
        operator delete(a56);
        if ((v70 & 1) == 0)
        {
LABEL_25:
          if (*(v71 - 97) < 0)
          {
            operator delete(*(v71 - 120));
            sub_1001A8150(v68);

            _Unwind_Resume(a1);
          }

          sub_1001A8150(v68);

          _Unwind_Resume(a1);
        }

LABEL_24:
        __cxa_free_exception(v69);
        goto LABEL_25;
      }

LABEL_23:
      if (!v70)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_13:
    operator delete(v73);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a37);
  sub_10019FF4C((v71 - 184));
  v73 = a47;
  if (!a47)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t sub_1001A8150(uint64_t a1)
{
  sub_1001AA8D0(a1);

  return a1;
}

uint64_t sub_1001A8184(uint64_t result, __int128 *a2)
{
  *result = off_100440860;
  if (*(a2 + 23) < 0)
  {
    v3 = result;
    sub_100003228((result + 8), *a2, *(a2 + 1));
    return v3;
  }

  else
  {
    v2 = *a2;
    *(result + 24) = *(a2 + 2);
    *(result + 8) = v2;
  }

  return result;
}

void sub_1001A81F8(sqlite3_stmt **a1, int a2, int a3)
{
  v6 = sqlite3_bind_zeroblob(*a1, a2, a3);
  sub_100001838(v6, a1[1]);
  if (v6)
  {
    v7 = __error();
    sub_10023B1C8(*v7, &v36);
    __cxa_allocate_exception(0x40uLL);
    std::to_string(&v29, a3);
    v8 = std::string::insert(&v29, 0, "Failed to bind zero blob of size ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v30, " to ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v28, a2);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v28;
    }

    else
    {
      v12 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v31, v12, size);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_1000474A4(v26, " w/ ");
    if ((v27 & 0x80u) == 0)
    {
      v16 = v26;
    }

    else
    {
      v16 = v26[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v17 = v27;
    }

    else
    {
      v17 = v26[1];
    }

    v18 = std::string::append(&v32, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v25, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v36;
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v25;
    }

    else
    {
      v20 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v25.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v33, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v35, &v34);
    v35.__vftable = &off_100440BD8;
    sub_10010A984(v24);
  }
}

void sub_1001A85C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a34 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a29);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a22);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v80 - 152));
    v82 = a52;
    if (!a52)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v80 - 168));
      if (*(v80 - 169) < 0)
      {
        operator delete(*(v80 - 192));
        if ((a60 & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v80 - 201) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_29;
        }
      }

      else if ((a60 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(a55);
      if ((*(v80 - 201) & 0x80000000) == 0)
      {
LABEL_19:
        if ((a66 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_30;
      }

LABEL_29:
      operator delete(*(v80 - 224));
      if ((a66 & 0x80000000) == 0)
      {
LABEL_20:
        if ((*(v80 - 233) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_31;
      }

LABEL_30:
      operator delete(a61);
      if ((*(v80 - 233) & 0x80000000) == 0)
      {
LABEL_21:
        if ((a72 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_32;
      }

LABEL_31:
      operator delete(*(v80 - 256));
      if ((a72 & 0x80000000) == 0)
      {
LABEL_22:
        if ((a78 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_33;
      }

LABEL_32:
      operator delete(a67);
      if ((a78 & 0x80000000) == 0)
      {
LABEL_23:
        if ((a76 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_34;
      }

LABEL_33:
      operator delete(a77);
      if ((a76 & 0x80000000) == 0)
      {
LABEL_24:
        if (a74 < 0)
        {
          goto LABEL_25;
        }

        goto LABEL_35;
      }

LABEL_34:
      operator delete(a75);
      if (a74 < 0)
      {
LABEL_25:
        operator delete(a73);
        if ((v79 & 1) == 0)
        {
LABEL_37:
          if (*(v80 - 65) < 0)
          {
            operator delete(*(v80 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_36:
        __cxa_free_exception(v78);
        goto LABEL_37;
      }

LABEL_35:
      if (!v79)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

LABEL_15:
    operator delete(v82);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a35);
  sub_10019FF4C((v80 - 152));
  v82 = a52;
  if (!a52)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

sqlite3_stmt *sub_1001A88B0@<X0>(sqlite3_stmt **a1@<X0>, _BYTE *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    v4 = sqlite3_sql(result);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = "<unknown query>";
    }

    result = strlen(v5);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v6 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    a2[23] = result;
    if (result)
    {
      result = memmove(a2, v5, result);
    }

    *(v6 + a2) = 0;
  }

  else
  {
    a2[23] = 8;
    strcpy(a2, "no query");
  }

  return result;
}

void sub_1001A89A8(sqlite3_stmt **a1, int a2, unint64_t a3)
{
  v6 = sqlite3_bind_int64(*a1, a2, a3);
  sub_100001838(v6, a1[1]);
  if (v6)
  {
    v7 = __error();
    sub_10023B1C8(*v7, &v36);
    __cxa_allocate_exception(0x40uLL);
    std::to_string(&v29, a3);
    v8 = std::string::insert(&v29, 0, "Failed to bind ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v30, " to ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v28, a2);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v28;
    }

    else
    {
      v12 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v31, v12, size);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_1000474A4(v26, " w/ ");
    if ((v27 & 0x80u) == 0)
    {
      v16 = v26;
    }

    else
    {
      v16 = v26[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v17 = v27;
    }

    else
    {
      v17 = v26[1];
    }

    v18 = std::string::append(&v32, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v25, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v36;
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v25;
    }

    else
    {
      v20 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v25.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v33, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v35, &v34);
    v35.__vftable = &off_100440BD8;
    sub_10010A984(v24);
  }
}

void sub_1001A8D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a34 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a29);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a22);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v80 - 152));
    v82 = a52;
    if (!a52)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v80 - 168));
      if (*(v80 - 169) < 0)
      {
        operator delete(*(v80 - 192));
        if ((a60 & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v80 - 201) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_29;
        }
      }

      else if ((a60 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(a55);
      if ((*(v80 - 201) & 0x80000000) == 0)
      {
LABEL_19:
        if ((a66 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_30;
      }

LABEL_29:
      operator delete(*(v80 - 224));
      if ((a66 & 0x80000000) == 0)
      {
LABEL_20:
        if ((*(v80 - 233) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_31;
      }

LABEL_30:
      operator delete(a61);
      if ((*(v80 - 233) & 0x80000000) == 0)
      {
LABEL_21:
        if ((a72 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_32;
      }

LABEL_31:
      operator delete(*(v80 - 256));
      if ((a72 & 0x80000000) == 0)
      {
LABEL_22:
        if ((a78 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_33;
      }

LABEL_32:
      operator delete(a67);
      if ((a78 & 0x80000000) == 0)
      {
LABEL_23:
        if ((a76 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_34;
      }

LABEL_33:
      operator delete(a77);
      if ((a76 & 0x80000000) == 0)
      {
LABEL_24:
        if (a74 < 0)
        {
          goto LABEL_25;
        }

        goto LABEL_35;
      }

LABEL_34:
      operator delete(a75);
      if (a74 < 0)
      {
LABEL_25:
        operator delete(a73);
        if ((v79 & 1) == 0)
        {
LABEL_37:
          if (*(v80 - 65) < 0)
          {
            operator delete(*(v80 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_36:
        __cxa_free_exception(v78);
        goto LABEL_37;
      }

LABEL_35:
      if (!v79)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

LABEL_15:
    operator delete(v82);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a35);
  sub_10019FF4C((v80 - 152));
  v82 = a52;
  if (!a52)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_1001A9060(std::runtime_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::runtime_error::runtime_error(&v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10.__vftable = &off_100440F00;
  v11 = off_100440F28;
  sub_1001A9E9C(&v16, &v10);
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

  sub_1001A9BBC();
}

void sub_1001A9384(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

uint64_t sub_1001A93AC(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  std::runtime_error::runtime_error(a1, a2)->__vftable = &off_100440F48;
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
  *a1 = &off_100440E60;
  *(a1 + 16) = off_100440E98;
  *(a1 + 56) = &off_100440ED0;
  return a1;
}

void sub_1001A94E0(std::runtime_error *a1)
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

void sub_1001A9814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001A0DEC(va);
  _Unwind_Resume(a1);
}

void sub_1001A9828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1001A0DEC(va1);
  _Unwind_Resume(a1);
}

void sub_1001A9AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001A2814(va);
  _Unwind_Resume(a1);
}

void sub_1001A9AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1001A2814(va1);
  _Unwind_Resume(a1);
}

void sub_1001A9B28(std::runtime_error *a1)
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

void sub_1001A9E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_1001A9E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A9E9C(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100440F48;
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
  *a1 = &off_100440E60;
  *(a1 + 16) = off_100440E98;
  *(a1 + 56) = &off_100440ED0;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_1001A9FF0(std::runtime_error *a1)
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

void sub_1001AA084(std::runtime_error *this)
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

void sub_1001AA1A4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1001A93AC(exception, a1);
}

void sub_1001AA200(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1001AA288(std::runtime_error *a1)
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

void sub_1001AA3B8(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1001A93AC(exception, a1 + v2);
}

void sub_1001AA42C(void *a1)
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

void sub_1001AA4CC(void *a1)
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

void sub_1001AA580(std::runtime_error *this)
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

void sub_1001AA620(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1001AA6A8(std::runtime_error *a1)
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

void sub_1001AA744(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_1001AA77C(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100440F48;
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
  *a1 = &off_100440E60;
  *(a1 + 16) = off_100440E98;
  *(a1 + 56) = &off_100440ED0;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_1001AA8D0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sqlite3_sql(v2);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = "<unknown query>";
    }

    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v11 = v5;
    if (v5)
    {
      memmove(__dst, v4, v5);
    }

    *(__dst + v6) = 0;
    v7 = sqlite3_finalize(*a1);
    if (v7)
    {
      if (qword_10045B080 != -1)
      {
        sub_100384BF8();
      }

      v8 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to finalize with %{public}d", buf, 8u);
      }
    }

    *a1 = 0;
    v9 = *(a1 + 16);
    if (v9)
    {
      *(a1 + 16) = 0;
    }

    if (v11 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_1001AAA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001AAA88(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 16));
    a1 = v2;
  }

  wireless_diagnostics::google::protobuf::io::CopyingOutputStream::~CopyingOutputStream(a1);
}

void sub_1001AAAE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (qword_10045B080 != -1)
  {
    sub_100384BF8();
  }

  v4 = qword_10045B088;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = sub_1002CC984(*v2);
    v6 = **(v2 + 8);
    buf[0].n128_u32[0] = 134218240;
    *(buf[0].n128_u64 + 4) = v5;
    buf[0].n128_u16[6] = 2048;
    *(&buf[0].n128_u64[1] + 6) = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Creating tile entry for BLOB with version %lld (locally %llu)", buf, 0x16u);
  }

  v7 = *(v3 + 40);
  *(&v72.__r_.__value_.__s + 23) = 13;
  strcpy(&v72, "REPLACE INTO ");
  v8 = std::string::append(&v72, "tile_data");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v79.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v79.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v79, " VALUES(?, ?, ?)");
  v11 = *&v10->__r_.__value_.__l.__data_;
  buf[1].n128_u64[0] = v10->__r_.__value_.__r.__words[2];
  buf[0] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  sub_1001AC338(v7, buf, 0, &pStmt);
  if ((buf[1].n128_i8[7] & 0x80000000) == 0)
  {
    if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_58:
    operator delete(v79.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_59:
    operator delete(v72.__r_.__value_.__l.__data_);
    goto LABEL_8;
  }

  operator delete(buf[0].n128_u64[0]);
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_58;
  }

LABEL_7:
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_59;
  }

LABEL_8:
  sub_1001AC938(&pStmt, 1, **(v2 + 8));
  v12 = sub_1002C7550(*v2);
  sub_1001ACFF0(&pStmt, 2, v12);
  v13 = sub_1002CE98C(*(v2 + 24));
  sub_1001ACFF0(&pStmt, 3, v13);
  while (1)
  {
    do
    {
      v14 = sqlite3_step(pStmt);
      v15 = v14;
    }

    while (v14 == 100);
    if (v14 == 101)
    {
      break;
    }

    if (v14 == 19)
    {
      if (qword_10045B080 == -1)
      {
        v55 = qword_10045B088;
        if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
        {
          goto LABEL_78;
        }

        goto LABEL_79;
      }

LABEL_99:
      sub_100384BD0();
      v55 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
      {
LABEL_78:
        buf[0].n128_u16[0] = 0;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Query constraint violation", buf, 2u);
      }

LABEL_79:
      __cxa_allocate_exception(0x40uLL);
      operator new();
    }

    sub_100001838(v14, db);
    if (v15)
    {
      v16 = __error();
      sub_10023B1C8(*v16, &__dst);
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v74, " w/ ");
      v17 = std::string::insert(&v74, 0, "Failed sqlite3_step");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v75.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v75.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(&v81, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v81 = __dst;
      }

      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v81;
      }

      else
      {
        v59 = v81.__r_.__value_.__r.__words[0];
      }

      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v81.__r_.__value_.__l.__size_;
      }

      v61 = std::string::append(&v75, v59, size);
      v62 = *&v61->__r_.__value_.__l.__data_;
      v76.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
      *&v76.__r_.__value_.__l.__data_ = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v77, &v76);
      v77.__vftable = &off_100440BD8;
      sub_10010A984(v80);
    }
  }

  v19 = sqlite3_reset(pStmt);
  sub_100001838(v19, db);
  if (v19)
  {
    v56 = __error();
    sub_10023B1C8(*v56, &__dst);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v74, " w/ ");
    v57 = std::string::insert(&v74, 0, "Failed to execute query");
    v58 = *&v57->__r_.__value_.__l.__data_;
    v75.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
    *&v75.__r_.__value_.__l.__data_ = v58;
    v57->__r_.__value_.__l.__size_ = 0;
    v57->__r_.__value_.__r.__words[2] = 0;
    v57->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v81, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v81 = __dst;
    }

    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = &v81;
    }

    else
    {
      v63 = v81.__r_.__value_.__r.__words[0];
    }

    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v64 = v81.__r_.__value_.__l.__size_;
    }

    v65 = std::string::append(&v75, v63, v64);
    v66 = *&v65->__r_.__value_.__l.__data_;
    v76.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
    *&v76.__r_.__value_.__l.__data_ = v66;
    v65->__r_.__value_.__l.__size_ = 0;
    v65->__r_.__value_.__r.__words[2] = 0;
    v65->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v77, &v76);
    v77.__vftable = &off_100440BD8;
    sub_10010A984(v80);
  }

  sub_1001AD6A8(&pStmt);

  if (qword_10045B080 != -1)
  {
    sub_100384BD0();
  }

  v20 = qword_10045B088;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = sub_1002CC984(*v2);
    v22 = **(v2 + 8);
    buf[0].n128_u32[0] = 134218240;
    *(buf[0].n128_u64 + 4) = v21;
    buf[0].n128_u16[6] = 2048;
    *(&buf[0].n128_u64[1] + 6) = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Writing tile header BLOB with version %lld (locally %llu)", buf, 0x16u);
  }

  sub_10023C59C(*(v3 + 40), "tile_data", "headers", **(v2 + 8), 1, &v71);
  v23 = sub_1002CC984(*v2);
  std::to_string(&v75, v23);
  v24 = std::string::insert(&v75, 0, "tile header with version ");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v76.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v76.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v76, " (locally ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v74, **(v2 + 8));
  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v74;
  }

  else
  {
    v28 = v74.__r_.__value_.__r.__words[0];
  }

  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = v74.__r_.__value_.__l.__size_;
  }

  v30 = std::string::append(&__dst, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v70.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v70.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v70, ")");
  v33 = v32->__r_.__value_.__r.__words[0];
  *(v81.__r_.__value_.__r.__words + 7) = *(&v32->__r_.__value_.__r.__words[1] + 7);
  v81.__r_.__value_.__r.__words[0] = v32->__r_.__value_.__l.__size_;
  v34 = HIBYTE(v32->__r_.__value_.__r.__words[2]);
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v35 = *v2;
  v72.__r_.__value_.__r.__words[0] = v33;
  v72.__r_.__value_.__l.__size_ = v81.__r_.__value_.__r.__words[0];
  *(&v72.__r_.__value_.__r.__words[1] + 7) = *(v81.__r_.__value_.__r.__words + 7);
  *(&v72.__r_.__value_.__s + 23) = v34;
  *(v81.__r_.__value_.__r.__words + 7) = 0;
  v81.__r_.__value_.__r.__words[0] = 0;
  sub_10024B4B0(buf, &v72, v71);
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::CopyingOutputStreamAdaptor(&v79, buf, -1);
  sub_1002C7670(v35);
  if ((wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::Flush(&v79) & 1) == 0)
  {
    sub_100384ED4();

    abort_report_np();
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(&v79);
  if (v83 < 0)
  {
    operator delete(buf[1].n128_u64[0]);
    wireless_diagnostics::google::protobuf::io::CopyingOutputStream::~CopyingOutputStream(buf);
    if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_31:
      if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_62;
    }
  }

  else
  {
    wireless_diagnostics::google::protobuf::io::CopyingOutputStream::~CopyingOutputStream(buf);
    if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  operator delete(v70.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_32:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_63;
  }

LABEL_62:
  operator delete(v74.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_33:
    if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_34:
    if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_65:
    operator delete(v75.__r_.__value_.__l.__data_);
    if (qword_10045B080 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_64:
  operator delete(v76.__r_.__value_.__l.__data_);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_65;
  }

LABEL_35:
  if (qword_10045B080 == -1)
  {
    goto LABEL_36;
  }

LABEL_66:
  sub_100384BD0();
LABEL_36:
  v36 = qword_10045B088;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = sub_1002CC984(*v2);
    v38 = **(v2 + 8);
    buf[0].n128_u32[0] = 134218240;
    *(buf[0].n128_u64 + 4) = v37;
    buf[0].n128_u16[6] = 2048;
    *(&buf[0].n128_u64[1] + 6) = v38;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Writing tile data BLOB with version %lld (locally %llu)", buf, 0x16u);
  }

  sub_10023C59C(*(v3 + 40), "tile_data", "tiles", **(v2 + 8), 1, buf);
  v39 = v71;
  *&v71 = buf[0].n128_u64[0];
  buf[0].n128_u64[0] = v39;
  sub_1001AF76C(buf);
  v40 = sub_1002CC984(*v2);
  std::to_string(&v75, v40);
  v41 = std::string::insert(&v75, 0, "tile data with version ");
  v42 = *&v41->__r_.__value_.__l.__data_;
  v76.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
  *&v76.__r_.__value_.__l.__data_ = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  v43 = std::string::append(&v76, " (locally ");
  v44 = *&v43->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v74, **(v2 + 8));
  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = &v74;
  }

  else
  {
    v45 = v74.__r_.__value_.__r.__words[0];
  }

  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v46 = v74.__r_.__value_.__l.__size_;
  }

  v47 = std::string::append(&__dst, v45, v46);
  v48 = *&v47->__r_.__value_.__l.__data_;
  v70.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
  *&v70.__r_.__value_.__l.__data_ = v48;
  v47->__r_.__value_.__l.__size_ = 0;
  v47->__r_.__value_.__r.__words[2] = 0;
  v47->__r_.__value_.__r.__words[0] = 0;
  v49 = std::string::append(&v70, ")");
  v50 = v49->__r_.__value_.__r.__words[0];
  *(v80 + 7) = *(&v49->__r_.__value_.__r.__words[1] + 7);
  v80[0] = v49->__r_.__value_.__l.__size_;
  v51 = HIBYTE(v49->__r_.__value_.__r.__words[2]);
  v49->__r_.__value_.__l.__size_ = 0;
  v49->__r_.__value_.__r.__words[2] = 0;
  v49->__r_.__value_.__r.__words[0] = 0;
  v52 = *(v2 + 24);
  v72.__r_.__value_.__r.__words[0] = v50;
  v72.__r_.__value_.__l.__size_ = v80[0];
  *(&v72.__r_.__value_.__r.__words[1] + 7) = *(v80 + 7);
  *(&v72.__r_.__value_.__s + 23) = v51;
  memset(v80, 0, 15);
  sub_10024B4B0(buf, &v72, v71);
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::CopyingOutputStreamAdaptor(&v79, buf, -1);
  sub_1002CE368(v52, &v79);
  if ((wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::Flush(&v79) & 1) == 0)
  {
    sub_100384FF0();

    abort_report_np();
    goto LABEL_98;
  }

  wireless_diagnostics::google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(&v79);
  if (v83 < 0)
  {
    operator delete(buf[1].n128_u64[0]);
    wireless_diagnostics::google::protobuf::io::CopyingOutputStream::~CopyingOutputStream(buf);
    if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_49:
      if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_69;
    }
  }

  else
  {
    wireless_diagnostics::google::protobuf::io::CopyingOutputStream::~CopyingOutputStream(buf);
    if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }
  }

  operator delete(v70.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_50:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_70;
  }

LABEL_69:
  operator delete(v74.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_51:
    if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_71;
  }

LABEL_70:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_52:
    if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

LABEL_72:
    operator delete(v75.__r_.__value_.__l.__data_);
    if (qword_10045B080 == -1)
    {
      goto LABEL_54;
    }

    goto LABEL_73;
  }

LABEL_71:
  operator delete(v76.__r_.__value_.__l.__data_);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_72;
  }

LABEL_53:
  if (qword_10045B080 == -1)
  {
    goto LABEL_54;
  }

LABEL_73:
  sub_100384BD0();
LABEL_54:
  v53 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
  {
    v54 = **(v2 + 8);
    buf[0].n128_u32[0] = 134217984;
    *(buf[0].n128_u64 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Tile with version %llu saved successfully", buf, 0xCu);
  }

  sub_1001AF76C(&v71);
  std::promise<void>::set_value(*(a1 + 40));
}

void sub_1001ABBB8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception_ptr a12, char a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a28 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_4:
      if ((a42 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(a16);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a35 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a37);
  if ((a35 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a75 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a30);
  if ((a75 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a48 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a74);
  if ((a48 & 0x80000000) == 0)
  {
LABEL_8:
    sub_10019FF4C((v78 - 160));
    v80 = *(v78 - 216);
    if (!v80)
    {
LABEL_17:
      std::runtime_error::~runtime_error(&a71);
      if (a70 < 0)
      {
        operator delete(a66.__vftable);
        if (*(v78 - 169) < 0)
        {
LABEL_25:
          operator delete(*(v78 - 192));
          if (a64 < 0)
          {
LABEL_26:
            operator delete(a59);
            if (a58 < 0)
            {
LABEL_27:
              operator delete(a53);
              if ((v77 & 1) == 0)
              {
                goto LABEL_29;
              }

              goto LABEL_28;
            }

LABEL_23:
            if (!v77)
            {
LABEL_29:
              if (a73 < 0)
              {
                operator delete(a72);
              }

              sub_1001AC904(&a13);
              __cxa_begin_catch(a1);
              v81 = *(v75 + 40);
              std::current_exception();
              v82.__ptr_ = &a12;
              std::promise<void>::set_exception(v81, v82);
              std::exception_ptr::~exception_ptr(&a12);
              __cxa_end_catch();
              JUMPOUT(0x1001AB248);
            }

LABEL_28:
            __cxa_free_exception(v76);
            goto LABEL_29;
          }

LABEL_22:
          if (a58 < 0)
          {
            goto LABEL_27;
          }

          goto LABEL_23;
        }
      }

      else if (*(v78 - 169) < 0)
      {
        goto LABEL_25;
      }

      if (a64 < 0)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

LABEL_16:
    *(v78 - 208) = v80;
    operator delete(v80);
    goto LABEL_17;
  }

LABEL_15:
  operator delete(a43);
  sub_10019FF4C((v78 - 160));
  v80 = *(v78 - 216);
  if (!v80)
  {
    goto LABEL_17;
  }

  goto LABEL_16;
}

void sub_1001AC314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception_ptr a12)
{
  std::exception_ptr::~exception_ptr(&a12);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001AC32C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1001AC074);
}

void sub_1001AC338(sqlite3 **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    os_activity_scope_enter(v8, &state);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  objc_storeStrong((a4 + 16), a3);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sqlite3_prepare_v2(*a1, v11, v12, a4, 0);
  sub_100001838(v13, *a1);
  if (v13)
  {
    v14 = __error();
    sub_10023B1C8(*v14, &v27);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v23, " w/ ");
    v15 = std::string::insert(&v23, 0, "Failed to prepare query");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v22, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v27;
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v24, v17, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v26, &v25);
    v26.__vftable = &off_100440BD8;
    sub_10010A984(v21);
  }

  *(a4 + 8) = *a1;
  if (v9)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001AC688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a35 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a35 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a30);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a23);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_6:
    sub_10019FF4C((v71 - 184));
    v73 = a47;
    if (!a47)
    {
LABEL_14:
      std::runtime_error::~runtime_error((v71 - 200));
      if (*(v71 - 201) < 0)
      {
        operator delete(*(v71 - 224));
        if ((a55 & 0x80000000) == 0)
        {
LABEL_16:
          if ((a67 & 0x80000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        }
      }

      else if ((a55 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      operator delete(a50);
      if ((a67 & 0x80000000) == 0)
      {
LABEL_17:
        if (a61 < 0)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }

LABEL_22:
      operator delete(a62);
      if (a61 < 0)
      {
LABEL_18:
        operator delete(a56);
        if ((v70 & 1) == 0)
        {
LABEL_25:
          if (*(v71 - 97) < 0)
          {
            operator delete(*(v71 - 120));
            sub_1001AC904(v68);

            _Unwind_Resume(a1);
          }

          sub_1001AC904(v68);

          _Unwind_Resume(a1);
        }

LABEL_24:
        __cxa_free_exception(v69);
        goto LABEL_25;
      }

LABEL_23:
      if (!v70)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_13:
    operator delete(v73);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a37);
  sub_10019FF4C((v71 - 184));
  v73 = a47;
  if (!a47)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t sub_1001AC904(uint64_t a1)
{
  sub_1001AD6A8(a1);

  return a1;
}

void sub_1001AC938(sqlite3_stmt **a1, int a2, unint64_t a3)
{
  v6 = sqlite3_bind_int64(*a1, a2, a3);
  sub_100001838(v6, a1[1]);
  if (v6)
  {
    v7 = __error();
    sub_10023B1C8(*v7, &v36);
    __cxa_allocate_exception(0x40uLL);
    std::to_string(&v29, a3);
    v8 = std::string::insert(&v29, 0, "Failed to bind ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v30, " to ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v28, a2);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v28;
    }

    else
    {
      v12 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v31, v12, size);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_1000474A4(v26, " w/ ");
    if ((v27 & 0x80u) == 0)
    {
      v16 = v26;
    }

    else
    {
      v16 = v26[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v17 = v27;
    }

    else
    {
      v17 = v26[1];
    }

    v18 = std::string::append(&v32, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v25, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v36;
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v25;
    }

    else
    {
      v20 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v25.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v33, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v35, &v34);
    v35.__vftable = &off_100440BD8;
    sub_10010A984(v24);
  }
}

void sub_1001ACD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a34 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a29);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a22);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v80 - 152));
    v82 = a52;
    if (!a52)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v80 - 168));
      if (*(v80 - 169) < 0)
      {
        operator delete(*(v80 - 192));
        if ((a60 & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v80 - 201) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_29;
        }
      }

      else if ((a60 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(a55);
      if ((*(v80 - 201) & 0x80000000) == 0)
      {
LABEL_19:
        if ((a66 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_30;
      }

LABEL_29:
      operator delete(*(v80 - 224));
      if ((a66 & 0x80000000) == 0)
      {
LABEL_20:
        if ((*(v80 - 233) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_31;
      }

LABEL_30:
      operator delete(a61);
      if ((*(v80 - 233) & 0x80000000) == 0)
      {
LABEL_21:
        if ((a72 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_32;
      }

LABEL_31:
      operator delete(*(v80 - 256));
      if ((a72 & 0x80000000) == 0)
      {
LABEL_22:
        if ((a78 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_33;
      }

LABEL_32:
      operator delete(a67);
      if ((a78 & 0x80000000) == 0)
      {
LABEL_23:
        if ((a76 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_34;
      }

LABEL_33:
      operator delete(a77);
      if ((a76 & 0x80000000) == 0)
      {
LABEL_24:
        if (a74 < 0)
        {
          goto LABEL_25;
        }

        goto LABEL_35;
      }

LABEL_34:
      operator delete(a75);
      if (a74 < 0)
      {
LABEL_25:
        operator delete(a73);
        if ((v79 & 1) == 0)
        {
LABEL_37:
          if (*(v80 - 65) < 0)
          {
            operator delete(*(v80 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_36:
        __cxa_free_exception(v78);
        goto LABEL_37;
      }

LABEL_35:
      if (!v79)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

LABEL_15:
    operator delete(v82);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a35);
  sub_10019FF4C((v80 - 152));
  v82 = a52;
  if (!a52)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_1001ACFF0(sqlite3_stmt **a1, int a2, int a3)
{
  v6 = sqlite3_bind_zeroblob(*a1, a2, a3);
  sub_100001838(v6, a1[1]);
  if (v6)
  {
    v7 = __error();
    sub_10023B1C8(*v7, &v36);
    __cxa_allocate_exception(0x40uLL);
    std::to_string(&v29, a3);
    v8 = std::string::insert(&v29, 0, "Failed to bind zero blob of size ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v30, " to ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v28, a2);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v28;
    }

    else
    {
      v12 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v31, v12, size);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_1000474A4(v26, " w/ ");
    if ((v27 & 0x80u) == 0)
    {
      v16 = v26;
    }

    else
    {
      v16 = v26[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v17 = v27;
    }

    else
    {
      v17 = v26[1];
    }

    v18 = std::string::append(&v32, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v25, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v36;
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v25;
    }

    else
    {
      v20 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v25.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v33, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v35, &v34);
    v35.__vftable = &off_100440BD8;
    sub_10010A984(v24);
  }
}

void sub_1001AD3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a34 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a29);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a22);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v80 - 152));
    v82 = a52;
    if (!a52)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v80 - 168));
      if (*(v80 - 169) < 0)
      {
        operator delete(*(v80 - 192));
        if ((a60 & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v80 - 201) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_29;
        }
      }

      else if ((a60 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(a55);
      if ((*(v80 - 201) & 0x80000000) == 0)
      {
LABEL_19:
        if ((a66 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_30;
      }

LABEL_29:
      operator delete(*(v80 - 224));
      if ((a66 & 0x80000000) == 0)
      {
LABEL_20:
        if ((*(v80 - 233) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_31;
      }

LABEL_30:
      operator delete(a61);
      if ((*(v80 - 233) & 0x80000000) == 0)
      {
LABEL_21:
        if ((a72 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_32;
      }

LABEL_31:
      operator delete(*(v80 - 256));
      if ((a72 & 0x80000000) == 0)
      {
LABEL_22:
        if ((a78 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_33;
      }

LABEL_32:
      operator delete(a67);
      if ((a78 & 0x80000000) == 0)
      {
LABEL_23:
        if ((a76 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_34;
      }

LABEL_33:
      operator delete(a77);
      if ((a76 & 0x80000000) == 0)
      {
LABEL_24:
        if (a74 < 0)
        {
          goto LABEL_25;
        }

        goto LABEL_35;
      }

LABEL_34:
      operator delete(a75);
      if (a74 < 0)
      {
LABEL_25:
        operator delete(a73);
        if ((v79 & 1) == 0)
        {
LABEL_37:
          if (*(v80 - 65) < 0)
          {
            operator delete(*(v80 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_36:
        __cxa_free_exception(v78);
        goto LABEL_37;
      }

LABEL_35:
      if (!v79)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

LABEL_15:
    operator delete(v82);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a35);
  sub_10019FF4C((v80 - 152));
  v82 = a52;
  if (!a52)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_1001AD6A8(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sqlite3_sql(v2);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = "<unknown query>";
    }

    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v11 = v5;
    if (v5)
    {
      memmove(__dst, v4, v5);
    }

    *(__dst + v6) = 0;
    v7 = sqlite3_finalize(*a1);
    if (v7)
    {
      if (qword_10045B080 != -1)
      {
        sub_100384BF8();
      }

      v8 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to finalize with %{public}d", buf, 8u);
      }
    }

    *a1 = 0;
    v9 = *(a1 + 16);
    if (v9)
    {
      *(a1 + 16) = 0;
    }

    if (v11 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_1001AD844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001AD860(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = **(a1 + 40);
  v32 = 0;
  v33 = 0;
  __p = 0;
  v3 = *(v2 + 40);
  *(&v44.__r_.__value_.__s + 23) = 18;
  strcpy(&v44, "SELECT rowid FROM ");
  v4 = std::string::append(&v44, "venues");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v46 = v4->__r_.__value_.__r.__words[2];
  buf = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_1000074F0(v3, &buf, 0, &pStmt);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(buf);
    v30 = v1;
    if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_26:
    operator delete(v44.__r_.__value_.__l.__data_);
    goto LABEL_3;
  }

  v30 = v1;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }

LABEL_3:
  v6 = pStmt;
  for (i = pStmt; ; i = pStmt)
  {
    v8 = sqlite3_step(i);
    v9 = v8;
    if (v8 == 100)
    {
      if (sqlite3_column_type(v6, 0) != 5)
      {
        sqlite3_column_int64(v6, 0);
      }

      operator new();
    }

    if (v8 == 101)
    {
      break;
    }

    if (v8 == 19)
    {
      if (qword_10045B080 == -1)
      {
        v15 = qword_10045B088;
        if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_100384BD0();
        v15 = qword_10045B088;
        if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
        {
LABEL_29:
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Query constraint violation", &buf, 2u);
        }
      }

      __cxa_allocate_exception(0x40uLL);
      operator new();
    }

    sub_100001838(v8, db);
    if (v9)
    {
      v16 = __error();
      sub_10023B1C8(*v16, &__dst);
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v39, " w/ ");
      v17 = std::string::insert(&v39, 0, "Failed sqlite3_step");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(&v38, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v38 = __dst;
      }

      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v38;
      }

      else
      {
        v22 = v38.__r_.__value_.__r.__words[0];
      }

      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v38.__r_.__value_.__l.__size_;
      }

      v24 = std::string::append(&v40, v22, size);
      v25 = *&v24->__r_.__value_.__l.__data_;
      v41.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v41.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v42, &v41);
      v42.__vftable = &off_100440BD8;
      sub_10010A984(v37);
    }
  }

  v10 = sqlite3_reset(pStmt);
  sub_100001838(v10, db);
  if (v10)
  {
    v19 = __error();
    sub_10023B1C8(*v19, &__dst);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v39, " w/ ");
    v20 = std::string::insert(&v39, 0, "Failed to execute query");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v38, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v38 = __dst;
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v38;
    }

    else
    {
      v26 = v38.__r_.__value_.__r.__words[0];
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v38.__r_.__value_.__l.__size_;
    }

    v28 = std::string::append(&v40, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v42, &v41);
    v42.__vftable = &off_100440BD8;
    sub_10010A984(v37);
  }

  sub_1001AEC88(&__p, 0);
  sub_1000063E8(&pStmt);

  if (!*v30)
  {
    sub_100013504(3u);
  }

  sub_1001AEBD0(*v30, &__p);
  v11 = __p;
  if (__p)
  {
    v12 = v32;
    v13 = __p;
    if (v32 != __p)
    {
      do
      {
        v14 = *(v12 - 1);
        if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        v12 -= 16;
      }

      while (v12 != v11);
      v13 = __p;
    }

    v32 = v11;
    operator delete(v13);
  }
}

void sub_1001AE43C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception_ptr a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a31 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a44 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_5:
    *(v76 - 192) = v74;
    if ((*(v76 - 161) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a32);
  *(v76 - 192) = v74;
  if ((*(v76 - 161) & 0x80000000) == 0)
  {
LABEL_6:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(*(v76 - 184));
  if ((a50 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v76 - 160));
    v78 = a55;
    if (!a55)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v76 - 232));
      if (*(v76 - 233) < 0)
      {
        operator delete(*(v76 - 256));
        if (a63 < 0)
        {
LABEL_24:
          operator delete(a58);
          if (a72 < 0)
          {
LABEL_25:
            operator delete(a70);
            if (a69 < 0)
            {
LABEL_26:
              operator delete(a64);
              if ((v75 & 1) == 0)
              {
                goto LABEL_28;
              }

              goto LABEL_27;
            }

LABEL_22:
            if (!v75)
            {
LABEL_28:
              if (*(v76 - 193) < 0)
              {
                operator delete(*(v76 - 216));
              }

              if (v72)
              {
                operator delete(v72);
              }

              sub_100184AB0(&a16);
              sub_100048F1C(&a13);
              __cxa_begin_catch(a1);
              v79 = *(a10 + 32);
              std::current_exception();
              sub_1001AE994(v79, &a12);
              std::exception_ptr::~exception_ptr(&a12);
              __cxa_end_catch();
              JUMPOUT(0x1001ADBB4);
            }

LABEL_27:
            __cxa_free_exception(v73);
            goto LABEL_28;
          }

LABEL_21:
          if (a69 < 0)
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        }
      }

      else if (a63 < 0)
      {
        goto LABEL_24;
      }

      if (a72 < 0)
      {
        goto LABEL_25;
      }

      goto LABEL_21;
    }

LABEL_15:
    a56 = v78;
    operator delete(v78);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a45);
  sub_10019FF4C((v76 - 160));
  v78 = a55;
  if (!a55)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_1001AE978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::exception_ptr a12)
{
  std::exception_ptr::~exception_ptr(&a12);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001AE994(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_100013504(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void sub_1001AE9F8(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_1001AEA64(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_1001AEAE4(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      v3 = *(a1 + 152);
      v4 = *(a1 + 144);
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
        v4 = *(a1 + 144);
      }

      *(a1 + 152) = v2;
      operator delete(v4);
    }
  }

  v6 = *(*a1 + 8);

  return v6(a1);
}

void sub_1001AEBD0(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    sub_100013504(2u);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *a2;
  *(a1 + 160) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void *sub_1001AEC88(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

_OWORD *sub_1001AEDD0(void *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_10000FC84();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_10000D444();
  }

  v7 = (16 * v2);
  v8 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 == v10;
  v12 = (v7 + *a1 - v10);
  *v7 = v8;
  v13 = v7 + 1;
  if (!v11)
  {
    v14 = v9;
    v15 = v12;
    do
    {
      *v15++ = *v14;
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
    }

    while (v14 != v10);
    do
    {
      v16 = v9[1];
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v9 += 2;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v13;
}

void sub_1001AEF38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a2 + 16) = *(a1 + 160);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 144) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_1001AEFE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_1001AF018(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(&v10, v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

void sub_1001AF170(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *v1;
  v4 = sub_10019E548(*v1, v1[1]);
  sub_10019BBFC(v3, v4, v6);
  if (!*v2)
  {
    sub_100013504(3u);
  }

  sub_1001AF49C(*v2, v6);
  v5 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_1001AF238(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10002BB1C(&v22);
  __cxa_begin_catch(a1);
  v20 = *(v18 + 32);
  std::current_exception();
  sub_1001AF2A8(v20, &v21);
  std::exception_ptr::~exception_ptr(&v21);
  __cxa_end_catch();
}

void sub_1001AF28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001AF2A8(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_100013504(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void sub_1001AF30C(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_1001AF378(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_1001AF3F8(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v1 = *(a1 + 152);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = a1;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        a1 = v2;
      }
    }
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_1001AF49C(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    sub_100013504(2u);
  }

  *(a1 + 144) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void sub_1001AF540(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_1001AF5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_1001AF614(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(&v10, v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

sqlite3_blob **sub_1001AF76C(sqlite3_blob **a1)
{
  v2 = sqlite3_blob_close(*a1);
  if (v2)
  {
    if (qword_10045B080 != -1)
    {
      sub_100384BF8();
      v3 = qword_10045B088;
      if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        return a1;
      }

      goto LABEL_4;
    }

    v3 = qword_10045B088;
    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
    {
LABEL_4:
      v5[0] = 67240192;
      v5[1] = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to close blob (error %{public}d)", v5, 8u);
    }
  }

  return a1;
}

void sub_1001AF858(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000D388(a1);
}

void sub_1001AF864(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *v1;
  v4 = sub_10019CAC4(*v1, v1[1]);
  sub_10019BF04(v3, v4, v6);
  if (!*v2)
  {
    sub_100013504(3u);
  }

  sub_1001AFB90(*v2, v6);
  v5 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_1001AF92C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10002BB1C(&v22);
  __cxa_begin_catch(a1);
  v20 = *(v18 + 32);
  std::current_exception();
  sub_1001AF99C(v20, &v21);
  std::exception_ptr::~exception_ptr(&v21);
  __cxa_end_catch();
}

void sub_1001AF980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001AF99C(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_100013504(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void sub_1001AFA00(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_1001AFA6C(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_1001AFAEC(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v1 = *(a1 + 152);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = a1;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        a1 = v2;
      }
    }
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_1001AFB90(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    sub_100013504(2u);
  }

  *(a1 + 144) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void sub_1001AFC34(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_1001AFCD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_1001AFD08(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(&v10, v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

void sub_1001AFE60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *v1;
  v4 = sub_10019CAC4(*v1, v1[1]);
  sub_10019C958(v3, v4);
}

void sub_1001AFF4C(void *a1)
{
  sub_1001AFFBC(&v5);
  __cxa_begin_catch(a1);
  v3 = *(v1 + 32);
  std::current_exception();
  sub_1001B0068(v3, &v4);
  std::exception_ptr::~exception_ptr(&v4);
  __cxa_end_catch();
}

void sub_1001AFFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

int *sub_1001AFFBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_1000ED500(a1);
}

void sub_1001B0068(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_100013504(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void sub_1001B00CC(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_1001B0138(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_1001B01B8(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = *(a1 + 176);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(a1 + 152);
    *(a1 + 152) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    sub_1000ED500((a1 + 144));
  }

  v4 = *(*a1 + 8);

  return v4(a1);
}

void sub_1001B0294(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v6.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v6), v4))
  {
    sub_100013504(2u);
  }

  sub_1000ED538((a1 + 144), a2);
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 152) = v5;
  *(a1 + 160) = *(a2 + 16);
  *(a1 + 168) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void sub_1001B0358(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v8.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v8);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v7, (a1 + 16));
    v6.__ptr_ = &v7;
    std::rethrow_exception(v6);
    __break(1u);
  }

  else
  {
    sub_1000ED538(a2, (a1 + 144));
    v5 = *(a1 + 152);
    *(a1 + 152) = 0;
    *(a2 + 8) = v5;
    *(a2 + 16) = *(a1 + 160);
    *(a2 + 24) = *(a1 + 168);
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_1001B041C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_1001B044C(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(&v10, v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

void sub_1001B05A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(**(a1 + 40) + 40);
  v35 = 0;
  v36 = 0;
  __p = 0;
  *(&v40.__r_.__value_.__s + 23) = 7;
  strcpy(&v40, "SELECT ");
  if (byte_10045D0D7 >= 0)
  {
    v3 = &qword_10045D0C0;
  }

  else
  {
    v3 = qword_10045D0C0;
  }

  if (byte_10045D0D7 >= 0)
  {
    v4 = byte_10045D0D7;
  }

  else
  {
    v4 = *&byte_10045D0C8;
  }

  v5 = std::string::append(&v40, v3, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  *(&__s.__r_.__value_.__s + 23) = 6;
  strcpy(&__s, " FROM ");
  v7 = std::string::append(&v41, &__s, 6uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v50, "venues");
  v10 = *&v9->__r_.__value_.__l.__data_;
  buf[2] = *(&v9->__r_.__value_.__l + 2);
  *buf = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_1000074F0(v2, buf, 0, &pStmt);
  if (SHIBYTE(buf[2]) < 0)
  {
    operator delete(buf[0]);
    if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }
  }

  else if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v50.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_35:
    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_36:
    operator delete(v40.__r_.__value_.__l.__data_);
    goto LABEL_12;
  }

LABEL_34:
  operator delete(__s.__r_.__value_.__l.__data_);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_35;
  }

LABEL_11:
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_36;
  }

LABEL_12:
  v11 = pStmt;
  v48 = pStmt;
  while (1)
  {
    v12 = sqlite3_step(v11);
    v13 = v12;
    if (v12 == 100)
    {
      sub_1001B1A90(&v48, buf);
      v50 = *&buf[1];
      sub_1001181E4(buf, &v50);
    }

    if (v12 == 101)
    {
      break;
    }

    if (v12 == 19)
    {
      if (qword_10045B080 != -1)
      {
        sub_100384BD0();
      }

      v19 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Query constraint violation", buf, 2u);
      }

      __cxa_allocate_exception(0x40uLL);
      operator new();
    }

    sub_100001838(v12, db);
    if (v13)
    {
      v20 = __error();
      sub_10023B1C8(*v20, &__s);
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v44, " w/ ");
      v21 = std::string::insert(&v44, 0, "Failed sqlite3_step");
      v22 = *&v21->__r_.__value_.__l.__data_;
      v45.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v45.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003228(&v43, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
      }

      else
      {
        v43 = __s;
      }

      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v43;
      }

      else
      {
        v26 = v43.__r_.__value_.__r.__words[0];
      }

      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v43.__r_.__value_.__l.__size_;
      }

      v28 = std::string::append(&v45, v26, size);
      v29 = *&v28->__r_.__value_.__l.__data_;
      v46.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
      *&v46.__r_.__value_.__l.__data_ = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v47, &v46);
      v47.__vftable = &off_100440BD8;
      sub_10010A984(v42);
    }

    v11 = pStmt;
  }

  v14 = sqlite3_reset(pStmt);
  sub_100001838(v14, db);
  if (v14)
  {
    v23 = __error();
    sub_10023B1C8(*v23, &__s);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v44, " w/ ");
    v24 = std::string::insert(&v44, 0, "Failed to execute query");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v43, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      v43 = __s;
    }

    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v43;
    }

    else
    {
      v30 = v43.__r_.__value_.__r.__words[0];
    }

    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = v43.__r_.__value_.__l.__size_;
    }

    v32 = std::string::append(&v45, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v47, &v46);
    v47.__vftable = &off_100440BD8;
    sub_10010A984(v42);
  }

  sub_1000063E8(&pStmt);

  if (!*v1)
  {
    sub_100013504(3u);
  }

  sub_1001B19D8(*v1, &__p);
  v15 = __p;
  if (__p)
  {
    v16 = v35;
    v17 = __p;
    if (v35 != __p)
    {
      do
      {
        v18 = *(v16 - 1);
        if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        v16 -= 16;
      }

      while (v16 != v15);
      v17 = __p;
    }

    v35 = v15;
    operator delete(v17);
  }
}

void sub_1001B1148(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::exception_ptr a10, void *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a29 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_4:
      if ((a42 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(a17);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a35 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a37);
  if ((a35 & 0x80000000) == 0)
  {
LABEL_6:
    *(v77 - 192) = v75;
    if ((*(v77 - 161) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a30);
  *(v77 - 192) = v75;
  if ((*(v77 - 161) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a48 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v77 - 184));
  if ((a48 & 0x80000000) == 0)
  {
LABEL_8:
    sub_10019FF4C((v77 - 160));
    v79 = a53;
    if (!a53)
    {
LABEL_17:
      std::runtime_error::~runtime_error((v77 - 240));
      if (a73 < 0)
      {
        operator delete(a72.__vftable);
        if (a61 < 0)
        {
LABEL_25:
          operator delete(a56);
          if (a71 < 0)
          {
LABEL_26:
            operator delete(a68);
            if (a67 < 0)
            {
LABEL_27:
              operator delete(a62);
              if ((v76 & 1) == 0)
              {
                goto LABEL_29;
              }

              goto LABEL_28;
            }

LABEL_23:
            if (!v76)
            {
LABEL_29:
              if (*(v77 - 193) < 0)
              {
                operator delete(*(v77 - 216));
              }

              sub_100184AB0(&a14);
              sub_100048F1C(&a11);
              __cxa_begin_catch(a1);
              v80 = *(v73 + 32);
              std::current_exception();
              sub_1001B179C(v80, &a10);
              std::exception_ptr::~exception_ptr(&a10);
              __cxa_end_catch();
              JUMPOUT(0x1001B08CCLL);
            }

LABEL_28:
            __cxa_free_exception(v74);
            goto LABEL_29;
          }

LABEL_22:
          if (a67 < 0)
          {
            goto LABEL_27;
          }

          goto LABEL_23;
        }
      }

      else if (a61 < 0)
      {
        goto LABEL_25;
      }

      if (a71 < 0)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

LABEL_16:
    a54 = v79;
    operator delete(v79);
    goto LABEL_17;
  }

LABEL_15:
  operator delete(a43);
  sub_10019FF4C((v77 - 160));
  v79 = a53;
  if (!a53)
  {
    goto LABEL_17;
  }

  goto LABEL_16;
}

void sub_1001B179C(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_100013504(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void sub_1001B1800(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_1001B186C(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_1001B18EC(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      v3 = *(a1 + 152);
      v4 = *(a1 + 144);
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
        v4 = *(a1 + 144);
      }

      *(a1 + 152) = v2;
      operator delete(v4);
    }
  }

  v6 = *(*a1 + 8);

  return v6(a1);
}

void sub_1001B19D8(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    sub_100013504(2u);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *a2;
  *(a1 + 160) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

double sub_1001B1A90@<D0>(sqlite3_stmt **a1@<X0>, uint64_t a2@<X8>)
{
  if (sqlite3_column_type(*a1, 0) == 5)
  {
    *a2 = 0;
  }

  else
  {
    v5 = sqlite3_column_text(*a1, 0);
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

    HIBYTE(v9) = v6;
    if (v6)
    {
      memmove(&__dst, v5, v6);
    }

    *(&__dst + v7) = 0;
    result = *&__dst;
    *(a2 + 8) = __dst;
    *(a2 + 24) = v9;
    *a2 = 1;
  }

  return result;
}

void sub_1001B1BA0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a2 + 16) = *(a1 + 160);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 144) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_1001B1C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_1001B1C80(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(&v10, v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

void sub_1001B1DD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *v2;
  if (sub_1002AB8A4((*v2 + 56), *(v2 + 8), *(v2 + 16)))
  {
    v4 = sub_10019CAC4(v3, *(v2 + 8));
    sub_10023C59C(*(v3 + 40), "tile_data", "tiles", v4, 1, &p_p);
    sub_1002AB724((v3 + 56), *(v2 + 8), *(v2 + 16), &p_p, &__p);
    sub_1001AF76C(&p_p);
  }

  else
  {
    v5 = **(v2 + 16);
    v6 = *(*(v2 + 16) + 8);
    v15 = 0;
    v16 = 0;
    v13 = 0;
    v14 = 0;
    __p = 0;
    p_p = &__p;
    v18 = 0;
    v7 = v6 - v5;
    if (v7)
    {
      if (!((v7 >> 5) >> 60))
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  if (!*v1)
  {
    sub_100013504(3u);
  }

  sub_1001B2258(*v1, &__p);
  v8 = __p;
  if (__p)
  {
    v9 = v13;
    v10 = __p;
    if (v13 != __p)
    {
      do
      {
        v11 = *(v9 - 1);
        if (v11)
        {
          if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
          }
        }

        v9 -= 16;
      }

      while (v9 != v8);
      v10 = __p;
    }

    v13 = v8;
    operator delete(v10);
  }
}

void sub_1001B1F84(void *a1)
{
  sub_1001AF76C(&v5);
  __cxa_begin_catch(a1);
  v3 = *(v1 + 32);
  std::current_exception();
  sub_1001B201C(v3, v4);
  std::exception_ptr::~exception_ptr(v4);
  __cxa_end_catch();
}

void sub_1001B2000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001B201C(std::__assoc_sub_state **a1, const std::exception_ptr *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    sub_100013504(3u);
  }

  std::exception_ptr::exception_ptr(&v4, a2);
  v3.__ptr_ = &v4;
  std::__assoc_sub_state::set_exception(v2, v3);
  std::exception_ptr::~exception_ptr(&v4);
}

void sub_1001B2080(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_1001B20EC(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_1001B216C(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      v3 = *(a1 + 152);
      v4 = *(a1 + 144);
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
        v4 = *(a1 + 144);
      }

      *(a1 + 152) = v2;
      operator delete(v4);
    }
  }

  v6 = *(*a1 + 8);

  return v6(a1);
}

void sub_1001B2258(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    sub_100013504(2u);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *a2;
  *(a1 + 160) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void sub_1001B2310(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a2 + 16) = *(a1 + 160);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 144) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_1001B23C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_1001B23F0(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v11.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v11);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v12.__cat_ = std::future_category();
        *&v12.__val_ = 4;
        std::future_error::future_error(&v9, v12);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v5 = std::logic_error::logic_error(exception, &v9);
        exception[1] = v9.__ec_;
        std::exception_ptr::__from_native_exception_pointer(&v10, v5, v6);
        v7.__ptr_ = &v10;
        std::__assoc_sub_state::set_exception(v1, v7);
        std::exception_ptr::~exception_ptr(&v10);
        std::future_error::~future_error(&v9);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*v1 + 16))(v1);
      return v8;
    }
  }

  return result;
}

void sub_1001B2548(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2;
  v4 = sub_10019CAC4(*v2, v2[1]);
  sub_10023C59C(*(v3 + 40), "tile_data", "tiles", v4, 1, &v5);
  sub_1002AB338((v3 + 56), v2[1], &v5);
  sub_1001AF76C(&v5);
  std::promise<void>::set_value(*(a1 + 40));
}

void sub_1001B25D4(void *a1)
{
  sub_1001AF76C(&v6);
  __cxa_begin_catch(a1);
  v3 = *(v1 + 40);
  std::current_exception();
  v4.__ptr_ = &v5;
  std::promise<void>::set_exception(v3, v4);
  std::exception_ptr::~exception_ptr(&v5);
  __cxa_end_catch();
}

void sub_1001B2628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1001B2644(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2;
  v4 = sub_10019CAC4(*v2, v2[1]);
  sub_10023C59C(*(v3 + 40), "tile_data", "tiles", v4, 1, &v7);
  v5 = v2[2];
  v6 = *(v5 + 24);
  if (!v6)
  {
    goto LABEL_4;
  }

  if (v6 != v5)
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_4:
    v9 = v6;
    goto LABEL_6;
  }

  v9 = v8;
  (*(*v6 + 24))(v6, v8);
LABEL_6:
  sub_1002AB57C(v3 + 56, &v7, v8);
  if (v9 == v8)
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))();
  }

  sub_1001AF76C(&v7);
  std::promise<void>::set_value(*(a1 + 40));
}

void sub_1001B27D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, sqlite3_blob *a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_1001AF76C(&a11);
    __cxa_begin_catch(exception_object);
    v16 = *(v14 + 40);
    std::current_exception();
    v17.__ptr_ = &a10;
    std::promise<void>::set_exception(v16, v17);
    std::exception_ptr::~exception_ptr(&a10);
    __cxa_end_catch();
    JUMPOUT(0x1001B27A0);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001B28A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  v15 = *(v14 + 40);
  std::current_exception();
  v16.__ptr_ = v17;
  std::promise<void>::set_exception(v15, v16);
  std::exception_ptr::~exception_ptr(v17);
  __cxa_end_catch();
}

void sub_1001B28D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t sub_1001B28F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  std::runtime_error::runtime_error(a1, a2)->__vftable = &off_100441210;
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
  *a1 = &off_100441128;
  *(a1 + 16) = off_100441160;
  *(a1 + 56) = &off_100441198;
  return a1;
}

void sub_1001B2A28(std::runtime_error *a1)
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

void sub_1001B2D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_1001B2D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B2D9C(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100441210;
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
  *a1 = &off_100441128;
  *(a1 + 16) = off_100441160;
  *(a1 + 56) = &off_100441198;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_1001B2EF0(std::runtime_error *a1)
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

void sub_1001B2F84(std::runtime_error *this)
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

void sub_1001B30A4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1001B28F4(exception, a1);
}

void sub_1001B3100(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1001B3188(std::runtime_error *a1)
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

void sub_1001B32B8(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1001B28F4(exception, a1 + v2);
}

void sub_1001B332C(void *a1)
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

void sub_1001B33CC(void *a1)
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

void sub_1001B3480(std::runtime_error *this)
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

void sub_1001B3520(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1001B35A8(std::runtime_error *a1)
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

void sub_1001B3644(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_1001B367C(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100441210;
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
  *a1 = &off_100441128;
  *(a1 + 16) = off_100441160;
  *(a1 + 56) = &off_100441198;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

uint64_t sub_1001B37D0(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  std::runtime_error::runtime_error(a1, a2)->__vftable = &off_100441328;
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
  *a1 = &off_100441240;
  *(a1 + 16) = off_100441278;
  *(a1 + 56) = &off_1004412B0;
  return a1;
}

void sub_1001B3904(std::runtime_error *a1)
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

void sub_1001B3C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_1001B3C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B3C78(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100441328;
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
  *a1 = &off_100441240;
  *(a1 + 16) = off_100441278;
  *(a1 + 56) = &off_1004412B0;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_1001B3DCC(std::runtime_error *a1)
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

void sub_1001B3E60(std::runtime_error *this)
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

void sub_1001B3F80(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1001B37D0(exception, a1);
}

void sub_1001B3FDC(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1001B4064(std::runtime_error *a1)
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

void sub_1001B4194(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1001B37D0(exception, a1 + v2);
}

void sub_1001B4208(void *a1)
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

void sub_1001B42A8(void *a1)
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

void sub_1001B435C(std::runtime_error *this)
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

void sub_1001B43FC(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1001B4484(std::runtime_error *a1)
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

void sub_1001B4520(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_1001B4558(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_100441328;
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
  *a1 = &off_100441240;
  *(a1 + 16) = off_100441278;
  *(a1 + 56) = &off_1004412B0;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_1001B46CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100441350;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001B472C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sqlite3_sql(v2);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = "<unknown query>";
    }

    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v11 = v5;
    if (v5)
    {
      memmove(__dst, v4, v5);
    }

    *(__dst + v6) = 0;
    v7 = sqlite3_finalize(*a1);
    if (v7)
    {
      if (qword_10045B080 != -1)
      {
        sub_100384BF8();
      }

      v8 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to finalize with %{public}d", buf, 8u);
      }
    }

    *a1 = 0;
    v9 = *(a1 + 16);
    if (v9)
    {
      *(a1 + 16) = 0;
    }

    if (v11 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_1001B48C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001B48E4(sqlite3_stmt **a1, int a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(a3 + 23);
  v7 = *(a3 + 2);
  if (v6 >= 0)
  {
    v8 = v6;
  }

  else
  {
    a3 = *a3;
    v8 = v7;
  }

  v9 = sqlite3_bind_text(v5, a2, a3, v8, 0xFFFFFFFFFFFFFFFFLL);
  sub_100001838(v9, a1[1]);
  if (v9)
  {
    v10 = __error();
    sub_10023B1C8(*v10, &v36);
    __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    v11 = std::string::append(&v30, " to ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v29, a2);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v29;
    }

    else
    {
      v13 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v15 = std::string::append(&v31, v13, size);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    sub_1000474A4(v27, " w/ ");
    if ((v28 & 0x80u) == 0)
    {
      v17 = v27;
    }

    else
    {
      v17 = v27[0];
    }

    if ((v28 & 0x80u) == 0)
    {
      v18 = v28;
    }

    else
    {
      v18 = v27[1];
    }

    v19 = std::string::append(&v32, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v26, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v26 = v36;
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v26;
    }

    else
    {
      v21 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v26.__r_.__value_.__l.__size_;
    }

    v23 = std::string::append(&v33, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v35, &v34);
    v35.__vftable = &off_100440BD8;
    sub_10010A984(v25);
  }
}

void sub_1001B4CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a34 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a29);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a22);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v78 - 152));
    v80 = a52;
    if (!a52)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v78 - 168));
      if (*(v78 - 169) < 0)
      {
        operator delete(*(v78 - 192));
        if ((a60 & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v78 - 201) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_28;
        }
      }

      else if ((a60 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(a55);
      if ((*(v78 - 201) & 0x80000000) == 0)
      {
LABEL_19:
        if ((a66 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_29;
      }

LABEL_28:
      operator delete(*(v78 - 224));
      if ((a66 & 0x80000000) == 0)
      {
LABEL_20:
        if ((*(v78 - 233) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_30;
      }

LABEL_29:
      operator delete(a61);
      if ((*(v78 - 233) & 0x80000000) == 0)
      {
LABEL_21:
        if ((a72 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_31;
      }

LABEL_30:
      operator delete(*(v78 - 256));
      if ((a72 & 0x80000000) == 0)
      {
LABEL_22:
        if ((a76 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_32;
      }

LABEL_31:
      operator delete(a67);
      if ((a76 & 0x80000000) == 0)
      {
LABEL_23:
        if (a74 < 0)
        {
          goto LABEL_24;
        }

        goto LABEL_33;
      }

LABEL_32:
      operator delete(a75);
      if (a74 < 0)
      {
LABEL_24:
        operator delete(a73);
        if ((v77 & 1) == 0)
        {
LABEL_35:
          if (*(v78 - 65) < 0)
          {
            operator delete(*(v78 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_34:
        __cxa_free_exception(v76);
        goto LABEL_35;
      }

LABEL_33:
      if (!v77)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_15:
    operator delete(v80);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a35);
  sub_10019FF4C((v78 - 152));
  v80 = a52;
  if (!a52)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

uint64_t sub_1001B4FDC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1004413A0;
  a2[1] = v2;
  return result;
}

void sub_1001B5008(uint64_t a1, sqlite3_stmt **a2)
{
  v3 = sub_100118234(*(a1 + 8));

  sub_1001B50C4(a2, 1, v3);
}

uint64_t sub_1001B504C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK12SqlPrivacyDb37onQueueLookupVenueResourceInformationERK10LocationIdE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK12SqlPrivacyDb37onQueueLookupVenueResourceInformationERK10LocationIdE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK12SqlPrivacyDb37onQueueLookupVenueResourceInformationERK10LocationIdE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK12SqlPrivacyDb37onQueueLookupVenueResourceInformationERK10LocationIdE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1001B50C4(sqlite3_stmt **a1, int a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(a3 + 23);
  v7 = *(a3 + 2);
  if (v6 >= 0)
  {
    v8 = v6;
  }

  else
  {
    a3 = *a3;
    v8 = v7;
  }

  v9 = sqlite3_bind_text(v5, a2, a3, v8, 0xFFFFFFFFFFFFFFFFLL);
  sub_100001838(v9, a1[1]);
  if (v9)
  {
    v10 = __error();
    sub_10023B1C8(*v10, &v36);
    __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    v11 = std::string::append(&v30, " to ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v29, a2);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v29;
    }

    else
    {
      v13 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v15 = std::string::append(&v31, v13, size);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    sub_1000474A4(v27, " w/ ");
    if ((v28 & 0x80u) == 0)
    {
      v17 = v27;
    }

    else
    {
      v17 = v27[0];
    }

    if ((v28 & 0x80u) == 0)
    {
      v18 = v28;
    }

    else
    {
      v18 = v27[1];
    }

    v19 = std::string::append(&v32, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v26, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v26 = v36;
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v26;
    }

    else
    {
      v21 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v26.__r_.__value_.__l.__size_;
    }

    v23 = std::string::append(&v33, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v35, &v34);
    v35.__vftable = &off_100440BD8;
    sub_10010A984(v25);
  }
}

void sub_1001B5488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a34 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a29);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a22);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v78 - 152));
    v80 = a52;
    if (!a52)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v78 - 168));
      if (*(v78 - 169) < 0)
      {
        operator delete(*(v78 - 192));
        if ((a60 & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v78 - 201) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_28;
        }
      }

      else if ((a60 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(a55);
      if ((*(v78 - 201) & 0x80000000) == 0)
      {
LABEL_19:
        if ((a66 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_29;
      }

LABEL_28:
      operator delete(*(v78 - 224));
      if ((a66 & 0x80000000) == 0)
      {
LABEL_20:
        if ((*(v78 - 233) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_30;
      }

LABEL_29:
      operator delete(a61);
      if ((*(v78 - 233) & 0x80000000) == 0)
      {
LABEL_21:
        if ((a72 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_31;
      }

LABEL_30:
      operator delete(*(v78 - 256));
      if ((a72 & 0x80000000) == 0)
      {
LABEL_22:
        if ((a76 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_32;
      }

LABEL_31:
      operator delete(a67);
      if ((a76 & 0x80000000) == 0)
      {
LABEL_23:
        if (a74 < 0)
        {
          goto LABEL_24;
        }

        goto LABEL_33;
      }

LABEL_32:
      operator delete(a75);
      if (a74 < 0)
      {
LABEL_24:
        operator delete(a73);
        if ((v77 & 1) == 0)
        {
LABEL_35:
          if (*(v78 - 65) < 0)
          {
            operator delete(*(v78 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_34:
        __cxa_free_exception(v76);
        goto LABEL_35;
      }

LABEL_33:
      if (!v77)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_15:
    operator delete(v80);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a35);
  sub_10019FF4C((v78 - 152));
  v80 = a52;
  if (!a52)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

uint64_t sub_1001B57BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100441430;
  a2[1] = v2;
  return result;
}

sqlite3_int64 sub_1001B57E8@<X0>(uint64_t a1@<X0>, sqlite3_stmt **a2@<X1>, sqlite3_int64 *a3@<X8>)
{
  result = sqlite3_column_type(*a2, 0);
  if (result != 5)
  {
    result = sqlite3_column_int64(*a2, 0);
  }

  v7 = *(a1 + 8);
  v9 = *v7;
  v8 = v7[1];
  *a3 = result;
  a3[1] = v9;
  a3[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1001B585C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK12SqlPrivacyDb37onQueueLookupVenueResourceInformationERK10LocationIdE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK12SqlPrivacyDb37onQueueLookupVenueResourceInformationERK10LocationIdE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK12SqlPrivacyDb37onQueueLookupVenueResourceInformationERK10LocationIdE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK12SqlPrivacyDb37onQueueLookupVenueResourceInformationERK10LocationIdE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1001B5944(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1004414C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001B5980(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK12SqlPrivacyDb46onQueueLookupVenueResourceInformationByLocalIdEyE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK12SqlPrivacyDb46onQueueLookupVenueResourceInformationByLocalIdEyE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK12SqlPrivacyDb46onQueueLookupVenueResourceInformationByLocalIdEyE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK12SqlPrivacyDb46onQueueLookupVenueResourceInformationByLocalIdEyE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1001B59F8(sqlite3_stmt **a1, int a2, unint64_t a3)
{
  v6 = sqlite3_bind_int64(*a1, a2, a3);
  sub_100001838(v6, a1[1]);
  if (v6)
  {
    v7 = __error();
    sub_10023B1C8(*v7, &v36);
    __cxa_allocate_exception(0x40uLL);
    std::to_string(&v29, a3);
    v8 = std::string::insert(&v29, 0, "Failed to bind ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v30, " to ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v28, a2);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v28;
    }

    else
    {
      v12 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v31, v12, size);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_1000474A4(v26, " w/ ");
    if ((v27 & 0x80u) == 0)
    {
      v16 = v26;
    }

    else
    {
      v16 = v26[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v17 = v27;
    }

    else
    {
      v17 = v26[1];
    }

    v18 = std::string::append(&v32, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v25, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v36;
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v25;
    }

    else
    {
      v20 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v25.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v33, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v35, &v34);
    v35.__vftable = &off_100440BD8;
    sub_10010A984(v24);
  }
}

void sub_1001B5DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a34 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a29);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a22);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v80 - 152));
    v82 = a52;
    if (!a52)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v80 - 168));
      if (*(v80 - 169) < 0)
      {
        operator delete(*(v80 - 192));
        if ((a60 & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v80 - 201) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_29;
        }
      }

      else if ((a60 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(a55);
      if ((*(v80 - 201) & 0x80000000) == 0)
      {
LABEL_19:
        if ((a66 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_30;
      }

LABEL_29:
      operator delete(*(v80 - 224));
      if ((a66 & 0x80000000) == 0)
      {
LABEL_20:
        if ((*(v80 - 233) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_31;
      }

LABEL_30:
      operator delete(a61);
      if ((*(v80 - 233) & 0x80000000) == 0)
      {
LABEL_21:
        if ((a72 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_32;
      }

LABEL_31:
      operator delete(*(v80 - 256));
      if ((a72 & 0x80000000) == 0)
      {
LABEL_22:
        if ((a78 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_33;
      }

LABEL_32:
      operator delete(a67);
      if ((a78 & 0x80000000) == 0)
      {
LABEL_23:
        if ((a76 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_34;
      }

LABEL_33:
      operator delete(a77);
      if ((a76 & 0x80000000) == 0)
      {
LABEL_24:
        if (a74 < 0)
        {
          goto LABEL_25;
        }

        goto LABEL_35;
      }

LABEL_34:
      operator delete(a75);
      if (a74 < 0)
      {
LABEL_25:
        operator delete(a73);
        if ((v79 & 1) == 0)
        {
LABEL_37:
          if (*(v80 - 65) < 0)
          {
            operator delete(*(v80 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_36:
        __cxa_free_exception(v78);
        goto LABEL_37;
      }

LABEL_35:
      if (!v79)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

LABEL_15:
    operator delete(v82);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a35);
  sub_10019FF4C((v80 - 152));
  v82 = a52;
  if (!a52)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

uint64_t sub_1001B6120(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100441540;
  a2[1] = v2;
  return result;
}

void sub_1001B614C(uint64_t a1, sqlite3_stmt **a2)
{
  sub_1001B1A90(a2, v5);
  *__p = v6;
  v3 = v7;
  sub_1001181E4(&v4, __p);
}

void sub_1001B61F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001B6218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK12SqlPrivacyDb46onQueueLookupVenueResourceInformationByLocalIdEyE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK12SqlPrivacyDb46onQueueLookupVenueResourceInformationByLocalIdEyE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK12SqlPrivacyDb46onQueueLookupVenueResourceInformationByLocalIdEyE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK12SqlPrivacyDb46onQueueLookupVenueResourceInformationByLocalIdEyE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1001B6290(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sqlite3_sql(v2);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = "<unknown query>";
    }

    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v11 = v5;
    if (v5)
    {
      memmove(__dst, v4, v5);
    }

    *(__dst + v6) = 0;
    v7 = sqlite3_finalize(*a1);
    if (v7)
    {
      if (qword_10045B080 != -1)
      {
        sub_100384BF8();
      }

      v8 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to finalize with %{public}d", buf, 8u);
      }
    }

    *a1 = 0;
    v9 = *(a1 + 16);
    if (v9)
    {
      *(a1 + 16) = 0;
    }

    if (v11 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_1001B642C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1001B6448@<D0>(sqlite3_stmt **a1@<X0>, uint64_t a2@<X8>)
{
  if (sqlite3_column_type(*a1, 1) == 5)
  {
    *a2 = 0;
  }

  else
  {
    v5 = sqlite3_column_text(*a1, 1);
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

    HIBYTE(v9) = v6;
    if (v6)
    {
      memmove(&__dst, v5, v6);
    }

    *(&__dst + v7) = 0;
    result = *&__dst;
    *(a2 + 8) = __dst;
    *(a2 + 24) = v9;
    *a2 = 1;
  }

  return result;
}

void sub_1001B6558(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sqlite3_sql(v2);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = "<unknown query>";
    }

    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v11 = v5;
    if (v5)
    {
      memmove(__dst, v4, v5);
    }

    *(__dst + v6) = 0;
    v7 = sqlite3_finalize(*a1);
    if (v7)
    {
      if (qword_10045B080 != -1)
      {
        sub_100384BF8();
      }

      v8 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to finalize with %{public}d", buf, 8u);
      }
    }

    *a1 = 0;
    v9 = *(a1 + 16);
    if (v9)
    {
      *(a1 + 16) = 0;
    }

    if (v11 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_1001B66F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001B6710(sqlite3_stmt **a1, int a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(a3 + 23);
  v7 = *(a3 + 2);
  if (v6 >= 0)
  {
    v8 = v6;
  }

  else
  {
    a3 = *a3;
    v8 = v7;
  }

  v9 = sqlite3_bind_text(v5, a2, a3, v8, 0xFFFFFFFFFFFFFFFFLL);
  sub_100001838(v9, a1[1]);
  if (v9)
  {
    v10 = __error();
    sub_10023B1C8(*v10, &v36);
    __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    v11 = std::string::append(&v30, " to ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v29, a2);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v29;
    }

    else
    {
      v13 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v15 = std::string::append(&v31, v13, size);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    sub_1000474A4(v27, " w/ ");
    if ((v28 & 0x80u) == 0)
    {
      v17 = v27;
    }

    else
    {
      v17 = v27[0];
    }

    if ((v28 & 0x80u) == 0)
    {
      v18 = v28;
    }

    else
    {
      v18 = v27[1];
    }

    v19 = std::string::append(&v32, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v26, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v26 = v36;
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v26;
    }

    else
    {
      v21 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v26.__r_.__value_.__l.__size_;
    }

    v23 = std::string::append(&v33, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v35, &v34);
    v35.__vftable = &off_100440BD8;
    sub_10010A984(v25);
  }
}

void sub_1001B6AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a34 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a29);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a22);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v78 - 152));
    v80 = a52;
    if (!a52)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v78 - 168));
      if (*(v78 - 169) < 0)
      {
        operator delete(*(v78 - 192));
        if ((a60 & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v78 - 201) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_28;
        }
      }

      else if ((a60 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(a55);
      if ((*(v78 - 201) & 0x80000000) == 0)
      {
LABEL_19:
        if ((a66 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_29;
      }

LABEL_28:
      operator delete(*(v78 - 224));
      if ((a66 & 0x80000000) == 0)
      {
LABEL_20:
        if ((*(v78 - 233) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_30;
      }

LABEL_29:
      operator delete(a61);
      if ((*(v78 - 233) & 0x80000000) == 0)
      {
LABEL_21:
        if ((a72 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_31;
      }

LABEL_30:
      operator delete(*(v78 - 256));
      if ((a72 & 0x80000000) == 0)
      {
LABEL_22:
        if ((a76 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_32;
      }

LABEL_31:
      operator delete(a67);
      if ((a76 & 0x80000000) == 0)
      {
LABEL_23:
        if (a74 < 0)
        {
          goto LABEL_24;
        }

        goto LABEL_33;
      }

LABEL_32:
      operator delete(a75);
      if (a74 < 0)
      {
LABEL_24:
        operator delete(a73);
        if ((v77 & 1) == 0)
        {
LABEL_35:
          if (*(v78 - 65) < 0)
          {
            operator delete(*(v78 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_34:
        __cxa_free_exception(v76);
        goto LABEL_35;
      }

LABEL_33:
      if (!v77)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_15:
    operator delete(v80);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a35);
  sub_10019FF4C((v78 - 152));
  v80 = a52;
  if (!a52)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_1001B6D98(sqlite3_stmt **a1, int a2, int a3)
{
  v5 = sqlite3_bind_int(*a1, a2, a3);
  sub_100001838(v5, a1[1]);
  if (v5)
  {
    v6 = __error();
    sub_10023B1C8(*v6, &v26);
    __cxa_allocate_exception(0x40uLL);
    std::to_string(&v21, a2);
    v7 = std::string::insert(&v21, 0, "Failed to bind parameter ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_1000474A4(v19, " w/ ");
    if ((v20 & 0x80u) == 0)
    {
      v9 = v19;
    }

    else
    {
      v9 = v19[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v10 = v20;
    }

    else
    {
      v10 = v19[1];
    }

    v11 = std::string::append(&v22, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v18, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = v26;
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v18;
    }

    else
    {
      v13 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    v15 = std::string::append(&v23, v13, size);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v25, &v24);
    v25.__vftable = &off_100440BD8;
    sub_10010A984(v17);
  }
}

void sub_1001B70EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a34 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a29);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a22);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v74 - 152));
    v76 = a52;
    if (!a52)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v74 - 168));
      if (*(v74 - 169) < 0)
      {
        operator delete(*(v74 - 192));
        if ((a60 & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v74 - 201) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_26;
        }
      }

      else if ((a60 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(a55);
      if ((*(v74 - 201) & 0x80000000) == 0)
      {
LABEL_19:
        if ((a67 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_27;
      }

LABEL_26:
      operator delete(*(v74 - 224));
      if ((a67 & 0x80000000) == 0)
      {
LABEL_20:
        if ((*(v74 - 233) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_28;
      }

LABEL_27:
      operator delete(a62);
      if ((*(v74 - 233) & 0x80000000) == 0)
      {
LABEL_21:
        if (a72 < 0)
        {
          goto LABEL_22;
        }

        goto LABEL_29;
      }

LABEL_28:
      operator delete(*(v74 - 256));
      if (a72 < 0)
      {
LABEL_22:
        operator delete(a68);
        if ((v73 & 1) == 0)
        {
LABEL_31:
          if (*(v74 - 65) < 0)
          {
            operator delete(*(v74 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_30:
        __cxa_free_exception(v72);
        goto LABEL_31;
      }

LABEL_29:
      if (!v73)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_15:
    operator delete(v76);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a35);
  sub_10019FF4C((v74 - 152));
  v76 = a52;
  if (!a52)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_1001B7358(sqlite3_stmt **a1, int a2)
{
  v4 = sqlite3_bind_null(*a1, a2);
  sub_100001838(v4, a1[1]);
  if (v4)
  {
    v5 = __error();
    sub_10023B1C8(*v5, &v25);
    __cxa_allocate_exception(0x40uLL);
    std::to_string(&v20, a2);
    v6 = std::string::insert(&v20, 0, "Failed to bind null to ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_1000474A4(v18, " w/ ");
    if ((v19 & 0x80u) == 0)
    {
      v8 = v18;
    }

    else
    {
      v8 = v18[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v9 = v19;
    }

    else
    {
      v9 = v18[1];
    }

    v10 = std::string::append(&v21, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v17, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
    }

    else
    {
      v17 = v25;
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v17;
    }

    else
    {
      v12 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v22, v12, size);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v24, &v23);
    v24.__vftable = &off_100440BD8;
    sub_10010A984(v16);
  }
}

void sub_1001B76AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a34 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a29);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a22);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v74 - 152));
    v76 = a52;
    if (!a52)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v74 - 168));
      if (*(v74 - 169) < 0)
      {
        operator delete(*(v74 - 192));
        if ((a60 & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v74 - 201) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_26;
        }
      }

      else if ((a60 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(a55);
      if ((*(v74 - 201) & 0x80000000) == 0)
      {
LABEL_19:
        if ((a67 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_27;
      }

LABEL_26:
      operator delete(*(v74 - 224));
      if ((a67 & 0x80000000) == 0)
      {
LABEL_20:
        if ((*(v74 - 233) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_28;
      }

LABEL_27:
      operator delete(a62);
      if ((*(v74 - 233) & 0x80000000) == 0)
      {
LABEL_21:
        if (a72 < 0)
        {
          goto LABEL_22;
        }

        goto LABEL_29;
      }

LABEL_28:
      operator delete(*(v74 - 256));
      if (a72 < 0)
      {
LABEL_22:
        operator delete(a68);
        if ((v73 & 1) == 0)
        {
LABEL_31:
          if (*(v74 - 65) < 0)
          {
            operator delete(*(v74 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_30:
        __cxa_free_exception(v72);
        goto LABEL_31;
      }

LABEL_29:
      if (!v73)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_15:
    operator delete(v76);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a35);
  sub_10019FF4C((v74 - 152));
  v76 = a52;
  if (!a52)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_1001B7918(sqlite3_stmt **a1, int a2, sqlite3_int64 a3)
{
  v6 = sqlite3_bind_int64(*a1, a2, a3);
  sub_100001838(v6, a1[1]);
  if (v6)
  {
    v7 = __error();
    sub_10023B1C8(*v7, &v36);
    __cxa_allocate_exception(0x40uLL);
    std::to_string(&v29, a3);
    v8 = std::string::insert(&v29, 0, "Failed to bind ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v30, " to ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v28, a2);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v28;
    }

    else
    {
      v12 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v31, v12, size);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_1000474A4(v26, " w/ ");
    if ((v27 & 0x80u) == 0)
    {
      v16 = v26;
    }

    else
    {
      v16 = v26[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v17 = v27;
    }

    else
    {
      v17 = v26[1];
    }

    v18 = std::string::append(&v32, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v25, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v36;
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v25;
    }

    else
    {
      v20 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v25.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v33, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v35, &v34);
    v35.__vftable = &off_100440BD8;
    sub_10010A984(v24);
  }
}

void sub_1001B7CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a34 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a29);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a22);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v80 - 152));
    v82 = a52;
    if (!a52)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v80 - 168));
      if (*(v80 - 169) < 0)
      {
        operator delete(*(v80 - 192));
        if ((a60 & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v80 - 201) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_29;
        }
      }

      else if ((a60 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(a55);
      if ((*(v80 - 201) & 0x80000000) == 0)
      {
LABEL_19:
        if ((a66 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_30;
      }

LABEL_29:
      operator delete(*(v80 - 224));
      if ((a66 & 0x80000000) == 0)
      {
LABEL_20:
        if ((*(v80 - 233) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_31;
      }

LABEL_30:
      operator delete(a61);
      if ((*(v80 - 233) & 0x80000000) == 0)
      {
LABEL_21:
        if ((a72 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_32;
      }

LABEL_31:
      operator delete(*(v80 - 256));
      if ((a72 & 0x80000000) == 0)
      {
LABEL_22:
        if ((a78 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_33;
      }

LABEL_32:
      operator delete(a67);
      if ((a78 & 0x80000000) == 0)
      {
LABEL_23:
        if ((a76 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_34;
      }

LABEL_33:
      operator delete(a77);
      if ((a76 & 0x80000000) == 0)
      {
LABEL_24:
        if (a74 < 0)
        {
          goto LABEL_25;
        }

        goto LABEL_35;
      }

LABEL_34:
      operator delete(a75);
      if (a74 < 0)
      {
LABEL_25:
        operator delete(a73);
        if ((v79 & 1) == 0)
        {
LABEL_37:
          if (*(v80 - 65) < 0)
          {
            operator delete(*(v80 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_36:
        __cxa_free_exception(v78);
        goto LABEL_37;
      }

LABEL_35:
      if (!v79)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

LABEL_15:
    operator delete(v82);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a35);
  sub_10019FF4C((v80 - 152));
  v82 = a52;
  if (!a52)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_1001B7FD0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sqlite3_sql(v2);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = "<unknown query>";
    }

    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v11 = v5;
    if (v5)
    {
      memmove(__dst, v4, v5);
    }

    *(__dst + v6) = 0;
    v7 = sqlite3_finalize(*a1);
    if (v7)
    {
      if (qword_10045B080 != -1)
      {
        sub_100384BF8();
      }

      v8 = qword_10045B088;
      if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to finalize with %{public}d", buf, 8u);
      }
    }

    *a1 = 0;
    v9 = *(a1 + 16);
    if (v9)
    {
      *(a1 + 16) = 0;
    }

    if (v11 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_1001B816C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001B8188(sqlite3_stmt **a1, int a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(a3 + 23);
  v7 = *(a3 + 2);
  if (v6 >= 0)
  {
    v8 = v6;
  }

  else
  {
    a3 = *a3;
    v8 = v7;
  }

  v9 = sqlite3_bind_text(v5, a2, a3, v8, 0xFFFFFFFFFFFFFFFFLL);
  sub_100001838(v9, a1[1]);
  if (v9)
  {
    v10 = __error();
    sub_10023B1C8(*v10, &v36);
    __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    v11 = std::string::append(&v30, " to ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v29, a2);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v29;
    }

    else
    {
      v13 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v15 = std::string::append(&v31, v13, size);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    sub_1000474A4(v27, " w/ ");
    if ((v28 & 0x80u) == 0)
    {
      v17 = v27;
    }

    else
    {
      v17 = v27[0];
    }

    if ((v28 & 0x80u) == 0)
    {
      v18 = v28;
    }

    else
    {
      v18 = v27[1];
    }

    v19 = std::string::append(&v32, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v26, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v26 = v36;
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v26;
    }

    else
    {
      v21 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v26.__r_.__value_.__l.__size_;
    }

    v23 = std::string::append(&v33, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v35, &v34);
    v35.__vftable = &off_100440BD8;
    sub_10010A984(v25);
  }
}

void sub_1001B854C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a34 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a29);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a22);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v78 - 152));
    v80 = a52;
    if (!a52)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v78 - 168));
      if (*(v78 - 169) < 0)
      {
        operator delete(*(v78 - 192));
        if ((a60 & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v78 - 201) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_28;
        }
      }

      else if ((a60 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(a55);
      if ((*(v78 - 201) & 0x80000000) == 0)
      {
LABEL_19:
        if ((a66 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_29;
      }

LABEL_28:
      operator delete(*(v78 - 224));
      if ((a66 & 0x80000000) == 0)
      {
LABEL_20:
        if ((*(v78 - 233) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_30;
      }

LABEL_29:
      operator delete(a61);
      if ((*(v78 - 233) & 0x80000000) == 0)
      {
LABEL_21:
        if ((a72 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_31;
      }

LABEL_30:
      operator delete(*(v78 - 256));
      if ((a72 & 0x80000000) == 0)
      {
LABEL_22:
        if ((a76 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_32;
      }

LABEL_31:
      operator delete(a67);
      if ((a76 & 0x80000000) == 0)
      {
LABEL_23:
        if (a74 < 0)
        {
          goto LABEL_24;
        }

        goto LABEL_33;
      }

LABEL_32:
      operator delete(a75);
      if (a74 < 0)
      {
LABEL_24:
        operator delete(a73);
        if ((v77 & 1) == 0)
        {
LABEL_35:
          if (*(v78 - 65) < 0)
          {
            operator delete(*(v78 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_34:
        __cxa_free_exception(v76);
        goto LABEL_35;
      }

LABEL_33:
      if (!v77)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_15:
    operator delete(v80);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a35);
  sub_10019FF4C((v78 - 152));
  v80 = a52;
  if (!a52)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_1001B8810(sqlite3_stmt **a1, int a2, unint64_t a3)
{
  v6 = sqlite3_bind_int64(*a1, a2, a3);
  sub_100001838(v6, a1[1]);
  if (v6)
  {
    v7 = __error();
    sub_10023B1C8(*v7, &v36);
    __cxa_allocate_exception(0x40uLL);
    std::to_string(&v29, a3);
    v8 = std::string::insert(&v29, 0, "Failed to bind ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v30, " to ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v28, a2);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v28;
    }

    else
    {
      v12 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v31, v12, size);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_1000474A4(v26, " w/ ");
    if ((v27 & 0x80u) == 0)
    {
      v16 = v26;
    }

    else
    {
      v16 = v26[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v17 = v27;
    }

    else
    {
      v17 = v26[1];
    }

    v18 = std::string::append(&v32, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v25, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v36;
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v25;
    }

    else
    {
      v20 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v25.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v33, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v35, &v34);
    v35.__vftable = &off_100440BD8;
    sub_10010A984(v24);
  }
}

void sub_1001B8BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a34 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a34 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a29);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a22);
  if ((a47 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    sub_10019FF4C((v80 - 152));
    v82 = a52;
    if (!a52)
    {
LABEL_16:
      std::runtime_error::~runtime_error((v80 - 168));
      if (*(v80 - 169) < 0)
      {
        operator delete(*(v80 - 192));
        if ((a60 & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v80 - 201) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_29;
        }
      }

      else if ((a60 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(a55);
      if ((*(v80 - 201) & 0x80000000) == 0)
      {
LABEL_19:
        if ((a66 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_30;
      }

LABEL_29:
      operator delete(*(v80 - 224));
      if ((a66 & 0x80000000) == 0)
      {
LABEL_20:
        if ((*(v80 - 233) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_31;
      }

LABEL_30:
      operator delete(a61);
      if ((*(v80 - 233) & 0x80000000) == 0)
      {
LABEL_21:
        if ((a72 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_32;
      }

LABEL_31:
      operator delete(*(v80 - 256));
      if ((a72 & 0x80000000) == 0)
      {
LABEL_22:
        if ((a78 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_33;
      }

LABEL_32:
      operator delete(a67);
      if ((a78 & 0x80000000) == 0)
      {
LABEL_23:
        if ((a76 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_34;
      }

LABEL_33:
      operator delete(a77);
      if ((a76 & 0x80000000) == 0)
      {
LABEL_24:
        if (a74 < 0)
        {
          goto LABEL_25;
        }

        goto LABEL_35;
      }

LABEL_34:
      operator delete(a75);
      if (a74 < 0)
      {
LABEL_25:
        operator delete(a73);
        if ((v79 & 1) == 0)
        {
LABEL_37:
          if (*(v80 - 65) < 0)
          {
            operator delete(*(v80 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_36:
        __cxa_free_exception(v78);
        goto LABEL_37;
      }

LABEL_35:
      if (!v79)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

LABEL_15:
    operator delete(v82);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a35);
  sub_10019FF4C((v80 - 152));
  v82 = a52;
  if (!a52)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}