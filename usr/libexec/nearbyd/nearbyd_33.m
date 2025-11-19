void sub_1001E33C8(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0xAE0]) == 1)
  {
    v3 = STACK[0xAC8];
    if (STACK[0xAC8])
    {
      STACK[0xAD0] = v3;
      operator delete(v3);
    }
  }

  v4 = STACK[0x42B0];
  if (STACK[0x42B0])
  {
    STACK[0x42B8] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

id sub_1001E38C8(uint64_t a1)
{
  v2 = *(a1 + 2656);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001E9154;
  v6[3] = &unk_10099D2D8;
  v6[4] = a1;
  [v2 startObserving:PRDebugConfigArgDebugLevel observeImmediately:0 callback:v6];
  v3 = *(a1 + 2656);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001E9274;
  v5[3] = &unk_10099D2D8;
  v5[4] = a1;
  return [v3 startObserving:PRDebugConfigArgLeadingEdgeThresholds observeImmediately:0 callback:v5];
}

uint64_t sub_1001E39BC(uint64_t a1)
{
  sub_1001DA8F4((a1 + 456));
  sub_100258EC8(a1 + 544, 0);
  return 1;
}

uint64_t sub_1001E39F4(uint64_t a1)
{
  sub_1001DA8F4((a1 + 448));
  sub_100258EC8(a1 + 536, 0);
  return 1;
}

void sub_1001E3A74(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#roseprovider,onFirstUnlockNotification, performing first unlock operations", buf, 2u);
  }

  if ((sub_1002581E8(a1 + 544) & 1) == 0)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#roseprovider,onFirstUnlockNotification, attempting reactivation of Rose state machine", buf, 2u);
    }

    sub_100258EC8(a1 + 544, 2);
  }

  v4 = *(a1 + 400);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001E3B90;
  v5[3] = &unk_10099D2D8;
  v5[4] = a1;
  sub_100230274(v4, v5);
}

void sub_1001E3B90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    sub_100004A08(&v8, [v3 UTF8String]);
    v6 = std::string::insert(&v8, 0, "AlishaLPEM FW Crash - ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_100261834(v5 + 544, 3, __p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1001E3C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1001E3C88(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#roseprovider,networkConnectionUpdate, attempting reactivation of Rose state machine", buf, 2u);
    }

    sub_100258EC8(a1 + 544, 1);
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#roseprovider,deregistering network connection listener", v5, 2u);
    }

    sub_1002BEF60(*(a1 + 3152), byte_1009E9430);
  }
}

uint64_t sub_1001E3D5C(uint64_t a1)
{
  *a1 = off_10099D1A8;
  *(a1 + 8) = off_10099D228;
  *(a1 + 16) = off_10099D260;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A886C();
  }

  sub_1001E8BCC((a1 + 3152), 0);
  std::mutex::~mutex((a1 + 2752));

  v2 = *(a1 + 2712);
  if (v2)
  {
    *(a1 + 2720) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 2688);
  if (v3)
  {
    *(a1 + 2696) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 2672);
  if (v4)
  {
    sub_10000AD84(v4);
  }

  if (*(a1 + 2392) == 1)
  {
    if (*(a1 + 2376) == 1)
    {
      if (*(a1 + 2375) < 0)
      {
        operator delete(*(a1 + 2352));
      }

      if (*(a1 + 2343) < 0)
      {
        operator delete(*(a1 + 2320));
      }
    }

    if (*(a1 + 2303) < 0)
    {
      operator delete(*(a1 + 2280));
    }
  }

  v5 = *(a1 + 2272);
  if (v5)
  {
    sub_10000AD84(v5);
  }

  sub_100257F04(a1 + 544);
  sub_1001DA8F0((a1 + 456));
  v6 = *(a1 + 448);
  if (v6)
  {
    sub_10000AD84(v6);
  }

  std::mutex::~mutex((a1 + 336));
  std::mutex::~mutex((a1 + 272));
  std::mutex::~mutex((a1 + 208));
  std::mutex::~mutex((a1 + 144));
  std::mutex::~mutex((a1 + 80));
  std::condition_variable::~condition_variable((a1 + 32));
  return a1;
}

void sub_1001E3F10(uint64_t a1)
{
  sub_1001E3D5C(a1);

  operator delete();
}

void sub_1001E3F48(uint64_t a1)
{
  sub_1001E3D5C(a1 - 8);

  operator delete();
}

void sub_1001E3F84(uint64_t a1)
{
  sub_1001E3D5C(a1 - 16);

  operator delete();
}

uint64_t sub_1001E3FC0(uint64_t a1)
{
  sub_1001DB2F4(&v4, (a1 + 456));
  if (sub_10026A510(a1 + 544))
  {
    v2 = sub_100261060(a1 + 544);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A88A8();
    }

    v2 = 0;
  }

  sub_1001DB378(&v4);
  return v2;
}

void sub_1001E4048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001DB378(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E4068(uint64_t a1, uint64_t a2)
{
  sub_1001DB2F4(&v12, (a1 + 456));
  if (sub_10026A510(a1 + 544))
  {
    v10 = sub_100261124(a1 + 544, a2, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A88DC();
    }

    v10 = 0;
  }

  sub_1001DB378(&v12);
  return v10;
}

void sub_1001E40F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001DB378(va);
  _Unwind_Resume(a1);
}

void sub_1001E4110(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_1001DB2F4(&v5, (a1 + 456));
  if (sub_10026A510(a1 + 544))
  {
    sub_1002611A8(a1 + 544, v3);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A8910();
    }

    v4[0] = 0;
    v4[24] = 0;
    (*(v3 + 2))(v3, 0, v4);
  }

  sub_1001DB378(&v5);
}

uint64_t sub_1001E41EC(uint64_t a1, int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#roseprovider,_requestPowerChange shouldPowerOn %d", v6, 8u);
  }

  if (a2)
  {
    return sub_1001E42B8(a1);
  }

  sub_1001DADF4((a1 + 456));
  return 1;
}

uint64_t sub_1001E42B8(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#roseprovider,_ensureRosePowerOnAndReadySync", v5, 2u);
  }

  sub_1001DACF4((a1 + 456));
  v3 = sub_10026A510(a1 + 544);
  if ((v3 & 1) == 0)
  {
    sub_1001DADF4((a1 + 456));
  }

  return v3;
}

CFDataRef sub_1001E4348(uint64_t a1)
{
  sub_1001DB2F4(&v4, (a1 + 456));
  if (sub_10026A510(a1 + 544))
  {
    v2 = sub_100261C08(a1 + 544);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A8944();
    }

    v2 = 0;
  }

  sub_1001DB378(&v4);
  return v2;
}

void sub_1001E43D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001DB378(va);
  _Unwind_Resume(a1);
}

void sub_1001E43E4(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (a2[1] - *a2 > 0x23uLL)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100192CE4(v3, v6, v7, v8, v9, v10, v11, v12);
      sub_1004A8978(v13);
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A89CC(v2, a2);
  }
}

void sub_1001E44D4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  __lk.__m_ = (a1 + 144);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 144));
  atomic_store(0, (a1 + 24));
  __p = 0;
  v17 = 0;
  v18 = 0;
  v6 = sub_10025CB6C(a1 + 544, 0x25u, &__p, &v20);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (!v6)
  {
    v14 = qword_1009F9820;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10041BA9C(0x25u, &__p);
      sub_1004A8A48(&__p);
    }

    sub_1001E43E4(v15, &v20);
    goto LABEL_26;
  }

  v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * a2;
  do
  {
    v8 = atomic_load((a1 + 24));
    if (v8)
    {
      goto LABEL_22;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v7.__d_.__rep_)
    {
      break;
    }

    v9.__d_.__rep_ = v7.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v9.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v10.__d_.__rep_)
      {
        v11 = 0;
        goto LABEL_18;
      }

      if (v10.__d_.__rep_ < 1)
      {
        if (v10.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v11 = 0x8000000000000000;
          goto LABEL_18;
        }
      }

      else if (v10.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_16;
      }

      v11 = 1000 * v10.__d_.__rep_;
LABEL_16:
      if (v11 > (v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v12.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:
        std::condition_variable::__do_timed_wait((a1 + 32), &__lk, v12);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_18:
      v12.__d_.__rep_ = v11 + v9.__d_.__rep_;
      goto LABEL_19;
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v7.__d_.__rep_);
  v13 = atomic_load((a1 + 24));
  if (v13)
  {
LABEL_22:
    sub_1000198EC(a3, (a1 + 2280));
    goto LABEL_27;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A8A9C();
  }

LABEL_26:
  *a3 = 0;
  a3[112] = 0;
LABEL_27:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_1001E4728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, std::mutex *a12, char a13, void *__p, uint64_t a15)
{
  std::mutex::unlock(a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001E4788(uint64_t a1)
{
  if (!sub_10025D908(a1 + 544) && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A8AD0();
  }
}

void sub_1001E47D8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = (a1 + 2752);
  v35 = 0;
  __lk.__m_ = (a1 + 144);
  __lk.__owns_ = 0;
  sub_1001E4C08(&v34, &__lk);
  if (*(a1 + 2948) == 1)
  {
    *(a1 + 2948) = 0;
  }

  if (*(a1 + 3098) == 1)
  {
    *(a1 + 3098) = 0;
  }

  sub_1001E4788(a1);
  for (i = 0; i != 112; i += 4)
  {
    v5 = v32 + i;
    *(v5 + 9) = 0;
    v5[12] = 0;
  }

  v6 = 0;
  *(&v32[9] + 10) = 0;
  *(&v32[8] + 10) = 0u;
  *(&v32[7] + 10) = 0u;
  HIWORD(v32[9]) = -1;
  LOBYTE(v32[10]) = -127;
  do
  {
    v7 = v32 + v6;
    v7[161] = 0;
    *(v7 + 81) = -1;
    *(v7 + 164) = 0;
    *(v7 + 43) = 129;
    v6 += 15;
  }

  while (v6 != 120);
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v9 = v8.__d_.__rep_ + 2000000000.0;
  v10 = -9.22337204e18;
  if (v9 > -9.22337204e18)
  {
    v10 = v8.__d_.__rep_ + 2000000000.0;
  }

  if (v9 < 9.22337204e18)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  while ((*(a1 + 2948) & 1) == 0)
  {
    if (v9 <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      goto LABEL_30;
    }

    v12.__d_.__rep_ = v11 - std::chrono::steady_clock::now().__d_.__rep_;
    if (v12.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v13.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (v13.__d_.__rep_)
      {
        if (v13.__d_.__rep_ < 1)
        {
          if (v13.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
          {
            goto LABEL_24;
          }

          v14 = 0x8000000000000000;
        }

        else
        {
          if (v13.__d_.__rep_ > 0x20C49BA5E353F7)
          {
            v14 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_25;
          }

LABEL_24:
          v14 = 1000 * v13.__d_.__rep_;
LABEL_25:
          if (v14 > (v12.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
          {
            v15.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_28:
            std::condition_variable::__do_timed_wait((a1 + 32), &__lk, v15);
            std::chrono::steady_clock::now();
            goto LABEL_29;
          }
        }
      }

      else
      {
        v14 = 0;
      }

      v15.__d_.__rep_ = v14 + v12.__d_.__rep_;
      goto LABEL_28;
    }

LABEL_29:
    if (v9 <= std::chrono::steady_clock::now().__d_.__rep_)
    {
LABEL_30:
      if ((*(a1 + 2948) & 1) == 0)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
        {
          sub_1004A8B04();
        }

        goto LABEL_58;
      }

      break;
    }
  }

  v16 = *(a1 + 2928);
  v32[6] = *(a1 + 2912);
  v32[7] = v16;
  LODWORD(v32[8]) = *(a1 + 2944);
  v17 = *(a1 + 2864);
  v32[2] = *(a1 + 2848);
  v32[3] = v17;
  v18 = *(a1 + 2896);
  v32[4] = *(a1 + 2880);
  v32[5] = v18;
  v19 = *(a1 + 2832);
  v32[0] = *(a1 + 2816);
  v32[1] = v19;
  *(a1 + 2948) = 0;
  v20 = std::chrono::steady_clock::now().__d_.__rep_ + 2000000000.0;
  v21 = -9.22337204e18;
  if (v20 > -9.22337204e18)
  {
    v21 = v20;
  }

  if (v20 < 9.22337204e18)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  while (2)
  {
    if (*(a1 + 3098))
    {
      goto LABEL_53;
    }

    if (v20 <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      break;
    }

    v23.__d_.__rep_ = v22 - std::chrono::steady_clock::now().__d_.__rep_;
    if (v23.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v24.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (v24.__d_.__rep_)
      {
        if (v24.__d_.__rep_ < 1)
        {
          if (v24.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
          {
            goto LABEL_46;
          }

          v25 = 0x8000000000000000;
        }

        else
        {
          if (v24.__d_.__rep_ > 0x20C49BA5E353F7)
          {
            v25 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_47;
          }

LABEL_46:
          v25 = 1000 * v24.__d_.__rep_;
LABEL_47:
          if (v25 > (v23.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
          {
            v26.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_50;
          }
        }
      }

      else
      {
        v25 = 0;
      }

      v26.__d_.__rep_ = v25 + v23.__d_.__rep_;
LABEL_50:
      std::condition_variable::__do_timed_wait((a1 + 32), &__lk, v26);
      std::chrono::steady_clock::now();
    }

    if (v20 > std::chrono::steady_clock::now().__d_.__rep_)
    {
      continue;
    }

    break;
  }

  if (*(a1 + 3098))
  {
LABEL_53:
    v27 = *(a1 + 3061);
    *(&v32[14] + 4) = *(a1 + 3045);
    *(&v32[15] + 4) = v27;
    *(&v32[16] + 4) = *(a1 + 3077);
    *(&v32[17] + 1) = *(a1 + 3090);
    v28 = *(a1 + 2997);
    *(&v32[10] + 4) = *(a1 + 2981);
    *(&v32[11] + 4) = v28;
    v29 = *(a1 + 3029);
    *(&v32[12] + 4) = *(a1 + 3013);
    *(&v32[13] + 4) = v29;
    v30 = *(a1 + 2965);
    *(&v32[8] + 4) = *(a1 + 2949);
    *(&v32[9] + 4) = v30;
    *(a1 + 3098) = 0;
    memcpy(a2, v32, 0x119uLL);
    v31 = 1;
    goto LABEL_59;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004A8B38();
  }

LABEL_58:
  v31 = 0;
  *a2 = 0;
LABEL_59:
  a2[281] = v31;
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  if (v35 == 1)
  {
    std::mutex::unlock(v34);
  }
}

void sub_1001E4BD8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 136))
  {
    std::mutex::unlock(*(v1 - 144));
  }

  if (*(v1 - 120) == 1)
  {
    std::mutex::unlock(*(v1 - 128));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001E4C08(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    sub_1001E9B30(a1);
    result = sub_1001E9AD4(a2);
    if (result)
    {
      break;
    }

    sub_1001E9BCC(a1);
    sched_yield();
    sub_1001E9B30(a2);
    result = sub_1001E9AD4(a1);
    if (result)
    {
      break;
    }

    sub_1001E9BCC(a2);
    sched_yield();
  }

  return result;
}

void sub_1001E4CB4(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = (a1 + 272);
  v33 = 0;
  __lk.__m_ = (a1 + 144);
  __lk.__owns_ = 0;
  sub_1001E4C08(&v32, &__lk);
  v10 = (a1 + 2582);
  if (*(a1 + 2582) == 1)
  {
    *v10 = 0;
  }

  v27 = 0;
  v28 = sub_1001B2150(a2, a3, a4);
  v29 = v11;
  v25 = 0;
  v26 = 0;
  sub_1000069DC(&v25, &v28, v30, 10);
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (!sub_10025CB6C(a1 + 544, 0x37u, &v25, &__p))
  {
    v21 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT);
    if (v21)
    {
      sub_1004A8B6C();
    }

    sub_1001E43E4(v21, &__p);
    goto LABEL_32;
  }

  v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v13 = v12.__d_.__rep_ + 2500000000.0;
  v14 = -9.22337204e18;
  if (v13 > -9.22337204e18)
  {
    v14 = v12.__d_.__rep_ + 2500000000.0;
  }

  if (v13 < 9.22337204e18)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  do
  {
    if (*v10)
    {
      goto LABEL_26;
    }

    if (v13 <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      break;
    }

    v16.__d_.__rep_ = v15 - std::chrono::steady_clock::now().__d_.__rep_;
    if (v16.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v17.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v17.__d_.__rep_)
      {
        v18 = 0;
        goto LABEL_22;
      }

      if (v17.__d_.__rep_ < 1)
      {
        if (v17.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v18 = 0x8000000000000000;
          goto LABEL_22;
        }
      }

      else if (v17.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_20;
      }

      v18 = 1000 * v17.__d_.__rep_;
LABEL_20:
      if (v18 > (v16.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v19.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_23:
        std::condition_variable::__do_timed_wait((a1 + 32), &__lk, v19);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_22:
      v19.__d_.__rep_ = v18 + v16.__d_.__rep_;
      goto LABEL_23;
    }
  }

  while (v13 > std::chrono::steady_clock::now().__d_.__rep_);
  if (*v10)
  {
LABEL_26:
    *a5 = *(a1 + 2564);
    *(a5 + 16) = *(a1 + 2580);
    v20 = 1;
    goto LABEL_33;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004A8BA0();
  }

LABEL_32:
  v20 = 0;
  v10 = a5;
LABEL_33:
  *v10 = 0;
  *(a5 + 18) = v20;
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  if (v33 == 1)
  {
    std::mutex::unlock(v32);
  }
}

void sub_1001E4F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::mutex *a17, char a18, std::mutex *a19, char a20)
{
  if (a18 == 1)
  {
    std::mutex::unlock(a17);
  }

  if (a20 == 1)
  {
    std::mutex::unlock(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001E4FB4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  JUMPOUT(0x1001E4F84);
}

void sub_1001E4FDC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __lk.__m_ = (a1 + 144);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 144));
  v6 = (a1 + 2400);
  if (*(a1 + 2493) == 1)
  {
    *a3 = 0;
    v7 = *(a1 + 2448);
    *(a3 + 36) = *(a1 + 2432);
    *(a3 + 52) = v7;
    *(a3 + 68) = *(a1 + 2464);
    *(a3 + 82) = *(a1 + 2478);
    v8 = *(a1 + 2416);
    *(a3 + 4) = *v6;
    *(a3 + 20) = v8;
    goto LABEL_38;
  }

  v9 = sub_1000054A8();
  v10 = v9[213];
  if (v10)
  {
    *a3 = 0;
    *(a3 + 36) = *(v9 + 152);
    *(a3 + 52) = *(v9 + 168);
    *(a3 + 68) = *(v9 + 184);
    *(a3 + 81) = *(v9 + 197);
    *(a3 + 4) = *(v9 + 120);
    *(a3 + 20) = *(v9 + 136);
    *(a3 + 97) = v10;
    goto LABEL_37;
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  __p = 0;
  v30 = 0;
  v31 = 0;
  v11 = sub_10025CB6C(a1 + 544, 0x30u, &__p, &v32);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  if (!v11)
  {
    v26 = qword_1009F9820;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10041BA9C(0x30u, &__p);
      sub_1004A8BD4(&__p);
    }

    sub_1001E43E4(v27, &v32);
    v28 = -1005;
    goto LABEL_34;
  }

  v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * a2;
  do
  {
    if (*(a1 + 2493))
    {
      goto LABEL_26;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v12.__d_.__rep_)
    {
      break;
    }

    v13.__d_.__rep_ = v12.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v13.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v14.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v14.__d_.__rep_)
      {
        v15 = 0;
        goto LABEL_22;
      }

      if (v14.__d_.__rep_ < 1)
      {
        if (v14.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v15 = 0x8000000000000000;
          goto LABEL_22;
        }
      }

      else if (v14.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_20;
      }

      v15 = 1000 * v14.__d_.__rep_;
LABEL_20:
      if (v15 > (v13.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v16.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_23:
        std::condition_variable::__do_timed_wait((a1 + 32), &__lk, v16);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_22:
      v16.__d_.__rep_ = v15 + v13.__d_.__rep_;
      goto LABEL_23;
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v12.__d_.__rep_);
  if (*(a1 + 2493))
  {
LABEL_26:
    v17 = sub_1000054A8();
    if ((*(a1 + 2493) & 1) == 0)
    {
      sub_1000195BC();
    }

    sub_10046046C(v17, (a1 + 2400), v18, v19, v20, v21, v22, v23);
    *a3 = 0;
    v24 = *(a1 + 2448);
    *(a3 + 36) = *(a1 + 2432);
    *(a3 + 52) = v24;
    *(a3 + 68) = *(a1 + 2464);
    *(a3 + 82) = *(a1 + 2478);
    v25 = *(a1 + 2416);
    *(a3 + 4) = *v6;
    *(a3 + 20) = v25;
    goto LABEL_35;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A8C28();
  }

  v28 = -1006;
LABEL_34:
  *a3 = v28;
  *(a3 + 4) = 0;
  *(a3 + 97) = 0;
LABEL_35:
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

LABEL_37:
  if (__lk.__owns_)
  {
LABEL_38:
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_1001E52EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, std::mutex *a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::mutex::unlock(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1001E534C(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  sub_100009838(&v32, 4uLL);
  *v32 = a2;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v27 = (a1 + 208);
  v28 = 0;
  __lk.__m_ = (a1 + 144);
  __lk.__owns_ = 0;
  sub_1001E4C08(&v27, &__lk);
  if (*(a1 + 2563) == 1)
  {
    *(a1 + 2563) = 0;
  }

  if (!sub_10025CB6C(a1 + 544, 0x31u, &v32, &v29))
  {
    v19 = qword_1009F9820;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10041BA9C(0x31u, __p);
      sub_1004A8BD4(__p);
    }

    sub_1001E43E4(v20, &v29);
    v21 = -1007;
    goto LABEL_35;
  }

  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * a3;
  do
  {
    v9 = qword_1009F9820;
    if (os_signpost_enabled(qword_1009F9820))
    {
      LOWORD(__p[0]) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NIAlishaSignpost_KeyCommandResponseElapse", "", __p, 2u);
    }

    if (*(a1 + 2563))
    {
      goto LABEL_26;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v8.__d_.__rep_)
    {
      break;
    }

    v10.__d_.__rep_ = v8.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v10.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v11.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v11.__d_.__rep_)
      {
        v12 = 0;
        goto LABEL_20;
      }

      if (v11.__d_.__rep_ < 1)
      {
        if (v11.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v12 = 0x8000000000000000;
          goto LABEL_20;
        }
      }

      else if (v11.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_18;
      }

      v12 = 1000 * v11.__d_.__rep_;
LABEL_18:
      if (v12 > (v10.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v13.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_21:
        std::condition_variable::__do_timed_wait((a1 + 32), &__lk, v13);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_20:
      v13.__d_.__rep_ = v12 + v10.__d_.__rep_;
      goto LABEL_21;
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v8.__d_.__rep_);
  v14 = qword_1009F9820;
  if (os_signpost_enabled(qword_1009F9820))
  {
    LOWORD(__p[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NIAlishaSignpost_KeyCommandResponseElapse", "", __p, 2u);
  }

  if (*(a1 + 2563))
  {
LABEL_26:
    v15 = *(a1 + 2526);
    v25[0] = *(a1 + 2542);
    *(v25 + 14) = *(a1 + 2556);
    v16 = *(v25 + 14);
    v17 = *(a1 + 2494);
    v18 = *(a1 + 2510);
    *(a1 + 2563) = 0;
    *a4 = 0;
    *(a4 + 20) = v18;
    *(a4 + 36) = v15;
    *(a4 + 4) = v17;
    *(a4 + 66) = v16;
    *(a4 + 52) = v25[0];
    goto LABEL_36;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A8C5C();
  }

  sub_100004A08(__p, "AlishaGetKeyTimedOut");
  sub_100261834(a1 + 544, 0, __p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = sub_1002BD51C();
  sub_1002BD590(v22, 3);
  v21 = -1002;
LABEL_35:
  *a4 = v21;
  *(a4 + 4) = 0;
  *(a4 + 73) = 0;
LABEL_36:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  if (v28 == 1)
  {
    std::mutex::unlock(v27);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }
}

void sub_1001E56EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::mutex *a22, char a23, std::mutex *a24, char a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 == 1)
  {
    std::mutex::unlock(a22);
  }

  if (a25 == 1)
  {
    std::mutex::unlock(a24);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001E5778(uint64_t a1@<X0>, int a2@<W1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  sub_100009838(&v32, 0x24uLL);
  v10 = v32;
  *v32 = a2;
  v11 = *a3;
  *(v10 + 20) = a3[1];
  *(v10 + 4) = v11;
  __p = 0;
  v30 = 0;
  v31 = 0;
  v27 = (a1 + 208);
  v28 = 0;
  __lk.__m_ = (a1 + 144);
  __lk.__owns_ = 0;
  sub_1001E4C08(&v27, &__lk);
  if (*(a1 + 2563) == 1)
  {
    *(a1 + 2563) = 0;
  }

  if (!sub_10025CB6C(a1 + 544, 0x32u, &v32, &__p))
  {
    v21 = qword_1009F9820;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10041BA9C(0x32u, v24);
      sub_1004A8BD4(v24);
    }

    sub_1001E43E4(v22, &__p);
    v23 = -1009;
    goto LABEL_29;
  }

  v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * a4;
  do
  {
    if (*(a1 + 2563))
    {
      goto LABEL_22;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v12.__d_.__rep_)
    {
      break;
    }

    v13.__d_.__rep_ = v12.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v13.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v14.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v14.__d_.__rep_)
      {
        v15 = 0;
        goto LABEL_18;
      }

      if (v14.__d_.__rep_ < 1)
      {
        if (v14.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v15 = 0x8000000000000000;
          goto LABEL_18;
        }
      }

      else if (v14.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_16;
      }

      v15 = 1000 * v14.__d_.__rep_;
LABEL_16:
      if (v15 > (v13.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v16.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:
        std::condition_variable::__do_timed_wait((a1 + 32), &__lk, v16);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_18:
      v16.__d_.__rep_ = v15 + v13.__d_.__rep_;
      goto LABEL_19;
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v12.__d_.__rep_);
  if (*(a1 + 2563))
  {
LABEL_22:
    v17 = *(a1 + 2526);
    v25[0] = *(a1 + 2542);
    *(v25 + 14) = *(a1 + 2556);
    v18 = *(v25 + 14);
    v19 = *(a1 + 2494);
    v20 = *(a1 + 2510);
    *(a1 + 2563) = 0;
    *a5 = 0;
    *(a5 + 20) = v20;
    *(a5 + 36) = v17;
    *(a5 + 4) = v19;
    *(a5 + 66) = v18;
    *(a5 + 52) = v25[0];
    goto LABEL_30;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A8C90();
  }

  v23 = -1010;
LABEL_29:
  *a5 = v23;
  *(a5 + 4) = 0;
  *(a5 + 73) = 0;
LABEL_30:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  if (v28 == 1)
  {
    std::mutex::unlock(v27);
  }

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }
}

void sub_1001E5A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::mutex *a19, char a20, std::mutex *a21, char a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (a20 == 1)
  {
    std::mutex::unlock(a19);
  }

  if (a22 == 1)
  {
    std::mutex::unlock(a21);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001E5AC4(uint64_t a1, int a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_100009838(&v12, 4uLL);
  *v12 = a2;
  __p = 0;
  v10 = 0;
  v11 = 0;
  if (sub_10025CB6C(a1 + 544, 0x35u, &v12, &__p))
  {
    v4 = 0;
  }

  else
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10041BA9C(0x35u, v8);
      sub_1004A8BD4(v8);
    }

    sub_1001E43E4(v6, &__p);
    v4 = 4294966272;
  }

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return v4;
}

void sub_1001E5BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v18 = v17;

  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001E5C44(uint64_t a1, char a2)
{
  if (sub_10025F274(a1 + 544, a2))
  {
    return 0;
  }

  else
  {
    return 4294966268;
  }
}

unint64_t sub_1001E5C6C(uint64_t a1)
{
  v1 = sub_10025F530(a1 + 544);
  v2 = 4294966267;
  if ((v1 & 0x100) != 0)
  {
    v2 = 0;
  }

  return v2 | ((v1 & ((v1 << 7) >> 15)) << 32);
}

BOOL sub_1001E5CA8(uint64_t a1, char a2, __int16 a3, __int16 a4)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_100009838(&v17, 5uLL);
  v8 = v17;
  *v17 = a2;
  *(v8 + 1) = a3;
  *(v8 + 3) = a4;
  __p = 0;
  v15 = 0;
  v16 = 0;
  v9 = sub_10025CB6C(a1 + 544, 0x39u, &v17, &__p);
  if (!v9)
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10041BA9C(0x39u, v13);
      sub_1004A8CC4(v13);
    }

    sub_1001E43E4(v11, &__p);
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return v9;
}

void sub_1001E5DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1001E5E0C(uint64_t a1, int a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_100009838(&v12, 4uLL);
  *v12 = a2;
  __p = 0;
  v10 = 0;
  v11 = 0;
  v4 = sub_10025CB6C(a1 + 544, 0x3Bu, &v12, &__p);
  if (!v4)
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10041BA9C(0x3Bu, v8);
      sub_1004A8CC4(v8);
    }

    sub_1001E43E4(v6, &__p);
  }

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return v4;
}

void sub_1001E5F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1001E5F58(uint64_t a1, double a2)
{
  v61 = 0;
  v60 = 0;
  v62 = 0;
  v58 = 0;
  __src = 0;
  v59 = 0;
  sub_100009838(&__src, 0x390uLL);
  v42 = sub_10025CB6C(a1 + 544, 0x3Cu, &v60, &__src);
  if (v42)
  {
    memcpy(__dst, __src, sizeof(__dst));
    v52 = xmmword_1005648E0;
    v53 = 0;
    v54 = 0;
    v55 = 1;
    v4 = sub_1002FE75C(a1 + 3104, a2);
    v5 = 0.0;
    if (v6)
    {
      v7 = *&v4;
      v8 = sub_1002FEB94(*&v4);
      if (v9)
      {
        v5 = *&v8;
      }
    }

    else
    {
      v7 = 0.0;
    }

    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v43 = WORD1(__dst[0]);
      *buf = 67109632;
      *&buf[4] = LOWORD(__dst[0]);
      v66 = 1024;
      v67 = LOWORD(__dst[0]);
      v68 = 1024;
      LODWORD(v69) = (WORD1(__dst[0]) >> 14) & 1;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#roseprovider,#aop-sf-report: btConnHandle = 0x%04x (%u) IODisp before first entry: %d (ts in ms)", buf, 0x14u);
    }

    else
    {
      v43 = WORD1(__dst[0]);
    }

    v13 = *(__dst + 4);
    sub_100193120(buf);
    sub_10000EA44(&v69, "[", 1);
    v14 = v43 & 0x3FFF;
    if ((v43 & 0x3FFF) != 0)
    {
      v15 = 0;
      v40 = (v43 >> 14) & 1;
      LOBYTE(v41) = 0;
      v16 = (v14 - 1);
      v17 = 12;
      while (1)
      {
        v45 = *(__dst + v17);
        v46 = *(__dst + v17 + 2);
        v13 += v45 & 0x3F;
        v18 = v45 >> 6;
        if (v18 > 1)
        {
          if (v18 == 2)
          {
            sub_10000EA44(&v69, "(", 1);
            v24 = std::ostream::operator<<();
            sub_10000EA44(v24, ")rIdx:", 6);
            v25 = std::ostream::operator<<();
            sub_10000EA44(v25, " rngCM:", 7);
            v26 = std::ostream::operator<<();
            sub_10000EA44(v26, " locZn:", 7);
            v27 = std::ostream::operator<<();
            sub_10000EA44(v27, ",", 1);
            ++v15;
            if ((v43 & 0x8000) == 0)
            {
              v28 = *(a1 + 2264);
              if (v28)
              {
                *&v44.__r_.__value_.__l.__data_ = v5 - (v7 - (10000 * v13) / 1000000.0);
                v44.__r_.__value_.__l.__size_ = 0;
                *&v44.__r_.__value_.__r.__words[2] = (10000 * v13) / 1000000.0;
                sub_1002EB3C8(v28, &v44, (&v45 + 1), 10000 * v13, LOWORD(__dst[0]));
              }
            }
          }

          goto LABEL_28;
        }

        if (!v18)
        {
          break;
        }

        v29 = HIBYTE(v45);
        if ((v45 & 0x800) == 0)
        {
          sub_10000EA44(&v69, "(", 1);
          v30 = std::ostream::operator<<();
          if (v29)
          {
            sub_10000EA44(v30, ")IODis:", 7);
            v40 = (v29 >> 1) & 1;
          }

          else
          {
            sub_10000EA44(v30, ")SFinB:", 7);
            v41 = (v29 >> 2) & 1;
          }

          v31 = std::ostream::operator<<();
          sub_10000EA44(v31, ",", 1);
          ++v15;
LABEL_28:
          if ((-51 * v15) < 0x34u && v15 != 0 || v16 == 0)
          {
            v34 = sub_10000EA44(&v69, "]", 1);
            std::ios_base::getloc((v34 + *(*v34 - 24)));
            v35 = std::locale::use_facet(&v44, &std::ctype<char>::id);
            (v35->__vftable[2].~facet_0)(v35, 10);
            std::locale::~locale(&v44);
            std::ostream::put();
            std::ostream::flush();
            v36 = qword_1009F9820;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              std::stringbuf::str();
              v37 = &v44;
              if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v37 = v44.__r_.__value_.__r.__words[0];
              }

              *v63 = 136315138;
              v64 = v37;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#roseprovider,#aop-sf-report: %s", v63, 0xCu);
              if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v44.__r_.__value_.__l.__data_);
              }
            }

            sub_100004A08(&v44, "");
            std::string::operator=(&__p, &v44);
            sub_1001935D0(&v70);
            if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v44.__r_.__value_.__l.__data_);
            }

            sub_10000EA44(&v69, "[", 1);
          }
        }

        v17 += 3;
        --v16;
        if (!--v14)
        {
          goto LABEL_45;
        }
      }

      sub_10000EA44(&v69, "(", 1);
      v19 = std::ostream::operator<<();
      sub_10000EA44(v19, ")r:", 3);
      v20 = std::ostream::operator<<();
      sub_10000EA44(v20, " f:", 3);
      v21 = std::ostream::operator<<();
      sub_10000EA44(v21, ",", 1);
      ++v15;
      if ((v43 & 0x8000) == 0)
      {
        v22 = *(a1 + 2264);
        if (v22)
        {
          *&v44.__r_.__value_.__l.__data_ = v5 - (v7 - (10000 * v13) / 1000000.0);
          v44.__r_.__value_.__l.__size_ = 0;
          *&v44.__r_.__value_.__r.__words[2] = (10000 * v13) / 1000000.0;
          *&v52 = v46;
          v53 = 10000 * v13;
          LOBYTE(v54) = v41 & 1;
          HIBYTE(v54) = 1;
          v55 = v40 & 1;
          v50 = 10000 * v13;
          v23 = __dst[0];
          v51 = __dst[0];
          sub_1002EACE8(v22, &v44, &v50);
          v47 = 10000 * v13;
          v48 = v23;
          v49 = HIBYTE(v45);
          sub_1002EA894(*(a1 + 2264), &v44, &v47);
        }
      }

      goto LABEL_28;
    }

LABEL_45:
    v69 = v38;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::locale::~locale(&v71);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  else
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10041BA9C(0x3Cu, __dst);
      sub_1004A8D18(__dst);
    }

    sub_1001E43E4(v11, &__src);
  }

  if (__src)
  {
    v58 = __src;
    operator delete(__src);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  return v42;
}

void sub_1001E676C(_Unwind_Exception *a1)
{
  v3 = STACK[0x410];
  if (STACK[0x410])
  {
    STACK[0x418] = v3;
    operator delete(v3);
  }

  v4 = STACK[0x428];
  if (STACK[0x428])
  {
    STACK[0x430] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001E6820(uint64_t a1, uint64_t a2, double a3)
{
  *(a2 + 8) = a3;
  v4 = sub_1002FE75C(a1 + 3104, a3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  *(a2 + 16) = v4;
  v6 = sub_1002FEB94(*&v4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  *a2 = v6;
  return 1;
}

uint64_t sub_1001E6878(uint64_t a1)
{
  std::mutex::lock((a1 + 336));
  v15 = 1;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_1000069DC(&v12, &v15, buf, 1);
  __p = 0;
  v11[0] = 0;
  v11[1] = 0;
  if (!sub_10025CB6C(a1 + 544, 0x2Du, &v12, &__p))
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10041BA9C(0x2Du, buf);
      sub_1004A8D6C(buf);
    }

    goto LABEL_9;
  }

  v2 = __p;
  if (v11[0] == __p)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A8DC0(v11, &__p);
    }

LABEL_9:
    LOBYTE(v7) = 0;
    v8 = 0;
    goto LABEL_15;
  }

  *(a1 + 2648) = *__p | 0x100;
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *v2;
    if (v4 > 2)
    {
      v5 = "";
    }

    else
    {
      v5 = off_10099D660[v4];
    }

    *buf = 136315138;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#roseprovider,#deep-slp QueryDeepSleepState complete state: %s", buf, 0xCu);
  }

  v7 = *(a1 + 2648);
  v8 = v7 >> 8;
LABEL_15:
  if (__p)
  {
    v11[0] = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  std::mutex::unlock((a1 + 336));
  return v7 | (v8 << 8);
}

void sub_1001E6A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  v16 = v15;

  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  std::mutex::unlock((v14 + 336));
  _Unwind_Resume(a1);
}

uint64_t sub_1001E6AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_100009838(&__p, 5uLL);
  v6 = __p;
  v7 = *(a2 + 16);
  while (1)
  {
    v8 = __p;
    if (!v7)
    {
      break;
    }

    if (v12 - __p >= 1)
    {
      bzero(__p, v12 - __p);
    }

    *(v6 + 1) = *(v7 + 4);
    ++*v6;
    v7 = *v7;
    v9 = sub_1001E6BAC(a1, &__p, a3);
    if (v9)
    {
      v8 = __p;
      if (!__p)
      {
        return v9;
      }

      goto LABEL_9;
    }
  }

  v9 = 0;
  if (!__p)
  {
    return v9;
  }

LABEL_9:
  v12 = v8;
  operator delete(v8);
  return v9;
}

void sub_1001E6B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001E6BAC(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2[1] - *a2 != 5)
  {
    sub_1004A8E3C();
  }

  __p = 0;
  v23 = 0;
  v24 = 0;
  v20 = (a1 + 208);
  v21 = 0;
  __lk.__m_ = (a1 + 144);
  __lk.__owns_ = 0;
  sub_1001E4C08(&v20, &__lk);
  if (*(a1 + 2563) == 1)
  {
    *(a1 + 2563) = 0;
  }

  if (!sub_10025CB6C(a1 + 544, 0x33u, a2, &__p))
  {
    v16 = qword_1009F9820;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10041BA9C(0x33u, &buf);
      sub_1004A8BD4(&buf);
    }

    sub_1001E43E4(v17, &__p);
    v15 = 4294966278;
    goto LABEL_35;
  }

  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * a3;
  do
  {
    if (*(a1 + 2563))
    {
      goto LABEL_23;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v6.__d_.__rep_)
    {
      break;
    }

    v7.__d_.__rep_ = v6.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v7.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v8.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v8.__d_.__rep_)
      {
        v9 = 0;
        goto LABEL_19;
      }

      if (v8.__d_.__rep_ < 1)
      {
        if (v8.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v9 = 0x8000000000000000;
          goto LABEL_19;
        }
      }

      else if (v8.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_17;
      }

      v9 = 1000 * v8.__d_.__rep_;
LABEL_17:
      if (v9 > (v7.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v10.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_20:
        std::condition_variable::__do_timed_wait((a1 + 32), &__lk, v10);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_19:
      v10.__d_.__rep_ = v9 + v7.__d_.__rep_;
      goto LABEL_20;
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v6.__d_.__rep_);
  if (*(a1 + 2563))
  {
LABEL_23:
    v11 = *(a1 + 2494);
    v12 = qword_1009F9820;
    if (v11 != 4)
    {
      sub_1004A8E9C(qword_1009F9820, v11);
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 2517);
      v14 = *(a1 + 2515);
      LODWORD(buf) = 67109376;
      HIDWORD(buf) = v14;
      v26 = 1024;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#roseprovider,#alisha delete keys - status %u, uwb session id %u", &buf, 0xEu);
    }

    v15 = 0;
    if (*(a1 + 2563) == 1)
    {
      *(a1 + 2563) = 0;
    }

    goto LABEL_35;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A8E68();
  }

  v15 = 4294966277;
LABEL_35:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  if (v21 == 1)
  {
    std::mutex::unlock(v20);
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  return v15;
}

void sub_1001E6EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, std::mutex *a12, char a13, void *__p, uint64_t a15)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  if (a13 == 1)
  {
    std::mutex::unlock(a12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001E6F0C(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  sub_100009838(&__p, 5uLL);
  *__p = 0;
  v4 = sub_1001E6BAC(a1, &__p, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return v4;
}

void sub_1001E6F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001E6F9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  __lk.__m_ = (a1 + 144);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 144));
  atomic_store(0, (a1 + 25));
  v22 = 0;
  if ((sub_1002594B4(a1 + 544, &v22) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A8FA4();
    }

    goto LABEL_32;
  }

  if (!v22)
  {
    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#roseprovider,Rose is powered off. Can't query power stats", &__p, 2u);
    }

    goto LABEL_32;
  }

  __p = 0;
  v20 = 0;
  v21 = 0;
  v6 = sub_10025CB6C(a1 + 544, 0x26u, &__p, &v24);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (!v6)
  {
    v17 = qword_1009F9820;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10041BA9C(0x26u, &__p);
      sub_1004A8A48(&__p);
    }

    sub_1001E43E4(v18, &v24);
    goto LABEL_32;
  }

  v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * a2;
  do
  {
    v8 = atomic_load((a1 + 25));
    if (v8)
    {
      goto LABEL_24;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v7.__d_.__rep_)
    {
      break;
    }

    v9.__d_.__rep_ = v7.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v9.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v10.__d_.__rep_)
      {
        v11 = 0;
        goto LABEL_20;
      }

      if (v10.__d_.__rep_ < 1)
      {
        if (v10.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v11 = 0x8000000000000000;
          goto LABEL_20;
        }
      }

      else if (v10.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_18;
      }

      v11 = 1000 * v10.__d_.__rep_;
LABEL_18:
      if (v11 > (v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v12.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_21:
        std::condition_variable::__do_timed_wait((a1 + 32), &__lk, v12);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_20:
      v12.__d_.__rep_ = v11 + v9.__d_.__rep_;
      goto LABEL_21;
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v7.__d_.__rep_);
  v13 = atomic_load((a1 + 25));
  if (v13)
  {
LABEL_24:
    v14 = *(a1 + 2600);
    *a3 = *(a1 + 2584);
    *(a3 + 16) = v14;
    v15 = *(a1 + 2632);
    *(a3 + 32) = *(a1 + 2616);
    *(a3 + 48) = v15;
    goto LABEL_33;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A8FD8();
  }

LABEL_32:
  *a3 = 0;
  *(a3 + 60) = 0;
LABEL_33:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }
}

void sub_1001E7288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  std::mutex::unlock(v18);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001E72E0(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A900C();
  }

  return sub_1001E7340(a1, a2);
}

uint64_t sub_1001E7340(uint64_t a1, uint64_t a2)
{
  memset(&__p, 0, sizeof(__p));
  switch(*a2)
  {
    case 0:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A9048();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "relayCommandMessage of unspecified type.");
    case 1:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A9210();
      }

      if (*(a2 + 584) != 1)
      {
        v37 = "msg.request.has_value()";
        v38 = 1068;
        goto LABEL_129;
      }

      sub_1001AB2F8(a2 + 8, *(a2 + 4), buf);
      if ((v46[0] & 1) == 0)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A924C();
        }

        goto LABEL_102;
      }

      memset(&v40, 0, sizeof(v40));
      sub_1000069DC(&v40, buf, v46, 155);
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v40;
      v4 = 33;
LABEL_93:
      memset(buf, 0, 24);
      if (sub_10025CB6C(a1 + 544, v4, &__p, buf))
      {
        v29 = *buf;
        if (*buf)
        {
          *&buf[8] = *buf;
LABEL_96:
          operator delete(v29);
        }

        goto LABEL_97;
      }

      v31 = qword_1009F9820;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10041BA9C(v4, &v40);
        sub_1004A9280(&v40);
      }

      sub_1001E43E4(v32, buf);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

LABEL_102:
      v30 = 0;
LABEL_103:
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return v30;
    case 2:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A91A0();
      }

      if (*(a2 + 704) == 1)
      {
        if (*(a2 + 584) == 1)
        {
          sub_1001B1944(*(a2 + 4), a2 + 8, a2 + 592, buf);
          if ((v45[2] & 1) == 0)
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004A91DC();
            }

            goto LABEL_102;
          }

          memset(&v40, 0, sizeof(v40));
          sub_1000069DC(&v40, buf, &v45[2], 37);
          if (__p.__r_.__value_.__r.__words[0])
          {
            __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v40;
          v4 = 34;
          goto LABEL_93;
        }

        v37 = "msg.request.has_value()";
        v38 = 1084;
      }

      else
      {
        v37 = "msg.start_options.has_value()";
        v38 = 1083;
      }

      goto LABEL_129;
    case 3:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A9130();
      }

      v11 = sub_1001B193C(*(a2 + 4));
      LOWORD(v40.__r_.__value_.__l.__data_) = v11;
      v40.__r_.__value_.__s.__data_[2] = BYTE2(v11);
      if ((v11 & 0x10000) == 0)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A916C();
        }

        goto LABEL_102;
      }

      memset(buf, 0, 24);
      sub_1000069DC(buf, &v40, v40.__r_.__value_.__r.__words + 2, 2);
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = *buf;
      v4 = 35;
      goto LABEL_93;
    case 4:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A90C0();
      }

      v9 = sub_1001B193C(*(a2 + 4));
      LOWORD(v40.__r_.__value_.__l.__data_) = v9;
      v40.__r_.__value_.__s.__data_[2] = BYTE2(v9);
      if ((v9 & 0x10000) == 0)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A90FC();
        }

        goto LABEL_102;
      }

      memset(buf, 0, 24);
      sub_1000069DC(buf, &v40, v40.__r_.__value_.__r.__words + 2, 2);
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = *buf;
      v4 = 36;
      goto LABEL_93;
    case 5:
      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#roseprovider,relayCommandMessage -- RawBytesCommand", buf, 2u);
      }

      if (*(a2 + 744) == 1)
      {
        v4 = *(a2 + 712);
        if (&__p != (a2 + 720))
        {
          sub_1000134D0(&__p, *(a2 + 720), *(a2 + 728), *(a2 + 728) - *(a2 + 720));
        }

        goto LABEL_93;
      }

      v37 = "msg.raw_bytes_cmd.has_value()";
      v38 = 1124;
      goto LABEL_129;
    case 6:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A9084();
      }

      if (*(a2 + 800) == 1)
      {
        memset(&buf[3], 0, 32);
        *buf = *(a2 + 752);
        v18 = *(a2 + 768);
        v19 = *(a2 + 760);
        buf[2] = v18 - v19;
        if ((v18 - v19) >= 0x21)
        {
          __assert_rtn("relayCommandMessage", "PRRoseProvider.mm", 1135, "msg.session_data.value().bytes.size() <= sizeof(pkt.bytes)");
        }

        memcpy(&buf[3], v19, v18 - v19);
        memset(&v40, 0, sizeof(v40));
        sub_1000069DC(&v40, buf, v45, 35);
        if (__p.__r_.__value_.__r.__words[0])
        {
          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v40;
        v4 = 43;
        goto LABEL_93;
      }

      v37 = "msg.session_data.has_value()";
      v38 = 1131;
      goto LABEL_129;
    case 7:
      v21 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#roseprovider,#throttle relayCommandMessage -- UpdateSessionSubrate", buf, 2u);
      }

      if (*(a2 + 813) == 1)
      {
        memset(buf, 0, 24);
        sub_1000069DC(buf, a2 + 810, a2 + 813, 3);
        __p = *buf;
        v4 = 47;
        goto LABEL_93;
      }

      v37 = "msg.subrate_cmd.has_value()";
      v38 = 1143;
      goto LABEL_129;
    case 8:
      v12 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#roseprovider,relayCommandMessage -- LPEMEnable", buf, 2u);
      }

      sub_10025C340(a1 + 544);
      goto LABEL_97;
    case 9:
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#roseprovider,relayCommandMessage -- NBSARStateUpdate", buf, 2u);
      }

      if (*(a2 + 809) == 1)
      {
        v40.__r_.__value_.__s.__data_[0] = *(a2 + 808);
        memset(buf, 0, 24);
        sub_1000069DC(buf, &v40, v40.__r_.__value_.__r.__words + 1, 1);
        if (__p.__r_.__value_.__r.__words[0])
        {
          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = *buf;
        v4 = 44;
        goto LABEL_93;
      }

      v37 = "msg.narrowband_sar_state.has_value()";
      v38 = 1160;
      goto LABEL_129;
    case 0xA:
      v22 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#roseprovider,relayCommandMessage -- SystemOn", buf, 2u);
      }

      sub_100258EC8(a1 + 544, 0);
      goto LABEL_97;
    case 0xB:
      v20 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#roseprovider,relayCommandMessage -- RefreshConfiguration", buf, 2u);
      }

      sub_10025C210(a1 + 544);
      goto LABEL_97;
    case 0xC:
      v23 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 814) - 1 > 0x19)
        {
          v24 = "UNDEFINED";
        }

        else
        {
          v24 = off_10099D690[(*(a2 + 814) - 1)];
        }

        *buf = 136315138;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#roseprovider,relayCommandMessage -- TriggerFatalErrorHandling for %s", buf, 0xCu);
      }

      if (*(a2 + 814) - 1 > 0x19)
      {
        v34 = "UNDEFINED";
      }

      else
      {
        v34 = off_10099D690[(*(a2 + 814) - 1)];
      }

      sub_100004A08(&v40, v34);
      v35 = std::string::insert(&v40, 0, "AOPRoseFatalError: ");
      v36 = *&v35->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v35->__r_.__value_.__l + 2);
      *buf = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      sub_100261834(a1 + 544, 0, buf);
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_97;
      }

      v29 = *buf;
      goto LABEL_96;
    case 0xD:
      v7 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#roseprovider,relayCommandMessage -- SystemOff_AirplaneMode", buf, 2u);
      }

      v6 = 3;
      goto LABEL_15;
    case 0xE:
      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#roseprovider,relayCommandMessage -- SystemOff_RestrictedRegion", buf, 2u);
      }

      v6 = 4;
LABEL_15:
      sub_100257F08(a1 + 544, v6);
      goto LABEL_97;
    case 0xF:
      v25 = *(sub_1000054A8() + 186);
      v14 = qword_1009F9820;
      v26 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
      if (v25 == 1)
      {
        if (v26)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#roseprovider,relayCommandMessage -- ChannelToTriggerR2GpioBlankingChanged", buf, 2u);
        }

        if (*(a2 + 820) == 1)
        {
          v27 = *(a2 + 816);
          sub_10025F428();
LABEL_97:
          v30 = 1;
          goto LABEL_103;
        }

        v37 = "msg.channel_to_trigger_GPIO_blanking.has_value()";
        v38 = 1175;
LABEL_129:
        __assert_rtn("relayCommandMessage", "PRRoseProvider.mm", v38, v37);
      }

      if (!v26)
      {
        goto LABEL_97;
      }

      *buf = 0;
      v28 = "#roseprovider,relayCommandMessage -- ChannelToTriggerR2GpioBlankingChanged invalid on current chip type";
      break;
    case 0x10:
      v13 = *(sub_1000054A8() + 186);
      v14 = qword_1009F9820;
      v15 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
      if (v13 == 1)
      {
        if (v15)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#roseprovider,relayCommandMessage -- UpdateCoexNBBch", buf, 2u);
        }

        if (*(a2 + 828))
        {
          v16 = *(a2 + 824);
          *buf = 6;
          buf[2] = 0;
          *&buf[4] = v16;
          buf[6] = 1;
          v42[0] = sub_100428478(buf);
          if ((*(a2 + 828) & 1) == 0)
          {
            sub_1000195BC();
          }

          v17 = *(a2 + 826);
          LOWORD(v40.__r_.__value_.__l.__data_) = 6;
          v40.__r_.__value_.__s.__data_[2] = 0;
          WORD2(v40.__r_.__value_.__r.__words[0]) = v17;
          v40.__r_.__value_.__s.__data_[6] = 1;
          v42[1] = sub_100428478(&v40);
          memset(buf, 0, 24);
          sub_1000069DC(buf, v42, &v43, 4);
          if (__p.__r_.__value_.__r.__words[0])
          {
            __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = *buf;
          v4 = 56;
          goto LABEL_93;
        }

        v37 = "msg.nb_gpio_blanking_channel_idx_range.has_value()";
        v38 = 1191;
        goto LABEL_129;
      }

      if (!v15)
      {
        goto LABEL_97;
      }

      *buf = 0;
      v28 = "#roseprovider,relayCommandMessage -- UpdateCoexNBBch invalid on current platform";
      break;
    default:
      v4 = 0;
      goto LABEL_93;
  }

  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
  goto LABEL_97;
}

void sub_1001E7F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  __cxa_free_exception(v27);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001E7FE4(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A92D4();
  }

  return sub_1001E8044(a1, a2);
}

uint64_t sub_1001E8044(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v2 = a1;
    if (*a2 == 1)
    {
      v4 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#roseprovider,relayPropertyMessage -- SetRoseConnectionlessMacAddress", v6, 2u);
      }

      if ((*(a2 + 12) & 1) == 0)
      {
        sub_1004A9344();
      }

      LOBYTE(a1) = sub_10025E774(v2 + 544, a2 + 4);
    }
  }

  else
  {
    LODWORD(a1) = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (a1)
    {
      sub_1004A9310();
      LOBYTE(a1) = 0;
    }
  }

  return a1 & 1;
}

void sub_1001E8118(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 80));
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 448);
  *(a1 + 440) = v5;
  *(a1 + 448) = v4;
  if (v6)
  {
    sub_10000AD84(v6);
  }

  std::mutex::unlock((a1 + 80));
}

uint64_t sub_1001E817C(uint64_t a1, uint64_t a2)
{
  sub_1001A3C1C(v5, a2);
  v3 = sub_1001E7340(a1, v5);
  if (v11 == 1 && __p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v8 == 1 && v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  return v3;
}

void sub_1001E8224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001A0B88(va);
  _Unwind_Resume(a1);
}

void sub_1001E8248(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 408);
  v3 = *(a2 + 176);
  v9[10] = *(a2 + 160);
  v9[11] = v3;
  v9[12] = *(a2 + 192);
  v10 = *(a2 + 208);
  v4 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v4;
  v5 = *(a2 + 144);
  v9[8] = *(a2 + 128);
  v9[9] = v5;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v7 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v7;
  v8 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v8;
  sub_1001E82E0(a1, v2, v9);
}

void sub_1001E82E0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v10 = 2;
  v11 = 0;
  v16 = 0;
  v3 = a3[11];
  v27 = a3[10];
  v28 = v3;
  v29 = a3[12];
  v4 = a3[7];
  v23 = a3[6];
  v24 = v4;
  v5 = a3[9];
  v25 = a3[8];
  v26 = v5;
  v6 = a3[3];
  v19 = a3[2];
  v20 = v6;
  v7 = a3[5];
  v21 = a3[4];
  v22 = v7;
  v8 = a3[1];
  v17 = *a3;
  v18 = v8;
  v30 = *(a3 + 26);
  v31 = 1;
  v32 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v57 = 0;
  sub_1001A5680(a2, &v10);
  if (v57 == 1 && __p)
  {
    v56 = __p;
    operator delete(__p);
  }

  if (v45 == 1 && v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v35 == 1)
  {
    v9 = &v34;
    sub_100189A94(&v9);
    v9 = &v33;
    sub_100189B38(&v9);
  }

  if (v16 == 1)
  {
    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }
  }
}

void sub_1001E8480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001A5A20(va);
  _Unwind_Resume(a1);
}

void sub_1001E8494(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 392);
  v3 = *(a2 + 176);
  v9[10] = *(a2 + 160);
  v9[11] = v3;
  v9[12] = *(a2 + 192);
  v10 = *(a2 + 208);
  v4 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v4;
  v5 = *(a2 + 144);
  v9[8] = *(a2 + 128);
  v9[9] = v5;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v7 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v7;
  v8 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v8;
  sub_1001E82E0(a1 - 16, v2, v9);
}

BOOL sub_1001E8530(uint64_t a1, int **a2, void *a3)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a2) >> 3);
  if (v6 >= 0x1A)
  {
    v7 = [NSString stringWithFormat:@"pushBeaconAllowlist: %lu beacons specified, but max allowed is: %d", v6, 25];
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A94F4();
    }

    if (a3)
    {
      v56 = NSLocalizedDescriptionKey;
      v57 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      *a3 = PRErrorWithCodeAndUserInfo(107, v8);
    }

    return 0;
  }

  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#roseprovider,pushBeaconAllowlist - passed size check. Given %lu beacons ++", buf, 0xCu);
  }

  memset(v54, 0, sizeof(v54));
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  *&buf[1] = 0u;
  if (v4 == v5)
  {
    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#roseprovider,pushBeaconAllowlist: 0 beacons specified. Purging allowlist.", v35, 2u);
    }
  }

  else
  {
    v14 = *a2;
    v15 = **a2;
    if ((v15 - 4) <= 0xFFFFFFFD)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A93F0();
      }

      if (a3)
      {
        v44 = NSLocalizedDescriptionKey;
        v45 = @"pushBeaconAllowlist: may only push BLE or UUID identified beacons.";
        v16 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        *a3 = PRErrorWithCodeAndUserInfo(107, v16);
      }

      return 0;
    }

    *v35 = 0;
    __dst = 0;
    v37 = 0;
    v18 = a2[1];
    if (v14 == v18)
    {
      v19 = v14;
LABEL_25:
      buf[0] = v15 != 2;
      *&buf[1] = 0xCCCCCCCCCCCCCCCDLL * ((v19 - v14) >> 3);
      sub_100004A08(v40, "Beacon addresses: contiguously:\n");
      v20 = *v35;
      v21 = __dst;
      sub_100004A08(__p, "===== + = + =====\n");
      sub_10046FC20(v40, v20, v21 - v20, 4u, __p);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (v41 < 0)
      {
        operator delete(*v40);
      }

      v22 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v23 = __src;
        if (v34 < 0)
        {
          v23 = __src[0];
        }

        *v40 = 136315138;
        *&v40[4] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#roseprovider,%s", v40, 0xCu);
      }

      memcpy(&buf[9], *v35, __dst - *v35);
      if (v34 < 0)
      {
        operator delete(__src[0]);
      }

      v24 = 1;
    }

    else
    {
      while (*v14 == v15)
      {
        if ((v14[9] & 1) == 0)
        {
          sub_1000195BC();
        }

        LODWORD(__src[0]) = *(v14 + 30);
        WORD2(__src[0]) = *(v14 + 17);
        sub_1001E9C10(v35, __dst, __src, __src + 6, 6);
        v14 += 10;
        if (v14 == v18)
        {
          v14 = *a2;
          v19 = a2[1];
          goto LABEL_25;
        }
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A9370();
      }

      if (a3)
      {
        v42 = NSLocalizedDescriptionKey;
        v43 = @"Given vector of different types beacons. All beacons must be of the same identifer type.";
        v25 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        *a3 = PRErrorWithCodeAndUserInfo(107, v25);
      }

      v24 = 0;
    }

    if (*v35)
    {
      __dst = *v35;
      operator delete(*v35);
    }

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  *v35 = 0;
  __dst = 0;
  v37 = 0;
  sub_1000069DC(v35, buf, &v55, 159);
  sub_100004A08(v40, "Allowlist Beacons:\n");
  v26 = *v35;
  v27 = __dst;
  sub_100004A08(__p, "===========\n");
  sub_10046FC20(v40, v26, v27 - v26, 4u, __p);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (v41 < 0)
  {
    operator delete(*v40);
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A9470(__src);
  }

  v28 = sub_10025CED4(a1 + 544, 0xD2u, v35);
  v9 = v28;
  if (a3)
  {
    v29 = v28;
  }

  else
  {
    v29 = 1;
  }

  if ((v29 & 1) == 0)
  {
    v38 = NSLocalizedDescriptionKey;
    v39 = @"Failed to push beacon allowlist to AOP.";
    v30 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *a3 = PRErrorWithCodeAndUserInfo(107, v30);
  }

  if (v34 < 0)
  {
    operator delete(__src[0]);
  }

  if (*v35)
  {
    __dst = *v35;
    operator delete(*v35);
  }

  return v9;
}

void sub_1001E8B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001E8BCC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1002BEA24();

    operator delete();
  }

  return result;
}

uint64_t sub_1001E8C18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 3152);
  v4[0] = off_10099D448;
  v4[1] = v1;
  v4[3] = v4;
  sub_1002BEA28(v2, byte_1009E9430, v4, *(v1 + 400));
  return sub_1000197C8(v4);
}

void sub_1001E8CB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000197C8(va);
  _Unwind_Resume(a1);
}

void sub_1001E8CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001E9F2C(v5, a3);
  sub_1001A5680(a2, v5);
  if (v18 == 1 && __p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v12[24] == 1)
  {
    v4 = v12;
    sub_100189A94(&v4);
    v4 = &v11;
    sub_100189B38(&v4);
  }

  if (v10 == 1)
  {
    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }

    if (v6)
    {
      v7 = v6;
      operator delete(v6);
    }
  }
}

void sub_1001E8DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001A5A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E8DE0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_100012F38(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  v9 = *(a2 + 128);
  *(a1 + 136) = 0;
  *(a1 + 128) = v9;
  *(a1 + 112) = v8;
  *(a1 + 96) = v7;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_100020574(a1 + 136, *(a2 + 136), *(a2 + 144), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 144) - *(a2 + 136)) >> 3));
  memcpy((a1 + 160), (a2 + 160), 0x181uLL);
  return a1;
}

void sub_1001E8EA8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001E8EC4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_100020458(a1 + 8, a2 + 8);
  v4 = *(a2 + 584);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 584) = v4;
  v5 = *(a2 + 600);
  v6 = *(a2 + 616);
  v7 = *(a2 + 648);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 648) = v7;
  *(a1 + 600) = v5;
  *(a1 + 616) = v6;
  v8 = *(a2 + 664);
  v9 = *(a2 + 680);
  v10 = *(a2 + 712);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 712) = v10;
  *(a1 + 664) = v8;
  *(a1 + 680) = v9;
  v11 = *(a2 + 728);
  v12 = *(a2 + 744);
  v13 = *(a2 + 776);
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 776) = v13;
  *(a1 + 728) = v11;
  *(a1 + 744) = v12;
  sub_1001A58DC(a1 + 792, (a2 + 792));
  memcpy((a1 + 872), (a2 + 872), 0x149uLL);
  sub_1000207A0(a1 + 1208, (a2 + 1208));
  memcpy((a1 + 1328), (a2 + 1328), 0x1D9uLL);
  sub_10002096C(a1 + 1808, (a2 + 1808));
  return a1;
}

void sub_1001E8F8C(_Unwind_Exception *a1)
{
  if (*(v2 + 1320) == 1)
  {
    v4 = *(v2 + 1280);
    if (v4)
    {
      *(v2 + 1288) = v4;
      operator delete(v4);
    }
  }

  sub_1001A59C8(v2 + 792);
  sub_100020B80(v1);
  _Unwind_Resume(a1);
}

void **sub_1001E8FD4(void **__dst, __int128 *a2)
{
  if (*(__dst + 112) == 1)
  {
    if (*(__dst + 96) == 1)
    {
      if (*(__dst + 95) < 0)
      {
        operator delete(__dst[9]);
      }

      if (*(__dst + 63) < 0)
      {
        operator delete(__dst[5]);
      }
    }

    if (*(__dst + 23) < 0)
    {
      operator delete(*__dst);
    }

    *(__dst + 112) = 0;
  }

  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 6) = *(a2 + 6);
  sub_1000199E0((__dst + 4), a2 + 8);
  __dst[13] = *(a2 + 13);
  *(__dst + 112) = 1;
  return __dst;
}

void sub_1001E9094(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001E90B0(void *a1)
{
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    operator delete();
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    operator delete();
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    operator delete();
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    operator delete();
  }

  return a1;
}

void sub_1001E9154(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[PRGlobalDebugSettings sharedSettings];
  v6 = [v5 integerForKey:v3];

  if ((v6 - 4) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#roseprovider,logging level set via debug settings: %ld", &v8, 0xCu);
    }

    sub_10025ECDC(v4 + 544, v6);
  }
}

void sub_1001E9274(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[PRGlobalDebugSettings sharedSettings];
  v6 = [v5 objectForKey:v3 ofClass:objc_opt_class()];

  v7 = [v6 count];
  v8 = qword_1009F9820;
  if (v7 == 2)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#roseprovider,LE thresholds set via debug settings: %@", &v12, 0xCu);
    }

    v9 = [v6 objectAtIndexedSubscript:0];
    v10 = [v9 intValue];
    v11 = [v6 objectAtIndexedSubscript:1];
    sub_10025EE50(v4 + 544, v10, [v11 intValue]);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A9564();
  }
}

uint64_t sub_1001E9464(uint64_t a1, uint64_t a2)
{
  *a1 = std::chrono::steady_clock::now().__d_.__rep_;
  *(a1 + 8) = 3;
  *(a1 + 16) = *a2;
  sub_100191768((a1 + 24), a2 + 8);
  *(a1 + 64) = *(a2 + 48);
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 140) = 0;
  return a1;
}

uint64_t sub_1001E94DC(uint64_t a1, int a2)
{
  if ((a2 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return dword_100564BD0[(a2 - 1)];
  }
}

uint64_t sub_1001E9504(uint64_t a1, int a2)
{
  if ((a2 - 1) < 0x13)
  {
    return (a2 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001E9518(uint64_t a1, uint64_t *a2)
{
  *a1 = 6;
  *(a1 + 8) = 0;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1200) = 0;
  v4 = *a2;
  *(a1 + 1216) = *(a2 + 4);
  *(a1 + 1208) = v4;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  *(a1 + 1272) = *(a2 + 16);
  *(a1 + 1240) = v6;
  *(a1 + 1256) = v7;
  *(a1 + 1224) = v5;
  *(a1 + 1280) = 0;
  *(a1 + 1296) = 0;
  *(a1 + 1288) = 0;
  sub_10002086C(a1 + 1280, a2[9], a2[10], (a2[10] - a2[9]) >> 4);
  *(a1 + 1304) = *(a2 + 6);
  *(a1 + 1320) = 1;
  *(a1 + 1328) = 0;
  *(a1 + 1592) = 0;
  *(a1 + 1600) = 0;
  *(a1 + 1672) = 0;
  *(a1 + 1680) = 0;
  *(a1 + 1728) = 0;
  *(a1 + 1736) = 0;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = 0;
  *(a1 + 2032) = 0;
  return a1;
}

void sub_1001E9610(_Unwind_Exception *a1)
{
  sub_1001A59C8(v1 + 792);
  sub_100020B80(v2);
  _Unwind_Resume(a1);
}

void sub_1001E962C(uint64_t a1, double a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  operator new();
}

void sub_1001E96AC(_Unwind_Exception *a1)
{
  v5 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v5)
  {
    operator delete();
  }

  sub_1004A95D4(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1001E96E4(uint64_t a1, uint64_t a2, double a3)
{
  *a1 = *(a2 + 1);
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  operator new();
}

void sub_1001E9764(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_1001E9790(uint64_t a1, uint64_t a2, double a3)
{
  *a1 = *(a2 + 1);
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_1001E9804(_Unwind_Exception *a1)
{
  v4 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v4)
  {
    operator delete();
  }

  sub_1004A9650(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E9838(uint64_t a1, __int128 *a2)
{
  *a1 = 12;
  *(a1 + 8) = 0;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1592) = 0;
  *(a1 + 1600) = 0;
  *(a1 + 1672) = 0;
  *(a1 + 1680) = 0;
  *(a1 + 1728) = 0;
  *(a1 + 1736) = 0;
  *(a1 + 1800) = 0;
  v3 = *a2;
  *(a1 + 1818) = *(a2 + 10);
  *(a1 + 1808) = v3;
  v5 = a2[3];
  v4 = a2[4];
  *(a1 + 1840) = a2[2];
  *(a1 + 1872) = v4;
  *(a1 + 1856) = v5;
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  *(a1 + 1936) = a2[8];
  *(a1 + 1920) = v8;
  *(a1 + 1904) = v7;
  *(a1 + 1888) = v6;
  v9 = a2[9];
  v10 = a2[10];
  v11 = a2[11];
  *(a1 + 2000) = *(a2 + 192);
  *(a1 + 1984) = v11;
  *(a1 + 1968) = v10;
  *(a1 + 1952) = v9;
  v12 = (a1 + 2008);
  *(a1 + 2024) = 0;
  *v12 = 0u;
  sub_100020A60(v12, *(a2 + 25), *(a2 + 26), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 26) - *(a2 + 25)) >> 3));
  *(a1 + 2032) = 1;
  return a1;
}

void sub_1001E995C(_Unwind_Exception *a1)
{
  if (*(v1 + 1320) == 1)
  {
    sub_1004A9678(v1);
  }

  sub_1001A59C8(v1 + 792);
  sub_100020B80(v2);
  _Unwind_Resume(a1);
}

__n128 sub_1001E9A08(uint64_t a1, uint64_t a2)
{
  *a2 = off_10099D398;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001E9A40(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_1001E9A88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001E9AD4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      result = std::mutex::try_lock(v2);
      *(a1 + 8) = result;
      return result;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::try_lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::try_lock: already locked");
  return sub_1001E9B30();
}

void sub_1001E9B30(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  sub_1001E9B90();
}

uint64_t sub_1001E9B90(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_1001E9BCC(*a1);
  }

  return a1;
}

void sub_1001E9BCC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    sub_1001E9C10(v2, v3, v4);
  }
}

char *sub_1001E9C10(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = &a4[__dst] - __src;
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = (v18 - a5);
      v34 = v18;
      if (v18 - a5 < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    sub_100019B38();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

uint64_t sub_1001E9EA8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10099D448;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001E9EE0(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099D4A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001E9F2C(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 8) = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 72) = *(a2 + 64);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_100012F38(a1 + 80, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  v9 = *(a2 + 128);
  *(a1 + 144) = 0;
  *(a1 + 136) = v9;
  *(a1 + 120) = v8;
  *(a1 + 104) = v7;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_100020574(a1 + 144, *(a2 + 136), *(a2 + 144), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 144) - *(a2 + 136)) >> 3));
  memcpy((a1 + 168), (a2 + 160), 0x181uLL);
  *(a1 + 560) = 1;
  *(a1 + 568) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1592) = 0;
  *(a1 + 1600) = 0;
  *(a1 + 1672) = 0;
  *(a1 + 1680) = 0;
  *(a1 + 1728) = 0;
  *(a1 + 1736) = 0;
  *(a1 + 1800) = 0;
  *(a1 + 1808) = 0;
  *(a1 + 2032) = 0;
  return a1;
}

void sub_1001EA05C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001EA0E4@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *result - *a2;
  return result;
}

uint64_t sub_1001EA0F8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(result + 22);
  v5 = *a2;
  v6 = *(result + 24);
  v7 = *(result + 32);
  return result;
}

void sub_1001EA10C()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_1001EA1BC(int a1, int a2, int a3, double a4)
{
  v15 = a4;
  v13 = a2;
  valuePtr = a1;
  *keys = *off_10099D760;
  v22 = *off_10099D770;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v13);
  values[0] = CFAutorelease(v5);
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v7 = CFAutorelease(v6);
  v8 = &kCFBooleanTrue;
  if (!a3)
  {
    v8 = &kCFBooleanFalse;
  }

  v9 = *v8;
  values[1] = v7;
  values[2] = v9;
  v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &v15);
  values[3] = CFAutorelease(v10);
  v11 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v12 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = @"ClientState";
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sending ranging event %@ to powerlog with dict: %@", buf, 0x16u);
  }

  PLLogRegisteredEvent();
  CFRelease(v11);
}

void sub_1001EA344(int a1)
{
  valuePtr = a1;
  keys = @"State";
  v1 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  values = CFAutorelease(v1);
  v2 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  PLLogRegisteredEvent();
  CFRelease(v2);
}

void sub_1001EA410(unsigned int *a1)
{
  v46 = *off_10099D7A0;
  v47 = *off_10099D7B0;
  v48 = *off_10099D7C0;
  v49 = *off_10099D7D0;
  v2 = *a1;
  v3 = a1[1];
  v35 = a1[14];
  valuePtr = v2;
  v4 = a1[3];
  v33 = a1[2];
  v34 = v3;
  v5 = a1[5];
  v31 = a1[4];
  v32 = v4;
  v6 = a1[7];
  v29 = a1[6];
  v30 = v5;
  *keys = *off_10099D780;
  v45 = *off_10099D790;
  v27 = a1[8];
  v28 = v6;
  v26 = *(a1 + 18);
  v25 = *(a1 + 19);
  v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  values[0] = CFAutorelease(v7);
  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &v35);
  values[1] = CFAutorelease(v8);
  v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &v34);
  values[2] = CFAutorelease(v9);
  v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &v33);
  values[3] = CFAutorelease(v10);
  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &v32);
  values[4] = CFAutorelease(v11);
  v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &v31);
  values[5] = CFAutorelease(v12);
  v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &v30);
  values[6] = CFAutorelease(v13);
  v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &v29);
  values[7] = CFAutorelease(v14);
  v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &v28);
  values[8] = CFAutorelease(v15);
  v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &v27);
  values[9] = CFAutorelease(v16);
  v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &v26);
  values[10] = CFAutorelease(v17);
  v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &v25);
  values[11] = CFAutorelease(v18);
  v19 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 12, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v20 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v38 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "sending power stats to powerlog %@", buf, 0xCu);
    v20 = qword_1009F9820;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = a1[10];
    v22 = a1[11];
    v24 = a1[12];
    v23 = a1[13];
    *buf = 67109888;
    *v38 = v21;
    *&v38[4] = 1024;
    *&v38[6] = v23;
    v39 = 1024;
    v40 = v22;
    v41 = 1024;
    v42 = v24;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "additional power stats - SLP count:%u, DSLP count:%u, wake count:%u, PMGR SLP count:%u", buf, 0x1Au);
  }

  PLLogRegisteredEvent();
  CFRelease(v19);
}

void sub_1001EA6FC(int a1)
{
  keys = @"state";
  v1 = &kCFBooleanTrue;
  if (!a1)
  {
    v1 = &kCFBooleanFalse;
  }

  values = *v1;
  v2 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "sending heartbeat status to powerlog %@", &v4, 0xCu);
  }

  PLLogRegisteredEvent();
  CFRelease(v2);
}

int64_t sub_1001EAE04(id a1, NSMutableArray *a2, NSMutableArray *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSMutableArray *)v4 lastObject];
  [v6 machContinuousTimeSeconds];
  v8 = v7;
  v9 = [(NSMutableArray *)v5 lastObject];
  [v9 machContinuousTimeSeconds];
  v11 = v10;

  if (v8 <= v11)
  {
    v13 = [(NSMutableArray *)v4 lastObject];
    [v13 machContinuousTimeSeconds];
    v15 = v14;
    v16 = [(NSMutableArray *)v5 lastObject];
    [v16 machContinuousTimeSeconds];
    v18 = v17;

    if (v15 >= v18)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

uint64_t sub_1001EAF70(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = off_10099D878;
  *(a1 + 8) = v3;
  *(a1 + 20) = xmmword_100564C00;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 79) = 0;
  *(a1 + 84) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 160) = xmmword_100564C10;
  *(a1 + 176) = 0;
  *(a1 + 183) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  return a1;
}

void sub_1001EB020(uint64_t a1, char a2)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = sub_100005288();
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v17;
    sub_100004A08(v17, off_10099D920[a2]);
    if (v18 < 0)
    {
      v6 = v17[0];
    }

    if (*(a1 + 32))
    {
      v7 = "WaitingForRequest";
    }

    else
    {
      v7 = "RequestReceived";
    }

    sub_100004A08(v15, v7);
    v8 = v16;
    v9 = v15[0];
    if (*(a1 + 164))
    {
      v10 = "NotRunning";
    }

    else
    {
      v10 = "Running";
    }

    sub_100004A08(__p, v10);
    v11 = v15;
    if (v8 < 0)
    {
      v11 = v9;
    }

    if (v14 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 134218754;
    v20 = v4;
    v21 = 2080;
    v22 = v6;
    v23 = 2080;
    v24 = v11;
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#alisha-ca,[%.06f] sessionRequested method:%s requestState:%s sessionState:%s", buf, 0x2Au);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }

  if (*(a1 + 32) == 1)
  {
    *(a1 + 88) = v4;
    *(a1 + 16) = a2;
    *(a1 + 32) = 0;
  }

  else
  {
    ++*(a1 + 28);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A96D4();
    }
  }
}

void sub_1001EB22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1001EB274(uint64_t a1, int a2, int a3, int a4)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v8 = sub_100005288();
  v9 = qword_1009F9820;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v10 = "WaitingForRequest";
    }

    else
    {
      v10 = "RequestReceived";
    }

    sub_100004A08(v21, v10);
    v11 = v22;
    v12 = *v21;
    if (*(a1 + 164))
    {
      v13 = "NotRunning";
    }

    else
    {
      v13 = "Running";
    }

    sub_100004A08(__p, v13);
    v14 = v21;
    if (v11 < 0)
    {
      v14 = v12;
    }

    if (v20 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    *buf = 134219266;
    *&buf[4] = v8;
    v24 = 1024;
    v25 = a2;
    v26 = 1024;
    v27 = a3;
    v28 = 1024;
    v29 = a4;
    v30 = 2080;
    v31 = v14;
    v32 = 2080;
    v33 = v15;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#alisha-ca,[%.06f] sessionStarted anchors:%d channel:%d rangingMultiplier:%d requestState:%s sessionState:%s", buf, 0x32u);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v22 < 0)
    {
      operator delete(*v21);
    }
  }

  if (*(a1 + 164) == 1)
  {
    *(a1 + 96) = v8;
    *(a1 + 116) = a3;
    *(a1 + 120) = a2;
    *(a1 + 112) = a4;
    *(a1 + 164) = 0;
    if (v8 <= *(a1 + 176) + 5.0)
    {
      v16 = *(a1 + 172);
    }

    else
    {
      v16 = 2;
    }

    *(a1 + 168) = v16;
    v17 = qword_1009F9820;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_100004A08(buf, off_10099D938[*(a1 + 168)]);
      v18 = v27 >= 0 ? buf : *buf;
      *v21 = 136315138;
      *&v21[4] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#alisha-ca,Reason for this session: %s", v21, 0xCu);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(*buf);
      }
    }

    if (!*(a1 + 32))
    {
      sub_1001EB5B4(a1, 0);
      *(a1 + 24) = 0;
      *(a1 + 20) = 0;
      if (*(a1 + 48) == 1)
      {
        *(a1 + 48) = 0;
      }

      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }

      if (*(a1 + 79) == 1)
      {
        *(a1 + 79) = 0;
      }

      if (*(a1 + 84) == 1)
      {
        *(a1 + 84) = 0;
      }

      *(a1 + 32) = 1;
    }
  }

  else
  {
    ++*(a1 + 160);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A9708();
    }
  }
}

void sub_1001EB5B4(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v5 = "WaitingForRequest";
    }

    else
    {
      v5 = "RequestReceived";
    }

    sub_100004A08(v27, v5);
    v6 = v28;
    v7 = *v27;
    if (*(a1 + 164))
    {
      v8 = "NotRunning";
    }

    else
    {
      v8 = "Running";
    }

    sub_100004A08(__p, v8);
    v9 = v27;
    if (v6 < 0)
    {
      v9 = v7;
    }

    if (v26 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315394;
    v30 = v9;
    v31 = 2080;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#alisha-ca,Sending core analytics for Alisha request; requestState:%s sessionState:%s", buf, 0x16u);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28 < 0)
    {
      operator delete(*v27);
    }
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = [NSNumber numberWithInt:1];
  [v11 setValue:v12 forKey:@"numSessionsRequested"];

  v13 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v13 == 1)
    {
      v14 = [NSNumber numberWithInt:1];
      [v11 setValue:v14 forKey:@"numRecoveryRQSessions"];
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_24;
      }

      v14 = [NSNumber numberWithInt:1];
      [v11 setValue:v14 forKey:@"numConfigRecoveryRQSessions"];
    }
  }

  else
  {
    v14 = [NSNumber numberWithInt:1];
    [v11 setValue:v14 forKey:@"numSessionRQSessions"];
  }

LABEL_24:
  switch(a2)
  {
    case 3:
      v15 = [NSNumber numberWithInt:1];
      [v11 setValue:v15 forKey:@"numDCKUnrecoverableErrors"];
      goto LABEL_30;
    case 2:
      v15 = [NSNumber numberWithInt:1];
      [v11 setValue:v15 forKey:@"numDCKRecoverableErrors"];
      goto LABEL_30;
    case 1:
      v15 = [NSNumber numberWithInt:1];
      [v11 setValue:v15 forKey:@"numTimesRangingDisallowed"];
LABEL_30:

      break;
  }

  if (*(a1 + 48) == 1 && *(a1 + 64) == 1 && *(a1 + 56) - *(a1 + 40) > 0.0)
  {
    v16 = [NSNumber numberWithDouble:?];
    [v11 setValue:v16 forKey:@"getKeyDuration"];
  }

  if (*(a1 + 79) == 1 && *(a1 + 76) == 1)
  {
    v17 = [NSNumber numberWithInt:*(a1 + 75)];
    [v11 setValue:v17 forKey:@"recoverableErrorStatusCode"];
  }

  if (*(a1 + 84) == 1)
  {
    v18 = [NSNumber numberWithInt:*(a1 + 80)];
    [v11 setValue:v18 forKey:@"unrecoverableErrorStatusCode"];
  }

  v19 = [v11 mutableCopy];
  v20 = qword_1009F9820;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v19 description];
    v22 = v21;
    v23 = [v21 UTF8String];
    *v27 = 136315138;
    *&v27[4] = v23;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#alisha-ca,alisha request data to be uploaded:\n%s\n", v27, 0xCu);
  }

  v24 = v19;
  AnalyticsSendEventLazy();
  *(a1 + 24) = 0;
  *(a1 + 20) = 0;
  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 0;
  }

  if (*(a1 + 64) == 1)
  {
    *(a1 + 64) = 0;
  }

  if (*(a1 + 79) == 1)
  {
    *(a1 + 79) = 0;
  }

  if (*(a1 + 84) == 1)
  {
    *(a1 + 84) = 0;
  }
}

void sub_1001EBB80(uint64_t a1, unsigned int a2)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = sub_100005288();
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    memset(&v18, 0, sizeof(v18));
    if (a2 >= 4)
    {
      v6 = &v18;
    }

    else
    {
      v6 = &v18;
      std::string::assign(&v18, off_10099D950[a2]);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v6 = v18.__r_.__value_.__r.__words[0];
      }
    }

    if (*(a1 + 32))
    {
      v7 = "WaitingForRequest";
    }

    else
    {
      v7 = "RequestReceived";
    }

    sub_100004A08(v16, v7);
    v8 = v17;
    v9 = v16[0];
    if (*(a1 + 164))
    {
      v10 = "NotRunning";
    }

    else
    {
      v10 = "Running";
    }

    sub_100004A08(__p, v10);
    v11 = v16;
    if (v8 < 0)
    {
      v11 = v9;
    }

    if (v15 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 134218754;
    v20 = v4;
    v21 = 2080;
    v22 = v6;
    v23 = 2080;
    v24 = v11;
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#alisha-ca,[%.06f] sessionEnded reason:%s requestState:%s sessionState:%s", buf, 0x2Au);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  if (*(a1 + 164) == 1)
  {
    ++*(a1 + 160);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A973C();
    }
  }

  else
  {
    *(a1 + 104) = v4;
    sub_1001EBE2C(a1, a2);
    if (*(a1 + 200))
    {
      v13 = +[NIServerUsageAnalyticsAggregator sharedInstance];
      [v13 recordUWBUsage:0 date:*(a1 + 200)];
    }

    sub_1001EC790(a1);
    *(a1 + 164) = 1;
  }
}

void sub_1001EBDE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001EBE2C(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v5 = "WaitingForRequest";
    }

    else
    {
      v5 = "RequestReceived";
    }

    sub_100004A08(v58, v5);
    v6 = v59;
    v7 = *v58;
    if (*(a1 + 164))
    {
      v8 = "NotRunning";
    }

    else
    {
      v8 = "Running";
    }

    sub_100004A08(__p, v8);
    v9 = v58;
    if (v6 < 0)
    {
      v9 = v7;
    }

    if (v57 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315394;
    v61 = v9;
    v62 = 2080;
    v63 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#alisha-ca,Sending core analytics for Alisha session; requestState:%s sessionState:%s", buf, 0x16u);
    if (v57 < 0)
    {
      operator delete(__p[0]);
    }

    if (v59 < 0)
    {
      operator delete(*v58);
    }
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = [NSNumber numberWithInt:1];
  [v11 setValue:v12 forKey:@"numSessions"];

  if (a2)
  {
    if (a2 == 1)
    {
      v14 = [NSNumber numberWithInt:1];
      [v11 setValue:v14 forKey:@"numSessionsTimeoutB"];
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_24;
      }

      v14 = [NSNumber numberWithInt:1];
      [v11 setValue:v14 forKey:@"numSessionsSuspendRQ"];
    }
  }

  else
  {
    v14 = [NSNumber numberWithInt:1];
    [v11 setValue:v14 forKey:@"numSessionsTimeoutA"];
  }

LABEL_24:
  if (*(a1 + 156) == 1)
  {
    LODWORD(v13) = *(a1 + 152);
    v15 = [NSNumber numberWithFloat:v13];
    [v11 setValue:v15 forKey:@"cyclesToFirstSuccessfulRange"];
  }

  v16 = *(a1 + 124);
  v17 = *(a1 + 128);
  v18 = *(a1 + 132);
  v19 = v17 + v16 + v18;
  if (v19 >= 1)
  {
    v20 = v19;
    *&v13 = v16 / v19;
    v21 = [NSNumber numberWithFloat:v13];
    [v11 setValue:v21 forKey:@"ratioCyclesNoAnchors"];

    *&v22 = v17 / v20;
    v23 = [NSNumber numberWithFloat:v22];
    [v11 setValue:v23 forKey:@"ratioCyclesSingleAnchor"];

    *&v24 = v18 / v20;
    v25 = [NSNumber numberWithFloat:v24];
    [v11 setValue:v25 forKey:@"ratioCyclesMultipleAnchors"];
  }

  v26 = *(a1 + 96);
  if (v26 > 0.0)
  {
    v27 = *(a1 + 104);
    if (v27 > 0.0 && v27 >= v26)
    {
      v28 = v27 - v26;
      v29 = v28;
      *&v28 = v29;
      v30 = [NSNumber numberWithFloat:v28];
      [v11 setValue:v30 forKey:@"sessionDuration"];

      *&v31 = (v29 * 14.0) / 3600.0;
      v32 = [NSNumber numberWithFloat:v31];
      [v11 setValue:v32 forKey:@"energyExpenditure"];
    }
  }

  if (*(a1 + 140) == 1)
  {
    LODWORD(v26) = *(a1 + 136);
    v33 = [NSNumber numberWithFloat:v26];
    [v11 setValue:v33 forKey:@"firstSOIRSSI"];
  }

  if (*(a1 + 148) == 1)
  {
    LODWORD(v26) = *(a1 + 144);
    v34 = [NSNumber numberWithFloat:v26];
    [v11 setValue:v34 forKey:@"maxSOIRSSI"];
  }

  v35 = [NSNumber numberWithInt:*(a1 + 168)];
  [v11 setValue:v35 forKey:@"reasonForThisSession"];

  if (*(a1 + 184) == 1)
  {
    v36 = [NSNumber numberWithInt:1];
    [v11 setValue:v36 forKey:@"numSessionsWithUnlockEvent"];

    if (*(a1 + 192) - *(a1 + 88) > 0.0)
    {
      v37 = [NSNumber numberWithDouble:?];
      [v11 setValue:v37 forKey:@"timeToUnlock"];
    }
  }

  if (*(a1 + 185) == 1)
  {
    v38 = [NSNumber numberWithInt:1];
    [v11 setValue:v38 forKey:@"numSessionsWithLockEvent"];
  }

  if (*(a1 + 186) == 1)
  {
    v39 = [NSNumber numberWithInt:1];
    [v11 setValue:v39 forKey:@"numSessionsWithReadyToDriveEvent"];
  }

  if ((*(a1 + 184) & 1) == 0 && (*(a1 + 185) & 1) == 0 && (*(a1 + 186) & 1) == 0)
  {
    v40 = [NSNumber numberWithInt:1];
    [v11 setValue:v40 forKey:@"numSessionsWithNoEvent"];
  }

  v41 = [v11 mutableCopy];
  v42 = qword_1009F9820;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [v41 description];
    v44 = v43;
    v45 = [v43 UTF8String];
    *v58 = 136315138;
    *&v58[4] = v45;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#alisha-ca,alisha session data to be uploaded:\n%s\n", v58, 0xCu);
  }

  v46 = v41;
  AnalyticsSendEventLazy();
  v47 = objc_alloc_init(NSMutableDictionary);
  v48 = [NSNumber numberWithInt:*(a1 + 112)];
  [v47 setValue:v48 forKey:@"ranMultiplier"];

  v49 = [NSNumber numberWithInt:*(a1 + 116)];
  [v47 setValue:v49 forKey:@"selectedUwbChannel"];

  v50 = [v47 mutableCopy];
  v51 = qword_1009F9820;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v52 = [v50 description];
    v53 = v52;
    v54 = [v52 UTF8String];
    *v58 = 136315138;
    *&v58[4] = v54;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#alisha-ca,alisha parameter data to be uploaded:\n%s\n", v58, 0xCu);
  }

  v55 = v50;
  AnalyticsSendEventLazy();
}

void sub_1001EC790(uint64_t a1)
{
  *(a1 + 112) = 0xFF00000000;
  *(a1 + 160) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (*(a1 + 140) == 1)
  {
    *(a1 + 140) = 0;
  }

  if (*(a1 + 148) == 1)
  {
    *(a1 + 148) = 0;
  }

  if (*(a1 + 156) == 1)
  {
    *(a1 + 156) = 0;
  }

  *(a1 + 168) = 2;
  *(a1 + 184) = 0;
  *(a1 + 186) = 0;
  v1 = *(a1 + 200);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
}

void sub_1001EC7F4(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v2 = qword_1009F9820;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v3 = "WaitingForRequest";
    }

    else
    {
      v3 = "RequestReceived";
    }

    sub_100004A08(v11, v3);
    v4 = v12;
    v5 = v11[0];
    if (*(a1 + 164))
    {
      v6 = "NotRunning";
    }

    else
    {
      v6 = "Running";
    }

    sub_100004A08(__p, v6);
    v7 = v11;
    if (v4 < 0)
    {
      v7 = v5;
    }

    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136315394;
    v14 = v7;
    v15 = 2080;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#alisha-ca,rangingWasDisallowed requestState:%s sessionState:%s", buf, 0x16u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  if (*(a1 + 32) == 1)
  {
    ++*(a1 + 28);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A9770();
    }
  }

  else
  {
    sub_1001EB5B4(a1, 1);
  }

  *(a1 + 24) = 0;
  *(a1 + 20) = 0;
  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 0;
  }

  if (*(a1 + 64) == 1)
  {
    *(a1 + 64) = 0;
  }

  if (*(a1 + 79) == 1)
  {
    *(a1 + 79) = 0;
  }

  if (*(a1 + 84) == 1)
  {
    *(a1 + 84) = 0;
  }

  *(a1 + 32) = 1;
}

void sub_1001EC9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001ECA18(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = &v18;
    sub_1003981E4(a2, &v18);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v18.__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 32))
    {
      v6 = "WaitingForRequest";
    }

    else
    {
      v6 = "RequestReceived";
    }

    sub_100004A08(v16, v6);
    v7 = v17;
    v8 = v16[0];
    if (*(a1 + 164))
    {
      v9 = "NotRunning";
    }

    else
    {
      v9 = "Running";
    }

    sub_100004A08(__p, v9);
    v10 = v16;
    if (v7 < 0)
    {
      v10 = v8;
    }

    if (v15 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315650;
    v20 = v5;
    v21 = 2080;
    v22 = v10;
    v23 = 2080;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#alisha-ca,dckErrorSendEventNotification notification:%s requestState:%s sessionState:%s", buf, 0x20u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  if (*(a1 + 32) == 1)
  {
    ++*(a1 + 28);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A97A4();
    }
  }

  else
  {
    v12 = *(a1 + 79);
    v13 = *(a2 + 3);
    *(a1 + 72) = *a2;
    *(a1 + 75) = v13;
    if ((v12 & 1) == 0)
    {
      *(a1 + 79) = 1;
    }

    sub_1001EB5B4(a1, 2);
  }

  *(a1 + 24) = 0;
  *(a1 + 20) = 0;
  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 0;
  }

  if (*(a1 + 64) == 1)
  {
    *(a1 + 64) = 0;
  }

  if (*(a1 + 79) == 1)
  {
    *(a1 + 79) = 0;
  }

  if (*(a1 + 84) == 1)
  {
    *(a1 + 84) = 0;
  }

  *(a1 + 32) = 1;
}

void sub_1001ECC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1001ECCB8(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v16;
    sub_1003A03C4(a2, v16);
    if (v17 < 0)
    {
      v5 = v16[0];
    }

    if (*(a1 + 32))
    {
      v6 = "WaitingForRequest";
    }

    else
    {
      v6 = "RequestReceived";
    }

    sub_100004A08(v14, v6);
    v7 = v15;
    v8 = v14[0];
    if (*(a1 + 164))
    {
      v9 = "NotRunning";
    }

    else
    {
      v9 = "Running";
    }

    sub_100004A08(__p, v9);
    v10 = v14;
    if (v7 < 0)
    {
      v10 = v8;
    }

    if (v13 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315650;
    v19 = v5;
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#alisha-ca,dckErrorReturnErrorCode errorCode:%s requestState:%s sessionState:%s", buf, 0x20u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }

  if (*(a1 + 32) == 1)
  {
    ++*(a1 + 28);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A97D8();
    }
  }

  else
  {
    *(a1 + 80) = a2;
    *(a1 + 84) = 1;
    sub_1001EB5B4(a1, 3);
  }

  *(a1 + 24) = 0;
  *(a1 + 20) = 0;
  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 0;
  }

  if (*(a1 + 64) == 1)
  {
    *(a1 + 64) = 0;
  }

  if (*(a1 + 79) == 1)
  {
    *(a1 + 79) = 0;
  }

  if (*(a1 + 84) == 1)
  {
    *(a1 + 84) = 0;
  }

  *(a1 + 32) = 1;
}

void sub_1001ECEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1001ECF44(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v2 = sub_100005288();
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v4 = "WaitingForRequest";
    }

    else
    {
      v4 = "RequestReceived";
    }

    sub_100004A08(v12, v4);
    v5 = v13;
    v6 = v12[0];
    if (*(a1 + 164))
    {
      v7 = "NotRunning";
    }

    else
    {
      v7 = "Running";
    }

    sub_100004A08(__p, v7);
    v8 = v12;
    if (v5 < 0)
    {
      v8 = v6;
    }

    if (v11 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 134218498;
    v15 = v2;
    v16 = 2080;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#alisha-ca,[%.06f] reportRangingIntentOnNewBluetoothConnection requestState:%s sessionState:%s", buf, 0x20u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }
  }

  *(a1 + 172) = 0;
  *(a1 + 176) = v2;
}

void sub_1001ED0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001ED0F4(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v2 = sub_100005288();
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v4 = "WaitingForRequest";
    }

    else
    {
      v4 = "RequestReceived";
    }

    sub_100004A08(v12, v4);
    v5 = v13;
    v6 = v12[0];
    if (*(a1 + 164))
    {
      v7 = "NotRunning";
    }

    else
    {
      v7 = "Running";
    }

    sub_100004A08(__p, v7);
    v8 = v12;
    if (v5 < 0)
    {
      v8 = v6;
    }

    if (v11 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 134218498;
    v15 = v2;
    v16 = 2080;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#alisha-ca,[%.06f] reportRangingIntentOnApproachingVehicle requestState:%s sessionState:%s", buf, 0x20u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }
  }

  *(a1 + 172) = 1;
  *(a1 + 176) = v2;
}

void sub_1001ED278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001ED2A8(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v2 = qword_1009F9820;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v3 = "WaitingForRequest";
    }

    else
    {
      v3 = "RequestReceived";
    }

    sub_100004A08(v11, v3);
    v4 = v12;
    v5 = v11[0];
    if (*(a1 + 164))
    {
      v6 = "NotRunning";
    }

    else
    {
      v6 = "Running";
    }

    sub_100004A08(__p, v6);
    v7 = v11;
    if (v4 < 0)
    {
      v7 = v5;
    }

    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136315394;
    v14 = v7;
    v15 = 2080;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#alisha-ca,reportVehicleLocked requestState:%s sessionState:%s", buf, 0x16u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  if (*(a1 + 164) == 1)
  {
    ++*(a1 + 160);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A980C();
    }
  }

  else
  {
    *(a1 + 185) = 1;
  }
}

void sub_1001ED448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001ED478(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v2 = sub_100005288();
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v4 = "WaitingForRequest";
    }

    else
    {
      v4 = "RequestReceived";
    }

    sub_100004A08(v14, v4);
    v5 = v15;
    v6 = v14[0];
    if (*(a1 + 164))
    {
      v7 = "NotRunning";
    }

    else
    {
      v7 = "Running";
    }

    sub_100004A08(__p, v7);
    v8 = v14;
    if (v5 < 0)
    {
      v8 = v6;
    }

    if (v13 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 134218498;
    v17 = v2;
    v18 = 2080;
    v19 = v8;
    v20 = 2080;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#alisha-ca,[%.06f] reportVehicleUnlocked requestState:%s sessionState:%s", buf, 0x20u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }
  }

  if (*(a1 + 164) == 1)
  {
    ++*(a1 + 160);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A9840();
    }
  }

  else
  {
    if ((*(a1 + 184) & 1) == 0)
    {
      *(a1 + 184) = 1;
      *(a1 + 192) = v2;
    }

    if (!*(a1 + 200))
    {
      v10 = +[NSDate now];
      v11 = *(a1 + 200);
      *(a1 + 200) = v10;
    }
  }
}

void sub_1001ED660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001ED690(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v2 = qword_1009F9820;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v3 = "WaitingForRequest";
    }

    else
    {
      v3 = "RequestReceived";
    }

    sub_100004A08(v13, v3);
    v4 = v14;
    v5 = v13[0];
    if (*(a1 + 164))
    {
      v6 = "NotRunning";
    }

    else
    {
      v6 = "Running";
    }

    sub_100004A08(__p, v6);
    v7 = v13;
    if (v4 < 0)
    {
      v7 = v5;
    }

    if (v12 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136315394;
    v16 = v7;
    v17 = 2080;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#alisha-ca,reportVehicleReadyToDrive requestState:%s sessionState:%s", buf, 0x16u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  if (*(a1 + 164) == 1)
  {
    ++*(a1 + 160);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A9874();
    }
  }

  else
  {
    *(a1 + 186) = 1;
    if (!*(a1 + 200))
    {
      v9 = +[NSDate now];
      v10 = *(a1 + 200);
      *(a1 + 200) = v9;
    }
  }
}

void sub_1001ED854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001ED884(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v2 = sub_100005288();
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v4 = "WaitingForRequest";
    }

    else
    {
      v4 = "RequestReceived";
    }

    sub_100004A08(v12, v4);
    v5 = v13;
    v6 = v12[0];
    if (*(a1 + 164))
    {
      v7 = "NotRunning";
    }

    else
    {
      v7 = "Running";
    }

    sub_100004A08(__p, v7);
    v8 = v12;
    if (v5 < 0)
    {
      v8 = v6;
    }

    if (v11 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 134218498;
    v15 = v2;
    v16 = 2080;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#alisha-ca,[%.06f] getKeyStarted requestState:%s sessionState:%s", buf, 0x20u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }
  }

  if (*(a1 + 32) == 1)
  {
    ++*(a1 + 28);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A98A8();
    }
  }

  else
  {
    *(a1 + 40) = v2;
    *(a1 + 48) = 1;
    if (*(a1 + 64) == 1)
    {
      *(a1 + 64) = 0;
    }
  }
}

void sub_1001EDA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001EDA80(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v2 = sub_100005288();
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v4 = "WaitingForRequest";
    }

    else
    {
      v4 = "RequestReceived";
    }

    sub_100004A08(v12, v4);
    v5 = v13;
    v6 = v12[0];
    if (*(a1 + 164))
    {
      v7 = "NotRunning";
    }

    else
    {
      v7 = "Running";
    }

    sub_100004A08(__p, v7);
    v8 = v12;
    if (v5 < 0)
    {
      v8 = v6;
    }

    if (v11 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 134218498;
    v15 = v2;
    v16 = 2080;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#alisha-ca,[%.06f] getKeyFinished requestState:%s sessionState:%s", buf, 0x20u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }
  }

  if (*(a1 + 32) == 1)
  {
    ++*(a1 + 28);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A98DC();
    }
  }

  else
  {
    *(a1 + 56) = v2;
    *(a1 + 64) = 1;
  }
}

void sub_1001EDC3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001EDC6C(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v5 = "WaitingForRequest";
    }

    else
    {
      v5 = "RequestReceived";
    }

    v6 = v28;
    sub_100004A08(v28, v5);
    if (v29 < 0)
    {
      v6 = v28[0];
    }

    if (*(a1 + 164))
    {
      v7 = "NotRunning";
    }

    else
    {
      v7 = "Running";
    }

    sub_100004A08(v26, v7);
    v8 = v27;
    v9 = v26[0];
    sub_1001EDF34(a2);
    v10 = v26;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if (v25 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315650;
    v31 = v6;
    v32 = 2080;
    v33 = v10;
    v34 = 2080;
    v35 = p_p;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#alisha-ca,sessionStatsUpdated requestState:%s sessionState:%s stats:%s", buf, 0x20u);
    if (v25 < 0)
    {
      operator delete(__p);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }
  }

  if (*(a1 + 164) == 1)
  {
    ++*(a1 + 160);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A993C();
    }
  }

  else
  {
    v12 = *(a2 + 48);
    if ((*(a1 + 148) & 1) == 0)
    {
      *(a1 + 148) = 1;
    }

    v13 = v12;
    *(a1 + 144) = v13;
    v14 = *(a2 + 40);
    if ((*(a1 + 140) & 1) == 0)
    {
      *(a1 + 140) = 1;
    }

    v15 = v14;
    *(a1 + 136) = v15;
    v16 = *(a2 + 32);
    if ((*(a1 + 156) & 1) == 0)
    {
      *(a1 + 156) = 1;
    }

    *(a1 + 152) = v16;
    v18 = *(a2 + 8);
    v17 = *(a2 + 16);
    if ((v17 - v18) <= 4)
    {
      sub_1004A9910();
    }

    v19 = *v18;
    v20 = v18 + 2;
    v21 = v18[1];
    *(a1 + 124) = v19;
    *(a1 + 128) = v21;
    if (v20 == v17)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      do
      {
        v23 = *v20++;
        v22 += v23;
      }

      while (v20 != v17);
    }

    *(a1 + 132) = v22;
  }
}

void sub_1001EDEEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001EDF34(unsigned int *a1)
{
  sub_100193120(v51);
  std::ios_base::getloc((&v52 + *(v52 - 24)));
  v2 = std::locale::use_facet(&v48, &std::ctype<char>::id);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v48);
  std::ostream::put();
  std::ostream::flush();
  v3 = sub_10000EA44(&v52, "{", 1);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v48, &std::ctype<char>::id);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v48);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v48.__locale_) = 9;
  v5 = sub_10000EA44(&v52, &v48, 1);
  sub_10000EA44(v5, "UWB session id: ", 16);
  v6 = *a1;
  v7 = std::ostream::operator<<();
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v48, &std::ctype<char>::id);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v48);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v48.__locale_) = 9;
  v9 = sub_10000EA44(&v52, &v48, 1);
  v10 = sub_10000EA44(v9, "Reason: ", 8);
  sub_100004A08(&v48, off_10099D970[*(a1 + 4)]);
  if ((v50 & 0x80u) == 0)
  {
    locale = &v48;
  }

  else
  {
    locale = v48.__locale_;
  }

  if ((v50 & 0x80u) == 0)
  {
    v12 = v50;
  }

  else
  {
    v12 = v49;
  }

  v13 = sub_10000EA44(v10, locale, v12);
  std::ios_base::getloc((v13 + *(*v13 - 24)));
  v14 = std::locale::use_facet(&v56, &std::ctype<char>::id);
  (v14->__vftable[2].~facet_0)(v14, 10);
  std::locale::~locale(&v56);
  std::ostream::put();
  std::ostream::flush();
  if (v50 < 0)
  {
    operator delete(v48.__locale_);
  }

  LOBYTE(v48.__locale_) = 9;
  v15 = sub_10000EA44(&v52, &v48, 1);
  sub_10000EA44(v15, "# total blocks: ", 16);
  v16 = *(a1 + 3);
  v17 = std::ostream::operator<<();
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v48, &std::ctype<char>::id);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v48);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v48.__locale_) = 9;
  v19 = sub_10000EA44(&v52, &v48, 1);
  v20 = sub_10000EA44(v19, "{", 1);
  std::ios_base::getloc((v20 + *(*v20 - 24)));
  v21 = std::locale::use_facet(&v48, &std::ctype<char>::id);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v48);
  std::ostream::put();
  std::ostream::flush();
  if (*(a1 + 2) != *(a1 + 1))
  {
    v22 = 0;
    do
    {
      LOBYTE(v48.__locale_) = 9;
      v23 = sub_10000EA44(&v52, &v48, 1);
      sub_10000EA44(v23, "    # blocks with ", 18);
      std::ostream::operator<<();
      if (v22 == ((*(a1 + 2) - *(a1 + 1)) >> 1) - 1)
      {
        sub_10000EA44(&v52, "+", 1);
      }

      sub_10000EA44(&v52, " anchors: ", 10);
      v24 = *(*(a1 + 1) + 2 * v22);
      v25 = std::ostream::operator<<();
      std::ios_base::getloc((v25 + *(*v25 - 24)));
      v26 = std::locale::use_facet(&v48, &std::ctype<char>::id);
      (v26->__vftable[2].~facet_0)(v26, 10);
      std::locale::~locale(&v48);
      std::ostream::put();
      std::ostream::flush();
      ++v22;
    }

    while (v22 < (*(a1 + 2) - *(a1 + 1)) >> 1);
  }

  LOBYTE(v48.__locale_) = 9;
  v27 = sub_10000EA44(&v52, &v48, 1);
  v28 = sub_10000EA44(v27, "}", 1);
  std::ios_base::getloc((v28 + *(*v28 - 24)));
  v29 = std::locale::use_facet(&v48, &std::ctype<char>::id);
  (v29->__vftable[2].~facet_0)(v29, 10);
  std::locale::~locale(&v48);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v48.__locale_) = 9;
  v30 = sub_10000EA44(&v52, &v48, 1);
  sub_10000EA44(v30, "First success block idx: ", 25);
  v31 = *(a1 + 16);
  v32 = std::ostream::operator<<();
  std::ios_base::getloc((v32 + *(*v32 - 24)));
  v33 = std::locale::use_facet(&v48, &std::ctype<char>::id);
  (v33->__vftable[2].~facet_0)(v33, 10);
  std::locale::~locale(&v48);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v48.__locale_) = 9;
  v34 = sub_10000EA44(&v52, &v48, 1);
  v35 = sub_10000EA44(v34, "First success block soiRssi (dBm): ", 35);
  *(v35 + *(*v35 - 24) + 16) = 5;
  v36 = *(a1 + 5);
  v37 = std::ostream::operator<<();
  std::ios_base::getloc((v37 + *(*v37 - 24)));
  v38 = std::locale::use_facet(&v48, &std::ctype<char>::id);
  (v38->__vftable[2].~facet_0)(v38, 10);
  std::locale::~locale(&v48);
  std::ostream::put();
  std::ostream::flush();
  LOBYTE(v48.__locale_) = 9;
  v39 = sub_10000EA44(&v52, &v48, 1);
  v40 = sub_10000EA44(v39, "Max soiRssi (dbm): ", 19);
  *(v40 + *(*v40 - 24) + 16) = 5;
  v41 = *(a1 + 6);
  v42 = std::ostream::operator<<();
  std::ios_base::getloc((v42 + *(*v42 - 24)));
  v43 = std::locale::use_facet(&v48, &std::ctype<char>::id);
  (v43->__vftable[2].~facet_0)(v43, 10);
  std::locale::~locale(&v48);
  std::ostream::put();
  std::ostream::flush();
  v44 = sub_10000EA44(&v52, "}", 1);
  std::ios_base::getloc((v44 + *(*v44 - 24)));
  v45 = std::locale::use_facet(&v48, &std::ctype<char>::id);
  (v45->__vftable[2].~facet_0)(v45, 10);
  std::locale::~locale(&v48);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v52 = v46;
  if (v55 < 0)
  {
    operator delete(v54[7].__locale_);
  }

  std::locale::~locale(v54);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001EE96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1001EEA50(uint64_t a1)
{

  operator delete();
}

void sub_1001EF6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1001EF714(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001EF72C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v3 length])
      {
        [*(*(*(a1 + 40) + 8) + 40) appendData:v3];
      }
    }
  }
}

void sub_1001EFD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1001EFD68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rawToken];
  v5 = [v4 length];

  if (v5 >= 0x100)
  {
    __assert_rtn("+[NIDiscoveryToken serialize:]_block_invoke", "NIConfiguration.mm", 203, "tokenLength <= std::numeric_limits<uint8_t>::max()");
  }

  v8 = v5;
  [*(*(*(a1 + 32) + 8) + 40) appendBytes:&v8 length:1];
  v6 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [v3 rawToken];
  [v6 appendData:v7];
}

void sub_1001EFE30(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1001F0888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1001F30F0(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

uint64_t sub_1001F354C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100013050(result, a4);
  }

  return result;
}

void sub_1001F35A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001F35C0(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t *a6)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  *(a1 + 32) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0;
  sub_1001F4690(a1 + 32, *a6, a6[1], (a6[1] - *a6) >> 1);
  if (a3 < a2)
  {
    v14 = "maxAzDeg >= minAzDeg";
    v15 = 20;
    goto LABEL_8;
  }

  if (a5 < a4)
  {
    v14 = "maxElDeg >= minElDeg";
    v15 = 21;
    goto LABEL_8;
  }

  v11 = a3 - a2 + 1;
  v12 = a5 - a4 + 1;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  if (v12 * v11 != (*(a1 + 40) - *(a1 + 32)) >> 1)
  {
    v14 = "fNumRows * fNumCols == fPDOATable.size()";
    v15 = 24;
LABEL_8:
    __assert_rtn("AOAtoPDOAMapping", "RoseAOAtoPDOAMapping.cpp", v15, v14);
  }

  return a1;
}

void sub_1001F36B0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001F36CC(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 12) = a5;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0;
  *(result + 32) = *a6;
  *(result + 48) = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a3 < a2)
  {
    v8 = "maxAzDeg >= minAzDeg";
    v9 = 30;
    goto LABEL_8;
  }

  if (a5 < a4)
  {
    v8 = "maxElDeg >= minElDeg";
    v9 = 31;
    goto LABEL_8;
  }

  v6 = a3 - a2 + 1;
  v7 = a5 - a4 + 1;
  *(result + 16) = v6;
  *(result + 24) = v7;
  if (v7 * v6 != (*(result + 40) - *(result + 32)) >> 1)
  {
    v8 = "fNumRows * fNumCols == fPDOATable.size()";
    v9 = 34;
LABEL_8:
    __assert_rtn("AOAtoPDOAMapping", "RoseAOAtoPDOAMapping.cpp", v9, v8);
  }

  return result;
}

void sub_1001F3798(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    *(v1 + 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001F37B8(uint64_t a1, int a2, int a3)
{
  if (a2 < *a1)
  {
    sub_1004A9B6C();
  }

  if (*(a1 + 4) < a2)
  {
    sub_1004A9B40();
  }

  v3 = *(a1 + 8);
  v4 = __OFSUB__(a3, v3);
  v5 = a3 - v3;
  if (v5 < 0 != v4)
  {
    sub_1004A9B14();
  }

  if (*(a1 + 12) < a3)
  {
    sub_1004A9AE8();
  }

  return *(*(a1 + 32) + 2 * *(a1 + 24) * (a2 - *a1) + 2 * v5);
}

uint64_t sub_1001F3820(uint64_t a1, int a2, int a3)
{
  if (a2 < *a1)
  {
    sub_1004A9C1C();
  }

  if (*(a1 + 4) < a2)
  {
    sub_1004A9BF0();
  }

  v3 = *(a1 + 8);
  v4 = __OFSUB__(a3, v3);
  v5 = a3 - v3;
  if (v5 < 0 != v4)
  {
    sub_1004A9BC4();
  }

  if (*(a1 + 12) < a3)
  {
    sub_1004A9B98();
  }

  return *(a1 + 32) + 2 * *(a1 + 24) * (a2 - *a1) + 2 * v5;
}

_BYTE *sub_1001F3888(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[8] = 0;
  v4 = (a1 + 8);
  a1[64] = 0;
  a1[72] = 0;
  v5 = (a1 + 72);
  a1[136] = 0;
  v6 = (a1 + 136);
  a1[128] = 0;
  a1[192] = 0;
  a1[200] = 0;
  v7 = (a1 + 200);
  a1[256] = 0;
  if (sub_100303FF4(a2))
  {
    v15 = sub_100303230(a2);
    if ((v16 & 1) == 0)
    {
      sub_1000195BC();
    }

    v17 = v15;
    if (v15 < 0x2009E)
    {
      __assert_rtn("CalBlob", "RoseAOAtoPDOAMapping.cpp", 101, "fileSize >= kHeaderSize + kBytesPerChan");
    }

    sub_100180564(v56, a2);
    v25 = v56 + *(v56[0] - 3);
    if (*(v25 + 8))
    {
      if (*(a2 + 23) >= 0)
      {
        v26 = a2;
      }

      else
      {
        v26 = *a2;
      }

      sub_100428B48("CalBlob: error opening %s", v18, v19, v20, v21, v22, v23, v24, v26);
    }

    else
    {
      *(v25 + 2) &= ~0x1000u;
      std::istream::seekg();
      v49 = 0;
      v50 = 0;
      v51 = 0;
      sub_1001F3F70(&v49, 0x7FF9uLL);
      v48 = 0;
      v28 = v17 + 4;
      v47 = 0;
      while (1)
      {
        v29 = std::istream::read();
        if ((*(v29 + *(*v29 - 24) + 32) & 5) != 0)
        {
          goto LABEL_45;
        }

        std::istream::tellg();
        if (v55 == -1)
        {
          break;
        }

        std::istream::tellg();
        if (v55 + 131052 > v28)
        {
          __assert_rtn("CalBlob", "RoseAOAtoPDOAMapping.cpp", 123, "static_cast<size_t>(f.tellg()) + kBytesPerChan <= fileSize + sizeof(tag)");
        }

        v37 = HIDWORD(v48);
        if (!HIDWORD(v48))
        {
          std::istream::read();
          if (v48 != 131044)
          {
            v44 = 127;
            v45 = "length == kCh5Length";
LABEL_52:
            __assert_rtn("CalBlob", "RoseAOAtoPDOAMapping.cpp", v44, v45);
          }

          v50 = v49;
          v38 = 32761;
          do
          {
            std::istream::read();
            sub_1001F400C(&v49, &v47);
            --v38;
          }

          while (v38);
          sub_1001F35C0(v52, 0, 180, 0, 180, &v49);
          sub_1001F40E8(v4, v52);
          if (__p)
          {
            v54 = __p;
            operator delete(__p);
          }

          v50 = v49;
          v39 = 32761;
          do
          {
            std::istream::read();
            sub_1001F400C(&v49, &v47);
            --v39;
          }

          while (v39);
          if (*(&v56[4] + *(v56[0] - 3)))
          {
            v42 = "Reading Ch5 calblob failed";
            goto LABEL_44;
          }

          sub_1001F35C0(v52, 0, 180, 0, 180, &v49);
          sub_1001F40E8(v5, v52);
          if (__p)
          {
            v54 = __p;
            operator delete(__p);
          }

          sub_1004281A0(a1, 5);
          v37 = HIDWORD(v48);
        }

        if (v37 == 1)
        {
          std::istream::read();
          if (v48 != 131044)
          {
            v44 = 156;
            v45 = "length == kCh9Length";
            goto LABEL_52;
          }

          v50 = v49;
          v40 = 32761;
          do
          {
            std::istream::read();
            sub_1001F400C(&v49, &v47);
            --v40;
          }

          while (v40);
          sub_1001F35C0(v52, 0, 180, 0, 180, &v49);
          sub_1001F40E8(v6, v52);
          if (__p)
          {
            v54 = __p;
            operator delete(__p);
          }

          v50 = v49;
          v41 = 32761;
          do
          {
            std::istream::read();
            sub_1001F400C(&v49, &v47);
            --v41;
          }

          while (v41);
          if (*(&v56[4] + *(v56[0] - 3)))
          {
            v42 = "Reading Ch9 calblob failed";
            goto LABEL_44;
          }

          sub_1001F35C0(v52, 0, 180, 0, 180, &v49);
          sub_1001F40E8(v7, v52);
          if (__p)
          {
            v54 = __p;
            operator delete(__p);
          }

          sub_1004281A0(a1, 9);
        }
      }

      v42 = "Current position in the file stream is -1, return";
LABEL_44:
      sub_100428B48(v42, v30, v31, v32, v33, v34, v35, v36, v46);
LABEL_45:
      if (v49)
      {
        v50 = v49;
        operator delete(v49);
      }
    }

    std::filebuf::~filebuf();
    std::istream::~istream();
    std::ios::~ios();
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = *a2;
    }

    sub_100428B48("CalBlob: file %s integrity check fails ", v8, v9, v10, v11, v12, v13, v14, v27);
  }

  return a1;
}

void sub_1001F3E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  if (*(v33 + 256) == 1)
  {
    v35 = *(v33 + 232);
    if (v35)
    {
      *(v33 + 240) = v35;
      operator delete(v35);
    }
  }

  if (*(v33 + 192) == 1)
  {
    v36 = *(v33 + 168);
    if (v36)
    {
      *(v33 + 176) = v36;
      operator delete(v36);
    }
  }

  if (*(v33 + 128) == 1)
  {
    v37 = *(v33 + 104);
    if (v37)
    {
      *(v33 + 112) = v37;
      operator delete(v37);
    }
  }

  if (*(v33 + 64) == 1)
  {
    v38 = *(v33 + 40);
    if (v38)
    {
      *(v33 + 48) = v38;
      operator delete(v38);
    }
  }

  _Unwind_Resume(a1);
}

void *sub_1001F3F70(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      sub_1001679B0(result, a2);
    }

    sub_100019B38();
  }

  return result;
}

void sub_1001F400C(const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      sub_100019B38();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_1001679B0(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_1001F40E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  if (v3 == 1)
  {
    sub_10016D9A8(a1 + 32, (a2 + 32));
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a1 + 56) = 1;
  }

  return a1;
}

BOOL sub_1001F41D4(unsigned __int8 *a1)
{
  result = 0;
  if (*a1)
  {
    v1 = *a1;
    if (((v1 >> sub_10042838C(9, 1)) & 1) != 0 && a1[192] == 1 && a1[256] == 1 && *(a1 + 19) == 181 && *(a1 + 20) == 181 && *(a1 + 27) == 181 && *(a1 + 28) == 181)
    {
      v3 = *a1;
      if (((v3 >> sub_10042838C(5, 1)) & 1) == 0 || a1[64] == 1 && a1[128] == 1 && *(a1 + 3) == 181 && *(a1 + 4) == 181 && *(a1 + 11) == 181 && *(a1 + 12) == 181)
      {
        return 1;
      }
    }
  }

  return result;
}

unsigned __int8 *sub_1001F42C4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (!sub_1001F41D4(a1) || !sub_1001F41D4(a2) || (v4 = *a1, v4 != *a2))
  {
    sub_1004A9C48();
  }

  if (((v4 >> sub_10042838C(9, 1)) & 1) == 0 || (v5 = *a2, ((v5 >> sub_10042838C(9, 1)) & 1) == 0))
  {
    sub_1004A9C74();
  }

  v6 = *a2;
  v7 = 0;
  v8 = (1 << sub_10042838C(5, 1)) & v6;
  do
  {
    for (i = 0; i != 181; ++i)
    {
      if ((a1[192] & 1) == 0)
      {
        goto LABEL_56;
      }

      v10 = sub_1001F3820((a1 + 136), v7, i);
      if ((a2[192] & 1) == 0)
      {
        goto LABEL_56;
      }

      v11 = *v10;
      v12 = sub_1001F37B8((a2 + 136), v7, i);
      v13 = v12 + v11;
      if ((v12 + v11) > 180)
      {
        v13 = v12 + v11 - 360;
      }

      if (v13 < -179)
      {
        v13 += 360;
      }

      v14 = v11 == 0x7FFF || v12 == 0x7FFF;
      v15 = v14 ? 0x7FFF : v13;
      if ((a1[192] & 1) == 0)
      {
        goto LABEL_56;
      }

      *sub_1001F3820((a1 + 136), v7, i) = v15;
      if ((a1[256] & 1) == 0)
      {
        goto LABEL_56;
      }

      v16 = sub_1001F3820((a1 + 200), v7, i);
      if ((a2[256] & 1) == 0)
      {
        goto LABEL_56;
      }

      v17 = *v16;
      v18 = sub_1001F37B8((a2 + 200), v7, i);
      v19 = 0x7FFF;
      if (v17 != 0x7FFF && v18 != 0x7FFF)
      {
        v20 = v18 + v17;
        if ((v18 + v17) > 180)
        {
          v20 = v18 + v17 - 360;
        }

        if (v20 >= -179)
        {
          v19 = v20;
        }

        else
        {
          v19 = v20 + 360;
        }
      }

      if ((a1[256] & 1) == 0)
      {
LABEL_56:
        sub_1000195BC();
      }

      *sub_1001F3820((a1 + 200), v7, i) = v19;
      if (v8)
      {
        if ((a1[64] & 1) == 0)
        {
          goto LABEL_56;
        }

        v21 = sub_1001F3820((a1 + 8), v7, i);
        if ((a2[64] & 1) == 0)
        {
          goto LABEL_56;
        }

        v22 = *v21;
        v23 = sub_1001F37B8((a2 + 8), v7, i);
        v24 = 0x7FFF;
        if (v22 != 0x7FFF && v23 != 0x7FFF)
        {
          v25 = v23 + v22;
          if ((v23 + v22) > 180)
          {
            v25 = v23 + v22 - 360;
          }

          if (v25 >= -179)
          {
            v24 = v25;
          }

          else
          {
            v24 = v25 + 360;
          }
        }

        if ((a1[64] & 1) == 0)
        {
          goto LABEL_56;
        }

        *sub_1001F3820((a1 + 8), v7, i) = v24;
        if ((a1[128] & 1) == 0)
        {
          goto LABEL_56;
        }

        v26 = sub_1001F3820((a1 + 72), v7, i);
        if ((a2[128] & 1) == 0)
        {
          goto LABEL_56;
        }

        v27 = *v26;
        v28 = sub_1001F37B8((a2 + 72), v7, i);
        v29 = 0x7FFF;
        if (v27 != 0x7FFF && v28 != 0x7FFF)
        {
          v30 = v28 + v27;
          if ((v28 + v27) > 180)
          {
            v30 = v28 + v27 - 360;
          }

          if (v30 >= -179)
          {
            v29 = v30;
          }

          else
          {
            v29 = v30 + 360;
          }
        }

        if ((a1[128] & 1) == 0)
        {
          goto LABEL_56;
        }

        *sub_1001F3820((a1 + 72), v7, i) = v29;
      }
    }

    ++v7;
  }

  while (v7 != 181);
  return a1;
}

uint64_t sub_1001F45C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

uint64_t sub_1001F4690(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001F470C(result, a4);
  }

  return result;
}

void sub_1001F46F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F470C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_1001679B0(a1, a2);
  }

  sub_100019B38();
}

uint64_t sub_1001F4744()
{
  sub_10041C9CC();
  v0 = std::string::insert(&v37, 0, "reverseLUT_A");
  v1 = *&v0->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v0->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  v2 = std::string::append(&v38, ".bin");
  v3 = *&v2->__r_.__value_.__l.__data_;
  qword_1009F0D28 = v2->__r_.__value_.__r.__words[2];
  xmmword_1009F0D18 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F0D18, &_mh_execute_header);
  sub_10041C9CC();
  v4 = std::string::insert(&v37, 0, "reverseLUT_A");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v38, ".bin");
  v7 = *&v6->__r_.__value_.__l.__data_;
  qword_1009F0D40 = v6->__r_.__value_.__r.__words[2];
  xmmword_1009F0D30 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F0D30, &_mh_execute_header);
  sub_10041C9CC();
  v8 = std::string::insert(&v37, 0, "reverseLUT_A");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v38, ".bin");
  v11 = *&v10->__r_.__value_.__l.__data_;
  qword_1009F0D58 = v10->__r_.__value_.__r.__words[2];
  xmmword_1009F0D48 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F0D48, &_mh_execute_header);
  sub_10041C9CC();
  v12 = std::string::insert(&v37, 0, "reverseLUT_A");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v38, ".bin");
  v15 = *&v14->__r_.__value_.__l.__data_;
  qword_1009F0D70 = v14->__r_.__value_.__r.__words[2];
  xmmword_1009F0D60 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F0D60, &_mh_execute_header);
  sub_10041C9CC();
  v16 = std::string::insert(&v37, 0, "reverseLUT_A");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v38, ".bin");
  v19 = *&v18->__r_.__value_.__l.__data_;
  qword_1009F0D88 = v18->__r_.__value_.__r.__words[2];
  xmmword_1009F0D78 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F0D78, &_mh_execute_header);
  sub_10041C9CC();
  v20 = std::string::insert(&v37, 0, "reverseLUT_A");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v38, ".bin");
  v23 = *&v22->__r_.__value_.__l.__data_;
  qword_1009F0DA0 = v22->__r_.__value_.__r.__words[2];
  xmmword_1009F0D90 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F0D90, &_mh_execute_header);
  sub_10041C9CC();
  v24 = std::string::insert(&v37, 0, "reverseLUT_A");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v38, ".bin");
  v27 = *&v26->__r_.__value_.__l.__data_;
  qword_1009F0DB8 = v26->__r_.__value_.__r.__words[2];
  xmmword_1009F0DA8 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F0DA8, &_mh_execute_header);
  sub_10041C9CC();
  v28 = std::string::insert(&v37, 0, "reverseLUT_A");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v38, ".bin");
  v31 = *&v30->__r_.__value_.__l.__data_;
  qword_1009F0DD0 = v30->__r_.__value_.__r.__words[2];
  xmmword_1009F0DC0 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F0DC0, &_mh_execute_header);
  sub_10041C9CC();
  v32 = std::string::insert(&v37, 0, "reverseLUT_A");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v38, ".bin");
  v35 = *&v34->__r_.__value_.__l.__data_;
  qword_1009F0DE8 = v34->__r_.__value_.__r.__words[2];
  xmmword_1009F0DD8 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  return __cxa_atexit(&std::string::~string, &xmmword_1009F0DD8, &_mh_execute_header);
}

void sub_1001F4D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1001F5414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = NIServerObservationSession;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id **sub_1001F5D3C(id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    operator delete();
  }

  return result;
}

void sub_1001F6368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1001F6424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_10000AD84(a13);
  }

  a9.super_class = NIServerAcwgSession;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001F6C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27)
{
  v28 = v27;

  sub_1001FBCE4(&a13);
  _Unwind_Resume(a1);
}

void sub_1001F96D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a14)
  {
    sub_10000AD84(a14);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_1001FA3D8(uint64_t a1)
{
  v8[0] = &off_1009C3F68;
  v7[0] = @"numSessions";
  v7[1] = @"rangingDurationSecs";
  v2 = [NSNumber numberWithDouble:*(a1 + 32)];
  v8[1] = v2;
  v7[2] = @"rangingReason";
  v3 = NIAcwgSessionTriggerReasonToString(*(a1 + 40));
  v8[2] = v3;
  v7[3] = @"suspendReason";
  v4 = NIAcwgSuspendTriggerReasonToString(*(a1 + 48));
  v8[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

void sub_1001FAEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001FB060(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 52) == WeakRetained[32])
    {
      v4 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 48);
        v6 = *(a1 + 52);
        *buf = 67109632;
        *v14 = v5;
        *&v14[4] = 1024;
        *&v14[6] = v6;
        LOWORD(v15) = 1024;
        *(&v15 + 2) = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-acwg,AopSensorFusionUpdate: update.type = %u, update.btConnHandle = 0x%04x (%u)", buf, 0x14u);
      }

      v12.receiver = *(a1 + 32);
      v12.super_class = NIServerAcwgSession;
      v7 = objc_msgSendSuper2(&v12, "resourcesManager");
      if (*(a1 + 48) == 1)
      {
        v8 = qword_1009F9820;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(v3 + 7);
          v10 = [*(v3 + 42) lockIdentifier];
          *buf = 138412546;
          *v14 = v9;
          *&v14[8] = 2112;
          v15 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-acwg,Device stationary: Request suspending the session (c:%@, l:%@)", buf, 0x16u);
        }

        v11 = [v7 remote];
        [v11 requestAcwgRangingSessionSuspend:sub_1003A428C(*(v3 + 9)) withSuspendTriggerReason:102];
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AB808();
  }
}

void sub_1001FB398(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 48) == WeakRetained[32])
    {
      v4 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 48);
        *buf = 67109376;
        v11 = v5;
        v12 = 1024;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-acwg,AopSFZoneUpdate: update.btConnHandle = 0x%04x (%u)", buf, 0xEu);
      }

      v6 = [[NIAcwgSFZoneUpdate alloc] initWithSFZone:*(a1 + 51) & 3 btConnHandle:*(a1 + 48) lastBtRssiValue:*(a1 + 50) ioStateDisplacing:(*(a1 + 51) >> 2) & 1 explicitPAITriggered:0 currentSFInBubble:(*(a1 + 51) >> 3) & 1];
      v9.receiver = *(a1 + 32);
      v9.super_class = NIServerAcwgSession;
      v7 = objc_msgSendSuper2(&v9, "resourcesManager");
      v8 = [v7 remote];
      [v8 didReceiveAopSFZoneUpdate:v6];
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AB8BC();
  }
}

void sub_1001FB520(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1001FB7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001FBA10(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {
      if (a1 == a2)
      {
        v11 = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 24) = v11;
      }

      else
      {
        sub_1001FBB44(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
        v4 = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 24) = v4;
        v5 = *(a2 + 40);
        v6 = *(a2 + 48);

        sub_1000134D0((a1 + 40), v5, v6, v6 - v5);
      }
    }
  }

  else if (*(a1 + 64))
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      *(a1 + 48) = v7;
      operator delete(v7);
    }

    v8 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v8;
      operator delete(v8);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1001FBC68(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    v9 = *(a2 + 24);
    v10 = *(a2 + 32);
    *(a1 + 40) = 0;
    *(a1 + 32) = v10;
    *(a1 + 24) = v9;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    sub_100009A48(a1 + 40, *(a2 + 40), *(a2 + 48), *(a2 + 48) - *(a2 + 40));
    *(a1 + 64) = 1;
  }
}

void sub_1001FBB28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001FBB44(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1001F470C(v6, v10);
    }

    sub_100019B38();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
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

uint64_t sub_1001FBC68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001F470C(result, a4);
  }

  return result;
}

void sub_1001FBCC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001FBCE4(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      *(a1 + 56) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      *(a1 + 16) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1001FBD34(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
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

void *sub_1001FBD78(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_1001FBE00(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_1001FBE00(void *a1)
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
    sub_1001FC3FC(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1001FBFD4(a1, &v10);
}

void sub_1001FBF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1001FBFD4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1001FC3FC(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1001FC0DC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1001FC3FC(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_1001FC1E8(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1001FC3FC(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1001FC2F0(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1001FC3FC(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_1001FC3FC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1001FC464(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10099DB18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1001FC564(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10098B6C8;
  sub_10031455C(a1 + 3, *a2);
  return a1;
}

void *sub_1001FC5C4(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_1001FC64C(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_1001FC64C(void *a1)
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
    sub_1001FC3FC(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1001FBFD4(a1, &v10);
}

void sub_1001FC7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001FC820(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void sub_1001FC8B0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10099DB68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001FC958(uint64_t a1)
{

  operator delete();
}

id sub_1001FCA0C(uint64_t a1, void *a2)
{
  *a2 = off_10099DBB8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001FCA5C(id *a1)
{

  operator delete(a1);
}

void sub_1001FCA98(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 48));
  [*(a1 + 8) serviceRequestDidUpdateStatus:{*a3, *(a3 + 8)}];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_1001FCB18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001FCB30(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099DC18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FCBA8(uint64_t a1)
{

  operator delete();
}

id sub_1001FCC5C(uint64_t a1, void *a2)
{
  *a2 = off_10099DC38;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001FCCAC(id *a1)
{

  operator delete(a1);
}

void sub_1001FCCE8(uint64_t a1, void *a2, unsigned int *a3)
{
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *a3;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 48));
  [*(a1 + 8) _alishaSessionInvalidatedWithReason:v5];
  if (v4)
  {

    sub_10000AD84(v4);
  }
}

void sub_1001FCD64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001FCD7C(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099DC98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FCDF4(uint64_t a1)
{

  operator delete();
}

id sub_1001FCEA8(uint64_t a1, void *a2)
{
  *a2 = off_10099DCB8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001FCEF8(id *a1)
{

  operator delete(a1);
}

void sub_1001FCF34(uint64_t a1, void *a2, __int128 *a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 48));
  v6 = *(a1 + 8);
  v7 = a3[1];
  v11 = *a3;
  v12[0] = v7;
  *(v12 + 11) = *(a3 + 27);
  v14 = 0;
  v15 = 0;
  v8 = *(a3 + 6);
  v9 = *(a3 + 7);
  v13 = 0;
  sub_1001FD0A4(&v13, v8, v9, v9 - v8);
  v10 = *(a3 + 77);
  v16[0] = *(a3 + 9);
  *(v16 + 5) = v10;
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_1001FD120(&__p, *(a3 + 11), *(a3 + 12), (*(a3 + 12) - *(a3 + 11)) >> 4);
  [v6 _handleInitiatorRangingBlockUpdate:&v11];
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_1001FD018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_1001FD220(&a9);
  if (v16)
  {
    sub_10000AD84(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001FD058(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099DD28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FD0A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100009AC4(result, a4);
  }

  return result;
}

void sub_1001FD104(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001FD120(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001FD19C(result, a4);
  }

  return result;
}

void sub_1001FD180(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001FD19C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1001FD1D8(a1, a2);
  }

  sub_100019B38();
}

void sub_1001FD1D8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100013B04();
}

void *sub_1001FD220(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1001FD290(uint64_t a1)
{

  operator delete();
}

id sub_1001FD344(uint64_t a1, void *a2)
{
  *a2 = off_10099DD48;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001FD394(id *a1)
{

  operator delete(a1);
}

void sub_1001FD3D0(uint64_t a1, uint64_t *a2)
{
  dispatch_assert_queue_V2(*(*(a1 + 8) + 48));
  v4 = *(a1 + 8);
  v5 = a2[1];
  v6 = *a2;
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_1001FBC68(&__p, v5, a2[2], (a2[2] - v5) >> 1);
  v10 = *(a2 + 2);
  v11 = a2[6];
  [v4 _handleSessionStats:&v6];
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_1001FD464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001FD480(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099DDB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FD4F8(uint64_t a1)
{

  operator delete();
}

id sub_1001FD5AC(uint64_t a1, void *a2)
{
  *a2 = off_10099DDD8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001FD5FC(id *a1)
{

  operator delete(a1);
}

id sub_1001FD638(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 48));
  v4 = *(a1 + 8);

  return [v4 _handleHealthChanged:v3];
}

uint64_t sub_1001FD688(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099DE48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001FD700(uint64_t a1)
{

  operator delete();
}

id sub_1001FD7B4(uint64_t a1, void *a2)
{
  *a2 = off_10099DE68;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1001FD804(id *a1)
{

  operator delete(a1);
}

id sub_1001FD840(uint64_t a1, unsigned int *a2, double *a3)
{
  v4 = *a2;
  v5 = *a3;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 48));
  v6 = *(a1 + 8);

  return [v6 _handleTimeoutEvent:v4 time:v5];
}

uint64_t sub_1001FD8A0(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099DED8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FD8EC(uint64_t a1)
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

uint64_t sub_1001FD96C(uint64_t a1)
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

uint64_t sub_1001FD9EC(uint64_t a1)
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

void *sub_1001FDAD8(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10099DEF8;
  sub_1001FDBD4((a1 + 3), *a2);
  return a1;
}

void sub_1001FDB58(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10099DEF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001FDBD4(uint64_t a1, char a2)
{
  *a1 = off_10099DF48;
  *(a1 + 24) = 256;
  v4 = sub_100394AE8(@"AcwgMinRanMultiplierOverride", 2);
  if (v4 <= 0)
  {
    sub_1004AB9C8();
  }

  if (v4 >= 0x100)
  {
    sub_1004AB99C();
  }

  *(a1 + 8) = v4;
  v5 = 3.0;
  if ((a2 & 1) == 0)
  {
    v5 = sub_100394DC0(@"AcwgStartTimeOffsetSeconds", 0.1);
    if (v5 <= 0.0)
    {
      sub_1004AB970();
    }
  }

  *(a1 + 16) = llround(v5 * 1000000.0);
  return a1;
}

uint64_t sub_1001FDCA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return sub_1001FE45C(a2, &v3, &vars0, 1);
}

void sub_1001FDCE4(void *a1@<X8>)
{
  v8 = 0;
  v2 = sub_10035D02C();
  v3 = *(v2 + 406);
  v4 = *(v2 + 407);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  v5 = sub_1003299D8(v3, &v9, &v8, 0);
  if (v4)
  {
    sub_10000AD84(v4);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (v5)
  {
    v7 = v9 != 5;
    sub_1001FE4D0(a1, &v7);
    if (HIBYTE(v8) == 1)
    {
      v6 = v8 != 5;
      sub_1001FE4D0(a1, &v6);
    }
  }
}

void sub_1001FDDAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1001FDDE0(uint64_t a1, unsigned int a2)
{
  v47[0] = 0;
  v47[1] = 0;
  v46 = v47;
  v3 = sub_10035D02C();
  v50[0] = off_10099DFB8;
  v50[1] = &v46;
  v50[3] = v50;
  sub_100361004(v3, v50);
  sub_1001FE750(v50);
  sub_100004A08(&v45, "\n");
  v4 = v46;
  if (v46 != v47)
  {
    do
    {
      v5 = *(v4 + 26);
      sub_10042749C(v5);
      v6 = std::string::insert(&v41, 0, "    ");
      v7 = *&v6->__r_.__value_.__l.__data_;
      v42.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
      *&v42.__r_.__value_.__l.__data_ = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      v8 = std::string::append(&v42, ": ");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v43.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v43.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v40, HIWORD(v5));
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v40;
      }

      else
      {
        v10 = v40.__r_.__value_.__r.__words[0];
      }

      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v40.__r_.__value_.__l.__size_;
      }

      v12 = std::string::append(&v43, v10, size);
      v13 = *&v12->__r_.__value_.__l.__data_;
      v44.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v44.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      v14 = std::string::append(&v44, "\n");
      v15 = *&v14->__r_.__value_.__l.__data_;
      v49 = v14->__r_.__value_.__r.__words[2];
      *buf = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if (v49 >= 0)
      {
        v16 = buf;
      }

      else
      {
        v16 = *buf;
      }

      if (v49 >= 0)
      {
        v17 = HIBYTE(v49);
      }

      else
      {
        v17 = *&buf[8];
      }

      std::string::append(&v45, v16, v17);
      if (SHIBYTE(v49) < 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      v18 = v4[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v4[2];
          v20 = *v19 == v4;
          v4 = v19;
        }

        while (!v20);
      }

      v4 = v19;
    }

    while (v19 != v47);
  }

  v21 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v22 = &v45;
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v45.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#ses-acwg,Preamble use counts: {%s}", buf, 0xCu);
  }

  v23 = 4294965278;
  if (!a2)
  {
    v34 = 0;
    v37 = 0;
    v36 = 0;
    goto LABEL_58;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 1;
  v39 = a2;
  v30 = a2;
  do
  {
    if ((v30 & 1) == 0)
    {
      goto LABEL_51;
    }

    if (v29 > 0xAu)
    {
      if (v29 == 11)
      {
        v31 = 2;
      }

      else
      {
        if (v29 != 12)
        {
          goto LABEL_51;
        }

        v31 = 3;
      }
    }

    else if (v29 == 9)
    {
      v31 = 0;
    }

    else
    {
      if (v29 != 10)
      {
        goto LABEL_51;
      }

      v31 = 1;
    }

    v43.__r_.__value_.__s.__data_[0] = v29;
    *buf = &v43;
    v32 = sub_1001FE7D0(&v46, &v43);
    if ((v27 & (*(v32 + 14) >= v28)) == 0)
    {
      v24 = 1;
      v28 = *(v32 + 14);
      v26 = v31;
      v25 = v29;
    }

    v27 = 1;
LABEL_51:
    ++v29;
    v33 = v30 > 1;
    v30 >>= 1;
  }

  while (v33);
  v34 = v26 << 40;
  if (v24 & v27)
  {
    v35 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = v39;
      *&buf[8] = 1024;
      *&buf[10] = v25;
      *&buf[14] = 1024;
      LODWORD(v49) = v28;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#ses-acwg,Sync code bitmask 0x%x. Preferred sync code index %u. Current use count %u.", buf, 0x14u);
    }

    v23 = 0;
    v36 = v25 << 32;
    v37 = 0x1000000000000;
  }

  else
  {
    v37 = 0;
    v36 = 0;
    v23 = 4294965278;
  }

LABEL_58:
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  sub_10002074C(&v46, v47[0]);
  return v23 | v34 | v37 | v36;
}

uint64_t sub_1001FE360(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 16);
  if (!*a2)
  {
    v3 = sub_10035D02C();
    v4 = *(v3 + 406);
    v5 = *(v3 + 407);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100329F64(v4);
    if (v5)
    {
      sub_10000AD84(v5);
    }

    if (v10 == 1 && v9 == 1 && v12 == 1 && v11 == 1)
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-acwg,Applying additional start time offset for Ch5 coex", v8, 2u);
      }

      v2 += 50000;
    }
  }

  return v2;
}

void sub_1001FE444(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001FE45C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001F470C(result, a4);
  }

  return result;
}

void sub_1001FE4B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}